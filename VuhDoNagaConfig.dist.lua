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
		[""] = {
			[1]  = "Repair Shot",                     -- soin direct          lv2
			[2]  = "Nanobot Reconstruction",          -- HoT                  lv10
			[3]  = "Nanobot Cleanser",                -- dissipe              lv11
			[4]  = "Med Pack",                        -- urgence              lv16
			[5]  = "Emergency Heal",                  -- soin                 talent
			[6]  = "Maxi-Cleanser X-420",             -- dissipe ameliore     talent
			[7]  = "Kinetic Shield",                  -- bouclier + anti-stun talent
			[8]  = "Guardian Module",                 -- defensif             talent
			[9]  = "Stim Augmentation",               -- hors classe
			[10] = "My Greatest Invention!",          -- CD AoE               lv1
			[11] = "",
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

		-- ALT : libre pour l'essentiel, garde douze touches offensives
		-- disponibles meme au-dessus des barres de vie. Sert aussi de
		-- repli pour deux sorts remplaces ci-dessus par des alternatives
		-- verifiees en jeu (voir docs/mapping-tinker-invention.md).
		["alt-"] = {
			[1]  = "", [2]  = "", [3]  = "", [4]  = "",
			[5]  = "Defibrillate",                    -- reanimation          lv10
			[6]  = "", [7]  = "Emergency Module",     -- defensif, non confirme lancable
			[8]  = "",
			[9]  = "", [10] = "", [11] = "", [12] = "",
		},
	},
};
