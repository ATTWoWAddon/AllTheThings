---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(ARGUS, bubbleDown({ ["timeline"] = { ADDED_7_3_0 } }, {
	m(ANTORAN_WASTES, {
		n(RARES, {
			n(127090, {	-- Admiral Rel'var
				["questID"] = 48817,
				["isDaily"] = true,
				["coord"] = { 73.6, 71.8, ANTORAN_WASTES },
				["sym"] = {
					{"select","mapID",ANTORAN_WASTES},	-- get Antoran Wastes
					{"find","headerID",SPECIAL},		-- get Special
					{"find","filterID",CLOTH},{"pop"},	-- get Cloth
				},
				["g"] = {
					i(153324),	-- Eredath Vigilant's Bastion
				},
			}),
			n(127096, {	-- All-Seer Xanarian
				["questID"] = 48818,
				["isDaily"] = true,
				["coord"] = { 76.0, 56.2, ANTORAN_WASTES },
				["g"] = {
					i(153123),	-- Cracked Radinax Control Gem
				},
			}),
			n(122958, {	-- Blistermaw
				["modelScale"] = 0.80,
				["questID"] = 49183,
				["isDaily"] = true,
				["coord"] = { 61.8, 37.6, ANTORAN_WASTES },
				["g"] = {
					i(152905),	-- Crimson Slavermaw (MOUNT!)
				},
			}),
			n(127376, {	-- Chief Alchemist Munculus
				["questID"] = 48865,
				["isDaily"] = true,
				["coord"] = { 61.2, 21.6, ANTORAN_WASTES },
				["g"] = {
					i(153113),	-- Demon's Soulstone
				},
			}),
			n(127084, {	-- Commander Texlaz
				["questID"] = 48816,
				["isDaily"] = true,
				["coord"] = { 80.5, 62.7, ANTORAN_WASTES },
				["crs"] = { 126680 },	-- portal to rare
				["g"] = {
					i(153123),	-- Cracked Radinax Control Gem (Green Item)
				},
			}),
			n(127703, {	-- Doomcaster Suprax
				["description"] = "Run through all three runes to summon the rare.  He will give you a debuff that will instantly kill you, ignoring immunities, unless you kill him before it expires or you walk into Doom Stars.",
				["questID"] = 48968,
				["isDaily"] = true,
				["coord"] = { 58.0, 12.0, ANTORAN_WASTES },
				["g"] = {
					i(153194),	-- Legion Communication Orb (TOY!)
				},
			}),
			n(122999, {	-- Gar'zoth
				["questID"] = 49241,
				["isDaily"] = true,
				["coord"] = { 56.0, 45.8, ANTORAN_WASTES },
				["g"] = {
					i(153113),	-- Demon's Soulstone
				},
			}),
			n(127288, {	-- Houndmaster Kerrax
				["modelScale"] = 0.73,
				["questID"] = 48821,
				["isDaily"] = true,
				["coord"] = { 63.8, 22.0, ANTORAN_WASTES },
				["g"] = {
					i(152790),	-- Vile Fiend (MOUNT!)
				},
			}),
			n(126946, {	-- Inquisitor Vethroz
				["questID"] = 48815,
				["isDaily"] = true,
				["coord"] = { 60.6, 48.6, ANTORAN_WASTES },
				["g"] = {
					i(151543),	-- Technique: Glyph of Fel-Touched Shards (RECIPE!)
				},
			}),
			n(126254, {	-- Lieutenant Xakaar
				["questID"] = 48813,
				["isDaily"] = true,
				["coord"] = { 62.6, 54.4, ANTORAN_WASTES },
				["g"] = {
					i(153113),	-- Demon's Soulstone
				},
			}),
			n(122947, {	-- Mistress Il'thendra
				["questID"] = 49240,
				["isDaily"] = true,
				["coord"] = { 57.6, 33.6, ANTORAN_WASTES },
				["sym"] = {
					{"select","mapID",KROKUUN},	-- get Krokuun
					{"find","headerID",SPECIAL},	-- get Special
					{"find","filterID",PLATE},{"pop"},	-- get Plate
				},
				["g"] = {
					i(153327),	-- Mystic Wakener's Dagger
				},
			}),
			n(127705, {	-- Mother Rosula
				["description"] = "Collect 100 |cFFFFD700Imp Meat|r from Felspawn Imps and combine them to create a |cFFFFD700Disgusting Feast|r.  Place the feast at the cave's northern fel pool to summon the rare.",
				["modelScale"] = 0.63,
				["questID"] = 48970,
				["isDaily"] = true,
				["coords"] = {
					{ 65.5, 26.6, ANTORAN_WASTES },	-- Cave Entrance
					{ 66.6, 17.8, ANTORAN_WASTES },	-- Inside the Cave
				},
				["cost"] = {
					{ "i", 152999, 100 },	-- 100x Imp Meat
					{ "i", 153013, 1 },		-- Disgusting Feast
				},
				["crs"] = { 126073 },	-- Felspawn Imp
				["g"] = {
					i(153252),	-- Rebellious Imp (PET!)
				},
			}),
			n(126040, {	-- Puscilla
				["questID"] = 48809,
				["isDaily"] = true,
				["coord"] = { 64.0, 20.8, ANTORAN_WASTES },
				["g"] = {
					i(152903),	-- Biletooth Gnasher (MOUNT!)
				},
			}),
			n(126196, {	-- Radix
				["coord"]  = { 72.5, 67.5, ANTORAN_WASTES },
				["g"] = {
					i(212778, {	-- Grimoire of the Vile Tyrant (CI!)
						["timeline"] = { ADDED_10_2_5 },
						["description"] = "The grimoire only drops when Radix is in stasis and you have to rightclick to activate him.\nIf Radix is already active and has no loot, not even greys, then you cant loot the grimoire for this day.",
					}),
				},
			}),
			n(127706, {	-- Rezira the Seer
				["description"] = "In order to reach this rare you must use the Observer's Locus Resonator, purchaseable from Orix the All-Seer, use someone else's portal, or use an item like Falling Flame with a Goblin Glider to help you land in the correct place.",
				["questID"] = 48971,
				["isDaily"] = true,
				["coord"] = { 65.4, 81.4, ANTORAN_WASTES },
				["cost"] = { { "i", 153226, 1 } },	-- 1x Observer's Locus Resonator
				["g"] = {
					i(153293),	-- Sightless Eye (TOY!)
				},
			}),
			n(127700, {	-- Squadron Commander Vishax
				["description"] = "Collect |cFFFFD700Smashed Portal Generator|r, |cFFFFD700Conductive Sheath|r, |cFFFFD700Arc Circuit|r and |cFFFFD700Power Cell|r from the elite mobs on the Terminus docks and ship, and combine them to create |cFFFFD700Vishax's Portal Generator|r.\n\nOnce you create the item and do the follow-up quest, you can always power up the portal to the rare.",
				["modelScale"] = 0.63,
				["questID"] = 48967,
				["isDaily"] = true,
				["coord"] = { 77.5, 74.7, ANTORAN_WASTES },	-- Vishax's Portal
				["crs"] = { 127943 },	-- Vishax's Portal
				["g"] = {
					i(153253),	-- S.F.E. Interceptor (TOY!)
				},
			}),
			n(127581, {	-- The Many-Faced Devourer
				["sourceQuests"] = { 48870 },	-- The Many-Faced Devourer
				["modelScale"] = 0.63,
				["questID"] = 48966,
				["isDaily"] = true,
				["coord"] = { 54.8, 39.1, ANTORAN_WASTES },
				["crs"] = { 127577 },	-- Bone Effigy
				["g"] = {
					i(153195),	-- Uuna (PET!)
				},
			}),
			n(126208, {	-- Varga
				["modelScale"] = 0.63,
				["questID"] = 48812,
				["isDaily"] = true,
				["coord"] = { 65.0, 51.6, ANTORAN_WASTES },
				["g"] = {
					i(153190),	-- Fel-Spotted Egg
				},
			}),
			n(126115, {	-- Ven'orn
				["description"] = "Inside the cave.",
				["questID"] = 48811,
				["isDaily"] = true,
				["coord"] = { 66.4, 54.2, ANTORAN_WASTES },
				["g"] = {
					i(153113),	-- Demon's Soulstone
				},
			}),
			n(127300, {	-- Void Warden Valsuran
				["questID"] = 48824,
				["isDaily"] = true,
				["coord"] = { 55.6, 21.8, ANTORAN_WASTES },
				["sym"] = {
					{"select","mapID",ANTORAN_WASTES},	-- get Antoran Wastes
					{"find","headerID",SPECIAL},		-- get Special
					{"find","filterID",CLOTH},{"pop"},	-- get Cloth
				},
				["g"] = {
					i(153319),	-- Ardent Vindicator's Greatmace
				},
			}),
			n(126199, {	-- Vrax'thul
				["questID"] = 48810,
				["isDaily"] = true,
				["coord"] = { 53.0, 36.6, ANTORAN_WASTES },
				["g"] = {
					i(152903),	-- Biletooth Gnasher (MOUNT!)
				},
			}),
			n(127291, {	-- Watcher Aival
				["questID"] = 48822,
				["isDaily"] = true,
				["coord"] = { 53.2, 28.4, ANTORAN_WASTES },
				["g"] = {
					i(153113),	-- Demon's Soulstone
				},
			}),
			n(127118, {	-- Worldsplitter Skuul
				["questID"] = 48820,
				["isDaily"] = true,
				["coord"] = { 51.6, 54.6, ANTORAN_WASTES },
				["sym"] = {
					{"select","mapID",ANTORAN_WASTES},	-- get Antoran Wastes
					{"find","headerID",SPECIAL},		-- get Special
					{"find","filterID",CLOTH},{"pop"},	-- get Cloth
				},
				["g"] = {
					i(153312),	-- Praetor's Ornamental Greatsword
				},
			}),
			n(126338, {	-- Wrath-Lord Yarez
				["modelScale"] = 0.65,
				["questID"] = 48814,
				["isDaily"] = true,
				["coord"] = { 61.6, 65.0, ANTORAN_WASTES },
				["g"] = {
					i(153126),	-- Micro-Artillery Controller (TOY!)
				},
			}),
		}),
	}),
})));