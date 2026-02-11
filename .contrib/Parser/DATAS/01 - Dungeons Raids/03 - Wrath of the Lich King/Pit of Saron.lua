-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

root(ROOTS.Instances, expansion(EXPANSION.WRATH, applyclassicphase(WRATH_PHASE_FOUR, bubbleDown({ ["timeline"] = { ADDED_3_3_0 } }, {
	inst(278, {	-- Pit of Saron
		["mapID"] = PIT_OF_SARON,
		["coord"] = { 52.3, 89.3, ICECROWN },
		["lvl"] = lvlsquish(78, 78, 25),
		["groups"] = {
			n(ACHIEVEMENTS, {
				ach(4517, {	-- The Pit of Saron
					crit(13317, {	-- Forgemaster Garfrost
						["_encounter"] = { 608, DIFFICULTY.DUNGEON.NORMAL },
					}),
					crit(13318, {	-- Ick and Krick
						["_encounter"] = { 609, DIFFICULTY.DUNGEON.NORMAL },
					}),
					crit(13319, {	-- Scourgelord Tyrannus and Rimefang
						["_encounter"] = { 610, DIFFICULTY.DUNGEON.NORMAL },
					}),
				}),
				ach(4520, {	-- Heroic: The Pit of Saron
					crit(13182, {	-- Forgemaster Garfrost
						["_encounter"] = { 608, DIFFICULTY.DUNGEON.HEROIC },
					}),
					crit(13173, {	-- Ick and Krick
						["_encounter"] = { 609, DIFFICULTY.DUNGEON.HEROIC },
					}),
					crit(13175, {	-- Scourgelord Tyrannus and Rimefang
						["_encounter"] = { 610, DIFFICULTY.DUNGEON.HEROIC },
					}),
				}),
			}),
			n(QUESTS, {
				q(24710, {	-- Deliverance from the Pit (A)
					["sourceQuest"] = 24498,	-- The Path to the Citadel (A)
					["qg"] = 37591,	-- Martin Victus
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(78, 78, 25),
					["groups"] = {
						objective(1, {	-- 0/1 Scourgelord Tyrannus slain
							["provider"] = { "n", 36658 },	-- Scourgelord Tyrannus
						}),
					},
				}),
				q(24712, {	-- Deliverance from the Pit (H)
					["sourceQuest"] = 24507,	-- The Path to the Citadel (H)
					["qg"] = 24712,	-- Gorkun Ironskull
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(78, 78, 25),
					["groups"] = {
						objective(1, {	-- 0/1 Scourgelord Tyrannus slain
							["provider"] = { "n", 36658 },	-- Scourgelord Tyrannus
						}),
					},
				}),
				q(24711, {	-- Frostmourne (A)
					["sourceQuest"] = 24710,	-- Deliverance from the Pit (A)
					["qg"] = 38188,	-- Lady Jaina Proudmoore
					["maps"] = { HALLS_OF_REFLECTION },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(78, 78, 25),
				}),
				q(24713, {	-- Frostmourne (H)
					["sourceQuest"] = 24712,	-- Deliverance from the Pit (H)
					["qg"] = 38189,	-- Lady Sylvanas Windrunner <Banshee Queen>
					["maps"] = { HALLS_OF_REFLECTION },
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(78, 78, 25),
				}),
				q(24498, {	-- The Path to the Citadel (A)
					["sourceQuest"] = 24683,	-- The Pit of Saron (A)
					["qg"] = 36993,	-- Lady Jaina Proudmoore
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(78, 78, 25),
					["groups"] = {
						objective(1, {	-- 0/15 Alliance Slave freed
							["provider"] = { "n", 36764 },	-- Alliance Slave
						}),
						objective(2, {	-- 0/1 Forgemaster Garfrost slain
							["provider"] = { "n", 36494 },	-- Forgemaster Garfrost
						}),
					},
				}),
				q(24507, {	-- The Path to the Citadel (H)
					["sourceQuest"] = 24682,	-- The Pit of Saron (H)
					["qg"] = 36990,	-- Lady Sylvanas Windrunner <Banshee Queen>
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(78, 78, 25),
					["groups"] = {
						objective(1, {	-- 0/15 Horde Slave freed
							["provider"] = { "n", 36770 },	-- Horde Slave
						}),
						objective(2, {	-- 0/1 Forgemaster Garfrost slain
							["provider"] = { "n", 36494 },	-- Forgemaster Garfrost
						}),
					},
				}),
			}),
			-- #if ANYCLASSIC
			n(ZONE_DROPS, {
				i(49718, {	-- Infused Saronite Bar
					["provider"] = { "o", 201592 },	-- Infused Saronite Bars
				}),
			}),
			-- #endif
			d(DIFFICULTY.DUNGEON.NORMAL, {
				n(ZONE_DROPS, {
					i(49852),	-- Coffin Nail
					i(49854),	-- Mantle of Tattered Feathers
					i(49855),	-- Plated Grips of Korth'azz
					i(49853),	-- Titanium Links of Lore
				}),
				e(608, {	-- Forgemaster Garfrost
					["creatureID"] = 36494,	-- Forgemaster Garfrost
					["groups"] = {
						i(49802),	-- Garfrost's Two-Ton Hammer
						i(49801),	-- Unspeakable Secret
						-- #if AFTER 7.3.5
						i(50227),	-- Surgeon's Needle (7.3.5 - Used to be only Heroic Mode)
						-- #endif
						i(49804),	-- Polished Mirror Helm
						-- #if AFTER 7.3.5
						i(50228),	-- Barbed Ymirheim Choker (7.3.5 - Used to be only Heroic Mode)
						i(50234),	-- Shoulderplates of Frozen Blood (7.3.5 - Used to be only Heroic Mode)
						i(50233),	-- Spurned Val'kyr Shoulderguards (7.3.5 - Used to be only Heroic Mode)
						i(50230),	-- Malykriss Vambraces (7.3.5 - Used to be only Heroic Mode)
						-- #endif
						i(49806),	-- Flayer's Black Belt
						-- #if AFTER 7.3.5
						i(50229),	-- Legguards of the Frosty Depths (7.3.5 - Used to be only Heroic Mode)
						-- #endif
						i(49805),	-- Ice-Steeped Sandals
						i(49803),	-- Ring of Carnelian and Bone
					},
				}),
				e(609, {	-- Ick and Krick
					["creatureID"] = 36476,	-- Ick <Krick's Minion>
					["groups"] = {
						i(49807),	-- Krick's Beetle Stabber
						-- #if AFTER 7.3.5
						i(50262),	-- Felglacier Bolter (7.3.5 - Used to be only Heroic Mode)
						i(50266),	-- Ancient Polar Bear Hide (7.3.5 - Used to be only Heroic Mode)
						i(50264),	-- Chewed Leather Wristguards (7.3.5 - Used to be only Heroic Mode)
						-- #endif
						i(49809),	-- Wristguards of Subterranean Moss
						i(49808),	-- Bent Gold Belt
						-- #if AFTER 7.3.5
						i(50263),	-- Braid of Salt and Fire (7.3.5 - Used to be only Heroic Mode)
						-- #endif
						i(49810),	-- Scabrous Zombie Leather Belt
						i(49811),	-- Black Dragonskin Breeches
						-- #if AFTER 7.3.5
						i(50265),	-- Blackened Ghoul Skin Leggings (7.3.5 - Used to be only Heroic Mode)
						-- #endif
						i(49812),	-- Purloined Wedding Ring
						-- #if AFTER 7.3.5
						i(50235),	-- Ick's Rotting Thumb (7.3.5 - Used to be only Heroic Mode)
						-- #endif
					},
				}),
				e(610, {	-- Scourgelord Tyrannus
					["creatureID"] = 36658,	-- Scourgelord Tyrannus
					["groups"] = {
						-- #if AFTER 7.3.5
						i(50273),	-- Engraved Gargoyle Femur (7.3.5 - Used to be only Heroic Mode)
						i(50267),	-- Tyrannical Beheader (7.3.5 - Used to be only Heroic Mode)
						i(50268),	-- Rimefang's Claw (7.3.5 - Used to be only Heroic Mode)
						-- #endif
						i(49813),	-- Rimebane Rifle
						i(49821),	-- Protector of Frigid Souls
						i(49824),	-- Horns of the Spurned Val'kyr
						i(49819),	-- Skeleton Lord's Cranium
						i(49818),	-- Painfully Sharp Choker
						i(49823),	-- Cloak of the Fallen Cardinal
						-- #if AFTER 7.3.5
						i(50272),	-- Frost Wyrm Ribcage (7.3.5 - Used to be only Heroic Mode)
						i(50285),	-- Icebound Bronze Cuirass (7.3.5 - Used to be only Heroic Mode)
						-- #endif
						i(49825),	-- Palebone Robes
						i(49816),	-- Scourgelord's Frigid Chestplate
						i(49826),	-- Shroud of Rime
						i(49820),	-- Gondria's Spectral Bracer
						-- #if AFTER 7.3.5
						i(50284),	-- Rusty Frozen Fingerguards (7.3.5 - Used to be only Heroic Mode)
						i(50270),	-- Belt of Rotted Fingernails (7.3.5 - Used to be only Heroic Mode)
						i(50269),	-- Fleshwerk Leggings (7.3.5 - Used to be only Heroic Mode)
						-- #endif
						i(49822),	-- Rimewoven Silks
						i(49817),	-- Shaggy Wyrmleather Leggings
						-- #if AFTER 7.3.5
						i(50283),	-- Mudslide Boots (7.3.5 - Used to be only Heroic Mode)
						i(50286),	-- Prelate's Snowshoes (7.3.5 - Used to be only Heroic Mode)
						i(50271),	-- Band of Stained Souls (7.3.5 - Used to be only Heroic Mode)
						i(50259),	-- Nevermelting Ice Crystal (7.3.5 - Used to be only Heroic Mode)
						-- #endif
					},
				}),
			}),
			d(DIFFICULTY.DUNGEON.HEROIC, {
				["lvl"] = lvlsquish(80, 80, 30),
				["groups"] = {
					n(ACHIEVEMENTS, {
						ach(4525),	-- Don't Look Up
					}),
					n(ZONE_DROPS, {
						a(i(50379)),	-- Battered Hilt [A]
						h(i(50380)),	-- Battered Hilt [H]
						i(50318),	-- Ghostly Wristwraps
						i(50315),	-- Seven-Fingered Claws
						i(50319),	-- Unsharpened Ice Razor
					}),
					e(608, {	-- Forgemaster Garfrost
						["creatureID"] = 36494,	-- Forgemaster Garfrost
						["groups"] = {
							ach(4524),	-- Doesn't Go to Eleven
							-- #if AFTER 7.3.5
							i(49802),	-- Garfrost's Two-Ton Hammer (7.3.5 - Used to be only Normal Mode)
							i(49801),	-- Unspeakable Secret (7.3.5 - Used to be only Normal Mode)
							-- #endif
							i(50227),	-- Surgeon's Needle
							-- #if AFTER 7.3.5
							i(49804),	-- Polished Mirror Helm (7.3.5 - Used to be only Normal Mode)
							-- #endif
							i(50228),	-- Barbed Ymirheim Choker
							i(50234),	-- Shoulderplates of Frozen Blood
							i(50233),	-- Spurned Val'kyr Shoulderguards
							i(50230),	-- Malykriss Vambraces
							-- #if AFTER 7.3.5
							i(49806),	-- Flayer's Black Belt (7.3.5 - Used to be only Normal Mode)
							-- #endif
							i(50229),	-- Legguards of the Frosty Depths
							-- #if AFTER 7.3.5
							i(49805),	-- Ice-Steeped Sandals (7.3.5 - Used to be only Normal Mode)
							i(49803),	-- Ring of Carnelian and Bone (7.3.5 - Used to be only Normal Mode)
							-- #endif
						},
					}),
					e(609, {	-- Ick and Krick
						["creatureID"] = 36476,	-- Ick <Krick's Minion>
						["groups"] = {
							-- #if AFTER 7.3.5
							i(49807),	-- Krick's Beetle Stabber (7.3.5 - Used to be only Normal Mode)
							-- #endif
							i(50262),	-- Felglacier Bolter
							i(50266),	-- Ancient Polar Bear Hide
							i(50264),	-- Chewed Leather Wristguards
							-- #if AFTER 7.3.5
							i(49809),	-- Wristguards of Subterranean Moss (7.3.5 - Used to be only Normal Mode)
							i(49808),	-- Bent Gold Belt (7.3.5 - Used to be only Normal Mode)
							-- #endif
							i(50263),	-- Braid of Salt and Fire
							-- #if AFTER 7.3.5
							i(49810),	-- Scabrous Zombie Leather Belt (7.3.5 - Used to be only Normal Mode)
							i(49811),	-- Black Dragonskin Breeches (7.3.5 - Used to be only Normal Mode)
							-- #endif
							i(50265),	-- Blackened Ghoul Skin Leggings
							-- #if AFTER 7.3.5
							i(49812),	-- Purloined Wedding Ring (7.3.5 - Used to be only Normal Mode)
							-- #endif
							i(50235),	-- Ick's Rotting Thumb
						},
					}),
					e(610, {	-- Scourgelord Tyrannus
						["creatureID"] = 36658,	-- Scourgelord Tyrannus
						["groups"] = {
							ach(5113, {	-- Heroic: The Pit of Saron Guild Run
								["timeline"] = { ADDED_4_0_3 },
							}),
							i(50273),	-- Engraved Gargoyle Femur
							i(50267),	-- Tyrannical Beheader
							i(50268),	-- Rimefang's Claw
							-- #if AFTER 7.3.5
							i(49813),	-- Rimebane Rifle (7.3.5 - Used to be only Normal Mode)
							i(49821),	-- Protector of Frigid Souls (7.3.5 - Used to be only Normal Mode)
							i(49824),	-- Horns of the Spurned Val'kyr (7.3.5 - Used to be only Normal Mode)
							i(49819),	-- Skeleton Lord's Cranium (7.3.5 - Used to be only Normal Mode)
							i(49818),	-- Painfully Sharp Choker (7.3.5 - Used to be only Normal Mode)
							i(49823),	-- Cloak of the Fallen Cardinal (7.3.5 - Used to be only Normal Mode)
							-- #endif
							i(50272),	-- Frost Wyrm Ribcage
							i(50285),	-- Icebound Bronze Cuirass
							-- #if AFTER 7.3.5
							i(49825),	-- Palebone Robes (7.3.5 - Used to be only Normal Mode)
							i(49816),	-- Scourgelord's Frigid Chestplate (7.3.5 - Used to be only Normal Mode)
							i(49826),	-- Shroud of Rime (7.3.5 - Used to be only Normal Mode)
							i(49820),	-- Gondria's Spectral Bracer (7.3.5 - Used to be only Normal Mode)
							-- #endif
							i(50284),	-- Rusty Frozen Fingerguards
							i(50270),	-- Belt of Rotted Fingernails
							i(50269),	-- Fleshwerk Leggings
							-- #if AFTER 7.3.5
							i(49822),	-- Rimewoven Silks (7.3.5 - Used to be only Normal Mode)
							i(49817),	-- Shaggy Wyrmleather Leggings (7.3.5 - Used to be only Normal Mode)
							-- #endif
							i(50283),	-- Mudslide Boots
							i(50286),	-- Prelate's Snowshoes
							i(50271),	-- Band of Stained Souls
							i(50259),	-- Nevermelting Ice Crystal
						},
					}),
				},
			}),
		},
	}),
}))));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.WOD, bubbleDownSelf({ ["timeline"] = { ADDED_6_0_2 } }, {
	inst(278, {
		q(35438),	-- Pit of Saron Reward Quest - Normal completion
		q(35440),	-- Pit of Saron Reward Quest - Heroic completion
	}),
})));
