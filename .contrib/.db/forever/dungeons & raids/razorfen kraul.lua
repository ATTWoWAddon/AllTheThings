-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

root(ROOTS.Instances, {
	inst(234, {	-- Razorfen Kraul
		["lore"] = "Ten thousand years ago - during the War of the Ancients, the mighty demigod, Agamaggan, came forth to battle the Burning Legion. Though the colossal boar fell in combat, his actions helped save Azeroth from ruin. Yet over time, in the areas where his blood fell, massive thorn-ridden vines sprouted from the earth.\n\nThe quillboar - believed to be the mortal offspring of the mighty god, came to occupy these regions and hold them sacred. The heart of these thorn-colonies was known as the Razorfen. The great mass of Razorfen Kraul was conquered by the old crone, Charlga Razorflank. Under her rule, the shamanistic quillboar stage attacks on rival tribes as well as Horde villages. Some speculate that Charlga has even been negotiating with agents of the Scourge - aligning her unsuspecting tribe with the ranks of the Undead for some insidious purpose.",
		["zone-text-areaID"] = 491,	-- Razorfen Kraul
		["mapID"] = MAP.RAZORFEN_KRAUL,
		["coord"] = { 40.94, 94.55, MAP.THE_BARRENS },
		["lvl"] = 17,
		["groups"] = {
			n(QUESTS, {
				q(1102, {	-- A Vengeful Fate
					["qg"] = 4451,	-- Auld Stonespire
					["coord"] = { 36.2, 59.8, MAP.THUNDER_BLUFF },
					["races"] = HORDE_ONLY,
					["lvl"] = 29,
					["groups"] = {
						objective(1, {	-- 0/1 Razorflank's Heart
							["provider"] = { "i", 5793 },	-- Razorflank's Heart
						}),
						i(6725),	-- Marbled Buckler
						i(4197),	-- Berylline Pads
						i(6742),	-- Stonefist Girdle
					},
				}),
				q(6522, {	-- An Unholy Alliance (1/2)
					["provider"] = { "i", 17008 },	-- Small Scroll
					["maps"] = { MAP.UNDERCITY },
					["races"] = HORDE_ONLY,
					["lvl"] = 28,
				}),
				q(1221, {	-- Blueleaf Tubers
					["qg"] = 3446,	-- Mebok Mizzyrix
					["coord"] = { 62.4, 37.6, MAP.THE_BARRENS },
					["lvl"] = 20,
					["groups"] = {
						objective(1, {	-- 0/6 Blueleaf Tuber
							["providers"] = {
								{ "i", 5876 },	-- Blueleaf Tuber
								{ "o", 20920 },	-- Blueleaf Tuber
								{ "i", 5880 },	-- Crate With Holes
								{ "i", 6684 },	-- Snufflenose Command Stick
							},
							["cr"] = 4781,	-- Snufflenose Gopher
						}),
						objective(2, {	-- 0/1 Crate With Holes
							["providers"] = {
								{ "i", 5880 },	-- Crate With Holes
								{ "o", 21277 },	-- Crate With Holes
							},
							["coord"] = { 62.3, 37.6, MAP.THE_BARRENS },
						}),
						objective(3, {	-- 0/1 Snufflenose Owner's Manual
							["providers"] = {
								{ "i", 5897 },	-- Snufflenose Owner's Manual
								{ "o", 21530 },	-- Snufflenose Owner's Manual
							},
							["coord"] = { 62.3, 37.6, MAP.THE_BARRENS },
						}),
						objective(4, {	-- 0/1 Snufflenose Command Stick
							["providers"] = {
								{ "i", 6684 },	-- Snufflenose Command Stick
								{ "o", 68865 },	-- Snufflenose Command Stick
							},
							["coord"] = { 62.3, 37.6, MAP.THE_BARRENS },
						}),
						i(6755, {	-- A Small Container of Gems
							i(6756),	-- Jewelry Box
						}),
					},
				}),
				q(1109, {	-- Going, Going, Guano!
					["qg"] = 2055,	-- Master Apothecary Faranell <Royal Apothecary Society>
					["coord"] = { 49.0, 69.8, MAP.UNDERCITY },
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- 0/1 Kraul Guano
							["provider"] = { "i", 5801 },	-- Kraul Guano
						}),
					},
				}),
				q(1100, {	-- Lonebrow's Journal
					["provider"] = { "o", 19861 },	-- Henrig Lonebrow's Journal
					["qs"] = 5791,	-- Henrig Lonebrow's Journal (QS!)
					["qi"] = 5790,	-- Henrig Lonebrow's Journal (PQI!)
					["coord"] = { 30.0, 24.0, MAP.THOUSAND_NEEDLES },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 29,
				}),
				q(1142, {	-- Mortality Wanes
					["qg"] = 4510,	-- Heralath Fallowbrook
					["coord"] = { 69.4, 67.6, MAP.DARNASSUS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 25,
					["groups"] = {
						objective(1, {	-- 0/1 Treshala's Pendant
							["provider"] = { "i", 5825 },	-- Treshala's Pendant
							["description"] = "Drops from any creature in the Dungeon.",
						}),
						i(6751),	-- Mourning Shawl
						i(6752),	-- Lancer Boots
					},
				}),
				q(1101, {	-- The Crone of the Kraul
					["sourceQuest"] = 1100,	-- Lonebrow's Journal
					["qg"] = 4048,	-- Falfindel Waywarder
					["coord"] = { 89.6, 46.6, MAP.FERALAS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 29,
					["groups"] = {
						objective(1, {	-- 0/1 Razorflank's Medallion
							["provider"] = { "i", 5792 },	-- Razorflank's Medallion
						}),
						i(6725),	-- Marbled Buckler
						i(4197),	-- Berylline Pads
						i(6742),	-- Stonefist Girdle
						i(3041),	-- "Mage-Eye" Blunderbuss
					},
				}),
				q(1144, {	-- Willix the Importer
					["qg"] = 4508,	-- Willix the Importer
					["lvl"] = 22,
					["groups"] = {
						i(6748),	-- Monkey Ring
						i(6750),	-- Snake Hoop
						i(6749),	-- Tiger Band
					},
				}),
			}),
			n(ZONE_DROPS, {
				i(3172, {	-- Boar Intestines
					["crs"] = {
						4512,	-- Rotting Agam'ar
						4514,	-- Raging Agam'ar
						4511,	-- Agam'ar
					},
				}),
				i(5801, {	-- Kraul Guano
					["crs"] = {
						4539,	-- Greater Kraul Bat
						4538,	-- Kraul Bat
					},
				}),
				i(1488),	-- Avenger's Armor
				i(2264),	-- Mantle of Thieves
				i(2039),	-- Plains Ring
				i(4438),	-- Pugilist Bracers
				i(1975),	-- Pysan's Old Greatsword
				i(1976),	-- Slaghammer
				i(2549),	-- Staff of the Shade
				i(1727),	-- Sword of Decay
				i(776),	-- Vendetta
				i(3569, {	-- Vicar's Robe
					["cr"] = 4517,	-- Death's Head Priest
				}),
				i(1978),	-- Wolfclaw Gloves
			}),
			n(6168, {	-- Roogug
				["description"] = "Warriors will need to kill this boss for their racial armor quest. If you are the leader of the group, don't be surprised if they ask to kill this boss first.",
				["groups"] = {
					i(274155, {	-- Geomancer Headdress
						timeline = { TIMELINE.ADDED_1_60_1 },
					}),
					i(274152, {	-- Roogug's Severed Head
						timeline = { TIMELINE.ADDED_1_60_1 },
					}),
					i(6841),	-- Vial of Phlogiston
				},
			}),
			n(4424, {	-- Aggem Thorncurse <Death's Head Prophet>
				i(274158, {	-- Death Prophet Spine
					timeline = { TIMELINE.ADDED_1_60_1 },
				}),
				i(6681),	-- Thornspike
			}),
			n(4428, {	-- Death Speaker Jargba <Death's Head Captain>
				i(2816),	-- Death Speaker Scepter
				i(6685),	-- Death Speaker Mantle
				i(6682),	-- Death Speaker Robes
			}),
			n(4438, {	-- Razorfen Spearhide
				i(6679),	-- Armor Piercer
			}),
			n(4420, {	-- Overlord Ramtusk
				i(6687),	-- Corpsemaker
				i(274161, {	-- Quillord Mail Leggings
					timeline = { TIMELINE.ADDED_1_60_1 },
				}),
				i(6686),	-- Tusken Helm
			}),
			n(4842, {	-- Earthcaller Halmgar
				["description"] = "After you kill Overlord Ramtusk, go west over a bridge to a plateau.\n\nThis is a Rare Creature and, as such, is not always present.",
				["groups"] = {
					i(6689),	-- Wind Spirit Staff
					i(6688),	-- Whisperwind Headdress
				},
			}),
			n(4425, {	-- Blind Hunter
				["description"] = "This is a Rare Creature and, as such, is not always present.",
				["groups"] = {
					i(6696),	-- Nightstalker Bow
					i(6695),	-- Stygian Bone Amulet
					i(6697),	-- Batwing Mantle
				},
			}),
			n(4422, {	-- Agathelos the Raging
				i(6691),	-- Swinetusk Shank
				i(274160, {	-- Quilrager Throwing Axe
					timeline = { TIMELINE.ADDED_1_60_1 },
				}),
				i(6690),	-- Ferine Leggings
			}),
			e(901, {	-- Charlga Razorflank
				["creatureID"] = 4421,	-- Charlga Razorflank
				["groups"] = {
					i(5793),	-- Razorflank's Heart
					i(5792),	-- Razorflank's Medallion
					i(17008),	-- Small Scroll
					i(6692),	-- Pronged Reaver
					i(6694),	-- Heart of Agamaggan
					i(6693),	-- Agamaggan's Clutch
				},
			}),
		},
	}),
});
