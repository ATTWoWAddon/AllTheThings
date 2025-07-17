-------------------------------------------
--    C H A R A C T E R   M O D U L E    --
-------------------------------------------
root(ROOTS.Character, n(LORE, bubbleDownSelf({ ["timeline"] = { ADDED_9_2_5 } }, {
	race(BLOODELF, bubbleDown({ ["timeline"] = { ADDED_9_2_5 }, ["races"] = { BLOODELF } }, {
		["description"] = "To unlock this questline you need to be logged in on a |cFFa335eelevel 60 Blood Elf|r.",
		["g"] = bubbleDown({
			["minReputation"] = { FACTION_SILVERMOON_CITY, EXALTED }
		}, {
			q(65652, {	-- Summons from the Matriarch (non-Paladin)
				-- ["sourceQuests"] = { },
				["provider"] = { "n", 176789 },	-- Lady Liadrin
				["coord"] = { 25.4, 52.1, ORIBOS },
				["classes"] = exclude({ PALADIN, SHAMAN, DRUID, EVOKER }, ALL_CLASSES),
			}),
			q(63479, {	-- Summons from the Matriarch (Paladin)
				-- ["sourceQuests"] = { },
				["provider"] = { "n", 176789 },	-- Lady Liadrin
				["coord"] = { 25.4, 52.1, ORIBOS },
				["classes"] = { PALADIN },
			}),
			q(63480, {	-- Briefing
				["sourceQuests"] = { 65652, 63479 },	-- Summons from the Matriarch
				["provider"] = { "n", 176796 },	-- Lady Liadrin
				["coord"] = { 90.0, 37.5, SILVERMOON_CITY },
			}),
			q(63481, {	-- Tranquillien Besieged
				["sourceQuests"] = { 63480 },	-- Briefing
				["provider"] = { "n", 176796 },	-- Lady Liadrin
				["coord"] = { 90.0, 37.5, SILVERMOON_CITY },
			}),
			q(63482, {	-- Death to the Scourge
				["sourceQuests"] = { 63481 },	-- Tranquillien Besieged
				["provider"] = { "n", 176826 },	-- Lady Liadrin
				["coord"] = { 48.5, 32.1, GHOSTLANDS },
			}),
			q(63483, {	-- Magnus Installation
				["sourceQuests"] = { 63481 },	-- Tranquillien Besieged
				["provider"] = { "n", 176829 },	-- Archmage Aethas Sunreaver
				["coord"] = { 48.6, 32.1, GHOSTLANDS },
			}),
			q(63484, {	-- A Knight's Weapon
				["sourceQuests"] = {
					63482,	-- Death to the Scourge
					63483,	-- Magnus Installation
				},
				["provider"] = { "n", 176826 },	-- Lady Liadrin
				["coord"] = { 48.5, 32.1, GHOSTLANDS },
				["g"] = {
					i(184895),	-- Forged Ranseur (QI!)
				},
			}),
			q(63485, {	-- An Honest Heart
				["sourceQuests"] = { 63484 },	-- A Knight's Weapon
				["provider"] = { "n", 176826 },	-- Lady Liadrin
				["coord"] = { 48.5, 32.1, GHOSTLANDS },
			}),
			q(63486, {	-- An Unbreakable Will
				["sourceQuests"] = { 63484 },	-- A Knight's Weapon
				["provider"] = { "n", 176826 },	-- Lady Liadrin
				["coord"] = { 48.5, 32.1, GHOSTLANDS },
			}),
			q(63522, {	-- A Fair Race
				["sourceQuests"] = { 63485 },	-- An Honest Heart
				["provider"] = { "n", 176932 },	-- Vandellor
				["coord"] = { 45.0, 68.9, BASTION },
			}),
			q(63519, {	-- Unfair Fight
				["sourceQuests"] = { 63486 },	-- An Unbreakable Will
				["provider"] = { "n", 176915 },	-- Fightlord San
				["coord"] = { 46.7, 45.8, MALDRAXXUS },
			}),
			q(63487, {	-- Return to the Ghostlands
				["sourceQuests"] = {
					63522,	-- A Fair Race
					63519,	-- Unfair Fight
				},
				["provider"] = { "n", 176914 },	-- Salandria
				["coords"] = {
					{ 45.0, 68.9, BASTION },
					{ 46.7, 45.8, MALDRAXXUS },
				},
			}),
			q(63488, {	-- I Am the Blade of the Light
				["sourceQuests"] = { 63487 },	-- Return to the Ghostlands
				["provider"] = { "n", 176826 },	-- Lady Liadrin
				["coord"] = { 48.5, 32.1, GHOSTLANDS },
			}),
			q(63489, {	-- Justice Long Overdue
				["sourceQuests"] = { 63488 },	-- I Am the Blade of the Light
				["provider"] = { "n", 176882 },	-- Lady Liadrin
				["coord"] = { 35.6, 73.0, GHOSTLANDS },
				["g"] = {
					i(191604),	-- Veil-Touched Ranseur (Maybe only Paladin?)
				},
			}),
			q(65653, {	-- Victory for the Sin'dorei
				["sourceQuests"] = { 63489 },	-- Justice Long Overdue
				["provider"] = { "n", 176882 },	-- Lady Liadrin
				["coord"] = { 34.2, 77.4, GHOSTLANDS },
				["classes"] = exclude({PALADIN}, BLOOD_ELF_CLASSES),
				["g"] = {
					i(191566),	-- Elusive Emerald Hawkstrider (MOUNT!)
				},
			}),
			q(63490, {	-- Blood Knight
				["sourceQuests"] = { 63489 },	-- Justice Long Overdue
				["provider"] = { "n", 176882 },	-- Lady Liadrin
				["coord"] = { 34.0, 77.4, SILVERMOON_CITY },
				["classes"] = { PALADIN },
				["g"] = {
					i(191566),	-- Elusive Emerald Hawkstrider (MOUNT!)
					iensemble(191565),	-- Ensemble: Blood Knight's Dedication
				},
			}),
			n(189038, {	-- Fallen Knight's Ranseur
				["sourceQuests"] = { 63490 },	-- Blood Knight
				["coord"] = { 34.8, 81.9, GHOSTLANDS },
				["questID"] = 66480,
				["classes"] = { PALADIN },
				["g"] = {
					i(191957),	-- Fallen Knight's Ranseur
				},
			}),
		}),
	})),
	race(DARKIRON, bubbleDown({ ["timeline"] = { ADDED_9_2_5 }, ["races"] = { DARKIRON } }, {
		["description"] = "To unlock this questline you need to be logged in on a |cFFa335eelevel 50 Dark Iron Dwarf|r and completed |cFFFFD700 Heritage o' the Dark Iron|r, The Dark Iron Dwarf Heritage Quest.",
		["g"] = {
			q(63494, {	-- The Anvil-Thane's Designs
				["sourceQuests"] = { 51483 },	-- Heritage o' the Dark Iron
				["provider"] = { "n", 144154 },	-- Anvil-Thane Thurgaden
				["coord"] = { 57.2, 31.9, 1186 },
			}),
			q(63498, {	-- Brawl or Brew
				["sourceQuests"] = { 63494 },	-- The Anvil-Thane's Designs
				["provider"] = { "n", 176828 },	-- Strongarm Jarden
				["coord"] = { 51.7, 33.1, 1186 },
				["g"] = {
					i(184894),	-- Thurgaden's Designs
				},
			}),
			q(63501, {	-- It's Called Borrowing
				["sourceQuests"] = { 63498 },	-- Brawl or Brew
				["provider"] = { "i", 184894 },	-- Thurgaden's Designs
				["g"] = {
					i(184916),	-- Boiling Flamecore (QI!)
					i(184915),	-- Darkforged Ingot (QI!)
					i(184917),	-- Flamepoint Engraver (QI!)
				},
			}),
			q(63502, {	-- Weapons o' the Dark Iron
				["sourceQuests"] = { 63501 },	-- It's Called Borrowing
				["provider"] = { "n", 144154 },	-- Anvil-Thane Thurgaden
				["coord"] = { 57.2, 31.9, 1186 },
				["g"] = {
					iensemble(184922),	-- Arsenal: Lavaforge Armaments
				},
			}),
			q(65563, {	-- Delivery for Kasea
				["sourceQuests"] = { 63502 },	-- Weapons o' the Dark Iron
				["provider"] = { "n", 144154 },	-- Anvil-Thane Thurgaden
				["coord"] = { 57.2, 31.9, 1186 },
			}),
			q(65564, {	-- Good Fiery Boy
				["sourceQuests"] = { 65563 },	-- Delivery for Kasea
				["provider"] = { "n", 144119 },	-- Kasea Angerforge
				["coord"] = { 47.7, 47.0, 1186 },
				["g"] = {
					i(190606),	-- Charred Steak (QI!)
					i(191123),	-- Grimhowl (MOUNT!)
				},
			}),
		},
	})),
})));