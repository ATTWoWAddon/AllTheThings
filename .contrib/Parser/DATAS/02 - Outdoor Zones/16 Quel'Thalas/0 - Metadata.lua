---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(MAP.MIDNIGHT.QUELTHALAS, {
	["icon"] = 7488399,
	["lore"] = "Quel'Thalas is a forested area in northern Lordaeron. It is ruled by the blood elves, descendants of the kingdom's Highborne founders, and is known as the Land of Eternal Spring. Its capital is Silvermoon City.",
	["timeline"] = { ADDED_12_0_X_LAUNCH },
	["groups"] = {
		m(MAP.MIDNIGHT.SILVERMOON_CITY, {
			["icon"] = 135761,
			["lore"] = "Silvermoon City is the crown jewel of the blood elves and their capital city. It is nestled in the northern reaches of the Eversong Woods (at the northernmost tip of the Eastern Kingdoms) in their ancestral homeland of Quel'Thalas",
			["isRaid"] = true,
			["timeline"] = { ADDED_12_0_X_LAUNCH },
		}),
		m(MAP.MIDNIGHT.EVERSONG_WOODS, {
			["icon"] = 7301737,
			["lore"] = "The blood elves have called the resplendent Eversong Woods home for millennia, but the stewardship of this forested region has not been without its perils.",
			["timeline"] = { ADDED_12_0_X_LAUNCH },
		}),
		m(MAP.MIDNIGHT.HARANDAR, {
			["icon"] = 7385004,
			["lore"] = "A bioluminscent primordial jungle, it is an underground cavern where the roots of all World Trees on Azeroth converge, and home to the haranir. The Rift of Aln is also located here.",
			["timeline"] = { ADDED_12_0_X_LAUNCH },
			["maps"] = {
				2576,	-- The Den
			},
		}),
		m(MAP.MIDNIGHT.ISLE_OF_QUELDANAS, {
			["icon"] = 7454100,
			["lore"] = "Seven thousand years ago, when Quel'Thalas was founded, Dath'Remar Sunstrider, ruler of the new elven kingdom, created a mystic fountain at a convergence of ley lines on this island off the northern coast of Eversong Woods, utilizing a vial of water stolen from the Well of Eternity sometime before the Great Sundering. As a result, the island - which became known as Quel'Danas - is also known as the Sunwell Isle.",
			["timeline"] = { ADDED_12_0_X_LAUNCH },
			["maps"] = {
				MAP.MIDNIGHT.ISLE_OF_QUELDANAS_SCENARIO,	-- Isle of Quel'Danas (Intro)
				2565,	-- Parhelion Plaza, Isle of Quel'Danas (Intro)
				2566,	-- The Sunwell, Isle of Quel'Danas (Intro)
			},
		}),
		m(MAP.MIDNIGHT.VOIDSTORM, {
		--	["icon"] = 5770811,
			["lore"] = "It is a world shaped by the Void where predation reigns supreme, and serves as Xal'atath's launching point for her attack on the Sunwell.",
			["timeline"] = { ADDED_12_0_X_LAUNCH },
			["maps"] = {
				2526,	-- Lair of Predaxas
				2527,	-- Lair of Predaxas
			},
		}),
		m(MAP.MIDNIGHT.ZULAMAN, {
			["icon"] = 7578705,
			["lore"] = "Zul'Aman is a fortress and a temple city that serves as the capital of the Amani tribe, located in the southeastern portion of Quel'Thalas, on northern Lordaeron. The main temple area is known as Atal'Aman.",
			["timeline"] = { ADDED_12_0_X_LAUNCH },
			["maps"] = {
				2536,	-- Atal'Aman
			},
		}),
	},
}));
