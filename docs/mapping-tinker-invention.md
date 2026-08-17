# Mapping par défaut — Tinker / Invention

Contenu de `VuhDoNagaConfig.dist.lua`. Chaque case est le sort lancé sur l'allié survolé quand on presse cette touche avec ce modificateur.

| Touche | *(sans modificateur)* | SHIFT | CTRL | ALT |
|:---:|---|---|---|---|
| `1` | Repair Shot | Build: Restorative Beacon | Invisibility Cloak | — |
| `2` | Nanobot Reconstruction | Build: Shield Beacon | Rocket Boots | — |
| `3` | Nanobot Cleanser | Build: Replenishment Beacon | Parachute Pack | — |
| `4` | Med Pack | Build: Alarm Beacon | Warphole Generator | — |
| `5` | Emergency Heal | Build: Battery Recharge Station | Tinkering Tools | Defibrillate |
| `6` | Maxi-Cleanser X-420 | Build: ZIGGI-6K | 'Pick Lock' | — |
| `7` | Kinetic Shield | Build: Bounce Pad! | Landstrider Keys | Emergency Module |
| `8` | Guardian Module | Build: Portable Sawmill | Minicopter-Z | — |
| `9` | Stim Augmentation | Overcharge | — | — |
| `0` | My Greatest Invention! | Battery Swap | — | — |
| `)` | — | — | — | — |
| `=` | — | — | — | — |

`—` : slot vide. La touche garde son binding habituel, **y compris pendant le survol d'une frame**. `ALT` reste presque entièrement libre, pour conserver des touches offensives accessibles sans quitter les barres de vie — sauf les deux cases ci-dessus, qui servent de repli à des sorts remplacés par des alternatives vérifiées (voir plus bas).

## Logique de répartition

**Sans modificateur** — les soins et le support ciblés sur un allié. C'est le cœur, sur les touches les plus accessibles.

**SHIFT** — tout ce qui se pose au sol : les beacons, les déployables, et les deux capacités qui les pilotent (`Overcharge`, `Battery Swap`).

**CTRL** — l'utilitaire et la mobilité, appliqués sur soi.

**ALT** — libre.

## Niveaux requis

| Sort | Niveau |
|---|---|
| Build: Alarm Beacon, Build: Bounce Pad!, Build: Replenishment Beacon, Landstrider Keys, My Greatest Invention! | 1 |
| Repair Shot | 2 |
| Defibrillate, Nanobot Reconstruction | 10 |
| Nanobot Cleanser | 11 |
| 'Pick Lock', Build: Portable Sawmill, Build: Shield Beacon | 14 |
| Med Pack | 16 |
| Minicopter-Z | 30 |

`Emergency Heal` et `Kinetic Shield` proviennent de l'arbre de talents, sans niveau fixe.

Les autres proviennent de l'arbre de talents et n'ont pas de niveau fixe. Source : `db.ascension.gg`, classe 28, compétences Invention (100) et base Tinker (480/481).

`Stim Augmentation` ne figure pas dans la base pour Tinker mais est accessible en classless — le grimoire fait autorité, pas la base.

## Ce qui a été volontairement écarté

Les sorts **ciblés sur un ennemi** ne peuvent pas fonctionner : VuhDo construit ses macros avec un conditionnel `help` visant l'allié survolé, et un sort offensif répond qu'il n'a pas de cible valide.

Écartés pour cette raison : `Nanobot Swarm`, `Nanobot Deconstruction`, `Freeze Ray`, `E.M.P`, `Anti-Magic Grenades`, `Sticky Bomb`, `Deploy Blast Mine`, `Power Module`, `Remote Detonation`, `Deathball`.

`Magic-Cleanser 4000X` est écarté aussi : la base le marque `Deprecate`.

## Slots à surveiller

Certaines entrées ont un champ `rank` vide dans la base — ni `Passive`, ni `Rank N`. Elles sont retenues d'après leur nom, sans certitude qu'elles soient lançables : `Guardian Module`, `Warphole Generator`, `Tinkering Tools`, `Overcharge`, `Battery Swap`.

Si l'une s'avère être un passif, elle apparaîtra dans le grimoire, le filtre la croira lançable, et **la touche sera confisquée au survol sans que rien ne parte**. Il suffit alors de remettre `""` dans le slot concerné.

`Emergency Module` était dans ce cas — jamais confirmé lançable — et a été déplacé en `ALT-7`, remplacé en touche `7` par `Kinetic Shield`, vérifié en jeu via son infobulle (bouclier magnétique sur un allié, insensibilise au stun, arbre Mechanics).

## Confirmés en jeu

Deux entrées ont été vérifiées directement en jeu, au-delà de la simple présence en base :

- **`Emergency Heal`** — appris et actif, remplace `Defibrillate` en touche `5` (`Defibrillate` déplacé en `ALT-5`, pas perdu).
- **`Kinetic Shield`** — infobulle lue en jeu : *« Crée un bouclier magnétique sur un allié pendant 8 sec, réduisant les dégâts subis de 40 % et rendant la cible insensible à un effet de stun »*, 227 mana, portée 30 m, incantation instantanée, recharge 5 min.

## Vérifier ses slots actifs

```
/run for _,p in ipairs({"vd","vds","vdc","vda"}) do local s="" for i=1,12 do for b in pairs(VUHDO_BUTTON_CACHE) do if b:GetAttribute("type-"..p..i) then s=s.." "..i break end end end print(p..":"..s) end
```

`vd` sans modificateur, `vds` SHIFT, `vdc` CTRL, `vda` ALT. Seuls les slots dont le sort est appris apparaissent.
