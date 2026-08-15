# VuhDo Naga Keys

Patch pour l'addon **VuhDo** sur [Project Ascension](https://ascension.gg) (WoW 3.3.5, Conquest of Azeroth) qui donne aux 12 boutons d'une souris **Razer Naga** un double comportement :

- curseur **sur une frame VuhDo** → la touche lance un sort **sur cet allié**
- curseur **ailleurs** → la touche garde son binding normal (barre d'action)

Avec les modificateurs, cela fait **48 emplacements** : 12 touches × (rien / SHIFT / CTRL / ALT).

La distinction est réelle : elle repose sur un binding *local à la frame*, pas sur `@mouseover`. Une macro `/cast [@mouseover,help]` ne suffirait pas, car elle ne fait pas la différence entre survoler la **frame** d'un allié et survoler son **modèle 3D** dans le monde.

## Configuration

Le dépôt suit le principe `.env.dist` / `.env.local` :

| Fichier | Rôle |
|---|---|
| `VuhDoNagaConfig.dist.lua` | configuration par défaut, **versionnée** — ne pas la modifier |
| `VuhDoNagaConfig.lua` | **votre** configuration, ignorée par git |

Copiez le premier en second, et éditez la copie. Le local surcharge le défaut **jeu de touches par jeu de touches** : ne redéfinir que `["shift-"]` laisse les trois autres au défaut. Si le fichier local n'existe pas, WoW l'ignore silencieusement et le défaut s'applique.

```lua
VUHDO_NAGA_CONFIG = {
    SPELLS = {
        [""] = {
            [1] = "Flash Heal",
            [2] = "Renew",
            -- ...
        },
    },
};
```

La configuration livrée couvre **Tinker / Invention** (soigneur) — voir le [tableau des 48 emplacements](docs/mapping-tinker-invention.md). Les contributions pour d'autres classes et spécialisations sont bienvenues : c'est un nouveau fichier `dist`, sans toucher au code.

Pour démarrer une nouvelle configuration, la [référence des sorts par classe](docs/reference-sorts-par-classe.md) liste les sorts actifs des 21 classes propres à Conquest of Azeroth (10 ont une spé de soin) — matière première brute, à vérifier en jeu avant usage.

## Trois familles de sorts

VuhDo construit ses macros avec un conditionnel `help` visant l'allié survolé. Cela détermine ce qui fonctionne :

| Type | | Exemple |
|---|---|---|
| ciblé sur un allié | ✅ | soins, dissipations |
| zone au sol / sur soi | ✅ | totems, déployables |
| ciblé sur un ennemi | ❌ | « pas de cible valide » |

Un slot vide, un sort non appris ou un sort inutilisable laisse la touche à son binding habituel — y compris pendant le survol.

## Comment ça marche

VuhDo utilise déjà ce mécanisme en interne pour la molette : chaque bouton de frame porte des attributs `_onenter` / `_onleave` exécutés dans l'environnement sécurisé (`SecureHandlerEnterLeaveTemplate`), seul habilité à appeler `SetBindingClick` / `ClearBindings`.

Tant que le curseur est sur un bouton, la touche est bindée à un clic virtuel sur ce bouton. Dès qu'il en sort, `ClearBindings()` rend la touche à son binding global.

## Voir les modifications

Le premier commit contient le `VuhDoKeySetup.lua` d'origine (VuhDo 3.2 pour Ascension), intact. Le second contient le patch :

```
git diff e68ca5b 554b496 -- VuhDoKeySetup.lua
```

## Quatre pièges, vérifiés en jeu

**Les noms de sorts sont en anglais**, même avec un addon de traduction. Le client tourne en `enUS` ; un addon comme AscensionFR ne réécrit que l'affichage. Un nom français ne provoque aucune erreur — la touche reste simplement inerte.

**Le tiret n'est pas décoratif.** `SecureButton_GetButtonSuffix()` renvoie `"-"..bouton` pour tout nom de bouton non standard. Un clic virtuel sur `vd1` fait donc chercher l'attribut **`type-vd1`**, pas `typevd1` :

```
/run print(SecureButton_GetButtonSuffix("vd1"))   -- affiche  -vd1
```

**Le préfixe de modificateur de WoW ne suffit pas.** Poser `shift-type-vd1` en gardant un identifiant de clic partagé ne fonctionne pas : WoW retombe sur l'attribut non préfixé. Chaque combinaison a donc son propre identifiant — `vd`, `vds`, `vdc`, `vda`.

**Ne pas filtrer avec `GetSpellInfo`.** Elle répond pour n'importe quel sort existant du jeu, même non appris : la touche serait confisquée pour lancer un sort indisponible. Le patch lit le grimoire via `GetSpellName(i, "spell")`.

**Sur clavier AZERTY**, WoW normalise les dix premières touches de la rangée du haut en chiffres, mais **pas** la onzième (`)`) ni la douzième (`=`). Pour relever les vôtres :

```
/run local f=CreateFrame("Frame",nil,UIParent) f:EnableKeyboard(true) f:SetScript("OnKeyDown",function(s,k) print("TOUCHE: "..k) if k=="ESCAPE" then s:EnableKeyboard(false) end end)
```

## Le launcher écrase le fichier

Le launcher Ascension restaure sa version des addons qu'il gère **à chaque lancement**. Il ne touche jamais aux addons tiers.

La parade est de faire tourner VuhDo sous un nom que le launcher ignore. `scripts/Refaire-Fork.ps1` automatise l'opération ; voir [docs/mise-a-jour.md](docs/mise-a-jour.md).

## Installation

Voir [docs/installation.md](docs/installation.md).

## Licence et crédits

VuhDo est l'œuvre d'Iza@Gilneas, porté sur Ascension par Szyler. Ce dépôt ne redistribue **pas** l'addon : il ne contient qu'un seul de ses fichiers, avant et après modification, plus les fichiers de configuration ajoutés. Installez VuhDo par les canaux habituels.
