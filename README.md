# VuhDo Naga Keys

Patch pour l'addon **VuhDo** sur [Project Ascension](https://ascension.gg) (WoW 3.3.5, Conquest of Azeroth) qui donne aux 12 boutons d'une souris **Razer Naga** un double comportement :

- curseur **sur une frame VuhDo** → la touche lance un sort de soin **sur cet allié**
- curseur **ailleurs** → la touche garde son binding normal (barre d'action)

La distinction est réelle : elle repose sur un binding *local à la frame*, pas sur `@mouseover`. Une macro `/cast [@mouseover,help]` ne suffirait pas, car elle ne fait pas la différence entre survoler la **frame** d'un allié et survoler son **modèle 3D** dans le monde.

## Comment ça marche

VuhDo utilise déjà ce mécanisme en interne pour la molette : chaque bouton de frame porte des attributs `_onenter` / `_onleave` exécutés dans l'environnement sécurisé (`SecureHandlerEnterLeaveTemplate`), seul habilité à appeler `SetBindingClick` / `ClearBindings`.

Tant que le curseur est sur un bouton, la touche est bindée à un clic virtuel sur ce bouton. Dès qu'il en sort, `ClearBindings()` rend la touche à son binding global.

Le patch étend ce mécanisme à 12 touches configurables, et n'active un slot que si le sort est **réellement appris** — les autres touches restent libres.

## Voir les modifications

Le premier commit contient le `VuhDoKeySetup.lua` d'origine (VuhDo 3.2 pour Ascension), intact. Le second contient le patch. Le diff entre les deux **est** le patch :

```
git diff HEAD~1 HEAD -- VuhDoKeySetup.lua
```

## Configuration

En tête de `VuhDoKeySetup.lua` :

```lua
local VUHDO_NAGA_KEY_SPELLS = {
    [1]  = "Repair Shot",    -- touche "1"
    [2]  = "",               -- touche "2"  (vide = slot desactive)
    ...
};
```

Les noms doivent être en **anglais**, ponctuation comprise (`Zap!`, `Build: Alarm Beacon`). Voir les pièges ci-dessous.

Puis `/reload` en jeu.

## Trois pièges, vérifiés en jeu

**Les noms de sorts sont en anglais, même avec un addon de traduction.** Le client tourne en `enUS` ; un addon comme AscensionFR ne réécrit que l'affichage. `GetSpellInfo()` et `/cast` attendent l'anglais. Un nom français ne provoque aucune erreur — la touche reste simplement inerte.

**Le tiret n'est pas décoratif.** `SecureButton_GetButtonSuffix()` renvoie `"-"..bouton` pour tout nom de bouton non standard. Un clic virtuel sur `w5` fait donc chercher l'attribut **`type-w5`**, pas `typew5`. À vérifier en jeu :

```
/run print(SecureButton_GetButtonSuffix("w5"))   -- affiche  -w5
```

**Sur clavier AZERTY**, WoW normalise les dix premières touches de la rangée du haut en chiffres, mais **pas** la onzième, qui remonte en `)` (et la douzième en `=`). Pour relever les noms réels :

```
/run local f=CreateFrame("Frame",nil,UIParent) f:EnableKeyboard(true) f:SetScript("OnKeyDown",function(s,k) print("TOUCHE: "..k) if k=="ESCAPE" then s:EnableKeyboard(false) end end)
```

**Ne pas filtrer avec `GetSpellInfo`.** Elle répond pour n'importe quel sort existant du jeu, même non appris : la touche serait confisquée au survol pour lancer un sort indisponible. Le patch lit le grimoire via `GetSpellName(i, "spell")`.

## Le launcher écrase le fichier

Le launcher Ascension restaure sa version des addons qu'il gère **à chaque lancement**. Il ne touche jamais aux addons tiers.

La parade est de faire tourner VuhDo sous un nom que le launcher ignore. `scripts/Refaire-Fork.ps1` automatise l'opération ; voir [docs/mise-a-jour.md](docs/mise-a-jour.md) pour le détail et les points délicats (chemins en dur avec backslashes échappés, `SavedVariables` nommés d'après l'addon, dépendance du panneau d'options).

Contrepartie : le fork ne reçoit plus les mises à jour d'Ascension.

## Installation

Voir [docs/installation.md](docs/installation.md).

## Licence et crédits

VuhDo est l'œuvre d'Iza@Gilneas, porté sur Ascension par Szyler. Ce dépôt ne redistribue **pas** l'addon : il ne contient qu'un seul de ses fichiers, avant et après modification, à des fins de suivi et de partage du patch. Installez VuhDo par les canaux habituels.
