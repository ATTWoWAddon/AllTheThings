---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(KHAZ_ALGAR, {
	["icon"] = 5901550,
	["lore"] = "Khaz Algar, a long-forgotten subterranean continent off the western shores of Pandaria, is home to the earthen capital city of Dornogal. This city will now serve as the new meeting ground for the Alliance and Horde.",
	["timeline"] = { ADDED_11_0_2 },
	["groups"] = {
		m(DORNOGAL, {
			["icon"] = 5901551,
			["lore"] = "The Capital City of the earthen dwarves of Khaz Algar, located in the center of the Isle of Dorn. It was named in honor of the titanic watchers Dornic and Galan and has been isolated within Khaz Algar for a long while, which resulted in the city's earthen developing their own manners and customs.",
			["isRaid"] = true,
			["timeline"] = { ADDED_11_0_2 },
		}),
		m(AZJ_KAHET, {
			["icon"] = 5770809,
			["lore"] = "Azj-Kahet, the high capital of nerubian society, is home to the last kingdom of living nerubians. Unlike Azjol-Nerub, which was consumed by the Scourge, Azj-Kahet represents nerubian society as it once was—deadly survivors of mythic wars that have played out repeatedly over millennia.",
			["maps"] = {
				AZJ_KAHET_LOWER,
				NERUBAR,
				NERUBAR_LOWER,
			},
			["timeline"] = { ADDED_11_0_2 },
		}),
		m(HALLOWFALL, {
			["icon"] = 5770810,
			["lore"] = "Hallowfall, situated below the Ringing Deeps and above Azj-Kahet, is an enormous cavern bordered by an endless underground sea. Light, warmth, and growth for vegetation are provided by Beledar, a massive crystal sun embedded in the cavern ceiling, creating a bright and lush environment reminiscent of the surface world.",
			["maps"] = { 2300 },	-- The Sinkhole
			["timeline"] = { ADDED_11_0_2 }
		}),
		m(ISLE_OF_DORN, {
			["icon"] = 5770811,
			["lore"] = "Located on the surface of Khaz Algar, the Isle of Dorn is a lush and verdant paradise with sweeping vistas, cascading waterfalls, and majestic mountains. It is also the ancestral home to the titan-forged Earthen—a race made of living stone imbued with the essence of Azeroth's worldsoul.",
			["timeline"] = { ADDED_11_0_2 },
		}),
		m(KARESH, {
			["icon"] = 6921878,
			["lore"] = "K'aresh is the original homeworld of the ethereals and brokers. It was an arid planet, home to a thriving ecosystem and several sentient species, until it was destroyed by the void lord Dimensius the All-Devouring and his forces, forcing the ethereals into exodus in the Twisting Nether.",
			["maps"] = {
				KARESH_TAZAVESH,	-- Tazavesh, the Veiled Market
				2477,	-- Voidscar Cavern
			},
			["timeline"] = { ADDED_11_2_0 },
		}),
		m(SIREN_ISLE, {
			["icon"] = 6215541,
			["lore"] = "Siren Isle is a storm-wrecked island, originally used by the Ashvane Company as a source of Azerite during the Fourth War - but its inhabitants have mysteriously disappeared.",
			["maps"] = { 2375 },	-- The Forgotten Vault
			["timeline"] = { ADDED_11_0_7 },
		}),
		m(THE_RINGING_DEEPS, {
			["icon"] = 5770812,
			["lore"] = "This gigantic cavern serves as the home of the Machine Speakers, Earthen who maintain the gigantic Titan machines of old.",
			["maps"] = { 2385 },	-- The Coreway (Ringing Deeps)
			["timeline"] = { ADDED_11_0_2 },
		}),
		m(UNDERMINE, {
			["icon"] = 6392630,
			["lore"] = "The Undermine, or just Undermine, is the subterranean capital city of the goblins, located in the bowels of Mount Kajaro on the Isle of Kezan in the South Seas.",
			["timeline"] = { ADDED_11_1_0 },
		}),
	},
}));
