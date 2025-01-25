-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------

root(ROOTS.ExpansionFeatures, expansion(EXPANSION.BFA, {
	m(NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS, {	-- Vale of Eternal Blossoms
		["icon"] = 3196265,
		["lvl"] = { 50 },
		["maps"] = {
			1579,	-- Vale of Eternal Blossoms - Pools Of Power - underground area
		},
		["crs"] = {
			163463,	-- Zidormi
		},
		["g"] = {
			n(WORLD_BOSSES, {
				["isRaid"] = true,
				["groups"] = {
					e(2378, {	-- Grand Empress Shek'zara
						["creatureID"] = 154638,
						["questID"] = 58705,	-- Grand Empress Shek'zara
						["coord"] = { 5.9, 56.4, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
						["isRaid"] = true,
						["isWeekly"] = true,
						["g"] = {
							i(174243),	-- Guise of the Voracious Prowler
							i(174234),	-- Maniacal Speaker's Cover
							i(174264),	-- Chitinous Conqueror's Legplates
							i(174255),	-- Greaves of Shattered Thoughts
							i(174268),	-- Loop of Abhorrent Celerity
						},
					}),
				},
			}),
			q(56064, {	-- Assault: The Black Empire
				["isWeekly"] = true,
				["isWorldQuest"] = true,
				["g"] = {
					n(QUESTS, sharedData({
						["isDaily"] = true,
					}, {
						-- Dailies
						q(58420, {	-- A Foul Annoyance
							["coord"] = { 44.7, 73.8, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
							["provider"] = { "n", 154444 },	-- Stormspeaker Qian
							["sourceQuest"] = 56771,	-- Time-Lost Warriors
						}),
						q(58468, {	-- A Growing Darkness
							["coord"] = { 66.9, 39.8, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
							["provider"] = { "n", 161405 },	-- Taoshi
							["sourceQuest"] = 56771,	-- Time-Lost Warriors
						}),
						q(58471, {	-- Aggressive Notation
							["coord"] = { 83.7, 27.1, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
							["provider"] = { "n", 156003 },	-- Lorewalker Cho
							["sourceQuest"] = 56771,	-- Time-Lost Warriors
							["g"] = {
								i(174197),	-- Loremaster's Notebook (QI!)
							},
						}),
						q(58470, {	-- Corrupted Curiosities
							["coord"] = { 83.7, 27.1, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
							["provider"] = { "n", 156003 },	-- Lorewalker Cho
							["sourceQuest"] = 56771,	-- Time-Lost Warriors
							["g"] = {
								i(174744),	-- Artifact of the Black Empire (QI!)
								o(334220, {	-- Black Empire Cache placeholder [Until we find the otherIDs]
									["coords"] = {
										{ 52.7, 39.7, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },	-- 57197
										{ 53.9, 41.8, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },	-- 57197
										{ 46.4, 33.0, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },	-- 57199
										{ 62.6, 57.1, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },	-- 57200
										{ 65.9, 59.7, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },	-- 57200
										{ 62.0, 51.6, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },	-- 57200
										{ 57.3, 41.7, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },	-- 57200
										{ 81.3, 33.8, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },	-- 57201
										{ 77.1, 63.6, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },	-- 57201
										{ 70.2, 53.7, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },	-- 57201
										{ 68.7, 58.8, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },	-- 57202
										{ 68.3, 62.5, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },	-- 57202
										{ 42.4, 68.5, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },	-- 57203
										{ 51.2, 63.3, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },	-- 57203
										{ 47.9, 71.0, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },	-- 57203
									},
									--[[o(, {	-- Black Empire Cache
										["questID"] = 57197,
										["isDaily"] = true,
										["coords"] = {
											{ 52.7, 39.7, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
											{ 53.9, 41.8, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
										},
									}),
									o(, {	-- Black Empire Cache
										["questID"] = 57199,
										["isDaily"] = true,
										["coords"] = {
											{ 46.4, 33.0, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
											{ 09.1, 52.8, 1579 },
										},
									}),
									o(, {	-- Black Empire Cache
										["questID"] = 57200,
										["isDaily"] = true,
										["coords"] = {
											{ 62.6, 57.1, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
											{ 65.9, 59.7, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
											{ 62.0, 51.6, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
										},
									}),
									o(, {	-- Black Empire Cache
										["questID"] = 57201,
										["isDaily"] = true,
										["coords"] = {
											{ 81.3, 33.8, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
											{ 77.1, 63.6, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
											{ 70.2, 53.7, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
										},
									}),
									o(, {	-- Black Empire Cache
										["questID"] = 57202,
										["isDaily"] = true,
										["coords"] = {
											{ 68.7, 58.8, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
											{ 68.3, 62.5, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
										},
									}),
									o(, {	-- Black Empire Cache
										["questID"] = 57203,
										["isDaily"] = true,
										["coords"] = {
											{ 42.4, 68.5, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
											{ 51.2, 63.3, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
											{ 47.9, 71.0, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
										},
									}),]]
								}),
							},
						}),
						q(58465, {	-- Corruption Manifest
							["coord"] = { 66.3, 40.6, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
							["provider"] = { "n", 161404 },	-- Taran Zhu
							["sourceQuest"] = 56771,	-- Time-Lost Warriors
						}),
						q(58464, {	-- Deephive Decimation
							["coord"] = { 67.0, 40.0, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
							["provider"] = { "n", 161405 },	-- Taoshi
							["sourceQuest"] = 56771,	-- Time-Lost Warriors
						}),
						q(58422, {	-- Mark of the Conquerors
							["coord"] = { 44.7, 73.8, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
							["provider"] = { "n", 154444 },	-- Stormspeaker Qian
							["sourceQuest"] = 56771,	-- Time-Lost Warriors
						}),
						q(58460, {	-- Marshals of Madness
							["coord"] = { 44.7, 73.8, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
							["provider"] = { "n", 154444 },	-- Stormspeaker Qian
						}),
						q(58595, {	-- Pillars of Oblivion
							["coord"] = { 44.7, 73.8, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
							["provider"] = { "n", 154444 },	-- Stormspeaker Qian
							["sourceQuest"] = 56771,	-- Time-Lost Warriors
						}),
						q(58467, {	-- Prisoners of Mind and Body
							["coord"] = { 66.4, 40.6, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
							["provider"] = { "n", 161404 },	-- Taran Zhu <Lord of the Shado-Pan>
							["sourceQuest"] = 56771,	-- Time-Lost Warriors
						}),
						q(58463, {	-- Spawns of Madness
							["coord"] = { 66.3, 40.6, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
							["provider"] = { "n", 161404 },	-- Taran Zhu
							["sourceQuest"] = 56771,	-- Time-Lost Warriors
						}),
						q(58469, {	-- Tears in the Vale
							["coord"] = { 83.8, 49.0, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
							["provider"] = { "n", 154261 },	-- Chi-Ji
							["sourceQuest"] = 56771,	-- Time-Lost Warriors
						}),
						q(58423, {	-- The Strongest Among Them
							["coord"] = { 44.7, 73.8, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
							["provider"] = { "n", 154444 },	-- Stormspeaker Qian
							["sourceQuest"] = 56771,	-- Time-Lost Warriors
						}),
						q(58466, {	-- Torment From Beyond
							["coord"] = { 66.3, 40.6, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
							["provider"] = { "n", 161404 },	-- Taran Zhu
							["sourceQuest"] = 56771,	-- Time-Lost Warriors
						}),
						q(58461, {	-- Tomes of Ancient Madness
							["coord"] = { 83.7, 27.1, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
							["provider"] = { "n", 156003 },	-- Lorewalker Cho
							["sourceQuest"] = 56771,	-- Time-Lost Warriors
							["g"] = {
								i(174196),	-- Tome of Ancient Madness (QI!)
							},
						}),
						q(58462, {	-- Windows to the Soul
							["coord"] = { 83.8, 48.9, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
							["provider"] = { "n", 154261 },	-- Chi-Ji
							["sourceQuest"] = 56771,	-- Time-Lost Warriors
						}),
					})),
					n(RARES, sharedData({
						["isDaily"] = true,
					}, {
						n(154447, {	-- Brother Meller
							["questID"] = 56237,
							["coord"] = { 57.1, 41.0, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
						}),
						n(154467, {	-- Chief Mek-mek
							["questID"] = 56255,
							["coord"] = { 81.2, 64.5, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
						}),
						n(154559, {	-- Deeplord Zrihj
							["questID"] = 56323,
							["coord"] = { 66.6, 68.0, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
						}),
						n(157267, {	-- Escaped Mutation
							["questID"] = 57343,
							["coords"] = {
								{ 44.8, 38.9, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
								{ 45.4, 43.2, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
								{ 43.7, 45.7, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
							},
						}),
						n(157266, {	-- Kilxl the Gaping Maw
							["questID"] = 57341,
							["coords"] = {
								{ 48.7, 59.8, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
								{ 45.2, 58.8, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
								{ 42.5, 64.1, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
								{ 45.1, 70.2, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
								{ 49.0, 69.0, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
							},
						}),
						n(154106, {	-- Quid
							["questID"] = 56094,
							["coord"] = { 90.2, 46.0, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
						}),
						n(154490, {	-- Rijz'x the Devourer
							["questID"] = 56302,
							["coord"] = { 64.2, 51.8, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
						}),
						n(157176, {	-- The Forgotten
							["description"] = "Spawns on a platform high up in the air.",
							["questID"] = 57342,
							["coord"] = { 52.0, 41.7, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
							["g"] = {
								i(174473),	-- K'uddly (PET!)
							},
						}),
						n(154394, {	-- Veskan the Fallen
							["questID"] = 56213,
							["coord"] = { 86.7, 41.7, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
						}),
						n(154332, {	-- Voidtender Malketh
							["questID"] = 56183,
							["coord"] = { 66.7, 28.1, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
						}),
						n(154495, {	-- Will of N'Zoth
							["questID"] = 56303,
							["coord"] = { 52.9, 62.2, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
							["g"] = {
								i(175141, {	-- All-Seeing Left Eye
									i(175140),	-- All-Seeing Eyes (TOY!)
								}),
								i(174474),	-- Corrupted Tentacle (PET!)
							},
						}),
						n(154087, {	-- Zror'um the Infinite
							["questID"] = 56084,
							["coord"] = { 70.9, 40.6, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
						}),
					})),
					n(WORLD_QUESTS, sharedData({
						["isWorldQuest"] = true,
					}, {
						q(56076, {	-- Abyssal Ritual
							["coord"] = { 74.2, 40.0, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
						}),
						q(56163, {	-- Bound Guardian
							["coord"] = { 60.5, 43.3, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
						}),
						q(56180, {	-- Bound Guardian
							["coord"] = { 79.6, 54.3, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
						}),
						q(58442, {	-- Consuming Maw
							["coord"] = { 81.4, 49.5, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
						}),
						q(58438, {	-- Consuming Maw
							["coord"] = { 46.4, 57.2, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
						}),
						q(58439, {	-- Consuming Maw
							["coord"] = { 41.3, 45.4, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
						}),
						q(57146, {	-- Corruption Tear
							["coord"] = { 74.2, 40.0, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
						}),
						q(56099, {	-- Font of Corruption
							["coord"] = { 60.4, 67.8, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
						}),
						q(57379, {	-- Infested Jade Statue
							["coord"] = { 76.4, 51.6, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
						}),
						q(56090, {	-- Protecting the Stout
							["coord"] = { 42.4, 67.0, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
						}),
						q(57375, {	-- Pulsating Mound
							["coord"] = { 69.2, 21.8, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
						}),
						q(56177, {	-- Void Conduit
							-- TODO: note: looks like this questID can appear in multiple places. Possible for the other versions to do the same?
							["coords"] = {
								{ 56.7, 59.4, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
								{ 79.3, 33.1, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
							}
						}),
						q(56074, {	-- Void Conduit
							["coord"] = { 49.3, 66.7, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
						}),
						q(56178, {	-- Void Conduit
							-- TODO: coord?
						}),
					})),
					n(ZONE_DROPS, {
						i(170553, {	-- Void Focus Splinter
							["description"] = "The fastest way is to farm them inside Lesser Vision.",
						}),
						i(174768, {	-- Cursed Relic
							["cost"] = { { "i", 174758, 6 } },	-- 6x Voidwarped Relic Fragment
						}),
						i(174758),	-- Voidwarped Relic Fragment
					}),
					i(173372, {	-- Cache of the Black Empire
						i(173375),	-- Rajani Insignia [BOP]
						i(173374),	-- Rajani Insignia [BOA]
					}),
				},
			}),
			q(57008, {	-- Assault: The Warring Clans
				["isWeekly"] = true,
				["isWorldQuest"] = true,
				["g"] = {
					n(QUESTS, {
						-- Assault questline
						q(57067, {	-- Mogu at the Gates	-- showed up when the Warring Clans assault was up. is there a pre-req?
							["coord"] = { 44.7, 73.8, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
							["provider"] = { "n", 154444 },	-- Stormspeaker Qian
						}),
						q(57068, {	-- Kite Surveillance
							["coord"] = { 43.9, 4.9, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
							["provider"] = { "n", 156297 },	-- Chen Stormstout
							["sourceQuest"] = 57067,	-- Mogu at the Gates
						}),
					}),
					-- Dailies
					n(QUESTS, sharedData({
						["isDaily"] = true,
					}, {
						q(57718, {	-- Bound in Stone
							["coord"] = { 38.4, 75.1, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
							["provider"] = { "n", 158673 },	-- Kun Autumnlight
							["sourceQuest"] = 56771,	-- Time-Lost Warriors
						}),
						q(58485, {	-- Built to Fall
							["coord"] = { 44.7, 73.8, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
							["provider"] = { "n", 154444 },	-- Stormspeaker Qian
							["sourceQuest"] = 56771,	-- Time-Lost Warriors
						}),
						q(58476, {	-- Bringing the Thunder
							["coord"] = { 38.4, 75.0, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
							["provider"] = { "n", 158674 },	-- Anji Autumnlight
							["sourceQuest"] = 56771,	-- Time-Lost Warriors
						}),
						q(57720, {	-- Champions of the Mogu
							["coord"] = { 44.7, 73.8, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
							["provider"] = { "n", 154444 },	-- Stormspeaker Qian
							["sourceQuest"] = 56771,	-- Time-Lost Warriors
						}),
						q(58741, {	-- Cutting Stone
							["coord"] = { 43.8, 71.8, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
							["provider"] = { "n", 154677 },	-- Forgemaster Han <Repairs>
							["sourceQuest"] = 56771,	-- Time-Lost Warriors
							["g"] = {
								i(174747),	-- Mogu Armament (QI!)
							},
						}),
						q(58479, {	-- Lightning Crashes
							["coord"] = { 44.7, 73.8, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
							["provider"] = { "n", 154444 },	-- Stormspeaker Qian
							["sourceQuest"] = 56771,	-- Time-Lost Warriors
						}),
						q(58478, {	-- No Stone Unbroken
							["coord"] = { 44.7, 73.8, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
							["provider"] = { "n", 154444 },	-- Stormspeaker Qian
							["sourceQuest"] = 56771,	-- Time-Lost Warriors
						}),
						q(58487, {	-- Plunder the Plunderers
							["coord"] = { 37.7, 79.3, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
							["provider"] = { "n", 161405 },	-- Taoshi
							["sourceQuest"] = 56771,	-- Time-Lost Warriors
							["g"] = {
								o(211807, {	-- Mogu Plunder placeholder
									["coords"] = {	-- Treasure chests
										{ 17.7, 12.6, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },	-- 57206	250 coals
										{ 20.5, 14.8, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },	-- 57206	250 coals
										{ 30.3, 37.6, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },	-- 57208
										{ 25.3, 27.6, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },	-- 57208
										{ 20.3, 18.5, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },	-- 57209
										{ 21.3, 13.9, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },	-- 57209
										{ 15.5, 64.5, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },	-- 57211
										{ 51.1, 63.4, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },	-- 57212
										{ 38.4, 70.3, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },	-- 57213
										{ 33.3, 69.9, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },	-- 57213
									},
								}),
							},
						}),
						q(58481, {	-- Rituals of Blood
							["coord"] = { 38.4, 75.1, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
							["provider"] = { "n", 158673 },	-- Kun Autumnlight
							["sourceQuest"] = 56771,	-- Time-Lost Warriors
						}),
						q(57721, {	-- Spoils of War
							["coord"] = { 43.9, 71.7, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
							["provider"] = { "n", 154677 },	-- Forgemaster Han
							["sourceQuest"] = 56771,	-- Time-Lost Warriors
							["g"] = {
								i(172463),	-- Salvaged Mogu Armor (QI!)
							},
						}),
						q(58740, {	-- Subjugated Serpents
							["coord"] = { 38.4, 75.0, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
							["provider"] = { "n", 158674 },	-- Anji Autumnlight
							["sourceQuest"] = 56771,	-- Time-Lost Warriors
						}),
						q(58477, {	-- Through Blood and Dirt and Bone
							["coord"] = { 44.7, 73.8, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
							["provider"] = { "n", 154444 },	-- Stormspeaker Qian
							["sourceQuest"] = 56771,	-- Time-Lost Warriors
							["g"] = {
								i(174210),	-- Anima Globule (QI!)
							},
						}),
					})),
					-- Common Items
					n(RARES, {
						n(COMMON_BOSS_DROPS, {
							["crs"] = {
								157466,	-- Anh-De the Loyal
								157183,	-- Coagulated Anima
								157287,	-- Dokani Obliterator
								157153,	-- Ha-Li
								157171,	-- Heixi the Stonelord
								157160,	-- Houndlord Ren
								160968,	-- Jade Colossus
								157290,	-- Jade Watcher
								157162,	-- Rei Lun
								156083,	-- Sanguifang
								157291,	-- Spymaster Hul'ach
								157279,	-- Stormhowl
								154600,	-- Teng the Awakened
								157468,	-- Tisiphon
								157443,	-- Xiln the Mountain
							},
							["g"] = {
								i(174225),	-- Bulwark of the Traitorous Disciple
								i(174221),	-- Cleaver of the Fractured Dynasty
								i(174229),	-- Lantern of the Damned
							},
						}),
					}),
					n(RARES, sharedData({
						["isDaily"] = true,
					}, {
						n(157466, {	-- Anh-De the Loyal
							["questID"] = 57363,
							["coord"] = { 33.7, 68.6, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
							["isDaily"] = true,
							["g"] = {
								i(174840),	-- Xinlao (MOUNT!)
							},
						}),
						n(157183, {	-- Coagulated Anima
							["questID"] = 58296,
							["coord"] = { 16.8, 66.7, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
						}),
						n(157287, {	-- Dokani Obliterator
							["questID"] = 57349,
							["coord"] = { 39.2, 59.6, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
						}),
						n(157153, {	-- Ha-Li
							["questID"] = 57344,
							["coords"] = {
								{ 35.6, 34.1, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
								{ 30.6, 37.8, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
								{ 32.4, 44.0, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
							},
							["g"] = {
								i(173887),	-- Clutch of Ha-Li (MOUNT!)
							},
						}),
						n(157171, {	-- Heixi the Stonelord
							["questID"] = 57347,
							["coord"] = { 28.3, 40.5, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
						}),
						n(157160, {	-- Houndlord Ren
							["questID"] = 57345,
							["coord"] = { 13.1, 25.5, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
							-- TODO:: determine patrol path
							["g"] = {
								i(174841),	-- Ren's Stalwart Hound (MOUNT!)
							},
						}),
						n(160968, {	-- Jade Colossus
							["questID"] = 58295,
							["coord"] = { 17.2, 11.6, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
						}),
						n(157290, {	-- Jade Watcher
							["questID"] = 57350,
							["coord"] = { 26.7, 10.7, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
						}),
						n(163042, {	-- Ivory Cloud Serpent
							["coord"] = { 29.0, 53.0, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
							["description"] = "Requires a Zan-Tien Lasso to wrangle!",
							["cost"] = {{ "i", 174927, 1 }},	-- Zan-Tien Lasso
							["g"] = {
								i(174752),	-- Ivory Cloud Serpent (MOUNT!)
							},
						}),
						n(157162, {	-- Rei Lun
							["description"] = "Spawns inside Guo-Lai Halls, all the way to the back (not off to the left or right).\n\nThe scale drops from the rare and can be turned in to the Rajani provisioner for the mount.",
							["questID"] = 57346,
							["coord"] = { 21.9, 12.4, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
							["g"] = {
								i(174230),	-- Pristine Cloud Serpent Scale
							},
						}),
						n(156083, {	-- Sanguifang
							["questID"] = 56954,
							["coord"] = { 46.4, 57.2, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
						}),
						n(157291, {	-- Spymaster Hul'ach
							["questID"] = 57351,
							["coord"] = { 17.9, 37.5, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
						}),
						n(157279, {	-- Stormhowl
							["questID"] = 57348,
							["coords"] = {
								{ 23.0, 76.7, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
								{ 25.5, 75.8, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
								{ 27.1, 71.5, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
							},
						}),
						n(155958, {	-- Tashara
							["questID"] = 58507,
							["coord"] = { 31.0, 22.8, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
							["isDaily"] = true,
							["g"] = {
								i(174873),	-- Trans-mogu-rifier (TOY!)
							},
						}),
						n(154600, {	-- Teng the Awakened
							["questID"] = 56332,
							["coord"] = { 47.5, 63.7, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
						}),
						n(157443, {	-- Xiln the Mountain
							["questID"] = 57358,
							["coord"] = { 53.8, 48.9, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
						}),
					})),
					n(WORLD_QUESTS, sharedData({
						["isWorldQuest"] = true,
					}, {
						q(58367, {	-- Baruk Demolisher
							["coord"] = { 22.5, 36.6, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
						}),
						q(57087, {	-- Baruk Obliterator
							["coord"] = { 31.3, 28.9, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
						}),
						q(57272, {	-- Bloodbound Effigy
							["coord"] = { 19.2, 72.0, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
						}),
						q(57339, {	-- Construction Ritual
							["coord"] = { 25.2, 17.2, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
						}),
						q(57158, {	-- Electric Empowerment
							["coord"] = { 15.0, 23.0, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
						}),
						q(58370, {	-- Empowered Demolisher
							["coord"] = { 26.7, 16.9, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
						}),
						q(57171, {	-- Goldbough Guardian
							["coord"] = { 20.4, 12.6, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
						}),
						q(58334, {	-- Misfall in Flames
							["coord"] = { 33.5, 71.0, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
						}),
						q(57299, {	-- Mysterious Sarcophagus
							["coord"] = { 50.0, 63.4, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
						}),
						q(57323, {	-- Serpent Binding
							["coord"] = { 24.7, 47.9, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
						}),
						q(57256, {	-- Stormchosen Arena
							["coord"] = { 17.0, 45.7, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
						}),
						q(57049, {	-- Vault of Souls
							-- coord?
						}),
						q(57023, {	-- Weighted Mogu Artifact
							-- coord?
						}),
						q(57101, {	-- Zan-Tien Serpent Cage
							["coord"] = { 47.7, 21.5, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
						}),
					})),
					n(ZONE_DROPS, {
						i(174767, {	-- Mogu Relic
							["cost"] = { { "i", 174759, 6 } },	-- 6x Mogu Relic Fragment
						}),
						i(174759),	-- Mogu Relic Fragment
						i(174927, {	-- Zan-Tien Lasso
							["description"] = "The lasso is a zone drop from various Mogu mobs.",
							["crs"] = {
								153095,	-- Zan-Tien Caller
								153094,	-- Zan-Tien Raider
								156675,	-- Zan-Tien Scout
								157345,	-- Zan-Tien Subjugator
							},
						}),
					}),
					i(174958),	-- Cache of the Fallen Mogu
				},
			}),
			q(57728, {	-- Assault: The Endless Swarm
				["isWeekly"] = true,
				["isWorldQuest"] = true,
				["g"] = {
					i(169888),	-- Ooze-covered Amber (QI!)
					n(QUESTS, {
						-- Assault questline
						q(56574, {	-- Reflections in Amber
							["crs"] = {
								160825,	-- Amber-Shaper Esh'ri
								160872,	-- Destroyer Krox'tazar
								160874,	-- Drone Keeper Ak'thet
								160810,	-- Harbinger Il'koxik
								160868,	-- Harrier Nir'verash
								160826,	-- Hive-Guard Naz'ruzek
								160930,	-- Infused Amber Ooze
								160867,	-- Kzit'kovok
								160922,	-- Needler Zhesalla
							},
							["description"] = "Quest item drops from many rares during Mantid Assault.",
							["provider"] = { "i", 169888 },	-- Ooze-covered Amber
						}),
						q(56575, {	-- Once More Into Kor'vess
							["coord"] = { 13.9, 77.2, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
							["provider"] = { "n", 155487 },	-- Taoshi
							["sourceQuest"] = 56574,	-- Reflections in Amber
						}),
						q(56647, {	-- The Mantid Threat
							["lvl"] = 120,
							["coord"] = { 12.2, 95.3, DREAD_WASTES },
							["provider"] = { "n", 155487 },	-- Taoshi
							["sourceQuest"] = 56645,	-- Heart of the Swarm
						}),
					}),
					-- Dailies
					n(QUESTS, sharedData({
						["isDaily"] = true,
					}, {
						q(58760, {	-- Blades of Amber
							["coord"] = { 43.8, 71.8, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
							["provider"] = { "n", 154677 },	-- Forgemaster Han <Repairs>
							["sourceQuest"] = 56771,	-- Time-Lost Warriors
							["g"] = {
								i(174762),	-- Amber Blade (QI!)
							},
						}),
						q(58754, {	-- Champions of the Swarm
							["coord"] = { 44.7, 73.8, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
							["provider"] = { "n", 154444 },	-- Stormspeaker Qian
							["sourceQuest"] = 56771,	-- Time-Lost Warriors
						}),
						q(58761, {	-- Crushed Underfoot
							["coord"] = { 44.7, 73.8, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
							["provider"] = { "n", 154444 },	-- Stormspeaker Qian
							["sourceQuest"] = 56771,	-- Time-Lost Warriors
						}),
						q(58756, {	-- Dread Menders
							["coord"] = { 37.2, 79.2, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
							["provider"] = { "n", 161405 },	-- Taoshi
							["sourceQuest"] = 56771,	-- Time-Lost Warriors
						}),
						q(58763, {	-- Halting Production
							["coord"] = { 67.0, 40.0, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
							["provider"] = { "n", 161405 },	-- Taoshi
							["sourceQuest"] = 56771,	-- Time-Lost Warriors
						}),
						q(58758, {	-- Rampaging Destroyers
							["coord"] = { 38.4, 75.0, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
							["provider"] = { "n", 158674 },	-- Anji Autumnlight
							["sourceQuest"] = 56771,	-- Time-Lost Warriors
						}),
						q(58765, {	-- Siege Breaker
							["coord"] = { 38.4, 75.0, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
							["provider"] = { "n", 158674 },	-- Anji Autumnlight
							["sourceQuest"] = 56771,	-- Time-Lost Warriors
						}),
						q(58764, {	-- Standards of the Swarm
							["coord"] = { 38.4, 75.0, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
							["provider"] = { "n", 158674 },	-- Anji Autumnlight
							["sourceQuest"] = 56771,	-- Time-Lost Warriors
						}),
						q(58755, {	-- Stashed Supplies
							["coord"] = { 38.4, 75.1, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
							["provider"] = { "n", 158673 },	-- Kun Autumnlight
							["sourceQuest"] = 56771,	-- Time-Lost Warriors
							["g"] = {
								i(174763),	-- Golden Lotus Supplies (QI!)
							},
						}),
						q(58762, {	-- Taken by the Swarm
							["coord"] = { 38.4, 75.1, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
							["provider"] = { "n", 158673 },	-- Kun Autumnlight
							["sourceQuest"] = 56771,	-- Time-Lost Warriors
						}),
						q(58757, {	-- Testing the Untested
							["coord"] = { 44.7, 73.8, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
							["provider"] = { "n", 154444 },	-- Stormspeaker Qian
							["sourceQuest"] = 56771,	-- Time-Lost Warriors
						}),
						q(58759, {	-- The Empress' Guard
							["coord"] = { 37.2, 79.2, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
							["provider"] = { "n", 161405 },	-- Taoshi
							["sourceQuest"] = 56771,	-- Time-Lost Warriors
						}),
					})),
					-- Common Items dropped by any rare
					n(RARES, {
						n(COMMON_BOSS_DROPS, {
							["crs"] = {
								160825,	-- Amber-Shaper Esh'ri
								160878,	-- Buh'gzaki the Blasphemous
								160893,	-- Captain Vor'lek
								160872,	-- Destroyer Krox'tazar
								160874,	-- Drone Keeper Ak'thet
								160876,	-- Enraged Amber Elemental
								160810,	-- Harbinger Il'koxik
								160868,	-- Harrier Nir'verash
								160826,	-- Hive-Guard Naz'ruzek
								160930,	-- Infused-Amber Ooze
								160920,	-- Kal'tik the Blight
								160867,	-- Kzit'kovok
								160922,	-- Needler Zhesalla
								160906,	-- Skiver
							},
							["g"] = {
								i(174220),	-- Ambered Greatstaff
								i(174223),	-- Ooze-Imbued Rifle
								i(174226)	-- Paragon's Will
							},
						}),
					}),
					n(RARES, sharedData({
						["isDaily"] = true,
					}, {
						n(160825, {	-- Amber-Shaper Esh'ri
							["questID"] = 58300,
							["coord"] = { 20.0, 74.6, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
						}),
						n(160878, {	-- Buh'gzaki the Blasphemous
							["questID"] = 58307,
							["coord"] = { 6.5, 70.7, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
						}),
						n(160893, {	-- Captain Vor'lek
							["questID"] = 58308,
							["coord"] = { 04.0, 60.8, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
						}),
						n(160872, {	-- Destroyer Krox'tazar
							["questID"] = 58304,
							["coord"] = { 26.7, 66.4, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
						}),
						n(160874, {	-- Drone Keeper Ak'thet
							["questID"] = 58305,
							["coord"] = { 10.7, 41.0, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
						}),
						n(160876, {	-- Enraged Amber Elemental
							["questID"] = 58306,
							["coord"] = { 10.6, 40.6, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
						}),
						n(160810, {	-- Harbinger Il'koxik
							["questID"] = 58299,
							["coord"] = { 28.9, 52.7, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
						}),
						n(160868, {	-- Harrier Nir'verash
							["questID"] = 58303,
							["coord"] = { 12.8, 51.3, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
						}),
						n(160826, {	-- Hive-Guard Naz'ruzek
							["questID"] = 58301,
							["coord"] = { 21.1, 62.7, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
						}),
						n(160930, {	-- Infused-Amber Ooze
							["questID"] = 58312,
							["coord"] = { 18.5, 66.5, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
						}),
						n(160920, {	-- Kal'tik the Blight
							["questID"] = 58310,
							["coord"] = { 18.2, 09.9, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
						}),
						n(160867, {	-- Kzit'kovok
							["questID"] = 58302,
							["coords"] = {
								{ 24.3, 36.6, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
								{ 24.3, 41.4, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
								{ 27.1, 41.9, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
								{ 27.4, 37.7, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
								{ 25.9, 35.6, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
							},
						}),
						n(160922, {	-- Needler Zhesalla
							["questID"] = 58311,
							["coord"] = { 14.7, 37.2, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
						}),
						n(160906, {	-- Skiver
							["questID"] = 58309,
							["coord"] = { 25.4, 45.7, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
						}),
					})),
					n(WORLD_QUESTS, sharedData({
						["isWorldQuest"] = true,
					}, {
						q(57445, {	-- Chin's Noodle Cart
							["coord"] = { 29.14, 60.89, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
						}),
						q(57085, {	-- Empowered War Wagon
							["coord"] = { 11.0, 64.4, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
						}),
						q(57521, {	-- Empowered War Wagon
							["coord"] = { 09.0, 27.0, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
						}),
						q(57540, {	-- Kuchong Incubator
							["coord"] = { 18.58, 65.75, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
						}),
						q(57089, {	-- Mantid Hatchery
							["coord"] = { 06.0, 71.0, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
						}),
						q(57558, {	-- Mantid Hatchery
							["coord"] = { 6.49, 42.25, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
						}),
						q(57384, {	-- Mending Monstrosity
							["coord"] = { 19.0, 72.0, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
						}),
						q(57404, {	-- Ravager Hive
							["coord"] = { 27.0, 47.0, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
						}),
						q(57484, {	-- Ritual of Wakening
							["coord"] = { 16.9, 45.7, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
						}),
						q(57542, {	-- Swarm Caller
							["coord"] = { 31.1, 61.0, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
						}),
						q(57517, {	-- Swarm Caller
							["coord"] = { 25.7, 36.4, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
						}),
						q(57519, {	-- Swarm Caller
							["coord"] = { 27.0, 17.0, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
						}),
						q(57453, {	-- Swarm Caller
							["coord"] = { 14.0, 33.0, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
						}),
						q(57476, {	-- Vil'thik Feeding Grounds
							["coord"] = { 11.3, 40.8, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
						}),
						q(57508, {	-- Zara'thik War Banner
							["coord"] = { 11.0, 48.0, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
						}),
					})),
					n(ZONE_DROPS, {
						i(174766, {	-- Mantid Relic
							["cost"] = { { "i", 174760, 6 } },	-- 6x Mantid Relic Fragment
						}),
						i(174760),	-- Mantid Relic Fragment
					}),
					i(174959),	-- Cache of the Mantid Swarm
				},
			}),
			n(EMISSARY_QUESTS, {
				q(58096, bubbleDownSelf({ ["minReputation"] = { FACTION_RAJANI, EXALTED } }, {	-- Supplies from the Rajani
					["repeatable"] = true,
					["g"] = {
						i(174483, {	-- Rajani Supplies
							i(168816, {	-- Pulsing Star Heart (Rank 4)
								["u"] = REMOVED_FROM_GAME,
								["classes"] = HEALERS,
							}),
							i(168576, {	-- Roots of Magnificent Revival (Rank 4)
								["u"] = REMOVED_FROM_GAME,
								["classes"] = TANKS,
							}),
							i(174479),	-- Jade Defender (PET!)
						}),
					},
				})),
			}),
			n(FACTIONS, {
				faction(FACTION_RAJANI),	-- Rajani
			}),
			n(NZOTH_ASSAULTS, {
				n(ACHIEVEMENTS, {
					ach(14154, {	-- Defend the Vale
						crit(47204, {	-- Assault: The Warring Clans
							["_quests"] = { 57008 },
						}),
						crit(47205, {	-- Assault: The Endless Swarm
							["_quests"] = { 57728 },
						}),
						crit(47206, {	-- Assault: The Black Empire
							["_quests"] = { 56064 },
						}),
					}),
					ach(14156),		-- The Rajani
				}),
				--[[	-- NOTE: looks like blizzard messed this one up. Commenting it out incase they fix their bug, but this is currently obtainable
				n(FLIGHT_PATHS, {
					fp(2544, {	-- Mistfall Village
						["lvl"] = 120,
						["coord"] = { 38.9, 72.8, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
					}),
				}),
				]]--
				petbattle(filter(BATTLE_PETS, {
					pet(2867),	-- Golden Chirper (PET!)
					pet(2866),	-- Voidglower (PET!)
					pet(2865),	-- Voidskimmer (PET!)
				})),
				n(QUESTS, {
					q(56538, {	-- Clans of the Mogu
						["coord"] = { 83.7, 27.1, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
						["provider"] = { "n", 156003 },	-- Lorewalker Cho
						["sourceQuest"] = 56537,	-- The Mysterious Sigil
					}),
					q(56539, {	-- Finding the Rajani
						["coord"] = { 83.7, 27.1, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
						["provider"] = { "n", 156003 },	-- Lorewalker Cho
						["sourceQuest"] = 56538,	-- Clans of the Mogu
						["g"] = {
							i(170384),	-- Mogu Scouting Report (QI!)
						},
					}),
					q(56540, {	-- Proof of Tenacity
						["coord"] = { 44.7, 73.9, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
						["provider"] = { "n", 154444 },	-- Stormspeaker Qian
						["sourceQuest"] = 56771,	-- Time-Lost Warriors
						["g"] = {
							i(170385),	-- Conqueror's Trophy (QI!)
							-- Plate
							i(173837),	-- Malignant Leviathan's Hauberk
							i(173836),	-- Malignant Leviathan's Helm
							i(173835),	-- Malignant Leviathan's Pauldrons
							-- Mail
							i(173840),	-- Nefarious Tormentor's Chestpiece
							i(173839),	-- Nefarious Tormentor's Cover
							i(173838),	-- Nefarious Tormentor's Epaulets
							-- Leather
							-- TODO: confirm these
							i(173843),	-- Vest of the Insatiable Maw
							i(173842),	-- Visage of the Insatiable Maw
							i(173841),	-- Mantle of the Insatiable Maw
							-- Cloth
							i(173846),	-- Vile Manipulator's Vestment
							i(173845),	-- Vile Manipulator's Hood
							i(173844),	-- Vile Manipulator's Amice
						},
					}),
					q(56542, {	-- Restored Hope
						["coord"] = { 45.3, 74.3, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
						["provider"] = { "n", 154418 },	-- Ra-den
						["sourceQuest"] = 56541,	-- The Engine of Nalak'sha
						["g"] = {
							i(168573),	-- Death-Resistant Leaf (Rank 1)
							i(168436),	-- Focused Star Point (Rank 1)
						},
					}),
					q(56541, {	-- The Engine of Nalak'sha
						["coord"] = { 45.3, 74.3, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
						["provider"] = { "n", 154418 },	-- Ra-den
						["sourceQuest"] = 56540,	-- Proof of Tenacity
						["maps"] = {
							1544,	-- Mogu'Shan Palace (The Engine of Nalak'sha scenario)
							1545,	-- Mogu'Shan Palace (The Engine of Nalak'sha scenario)
							1548,	-- Mogu'Shan Vaults (The Engine of Nalak'sha scenario)
							1549,	-- Mogu'Shan Vaults (The Engine of Nalak'sha scenario)
						},
					}),
					q(56771, {	-- Time-Lost Warriors
						["coord"] = { 83.1, 27.2, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
						["provider"] = { "n", 154532 },	-- Magni Bronzebeard
						["sourceQuest"] = 56539,	-- Finding the Rajani
					}),
					-- These are 'accepted' in order to cause the map to show the current Assault area, and can be clicked in chat
					q(57564, {	-- Mantid Assault Tracker
						["isWeekly"] = true,
						["sym"] = {{"select","questID",57728},{"pop"}},	-- Assault: The Endless Swarm
					}),
					q(57563, {	-- Mogu Assault Tracker
						["isWeekly"] = true,
						["sym"] = {{"select","questID",57008},{"pop"}},	-- Assault: The Warring Clans
					}),
					q(57567, {	-- N'Zoth Assault Tracker (Vale)
						["isWeekly"] = true,
						["sym"] = {{"select","questID",56064},{"pop"}},	-- Assault: The Black Empire
					}),
				}),
				n(RARES, {
					n(157468, {	-- Tisiphon
						["questID"] = 57364,
						["coord"] = { 9.5, 67.4, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
						["isDaily"] = true,
						["description"] = "Use the fishing pole.",
					}),
				}),
				n(WORLD_QUESTS, sharedData({
					["isWorldQuest"] = true,
				}, {
					petbattle(q(58747, {	-- Brain Tickling
						["coord"] = { 57.5, 54.3, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
					})),
					petbattle(q(58749, {	-- Flight of the Vil'thik
						["coord"] = { 07.4, 31.4, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
					})),
					petbattle(q(58748, {	-- Living Statues Are Tough
					})),
					petbattle(q(58746, {	-- Tiny Madness
						["coord"] = { 56.2, 28.2, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
					})),
				})),
				n(VENDORS, {
					n(160711, {	-- Zhang Ku
						["coord"] = { 44.5, 75.4, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
						["g"] = {
							i(168573, {	-- Death-Resistant Leaf (Rank 1)
								["cost"] = { { "c", 1719, 10 }, },	-- 10x Corrupted Memento
							}),
							i(168436, {	-- Focused Star Point (Rank 1)
								["cost"] = { { "c", 1719, 10 }, },	-- 10x Corrupted Memento
							}),
							i(168440, {	-- Gleaming Star Shard (Rank 3)
								["cost"] = { { "c", 1719, 50 }, },	-- 50x Corrupted Memento
							}),
							i(168575, {	-- Branch of Rejuvenating Rings (Rank 3)
								["cost"] = { { "c", 1719, 50 }, },	-- 50x Corrupted Memento
							}),
							i(174649, {	-- Rajani Warserpent (MOUNT!)
								["cost"] = { { "i", 174230, 1 }, },	-- Pristine Cloud Serpent Scale
							}),
							i(172009, {	-- Technique: Contract: Rajani (RECIPE!)
								["cost"] = 14000000,	-- 1,400g
							}),
							i(174480, {	-- Windfeather Quill (PET!)
								["cost"] = { { "i", POLISHED_PET_CHARM, 300 }, },
							}),
							i(174906, {	-- Lightning-Forged Augment Rune
								["cost"] = 500000000,	-- 50,000g
							}),
							i(174647, {	-- Rajani Tabard
								["cost"] = 2400000,	-- 240g
							}),
							i(174905, {	-- Troop Requisition: Rajani Sparkcaller
								["cost"] = { { "c", 1560, 500 }, },	-- 500x War Resources
								["questID"] = 58907,
								["g"] = {
									follower(1187, {	-- Rajani Sparkcallers
										["collectible"] = false,
										["u"] = UNLEARNABLE,	-- Temporary troops
									}),
								},
							}),
						},
					}),
				}),
			}),
		},
	}),
}));