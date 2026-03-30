-------------------------------------------------------------------
--	  E X P A N S I O N   F E A T U R E S	M O D U L E	   --
-------------------------------------------------------------------

ABUNDANCE = createHeader({
	readable = "Abundance",
	icon = 237556,
	text = {
		en = "Abundance",
		de = "Überfluss",
		es = "Abundancia",
		mx = "Abundancia",
		fr = "Abondance",
		it = "Abbondanza",
		ko = "풍요",
		pt = "Abundância",
		ru = "Изобилие",
		cn = "丰饶",
		tw = "豐足",
	},
});

local UNALLOYED_ABUNDANCE = 3377;

root(ROOTS.ExpansionFeatures, expansion(EXPANSION.MID, bubbleDownSelf({ ["timeline"] = { ADDED_12_0_1 } }, {
	n(ABUNDANCE, {
		["maps"] = {
			2580,	-- Loaknit Den
			2579,	-- Wartha'nan Crypts
			2581,	-- Voidburrow
			2582,	-- Voidburrow
			2522,	-- Abundant Grotto
			2523,	-- Abundant Grotto
		},
		["coords"] = {
			{ 56.6, 65.8, MAP.MIDNIGHT.EVERSONG_WOODS },
			{ 31.6, 26.7, MAP.MIDNIGHT.ZULAMAN },
			{ 66.0, 61.4, MAP.MIDNIGHT.HARANDAR },
			{ 38.9, 53.2, MAP.MIDNIGHT.VOIDSTORM },
		},
		["groups"] = {
			n(ACHIEVEMENTS, {
				ach(61941),	-- Abundance: Acolyte of a Glorious Entity
				ach(62341),	-- Abundance: Ain't Dun Till It's Dun
				ach(62266),	-- Abundance: An Acolyte no Longer
				ach(62338, {	-- Abundance: Artisan
					["description"] = "Requires you to click 4 profession items during an Abundance.\nRequires 25 or more Skill to click.\nEach zone has specific professions:\n\nEversong Woods: Enchanting, Jewelcrafting, Tailoring\n\nZul’Aman: Cooking, Leatherworking, Skinning\n\nHarandar: Alchemy, Herbalism, Inscription\n\nVoidstorm: Blacksmithing, Engineering, Mining",
				}),
				ach(61939),	-- Abundance: Artisan of Floaret
				ach(61938),	-- Abundance: Artisan of Loaknit
				ach(61940),	-- Abundance: Artisan of Loanite
				ach(61937),	-- Abundance: Artisan of Mausoloa
				ach(42283),	-- Abundance: Azeroth Runs on Dundun
				ach(62336),	-- Abundance: Contributer
				ach(62331),	-- Abundance: Drops of Prosperity
				ach(62332),	-- Abundance: Dundun's Favored
				ach(62339),	-- Abundance: Gambler
				ach(62326),	-- Abundance: Golden Opportunities
				ach(62333),	-- Abundance: Harvester
				ach(62340),	-- Abundance: Investor
				ach(62324),	-- Abundance: Loa of all Trades
				ach(62330),	-- Abundance: One Bite at a Time
				ach(62337),	-- Abundance: Professional
				ach(62268),	-- Abundance: Professionals Only
				ach(61943),	-- Abundance: Prosperous Plentitude!
				ach(62329),	-- Abundance: Squash the Competition
				ach(62325),	-- Abundance: Treasures Aplenty
				ach(61681),	-- Abundance: You Should See Him in a Crown
			}),
			n(QUESTS, {
				q(91930, {	-- The Abundant Lands
					--["sourceQuest"] = XXXXX,	-- Finished Midnight Campaign
					["qg"] = 241924,	-- Chel the Chip
					["coord"] = { 45.1, 67.6, MAP.MIDNIGHT.ZULAMAN },
				}),
				q(91932, {	-- The Abundant Awakening
					["sourceQuest"] = 91930,	-- The Abundant Lands
					["qg"] = 241928,	-- Chel the Chip
					["coord"] = { 31.6, 26.3, MAP.MIDNIGHT.ZULAMAN },
				}),
				q(91933, {	-- The Abundant Honor
					["sourceQuest"] = 91932,	-- The Abundant Awakening
					["qg"] = 251601,	-- Dundun <Loa of Abundance>
					["coord"] = { 31.6, 26.1, MAP.MIDNIGHT.ZULAMAN },
					["groups"] = { i(252607) },	-- Abundant Beacon (QI!)
				}),
				q(94361, {	-- The Abundant Life
					["sourceQuest"] = 91933,	-- The Abundant Honor
					["qgs"] = {
						241928,	-- Chel the Chip
						242704,	-- Dundun <Loa of Abundance>
						251601,	-- Dundun <Loa of Abundance>
					},
					["coord"] = { 31.6, 26.1, MAP.MIDNIGHT.ZULAMAN },	-- maybe any zone??
				}),
				q(89507, {	-- Abundant Offerings
					--["sourceQuest"] = 91933,	-- The Abundant Honor
					["qgs"] = {
						257633,	-- Chel the Chip [Eversong Woods]
						241928,	-- Chel the Chip [Zul'Aman]
						257632,	-- Chel the Chip [Voidstorm]
						248658,	-- Chel the Chip [Harandar]
					},
					["coords"] = {
						{ 56.7, 65.9, MAP.MIDNIGHT.EVERSONG_WOODS },
						{ 31.6, 26.3, MAP.MIDNIGHT.ZULAMAN },
						{ 38.9, 53.2, MAP.MIDNIGHT.VOIDSTORM },
						{ 66.1, 61.5, MAP.MIDNIGHT.HARANDAR },
					},
					["isWeekly"] = true,
					["groups"] = {
						i(269702, {	-- Overflowing Abundant Satchel
							["sym"] = SYM.MIDNIGHT.QUELTHALAS_ZONE_REWARDS,
						}),
						i(268488, {	-- Overflowing Abundant Satchel (Pre-Season)
							["timeline"] = { ADDED_12_0_1_LAUNCH, REMOVED_12_0_1_SEASONSTART },
							["sym"] = SYM.MIDNIGHT.QUELTHALAS_ZONE_REWARDS,
						}),
						i(263466, {	-- Overflowing Abundant Satchel (Season 1)
							["timeline"] = { ADDED_12_0_1_SEASONSTART, REMOVED_12_1_0 },
							["sym"] = SYM.MIDNIGHT.QUELTHALAS_ZONE_REWARDS,
						}),
					},
				}),
				q(94834, {	-- Blessings of Abundance
					["provider"] = { "i", 265746 },	-- Idol of Abundance (QS!)
				})
			}),
			n(VENDORS, {
				["crs"] = {
					257633,	-- Chel the Chip <Abundance Vendor>
					241928,	-- Chel the Chip <Abundance Vendor>
					248658,	-- Chel the Chip <Abundance Vendor>
					257632,	-- Chel the Chip <Abundance Vendor>
				},
				["coords"] = {
					{ 56.6, 65.8, MAP.MIDNIGHT.EVERSONG_WOODS },
					{ 31.6, 26.7, MAP.MIDNIGHT.ZULAMAN },
					{ 66.0, 61.4, MAP.MIDNIGHT.HARANDAR },
					{ 38.9, 53.2, MAP.MIDNIGHT.VOIDSTORM },
				},
				["groups"] = {
					i(265746, {	-- Idol of Abundance (QS!)
						["cost"] = { { "c", UNALLOYED_ABUNDANCE, 1600 } },
					}),
					filter(COSMETIC, {
						i(262582, {	-- Amani Gem Clamps
							["cost"] = { { "c", UNALLOYED_ABUNDANCE, 800 } },
						}),
						i(262579, {	-- Amani Hide Cutter
							["cost"] = { { "c", UNALLOYED_ABUNDANCE, 800 } },
						}),
						i(262580, {	-- Amani Log Splitter
							["cost"] = { { "c", UNALLOYED_ABUNDANCE, 800 } },
						}),
						i(262581, {	-- Amani Rock Hammer
							["cost"] = { { "c", UNALLOYED_ABUNDANCE, 800 } },
						}),
						i(262578, {	-- Amani Stonework Chisel
							["cost"] = { { "c", UNALLOYED_ABUNDANCE, 800 } },
						}),
						iensemble(266970, {	-- Ensemble: Abundant Raiment
							["cost"] = { { "c", UNALLOYED_ABUNDANCE, 3200 } },
						}),
					}),
					n(DECOR, {
						i(256923, {	-- Amani Crafter's Tool Rack (DECOR!)
							["cost"] = { { "c", UNALLOYED_ABUNDANCE, 3200 } },
						}),
						i(264655, {	-- Amani Slate Bench (DECOR!)
							["cost"] = { { "c", UNALLOYED_ABUNDANCE, 3200 } },
						}),
						i(264254, {	-- Three-Tier Zul'Aman Shelf (DECOR!)
							["cost"] = { { "c", UNALLOYED_ABUNDANCE, 3200 } },
						}),
						i(264249, {	-- Woodblock Stoll (DECOR!)
							["cost"] = { { "c", UNALLOYED_ABUNDANCE, 1600 } },
						}),
					}),
					filter(MOUNTS, {
						i(250782, {	-- Amani Sunfeather (MOUNT!)
							["cost"] = { { "c", UNALLOYED_ABUNDANCE, 6400 } },
						}),
						i(257197, {	-- Blessed Amani Burrower (MOUNT!)
							["cost"] = { { "c", UNALLOYED_ABUNDANCE, 6400 } },
						}),
					}),
					n(PROFESSIONS, {
						i(250753, {	-- Bag of Cracked Orebits
							["requireSkill"] = MINING,
							["cost"] = { { "c", UNALLOYED_ABUNDANCE, 1200 } },
						}),
						i(250754, {	-- Bag of Wild Skinnings
							["requireSkill"] = SKINNING,
							["cost"] = { { "c", UNALLOYED_ABUNDANCE, 1200 } },
						}),
						i(250755, {	-- Pouch of Mystic Grindings
							["requireSkill"] = ENCHANTING,
							["cost"] = { { "c", UNALLOYED_ABUNDANCE, 1200 } },
						}),
						i(250750, {	-- Pouch of Sprouted Clippings
							["requireSkill"] = HERBALISM,
							["cost"] = { { "c", UNALLOYED_ABUNDANCE, 1200 } },
						}),
						i(250445, {	-- Echo of Abundance: Enchanting
							["requireSkill"] = ENCHANTING,
							["cost"] = {
								{ "c", ARTISAN_MOXIE.ENCHANTING, 75 },
								{ "c", UNALLOYED_ABUNDANCE, 1600 },
							},
						}),
						i(250443, {	-- Echo of Abundance: Herbalism
							["requireSkill"] = HERBALISM,
							["cost"] = {
								{ "c", ARTISAN_MOXIE.HERBALISM, 75 },
								{ "c", UNALLOYED_ABUNDANCE, 1600 },
							},
						}),
						i(250444, {	-- Echo of Abundance: Mining
							["requireSkill"] = MINING,
							["cost"] = {
								{ "c", ARTISAN_MOXIE.MINING, 75 },
								{ "c", UNALLOYED_ABUNDANCE, 1600 },
							},
						}),
						i(250360, {	-- Echo of Abundance: Skinning
							["requireSkill"] = SKINNING,
							["cost"] = {
								{ "c", ARTISAN_MOXIE.SKINNING, 75 },
								{ "c", UNALLOYED_ABUNDANCE, 1600 },
							},
						}),
						i(245345, {	-- Fused Vitality
							["cost"] = { { "c", UNALLOYED_ABUNDANCE, 800 } },
						}),
						i(254875, {	-- Muck-Covered Writings
							["cost"] = { { "c", UNALLOYED_ABUNDANCE, 6400 } },
						}),
						i(241147, {	-- Blood Hunter Lure
							["cost"] = { { "c", UNALLOYED_ABUNDANCE, 200 } },
						}),
						i(241145, {	-- Lucky Loa Lure
							["cost"] = { { "c", UNALLOYED_ABUNDANCE, 200 } },
						}),
					}),
					filter(TOYS, {
						i(251633, {	-- Bursting Bounty Bundle (TOY!)
							["cost"] = { { "c", UNALLOYED_ABUNDANCE, 6400 } },
						}),
						i(266370, {	-- Dundun's Abundant Travel Method (TOY!)
							["cost"] = { { "c", UNALLOYED_ABUNDANCE, 3200 } },
						}),
					}),
				},
			}),
		},
	}),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.MID, {
	n(ABUNDANCE, {
		n(QUESTS, {
			q(91302),	-- Abundance: Abundant Grove
			q(91475),	-- Abundance: Abundant Voidburrow
			q(87350),	-- Abundance: Loaknit Den
			q(91457),	-- Abundance: Watha'nan Crypts
			q(88770),	-- Popped after entering Loaknit Den
			q(94426),	-- Popped after Loaknit Den
			q(91432),	-- Popped after entering Wath'nan Crypts
			q(94952),	-- Accepted 'Abudant Offerings' (questID 89507)
		}),
	}),
}));
