-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

root(ROOTS.Instances, expansion(EXPANSION.MID, {
	n(MYTHIC_PLUS, {
		header(HEADERS.Achievement, SEASON_UMBRAL, bubbleDownSelf({
			["timeline"] = { ADDED_12_0_X_SEASONSTART, REMOVED_12_1_0 }
		},{
			ach(61254),	-- Midnight Keystone Explorer: Season One
			ach(61255, {	-- Midnight Keystone Conqueror: Season One
				title(655),	-- <Name> the Umbral
			}),
			ach(61256, {	-- Midnight Keystone Master: Season One
				i(262620),	-- Calamitous Carrion (MOUNT!)
			}),
			ach(61257),	-- Midnight Keystone Hero: Season One
			ach(61258, {	-- Midnight Keystone Legend: Season One
				i(262621),	-- Convalescent Carrion (MOUNT!)
			}),
			ach(61259, {	-- Umbral Hero: Midnight Season One
				title(656),	-- <Name> the Umbral Hero
			}),
			ach(16643, {	-- Keystone Hero: Algeth'ar Academy
				spell(393273),	-- Path of the Draconic Diploma
			}),
			ach(61269, {	-- Keystone Hero: Maisara Caverns
				spell(1254559),	-- Path of Cavernous Depths
			}),
			ach(61268, {	-- Keystone Hero: Nexus-Point Xenas
				spell(1254563),	-- Path of the Fractured Core
			}),
			ach(61267, {	-- Keystone Hero: Magisters' Terrace
				spell(1254572),	-- Path of Devoted Magistry
			}),
			ach(61262, {	-- Keystone Hero: Windrunner Spire
				spell(1254400),	-- Path of the Windrunners
			}),
			ach(61270, {	-- Keystone Hero: Seat of the Triumvirate
				spell(1254551),	-- Path of Dark Dereliction
			}),
			ach(61271, {	-- Keystone Hero: Pit of Saron
				spell(1254555),	-- Path of Unyielding Blight
			}),
			ach(61272, {	-- Keystone Hero: Skyreach
				spell(1254557),	-- Path of the Crowning Pinnacle
			}),
			-- Using ["_noautomation"] for all to reduce numbers a bit.
			-- Have to see what Blizzard does with those kind of achievements -- Goldenshacal October 2025
			ach(61233, {	-- Midnight Season 1: Resilient Keystone 12
				["_noautomation"] = true,
			}),
			ach(61235, {	-- Midnight Season 1: Resilient Keystone 13
				["_noautomation"] = true,
			}),
			ach(61236, {	-- Midnight Season 1: Resilient Keystone 14
				["_noautomation"] = true,
			}),
			ach(61237, {	-- Midnight Season 1: Resilient Keystone 15
				["_noautomation"] = true,
			}),
			ach(61239, {	-- Midnight Season 1: Resilient Keystone 16
				["_noautomation"] = true,
			}),
			ach(61240, {	-- Midnight Season 1: Resilient Keystone 17
				["_noautomation"] = true,
			}),
			ach(61241, {	-- Midnight Season 1: Resilient Keystone 18
				["_noautomation"] = true,
			}),
			ach(61242, {	-- Midnight Season 1: Resilient Keystone 19
				["_noautomation"] = true,
			}),
			ach(61243, {	-- Midnight Season 1: Resilient Keystone 20
				["_noautomation"] = true,
			}),
			ach(61244, {	-- Midnight Season 1: Resilient Keystone 21
				["_noautomation"] = true,
			}),
			ach(61245, {	-- Midnight Season 1: Resilient Keystone 22
				["_noautomation"] = true,
			}),
			ach(61246, {	-- Midnight Season 1: Resilient Keystone 23
				["_noautomation"] = true,
			}),
			ach(61247, {	-- Midnight Season 1: Resilient Keystone 24
				["_noautomation"] = true,
			}),
			ach(61248, {	-- Midnight Season 1: Resilient Keystone 25
				["_noautomation"] = true,
			}),
			ach(61249, {	-- Midnight Season 1: Resilient Keystone 26
				["_noautomation"] = true,
			}),
			ach(61250, {	-- Midnight Season 1: Resilient Keystone 27
				["_noautomation"] = true,
			}),
			ach(61251, {	-- Midnight Season 1: Resilient Keystone 28
				["_noautomation"] = true,
				["collectible"] = false,
			}),
			ach(61252, {	-- Midnight Season 1: Resilient Keystone 29
				["_noautomation"] = true,
				["collectible"] = false,
			}),
			ach(61253, {	-- Midnight Season 1: Resilient Keystone 30
				["_noautomation"] = true,
				["collectible"] = false,
			}),
		})),
	}),
}));
