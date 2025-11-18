-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
root(ROOTS.Instances, expansion(EXPANSION.BFA, bubbleDown({ ["timeline"] = { ADDED_8_0_1_LAUNCH } }, {
	n(ACHIEVEMENTS, {
		ach(12807, {	-- Battle for Azeroth Dungeon Hero
			["sym"] = {{"meta_achievement",
				12505,	-- Heroic: The Temple of Sethraliss
				12501,	-- Heroic: Underrot
				12484,	-- Heroic: Waycrest Manor
				12832,	-- Heroic: Freehold
				12837,	-- Heroic: Shrine of the Storm
				12825,	-- Heroic: Atal'Dazar
				12841,	-- Heroic: Tol Dagor
				12845,	-- Heroic: The MOTHERLODE!!
			}},
		}),
		ach(12812, {	-- Glory of the Wartorn Hero
			["sym"] = {{"meta_achievement",
				12550,	-- Pecking Order
				12548,	-- I'm in Charge Now!
				12998,	-- That Sweete Booty
				12489,	-- Losing My Profession
				12495,	-- Run Wild Like a Man On Fire
				12490,	-- Alchemical Romance
				12600,	-- Breath of the Shrine
				12601,	-- The Void Lies Sleeping
				12602,	-- Trust No One
				12270,	-- Bringing Hexy Back
				12272,	-- Gold Fever
				12273,	-- It's Lit!
				12549,	-- Not a Fun Guy
				12498,	-- Taint Nobody Got Time For That
				12499,	-- Sporely Alive
				12503,	-- Snake Eyes
				12507,	-- Snake Eater
				12508,	-- Good Night, Sweet Prince
				12457,	-- Remix to Ignition
				12462,	-- Shot Through the Heart
				12855,	-- Pitch Invasion
				12854,	-- Ready for Raiding VI
				12727,	-- Stand by Me
				12726,	-- A Fish Out of Water
				12722,	-- It Belongs in a Mausoleum!
				12723,	-- How to Keep a Mummy
				12721,	-- Wrap God
			}},
			["groups"] = {
				i(161215),	-- Obsidian Krolusk (MOUNT!)
			},
		}),
		ach(12489, {	-- Losing My Profession
			crit(40750, {	-- Brutik Blackanvil
				["cr"] = 141800,	-- Brutik Blackanvil
			}),
			crit(40145, {	-- Governess Tabitha
				["cr"] = 131595,	-- Governess Tabitha
			}),
			crit(40147, {	-- Groundskeeper Lilith
				["cr"] = 131617,	-- Groundskeeper Lilith
			}),
			crit(40146, {	-- Head Vintner Justin
				["cr"] = 131615,	-- Head Vintner Justin
			}),
			crit(40149, {	-- Huntmaster Grath
				["cr"] = 131853,	-- Huntmaster Grath
			}),
			crit(40751, {	-- Liz Vilepot
				["cr"] = 141792,	-- Liz Vilepot
			}),
			crit(40148, {	-- Seamstress Johanna
				["cr"] = 131619,	-- Seamstress Johanna
			}),
			crit(40749, {	-- Threshanator 3000
				["cr"] = 141805,	-- Threshanator 3000
			}),
		}),
		-- #if BEFORE SL
		ach(11162),	-- Keystone Master
		ach(11185),	-- Keystone Conqueror
		ach(11184),	-- Keystone Challenger
		ach(11183),	-- Keystone Initiate
		-- #ENDIF
	}),
})));
