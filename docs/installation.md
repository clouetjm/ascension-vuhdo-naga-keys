# Installation

## Prérequis

- Project Ascension installé, avec l'addon VuhDo (fourni par le launcher)
- Le jeu **fermé**

Repère d'abord ton dossier `AddOns`. Il dépend de l'emplacement du launcher, typiquement :

```
<installation>\resources\ascension-live\Interface\AddOns
```

## Option A — patch simple

Le plus rapide, mais le launcher écrasera le fichier à chaque lancement du jeu.

1. Sauvegarde ton `VuhDo\VuhDoKeySetup.lua` d'origine.
2. Remplace-le par celui de ce dépôt.
3. Ouvre-le et remplis `VUHDO_NAGA_KEY_SPELLS` avec tes sorts (noms **anglais**).
4. Lance le jeu, puis `/reload`.

Après chaque lancement du jeu, il faudra recopier le fichier. D'où l'option B.

## Option B — fork local (recommandé)

On fait tourner VuhDo sous un nom que le launcher ne connaît pas. Il continue de gérer ses propres dossiers, sans effet sur le tien.

`scripts/Refaire-Fork.ps1` fait tout : ouvre-le et ajuste les deux chemins en tête de fichier, puis lance-le (clic droit → Exécuter avec PowerShell), jeu fermé.

Il crée `VuhDoNaga` et `VuhDoNagaOptions`, réécrit les chemins internes, copie ta configuration et désactive les addons d'origine.

Au premier lancement, à l'écran de sélection des personnages, ouvre le menu **AddOns** et vérifie que `VuhDoNaga` et `VuhDoNagaOptions` sont cochés, et que `VuhDo` / `VuhDoOptions` ne le sont pas. Les deux versions actives en même temps partageraient les variables globales `VUHDO_*` et se marcheraient dessus.

## Adapter les touches

Par défaut, `VUHDO_NAGA_PHYSICAL_KEYS` vaut :

```lua
{ "1", "2", "3", "4", "5", "6", "7", "8", "9", "0", ")", "=" }
```

C'est ce que remonte un **clavier AZERTY**. Sur un autre agencement, relève les noms réels avec la macro de capture (voir le README) et corrige cette ligne.

## Vérifier

En jeu, pour lister les slots actifs :

```
/run local s="" for i=5,16 do for b in pairs(VUHDO_BUTTON_CACHE) do if b:GetAttribute("type-w"..i) then s=s.." "..(i-4) break end end end print("slots actifs:"..s)
```

Seuls les slots dont le sort est appris apparaissent. Survole ensuite une frame et presse la touche correspondante.

Pour trouver le nom anglais exact de tes sorts :

```
/run local i=1 while true do local n=GetSpellName(i,"spell") if not n then break end print(i,n) i=i+1 end
```

## Désinstaller

Jeu fermé : supprime `VuhDoNaga` et `VuhDoNagaOptions`, puis repasse `VuhDo` et `VuhDoOptions` en `enabled` dans `WTF\Account\<compte>\<royaume>\<perso>\AddOns.txt`. La configuration d'origine n'a jamais été modifiée, seulement copiée.
