---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(KHAZ_ALGAR, {
	m(AZJ_KAHET, {
		n(VENDORS, {
			n(218218, {	-- "Eight-Shaker" Sallow <Apertifologist>
				["coord"] = { 53.4, 15.3, NERUBAR },
				["groups"] = {
					i(223957, {	-- Recipe: Protein Slurp (RECIPE)
						["cost"] = {{"c", KEJ, 1500}},
					}),
					i(227449, {	-- Robust Fragrance
						["cost"] = {{"c", KEJ, 150}},
					}),
				},
			}),
			n(218179, {	-- Alvus Valavulu <Jewelcrafting Supplies>
				["coord"] = { 47.8, 18.7, NERUBAR },
				["groups"] = {
					i(228914, {	-- Arachnophile Spectacles (TOY!)
						["cost"] = {{"c", KEJ, 1500}},
					}),
					i(223082, {	-- Design: Ominous Energy Crystal (RECIPE!)
						["cost"] = {
							{"i", ARTISANS_ACUITY, 150},
							{"c", KEJ, 1500},
						},
					}),
					i(223081, {	-- Design: Sifted Cave Sand (RECIPE!)
						["cost"] = {
							{"i", ARTISANS_ACUITY, 150},
							{"c", KEJ, 1500},
						},
					}),
					i(224054, {	-- Emergent Crystals of the Surface-Dwellers (CI!)
						["cost"] = {{"c", KEJ, 565}},
						["requireSkill"] = JEWELCRAFTING,
					}),
					i(224433, {	-- Pattern: Jeweler's Purse (RECIPE!)
						["cost"] = {
							{"i", ARTISANS_ACUITY, 150},
							{"c", KEJ, 1500},
						},
					}),
				},
			}),
			n(226211, {	-- Ax'ill <Alchemixologist>
				["coord"] = { 60.80, 42.60, NERUBAR },
				["groups"] = {
					i(223961, {	-- Recipe: Azj-Kahet Special (RECIPE!)
						["cost"] = {{"c", KEJ, 1500}},
					}),
				},
			}),
			n(218224, {	-- "Calmest" Gobbu <Pots, Urns, and Armamnets>
				["coord"] = { 46.6, 29.2, NERUBAR },
				["sym"] = {{"select","itemID",
					222973,	-- Fringe (PET!)
					222968,	-- Itchbite (PET!)
				}},
			}),
			n(218207, {	-- Clutchmother Marn'tiq <Pet Battle Master>
				["coord"] = { 44.2, 17.1, NERUBAR },
				["groups"] = {
					i(222973, {	-- Fringe (PET!)
						["cost"] = {{"c", KEJ, 2250}},
						["isLimited"] = true,
					}),
					i(222968, {	-- Itchbite (PET!)
						["cost"] = {{"c", KEJ, 2250}},
						["isLimited"] = true,
					}),
				},
			}),
			n(223280, {	-- Collector Z'til <Alien Antiquities>
				["coord"] = { 70.0, 31.3, NERUBAR },
				["groups"] = {
					i(226177, {	-- Recipe: Outsider's Provisions (RECIPE!)
						["cost"] = {{"c", KEJ, 2638}},
					}),
				},
			}),
			n(218193, {	-- Iliani <Enchanting Supplies>
				["coord"] = { 45.4, 33.3, NERUBAR },
				["groups"] = {
					i(223136, {	-- Formula: Enchant Bracers - Chant of Armored Avoidance (RECIPE!)
						["cost"] = {
							{"c", KEJ, 1500},
							{"i", ARTISANS_ACUITY, 150},
						},
					}),
					i(223137, {	-- Formula: Enchant Bracers - Chant of Armored Leech (RECIPE!)
						["cost"] = {
							{"c", KEJ, 1500},
							{"i", ARTISANS_ACUITY, 150},
						},
					}),
					i(224050, {	-- Web Sparkles: Pretty and Powerful (CI!)
						["cost"] = {{"c", KEJ, 565}},
						["requireSkill"] = ENCHANTING,
					}),
					i(224428, {	-- Pattern: Magically "Infinite" Messenger (RECIPE!)
						["cost"] = {
							{"i", ARTISANS_ACUITY, 150},
							{"c", KEJ, 1500},
						},
					}),
				},
			}),
			n(218165, {	-- Kama <Skinning & Leatherworking Supplies>
				["coord"] = { 43.1, 20.7, NERUBAR },
				["groups"] = {
					i(223111, {	-- Pattern: Deep Tracker's Cap (RECIPE!)
						["cost"] = {
							{"i", ARTISANS_ACUITY, 150},
							{"c", KEJ, 1500},
						},
					}),
					i(223112, {	-- Pattern: Deep Tracker's Pack (RECIPE!)
						["cost"] = {
							{"i", ARTISANS_ACUITY, 150},
							{"c", KEJ, 1500},
						},
					}),
					i(224427, {	-- Pattern: Hideshaper's Workbag (RECIPE!)
						["cost"] = {
							{"i", ARTISANS_ACUITY, 150},
							{"c", KEJ, 1500},
						},
					}),
					i(223105, {	-- Pattern: Nerubian Alchemist's Hat (RECIPE!)
						["cost"] = {
							{"i", ARTISANS_ACUITY, 150},
							{"c", KEJ, 1500},
						},
					}),
					i(224056, {	-- Uses for Leftover Husks (After You Take Them Apart) (CI!)
						["cost"] = {{"c", KEJ, 565}},
						["requireSkill"] = LEATHERWORKING,
					}),
					i(224007, {	-- Uses for Leftover Husks (How to Take Them Apart) (CI!)
						["cost"] = {{"c", KEJ, 565}},
						["requireSkill"] = SKINNING,
					}),
				},
			}),
			n(218199, {	-- Kram'an <Head Clerk>
				["coord"] = { 49.6, 26.6, NERUBAR },
				["sym"] = {{"select","itemID",
					221850,	-- Freshly Webbed Kebab (PET!)
					223956,	-- Recipe: Everything-on-a-Stick (RECIPE!)
				}},
			}),
			n(218197, {	-- Kurth <Clerk>
				["coord"] = { 49.0, 26.8, NERUBAR },
				["sym"] = {{"select","itemID",
					221850,	-- Freshly Webbed Kebab (PET!)
					223956,	-- Recipe: Everything-on-a-Stick (RECIPE!)
				}},
			}),
			n(218169, {	-- Llyot <Plant Sundries & Herbalism Supplies>
				["coord"] = { 46.9, 16.1, NERUBAR },
				["groups"] = {
					i(224023, {	-- Herbal Embalming Techniques (CI!)
						["cost"] = {{"c", KEJ, 565}},
						["requireSkill"] = HERBALISM,
					}),
					i(224431, {	-- Pattern: Gardener's Seed Satchel (RECIPE!)
						["cost"] = {
							{"i", ARTISANS_ACUITY, 150},
							{"c", KEJ, 1500},
						},
					}),
				},
			}),
			n(227176, {	-- Mattimeo Twinstar <Quartermaster>
				["coord"] = { 23.1, 51.3, AZJ_KAHET },
				["sym"] = {{"sub", "common_vendor", 217989}},	-- Aeden Braesmeld <Weaponsmith>
			}),
			n(223354, {	-- Nataniel Highdawn <Quartermaster>
				["coord"] = { 44.9, 66.4, AZJ_KAHET },	-- He is sporadically walking around the campfire
				["sym"] = {{"sub", "common_vendor", 217989}},	-- Aeden Braesmeld <Weaponsmith>
			}),
			n(218176, {	-- Nuel Prill <Inscription Supplies>
				["coord"] = { 42.2, 27.2, NERUBAR },
				["groups"] = {
					i(224053, {	-- Eight Views on Defense against Hostile Runes (CI!)
						["cost"] = {{"c", KEJ, 565}},
						["requireSkill"] = INSCRIPTION,
					}),
					i(224430, {	-- Pattern: Darkmoon Duffle (RECIPE!)
						["cost"] = {
							{"i", ARTISANS_ACUITY, 150},
							{"c", KEJ, 1500},
						},
					}),
				},
			}),
			n(218198, {	-- Pelefien <Clerk>
				["coord"] = { 50.5, 26.3, NERUBAR },
				["groups"] = {
					i(221850, {	-- Freshly Webbed Kebab (PET!)
						["cost"] = {{"c", KEJ, 2250}},
						["isLimited"] = true,
					}),
					i(223956, {	-- Recipe: Everything-on-a-Stick (RECIPE!)
						["cost"] = {{"c", KEJ, 1500}},
					}),
				},
			}),
			n(218172, {	-- Phylieus <Fish & Fishing Supplies>
				["coord"] = { 51.8, 24.6, NERUBAR },
				["groups"] = {
					i(223979, {	-- Whispering Squirmworm
						["cost"] = {{"c", KEJ, 133}},
						["isLimited"] = true,
					}),
				},
			}),
			n(218189, {	-- Polo <Cooking Supplies>
				["coord"] = { 48.1, 25.3, NERUBAR },
				["groups"] = {
					i(224152, {	-- Recipe: Empress' Farewell (RECIPE!)
						["cost"] = {{"c", KEJ, 1500}},
					}),
					i(223955, {	-- Recipe: Fine Egg Powder (RECIPE!)
						["cost"] = {{"c", KEJ, 1500}},
					}),
					i(223958, {	-- Recipe: Spongey Scramble (RECIPE!)
						["cost"] = {{"c", KEJ, 1500}},
					}),
				},
			}),
			n(218166, {	-- Rakka <Mining & Blacksmithing Supplies>
				["coord"] = { 46.6, 21.9, NERUBAR },
				["groups"] = {
					i(224055, {	-- A Rocky Start (CI!)
						["cost"] = {{"c", KEJ, 565}},
						["requireSkill"] = MINING,
					}),
					i(224432, {	-- Pattern: Excavator's Haversack (RECIPE!)
						["cost"] = {
							{"i", ARTISANS_ACUITY, 150},
							{"c", KEJ, 1500},
						},
					}),
					i(223042, {	-- Plans: Charged Slicer (RECIPE!)
						["cost"] = {
							{"i", ARTISANS_ACUITY, 150},
							{"c", KEJ, 1500},
						},
					}),
					i(223058, {	-- Plans: Coreforged Skeleton Key (RECIPE!)
						["cost"] = {
							{"i", ARTISANS_ACUITY, 150},
							{"c", KEJ, 1500},
						},
					}),
					i(224038, {	-- Smithing After Saronite (CI!)
						["cost"] = {{"c", KEJ, 565}},
						["requireSkill"] = BLACKSMITHING,
					}),
				},
			}),
			n(218195, {	-- Rukku <Engineering Supplies>
				["coord"] = { 58.3, 31.5, NERUBAR },
				["groups"] = {
					i(224052, {	-- Clocks, Gears, Sprockets, and Legs (CI!)
						["cost"] = {{"c", KEJ, 565}},
						["requireSkill"] = ENGINEERING,
					}),
					i(224429, {	-- Pattern: Prodigy's Toolbox (RECIPE!)
						["cost"] = {
							{"i", ARTISANS_ACUITY, 150},
							{"c", KEJ, 1500},
						},
					}),
				},
			}),
			n(218214, {	-- Ruukk <Silks & Secrets>>
				["coord"] = { 51.4, 12.5, NERUBAR },
				["groups"] = {
					i(226515, {	-- Rumor Map: Bounties
						["cost"] = {{"c", KEJ, 25}},
					}),
					i(226516, {	-- Rumor Map: Disruption
						["cost"] = {{"c", KEJ, 25}},
					}),
					i(226517, {	-- Rumor Map: Espionage
						["cost"] = {{"c", KEJ, 25}},
					}),
				},
			}),
			n(218190, {	-- Saaria <Tailoring Supplies>
				["coord"] = { 50.4, 17.0, NERUBAR },
				["groups"] = {
					i(224036, {	-- And That's A Web-Wrap! (CI!)
						["cost"] = {{"c", KEJ, 565}},
						["requireSkill"] = TAILORING,
					}),
					i(224423, {	-- Pattern: Artisan Alchemist's Robe (RECIPE!)
						["cost"] = {
							{"i", ARTISANS_ACUITY, 150},
							{"c", KEJ, 1500},
						},
					}),
				},
			}),
			n(218192, {	-- Siesbarg <Alchemy Supplies>
				["coord"] = { 45.4, 13.0, NERUBAR },
				["groups"] = {
					i(227445, {	-- Inscrutable Fragrance
						["cost"] = {{"c", KEJ, 150}},
					}),
				},
			}),
			n(223176, {	-- Tej the Undying <Dye Removal>
				["coord"] = { 56.5, 35.5, NERUBAR_LOWER },
				["groups"] = {
					i(227447, {	-- Invigorating Fragrance
						["cost"] = {{"c", KEJ, 150}},
					}),
				},
			}),
			n(218209, {	-- Tyro Uwe <Custom Twitchery Goods>
				["coord"] = { 45.0, 16.7, NERUBAR },
				["sourceQuests"] = { 78256 },	-- The General Consensus
				["sym"] = {{"select","itemID",
					221850,	-- Freshly Webbed Kebab (PET!)
					222973,	-- Fringe (PET!)
					222968,	-- Itchbite (PET!)
					223956,	-- Recipe: Everything-on-a-Stick (RECIPE!)
				}},
			}),
			n(218210, {	-- Tyro Whalekk <Organic Pet Food>
				["coord"] = { 43.4, 17.0, NERUBAR },
				["groups"] = {
					i(223960, {	-- Recipe: Little Buddy Biscuits (RECIPE!)
						["cost"] = {{"c", KEJ, 1500}},
					}),
				},
			}),
			n(223134, {	-- Venom Dahn
				["coord"] = { 55.2, 36.5, NERUBAR_LOWER },
				["groups"] = {
					i(227330, {	-- Grottochunk Stew (TODO: move into uncollectible? / food)
						["cost"] = {{"c", KEJ, 137}},
					}),
					i(227448, {	-- Volatile Fragrance
						["cost"] = {{"c", KEJ, 150}},
					}),
				},
			}),
			n(217253, {	-- Ves'trak <Rak-Ush Operations>
				-- not sure if he always was here or locked behind some quest in area
				["coord"] = { 74.7, 81.2, AZJ_KAHET },
				["groups"] = {
					i(221486, {	-- Rak-Ush Threadling (PET!)
						["cost"] = {{"c", KEJ, 2250}},
					}),
				},
			}),
			n(218200, {	-- Yaggi <Sitck Cook>
				["coord"] = { 49.6, 26.2, NERUBAR },
				["sym"] = {{"select","itemID",
					221850,	-- Freshly Webbed Kebab (PET!)
					223956,	-- Recipe: Everything-on-a-Stick (RECIPE!)
				}},
			}),
			n(224337, {	-- Zara'azj the Magnificent <Alchemy Supplies>
				["coord"] = { 55.6, 47.5, NERUBAR_LOWER },
				["groups"] = {
					i(224425, {	-- Pattern: Concoctor's Clutch (RECIPE!)
						["cost"] = {
							{"c", KEJ, 1500},
							{"i", ARTISANS_ACUITY, 150},
						},
					}),
					i(224024, {	-- Theories of Bodily Transmutation, Chapter 8 (CI!)
						["cost"] = {{"c", KEJ, 565}},
						["requireSkill"] = ALCHEMY,
					}),
				},
			}),
			-- This Used for anything??
			n(223177, {	-- Izkrk'tkrzn <Discount Eggs>
				["coord"] = { 59.9, 31.6, NERUBAR_LOWER },
				["groups"] = {
					i(223972),	-- Cracked Weavershell
					i(223973),	-- Sticky Gossamer Sac]
					i(223974),	-- Jostling Ovoid
					i(223975),	-- Suspiciously Heavy Egg
					i(223976),	-- Yesterday's Eggs
				},
			}),
			n(223155, {	-- Old V'k <The Crypt Lord>
				["coord"] = { 50.6, 37.8, NERUBAR_LOWER },
				["groups"] = {
					i(224240, {	-- Nerubian Tombstone
						["cost"] = {{"c", KEJ, 1500}},
					}),
				},
			}),
			-- Seasonal gear vendor for Mark of the Spelunker Supreme (TODO: move & symlink to M+ category)
			-- raid, hero gear
			n(224270, {	-- Ip'xal
				["coord"] = { 57.0, 45.8, NERUBAR_LOWER },
				["groups"] = {
					-- symlink?
					-- everything for 1x
					i(226206),	-- Mark of the Spelunker Supreme
				},
			}),
			-- pvp
			n(224267, {	-- Ab'xal
				["coord"] = { 57.3, 45.9, NERUBAR_LOWER },
				["groups"] = {
					-- symlink?
					-- everything for 1x
					i(226206),	-- Mark of the Spelunker Supreme
				},
			}),
		}),
	}),
}));
