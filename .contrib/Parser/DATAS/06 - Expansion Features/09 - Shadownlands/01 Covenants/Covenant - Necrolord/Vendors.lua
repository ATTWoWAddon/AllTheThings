-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------
local CHRONICLE_OF_LOST_MEMORIES = ChronicleOfLostMemories({["cost"] = { { "c", GRATEFUL, 35 } }})	-- Chronicle of Lost Memories
local MEMORY_OF_A_VITAL_SACRIFICE = i(183249, {	-- Memory of a Vital Sacrifice
	["cost"] = { { "c", ANIMA, 250 } },	-- 250x Reservoir Anima
});

root(ROOTS.ExpansionFeatures, expansion(EXPANSION.SL, bubbleDown({ ["customCollect"] = "SL_COV_NEC" }, {
	n(NECROLORD, {
		n(REWARDS, {
			i(183703, {	-- Bonesmith's Satchel
				["description"] = "Only Obtainable from Heirmir Soulbind.",
			}),
		}),
		n(VENDORS, {
			n(175310, {	-- Mellisa Fate <Raid Finder Nathrian Warsmith>
				["coord"] = { 60.8, 44.3, SEAT_OF_THE_PRIMUS },
				["g"] = bubbleDown({ ["modID"] = 4, ["ItemAppearanceModifierID"] = 0, }, {	-- LFR
					i(184253, {	-- Abdomen Chopper
						["cost"] = {
							{ "i", modItemId(183893,04), 1 },	-- LFR Abominable Anima Spherule - 187
							{ "i", modItemId(183892,04), 1 },	-- LFR Mystic Anima Spherule - 187
							{ "i", modItemId(183891,04), 1 },	-- LFR Venerated Anima Spherule - 187
							{ "i", modItemId(183890,04), 1 },	-- LFR Zenith Anima Spherule - 187
						},
					}),
					i(184265, {	-- Abdomen Splitter
						["modID"] = 83,
						["cost"] = {
							{ "i", modItemId(183896,83), 1 },	-- LFR Abominable Anima Spherule - 194
							{ "i", modItemId(183897,83), 1 },	-- LFR Mystic Anima Spherule - 194
							{ "i", modItemId(183898,83), 1 },	-- LFR Venerated Anima Spherule - 194
							{ "i", modItemId(183899,83), 1 },	-- LFR Zenith Anima Spherule - 194
						},
					}),
					i(184252, {	-- Aranakk Torture Device
						["cost"] = {
							{ "i", modItemId(183893,04), 1 },	-- LFR Abominable Anima Spherule - 187
							{ "i", modItemId(183892,04), 1 },	-- LFR Mystic Anima Spherule - 187
							{ "i", modItemId(183891,04), 1 },	-- LFR Venerated Anima Spherule - 187
							{ "i", modItemId(183890,04), 1 },	-- LFR Zenith Anima Spherule - 187
						},
					}),
					i(184245, {	-- Barrier of the Chosen
						["cost"] = {
							{ "i", modItemId(183888,04), 1 },	-- LFR Apogee Anima Bead - 187
							{ "i", modItemId(183889,04), 1 },	-- LFR Thaumaturgic Anima Bead - 187
						},
					}),
					i(184244, {	-- Biting Gutsliver Shank
						["cost"] = {
							{ "i", modItemId(183893,04), 1 },	-- LFR Abominable Anima Spherule - 187
							{ "i", modItemId(183892,04), 1 },	-- LFR Mystic Anima Spherule - 187
							{ "i", modItemId(183891,04), 1 },	-- LFR Venerated Anima Spherule - 187
							{ "i", modItemId(183890,04), 1 },	-- LFR Zenith Anima Spherule - 187
						},
					}),
					i(184248, {	-- Blightforged Twinblade
						["cost"] = {
							{ "i", modItemId(183893,04), 1 },	-- LFR Abominable Anima Spherule - 187
							{ "i", modItemId(183892,04), 1 },	-- LFR Mystic Anima Spherule - 187
							{ "i", modItemId(183891,04), 1 },	-- LFR Venerated Anima Spherule - 187
							{ "i", modItemId(183890,04), 1 },	-- LFR Zenith Anima Spherule - 187
						},
					}),
					i(184257, {	-- Burden of the Protectorate
						["modID"] = 83,
						["cost"] = {
							{ "i", modItemId(183895,83), 1 },	-- LFR Apogee Anima Bead - 194
							{ "i", modItemId(183894,83), 1 },	-- LFR Thaumaturgic Anima Bead - 194
						},
					}),
					i(184250, {	-- Deadeye Blunderbuss
						["cost"] = {
							{ "i", modItemId(183893,04), 1 },	-- LFR Abominable Anima Spherule - 187
							{ "i", modItemId(183892,04), 1 },	-- LFR Mystic Anima Spherule - 187
							{ "i", modItemId(183891,04), 1 },	-- LFR Venerated Anima Spherule - 187
							{ "i", modItemId(183890,04), 1 },	-- LFR Zenith Anima Spherule - 187
						},
					}),
					i(184262, {	-- Deadeye Cannon
						["modID"] = 83,
						["cost"] = {
							{ "i", modItemId(183896,83), 1 },	-- LFR Abominable Anima Spherule - 194
							{ "i", modItemId(183897,83), 1 },	-- LFR Mystic Anima Spherule - 194
							{ "i", modItemId(183898,83), 1 },	-- LFR Venerated Anima Spherule - 194
							{ "i", modItemId(183899,83), 1 },	-- LFR Zenith Anima Spherule - 194
						},
					}),
					i(184266, {	-- Fleshscourge Sickle
						["modID"] = 83,
						["cost"] = {
							{ "i", modItemId(183896,83), 1 },	-- LFR Abominable Anima Spherule - 194
							{ "i", modItemId(183897,83), 1 },	-- LFR Mystic Anima Spherule - 194
							{ "i", modItemId(183898,83), 1 },	-- LFR Venerated Anima Spherule - 194
							{ "i", modItemId(183899,83), 1 },	-- LFR Zenith Anima Spherule - 194
						},
					}),
					i(184246, {	-- Frigid Invoker's Focus
						["cost"] = {
							{ "i", modItemId(183888,04), 1 },	-- LFR Apogee Anima Bead - 187
							{ "i", modItemId(183889,04), 1 },	-- LFR Thaumaturgic Anima Bead - 187
						},
					}),
					i(184259, {	-- Grasp from the Grave
						["modID"] = 83,
						["cost"] = {
							{ "i", modItemId(183896,83), 1 },	-- LFR Abominable Anima Spherule - 194
							{ "i", modItemId(183897,83), 1 },	-- LFR Mystic Anima Spherule - 194
							{ "i", modItemId(183898,83), 1 },	-- LFR Venerated Anima Spherule - 194
							{ "i", modItemId(183899,83), 1 },	-- LFR Zenith Anima Spherule - 194
						},
					}),
					i(184261, {	-- Greatstaff of the Lichsworn General
						["modID"] = 83,
						["cost"] = {
							{ "i", modItemId(183896,83), 1 },	-- LFR Abominable Anima Spherule - 194
							{ "i", modItemId(183897,83), 1 },	-- LFR Mystic Anima Spherule - 194
							{ "i", modItemId(183898,83), 1 },	-- LFR Venerated Anima Spherule - 194
							{ "i", modItemId(183899,83), 1 },	-- LFR Zenith Anima Spherule - 194
						},
					}),
					i(184247, {	-- Grip of the Dead
						["cost"] = {
							{ "i", modItemId(183893,04), 1 },	-- LFR Abominable Anima Spherule - 187
							{ "i", modItemId(183892,04), 1 },	-- LFR Mystic Anima Spherule - 187
							{ "i", modItemId(183891,04), 1 },	-- LFR Venerated Anima Spherule - 187
							{ "i", modItemId(183890,04), 1 },	-- LFR Zenith Anima Spherule - 187
						},
					}),
					i(184255, {	-- Gristlegore Hacker
						["cost"] = {
							{ "i", modItemId(183893,04), 1 },	-- LFR Abominable Anima Spherule - 187
							{ "i", modItemId(183892,04), 1 },	-- LFR Mystic Anima Spherule - 187
							{ "i", modItemId(183891,04), 1 },	-- LFR Venerated Anima Spherule - 187
							{ "i", modItemId(183890,04), 1 },	-- LFR Zenith Anima Spherule - 187
						},
					}),
					i(184264, {	-- Krexus's Bloodletting Polearm
						["modID"] = 83,
						["cost"] = {
							{ "i", modItemId(183896,83), 1 },	-- LFR Abominable Anima Spherule - 194
							{ "i", modItemId(183897,83), 1 },	-- LFR Mystic Anima Spherule - 194
							{ "i", modItemId(183898,83), 1 },	-- LFR Venerated Anima Spherule - 194
							{ "i", modItemId(183899,83), 1 },	-- LFR Zenith Anima Spherule - 194
						},
					}),
					i(184258, {	-- Malevolent Invoker's Crystal
						["modID"] = 83,
						["cost"] = {
							{ "i", modItemId(183895,83), 1 },	-- LFR Apogee Anima Bead - 194
							{ "i", modItemId(183894,83), 1 },	-- LFR Thaumaturgic Anima Bead - 194
						},
					}),
					i(184251, {	-- Ossified Broadaxe
						["cost"] = {
							{ "i", modItemId(183893,04), 1 },	-- LFR Abominable Anima Spherule - 187
							{ "i", modItemId(183892,04), 1 },	-- LFR Mystic Anima Spherule - 187
							{ "i", modItemId(183891,04), 1 },	-- LFR Venerated Anima Spherule - 187
							{ "i", modItemId(183890,04), 1 },	-- LFR Zenith Anima Spherule - 187
						},
					}),
					i(184263, {	-- Ossified Greataxe
						["modID"] = 83,
						["cost"] = {
							{ "i", modItemId(183896,83), 1 },	-- LFR Abominable Anima Spherule - 194
							{ "i", modItemId(183897,83), 1 },	-- LFR Mystic Anima Spherule - 194
							{ "i", modItemId(183898,83), 1 },	-- LFR Venerated Anima Spherule - 194
							{ "i", modItemId(183899,83), 1 },	-- LFR Zenith Anima Spherule - 194
						},
					}),
					i(184254, {	-- Plaguespine Sickle
						["cost"] = {
							{ "i", modItemId(183893,04), 1 },	-- LFR Abominable Anima Spherule - 187
							{ "i", modItemId(183892,04), 1 },	-- LFR Mystic Anima Spherule - 187
							{ "i", modItemId(183891,04), 1 },	-- LFR Venerated Anima Spherule - 187
							{ "i", modItemId(183890,04), 1 },	-- LFR Zenith Anima Spherule - 187
						},
					}),
					i(184267, {	-- Skullcleaver of the Merciless One
						["modID"] = 83,
						["cost"] = {
							{ "i", modItemId(183896,83), 1 },	-- LFR Abominable Anima Spherule - 194
							{ "i", modItemId(183897,83), 1 },	-- LFR Mystic Anima Spherule - 194
							{ "i", modItemId(183898,83), 1 },	-- LFR Venerated Anima Spherule - 194
							{ "i", modItemId(183899,83), 1 },	-- LFR Zenith Anima Spherule - 194
						},
					}),
					i(184249, {	-- Staff of the Lichsworn Lieutenant
						["cost"] = {
							{ "i", modItemId(183893,04), 1 },	-- LFR Abominable Anima Spherule - 187
							{ "i", modItemId(183892,04), 1 },	-- LFR Mystic Anima Spherule - 187
							{ "i", modItemId(183891,04), 1 },	-- LFR Venerated Anima Spherule - 187
							{ "i", modItemId(183890,04), 1 },	-- LFR Zenith Anima Spherule - 187
						},
					}),
					i(184256, {	-- Vicious Goreripper Shank
						["modID"] = 83,
						["cost"] = {
							{ "i", modItemId(183896,83), 1 },	-- LFR Abominable Anima Spherule - 194
							{ "i", modItemId(183897,83), 1 },	-- LFR Mystic Anima Spherule - 194
							{ "i", modItemId(183898,83), 1 },	-- LFR Venerated Anima Spherule - 194
							{ "i", modItemId(183899,83), 1 },	-- LFR Zenith Anima Spherule - 194
						},
					}),
					i(184260, {	-- Warglaive of the Hidden Fiend
						["modID"] = 83,
						["cost"] = {
							{ "i", modItemId(183896,83), 1 },	-- LFR Abominable Anima Spherule - 194
							{ "i", modItemId(183897,83), 1 },	-- LFR Mystic Anima Spherule - 194
							{ "i", modItemId(183898,83), 1 },	-- LFR Venerated Anima Spherule - 194
							{ "i", modItemId(183899,83), 1 },	-- LFR Zenith Anima Spherule - 194
						},
					}),
				}),
			}),
			n(175371, {	-- Mortis Elfsen <Normal Nathrian Warsmith>
				["coord"] = { 61.1, 45.7, SEAT_OF_THE_PRIMUS },
				["g"] = bubbleDown({ ["modID"] = 3 }, {	-- Normal
					i(184253, {	-- Abdomen Chopper
						["cost"] = {
							{ "i", modItemId(183893,03), 1 },	-- Normal Abominable Anima Spherule - 200
							{ "i", modItemId(183892,03), 1 },	-- Normal Mystic Anima Spherule - 200
							{ "i", modItemId(183891,03), 1 },	-- Normal Venerated Anima Spherule - 200
							{ "i", modItemId(183890,03), 1 },	-- Normal Zenith Anima Spherule - 200
						},
					}),
					i(184265, {	-- Abdomen Splitter
						["modID"] = 82,
						["cost"] = {
							{ "i", modItemId(183896,82), 1 },	-- Normal Abominable Anima Spherule - 207
							{ "i", modItemId(183897,82), 1 },	-- Normal Mystic Anima Spherule - 207
							{ "i", modItemId(183898,82), 1 },	-- Normal Venerated Anima Spherule - 207
							{ "i", modItemId(183899,82), 1 },	-- Normal Zenith Anima Spherule - 207
						},
					}),
					i(184252, {	-- Aranakk Torture Device
						["cost"] = {
							{ "i", modItemId(183893,03), 1 },	-- Normal Abominable Anima Spherule - 200
							{ "i", modItemId(183892,03), 1 },	-- Normal Mystic Anima Spherule - 200
							{ "i", modItemId(183891,03), 1 },	-- Normal Venerated Anima Spherule - 200
							{ "i", modItemId(183890,03), 1 },	-- Normal Zenith Anima Spherule - 200
						},
					}),
					i(184245, {	-- Barrier of the Chosen
						["cost"] = {
							{ "i", modItemId(183888,03), 1 },	-- Normal Apogee Anima Bead - 200
							{ "i", modItemId(183889,03), 1 },	-- Normal Thaumaturgic Anima Bead - 200
						},
					}),
					i(184244, {	-- Biting Gutsliver Shank
						["cost"] = {
							{ "i", modItemId(183893,03), 1 },	-- Normal Abominable Anima Spherule - 200
							{ "i", modItemId(183892,03), 1 },	-- Normal Mystic Anima Spherule - 200
							{ "i", modItemId(183891,03), 1 },	-- Normal Venerated Anima Spherule - 200
							{ "i", modItemId(183890,03), 1 },	-- Normal Zenith Anima Spherule - 200
						},
					}),
					i(184248, {	-- Blightforged Twinblade
						["cost"] = {
							{ "i", modItemId(183893,03), 1 },	-- Normal Abominable Anima Spherule - 200
							{ "i", modItemId(183892,03), 1 },	-- Normal Mystic Anima Spherule - 200
							{ "i", modItemId(183891,03), 1 },	-- Normal Venerated Anima Spherule - 200
							{ "i", modItemId(183890,03), 1 },	-- Normal Zenith Anima Spherule - 200
						},
					}),
					i(184257, {	-- Burden of the Protectorate
						["modID"] = 82,
						["cost"] = {
							{ "i", modItemId(183895,82), 1 },	-- Normal Apogee Anima Bead - 207
							{ "i", modItemId(183894,82), 1 },	-- Normal Thaumaturgic Anima Bead - 207
						},
					}),
					i(184250, {	-- Deadeye Blunderbuss
						["cost"] = {
							{ "i", modItemId(183893,03), 1 },	-- Normal Abominable Anima Spherule - 200
							{ "i", modItemId(183892,03), 1 },	-- Normal Mystic Anima Spherule - 200
							{ "i", modItemId(183891,03), 1 },	-- Normal Venerated Anima Spherule - 200
							{ "i", modItemId(183890,03), 1 },	-- Normal Zenith Anima Spherule - 200
						},
					}),
					i(184262, {	-- Deadeye Cannon
						["modID"] = 82,
						["cost"] = {
							{ "i", modItemId(183896,82), 1 },	-- Normal Abominable Anima Spherule - 207
							{ "i", modItemId(183897,82), 1 },	-- Normal Mystic Anima Spherule - 207
							{ "i", modItemId(183898,82), 1 },	-- Normal Venerated Anima Spherule - 207
							{ "i", modItemId(183899,82), 1 },	-- Normal Zenith Anima Spherule - 207
						},
					}),
					i(184266, {	-- Fleshscourge Sickle
						["modID"] = 82,
						["cost"] = {
							{ "i", modItemId(183896,82), 1 },	-- Normal Abominable Anima Spherule - 207
							{ "i", modItemId(183897,82), 1 },	-- Normal Mystic Anima Spherule - 207
							{ "i", modItemId(183898,82), 1 },	-- Normal Venerated Anima Spherule - 207
							{ "i", modItemId(183899,82), 1 },	-- Normal Zenith Anima Spherule - 207
						},
					}),
					i(184246, {	-- Frigid Invoker's Focus
						["cost"] = {
							{ "i", modItemId(183888,03), 1 },	-- Normal Apogee Anima Bead - 200
							{ "i", modItemId(183889,03), 1 },	-- Normal Thaumaturgic Anima Bead - 200
						},
					}),
					i(184259, {	-- Grasp from the Grave
						["modID"] = 82,
						["cost"] = {
							{ "i", modItemId(183896,82), 1 },	-- Normal Abominable Anima Spherule - 207
							{ "i", modItemId(183897,82), 1 },	-- Normal Mystic Anima Spherule - 207
							{ "i", modItemId(183898,82), 1 },	-- Normal Venerated Anima Spherule - 207
							{ "i", modItemId(183899,82), 1 },	-- Normal Zenith Anima Spherule - 207
						},
					}),
					i(184261, {	-- Greatstaff of the Lichsworn General
						["modID"] = 82,
						["cost"] = {
							{ "i", modItemId(183896,82), 1 },	-- Normal Abominable Anima Spherule - 207
							{ "i", modItemId(183897,82), 1 },	-- Normal Mystic Anima Spherule - 207
							{ "i", modItemId(183898,82), 1 },	-- Normal Venerated Anima Spherule - 207
							{ "i", modItemId(183899,82), 1 },	-- Normal Zenith Anima Spherule - 207
						},
					}),
					i(184247, {	-- Grip of the Dead
						["cost"] = {
							{ "i", modItemId(183893,03), 1 },	-- Normal Abominable Anima Spherule - 200
							{ "i", modItemId(183892,03), 1 },	-- Normal Mystic Anima Spherule - 200
							{ "i", modItemId(183891,03), 1 },	-- Normal Venerated Anima Spherule - 200
							{ "i", modItemId(183890,03), 1 },	-- Normal Zenith Anima Spherule - 200
						},
					}),
					i(184255, {	-- Gristlegore Hacker
						["cost"] = {
							{ "i", modItemId(183893,03), 1 },	-- Normal Abominable Anima Spherule - 200
							{ "i", modItemId(183892,03), 1 },	-- Normal Mystic Anima Spherule - 200
							{ "i", modItemId(183891,03), 1 },	-- Normal Venerated Anima Spherule - 200
							{ "i", modItemId(183890,03), 1 },	-- Normal Zenith Anima Spherule - 200
						},
					}),
					i(184264, {	-- Krexus's Bloodletting Polearm
						["modID"] = 82,
						["cost"] = {
							{ "i", modItemId(183896,82), 1 },	-- Normal Abominable Anima Spherule - 207
							{ "i", modItemId(183897,82), 1 },	-- Normal Mystic Anima Spherule - 207
							{ "i", modItemId(183898,82), 1 },	-- Normal Venerated Anima Spherule - 207
							{ "i", modItemId(183899,82), 1 },	-- Normal Zenith Anima Spherule - 207
						},
					}),
					i(184258, {	-- Malevolent Invoker's Crystal
						["modID"] = 82,
						["cost"] = {
							{ "i", modItemId(183895,82), 1 },	-- Normal Apogee Anima Bead - 207
							{ "i", modItemId(183894,82), 1 },	-- Normal Thaumaturgic Anima Bead - 207
						},
					}),
					i(184251, {	-- Ossified Broadaxe
						["cost"] = {
							{ "i", modItemId(183893,03), 1 },	-- Normal Abominable Anima Spherule - 200
							{ "i", modItemId(183892,03), 1 },	-- Normal Mystic Anima Spherule - 200
							{ "i", modItemId(183891,03), 1 },	-- Normal Venerated Anima Spherule - 200
							{ "i", modItemId(183890,03), 1 },	-- Normal Zenith Anima Spherule - 200
						},
					}),
					i(184263, {	-- Ossified Greataxe
						["modID"] = 82,
						["cost"] = {
							{ "i", modItemId(183896,82), 1 },	-- Normal Abominable Anima Spherule - 207
							{ "i", modItemId(183897,82), 1 },	-- Normal Mystic Anima Spherule - 207
							{ "i", modItemId(183898,82), 1 },	-- Normal Venerated Anima Spherule - 207
							{ "i", modItemId(183899,82), 1 },	-- Normal Zenith Anima Spherule - 207
						},
					}),
					i(184254, {	-- Plaguespine Sickle
						["cost"] = {
							{ "i", modItemId(183893,03), 1 },	-- Normal Abominable Anima Spherule - 200
							{ "i", modItemId(183892,03), 1 },	-- Normal Mystic Anima Spherule - 200
							{ "i", modItemId(183891,03), 1 },	-- Normal Venerated Anima Spherule - 200
							{ "i", modItemId(183890,03), 1 },	-- Normal Zenith Anima Spherule - 200
						},
					}),
					i(184267, {	-- Skullcleaver of the Merciless One
						["modID"] = 82,
						["cost"] = {
							{ "i", modItemId(183896,82), 1 },	-- Normal Abominable Anima Spherule - 207
							{ "i", modItemId(183897,82), 1 },	-- Normal Mystic Anima Spherule - 207
							{ "i", modItemId(183898,82), 1 },	-- Normal Venerated Anima Spherule - 207
							{ "i", modItemId(183899,82), 1 },	-- Normal Zenith Anima Spherule - 207
						},
					}),
					i(184249, {	-- Staff of the Lichsworn Lieutenant
						["cost"] = {
							{ "i", modItemId(183893,03), 1 },	-- Normal Abominable Anima Spherule - 200
							{ "i", modItemId(183892,03), 1 },	-- Normal Mystic Anima Spherule - 200
							{ "i", modItemId(183891,03), 1 },	-- Normal Venerated Anima Spherule - 200
							{ "i", modItemId(183890,03), 1 },	-- Normal Zenith Anima Spherule - 200
						},
					}),
					i(184256, {	-- Vicious Goreripper Shank
						["modID"] = 82,
						["cost"] = {
							{ "i", modItemId(183896,82), 1 },	-- Normal Abominable Anima Spherule - 207
							{ "i", modItemId(183897,82), 1 },	-- Normal Mystic Anima Spherule - 207
							{ "i", modItemId(183898,82), 1 },	-- Normal Venerated Anima Spherule - 207
							{ "i", modItemId(183899,82), 1 },	-- Normal Zenith Anima Spherule - 207
						},
					}),
					i(184260, {	-- Warglaive of the Hidden Fiend
						["modID"] = 82,
						["cost"] = {
							{ "i", modItemId(183896,82), 1 },	-- Normal Abominable Anima Spherule - 207
							{ "i", modItemId(183897,82), 1 },	-- Normal Mystic Anima Spherule - 207
							{ "i", modItemId(183898,82), 1 },	-- Normal Venerated Anima Spherule - 207
							{ "i", modItemId(183899,82), 1 },	-- Normal Zenith Anima Spherule - 207
						},
					}),
				}),
			}),
			n(175370, {	-- Odious Gwor <Mythic Nathrian Warsmith>
				-- TODO: Fill in "cost". Currently it's acting really weird in that the currency displays the itemid of the last item previously hovered over.
				["coord"] = { 60.5, 48.6, SEAT_OF_THE_PRIMUS },
				["g"] = bubbleDown({ ["modID"] = 6 }, {	-- Mythic
					i(184253, {	-- Abdomen Chopper
						["cost"] = {
							{ "i", modItemId(183893,06), 1 },	-- Mythic Abominable Anima Spherule - 226
							{ "i", modItemId(183892,06), 1 },	-- Mythic Mystic Anima Spherule - 226
							{ "i", modItemId(183891,06), 1 },	-- Mythic Venerated Anima Spherule - 226
							{ "i", modItemId(183890,06), 1 },	-- Mythic Zenith Anima Spherule - 226
						},
					}),
					i(184265, {	-- Abdomen Splitter
						["modID"] = 85,
						["cost"] = {
							{ "i", modItemId(183896,85), 1 },	-- Mythic Abominable Anima Spherule - 233
							{ "i", modItemId(183897,85), 1 },	-- Mythic Mystic Anima Spherule - 233
							{ "i", modItemId(183898,85), 1 },	-- Mythic Venerated Anima Spherule - 233
							{ "i", modItemId(183899,85), 1 },	-- Mythic Zenith Anima Spherule - 233
						},
					}),
					i(184252, {	-- Aranakk Torture Device
						["cost"] = {
							{ "i", modItemId(183893,06), 1 },	-- Mythic Abominable Anima Spherule - 226
							{ "i", modItemId(183892,06), 1 },	-- Mythic Mystic Anima Spherule - 226
							{ "i", modItemId(183891,06), 1 },	-- Mythic Venerated Anima Spherule - 226
							{ "i", modItemId(183890,06), 1 },	-- Mythic Zenith Anima Spherule - 226
						},
					}),
					i(184245, {	-- Barrier of the Chosen
						["cost"] = {
							{ "i", modItemId(183888,06), 1 },	-- Mythic Apogee Anima Bead - 226
							{ "i", modItemId(183889,06), 1 },	-- Mythic Thaumaturgic Anima Bead - 226
						},
					}),
					i(184244, {	-- Biting Gutsliver Shank
						["cost"] = {
							{ "i", modItemId(183893,06), 1 },	-- Mythic Abominable Anima Spherule - 226
							{ "i", modItemId(183892,06), 1 },	-- Mythic Mystic Anima Spherule - 226
							{ "i", modItemId(183891,06), 1 },	-- Mythic Venerated Anima Spherule - 226
							{ "i", modItemId(183890,06), 1 },	-- Mythic Zenith Anima Spherule - 226
						},
					}),
					i(184248, {	-- Blightforged Twinblade
						["cost"] = {
							{ "i", modItemId(183893,06), 1 },	-- Mythic Abominable Anima Spherule - 226
							{ "i", modItemId(183892,06), 1 },	-- Mythic Mystic Anima Spherule - 226
							{ "i", modItemId(183891,06), 1 },	-- Mythic Venerated Anima Spherule - 226
							{ "i", modItemId(183890,06), 1 },	-- Mythic Zenith Anima Spherule - 226
						},
					}),
					i(184257, {	-- Burden of the Protectorate
						["modID"] = 85,
						["cost"] = {
							{ "i", modItemId(183895,85), 1 },	-- Mythic Apogee Anima Bead - 233
							{ "i", modItemId(183894,85), 1 },	-- Mythic Thaumaturgic Anima Bead - 233
						},
					}),
					i(184250, {	-- Deadeye Blunderbuss
						["cost"] = {
							{ "i", modItemId(183893,06), 1 },	-- Mythic Abominable Anima Spherule - 226
							{ "i", modItemId(183892,06), 1 },	-- Mythic Mystic Anima Spherule - 226
							{ "i", modItemId(183891,06), 1 },	-- Mythic Venerated Anima Spherule - 226
							{ "i", modItemId(183890,06), 1 },	-- Mythic Zenith Anima Spherule - 226
						},
					}),
					i(184262, {	-- Deadeye Cannon
						["modID"] = 85,
						["cost"] = {
							{ "i", modItemId(183896,85), 1 },	-- Mythic Abominable Anima Spherule - 233
							{ "i", modItemId(183897,85), 1 },	-- Mythic Mystic Anima Spherule - 233
							{ "i", modItemId(183898,85), 1 },	-- Mythic Venerated Anima Spherule - 233
							{ "i", modItemId(183899,85), 1 },	-- Mythic Zenith Anima Spherule - 233
						},
					}),
					i(184266, {	-- Fleshscourge Sickle
						["modID"] = 85,
						["cost"] = {
							{ "i", modItemId(183896,85), 1 },	-- Mythic Abominable Anima Spherule - 233
							{ "i", modItemId(183897,85), 1 },	-- Mythic Mystic Anima Spherule - 233
							{ "i", modItemId(183898,85), 1 },	-- Mythic Venerated Anima Spherule - 233
							{ "i", modItemId(183899,85), 1 },	-- Mythic Zenith Anima Spherule - 233
						},
					}),
					i(184246, {	-- Frigid Invoker's Focus
						["cost"] = {
							{ "i", modItemId(183888,06), 1 },	-- Mythic Apogee Anima Bead - 226
							{ "i", modItemId(183889,06), 1 },	-- Mythic Thaumaturgic Anima Bead - 226
						},
					}),
					i(184259, {	-- Grasp from the Grave
						["modID"] = 85,
						["cost"] = {
							{ "i", modItemId(183896,85), 1 },	-- Mythic Abominable Anima Spherule - 233
							{ "i", modItemId(183897,85), 1 },	-- Mythic Mystic Anima Spherule - 233
							{ "i", modItemId(183898,85), 1 },	-- Mythic Venerated Anima Spherule - 233
							{ "i", modItemId(183899,85), 1 },	-- Mythic Zenith Anima Spherule - 233
						},
					}),
					i(184261, {	-- Greatstaff of the Lichsworn General
						["modID"] = 85,
						["cost"] = {
							{ "i", modItemId(183896,85), 1 },	-- Mythic Abominable Anima Spherule - 233
							{ "i", modItemId(183897,85), 1 },	-- Mythic Mystic Anima Spherule - 233
							{ "i", modItemId(183898,85), 1 },	-- Mythic Venerated Anima Spherule - 233
							{ "i", modItemId(183899,85), 1 },	-- Mythic Zenith Anima Spherule - 233
						},
					}),
					i(184247, {	-- Grip of the Dead
						["cost"] = {
							{ "i", modItemId(183893,06), 1 },	-- Mythic Abominable Anima Spherule - 226
							{ "i", modItemId(183892,06), 1 },	-- Mythic Mystic Anima Spherule - 226
							{ "i", modItemId(183891,06), 1 },	-- Mythic Venerated Anima Spherule - 226
							{ "i", modItemId(183890,06), 1 },	-- Mythic Zenith Anima Spherule - 226
						},
					}),
					i(184255, {	-- Gristlegore Hacker
						["cost"] = {
							{ "i", modItemId(183893,06), 1 },	-- Mythic Abominable Anima Spherule - 226
							{ "i", modItemId(183892,06), 1 },	-- Mythic Mystic Anima Spherule - 226
							{ "i", modItemId(183891,06), 1 },	-- Mythic Venerated Anima Spherule - 226
							{ "i", modItemId(183890,06), 1 },	-- Mythic Zenith Anima Spherule - 226
						},
					}),
					i(184264, {	-- Krexus's Bloodletting Polearm
						["modID"] = 85,
						["cost"] = {
							{ "i", modItemId(183896,85), 1 },	-- Mythic Abominable Anima Spherule - 233
							{ "i", modItemId(183897,85), 1 },	-- Mythic Mystic Anima Spherule - 233
							{ "i", modItemId(183898,85), 1 },	-- Mythic Venerated Anima Spherule - 233
							{ "i", modItemId(183899,85), 1 },	-- Mythic Zenith Anima Spherule - 233
						},
					}),
					i(184258, {	-- Malevolent Invoker's Crystal
						["modID"] = 85,
						["cost"] = {
							{ "i", modItemId(183895,85), 1 },	-- Mythic Apogee Anima Bead - 233
							{ "i", modItemId(183894,85), 1 },	-- Mythic Thaumaturgic Anima Bead - 233
						},
					}),
					i(184251, {	-- Ossified Broadaxe
						["cost"] = {
							{ "i", modItemId(183893,06), 1 },	-- Mythic Abominable Anima Spherule - 226
							{ "i", modItemId(183892,06), 1 },	-- Mythic Mystic Anima Spherule - 226
							{ "i", modItemId(183891,06), 1 },	-- Mythic Venerated Anima Spherule - 226
							{ "i", modItemId(183890,06), 1 },	-- Mythic Zenith Anima Spherule - 226
						},
					}),
					i(184263, {	-- Ossified Greataxe
						["modID"] = 85,
						["cost"] = {
							{ "i", modItemId(183896,85), 1 },	-- Mythic Abominable Anima Spherule - 233
							{ "i", modItemId(183897,85), 1 },	-- Mythic Mystic Anima Spherule - 233
							{ "i", modItemId(183898,85), 1 },	-- Mythic Venerated Anima Spherule - 233
							{ "i", modItemId(183899,85), 1 },	-- Mythic Zenith Anima Spherule - 233
						},
					}),
					i(184254, {	-- Plaguespine Sickle
						["cost"] = {
							{ "i", modItemId(183893,06), 1 },	-- Mythic Abominable Anima Spherule - 226
							{ "i", modItemId(183892,06), 1 },	-- Mythic Mystic Anima Spherule - 226
							{ "i", modItemId(183891,06), 1 },	-- Mythic Venerated Anima Spherule - 226
							{ "i", modItemId(183890,06), 1 },	-- Mythic Zenith Anima Spherule - 226
						},
					}),
					i(184267, {	-- Skullcleaver of the Merciless One
						["modID"] = 85,
						["cost"] = {
							{ "i", modItemId(183896,85), 1 },	-- Mythic Abominable Anima Spherule - 233
							{ "i", modItemId(183897,85), 1 },	-- Mythic Mystic Anima Spherule - 233
							{ "i", modItemId(183898,85), 1 },	-- Mythic Venerated Anima Spherule - 233
							{ "i", modItemId(183899,85), 1 },	-- Mythic Zenith Anima Spherule - 233
						},
					}),
					i(184249, {	-- Staff of the Lichsworn Lieutenant
						["cost"] = {
							{ "i", modItemId(183893,06), 1 },	-- Mythic Abominable Anima Spherule - 226
							{ "i", modItemId(183892,06), 1 },	-- Mythic Mystic Anima Spherule - 226
							{ "i", modItemId(183891,06), 1 },	-- Mythic Venerated Anima Spherule - 226
							{ "i", modItemId(183890,06), 1 },	-- Mythic Zenith Anima Spherule - 226
						},
					}),
					i(184256, {	-- Vicious Goreripper Shank
						["modID"] = 85,
						["cost"] = {
							{ "i", modItemId(183896,85), 1 },	-- Mythic Abominable Anima Spherule - 233
							{ "i", modItemId(183897,85), 1 },	-- Mythic Mystic Anima Spherule - 233
							{ "i", modItemId(183898,85), 1 },	-- Mythic Venerated Anima Spherule - 233
							{ "i", modItemId(183899,85), 1 },	-- Mythic Zenith Anima Spherule - 233
						},
					}),
					i(184260, {	-- Warglaive of the Hidden Fiend
						["modID"] = 85,
						["cost"] = {
							{ "i", modItemId(183896,85), 1 },	-- Mythic Abominable Anima Spherule - 233
							{ "i", modItemId(183897,85), 1 },	-- Mythic Mystic Anima Spherule - 233
							{ "i", modItemId(183898,85), 1 },	-- Mythic Venerated Anima Spherule - 233
							{ "i", modItemId(183899,85), 1 },	-- Mythic Zenith Anima Spherule - 233
						},
					}),
				}),
			}),
			n(175311, {	-- Slayer Araya <Covenant Armor>
				["coord"] = { 57.1, 48.3, SEAT_OF_THE_PRIMUS },
				["sym"] = { { "select", "itemID",
					-- These items are only purchasable after you complete the covenant campaign.
					-- Doing the Campaign also rewards all those items, so no need to list 2 sources per item.
					182276,	-- Bladesworn Conjurer's Cape
					182268,	-- Bladesworn Conjurer's Cowl
					182274,	-- Bladesworn Conjurer's Cinch
					182271,	-- Bladesworn Conjurer's Gloves
					182272,	-- Bladesworn Conjurer's Leggings
					182273,	-- Bladesworn Conjurer's Mantle
					182270,	-- Bladesworn Conjurer's Slippers
					182269,	-- Bladesworn Conjurer's Tunic
					182275,	-- Bladesworn Conjurer's Wristwraps
					182251,	-- Bladesworn Harbinger's Chestguard
					182253,	-- Bladesworn Harbinger's Crushers
					182258,	-- Bladesworn Harbinger's Greatcloak
					182250,	-- Bladesworn Harbinger's Greathelm
					182254,	-- Bladesworn Harbinger's Greaves
					182255,	-- Bladesworn Harbinger's Pauldrons
					182252,	-- Bladesworn Harbinger's Stompers
					182257,	-- Bladesworn Harbinger's Vambraces
					182256,	-- Bladesworn Harbinger's Warbelt
					182284,	-- Bladesworn Tactician's Bracers
					182281,	-- Bladesworn Tactician's Chausses
					182285,	-- Bladesworn Tactician's Drape
					182277,	-- Bladesworn Tactician's Faceguard
					182280,	-- Bladesworn Tactician's Gauntlets
					182283,	-- Bladesworn Tactician's Girdle
					182278,	-- Bladesworn Tactician's Hauberk
					182279,	-- Bladesworn Tactician's Sabatons
					182282,	-- Bladesworn Tactician's Spaulders
					182266,	-- Bladesworn Wraith's Armguards
					182265,	-- Bladesworn Wraith's Belt
					182261,	-- Bladesworn Wraith's Boots
					182263,	-- Bladesworn Wraith's Breeches
					182267,	-- Bladesworn Wraith's Cloak
					182260,	-- Bladesworn Wraith's Jerkin
					182264,	-- Bladesworn Wraith's Shoulders
					182262,	-- Bladesworn Wraith's Stranglers
					182259,	-- Bladesworn Wraith's Visage
				}},
				["g"] = {
					CHRONICLE_OF_LOST_MEMORIES,
					i(183451, {	-- Goreforged Barrier
						["cost"] = {
							{ "c", ANIMA, 3500 },
							{ "c", GRATEFUL, 10 },
						},
					}),
					i(183456, {	-- Goreforged Blunderbuss
						["cost"] = {
							{ "c", ANIMA, 3500 },
							{ "c", GRATEFUL, 10 },
						},
					}),
					i(183946, {	-- Goreforged Chopper
						["cost"] = {
							{ "c", ANIMA, 3500 },
							{ "c", GRATEFUL, 10 },
						},
					}),
					i(183459, {	-- Goreforged Cleaver
						["cost"] = {
							{ "c", ANIMA, 3500 },
							{ "c", GRATEFUL, 10 },
						},
					}),
					i(183452, {	-- Goreforged Focus
						["cost"] = {
							{ "c", ANIMA, 3500 },
							{ "c", GRATEFUL, 10 },
						},
					}),
					i(183457, {	-- Goreforged Greataxe
						["cost"] = {
							{ "c", ANIMA, 3500 },
							{ "c", GRATEFUL, 10 },
						},
					}),
					i(183453, {	-- Goreforged Mace
						["cost"] = {
							{ "c", ANIMA, 3500 },
							{ "c", GRATEFUL, 10 },
						},
					}),
					i(183458, {	-- Goreforged Polearm
						["cost"] = {
							{ "c", ANIMA, 3500 },
							{ "c", GRATEFUL, 10 },
						},
					}),
					i(183450, {	-- Goreforged Shank
						["cost"] = {
							{ "c", ANIMA, 3500 },
							{ "c", GRATEFUL, 10 },
						},
					}),
					i(183460, {	-- Goreforged Sickle
						["cost"] = {
							{ "c", ANIMA, 3500 },
							{ "c", GRATEFUL, 10 },
						},
					}),
					i(183455, {	-- Goreforged Staff
						["cost"] = {
							{ "c", ANIMA, 3500 },
							{ "c", GRATEFUL, 10 },
						},
					}),
					i(183454, {	-- Goreforged Warglaive
						["cost"] = {
							{ "c", ANIMA, 3500 },
							{ "c", GRATEFUL, 10 },
						},
					}),
				},
			}),
			n(172176, {	-- Su Zettai <Renown Quartermaster>
				["coord"] = { 52.5, 41.2, SEAT_OF_THE_PRIMUS },
				["g"] = {
					i(181815, {	-- Armored Bonehoof Tauralus (MOUNT!)
						["cost"] = {
							{ "c", ANIMA, 5000 },
							{ "c", GRATEFUL, 100 },
						},
					}),
					i(181821, {	-- Armored Plaguerot Tauralus (MOUNT!)
						["cost"] = {
							{ "c", ANIMA, 100 },
							{ "c", GRATEFUL, 50 },
						},
					}),
					i(182076, {	-- Plaguerot Tauralus (MOUNT!)
						["cost"] = { { "c", ANIMA, 5000 } },
					}),
					i(186488, {	-- Regal Corpsefly (MOUNT!)
						["cost"] = { { "c", ANIMA, 7500 } },
					}),
					i(183462, {	-- Illusion: Unbreakable Resolve (ILLUSION!)
						["cost"] = { { "c", ANIMA, 2500 } },
					}),
					MEMORY_OF_A_VITAL_SACRIFICE,
					i(183601, {	-- Jiggles (PET!)
						["cost"] = {
							{ "c", ANIMA, 1500 },
							{ "c", GRATEFUL, 30 },
						},
					}),
					i(182773, {	-- Necrolord Hearthstone (TOY!)
						["cost"] = { { "c", ANIMA, 750 } },
					}),
					i(184071, {	-- Blooddoused Aranakk Polearm
						["cost"] = {
							{ "c", ANIMA, 3500 },
							{ "c", GRATEFUL, 50 },
						},
					}),
					i(184072, {	-- Brutal Fury-Forged Cleaver
						["cost"] = {
							{ "c", ANIMA, 3500 },
							{ "c", GRATEFUL, 50 },
						},
					}),
					i(184074, {	-- Chopper of the Hidden Hand
						["cost"] = {
							{ "c", ANIMA, 3500 },
							{ "c", GRATEFUL, 50 },
						},
					}),
					i(184070, {	-- Colossal Greataxe of Pandemonium
						["cost"] = {
							{ "c", ANIMA, 3500 },
							{ "c", GRATEFUL, 50 },
						},
					}),
					i(184073, {	-- Crooked Plaguedtouched Dagger
						["cost"] = {
							{ "c", ANIMA, 3500 },
							{ "c", GRATEFUL, 50 },
						},
					}),
					i(184064, {	-- Deathforged Bulwark of Maldraxxus
						["cost"] = {
							{ "c", ANIMA, 3500 },
							{ "c", GRATEFUL, 50 },
						},
					}),
					iensemble(186502, {	-- Ensemble: Marileth's Assistant Vestments
						["cost"] = { { "c", ANIMA, 10000 } },
					}),
					i(184068, {	-- Greatstaff of the Lichsworn
						["cost"] = {
							{ "c", ANIMA, 3500 },
							{ "c", GRATEFUL, 50 },
						},
					}),
					i(184065, {	-- Lambent Plaguetouched Focux
						["cost"] = {
							{ "c", ANIMA, 3500 },
							{ "c", GRATEFUL, 50 },
						},
					}),
					i(181805, {	-- Osteowings of the Necrolords
						["cost"] = {
							{ "c", ANIMA, 3500 },
							{ "c", GRATEFUL, 40 },
						},
					}),
					i(182239, {	-- Prime Conjurer's Cape
						["cost"] = {
							{ "c", ANIMA, 1500 },
							{ "c", GRATEFUL, 10 },
						},
					}),
					i(182237, {	-- Prime Conjurer's Cinch
						["cost"] = {
							{ "c", ANIMA, 3000 },
							{ "c", GRATEFUL, 25 },
						},
					}),
					i(182231, {	-- Prime Conjurer's Cowl
						["cost"] = {
							{ "c", ANIMA, 4000 },
							{ "c", GRATEFUL, 30 },
						},
					}),
					i(182234, {	-- Prime Conjurer's Gloves
						["cost"] = {
							{ "c", ANIMA, 2000 },
							{ "c", GRATEFUL, 15 },
						},
					}),
					i(182235, {	-- Prime Conjurer's Leggings
						["cost"] = {
							{ "c", ANIMA, 3000 },
							{ "c", GRATEFUL, 25 },
						},
					}),
					i(182236, {	-- Prime Conjurer's Mantle
						["cost"] = {
							{ "c", ANIMA, 4000 },
							{ "c", GRATEFUL, 30 },
						},
					}),
					i(182233, {	-- Prime Conjurer's Slippers
						["cost"] = {
							{ "c", ANIMA, 2000 },
							{ "c", GRATEFUL, 15 },
						},
					}),
					i(182232, {	-- Prime Conjurer's Tunic
						["cost"] = {
							{ "c", ANIMA, 4000 },
							{ "c", GRATEFUL, 30 },
						},
					}),
					i(182238, {	-- Prime Conjurer's Wristwraps
						["cost"] = {
							{ "c", ANIMA, 2000 },
							{ "c", GRATEFUL, 15 },
						},
					}),
					i(182214, {	-- Prime Harbinger's Chestguard
						["cost"] = {
							{ "c", ANIMA, 4000 },
							{ "c", GRATEFUL, 30 },
						},
					}),
					i(182216, {	-- Prime Harbinger's Crushers
						["cost"] = {
							{ "c", ANIMA, 2000 },
							{ "c", GRATEFUL, 15 },
						},
					}),
					i(182221, {	-- Prime Harbinger's Greatcloak
						["cost"] = {
							{ "c", ANIMA, 1500 },
							{ "c", GRATEFUL, 10 },
						},
					}),
					i(182213, {	-- Prime Harbinger's Greathelm
						["cost"] = {
							{ "c", ANIMA, 4000 },
							{ "c", GRATEFUL, 30 },
						},
					}),
					i(182217, {	-- Prime Harbinger's Greaves
						["cost"] = {
							{ "c", ANIMA, 3000 },
							{ "c", GRATEFUL, 25 },
						},
					}),
					i(182218, {	-- Prime Harbinger's Pauldrons
						["cost"] = {
							{ "c", ANIMA, 4000 },
							{ "c", GRATEFUL, 30 },
						},
					}),
					i(182215, {	-- Prime Harbinger's Stompers
						["cost"] = {
							{ "c", ANIMA, 2000 },
							{ "c", GRATEFUL, 15 },
						},
					}),
					i(182220, {	-- Prime Harbinger's Vambraces
						["cost"] = {
							{ "c", ANIMA, 2000 },
							{ "c", GRATEFUL, 15 },
						},
					}),
					i(182219, {	-- Prime Harbinger's Warbelt
						["cost"] = {
							{ "c", ANIMA, 3000 },
							{ "c", GRATEFUL, 25 },
						},
					}),
					i(182247, {	-- Prime Tactician's Bracers
						["cost"] = {
							{ "c", ANIMA, 2000 },
							{ "c", GRATEFUL, 15 },
						},
					}),
					i(182244, {	-- Prime Tactician's Chausses
						["cost"] = {
							{ "c", ANIMA, 3000 },
							{ "c", GRATEFUL, 25 },
						},
					}),
					i(182248, {	-- Prime Tactician's Drape
						["cost"] = {
							{ "c", ANIMA, 1500 },
							{ "c", GRATEFUL, 10 },
						},
					}),
					i(182240, {	-- Prime Tactician's Faceguard
						["cost"] = {
							{ "c", ANIMA, 4000 },
							{ "c", GRATEFUL, 30 },
						},
					}),
					i(182243, {	-- Prime Tactician's Gauntlets
						["cost"] = {
							{ "c", ANIMA, 2000 },
							{ "c", GRATEFUL, 15 },
						},
					}),
					i(182246, {	-- Prime Tactician's Girdle
						["cost"] = {
							{ "c", ANIMA, 3000 },
							{ "c", GRATEFUL, 25 },
						},
					}),
					i(182241, {	-- Prime Tactician's Hauberk
						["cost"] = {
							{ "c", ANIMA, 4000 },
							{ "c", GRATEFUL, 30 },
						},
					}),
					i(182242, {	-- Prime Tactician's Sabatons
						["cost"] = {
							{ "c", ANIMA, 2000 },
							{ "c", GRATEFUL, 15 },
						},
					}),
					i(182245, {	-- Prime Tactician's Spaulders
						["cost"] = {
							{ "c", ANIMA, 4000 },
							{ "c", GRATEFUL, 30 },
						},
					}),
					i(182229, {	-- Prime Wraith's Armguards
						["cost"] = {
							{ "c", ANIMA, 2000 },
							{ "c", GRATEFUL, 15 },
						},
					}),
					i(182228, {	-- Prime Wraith's Belt
						["cost"] = {
							{ "c", ANIMA, 3000 },
							{ "c", GRATEFUL, 25 },
						},
					}),
					i(182226, {	-- Prime Wraith's Breeches
						["cost"] = {
							{ "c", ANIMA, 3000 },
							{ "c", GRATEFUL, 25 },
						},
					}),
					i(182224, {	-- Prime Wraith's Boots
						["cost"] = {
							{ "c", ANIMA, 2000 },
							{ "c", GRATEFUL, 15 },
						},
					}),
					i(182230, {	-- Prime Wraith's Cloak
						["cost"] = {
							{ "c", ANIMA, 1500 },
							{ "c", GRATEFUL, 10 },
						},
					}),
					i(182223, {	-- Prime Wraith's Jerkin
						["cost"] = {
							{ "c", ANIMA, 4000 },
							{ "c", GRATEFUL, 30 },
						},
					}),
					i(182227, {	-- Prime Wraith's Shoulders
						["cost"] = {
							{ "c", ANIMA, 4000 },
							{ "c", GRATEFUL, 30 },
						},
					}),
					i(182225, {	-- Prime Wraith's Stranglers
						["cost"] = {
							{ "c", ANIMA, 2000 },
							{ "c", GRATEFUL, 15 },
						},
					}),
					i(182222, {	-- Prime Wraith's Visage
						["cost"] = {
							{ "c", ANIMA, 4000 },
							{ "c", GRATEFUL, 30 },
						},
					}),
					i(184063, {	-- Shank of the Unseen Eye
						["cost"] = {
							{ "c", ANIMA, 3500 },
							{ "c", GRATEFUL, 50 },
						},
					}),
					i(184067, {	-- Skullformed Ossein Warglaive
						["cost"] = {
							{ "c", ANIMA, 3500 },
							{ "c", GRATEFUL, 50 },
						},
					}),
					i(184069, {	-- Soulbarb, the Breathless Kill
						["cost"] = {
							{ "c", ANIMA, 3500 },
							{ "c", GRATEFUL, 50 },
						},
					}),
					i(181801, {	-- Standard of the Necrolords
						["cost"] = { { "c", ANIMA, 3500 } },
					}),
					i(184066, {	-- Wriggling Soulcharged Mace
						["cost"] = {
							{ "c", ANIMA, 3500 },
							{ "c", GRATEFUL, 50 },
						},
					}),
				},
			}),
			n(175312, {	-- Taiya Tacere <Heroic Nathrian Warsmith>
				["coord"] = { 61.2, 47.4, SEAT_OF_THE_PRIMUS },
				["g"] = bubbleDown({ ["modID"] = 5, ["ItemAppearanceModifierID"] = 0, }, {	-- Heroic
					i(184253, {	-- Abdomen Chopper
						["cost"] = {
							{ "i", modItemId(183893,05), 1 },	-- Heroic Abominable Anima Spherule - 213
							{ "i", modItemId(183892,05), 1 },	-- Heroic Mystic Anima Spherule - 213
							{ "i", modItemId(183891,05), 1 },	-- Heroic Venerated Anima Spherule - 213
							{ "i", modItemId(183890,05), 1 },	-- Heroic Zenith Anima Spherule - 213
						},
					}),
					i(184265, {	-- Abdomen Splitter
						["modID"] = 84,
						["cost"] = {
							{ "i", modItemId(183896,84), 1 },	-- Heroic Abominable Anima Spherule - 220
							{ "i", modItemId(183897,84), 1 },	-- Heroic Mystic Anima Spherule - 220
							{ "i", modItemId(183898,84), 1 },	-- Heroic Venerated Anima Spherule - 220
							{ "i", modItemId(183899,84), 1 },	-- Heroic Zenith Anima Spherule - 220
						},
					}),
					i(184252, {	-- Aranakk Torture Device
						["cost"] = {
							{ "i", modItemId(183893,05), 1 },	-- Heroic Abominable Anima Spherule - 213
							{ "i", modItemId(183892,05), 1 },	-- Heroic Mystic Anima Spherule - 213
							{ "i", modItemId(183891,05), 1 },	-- Heroic Venerated Anima Spherule - 213
							{ "i", modItemId(183890,05), 1 },	-- Heroic Zenith Anima Spherule - 213
						},
					}),
					i(184245, {	-- Barrier of the Chosen
						["cost"] = {
							{ "i", modItemId(183888,05), 1 },	-- Heroic Apogee Anima Bead - 213
							{ "i", modItemId(183889,05), 1 },	-- Heroic Thaumaturgic Anima Bead - 213
						},
					}),
					i(184244, {	-- Biting Gutsliver Shank
						["cost"] = {
							{ "i", modItemId(183893,05), 1 },	-- Heroic Abominable Anima Spherule - 213
							{ "i", modItemId(183892,05), 1 },	-- Heroic Mystic Anima Spherule - 213
							{ "i", modItemId(183891,05), 1 },	-- Heroic Venerated Anima Spherule - 213
							{ "i", modItemId(183890,05), 1 },	-- Heroic Zenith Anima Spherule - 213
						},
					}),
					i(184248, {	-- Blightforged Twinblade
						["cost"] = {
							{ "i", modItemId(183893,05), 1 },	-- Heroic Abominable Anima Spherule - 213
							{ "i", modItemId(183892,05), 1 },	-- Heroic Mystic Anima Spherule - 213
							{ "i", modItemId(183891,05), 1 },	-- Heroic Venerated Anima Spherule - 213
							{ "i", modItemId(183890,05), 1 },	-- Heroic Zenith Anima Spherule - 213
						},
					}),
					i(184257, {	-- Burden of the Protectorate
						["modID"] = 84,
						["cost"] = {
							{ "i", modItemId(183895,84), 1 },	-- Heroic Apogee Anima Bead - 220
							{ "i", modItemId(183894,84), 1 },	-- Heroic Thaumaturgic Anima Bead - 220
						},
					}),
					i(184250, {	-- Deadeye Blunderbuss
						["cost"] = {
							{ "i", modItemId(183893,05), 1 },	-- Heroic Abominable Anima Spherule - 213
							{ "i", modItemId(183892,05), 1 },	-- Heroic Mystic Anima Spherule - 213
							{ "i", modItemId(183891,05), 1 },	-- Heroic Venerated Anima Spherule - 213
							{ "i", modItemId(183890,05), 1 },	-- Heroic Zenith Anima Spherule - 213
						},
					}),
					i(184262, {	-- Deadeye Cannon
						["modID"] = 84,
						["cost"] = {
							{ "i", modItemId(183896,84), 1 },	-- Heroic Abominable Anima Spherule - 220
							{ "i", modItemId(183897,84), 1 },	-- Heroic Mystic Anima Spherule - 220
							{ "i", modItemId(183898,84), 1 },	-- Heroic Venerated Anima Spherule - 220
							{ "i", modItemId(183899,84), 1 },	-- Heroic Zenith Anima Spherule - 220
						},
					}),
					i(184266, {	-- Fleshscourge Sickle
						["modID"] = 84,
						["cost"] = {
							{ "i", modItemId(183896,84), 1 },	-- Heroic Abominable Anima Spherule - 220
							{ "i", modItemId(183897,84), 1 },	-- Heroic Mystic Anima Spherule - 220
							{ "i", modItemId(183898,84), 1 },	-- Heroic Venerated Anima Spherule - 220
							{ "i", modItemId(183899,84), 1 },	-- Heroic Zenith Anima Spherule - 220
						},
					}),
					i(184246, {	-- Frigid Invoker's Focus
						["cost"] = {
							{ "i", modItemId(183888,05), 1 },	-- Heroic Apogee Anima Bead - 213
							{ "i", modItemId(183889,05), 1 },	-- Heroic Thaumaturgic Anima Bead - 213
						},
					}),
					i(184259, {	-- Grasp from the Grave
						["modID"] = 84,
						["cost"] = {
							{ "i", modItemId(183896,84), 1 },	-- Heroic Abominable Anima Spherule - 220
							{ "i", modItemId(183897,84), 1 },	-- Heroic Mystic Anima Spherule - 220
							{ "i", modItemId(183898,84), 1 },	-- Heroic Venerated Anima Spherule - 220
							{ "i", modItemId(183899,84), 1 },	-- Heroic Zenith Anima Spherule - 220
						},
					}),
					i(184261, {	-- Greatstaff of the Lichsworn General
						["modID"] = 84,
						["cost"] = {
							{ "i", modItemId(183896,84), 1 },	-- Heroic Abominable Anima Spherule - 220
							{ "i", modItemId(183897,84), 1 },	-- Heroic Mystic Anima Spherule - 220
							{ "i", modItemId(183898,84), 1 },	-- Heroic Venerated Anima Spherule - 220
							{ "i", modItemId(183899,84), 1 },	-- Heroic Zenith Anima Spherule - 220
						},
					}),
					i(184247, {	-- Grip of the Dead
						["cost"] = {
							{ "i", modItemId(183893,05), 1 },	-- Heroic Abominable Anima Spherule - 213
							{ "i", modItemId(183892,05), 1 },	-- Heroic Mystic Anima Spherule - 213
							{ "i", modItemId(183891,05), 1 },	-- Heroic Venerated Anima Spherule - 213
							{ "i", modItemId(183890,05), 1 },	-- Heroic Zenith Anima Spherule - 213
						},
					}),
					i(184255, {	-- Gristlegore Hacker
						["cost"] = {
							{ "i", modItemId(183893,05), 1 },	-- Heroic Abominable Anima Spherule - 213
							{ "i", modItemId(183892,05), 1 },	-- Heroic Mystic Anima Spherule - 213
							{ "i", modItemId(183891,05), 1 },	-- Heroic Venerated Anima Spherule - 213
							{ "i", modItemId(183890,05), 1 },	-- Heroic Zenith Anima Spherule - 213
						},
					}),
					i(184264, {	-- Krexus's Bloodletting Polearm
						["modID"] = 84,
						["cost"] = {
							{ "i", modItemId(183896,84), 1 },	-- Heroic Abominable Anima Spherule - 220
							{ "i", modItemId(183897,84), 1 },	-- Heroic Mystic Anima Spherule - 220
							{ "i", modItemId(183898,84), 1 },	-- Heroic Venerated Anima Spherule - 220
							{ "i", modItemId(183899,84), 1 },	-- Heroic Zenith Anima Spherule - 220
						},
					}),
					i(184258, {	-- Malevolent Invoker's Crystal
						["modID"] = 84,
						["cost"] = {
							{ "i", modItemId(183895,84), 1 },	-- Heroic Apogee Anima Bead - 220
							{ "i", modItemId(183894,84), 1 },	-- Heroic Thaumaturgic Anima Bead - 220
						},
					}),
					i(184251, {	-- Ossified Broadaxe
						["cost"] = {
							{ "i", modItemId(183893,05), 1 },	-- Heroic Abominable Anima Spherule - 213
							{ "i", modItemId(183892,05), 1 },	-- Heroic Mystic Anima Spherule - 213
							{ "i", modItemId(183891,05), 1 },	-- Heroic Venerated Anima Spherule - 213
							{ "i", modItemId(183890,05), 1 },	-- Heroic Zenith Anima Spherule - 213
						},
					}),
					i(184263, {	-- Ossified Greataxe
						["modID"] = 84,
						["cost"] = {
							{ "i", modItemId(183896,84), 1 },	-- Heroic Abominable Anima Spherule - 220
							{ "i", modItemId(183897,84), 1 },	-- Heroic Mystic Anima Spherule - 220
							{ "i", modItemId(183898,84), 1 },	-- Heroic Venerated Anima Spherule - 220
							{ "i", modItemId(183899,84), 1 },	-- Heroic Zenith Anima Spherule - 220
						},
					}),
					i(184254, {	-- Plaguespine Sickle
						["cost"] = {
							{ "i", modItemId(183893,05), 1 },	-- Heroic Abominable Anima Spherule - 213
							{ "i", modItemId(183892,05), 1 },	-- Heroic Mystic Anima Spherule - 213
							{ "i", modItemId(183891,05), 1 },	-- Heroic Venerated Anima Spherule - 213
							{ "i", modItemId(183890,05), 1 },	-- Heroic Zenith Anima Spherule - 213
						},
					}),
					i(184267, {	-- Skullcleaver of the Merciless One
						["modID"] = 84,
						["cost"] = {
							{ "i", modItemId(183896,84), 1 },	-- Heroic Abominable Anima Spherule - 220
							{ "i", modItemId(183897,84), 1 },	-- Heroic Mystic Anima Spherule - 220
							{ "i", modItemId(183898,84), 1 },	-- Heroic Venerated Anima Spherule - 220
							{ "i", modItemId(183899,84), 1 },	-- Heroic Zenith Anima Spherule - 220
						},
					}),
					i(184249, {	-- Staff of the Lichsworn Lieutenant
						["cost"] = {
							{ "i", modItemId(183893,05), 1 },	-- Heroic Abominable Anima Spherule - 213
							{ "i", modItemId(183892,05), 1 },	-- Heroic Mystic Anima Spherule - 213
							{ "i", modItemId(183891,05), 1 },	-- Heroic Venerated Anima Spherule - 213
							{ "i", modItemId(183890,05), 1 },	-- Heroic Zenith Anima Spherule - 213
						},
					}),
					i(184256, {	-- Vicious Goreripper Shank
						["modID"] = 84,
						["cost"] = {
							{ "i", modItemId(183896,84), 1 },	-- Heroic Abominable Anima Spherule - 220
							{ "i", modItemId(183897,84), 1 },	-- Heroic Mystic Anima Spherule - 220
							{ "i", modItemId(183898,84), 1 },	-- Heroic Venerated Anima Spherule - 220
							{ "i", modItemId(183899,84), 1 },	-- Heroic Zenith Anima Spherule - 220
						},
					}),
					i(184260, {	-- Warglaive of the Hidden Fiend
						["modID"] = 84,
						["cost"] = {
							{ "i", modItemId(183896,84), 1 },	-- Heroic Abominable Anima Spherule - 220
							{ "i", modItemId(183897,84), 1 },	-- Heroic Mystic Anima Spherule - 220
							{ "i", modItemId(183898,84), 1 },	-- Heroic Venerated Anima Spherule - 220
							{ "i", modItemId(183899,84), 1 },	-- Heroic Zenith Anima Spherule - 220
						},
					}),
				}),
			}),
		}),
	}),
})));

for _,t in ipairs({CHRONICLE_OF_LOST_MEMORIES, MEMORY_OF_A_VITAL_SACRIFICE}) do
	t.customCollect = nil;
end

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.SL, bubbleDownSelf({ ["timeline"] = { ADDED_9_0_2_LAUNCH } }, {
	n(NECROLORD,  bubbleDown({ ["customCollect"] = "SL_COV_NEC" }, {
		n(VENDORS, {
			q(62005),	-- unlocking Rationale of Maldraxxus set (TransmogSetID 2031, Prime Conjurer's items)
			q(62009),	-- unlocking Wisdom of Maldraxxus set (TransmogSetID 2032, Bladesworn Conjurer's items)
			q(62008),	-- unlocking Sight of Maldraxxus set (TransmogSetID 2035, Bladesworn Wraith's items)
			q(62004),	-- unlocking Guile of Maldraxxus set (TransmogSetID 2036, Prime Wraith's items)
			q(62007),	-- unlocking Will of Maldraxxus set (TransmogSetID 2041, Bladesworn Tactician's items)
			q(62003),	-- unlocking Alacrity of Maldraxxus set (TransmogSetID 2042, Prime Tactician's items)
			q(62006),	-- unlocking Might of Maldraxxus set (TransmogSetID 2043, Bladesworn Harbinger's items)
			q(62002),	-- unlocking Authority of Maldraxxus set (TransmogSetID 2044, Prime Harbinger's items)
		}),
	})),
})));