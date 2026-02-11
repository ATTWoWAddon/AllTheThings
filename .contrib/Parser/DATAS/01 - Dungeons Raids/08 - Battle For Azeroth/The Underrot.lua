-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

root(ROOTS.Instances, expansion(EXPANSION.BFA, bubbleDown({ ["timeline"] = { ADDED_8_0_1_LAUNCH } }, {
	inst(1022, {	-- The Underrot
		["coord"] = { 51.6, 65.3, NAZMIR },
		["maps"] = {
			1041,	-- The Underot
			1042,	-- Ruin's Descent
		},
		["lvl"] = 110,
		["groups"] = {
			n(MYTHIC_PLUS, sharedDataSelf({ ["timeline"] = { ADDED_10_1_0, REMOVED_10_2_0 } }, {
				i(206199),	-- Blood-Drenched Robes
				i(206197),	-- Breastplate of Arterial Protection
				i(206198),	-- Gore-Splattered Vest
			})),
			n(WORLD_QUESTS, {
				q(52237, {	-- The Underrot: Restless Horror
					["isWorldQuest"] = true,
					["lvl"] = 110,
				}),
				q(52238, {	-- The Underrot: Mysterious Spores
					["isWorldQuest"] = true,
					["lvl"] = 110,
				}),
			}),
			d(DIFFICULTY.DUNGEON.MULTI.NORMAL_PLUS, {
				n(ZONE_DROPS, {
					i(168142, {	-- Coagulated Miasma
						["description"] = "Drops from Trolls before the first Boss.\n2-3 Runs is enough for 50 Miasma.",
						["sourceQuest"] = 49882,	-- A Test of Quills (might require actually learning Recipe 256301)
					}),
				}),
			}),
			d(DIFFICULTY.DUNGEON.NORMAL, {
				e(2157, {	-- Elder Leaxa
					["crs"] = {
						131318,	-- Elder Leaxa <Voice of G'huun>
					},
					["groups"] = {
						i(159652),	-- Leaxa's Thought-Piercer
						i(159324),	-- Blood Elder's Bindings
						i(159402),	-- Waistguard of Sanguine Fervor
						i(159443),	-- Legplates of Profane Sacrifice
						i(159463),	-- Loop of Pulsing Veins
						i(159624),	-- Rotcrusted Voodoo Doll
					},
				}),
				e(2131, {	-- Cragmaw the Infested
					["crs"] = {
						131817,	-- Cragmaw the Infested
					},
					["groups"] = {
						i(159653),	-- Bile-Stained Crawg Tusks
						i(159134),	-- Heart-Piercing Stalacite
						i(159433),	-- Phosphorescent Armplates
						i(159275),	-- Wristwraps of Twined Morels
						i(159382),	-- Blood Tick Crushers
						i(159344),	-- Underrot Grotto Tenders
						i(159325),	-- Bloodfeaster Belt
						i(159269),	-- Darklight Legwarmers
						i(159436),	-- Fluorescent Flora Stompers
						i(159396),	-- Waders of the Infested
					},
				}),
				e(2130, {	-- Sporecaller Zancha
					["crs"] = {
						131383,	-- Sporecaller Zancha
					},
					["groups"] = {
						i(159654),	-- Corruption Borne Headlopper
						i(159665),	-- Targee of the Ancient Warder
						i(159292),	-- Sporecaller's Shroud
						i(159410),	-- Zancha's Venerated Greatbelt
						i(159384),	-- Corpuscular Greaves
						i(159338),	-- Pustule Bearer's Pants
						i(159270),	-- Blood Warder's Moccasins
						i(159626),	-- Lingering Sporepods
					},
				}),
				e(2158, {	-- Unbound Abomination
					["crs"] = {
						133007,	-- Unbound Abomination
					},
					["groups"] = {
						ach(12500),	-- Underrot
						i(159655),	-- Vile Exasanguinator
						i(159446),	-- Greathelm of the Putrid Path
						i(159381),	-- Visage of Bloody  Horrors
						i(159385),	-- Amalgamated Abomination Spaulders
						i(159267),	-- Pauldrons of Vile Corruption
						i(159323),	-- Shoulders of the Sanguine Monstrosity
						i(159241),	-- Blood-Drenched Robes
						i(159432),	-- Breastplate of Arterial Protection
						i(159330),	-- Gore-Splattered Vest
						i(159253),	-- Gloves of Staunched Wounds
						i(159625),	-- Vial of Animated Blood
					},
				}),
			}),
			d(DIFFICULTY.DUNGEON.HEROIC, {
				["lvl"] = 120,
				["groups"] = {
					e(2157, {	-- Elder Leaxa
						["crs"] = {
							131318,	-- Elder Leaxa <Voice of G'huun>
						},
						["groups"] = {
							i(159652),	-- Leaxa's Thought-Piercer
							i(159324),	-- Blood Elder's Bindings
							i(159402),	-- Waistguard of Sanguine Fervor
							i(159443),	-- Legplates of Profane Sacrifice
							i(159463),	-- Loop of Pulsing Veins
							i(159624),	-- Rotcrusted Voodoo Doll
						},
					}),
					e(2131, {	-- Cragmaw the Infested
						["crs"] = {
							131817,	-- Cragmaw the Infested
						},
						["groups"] = {
							i(159653),	-- Bile-Stained Crawg Tusks
							i(159134),	-- Heart-Piercing Stalacite
							i(159433),	-- Phosphorescent Armplates
							i(159275),	-- Wristwraps of Twined Morels
							i(159382),	-- Blood Tick Crushers
							i(159344),	-- Underrot Grotto Tenders
							i(159325),	-- Bloodfeaster Belt
							i(159269),	-- Darklight Legwarmers
							i(159436),	-- Fluorescent Flora Stompers
							i(159396),	-- Waders of the Infested
						},
					}),
					e(2130, {	-- Sporecaller Zancha
						["crs"] = {
							131383,	-- Sporecaller Zancha
						},
						["groups"] = {
							i(159654),	-- Corruption Borne Headlopper
							i(159665),	-- Targee of the Ancient Warder
							i(159292),	-- Sporecaller's Shroud
							i(159410),	-- Zancha's Venerated Greatbelt
							i(159384),	-- Corpuscular Greaves
							i(159338),	-- Pustule Bearer's Pants
							i(159270),	-- Blood Warder's Moccasins
							i(159626),	-- Lingering Sporepods
						},
					}),
					e(2158, {	-- Unbound Abomination
						["crs"] = {
							133007,	-- Unbound Abomination
						},
						["groups"] = {
							ach(12501),	-- Heroic: Underrot
							i(159655),	-- Vile Exasanguinator
							i(159446),	-- Greathelm of the Putrid Path
							i(159381),	-- Visage of Bloody  Horrors
							i(159385),	-- Amalgamated Abomination Spaulders
							i(159267),	-- Pauldrons of Vile Corruption
							i(159323),	-- Shoulders of the Sanguine Monstrosity
							i(159241),	-- Blood-Drenched Robes
							i(159432),	-- Breastplate of Arterial Protection
							i(159330),	-- Gore-Splattered Vest
							i(159253),	-- Gloves of Staunched Wounds
							i(159625),	-- Vial of Animated Blood
						},
					}),
				},
			}),
			d(DIFFICULTY.DUNGEON.MYTHIC, {
				["difficulties"] = { DIFFICULTY.DUNGEON.KEYSTONE, DIFFICULTY.DUNGEON.MYTHIC },
				["lvl"] = 120,
				["groups"] = {
					e(2157, {	-- Elder Leaxa
						["crs"] = {
							131318,	-- Elder Leaxa <Voice of G'huun>
						},
						["groups"] = {
							ach(12498),	-- Taint Nobody Got Time For That
							i(159652),	-- Leaxa's Thought-Piercer
							i(159324),	-- Blood Elder's Bindings
							i(159443),	-- Legplates of Profane Sacrifice
							i(159463),	-- Loop of Pulsing Veins
							i(159624),	-- Rotcrusted Voodoo Doll
							i(159402),	-- Waistguard of Sanguine Fervor
						},
					}),
					e(2131, {	-- Cragmaw the Infested
						["crs"] = {
							131817,	-- Cragmaw the Infested
						},
						["groups"] = {
							i(159653),	-- Bile-Stained Crawg Tusks
							i(159134),	-- Heart-Piercing Stalacite
							i(159433),	-- Phosphorescent Armplates
							i(159275),	-- Wristwraps of Twined Morels
							i(159382),	-- Blood Tick Crushers
							i(159344),	-- Underrot Grotto Tenders
							i(159325),	-- Bloodfeaster Belt
							i(159269),	-- Darklight Legwarmers
							i(159436),	-- Fluorescent Flora Stompers
							i(159396),	-- Waders of the Infested
						},
					}),
					e(2130, {	-- Sporecaller Zancha
						["crs"] = {
							131383,	-- Sporecaller Zancha
						},
						["groups"] = {
							ach(12549),	-- Not a Fun Guy
							i(159654),	-- Corruption Borne Headlopper
							i(159665),	-- Targee of the Ancient Warder
							i(159292),	-- Sporecaller's Shroud
							i(159410),	-- Zancha's Venerated Greatbelt
							i(159384),	-- Corpuscular Greaves
							i(159338),	-- Pustule Bearer's Pants
							i(159270),	-- Blood Warder's Moccasins
							i(159626),	-- Lingering Sporepods
						},
					}),
					e(2158, {	-- Unbound Abomination
						["crs"] = {
							133007,	-- Unbound Abomination
						},
						["groups"] = {
							ach(12502),	-- Mythic: Underrot
							ach(13003),	-- Mythic: Underrot Guild Run
							ach(12499),	-- Sporely Alive
							i(160829),	-- Underrot Crawg (MOUNT!)
							i(159655),	-- Vile Exasanguinator
							i(159446),	-- Greathelm of the Putrid Path
							i(159381),	-- Visage of Bloody  Horrors
							i(159385),	-- Amalgamated Abomination Spaulders
							i(159267),	-- Pauldrons of Vile Corruption
							i(159323),	-- Shoulders of the Sanguine Monstrosity
							i(159241),	-- Blood-Drenched Robes
							i(159432),	-- Breastplate of Arterial Protection
							i(159330),	-- Gore-Splattered Vest
							i(159253),	-- Gloves of Staunched Wounds
							i(159625),	-- Vial of Animated Blood
						},
					}),
				},
			}),
		},
	}),
})));
