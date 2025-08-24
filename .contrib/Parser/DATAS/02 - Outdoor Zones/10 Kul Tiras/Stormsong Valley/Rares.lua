---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(KUL_TIRAS, bubbleDown({ ["timeline"] = { ADDED_8_0_1 } }, {
	m(STORMSONG_VALLEY, {
		n(RARES, {
			n(137025, {	-- Broodmother
				["questID"] = 51298,
				["coord"] = { 29.5, 69.6, STORMSONG_VALLEY },	-- entrance to cellar
				["groups"] = {
					i(160470),	-- Broodcrawler Wristguards
					crit(41760, {	-- Broodmother
						["achievementID"] = 12940,	-- Adventurer of Stormsong Valley
					}),
				},
			}),
			n(130897, {	-- Captain Razorspine
				["questID"] = 50170,
				["coord"] = { 47.2, 65.6, STORMSONG_VALLEY },
				["groups"] = {
					i(155287),	-- Razorspine's Greatmace
					crit(41818, {	-- Captain Razorspine
						["achievementID"] = 12940,	-- Adventurer of Stormsong Valley
					}),
				},
			}),
			n(139968, {	-- Corrupted Tideskipper
				["questID"] = 52121,
				["coords"] = {
					{ 66.0, 51.6, STORMSONG_VALLEY },
					{ 68.6, 48.0, STORMSONG_VALLEY },
				},
				["groups"] = {
					i(154183),	-- Boralus-Captain's Chain Boots
					i(162028),	-- Technique: Glyph of the Tideskipper (RECIPE!)
					crit(41777, {	-- Corrupted Pod
						["achievementID"] = 12940,	-- Adventurer of Stormsong Valley
					}),
				},
			}),
			n(140938, {	-- Croaker
				["questID"] = 52303,
				["coord"] = { 62.91, 32.91, STORMSONG_VALLEY },
				["groups"] = {
					i(154460),	-- Treasure-Seeker's Diving Helmet
					crit(41776, {	-- Croaker
						["achievementID"] = 12940,	-- Adventurer of Stormsong Valley
					}),
				},
			}),
			n(136183, {	-- Crushtacean
				["questID"] = 52466,
				["coord"] = { 51.1, 54.4, STORMSONG_VALLEY },	-- entrance
				["groups"] = {
					i(154857),	-- Bonesplinter Band
					crit(41778, {	-- Crushtacean
						["achievementID"] = 12940,	-- Adventurer of Stormsong Valley
					}),
				},
			}),
			n(134897, {	-- Dagrus the Scorned
				["questID"] = 50731,
				["coord"] = { 68.0, 39.4, STORMSONG_VALLEY },
				["groups"] = {
					i(160476),	-- Fogtide Warboots
					crit(43470, {	-- Dagrus the Scorned
						["achievementID"] = 12940,	-- Adventurer of Stormsong Valley
					}),
				},
			}),
			n(139385, {	-- Deepfang
				["questID"] = 50692,
				["coord"] = { 53.0, 50.6, STORMSONG_VALLEY },	-- pats a little but one coord should suffice
				["groups"] = {
					i(160464),	-- Dire Hill Wolfsteppers
					crit(41775, {	-- Deepfang
						["achievementID"] = 12940,	-- Adventurer of Stormsong Valley
					}),
				},
			}),
			n(140925, {	-- Doc Marrtens
				--	doc marrtens and jakala both complete one another's quests. it's unclear which quest specifically belongs to which rare.
				--	on wowhead both quests are attached to the criteria as "doc marrtens or jakala the cruel," so it probably doesn't matter.
				--	unsure if phasing issues affect horde from seeing this NPC. alliance players have to trigger a cutscene before the rare is available (see jakala's description).
				["questID"] = 52323,	-- also completes 52324
				["coord"] = { 53.3, 64.4, STORMSONG_VALLEY },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(154453),	-- Doc's Air-Cushioned Boots
					crit(41849, {	-- Doc Marrtens or Jakala the Cruel
						["achievementID"] = 12940,	-- Adventurer of Stormsong Valley
					}),
				},
			}),
			n(131404, {	-- Foreman Scripps
				["questID"] = 49951,
				["coord"] = { 64.41, 65.91, STORMSONG_VALLEY },
				["groups"] = {
					i(160471),	-- Foreman's Stability Belt
					crit(41765, {	-- Foreman Scripps
						["achievementID"] = 12940,	-- Adventurer of Stormsong Valley
					}),
				},
			}),
			n(132007, {	-- Galestorm
				["questID"] = 50075,
				["coord"] = { 71.51, 54.31, STORMSONG_VALLEY },
				["groups"] = {
					i(155568),	-- Galewind Chimes
					crit(41761, {	-- Galestorm
						["achievementID"] = 12940,	-- Adventurer of Stormsong Valley
					}),
				},
			}),
			n(141059, {	-- Grimscowl the Harebrained
				["questID"] = 52329,
				["coord"] = { 62.01, 73.91, STORMSONG_VALLEY },
				["groups"] = {
					i(155572),	-- Yeti-Rager's Cloak
					crit(41774, {	-- Grimscowl the Harebrained
						["achievementID"] = 12940,	-- Adventurer of Stormsong Valley
					}),
				},
			}),
			n(141226, {	-- Haegol the Hammer
				["questID"] = 52460,
				["coord"] = { 35.6, 77.4, STORMSONG_VALLEY },
				["groups"] = {
					i(154273),	-- Rockstopper Breastplate
					crit(41815, {	-- Haegol the Hammer
						["achievementID"] = 12940,	-- Adventurer of Stormsong Valley
					}),
				},
			}),
			n(141985, {	-- Herald Zaxuthril
				-- ["questID"] = 50075,	-- TODO verify
				["coord"] = { 71.48, 54.26, STORMSONG_VALLEY },
			}),
			n(141039, {	-- Ice Sickle
				["questID"] = 52327,
				["coord"] = { 63.5, 83.4, STORMSONG_VALLEY },
				["groups"] = {
					i(154464),	-- Frozen Heart Legguards
					crit(41817, {	-- Ice Sickle
						["achievementID"] = 12940,	-- Adventurer of Stormsong Valley
					}),
				},
			}),
			n(155069, bubbleDownSelf({ ["timeline"] = { ADDED_8_2_5 } }, {	-- Honeyback Harvester
				["coords"] = {
					{ 25.6, 73.2, STORMSONG_VALLEY },
					{ 33.4, 32.8, STORMSONG_VALLEY },
					{ 40.9, 62.1, STORMSONG_VALLEY },
					{ 47.3, 32.1, STORMSONG_VALLEY },
					{ 57.1, 51.2, STORMSONG_VALLEY },
					{ 61.8, 30.9, STORMSONG_VALLEY },
					{ 63.0, 21.2, STORMSONG_VALLEY },
					{ 66.3, 69.9, STORMSONG_VALLEY },
					{ 72.3, 52.2, STORMSONG_VALLEY },
				},
				["description"] = "This Rare starts the Honeyback Harvester Event.\n\nYou can participate in Honeyback Harvester events as many times a day as you want, but you can only loot the final jelly once per hour (loot eligibility resets on the hour, not based upon your last kill). If you can see the vignette star for the Harvester or a treasure icon surrounded by a spiky star, you are eligible for hourly loot.\n\nThe quests that drop from rares are weekly, but the rares may drop jelly even during the cooldown period and even if you have already completed the specific rare's weekly quest.",
				["groups"] = {
					n(EVENT_COMPLETION, {
						i(172491),	-- Papi (PET!)
						i(172492),	-- Sunsoaked Flitter (PET!)
						i(172448),	-- Super Sticky Honey
						i(170175),	-- Technique: Glyph of Dire Bees (RECIPE!)
					}),
				},
			})),
			n(154154, bubbleDownSelf({ ["timeline"] = { ADDED_8_2_5 } }, {	-- Honey Smasher
				["questID"] = 57674,
				["isDaily"] = true,
				["coords"] = {
					{ 59.6, 18.4, STORMSONG_VALLEY },
					{ 62.0, 15.4, STORMSONG_VALLEY },
				},
				["groups"] = {
					i(169858),	-- "Bee Bee" Gun
					i(169133, {	-- Crystallized Jelly
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							i(168825),	-- Rich Jelly
							i(168828),	-- Royal Jelly
							i(168822),	-- Thin Jelly
						},
					}),
					i(172493),	-- Crimson Skipper (PET!)
					i(169152),	-- Empty Beehive
					i(169110),	-- Jelly Magnet
					i(172405),	-- Tome of Hex: Living Honey (CI!)
				},
			})),
			n(141043, {	-- Jakala the Cruel
				["description"] = "Due to phasing issues, in order to see this rare you need to enter Brennadam from the southern bridge at 57.6, 66.5. This will trigger a cutscene and place you in the phase with the rare.",
				--	doc marrtens and jakala both complete one another's quests. it's unclear which quest specifically belongs to which rare.
				--	on wowhead both quests are attached to the criteria as "doc marrtens or jakala the cruel," so it probably doesn't matter.
				["questID"] = 52324,	-- also completes 52323
				["coord"] = { 53.3, 64.4, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(159179, {	-- Headtaker's Helm
						["crs"] = { 140925 },	-- Doc Marrtens
					}),
					crit(41848, {	-- Doc Marrtens or Jakala the Cruel
						["achievementID"] = 12940,	-- Adventurer of Stormsong Valley
					}),
				},
			}),
			n(141029, {	-- Kickers
				["questID"] = 52318,
				["coord"] = { 31.6, 61.6, STORMSONG_VALLEY },
				["groups"] = {
					i(154475),	-- Goathair Bindings
					crit(41763, {	-- Kickers
						["achievementID"] = 12940,	-- Adventurer of Stormsong Valley
					}),
				},
			}),
			n(138963, {	-- Nestmother Acada
				["description"] = "The path to this rare starts at 41.2, 44.1.",
				["questID"] = 51762,
				["coords"] = {
					{ 43.4, 44.9, STORMSONG_VALLEY },	-- Nestmother
					{ 41.2, 44.1, STORMSONG_VALLEY },	-- Path
				},
				["groups"] = {
					i(160458),	-- Ancient Featherlight Slippers
					crit(41844, {	-- Nestmother Acada
						["achievementID"] = 12940,	-- Adventurer of Stormsong Valley
					}),
				},
			}),
			--n(155176, {	-- Old Nasha // has no questID
			--Under Honeyback Hive as their drop requires the faction unlocked, which horde cant.
			n(141239, {	-- Osca the Bloodied
				["questID"] = 52461,
				["coord"] = { 42.2, 63.1, STORMSONG_VALLEY },
				["groups"] = {
					i(159169),	-- Bloody Bearhide Pants
					crit(41845, {	-- Osca the Bloodied
						["achievementID"] = 12940,	-- Adventurer of Stormsong Valley
					}),
				},
			}),
			n(139298, {	-- Pinku'shon
				["questID"] = 51959,
				["coord"] = { 38.6, 51.0, STORMSONG_VALLEY },
				["groups"] = {
					i(163678),	-- Pinku'shon's Impaler
					crit(41772, {	-- Pinku'shon
						["achievementID"] = 12940,	-- Adventurer of Stormsong Valley
					}),
				},
			}),
			n(141286, {	-- Poacher Zane
				["questID"] = 52469,
				["coord"] = { 34.6, 67.8, STORMSONG_VALLEY },
				["groups"] = {
					crit(41769, {	-- Poacher Zane
						["achievementID"] = 12940,	-- Adventurer of Stormsong Valley
					}),
				},
				["sym"] = {{"select","itemID",
					POLISHED_PET_CHARM,
				}},
			}),
			n(134884, {	-- Ragna
				["questID"] = 50725,
				["coord"] = { 41.6, 74.6, STORMSONG_VALLEY },
				["groups"] = {
					i(160465),	-- Raging-Earth Wranglers
					crit(41758, {	-- Ragna
						["achievementID"] = 12940,	-- Adventurer of Stormsong Valley
					}),
				},
			}),
			n(132047, {	-- Reinforced Hullbreaker
				["questID"] = 53611,
				["coord"] = { 69.6, 51.0, STORMSONG_VALLEY },
			}),
			n(139328, {	-- Sabertron
				["questID"] = 51956,
				["coord"] = { 34.6, 32.4, STORMSONG_VALLEY },
				["description"] = "Red is the default color when a WQ isn't active. To get credit for killing all the different colors, wait for the 'Sabertron' world quests to pop up!",
				["groups"] = {
					i(154664),	-- Lionsight Omensword
				},
			}),
			n(139988, {	-- Sandfang
				["questID"] = 52125,
				["coord"] = { 73.6, 60.6, STORMSONG_VALLEY },
				["groups"] = {
					i(154389),	-- Abyssal-Serpent Pauldrons
					crit(41846, {	-- Sandfang
						["achievementID"] = 12940,	-- Adventurer of Stormsong Valley
					}),
				},
			}),
			n(138938, {	-- Seabreaker Skoloth
				["questID"] = 51757,
				["coord"] = { 34.0, 38.6, STORMSONG_VALLEY },
				["groups"] = {
					i(160477),	-- Skoloth's Anchorplate Greaves
					crit(41755, {	-- Seabreaker Skoloth
						["achievementID"] = 12940,	-- Adventurer of Stormsong Valley
					}),
				},
			}),
			n(140997, {	-- Severus the Outcast
				["questID"] = 50938,
				["coord"] = { 22.6, 73.2, STORMSONG_VALLEY },
				["groups"] = {
					i(163679),	-- Severus' Bindings
					crit(41754, {	-- Severus the Outcast
						["achievementID"] = 12940,	-- Adventurer of Stormsong Valley
					}),
				},
			}),
			n(141143, {	-- Sister Absinthe
				["questID"] = 52441,
				["coord"] = { 61.5, 57.0, STORMSONG_VALLEY },
				["groups"] = {
					i(155164),	-- Beryl-Tide Greatcloak
					crit(41842, {	-- Sister Absinthe
						["achievementID"] = 12940,	-- Adventurer of Stormsong Valley
					}),
				},
			}),
			n(139319, {	-- Slickspill
				["questID"] = 51958,
				["coord"] = { 41.8, 28.4, STORMSONG_VALLEY },
				["groups"] = {
					i(158216),	-- Living Oil Canister
					crit(41759, {	-- Slickspill
						["achievementID"] = 12940,	-- Adventurer of Stormsong Valley
					}),
				},
			}),
			n(141175, {	-- Song Mistress Dadalea
				["questID"] = 52448,
				["coord"] = { 70.8, 32.6, STORMSONG_VALLEY },
				["groups"] = {
					i(158218),	-- Dadalea's Wing
					crit(41753, {	-- Song Mistress Dadalea
						["achievementID"] = 12940,	-- Adventurer of Stormsong Valley
					}),
				},
			}),
			n(141088, {	-- Squall
				["questID"] = 52433,
				["coord"] = { 56.9, 76.0, STORMSONG_VALLEY },
				["groups"] = {
					i(158224),	-- Vial of Storms [Confirmed - Crieve]
					crit(41816, {	-- Squall
						["achievementID"] = 12940,	-- Adventurer of Stormsong Valley
					}),
				},
			}),
			n(135947, {	-- Strange Mushroom Ring
				["questID"] = 50024,
				["coord"] = { 53.8, 72.2, STORMSONG_VALLEY },	-- cave entrance
				["groups"] = {
					i(154466),	-- Fungalshroud Raiment
					crit(41787, {	-- Strange Mushroom Ring
						["achievementID"] = 12940,	-- Adventurer of Stormsong Valley
					}),
				},
			}),
			n(139980, {	-- Taja the Tidehowler
				["questID"] = 52123,
				["coord"] = { 60.0, 46.6, STORMSONG_VALLEY },
				["groups"] = {
					i(154449),	-- Tidebound Chestguard
					crit(41847, {	-- Taja the Tidehowler
						["achievementID"] = 12940,	-- Adventurer of Stormsong Valley
					}),
				},
			}),
			n(136189, {	-- The Lichen King
				["questID"] = 50974,
				["coord"] = { 51.8, 79.6, STORMSONG_VALLEY },
				["groups"] = {
					i(150909),	-- Morel Coils
					crit(41757, {	-- The Lichen King
						["achievementID"] = 12940,	-- Adventurer of Stormsong Valley
					}),
				},
			}),
			n(135939, {	-- Vinespeaker Ratha
				["questID"] = 50037,
				["coords"] = {
					{ 51.1, 68.7, STORMSONG_VALLEY },	-- cave entrance
					-- { 49.6, 68.5, STORMSONG_VALLEY },	-- inside cave at rare
				},
				["groups"] = {
					i(158299),	-- Ratha's Thornscepter
					crit(41782, {	-- Vinespeaker Ratha
						["achievementID"] = 12940,	-- Adventurer of Stormsong Valley
					}),
				},
			}),
			n(130079, {	-- Wagga Snarltusk
				["questID"] = 50819,
				["coord"] = { 45.8, 74.3, STORMSONG_VALLEY },	-- path
				["groups"] = {
					i(154431),	-- Earthshaker's Flame
					crit(41843, {	-- Wagga Snarltusk
						["achievementID"] = 12940,	-- Adventurer of Stormsong Valley
					}),
				},
			}),
			n(142088, {	-- Whirlwing
				["questID"] = 52457,
				["coord"] = { 46.8, 42.1, STORMSONG_VALLEY },
				["groups"] = {
					i(158215),	-- Whirlwing's Plumage
					crit(41762, {	-- Whirlwing
						["achievementID"] = 12940,	-- Adventurer of Stormsong Valley
					}),
				},
			}),
		}),
	}),
})));
