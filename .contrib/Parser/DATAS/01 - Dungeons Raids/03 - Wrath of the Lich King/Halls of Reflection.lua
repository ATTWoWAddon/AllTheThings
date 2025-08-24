-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
root(ROOTS.Instances, expansion(EXPANSION.WRATH, applyclassicphase(WRATH_PHASE_FOUR, bubbleDown({ ["timeline"] = { ADDED_3_3_0 } }, {
	inst(276, {	-- Halls of Reflection
		["mapID"] = HALLS_OF_REFLECTION,
		["coord"] = { 52.3, 89.3, ICECROWN },
		["lvl"] = lvlsquish(78, 78, 25),
		["groups"] = {
			n(ACHIEVEMENTS, {
				ach(4518, {	-- The Halls of Reflection
					crit(13320, {	-- Falric
						["_encounter"] = { 601, DIFFICULTY.DUNGEON.NORMAL },
					}),
					crit(13321, {	-- Marwyn
						["_encounter"] = { 602, DIFFICULTY.DUNGEON.NORMAL },
					}),
					crit(13323, {	-- Survive the encounter with the Lich King
						["_encounter"] = { 603, DIFFICULTY.DUNGEON.NORMAL },
					}),
				}),
				ach(4521, {	-- Heroic: The Halls of Reflection
					crit(13177, {	-- Falric
						["_encounter"] = { 601, DIFFICULTY.DUNGEON.HEROIC },
					}),
					crit(13179, {	-- Marwyn
						["_encounter"] = { 602, DIFFICULTY.DUNGEON.HEROIC },
					}),
					crit(13181, {	-- Survive the encounter with the Lich King
						["_encounter"] = { 603, DIFFICULTY.DUNGEON.HEROIC },
					}),
				}),
			}),
			n(QUESTS, {
				q(24500, {	-- Wrath of the Lich King
					["qg"] = 37582,	-- Archmage Koreln <Kirin Tor>
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(78, 78, 25),
					["groups"] = {
						objective(1, {	-- Find Lady Jaina Proudmoore
							["provider"] = { "n", 36955 },	-- Lady Jaina Proudmoore
						}),
						objective(2, {	-- Escape The Lich King
							["provider"] = { "n", 36954 },	-- The Lich King
						}),
					},
				}),
				q(24802, {	-- Wrath of the Lich King
					["qg"] = 37779,	-- Dark Ranger Loralen
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(78, 78, 25),
					["groups"] = {
						objective(1, {	-- Find Lady Sylvanas Windrunner
							["provider"] = { "n", 37554 },	-- Lady Sylvanas Windrunner
						}),
						objective(2, {	-- Escape The Lich King
							["provider"] = { "n", 36954 },	-- The Lich King
						}),
					},
				}),
			}),
			d(DIFFICULTY.DUNGEON.NORMAL, {
				n(ZONE_DROPS, {
					i(49852),	-- Coffin Nail
					i(49854),	-- Mantle of Tattered Feathers
					i(49855),	-- Plated Grips of Korth'azz
					i(49853),	-- Titanium Links of Lore
				}),
				e(601, {	-- Falric
					["creatureID"] = 38112,	-- Falric
					["groups"] = {
						-- #if AFTER 7.3.5
						i(50290),	-- Falric's Wrist-Chopper (7.3.5 - Used to be only Heroic Mode)
						-- #endif
						i(49827),	-- Ghoulslicer
						-- #if AFTER 7.3.5
						i(50291),	-- Soulsplinter (7.3.5 - Used to be only Heroic Mode)
						-- #endif
						i(49830),	-- Fallen Sentry's Hood
						-- #if AFTER 7.3.5
						i(50293),	-- Spaulders of Black Betrayal (7.3.5 - Used to be only Heroic Mode)
						-- #endif
						i(49829),	-- Valonforth's Tarnished Pauldrons
						i(49832),	-- Eerie Runeblade Polisher
						-- #if AFTER 7.3.5
						i(50294),	-- Chestpiece of High Treason (7.3.5 - Used to be only Heroic Mode)
						i(50292),	-- Bracer of Worn Molars (7.3.5 - Used to be only Heroic Mode)
						-- #endif
						i(49828),	-- Marwyn's Macabre Fingertips
						i(49831),	-- Muddied Boots of Brill
						-- #if AFTER 7.3.5
						i(50295),	-- Spiked Toestompers (7.3.5 - Used to be only Heroic Mode)
						-- #endif
					},
				}),
				e(602, {	-- Marwyn
					["creatureID"] = 38113,	-- Marwyn
					["groups"] = {
						-- #if AFTER 7.3.5
						i(50296),	-- Orca-Hunter's Harpoon (7.3.5 - Used to be only Heroic Mode)
						-- #endif
						i(49833),	-- Splintered Icecrown Parapet
						i(49835),	-- Splintered Door of the Citadel
						-- #if AFTER 7.3.5
						i(50298),	-- Sightless Crown of Ulmaas (7.3.5 - Used to be only Heroic Mode)
						-- #endif
						i(49834),	-- Frayed Abomination Stitching Shoulders
						-- #if AFTER 7.3.5
						i(50300),	-- Choking Hauberk (7.3.5 - Used to be only Heroic Mode)
						i(50297),	-- Frostsworn Bone Chestpiece (7.3.5 - Used to be only Heroic Mode)
						-- #endif
						i(49838),	-- Carpal Tunnelers
						i(49837),	-- Mitts of Burning Hail
						-- #if AFTER 7.3.5
						i(50299),	-- Suspiciously Soft Gloves (7.3.5 - Used to be only Heroic Mode)
						-- #endif
						i(49836),	-- Frostsworn Bone Leggings
						-- #if AFTER 7.3.5
						i(50260),	-- Ephemeral Snowflake (7.3.5 - Used to be only Heroic Mode)
						-- #endif
					},
				}),
				e(603, {	-- Escape from Arthas
					["creatureID"] = 36954,	-- The Lich King
					["groups"] = {
						i(49839),	-- Mourning Malice
						-- #if AFTER 7.3.5
						i(50303),	-- Black Icicle (7.3.5 - Used to be only Heroic Mode)
						-- #endif
						i(49845),	-- Bone Golem Scapula
						i(49846),	-- Chilled Heart of the Glacier
						i(49840),	-- Hate-Forged Cleaver
						-- #if AFTER 7.3.5
						i(50302),	-- Liar's Tongue (7.3.5 - Used to be only Heroic Mode)
						-- #endif
						i(49844),	-- Crypt Fiend Slayer
						-- #if AFTER 7.3.5
						i(50309),	-- Shriveled Heart (7.3.5 - Used to be only Heroic Mode)
						-- #endif
						i(49851),	-- Greathelm of the Silver Hand
						-- #if AFTER 7.3.5
						i(50311),	-- Second Helm of the Executioner (7.3.5 - Used to be only Heroic Mode)
						-- #endif
						i(49849),	-- Tattered Glacial-Woven Hood
						-- #if AFTER 7.3.5
						i(50310),	-- Fossilized Ammonite Choker (7.3.5 - Used to be only Heroic Mode)
						-- #endif
						i(49848),	-- Grim Lasher Shoulderguards
						i(49842),	-- Tapestry of the Frozen Throne
						i(49841),	-- Blackened Geist Ribs
						-- #if AFTER 7.3.5
						i(50312),	-- Chestguard of Broken Branches (7.3.5 - Used to be only Heroic Mode)
						-- #endif
						i(49843),	-- Crystalline Citadel Gauntlets
						-- #if AFTER 7.3.5
						i(50304),	-- Hoarfrost Gauntlets (7.3.5 - Used to be only Heroic Mode)
						i(50314),	-- Strip of Remorse (7.3.5 - Used to be only Heroic Mode)
						-- #endif
						i(49847),	-- Legguards of Untimely Demise
						-- #if AFTER 7.3.5
						i(50308),	-- Blighted Leather Footpads (7.3.5 - Used to be only Heroic Mode)
						i(50305),	-- Grinning Skull Boots (7.3.5 - Used to be only Heroic Mode)
						i(50313),	-- Oath of Empress Zoe (7.3.5 - Used to be only Heroic Mode)
						i(50306),	-- The Lady's Promise (7.3.5 - Used to be only Heroic Mode)
						-- #endif
					},
				}),
			}),
			d(DIFFICULTY.DUNGEON.HEROIC, {
				["lvl"] = lvlsquish(80, 80, 30),
				["groups"] = {
					n(ZONE_DROPS, {
						a(i(50379)),	-- Battered Hilt [A]
						h(i(50380)),	-- Battered Hilt [H]
						i(50318),	-- Ghostly Wristwraps
						i(50315),	-- Seven-Fingered Claws
						i(50319),	-- Unsharpened Ice Razor
					}),
					e(601, {	-- Falric
						["creatureID"] = 38112,	-- Falric
						["groups"] = {
							i(50290),	-- Falric's Wrist-Chopper
							-- #if AFTER 7.3.5
							i(49827),	-- Ghoulslicer (7.3.5 - Used to be only Normal Mode)
							-- #endif
							i(50291),	-- Soulsplinter
							-- #if AFTER 7.3.5
							i(49830),	-- Fallen Sentry's Hood (7.3.5 - Used to be only Normal Mode)
							-- #endif
							i(50293),	-- Spaulders of Black Betrayal
							-- #if AFTER 7.3.5
							i(49829),	-- Valonforth's Tarnished Pauldrons (7.3.5 - Used to be only Normal Mode)
							i(49832),	-- Eerie Runeblade Polisher (7.3.5 - Used to be only Normal Mode)
							-- #endif
							i(50294),	-- Chestpiece of High Treason
							i(50292),	-- Bracer of Worn Molars
							-- #if AFTER 7.3.5
							i(49828),	-- Marwyn's Macabre Fingertips (7.3.5 - Used to be only Normal Mode)
							i(49831),	-- Muddied Boots of Brill (7.3.5 - Used to be only Normal Mode)
							-- #endif
							i(50295),	-- Spiked Toestompers
						},
					}),
					e(602, {	-- Marwyn
						["creatureID"] = 38113,	-- Marwyn
						["groups"] = {
							i(50296),	-- Orca-Hunter's Harpoon
							-- #if AFTER 7.3.5
							i(49833),	-- Splintered Icecrown Parapet (7.3.5 - Used to be only Normal Mode)
							i(49835),	-- Splintered Door of the Citadel (7.3.5 - Used to be only Normal Mode)
							-- #endif
							i(50298),	-- Sightless Crown of Ulmaas
							-- #if AFTER 7.3.5
							i(49834),	-- Frayed Abomination Stitching Shoulders (7.3.5 - Used to be only Normal Mode)
							-- #endif
							i(50300),	-- Choking Hauberk
							i(50297),	-- Frostsworn Bone Chestpiece
							-- #if AFTER 7.3.5
							i(49838),	-- Carpal Tunnelers (7.3.5 - Used to be only Normal Mode)
							i(49837),	-- Mitts of Burning Hail (7.3.5 - Used to be only Normal Mode)
							-- #endif
							i(50299),	-- Suspiciously Soft Gloves
							-- #if AFTER 7.3.5
							i(49836),	-- Frostsworn Bone Leggings (7.3.5 - Used to be only Normal Mode)
							-- #endif
							i(50260),	-- Ephemeral Snowflake
						},
					}),
					e(603, {	-- Escape from Arthas
						["creatureID"] = 36954,	-- The Lich King
						["groups"] = {
							ach(5114, {	-- Heroic: The Halls of Reflection Guild Run
								["timeline"] = { ADDED_4_0_3 },
							}),
							ach(4526),	-- We're Not Retreating; We're Advancing in a Different Direction.
							-- #if AFTER 7.3.5
							i(49839),	-- Mourning Malice (7.3.5 - Used to be only Normal Mode)
							-- #endif
							i(50303),	-- Black Icicle
							-- #if AFTER 7.3.5
							i(49845),	-- Bone Golem Scapula (7.3.5 - Used to be only Normal Mode)
							i(49846),	-- Chilled Heart of the Glacier (7.3.5 - Used to be only Normal Mode)
							i(49840),	-- Hate-Forged Cleaver (7.3.5 - Used to be only Normal Mode)
							-- #endif
							i(50302),	-- Liar's Tongue
							-- #if AFTER 7.3.5
							i(49844),	-- Crypt Fiend Slayer (7.3.5 - Used to be only Normal Mode)
							-- #endif
							i(50309),	-- Shriveled Heart
							-- #if AFTER 7.3.5
							i(49851),	-- Greathelm of the Silver Hand (7.3.5 - Used to be only Normal Mode)
							-- #endif
							i(50311),	-- Second Helm of the Executioner
							-- #if AFTER 7.3.5
							i(49849),	-- Tattered Glacial-Woven Hood (7.3.5 - Used to be only Normal Mode)
							-- #endif
							i(50310),	-- Fossilized Ammonite Choker
							-- #if AFTER 7.3.5
							i(49848),	-- Grim Lasher Shoulderguards (7.3.5 - Used to be only Normal Mode)
							i(49842),	-- Tapestry of the Frozen Throne (7.3.5 - Used to be only Normal Mode)
							i(49841),	-- Blackened Geist Ribs (7.3.5 - Used to be only Normal Mode)
							-- #endif
							i(50312),	-- Chestguard of Broken Branches
							-- #if AFTER 7.3.5
							i(49843),	-- Crystalline Citadel Gauntlets (7.3.5 - Used to be only Normal Mode)
							-- #endif
							i(50304),	-- Hoarfrost Gauntlets
							i(50314),	-- Strip of Remorse
							-- #if AFTER 7.3.5
							i(49847),	-- Legguards of Untimely Demise (7.3.5 - Used to be only Normal Mode)
							-- #endif
							i(50308),	-- Blighted Leather Footpads
							i(50305),	-- Grinning Skull Boots
							i(50313),	-- Oath of Empress Zoe
							i(50306),	-- The Lady's Promise
						},
					}),
				},
			}),
		},
	}),
}))));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.WOD, bubbleDownSelf({ ["timeline"] = { ADDED_6_0_2 } }, {
	inst(276, {
		q(35441),	-- Halls of Reflection Reward Quest - Normal completion
		q(35442),	-- Halls of Reflection Reward Quest - Heroic completion
	}),
})));
