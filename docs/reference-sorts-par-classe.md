# Référence — sorts par classe (Conquest of Azeroth)

Liste brute des sorts **actifs** (non passifs) des 21 classes propres à Conquest of Azeroth, extraite de `db.ascension.gg`. Sert de matière première pour construire un nouveau fichier `dist` de configuration — voir [installation.md](installation.md).

## ⚠️ Ce que c'est, ce que ce n'est pas

**C'est** une liste brute filtrée (passifs et entrées `Deprecate` retirés) pour chaque classe, avec le niveau minimum et l'identifiant de compétence brut (`skill`) tel que renvoyé par la base — pas un nom de spécialisation, faute de correspondance fiable id → nom exploitable dans les données de la base.

**Ce n'est pas** une liste vérifiée en jeu. Contrairement au mapping Tinker/Invention du fichier `dist`, ces listes n'ont pas été confrontées à un grimoire réel ni testées avec `/cast`. Attendez-vous à y trouver :

- des recettes de métier ou objets classés par erreur dans le même identifiant de compétence
- des entrées marquées `unused`, `WIP`, `NYI`, `no longer implemented` dans leur propre nom — le filtre n'exclut que le champ `rank`, pas ces mentions textuelles
- des sorts à ranks multiples listés une seule fois (le niveau le plus bas retenu)
- des sorts ciblés sur un ennemi, inutilisables tels quels dans ce mécanisme VuhDo (voir le README)

**Avant d'ajouter un nom à une configuration**, vérifiez-le en jeu :

```
/run print(GetSpellInfo("Nom Du Sort"))
```

## Classes avec une spécialisation de soin

10 classes sur 21 ont une spé healer, identifiable par sa description dans le tableau ci-dessous.

| Classe | Spé healer | Description |
|---|---|---|
| Witch Doctor | Brewing | Combine différents ingrédients pour soigner et soutenir |
| Bloodmage | Fleshweaver | Soins par rituels de sang |
| Chronomancer | Displacement | Soins amplifiés en manipulant le temps |
| Pyromancer | Flameweaving | Soins par magie du feu (référence utilisée pour Tinker) |
| Cultist | Influence | Boucliers et soins via les Anciens Dieux |
| Starcaller | Moonpriest | Soins par les cycles lunaires |
| Sun Cleric | Blessings | Soins par la dévotion au Soleil |
| Tinker | Invention | Soins par nanorobots et balises — **couvert par le `dist` de ce dépôt** |
| Venomancer | Vizier | Soins et boucliers via Shadra |
| Primalist | Life | Soins et dégâts en corps-à-corps |

Les 11 autres classes (Barbarian, Felsworn, Witch Hunter, Stormbringer, Knight of Xoroth, Guardian, Templar, Ranger, Necromancer, Reaper, Runemaster) n'ont pas de spécialisation de soin identifiée dans leur description.

---

## Barbarian

*Brutality: dual-wield/2H rage. Headhunting: lancers et haches à distance. Ancestry: buffs par ancêtre.*

| Niv. | Compétence | Sort |
|---|---|---|
| 0 | 41 | Axes, Axes Everywhere! |
| 0 | 41 | Blood Pact |
| 0 | 41 | Bloody Fighter |
| 0 | 41 | Boulderfist |
| 0 | 41 | Carnage |
| 0 | 41 | Fast and Furious |
| 0 | 41 | Frothing |
| 0 | 41 | Frothing Savage |
| 0 | 41 | Gruesome |
| 0 | 41 | Kargath's Cruelty |
| 0 | 41 | Punisher |
| 0 | 41 | Pure Power |
| 0 | 41 | Rampage |
| 0 | 41 | Rancor |
| 0 | 41 | Savage |
| 0 | 41 | Torture |
| 0 | 41 | Twirly Boy |
| 0 | 41 | Unbridled Intelligence |
| 0 | 41 | Undying |
| 0 | 41 | Unrelenting |
| 0 | 42 | Axe Volley |
| 0 | 42 | Deathmatch |
| 0 | 42 | Grit |
| 0 | 42 | Headhunter |
| 0 | 42 | Impaling Rush |
| 0 | 42 | Savage Revelry |
| 0 | 42 | Unstoppable |
| 0 | 42 | Vital Spirit |
| 0 | 47 | Ancestral Fury |
| 0 | 47 | Ancestral Might |
| 0 | 47 | Ancestral Spirit |
| 0 | 47 | Blanket of Stars |
| 0 | 47 | Bond Breaker |
| 0 | 47 | Bottomless Tankard |
| 0 | 47 | Deadly Duo |
| 0 | 47 | Dismiss Ancestor |
| 0 | 47 | Drunken Brawler |
| 0 | 47 | Empty Kegs |
| 0 | 47 | Ice Cold Bubbles |
| 0 | 47 | Improved Ancestral Combat |
| 0 | 47 | Leroy's Legacy |
| 0 | 47 | Trip to the Alehouse |
| 0 | 47 | Val'kyr Resurrection |
| 1 | 41 | Barbaric Strike |
| 1 | 41 | Juggernaut |
| 1 | 47 | Blood Brothers |
| 1 | 47 | Herald of Galakrond |
| 1 | 47 | Improved Thunderous Leap |
| 1 | 47 | Splash Zone |
| 2 | 41 | Smash |
| 8 | 42 | Headbutt |
| 10 | 47 | Keg Smash |
| 11 | 42 | Berserker Axe |
| 12 | 41 | Savage Strike |
| 12 | 42 | Ancestral Keg |
| 12 | 47 | Hodir's Wrath |
| 14 | 41 | Barbaric Whirl |
| 14 | 41 | Onslaught |
| 15 | 42 | Gutspiller |
| 15 | 47 | Ale of The God-King |
| 15 | 47 | Breath of The North |
| 16 | 42 | Defiance |
| 16 | 42 | Warband |
| 16 | 47 | Ancestral Roar |
| 16 | 47 | Mock |
| 17 | 41 | Brutal Swing |
| 17 | 41 | Decapitate |
| 17 | 47 | Ancestral Combat |
| 20 | 41 | Battle Vigor |
| 20 | 47 | Poisons Skill |
| 27 | 42 | Axe Twirling |
| 27 | 47 | Cheers! |
| 27 | 47 | Frozen Tankard |
| 29 | 42 | Berserker Rush |
| 32 | 42 | Skull Smash |
| 50 | 47 | Clanlord's Totem |
| 50 | 47 | Tavern Brawl! |
| 56 | 41 | Hullbreaker |
| 56 | 41 | Outrage |
| 57 | 41 | Storm of Steel |
| 57 | 47 | Ramhorn Rage |
| 57 | 47 | War Cry |
| 59 | 42 | Javelin Toss |

## Witch Doctor

*Shadowhunting: compagnon dinosaure, flèches d'ombre. Voodoo: hex et jinx DoT. Brewing (healer): potions de soin.*

| Niv. | Compétence | Sort |
|---|---|---|
| 0 | 48 | Dark Effigy |
| 0 | 48 | Dark Magic |
| 0 | 48 | Drakkari Barrier |
| 0 | 48 | Improved Jinxes |
| 0 | 48 | Improved Juju Burst |
| 0 | 48 | Jani's Intent |
| 0 | 48 | Jinxweaver |
| 0 | 48 | Juju |
| 0 | 48 | Mirage - GameObject Summon |
| 0 | 48 | Mirage (Return) |
| 0 | 48 | Ritual Hexing |
| 0 | 48 | Staff of the Coven |
| 0 | 48 | War Cry |
| 0 | 49 | Big Bad Voodoo |
| 0 | 49 | Dance of the Loa |
| 0 | 49 | Darkspear Poison |
| 0 | 49 | Jungle Fever |
| 0 | 49 | Loa's Strength |
| 0 | 49 | Shrink Ally |
| 0 | 51 | Bethekk's Fury |
| 0 | 51 | Bind Avatar |
| 0 | 51 | Brewmaster |
| 0 | 51 | Call Avatar: Devilsaur |
| 0 | 51 | Call Avatar: Pterrordax |
| 0 | 51 | Call Avatar: Stegodon |
| 0 | 51 | Dambala's Rage |
| 0 | 51 | Dismiss Avatar |
| 0 | 51 | Fresh Ingredients |
| 0 | 51 | Herb Pouch |
| 0 | 51 | Hexblade |
| 0 | 51 | Improved Revitalize |
| 0 | 51 | Legacy of Zandalar |
| 0 | 51 | Loa Spirits |
| 0 | 51 | Medicine Man |
| 0 | 51 | Shadowhunting |
| 0 | 51 | Step of the Panther |
| 0 | 51 | Stranglethorn Style |
| 0 | 51 | Strike A Deal |
| 0 | 51 | Vivacious Brews |
| 0 | 51 | Voodoo Fire |
| 0 | 51 | Wizened |
| 1 | 51 | Darkwander |
| 4 | 49 | Mark of Pa'ku |
| 6 | 51 | Lethargy Jinx |
| 8 | 49 | Loa's Brew |
| 8 | 51 | Shrinking Jinx |
| 9 | 51 | Hexing Strike |
| 10 | 48 | Mirage |
| 10 | 49 | Soothing Juju |
| 11 | 48 | Shadow Puppets |
| 12 | 51 | Rage of Bethekk |
| 14 | 48 | Umbral Glaive |
| 14 | 49 | Potion Toss |
| 14 | 49 | Spirit Idol |
| 14 | 51 | Stasis Ward |
| 15 | 48 | Bad Juju |
| 15 | 51 | Spirit Eclipse |
| 15 | 51 | Spirit Glaive |
| 16 | 48 | Shadowflare |
| 16 | 48 | Voodoo Bolt |
| 16 | 49 | Spirit in a Bottle |
| 20 | 49 | Shadow Avatar |
| 22 | 48 | Ice Hide |
| 24 | 48 | Voodoo Ward |
| 26 | 49 | Amphibimorph |
| 26 | 51 | Mana Jinx |
| 28 | 48 | Fang of Hir'eek |
| 28 | 49 | Allcure Elixir |
| 28 | 49 | Swift Idol |
| 28 | 51 | Vol'jin's Vigil |
| 29 | 49 | Mojo Beam |
| 29 | 51 | Mojo: Fish Bones |
| 30 | 48 | Overflowing Juju |
| 30 | 51 | Loa's Blessing |
| 30 | 51 | Slither |
| 31 | 49 | Arcane Brew |
| 31 | 49 | Rage Brew |
| 31 | 51 | Mojo: Frog Shrooms |
| 33 | 51 | Base: Beast Blood |
| 50 | 51 | Spirit Link Idol |
| 56 | 51 | Veil of Darkness |
| 57 | 48 | Voice of Bwonsamdi |
| 57 | 49 | Base: Crystal Water |
| 57 | 49 | Voodoo Cauldron |
| 58 | 48 | Death Draught |
| 59 | 48 | Soul Marionette |
| 59 | 48 | War Golem |
| 59 | 51 | Master Mixologist |
| 70 | 48 | Strike of the Gods |

## Felsworn

*Slaying: combos d'armes. Infernal: magie du fel à distance. Tyrant: tank fel.*

| Niv. | Compétence | Sort |
|---|---|---|
| 0 | 52 | Azzinoth's Rage |
| 0 | 52 | Chaos Storm |
| 0 | 52 | Empowered Felstrikes |
| 0 | 52 | Felcaked Glaives |
| 0 | 52 | Impenetrable Wards |
| 0 | 52 | Outland Slaver |
| 0 | 52 | Pact Mastery |
| 0 | 52 | Pit Lord's Strength |
| 0 | 52 | Spite |
| 0 | 52 | Untold Power |
| 0 | 52 | Wrathbringer |
| 0 | 53 | Archimonde's Fury |
| 0 | 53 | Cruelty |
| 0 | 53 | Evil Eye |
| 0 | 53 | Hidden Power |
| 0 | 53 | Sargeron Smite |
| 0 | 53 | Sculptor of Doom |
| 0 | 53 | Soar |
| 0 | 53 | Wrath of Sargeras |
| 0 | 57 | Demonscale |
| 0 | 57 | Fel Monstrosity |
| 0 | 57 | Hulking Demon |
| 0 | 57 | Trampling Hooves |
| 4 | 57 | Offering of the Damned |
| 10 | 52 | Hateforged Barrier |
| 10 | 57 | Manaburn |
| 11 | 52 | Azzinoth's Assault |
| 11 | 53 | Ruin |
| 11 | 57 | Carve |
| 12 | 52 | Demonborn |
| 13 | 52 | Demonic Will |
| 14 | 52 | Illidari Smite |
| 14 | 52 | Sunder |
| 14 | 57 | Betray |
| 15 | 53 | Bane of Chaos |
| 15 | 57 | Immolation Aura |
| 16 | 52 | Annihilan Strike |
| 16 | 57 | Skull of Gul'dan |
| 16 | 57 | Whispers of the Pit |
| 17 | 53 | Felwrath |
| 24 | 52 | Fel Doom |
| 28 | 52 | Illidan's Guile |
| 29 | 52 | Felhoof Charge |
| 29 | 57 | Burning Hatred |
| 29 | 57 | Tyrant's Gaze |
| 30 | 57 | Crashing Shadows |
| 32 | 52 | Armaments of the Legion |
| 40 | 52 | Blood of Mannoroth |
| 57 | 57 | Infernal Whipcrack |
| 58 | 53 | Reckoning |
| 59 | 53 | Sargeras Embrace |
| 68 | 52 | Oblivion |
| 68 | 53 | Annihilation |

## Witch Hunter

*Boltslinger: arbalète à distance. Darkness: chiens-fantômes et pistolet. Inquisition: double armes enflammées. Black Knight: tank protecteur.*

| Niv. | Compétence | Sort |
|---|---|---|
| 0 | 58 | Agile Steps |
| 0 | 58 | Alertness |
| 0 | 58 | Bounty Hunter |
| 0 | 58 | Collection |
| 0 | 58 | Contract Killing |
| 0 | 58 | Crippling Bolt |
| 0 | 58 | Daring Escape |
| 0 | 58 | Grimshade Arbalest |
| 0 | 58 | Hired Crossbow |
| 0 | 58 | Hunter in the Night |
| 0 | 58 | Mechanized Crossbows |
| 0 | 58 | Rapid Reload |
| 0 | 58 | Rearmament |
| 0 | 58 | Slinging Bolts |
| 0 | 58 | Smoke Grenade |
| 0 | 58 | Trophy Hunter |
| 0 | 58 | Twilight Frenzy |
| 0 | 58 | Witching Shroud |
| 0 | 59 | Charged Bolts |
| 0 | 59 | Cursewarding |
| 0 | 59 | Dark Ranger |
| 0 | 59 | Darkfeast |
| 0 | 59 | Darkness - Level 50 Passive |
| 0 | 59 | Death Mark |
| 0 | 59 | Decimate |
| 0 | 59 | Expert Shot |
| 0 | 59 | Headshots |
| 0 | 59 | Houndmaster's Whistle |
| 0 | 59 | Kennel Master |
| 0 | 59 | Nefarious Accuracy |
| 0 | 59 | Runed Bullets |
| 0 | 59 | Shadow Bond |
| 0 | 59 | Student of Darkness |
| 0 | 59 | Subjugate |
| 0 | 59 | Unleash The Hounds |
| 0 | 59 | Vampiric Tonic |
| 0 | 59 | Weapon Swapping |
| 0 | 59 | Weaver of Sorrow |
| 0 | 60 | Agile |
| 0 | 60 | Alchemical Research |
| 0 | 60 | Dark Penance |
| 0 | 60 | Darkslayer's Lantern |
| 0 | 60 | Enchanted Armor |
| 0 | 60 | Hunt |
| 0 | 60 | Proclamation |
| 0 | 60 | Pursuer of Evil |
| 0 | 60 | Pyro Tonic |
| 0 | 60 | Vampire Hunt |
| 0 | 60 | Witching Idol |
| 0 | 501 | Gaze of the Black Knight |
| 0 | 501 | Witchmail |
| 1 | 58 | Deploy Ballista |
| 1 | 58 | Witch Hunt |
| 1 | 59 | Bane of Witches |
| 1 | 59 | Long Rifle |
| 1 | 60 | Dawn Blade |
| 6 | 58 | Bola Throw |
| 6 | 60 | Surging Tonic |
| 8 | 59 | Dark Regeneration |
| 8 | 60 | Witchblood Tonic |
| 10 | 58 | Punishing Bolt |
| 10 | 60 | Burrow Bolt |
| 10 | 501 | Vicious Mockery |
| 13 | 59 | Houndmaster's Call |
| 14 | 58 | Caltrops |
| 14 | 60 | Brand of the Unworthy |
| 15 | 58 | Collect Bounty |
| 15 | 59 | Witchblaster |
| 15 | 501 | Noctis Blade |
| 17 | 59 | Quickdraw |
| 17 | 59 | Shadow Shot |
| 17 | 60 | Flourish |
| 17 | 60 | Purifier's Edge |
| 20 | 58 | Witchbane |
| 20 | 60 | Stoicism |
| 24 | 58 | Damnation |
| 24 | 58 | Tormentor |
| 26 | 58 | Heartstop Bolt |
| 27 | 59 | Darkflock |
| 29 | 60 | Torchlight |
| 31 | 60 | Fiery Judgement |

## Stormbringer

*Maelstrom: eau et foudre. Lightning: burst mono-cible. Wind: élémentaire d'air.*

⚠️ Cette liste contient des entrées marquées « DEPPRECATED » ou « Unused » dans leur propre nom, non filtrées automatiquement.

| Niv. | Compétence | Sort |
|---|---|---|
| 0 | 61 | Arc Lightning |
| 0 | 61 | Binding Shock |
| 0 | 61 | Charge |
| 0 | 61 | Conductivity |
| 0 | 61 | Electrifying Aura |
| 0 | 61 | Fluxblast |
| 0 | 61 | Fluxcasting |
| 0 | 61 | Fusion |
| 0 | 61 | Ghast |
| 0 | 61 | Improved Flux |
| 0 | 61 | Improved Lightning Rod |
| 0 | 61 | Invoking Storms |
| 0 | 61 | Lethal Current |
| 0 | 61 | Spellstorm Mastery |
| 0 | 61 | Sturdy As The Storm |
| 0 | 61 | Thunderous |
| 0 | 61 | Titanic Thunderbolt |
| 0 | 62 | Aethermancy |
| 0 | 62 | Breezeway |
| 0 | 62 | Cloudburst |
| 0 | 62 | Dismiss Elemental |
| 0 | 62 | Fiery Retribution CD |
| 0 | 62 | Fog |
| 0 | 62 | Guiding Winds DEPPRECATED |
| 0 | 62 | Insulate |
| 0 | 62 | Invigorating Winds |
| 0 | 62 | Lexicon of Servitude |
| 0 | 62 | Nimbus |
| 0 | 62 | Power of Air |
| 0 | 62 | Power the Elements |
| 0 | 62 | Quickdraft |
| 0 | 62 | Raging Zephyr |
| 0 | 62 | Razorwind |
| 0 | 62 | Static Lock |
| 0 | 62 | Summon: Air Elemental |
| 0 | 62 | Unbound Elementalist |
| 0 | 62 | Windsurf |
| 0 | 63 | Disciple of Thorim |
| 0 | 63 | Exhale |
| 0 | 63 | Force Wave |
| 0 | 63 | Improved Vortex |
| 0 | 63 | Lightning Cage |
| 0 | 63 | Lingering Lightning |
| 0 | 63 | Megawatt Missile |
| 0 | 63 | Orb Siphon |
| 0 | 63 | Stormcloud |
| 0 | 63 | Stormforged Strike |
| 0 | 63 | Studious |
| 0 | 63 | Supercharge |
| 0 | 63 | Tempest's Call |
| 0 | 63 | Thunder King |
| 0 | 63 | Thunder Surge |
| 0 | 63 | Thunderbringer |
| 0 | 63 | Thunderflow |
| 0 | 63 | Undertow |
| 0 | 63 | Whirling Maelstrom |
| 0 | 63 | Whirlpool |
| 1 | 62 | Freewind |
| 1 | 62 | Windride |
| 1 | 63 | Launch Orbs |
| 1 | 63 | Thunder Ward |
| 8 | 62 | Storm Alert |
| 10 | 61 | Electrocute |
| 10 | 63 | Eye of the Storm |
| 10 | 63 | Thunder Prison Unused |
| 10 | 63 | Torrential Wrath |
| 11 | 61 | Arm of Thorim |
| 13 | 62 | Aeroblast |
| 13 | 63 | Stormflow |
| 15 | 61 | Forked Lightning |
| 17 | 62 | Gale |
| 17 | 62 | Kiss of the Clouds |
| 17 | 63 | Drown |
| 18 | 61 | Conjure Storm |
| 18 | 62 | Tailwind |
| 18 | 62 | Updraft |
| 19 | 63 | Conjure Rainstorm |
| 22 | 61 | Volt |
| 27 | 63 | Deluge |
| 35 | 62 | Invigorate Elemental |
| 40 | 62 | Aerodynamics |
| 40 | 62 | Wind Gate |
| 58 | 61 | Ride the Lightning |

## Knight of Xoroth

*Hellfire: incantations et lame infernale. Defiance: tank invocateur de démons. War: berserker deux-mains.*

| Niv. | Compétence | Sort |
|---|---|---|
| 0 | 64 | Bloodied Blade |
| 0 | 64 | Bone Collector |
| 0 | 64 | Burning Blade |
| 0 | 64 | Burning Rage |
| 0 | 64 | Death To All |
| 0 | 64 | Demon Knight's Might |
| 0 | 64 | Demonfury |
| 0 | 64 | Demonic Strength |
| 0 | 64 | Evil Duo |
| 0 | 64 | Hellhaul |
| 0 | 64 | Improved Gore |
| 0 | 64 | Improved Unleash Pestilence |
| 0 | 64 | Merciless |
| 0 | 64 | Mutilation |
| 0 | 64 | Pestilence of Death |
| 0 | 64 | Render |
| 0 | 64 | Ripper |
| 0 | 64 | Skulltaker |
| 0 | 64 | Superheated Blade |
| 0 | 65 | Bringer of Fire |
| 0 | 65 | Burning Power |
| 0 | 65 | Cataclysmic Power |
| 0 | 65 | Cinderblade |
| 0 | 65 | Combusting Blade |
| 0 | 65 | Curse of Hel'nurath |
| 0 | 65 | Flameblade |
| 0 | 65 | Flameforger |
| 0 | 65 | Infernal Pursuit |
| 0 | 65 | Inferno Blade |
| 0 | 65 | Inferno Blast |
| 0 | 65 | Pestilence of Apocalypse |
| 0 | 65 | Rage Demon |
| 0 | 65 | Shadowflame Forge |
| 0 | 65 | Unleash Hellfire |
| 0 | 65 | Xorothian Empowerment |
| 0 | 66 | Call: Hellfire Abyssal |
| 0 | 66 | Call: Hellfire Imp |
| 0 | 66 | Chain Grab |
| 0 | 66 | Chains of Xoroth |
| 0 | 66 | Create: Hellgate |
| 0 | 66 | Defiance Stats |
| 0 | 66 | Demon King |
| 0 | 66 | Demon's Breath |
| 0 | 66 | Demonfire Plating |
| 0 | 66 | Demonic Grit |
| 0 | 66 | Furnace of Fiends |
| 0 | 66 | Hellsmelted Armor |
| 0 | 66 | Imp Guards |
| 0 | 66 | Infernal Bulwark |
| 0 | 66 | Infernal Shield |
| 0 | 66 | Legion's Presence |
| 0 | 66 | Legionwake |
| 0 | 66 | Oath of Defiance |
| 0 | 66 | Suffuse |
| 0 | 66 | Xorothian Sigil |
| 1 | 66 | Hellish Rebuke |
| 4 | 65 | Unleash Pestilence |
| 9 | 65 | Hellfire Form |
| 10 | 64 | Brimstone Bludgeon |
| 10 | 64 | Demonfeast |
| 10 | 66 | Chainwhip |
| 12 | 65 | Pestilence of Famine |
| 12 | 66 | Shieldgore |
| 13 | 64 | Gore |
| 14 | 66 | Snarl |
| 15 | 65 | Seeking Flame |
| 16 | 64 | Pestilence of Conquest |
| 16 | 65 | Demon Heart |
| 17 | 65 | Unseal |
| 17 | 66 | Curse of Xoroth |
| 17 | 66 | Sacrificial Circle |
| 24 | 64 | Meatsaw |
| 25 | 66 | Hellfire Bellows |
| 27 | 66 | Implosion |
| 28 | 64 | Chains of Malice |
| 30 | 65 | Calamity |
| 32 | 64 | Juggernaut |
| 42 | 66 | Hellbound Leash |
| 58 | 65 | Rage of Xoroth |
| 59 | 66 | Hellstorm |

## Guardian

*Gladiator: bouclier et filets. Inspiration: chants et bannières de buff. Vanguard: blocages défensifs.*

| Niv. | Compétence | Sort |
|---|---|---|
| 0 | 67 | Deflector |
| 0 | 67 | Fortified Bulwark |
| 0 | 67 | Gallant |
| 0 | 67 | Hammer of Honor |
| 0 | 67 | Iron Guardian |
| 0 | 67 | Knight's Conviction |
| 0 | 67 | Stalwart |
| 0 | 68 | A Hero's Tale |
| 0 | 68 | Banner Boy |
| 0 | 68 | Banner Lord |
| 0 | 68 | Bark Orders |
| 0 | 68 | Endurance |
| 0 | 68 | Feats of Glory |
| 0 | 68 | Feats of Honor |
| 0 | 68 | Flexible Banners |
| 0 | 68 | Hero's Decree |
| 0 | 68 | Improved Feats of Strength |
| 0 | 68 | Inspiring Speech |
| 0 | 68 | Inspiring Speech Hidden |
| 0 | 68 | Leading the March |
| 0 | 68 | Powerful Voice |
| 0 | 68 | Soldier's Decree |
| 0 | 68 | Song of Steel TO REWORK |
| 0 | 68 | Spellcaster's Decree |
| 0 | 68 | Sturdy Constitution |
| 0 | 68 | Thrill of Battle |
| 0 | 69 | Battle Rush |
| 0 | 69 | Combat Poses |
| 0 | 69 | Crashing Force |
| 0 | 69 | Dirty Tactics |
| 0 | 69 | Duty |
| 0 | 69 | Light Nets |
| 0 | 69 | Mace Training |
| 0 | 69 | Polearm Training |
| 0 | 69 | Pulverize |
| 0 | 69 | Shieldforge |
| 0 | 69 | Sword Training |
| 0 | 90 | Devour Essence |
| 0 | 114 | Standard of Supremacy |
| 0 | 116 | Standard of Valiance |
| 0 | 487 | Defensive Pose |
| 0 | 487 | Offensive Pose |
| 1 | 68 | Feats of Strength |
| 2 | 68 | Standard of Recovery |
| 2 | 487 | Ram |
| 4 | 67 | Tower Formation |
| 4 | 487 | Raise Shield |
| 6 | 69 | Reprisal |
| 10 | 67 | Brace |
| 10 | 68 | Ballad of the Conqueror |
| 10 | 68 | Ballad of the Dragonslayer |
| 10 | 68 | Standard of Rallying |
| 10 | 69 | Net Throw |
| 11 | 67 | Heavy Blow |
| 11 | 69 | Centurion Strike |
| 13 | 69 | Motivating Strike |
| 14 | 67 | Shield Challenge |
| 15 | 67 | Hammer of Kings |
| 16 | 67 | Shield Wall |
| 16 | 69 | Broad Sweep |
| 16 | 69 | Shrug It Off |
| 20 | 67 | Bulwark |
| 20 | 67 | Line Formation |
| 20 | 68 | Banner of Conquest |
| 20 | 90 | Shield Training |
| 20 | 487 | Advance |
| 20 | 487 | Shield of Denial |
| 27 | 68 | Hero's March |
| 27 | 68 | Liberation |
| 28 | 67 | Counter Stance |
| 28 | 67 | Unyielding Stand |
| 28 | 68 | Freedom |
| 29 | 67 | Hammer of the Law |
| 30 | 67 | Iron Barrier |
| 30 | 68 | Banner of Swiftness |
| 30 | 68 | Chivalry |
| 30 | 68 | Tunnel Vision |
| 30 | 487 | Call To Arms |
| 32 | 68 | Knight's Calling |
| 33 | 67 | Bastion Slam |
| 40 | 487 | Cavalry Charge |
| 42 | 69 | Linebreaker |
| 50 | 68 | Inspiring Presence |
| 57 | 68 | Song of Battle |
| 58 | 69 | Grand Entrance |
| 58 | 69 | Press the Attack |
| 59 | 67 | Bastion |
| 59 | 67 | Final Verdict |
| 59 | 68 | Voice of an Angel |
| 60 | 487 | Assume Peak Posture |

## Templar

*Discipline: tank aux combos défensifs. Zealot: frappes rapides en combo. Crusader: AoE en lame tournoyante.*

| Niv. | Compétence | Sort |
|---|---|---|
| 0 | — | Fel Cloak |
| 0 | — | Holy Edge |
| 0 | — | Vitality |
| 0 | 64 | Render |
| 0 | 70 | Beatdown |
| 0 | 70 | Calm Combatant |
| 0 | 70 | Combat Training |
| 0 | 70 | Discipline of Titans |
| 0 | 70 | Fight Club |
| 0 | 70 | Finesse |
| 0 | 70 | Improved Engrave Fists |
| 0 | 70 | Lasting Markings |
| 0 | 70 | Light's Grace |
| 0 | 70 | Martial Paladin |
| 0 | 70 | Martial Training |
| 0 | 70 | Nimble Movements |
| 0 | 70 | Radiance |
| 0 | 70 | Runes of Power |
| 0 | 70 | Sacred Slam |
| 0 | 71 | Absolute Power |
| 0 | 71 | Alertness |
| 0 | 71 | Bells of Light |
| 0 | 71 | Call of the Monastery |
| 0 | 71 | Consecrated Armor |
| 0 | 71 | Dissonance |
| 0 | 71 | Grace of Aman'Thul |
| 0 | 71 | Graceful Fighter |
| 0 | 71 | Harmony |
| 0 | 71 | Improved Mend Ward |
| 0 | 71 | Light As Air |
| 0 | 71 | Paragon |
| 0 | 71 | Power In Holy Abdicationer |
| 0 | 71 | Quickpalm |
| 0 | 71 | Righteous Duel |
| 0 | 71 | Tithe of Alacrity |
| 0 | 71 | Tithe of Courage |
| 0 | 71 | Tithe of Heroism |
| 0 | 71 | Tithe of Ingenuity |
| 0 | 71 | Tithe of Liberty |
| 0 | 71 | Tithe of Might |
| 0 | 71 | Tithe of Mysticism |
| 0 | 71 | Tithe of Order |
| 0 | 71 | Tyr's Hand |
| 0 | 71 | Ward of Aman'thul |
| 0 | 72 | Chakra of Wrath |
| 0 | 72 | Devotion of Khaz'goroth |
| 0 | 72 | Flaming Edge |
| 0 | 72 | Guidance |
| 0 | 72 | Honed Edge |
| 0 | 72 | Lorescribe |
| 0 | 72 | Magmasteel |
| 0 | 72 | Mend Ward |
| 0 | 72 | Mirror Image |
| 0 | 72 | Powerful Strikes |
| 0 | 72 | Pure Focus |
| 0 | 72 | Quickness |
| 0 | 72 | Reflect Magic |
| 0 | 72 | Unbroken Creed |
| 0 | 88 | Oath: Retribution |
| 0 | 90 | Oath: Holy Cleave |
| 0 | 497 | Oath: Condemn |
| 1 | 70 | Blade of Faith |
| 1 | 70 | Left Hook |
| 1 | 70 | Right Hook |
| 1 | 494 | Chakram |
| 1 | 494 | Chastise |
| 1 | 494 | Kick |
| 1 | 494 | Righteous Lunge |
| 1 | 494 | Sacred Strikes |
| 2 | 71 | Benediction |
| 2 | 494 | Gift of Zeal |
| 4 | 70 | Libram of Consecration |
| 6 | 71 | Tranquil Circle |
| 8 | 494 | Harmonic Disposition |
| 8 | 494 | Testament of Faith |
| 10 | 70 | Divine Force |
| 10 | 494 | Testament of Fortitude |
| 11 | 70 | Vindication |
| 11 | 71 | Sacred Swing |
| 11 | 72 | Righteous Tempest |
| 12 | 494 | Holy Cleave |
| 13 | 70 | Righteous Upheaval |
| 14 | 71 | Beckon |
| 15 | 71 | Reckoning |
| 16 | 70 | Libram of Fervor |
| 16 | 71 | Libram of Tenacity |
| 16 | 494 | Shackle The Unrepentant |
| 18 | 70 | Weak Spot |
| 20 | 71 | Spiritual Ascension |
| 20 | 71 | Tithe of Crusading |
| 20 | 71 | Tithe of Elements |
| 20 | 494 | Tithe |
| 22 | 71 | Temple Guardian |
| 26 | 72 | Interdict |
| 27 | 70 | Libram of Zeal |
| 27 | 71 | Absolution |
| 28 | 72 | Testament of Resolve |
| 29 | 70 | Chakra of Light |
| 30 | 71 | Libram of Grace |
| 30 | 71 | Testament of Will |
| 31 | 70 | Barrier of Light |
| 31 | 72 | Force of Golganneth |
| 34 | 72 | Titanstrike |
| 40 | 70 | Divine Fury |
| 57 | 71 | Eternal Blessing |
| 58 | 72 | Glory |
| 58 | 72 | Silverhand Incantation |
| 59 | 70 | Norgannon's Wrath |
| 59 | 71 | Tome of Light |
| 62 | 72 | Flaming Blade |

## Bloodmage

*Fleshweaver (healer): rituels de sang soignants. Sanguine: magie de sang offensive. Accursed: forme maudite. Lycanthropy: forme de Worgen.*

| Niv. | Compétence | Sort |
|---|---|---|
| 0 | — | Alacrity |
| 0 | — | Bloodborn |
| 0 | — | Dark Curse |
| 0 | — | Gnash |
| 0 | — | Lifeline |
| 0 | — | Regenerative Power |
| 0 | 73 | Atherann's Wickedness |
| 0 | 73 | Binding Torment |
| 0 | 73 | Blood Craving |
| 0 | 73 | Blood Feast |
| 0 | 73 | Blood Lord |
| 0 | 73 | Blood Rain |
| 0 | 73 | Bloodmage |
| 0 | 73 | Crimson Hymn |
| 0 | 73 | Dark Blood |
| 0 | 73 | Dark Intent |
| 0 | 73 | Gift of Lana'thel |
| 0 | 73 | Harvest |
| 0 | 73 | Hemomancy |
| 0 | 73 | Improved Arugal's Blessing |
| 0 | 73 | Liquify |
| 0 | 73 | Sanguine Circle |
| 0 | 73 | Transfusion |
| 0 | 73 | Vampirism |
| 0 | 73 | Vampyr Bite |
| 0 | 73 | Visceral Vitality |
| 0 | 74 | Bloodsurge |
| 0 | 74 | Ferocious Impact |
| 0 | 74 | Grim Magic |
| 0 | 74 | Hunt |
| 0 | 74 | Hunter's Frenzy |
| 0 | 74 | Perilous Ascent |
| 0 | 74 | Permanent Damage |
| 0 | 74 | Puncturing Fangs |
| 0 | 74 | Reckless Abandon |
| 0 | 74 | Scent of Man |
| 0 | 74 | Unchained |
| 0 | 74 | Viciousness BFB proccer |
| 0 | 75 | Apotheosis |
| 0 | 75 | Blood Debt |
| 0 | 75 | Blood Howl |
| 0 | 75 | Blood Pact |
| 0 | 75 | Dark Hide |
| 0 | 75 | Denmother |
| 0 | 75 | Eternal Curse |
| 0 | 75 | Feral |
| 0 | 75 | Furrious |
| 0 | 75 | Heightened Reflexes |
| 0 | 75 | Ironhide |
| 0 | 75 | Monstrous Howl |
| 0 | 75 | Shadow Howl |
| 0 | 75 | Terrify |
| 0 | 75 | Time to Feast! |
| 0 | 75 | Vicious Maw |
| 0 | 75 | Warhound |
| 0 | 75 | Wicked Howl |
| 0 | 486 | Aneurysm |
| 0 | 500 | Fleshcraft |
| 0 | 500 | Gorge |
| 0 | 500 | Hemoglobe |
| 1 | 73 | Thirst |
| 1 | 74 | Accursed Form |
| 1 | 75 | Ravenous Bite (Packleader) |
| 1 | 486 | Running Wild |
| 1 | 486 | Sanguine Mend |
| 4 | 73 | Blood Shield |
| 6 | 74 | Bloodfang Bite |
| 6 | 486 | Bloodmoon Blast |
| 6 | 486 | Ravenous Strike |
| 8 | 74 | Lunge |
| 10 | 73 | Scarlet Delirium |
| 11 | 73 | Vampiric Fang |
| 11 | 74 | Finger of Death |
| 12 | 486 | Claw Sweep |
| 12 | 486 | Sanguine Rupture |
| 13 | 73 | Valanar's Vengeance |
| 14 | 73 | Bloodthorns |
| 14 | 73 | Shadowfang Ritual |
| 14 | 74 | Eviscerated |
| 14 | 75 | Bare Fangs |
| 15 | 74 | Reave |
| 15 | 75 | Eternal Resolve |
| 15 | 500 | Dark Liturgy |
| 15 | 500 | Vampyr's Kiss |
| 16 | 73 | Hematophage |
| 16 | 74 | Veinburst |
| 16 | 486 | Sanguinary Offering |
| 17 | 74 | Aortic Assault |
| 18 | 75 | Rotclaw |
| 20 | 73 | Shadowfang Shield |
| 22 | 486 | Hypovolemic Shock |
| 27 | 500 | Crimson Tide |
| 28 | 74 | Shadow Vigil |
| 29 | — | Purified Blood |
| 29 | 73 | Keleseth's Calamity |
| 29 | 73 | Malediction |
| 29 | 74 | Night Hunter's Howl |
| 40 | 500 | Heartbreak |
| 45 | 11792 | Curseguard |
| 50 | 486 | Red Thirst |
| 59 | 73 | Sacrificial Rite |
| 59 | 74 | Final Embrace |
| 59 | 74 | Hemoburst |

## Ranger

*Archery: points d'archerie et carquois. Brigand: dual-wield furtif empoisonné. Farstrider: faucons de guerre et cors.*

⚠️ Cette liste contient des recettes de tannage (« Cure Leather ») et des entrées « unused », non filtrées automatiquement.

| Niv. | Compétence | Sort |
|---|---|---|
| 0 | — | Compound Bow |
| 0 | — | Even Quicker Shots |
| 0 | — | Woodland Embrace |
| 0 | 58 | Slinging Bolts |
| 0 | 58 | Trophy Hunter |
| 0 | 60 | Agile |
| 0 | 72 | Eternal Balance |
| 0 | 76 | Archery Training |
| 0 | 76 | Ballista Bolts |
| 0 | 76 | Cutthroat |
| 0 | 76 | Devastating Shots |
| 0 | 76 | Durable Quivers |
| 0 | 76 | Elven Quivers |
| 0 | 76 | Journeyman Navigation |
| 0 | 76 | Killing Precision |
| 0 | 76 | Light Quiver |
| 0 | 76 | Master Marksman |
| 0 | 76 | Onslaught |
| 0 | 76 | Poison Quiver |
| 0 | 76 | Power Shot |
| 0 | 76 | Readiness |
| 0 | 76 | Searing Quiver |
| 0 | 76 | Skirmisher's Quiver |
| 0 | 76 | Stalker |
| 0 | 76 | Wargstride |
| 0 | 76 | Woodland Adept |
| 0 | 77 | Adaptation: Brigand |
| 0 | 77 | Ambuscade |
| 0 | 77 | Beastslayer |
| 0 | 77 | Blade Twisting |
| 0 | 77 | Cannon Blast |
| 0 | 77 | Dueling |
| 0 | 77 | Elusive Character |
| 0 | 77 | Highwayman |
| 0 | 77 | Instinct |
| 0 | 77 | Lethal Wounds |
| 0 | 77 | Outlaw |
| 0 | 77 | Quick Footed |
| 0 | 77 | Ranger's Gambit |
| 0 | 77 | Serrations |
| 0 | 77 | Trueshot Lodge Training |
| 0 | 77 | Underhanded |
| 0 | 77 | Viper's Bite |
| 0 | 78 | Adaptation: Farstrider |
| 0 | 78 | Affinity |
| 0 | 78 | Backstep |
| 0 | 78 | Dream Flowers |
| 0 | 78 | Falcon Charmer |
| 0 | 78 | Falcon Dive |
| 0 | 78 | Falcon's Call |
| 0 | 78 | Grace |
| 0 | 78 | Improved Grapplebomb |
| 0 | 78 | Javelin Toss |
| 0 | 78 | Pathfinder |
| 0 | 78 | Ranger General's Command |
| 0 | 78 | Ranger's Horn-unused |
| 0 | 78 | Razorquills |
| 0 | 78 | Survival Potion |
| 0 | 78 | Thalassian Brand |
| 0 | 78 | Wardancer |
| 0 | 89 | Eldritch Bargain |
| 0 | 112 | Circle of Elements |
| 0 | 480 | Bomb Specialist |
| 0 | 485 | Order and Chaos |
| 0 | 495 | Frenzy |
| 0 | 495 | Horn of Alacrity |
| 0 | 495 | Horn of Endurance |
| 0 | 495 | Horn of Perseverance |
| 0 | 495 | Horn of War |
| 0 | 505 | Bushcraft |
| 1 | 76 | Hunting Quiver |
| 1 | 76 | Offhand |
| 1 | 495 | Quick Shot |
| 1 | 505 | 6Campsite |
| 1 | 505 | Read Map |
| 1 | 505 | Rider's Harness |
| 3 | 495 | Skullpiercer |
| 4 | 482 | Skewer |
| 4 | 495 | Flank |
| 4 | 495 | Sticky Fingers |
| 6 | 505 | Waterskin |
| 8 | 495 | Wild Strike |
| 8 | 495 | Woodsman's Adaptation |
| 8 | 505 | 6Cure Light Leather |
| 10 | 76 | Crippling Shot |
| 10 | 77 | Hydra's Bite |
| 10 | 77 | Knockout |
| 10 | 77 | Ravage (UNUSED) |
| 10 | 78 | Ranger's Horn of -unused |
| 11 | 76 | Precision Shot |
| 11 | 78 | Falconstrike |
| 14 | 76 | Snapseed |
| 15 | 78 | Woodland Arrow |
| 15 | 505 | 6Cure Medium Leather |
| 16 | 78 | Briar Veil |
| 16 | 495 | 5Forestwood Key |
| 17 | 77 | Assault |
| 24 | 76 | Serrated Shot |
| 27 | 76 | Deadshot |
| 27 | 76 | Hunting Shot |
| 27 | 76 | Skirmish |
| 27 | 77 | Hookshot |
| 27 | 495 | Neurotoxin Arrow |
| 30 | 505 | 6Cure Heavy Leather |
| 40 | 505 | 6Cure Thick Leather |
| 50 | 505 | 6Cure Rugged Leather |
| 54 | 78 | Ranger's Horn of - unused |
| 58 | 76 | Incendiary Shot |
| 59 | 76 | Brutal Shot |
| 62 | 505 | 6Cure Knothide Leather |
| 72 | 505 | 6Cure Borean Leather |

## Chronomancer

*Duality: chaos et ordre. Displacement (healer): soins par manipulation temporelle. Artificer: baguettes et technologie.*

| Niv. | Compétence | Sort |
|---|---|---|
| 0 | 79 | Accelerated Mending |
| 0 | 79 | Balance of Power |
| 0 | 79 | Biting Chaos |
| 0 | 79 | Black Hole |
| 0 | 79 | Chromatic Shards |
| 0 | 79 | Chrono Sorcery |
| 0 | 79 | Deconstruction |
| 0 | 79 | Dilation |
| 0 | 79 | Discordant Blast |
| 0 | 79 | End of Time |
| 0 | 79 | Epoch |
| 0 | 79 | Gift of the Infinite Dragonflight |
| 0 | 79 | Gift of the Timeways |
| 0 | 79 | Improved Reverse Wound |
| 0 | 79 | Incarnation |
| 0 | 79 | Incarnation of Order |
| 0 | 79 | Infinite - Level 30 Passive |
| 0 | 79 | Mass Decomposition |
| 0 | 79 | Master of Chaos |
| 0 | 79 | Master of Order |
| 0 | 79 | Remake |
| 0 | 79 | Saviour |
| 0 | 79 | Timeline Destroyer |
| 0 | 79 | Timeline Guardian |
| 0 | 79 | Tome of Chaos |
| 0 | 79 | Tome of Time |
| 0 | 79 | Unmake |
| 0 | 80 | Archaeology |
| 0 | 80 | Artificer's Empowerment |
| 0 | 80 | Artificer's Magic |
| 0 | 80 | Artificer's Spellplate |
| 0 | 80 | Artificer's Toughness |
| 0 | 80 | Collapse |
| 0 | 80 | Crystal Cannon |
| 0 | 80 | Discs Upon Discs |
| 0 | 80 | Disenchant Weapon |
| 0 | 80 | Echo |
| 0 | 80 | Enchanted Collar |
| 0 | 80 | Flow of Infinity |
| 0 | 80 | Luck or Fate? |
| 0 | 80 | Plentiful Orbs |
| 0 | 80 | Protector Training |
| 0 | 80 | Runed Rod |
| 0 | 80 | Rust Creation |
| 0 | 80 | Time Is A Circle |
| 0 | 80 | Wisdom |
| 0 | 81 | Aeon of Oblivion |
| 0 | 81 | Aeon of Protection |
| 0 | 81 | Aeon of Renewal |
| 0 | 81 | Aeon of Resilience |
| 0 | 81 | Buy Time |
| 0 | 81 | Carbon Dating |
| 0 | 81 | Chronicles of History |
| 0 | 81 | Chrono Herald |
| 0 | 81 | Eternity Warper |
| 0 | 81 | Improved Past Self |
| 0 | 81 | Improved Time Stop |
| 0 | 81 | Infinite Tome |
| 0 | 81 | Luck |
| 0 | 81 | Past Self |
| 0 | 81 | Quickcaster |
| 0 | 81 | Sands of Life |
| 0 | 81 | Shimmering Shard |
| 0 | 81 | Time Loop |
| 0 | 81 | Timemancy |
| 0 | 81 | Timewalking |
| 0 | 485 | Rewind |
| 0 | 485 | Roll Back |
| 1 | 79 | Timerend |
| 1 | 485 | Reverse Wound |
| 1 | 11803 | Rumble |
| 1 | 11804 | Infinite Wrath |
| 4 | 79 | Discordance |
| 6 | 81 | Babify |
| 8 | 79 | Discordance |
| 8 | 81 | Fracture Timeline |
| 10 | 79 | Clasp of Infinity |
| 10 | 79 | Maw of Chaos |
| 10 | 81 | Waves of Time |
| 10 | 485 | Do Over |
| 10 | 11803 | Breath of Time |
| 11 | 80 | Shatter Echo |
| 11 | 81 | Ripple |
| 12 | 79 | Melt Reality |
| 12 | 485 | Chromie's Wisdom |
| 12 | 11804 | Chaos Embrace |
| 13 | 11803 | Chrono Mend |
| 14 | 79 | Gravity Bomb |
| 14 | 79 | Time Out! |
| 15 | 79 | Erase |
| 15 | 81 | Correct the Mistake |
| 16 | 81 | Rippling Power |
| 17 | 80 | Singularity Core |
| 17 | 81 | Sands of Time |
| 18 | 485 | Accelerated Recovery |
| 25 | 485 | Sandblast |
| 26 | 81 | Temporal Anomaly |
| 27 | 79 | Fortify Timeline |
| 27 | 81 | Fabric of Time |
| 28 | 79 | Temporal Focus |
| 29 | 79 | Unstable Chronoglass |
| 29 | 80 | Flux Emitter |
| 29 | 80 | Paradox Cannon |
| 30 | 81 | Infinite Clone |
| 30 | 11804 | Infinite Shroud |
| 31 | 81 | Continuum Restoration |
| 34 | 81 | Backtrack |
| 36 | 81 | Hasten |
| 40 | 81 | Past Mistakes |
| 40 | 485 | Teleport: Caverns of Time |
| 40 | 11803 | Timelink |
| 52 | 485 | Resynchronize |
| 57 | 79 | Arc Collision |
| 57 | 80 | Aether Compression |
| 58 | 81 | Infinite Shield |
| 59 | 80 | The Vast Infinite |

## Necromancer

*Death: pestilences. Rime: dégâts de givre. Animation: horde de morts-vivants.*

| Niv. | Compétence | Sort |
|---|---|---|
| 0 | — | Disciple of Kel'thuzad |
| 0 | 82 | Apothecary's Cauldron |
| 0 | 82 | Blightweaver |
| 0 | 82 | Burrowing Worms |
| 0 | 82 | Crypt Plague |
| 0 | 82 | Damnation |
| 0 | 82 | Entomb |
| 0 | 82 | Foul Expedition |
| 0 | 82 | Gangrene |
| 0 | 82 | Improved Plaguewither |
| 0 | 82 | Lingering Blight |
| 0 | 82 | Mortification |
| 0 | 82 | Mutation |
| 0 | 82 | Plague Drinker |
| 0 | 82 | Plague's Reach |
| 0 | 82 | Plaguestorm |
| 0 | 82 | Rancid Air |
| 0 | 82 | Rotslinger |
| 0 | 82 | Sower of Sickness |
| 0 | 82 | Virulency (lv9) |
| 0 | 82 | Wormfood |
| 0 | 83 | Bitter Cold |
| 0 | 83 | Crown's Call |
| 0 | 83 | Frigid Tether |
| 0 | 83 | Frozen Wrath |
| 0 | 83 | Heartchill |
| 0 | 83 | Improved Razorice |
| 0 | 83 | Lichfrost |
| 0 | 83 | Refridgerate |
| 0 | 83 | Runic Reservoir |
| 0 | 84 | Animate: Bone Wraith |
| 0 | 84 | Animate: Crypt Fiend |
| 0 | 84 | Animate: Plaguefather |
| 0 | 84 | Animate: Skeletal Archer |
| 0 | 84 | Animate: Tomb King |
| 0 | 84 | Animate: Zombies |
| 0 | 84 | Bone Plating |
| 0 | 84 | Bone Tithe |
| 0 | 84 | Command: Gargoyle |
| 0 | 84 | Command: Ghouls |
| 0 | 84 | Command: Hook |
| 0 | 84 | Corpse Handling |
| 0 | 84 | Fetid Pawns |
| 0 | 84 | Flesh Laboratory |
| 0 | 84 | Foul Invocation |
| 0 | 84 | Guts |
| 0 | 84 | NYI |
| 0 | 84 | Phylactery |
| 0 | 84 | Plague Protection |
| 0 | 84 | Putricide's Formula |
| 0 | 84 | Raise: Abomination |
| 0 | 84 | Ritual Casting |
| 0 | 84 | Rotten |
| 0 | 84 | Skeletal Warrior Mastery |
| 0 | 84 | Summoning Mastery |
| 0 | 84 | Summoning Ritual |
| 0 | 84 | Summoning Stone |
| 0 | 84 | Transfer Life |
| 0 | 84 | Unholy Frenzy |
| 0 | 84 | Unrelenting Army |
| 0 | 84 | Wormskin |
| 0 | 107 | Test Zombie |
| 0 | 475 | Command: Blight |
| 0 | 475 | Necromancy |
| 0 | 475 | Undead: Assault |
| 1 | 83 | Command: Skeletal Mage |
| 1 | 83 | Rime Necromancer |
| 1 | 475 | Command: Skeletal Warriors |
| 1 | 494 | Grave March |
| 4 | 57 | Offering of the Damned |
| 4 | 84 | Crypt Swarm |
| 4 | 106 | Graveyard |
| 4 | 475 | Sacrifice Undead |
| 8 | 475 | Razorice |
| 8 | 475 | Undead: Pacify |
| 8 | 475 | Undead: Protect |
| 10 | 82,475 | Ray of Rot |
| 10 | 83 | Glacial Tap |
| 10 | 83 | Icequake |
| 10 | 84 | Ghoulify |
| 11 | 83 | Ice Barrage |
| 12 | 475 | Foul Mandate |
| 14 | 82 | Blight |
| 15 | 83 | Bonefreeze |
| 17 | 82 | Lich Bolt |
| 17 | 82 | Noxious Corpserot |
| 17 | 83 | Glacial Impact |
| 18 | 84 | Call of The Scourge |
| 20 | 475 | Flesh to Worms |
| 22 | 48 | Ice Hide |
| 24 | 82 | Harvest Plague |
| 24 | 82 | Plague of Undeath |
| 25 | 83 | Frigid Ward |
| 26 | 475 | Animate: Skeletal Smith |
| 27 | 82 | Plaguebomb |
| 27 | 83 | Black Ice |
| 29 | 83 | Raise: Skeletal Mage |
| 30 | 83 | Frigidness |
| 40 | 83 | Lich Form |
| 50 | 83 | Permafrost |
| 58 | 83 | Animate: Frost Wyrm |
| 59 | 84 | Raise: Gargoyle |
| 59 | 84 | Raise: Ghoul |
| 60 | 84 | Plague Horde |
| 60 | 84 | Raise: Decaying Colossus |

## Pyromancer

*Incineration: dégâts de feu directs et DoT. Flameweaving (healer): soins par magie du feu. Draconic: charges de souffle draconique.*

| Niv. | Compétence | Sort |
|---|---|---|
| 0 | — | Demolisher |
| 0 | — | Quickburn |
| 0 | 85 | Burning Embers |
| 0 | 85 | Cataclysmic Power |
| 0 | 85 | Dancing Flames |
| 0 | 85 | Explode |
| 0 | 85 | Flames of the Firelord |
| 0 | 85 | Forceblast |
| 0 | 85 | Gaze of Ysera Dispel Trigger |
| 0 | 85 | Gaze of Ysera Trigger After Dispel |
| 0 | 85 | Raze |
| 0 | 85 | Slag Barrage |
| 0 | 85 | Third Degree Burns |
| 0 | 85 | Volcanic Flames |
| 0 | 85 | Wildfire |
| 0 | 85 | Wreath of Flames |
| 0 | 86 | Burn Impurities |
| 0 | 86 | Burning Bandages |
| 0 | 86 | Burning Spheres |
| 0 | 86 | Burning Spirit |
| 0 | 86 | Cataclysmic Revenge |
| 0 | 86 | Circle of Fire |
| 0 | 86 | Essence of Malygos |
| 0 | 86 | Eternal Flame |
| 0 | 86 | Explosive |
| 0 | 86 | Fired Up! |
| 0 | 86 | Firepower |
| 0 | 86 | Fissure Stream |
| 0 | 86 | Flames of Focus |
| 0 | 86 | From The Ashes |
| 0 | 86 | Gaze of Ysera |
| 0 | 86 | Kael's Command |
| 0 | 86 | Living Flame |
| 0 | 86 | Melt Bindings |
| 0 | 86 | Molten Rapacity |
| 0 | 86 | Neltharion's Resolve |
| 0 | 86 | Phoenix Egg DEPRECTAED |
| 0 | 86 | Phoenix Handler |
| 0 | 86 | Pulverizespout |
| 0 | 86 | Realm of Fire |
| 0 | 86 | Roaring Pyre |
| 0 | 86 | Scorched |
| 0 | 86 | Scorching Sermon |
| 0 | 86 | Scorching Spirit |
| 0 | 86 | Spirit of Fire |
| 0 | 86 | Sunstrider Array |
| 0 | 86 | Tender Touch |
| 0 | 86 | Touched by Fire |
| 0 | 86 | Unquenchable |
| 0 | 87 | Aspect's Blessing |
| 0 | 87 | Blackflight Resurgence |
| 0 | 87 | Burning Brand |
| 0 | 87 | Critical Pressure |
| 0 | 87 | Death From Above |
| 0 | 87 | Draconic Aspect |
| 0 | 87 | Draconic Heritage |
| 0 | 87 | Draconic Invocation |
| 0 | 87 | Dragon's Blood |
| 0 | 87 | Dragon's Wrath |
| 0 | 87 | Dragonfire |
| 0 | 87 | Grill Mark |
| 0 | 87 | Improved Dragon Breaths |
| 0 | 87 | Improved Petrifying Visage |
| 0 | 87 | Inner Flame |
| 0 | 87 | Magma Skin |
| 0 | 87 | Petrifying Visage |
| 0 | 87 | Soar |
| 0 | 87 | Timed Attacks |
| 0 | 91 | Moonsteel Weapons |
| 0 | 476 | Cataclysm |
| 0 | 476 | Flame Seeker |
| 0 | 11797 | Trailblaze |
| 1 | 86 | Dormant |
| 1 | 476 | Greater Seal of Alysrazor |
| 1 | 476 | Overheat Delayer |
| 1 | 476 | Seal of Alysrazor |
| 1 | 11797 | Binding Flames |
| 2 | 476 | Cinderheart |
| 3 | 11797 | Searing Talon |
| 6 | 86 | Cindergrip |
| 6 | 476 | Conjure Campfire |
| 6 | 476 | Flare Bolt |
| 10 | 85 | Meteor |
| 10 | 86 | Ember Touch |
| 10 | 86 | Phoenix Rebirth |
| 10 | 87 | Dragon Leap |
| 10 | 476 | Lava Shard |
| 11 | 87 | Echo of Nozdormu |
| 12 | 85 | Melt |
| 12 | 87 | Flames of Neltharion |
| 13 | 86 | Phoenix Dive |
| 14 | 85 | Blaze |
| 14 | 85 | Inferno Barrier |
| 17 | 85 | Firefall |
| 17 | 87 | Destroyer's Maw |
| 18 | 85 | Pillar of Flame |
| 18 | 476 | Ignite |
| 19 | 11797 | Kiss of Al'ar |
| 20 | 87 | Flame Step |
| 22 | 86 | Cauterize |
| 24 | 476 | Spellburn |
| 26 | 86 | Volcanic Shell |
| 33 | 85 | Flame Swell |
| 34 | 87 | Grace of Alexstrasza |
| 46 | 86 | Reborn from Ash |
| 57 | 85 | Pyroclasm |

## Cultist

*Influence (healer): boucliers et malédictions soignantes. Corruption: magie occulte de C'thun. Godblade: lame de N'zoth. Dreadnought: tank de Y'shaarj.*

| Niv. | Compétence | Sort |
|---|---|---|
| 0 | — | Beamsplitter |
| 0 | — | Pious Magic |
| 0 | 88 | Abysswalker |
| 0 | 88 | Blessing of Y'Shaarj |
| 0 | 88 | Cosmic Horror |
| 0 | 88 | Cosmic Ooze |
| 0 | 88 | Darkward |
| 0 | 88 | Eldritch Swiftness |
| 0 | 88 | Heresy |
| 0 | 88 | Inner Darkness |
| 0 | 88 | Perpetual Nightmare |
| 0 | 88 | Reality Twist |
| 0 | 88 | Twilight Initiate |
| 0 | 88 | Void Strength |
| 0 | 88 | Voidforged Edge |
| 0 | 88 | Wrathful Slam |
| 0 | 89 | Abyssal Decay |
| 0 | 89 | Corruption - Level 15 Passive |
| 0 | 89 | Dark Revelation |
| 0 | 89 | Enslave |
| 0 | 89 | Gift of C'Thun |
| 0 | 89 | Glimpse of Madness |
| 0 | 89 | Herald of the Old Gods |
| 0 | 89 | Lightbreaker |
| 0 | 89 | Mental Expansion |
| 0 | 89 | Moment of Clarity |
| 0 | 89 | Ritual Codex |
| 0 | 89 | Sudden Doom |
| 0 | 89 | Summon: Faceless Servant |
| 0 | 89 | Terror of the Old Gods |
| 0 | 89 | Vision of Doom |
| 0 | 89 | Wrath of the Black Empire |
| 0 | 89 | Wrath of The Black Empire |
| 0 | 90 | Abyssal Protection |
| 0 | 90 | Herald of The Black Empire |
| 0 | 90 | Lingering Protection |
| 0 | 90 | Power of Yogg-Saron |
| 0 | 90 | Prophet of Doom |
| 0 | 90 | Protection From Light |
| 0 | 90 | Saronite Mind |
| 0 | 90 | Shadow Training |
| 0 | 90 | Twilight Shieldtoss |
| 0 | 497 | Strength of the Sha |
| 0 | 497 | Test of Pride |
| 0 | 497,11791 | Horrifying Presence |
| 0 | 11794 | Facehug |
| 0 | 11794 | Twisted Mending |
| 1 | 88 | Abyssal Command |
| 1 | 89 | Befoul |
| 1 | 90 | Sanity |
| 1 | 477 | Blade of the Empire |
| 1 | 11794 | Entropic Union |
| 2 | 477 | Eldritch Mending |
| 2 | 477 | Horrorbolt |
| 4 | 89 | Tentacle of C'Thun |
| 6 | 88 | Hammer of Twilight |
| 8 | 477 | Gaze of C'Thun |
| 10 | 89 | C'Thun's Blade |
| 10 | 89 | Eldritch Smite of C'thun |
| 10 | 90 | Void Shield |
| 10 | 477 | Ritual of Awakening |
| 11 | 88 | Rift |
| 11 | 90 | Malevolence |
| 12 | 88 | Empire Commander |
| 12 | 89 | Psychic Leech |
| 14 | 88 | Mass Nightmare |
| 14 | 477 | Void Blessing |
| 16 | 90 | Tentacle of Yogg-Saron |
| 17 | 88 | Netherstrike |
| 17 | 89 | Eldritch Eye |
| 17 | 89 | Obliteration Beam |
| 17 | 90 | Forbidden Ritual |
| 18 | 89 | Darkwither |
| 19 | 89 | Shatter Void Rune |
| 20 | 88 | Entropic Slam |
| 20 | 90 | Presence of N'Zoth |
| 22 | 88 | Entropic Strike |
| 24 | 88 | Corruption of the Sha |
| 26 | 90 | Hallucination |
| 26 | 90 | Isolate |
| 26 | 477 | Devour Magic |
| 27 | 90 | Entropic Host |
| 28 | 89 | Entropic Singularity |
| 29 | 88 | Dreadfall |
| 29 | 88 | Empire's Grasp |
| 29 | 90 | Void Embrace |
| 29 | 477 | Crushing Dissonance |
| 30 | 89 | Eternal Grasp |
| 31 | 88 | End Times |
| 31 | 89 | Psychic Suppression |
| 31 | 90 | Dark Veil |
| 31 | 477 | Devour Curse |
| 32 | 477 | Satiate |
| 34 | 88 | Dark Infusion |
| 40 | 477 | Eldritch Ritual |
| 45 | 90 | Instill Despair |
| 50 | 477 | Restore Sanity |
| 53 | 497 | Doomcloak |
| 57 | 90 | Hand of Yogg-Saron |
| 59 | 89 | Ancient Curse |

## Starcaller

*Sentinel: arc enchanté. Warden: mêlée boostée à la mana. Moonpriest (healer): soins par cycles lunaires. Moon Guard: bouclier défensif.*

| Niv. | Compétence | Sort |
|---|---|---|
| 0 | — | Bright Moon |
| 0 | 91 | Aspect Mastery |
| 0 | 91 | Astral Aegis |
| 0 | 91 | Astral Blessing |
| 0 | 91 | Blanket of Stars |
| 0 | 91 | Celestial Armor |
| 0 | 91 | Celestial Glaives |
| 0 | 91 | Celestial Knight |
| 0 | 91 | Celestial Knight (Healing) |
| 0 | 91 | Cosmic Crown |
| 0 | 91 | Cosmic Vengeance |
| 0 | 91 | Endless Sky |
| 0 | 91 | Flow of Mana |
| 0 | 91 | Fury of the Stars |
| 0 | 91 | Guarded by the Moon |
| 0 | 91 | Lunar Blades |
| 0 | 91 | Lunar Combatant |
| 0 | 91 | Magic Mark |
| 0 | 91 | Moonlit Bulwark |
| 0 | 91 | Moonlit Impaler |
| 0 | 91 | Pulsar Explosion |
| 0 | 91 | Rally The Sentinels |
| 0 | 91 | Starbarian |
| 0 | 91 | Starlord's Mandate |
| 0 | 91 | Starslip |
| 0 | 91 | Starsweeper |
| 0 | 91 | Vengeance of Elune |
| 0 | 91 | Virtue |
| 0 | 91 | Wrath of Elune |
| 0 | 92 | Aspect of the Goddess |
| 0 | 92 | Bathe |
| 0 | 92 | Bubble Blower |
| 0 | 92 | Bubble Buddy |
| 0 | 92 | Celestial Form |
| 0 | 92 | Celestial Resonance |
| 0 | 92 | Choking Water |
| 0 | 92 | Effervescence |
| 0 | 92 | Enchanted Water |
| 0 | 92 | Flow of Water |
| 0 | 92 | Improved Torrent |
| 0 | 92 | Liquid Space |
| 0 | 92 | Lunar Blessing |
| 0 | 92 | Lunar Resplendence |
| 0 | 92 | Moonwell Blessing |
| 0 | 92 | Shark Attack |
| 0 | 92 | Siren's Song |
| 0 | 92 | Teachings of Elune |
| 0 | 92 | Torrent |
| 0 | 92 | Vial of Moonwell Water |
| 0 | 92 | Wrath of Vashj |
| 0 | 93 | Alignment |
| 0 | 93 | Arrows In The Night |
| 0 | 93 | Arrows of Starlight |
| 0 | 93 | Astral Flare |
| 0 | 93 | Cosmic Duality |
| 0 | 93 | Cosmic Shift |
| 0 | 93 | Explosive Moonlight |
| 0 | 93 | Huntress of Elune |
| 0 | 93 | Huntress Shot - Mana Cost % |
| 0 | 93 | Infused Aegis |
| 0 | 93 | Lunar Focus |
| 0 | 93 | Lunar Storm |
| 0 | 93 | Moonblessed Aspects |
| 0 | 93 | Starcrash |
| 0 | 93 | Starlight |
| 0 | 93 | True Aim |
| 0 | 478 | Aspect of the Cosmos |
| 0 | 478 | Grace of the Moon |
| 0 | 478 | Halt |
| 1 | 478 | Starsunder |
| 4 | 478 | Aspect of the Stars |
| 4 | 478 | Celestial Strike |
| 8 | 478 | Lunar Lance |
| 8 | 478 | Moonwell Splash |
| 10 | 478 | Celestial Awakening |
| 10 | 478 | Shooting Star |
| 11 | 91 | Starburst |
| 12 | 91 | Celestial Cleave |
| 12 | 91 | Command |
| 12 | 91 | Starsweep |
| 13 | 92 | Prayer of Elune |
| 13 | 502 | Astral Blade |
| 15 | 92 | Deluge |
| 15 | 502 | Sentinel Glaive |
| 16 | — | Astral Armor |
| 16 | 92 | Hand of Elune |
| 16 | 93 | Moonlit Slumber |
| 17 | 92 | Aegis of Neptulon |
| 17 | 92 | Slipstream |
| 17 | 92 | Tide Lash |
| 17 | 93 | Starcall |
| 18 | 91 | Moonblade |
| 18 | 93 | Stellar Drift |
| 20 | 502 | Aspect of the Warden |
| 24 | 93 | Aspect of the Huntress |
| 27 | 92 | Moonwater Blessing |
| 28 | 91 | Starshatter |
| 31 | 92 | Pond |
| 31 | 92 | Silvercurrent |
| 33 | 91 | Astral Reconstitution |
| 39 | 92 | Geyser |
| 40 | 91 | Cosmic Presence |
| 40 | 92 | Tidal Rebirth |
| 50 | 91 | Celestial Impact |
| 58 | 92 | Moonwell |

## Sun Cleric

*Piety: dégâts solaires à distance. Blessings (healer): soins par dévotion. Valkyrie: dual-wield solaire. Seraphim: bouclier solaire.*

| Niv. | Compétence | Sort |
|---|---|---|
| 0 | — | On A Cloudy Day |
| 0 | — | Piety - Level 15 Passive |
| 0 | — | Zealous Executions |
| 0 | 81 | Dazzled |
| 0 | 94 | Blinding Light |
| 0 | 94 | Cleanser of Sins |
| 0 | 94 | Deliverance |
| 0 | 94 | Holy Form |
| 0 | 94 | Solar Incandescence |
| 0 | 94 | Solstice |
| 0 | 96 | Angelic Touch |
| 0 | 96 | Bursting Bulwark |
| 0 | 96 | Divine Vision |
| 0 | 96 | Luminous Light |
| 0 | 96 | Sun Screen |
| 0 | 96 | Valorous Champion |
| 0 | 97 | Bastion of Vengeance |
| 0 | 97 | Battle Priest |
| 0 | 97 | Blade of The Sun |
| 0 | 97 | Bulwark of the Sun |
| 0 | 97 | Celestial Protection |
| 0 | 97 | Controlled Fury |
| 0 | 97 | Faith Militant |
| 0 | 97 | Impartial |
| 0 | 97 | Lord Commander |
| 0 | 97 | Solar Might |
| 0 | 97 | Vindicator |
| 1 | 479 | Illumination |
| 2 | 479 | Dawn |
| 4 | 479 | Devotion of Grace |
| 4 | 479 | Gavel of Light |
| 6 | 479 | Sunflare |
| 8 | 97 | Chosen of the Light |
| 9 | 96 | Sunshine |
| 10 | 96 | Guidance: Touch of Light |
| 10 | 96 | Solar Invocation: Resplendence |
| 10 | 97 | Solar Prayer |
| 10 | 479 | Horusath Blast |
| 10 | 479 | Revivify |
| 11 | 94 | Transgression |
| 11 | 96 | Bless |
| 11 | 97 | Dawnbreak |
| 11 | 97 | Shining Ray |
| 12 | 96 | Solar Embrace |
| 12 | 97 | Angel's Calling |
| 12 | 97 | Gavel of Grace |
| 12 | 97 | Gleaming Vigil |
| 13 | 94 | Flash |
| 13 | 94 | Radiant Flame |
| 14 | 97 | Injunction |
| 14 | 479 | Sanctify |
| 15 | 97 | Seraphic Bulwark |
| 15 | 498 | Sunslam |
| 16 | 96 | Shine |
| 16 | 97 | Chains of Light |
| 16 | 498 | Judgement Day |
| 17 | 94 | Rapture |
| 17 | 96 | Blessing of Absolution |
| 17 | 96 | Daybreak |
| 17 | 96 | Guidance: Intervention |
| 17 | 498 | Justice |
| 18 | 94 | Dawnsear |
| 20 | 96 | Sun Worship |
| 20 | 97 | Seraphim - Level 20 Passive |
| 27 | 96 | Blessing of Purity |
| 28 | 94 | Glare |
| 28 | 479 | Ray of Illumination |
| 28 | 479 | Solar Invocation: Conquest |
| 29 | 94 | Sun Gate |
| 29 | 94 | Sunwell |
| 30 | 96 | Radiant Cascade |
| 30 | 96 | Solar Invocation: Ascension |
| 31 | 96 | Blessing of Retribution |
| 31 | 498 | Valkyr's Calling |
| 33 | 94 | Calm |
| 40 | 94 | An'she's Blessing |
| 40 | 94 | Dawnfall |
| 50 | 97 | Clarity of the Heavens |
| 57 | 96 | Solar Invigoration |
| 58 | 94 | New Day |
| 59 | 96 | Blessing of Triumph |
| 60 | 134 | Firefall |

## Tinker

*Mechanics: assistant mécanique et tourelles. Invention (healer): soins par nanorobots et balises — voir [le mapping vérifié](mapping-tinker-invention.md). Demolition: armes à feu et explosifs.*

| Niv. | Compétence | Sort |
|---|---|---|
| 0 | — | High Tech Shots |
| 0 | 70 | Fists of Heaven |
| 0 | 99 | Air Strike |
| 0 | 99 | Ammo Clip |
| 0 | 99 | Blasting Barrels |
| 0 | 99 | Blasting Charge |
| 0 | 99 | Blasting Powder |
| 0 | 99 | Build: Spider Bomb Factory |
| 0 | 99 | Combat Dash |
| 0 | 99 | Explosive Personality |
| 0 | 99 | Fully Loaded |
| 0 | 99 | Hasta la Vista |
| 0 | 99 | Improved Reload |
| 0 | 99 | Incendiary Rounds |
| 0 | 99 | Master Sapper |
| 0 | 99 | Modular Charges |
| 0 | 99 | Not On MY Turf! |
| 0 | 99 | Precision Scopes |
| 0 | 99 | Quickscope |
| 0 | 99 | Refined Gunpowder |
| 0 | 99 | Rockadier |
| 0 | 99 | Rounds and Rounds |
| 0 | 99 | Smoking Gun |
| 0 | 99 | Take Aim |
| 0 | 99 | The BIG Guns! |
| 0 | 99 | The Big One |
| 0 | 100 | Anti-Magic Grenades |
| 0 | 100 | Basic Intuition |
| 0 | 100 | Battery Swap |
| 0 | 100 | Bomblord |
| 0 | 100 | Build: Battery Recharge Station |
| 0 | 100 | Build: Restorative Beacon |
| 0 | 100 | Build: ZIGGI-6K |
| 0 | 100 | Combat Symbiosis |
| 0 | 100 | Deathball |
| 0 | 100 | Demolition |
| 0 | 100 | Dynamite Stacks |
| 0 | 100 | E.M.P |
| 0 | 100 | Emergency Module |
| 0 | 100 | Flexible Thinking |
| 0 | 100 | Freeze Ray |
| 0 | 100 | Guardian Module |
| 0 | 100 | Hastened Shots |
| 0 | 100 | Improved Explosives |
| 0 | 100 | Invisibility Cloak |
| 0 | 100 | Maxi-Cleanser X-420 |
| 0 | 100 | Nanobot Deconstruction |
| 0 | 100 | Nanomechano |
| 0 | 100 | Overcharge |
| 0 | 100 | Rocket Boots |
| 0 | 100 | Scientific Nature |
| 0 | 100 | Sparked and Ready! |
| 0 | 100 | The Doctor Is In |
| 0 | 102 | Battle Engineer |
| 0 | 102 | Bot: C.U.R.B Stomp |
| 0 | 102 | Bot: Flamespill |
| 0 | 102 | Build: Destructo-Bot |
| 0 | 102 | Build: Power Foundry |
| 0 | 102 | Build: Scrapmaw |
| 0 | 102 | Chassis Augment: Mithril |
| 0 | 102 | Chassis Augment: Titansteel |
| 0 | 102 | Chassis Augment: Truesilver |
| 0 | 102 | Combat Augment: Flame Jets |
| 0 | 102 | Combat Augment: Hydraulic Springs |
| 0 | 102 | Core Augment: Warcore |
| 0 | 102 | Double Tap DEPREC |
| 0 | 102 | Enhanced Remote |
| 0 | 102 | Hyperblast Barrage |
| 0 | 102 | Improved Remote Detonation |
| 0 | 102 | Junklord WIP |
| 0 | 102 | Kinetic Shield |
| 0 | 102 | Mech Augmentation Kit |
| 0 | 102 | Mechsuit: Activate Jets |
| 0 | 102 | Mechsuit: Artillery Rush |
| 0 | 102 | Recycling Bin WIP |
| 0 | 102 | Rocket Pack |
| 0 | 102 | Scrap Factory |
| 0 | 102 | Short Circuit |
| 0 | 102 | Shrapnel Shots (no longer implemented) |
| 0 | 102 | Spare Parts |
| 0 | 102 | Spider Tank: Flak Guns |
| 0 | 102 | Spider Tank: Scurry |
| 0 | 102 | Spidertank: Stomp |
| 0 | 102 | Turret Mechanic |
| 0 | 102 | Upgrade Mechsuit: Spider Tank |
| 0 | 102 | Upgrade Z-15 |
| 0 | 102 | Upgrade! |
| 0 | 102 | Vanguard X-173: Onslaught |
| 0 | 102 | Vanguard X-173: Shield Crush |
| 0 | 102 | Vanguard X-42: Imposing Presence |
| 0 | 102 | WIP Disassemble |
| 0 | 480 | Parachute Pack |
| 0 | 480 | Remote Detonation |
| 0 | 480 | Tinkering Tools |
| 0 | 480 | Warphole Generator |
| 0 | 11790 | Steam Rush |
| 1 | 58 | Deploy Ballista |
| 1 | 100 | Build: Alarm Beacon |
| 1 | 100 | Build: Bounce Pad! |
| 1 | 100 | Build: Replenishment Beacon |
| 1 | 100 | Landstrider Keys |
| 1 | 100 | My Greatest Invention! |
| 1 | 102 | Build: Sentry Turret |
| 1 | 102 | Mechanics Tinker |
| 1 | 102 | Shrapnel Mine |
| 1 | 102 | Upgrade Mechsuit: Vanguard X-42 |
| 1 | 102 | Vanguard X-42: Fuselight Furnace |
| 1 | 480 | Deploy Blast Mine |
| 2 | 480 | Repair Shot |
| 4 | 102 | Spanner Smash |
| 4 | 480 | Power Module |
| 4 | 480 | Sticky Bomb |
| 10 | 99 | Deadeye Charge |
| 10 | 100 | Nanobot Reconstruction |
| 10 | 480 | Defibrillate |
| 11 | 99 | Bomb Toss |
| 11 | 100 | Nanobot Cleanser |
| 11 | 102 | Makeshift Dynamite |
| 11 | 102 | Mechsuit: Sawblade |
| 11 | 11752,11795 | Arclight Smash |
| 13 | 99 | Snipe |
| 13 | 102 | Bot: Hydraulic Strike |
| 14 | 100 | Build: Shield Beacon |
| 14 | 480 | 'Pick Lock' |
| 14 | 481 | Build: Portable Sawmill |
| 14 | 11752 | Mechano-Growl |
| 15 | 99 | Rocket Launcher |
| 16 | 100 | Med Pack |
| 17 | 102 | Mechsuit: Combustion |
| 20 | 11752 | Flamethrower |
| 27 | 100 | Nanobot Swarm |
| 27 | 102 | Supercharge |
| 30 | 100 | Minicopter-Z |
| 30 | 11752 | Drill Smash |
| 40 | 102 | Build: Battle Turret X-13 |
| 60 | 11795 | Autotalon Shred |
| 60 | 102 | Deploy Turret Wall |

## Venomancer

*Fortitude: tank forme scorpide. Stalking: forme araignée furtive. Rotweaver: poisons DoT. Vizier (healer): soins via Shadra.*

| Niv. | Compétence | Sort |
|---|---|---|
| 0 | — | Bugweaving |
| 0 | — | Incineration - Level 15 Passive |
| 0 | 103 | Acceleration |
| 0 | 103 | Acid Bolt |
| 0 | 103 | Arachnified |
| 0 | 103 | Big Mushroom |
| 0 | 103 | Book of Shadra |
| 0 | 103 | Bountiful Gifts |
| 0 | 103 | Escalation |
| 0 | 103 | Genesis |
| 0 | 103 | Improved Venoxis Fang |
| 0 | 103 | Intoxicating Venoms |
| 0 | 103 | Mycelial Replenishment |
| 0 | 103 | Rime |
| 0 | 103 | Rot Lich |
| 0 | 103 | Rotpriest |
| 0 | 103 | Serpent Lord's Ring |
| 0 | 103 | Shadra's Presence |
| 0 | 103 | Skin Shedder |
| 0 | 103 | Spiritual Healing |
| 0 | 103 | Venom Cultist |
| 0 | 103 | Venom Shield |
| 0 | 103 | Weaver Form |
| 0 | 103 | Web Wrap |
| 0 | 104 | Acid Burns |
| 0 | 104 | Acidfang |
| 0 | 104 | Black Widow |
| 0 | 104 | Blight Venom |
| 0 | 104 | Boding Dread |
| 0 | 104 | Celerity |
| 0 | 104 | Down The Water Spout |
| 0 | 104 | Drenched Fangs |
| 0 | 104 | Hive Instinct |
| 0 | 104 | Improved Facemelter |
| 0 | 104 | Lair Guard |
| 0 | 104 | Locust Swarm |
| 0 | 104 | Noxious Empowerment |
| 0 | 104 | Nullifying Venom |
| 0 | 104 | Prowler |
| 0 | 104 | Skitter |
| 0 | 104 | Skitter Smack |
| 0 | 104 | Skittering Rush |
| 0 | 104 | Spellslinger |
| 0 | 104 | Spider Form Jump |
| 0 | 104 | The Old Kingdom |
| 0 | 104 | Venocannon |
| 0 | 104 | Vile Fangs |
| 0 | 105 | Barbed Stinger |
| 0 | 105 | Catalyst |
| 0 | 105 | Charm of Warding |
| 0 | 105 | Chitinous Spikes |
| 0 | 105 | Enduring Exoskeleton |
| 0 | 105 | Fortify Carapace |
| 0 | 105 | Improved Harden |
| 0 | 105 | Improved Sting |
| 0 | 105 | Magic Shell |
| 0 | 105 | Molt |
| 0 | 105 | Pinch |
| 0 | 105 | Protogenesis |
| 0 | 105 | Reformed |
| 0 | 105 | Regenerative Strikes |
| 0 | 105 | Regrow Exoskeleton |
| 0 | 105 | Reinforced Exoskeleton |
| 0 | 105 | Scarabs |
| 0 | 105 | Sea Serpent Form |
| 0 | 105 | Toxflinger |
| 0 | 105 | Toxic Rage |
| 0 | 105 | Vile Fury |
| 0 | 105 | Vile Sting |
| 0 | 105 | Weakening Venom |
| 0 | 116 | Riftgate: Transfer |
| 0 | 484 | Nullifying Toxin |
| 0 | 484 | Remove Venoms |
| 0 | 499 | Adrenal Venom |
| 0 | 499 | Blight Antidote |
| 0 | 499 | Champion of the Spider |
| 0 | 499 | Lifeblood |
| 0 | 499 | Vizier Form |
| 1 | 103 | Cycle of Decay |
| 1 | 104 | Impale |
| 1 | 104 | Remove Grimclaw Delayer |
| 1 | 104 | Spider Form |
| 1 | 105 | Beetle Form |
| 1 | 484 | Mantid Descent |
| 1 | 484 | Myotoxin |
| 1 | 484 | Venom Bolt |
| 1 | 499 | Extraction |
| 1 | 499 | Rejuvenating Venom |
| 2 | 103 | Serpent's Fang |
| 6 | 117 | Riftgate: Prison |
| 8 | 103 | Fungify |
| 8 | 484 | Debilitating Venom |
| 10 | 104 | Venom Fang |
| 10 | 104 | Widowmaker |
| 10 | 105 | Carapace Crash |
| 10 | 105 | Corrosion |
| 10 | 105 | Hivebreak |
| 10 | 484 | Shadra's Prayer |
| 10 | 484 | Spider Pheromones |
| 10 | 499 | Green Salve |
| 11 | 105 | Expulsion |
| 12 | 105 | Claw Strike |
| 12 | 105 | Toxic Sludge |
| 13 | 499 | Alkahest |
| 15 | 491 | Venomwing Form |
| 15 | 499 | Mending Mist |
| 16 | 103 | Antivenom |
| 16 | 103 | Decay |
| 16 | 103 | Spindlebind |
| 17 | 103 | Mycosis |
| 19 | 103 | Unity |
| 20 | 103 | Spore |
| 20 | 103 | Wilt |
| 20 | 104 | Nerubian Sting |
| 22 | 106 | Emerald Veil |
| 24 | 499 | Shadra's Balm |
| 27 | 104 | Rotfang |
| 27 | 105 | Venomtip Poison |
| 29 | 103 | Facemelter |
| 29 | 103 | Fungal Assailant |
| 30 | 105 | Harden |
| 35 | 103 | Venoxis Fang |
| 38 | 104 | Shadra's Lair |
| 40 | 484 | Spawn |
| 60 | 484 | Wasp Form |

## Reaper

*Soul: assassinat furtif double-armes. Harvest: vol de vie deux-mains. Defiance: tank par absorption d'âmes.*

| Niv. | Compétence | Sort |
|---|---|---|
| 0 | — | Cursed Rosary |
| 0 | — | Grim Skin |
| 0 | — | Mortal's End |
| 0 | — | Soultwister |
| 0 | 61 | Ghast |
| 0 | 99 | Torment |
| 0 | 106 | Crimson Quickness |
| 0 | 106 | Cull |
| 0 | 106 | Ghastly Advance |
| 0 | 106 | Harvest - Level 30 Passive |
| 0 | 106 | Harvest Time |
| 0 | 106 | Improved Blood Siphon |
| 0 | 106 | Masochistic Rage |
| 0 | 106 | Sanguine Orb |
| 0 | 106 | Scythe Rush |
| 0 | 106 | Sinister Litany |
| 0 | 106 | Soulless |
| 0 | 107 | Beyond the Veil |
| 0 | 107 | Corporeal Flay |
| 0 | 107 | Dark Pact |
| 0 | 107 | Edgewalker |
| 0 | 107 | Endbringer |
| 0 | 107 | Ghastly Power |
| 0 | 107 | Ghostly Magic |
| 0 | 107 | Limbo |
| 0 | 107 | Soul Eater |
| 0 | 107 | Soul Inferno |
| 0 | 107 | Soulspear |
| 0 | 107 | Spectre Strength |
| 0 | 107 | Spectre's Call |
| 0 | 107 | Veilwalk |
| 0 | 107 | Wailing Soul |
| 0 | 107 | Wicked Shadows |
| 0 | 108 | Dark Deal |
| 0 | 108 | Ghastly Nature |
| 0 | 108 | Ghost Claw |
| 0 | 108 | Jailer's Bargain |
| 0 | 108 | Mark of Terror |
| 0 | 108 | Maw Knight |
| 0 | 108 | Reaper's Pact |
| 0 | 108 | Shadow's Embrace |
| 0 | 108 | Soul Slip |
| 0 | 108 | Soulshroud |
| 0 | 108 | Spectral Waltz |
| 0 | 108 | Writhe |
| 1 | 106 | Ghost Buster |
| 1 | 106 | Harvesting Grounds |
| 1 | 108 | Dark Conquest |
| 1 | 483 | Murder |
| 4 | 483 | Rite of Resolve |
| 6 | 483 | Reap |
| 6 | 483 | Spectral Hand |
| 8 | 107 | Soul Shock |
| 10 | 107 | Wraithblade |
| 10 | 483 | Whisper of the Lost |
| 11 | 106 | Doomrend |
| 11 | 107 | Deathchaser |
| 11 | 108 | Dreadwake |
| 11 | 108 | Hungering Scythe |
| 13 | 106 | Red Wake |
| 14 | 107 | Bane |
| 15 | 106 | Crow's Harvest |
| 15 | 107 | Dirge |
| 16 | 108 | Deathwind |
| 17 | 107 | Ghostly Weapon |
| 20 | 106 | Soulslam |
| 20 | 108 | Requiem |
| 24 | 82 | Siphon Essence |
| 25 | — | Gravesite Hidden Visual 2 |
| 28 | 106 | Crimson Harvest |
| 28 | 108 | Ghastly Screech |
| 31 | 108 | Spectral Warden |
| 35 | 107 | Soul Bane |
| 58 | 107 | Shrieker |

## Primalist

*Life (healer): soins et dégâts au corps-à-corps. Wildwalker: forme animale. Mountain King: tank de zone. Geomancy: magie de terre à distance.*

| Niv. | Compétence | Sort |
|---|---|---|
| 0 | — | Primal Focus |
| 0 | — | Rumbler |
| 0 | — | Stone Cold |
| 0 | — | Tide's Favor |
| 0 | 88 | Veiled Knight |
| 0 | 110 | Bestial Reflexes |
| 0 | 110 | Bestial Strikes |
| 0 | 110 | Empowered Boons |
| 0 | 110 | Nature's Call |
| 0 | 110 | Power of Ursol |
| 0 | 110 | Predator's Hunt |
| 0 | 110 | Pridelord |
| 0 | 110 | Primal Weapon: Bestial Might |
| 0 | 110 | Protective Roar |
| 0 | 110 | Pulverize |
| 0 | 110 | Raptor Talons |
| 0 | 112 | Body of Magma |
| 0 | 112 | Cave Dweller |
| 0 | 112 | Lavabender |
| 0 | 112 | Lavamancy |
| 0 | 112 | Lithic Lance |
| 0 | 112 | Magma Shell |
| 0 | 112 | Primal Weapon: Stone |
| 0 | 112 | Stoneguard |
| 0 | 112 | Stoneskin |
| 0 | 112 | Tectonic Shield |
| 0 | 112 | Unyielding Form |
| 0 | 114 | Bountiful Boons |
| 0 | 114 | Cascading Restoration |
| 0 | 114 | Hammer of Life |
| 0 | 114 | Improved Boons |
| 0 | 114 | Neptulon's Grace |
| 0 | 114 | Primal Defusion |
| 0 | 114 | Ring of Life |
| 0 | 114 | Waters of Neptulon |
| 0 | 114 | Wildmend |
| 0 | 482 | Dreamway: Bough Shadow |
| 0 | 482 | Dreamway: Dream Bough |
| 0 | 482 | Dreamway: Seradane |
| 0 | 482 | Dreamway: The Twilight Grove |
| 0 | 482 | Fae Dust |
| 0 | 482 | Geode Barrage |
| 0 | 496 | Stone Edge |
| 0 | 499 | Ritual Cleansing |
| 1 | 110 | Fist of Al'Akir |
| 1 | 110 | Primal Weapon: Primal Might |
| 1 | 11806 | Ursoc's Maw |
| 2 | 112 | Seismic Crash |
| 4 | 110 | Boon of the Turtle |
| 4 | 482 | Boon of the Bear |
| 6 | 482 | Boon of the Hawk |
| 6 | 482 | Hand of the Earthmother |
| 8 | 482 | Primal Instinct |
| 10 | 114 | Stone Grip |
| 10 | 482 | Primal Rush |
| 10 | 482 | Therazane's Rage |
| 10 | 496 | Gaze of Theradras |
| 11 | 110 | Fury of the Wild |
| 11 | 110 | Rylak's Bite |
| 11 | 496 | Quake |
| 12 | 112 | Seismic Spike |
| 12 | 114 | Return to Life |
| 13 | 11806 | Primal Strike |
| 13 | 114 | Seismic Wave |
| 13 | 114 | Spirit Charge |
| 14 | 110 | Wildaxe |
| 15 | 110 | Totemic Smash |
| 16 | 110 | Primal Convergence |
| 16 | 112 | Boulder Dash |
| 16 | 112 | Earthquake |
| 16 | 114 | Bramblepatch |
| 16 | 496 | Rock Barrier |
| 20 | 110 | Primal Shred |
| 20 | 110 | Ursoc's Bellow |
| 21 | 114 | Sacred Grove |
| 24 | 112 | Unstable Fracture |
| 27 | 110 | Bring Me Their Bones |
| 27 | 110 | Golem Form |
| 27 | 114 | Primal Pulse |
| 28 | 112 | Magma Fissure |
| 29 | 110 | Savage Frenzy |
| 30 | 110 | Bearskin |
| 30 | 114 | Dreamslip |
| 31 | 112 | Earth's Embrace |
| 31 | 114 | Earthmother's Binding |
| 40 | 114 | Flourishing Growth |
| 56 | 114 | Grove Guardian |
| 57 | 110 | Frenzied Roar |
| 57 | 496 | Mountain Fury |
| 58 | 110 | Primal Totem |
| 58 | 112 | Wildheart |
| 59 | 112 | Eruption |
| 59 | 114 | Ancient of Lore |

## Runemaster

*Conjuration: familier runique AoE. Spellslinger: glyphes transférables. Riftblade: sigiles élémentaires furtifs.*

| Niv. | Compétence | Sort |
|---|---|---|
| 0 | — | Arcane Wrath |
| 0 | — | Spellbrand |
| 0 | 58 | Alertness |
| 0 | 58 | Bounty Hunter |
| 0 | 58 | Contract Killing |
| 0 | 58 | Hired Crossbow |
| 0 | 59 | Student of Darkness |
| 0 | 62 | Power of Air |
| 0 | 67 | Versus Frozen |
| 0 | 116 | Alteration |
| 0 | 116 | Ancient Teachings |
| 0 | 116 | Arcane Imprisonment |
| 0 | 116 | Chaos Engraving |
| 0 | 116 | Devour Mana |
| 0 | 116 | For the Salvos! |
| 0 | 116 | Glyph of Disappearance |
| 0 | 116 | Glyphic Overload |
| 0 | 116 | Improved Fastcast |
| 0 | 116 | Improved Primordial Blast |
| 0 | 116 | Portal Hopper |
| 0 | 116 | Primordial Glyphs |
| 0 | 116 | Primordial Power |
| 0 | 116 | Quickslinger |
| 0 | 116 | Runesleeve |
| 0 | 116 | Stack The Deck |
| 0 | 116 | Well Educated |
| 0 | 117 | Ancient Carvings |
| 0 | 117 | Casting Cuffs |
| 0 | 117 | Elemental Carvings |
| 0 | 117 | Engravement - Level 40 Passive |
| 0 | 117 | Improved Atomic Split |
| 0 | 117 | Ley Focus |
| 0 | 117 | Leyline Rider |
| 0 | 117 | Runic Obliteration |
| 0 | 117 | Runic Quickness |
| 0 | 117 | Runic Wrath |
| 0 | 117 | Salvage Fragments |
| 0 | 117 | Symbols of Power |
| 0 | 117 | Tome of Swiftness |
| 0 | 117 | Trap Runes |
| 0 | 117 | Word of Flames |
| 0 | 117 | Word of Oblivion |
| 0 | 117 | Words of Power |
| 0 | 119 | Augur's Shield |
| 0 | 119 | Elemental Assassin |
| 0 | 119 | Frozen Inferno |
| 0 | 119 | Glyphic Invocation |
| 0 | 119 | Ley Spectre |
| 0 | 119 | Prismatic Blade |
| 0 | 119 | Prismatic Knight |
| 0 | 119 | Shrouded Hand |
| 0 | 119 | Spellblades |
| 0 | 119 | Surging Slash |
| 0 | 119 | Windsage |
| 0 | 481 | Runefeed |
| 0 | 481 | Wizardry |
| 1 | 117 | Runic Devastation |
| 1 | 117 | Runic Devastation unused |
| 1 | 117 | Traprune: Blasting Glyph |
| 1 | 117 | Traprune: Stunning Glyph |
| 1 | 117 | Traprune: Unmaking Glyph |
| 1 | 119 | Aspect of The Rune Knight |
| 1 | 119 | Collecting Fragments |
| 2 | 481 | Primordial Blast |
| 4 | 119 | Runeshroud |
| 7 | 119 | Unleash Essences |
| 8 | 119 | Palm Sigil: Earth |
| 9 | 119 | Everfrost Scroll |
| 9 | 119 | Inscription: Permafrost |
| 10 | 116 | Glyphic Ruin |
| 10 | 117 | Displace Familiar |
| 10 | 119 | Elder Magi Rune |
| 10 | 119 | Warpdagger |
| 11 | 119 | Arcane Blade |
| 11 | 119 | Fire Blade |
| 11 | 119 | Frost Blade |
| 11 | 119 | Smolder |
| 13 | 119 | Unbound Energy |
| 14 | 119 | Phase Out |
| 14 | 481 | Elemental Burst |
| 14 | 481 | Ley Lock |
| 15 | 117 | Focusing Crystals |
| 16 | 481 | Granite Resolve |
| 17 | 116 | Concentrated Magic |
| 17 | 116 | Frigid Blast |
| 17 | 117 | Warp Shift |
| 17 | 119 | Spellblade |
| 20 | 119 | Palm Sigil: Arcane |
| 22 | 481 | Leyfeed |
| 22 | 481 | Scrying Orb |
| 27 | 119 | Frost Spectre |
| 27 | 116 | Runed Cascade |
| 28 | 119 | Permafrost Rune |
| 28 | 116 | Speedy Attuner |
| 29 | 117 | Echo Rune |
| 29 | 116 | Thaumaturgy |
| 31 | 83 | Runes of Quickness |
| 32 | 481 | Homebound Runestone |
| 34 | 119 | Palm Sigil: Frost |
| 34 | 116 | Warding Rune |
| 40 | 481 | Etching of the Magi |
| 57 | 116 | Eye of the Beholder |
| 57 | 117 | Fists of Power |
| 57 | 119 | Fracture |
| 57 | 116 | Rune Master |
| 58 | 117 | Power Engraving |
| 59 | 119 | Ley Power |
| 59 | 119 | Turbulence |
| 60 | 116 | Open Riftgate |

---

*Source : `db.ascension.gg`, extraction du 14/08/2026. Les classes de base (Warrior, Paladin, Hunter, Rogue, Priest, Death Knight, Shaman, Mage, Warlock, Druid) ne sont pas couvertes ici — ce sont des classes WoW standard, largement documentées ailleurs.*
