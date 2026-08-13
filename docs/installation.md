# Installation

## Prérequis

- Project Ascension installé, avec l'addon VuhDo (fourni par le launcher)
- Le jeu **fermé**

Repérez d'abord votre dossier `AddOns`, typiquement :

```
<installation>\resources\ascension-live\Interface\AddOns
```

## 1. Les fichiers

Copiez dans le dossier `VuhDo` (ou `VuhDoNaga` si vous faites le fork, voir plus bas) :

| Fichier du dépôt | Rôle |
|---|---|
| `VuhDoKeySetup.lua` | remplace celui d'origine — **sauvegardez l'ancien** |
| `VuhDoNagaConfig.dist.lua` | configuration par défaut |

Puis créez **votre** configuration en copiant le fichier par défaut :

```
VuhDoNagaConfig.dist.lua  →  VuhDoNagaConfig.lua
```

C'est cette copie que vous éditez. Elle n'est pas versionnée, donc jamais écrasée par une mise à jour du dépôt.

## 2. Déclarer les fichiers dans le `.toc`

WoW ne charge que ce qui est listé dans le `.toc` de l'addon. Ouvrez `VuhDo.toc` (ou `VuhDoNaga.toc`) et ajoutez ces deux lignes **avant** `VuhDo.xml` :

```
VuhDoNagaConfig.dist.lua
VuhDoNagaConfig.lua
```

L'ordre compte : le fichier local est chargé après le fichier par défaut, et le surcharge. Le local est facultatif — WoW ignore silencieusement un fichier absent.

`VuhDoNaga.toc.exemple` à la racine du dépôt montre le résultat.

## 3. Configurer vos sorts

Dans `VuhDoNagaConfig.lua`, redéfinissez ce que vous voulez changer. Ce qui n'est pas redéfini reste au défaut :

```lua
VUHDO_NAGA_CONFIG = {
    KEYS = { "1", "2", "3", "4", "5", "6", "7", "8", "9", "0", ")", "=" },
    SPELLS = {
        [""] = {
            [1] = "Flash Heal",
            [2] = "Renew",
            [3] = "",            -- slot desactive
            -- ...
        },
    },
};
```

Règles : noms **anglais** exacts avec leur ponctuation, `""` pour désactiver un slot, et un `/reload` après chaque modification.

Pour trouver le nom exact de vos sorts :

```
/run local i=1 while true do local n=GetSpellName(i,"spell") if not n then break end print(i,n) i=i+1 end
```

Pour vérifier un nom précis (affiche le sort, ou `nil` s'il est faux) :

```
/run print(GetSpellInfo("Flash Heal"))
```

## 4. Adapter les touches

`KEYS` contient les noms de touches **tels que WoW les rapporte**, qui ne correspondent pas toujours aux caractères imprimés — sur AZERTY, la onzième remonte en `)` et non en `-`. Pour relever les vôtres, collez ceci en jeu, pressez vos douze boutons, puis Échap :

```
/run local f=CreateFrame("Frame",nil,UIParent) f:EnableKeyboard(true) f:SetScript("OnKeyDown",function(s,k) print("TOUCHE: "..k) if k=="ESCAPE" then s:EnableKeyboard(false) end end)
```

## 5. Le fork (recommandé)

Sans cela, le launcher Ascension écrasera `VuhDoKeySetup.lua` à chaque lancement du jeu.

`scripts/Refaire-Fork.ps1` fait tout : ouvrez-le, ajustez les deux chemins en tête de fichier, et lancez-le jeu fermé (clic droit → Exécuter avec PowerShell). Il crée `VuhDoNaga` et `VuhDoNagaOptions`, réécrit les chemins internes, copie votre configuration VuhDo et désactive les addons d'origine.

Au premier lancement, à l'écran de sélection des personnages, ouvrez le menu **AddOns** : `VuhDoNaga` et `VuhDoNagaOptions` cochés, `VuhDo` et `VuhDoOptions` décochés. Les deux versions actives en même temps partageraient les variables globales `VUHDO_*`.

## 6. Vérifier

```
/run for _,p in ipairs({"vd","vds","vdc","vda"}) do local s="" for i=1,12 do for b in pairs(VUHDO_BUTTON_CACHE) do if b:GetAttribute("type-"..p..i) then s=s.." "..i break end end end print(p..":"..s) end
```

Affiche les slots actifs par jeu de touches. Seuls ceux dont le sort est appris apparaissent. Survolez ensuite une frame et pressez la touche correspondante.

## Désinstaller

Jeu fermé : supprimez `VuhDoNaga` et `VuhDoNagaOptions`, puis repassez `VuhDo` et `VuhDoOptions` en `enabled` dans `WTF\Account\<compte>\<royaume>\<perso>\AddOns.txt`. La configuration d'origine n'a jamais été modifiée, seulement copiée.
