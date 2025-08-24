---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
local HUNGRY_NETHER_RAYS_GROUPS = {
	objective(1, {	-- 0/10 Nether Ray Meal
		["provider"] = { "i", 32834 },	-- Nether Ray Cage (Provided)
		["cr"] = 23219,	-- Blackwind Warp Chaser
	}),
};
local UNHOLY_ENCHANT = i(16248, {	-- Formula: Enchant Weapon - Unholy (RECIPE!)
	["cr"] = 16810,	-- Bonechewer Backbreaker
});
ExportDB.OnTooltipDB.ForSkyguard = [[~function(t, tooltipInfo)
	local reputation = t.reputation;
	if reputation < 42000 then
		local addRepInfo = _.Modules.FactionData.AddReputationTooltipInfo;
		tinsert(tooltipInfo, { left = "Protip: Join a rep farming group.", r = 1, g = 0.5, b = 0.5 });
		addRepInfo(tooltipInfo, reputation, "Kill Arokkoa.", 5, 42000);
		addRepInfo(tooltipInfo, reputation, "Summon Bosses.", 100, 42000);
		addRepInfo(tooltipInfo, reputation, "Turn in Shadow Dust.", 150, 42000);
		_.Modules.FactionData.AddReputationTooltipInfoWithMultiplier(tooltipInfo, reputation, "Total Dust", 150, 42000, 6);
	end
end]];
root(ROOTS.Zones, {
	m(OUTLAND, applyclassicphase(TBC_PHASE_ONE, {
		m(TEROKKAR_FOREST, bubbleDownSelf({ ["timeline"] = { ADDED_2_0_1 } }, {
			["lore"] = "Terokkar Forest is a zone in central Outland that is home to Shattrath City, as well as quest hubs for level 15-30 players. The northern half of Terokkar is lush and the quests cover the threat of the Arakoaa and magic-addicted elves. The souther half is a wasteland known as the Bone Wastes, created when the Shadow Council blew up Auchindoun. There is also a daily quest hub, Skettis, for players with flying mounts--rewards include vanity items.",
			["icon"] = 236847,
			["groups"] = {
				n(ACHIEVEMENTS, {
					ach(867),	-- Explore Terokkar Forest
					applyclassicphase(TBC_PHASE_TWO_SKYGUARD, achWithRep(894, FACTION_SHATARI_SKYGUARD)),	-- Flying High Over Skettis
					ach(726, {	-- Mr. Pinchy's Magical Crawdad Box
						["provider"] = { "i", 27445 },	-- Magical Crawdad Box
						["requireSkill"] = FISHING,
					}),
					ach(905, {	-- Old Man Barlowned
						["timeline"] = { ADDED_3_0_2 },
						["requireSkill"] = FISHING,
					}),
					ach(1191, {	-- Terror of Terokkar (A)
						["races"] = ALLIANCE_ONLY,
						-- #if AFTER 7.3.5
						["_doautomation"] = true,
						-- #else
						["sourceQuests"] = {
							-- The Skettis Offensive
							10879,	-- The Skettis Offensive

							-- Refugee Caravan
							10878,	-- Before Darkness Falls
							10031,	-- Helping the Lost Find Their Way
							10852,	-- Missing Friends
							10896,	-- The Infested Protectors
							10881,	-- The Shadow Tomb
							10842,	-- Vengeful Souls

							-- Sha'tari Base Camp
							10915,	-- The Fallen Exarch
							10926,	-- Return to Sha'tari Base Camp
							10930,	-- The Big Bone Worm
							-- TODO: verify below:
							10923,	-- Evil Draws Near
							10873,	-- Taken in the Night

							-- The Warden's Secret
							9951,	-- It's Watching You!
							10005,	-- Letting Earthbinder Tavgren Know

							-- Allerian Stronghold
							10042,	-- Kill the Shadow Council!
							10035,	-- Torgos!
							10022,	-- The Elusive Ironjaw
							-- TODO: not 100% sure if every quest below is required
							10012,	-- Fel Orc Plans
							10007,	-- Thinning the Ranks
							10869,	-- Thin the Flock
							9986,	-- Stymying the Arakkoa
							10028,	-- Vessels of Power
						},
						-- #endif
					}),
					ach(1272, {	-- Terror of Terokkar (H)
						["races"] = HORDE_ONLY,
						-- #if AFTER 7.3.5
						["_doautomation"] = true,
						-- #else
						["sourceQuests"] = {
							-- The Skettis Offensive
							10879,	-- The Skettis Offensive

							-- Refugee Caravan
							10878,	-- Before Darkness Falls
							10031,	-- Helping the Lost Find Their Way
							10852,	-- Missing Friends
							10896,	-- The Infested Protectors
							10881,	-- The Shadow Tomb
							10842,	-- Vengeful Souls

							-- Sha'tari Base Camp
							10915,	-- The Fallen Exarch
							10926,	-- Return to Sha'tari Base Camp
							10930,	-- The Big Bone Worm
							-- TODO: verify below:
							10923,	-- Evil Draws Near
							10873,	-- Taken in the Night

							-- The Warden's Secret
							9951,	-- It's Watching You!
							10005,	-- Letting Earthbinder Tavgren Know

							-- Stonebreaker Hold
							10013,	-- An Unseen Hand
							10043,	-- Kill the Shadow Council
							10791,	-- Welcoming the Wolf Spirit
							-- TODO: Verify below:
							10201,	-- And Now, the Moment of Truth
							10868,	-- Arakkoa War Path
							9987,	-- Stymying the Arakkoa
							10036,	-- Torgos!
						},
						-- #endif
					}),
				}),
				battlepets({
					["sym"] = {{"select","speciesID",
						417,	-- Rat (PET!)
						397,	-- Skunk (PET!)
						387,	-- Snake (PET!)
						379,	-- Squirrel (PET!)
						432,	-- Stripe-Tailed Scorpid (PET!)
					}},
					["groups"] = {
						pet(514, {	-- Flayer Youngling (PET!)
							["description"] = "Found in Razorthorn Rise, on the mountain range between Hellfire Peninsula and Terokkar Forest. Flying is required.",
						}),
						pet(517),	-- Warpstalker Hatchling (PET!)
					},
				}),
				explorationHeader({
					exploration(3901),	-- Allerian Post
					exploration(3684),	-- Allerian Stronghold
					visit_exploration(3790,{coord={35.7,65.5,TEROKKAR_FOREST}}),	-- Auchenai Crypts
					-- #if AFTER CATA
					exploration(3894),	-- Auchenai Grounds (Wrath Classic: Can't be collected)
					-- #endif
					exploration(3688),	-- Auchindoun
					visit_exploration(3917,{coord={35.1,70.1,TEROKKAR_FOREST}}),	-- Auchindoun
					exploration(3690),	-- Blackwind Lake
					visit_exploration(3973,{coord={63.4,66.1,TEROKKAR_FOREST}}),	-- Blackwind Landing
					exploration(3680),	-- Blackwind Valley
					exploration(3719),	-- Bleeding Hollow Ruins
					visit_exploration(3685,{coord={64.2,55.2,TEROKKAR_FOREST}}),	-- Bonechewer Ruins
					visit_exploration(3891,{coord={43.6,53.5,TEROKKAR_FOREST}}),	-- Carrion Hill
					exploration(3674),	-- Cenarion Thicket
					visit_exploration(3886,{coord={43.4,76.2,TEROKKAR_FOREST}}),	-- Derelict Caravan
					exploration(3681),	-- Firewing Point
					exploration(3682),	-- Grangol'var Village
					exploration(3691),	-- Lake Ere'Noru
					exploration(3692),	-- Lake Jorune
					-- #if AFTER CATA
					exploration(3978),	-- Lower Veil Shil'ak
					-- #endif
					visit_exploration(3885,{coord={51.7,81.7,TEROKKAR_FOREST}}),	-- Netherweb Ridge
					visit_exploration(3860,{coord={60.6,45.4,TEROKKAR_FOREST}}),	-- Raastok Glade
					visit_exploration(4078,{coord={51.9,11.8,TEROKKAR_FOREST}}),	-- Razorthorn Rise
					exploration(3858),	-- Razorthorn Shelf
					visit_exploration(3887,{coord={35.8,49.5,TEROKKAR_FOREST}}),	-- Refugee Caravan
					visit_exploration(3893,{coord={39.8,62.9,TEROKKAR_FOREST}}),	-- Ring of Observance
					visit_exploration(3791,{coord={43.4,65.6,TEROKKAR_FOREST}}),	-- Sethekk Halls
					visit_exploration(3958,{coord={30.6,75.4,TEROKKAR_FOREST}}),	-- Sha'tari Base Camp
					exploration(3957),	-- Sha'tari Outpost
					visit_exploration(3789,{coord={39.6,71.1,TEROKKAR_FOREST}}),	-- Shadow Labyrinth
					visit_exploration(3888,{coord={31.7,53.2,TEROKKAR_FOREST}}),	-- Shadow Tomb
					exploration(3703),	-- Shattrath City
					exploration(3859),	-- Silmyr Lake
					exploration(3693),	-- Skethyl Mountains
					exploration(3679),	-- Skettis
					visit_exploration(3961,{coord={46.7,89.2,TEROKKAR_FOREST}}),	-- Sorrow Wing Point
					exploration(3902),	-- Stonebreaker Camp
					exploration(3683),	-- Stonebreaker Hold
					visit_exploration(3975,{coord={66.1,76.4,TEROKKAR_FOREST}}),	-- Terokk's Rest
					exploration(3696),	-- The Barrier Hills
					exploration(3760),	-- The Barrier Hills (Nagrand)
					visit_exploration(3697,{coord={49.2,53.1,TEROKKAR_FOREST}}),	-- The Bone Wastes
					visit_exploration(3956,{coord={41.5,58.1,TEROKKAR_FOREST}}),	-- The Shadow Stair
					visit_exploration(3890,{coord={47.7,55.2,TEROKKAR_FOREST}}),	-- Tomb of Lights
					exploration(3675),	-- Tuurem
					visit_exploration(3977,{coord={75.1,82.5,TEROKKAR_FOREST}}),	-- Upper Veil Shil'ak
					visit_exploration(3976,{coord={69.9,74.2,TEROKKAR_FOREST}}),	-- Veil Ala'rak
					visit_exploration(3974,{coord={61.2,72.6,TEROKKAR_FOREST}}),	-- Veil Harr'ik
					exploration(3686),	-- Veil Lithic
					visit_exploration(3689,{coord={49.8,14.7,TEROKKAR_FOREST}}),	-- Veil Reskk
					visit_exploration(3889,{coord={27.4,57.7,TEROKKAR_FOREST}}),	-- Veil Rhaze
					visit_exploration(3678,{coord={56.5,72.3,TEROKKAR_FOREST}}),	-- Veil Shalas
					exploration(3676),	-- Veil Shienor
					exploration(3677),	-- Veil Skith
					visit_exploration(3892,{coord={50.8,68.2,TEROKKAR_FOREST}}),	-- Writhing Mound
				}),
				n(FACTIONS, {
					applyclassicphase(TBC_PHASE_TWO_SKYGUARD, faction(FACTION_SHATARI_SKYGUARD, {	-- Sha'tari Skyguard
						["icon"] = 132191,
						["OnTooltip"] = [[_.OnTooltipDB.ForSkyguard]],
					})),
				}),
				n(FLIGHT_PATHS, {
					fp(121, {	-- Allerian Stronghold, Terokkar Forest
						["cr"] = 18809,	-- Furnan Skysoar <Gryphon Master>
						["coord"] = { 59.4, 55.4, TEROKKAR_FOREST },
						["races"] = ALLIANCE_ONLY,
					}),
					fp(127, {	-- Stonebreaker Hold, Terokkar Forest
						["cr"] = 18807,	-- Kerna <Wind Rider Master>
						["coord"] = { 49.2, 43.4, TEROKKAR_FOREST },
						["races"] = HORDE_ONLY,
					}),
				}),
				n(QUESTS, {
					q(11666, {	-- Bait Bandits
						["qg"] = 25580,	-- Old Man Barlo
						["coord"] = { 38.6, 12.8, TEROKKAR_FOREST },
						["requireSkill"] = FISHING,
						["isDaily"] = true,
						["groups"] = {
							objective(1, {	-- 0/1 Blackfin Darter
								["provider"] = { "i", 34865 },	-- Blackfin Darter
							}),
							i(34863),	-- Bag of Fishing Treasures
						},
					}),
					q(11665, {  -- Crocolisks in the City
						["qg"] = 25580,	-- Old Man Barlo
						["coord"] = { 38.6, 12.8, TEROKKAR_FOREST },
						["maps"] = { IRONFORGE, ORGRIMMAR, STORMWIND_CITY },
						["requireSkill"] = FISHING,
						["isDaily"] = true,
						["groups"] = {
							objective(1, {	-- 0/1 Baby Crocolisk
								["provider"] = { "i", 34864 },	-- Baby Crocolisk
							}),
							i(35348),	-- Bag of Fishing Treasures
						},
					}),
					q(11669, {	-- Felblood Fillet
						["qg"] = 25580,	-- Old Man Barlo
						["coord"] = { 38.6, 12.8, TEROKKAR_FOREST },
						["maps"] = { HELLFIRE_PENINSULA, SHADOWMOON_VALLEY },
						["requireSkill"] = FISHING,
						["isDaily"] = true,
						["groups"] = {
							objective(1, {	-- 0/1 Monstrous Felblood Snapper
								["provider"] = { "i", 34867 },	-- Monstrous Felblood Snapper
							}),
							i(34863),	-- Bag of Fishing Treasures
						},
					}),
					q(11668, {	-- Shrimpin' Ain't Easy
						["qg"] = 25580,	-- Old Man Barlo
						["coord"] = { 38.6, 12.8, TEROKKAR_FOREST },
						["maps"] = { ZANGARMARSH },
						["requireSkill"] = FISHING,
						["isDaily"] = true,
						["groups"] = {
							objective(1, {	-- 0/10 Giant Freshwater Shrimp
								["provider"] = { "i", 34866 },	-- Giant Freshwater Shrimp
							}),
							i(34863),	-- Bag of Fishing Treasures
						},
					}),
					q(11667, {	-- The One That Got Away
						["qg"] = 25580,	-- Old Man Barlo
						["coord"] = { 38.6, 12.8, TEROKKAR_FOREST },
						["maps"] = { NAGRAND },
						["requireSkill"] = FISHING,
						["isDaily"] = true,
						["groups"] = {
							objective(1, {	-- 0/1 World's Largest Mudfish
								["provider"] = { "i", 34868 },	-- World's Largest Mudfish
							}),
							i(34863),	-- Bag of Fishing Treasures
						},
					}),
					applyclassicphase(TBC_PHASE_TWO_SKYGUARD, q(11885, {	-- Adversarial Blood
						["sourceQuest"] = 11029,	-- A Shabby Disguise
						["qg"] = 23306,	-- Hazzik
						["coord"] = { 64.2, 66.9, TEROKKAR_FOREST },
						["groups"] = {
							objective(1, {	-- 0/1 Darkscreecher Akkarai slain
								["provider"] = { "n", 23161 },	-- Darkscreecher Akkarai
							}),
							objective(2, {	-- 0/1 Karrog slain
								["provider"] = { "n", 23165 },	-- Karrog
							}),
							objective(3, {	-- 0/1 Gezzarak the Huntress slain
								["provider"] = { "n", 23163 },	-- Gezzarak the Huntress
							}),
							objective(4, {	-- 0/1 Vakkiz the Windrager slain
								["providers"] = {
									{ "n", 23162},	-- Vakkiz the Windrager
									{ "n", 23204},	-- Vakkiz the Windrager
								},
							}),
							i(32720),	-- Time-Lost Offering
						},
					})),
					applyclassicphase(TBC_PHASE_TWO_SKYGUARD, q(11029, {	-- A Shabby Disguise
						["sourceQuest"] = 11056,	-- Hazzik's Bargain
						["qg"] = 23306,	-- Hazzik
						["coord"] = { 64.2, 66.9, TEROKKAR_FOREST },
						["groups"] = {
							objective(1, {	-- 0/1 Adversarial Bloodlines
								["provider"] = { "i", 32742 },	-- Adversarial Bloodlines
								["coord"] = { 67.0, 79.6, TEROKKAR_FOREST },
								["cr"] = 23363,	-- Sahaak <Keeper of Scrolls>
								["cost"] = {
									{ "i", 32741, 1 },	-- Shabby Arakkoa Disguise
									{ "g", 30000 },	-- 3g
								},
							}),
						},
					})),
					applyclassicphase(TBC_PHASE_TWO_SKYGUARD, q(11024, {	-- An Ally in Lower City
						["sourceQuest"] = 11021,	-- Ishaal's Almanac
						["qg"] = 23038,	-- Sky Commander Adaris
						["coord"] = { 64.1, 66.9, TEROKKAR_FOREST },
						["maps"] = { SHATTRATH_CITY },
					})),
					applyclassicphase(TBC_PHASE_TWO_SKYGUARD, q(11028, {	-- Countdown to Doom
						["sourceQuest"] = 11024,	-- An Ally in Lower City
						["qg"] = 22292,	-- Rilak the Redeemed
						["coord"] = { 52.6, 21.0, SHATTRATH_CITY },
					})),
					applyclassicphase(TBC_PHASE_TWO_SKYGUARD, q(11085, {	-- Escape from Skettis
						["qg"] = 23383,	-- Skyguard Prisoner
						["coords"] = {
							{ 61.0, 75.6, TEROKKAR_FOREST },
							{ 68.4, 74.0, TEROKKAR_FOREST },
							{ 75.0, 86.2, TEROKKAR_FOREST },
						},
						["maxReputation"] = { FACTION_SHATARI_SKYGUARD, EXALTED },	-- Sha'tari Skyguard, Exalted
						["isDaily"] = true,
					})),
					applyclassicphase(TBC_PHASE_TWO_SKYGUARD, q(11008, {	-- Fires Over Skettis
						["sourceQuest"] = 11098,	-- To Skettis!
						["qg"] = 23048,	-- Sky Sergeant Doryn
						["coord"] = { 64.5, 66.7, TEROKKAR_FOREST },
						["maxReputation"] = { FACTION_SHATARI_SKYGUARD, EXALTED },	-- Sha'tari Skyguard, Exalted
						["isDaily"] = true,
						["groups"] = {
							objective(1, {	-- 0/20 Monstrous Kaliri Egg Destroyed
								["providers"] = {
									{ "i",  32406 },	-- Skyguard Blasting Charges
									{ "o", 185549 },	-- Monstrous Kaliri Egg
								},
							}),
							ach(1275, {	-- Bombs Away
								["timeline"] = { ADDED_3_0_2 },
							}),
						},
					})),
					applyclassicphase(TBC_PHASE_TWO_SKYGUARD, q(11056, {	-- Hazzik's Bargain
						["sourceQuest"] = 11028,	-- Countdown to Doom
						["qg"] = 23306,	-- Hazzik
						["coord"] = { 64.2, 66.9, TEROKKAR_FOREST },
						["groups"] = {
							objective(1, {	-- 0/1 Hazzik's Package
								["provider"] = { "i", 32687 },	-- Hazzik's Package
								["coord"] = { 74.8, 80.1, TEROKKAR_FOREST },
							}),
						},
					})),
					applyclassicphase(TBC_PHASE_TWO_SKYGUARD, q(11093, {	-- Hungry Nether Rays
						["qg"] = 23415,	-- Skyguard Handler Deesak
						["coord"] = { 63.6, 65.8, TEROKKAR_FOREST },
						["groups"] = HUNGRY_NETHER_RAYS_GROUPS,
					})),
					applyclassicphase(TBC_PHASE_TWO_SKYGUARD, q(11021, {	-- Ishaal's Almanac
						["provider"] = { "i", 32523 },	-- Ishaal's Almanac
						["coord"] = { 69.2, 78.2, TEROKKAR_FOREST },
						["cr"] = 23066,	-- Talonpriest Ishaal
					})),
					applyclassicphase(TBC_PHASE_TWO_SKYGUARD, q(11006, {	-- More Shadow Dust
						["sourceQuest"] = 11004,	-- World of Shadows
						["qg"] = 23042,	-- Severin <Skyguard Medic>
						["coord"] = { 64.1, 66.9, TEROKKAR_FOREST },
						["maxReputation"] = { FACTION_SHATARI_SKYGUARD, EXALTED },	-- Sha'tari Skyguard, Exalted
						["cost"] = {{ "i", 32388, 6 }},	-- Shadow Dust
						["repeatable"] = true,
						["groups"] = {
							i(32446),	-- Elixir of Shadows
						},
					})),
					applyclassicphase(TBC_PHASE_TWO_SKYGUARD, q(11005, {	-- Secrets of the Talonpriests
						["sourceQuest"] = 11004,	-- World of Shadows
						["qg"] = 23038,	-- Sky Commander Adaris
						["coord"] = { 64.1, 66.9, TEROKKAR_FOREST },
						["groups"] = {
							objective(1, {	-- 0/1 Talonpriest Ishaal slain
								["provider"] = { "n", 23066 },	-- Talonpriest Ishaal
							}),
							objective(2, {	-- 0/1 Talonpriest Skizzik slain
								["provider"] = { "n", 23067 },	-- Talonpriest Skizzik
							}),
							objective(3, {	-- 0/1 Talonpriest Zellek slain
								["provider"] = { "n", 23068 },	-- Talonpriest Zellek
							}),
						},
					})),
					applyclassicphase(TBC_PHASE_TWO_SKYGUARD, q(11074, {	-- Tokens of the Descendants
						["sourceQuest"] = 11885,	-- Adversarial Blood
						["qg"] = 23306,	-- Hazzik
						["coord"] = { 64.2, 66.9, TEROKKAR_FOREST },
						["maxReputation"] = { FACTION_SHATARI_SKYGUARD, EXALTED },	-- Sha'tari Skyguard, Exalted
						["cost"] = {
							{ "i", 32715, 1 },	-- Akkarai's Talons
							{ "i", 32716, 1 },	-- Gezzarak's Claws
							{ "i", 32717, 1 },	-- Karrog's Spine
							{ "i", 32718, 1 },	-- Vakkiz's Scale
						},
						["repeatable"] = true,
						["groups"] = {
							i(32720),	-- Time-Lost Offering
						},
					})),
					applyclassicphase(TBC_PHASE_TWO_SKYGUARD, q(11073, {	-- Terokk's Downfall
						["sourceQuest"] = 11885,	-- Adversarial Blood
						["qg"] = 23038,	-- Sky Commander Adaris
						["coord"] = { 64.1, 66.9, TEROKKAR_FOREST },
						["cr"] = 21838,	-- Terokk
						["groups"] = {
							objective(1, {	-- 0/1 Terokk slain
								["provider"] = { "n", 21838 },	-- Terokk
							}),
							i(32831),	-- Jeweled Rod
							-- #if BEFORE MOP
							i(32832, {	-- Scout's Throwing Knives
								["timeline"] = { REMOVED_5_0_4 },
							}),
							-- #endif
							i(32830),	-- Severin's Cane
							i(32829),	-- Windcharger's Lance
						},
					})),
					applyclassicphase(TBC_PHASE_TWO_SKYGUARD, q(11004, {	-- World of Shadows
						["qg"] = 23042,	-- Severin <Skyguard Medic>
						["coord"] = { 64.1, 66.9, TEROKKAR_FOREST },
						["cost"] = {{ "i", 32388, 6 }},	-- Shadow Dust
						["groups"] = {
							i(32446),	-- Elixir of Shadows
						},
					})),
					q(10914, {	-- A Hero Is Needed
						["sourceQuest"] = 10913,	-- An Improper Burial
						["qg"] = 22446,	-- Commander Ra'vaj
						["coord"] = { 31.0, 76.1, TEROKKAR_FOREST },
						["groups"] = {
							objective(1, {	-- 0/12 Auchenai Initiate slain
								["provider"] = { "n", 21284 },	-- Auchenai Initiate
							}),
							objective(2, {	-- 0/5 Auchenai Doomsayer slain
								["provider"] = { "n", 21285 },	-- Auchenai Doomsayer
							}),
						},
					}),
					q(10112, {	-- A Personal Favor
						["sourceQuest"] = 9979,	-- Wind Trader Lathrai
						["qg"] = 18484,	-- Wind Trader Lathrai
						["coord"] = { 72.2, 30.7, SHATTRATH_CITY },
						["groups"] = {
							objective(1, {	-- 0/5 Lathrai's Stolen Goods
								["provider"] = { "i", 27861 },	-- Lathrai's Stolen Goods
								["crs"] = {
									18452,	-- Skithian Dreadhawk
									18453,	-- Skithian Windripper
								},
							}),
							i(31724),	-- Arakkoa Divining Rod
							i(25927),	-- Consortium Cloak of the Quick
							i(25928),	-- Ethereal Healing Pendant
							i(25926),	-- Nexus-Stalker's Band
						},
					}),
					q(10913, {	-- An Improper Burial -- aa
						["qg"] = 22446,	-- Commander Ra'vaj
						["coord"] = { 31.0, 76.1, TEROKKAR_FOREST },
					}),
					q(10013, {	-- An Unseen Hand
						["sourceQuest"] = 10000,	-- An Unwelcome Presence
						["provider"] = { "o", 182549 },	-- Fel Orc Plans
						["coord"] = { 67.9, 53.5, TEROKKAR_FOREST },
						["races"] = HORDE_ONLY,
					}),
					q(10000, {	-- An Unwelcome Presence
						["qg"] = 18383,	-- Kurgatok
						["coord"] = { 48.8, 45.7, TEROKKAR_FOREST },
						["races"] = HORDE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/12 Warped Peon slain
								["provider"] = { "n", 18595 },	-- Warped Peon
							}),
						},
					}),
					q(10201, {	-- And Now, the Moment of Truth
						["sourceQuest"] = 9993,	-- Olemba Seed Oil
						["qg"] = 18385,	-- Rakoria
						["coord"] = { 50.1, 44.9, TEROKKAR_FOREST },
						["races"] = HORDE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/1 Have Grek Test Olemba Oil
								["provider"] = { "n", 19606 },	-- Grek
							}),
						},
					}),
					q(10868, {	-- Arakkoa War Path
						["qg"] = 18712,	-- Advisor Faila
						["coord"] = { 48.9, 44.6, TEROKKAR_FOREST },
						["races"] = HORDE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/14 Shienor Talonite slain
								["provider"] = { "n", 18449 },	-- Shienor Talonite
							}),
							objective(2, {	-- 0/6 Shienor Sorcerer slain
								["provider"] = { "n", 18450 },	-- Shienor Sorcerer
							}),
						},
					}),
					q(9996, {	-- Attack on Firewing Point (A)
						["sourceQuest"] = 10444,	-- Report to the Allerian Post
						["qg"] = 21006,	-- Lieutenant Meridian
						["coord"] = { 69.6, 44.6, TEROKKAR_FOREST },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/10 Firewing Defender slain
								["provider"] = { "n", 5355 },	-- Firewing Defender
							}),
							objective(2, {	-- 0/10 Firewing Bloodwarder slain
								["provider"] = { "n", 1410 },	-- Firewing Bloodwarder
							}),
							objective(3, {	-- 0/10 Firewing Warlock slain
								["provider"] = { "n", 16769 },	-- Firewing Warlock
							}),
						},
					}),
					q(9997, {	-- Attack on Firewing Point (H)
						["sourceQuest"] = 10448,	-- Report to Stonebreaker Camp
						["qg"] = 21007,	-- Sergeant Chawni
						["coord"] = { 63.2, 42.3, TEROKKAR_FOREST },
						["races"] = HORDE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/10 Firewing Defender slain
								["provider"] = { "n", 5355 },	-- Firewing Defender
							}),
							objective(2, {	-- 0/10 Firewing Bloodwarder slain
								["provider"] = { "n", 1410 },	-- Firewing Bloodwarder
							}),
							objective(3, {	-- 0/10 Firewing Warlock slain
								["provider"] = { "n", 16769 },	-- Firewing Warlock
							}),
						},
					}),
					q(10878, {	-- Before Darkness Falls -- aa
						["qg"] = 22370,	-- Mekeda
						["coord"] = { 37.6, 50.8, TEROKKAR_FOREST },
						["groups"] = {
							objective(1, {	-- 0/8 Cabal Skirmisher slain
								["provider"] = { "n", 21661 },	-- Cabal Skirmisher
							}),
							objective(2, {	-- 0/4 Cabal Spell-weaver slain
								["provider"] = { "n", 21902 },	-- Cabal Spell-weaver
							}),
							objective(3, {	-- 0/2 Cabal Initiate slain
								["provider"] = { "n", 21907 },	-- Cabal Initiate
							}),
						},
					}),
					q(9978, {	-- By Any Means Necessary
						["sourceQuests"] = {
							9971,	-- Clues in the Thicket
							9968,	-- Strange Energy
						},
						["qg"] = 18446,	-- Earthbinder Tavgren
						["coord"] = { 44.3, 26.3, TEROKKAR_FOREST },
					}),
					q(10880, {	-- Cabal Orders -- aa
						["provider"] = { "i", 31707 },	-- Cabal Orders
						["crs"] = {
							21661,	-- Cabal Skirmisher
							21902,	-- Cabal Spell-weaver
							21907,	-- Cabal Initiate
						},
					}),
					q(9971, {	-- Clues in the Thicket
						["qg"] = 18446,	-- Earthbinder Tavgren
						["coord"] = { 44.3, 26.3, TEROKKAR_FOREST },
						["groups"] = {
							objective(1, {	-- 0/1 Strange Object examined
								["provider"] = { "o", 183789 },	-- Strange Object
							}),
						},
					}),
					q(10104, {	-- Concerns About Tuurem
						["altQuests"] = { 9793 },	-- The Fate of Tuurem
						["qg"] = 18008,	-- Ikuti
						["coord"] = { 41.8, 27.2, ZANGARMARSH },
						["races"] = ALLIANCE_ONLY,
						["isBreadcrumb"] = true,
						["lvl"] = lvlsquish(62, 62, 10),
					}),
					q(10922, {	-- Digging Through Bones -- aa
						["qg"] = 22458,	-- Chief Archaeologist Letoll
						["coord"] = { 31.0, 76.1, TEROKKAR_FOREST },
					}),
					q(10051, {	-- Escape from Firewing Point! (A)
						["qg"] = 18760,	-- Isla Starmane
						["coord"] = { 73.9, 35.2, TEROKKAR_FOREST },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							i(25918),	-- Blood-Guided Knife
							i(25917),	-- Healer's Staff of the Forest
							i(25916),	-- Terokkar Axe
						},
					}),
					q(10052, {	-- Escape from Firewing Point! (H)
						["qg"] = 18760,	-- Isla Starmane
						["coord"] = { 73.9, 35.1, TEROKKAR_FOREST },
						["races"] = HORDE_ONLY,
						["groups"] = {
							i(25918),	-- Blood-Guided Knife
							i(25917),	-- Healer's Staff of the Forest
							i(25916),	-- Terokkar Axe
						},
					}),
					q(10887, {	-- Escaping the Tomb -- aa
						["qg"] = 22377,	-- Akuno
						["coord"] = { 30.6, 49.1, TEROKKAR_FOREST },
						["groups"] = {
							i(31733),	-- Akuno's Blade
							i(31734),	-- Ancient Draenei Crest
							i(31731),	-- Mekeda's Gift
							i(31732),	-- Unearthed Orb
						},
					}),
					q(10923, {	-- Evil Draws Near
						["sourceQuest"] = 10877,	-- The Dread Relic
						["qg"] = 22456,	-- Oakun
						["coord"] = { 31.0, 76.5, TEROKKAR_FOREST },
						["groups"] = {
							objective(1, {	-- 0/1 Teribus the Cursed slain
								["provider"] = { "n", 22441 },	-- Teribus the Cursed
							}),
							i(31816),	-- Dragonbone Greatsword
							i(31817),	-- Dragonbone Shoulders
							i(31818),	-- Dragonbone Talisman
						},
					}),
					q(10228, {	-- Ezekiel
						["sourceQuest"] = 10227,	-- I See Dead Draenei
						["qg"] = 19417,	-- Ramdor the Mad
						["coord"] = { 35.2, 66.2, TEROKKAR_FOREST },
					}),
					q(10012, {	-- Fel Orc Plans
						["sourceQuest"] = 9998,	-- Unruly Neighbors
						["provider"] = { "o", 182549 },	-- Fel Orc Plans
						["coord"] = { 67.9, 53.5, TEROKKAR_FOREST },
						["races"] = ALLIANCE_ONLY,
					}),
					q(10920, {	-- For the Fallen
						["qg"] = 22462,	-- Vindicator Haylen
						["coord"] = { 49.7, 76.1, TEROKKAR_FOREST },
						["groups"] = {
							objective(1, {	-- 0/20 Dreadfang Widow slain
								["provider"] = { "n", 18467 },	-- Dreadfang Widow
							}),
						},
					}),
					q(10929, {	-- Fumping
						["sourceQuest"] = 10922,	-- Digging Through Bones
						["qg"] = 22481,	-- Dwarfowitz
						["coord"] = { 30.9, 76.1, TEROKKAR_FOREST },
						["groups"] = {
							objective(1, {	-- 0/8 Mature Bone Sifter Carcass
								["provider"] = { "i", 31814 },	-- Mature Bone Sifter Carcass
								["cr"] = 22482,	-- Mature Bone Sifter
							}),
						},
					}),
					q(10031, {	-- Helping the Lost Find Their Way
						["sourceQuest"] = 10030,	-- Recover the Bones
						["qg"] = 19417,	-- Ramdor the Mad
						["coord"] = { 35.1, 66.2, TEROKKAR_FOREST },
						["groups"] = {
							objective(1, {	-- 0/10 Lost Spirit slain
								["provider"] = { "n", 18460 },	-- Lost Spirit
							}),
							objective(2, {	-- 0/10 Broken Skeleton slain
								["provider"] = { "n", 16805 },	-- Broken Skeleton
							}),
							i(31725),	-- Cilice of Suffering
							i(25951),	-- Fleet Refugee's Boots
							i(25948),	-- Girdle of the Penitent
							i(25949),	-- Gloves of the Afterlife
						},
					}),
					heroscall(q(39188, {	-- Hero's Call: Terokkar Forest!
						["timeline"] = { ADDED_6_2_0 },
						["isBreadcrumb"] = true,
						["lvl"] = 62,
					})),
					q(10227, {	-- I See Dead Draenei -- aa
						["qg"] = 19697,	-- Ha'lei
						["coord"] = { 35.0, 65.0, TEROKKAR_FOREST },
					}),
					q(9990, {	-- Investigate Tuurem
						["sourceQuest"] = 10112,	-- A Personal Favor
						["qg"] = 18484,	-- Wind Trader Lathrai
						["coord"] = { 72.2, 30.7, SHATTRATH_CITY },
						["groups"] = {
							objective(1, {	-- 0/1 Sealed Box
								["providers"] = {
									{ "i", 25727 },	-- Sealed Box
									{ "o", 182542 },	-- Sealed Box
								},
							}),
						},
					}),
					q(9951, {	-- It's Watching You! -- aa
						["qg"] = 18424,	-- Warden Treelos
						["coords"] = {
							{ 43.4, 22.4, TEROKKAR_FOREST },
							{ 44.3, 24.2, TEROKKAR_FOREST },
							{ 44.5, 25.7, TEROKKAR_FOREST },
							{ 44.2, 22.4, TEROKKAR_FOREST },
							{ 45.0, 22.8, TEROKKAR_FOREST },
							{ 45.3, 21.8, TEROKKAR_FOREST },
							{ 45.1, 20.8, TEROKKAR_FOREST },
						},
						["groups"] = {
							objective(1, {	-- 0/1 Naphthal'ar slain
								["provider"] = { "n", 18438 },	-- Naphthal'ar
							}),
							i(28026),	-- Crazy Cenarion Cloak
							i(25542),	-- Lucky Circle of the Fool
							i(28027),	-- Lunatic's Choker
							i(31723),	-- Madman's Blade
							i(28028),	-- Moonstruck Bands
						},
					}),
					q(10042, {	-- Kill the Shadow Council! (A)
						["sourceQuest"] = 10040,	-- Who Are They? (A)
						["qg"] = 18715,	-- Private Weeks
						["coord"] = { 40.4, 36.0, TEROKKAR_FOREST },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/10 Shadowy Executioner slain
								["provider"] = { "n", 16519 },	-- Shadowy Executioner
							}),
							objective(2, {	-- 0/10 Shadowy Summoner slain
								["provider"] = { "n", 17088 },	-- Shadowy Summoner
							}),
							objective(3, {	-- 0/1 Shadowmaster Grieve slain
								["provider"] = { "n", 18720 },	-- Shadowmaster Grieve
							}),
							i(25933),	-- Extra Sharp Blade
							i(25935),	-- Invincible Stave
							i(25934),	-- Spiked Destroyer
						},
					}),
					q(10043, {	-- Kill the Shadow Council (H)
						["sourceQuest"] = 10041,	-- Who Are They?
						["qg"] = 18714,	-- Scout Neftis
						["coord"] = { 39.0, 43.7, TEROKKAR_FOREST },
						["races"] = HORDE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/10 Shadowy Executioner slain
								["provider"] = { "n", 16519 },	-- Shadowy Executioner
							}),
							objective(2, {	-- 0/10 Shadowy Summoner slain
								["provider"] = { "n", 17088 },	-- Shadowy Summoner
							}),
							objective(3, {	-- 0/1 Shadowmaster Grieve slain
								["provider"] = { "n", 18720 },	-- Shadowmaster Grieve
							}),
							i(25933),	-- Extra Sharp Blade
							i(25935),	-- Invincible Stave
							i(25934),	-- Spiked Destroyer
						},
					}),
					q(10005, {	-- Letting Earthbinder Tavgren Know (A)
						["sourceQuest"] = 10446,	-- The Final Code
						["qg"] = 18459,	-- Jenai Starwhisper
						["coord"] = { 57.0, 53.6, TEROKKAR_FOREST },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							i(25931),	-- Cenarion Thicket Circlet
							i(25930),	-- Cenarion Thicket Helm
							i(25932),	-- Cenarion Thicket Jerkin
							i(25929),	-- Cenarion Thicket Legplates
						},
					}),
					q(10006, {	-- Letting Earthbinder Tavgren Know (H)
						["sourceQuest"] = 10447,	-- The Final Code
						["qg"] = 18447,	-- Tooki
						["coord"] = { 50.0, 45.9, TEROKKAR_FOREST },
						["races"] = HORDE_ONLY,
						["groups"] = {
							i(25931),	-- Cenarion Thicket Circlet
							i(25930),	-- Cenarion Thicket Helm
							i(25932),	-- Cenarion Thicket Jerkin
							i(25929),	-- Cenarion Thicket Legplates
						},
					}),
					q(10026, {	-- Magical Disturbances
						["sourceQuests"] = {
							9793,	-- The Fate of Tuurem
							10104,	-- Concerns About Tuurem
						},
						["qg"] = 18252,	-- Andarl
						["coord"] = { 58.4, 53.6, TEROKKAR_FOREST },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/10 Warp Stalker slain
								["provider"] = { "n", 18464 },	-- Warp Stalker
							}),
						},
					}),
					q(10027, {	-- Magical Disturbances
						["qg"] = 18383,	-- Kurgatok
						["coord"] = { 48.8, 45.7, TEROKKAR_FOREST },
						["races"] = HORDE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/10 Warp Stalker slain
								["provider"] = { "n", 18464 },	-- Warp Stalker
							}),
						},
					}),
					q(10852, {	-- Missing Friends
						["sourceQuest"] = 10849,	-- Seek Out Kirrik
						["qg"] = 22365,	-- Ethan
						["coord"] = { 37.7, 51.3, TEROKKAR_FOREST },
					}),
					q(9993, {	-- Olemba Seed Oil
						["sourceQuests"] = {
							10105,	-- News for Rakoria
							9796,	-- News from Zangarmarsh
						},
						["qg"] = 18385,	-- Rakoria
						["coord"] = { 50.1, 44.9, TEROKKAR_FOREST },
						["races"] = HORDE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/30 Olemba Seed
								["providers"] = {
									{ "i", 25745 },	-- Olemba Seed
									{ "o", 182541 },	-- Olemba Cone
								},
							}),
						},
					}),
					q(9992, {	-- Olemba Seeds
						["qg"] = 18390,	-- Ros'eleth
						["coord"] = { 57.4, 55.4, TEROKKAR_FOREST },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/30 Olemba Seed
								["providers"] = {
									{ "i", 25745 },	-- Olemba Seed
									{ "o", 182541 },	-- Olemba Cone
								},
							}),
						},
					}),
					q(10023, {	-- Patriarch Ironjaw
						["sourceQuest"] = 10018,	-- Vestments of the Wolf Spirit
						["qg"] = 18384,	-- Malukaz
						["coord"] = { 50.2, 46.4, TEROKKAR_FOREST },
						["races"] = HORDE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/1 Ironjaw's Pelt
								["provider"] = { "i", 25837 },	-- Ironjaw's Pelt
								["cr"] = 18670,	-- Ironjaw
							}),
						},
					}),
					q(10030, {	-- Recover the Bones
						["sourceQuest"] = 10840,	-- The Tomb of Lights
						["qg"] = 18675,	-- Soolaveen
						["coord"] = { 37.1, 49.5, TEROKKAR_FOREST },
						["groups"] = {
							objective(1, {	-- 0/10 Restless Bones
								["providers"] = {
									{ "i", 25842 },	-- Restless Bones
									{ "o", 182584 },	-- Restless Bones
								},
							}),
						},
					}),
					q(10448, {	-- Report to Stonebreaker Camp
						["sourceQuest"] = 9995,	-- What Are These Things?
						["qg"] = 18447,	-- Tooki
						["coord"] = { 50.0, 45.9, TEROKKAR_FOREST },
						["races"] = HORDE_ONLY,
					}),
					q(10444, {	-- Report to the Allerian Post
						["sourceQuest"] = 9994,	-- What Are These Things?
						["qg"] = 18459,	-- Jenai Starwhisper
						["coord"] = { 57.0, 53.6, TEROKKAR_FOREST },
						["races"] = ALLIANCE_ONLY,
					}),
					q(10926, {	-- Return to Sha'tari Base Camp
						["sourceQuest"] = 10921,	-- Terokkarantula
						["qg"] = 22462,	-- Vindicator Haylen
						["coord"] = { 49.7, 76.2, TEROKKAR_FOREST },
					}),
					q(10889, {	-- Return to Shattrath
						["sourceQuest"] = 10874,	-- Veil Shalas: Signal Fires
						["qg"] = 22272,	-- Kirrik the Awakened
						["coord"] = { 37.6, 51.6, TEROKKAR_FOREST },
					}),
					q(10863, {	-- Secrets of the Arakkoa
						["qg"] = 15991,	-- Lady Dena Kennedy
						["coord"] = { 57.6, 56.0, TEROKKAR_FOREST },
						["races"] = ALLIANCE_ONLY,
						["isBreadcrumb"] = true,
					}),
					q(10849, {	-- Seek Out Kirrik
						["sourceQuest"] = 10847,	-- The Eyes of Skettis
						["qg"] = 22292,	-- Rilak the Redeemed
						["coord"] = { 52.5, 21.0, SHATTRATH_CITY },
					}),
					q(10898, {	-- Skywing -- aa
						["qg"] = 22424,	-- Skywing
						["coord"] = { 53.7, 72.3, TEROKKAR_FOREST },
						["groups"] = {
							i(31766),	-- Skywitch Hat
							i(31765),	-- Redeemer's Plate
							i(31764),	-- Stillfire Leggings
							i(31760),	-- Miniwing (PET!)
						},
					}),
					q(10038, {	-- Speak with Private Weeks
						["qg"] = 18713,	-- Lieutenant Gravelhammer
						["coord"] = { 57.6, 55.6, TEROKKAR_FOREST },
						["races"] = ALLIANCE_ONLY,
					}),
					q(10908, {	-- Speak with Rilak the Redeemed
						["qg"] = 22272,	-- Kirrik the Awakened
						["coord"] = { 37.6, 51.6, TEROKKAR_FOREST },
						["isBreadcrumb"] = true,
					}),
					q(10039, {	-- Speak with Scout Neftis
						["qg"] = 18712,	-- Advisor Faila
						["coord"] = { 48.9, 44.6, TEROKKAR_FOREST },
						["races"] = HORDE_ONLY,
					}),
					q(11505, {	-- Spirits of Auchindoun (A)
						["qg"] = 24885,	-- Exorcist Sullivan
						["coord"] = { 55.8, 53.8, TEROKKAR_FOREST },
						["races"] = ALLIANCE_ONLY,
						["isDaily"] = true,
					}),
					q(11506, {	-- Spirits of Auchindoun (H)
						["qg"] = 24886,	-- Exorcist Vaisha
						["coord"] = { 49.8, 46.6, TEROKKAR_FOREST },
						["races"] = HORDE_ONLY,
						["isDaily"] = true,
					}),
					q(9968, {	-- Strange Energy
						["sourceQuests"] = {
							9957,	-- What's Wrong at Cenarion Thicket?
							9961,	-- What's Wrong at Cenarion Thicket?
							9960,	-- What's Wrong at Cenarion Thicket?
							-- #if AFTER 6.2.0.19953
							39182,	-- Warchief's Command: Terokkar Forest!
							39188,	-- Hero's Call: Terokkar Forest!
							-- #endif
						},
						["qg"] = 18446,	-- Earthbinder Tavgren
						["coord"] = { 44.3, 26.3, TEROKKAR_FOREST },
						["groups"] = {
							objective(1, {	-- 0/4 Teromoth Sample
								["provider"] = { "i", 25672 },	-- Teromoth Sample
								["cr"] = 18468,	-- Teromoth
							}),
							objective(2, {	-- 0/4 Vicious Teromoth Sample
								["provider"] = { "i", 24279 },	-- Vicious Teromoth Sample
								["cr"] = 18437,	-- Vicious Teromoth
							}),
						},
					}),
					q(9986, {	-- Stymying the Arakkoa (A)
						["qg"] = 18389,	-- Thander
						["coord"] = { 57.8, 54.2, TEROKKAR_FOREST },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/1 Ashkaz slain
								["provider"] = { "n", 18539 },	-- Ashkaz
							}),
							objective(2, {	-- 0/1 Ayit slain
								["provider"] = { "n", 18540 },	-- Ayit
							}),
							objective(3, {	-- 0/1 Urdak slain
								["provider"] = { "n", 18541 },	-- Urdak
							}),
						},
					}),
					q(9987, {	-- Stymying the Arakkoa (H)
						["qg"] = 18386,	-- Rokag
						["coord"] = { 49.0, 44.6, TEROKKAR_FOREST },
						["races"] = HORDE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/1 Ashkaz slain
								["provider"] = { "n", 18539 },	-- Ashkaz
							}),
							objective(2, {	-- 0/1 Ayit slain
								["provider"] = { "n", 18540 },	-- Ayit
							}),
							objective(3, {	-- 0/1 Urdak slain
								["provider"] = { "n", 18541 },	-- Urdak
							}),
						},
					}),
					q(10862, {	-- Surrender to the Horde
						["qg"] = 18386,	-- Rokag
						["coord"] = { 49.0, 44.6, TEROKKAR_FOREST },
						["races"] = HORDE_ONLY,
						["isBreadcrumb"] = true,
					}),
					q(10873, {	-- Taken in the Night -- aa
						["qg"] = 22364,	-- Scout Navrin
						["coord"] = { 31.4, 75.6, TEROKKAR_FOREST },
					}),
					q(10921, {	-- Terokkarantula
						["sourceQuest"] = 10920,	-- For the Fallen
						["qg"] = 22462,	-- Vindicator Haylen
						["coord"] = { 49.7, 76.2, TEROKKAR_FOREST },
						["groups"] = {
							objective(1, {	-- 0/1 Terokkarantula slain
								["provider"] = { "n", 20682 },	-- Terokkarantula
							}),
							i(31821),	-- Blade of Retribution
							i(31820),	-- Blessed Signet Ring
							i(31819),	-- Noble Plate Pauldrons
							i(31823),	-- Book of Many Blessings
						},
					}),
					q(10930, {	-- The Big Bone Worm
						["sourceQuest"] = 10929,	-- Fumping
						["qg"] = 22481,	-- Dwarfowitz
						["coord"] = { 30.9, 76.1, TEROKKAR_FOREST },
						["groups"] = {
							objective(1, {	-- 0/1 Enormous Bone Worm Organs
								["provider"] = { "i", 31826 },	-- Enormous Bone Worm Organs
								["cr"] = 22038,	-- Hai'shulud
							}),
							i(31756),	-- Dib'Muad's Crysknife
							i(31758),	-- Revered Mother's Crysknife
							i(31759),	-- Shani's Crysknife
						},
					}),
					q(10877, {	-- The Dread Relic -- aa
						["qg"] = 22456,	-- Oakun
						["coord"] = { 31.0, 76.5, TEROKKAR_FOREST },
						["groups"] = {
							objective(1, {	-- 0/1 Dread Relic
								["providers"] = {
									{ "i", 31697 },	-- Dread Relic
									{ "o", 185220 },	-- Massive Treasure Chest
								},
							}),
						},
					}),
					q(10022, {	-- The Elusive Ironjaw
						["sourceQuest"] = 10016,	-- Timber Worg Tails
						["qg"] = 18387,	-- Bertelm
						["coord"] = { 58.2, 54.8, TEROKKAR_FOREST },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/1 Ironjaw's Pelt
								["provider"] = { "i", 25837 },	-- Ironjaw's Pelt
								["cr"] = 18670,	-- Ironjaw
							}),
							i(25974),	-- Helm of Lupine Cunning
							i(25976),	-- Helm of Lupine Grace
							i(25977),	-- Helm of Lupine Ferocity
							i(25975),	-- Wolf Hunter's Guise
						},
					}),
					q(10847, {	-- The Eyes of Skettis
						["sourceQuests"] = {
							10863,	-- Secrets of the Arakkoa
							10908,	-- Speak with Rilak the Redeemed
							10862,	-- Surrender to the Horde
						},
						["qg"] = 22292,	-- Rilak the Redeemed
						["coord"] = { 52.6, 21.0, SHATTRATH_CITY },
						["groups"] = {
							objective(1, {	-- 0/1 Eye of Veil Reskk
								["providers"] = {
									{ "i", 25638 },	-- Eye of Veil Reskk
									{ "o", 185200 },	-- Eye of Veil Reskk
								},
							}),
							objective(2, {	-- 0/1 Eye of Veil Shienor
								["providers"] = {
									{ "i", 25642 },	-- Eye of Veil Shienor
									{ "o", 185201 },	-- Eye of Veil Shienor
								},
							}),
						},
					}),
					q(10915, {	-- The Fallen Exarch
						["sourceQuest"] = 10914,	-- A Hero Is Needed
						["qg"] = 22446,	-- Commander Ra'vaj
						["coord"] = { 31.0, 76.1, TEROKKAR_FOREST },
						["groups"] = {
							i(31798),	-- Death-Speaker's Tunic
							i(31797),	-- Elekk Hide Spaulders
							i(31796),	-- Sha'tari Marksman's Gloves
							i(31794),	-- Sha'tari Vindicator's Legplates
						},
					}),
					q(9793, {	-- The Fate of Tuurem
						["altQuests"] = { 10104 },	-- Concerns About Tuurem
						["providers"] = {
							{ "n", 18004 },	-- Vindicator Idaar
							{ "i", 24415 },	-- Vindicator Idaar's Letter
						},
						["coord"] = { 68.2, 50.0, ZANGARMARSH },
						["races"] = ALLIANCE_ONLY,
						["isBreadcrumb"] = true,
						["lvl"] = lvlsquish(62, 62, 10),
					}),
					q(10446, {	-- The Final Code (A)
						["sourceQuest"] = 9996,	-- Attack on Firewing Point
						["qg"] = 21006,	-- Lieutenant Meridian
						["coord"] = { 69.6, 44.6, TEROKKAR_FOREST },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							i(31784),	-- Ancient Terokkar Hood
							i(31783),	-- Bloodfire Leggings
							i(31785),	-- Edge of Inevitability
							i(31782),	-- Warpstalker Breastplate
						},
					}),
					q(10447, {	-- The Final Code (H)
						["sourceQuest"] = 9997,	-- Attack on Firewing Point
						["qg"] = 21007,	-- Sergeant Chawni
						["coord"] = { 63.2, 42.3, TEROKKAR_FOREST },
						["races"] = HORDE_ONLY,
						["groups"] = {
							i(31784),	-- Ancient Terokkar Hood
							i(31783),	-- Bloodfire Leggings
							i(31785),	-- Edge of Inevitability
							i(31782),	-- Warpstalker Breastplate
						},
					}),
					q(10002, {	-- The Firewing Liaison (A)
						["sourceQuest"] = 9998,	-- Unruly Neighbors
						["qg"] = 18565,	-- Theloria Shadecloak
						["coord"] = { 69.6, 44.2, TEROKKAR_FOREST },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/1 Lisaile Fireweaver slain
								["provider"] = { "n", 18583 },	-- Lisaile Fireweaver
							}),
						},
					}),
					q(10003, {	-- The Firewing Liaison (H)
						["sourceQuest"] = 10000,	-- An Unwelcome Presence
						["qg"] = 18566,	-- Shadowstalker Kaide
						["coord"] = { 63.4, 42.7, TEROKKAR_FOREST },
						["races"] = HORDE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/1 Lisaile Fireweaver slain
								["provider"] = { "n", 18583 },	-- Lisaile Fireweaver
							}),
						},
					}),
					q(10896, {	-- The Infested Protectors -- aa
						["qg"] = 22420,	-- Lakotae
						["coord"] = { 37.9, 51.7, TEROKKAR_FOREST },
						["groups"] = {
							objective(1, {	-- 0/25 Wood Mite slain
								["provider"] = { "n", 22419 },	-- Wood Mite
							}),
						},
					}),
					q(10881, {	-- The Shadow Tomb
						["sourceQuest"] = 10880,	-- Cabal Orders
						["qg"] = 22370,	-- Mekeda
						["coord"] = { 37.6, 50.8, TEROKKAR_FOREST },
						["groups"] = {
							objective(1, {	-- 0/1 Drape of Arunen
								["providers"] = {
									{ "i", 31709 },	-- Drape of Arunen
									{ "o", 185224 },	-- Cabal Chest
								},
							}),
							objective(2, {	-- 0/1 Gavel of K'alen
								["providers"] = {
									{ "i", 31710 },	-- Gavel of K'alen
									{ "o", 185225 },	-- Cabal Chest
								},
							}),
							objective(3, {	-- 0/1 Scroll of Atalor
								["providers"] = {
									{ "i", 31708 },	-- Scroll of Atalor
									{ "o", 185226 },	-- Cabal Chest
								},
							}),
							i(31730, {	-- Heirloom Signet of Convalescence
								["timeline"] = { REMOVED_3_2_0 },
							}),
							i(31729),	-- Heirloom Signet of Valor
							i(31728),	-- Heirloom Signet of Willpower
						},
					}),
					q(10879, {	-- The Skettis Offensive
						["sourceQuest"] = 10889,	-- Return to Shattrath
						["qg"] = 22373,	-- Defender Grashna
						["coord"] = { 51.8, 20.8, SHATTRATH_CITY },
						["groups"] = {
							i(31727),	-- Choker of Bloodied Feathers
							i(31726),	-- Necklace of Bloodied Feathers
						},
					}),
					q(10840, {	-- The Tomb of Lights
						["sourceQuest"] = 10852,	-- Missing Friends
						["qg"] = 22278,	-- High Priest Orglum
						["coord"] = { 37.5, 50.8, TEROKKAR_FOREST },
						-- TODO: verify sourceQuest. I was able to pick it up without doing Missing Friends as of 8.Dec.2019. Friendly with lower city, "Sha'tari Base Camp" quests completed
						["groups"] = {
							objective(1, {	-- 0/10 Ethereal Nethermancer slain
								["provider"] = { "n", 21370 },	-- Ethereal Nethermancer
							}),
							objective(2, {	-- 0/10 Ethereal Plunderer slain
								["provider"] = { "n", 21368 },	-- Ethereal Plunderer
							}),
						},
					}),
					q(10869, {	-- Thin the Flock
						["qg"] = 18713,	-- Lieutenant Gravelhammer
						["coord"] = { 57.6, 55.6, TEROKKAR_FOREST },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/14 Shienor Talonite slain
								["provider"] = { "n", 18449 },	-- Shienor Talonite
							}),
							objective(2, {	-- 0/6 Shienor Sorcerer slain
								["provider"] = { "n", 18450 },	-- Shienor Sorcerer
							}),
						},
					}),
					q(10007, {	-- Thinning the Ranks
						["sourceQuest"] = 9998,	-- Unruly Neighbors
						["qg"] = 18565,	-- Theloria Shadecloak
						["coord"] = { 69.6, 44.2, TEROKKAR_FOREST },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/10 Bonechewer Devastator slain
								["provider"] = { "n", 16772 },	-- Bonechewer Devastator
							}),
							objective(2, {	-- 0/6 Bonechewer Backbreaker slain
								["provider"] = { "n", 16810 },	-- Bonechewer Backbreaker
							}),
							i(25973),	-- Dark Augur's Wand
							i(25972),	-- Deadeye's Piece
							i(25971),	-- Stout Oak Longbow
						},
					}),
					q(10016, {	-- Timber Worg Tails
						["qg"] = 18387,	-- Bertelm
						["coord"] = { 58.2, 54.8, TEROKKAR_FOREST },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/12 Timber Worg Tail
								["provider"] = { "i", 25807 },	-- Timber Worg Tail
								["crs"] = {
									18476,	-- Timber Worg
									18477,	-- Timber Worg Alpha
									18670,	-- Ironjaw
									18706,	-- Bonechewer Riding Wolf
								},
							}),
						},
					}),
					q(10035, {	-- Torgos! (A)
						["sourceQuest"] = 10033,	-- WANTED: Bonelashers Dead!
						["qg"] = 18704,	-- Taela Everstride
						["coord"] = { 58.0, 53.4, TEROKKAR_FOREST },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/1 Tail Feather of Torgos
								["provider"] = { "i", 25852 },	-- Tail Feather of Torgos
								["cr"] = 18707,	-- Torgos
							}),
							i(25937),	-- Terokkar Tablet of Precision
							i(25936),	-- Terokkar Tablet of Vim
						},
					}),
					q(10036, {	-- Torgos! (H)
						["sourceQuest"] = 10034,	-- WANTED: Bonelashers Dead!
						["qg"] = 18705,	-- Mawg Grimshot
						["coord"] = { 49.2, 45.9, TEROKKAR_FOREST },
						["races"] = HORDE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/1 Tail Feather of Torgos
								["provider"] = { "i", 25852 },	-- Tail Feather of Torgos
								["cr"] = 18707,	-- Torgos
							}),
							i(25937),	-- Terokkar Tablet of Precision
							i(25936),	-- Terokkar Tablet of Vim
						},
					}),
					q(9998, {	-- Unruly Neighbors
						["qg"] = 18387,	-- Bertelm
						["coord"] = { 58.2, 54.8, TEROKKAR_FOREST },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/12 Warped Peon slain
								["provider"] = { "n", 18595 },	-- Warped Peon
							}),
						},
					}),
					q(10861, {	-- Veil Lithic: Preemptive Strike
						["sourceQuest"] = 10848,	-- Veil Rhaze: Unliving Evil
						["qg"] = 22272,	-- Kirrik the Awakened
						["coord"] = { 37.6, 51.6, TEROKKAR_FOREST },
						["groups"] = {
							objective(1, {	-- 0/3 Hatchlings Redeemed
								["provider"] = { "o", 185211 },	-- Cursed Egg
							}),
							objective(2, {	-- 0/3 Malevolent Hatchling slain
								["provider"] = { "n", 22337 },	-- Malevolent Hatchling
							}),
							i(25958),	-- Eagle Engraved Bracers
							i(25959),	-- Feathered Armbands
							i(25961),	-- Feathered Wrist Cuffs
							i(25960),	-- Talonstalker Bracers
						},
					}),
					q(10848, {	-- Veil Rhaze: Unliving Evil
						["sourceQuest"] = 10839,	-- Veil Skith: Darkstone of Terokk
						["qg"] = 22272,	-- Kirrik the Awakened
						["coord"] = { 37.6, 51.6, TEROKKAR_FOREST },
						["groups"] = {
							objective(1, {	-- 0/4 Deathtalon Spirit slain
								["provider"] = { "n", 21198 },	-- Deathtalon Spirit
							}),
							objective(2, {	-- 0/4 Screeching Spirit slain
								["provider"] = { "n", 21200 },	-- Screeching Spirit
							}),
							objective(3, {	-- 0/2 Spirit Raven slain
								["provider"] = { "n", 21324 },	-- Spirit Raven
							}),
							i(31762),	-- Feather-Wrapped Bow
							i(31761),	-- Talonbranch Wand
						},
					}),
					q(10874, {	-- Veil Shalas: Signal Fires
						["sourceQuest"] = 10861,	-- Veil Lithic: Preemptive Strike
						["qg"] = 22272,	-- Kirrik the Awakened
						["coord"] = { 37.6, 51.6, TEROKKAR_FOREST },
						["groups"] = {
							objective(1, {	-- 0/1 Sapphire Fire Extinguished
								["provider"] = { "o", 185216 },	-- Sapphire Signal Fire
							}),
							objective(2, {	-- 0/1 Emerald Fire Extinguished
								["provider"] = { "o", 185217 },	-- Emerald Signal Fire
							}),
							objective(3, {	-- 0/1 Violet Fire Extinguished
								["provider"] = { "o", 185218 },	-- Violet Signal Fire
							}),
							objective(4, {	-- 0/1 Bloodstone Fire Extinguished
								["provider"] = { "o", 185219 },	-- Bloodstone Signal Fire
							}),
							i(25966),	-- Arakkoa Sage's Shawl
							i(25965),	-- Cloak of Grasping Talons
							i(25963),	-- Kokorek's Signet
						},
					}),
					q(10839, {	-- Veil Skith: Darkstone of Terokk
						["sourceQuest"] = 10849,	-- Seek Out Kirrik
						["qg"] = 22272,	-- Kirrik the Awakened
						["coord"] = { 37.6, 51.6, TEROKKAR_FOREST },
					}),
					q(10842, {	-- Vengeful Souls
						--["sourceQuest"] = 10852,	-- Missing Friends
						["qg"] = 22278,	-- High Priest Orglum
						["coord"] = { 37.5, 50.8, TEROKKAR_FOREST },
						-- TODO: verify sourceQuest. I was able to pick it up without doing Missing Friends as of 8.Dec.2019. Friendly with lower city, "Sha'tari Base Camp" quests completed
						["groups"] = {
							objective(1, {	-- 0/5 Vengeful Draenei Slain
								["provider"] = { "n", 21636 },	-- Vengeful Draenei
							}),
							i(31615),	-- Ancient Draenei Arcane Relic
							i(31617),	-- Ancient Draenei War Talisman
						},
					}),
					q(10028, {	-- Vessels of Power
						["sourceQuest"] = 9992,	-- Olemba Seeds
						["qg"] = 18390,	-- Ros'eleth
						["coord"] = { 57.4, 55.4, TEROKKAR_FOREST },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/8 Draenei Vessel
								["providers"] = {
									{ "i", 25841 },	-- Draenei Vessel
									{ "o", 182581 },	-- Draenei Vessel
								},
							}),
						},
					}),
					q(10018, {	-- Vestments of the Wolf Spirit
						["qg"] = 18384,	-- Malukaz
						["coord"] = { 50.2, 46.4, TEROKKAR_FOREST },
						["races"] = HORDE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/12 Timber Worg Pelt
								["provider"] = { "i", 25812 },	-- Timber Worg Pelt
								["crs"] = {
									18476,	-- Timber Worg
									18477,	-- Timber Worg Alpha
									18706,	-- Bonechewer Riding Wolf
								},
							}),
						},
					}),
					q(10033, {	-- WANTED: Bonelashers Dead! (A)
						["provider"] = { "o", 182587 },	-- Wanted Poster
						["coord"] = { 57.6, 54.7, TEROKKAR_FOREST },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/20 Bonelasher slain
								["provider"] = { "n", 18470 },	-- Bonelasher
							}),
						},
					}),
					q(10034, {	-- WANTED: Bonelashers Dead! (H)
						["provider"] = { "o", 182588 },	-- Wanted Poster
						["coord"] = { 49.8, 45.3, TEROKKAR_FOREST },
						["races"] = HORDE_ONLY,
					}),
					warchiefscommand(q(39182, {	-- Warchief's Command: Terokkar Forest!
						["timeline"] = { ADDED_6_2_0 },
						["races"] = HORDE_ONLY,
						["isBreadcrumb"] = true,
					})),
					q(10791, {	-- Welcoming the Wolf Spirit
						["sourceQuest"] = 10023,	-- Patriarch Ironjaw
						["qg"] = 18384,	-- Malukaz
						["coord"] = { 50.2, 46.4, TEROKKAR_FOREST },
						["races"] = HORDE_ONLY,
						["groups"] = {
							i(25974),	-- Helm of Lupine Cunning
							i(25977),	-- Helm of Lupine Ferocity
							i(25976),	-- Helm of Lupine Grace
							i(25975),	-- Wolf Hunter's Guise
						},
					}),
					q(9994, {	-- What Are These Things? (A)
						["sourceQuest"] = 9990,	-- Investigate Tuurem
						["qg"] = 18446,	-- Earthbinder Tavgren
						["coord"] = { 44.3, 26.3, TEROKKAR_FOREST },
						["races"] = ALLIANCE_ONLY,
					}),
					q(9995, {	-- What Are These Things? (H)
						["sourceQuest"] = 9990,	-- Investigate Tuurem
						["qg"] = 18446,	-- Earthbinder Tavgren
						["coord"] = { 44.3, 26.3, TEROKKAR_FOREST },
						["races"] = HORDE_ONLY,
					}),
					q(10008, {	-- What Happens in Terokkar Stays in Terokkar
						["qg"] = 18566,	-- Shadowstalker Kaide
						["coord"] = { 63.3, 42.7, TEROKKAR_FOREST },
						["races"] = HORDE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/10 Bonechewer Devastator slain
								["provider"] = { "n", 16772 },	-- Bonechewer Devastator
							}),
							objective(2, {	-- 0/6 Bonechewer Backbreaker slain
								["provider"] = { "n", 16810 },	-- Bonechewer Backbreaker
							}),
							i(25973),	-- Dark Augur's Wand
							i(25972),	-- Deadeye's Piece
							i(25971),	-- Stout Oak Longbow
						},
					}),
					q(9961, {	-- What's Wrong at Cenarion Thicket?
						["qg"] = 18459,	-- Jenai Starwhisper
						["coord"] = { 57.0, 53.6, TEROKKAR_FOREST },
						["maps"] = { ZANGARMARSH },
						["races"] = ALLIANCE_ONLY,
						["isBreadcrumb"] = true,
					}),
					q(9960, {	-- What's Wrong at Cenarion Thicket?
						["qg"] = 18447,	-- Tooki
						["coord"] = { 50.0, 45.8, TEROKKAR_FOREST },
						["races"] = HORDE_ONLY,
						["isBreadcrumb"] = true,
					}),
					q(9957, {	-- What's Wrong at Cenarion Thicket?
						["qg"] = 17834,	-- Lethyn Moonfire
						["coord"] = { 78.6, 63.0, ZANGARMARSH },
						["isBreadcrumb"] = true,
						["lvl"] = lvlsquish(62, 62, 10),
					}),
					q(10040, {	-- Who Are They? (A)
						["sourceQuest"] = 10038,	-- Speak with Private Weeks
						["qg"] = 18715,	-- Private Weeks
						["coord"] = { 40.4, 36.0, TEROKKAR_FOREST },
						["races"] = ALLIANCE_ONLY,
					}),
					q(10041, {	-- Who Are They? (H)
						["sourceQuest"] = 10039,	-- Speak with Scout Neftis
						["qg"] = 18714,	-- Scout Neftis
						["coord"] = { 39.0, 43.7, TEROKKAR_FOREST },
						["races"] = HORDE_ONLY,
					}),
					q(9979, {	-- Wind Trader Lathrai
						["sourceQuest"] = 9978,	-- By Any Means Necessary
						["qg"] = 18482,	-- Empoor
						["coords"] = {
							{ 38.0, 26.4, TEROKKAR_FOREST },
							{ 40.6, 25.4, TEROKKAR_FOREST },
							{ 43.6, 26.2, TEROKKAR_FOREST },
							{ 45.6, 26.4, TEROKKAR_FOREST },
							{ 48.8, 27.8, TEROKKAR_FOREST },
							{ 50.6, 29.2, TEROKKAR_FOREST },
						},
					}),
				}),
				n(RARES, {
					n(18689, {	-- Crippler
						["coords"] = {
							{ 30.4, 63.8, TEROKKAR_FOREST },
							{ 32.4, 52.0, TEROKKAR_FOREST },
							{ 32.0, 55.2, TEROKKAR_FOREST },
							{ 40.0, 50.4, TEROKKAR_FOREST },
							{ 44.8, 56.2, TEROKKAR_FOREST },
							{ 48.4, 56.4, TEROKKAR_FOREST },
							{ 45.8, 59.6, TEROKKAR_FOREST },
							{ 47.6, 62.6, TEROKKAR_FOREST },
							{ 48.2, 74.6, TEROKKAR_FOREST },
							{ 46.0, 78.6, TEROKKAR_FOREST },
							{ 45.2, 74.0, TEROKKAR_FOREST },
							{ 39.6, 68.2, TEROKKAR_FOREST },
							{ 38.2, 65.0, TEROKKAR_FOREST },
							{ 40.0, 62.4, TEROKKAR_FOREST },
							{ 41.2, 65.4, TEROKKAR_FOREST },
						},
						["groups"] = {
							i(31238),	-- Dragonbone Ring
						},
					}),
					n(18686, {	-- Doomsayer Jurim
						["coords"] = {
							{ 55.4, 19.8, TEROKKAR_FOREST },
							{ 52.6, 23.6, TEROKKAR_FOREST },
							{ 49.6, 25.2, TEROKKAR_FOREST },
							{ 45.6, 26.4, TEROKKAR_FOREST },
							{ 41.0, 25.6, TEROKKAR_FOREST },
							{ 35.8, 34.4, TEROKKAR_FOREST },
							{ 35.6, 37.8, TEROKKAR_FOREST },
							{ 36.4, 42.2, TEROKKAR_FOREST },
							{ 70.4, 48.8, TEROKKAR_FOREST },
							{ 67.8, 46.2, TEROKKAR_FOREST },
							{ 65.6, 42.2, TEROKKAR_FOREST },
							{ 63.6, 38.4, TEROKKAR_FOREST },
							{ 60.6, 35.2, TEROKKAR_FOREST },
							{ 57.6, 32.8, TEROKKAR_FOREST },
							{ 55.4, 32.6, TEROKKAR_FOREST },
						},
						["groups"] = {
							i(31235),	-- Grim Boots
							i(31233),	-- Grim Greaves
							i(31232),	-- Grim Sabatons
							i(31236),	-- Grim Slippers
						},
					}),
					n(21724, {	-- Hawkbane
						["description"] = "This is a tameable hunter pet that has no notable drops.",
						["coord"] = { 76.2, 81.2, TEROKKAR_FOREST },
					}),
					n(18685, {	-- Okrek
						["coords"] = {
							{ 30.4, 44.0, TEROKKAR_FOREST },
							{ 31.0, 43.0, TEROKKAR_FOREST },
							{ 31.8, 42.6, TEROKKAR_FOREST },
							{ 57.2, 65.4, TEROKKAR_FOREST },
							{ 56.8, 66.8, TEROKKAR_FOREST },
							{ 56.6, 68.8, TEROKKAR_FOREST },
							{ 56.8, 71.6, TEROKKAR_FOREST },
							{ 49.4, 18.0, TEROKKAR_FOREST },
							{ 49.8, 18.8, TEROKKAR_FOREST },
							{ 57.8, 23.2, TEROKKAR_FOREST },
							{ 59.2, 24.2, TEROKKAR_FOREST },
							{ 59.8, 25.2, TEROKKAR_FOREST },
						},
						["groups"] = {
							i(31228),	-- Feathered Belt
							i(31227),	-- Feathered Girdle
							i(31231),	-- Feathered Sash
							i(31229),	-- Feathered Waistband
						},
					}),
					o(185913, {	-- Skull Pile
						["description"] = "Summons one of 4 Rares using 10 Time-Lost Scrolls. See Terokk's description for more info.",
						["coords"] = {
							{ 69.7, 74.7, TEROKKAR_FOREST },
							{ 70.1, 79.4, TEROKKAR_FOREST },
							{ 73.5, 80.7, TEROKKAR_FOREST },
							{ 75.2, 81.2, TEROKKAR_FOREST },
							{ 74.8, 87.5, TEROKKAR_FOREST },
							{ 72.2, 88.2, TEROKKAR_FOREST },
							{ 70.2, 83.3, TEROKKAR_FOREST },
							{ 61.4, 78.1, TEROKKAR_FOREST },
							{ 62.0, 74.7, TEROKKAR_FOREST },
						},
						["cost"] = {
							{ "i", 32620, 10 },	-- Time-Lost Scroll
						},
						["groups"] = {
							n(COMMON_BOSS_DROPS, {
								["crs"] = {
									23161,	-- Darkscreecher Akkarai
									23163,	-- Gezzarak the Huntress
									23165,	-- Karrog
									23162,	-- Vakkiz the Windrager
								},
								["groups"] = {
									i(31571),	-- Mistshroud Belt
									i(31574),	-- Mistshroud Bracers
									i(32514),	-- Skettis Band
									i(31566),	-- Skystalker's Bracers
									i(31582),	-- Slatesteel Bracers
									i(31579),	-- Slatesteel Girdle
									i(31558),	-- Windchanneller's Bindings
									i(31555),	-- Windchanneller's Ceinture
									i(31563),	-- Skystalker's Cord
								},
							}),
							n(23161, {	-- Darkscreecher Akkarai
								i(32529),	-- Heretic's Gauntlets
								i(32715),	-- Akkarai's Talons
							}),
							n(23163, {	-- Gezzarak the Huntress
								i(32531),	-- Gezzarak's Fang
								i(32716),	-- Gazzarak's Claws
							}),
							n(23165, {	-- Karrog
								i(32533),	-- Karrog's Shard
								i(32717),	-- Karro's Spine
							}),
							n(23162, {	-- Vakkiz the Windrager
								i(32532),	-- Windrager's Coils
								i(32718),	-- Vakkiz's Scale
							}),
						},
					}),
					n(21838, {	-- Terokk
						["description"] = "The process to summon this boss is as follows.\n\n1. Collect Shadow Dust from mobs in Skettis.\n2. Turn in 6 Shadow Dust to Severin for the quest More Shadow Dust to obtain Elixir of Shadows.\n3. Drink the elixir to gain a 20-minute buff that allows you to see Time-Lost mobs around Skettis.\n4. Kill these mobs to obtain Time-Lost Scrolls (40 required per summon).\n5. Make sure you are on the Adversarial Blood quest if this is your first time; it begins with the quest Ishaal's Almanac.\n6. Go to a skull pile and use 10 Time-Lost Scrolls to summon boss. (Darkscreecher Akkarai [Akkarai's Talons], Karrog [Karrog's Spine], Gezzarak the Huntress [Gezzarak's Claws], Vakkiz the Windrager [Vakkiz's Scale]).\n7. Take these 4 items to Hazzik to complete Adversarial Blood which rewards a Time-Lost Offering.\n8. Use the Time-Lost Offering at the Ancient Skull Pile on middle island to summon Terokk. (It has about a 15-minute spawn timer)",
						["provider"] = { "o", 185928 },	-- Ancient Skull Pile
						["coord"] = { 66.2, 77.5, TEROKKAR_FOREST },
						["cost"] = {
							{ "i", 32720, 1 },	-- Time-Lost Offering
						},
						["groups"] = {
							i(32535),	-- Gift of the Talonpriests
							i(32534),	-- Brooch of the Immortal King
							i(31564),	--	Skystalker's Leggings
							i(31580),	--	Slatesteel Leggings
							i(31556),	--	Windchanneller's Leggings
							i(31572),	--	Mistshroud Pants
							i(32536),	--	Terokk's Gavel
							i(32537),	--	Terokk's Gavel
							i(32782),	--	Time-Lost Figurine (TOY!)
							i(32540),	--	Terokk's Might
							i(32541),	--	Terokk's Wisdom
						},
					}),
				}),
				n(REWARDS, {
					container(35348, bubbleDownSelf({ ["timeline"] = { ADDED_2_4_0 } }, {	-- Bag of Fishing Treasures
						["description"] = "This bag is exclusive to the daily quest 'Crocolisk in the City'.",
						["groups"] = {
							i(34834),	-- Recipe: Captain Rumsey's Lager (RECIPE!)
							i(34828),	-- Antique Silver Cufflinks
							i(34837),	-- The 2 Ring
							i(35350),	-- Chuck (PET!)
							i(34826),	-- Gold Wedding Band
							i(33818),	-- Muckbreath (PET!)
							i(34827),	-- Noble's Monocle
							i(34829),	-- Ornate Drinking Stein
							i(34859),	-- Razor Sharp Fillet Knife
							i(35349),	-- Snarly (PET!)
							i(33816),	-- Toothy (PET!)
							i(33820),	-- Weather-Beaten Fishing Hat
							i(34109),	-- Weather-Beaten Journal (RECIPE!)
						},
					})),
					container(34863, bubbleDownSelf({ ["timeline"] = { ADDED_2_4_0 } }, {	-- Bag of Fishing Treasures
						["description"] = "Shared reward bag for all the non-Croc dailies.",
						["groups"] = {
							i(34834),	-- Recipe: Captain Rumsey's Lager (RECIPE!)
							i(34828),	-- Antique Silver Cufflinks
							i(34831),	-- Eye of the Sea
							i(34826),	-- Gold Wedding Band
							i(34827),	-- Noble's Monocle
							i(34829),	-- Ornate Drinking Stein
							i(34859),	-- Razor Sharp Fillet Knife
							i(34836),	-- Spun Truesilver Fishing Line
							i(33820),	-- Weather-Beaten Fishing Hat
							i(34109),	-- Weather-Beaten Journal (RECIPE!)
						},
					})),
				}),
				n(VENDORS, {
					n(18962, {	-- Bar Talet
						["coord"] = { 49.2, 45.4, TEROKKAR_FOREST },
						["races"] = HORDE_ONLY,
						["sym"] = {{"select","itemID",
							30758,	-- Aldor Guardian Rifle
							30757,	-- Draenic Light Crossbow
							30759,	-- Mag'hari Light Recurve
						}},
					}),
					applyclassicphase(TBC_PHASE_TWO_SKYGUARD, n(23367, {	-- Grella <Skyguard Quartermaster>
						["coord"] = { 64.3, 66.2, TEROKKAR_FOREST },
						["groups"] = bubbleDownClassicRep(FACTION_SHATARI_SKYGUARD, {
							{		-- Neutral
							}, {	-- Friendly
								i(32722),	-- Enriched Terocone Juice
							}, {	-- Honored
								i(32721),	-- Skyguard Rations
							}, {	-- Revered
								i(32539),	-- Skyguard's Drape
								i(32538),	-- Skywitch's Drape
							}, {	-- Exalted
								i(32771),	-- Airman's Ribbon Gallantry
								i(32319),	-- Blue Riding Nether Ray (MOUNT!)
								i(32314),	-- Green Riding Nether Ray (MOUNT!)
								i(38628, {	-- Nether Ray Fry (PET!)
									["timeline"] = { ADDED_2_4_2 },
								}),
								i(32316),	-- Purple Riding Nether Ray (MOUNT!)
								i(32317),	-- Red Riding Nether Ray (MOUNT!)
								i(32318),	-- Silver Riding Nether Ray (MOUNT!)
								i(32770),	-- Skyguard Silver Cross
								i(32445),	-- Skyguard Tabard
							},
						}),
					})),
					n(19296, {	-- Innkeeper Biribi <Innkeeper>
						["coord"] = { 56.6, 53.2, TEROKKAR_FOREST },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							i(27699),	-- Recipe: Golden Fish Sticks (RECIPE!)
							i(27700),	-- Recipe: Spicy Crawdad (RECIPE!)
						},
					}),
					n(18957, {	-- Innkeeper Grilka <Innkeeper>
						["coord"] = { 48.8, 45.0, TEROKKAR_FOREST },
						["races"] = HORDE_ONLY,
						["groups"] = {
							i(27690),	-- Recipe: Blackened Basilisk (RECIPE!)
							i(27692),	-- Recipe: Warp Burger (RECIPE!)
						},
					}),
					n(19042, {	-- Leeli Longhaggle <Trade Goods>
						["coord"] = { 57.6, 53.4, TEROKKAR_FOREST },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							i(22911, {	-- Recipe: Major Dreamless Sleep Potion (RECIPE!)
								["isLimited"] = true,
							}),
							i(22901, {	-- Recipe: Sneaking Potion (RECIPE!)
								["isLimited"] = true,
							}),
						},
					}),
					n(18960, {	-- Rungor <Trade Goods>
						["coord"] = { 48.8, 46.0, TEROKKAR_FOREST },
						["races"] = HORDE_ONLY,
						["groups"] = {
							i(25848, {	-- Formula: Runed Adamantite Rod (RECIPE!)
								["timeline"] = { ADDED_2_0_1, REMOVED_5_0_4 },
							}),
							i(27699),	-- Recipe: Golden Fish Sticks (RECIPE!)
							i(27700),	-- Recipe: Spicy Crawdad (RECIPE!)
						},
					}),
					n(19772, {	-- Spirit Sage Gartok
						["coord"] = { 49.8, 46.6, TEROKKAR_FOREST },
						["races"] = HORDE_ONLY,
						["groups"] = {
							spiritshard(50, i(28553)),	-- Band of the Exorcist
							spiritshard(50, i(28555)),	-- Seal of the Exorcist
							spiritshard(18, i(28576)),	-- Exorcist's Chain Helm
							spiritshard(18, i(28574)),	-- Exorcist's Dragonhide Helm
							spiritshard(18, i(28759)),	-- Exorcist's Dreadweave Hood
							spiritshard(18, i(28560)),	-- Exorcist's Lamellar Helm
							spiritshard(18, i(28561)),	-- Exorcist's Leather Helm
							spiritshard(18, i(28577)),	-- Exorcist's Linked Helm
							spiritshard(18, i(28758)),	-- Exorcist's Mail Helm
							spiritshard(18, i(28559)),	-- Exorcist's Plate Helm
							spiritshard(18, i(28761)),	-- Exorcist's Scaled Helm
							spiritshard(18, i(28760)),	-- Exorcist's Silk Hood
							spiritshard(18, i(28575)),	-- Exorcist's Wyrmhide Helm
							spiritshard(8, i(28557)),	-- Quickened Starfire Diamond
							spiritshard(8, i(28556)),	-- Swift Windfire Diamond
							spiritshard(2, i(32947)),	-- Auchenai Healing Potion
							spiritshard(2, i(32948)),	-- Auchenai Mana Potion
						},
					}),
					n(19773, {	-- Spirit Sage Zran
						["coord"] = { 56.0, 53.6, TEROKKAR_FOREST },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							spiritshard(50, i(28553)),	-- Band of the Exorcist
							spiritshard(50, i(28555)),	-- Seal of the Exorcist
							spiritshard(18, i(28576)),	-- Exorcist's Chain Helm
							spiritshard(18, i(28574)),	-- Exorcist's Dragonhide Helm
							spiritshard(18, i(28759)),	-- Exorcist's Dreadweave Hood
							spiritshard(18, i(28560)),	-- Exorcist's Lamellar Helm
							spiritshard(18, i(28561)),	-- Exorcist's Leather Helm
							spiritshard(18, i(28577)),	-- Exorcist's Linked Helm
							spiritshard(18, i(28758)),	-- Exorcist's Mail Helm
							spiritshard(18, i(28559)),	-- Exorcist's Plate Helm
							spiritshard(18, i(28761)),	-- Exorcist's Scaled Helm
							spiritshard(18, i(28760)),	-- Exorcist's Silk Hood
							spiritshard(18, i(28575)),	-- Exorcist's Wyrmhide Helm
							spiritshard(8, i(28557)),	-- Quickened Starfire Diamond
							spiritshard(8, i(28556)),	-- Swift Windfire Diamond
							spiritshard(2, i(32947)),	-- Auchenai Healing Potion
							spiritshard(2, i(32948)),	-- Auchenai Mana Potion
						},
					}),
					n(19038, {	-- Supply Officer Mills <Rations>
						["coord"] = { 55.8, 53.0, TEROKKAR_FOREST },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							i(27690),	-- Recipe: Blackened Basilisk (RECIPE!)
							i(27692),	-- Recipe: Warp Burger (RECIPE!)
						},
					}),
				}),
				n(ZONE_DROPS, {
					i(25719, {	-- Arakkoa Feather
						["coords"] = {
							{ 24.7, 72.6, TEROKKAR_FOREST },	-- Veil Lithic
							{ 50.0, 16.7, TEROKKAR_FOREST },	-- Veil Reskk
							{ 56.3, 69.0, TEROKKAR_FOREST },	-- Veil Shalas
							{ 58.8, 24.3, TEROKKAR_FOREST },	-- Veil Shienor
							{ 30.9, 42.0, TEROKKAR_FOREST },	-- Veil Skith
						},
						["crs"] = {
							22387,	-- Lithic Oracle
							22388,	-- Lithic Talonguard
							18455,	-- Shalassi Oracle
							18454,	-- Shalassi Talonguard
							18450,	-- Shienor Sorcerer
							18449,	-- Shienor Talonite
							18451,	-- Shienor Wing Guard
							18452,	-- Skithian Dreadhawk
							18453,	-- Skithian Windripper
						},
						-- #if BEFORE 8.2.5
						["description"] = "Can be turned in to the NPC named Vekax for Outcast's Cache and reputation with the Lower City up to Honored. Each turn in requires 30 Arakkoa Feathers. Vekax can be found in the northwestern section of the Lower City in Shattrath.",
						-- #else
						["description"] = "Can be turned in to the NPC named Vekax for Outcast's Cache and reputation with the Lower City up to Honored, and again when at Exalted. Each turn in requires 30 Arakkoa Feathers. Vekax can be found in the northwestern section of the Lower City in Shattrath.",
						-- #endif
					}),
					i(25744, {	-- Dampscale Basilisk Eye
						["crs"] = {
							18461,	-- Dampscale Basilisk
							18463,	-- Dampscale Devourer
							21854,	-- Ironspine Petrifier
						},
						["coords"] = {
							{ 39.3, 9.7, TEROKKAR_FOREST },	-- Silmyr Lake
							{ 44.6, 34.3, TEROKKAR_FOREST },	-- Cenarion Thicket, south of
							{ 62.4, 49.0, TEROKKAR_FOREST },	-- Bonechewer Ruins, west of
						},
					}),
					i(25802, {	-- Dreadfang Venom Sac
						["crs"] = {
							18466,	-- Dreadfang Lurker
							18467,	-- Dreadfang Widow
						},
						["coords"] = {
							{ 52.3, 78.5, TEROKKAR_FOREST },	-- Netherweb Ridge
							{ 54.8, 59.8, TEROKKAR_FOREST },	-- Allerian Stronghold, west of
							{ 44.6, 34.3, TEROKKAR_FOREST },	-- Cenarion Thicket, south of
						},
					}),
					i(34491, {	-- Pattern: Bag of Many Hides (RECIPE!)
						["crs"] = {
							22143,	-- Gordunni Back-Breaker
							22144,	-- Gordunni Elementalist
							22148,	-- Gordunni Head-Splitter
							23022,	-- Gordunni Soulreaper
						},
						["timeline"] = { ADDED_2_3_0 },
					}),
					applyclassicphase(TBC_PHASE_FIVE_OFFENSIVE_PHASE_FOUR, i(34255, {	-- Razorthorn Flayer Gland
						["cr"] = 24920,	-- Razorthorn Flayer
					})),
					UNHOLY_ENCHANT,
					i(32388, {	-- Shadow Dust
						["crs"] = {
							21911,	-- Skettis Soulcaller
							21650,	-- Skettis Talonite
							21649,	-- Skettis Windwalker
							21644,	-- Skettis Wing Guard
							23066,	-- Talonpriest Ishaal
							23067,	-- Talonpriest Skizzik
							23068,	-- Talonpriest Zellek
						},
					}),
					i(32620, {	-- Time-Lost Scroll
						["cost"] = {
							{ "i", 32446, 1 },	-- Elixir of Shadows
						},
						["crs"] = {
							23066,	-- Talonpriest Ishaal
							23068,	-- Talonpriest Zellek
							21787,	-- Time-Lost Skettis High Priest
							21651,	-- Time-Lost Skettis Reaver
							21763,	-- Time-Lost Skettis Worshipper
						},
					}),
				}),
			},
		})),
	})),
});

-- Now add the elixirs as to not mark them incorrectly.
appendGroups({
	i(28103),	-- Adept's Elixir
	i(22831),	-- Elixir of Major Agility
}, HUNGRY_NETHER_RAYS_GROUPS);

-- Remove the phase flag.
UNHOLY_ENCHANT.u = nil;
