-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

root(ROOTS.Instances, expansion(EXPANSION.TBC, applyclassicphase(TBC_PHASE_ONE, bubbleDown({ ["timeline"] = { ADDED_2_0_1 } }, {
	inst(747, {	-- Magtheridon's Lair
		["lore"] = "After the Legion came to Outland, Magtheridon controlled all but small pockets of Outland. Even so, he was taken largely by surprise when Illidan and his allies conquered the Black Temple. Many believed that Magtheridon had been slain in the attack, but, when Illidan discovered that Magtheridon's blood had a transformative, corrupting effect on orcs, the beaten pit lord was dragged to Hellfire Citadel.\n\nBound by chains both physical and magical, Magtheridon survives, at the brink of death. Each day, Illidan's minions drain his tainted blood, pooling it for a purpose as malevolent as Magtheridon himself: the creation of a new army of barbaric fel orcs.",
		-- #if BEFORE WRATH
		["zone-text-areaID"] = 3836,	-- Magtheridon's Lair
		-- #endif
		["mapID"] = MAGTHERIDONS_LAIR,
		["coord"] = { 47.51, 52.08, HELLFIRE_PENINSULA },	-- Magtheridon's Lair, Hellfire Peninsula
		["sharedLockout"] = 1,
		["isRaid"] = true,
		["lvl"] = lvlsquish(68, 68, 30),	-- Level 68s could zone in without any attunements. TODO: Check this.
		["groups"] = {
			n(QUESTS, {
				q(11002, {	-- The Fall of Magtheridon (A)
					["provider"] = { "i", 32385 },	-- Magtheridon's Head
					["maps"] = { HELLFIRE_PENINSULA },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(28792),	-- A'dal's Signet of Defense
						i(28793),	-- Band of Crimson Fury
						i(28790),	-- Naaru Lightwarden's Band
						i(28791),	-- Ring of the Recalcitrant
					},
				}),
				q(11003, {	-- The Fall of Magtheridon (H)
					["provider"] = { "i", 32386 },	-- Magtheridon's Head
					["maps"] = { HELLFIRE_PENINSULA },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(28792),	-- A'dal's Signet of Defense
						i(28793),	-- Band of Crimson Fury
						i(28790),	-- Naaru Lightwarden's Band
						i(28791),	-- Ring of the Recalcitrant
					},
				}),
				q(10888, {	-- Trial of the Naaru: Magtheridon
					["sourceQuests"] = {
						10884,	-- Trial of the Naaru: Mercy
						10885,	-- Trial of the Naaru: Strength
						10886,	-- Trial of the Naaru: Tenacity
					},
					["qg"] = 18481,	-- A'dal
					["coord"] = { 54.2, 44.4, SHATTRATH_CITY },
					["timeline"] = { REMOVED_3_0_2 },
					["groups"] = {
						objective(1, {	-- Magtheridon slain
							["provider"] = { "n", 17257 },	-- Magtheridon
						}),
						i(31746),	-- Phoenix-Fire Band
						i(31704, {	-- The Tempest Key
							-- #if AFTER WRATH
							["timeline"] = { REMOVED_2_3_0 },
							-- #endif
						}),
						ach(432, {	-- Champion of the Naaru (Achievement)
							["sourceQuest"] = 10888,	-- Trial of the Naaru: Magtheridon
							["timeline"] = { REMOVED_3_0_2 },
						}),
						title(36, {	-- Champion of the Naaru
							["timeline"] = { REMOVED_3_0_2 },
						}),
					},
				}),
				q(13430, {	-- Trial of the Naaru: Magtheridon
					["sourceQuests"] = {
						10884,	-- Trial of the Naaru: Mercy
						10885,	-- Trial of the Naaru: Strength
						10886,	-- Trial of the Naaru: Tenacity
					},
					["altQuests"] = { 10888 },	-- Trial of the Naaru: Magtheridon (legacy version)
					["qg"] = 18481,	-- A'dal
					["coord"] = { 54.2, 44.4, SHATTRATH_CITY },
					["timeline"] = { ADDED_3_0_2 },
					["groups"] = {
						objective(1, {	-- Magtheridon slain
							["provider"] = { "n", 17257 },	-- Magtheridon
						}),
						i(31746),	-- Phoenix-Fire Band
					},
				}),
			}),
			e(1566, {
				["creatureID"] = 17257,
				["groups"] = {
					ach(693, {	-- Magtheridon's Lair
						-- #if NOT ANYCLASSIC
						-- CRIEVE NOTE: This achievement can be earned ahead of time by having completing one of 4 quests.
						["timeline"] = { ADDED_3_0_2 },
						-- #endif
					}),
					ach(5087, {	-- Magtheridon's Lair Guild Run
						["timeline"] = { ADDED_4_0_3 },
					}),
					i(32385, {	-- Magtheridon's Head
						["races"] = ALLIANCE_ONLY,
					}),
					i(32386, {	-- Magtheridon's Head
						["races"] = HORDE_ONLY,
					}),
					i(29754, {	-- Chestguard of the Fallen Champion
						["classes"] = { PALADIN, ROGUE, SHAMAN },
					}),
					i(29753, {	-- Chestguard of the Fallen Defender
						["classes"] = { DRUID, PRIEST, WARRIOR },
					}),
					i(29755, {	-- Chestguard of the Fallen Hero
						["classes"] = { HUNTER, MAGE, WARLOCK },
					}),
					i(34845),	-- Pit Lord's Satchel
					i(28782),	-- Crystalheart Pulse-Staff
					i(28774),	-- Glaive of the Pit
					i(28783),	-- Eredar Wand of Obliteration
					i(29458),	-- Aegis of the Vindicator
					i(28781),	-- Karaborian Talisman
					i(28775),	-- Thundering Greathelm
					i(28777),	-- Cloak of the Pit Stalker
					i(28776),	-- Liar's Tongue Gloves
					i(28780),	-- Soul-Eater's Handwraps
					i(28779),	-- Girdle of the Endless Pit
					i(28778),	-- Terror Pit Girdle
					i(28789),	-- Eye of Magtheridon
					i(34846, {	-- Black Sack of Gems
						-- #if BEFORE WRATH
						["description"] = "The epic gems may not be available until Black Temple is released, however, some users have reported getting one out of this bag already.",
						-- #endif
						["timeline"] = { ADDED_2_4_0 },
						["groups"] = {
							i(32227),	-- Crimson Spinel
							i(32228),	-- Empyrean Sapphire
							i(32229),	-- Lionseye
							i(32231),	-- Pyrestone
							i(32230),	-- Shadowsong Amethyst
							i(32249),	-- Seaspray Emerald
							i(23440),	-- Dawnstone
							i(23436),	-- Living Ruby
							i(23441),	-- Nightseye
							i(23439),	-- Noble Topaz
							i(23438),	-- Star of Elune
							i(23437),	-- Talasite
						},
					}),
				},
			}),
		},
	}),
}))));
-- #if AFTER TBC
root(ROOTS.HiddenQuestTriggers, {
	expansion(EXPANSION.TBC, {
		q(11116),	-- Trial of the Naaru: (QUEST FLAG)
	}),
});
-- #endif
