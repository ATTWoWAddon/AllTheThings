-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
local ANACHRONOS_COORD;
-- #if AFTER TBC
ANACHRONOS_COORD = { 41.6, 49.8, CAVERNS_OF_TIME };
-- #else
ANACHRONOS_COORD = { 65, 50, TANARIS };
-- #endif
local SILITHID_ROYALTY_SHARED_DROPS = COMMON_BOSS_DROPS;
-- #if ANYCLASSIC
SILITHID_ROYALTY_SHARED_DROPS = createHeader({
	readable = "Silithid Royalty",
	icon = 133575,
	text = {
		en = "Silithid Royalty",
	},
});
-- #endif
root(ROOTS.Instances, expansion(EXPANSION.CLASSIC, applyclassicphase(PHASE_FIVE, {
	inst(744, {	-- Temple of Ahn'Qiraj
		["lore"] = "Dark whispers ride on the winds of Silithus desert. An old god stirs in his wretched lair and the entire world shall soon be the target of his wrath.\n\nAfter thousands of years of slumber, the old god, C'thun has awakened and is quickly regenerating his power. Once he has reached full potential nothing will be able to stop him. The dragons that so humbly sacrificed themselves so long ago to imprison C'thun are weakened or enslaved in the temple, so the charge of protecting the land falls to other heroes.\n\nHeroes must enter Temple of Ahn'Qiraj, challenge C'thun's most wicked servants, and slay a god. The road will not be easy and it is wrought with peril at every turn. Will the heroes turn back now or face C'thun in his mighty lair and put an end to him once and for all?",
		-- #if BEFORE WRATH
		["zone-text-areaID"] = 3428,	-- Ahn'Qiraj
		-- #endif
		["coord"] = { 46.76, 7.53, AHNQIRAJ_THE_FALLEN_KINGDOM },
		["maps"] = {
			TEMPLE_OF_AHNQIRAJ,
			TEMPLE_OF_AHNQIRAJ_LEVEL2,
			TEMPLE_OF_AHNQIRAJ_LEVEL3,
		},
		["isRaid"] = true,
		["lvl"] = 50,
		["groups"] = {
			n(ACHIEVEMENTS, {
				ach(11743, {["timeline"] = {ADDED_7_2_0}}),	-- Accessor-Eyes (Temple of Ahn'Qiraj)
				achWithRep(956, FACTION_BROOD_OF_NOZDORMU, {	-- Brood of Nozdormu
					["maps"] = { CAVERNS_OF_TIME, SILITHUS },
				}),
				ach(424, {	-- Why? Because It's Red
					["provider"] = { "i", 21321 },	-- Red Qiraji Resonating Crystal
					["filterID"] = MOUNTS,
				}),
			}),
			n(FACTIONS, {
				faction(FACTION_BROOD_OF_NOZDORMU, {	-- Brood of Nozdormu
					["icon"] = 134156,
					["maps"] = { CAVERNS_OF_TIME, SILITHUS },
				}),
			}),
			n(QUESTS, {
				cl(DRUID, bubbleDown({ ["classes"] = { DRUID } }, {
					q(8667, {	-- Genesis Helm
						["qg"] = 15502,	-- Andorgos
						["minReputation"] = { FACTION_BROOD_OF_NOZDORMU, FRIENDLY },	-- Brood of Nozdormu, Friendly.
						["repeatable"] = true,
						["cost"] = {
							{ "i", 20930, 1 },	-- Vek'lor's Diadem
							{ "i", 20879, 2 },	-- Idol of Life
							{ "i", 20859, 5 },	-- Gold Scarab
							{ "i", 20863, 5 },	-- Clay Scarab
						},
						["groups"] = {
							i(21353),	-- Genesis Helm
						},
					}),
					q(8669, {	-- Genesis Shoulderpads
						["qg"] = 15502,	-- Andorgos
						["minReputation"] = { FACTION_BROOD_OF_NOZDORMU, NEUTRAL },	-- Brood of Nozdormu, Neutral.
						["repeatable"] = true,
						["cost"] = {
							{ "i", 20932, 1 },	-- Qiraji Bindings of Dominance
							{ "i", 20881, 2 },	-- Idol of Strife
							{ "i", 20859, 5 },	-- Gold Scarab
							{ "i", 20864, 5 },	-- Bone Scarab
						},
						["groups"] = {
							i(21354),	-- Genesis Shoulderpads
						},
					}),
					q(8666, {	-- Genesis Vest
						["qg"] = 15504,	-- Vethsera
						["minReputation"] = { FACTION_BROOD_OF_NOZDORMU, HONORED },	-- Brood of Nozdormu, Honored.
						["repeatable"] = true,
						["cost"] = {
							{ "i", 20933, 1 },	-- Husk of the Old God
							{ "i", 20878, 2 },	-- Idol of Rebirth
							{ "i", 20861, 5 },	-- Bronze Scarab
							{ "i", 20865, 5 },	-- Ivory Scarab
						},
						["groups"] = {
							i(21357),	-- Genesis Vest
						},
					}),
					q(8668, {	-- Genesis Trousers
						["qg"] = 15503,	-- Kandrostrasz
						["minReputation"] = { FACTION_BROOD_OF_NOZDORMU, FRIENDLY },	-- Brood of Nozdormu, Friendly.
						["repeatable"] = true,
						["cost"] = {
							{ "i", 20931, 1 },	-- Skin of the Great Sandworm
							{ "i", 20882, 2 },	-- Idol of War
							{ "i", 20858, 5 },	-- Stone Scarab
							{ "i", 20862, 5 },	-- Crystal Scarab
						},
						["groups"] = {
							i(21356),	-- Genesis Trousers
						},
					}),
					q(8665, {	-- Genesis Boots
						["qg"] = 15503,	-- Kandrostrasz
						["minReputation"] = { FACTION_BROOD_OF_NOZDORMU, NEUTRAL },	-- Brood of Nozdormu, Neutral.
						["repeatable"] = true,
						["cost"] = {
							{ "i", 20932, 1 },	-- Qiraji Bindings of Dominance
							{ "i", 20878, 2 },	-- Idol of Rebirth
							{ "i", 20858, 5 },	-- Stone Scarab
							{ "i", 20860, 5 },	-- Silver Scarab
						},
						["groups"] = {
							i(21355),	-- Genesis Boots
						},
					}),
				})),
				cl(HUNTER, bubbleDown({ ["classes"] = { HUNTER } }, {
					q(8657, {	-- Striker's Diadem
						["qg"] = 15502,	-- Andorgos
						["minReputation"] = { FACTION_BROOD_OF_NOZDORMU, FRIENDLY },	-- Brood of Nozdormu, Friendly.
						["repeatable"] = true,
						["cost"] = {
							{ "i", 20930, 1 },	-- Vek'lor's Diadem
							{ "i", 20881, 2 },	-- Idol of Strife
							{ "i", 20861, 5 },	-- Bronze Scarab
							{ "i", 20865, 5 },	-- Ivory Scarab
						},
						["groups"] = {
							i(21366),	-- Striker's Diadem
						},
					}),
					q(8659, {	-- Striker's Pauldrons
						["qg"] = 15502,	-- Andorgos
						["minReputation"] = { FACTION_BROOD_OF_NOZDORMU, NEUTRAL },	-- Brood of Nozdormu, Neutral.
						["repeatable"] = true,
						["cost"] = {
							{ "i", 20928, 1 },	-- Qiraji Bindings of Command
							{ "i", 20882, 2 },	-- Idol of War
							{ "i", 20862, 5 },	-- Crystal Scarab
							{ "i", 20865, 5 },	-- Ivory Scarab
						},
						["groups"] = {
							i(21367),	-- Striker's Pauldrons
						},
					}),
					q(8656, {	-- Striker's Hauberk
						["qg"] = 15504,	-- Vethsera
						["minReputation"] = { FACTION_BROOD_OF_NOZDORMU, HONORED },	-- Brood of Nozdormu, Honored.
						["repeatable"] = true,
						["cost"] = {
							{ "i", 20929, 1 },	-- Carapace of the Old God
							{ "i", 20879, 2 },	-- Idol of Life
							{ "i", 20859, 5 },	-- Gold Scarab
							{ "i", 20863, 5 },	-- Clay Scarab
						},
						["groups"] = {
							i(21370),	-- Striker's Hauberk
						},
					}),
					q(8658, {	-- Striker's Leggings
						["qg"] = 15503,	-- Kandrostrasz
						["minReputation"] = { FACTION_BROOD_OF_NOZDORMU, FRIENDLY },	-- Brood of Nozdormu, Friendly.
						["repeatable"] = true,
						["cost"] = {
							{ "i", 20931, 1 },	-- Skin of the Great Sandworm
							{ "i", 20874, 2 },	-- Idol of the Sun
							{ "i", 20860, 5 },	-- Silver Scarab
							{ "i", 20864, 5 },	-- Bone Scarab
						},
						["groups"] = {
							i(21368),	-- Striker's Leggings
						},
					}),
					q(8626, {	-- Striker's Footguards
						["qg"] = 15503,	-- Kandrostrasz
						["minReputation"] = { FACTION_BROOD_OF_NOZDORMU, NEUTRAL },	-- Brood of Nozdormu, Neutral.
						["repeatable"] = true,
						["cost"] = {
							{ "i", 20928, 1 },	-- Qiraji Bindings of Command
							{ "i", 20879, 2 },	-- Idol of Life
							{ "i", 20858, 5 },	-- Stone Scarab
							{ "i", 20864, 5 },	-- Bone Scarab
						},
						["groups"] = {
							i(21365),	-- Striker's Footguards
						},
					}),
				})),
				cl(MAGE, bubbleDown({ ["classes"] = { MAGE } }, {
					q(8632, {	-- Enigma Circlet
						["qg"] = 15502,	-- Andorgos
						["minReputation"] = { FACTION_BROOD_OF_NOZDORMU, FRIENDLY },	-- Brood of Nozdormu, Friendly.
						["repeatable"] = true,
						["cost"] = {
							{ "i", 20926, 1 },	-- Vek'nilash's Circlet
							{ "i", 20875, 2 },	-- Idol of Night
							{ "i", 20861, 5 },	-- Bronze Scarab
							{ "i", 20865, 5 },	-- Ivory Scarab
						},
						["groups"] = {
							i(21347),	-- Enigma Circlet
						},
					}),
					q(8625, {	-- Enigma Shoulderpads
						["qg"] = 15502,	-- Andorgos
						["minReputation"] = { FACTION_BROOD_OF_NOZDORMU, NEUTRAL },	-- Brood of Nozdormu, Neutral.
						["repeatable"] = true,
						["cost"] = {
							{ "i", 20932, 1 },	-- Qiraji Bindings of Dominance
							{ "i", 20876, 2 },	-- Idol of Death
							{ "i", 20858, 5 },	-- Stone Scarab
							{ "i", 20861, 5 },	-- Bronze Scarab
						},
						["groups"] = {
							i(21345),	-- Enigma Shoulderpads
						},
					}),
					q(8633, {	-- Enigma Robes
						["qg"] = 15504,	-- Vethsera
						["minReputation"] = { FACTION_BROOD_OF_NOZDORMU, HONORED },	-- Brood of Nozdormu, Honored.
						["repeatable"] = true,
						["cost"] = {
							{ "i", 20933, 1 },	-- Husk of the Old God
							{ "i", 20874, 2 },	-- Idol of the Sun
							{ "i", 20859, 5 },	-- Gold Scarab
							{ "i", 20863, 5 },	-- Clay Scarab
						},
						["groups"] = {
							i(21343),	-- Enigma Robes
						},
					}),
					q(8631, {	-- Enigma Leggings
						["qg"] = 15503,	-- Kandrostrasz
						["minReputation"] = { FACTION_BROOD_OF_NOZDORMU, FRIENDLY },	-- Brood of Nozdormu, Friendly.
						["repeatable"] = true,
						["cost"] = {
							{ "i", 20927, 1 },	-- Ouro's Intact Hide
							{ "i", 20877, 2 },	-- Idol of the Sage
							{ "i", 20860, 5 },	-- Silver Scarab
							{ "i", 20864, 5 },	-- Bone Scarab
						},
						["groups"] = {
							i(21346),	-- Enigma Leggings
						},
					}),
					q(8634, {	-- Enigma Boots
						["qg"] = 15503,	-- Kandrostrasz
						["minReputation"] = { FACTION_BROOD_OF_NOZDORMU, NEUTRAL },	-- Brood of Nozdormu, Neutral.
						["repeatable"] = true,
						["cost"] = {
							{ "i", 20932, 1 },	-- Qiraji Bindings of Dominance
							{ "i", 20874, 2 },	-- Idol of the Sun
							{ "i", 20860, 5 },	-- Silver Scarab
							{ "i", 20862, 5 },	-- Crystal Scarab
						},
						["groups"] = {
							i(21344),	-- Enigma Boots
						},
					}),
				})),
				cl(PALADIN, bubbleDown({ ["classes"] = { PALADIN } }, {
					q(8628, {	-- Avenger's Crown
						["qg"] = 15502,	-- Andorgos
						["minReputation"] = { FACTION_BROOD_OF_NOZDORMU, FRIENDLY },	-- Brood of Nozdormu, Friendly.
						["repeatable"] = true,
						["cost"] = {
							{ "i", 20930, 1 },	-- Vek'lor's Diadem
							{ "i", 20878, 2 },	-- Idol of Rebirth
							{ "i", 20858, 5 },	-- Stone Scarab
							{ "i", 20862, 5 },	-- Crystal Scarab
						},
						["groups"] = {
							i(21387),	-- Avenger's Crown
						},
					}),
					q(8630, {	-- Avenger's Pauldrons
						["qg"] = 15502,	-- Andorgos
						["minReputation"] = { FACTION_BROOD_OF_NOZDORMU, NEUTRAL },	-- Brood of Nozdormu, Neutral.
						["repeatable"] = true,
						["cost"] = {
							{ "i", 20932, 1 },	-- Qiraji Bindings of Dominance
							{ "i", 20879, 2 },	-- Idol of Life
							{ "i", 20859, 5 },	-- Gold Scarab
							{ "i", 20862, 5 },	-- Crystal Scarab
						},
						["groups"] = {
							i(21391),	-- Avenger's Pauldrons
						},
					}),
					q(8627, {	-- Avenger's Breastplate
						["qg"] = 15504,	-- Vethsera
						["minReputation"] = { FACTION_BROOD_OF_NOZDORMU, HONORED },	-- Brood of Nozdormu, Honored.
						["repeatable"] = true,
						["cost"] = {
							{ "i", 20929, 1 },	-- Carapace of the Old God
							{ "i", 20877, 2 },	-- Idol of the Sage
							{ "i", 20860, 5 },	-- Silver Scarab
							{ "i", 20864, 5 },	-- Bone Scarab
						},
						["groups"] = {
							i(21389),	-- Avenger's Breastplate
						},
					}),
					q(8629, {	-- Avenger's Legguards
						["qg"] = 15503,	-- Kandrostrasz
						["minReputation"] = { FACTION_BROOD_OF_NOZDORMU, FRIENDLY },	-- Brood of Nozdormu, Friendly.
						["repeatable"] = true,
						["cost"] = {
							{ "i", 20931, 1 },	-- Skin of the Great Sandworm
							{ "i", 20881, 2 },	-- Idol of Strife
							{ "i", 20865, 5 },	-- Ivory Scarab
							{ "i", 20861, 5 },	-- Bronze Scarab
						},
						["groups"] = {
							i(21390),	-- Avenger's Legguards
						},
					}),
					q(8655, {	-- Avenger's Greaves
						["qg"] = 15503,	-- Kandrostrasz
						["minReputation"] = { FACTION_BROOD_OF_NOZDORMU, NEUTRAL },	-- Brood of Nozdormu, Neutral.
						["repeatable"] = true,
						["cost"] = {
							{ "i", 20932, 1 },	-- Qiraji Bindings of Dominance
							{ "i", 20877, 2 },	-- Idol of the Sage
							{ "i", 20861, 5 },	-- Bronze Scarab
							{ "i", 20863, 5 },	-- Clay Scarab
						},
						["groups"] = {
							i(21388),	-- Avenger's Greaves
						},
					}),
				})),
				cl(PRIEST, bubbleDown({ ["classes"] = { PRIEST } }, {
					q(8592, {	-- Tiara of the Oracle
						["qg"] = 15502,	-- Andorgos
						["minReputation"] = { FACTION_BROOD_OF_NOZDORMU, FRIENDLY },	-- Brood of Nozdormu, Friendly.
						["repeatable"] = true,
						["cost"] = {
							{ "i", 20926, 1 },	-- Vek'nilash's Circlet
							{ "i", 20877, 2 },	-- Idol of the Sage
							{ "i", 20860, 5 },	-- Silver Scarab
							{ "i", 20864, 5 },	-- Bone Scarab
						},
						["groups"] = {
							i(21348),	-- Tiara of the Oracle
						},
					}),
					q(8594, {	-- Mantle of the Oracle
						["qg"] = 15502,	-- Andorgos
						["minReputation"] = { FACTION_BROOD_OF_NOZDORMU, NEUTRAL },	-- Brood of Nozdormu, Neutral.
						["repeatable"] = true,
						["cost"] = {
							{ "i", 20928, 1 },	-- Qiraji Bindings of Command
							{ "i", 20878, 2 },	-- Idol of Rebirth
							{ "i", 20860, 5 },	-- Silver Scarab
							{ "i", 20865, 5 },	-- Ivory Scarab
						},
						["groups"] = {
							i(21350),	-- Mantle of the Oracle
						},
					}),
					q(8603, {	-- Vestments of the Oracle
						["qg"] = 15504,	-- Vethsera
						["minReputation"] = { FACTION_BROOD_OF_NOZDORMU, HONORED },	-- Brood of Nozdormu, Honored.
						["repeatable"] = true,
						["cost"] = {
							{ "i", 20933, 1 },	-- Husk of the Old God
							{ "i", 20876, 2 },	-- Idol of Death
							{ "i", 20858, 5 },	-- Stone Scarab
							{ "i", 20862, 5 },	-- Crystal Scarab
						},
						["groups"] = {
							i(21351),	-- Vestments of the Oracle
						},
					}),
					q(8593, {	-- Trousers of the Oracle
						["qg"] = 15503,	-- Kandrostrasz
						["minReputation"] = { FACTION_BROOD_OF_NOZDORMU, FRIENDLY },	-- Brood of Nozdormu, Friendly.
						["repeatable"] = true,
						["cost"] = {
							{ "i", 20927, 1 },	-- Ouro's Intact Hide
							{ "i", 20879, 2 },	-- Idol of Life
							{ "i", 20859, 5 },	-- Gold Scarab
							{ "i", 20863, 5 },	-- Clay Scarab
						},
						["groups"] = {
							i(21352),	-- Trousers of the Oracle
						},
					}),
					q(8596, {	-- Footwraps of the Oracle
						["qg"] = 15503,	-- Kandrostrasz
						["minReputation"] = { FACTION_BROOD_OF_NOZDORMU, NEUTRAL },	-- Brood of Nozdormu, Neutral.
						["repeatable"] = true,
						["cost"] = {
							{ "i", 20928, 1 },	-- Qiraji Bindings of Command
							{ "i", 20876, 2 },	-- Idol of Death
							{ "i", 20861, 5 },	-- Bronze Scarab
							{ "i", 20859, 5 },	-- Gold Scarab
						},
						["groups"] = {
							i(21349),	-- Footwraps of the Oracle
						},
					}),
				})),
				cl(ROGUE, bubbleDown({ ["classes"] = { ROGUE } }, {
					q(8639, {	-- Deathdealer's Helm
						["qg"] = 15502,	-- Andorgos
						["minReputation"] = { FACTION_BROOD_OF_NOZDORMU, FRIENDLY },	-- Brood of Nozdormu, Friendly.
						["repeatable"] = true,
						["cost"] = {
							{ "i", 20930, 1 },	-- Vek'lor's Diadem
							{ "i", 20882, 2 },	-- Idol of War
							{ "i", 20863, 5 },	-- Clay Scarab
							{ "i", 20859, 5 },	-- Gold Scarab
						},
						["groups"] = {
							i(21360),	-- Deathdealer's Helm
						},
					}),
					q(8641, {	-- Deathdealer's Spaulders
						["qg"] = 15502,	-- Andorgos
						["minReputation"] = { FACTION_BROOD_OF_NOZDORMU, NEUTRAL },	-- Brood of Nozdormu, Neutral.
						["repeatable"] = true,
						["cost"] = {
							{ "i", 20928, 1 },	-- Qiraji Bindings of Command
							{ "i", 20874, 2 },	-- Idol of the Sun
							{ "i", 20860, 5 },	-- Silver Scarab
							{ "i", 20863, 5 },	-- Clay Scarab
						},
						["groups"] = {
							i(21361),	-- Deathdealer's Spaulders
						},
					}),
					q(8638, {	-- Deathdealer's Vest
						["qg"] = 15504,	-- Vethsera
						["minReputation"] = { FACTION_BROOD_OF_NOZDORMU, HONORED },	-- Brood of Nozdormu, Honored.
						["repeatable"] = true,
						["cost"] = {
							{ "i", 20929, 1 },	-- Carapace of the Old God
							{ "i", 20881, 2 },	-- Idol of Strife
							{ "i", 20861, 5 },	-- Bronze Scarab
							{ "i", 20865, 5 },	-- Ivory Scarab
						},
						["groups"] = {
							i(21364),	-- Deathdealer's Vest
						},
					}),
					q(8640, {	-- Deathdealer's Leggings
						["qg"] = 15503,	-- Kandrostrasz
						["minReputation"] = { FACTION_BROOD_OF_NOZDORMU, FRIENDLY },	-- Brood of Nozdormu, Friendly.
						["repeatable"] = true,
						["cost"] = {
							{ "i", 20927, 1 },	-- Ouro's Intact Hide
							{ "i", 20875, 2 },	-- Idol of Night
							{ "i", 20858, 5 },	-- Stone Scarab
							{ "i", 20862, 5 },	-- Crystal Scarab
						},
						["groups"] = {
							i(21362),	-- Deathdealer's Leggings
						},
					}),
					q(8637, {	-- Deathdealer's Boots
						["qg"] = 15503,	-- Kandrostrasz
						["minReputation"] = { FACTION_BROOD_OF_NOZDORMU, NEUTRAL },	-- Brood of Nozdormu, Neutral.
						["repeatable"] = true,
						["cost"] = {
							{ "i", 20928, 1 },	-- Qiraji Bindings of Command
							{ "i", 20881, 2 },	-- Idol of Strife
							{ "i", 20862, 5 },	-- Crystal Scarab
							{ "i", 20864, 5 },	-- Bone Scarab
						},
						["groups"] = {
							i(21359),	-- Deathdealer's Boots
						},
					}),
				})),
				cl(SHAMAN, bubbleDown({ ["classes"] = { SHAMAN } }, {
					q(8623, {	-- Stormcaller's Diadem
						["qg"] = 15502,	-- Andorgos
						["minReputation"] = { FACTION_BROOD_OF_NOZDORMU, FRIENDLY },	-- Brood of Nozdormu, Friendly.
						["repeatable"] = true,
						["cost"] = {
							{ "i", 20930, 1 },	-- Vek'lor's Diadem
							{ "i", 20878, 2 },	-- Idol of Rebirth
							{ "i", 20858, 5 },	-- Stone Scarab
							{ "i", 20862, 5 },	-- Crystal Scarab
						},
						["groups"] = {
							i(21372),	-- Stormcaller's Diadem
						},
					}),
					q(8602, {	-- Stormcaller's Pauldrons
						["qg"] = 15502,	-- Andorgos
						["minReputation"] = { FACTION_BROOD_OF_NOZDORMU, NEUTRAL },	-- Brood of Nozdormu, Neutral.
						["repeatable"] = true,
						["cost"] = {
							{ "i", 20932, 1 },	-- Qiraji Bindings of Dominance
							{ "i", 20879, 2 },	-- Idol of Life
							{ "i", 20859, 5 },	-- Gold Scarab
							{ "i", 20862, 5 },	-- Crystal Scarab
						},
						["groups"] = {
							i(21376),	-- Stormcaller's Pauldrons
						},
					}),
					q(8622, {	-- Stormcaller's Hauberk
						["qg"] = 15504,	-- Vethsera
						["minReputation"] = { FACTION_BROOD_OF_NOZDORMU, HONORED },	-- Brood of Nozdormu, Honored.
						["repeatable"] = true,
						["cost"] = {
							{ "i", 20929, 1 },	-- Carapace of the Old God
							{ "i", 20877, 2 },	-- Idol of the Sage
							{ "i", 20860, 5 },	-- Silver Scarab
							{ "i", 20864, 5 },	-- Bone Scarab
						},
						["groups"] = {
							i(21374),	-- Stormcaller's Hauberk
						},
					}),
					q(8624, {	-- Stormcaller's Leggings
						["qg"] = 15503,	-- Kandrostrasz
						["minReputation"] = { FACTION_BROOD_OF_NOZDORMU, FRIENDLY },	-- Brood of Nozdormu, Friendly.
						["repeatable"] = true,
						["cost"] = {
							{ "i", 20931, 1 },	-- Skin of the Great Sandworm
							{ "i", 20881, 2 },	-- Idol of Strife
							{ "i", 20865, 5 },	-- Ivory Scarab
							{ "i", 20861, 5 },	-- Bronze Scarab
						},
						["groups"] = {
							i(21375),	-- Stormcaller's Leggings
						},
					}),
					q(8621, {	-- Stormcaller's Footguards
						["qg"] = 15503,	-- Kandrostrasz
						["minReputation"] = { FACTION_BROOD_OF_NOZDORMU, NEUTRAL },	-- Brood of Nozdormu, Neutral.
						["repeatable"] = true,
						["cost"] = {
							{ "i", 20932, 1 },	-- Qiraji Bindings of Dominance
							{ "i", 20877, 2 },	-- Idol of the Sage
							{ "i", 20861, 5 },	-- Bronze Scarab
							{ "i", 20863, 5 },	-- Clay Scarab
						},
						["groups"] = {
							i(21373),	-- Stormcaller's Footguards
						},
					}),
				})),
				cl(WARLOCK, bubbleDown({ ["classes"] = { WARLOCK } }, {
					q(8662, {	-- Doomcaller's Circlet
						["qg"] = 15502,	-- Andorgos
						["minReputation"] = { FACTION_BROOD_OF_NOZDORMU, FRIENDLY },	-- Brood of Nozdormu, Friendly.
						["repeatable"] = true,
						["cost"] = {
							{ "i", 20926, 1 },	-- Vek'nilash's Circlet
							{ "i", 20876, 2 },	-- Idol of Death
							{ "i", 20860, 5 },	-- Silver Scarab
							{ "i", 20864, 5 },	-- Bone Scarab
						},
						["groups"] = {
							i(21337),	-- Doomcaller's Circlet
						},
					}),
					q(8664, {	-- Doomcaller's Mantle
						["qg"] = 15502,	-- Andorgos
						["minReputation"] = { FACTION_BROOD_OF_NOZDORMU, NEUTRAL },	-- Brood of Nozdormu, Neutral.
						["repeatable"] = true,
						["cost"] = {
							{ "i", 20932, 1 },	-- Qiraji Bindings of Dominance
							{ "i", 20877, 2 },	-- Idol of the Sage
							{ "i", 20861, 5 },	-- Bronze Scarab
							{ "i", 20864, 5 },	-- Bone Scarab
						},
						["groups"] = {
							i(21335),	-- Doomcaller's Mantle
						},
					}),
					q(8661, {	-- Doomcaller's Robes
						["qg"] = 15504,	-- Vethsera
						["minReputation"] = { FACTION_BROOD_OF_NOZDORMU, HONORED },	-- Brood of Nozdormu, Honored.
						["repeatable"] = true,
						["cost"] = {
							{ "i", 20933, 1 },	-- Husk of the Old God
							{ "i", 20875, 2 },	-- Idol of Night
							{ "i", 20862, 5 },	-- Crystal Scarab
							{ "i", 20858, 5 },	-- Stone Scarab
						},
						["groups"] = {
							i(21334),	-- Doomcaller's Robes
						},
					}),
					q(8663, {	-- Doomcaller's Trousers
						["qg"] = 15503,	-- Kandrostrasz
						["minReputation"] = { FACTION_BROOD_OF_NOZDORMU, FRIENDLY },	-- Brood of Nozdormu, Friendly.
						["repeatable"] = true,
						["cost"] = {
							{ "i", 20931, 1 },	-- Skin of the Great Sandworm
							{ "i", 20878, 2 },	-- Idol of Rebirth
							{ "i", 20859, 5 },	-- Gold Scarab
							{ "i", 20863, 5 },	-- Clay Scarab
						},
						["groups"] = {
							i(21336),	-- Doomcaller's Trousers
						},
					}),
					q(8660, {	-- Doomcaller's Footwraps
						["qg"] = 15503,	-- Kandrostrasz
						["minReputation"] = { FACTION_BROOD_OF_NOZDORMU, NEUTRAL },	-- Brood of Nozdormu, Neutral.
						["repeatable"] = true,
						["cost"] = {
							{ "i", 20932, 1 },	-- Qiraji Bindings of Dominance
							{ "i", 20875, 2 },	-- Idol of Night
							{ "i", 20863, 5 },	-- Clay Scarab
							{ "i", 20865, 5 },	-- Ivory Scarab
						},
						["groups"] = {
							i(21338),	-- Doomcaller's Footwraps
						},
					}),
				})),
				cl(WARRIOR, bubbleDown({ ["classes"] = { WARRIOR } }, {
					q(8561, {	-- Conqueror's Crown
						["qg"] = 15502,	-- Andorgos
						["minReputation"] = { FACTION_BROOD_OF_NOZDORMU, FRIENDLY },	-- Brood of Nozdormu, Friendly.
						["repeatable"] = true,
						["cost"] = {
							{ "i", 20926, 1 },	-- Vek'nilash's Circlet
							{ "i", 20874, 2 },	-- Idol of the Sun
							{ "i", 20862, 5 },	-- Crystal Scarab
							{ "i", 20858, 5 },	-- Stone Scarab
						},
						["groups"] = {
							i(21329),	-- Conqueror's Crown
						},
					}),
					q(8544, {	-- Conqueror's Spaulders
						["qg"] = 15502,	-- Andorgos
						["minReputation"] = { FACTION_BROOD_OF_NOZDORMU, NEUTRAL },	-- Brood of Nozdormu, Neutral.
						["repeatable"] = true,
						["cost"] = {
							{ "i", 20928, 1 },	-- Qiraji Bindings of Command
							{ "i", 20875, 2 },	-- Idol of Night
							{ "i", 20863, 5 },	-- Clay Scarab
							{ "i", 20858, 5 },	-- Stone Scarab
						},
						["groups"] = {
							i(21330),	-- Conqueror's Spaulders
						},
					}),
					q(8562, {	-- Conqueror's Breastplate
						["qg"] = 15504,	-- Vethsera
						["minReputation"] = { FACTION_BROOD_OF_NOZDORMU, HONORED },	-- Brood of Nozdormu, Honored.
						["repeatable"] = true,
						["cost"] = {
							{ "i", 20929, 1 },	-- Carapace of the Old God
							{ "i", 20882, 2 },	-- Idol of War
							{ "i", 20860, 5 },	-- Silver Scarab
							{ "i", 20864, 5 },	-- Bone Scarab
						},
						["groups"] = {
							i(21331),	-- Conqueror's Breastplate
						},
					}),
					q(8560, {	-- Conqueror's Legguards
						["qg"] = 15503,	-- Kandrostrasz
						["minReputation"] = { FACTION_BROOD_OF_NOZDORMU, FRIENDLY },	-- Brood of Nozdormu, Friendly.
						["repeatable"] = true,
						["cost"] = {
							{ "i", 20927, 1 },	-- Ouro's Intact Hide
							{ "i", 20876, 2 },	-- Idol of Death
							{ "i", 20861, 5 },	-- Bronze Scarab
							{ "i", 20865, 5 },	-- Ivory Scarab
						},
						["groups"] = {
							i(21332),	-- Conqueror's Legguards
						},
					}),
					q(8559, {	-- Conqueror's Greaves
						["qg"] = 15503,	-- Kandrostrasz
						["minReputation"] = { FACTION_BROOD_OF_NOZDORMU, NEUTRAL },	-- Brood of Nozdormu, Neutral.
						["repeatable"] = true,
						["cost"] = {
							{ "i", 20928, 1 },	-- Qiraji Bindings of Command
							{ "i", 20882, 2 },	-- Idol of War
							{ "i", 20865, 5 },	-- Ivory Scarab
							{ "i", 20859, 5 },	-- Gold Scarab
						},
						["groups"] = {
							i(21333),	-- Conqueror's Greaves
						},
					}),
				})),
				q(8801, {	-- C'Thun's Legacy
					["provider"] = { "i", 21221 },	-- Eye of C'Thun
				}),
				q(8789, {	-- Imperial Qiraji Armaments
					["qg"] = 15380,	-- Arygos
					["cost"] = {
						{ "i", 21232, 1 },	-- Imperial Qiraji Armaments
						{ "i", 18562, 3 },	-- Elementium Ore
					},
					["repeatable"] = true,
					["groups"] = {
						i(21242),	-- Blessed Qiraji War Axe
						i(21272),	-- Blessed Qiraji Musket
						i(21244),	-- Blessed Qiraji Pugio
						i(21269),	-- Blessed Qiraji Bulwark
					},
				}),
				q(8790, {	-- Imperial Qiraji Regalia
					["qg"] = 15378,	-- Merithra of the Dream
					["cost"] = {
						{ "i", 21237, 1 },	-- Imperial Qiraji Regalia
						{ "i", 18562, 3 },	-- Elementium Ore
					},
					["repeatable"] = true,
					["groups"] = {
						i(21273),	-- Blessed Qiraji Acolyte Staff
						i(21275),	-- Blessed Qiraji Augur Staff
						i(21268),	-- Blessed Qiraji War Hammer
					},
				}),
				q(8579, {	-- Mortal Champions
					["qg"] = 15503,	-- Kandrostrasz
					["cost"] = {
						{ "i", 21229, 1 },	-- Qiraji Lord's Insignia
					},
				}),
				q(8595, {	-- Mortal Champions
					["qg"] = 15503,	-- Kandrostrasz
					["sourceQuest"] = 8579,	-- Mortal Champions
					["maxReputation"] = { FACTION_BROOD_OF_NOZDORMU, EXALTED },	-- Brood of Nozdormu, Exalted.
					["cost"] = {
						{ "i", 21229, 1 },	-- Qiraji Lord's Insignia
					},
					["repeatable"] = true,
				}),
				q(8784, {	-- Secrets of the Qiraji
					["qg"] = 15503,	-- Kandrostrasz
					["maxReputation"] = { FACTION_BROOD_OF_NOZDORMU, EXALTED },	-- Brood of Nozdormu, Exalted.
					["cost"] = {
						{ "i", 21230, 1 },	-- Ancient Qiraji Artifact
					},
					["repeatable"] = true,
				}),
				q(8766, {	-- The Changing of Paths - Conqueror No More
					["qg"] = 15192,	-- Anachronos
					["sourceQuest"] = 8756,	-- The Qiraji Conqueror
					["minReputation"] = { FACTION_BROOD_OF_NOZDORMU, EXALTED },	-- Brood of Nozdormu, Exalted.
					["coord"] = ANACHRONOS_COORD,
					["cost"] = {
						{ "i", 20864, 15 },	-- Bone Scarab
						{ "i", 20865, 15 },	-- Ivory Scarab
						{ "i", 20858, 15 },	-- Stone Scarab
					},
					["repeatable"] = true,
					["lvl"] = 60,
					["groups"] = {
						objective(1, {	-- 0/1 Signet Ring of the Bronze Dragonflight
							["provider"] = { "i", 21205 },	-- Signet Ring of the Bronze Dragonflight
						}),
						i(21200),	-- Signet Ring of the Bronze Dragonflight
						i(21210),	-- Signet Ring of the Bronze Dragonflight
					},
				}),
				q(8765, {	-- The Changing of Paths - Invoker No More
					["qg"] = 15192,	-- Anachronos
					["sourceQuest"] = 8761,	-- The Grand Invoker
					["minReputation"] = { FACTION_BROOD_OF_NOZDORMU, EXALTED },	-- Brood of Nozdormu, Exalted.
					["coord"] = ANACHRONOS_COORD,
					["cost"] = {
						{ "i", 20861, 15 },	-- Bronze Scarab
						{ "i", 20862, 15 },	-- Crystal Scarab
						{ "i", 20863, 15 },	-- Clay Scarab
					},
					["repeatable"] = true,
					["lvl"] = 60,
					["groups"] = {
						objective(1, {	-- 0/1 Signet Ring of the Bronze Dragonflight
							["provider"] = { "i", 21210 },	-- Signet Ring of the Bronze Dragonflight
						}),
						i(21200),	-- Signet Ring of the Bronze Dragonflight
						i(21205),	-- Signet Ring of the Bronze Dragonflight
					},
				}),
				q(8764, {	-- The Changing of Paths - Protector No More
					["qg"] = 15192,	-- Anachronos
					["sourceQuest"] = 8751,	-- The Protector of Kalimdor
					["minReputation"] = { FACTION_BROOD_OF_NOZDORMU, EXALTED },	-- Brood of Nozdormu, Exalted.
					["coord"] = ANACHRONOS_COORD,
					["cost"] = {
						{ "i", 20858, 15 },	-- Stone Scarab
						{ "i", 20859, 15 },	-- Gold Scarab
						{ "i", 20860, 15 },	-- Silver Scarab
					},
					["repeatable"] = true,
					["lvl"] = 60,
					["groups"] = {
						objective(1, {	-- 0/1 Signet Ring of the Bronze Dragonflight
							["provider"] = { "i", 21200 },	-- Signet Ring of the Bronze Dragonflight
						}),
						i(21210),	-- Signet Ring of the Bronze Dragonflight
						i(21205),	-- Signet Ring of the Bronze Dragonflight
					},
				}),
				q(8761, {	-- The Grand Invoker
					["qg"] = 15192,	-- Anachronos
					["sourceQuest"] = 8760,	-- The Path of the Invoker (4/4)
					["minReputation"] = { FACTION_BROOD_OF_NOZDORMU, EXALTED },	-- Brood of Nozdormu, Exalted.
					["coord"] = ANACHRONOS_COORD,
					["altQuests"] = {
						8756,	-- The Qiraji Conqueror
						8751,	-- The Protector of Kalimdor
					},
					["lvl"] = 60,
					["groups"] = {
						objective(1, {	-- 0/1 Signet Ring of the Bronze Dragonflight
							["provider"] = { "i", 21209 },	-- Signet Ring of the Bronze Dragonflight
						}),
						i(21210),	-- Signet Ring of the Bronze Dragonflight
					},
				}),
				q(8752, {	-- The Path of the Conqueror (1/4)
					["qg"] = 15192,	-- Anachronos
					["minReputation"] = { FACTION_BROOD_OF_NOZDORMU, NEUTRAL },	-- Brood of Nozdormu, Neutral.
					["coord"] = ANACHRONOS_COORD,
					["altQuests"] = {
						8757,	-- The Path of the Invoker (1/4)
						8747,	-- The Path of the Protector (1/4)
					},
					["lvl"] = 60,
					["groups"] = {
						i(21201),	-- Signet Ring of the Bronze Dragonflight
					},
				}),
				q(8753, {	-- The Path of the Conqueror (2/4)
					["qg"] = 15192,	-- Anachronos
					["sourceQuest"] = 8752,	-- The Path of the Conqueror (1/4)
					["minReputation"] = { FACTION_BROOD_OF_NOZDORMU, FRIENDLY },	-- Brood of Nozdormu, Friendly.
					["coord"] = ANACHRONOS_COORD,
					["altQuests"] = {
						8758,	-- The Path of the Invoker (2/4)
						8748,	-- The Path of the Protector (2/4)
					},
					["lvl"] = 60,
					["groups"] = {
						objective(1, {	-- 0/1 Signet Ring of the Bronze Dragonflight
							["provider"] = { "i", 21201 },	-- Signet Ring of the Bronze Dragonflight
						}),
						i(21202),	-- Signet Ring of the Bronze Dragonflight
					},
				}),
				q(8754, {	-- The Path of the Conqueror (3/4)
					["qg"] = 15192,	-- Anachronos
					["sourceQuest"] = 8753,	-- The Path of the Conqueror (2/4)
					["minReputation"] = { FACTION_BROOD_OF_NOZDORMU, HONORED },	-- Brood of Nozdormu, Honored.
					["coord"] = ANACHRONOS_COORD,
					["altQuests"] = {
						8759,	-- The Path of the Invoker (3/4)
						8749,	-- The Path of the Protector (3/4)
					},
					["lvl"] = 60,
					["groups"] = {
						objective(1, {	-- 0/1 Signet Ring of the Bronze Dragonflight
							["provider"] = { "i", 21202 },	-- Signet Ring of the Bronze Dragonflight
						}),
						i(21203),	-- Signet Ring of the Bronze Dragonflight
					},
				}),
				q(8755, {	-- The Path of the Conqueror (4/4)
					["qg"] = 15192,	-- Anachronos
					["sourceQuest"] = 8754,	-- The Path of the Conqueror (3/4)
					["minReputation"] = { FACTION_BROOD_OF_NOZDORMU, REVERED },	-- Brood of Nozdormu, Revered.
					["coord"] = ANACHRONOS_COORD,
					["altQuests"] = {
						8760,	-- The Path of the Invoker (4/4)
						8750,	-- The Path of the Protector (4/4)
					},
					["lvl"] = 60,
					["groups"] = {
						objective(1, {	-- 0/1 Signet Ring of the Bronze Dragonflight
							["provider"] = { "i", 21203 },	-- Signet Ring of the Bronze Dragonflight
						}),
						i(21204),	-- Signet Ring of the Bronze Dragonflight
					},
				}),
				q(8757, {	-- The Path of the Invoker (1/4)
					["qg"] = 15192,	-- Anachronos
					["minReputation"] = { FACTION_BROOD_OF_NOZDORMU, NEUTRAL },	-- Brood of Nozdormu, Neutral.
					["coord"] = ANACHRONOS_COORD,
					["altQuests"] = {
						8752,	-- The Path of the Conqueror (1/4)
						8747,	-- The Path of the Protector (1/4)
					},
					["lvl"] = 60,
					["groups"] = {
						i(21206),	-- Signet Ring of the Bronze Dragonflight
					},
				}),
				q(8758, {	-- The Path of the Invoker (2/4)
					["qg"] = 15192,	-- Anachronos
					["sourceQuest"] = 8757,	-- The Path of the Invoker (1/4)
					["minReputation"] = { FACTION_BROOD_OF_NOZDORMU, FRIENDLY },	-- Brood of Nozdormu, Friendly.
					["coord"] = ANACHRONOS_COORD,
					["altQuests"] = {
						8753,	-- The Path of the Conqueror (2/4)
						8748,	-- The Path of the Protector (2/4)
					},
					["lvl"] = 60,
					["groups"] = {
						objective(1, {	-- 0/1 Signet Ring of the Bronze Dragonflight
							["provider"] = { "i", 21206 },	-- Signet Ring of the Bronze Dragonflight
						}),
						i(21207),	-- Signet Ring of the Bronze Dragonflight
					},
				}),
				q(8759, {	-- The Path of the Invoker (3/4)
					["qg"] = 15192,	-- Anachronos
					["sourceQuest"] = 8758,	-- The Path of the Invoker (2/4)
					["minReputation"] = { FACTION_BROOD_OF_NOZDORMU, HONORED },	-- Brood of Nozdormu, Honored.
					["coord"] = ANACHRONOS_COORD,
					["altQuests"] = {
						8754,	-- The Path of the Conqueror (3/4)
						8749,	-- The Path of the Protector (3/4)
					},
					["lvl"] = 60,
					["groups"] = {
						objective(1, {	-- 0/1 Signet Ring of the Bronze Dragonflight
							["provider"] = { "i", 21207 },	-- Signet Ring of the Bronze Dragonflight
						}),
						i(21208),	-- Signet Ring of the Bronze Dragonflight
					},
				}),
				q(8760, {	-- The Path of the Invoker (4/4)
					["qg"] = 15192,	-- Anachronos
					["sourceQuest"] = 8759,	-- The Path of the Invoker (3/4)
					["minReputation"] = { FACTION_BROOD_OF_NOZDORMU, REVERED },	-- Brood of Nozdormu, Revered.
					["coord"] = ANACHRONOS_COORD,
					["altQuests"] = {
						8755,	-- The Path of the Conqueror (4/4)
						8750,	-- The Path of the Protector (4/4)
					},
					["lvl"] = 60,
					["groups"] = {
						objective(1, {	-- 0/1 Signet Ring of the Bronze Dragonflight
							["provider"] = { "i", 21208 },	-- Signet Ring of the Bronze Dragonflight
						}),
						i(21209),	-- Signet Ring of the Bronze Dragonflight
					},
				}),
				q(8747, {	-- The Path of the Protector (1/4)
					["qg"] = 15192,	-- Anachronos
					["minReputation"] = { FACTION_BROOD_OF_NOZDORMU, NEUTRAL },	-- Brood of Nozdormu, Neutral.
					["coord"] = ANACHRONOS_COORD,
					["altQuests"] = {
						8752,	-- The Path of the Conqueror (1/4)
						8757,	-- The Path of the Invoker (1/4)
					},
					["lvl"] = 60,
					["groups"] = {
						i(21196),	-- Signet Ring of the Bronze Dragonflight
					},
				}),
				q(8748, {	-- The Path of the Protector (2/4)
					["qg"] = 15192,	-- Anachronos
					["sourceQuest"] = 8747,	-- The Path of the Protector (1/4)
					["minReputation"] = { FACTION_BROOD_OF_NOZDORMU, FRIENDLY },	-- Brood of Nozdormu, Friendly.
					["coord"] = ANACHRONOS_COORD,
					["altQuests"] = {
						8753,	-- The Path of the Conqueror (2/4)
						8758,	-- The Path of the Invoker (2/4)
					},
					["lvl"] = 60,
					["groups"] = {
						objective(1, {	-- 0/1 Signet Ring of the Bronze Dragonflight
							["provider"] = { "i", 21196 },	-- Signet Ring of the Bronze Dragonflight
						}),
						i(21197),	-- Signet Ring of the Bronze Dragonflight
					},
				}),
				q(8749, {	-- The Path of the Protector (3/4)
					["qg"] = 15192,	-- Anachronos
					["sourceQuest"] = 8748,	-- The Path of the Protector (2/4)
					["minReputation"] = { FACTION_BROOD_OF_NOZDORMU, HONORED },	-- Brood of Nozdormu, Honored.
					["coord"] = ANACHRONOS_COORD,
					["altQuests"] = {
						8754,	-- The Path of the Conqueror (3/4)
						8759,	-- The Path of the Invoker (3/4)
					},
					["lvl"] = 60,
					["groups"] = {
						objective(1, {	-- 0/1 Signet Ring of the Bronze Dragonflight
							["provider"] = { "i", 21197 },	-- Signet Ring of the Bronze Dragonflight
						}),
						i(21198),	-- Signet Ring of the Bronze Dragonflight
					},
				}),
				q(8750, {	-- The Path of the Protector (4/4)
					["qg"] = 15192,	-- Anachronos
					["sourceQuest"] = 8749,	-- The Path of the Protector (3/4)
					["minReputation"] = { FACTION_BROOD_OF_NOZDORMU, REVERED },	-- Brood of Nozdormu, Revered.
					["coord"] = ANACHRONOS_COORD,
					["altQuests"] = {
						8755,	-- The Path of the Conqueror (4/4)
						8760,	-- The Path of the Invoker (4/4)
					},
					["lvl"] = 60,
					["groups"] = {
						objective(1, {	-- 0/1 Signet Ring of the Bronze Dragonflight
							["provider"] = { "i", 21198 },	-- Signet Ring of the Bronze Dragonflight
						}),
						i(21199),	-- Signet Ring of the Bronze Dragonflight
					},
				}),
				q(8751, {	-- The Protector of Kalimdor
					["qg"] = 15192,	-- Anachronos
					["sourceQuest"] = 8750,	-- The Path of the Protector (4/4)
					["minReputation"] = { FACTION_BROOD_OF_NOZDORMU, EXALTED },	-- Brood of Nozdormu, Exalted.
					["coord"] = ANACHRONOS_COORD,
					["altQuests"] = {
						8761,	-- The Grand Invoker
						8756,	-- The Qiraji Conqueror
					},
					["lvl"] = 60,
					["groups"] = {
						objective(1, {	-- 0/1 Signet Ring of the Bronze Dragonflight
							["provider"] = { "i", 21199 },	-- Signet Ring of the Bronze Dragonflight
						}),
						i(21200),	-- Signet Ring of the Bronze Dragonflight
					},
				}),
				q(8756, {	-- The Qiraji Conqueror
					["qg"] = 15192,	-- Anachronos
					["sourceQuest"] = 8755,	-- The Path of the Conqueror (4/4)
					["minReputation"] = { FACTION_BROOD_OF_NOZDORMU, EXALTED },	-- Brood of Nozdormu, Exalted.
					["coord"] = ANACHRONOS_COORD,
					["altQuests"] = {
						8761,	-- The Grand Invoker
						8751,	-- The Protector of Kalimdor
					},
					["lvl"] = 60,
					["groups"] = {
						objective(1, {	-- 0/1 Signet Ring of the Bronze Dragonflight
							["provider"] = { "i", 21203 },	-- Signet Ring of the Bronze Dragonflight
						}),
						i(21205),	-- Signet Ring of the Bronze Dragonflight
					},
				}),
				q(8802, {	-- The Savior of Kalimdor
					["provider"] = { "i", 21221 },	-- Eye of C'Thun
					["sourceQuest"] = 8801,	-- C'Thun's Legacy
					["groups"] = {
						i(21712),	-- Amulet of the Fallen God
						i(21710),	-- Cloak of the Fallen God
						i(21709),	-- Ring of the Fallen God
					},
				}),
			}),
			-- #if SEASON_OF_DISCOVERY
			n(SPECIAL, {
				applyclassicphase(SOD_PHASE_SIX, n(234193, {		-- Gilded Scarab
					["description"] = "Randomly spawns in the Temple of Ahn'Qiraj and will despawn within 10seconds after being attacked",
					["groups"] = {
						i(20876),	-- Idol of Death
						i(20879),	-- Idol of Life
						i(20875),	-- Idol of Night
						i(20878),	-- Idol of Rebirth
						i(20881),	-- Idol of Strife
						i(20877),	-- Idol of the Sage
						i(20874),	-- Idol of the Sun
						i(20882),	-- Idol of War
						i(233997), -- Formula: Enchant Chest - Living Stats
						i(233998), -- Formula: Enchant Gloves - Holy Power
						i(233999), -- Formula: Enchant Gloves - Arcane Power
						i(234266), -- Formula: Speedstone
						i(234267), -- Formula: Tear of the Dreamer
						i(234268), -- Formula: Lodestone of Retaliation
						i(234269), -- Formula: Enchanted Stopwatch
						i(234270), -- Formula: Ruby-Encrusted Broach
						i(234275), -- Formula: Enchanted Prayer Tome
						i(234276), -- Formula: Enchanted Totem
						i(234277), -- Formula: Enchanted Mushroom
						i(234271), -- Formula: Scroll: Wrath of the Swarm
						i(235526), -- Formula: Enchant Bracer - Spell Power
						i(235528), -- Formula: Enchant Bracer - Agility
						i(235133), -- Formula: Libram of Righteousness
						i(235134), -- Formula: Libram of the Exorcist
						i(235135), -- Formula: Libram of Sanctity
						i(235136), -- Formula: Totem of Pyroclastic Thunder
						i(235137), -- Formula: Totem of Thunderous Strikes
						i(235138), -- Formula: Totem of Flowing Magma
						i(235139), -- Formula: Idol of Sidereal Wrath
						i(235140), -- Formula: Idol of Feline Ferocity
						i(235141), -- Formula: Idol of Ursin Power
						i(234235), -- Pattern: Glowing Chitin Armor Kit
						i(234236), -- Pattern: Sharpened Chitin Armor Kit
						i(234237), -- Pattern: Razorbramble Cowl
						i(234239), -- Pattern: Razorbramble Leathers
						i(234238), -- Pattern: Razorbramble Shoulderpads
						i(234244), -- Pattern: Qiraji Silk Scarf
						i(234249), -- Pattern: Qiraji Silk Cape
						i(234250), -- Pattern: Qiraji Silk Cloak
						i(234251), -- Pattern: Qiraji Silk Drape
						i(234240), -- Pattern: Vampiric Cowl
						i(234241), -- Pattern: Vampiric Shawl
						i(234242), -- Pattern: Vampiric Robe
						i(234223), -- Plans: Obsidian Reaver
						i(234224), -- Plans: Obsidian Champion
						i(234225), -- Plans: Obsidian Destroyer
						i(234226), -- Plans: Obsidian Stormhammer
						i(234228), -- Plans: Obsidian Defender
						i(234227), -- Plans: Obsidian Sageblade
						i(234429), -- Plans: Obsidian Heartseeker
						i(234220), -- Plans: Razorspike Headcage
						i(234221), -- Plans: Razorspike Shoulderplates
						i(234222), -- Plans: Razorspike Battleplate
						i(234252), -- Recipe: Flask of Unyielding Sorrow
						i(234253), -- Recipe: Flask of Ancient Knowledge
						i(234255), -- Recipe: Flask of the Old Gods
						i(234256), -- Recipe: Flask of Madness
						i(234264), -- Schematic: G00 DV-1B3 Generator
						i(234265), -- Schematic: Tuned Force Reactive Disk
						i(234435), -- Schematic: Obsidian Shotgun
						i(235530), -- Schematic: Obsidian Scope
					},
				})),
			}),
			-- #endif
			filter(RECIPES, {
				["crs"] = {
					15516,	-- Battleguard Sartura
					15510,	-- Fankriss the Unyielding
					15511,	-- Lord Kri
					15517,	-- Ouro
					15509,	-- Princess Huhuran
					15543,	-- Princess Yauj
					15263,	-- The Prophet Skeram
					15544,	-- Vem
					15299,	-- Viscidus
				},
				["groups"] = {
					i(20736),	-- Formula: Enchant Cloak - Dodge (RECIPE!)
					i(20734),	-- Formula: Enchant Cloak - Stealth (RECIPE!)
					i(20729),	-- Formula: Enchant Gloves - Fire Power (RECIPE!)
					i(20728),	-- Formula: Enchant Gloves - Frost Power (RECIPE!)
					i(20730),	-- Formula: Enchant Gloves - Healing Power (RECIPE!)
					i(20727),	-- Formula: Enchant Gloves - Shadow Power (RECIPE!)
					i(20731),	-- Formula: Enchant Gloves - Superior Agility (RECIPE!)
				},
			}),
			n(ZONE_DROPS, {
				i(21218),	-- Blue Qiraji Battle Tank (MOUNT!)
				i(21323),	-- Green Qiraji Battle Tank (MOUNT!)
				i(21321),	-- Red Qiraji Battle Tank (MOUNT!)
				i(21324),	-- Yellow Qiraji Battle Tank (MOUNT!)
				i(21837, {	-- Anubisath Warhammer
					["crs"] = {
						15264,	-- Anubisath Sentinel
						15262,	-- Obsidian Eradicator
						15247,	-- Qiraji Brainwasher
						15249,	-- Qiraji Lasher
						15250,	-- Qiraji Slayer
						15233,	-- Vekniss Guardian
						15229,	-- Vekniss Soldier
						15235,	-- Vekniss Stinger
						15230,	-- Vekniss Warrior
						15236,	-- Vekniss Wasp
					},
				}),
				i(21856, {	-- Neretzek, the Blood Drinker
					["crs"] = {
						15264,	-- Anubisath Sentinel
						15262,	-- Obsidian Eradicator
						15247,	-- Qiraji Brainwasher
						15249,	-- Qiraji Lasher
						15250,	-- Qiraji Slayer
						15233,	-- Vekniss Guardian
						15229,	-- Vekniss Soldier
						15235,	-- Vekniss Stinger
						15230,	-- Vekniss Warrior
						15236,	-- Vekniss Wasp
					},
				}),
				i(21838, {	-- Garb of Royal Ascension
					["crs"] = {
						15264,	-- Anubisath Sentinel
						15262,	-- Obsidian Eradicator
						15247,	-- Qiraji Brainwasher
						15249,	-- Qiraji Lasher
						15250,	-- Qiraji Slayer
						15233,	-- Vekniss Guardian
						15229,	-- Vekniss Soldier
						15235,	-- Vekniss Stinger
						15230,	-- Vekniss Warrior
						15236,	-- Vekniss Wasp
					},
				}),
				i(21890, {	-- Gloves of the Fallen Prophet
					["crs"] = {
						15277,	-- Anubisath Defender
						15311,	-- Anubisath Warder
						15312,	-- Obsidian Nullifier
						15252,	-- Qiraji Champion
						15246,	-- Qiraji Mindslayer
						15240,	-- Vekniss Hive Crawler
					},
				}),
				i(21888, {	-- Gloves of the Immortal
					["crs"] = {
						15264,	-- Anubisath Sentinel
						15262,	-- Obsidian Eradicator
						15247,	-- Qiraji Brainwasher
						15249,	-- Qiraji Lasher
						15250,	-- Qiraji Slayer
						15233,	-- Vekniss Guardian
						15229,	-- Vekniss Soldier
						15235,	-- Vekniss Stinger
						15230,	-- Vekniss Warrior
						15236,	-- Vekniss Wasp
					},
				}),
				i(21889, {	-- Gloves of the Redeemed Prophecy
					["crs"] = {
						15277,	-- Anubisath Defender
						15311,	-- Anubisath Warder
						15312,	-- Obsidian Nullifier
						15252,	-- Qiraji Champion
						15246,	-- Qiraji Mindslayer
						15240,	-- Vekniss Hive Crawler
					},
				}),
				i(21836, {	-- Ritssyn's Ring of Chaos
					["crs"] = {
						15264,	-- Anubisath Sentinel
						15262,	-- Obsidian Eradicator
						15247,	-- Qiraji Brainwasher
						15249,	-- Qiraji Lasher
						15250,	-- Qiraji Slayer
						15233,	-- Vekniss Guardian
						15229,	-- Vekniss Soldier
						15235,	-- Vekniss Stinger
						15230,	-- Vekniss Warrior
						15236,	-- Vekniss Wasp
					},
				}),
				i(21891, {	-- Shard of the Fallen Star
					["crs"] = {
						15277,	-- Anubisath Defender
						15311,	-- Anubisath Warder
						15312,	-- Obsidian Nullifier
						15252,	-- Qiraji Champion
						15246,	-- Qiraji Mindslayer
						15240,	-- Vekniss Hive Crawler
					},
				}),
				i(20876),	-- Idol of Death
				i(20879),	-- Idol of Life
				i(20875),	-- Idol of Night
				i(20878),	-- Idol of Rebirth
				i(20881),	-- Idol of Strife
				i(20877),	-- Idol of the Sage
				i(20874),	-- Idol of the Sun
				i(20882),	-- Idol of War
				i(20864),	-- Bone Scarab
				i(20861),	-- Bronze Scarab
				i(20863),	-- Clay Scarab
				i(20862),	-- Crystal Scarab
				i(20859),	-- Gold Scarab
				i(20865),	-- Ivory Scarab
				i(20860),	-- Silver Scarab
				i(20858),	-- Stone Scarab
				i(21230),	-- Ancient Qiraji Artifact
				i(21762, {	-- Greater Scarab Coffer Key
					["timeline"] = {
						ADDED_1_13_0,
						DELETED_4_2_2
					},
				}),
			}),
			n(COMMON_BOSS_DROPS, {
				i(21232, {	-- Imperial Qiraji Armaments
					["crs"] = {
						15510,	-- Fankriss the Unyielding
						15516,	-- Battleguard Sartura
						15509,	-- Princess Huhuran
						15275,	-- Emperor Vek'nilash
						15276,	-- Emperor Vek'lor
						15544,	-- Vem
						15511,	-- Lord Kri
						15517,	-- Ouro
						15543,	-- Princess Yauj
						15299,	-- Viscidus
					},
				}),
				i(21237, {	-- Imperial Qiraji Regalia
					["crs"] = {
						15510,	-- Fankriss the Unyielding
						15516,	-- Battleguard Sartura
						15509,	-- Princess Huhuran
						15275,	-- Emperor Vek'nilash
						15276,	-- Emperor Vek'lor
						15544,	-- Vem
						15511,	-- Lord Kri
						15517,	-- Ouro
						15543,	-- Princess Yauj
						15299,	-- Viscidus
					},
				}),
				applyclassicphase(CATA_PHASE_ONE, i(76402, {	-- Greater Scarab Coffer Key
					["timeline"] = { ADDED_4_3_0 },
					["crs"] = {
						15516,	-- Battleguard Sartura
						15727,	-- C'Thun
						15276,	-- Emperor Vek'lor
						15275,	-- Emperor Vek'nilash
						15510,	-- Fankriss the Unyielding
						15511,	-- Lord Kri
						15517,	-- Ouro
						15509,	-- Princess Huhuran
						15543,	-- Princess Yauj
						15263,	-- The Prophet Skeram
						15544,	-- Vem
						15299,	-- Viscidus
					},
				})),
				i(21229, {	-- Qiraji Lord's Insignia
					["description"] = "Drops from all bosses, can be turned in to the NPC named Kandrostrasz for reputation with the Brood of Nozdormu and Cenarion Circle. Kandrostrasz can be found with Andorgos and Vethsera inside the temple after killing The Prophet Skeram, in a chamber on the left side.",
					["crs"] = {
						15516,	-- Battleguard Sartura
						15276,	-- Emperor Vek'lor
						15275,	-- Emperor Vek'nilash
						15510,	-- Fankriss the Unyielding
						15511,	-- Lord Kri
						15517,	-- Ouro
						15509,	-- Princess Huhuran
						15543,	-- Princess Yauj
						15263,	-- The Prophet Skeram
						15544,	-- Vem
						15299,	-- Viscidus
					},
				}),
			}),
			o(180690, {	-- Large Scarab Coffer
				["cost"] = {
					{ "i", 21762, 1, PHASE_ONE },	-- Greater Scarab Coffer Key [pre-4.3]
					{ "i", 76402, 1, CATA_PHASE_ONE },	-- Greater Scarab Coffer Key [4.3]
				},
				["groups"] = {
					i(20876),	-- Idol of Death
					i(20879),	-- Idol of Life
					i(20875),	-- Idol of Night
					i(20878),	-- Idol of Rebirth
					i(20881),	-- Idol of Strife
					i(20877),	-- Idol of the Sage
					i(20874),	-- Idol of the Sun
					i(20882),	-- Idol of War
					i(21156, {	-- Scarab Bag
						["description"] = "Contains a couple of random scarabs.",
					}),
				},
			}),
			e(1543, {	-- The Prophet Skeram
				["creatureID"] = 15263,
				["groups"] = {
					i(22222, {	-- Plans: Thick Obisidan Breastplate (RECIPE!)
					-- #if SEASON_OF_DISCOVERY
						["timeline"] = { REMOVED_1_15_6 },
					-- #endif
					}),
					-- #if SEASON_OF_DISCOVERY
					applyclassicphase(SOD_PHASE_SIX, i(235039, {	-- Plans: Thick Obisidan Breastplate (RECIPE!)
						["timeline"] = { ADDED_1_15_6 },
					})),
					-- #endif
					i(21703),	-- Hammer of Ji'zhi
					i(21128),	-- Staff of the Qiraji Prophets
					i(21702),	-- Amulet of Foul Warding
					i(21700),	-- Pendant of the Qiraji Guardian
					i(21699),	-- Barrage Shoulders
					i(21701),	-- Cloak of Concentrated Hatred
					i(21814),	-- Breastplate of Annihilation
					i(21708),	-- Beetle Scaled Waistguards
					i(21698),	-- Leggings of Immersion
					i(21705),	-- Boots of the Fallen Prophet
					i(21704),	-- Boots of the Redeemed Prophecy
					i(21706),	-- Boots of the Unwavering Will
					i(21707),	-- Ring of Swarming Thought
					i(93041, {	-- Mini Mindslayer (PET!)
						["timeline"] = { ADDED_5_1_0 },
					}),
				},
			}),
			-- #if AFTER LEGION
			e(1547, {	-- Silithid Royalty
				["description"] = "This can be a fairly -buggy- encounter if you don't do it right. Kill 1 boss at a time and allow it to get consumed. Then kill the next one and allow it to also get consumed. The last boss you leave alive determines the loot that can drop.",
				["groups"] = {
			-- #endif
					n(SILITHID_ROYALTY_SHARED_DROPS, {
						["description"] =
							-- #if ANYCLASSIC
							"This can be a fairly -buggy- encounter if you don't do it right. Kill 1 boss at a time and allow it to get consumed. Then kill the next one and allow it to also get consumed. The last boss you leave alive determines the loot that can drop. These items can drop from killing the Silithid Royalty bosses regardless of order. For the other items, refer to their individual listings.",
							-- #else
							"These items can drop from killing the Silithid Royalty bosses regardless of order. For the other items, refer to their individual listings.",
							-- #endif
						-- #if ANYCLASSIC
						["providers"] = {
							{ "n", 15511 },	-- Lord Kri
							{ "n", 15543 },	-- Princess Yauj
							{ "n", 15544 },	-- Vem
						},
						-- #else
						["crs"] = {
							15511,	-- Lord Kri
							15543,	-- Princess Yauj
							15544,	-- Vem
						},
						-- #endif
						["groups"] = {
							i(21693),	-- Guise of the Devourer
							i(21694),	-- Ternary Mantle
							i(21697),	-- Cape of the Trinity
							i(21696),	-- Robes of the Triumvirate
							i(21692),	-- Triad Girdle
							i(21695),	-- Angelista's Touch
						},
					}),
					n(15511, {	-- Lord Kri
						["description"] = "Killing this boss last can drop the following items.",
						["groups"] = {
							i(21603),	-- Wand of Qiraji Nobility
							i(21680),	-- Vest of Swift Execution
							i(21681),	-- Ring of the Devoured
							i(21685),	-- Petrified Scarab
						},
					}),
					n(15543, {	-- Princess Yauj
						["description"] = "Killing this boss last can drop the following items.",
						["groups"] = {
							i(21683),	-- Mantle of the Desert Crusade
							i(21684),	-- Mantle of the Desert's Fury
							i(21686),	-- Mantle of Phrenic Power
							i(21682),	-- Bile-Covered Gauntlets
							i(21687),	-- Ukko's Ring of Darkness
						},
					}),
					n(15544, {	-- Vem
						["description"] = "Killing this boss last can drop the following items.",
						["groups"] = {
							i(21690),	-- Angelista's Charm
							i(21689),	-- Gloves of Ebru
							i(21691),	-- Ooze-Ridden Gauntlets
							i(21688),	-- Boots of the Fallen Hero
						},
					}),
			-- #if AFTER LEGION
				},
			}),
			-- #endif
			e(1544, {	-- Battleguard Sartura
				["creatureID"] = 15516,
				["groups"] = {
					i(21673),	-- Silithid Claw
					i(21666),	-- Sartura's Might
					i(21669),	-- Creeping Vine Helm
					i(21678),	-- Necklace of Purity
					i(21671),	-- Robes of the Battleguard
					i(21674),	-- Gauntlets of Steadfast Determination
					i(21672),	-- Gloves of Enforcement
					i(21675),	-- Thick Qirajihide Belt
					i(21676),	-- Leggings of the Festering Swarm
					i(21667),	-- Legplates of Blazing Light
					i(21668),	-- Scaled Leggings of Qiraji Fury
					i(21648),	-- Recomposed Boots
					i(21670),	-- Badge of the Swarmguard
				},
			}),
			e(1545, {	-- Fankriss the Unyielding
				["creatureID"] = 15510,
				["groups"] = {
					i(21635),	-- Barb of the Sand Reaver
					i(21650),	-- Ancient Qiraji Ripper
					i(21664),	-- Barbed Choker
					i(21665),	-- Mantle of Wicked Revenge
					i(21639),	-- Pauldrons of the Unrelenting
					i(21627),	-- Cloak of Untold Secrets
					i(21663),	-- Robes of the Guardian Saint
					i(21652),	-- Silithid Carapace Chestguard
					i(21651),	-- Scaled Sand Reaver Leggings
					i(21645),	-- Hive Tunneler's Boots
					i(21647),	-- Fetish of the Sand Reaver
					i(22402, {	-- Libram of Grace
						["timeline"] = { REMOVED_5_0_4 },
					}),
					i(22396, {	-- Totem of Life
						["timeline"] = { REMOVED_5_0_4 },
					}),
				},
			}),
			e(1548, {	-- Viscidus
				["description"] =
					-- #if BEFORE CATA
					"This boss requires 200 frost hits to freeze. Once frozen, you need 75 melee hits to shatter him. Equipping barov peasant caller trinket and using it after boss freezes will help to do this.",
					-- #else
					"This boss requires 20 frost hits to freeze. Once frozen, you need 30 melee hits to shatter him. Equipping the Crate of Kidnapped Puppies or Barov Peasant Caller and using it after the boss freezes will help.",
					-- #endif
				["creatureID"] = 15299,
				["groups"] = {
					i(20928),	-- Qiraji Bindings of Command
					i(20932),	-- Qiraji Bindings of Dominance
					i(21622),	-- Sharpened Silithid Femur
					i(21624),	-- Gauntlets of Kalimdor
					i(21623),	-- Gauntlets of the Righteous Champion
					i(21626),	-- Slime-Coated Leggings
					i(21677),	-- Ring of Qiraji Fury
					i(21625),	-- Scarab Brooch
					i(22399, {	-- Idol of Health
						["timeline"] = { REMOVED_5_0_4 },
					}),
					i(93039, {	-- Viscidus Globule (PET!)
						["timeline"] = { ADDED_5_1_0 },
					}),
				},
			}),
			e(1546, {	-- Princess Huhuran
				["creatureID"] = 15509,
				["groups"] = {
					i(20928),	-- Qiraji Bindings of Command
					i(20932),	-- Qiraji Bindings of Dominance
					i(21616),	-- Huhuran's Stinger
					i(21621),	-- Cloak of the Golden Hive
					i(21618),	-- Hive Defiler Wristguards
					i(21619),	-- Gloves of the Messiah
					i(21617),	-- Wasphide Gauntlets
					i(21620),	-- Ring of the Martyr
				},
			}),
			-- #if AFTER LEGION
			e(1549, {	-- The Twin Emperors
			-- #endif
				n(15276, {	-- Emperor Vek'lor
					i(20735),	-- Formula: Enchant Cloak - Subtlety (RECIPE!)
					i(20930),	-- Vek'lor's Diadem
					i(21597),	-- Royal Scepter of Vek'lor
					i(21602),	-- Qiraji Execution Bracers
					i(21599),	-- Vek'lor's Gloves of Devastation
					i(21598),	-- Royal Qiraji Belt
					i(21600),	-- Boots of Epiphany
					i(21601),	-- Ring of Emperor Vek'lor
					i(93040, {	-- Anubisath Idol (PET!)
						["timeline"] = { ADDED_5_1_0 },
					}),
				}),
				n(15275, {	-- Emperor Vek'nilash
					i(20726),	-- Formula: Enchant Gloves - Threat (RECIPE!)
					i(20926),	-- Vek'nilash's Circlet
					i(21679),	-- Kalimdor's Revenge
					i(21608),	-- Amulet of Vek'nilash
					i(21604),	-- Bracelets of Royal Redemption
					i(21605),	-- Gloves of the Hidden Temple
					i(21606),	-- Belt of the Fallen Emperor
					i(21607),	-- Grasp of the Fallen Emperor
					i(21609),	-- Regenerating Belt of Vek'nilash
				}),
			-- #if AFTER LEGION
			}),
			-- #endif
			e(1550, {	-- Ouro
				["creatureID"] = 15517,
				["groups"] = {
					i(20927),	-- Ouro's Intact Hide
					i(20931),	-- Skin of the Great Sandworm
					i(23557),	-- Larvae of the Great Worm
					i(21613, {	-- Wormhide Boots
						["timeline"] = { ADDED_10_1_7 },
					}),
					i(21610),	-- Wormscale Blocker
					i(21615),	-- Don Rigoberto's Lost Hat
					i(21611),	-- Burrower Bracers
					i(23570),	-- Jom Gabbar
					i(23558),	-- The Burrower's Shell
				},
			}),
			e(1551, {	-- C'Thun
				["creatureID"] = 15727,
				["groups"] = {
					ach(687, {	-- Temple of Ahn'Qiraj
						-- #if BEFORE WRATH
						["sourceQuest"] = 8801,	-- C'Thun's Legacy
						-- #endif
					}),
					ach(5058, {	-- Temple of Ahn'Qiraj Guild Run
						["timeline"] = { ADDED_4_0_3 },
					}),
					i(21221),	-- Eye of C'Thun
					applyclassicphase(PHASE_SIX, {
						["itemID"] = 22734,	-- Base of Atiesh
						["classes"] = { PRIEST, MAGE, WARLOCK, DRUID },
					}),
					i(20929),	-- Carapace of the Old God
					i(20933),	-- Husk of the Old God
					i(21134),	-- Dark Edge of Insanity
					i(21126),	-- Death's Sting
					i(21839),	-- Scepter of the False Prophet
					i(22732),	-- Mark of C'Thun
					i(21583),	-- Cloak of Clarity
					i(22731),	-- Cloak of the Devoured
					i(21585),	-- Dark Storm Gauntlets
					i(21581),	-- Gauntlets of Annihilation
					i(21586),	-- Belt of Never-Ending Agony
					i(22730),	-- Eyestalk Waist Cord
					i(21582),	-- Grasp of the Old God
					i(21596),	-- Ring of the Godslayer
					i(21579),	-- Vanquished Tentacle of C'Thun
				},
			}),
		},
	}),
})));