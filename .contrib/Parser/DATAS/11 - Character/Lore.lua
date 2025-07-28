-------------------------------------------
--    C H A R A C T E R   M O D U L E    --
-------------------------------------------
root(ROOTS.Character, n(LORE, bubbleDownSelf({ ["timeline"] = { ADDED_9_2_5 } }, {
	race(BLOODELF, bubbleDown({ ["timeline"] = { ADDED_9_2_5 }, ["races"] = { BLOODELF } }, {
		["description"] = "To unlock this questline you need to be logged in on a |cFFa335eelevel 60 Blood Elf|r.",
		["groups"] = bubbleDown({
			["minReputation"] = { FACTION_SILVERMOON_CITY, EXALTED }
		}, {
			q(65652, {	-- Summons from the Matriarch (non-Paladin)
				["provider"] = { "n", 176789 },	-- Lady Liadrin
				-- ["sourceQuests"] = { },
				["coord"] = { 25.4, 52.1, ORIBOS },
				["classes"] = exclude({ PALADIN, SHAMAN, DRUID, EVOKER }, ALL_CLASSES),
			}),
			q(63479, {	-- Summons from the Matriarch (Paladin)
				["provider"] = { "n", 176789 },	-- Lady Liadrin
				-- ["sourceQuests"] = { },
				["coord"] = { 25.4, 52.1, ORIBOS },
				["classes"] = { PALADIN },
			}),
			q(63480, {	-- Briefing
				["provider"] = { "n", 176796 },	-- Lady Liadrin
				["sourceQuests"] = { 65652, 63479 },	-- Summons from the Matriarch
				["coord"] = { 90.0, 37.5, SILVERMOON_CITY },
			}),
			q(63481, {	-- Tranquillien Besieged
				["provider"] = { "n", 176796 },	-- Lady Liadrin
				["sourceQuests"] = { 63480 },	-- Briefing
				["coord"] = { 90.0, 37.5, SILVERMOON_CITY },
			}),
			q(63482, {	-- Death to the Scourge
				["provider"] = { "n", 176826 },	-- Lady Liadrin
				["sourceQuests"] = { 63481 },	-- Tranquillien Besieged
				["coord"] = { 48.5, 32.1, GHOSTLANDS },
			}),
			q(63483, {	-- Magnus Installation
				["provider"] = { "n", 176829 },	-- Archmage Aethas Sunreaver
				["sourceQuests"] = { 63481 },	-- Tranquillien Besieged
				["coord"] = { 48.6, 32.1, GHOSTLANDS },
			}),
			q(63484, {	-- A Knight's Weapon
				["provider"] = { "n", 176826 },	-- Lady Liadrin
				["sourceQuests"] = {
					63482,	-- Death to the Scourge
					63483,	-- Magnus Installation
				},
				["coord"] = { 48.5, 32.1, GHOSTLANDS },
				["groups"] = {
					i(184895),	-- Forged Ranseur (QI!)
				},
			}),
			q(63485, {	-- An Honest Heart
				["provider"] = { "n", 176826 },	-- Lady Liadrin
				["sourceQuests"] = { 63484 },	-- A Knight's Weapon
				["coord"] = { 48.5, 32.1, GHOSTLANDS },
			}),
			q(63486, {	-- An Unbreakable Will
				["provider"] = { "n", 176826 },	-- Lady Liadrin
				["sourceQuests"] = { 63484 },	-- A Knight's Weapon
				["coord"] = { 48.5, 32.1, GHOSTLANDS },
			}),
			q(63522, {	-- A Fair Race
				["provider"] = { "n", 176932 },	-- Vandellor
				["sourceQuests"] = { 63485 },	-- An Honest Heart
				["coord"] = { 45.0, 68.9, BASTION },
			}),
			q(63519, {	-- Unfair Fight
				["provider"] = { "n", 176915 },	-- Fightlord San
				["sourceQuests"] = { 63486 },	-- An Unbreakable Will
				["coord"] = { 46.7, 45.8, MALDRAXXUS },
			}),
			q(63487, {	-- Return to the Ghostlands
				["provider"] = { "n", 176914 },	-- Salandria
				["sourceQuests"] = {
					63522,	-- A Fair Race
					63519,	-- Unfair Fight
				},
				["coords"] = {
					{ 45.0, 68.9, BASTION },
					{ 46.7, 45.8, MALDRAXXUS },
				},
			}),
			q(63488, {	-- I Am the Blade of the Light
				["provider"] = { "n", 176826 },	-- Lady Liadrin
				["sourceQuests"] = { 63487 },	-- Return to the Ghostlands
				["coord"] = { 48.5, 32.1, GHOSTLANDS },
			}),
			q(63489, {	-- Justice Long Overdue
				["provider"] = { "n", 176882 },	-- Lady Liadrin
				["sourceQuests"] = { 63488 },	-- I Am the Blade of the Light
				["coord"] = { 35.6, 73.0, GHOSTLANDS },
				["groups"] = {
					i(191604),	-- Veil-Touched Ranseur (Maybe only Paladin?)
				},
			}),
			q(65653, {	-- Victory for the Sin'dorei
				["provider"] = { "n", 176882 },	-- Lady Liadrin
				["sourceQuests"] = { 63489 },	-- Justice Long Overdue
				["coord"] = { 34.2, 77.4, GHOSTLANDS },
				["classes"] = exclude({PALADIN}, BLOOD_ELF_CLASSES),
				["groups"] = {
					i(191566),	-- Elusive Emerald Hawkstrider (MOUNT!)
				},
			}),
			q(63490, {	-- Blood Knight
				["provider"] = { "n", 176882 },	-- Lady Liadrin
				["sourceQuests"] = { 63489 },	-- Justice Long Overdue
				["coord"] = { 34.0, 77.4, SILVERMOON_CITY },
				["classes"] = { PALADIN },
				["groups"] = {
					i(191566),	-- Elusive Emerald Hawkstrider (MOUNT!)
					iensemble(191565),	-- Ensemble: Blood Knight's Dedication
				},
			}),
			n(189038, {	-- Fallen Knight's Ranseur
				["sourceQuests"] = { 63490 },	-- Blood Knight
				["coord"] = { 34.8, 81.9, GHOSTLANDS },
				["questID"] = 66480,
				["classes"] = { PALADIN },
				["groups"] = {
					i(191957),	-- Fallen Knight's Ranseur
				},
			}),
		}),
	})),
	race(DARKIRON, bubbleDown({ ["timeline"] = { ADDED_9_2_5 }, ["races"] = { DARKIRON } }, {
		["description"] = "To unlock this questline you need to be logged in on a |cFFa335eelevel 50 Dark Iron Dwarf|r and completed |cFFFFD700 Heritage o' the Dark Iron|r, The Dark Iron Dwarf Heritage Quest.",
		["groups"] = {
			q(63494, {	-- The Anvil-Thane's Designs
				["provider"] = { "n", 144154 },	-- Anvil-Thane Thurgaden
				["sourceQuests"] = { 51483 },	-- Heritage o' the Dark Iron
				["coord"] = { 57.2, 31.9, 1186 },
			}),
			q(63498, {	-- Brawl or Brew
				["provider"] = { "n", 176828 },	-- Strongarm Jarden
				["sourceQuests"] = { 63494 },	-- The Anvil-Thane's Designs
				["coord"] = { 51.7, 33.1, 1186 },
				["groups"] = {
					i(184894),	-- Thurgaden's Designs
				},
			}),
			q(63501, {	-- It's Called Borrowing
				["provider"] = { "i", 184894 },	-- Thurgaden's Designs
				["sourceQuests"] = { 63498 },	-- Brawl or Brew
				["groups"] = {
					i(184916),	-- Boiling Flamecore (QI!)
					i(184915),	-- Darkforged Ingot (QI!)
					i(184917),	-- Flamepoint Engraver (QI!)
				},
			}),
			q(63502, {	-- Weapons o' the Dark Iron
				["provider"] = { "n", 144154 },	-- Anvil-Thane Thurgaden
				["sourceQuests"] = { 63501 },	-- It's Called Borrowing
				["coord"] = { 57.2, 31.9, 1186 },
				["groups"] = {
					iensemble(184922),	-- Arsenal: Lavaforge Armaments
				},
			}),
			q(65563, {	-- Delivery for Kasea
				["provider"] = { "n", 144154 },	-- Anvil-Thane Thurgaden
				["sourceQuests"] = { 63502 },	-- Weapons o' the Dark Iron
				["coord"] = { 57.2, 31.9, 1186 },
			}),
			q(65564, {	-- Good Fiery Boy
				["provider"] = { "n", 144119 },	-- Kasea Angerforge
				["sourceQuests"] = { 65563 },	-- Delivery for Kasea
				["coord"] = { 47.7, 47.0, 1186 },
				["groups"] = {
					i(190606),	-- Charred Steak (QI!)
					i(191123),	-- Grimhowl (MOUNT!)
				},
			}),
		},
	})),
})));