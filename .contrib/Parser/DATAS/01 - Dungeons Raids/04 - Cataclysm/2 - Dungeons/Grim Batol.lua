-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
local MixedNormalAndHeroicLootTable = {
	e(131, {	-- General Umbriss
		["crs"] = { 39625 },	-- General Umbriss
		["groups"] = {
			i(56442),	-- Cursed Skardyn Vest
			i(157612, {	-- Dragonkin Ward
				["timeline"] = { ADDED_7_3_5 },
			}),
			i(157596, {	-- Glimmerthread Pantaloons
				["timeline"] = { ADDED_7_3_5 },
			}),
			i(56441),	-- Modgug's Blade
			i(56440),	-- Skardyn's Grace
			i(56444),	-- Umbriss Band
			i(56443),	-- Wildhammer Riding Helm
		},
	}),
	e(132, {	-- Forgemaster Throngus
		["crs"] = { 40177 },	-- Forgemaster Throngus
		["groups"] = {
			i(56447),	-- Belt of the Forgemaster
			i(56448),	-- Dark Iron Chain Boots
			i(157613, {	-- Geomancy Slicer
				["timeline"] = { ADDED_7_3_5 },
			}),
			i(56445),	-- Ring of Dun Algaz
			i(56449),	-- Throngus's Finger
			i(157597, {	-- Troggstitched Drape
				["timeline"] = { ADDED_7_3_5 },
			}),
			i(56446),	-- Wand of Untainted Power
		},
	}),
	e(133, {	-- Drahga Shadowburner
		["crs"] = { 40319 },	-- Drahga Shadowburner
		["groups"] = {
			i(56450),	-- Azureborne Cloak
			i(157598, {	-- Courier's Dragonriding Spaulders
				["timeline"] = { ADDED_7_3_5 },
			}),
			i(56453),	-- Crimsonborne Bracers
			i(56452),	-- Earthshape Pauldrons
			i(157614, {	-- Flame Invoker's Treads
				["timeline"] = { ADDED_7_3_5 },
			}),
			i(56451),	-- Red Scale Boots
			i(56454),	-- Windwalker Blade
		},
	}),
	e(134, {	-- Erudax
		["crs"] = { 40484 },	-- Erudax
		["groups"] = {
			ach(4840),	-- Grim Batol
			i(56464),	-- Bracers of Umbral Mending
			i(56457),	-- Circle of Bone
			i(56463),	-- Corrupted Egg Shell
			i(56460),	-- Crown of Enfeebled Bodies
			i(157615, {	-- Flamescale Chain Leggings
				["timeline"] = { ADDED_7_3_5 },
			}),
			i(56462),	-- Gale of Shadows
			i(56459),	-- Mace of Transformed Bone
			i(56458),	-- Mark of Khardros
			i(56461),	-- Staff of Siphoned Essences
			i(56455),	-- Vest of Misshapen Hides
			i(56456),	-- Wild Hammer
		},
	}),
};
root(ROOTS.Instances, expansion(EXPANSION.CATA, bubbleDown({ ["timeline"] = ADDED_4_0_3 }, {
	applyclassicphase(CATA_PHASE_ONE, inst(71, {	-- Grim Batol
		["lore"] = "Don't be fooled by Grim Batol's humble exterior; many of this mountain fortress's desecrated chambers are buried deep in the Twilight Highlands. Once the stronghold of the Wildhammer dwarves, and later seized by orcs as a prison for Alextrasza, the city is now in the clutches of the Twilight's Hammer cult. Heroes brave enough to infiltrate the brooding depths of the stronghold must confront Deathwing's agents to thwart the mysterious evil within.\n\n|CFFFF0000Need to finish off a Cataclysm rep?  Equip a tabard obtained from the faction quartermaster and clear the dungeon on normal for around 2k rep per clear.|r",
		["mapID"] = 293,
		["coord"] = { 19.2, 54.2, TWILIGHT_HIGHLANDS },
		["groups"] = {
			n(QUESTS, {
				q(28854, {	-- Closing A Dark Chapter
					["provider"] = { "n", 50387 },	-- Baleflame
					["coord"] = { 50, 50, 293 },	-- Grim Batol
					["groups"] = {
						i(66933),	-- Breastplate of the Witness
						i(66935),	-- Eradicator's Bracers
						i(66934),	-- Gloves of Baleflame
					},
				}),
				q(28853, {	-- Kill the Courier
					["provider"] = { "n", 50385 },	-- Farseer Tooranu
					["coord"] = { 50, 50, 293 },	-- Grim Batol
					["groups"] = {
						i(66936),	-- Helm of Secret Knowledge
						i(66937),	-- Sandals of the Courier
						i(66938),	-- Tooranu's Spaulders
					},
				}),
				q(28852, {	-- Soften them Up
					["provider"] = { "n", 50390 },	-- Velastrasza
					["coord"] = { 50, 50, 293 },	-- Grim Batol
				}),
				q(28803, {	-- Vengeance of the Wildhammer
					["provider"] = { "o", 207411 },	-- Dwarven Bone Pile
					["requireSkill"] = ARCHAEOLOGY,
					["isRepeatable"] = true,
				}),
			}),
			n(ZONE_DROPS, {
				["crs"] = {
					39415,	-- Ascended Flameseeker
					40272,	-- Ascended Rockbreaker
					40273,	-- Ascended Waterlasher
					39414,	-- Ascended Windwalker
					39854,	-- Azureborne Guardian
					40291,	-- Azureborne Seer
					39855,	-- Azureborne Seer
					39909,	-- Azureborne Warlord
					39381,	-- Crimsonborne Guardian
					39405,	-- Crimsonborne Seer
					40290,	-- Crimsonborne Seer
					39626,	-- Crimsonborne Warlord
					40166,	-- Enslaved Gronn Brute
					39392,	-- Faceless Corrupter
					41073,	-- Twilight Armsmaster
					40306,	-- Twilight Armsmaster
					40167,	-- Twilight Beguiler
					39890,	-- Twilight Earthshaper
					40448,	-- Twilight Enforcer
					39956,	-- Twilight Enforcer
					39870,	-- Twilight Firecatcher
					39962,	-- Twilight Stormbreaker
					40270,	-- Twilight Thundercaller
					40268,	-- Twilight War-Mage
					39873,	-- Twilight Wyrmcaller
				},
				["groups"] = {
					i(56220),	-- Abandoned Dark Iron Ring
					i(56218),	-- Curse-Tainted Leggings
					i(56219),	-- Shroud of Dark Memories
				},
			}),
			d(DIFFICULTY.DUNGEON.NORMAL, bubbleDownSelf({ ["timeline"] = REMOVED_7_3_5 }, {
				e(131, {	-- General Umbriss
					["crs"] = { 39625 },	-- General Umbriss
					["groups"] = {
						i(56113),	-- Cursed Skardyn Vest
						i(56116),	-- Modgud's Blade
						i(56115),	-- Skardyn's Grace
						i(56114),	-- Umbriss Band
						i(56112),	-- Wildhammer Riding Helm
					},
				}),
				e(132, {	-- Forgemaster Throngus
					["crs"] = { 40177 },	-- Forgemaster Throngus
					["groups"] = {
						i(56118),	-- Belt of the Forgemaster
						i(56119),	-- Dark Iron Chain Boots
						i(56120),	-- Ring of Dun Algaz
						i(56121),	-- Throngus's Finger
						i(56122),	-- Wand of Untainted Power
					},
				}),
				e(133, {	-- Drahga Shadowburner
					["crs"] = { 40319 },	-- Drahga Shadowburner
					["groups"] = {
						i(56126),	-- Azureborne Cloak
						i(56125),	-- Crimsonborne Bracers
						i(56124),	-- Earthshaper Pauldrons
						i(56123),	-- Red Scale Boots
						i(56127),	-- Windwalker Blade
					},
				}),
				e(134, {	-- Erudax
					["crs"] = { 40484 },	-- Erudax
					["groups"] = {
						-- #if BEFORE 7.3.5
						ach(4840),	-- Grim Batol
						-- #endif
						i(56135),	-- Bracers of Umbral Mending
						i(56129),	-- Circle of Bone
						i(56136),	-- Corrupted Egg Shell
						i(56133),	-- Crown of Enfeebled Bodies
						i(56138),	-- Gale of Shadows
						i(56130),	-- Mace of Transformed Bone
						i(56132),	-- Mark of Khardros
						i(56137),	-- Staff of Siphoned Essences
						i(56128),	-- Vest of Misshapen Hides
						i(56131),	-- Wild Hammer
					},
				}),
			})),
			-- #if BEFORE 7.3.5
			d(DIFFICULTY.DUNGEON.HEROIC, {
				e(131, {	-- General Umbriss
					["crs"] = { 39625 },	-- General Umbriss
					["groups"] = {
						ach(5297),	-- Umbrage for Umbriss
						i(56442),	-- Cursed Skardyn Vest
						i(56441),	-- Modgug's Blade
						i(56440),	-- Skardyn's Graceace
						i(56444),	-- Umbriss Band
						i(56443),	-- Wildhammer Riding Helm
					},
				}),
				e(132, {	-- Forgemaster Throngus
					["crs"] = { 40177 },	-- Forgemaster Throngus
					["groups"] = {
						i(56447),	-- Belt of the Forgemaster
						i(56448),	-- Dark Iron Chain Boots
						i(56445),	-- Ring of Dun Algaz
						i(56449),	-- Throngus's Finger
						i(56446),	-- Wand of Untainted Power
					},
				}),
				e(133, {	-- Drahga Shadowburner
					["crs"] = { 40319 },	-- Drahga Shadowburner
					["groups"] = {
						i(56450),	-- Azureborne Cloak
						i(56453),	-- Crimsonborne Bracers
						i(56452),	-- Earthshape Pauldrons
						i(56451),	-- Red Scale Boots
						i(56454),	-- Windwalker Blade
					},
				}),
				e(134, {	-- Erudax
					["crs"] = { 40484 },	-- Erudax
					["groups"] = {
						ach(5298),	-- Don't Need to Break Eggs to Make an Omelet
						ach(5062),	-- Heroic: Grim Batol
						ach(5138),	-- Heroic: Grim Batol Guild Run
						i(56464),	-- Bracers of Umbral Mending
						i(56457),	-- Circle of Bone
						i(56463),	-- Corrupted Egg Shell
						i(56460),	-- Crown of Enfeebled Bodies
						i(56462),	-- Gale of Shadows
						i(56459),	-- Mace of Transformed Bone
						i(56458),	-- Mark of Khardros
						i(56461),	-- Staff of Siphoned Essences
						i(56455),	-- Vest of Misshapen Hides
						i(56456),	-- Wild Hammer
					},
				}),
			}),
			-- #elseif BEFORE 11.0.2
			-- CRIEVE PROTIP: When merging, solve for the oldest content first so that the if-statements are simpler to fall through.
			d(DIFFICULTY.DUNGEON.MULTI.NORMAL_HEROIC, MixedNormalAndHeroicLootTable),
			d(DIFFICULTY.DUNGEON.HEROIC, {
				e(131, {	-- General Umbriss
					["crs"] = { 39625 },	-- General Umbriss
					["groups"] = {
						ach(5297),	-- Umbrage for Umbriss
					},
				}),
				e(134, {	-- Erudax
					["crs"] = { 40484 },	-- Erudax
					["groups"] = {
						ach(5298),	-- Don't Need to Break Eggs to Make an Omelet
						ach(5062),	-- Heroic: Grim Batol
						ach(5138),	-- Heroic: Grim Batol Guild Run
					},
				}),
			}),
			-- #elseif AFTER 11.0.2
			-- This is the header for after 11.0.2 where they re-added the timewalking list of items in TWW Season 1 for Heroic and temporary Mythic difficulty.
			d(DIFFICULTY.DUNGEON.NORMAL, {
				["nomerge"] = true,
				["groups"] = MixedNormalAndHeroicLootTable,
			}),
			d(DIFFICULTY.DUNGEON.MULTI.HEROIC_PLUS, {
				["groups"] = bubbleDownFiltered({
					["timeline"] = { ADDED_11_0_2, REMOVED_11_1_0_SEASONSTART },
				},FILTERFUNC_itemID,{
					e(131, {	-- General Umbriss
						["crs"] = { 39625 },	-- General Umbriss
						["groups"] = {
							ach(5297),	-- Umbrage for Umbriss
							i(133283),	-- Modgud's Blade
							i(157612),	-- Dragonkin Ward
							i(133285),	-- Wildhammer Riding Helm
							i(133284),	-- Cursed Skardyn Vest
							i(133354),	-- Glimmerthread Pantalons
							i(133286),	-- Umbriss Band
							i(133282),	-- Skardyn's Grace
						},
					}),
					e(132, {	-- Forgemaster Throngus
						["crs"] = { 40177 },	-- Forgemaster Throngus
						["groups"] = {
							i(157613),	-- Geomancy Slicer
							i(133288),	-- Wand of Untainted Power
							i(133363),	-- Troggstitched Drape
							i(133289),	-- Belt of the Forgemaster
							i(133290),	-- Dark Iron Chain Boots
							i(133287),	-- Ring of Dun Algaz
							i(133291),	-- Throngus's Finger
						},
					}),
					e(133, {	-- Drahga Shadowburner
						["crs"] = { 40319 },	-- Drahga Shadowburner
						["groups"] = {
							i(133296),	-- Windwalker Blade
							i(133374),	-- Courier's Dragonriding Spaulders
							i(133294),	-- Earthshape Pauldrons
							i(133292),	-- Azureborne Cloak
							i(133295),	-- Crimsonborne Bracers
							i(157614),	-- Flame Invoker's Treads
							i(133293),	-- Red Scale Boots
						},
					}),
					e(134, {	-- Erudax
						["crs"] = { 40484 },	-- Erudax
						["groups"] = {
							ach(5298),	-- Don't Need to Break Eggs to Make an Omelet
							ach(5062),	-- Heroic: Grim Batol
							ach(5138),	-- Heroic: Grim Batol Guild Run
							i(133303),	-- Staff of Siphoned Essences
							i(133298),	-- Wild Hammer
							i(133301),	-- Mace of Transformed Bone
							i(133302),	-- Crown of Enfeebled Bodies
							i(133297),	-- Vest of Misshapen Hides
							i(133306),	-- Bracers of Umbral Mending
							i(157615),	-- Flamescale Chain Leggings
							i(133299),	-- Circle of Bone
							i(133305),	-- Corrupted Egg Shell
							i(133304),	-- Gale of Shadows
							i(133300),	-- Mark of Khardros
						},
					}),
				}),
			}),
			-- #elseif AFTER 11.1.0
			-- Return to the old version again when TWW Season 1 ends.
			d(DIFFICULTY.DUNGEON.NORMAL, MixedNormalAndHeroicLootTable),	-- Heroic Grim Batol drops no loot whatsoever anymore
			d(DIFFICULTY.DUNGEON.HEROIC, {
				e(131, {	-- General Umbriss
					["crs"] = { 39625 },	-- General Umbriss
					["groups"] = {
						ach(5297),	-- Umbrage for Umbriss
					},
				}),
				e(134, {	-- Erudax
					["crs"] = { 40484 },	-- Erudax
					["groups"] = {
						ach(5298),	-- Don't Need to Break Eggs to Make an Omelet
						ach(5062),	-- Heroic: Grim Batol
						ach(5138),	-- Heroic: Grim Batol Guild Run
					},
				}),
			}),
			-- #endif
			-- #if ANYCLASSIC
			applyclassicphase(CATA_PHASE_RAGE_OF_THE_FIRELANDS, n(PROTOCOL_INFERNO, {
				["OnInit"] = FUNCTION_TEMPLATES.OnInit.GenerateShouldExcludeFromTooltipForBuffs(470595),
				["groups"] = {
					e(131, {	-- General Umbriss
						["crs"] = { 39625 },	-- General Umbriss
						["groups"] = {
							ach(41143),	-- Protocol Inferno: Grim Batol
						},
					}),
				},
			})),
			-- #endif
		},
	})),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.WOD, bubbleDownSelf({ ["timeline"] = { ADDED_6_0_2 } }, {
	inst(71, {
		q(35404),	-- Grim Batol Reward Quest
		q(35405),	-- Grim Batol Reward Quest
	}),
})));
