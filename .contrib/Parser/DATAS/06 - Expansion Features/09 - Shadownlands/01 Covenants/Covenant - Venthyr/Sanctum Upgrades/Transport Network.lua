-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------
local BROKEN_MIRROR_INFO = {
	readable = "Broken Mirror",
	icon = 3854020,
	text = {
		en = "Broken Mirror",
		es = "Espejo roto",
		de = "Zerbrochener Spiegel",
		fr = "Miroir brisé",
		it = "Specchio Rotto",
		pt = "Espelho Quebrado",
		ru = "Разбитое зеркало",
		ko = "깨진 거울",
		cn = "残破的镜子",
	},
};
local function breakAnotherMirror(suffix)
	local data = {};
	for key,value in pairs(BROKEN_MIRROR_INFO) do
		data[key] = value;
	end
	data.readable = data.readable .. suffix;
	return createHeader(data);
end
BROKEN_MIRROR_A1 = breakAnotherMirror( "A1" );
BROKEN_MIRROR_A2 = breakAnotherMirror( "A2" );
BROKEN_MIRROR_A3 = breakAnotherMirror( "A3" );

BROKEN_MIRROR_B1 = breakAnotherMirror( "B1" );
BROKEN_MIRROR_B2 = breakAnotherMirror( "B2" );
BROKEN_MIRROR_B3 = breakAnotherMirror( "B3" );

BROKEN_MIRROR_C1 = breakAnotherMirror( "C1" );
BROKEN_MIRROR_C2 = breakAnotherMirror( "C2" );
BROKEN_MIRROR_C3 = breakAnotherMirror( "C3" );

BROKEN_MIRROR_D1 = breakAnotherMirror( "D1" );
BROKEN_MIRROR_D2 = breakAnotherMirror( "D2" );
BROKEN_MIRROR_D3 = breakAnotherMirror( "D3" );

root(ROOTS.ExpansionFeatures, expansion(EXPANSION.SL, bubbleDown({ ["customCollect"] = "SL_COV_VEN" }, {
	n(VENTHYR, {
		n(SANCTUM_UPGRADES, {
			["icon"] = 3641397,
			["g"] = {
				n(TRANSPORT_NETWORK, {
					["icon"] = 3854020,
					["g"] = sharedData({ ["icon"] = 3854020 }, {
						n(TIER_ONE, {
							n(QUESTS, {
								q(60051,{	-- A Master of Their Craft
									["sourceQuests"] = { 63056 },	-- Sanctum Upgrade: Mirror Network
									["isBreadcrumb"] = true,
									["provider"] = { "n", 158653 },	-- Prince Renathal
									["coord"] = { 51.1, 38.0, SINFALL_REACHES },
								}),
								q(60060, {	-- Mirror Attunement: Pridefall Hamlet
									["sourceQuests"] = { 57536 },	-- Mirror Making, Not Breaking
									["provider"] = { "n", 167160 },	-- Laurent
									["coord"] = { 47.2, 57.3, SINFALL_REACHES },
								}),
								q(60147, {	-- Mirror Attunement: The Eternal Terrace
									["sourceQuests"] = { 57536 },	-- Mirror Making, Not Breaking
									["provider"] = { "n", 167160 },	-- Laurent
									["coord"] = { 47.2, 57.3, SINFALL_REACHES },
								}),
								q(63056, {	-- Sanctum Upgrade: Mirror Network
									["sourceQuests"] = { 62915 },	-- Home Improvement
									["provider"] = { "n", 172605 },	-- Foreman Flatfinger
									["coord"] = { 55.3, 27.1, SINFALL_REACHES },
								}),
							}),
						}),
						n(TIER_TWO, {
							n(QUESTS, {
								q(60159, {	-- Mirror Attunement: Halls of Atonement
									["sourceQuests"] = { 57536 },	-- Mirror Making, Not Breaking
									["provider"] = { "n", 167160 },	-- Laurent
									["coord"] = { 47.6, 57.3, SINFALL_REACHES },
								}),
								q(60160, {	-- Mirror Attunement: The Banewood
									["sourceQuests"] = { 57536 },	-- Mirror Making, Not Breaking
									["provider"] = { "n", 167160 },	-- Laurent
									["coord"] = { 47.6, 57.3, SINFALL_REACHES },
								}),
							}),
						}),
						n(TIER_THREE, {
							["description"] = "Each day, a set of 3 Broken Mirrors is active in Revendreth.  They are not on a predictable cycle, so the same set may be up two days in a row.  Toggle on Debug Mode, 'Show All Trackable Things,' or 'Track Repeatable Quests' to see the list of mirror sets available to restore.\n\nIf your mirror transports you to Sanctuary of the Mad, go back to the repaired mirror and re-enter it to be teleported to the correct room.",
							["g"] = {
								n(MIRROR_RESTORATION, {
									n(166133, {	-- Simone
										i(181363, {	-- Handcrafted Mirror Repair Kit
											["cost"] = { { "c", 1820, 20 } },	-- 20x Infused Ruby
											["sourceQuest"] = 59740,	-- Repair and Restore
										}),
									}),
									n(SET_A, {
										["description"] = "Wowhead: |cffffffffGroup 2|r",
										["g"] = {
											n(BROKEN_MIRROR_A1, {
												["questID"] = 61819,
												["isDaily"] = true,
												["coord"] = { 39.1, 52.2, REVENDRETH },
												["cost"] = { { "i", 181363, 1 } },	-- Handcrafted Mirror Repair Kit
												["g"] = {
													o(357236, {	-- Forgotten Chest
														["questID"] = 61836,
														["isDaily"] = true,
													}),
												},
											}),
											n(BROKEN_MIRROR_A2, {
												["questID"] = 61823,
												["isDaily"] = true,
												["coord"] = { 58.8, 67.8, REVENDRETH },
												["cost"] = { { "i", 181363, 1 } },	-- Handcrafted Mirror Repair Kit
												["g"] = {
													o(357237, {	-- Forgotten Chest
														["questID"] = 61837,
														["isDaily"] = true,
													}),
												},
											}),
											n(BROKEN_MIRROR_A3, {
												["questID"] = 61827,
												["isDaily"] = true,
												["coord"] = { 70.9, 43.6, REVENDRETH },
												["cost"] = { { "i", 181363, 1 } },	-- Handcrafted Mirror Repair Kit
												["g"] = {
													o(357238, {	-- Forgotten Chest
														["questID"] = 61838,
														["isDaily"] = true,
													}),
												},
											}),
										},
									}),
									n(SET_B, {
										["description"] = "Wowhead: |cffffffffGroup 3|r",
										["g"] = {
											n(BROKEN_MIRROR_B1, {
												["description"] = "Coordinates are for a crypt entrance.  The mirror is at the bottom of the crypt in the room on the right.",
												["questID"] = 61817,
												["isDaily"] = true,
												["coord"] = { 73.1, 44.8, REVENDRETH },
												["cost"] = { { "i", 181363, 1 } },	-- Handcrafted Mirror Repair Kit
												["g"] = {
													o(357230, {	-- Forgotten Chest
														["questID"] = 61830,
														["isDaily"] = true,
													}),
												},
											}),
											n(BROKEN_MIRROR_B2, {
												["questID"] = 61821,
												["isDaily"] = true,
												["coord"] = { 40.3, 77.1, REVENDRETH },
												["cost"] = { { "i", 181363, 1 } },	-- Handcrafted Mirror Repair Kit
												["g"] = {
													o(357231, {	-- Forgotten Chest
														["questID"] = 61831,
														["isDaily"] = true,
													}),
												},
											}),
											n(BROKEN_MIRROR_B3, {
												["description"] = "Inside a house near the top of the elevator.  There are elite mobs in the area.",
												["questID"] = 61825,
												["isDaily"] = true,
												["coord"] = { 77.2, 65.4, REVENDRETH },
												["cost"] = { { "i", 181363, 1 } },	-- Handcrafted Mirror Repair Kit
												["g"] = {
													o(357232, {	-- Forgotten Chest
														["questID"] = 61832,
														["isDaily"] = true,
													}),
												},
											}),
										},
									}),
									n(SET_C, {
										["description"] = "Wowhead: |cffffffffGroup 1|r",
										["g"] = {
											n(BROKEN_MIRROR_C1, {
												["description"] = "Not up on the ramparts, but at the bottom level inside a crumbled wall.  There is an elite spider in the room.",
												["questID"] = 61826,
												["isDaily"] = true,
												["coord"] = { 27.1, 21.6, REVENDRETH },
												["cost"] = { { "i", 181363, 1 } },	-- Handcrafted Mirror Repair Kit
												["g"] = {
													o(357229, {	-- Forgotten Chest
														["questID"] = 61835,
														["isDaily"] = true,
													}),
												},
											}),
											n(BROKEN_MIRROR_C2, {
												["description"] = "On the middle level of the crumbled edifice.",
												["questID"] = 61818,
												["isDaily"] = true,
												["coord"] = { 29.4, 37.3, REVENDRETH },
												["cost"] = { { "i", 181363, 1 } },	-- Handcrafted Mirror Repair Kit
												["g"] = {
													o(351948, {	-- Forgotten Chest
														["questID"] = 61833,
														["isDaily"] = true,
													}),
												},
											}),
											n(BROKEN_MIRROR_C3, {
												["questID"] = 61822,
												["isDaily"] = true,
												["coord"] = { 40.4, 73.3, REVENDRETH },
												["cost"] = { { "i", 181363, 1 } },	-- Handcrafted Mirror Repair Kit
												["g"] = {
													o(357228, {	-- Forgotten Chest
														["questID"] = 61834,
														["isDaily"] = true,
													}),
												},
											}),
										},
									}),
									n(SET_D, {
										["description"] = "Wowhead: |cffffffffGroup 4|r",
										["g"] = {
											n(BROKEN_MIRROR_D1, {
												["questID"] = 59236,
												["isDaily"] = true,
												["coord"] = { 20.7, 54.2, REVENDRETH },
												["cost"] = { { "i", 181363, 1 } },	-- Handcrafted Mirror Repair Kit
												["g"] = {
													o(357233, {	-- Forgotten Chest
														["questID"] = 60297,
														["isDaily"] = true,
													}),
												},
											}),
											n(BROKEN_MIRROR_D2, {
												["questID"] = 61824,
												["isDaily"] = true,
												["coord"] = { 29.6, 25.8, REVENDRETH },
												["cost"] = { { "i", 181363, 1 } },	-- Handcrafted Mirror Repair Kit
												["g"] = {
													o(357235, {	-- Forgotten Chest
														["questID"] = 61829,
														["isDaily"] = true,
													}),
												},
											}),
											n(BROKEN_MIRROR_D3, {
												["description"] = "Coordinates are for a crypt entrance.  The mirror is at the bottom of the crypt in the room on the left.",
												["questID"] = 61820,
												["isDaily"] = true,
												["coord"] = { 55.1, 34.7, REVENDRETH },
												["cost"] = { { "i", 181363, 1 } },	-- Handcrafted Mirror Repair Kit
												["g"] = {
													o(357234, {	-- Forgotten Chest
														["questID"] = 61828,
														["isDaily"] = true,
													}),
												},
											}),
										},
									}),
								}),
								n(QUESTS, {
									q(60164, {	-- Mirror Attunement: Dominance Keep
									["sourceQuests"] = { 57536 },	-- Mirror Making, Not Breaking
										["provider"] = { "n", 167160 },	-- Laurent
										["coord"] = { 47.3, 57.5, SINFALL_REACHES },
									}),
									q(60165, {	-- Mirror Attunement: Feeders' Thicket
									["sourceQuests"] = { 57536 },	-- Mirror Making, Not Breaking
										["provider"] = { "n", 167160 },	-- Laurent
										["coord"] = { 47.3, 57.5, SINFALL_REACHES },
									}),
									q(59740, {	-- Repair and Restore
										["description"] = "Requires completing 2 of the pre-requisite quests.",
										["sourceQuests"] = {
											60060,	-- Mirror Attunement: Pridefall Hamlet
											60147,	-- Mirror Attunement: The Eternal Terrace
											60160,	-- Mirror Attunement: The Banewood
											60159,	-- Mirror Attunement: Halls of Atonement
											60164,	-- Mirror Attunement: Dominance Keep
											60165,	-- Mirror Attunement: Feeders' Thicket
										},
										["provider"] = { "n", 167160 },	-- Laurent
										["coord"] = { 47.3, 57.5, SINFALL_REACHES },
										["g"] = {
											i(182112),	-- Handcrafted Mirror Repair Kit (QI!)
										},
									}),
								}),
								n(REWARDS, {
									["maps"] = { REVENDRETH },
									["g"] = {
										i(183798),	-- Battle Gargon Silessa (MOUNT!)
										i(183855),	-- Stony (PET!)
										i(183707),	-- Mantle of Burnished Blades
										i(183711),	-- Burnished Crypt Keeper's Mantle
										i(183710),	-- Burnished Sinstone Chain
										i(183972),	-- Forgotten Venthyr Winged Kris
										i(183973),	-- Lost Winged Ritual Kris
										i(183976, {	-- Rogue Researcher's Dagger
											["description"] = "Drops for any class.",
										}),
										i(183978, {	-- Silver-Etched Hopebreaker Dirk
											["description"] = "Drops for any class.",
										}),
										filter(CLOTH, {
											i(181129, {	-- Soulbreaker's Burnished Drape
												["classes"] = CLOTH_CLASSES,
												["description"] = "This cloak is only awarded to cloth characters.", -- Every class sees this cloak in the Appearance tab & can mog it, so we add a note.
											}),
											i(181123),	-- Soulbreaker's Burnished Handwraps
											i(181124),	-- Soulbreaker's Burnished Hood
											i(181125),	-- Soulbreaker's Burnished Leggings
											i(181126),	-- Soulbreaker's Burnished Mantle
											i(181127),	-- Soulbreaker's Burnished Sash
											i(181122),	-- Soulbreaker's Burnished Slippers
											i(181121),	-- Soulbreaker's Burnished Vestments
											i(181128),	-- Soulbreaker's Burnished Wraps
										}),
										filter(LEATHER, {
											i(181064),	-- Burnished Death Shroud Belt
											i(181065),	-- Burnished Death Shroud Bindings
											i(181059),	-- Burnished Death Shroud Boots
											i(181062),	-- Burnished Death Shroud Breeches
											i(181066, {	-- Burnished Death Shroud Cloak
												["classes"] = LEATHER_CLASSES,
												["description"] = "This cloak is only awarded to leather characters.", -- Every class sees this cloak in the Appearance tab & can mog it, so we add a note.
											}),
											i(181060),	-- Burnished Death Shroud Gloves
											i(181061),	-- Burnished Death Shroud Hood
											i(181063),	-- Burnished Death Shroud Spaulders
											i(181058),	-- Burnished Death Shroud Vest
										}),
										filter(MAIL, {
											i(181091),	-- Fearstalker's Burnished Belt
											i(181092),	-- Fearstalker's Burnished Bracers
											i(181093, {	-- Fearstalker's Burnished Cloak
												["classes"] = MAIL_CLASSES,
												["description"] = "This cloak is only awarded to mail characters.", -- Every class sees this cloak in the Appearance tab & can mog it, so we add a note.
											}),
											i(181087),	-- Fearstalker's Burnished Gauntlets
											i(181085),	-- Fearstalker's Burnished Hauberk
											i(181088),	-- Fearstalker's Burnished Helm
											i(181089),	-- Fearstalker's Burnished Leggings
											i(181090),	-- Fearstalker's Burnished Monnion
											i(181086),	-- Fearstalker's Burnished Sabatons
										}),
										filter(PLATE, {
											i(181023),	-- Dread Sentinel's Burnished Chestplate
											i(181030, {	-- Dread Sentinel's Burnished Cloak
												["classes"] = PLATE_CLASSES,
												["description"] = "This cloak is only awarded to Plate characters.", -- Every class sees this cloak in the Appearance tab & can mog it, so we add a note.
											}),
											i(181028),	-- Dread Sentinel's Burnished Girdle
											i(181024),	-- Dread Sentinel's Burnished Greatboots
											i(181025),	-- Dread Sentinel's Burnished Grips
											i(181022),	-- Dread Sentinel's Burnished Headgear
											i(181026),	-- Dread Sentinel's Burnished Legguards
											i(181027),	-- Dread Sentinel's Burnished Spaulders
											i(181029),	-- Dread Sentinel's Burnished Vambraces
										}),
										filter(FINGER_F, {
											i(180351),	-- Worn Ring of Piety
										}),
										n(WEAPONS, {
											i(180336),	-- Faintly Smoldering Torch
											i(180335),	-- Sturdy Pitch Fork
											i(180337),	-- Sturdy Pitch Fork / 10.0.7: Rusty Hand Sickle
										}),
									},
								}),
							},
						}),
					}),
				}),
			},
		}),
	}),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.SL, bubbleDownSelf({ ["timeline"] = { ADDED_9_0_2_LAUNCH } }, {
	n(VENTHYR, bubbleDown({ ["customCollect"] = "SL_COV_VEN" }, {
		n(SANCTUM_UPGRADES, {
			n(TRANSPORT_NETWORK, {
				q(62034),	-- unlocking Soulbreaker's Burnished Vestments set (TransmogSetID 2064, Soulbreaker's Burnished items)
				q(62030),	-- unlocking Burnished Death Shroud Armor set (TransmogSetID 2069, Burnished Death Shroud items)
				q(62025),	-- unlocking Fearstalker's Burnished Battlegear set (TransmogSetID 2073, Fearstalker's Burnished items)
				q(62022),	-- unlocking Dread Sentinel's Burnished Battleplate set (TransmogSetID 2076, Dread Sentinel's Burnished items)
			}),
		}),
	})),
})));
