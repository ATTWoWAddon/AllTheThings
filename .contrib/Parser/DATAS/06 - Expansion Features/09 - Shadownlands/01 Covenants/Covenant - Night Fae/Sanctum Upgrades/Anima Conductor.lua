-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------
local GRATEFUL_CURRENCY = currency(GRATEFUL);
local GLIMMERLIGHT_STAFF = i(179518);
local TWILIGHT_BLOOM = i(182453);
local EVERCHILL_BRAMBLES = i(182452);
local GLIMMERDUSTS_GRAND_DESIGN = i(182451);
local MIKAI_DEATHSCYTHE = i(179534);
local DREAMERS_MENDING = i(182455);
local MURMURS_IN_THE_DARK = i(182454);
local SILKY_SHIMMERMOTH = i(180748, {	-- Silky Shimmermoth (MOUNT!)
	["description"] = "Available to purchase after defeating every rare at Star Lake Amphitheater",
	["cost"] = { { "c", ANIMA, 5000 } },
});
local GREATAXE_OF_UNRELENTING_PURSUIT = i(180154);
local STAR_LAKE_AMPHITHEATER = n(STAR_LAKE_AMPHITHEATER,   {
	["description"] = "You have to be in the |cFFA330C9Night Fae|r covenant to personally summon mobs, but anyone can kill and loot the mobs if they are summoned by someone else.  Only one mob is summonable per day.",
	["questID"] = 61633,
	["isDaily"] = true,
	["coord"] = { 41.5, 44.8, ARDENWEALD },
	["icon"] = 1354190,
	["crs"] = { 171743 },	-- Dapperdew
	["g"] = {
		n(166135, {	-- Astra, As Azshara <An Infamous Queen>
			["questID"] = 61201,
			["isDaily"] = true,
			["g"] = {GLIMMERLIGHT_STAFF},
		}),
		n(166145, {	-- Dreamweaver, As N'Zoth <An Eldritch Abomination>
			["questID"] = 61206,
			["isDaily"] = true,
			["g"] = {TWILIGHT_BLOOM},
		}),
		n(166142, {	-- Glimmerdust, As Jaina <A Magic Ice Princess>
			["questID"] = 61205,
			["isDaily"] = true,
			["g"] = {EVERCHILL_BRAMBLES},
		}),
		n(166139, {	-- Glimmerdust, As Kil'jaeden <of The Burning Legion>
			["questID"] = 61203,
			["isDaily"] = true,
			["g"] = {GLIMMERDUSTS_GRAND_DESIGN},
		}),
		n(166138, {	-- Mi'kai, As Argus, the Unmaker <A Corrupted World Soul>
			["isDaily"] = true,
			["questID"] = 61202,
			["g"] = {MIKAI_DEATHSCYTHE},
		}),
		n(166146, {	-- Niya, As Xavius <Some Kind of Evil Sylvar>
			["questID"] = 61207,
			["isDaily"] = true,
			["g"] = {DREAMERS_MENDING},
		}),
		n(166140, {	-- Senthii, As Gul'dan <From an Alternate Timeline>
			["questID"] = 61204,
			["isDaily"] = true,
			["g"] = {MURMURS_IN_THE_DARK},
		}),
		n(163714, {	-- Master Clerk Salorn <Tickets and Patron Rewards>
			["coord"] = { 43.0, 47.0, ARDENWEALD },
			["g"] = {SILKY_SHIMMERMOTH},	-- (MOUNT!)
		}),
	},
});
local VALFIR = n(168647, {	-- Valfir the Unrelenting
	["description"] = "Requires a member of the |cFFA330C9Night Fae Covenant|r to channel anima to Tirna Scithe. Afterwards, you can loot the Animaseed Light at the boss to remove its veil.",
	["questID"] = 61632,
	["isDaily"] = true,
	["coord"] = { 30.0, 55.0, ARDENWEALD },
	["g"] = {
		i(180730),	-- Wild Glimmerfur Prowler (MOUNT!)
		GREATAXE_OF_UNRELENTING_PURSUIT,
		i(182176),	-- Shadowstalker Soul
	},
});

root(ROOTS.ExpansionFeatures, expansion(EXPANSION.SL, bubbleDown({ ["customCollect"] = "SL_COV_NFA" }, {
	n(NIGHT_FAE, {
		n(SANCTUM_UPGRADES, {
			["icon"] = 3641394,
			["g"] = {
				n(ANIMA_CONDUCTOR, {
					["icon"] = 3854013,
					["g"] = sharedData({ ["icon"] = 3854013 }, {
						n(REWARDS, {
							["g"] = {
								currency(GRATEFUL, {
									["description"] = "Grateful Offerings can be collected once you have unlocked the Anima Conductor in for your covenant.\n Once unlocked, you can loot them from Covenant Callings (higher Conductor => more Offerings), Patterns Within Patterns Weekly Quest in Zereth Morthis and from special rares & treasures, based on the channeling of your Anima Conductor.",
								}),
							},
						}),
						n(TIER_ONE, {
							n(QUESTS, {
								q(63067, {	-- Root Restoration
									["provider"] = { "n", 165702 },	-- Zayhad, The Builder
									["coord"] = { 39.6, 55.0, THE_ROOTS },
								}),
								q(60723, {	-- The Roots Thirst
									["sourceQuests"] = { 63067 },	-- Root Restoration
									["provider"] = { "n", 167196 },	-- Sesselie
									["coord"] = { 50.1, 63.7, THE_ROOTS },
								}),
							}),
							n(RARES, {
								STAR_LAKE_AMPHITHEATER,
							}),
							n(TREASURES, {
								o(356820, {	-- Large Lunarlight Pod
									["description"] = "Requires channeling the Anima Conductor to Glitterfall Basin.  To unlock the chest, run over 5 nearby Lunarlight Buds.",
									["isDaily"] = true,
									["questID"] = 61691,
									["coord"] = { 51.7, 32.3, ARDENWEALD },
									["g"] = {
										n(173005,{	-- Lunarlight Bud
											["questID"] = 61696,
											["isDaily"] = true,
											["coords"] = {
												{ 52.3, 32.4, ARDENWEALD },
												{ 52.5, 33.4, ARDENWEALD },
												{ 52.5, 33.7, ARDENWEALD },
												{ 53.1, 33.0, ARDENWEALD },
											},
										}),
										n(173006,{	-- Lunarlight Bud
											["questID"] = 61695,
											["isDaily"] = true,
											["coords"] = {
												{ 51.8, 32.4, ARDENWEALD },
												{ 51.9, 31.5, ARDENWEALD },
												{ 52.0, 30.9, ARDENWEALD },
												{ 52.3, 31.7, ARDENWEALD },
												{ 52.5, 30.9, ARDENWEALD },
											},
										}),
										n(173008,{	-- Lunarlight Bud
											["questID"] = 61694,
											["isDaily"] = true,
											["coords"] = {
												{ 51.0, 34.4, ARDENWEALD },
												{ 51.4, 33.3, ARDENWEALD },
												{ 51.5, 34.1, ARDENWEALD },
												{ 51.8, 33.8, ARDENWEALD },
											},
										}),
										n(173009,{	-- Lunarlight Bud
											["questID"] = 61693,
											["isDaily"] = true,
											["coords"] = {
												{ 50.0, 33.3, ARDENWEALD },
												{ 50.4, 33.0, ARDENWEALD },
												{ 50.6, 33.6, ARDENWEALD },
												{ 50.9, 33.0, ARDENWEALD },
											},
										}),
										n(173010,{	-- Lunarlight Bud
											["questID"] = 61692,
											["isDaily"] = true,
											["coords"] = {
												{ 49.9, 32.1, ARDENWEALD },
												{ 50.1, 32.3, ARDENWEALD },
												{ 50.2, 31.6, ARDENWEALD },
												{ 50.5, 31.8, ARDENWEALD },
												{ 51.2, 32.5, ARDENWEALD },
											},
										}),
									},
								}),
							}),
						}),
						n(TIER_TWO, {
							n(QUESTS, sharedData({ ["coord"] = { 59.7, 52.8, ARDENWEALD }, ["isDaily"] = true }, {
								q(62160, {	-- A Bundle of Lilies
									["provider"] = { "n", 173277 },	-- Teendynneetll
									["g"] = {
										i(182659),	-- Night Lilly (QI!)
									},
								}),
								q(62224, {	-- A Thread of Hope
									["provider"] = { "n", 173277 },	-- Teendynneetll
									["g"] = {
										i(183041),	-- Anima-Infused Silk (QI!)
									},
								}),
								q(62188, {	-- Catch A Star
									["provider"] = { "n", 173277 },	-- Teendynneetll
								}),
								q(61875, {	-- Doing the Dew
									["provider"] = { "n", 173277 },	-- Teendynneetll
									["g"] = {
										i(182333),	-- Thistledrop Dew (QI!)
									},
								}),
								q(61950, {	-- Hunting the Wilds
									["provider"] = { "n", 173282 },    -- Guardian Dazzlewing
									["g"] = {
										i(182387),	-- Feral Anima (QI!)
									},
								}),
								q(61968, {	-- Just Wing It
									["provider"] = { "n", 173282 },    -- Guardian Dazzlewing
									["g"] = {
										i(182450),	-- Perfect Ardenmoth Wing Scale (QI!)
									},
								}),
								q(62081, {	-- Return Those Animacones!
									["provider"] = { "n", 173282 },    -- Guardian Dazzlewing
									["g"] = {
										i(182619),	-- Looted Animacone (QI!)
									},
								}),
								q(62155, {	-- Runestone Roundup
									["provider"] = { "n", 173282 },    -- Guardian Dazzlewing
									["g"] = {
										i(182647),	-- Runestone Spike (QI!)
									},
								}),
								q(62057, {	-- Those Who Hunger
									["provider"] = { "n", 173282 },    -- Guardian Dazzlewing
								}),
								q(61985, {	-- Wake the Sleepers
									["provider"] = { "n", 173277 },	-- Teendynneetll
								}),
							})),
							n(WORLD_QUESTS, sharedData({ ["isWorldQuest"] = true }, {
								q(62068, {	-- Gormling Piper: Crumbled Ridge
									i(182611),	-- Fae Flute (QI!)
								}),
								q(61394, {	-- Gormling Piper: Tranquil Pools
									["g"] = {
										i(181284),	-- Gormling in a Bag (QI!)
									},
								}),
								q(61717, {	-- Gormling Piper: Tranquil Pools
									i(182189),	-- Fae Flute (QI!)
								}),
								q(62051, {	-- Gormling Toss: Spirit Glen
									i(184487),	-- Gormling in a Bag (TOY!)
									i(182600),	-- Gormling in a Bag (QI!)
								}),
							})),
						}),
						n(TIER_THREE, {
							n(RARES, {
								VALFIR,
							}),
						}),
					}),
				}),
			},
		}),
	}),
})));

for _,t in ipairs({STAR_LAKE_AMPHITHEATER, VALFIR,GRATEFUL_CURRENCY,GLIMMERLIGHT_STAFF,TWILIGHT_BLOOM,EVERCHILL_BRAMBLES,GLIMMERDUSTS_GRAND_DESIGN,MIKAI_DEATHSCYTHE,DREAMERS_MENDING,MURMURS_IN_THE_DARK,SILKY_SHIMMERMOTH,GREATAXE_OF_UNRELENTING_PURSUIT}) do
	t.customCollect = nil;
end

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.SL, bubbleDownSelf({ ["timeline"] = { ADDED_9_0_2_LAUNCH } }, {
	n(NIGHT_FAE,  bubbleDown({ ["customCollect"] = "SL_COV_NFA" }, {
		n(SANCTUM_UPGRADES, {
			n(ANIMA_CONDUCTOR, {
				q(61168),	-- triggered when obtaining trickers moves from conductor lvl 3 enchantments
				q(61169),	-- Night Fae buff from Claw's Edge anima conductor
				q(61158),	-- Night Fae buff from Claw's Edge anima conductor (Ka'rolei)
			}),
		}),
	})),
})));