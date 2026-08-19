# Mapping par défaut — Tinker / Invention

Contenu de `VuhDoNagaConfig.dist.lua`. Chaque case est le sort lancé sur l'allié survolé quand on presse cette touche avec ce modificateur.

⚠️ **Ce n'est pas un point de départ neutre.** C'est le mapping de travail réellement utilisé en jeu par le mainteneur, avec ses choix personnels inclus tels quels — doublon volontaire et cases vides compris. Si vous voulez une base plus « propre » pour démarrer, retirez le doublon de la touche `7` et remplissez les touches `5` et `12` selon vos propres sorts.

| Touche | *(sans modificateur)* | SHIFT | CTRL | ALT |
|:---:|---|---|---|---|
| `1` | Emergency Heal | Build: Restorative Beacon | Invisibility Cloak | — |
| `2` | Repair Shot | Build: Shield Beacon | Rocket Boots | — |
| `3` | Nanobot Reconstruction | Build: Replenishment Beacon | Parachute Pack | — |
| `4` | Med Pack | Build: Alarm Beacon | Warphole Generator | — |
| `5` | — | Build: Battery Recharge Station | Tinkering Tools | Defibrillate |
| `6` | Nanobot Recharger | Build: ZIGGI-6K | 'Pick Lock' | Maxi-Cleanser X-420 |
| `7` | Nanobot Cleanser *(doublon de la touche 3)* | Build: Bounce Pad! | Landstrider Keys | Emergency Module |
| `8` | Kinetic Shield | Build: Portable Sawmill | Minicopter-Z | Guardian Module |
| `9` | Stim Augmentation | Overcharge | — | — |
| `0` | Mana Module | Battery Swap | — | My Greatest Invention! |
| `)` | Power Module | — | — | — |
| `=` | — | — | — | — |

`—` : slot vide. La touche garde son binding habituel, **y compris pendant le survol d'une frame**.

## Logique de répartition

**Sans modificateur** — les soins et le support ciblés sur un allié.

**SHIFT** — tout ce qui se pose au sol : les beacons, les déployables, et les deux capacités qui les pilotent (`Overcharge`, `Battery Swap`).

**CTRL** — l'utilitaire et la mobilité, appliqués sur soi.

**ALT** — sert de repli aux sorts déplacés de la ligne du dessus (voir « Historique des remplacements » plus bas), reste libre ailleurs pour garder des touches offensives accessibles sans quitter les barres de vie.

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

Les autres proviennent de l'arbre de talents et n'ont pas de niveau fixe. Source : `db.ascension.gg`, classe 28, compétences Invention (100) et base Tinker (480/481).

`Stim Augmentation` ne figure pas dans la base pour Tinker mais est accessible en classless — le grimoire fait autorité, pas la base.

## Ce qui a été volontairement écarté

Les sorts **ciblés sur un ennemi** ne peuvent pas fonctionner : VuhDo construit ses macros avec un conditionnel `help` visant l'allié survolé, et un sort offensif répond qu'il n'a pas de cible valide.

Écartés pour cette raison : `Nanobot Swarm`, `Nanobot Deconstruction`, `Freeze Ray`, `E.M.P`, `Anti-Magic Grenades`, `Sticky Bomb`, `Deploy Blast Mine`, `Remote Detonation`, `Deathball`.

`Magic-Cleanser 4000X` est écarté aussi : la base le marque `Deprecate`.

## Slots à surveiller

Certaines entrées ont un champ `rank` vide dans la base — ni `Passive`, ni `Rank N`. Elles sont retenues d'après leur nom, sans certitude qu'elles soient lançables : `Warphole Generator`, `Tinkering Tools`, `Overcharge`, `Battery Swap`.

Si l'une s'avère être un passif, elle apparaîtra dans le grimoire, le filtre la croira lançable, et **la touche sera confisquée au survol sans que rien ne parte**. Il suffit alors de remettre `""` dans le slot concerné.

`Mana Module` (touche `0`) et `Power Module` (touche `)`) sont dans une situation différente : ils **n'apparaissent pas du tout** dans l'extraction des 137 sorts actifs de Tinker sur `db.ascension.gg`, probablement des gadgets d'ingénierie fabriqués plutôt que des talents de classe. Leur comportement de ciblage (allié, soi-même, ou zone) n'a pas été confirmé en jeu — `Power Module` figurait même, dans une version antérieure de ce mapping, parmi les sorts écartés comme ciblés-ennemi, un classement fondé sur un simple regroupement par identifiant de compétence partagé avec de vrais explosifs, jamais vérifié individuellement.

## Historique des remplacements

Trois couples ont été substitués au fil de vérifications en jeu, l'ancien occupant déplacé en `ALT` plutôt que supprimé :

| Touche | Remplacé | Par | Raison |
|---|---|---|---|
| `1`/`2` (rotation) | — | `Emergency Heal` en `1`, `Repair Shot` en `2` | réorganisation personnelle, sans rapport avec la fiabilité des sorts |
| `6` | `Maxi-Cleanser X-420` → `ALT-6` | `Nanobot Recharger` | régénération de mana ajoutée, vérifiée via infobulle |
| `8` | `Guardian Module` → `ALT-8` | `Kinetic Shield` | `Kinetic Shield` vérifié en jeu, `Guardian Module` jamais confirmé |

`Kinetic Shield` — infobulle lue en jeu : *« Crée un bouclier magnétique sur un allié pendant 8 sec, réduisant les dégâts subis de 40 % et rendant la cible insensible à un effet de stun »*, 227 mana, portée 30 m, incantation instantanée, recharge 5 min.

`Nanobot Recharger` — infobulle lue en jeu : *« Envoyez des Nanorobots à un allié, régénérant 44 mana toutes les 5 secondes »*, portée 40 m, incantation instantanée. Un seul allié ciblé à la fois, non dissipable.

`Emergency Heal` — appris et actif, confirmé par le grimoire.

## Vérifier ses slots actifs

```
/run for _,p in ipairs({"vd","vds","vdc","vda"}) do local s="" for i=1,12 do for b in pairs(VUHDO_BUTTON_CACHE) do if b:GetAttribute("type-"..p..i) then s=s.." "..i break end end end print(p..":"..s) end
```

`vd` sans modificateur, `vds` SHIFT, `vdc` CTRL, `vda` ALT. Seuls les slots dont le sort est appris apparaissent.
