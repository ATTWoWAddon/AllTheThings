-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

root(ROOTS.Instances, {
	inst(2999, {	-- Ruins of Lordaeron
		-- ["lore"] = "",
		["icon"] = [[~_.asset("ruinsoflordaeron")]],
		["zone-text-areaID"] = 16611,	-- Ruins of Lordaeron
		["coord"] = { 50.0, 50.0, MAP.TIRISFAL_GLADES },
		["timeline"] = { TIMELINE.ADDED_1_60_1 },
		["lvl"] = 15,
		["groups"] = {
			n(QUESTS, {
				q(92401, {	-- A Frightened Request
					qg = 250686,	-- Tabitha Heartweaver
					coord = { 44.4, 43.0, MAP.SILVERPINE_FOREST },
					races = HORDE_ONLY,
					lvl = 15,
					groups = {
						i(251485),	-- Edward's Knife
						i(251486),	-- Tabitha's Cuffs
					},
				}),
				q(95250, {	-- Abominable Creatures
					qg = 265701,	-- Captain Truman
					races = ALLIANCE_ONLY,
					lvl = 16,
					groups = {
						objective(1, {	-- 0/1 Head of the Baron
							provider = { "i", 268518 },	-- Head of the Baron
							cr = 250660,	-- The Baron
						}),
						i(279865),	-- Grave Shroud
						i(279864),	-- Monstrous Cleaver
						i(279867),	-- Slain Baron's Signet
					},
				}),
				q(95195, {	-- Bloodied Insignia
					qs = 268535,	-- Bloodied Insignia (QS!)
					races = ALLIANCE_ONLY,
					lvl = 16,
					groups = {
						objective(1, {	-- 0/10 Bloodied Insignia
							provider = { "i", 268540 },	-- Bloodied Insignia
						}),
						i(279868),	-- Duty Bound Leggings
						i(279869),	-- Remembrance Armor
					},
				}),
				q(95189, {	-- Crest of Lordaeron (A)
					-- CRIEVE NOTE: Missing the object
					qs = 268579,	-- Crest of Lordaeron (QS!)
					maps = { MAP.STORMWIND_CITY },
					races = ALLIANCE_ONLY,
					lvl = 15,
					groups = {
						i(280567),	-- Small Sack of Gems
					},
				}),
				q(95204, {	-- Crest of Lordaeron (H)
					-- CRIEVE NOTE: Missing the object
					qs = 275521,	-- Crest of Lordaeron (QS!)
					maps = { MAP.STORMWIND_CITY },
					races = HORDE_ONLY,
					lvl = 15,
					groups = {
						i(280567),	-- Small Sack of Gems
					},
				}),
				q(92421, {	-- Light's Justice
					qg = 266484,	-- Morbin Lightbane
					coord = { 57.8, 89.8, MAP.UNDERCITY },
					races = HORDE_ONLY,
					lvl = 15,
					groups = {
						objective(1, {	-- 0/25 Intact Limbs
							provider = { "i", 268580 },	-- Intact Limbs
						}),
						i(279875),	-- Spare Part Bindings
						i(279874),	-- The Stitcher
					},
				}),
				q(92415, {	-- Remember That I Love You (1/2)
					qs = 251522,	-- Blood-Stained Letter (QS!)
					maps = { MAP.STORMWIND_CITY },
					races = ALLIANCE_ONLY,
					lvl = 15,
				}),
				q(95161, {	-- Remember That I Love You (2/2)
					sourceQuest = 92415,	-- Remember That I Love You (1/2)
					qg = 14450,	-- Orphan Matron Nightingale
					qi = 251522,	-- Blood-Stained Letter (QS!)
					coord = { 56.2, 54.2, MAP.STORMWIND_CITY },
					maps = { MAP.DUSKWOOD },
					races = ALLIANCE_ONLY,
					lvl = 15,
					groups = {
						i(279870),	-- Tarnished Locket
					},
				}),
				q(95216, {	-- The New Plague
					qg = 11835,	-- Theodore Griffs
					coord = { 46.6, 72.0, MAP.UNDERCITY },
					races = HORDE_ONLY,
					lvl = 16,
					groups = {
						objective(1, {	-- 0/1 Highly Toxic Strain
							provider = { "i", 275443 },	-- Highly Toxic Strain
							cr = 250483,	-- Witherfang
						}),
						i(279876),	-- Plaguefang
						i(279877),	-- Blight Gloves
					},
				}),
				q(92422, {	-- The Wrath of Rath'mael
					qg = 251001,	-- Deathguard Kristof
					coord = { 65.2, 60.2, MAP.TIRISFAL_GLADES },
					races = HORDE_ONLY,
					lvl = 15,
					groups = {
						objective(1, {	-- 0/1 Rath'mael slain
							provider = { "n", 250657 },	-- Rath'mael
						}),
						i(251533),	-- Forsaken Greataxe
						i(251534),	-- Gnarled Necromancer's Staff
					},
				}),
				q(97288, {	-- Unending Torment (1/5)
					qs = 280438,	-- Abominable Head (QS!)
					maps = { MAP.UNDERCITY },
					races = HORDE_ONLY,
					lvl = 16,
				}),
				q(97289, {	-- Unending Torment (2/5)
					sourceQuest = 97288,	-- Unending Torment (1/5)
					qg = 2055,	-- Master Apothecary Faranell <Royal Apothecary Society>
					qi = 268518,	-- Head of the Baron (PQI!)
					coord = { 48.4, 69.4, MAP.UNDERCITY },
					races = HORDE_ONLY,
					lvl = 16,
				}),
				q(97290, {	-- Unending Torment (3/5)
					sourceQuest = 97289,	-- Unending Torment (2/5)
					qg = 271613,	-- Unfinished Abomination
					coord = { 46.2, 63.0, MAP.UNDERCITY },
					races = HORDE_ONLY,
					lvl = 16,
					groups = {
						i(279865),	-- Grave Shroud
						i(279864),	-- Monstrous Cleaver
						i(279867),	-- Slain Baron's Signet
					},
				}),
				q(97291, {	-- Unending Torment (4/5)
					sourceQuest = 97290,	-- Unending Torment (3/5)
					qg = 2055,	-- Master Apothecary Faranell <Royal Apothecary Society>
					coord = { 48.4, 69.4, MAP.UNDERCITY },
					races = HORDE_ONLY,
					lvl = 16,
					groups = {
						objective(1, {	-- 0/1 Toxic Skullcap
							provider = { "i", 281246 },	-- Toxic Skullcap
							coords = {
								{ 63.4, 40.0, MAP.UNDERCITY },
								{ 68.8, 40.0, MAP.UNDERCITY },
								{ 69.0, 47.4, MAP.UNDERCITY },
								{ 63.4, 47.4, MAP.UNDERCITY },
							},
							cr = 4554,	-- Tawny Grisette <Mushroom Vendor
						}),
						objective(2, {	-- 0/1 Blisterweed
							-- CRIEVE NOTE: Get coordinate and the objectID
							providers = {
								{ "i", 281300 },	-- Blisterweed
								--{ "o",  },	-- Blisterweed
							},
						}),
						objective(3, {	-- 0/1 Essence of Agony
							provider = { "i", 8923 },	-- Essence of Agony
							coord = { 75.6, 51.6, MAP.UNDERCITY },
							cr = 4585,	-- Ezekiel Graves <Poison Vendor>
						}),
					},
				}),
				q(97292, {	-- Unending Torment (5/5)
					sourceQuest = 97291,	-- Unending Torment (4/5)
					qg = 2055,	-- Master Apothecary Faranell <Royal Apothecary Society>
					coord = { 48.4, 69.4, MAP.UNDERCITY },
					races = HORDE_ONLY,
					lvl = 16,
					groups = {
						objective(1, {	-- 0/1 Hissing Serum administered
							provider = { "i", 281327 },	-- Hissing Serum
						}),
					},
				}),
			}),
			n(RARES, {
				e(3408, {	-- Lordaeron Captain
					description = "This is a Rare Creature and, as such, is not always present.",
					creatureID = 255699,	-- Lordaeron Captain
					groups = {
						i(6641),	-- Haunting Blade
						i(6642),	-- Phantom Armor
					},
				}),
			}),
			n(ZONE_DROPS, {
				i(268535),	-- Bloodied Insignia (QS!)
			}),
			e(3353, {	-- Witherfang
				creatureID = 250483,	-- Witherfang
				groups = {
					i(271201),	-- Atrophic Girdle
					i(271203),	-- Segmented Spider Leg
					i(271202),	-- Witherbite Bracers
				},
			}),
			e(3355, {	-- The Baron
				creatureID = 250660,	-- The Baron
				groups = {
					i(271205),	-- Abomination Bones
					i(271206),	-- Leftover Abomination Skin
					i(271204),	-- Meathook Slicer
					i(280438, {	-- Abominable Head (H)
						races = HORDE_ONLY,
					}),
				},
			}),
			e(3411, {	-- Viktor the Vile
				creatureID = 256035,	-- Viktor the Vile
				groups = {
					i(271212),	-- Bloodied Chestwraps
					i(271218),	-- Vileblood Scimitar
					i(271211),	-- Vilewalkers
				},
			}),
			e(3357, {	-- The Abandoned
				creatureID = 250631,	-- The Abandoned
				groups = {
					i(271208),	-- Grip of Fear
					i(271207),	-- Rotmender's Leggings
					i(271216),	-- Scepter of the Abandoned
				},
			}),
			e(3412, {	-- Bjork
				creatureID = 256097,	-- Bjork
				groups = {
					i(271209),	-- Bonerust Leggings
					i(271217),	-- Corpse Chopper
					i(271210),	-- Tuskwrap Belt
				},
			}),
			e(3354, {	-- Rath'mael
				creatureID = 250657,	-- Rath'mael
				groups = {
					i(271215),	-- Coldspire Staff
					i(271213),	-- Mirror of Rath'mael
					i(271214),	-- Rotmender's Treads
				},
			}),
		},
	}),
});
