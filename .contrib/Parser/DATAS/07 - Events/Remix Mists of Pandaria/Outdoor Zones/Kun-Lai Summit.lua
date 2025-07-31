-----------------------------------------------------
--     W O R L D   E V E N T S   M O D U L E       --
-----------------------------------------------------
root(ROOTS.WorldEvents, applyevent(EVENTS.REMIX_MOP, n(REMIX_MOP, bubbleDown({ ["timeline"] = { ADDED_10_2_7, REMOVED_MOP_REMIX_END } }, {
	m(KUN_LAI_SUMMIT, {
		["icon"] = 617832,
		["groups"] = {
			n(ACHIEVEMENTS, {
				ach(19887, {	-- Campaign: Kun-Lai Summit [A]
					["races"] = ALLIANCE_ONLY,
				}),
				ach(19888, {	-- Campaign: Kun-Lai Summit [H]
					["races"] = HORDE_ONLY,
				}),
				ach(19996),		-- Elusive Foes: Kun-Lai Summit
				ach(20029),		-- Explore Kun-Lai Summit (automated)
				ach(19980, {	-- Hidden Treasures: Kun-Lai Summit
					crit(65484, {	-- Hozen Treasure Cache
						["_quests"] = { 31414 },
					}),
					crit(65485, {	-- Stolen Sprite Treasure
						["_quests"] = { 31415 },
					}),
					crit(65486, {	-- Statue of Xuen
						["_quests"] = { 31416 },
					}),
					crit(65487, {	-- Lost Adventurer's Belongings
						["_quests"] = { 31418 },
					}),
					crit(65488, {	-- Rikktik's Tick Remover
						["_quests"] = { 31419 },
					}),
					crit(65489, {	-- Ancient Mogu Tablet
						["_quests"] = { 31420 },
					}),
					crit(65490, {	-- Terracotta Head
						["_quests"] = { 31422 },
					}),
				}),
				ach(19875, {	-- Kun-Lai Summit
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						-- 19887,	-- Campaign: Kun-Lai Summit [A]
						-- 19888,	-- Campaign: Kun-Lai Summit [H]
						20011,	-- Looking For Group: Kun-Lai Summit
						19965,	-- Tour Kun-Lai Summit
					}},
					["groups"] = {
						i(218247),	-- Chen Stormstout's Hat
						i(218248),	-- Chen Stormstout's Hat
					},
				}),
				ach(20011, {	-- Looking For Group: Kun-Lai Summit
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						19926,	-- Brewmoon Festival
						19927,	-- Arena of Annihilation
						19928,	-- Crypt of Forgotten Kings
						19898,	-- Shado-Pan Monastery
						19946,	-- Raid Finder: Mogu'shan Vaults
						20018,	-- Sha of Anger
					}},
				}),
				ach(19965, {	-- Tour Kun-Lai Summit
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						19996,	-- Elusive Foes: Kun-Lai Summit
						20029,	-- Explore Kun-Lai Summit
						19980,	-- Hidden Treasures: Kun-Lai Summit
					}},
				}),
			}),
			n(QUESTS, {
				q(80431, {	-- Aid the August Celestials
					["provider"] = { "n", 60968 },	-- Xuen
					["coords"] = {
						{ 67.2, 56.0, KUN_LAI_SUMMIT },
						{ 70.4, 51.2, KUN_LAI_SUMMIT },
						{ 71.6, 45.0, KUN_LAI_SUMMIT },
						{ 66.4, 46.4, KUN_LAI_SUMMIT },
						{ 68.6, 44.4, KUN_LAI_SUMMIT },
					},
					["cost"] = { { "c", 738, 10 } },	-- 10x Lesser Charm of Good Fortune
					["repeatable"] = true,
				}),
			}),
			n(ZONE_REWARDS, {
				filter(CLOTH, {
					i(213700),	-- Silkmaster's Bracers
					i(213699),	-- Silkmaster's Cord
					i(213695),	-- Silkmaster's Gloves
					i(213696),	-- Silkmaster's Hood
					i(213697),	-- Silkmaster's Leggings
					i(213693),	-- Silkmaster's Robe
					i(213694),	-- Silkmaster's Sandals
					i(213698),	-- Silkmaster's Shoulderpads
				}),
				filter(LEATHER, {
					i(214095),	-- Mistveil Cap
					i(214097),	-- Mistveil Cinch
					i(214096),	-- Mistveil Handguards
					i(214093),	-- Mistveil Jerkin
					i(214098),	-- Mistveil Mantle
					i(214099),	-- Mistveil Pants
					i(214094),	-- Mistveil Treads
					i(214092),	-- Mistveil Wraps
				}),
				filter(MAIL, {
					i(214507),	-- Dawnwatcher's Armbands
					i(214513),	-- Dawnwatcher's Chain
					i(214508),	-- Dawnwatcher's Chestguard
					i(214511),	-- Dawnwatcher's Gloves
					i(214510),	-- Dawnwatcher's Headguard
					i(214515),	-- Dawnwatcher's Legguards
					i(214514),	-- Dawnwatcher's Pauldrons
					i(214509),	-- Dawnwatcher's Sabatons
				}),
				filter(PLATE, {
					i(214791),	-- Highpeak Bracers
					i(214792),	-- Highpeak Breastplate
					i(214788),	-- Highpeak Gauntlets
					i(214787),	-- Highpeak Girdle
					i(214789),	-- Highpeak Helm
					i(214785),	-- Highpeak Legguards
					i(214786),	-- Highpeak Pauldrons
					i(214790),	-- Highpeak Sabatons
				}),
				n(WEAPONS, {
					i(215644),	-- Amber Claw (wowhead)
					i(215873),	-- Amberweaver's Staff (wowhead)
					i(215746),	-- Bearheart's Basher (wowhead)
					i(216004),	-- Blazecaster's Wand (wowhead)
					i(215741),	-- Bloodseeker's Bonebreaker (wowhead)
					i(215681),	-- Crane's Beak Effigy (wowhead)
					i(215948),	-- Darkhide Sword (wowhead)
					i(216569),	-- Deflector of Orbiss (wowhead)
					i(215862),	-- Engraved Spire (wowhead)
					i(215952),	-- Fear's Bite (wowhead)
					i(211151),	-- Fran's Repeater (wowhead)
					i(215678),	-- Grummle Lantern (wowhead)
					i(215940),	-- Halcyon Blade (wowhead)
					i(215944),	-- Harmonious Scimitar (wowhead)
					i(216419),	-- Hozen Knife (wowhead)
					i(215861),	-- Instructor's Spire (wowhead)
					i(215511),	-- Jadestone Greataxe (wowhead)
					i(215486),	-- Jinyu Waraxe (wowhead)
					i(215982),	-- Marista Greatsword (wowhead)
					i(215488),	-- Mountainscaler Hatchet (wowhead)
					i(215597),	-- Mushan Slicer (wowhead)
					i(216022),	-- Pandaren Axe (wowhead)
					-- i(216424),	-- Pandaren Breaker (not on wowhead)
					i(216543),	-- Pandaren Bulwark (wowhead)
					i(216445),	-- Pandaren Ceremonial Fan (wowhead)
					i(216021),	-- Pandaren Hatchet (wowhead)
					i(216421),	-- Pandaren Mace (wowhead)
					i(215703),	-- Pandaren Rifle (wowhead)
					i(216544),	-- Pandaren Shield (wowhead)
					i(216440),	-- Pandaren Tome (wowhead)
					i(216479),	-- Pandaren Waveblade (wowhead)
					i(216482),	-- Pandaren Windblade (wowhead)
					i(216614),	-- Seawatch Crossbow (wowhead)
					i(215805),	-- Serpentguard Spear (wowhead)
					i(215603),	-- Sha-Warped Slicer (wowhead)
					i(210335),	-- Shado-Pan Dagger (wowhead)
					i(215534),	-- Shado-Pan Longbow (wowhead)
					i(216477),	-- Temple Trainee's Scimitar (wowhead)
					i(216473),	-- Tian Monastery Staff (wowhead)
					i(215745),	-- Wasteland Basher (wowhead)
					i(216576),	-- Wasteland Deflector (wowhead)
					i(215869),	-- Waterweaver's Staff (wowhead)
				}),
			}),
		},
	}),
}))));
