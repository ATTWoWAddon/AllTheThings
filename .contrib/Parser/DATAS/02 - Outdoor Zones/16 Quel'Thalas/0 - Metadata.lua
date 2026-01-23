---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(MAP.MIDNIGHT.QUELTHALAS, {
--	["icon"] = 5901550,
--	["lore"] = "Khaz Algar, a long-forgotten subterranean continent off the western shores of Pandaria, is home to the earthen capital city of Dornogal. This city will now serve as the new meeting ground for the Alliance and Horde.",
	["timeline"] = { ADDED_12_0_X_LAUNCH },
	["groups"] = {
		m(MAP.MIDNIGHT.SILVERMOON_CITY, {
		--	["icon"] = 5901551,
		--	["lore"] = "The Capital City of the earthen dwarves of Khaz Algar, located in the center of the Isle of Dorn. It was named in honor of the titanic watchers Dornic and Galan and has been isolated within Khaz Algar for a long while, which resulted in the city's earthen developing their own manners and customs.",
			["isRaid"] = true,
			["timeline"] = { ADDED_12_0_X_LAUNCH },
		}),
		m(MAP.MIDNIGHT.EVERSONG_WOODS, {
			["icon"] = 7301737,
		--	["lore"] = "Azj-Kahet, the high capital of nerubian society, is home to the last kingdom of living nerubians. Unlike Azjol-Nerub, which was consumed by the Scourge, Azj-Kahet represents nerubian society as it once was—deadly survivors of mythic wars that have played out repeatedly over millennia.",
			["timeline"] = { ADDED_12_0_X_LAUNCH },
		}),
		m(MAP.MIDNIGHT.HARANDAR, {
			["icon"] = 7385004,
		--	["lore"] = "Hallowfall, situated below the Ringing Deeps and above Azj-Kahet, is an enormous cavern bordered by an endless underground sea. Light, warmth, and growth for vegetation are provided by Beledar, a massive crystal sun embedded in the cavern ceiling, creating a bright and lush environment reminiscent of the surface world.",
			["timeline"] = { ADDED_12_0_X_LAUNCH }
		}),
		m(MAP.MIDNIGHT.ISLE_OF_QUELDANAS, {
		--	["icon"] = 5901551,
		--	["lore"] = "The Capital City of the earthen dwarves of Khaz Algar, located in the center of the Isle of Dorn. It was named in honor of the titanic watchers Dornic and Galan and has been isolated within Khaz Algar for a long while, which resulted in the city's earthen developing their own manners and customs.",
			["timeline"] = { ADDED_12_0_X_LAUNCH },
			["maps"] = {
				MAP.MIDNIGHT.ISLE_OF_QUELDANAS_SCENARIO,	-- Isle of Quel'Danas (Intro)
			},
		}),
		m(MAP.MIDNIGHT.VOIDSTORM, {
		--	["icon"] = 5770811,
		--	["lore"] = "Located on the surface of Khaz Algar, the Isle of Dorn is a lush and verdant paradise with sweeping vistas, cascading waterfalls, and majestic mountains. It is also the ancestral home to the titan-forged Earthen—a race made of living stone imbued with the essence of Azeroth's worldsoul.",
			["timeline"] = { ADDED_12_0_X_LAUNCH },
			["maps"] = {
				2526,	-- Voidlands_Micro_Abundance_A
				2527,	-- Voidlands_Micro_Abundance_B
			},
		}),
		m(MAP.MIDNIGHT.ZULAMAN, {
		--	["icon"] = 6921878,
		--	["lore"] = "K'aresh is the original homeworld of the ethereals and brokers. It was an arid planet, home to a thriving ecosystem and several sentient species, until it was destroyed by the void lord Dimensius the All-Devouring and his forces, forcing the ethereals into exodus in the Twisting Nether.",
			["timeline"] = { ADDED_12_0_X_LAUNCH },
			["maps"] = {
				2536,	-- Atal'Aman
			},
		}),
	},
}));
