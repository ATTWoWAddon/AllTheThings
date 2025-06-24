-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
root(ROOTS.Instances, expansion(EXPANSION.WRATH, applyclassicphase(WRATH_PHASE_FOUR, { ["timeline"] = { ADDED_3_3_0 } }, {
	inst(280, {	-- The Forge of Souls
		["mapID"] = THE_FORGE_OF_SOULS,
		["coord"] = { 52.3, 89.3, ICECROWN },
		["lvl"] = lvlsquish(78, 78, 25),
		["groups"] = {
			n(ACHIEVEMENTS, {
				ach(4516, {	-- The Forge of Souls
					crit(13315, {	-- Bronjahm
						["_encounter"] = { 615, DIFFICULTY.DUNGEON.NORMAL },
					}),
					crit(13316, {	-- Devourer of Souls
						["_encounter"] = { 616, DIFFICULTY.DUNGEON.NORMAL },
					}),
				}),
				ach(4519, {	-- Heroic: The Forge of Souls
					crit(13167, {	-- Bronjahm
						["_encounter"] = { 615, DIFFICULTY.DUNGEON.HEROIC },
					}),
					crit(13168, {	-- Devourer of Souls
						["_encounter"] = { 616, DIFFICULTY.DUNGEON.HEROIC },
					}),
				}),
			}),
			n(QUESTS, {
				q(24499, {	-- Echoes of Tortured Souls (A)
					["qg"] = 37597,	-- Lady Jaina Proudmoore
					["sourceQuest"] = 24510,	-- Inside the Frozen Citadel (A)
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(78, 78, 25),
					["groups"] = {
						objective(1, {	-- 0/1 Bronjahm slain
							["provider"] = { "n", 36497 },	-- Bronjahm <Godfather of Souls>
						}),
						objective(2, {	-- 0/1 Devourer of Souls slain
							["provider"] = { "n", 36502 },	-- Devourer of Souls
						}),
					},
				}),
				q(24511, {	-- Echoes of Tortured Souls (H)
					["qg"] = 37596,	-- Lady Sylvanas Windrunner <Banshee Queen>
					["sourceQuest"] = 24506,	-- Inside the Frozen Citadel (H)
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(78, 78, 25),
					["groups"] = {
						objective(1, {	-- 0/1 Bronjahm slain
							["provider"] = { "n", 36497 },	-- Bronjahm <Godfather of Souls>
						}),
						objective(2, {	-- 0/1 Devourer of Souls slain
							["provider"] = { "n", 36502 },	-- Devourer of Souls
						}),
					},
				}),
				q(24510, {	-- Inside the Frozen Citadel (A)
					["qg"] = 37776,	-- Apprentice Nelphi <Kirin Tor>
					["coords"] = {
						{ 46.0, 68.1, NORTHREND_DALARAN },
						{ 46.1, 76.8, NORTHREND_DALARAN },
					},
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = lvlsquish(78, 78, 25),
				}),
				q(24506, {	-- Inside the Frozen Citadel (H)
					["qg"] = 37780,	-- Dark Ranger Vorel
					["coord"] = { 51.3, 27.3, NORTHREND_DALARAN },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = lvlsquish(78, 78, 25),
				}),
				q(24683, {	-- The Pit of Saron (A)
					["qg"] = 38160,	-- Lady Jaina Proudmoore
					["sourceQuest"] = 24499,	-- Echoes of Tortured Souls (A)
					["maps"] = { PIT_OF_SARON },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(78, 78, 25),
				}),
				q(24682, {	-- The Pit of Saron (H)
					["qg"] = 38161,	-- Lady Sylvanas Windrunner <Banshee Queen>
					["sourceQuest"] = 24511,	-- Echoes of Tortured Souls (H)
					["maps"] = { PIT_OF_SARON },
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(78, 78, 25),
				}),
			}),
			d(DIFFICULTY.DUNGEON.NORMAL, {
				n(ZONE_DROPS, {
					i(49852),	-- Coffin Nail
					i(49854),	-- Mantle of Tattered Feathers
					i(49855),	-- Plated Grips of Korth'azz
					i(49853),	-- Titanium Links of Lore
				}),
				e(615, {	-- Brojahm
					["creatureID"] = 36497,	-- Brojahm
					["groups"] = {
						i(49783),	-- Lucky Old Sun
						-- #if AFTER 7.3.5
						i(50191),	-- Nighttime (7.3.5 - Used to be only Heroic Mode)
						i(50197),	-- Eyes of Bewilderment (7.3.5 - Used to be only Heroic Mode)
						i(50196),	-- Love's Prisoner (7.3.5 - Used to be only Heroic Mode)
						-- #endif
						i(49785),	-- Bewildering Shoulderpads
						-- #if AFTER 7.3.5
						i(50193),	-- Very Fashionable Shoulders (7.3.5 - Used to be only Heroic Mode)
						-- #endif
						i(49786),	-- Robes of the Cheating Heart
						i(49787),	-- Seven Stormy Mornings
						i(49788),	-- Cold Sweat Grips
						-- #if AFTER 7.3.5
						i(50194),	-- Weeping Gauntlets (7.3.5 - Used to be only Heroic Mode)
						-- #endif
						i(49784),	-- Minister's Number One Legplates
						-- #if AFTER 7.3.5
						i(50316),	-- Papa's Brand New Bag (7.3.5 - Used to be only Heroic Mode)
						-- #endif
						i(50317),	-- Papa's New Bag
					},
				}),
				e(616, {	-- Devourer of Souls
					["creatureID"] = 36502,	-- Devourer of Souls
					["groups"] = {
						i(49790),	-- Blood Boil Lancet
						i(49793),	-- Tower of the Mouldering Corpse
						-- #if AFTER 7.3.5
						i(50203),	-- Blood Weeper (7.3.5 - Used to be only Heroic Mode)
						-- #endif
						i(49789),	-- Heartshiver
						-- #if AFTER 7.3.5
						i(50210),	-- Seethe (7.3.5 - Used to be only Heroic Mode)
						i(50206),	-- Frayed Scoundrel's Cap (7.3.5 - Used to be only Heroic Mode)
						i(50214),	-- Helm of the Spirit Shock (7.3.5 - Used to be only Heroic Mode)
						i(50211),	-- Arcane Loops of Anger (7.3.5 - Used to be only Heroic Mode)
						-- #endif
						i(49799),	-- Coil of Missing Gems
						-- #if AFTER 7.3.5
						i(50208),	-- Pauldrons of the Souleater (7.3.5 - Used to be only Heroic Mode)
						-- #endif
						i(49792),	-- Accursed Crawling Cape
						i(49791),	-- Lost Reliquary Chestguard
						-- #if AFTER 7.3.5
						i(50213),	-- Mord'rethar Robes (7.3.5 - Used to be only Heroic Mode)
						-- #endif
						i(49797),	-- Brace Guards of the Starless Night
						-- #if AFTER 7.3.5
						i(50209),	-- Essence of Suffering (7.3.5 - Used to be only Heroic Mode)
						i(50212),	-- Essence of Desire (7.3.5 - Used to be only Heroic Mode)
						-- #endif
						i(49796),	-- Essence of Anger
						i(49794),	-- Legplates of Frozen Granite
						-- #if AFTER 7.3.5
						i(50207),	-- Black Spire Sabatons (7.3.5 - Used to be only Heroic Mode)
						i(50215),	-- Recovered Reliquary Boots (7.3.5 - Used to be only Heroic Mode)
						-- #endif
						i(49795),	-- Sollerets of Suffering
						i(49798),	-- Soul Screaming Boots
						i(49800),	-- Spiteful Signet
						-- #if AFTER 7.3.5
						i(50198),	-- Needle-Encrusted Scorpion (7.3.5 - Used to be only Heroic Mode)
						-- #endif
					},
				}),
			}),
			d(DIFFICULTY.DUNGEON.HEROIC, {
				["lvl"] = lvlsquish(80, 80, 30),
				["groups"] = {
					n(ZONE_DROPS, {
						i(50379),	-- Battered Hilt (Alliance)
						i(50380),	-- Battered Hilt (Horde)
						i(50318),	-- Ghostly Wristwraps
						i(50315),	-- Seven-Fingered Claws
						i(50319),	-- Unsharpened Ice Razor
					}),
					e(615, {	-- Brojahm
						["creatureID"] = 36497,	-- Brojahm
						["groups"] = {
							ach(4522),	-- Soul Power
							-- #if AFTER 7.3.5
							i(49783),	-- Lucky Old Sun (7.3.5 - Used to be only Normal Mode)
							-- #endif
							i(50191),	-- Nighttime
							i(50197),	-- Eyes of Bewilderment
							i(50196),	-- Love's Prisoner
							-- #if AFTER 7.3.5
							i(49785),	-- Bewildering Shoulderpads (7.3.5 - Used to be only Normal Mode)
							-- #endif
							i(50193),	-- Very Fashionable Shoulders
							-- #if AFTER 7.3.5
							i(49786),	-- Robes of the Cheating Heart (7.3.5 - Used to be only Normal Mode)
							i(49787),	-- Seven Stormy Mornings (7.3.5 - Used to be only Normal Mode)
							i(49788),	-- Cold Sweat Grips (7.3.5 - Used to be only Normal Mode)
							-- #endif
							i(50194),	-- Weeping Gauntlets
							-- #if AFTER 7.3.5
							i(49784),	-- Minister's Number One Legplates (7.3.5 - Used to be only Normal Mode)
							-- #endif
							i(50169, {	-- Papa's Brand New Knife
								["timeline"] = { REMOVED_5_0_4 },
							}),
							i(50316),	-- Papa's Brand New Bag
							-- #if AFTER 7.3.5
							i(50317),	-- Papa's New Bag (7.3.5 - Used to be only Normal Mode)
							-- #endif
						},
					}),
					e(616, {	-- Devourer of Souls
						["creatureID"] = 36502,	-- Devourer of Souls
						["groups"] = {
							ach(5112, {	-- Heroic: The Forge of Souls Guild Run
								["timeline"] = { ADDED_4_0_3 },
							}),
							ach(4523),	-- Three Faced
							-- #if AFTER 7.3.5
							i(49790),	-- Blood Boil Lancet (7.3.5 - Used to be only Normal Mode)
							i(49793),	-- Tower of the Mouldering Corpse (7.3.5 - Used to be only Normal Mode)
							-- #endif
							i(50203),	-- Blood Weeper
							-- #if AFTER 7.3.5
							i(49789),	-- Heartshiver (7.3.5 - Used to be only Normal Mode)
							-- #endif
							i(50210),	-- Seethe
							i(50206),	-- Frayed Scoundrel's Cap
							i(50214),	-- Helm of the Spirit Shock
							i(50211),	-- Arcane Loops of Anger
							-- #if AFTER 7.3.5
							i(49799),	-- Coil of Missing Gems (7.3.5 - Used to be only Normal Mode)
							-- #endif
							i(50208),	-- Pauldrons of the Souleater
							-- #if AFTER 7.3.5
							i(49792),	-- Accursed Crawling Cape (7.3.5 - Used to be only Normal Mode)
							i(49791),	-- Lost Reliquary Chestguard (7.3.5 - Used to be only Normal Mode)
							-- #endif
							i(50213),	-- Mord'rethar Robes
							-- #if AFTER 7.3.5
							i(49797),	-- Brace Guards of the Starless Night (7.3.5 - Used to be only Normal Mode)
							-- #endif
							i(50209),	-- Essence of Suffering
							i(50212),	-- Essence of Desire
							-- #if AFTER 7.3.5
							i(49796),	-- Essence of Anger (7.3.5 - Used to be only Normal Mode)
							i(49794),	-- Legplates of Frozen Granite (7.3.5 - Used to be only Normal Mode)
							-- #endif
							i(50207),	-- Black Spire Sabatons
							i(50215),	-- Recovered Reliquary Boots
							-- #if AFTER 7.3.5
							i(49795),	-- Sollerets of Suffering (7.3.5 - Used to be only Normal Mode)
							i(49798),	-- Soul Screaming Boots (7.3.5 - Used to be only Normal Mode)
							i(49800),	-- Spiteful Signet (7.3.5 - Used to be only Normal Mode)
							-- #endif
							i(50198),	-- Needle-Encrusted Scorpion
						},
					}),
				},
			}),
		},
	}),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.WOD, bubbleDownSelf({ ["timeline"] = { ADDED_6_0_2 } }, {
	inst(280, {
		q(35436),	-- The Forge of Souls Reward Quest - Normal completion
		q(35437),	-- The Forge of Souls Reward Quest - Heroic completion
	}),
})));