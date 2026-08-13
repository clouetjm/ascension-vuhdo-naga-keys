# =====================================================================
#  Cree (ou reconstruit) le fork VuhDoNaga a partir du VuhDo officiel.
#  A lancer JEU FERME.
#
#  Usage :
#    - premiere fois : cree le fork et copie ta configuration
#    - apres une mise a jour Ascension : reconstruit le fork
#
#  Ce script NE TOUCHE PAS aux SavedVariables du fork une fois qu'il
#  existe : apres le premier fork, la config vivante est celle du fork,
#  la recopier depuis l'original ecraserait tes reglages actuels.
# =====================================================================

# --- A ADAPTER -------------------------------------------------------
# Dossier AddOns de ton installation Ascension
$addons = "D:\Ascension\resources\ascension-live\Interface\AddOns"
# Dossier WTF (configuration des personnages)
$wtf    = "D:\Ascension\resources\ascension-live\WTF\Account"
# Fichier VuhDoKeySetup.lua patche (laisser vide pour ne pas l'injecter)
$patch  = Join-Path $PSScriptRoot "..\VuhDoKeySetup.lua"
# Empreinte SHA256 du VuhDoKeySetup.lua d'origine sur lequel le patch
# a ete construit. Si l'amont change, le script refuse d'injecter.
$refHash = "ADC2F72D62598E7A39C0A1C38A7E1CF09DF8BDABB4444460ED21F6E17CA8FA97"
# ---------------------------------------------------------------------

$ErrorActionPreference = "Stop"
# Encodage bijectif octet<->char : preserve intacts les octets non-ASCII
# (localisations zhCN / zhTW) pendant le remplacement de chaines.
$enc = [System.Text.Encoding]::GetEncoding(28591)

# --- Garde-fous ------------------------------------------------------
$jeu = Get-Process -Name "Ascension","Wow*" -ErrorAction SilentlyContinue |
       Where-Object { $_.Name -notlike "*Launcher*" }
if ($jeu) {
    Write-Host "ARRET : ferme le jeu d'abord." -ForegroundColor Red
    Read-Host "Entree pour fermer"; exit 1
}
if (-not (Test-Path (Join-Path $addons "VuhDo\VuhDo.toc"))) {
    Write-Host "ARRET : VuhDo introuvable dans $addons" -ForegroundColor Red
    Write-Host "Corrige la variable \$addons en tete de ce script."
    Read-Host "Entree pour fermer"; exit 1
}

$premierFork = -not (Test-Path (Join-Path $addons "VuhDoNaga"))

# --- Mise a l'abri de la configuration personnelle --------------------
# VuhDoNagaConfig.lua n'est pas versionne : il ne doit surtout pas
# disparaitre quand on reconstruit le dossier.
$confLocale = Join-Path $addons "VuhDoNaga\VuhDoNagaConfig.lua"
$confSauve = $null
if (Test-Path $confLocale) {
    $confSauve = Join-Path $env:TEMP "VuhDoNagaConfig.sauve.lua"
    Copy-Item $confLocale $confSauve -Force
    Write-Host "Configuration personnelle mise a l'abri." -ForegroundColor DarkGray
}

# --- Le fichier patche est-il applicable ? ---------------------------
$injecter = $false
if ($patch -and (Test-Path $patch)) {
    $curHash = (Get-FileHash (Join-Path $addons "VuhDo\VuhDoKeySetup.lua") -Algorithm SHA256).Hash
    if ($curHash -eq $refHash) {
        $injecter = $true
        Write-Host "VuhDoKeySetup.lua amont inchange : le patch sera injecte." -ForegroundColor Green
    } else {
        Write-Host "ATTENTION : VuhDoKeySetup.lua amont a change." -ForegroundColor Yellow
        Write-Host "Le patch ne sera PAS injecte, il faut le refaire sur la"
        Write-Host "nouvelle version. Voir docs/mise-a-jour.md."
        Write-Host ("Nouvelle empreinte : {0}" -f $curHash) -ForegroundColor DarkGray
    }
    Write-Host ""
}

# --- Reconstruction --------------------------------------------------
foreach ($p in @(@{S="VuhDo";D="VuhDoNaga"}, @{S="VuhDoOptions";D="VuhDoNagaOptions"})) {
    $src = Join-Path $addons $p.S
    $dst = Join-Path $addons $p.D
    if (-not (Test-Path $src)) { continue }

    if (Test-Path $dst) { Remove-Item $dst -Recurse -Force }
    Copy-Item $src $dst -Recurse -Force

    $oldToc = Join-Path $dst ($p.S + ".toc")
    if (Test-Path $oldToc) { Rename-Item $oldToc ($p.D + ".toc") }
    Get-ChildItem $dst -Filter "*.bak_*" -Recurse -File | Remove-Item -Force

    $n = 0
    foreach ($f in (Get-ChildItem $dst -Recurse -File -Include "*.lua","*.xml","*.toc")) {
        $txt = $enc.GetString([System.IO.File]::ReadAllBytes($f.FullName))
        $avant = $txt
        # Le plus specifique d'abord. La forme \\ est le cas majoritaire
        # (backslashes echappes dans les chaines Lua).
        $txt = $txt.Replace('AddOns\\VuhDoOptions\\', 'AddOns\\VuhDoNagaOptions\\')
        $txt = $txt.Replace('AddOns\\VuhDo\\',        'AddOns\\VuhDoNaga\\')
        $txt = $txt.Replace('AddOns\VuhDoOptions\',   'AddOns\VuhDoNagaOptions\')
        $txt = $txt.Replace('AddOns\VuhDo\',          'AddOns\VuhDoNaga\')
        $txt = $txt.Replace('AddOns/VuhDoOptions/',   'AddOns/VuhDoNagaOptions/')
        $txt = $txt.Replace('AddOns/VuhDo/',          'AddOns/VuhDoNaga/')
        if ($txt -ne $avant) {
            [System.IO.File]::WriteAllBytes($f.FullName, $enc.GetBytes($txt))
            $n++
        }
    }
    Write-Host ("{0,-18} reconstruit ({1} fichiers de chemins reecrits)" -f $p.D, $n) -ForegroundColor Cyan
}

# --- Titres et dependance --------------------------------------------
$tocMain = Join-Path $addons "VuhDoNaga\VuhDoNaga.toc"
$txt = $enc.GetString([System.IO.File]::ReadAllBytes($tocMain))
$txt = $txt.Replace("## Title: VuhDo for Ascension", "## Title: VuhDo Naga (fork local)")
[System.IO.File]::WriteAllBytes($tocMain, $enc.GetBytes($txt))

$tocOpt = Join-Path $addons "VuhDoNagaOptions\VuhDoNagaOptions.toc"
if (Test-Path $tocOpt) {
    $txt = $enc.GetString([System.IO.File]::ReadAllBytes($tocOpt))
    $txt = $txt.Replace("## Title: VuhDo for Ascension - Options", "## Title: VuhDo Naga (fork local) - Options")
    $txt = $txt.Replace("## Dependencies: VuhDo", "## Dependencies: VuhDoNaga")
    [System.IO.File]::WriteAllBytes($tocOpt, $enc.GetBytes($txt))
}

# --- Injection du patch ----------------------------------------------
if ($injecter) {
    Copy-Item $patch (Join-Path $addons "VuhDoNaga\VuhDoKeySetup.lua") -Force
    Write-Host "Patch injecte." -ForegroundColor Green
}

# --- Fichiers de configuration ---------------------------------------
$distSrc = Join-Path $PSScriptRoot "..\VuhDoNagaConfig.dist.lua"
if (Test-Path $distSrc) {
    Copy-Item $distSrc (Join-Path $addons "VuhDoNaga\VuhDoNagaConfig.dist.lua") -Force
    Write-Host "Configuration par defaut installee." -ForegroundColor Green
}
if ($confSauve -ne $null) {
    Copy-Item $confSauve $confLocale -Force
    Remove-Item $confSauve -Force
    Write-Host "Configuration personnelle restauree." -ForegroundColor Green
}

# --- Declaration des configs dans le .toc -----------------------------
# L'ordre compte : le local est charge apres le defaut et le surcharge.
$toc = Join-Path $addons "VuhDoNaga\VuhDoNaga.toc"
$txt = $enc.GetString([System.IO.File]::ReadAllBytes($toc))
if ($txt -notmatch 'VuhDoNagaConfig\.dist\.lua') {
    $ancre = "VuhDo.xml"
    $i = $txt.IndexOf($ancre)
    if ($i -ge 0) {
        $ajout = "# Configuration des touches Naga. L'ordre compte : le fichier local est`r`n" +
                 "# charge apres le fichier par defaut et le surcharge. Il est facultatif,`r`n" +
                 "# WoW ignore silencieusement un fichier absent.`r`n" +
                 "VuhDoNagaConfig.dist.lua`r`nVuhDoNagaConfig.lua`r`n`r`n" + $ancre
        # Uniquement la premiere occurrence, d'ou Remove/Insert plutot que Replace.
        $txt = $txt.Remove($i, $ancre.Length).Insert($i, $ajout)
        [System.IO.File]::WriteAllBytes($toc, $enc.GetBytes($txt))
        Write-Host "Fichiers de configuration declares dans le .toc." -ForegroundColor Green
    } else {
        Write-Host "ATTENTION : ancre VuhDo.xml introuvable dans le .toc." -ForegroundColor Yellow
        Write-Host "Ajoute a la main, avant VuhDo.xml :"
        Write-Host "   VuhDoNagaConfig.dist.lua"
        Write-Host "   VuhDoNagaConfig.lua"
    }
}

# --- SavedVariables : uniquement au premier fork ----------------------
if ($premierFork) {
    $paires = @{ "VuhDo.lua" = "VuhDoNaga.lua"; "VuhDoOptions.lua" = "VuhDoNagaOptions.lua" }
    foreach ($d in (Get-ChildItem $wtf -Recurse -Directory -Filter "SavedVariables" -ErrorAction SilentlyContinue)) {
        foreach ($s in $paires.Keys) {
            $from = Join-Path $d.FullName $s
            if (Test-Path $from) { Copy-Item $from (Join-Path $d.FullName $paires[$s]) -Force }
        }
    }
    Write-Host "Configuration copiee vers le fork." -ForegroundColor Green
} else {
    Write-Host "Fork deja existant : SavedVariables laisses intacts." -ForegroundColor DarkGray
}

# --- Desactivation des originaux --------------------------------------
foreach ($fa in (Get-ChildItem $wtf -Recurse -File -Filter "AddOns.txt" -ErrorAction SilentlyContinue)) {
    $out = @(); $touche = $false
    foreach ($l in (Get-Content $fa.FullName)) {
        if ($l -match '^\s*VuhDo\s*:' -or $l -match '^\s*VuhDoOptions\s*:') {
            $nom = ($l -split ':')[0].Trim(); $out += "${nom}: disabled"; $touche = $true
        } else { $out += $l }
    }
    if ($touche) { Set-Content -Path $fa.FullName -Value $out -Encoding ASCII }
}
Write-Host "Addons d'origine desactives." -ForegroundColor Green

Write-Host ""
Write-Host "Termine. Relance le jeu." -ForegroundColor Cyan
Write-Host "Verifie dans le menu AddOns que VuhDoNaga est coche et VuhDo non."
Read-Host "Entree pour fermer"
