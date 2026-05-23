---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

ABYSS_ANGLERS = createHeader({
	readable = "Abyss Anglers",
	icon = 2027958,
	text = {
		en = "Abyss Anglers",
		cn = "深渊钓客",
	},
});

local ANGLER_PEARLS = 3373;

root(ROOTS.Zones, m(MAP.MIDNIGHT.QUELTHALAS, {
	m(MAP.MIDNIGHT.ZULAMAN, {
		n(ABYSS_ANGLERS, bubbleDownSelf({ ["timeline"] = { ADDED_12_0_5 }, }, {
			n(ACHIEVEMENTS, {	-- Achievements do not reward Cosmetics, Pets, or Diving Upgrades. They unlock the ability for you to buy them from the vendor.
				ach(62776),	-- Abyss Anglers: All Blue Angler
				ach(62760),	-- Abyss Anglers: Angler Physics
				ach(62272),	-- Abyss Anglers: Certified Depthdiver
				ach(62775),	-- Abyss Anglers: Delicate Diver
				ach(62208),	-- Abyss Anglers: Depth Grease
				ach(62210),	-- Abyss Anglers: Depthdiver's Used Tank
				ach(62829),	-- Abyss Anglers: Don't Know What You Expected
				ach(62218),	-- Abyss Anglers: Even The Best
				ach(62211),	-- Abyss Anglers: Fathom-Tested Tank
				ach(62117),	-- Abyss Anglers: Finnow Chum
				ach(62222),	-- Abyss Anglers: Free Transport
				ach(62221),	-- Abyss Anglers: Fresh Depth Tech
				ach(62759),	-- Abyss Anglers: History Below
				ach(62217, {	-- Abyss Anglers: Idol of the Depths
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						62117,	-- Abyss Anglers: Finnow Chum
						62210,	-- Abyss Anglers: Depthdiver's Used Tank
						62218,	-- Abyss Anglers: Even The Best
						62221,	-- Abyss Anglers: Fresh Depth Tech
						62219,	-- Abyss Anglers: No Sea Can Hold Me
						62220,	-- Abyss Anglers: Proper Procedure
						62207,	-- Abyss Anglers: Reinforced Joints
						62213,	-- Abyss Anglers: Shallows Net
						62222,	-- Abyss Anglers: Free Transport
					}},
				}),
				ach(62773, {	-- Abyss Anglers: Jeju's New Rival
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						62772, -- Abyss Anglers: Now That's Anglin'
						62762, -- Abyss Anglers: Top of the Class
						62271, -- Abyss Anglers: Trench Berserker
						62763, -- Abyss Anglers: Vintage Collector
					}},
				}),
				ach(62778),	-- Abyss Anglers: Luck of the Loa
				ach(62343),	-- Abyss Anglers: Myths from Beneath
				ach(62119),	-- Abyss Anglers: Murkskimmer Meat
				ach(62212),	-- Abyss Anglers: Nalorakk's Breath Tank
				ach(62219),	-- Abyss Anglers: No Sea Can Hold Me
				ach(62774),	-- Abyss Anglers: Not Done Yet
				ach(62772),	-- Abyss Anglers: Now That's Anglin'
				ach(62761),	-- Abyss Anglers: One with the Depths
				ach(62209),	-- Abyss Anglers: Pahk Trench Fins
				ach(62777),	-- Abyss Anglers: Pearls to the Abyss
				ach(62118),	-- Abyss Anglers: Plecofin Bait
				ach(62506),	-- Abyss Anglers: Pressurized Eyeglass
				ach(62220),	-- Abyss Anglers: Proper Procedure
				ach(62207),	-- Abyss Anglers: Reinforced Joints
				ach(62832),	-- Abyss Anglers: Reservation for One
				ach(62213),	-- Abyss Anglers: Shallows Net
				ach(62342),	-- Abyss Anglers: The Finest of Fish
				ach(62762),	-- Abyss Anglers: Top of the Class
				ach(62271),	-- Abyss Anglers: Trench Berserker
				ach(62214),	-- Abyss Anglers: Triple-Thread Net
				ach(62763),	-- Abyss Anglers: Vintage Collector
			}),
			n(QUESTS, {
				q(96388, {	-- Joining the Abyss Anglers
					--["sourceQuests"] = { X },	-- Completing the Campaign, I guess
					["qg"] = 240195,	-- Depthdiver Jeju
					["coord"] = { 68.2, 20.2, MAP.MIDNIGHT.ZULAMAN },
				}),
				q(94840, {	-- Blessings of The Depths
					["provider"] = { "i", 265749 },	-- Idol of the Depths
				}),
				n(BONUS_OBJECTIVES, {	-- Appears as a Bonus Objective quest every time you dive
					q(92447, {	-- Abyss Anglers
						["coord"] = { 68.2, 19.9, MAP.MIDNIGHT.ZULAMAN },
						["isRepeatable"] = true,
					}),
				}),
			}),
			n(REWARDS, {
				currency(ANGLER_PEARLS),
			}),
			n(VENDORS, {
				n(240195, {	-- Depthdiver Jeju <Veteran Abyss Angler>
					["coord"] = { 68.2, 20.2, MAP.MIDNIGHT.ZULAMAN },
					["groups"] = {	-- Diving Upgrades. None of the items triggered a HQT or do they appear as collected. They simply disappear from the vendor once used/learned.
						i(253627, {	-- Depth Grease
							["sourceAchievement"] = 62208,	-- Abyss Anglers: Depth Grease
							["cost"] = { { "c", ANGLER_PEARLS, 400 } },
						}),
						i(253516, {	-- Depthdiver's Used Tank
							["sourceAchievement"] = 62210,	-- Abyss Anglers: Depthdiver's Used Tank
							["cost"] = { { "c", ANGLER_PEARLS, 200 } },
						}),
						i(253624, {	-- Fathom-Tested Tank
							["sourceAchievement"] = 62211,	-- Abyss Anglers: Fathom-Tested Tank
							["cost"] = { { "c", ANGLER_PEARLS, 400 } },
						}),
						i(271181, {	-- Finnow Chum
							["sourceAchievement"] = 62117,	-- Abyss Anglers: Finnow Chum
							["cost"] = { { "c", ANGLER_PEARLS, 200 } },
						}),
						i(271183, {	-- Murkskimmer Meat
							["sourceAchievement"] = 62119,	-- Abyss Anglers: Murkskimmer Meat
							["cost"] = { { "c", ANGLER_PEARLS, 600 } },
						}),
						i(253625, {	-- Nalorakk's Breath Tank
							["sourceAchievement"] = 62212,	-- Abyss Anglers: Nalorakk's Breath Tank
							["cost"] = { { "c", ANGLER_PEARLS, 600 } },
						}),
						i(253628, {	-- Pahk Trench Fins
							["sourceAchievement"] = 62209,	-- Abyss Anglers: Pahk Trench Fins
							["cost"] = { { "c", ANGLER_PEARLS, 600 } },
						}),
						i(271182, {	-- Plecofin Bait
							["sourceAchievement"] = 62118,	-- Abyss Anglers: Plecofin Bait
							["cost"] = { { "c", ANGLER_PEARLS, 400 } },
						}),
						i(271184, {	-- Pressurized Eyeglass
							["sourceAchievement"] = 62506,	-- Abyss Anglers: Pressurized Eyeglass
							["cost"] = { { "c", ANGLER_PEARLS, 600 } },
						}),
						i(253626, {	-- Reinforced Joints
							["sourceAchievement"] = 62207,	-- Abyss Anglers: Reinforced Joints
							["cost"] = { { "c", ANGLER_PEARLS, 100 } },
						}),
						i(265771, {	-- Shallows Net
							["sourceAchievement"] = 62213,	-- Abyss Anglers: Shallows Net
							["cost"] = { { "c", ANGLER_PEARLS, 400 } },
						}),
						i(265770, {	-- Triple-Thread Net
							["sourceAchievement"] = 62214,	-- Abyss Anglers: Triple-Thread Net
							["cost"] = { { "c", ANGLER_PEARLS, 600 } },
						}),
					},
				}),
				n(260180, {	-- Depthdiver Tu'nakit <Abyss Angler>
					["coord"] = { 68.3, 20.3, MAP.MIDNIGHT.ZULAMAN },
					["groups"] = {
						i(258537, {	-- Amani Dreamer's Charm (DECOR!)
							["cost"] = { { "c", ANGLER_PEARLS, 750 } },
						}),
						i(258538, {	-- Barebone Rope Charm (DECOR!)
							["cost"] = { { "c", ANGLER_PEARLS, 750 } },
						}),
						i(264251, {	-- Depthdiver's Cooking Spit (DECOR!)
							["cost"] = { { "c", ANGLER_PEARLS, 1000 } },
						}),
						i(253582, {	-- Fangfin Flailer (COSMETIC!)
							["cost"] = { { "c", ANGLER_PEARLS, 2250 } },
						}),
						i(274267, {	-- Fused Vitality
							["cost"] = { { "c", ANGLER_PEARLS, 750 } },
						}),
						i(265749, {	-- Idol of the Depths (QS!)
							["sourceAchievement"] = 62217,	-- Abyss Anglers: Idol of the Depths
							["cost"] = { { "c", ANGLER_PEARLS, 1500 } },
						}),
						i(274266, {	-- Ka'bubb (PET!)
							["sourceAchievement"] = 62776,	-- Abyss Anglers: All Blue Angler
							["cost"] = { { "c", ANGLER_PEARLS, 2500 } },
						}),
						i(258535, {	-- Simple Bone-Tied Charm (DECOR!)
							["cost"] = { { "c", ANGLER_PEARLS, 750 } },
						}),
						i(258536, {	-- Windmark Tribal Charm (DECOR!)
							["cost"] = { { "c", ANGLER_PEARLS, 750 } },
						}),
						i(264252, {	-- Zul'Aman Forest Hammock (DECOR!)
							["cost"] = { { "c", ANGLER_PEARLS, 1000 } },
						}),
						iensemble(223245, {	-- Ensemble: Abyss Angler (COSMETIC!)
							["cost"] = { { "c", ANGLER_PEARLS, 4500 } },
						}),
						iensemble(266969, {	-- Ensemble: Depthdiver Vestments (COSMETIC!)
							["cost"] = { { "c", ANGLER_PEARLS, 3000 } },
						}),
					},
				}),
			}),
			filter(MISC, {
				-- TODO: Sort or move elsewhere if needed
				i(265768),	-- Amazardhide Catch Case
				i(265769),	-- Boarhide Catch Sack
				i(265779),	-- Heavy Harpoon Cannon
				i(265778),	-- Hollowcore Harpoon Turret
				i(265767),	-- Loaknit-Woven Catch Satchel
			}),
		})),
	}),
}));

root(ROOTS.HiddenQuestTriggers, {
	expansion(EXPANSION.MID, bubbleDownSelf({ ["timeline"] = { ADDED_12_0_5 } }, {
		n(ABYSS_ANGLERS, {
			q(89044, { ["isRepeatable"] = true }),	-- Constantly triggers. Usually flags as completed when you dive, unflags when you surface
		}),
	})),
});
