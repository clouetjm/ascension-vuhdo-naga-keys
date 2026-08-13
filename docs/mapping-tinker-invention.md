# Mapping par défaut — Tinker / Invention

Contenu de `VuhDoNagaConfig.dist.lua`. Chaque case est le sort lancé sur l'allié survolé quand on presse cette touche avec ce modificateur.

| Touche | *(sans modificateur)* | SHIFT | CTRL | ALT |
|:---:|---|---|---|---|
| `1` | Repair Shot | Build: Restorative Beacon | Invisibility Cloak | — |
| `2` | Nanobot Reconstruction | Build: Shield Beacon | Rocket Boots | — |
| `3` | Nanobot Cleanser | Build: Replenishment Beacon | Parachute Pack | — |
| `4` | Med Pack | Build: Alarm Beacon | Warphole Generator | — |
| `5` | Defibrillate | Build: Battery Recharge Station | Tinkering Tools | — |
| `6` | Maxi-Cleanser X-420 | Build: ZIGGI-6K | 'Pick Lock' | — |
| `7` | Emergency Module | Build: Bounce Pad! | Landstrider Keys | — |
| `8` | Guardian Module | Build: Portable Sawmill | Minicopter-Z | — |
| `9` | Stim Augmentation | Overcharge | — | — |
| `0` | My Greatest Invention! | Battery Swap | — | — |
| `)` | — | — | — | — |
| `=` | — | — | — | — |

`—` : slot vide. La touche garde son binding habituel, **y compris pendant le survol d'une frame**. `ALT` est laissé entièrement libre pour conserver douze touches offensives accessibles sans quitter les barres de vie.

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

Les autres proviennent de l'arbre de talents et n'ont pas de niveau fixe. Source : `db.ascension.gg`, classe 28, compétences Invention (100) et base Tinker (480/481).

`Stim Augmentation` ne figure pas dans la base pour Tinker mais est accessible en classless — le grimoire fait autorité, pas la base.

## Ce qui a été volontairement écarté

Les sorts **ciblés sur un ennemi** ne peuvent pas fonctionner : VuhDo construit ses macros avec un conditionnel `help` visant l'allié survolé, et un sort offensif répond qu'il n'a pas de cible valide.

Écartés pour cette raison : `Nanobot Swarm`, `Nanobot Deconstruction`, `Freeze Ray`, `E.M.P`, `Anti-Magic Grenades`, `Sticky Bomb`, `Deploy Blast Mine`, `Power Module`, `Remote Detonation`, `Deathball`.

`Magic-Cleanser 4000X` est écarté aussi : la base le marque `Deprecate`.

## Slots à surveiller

Certaines entrées ont un champ `rank` vide dans la base — ni `Passive`, ni `Rank N`. Elles sont retenues d'après leur nom, sans certitude qu'elles soient lançables : `Emergency Module`, `Guardian Module`, `Warphole Generator`, `Tinkering Tools`, `Overcharge`, `Battery Swap`.

Si l'une s'avère être un passif, elle apparaîtra dans le grimoire, le filtre la croira lançable, et **la touche sera confisquée au survol sans que rien ne parte**. Il suffit alors de remettre `""` dans le slot concerné.

## Vérifier ses slots actifs

```
/run for _,p in ipairs({"vd","vds","vdc","vda"}) do local s="" for i=1,12 do for b in pairs(VUHDO_BUTTON_CACHE) do if b:GetAttribute("type-"..p..i) then s=s.." "..i break end end end print(p..":"..s) end
```

`vd` sans modificateur, `vds` SHIFT, `vdc` CTRL, `vda` ALT. Seuls les slots dont le sort est appris apparaissent.
