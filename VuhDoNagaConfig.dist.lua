--------------------------------------------------------------------
--  VuhDo Naga Keys - CONFIGURATION PAR DEFAUT
--------------------------------------------------------------------
--  NE MODIFIE PAS CE FICHIER.
--
--  Il est versionne : tes changements seraient ecrases a la prochaine
--  mise a jour du depot. Pour ta configuration personnelle, copie-le
--  en  VuhDoNagaConfig.lua  (meme dossier) et edite cette copie.
--  Elle n'est pas versionnee et surcharge celle-ci.
--
--  Meme principe qu'un .env.dist et un .env.local en web.
--------------------------------------------------------------------
--
--  REGLES
--
--  * Les noms de sorts sont en ANGLAIS, ponctuation comprise
--    ("My Greatest Invention!", "Build: Alarm Beacon"). Le client
--    tourne en enUS ; un addon de traduction ne reecrit que
--    l'affichage, pas ce que comprennent GetSpellInfo() et /cast.
--
--  * "" desactive un slot : la touche garde son binding habituel,
--    meme pendant le survol d'une frame.
--
--  * Un sort non appris laisse aussi la touche libre. Tu peux donc
--    pre-remplir tes sorts futurs : ils s'activeront tout seuls.
--    Un /reload est necessaire apres avoir appris un sort.
--
--  * Trois familles de sorts fonctionnent ici :
--      - cibles sur un allie   (soins, dissipations)   OK
--      - zones au sol / sur soi                        OK
--      - cibles sur un ennemi                          NON
--    VuhDo construit ses macros avec un conditionnel "help" visant
--    l'allie survole. Un sort offensif repond qu'il n'a pas de cible
--    valide, et la touche est perdue pendant le survol.
--
--  * Plusieurs personnages, classes differentes sur le meme compte ?
--    Le fichier LOCAL peut definir CLASS_SPELLS pour surcharger SPELLS
--    par personnage plutot que pour tout le compte. Voir le README.
--
--  * Mana Module (touche 10) et Power Module (touche 11) : ajoutes le
--    14/08/2026, PAS dans l'extraction des 137 sorts actifs de Tinker
--    (db.ascension.gg) donc probablement des gadgets d'ingenierie
--    fabriques plutot que des talents de classe. Leur comportement de
--    ciblage (allie, vs soi-meme, vs zone) n'a pas ete confirme en jeu.
--    Si l'un des deux reste muet au survol d'une frame, remets "".
--
--------------------------------------------------------------------

VUHDO_NAGA_CONFIG_DEFAUT = {

	-- Noms des 12 touches, tels que WoW les rapporte.
	-- Ceux-ci sont releves sur un clavier AZERTY : WoW normalise les dix
	-- premieres en chiffres malgre l'agencement, mais pas la onzieme.
	-- Pour relever les tiens, colle ceci en jeu, presse tes touches,
	-- puis Echap :
	--   /run local f=CreateFrame("Frame",nil,UIParent) f:EnableKeyboard(true) f:SetScript("OnKeyDown",function(s,k) print("TOUCHE: "..k) if k=="ESCAPE" then s:EnableKeyboard(false) end end)
	KEYS = { "1", "2", "3", "4", "5", "6", "7", "8", "9", "0", ")", "=" },

	-- Un jeu de 12 sorts par combinaison de modificateur.
	-- Configuration livree : Tinker / Invention (soigneur).
	SPELLS = {

		-- Sans modificateur : soins et support cibles sur un allie.
		--
		-- AVERTISSEMENT sur cette disposition precise : c'est le mapping
		-- de travail reellement utilise en jeu, avec ses choix personnels
		-- inclus tels quels plutot qu'un depart neutre pour un nouveau
		-- personnage. Deux consequences a connaitre avant de cloner ca :
		--   - Nanobot Cleanser occupe DEUX touches (3 et 7), volontairement.
		--     Si tu ne veux pas de ce doublon, remplace l'un des deux.
		--   - Les touches 5 et 12 sont vides : rien ne les remplit par
		--     defaut, libres a toi de les completer.
		--   - Emergency Heal (touche 1) et Kinetic Shield (touche 8)
		--     sont des talents sans niveau garanti ; contrairement a
		--     Repair Shot (lv2), rien ne garantit de les avoir tot.
		[""] = {
			[1]  = "Emergency Heal",                  -- soin                 talent
			[2]  = "Repair Shot",                     -- soin direct          lv2
			[3]  = "Nanobot Reconstruction",          -- HoT                  lv10
			[4]  = "Med Pack",                        -- urgence              lv16
			[5]  = "",
			[6]  = "Nanobot Recharger",                -- regen de mana        talent
			[7]  = "Nanobot Cleanser",                 -- dissipe, doublon de la touche 3
			[8]  = "Kinetic Shield",                  -- bouclier + anti-stun talent
			[9]  = "Stim Augmentation",               -- hors classe
			[10] = "Mana Module",                     -- voir avertissement plus bas
			[11] = "Power Module",                    -- voir avertissement plus bas
			[12] = "",
		},

		-- SHIFT : tout ce qui se pose au sol.
		["shift-"] = {
			[1]  = "Build: Restorative Beacon",       -- zone de soin         talent
			[2]  = "Build: Shield Beacon",            -- bouclier de zone     lv14
			[3]  = "Build: Replenishment Beacon",     -- ravitaillement       lv1
			[4]  = "Build: Alarm Beacon",             -- peur/charme/sommeil  lv1
			[5]  = "Build: Battery Recharge Station", -- mana                 talent
			[6]  = "Build: ZIGGI-6K",                 -- deployable           talent
			[7]  = "Build: Bounce Pad!",              -- mobilite             lv1
			[8]  = "Build: Portable Sawmill",         -- utilitaire           lv14
			[9]  = "Overcharge",                      -- survolte les balises talent
			[10] = "Battery Swap",                    -- talent
			[11] = "",
			[12] = "",
		},

		-- CTRL : utilitaire et mobilite, sur soi.
		["ctrl-"] = {
			[1]  = "Invisibility Cloak",              -- talent
			[2]  = "Rocket Boots",                    -- mobilite             talent
			[3]  = "Parachute Pack",                  -- talent
			[4]  = "Warphole Generator",              -- talent
			[5]  = "Tinkering Tools",                 -- talent
			[6]  = "'Pick Lock'",                     -- lv14
			[7]  = "Landstrider Keys",                -- monture              lv1
			[8]  = "Minicopter-Z",                    -- monture              lv30
			[9]  = "", [10] = "", [11] = "", [12] = "",
		},

		-- ALT : libre pour l'essentiel, garde des touches offensives
		-- disponibles meme au-dessus des barres de vie. Sert aussi de
		-- repli pour des sorts remplaces ci-dessus par des alternatives,
		-- pour ne rien perdre (voir docs/mapping-tinker-invention.md).
		["alt-"] = {
			[1]  = "", [2]  = "", [3]  = "", [4]  = "",
			[5]  = "Defibrillate",                    -- reanimation          lv10
			[6]  = "Maxi-Cleanser X-420",             -- dissipe ameliore, ex-touche 6
			[7]  = "Emergency Module",                -- defensif, non confirme lancable
			[8]  = "Guardian Module",                 -- defensif, ex-touche 8
			[9]  = "", [10] = "My Greatest Invention!", -- CD AoE, ex-touche 10
			[11] = "", [12] = "",
		},
	},
};
