---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(SHADOWLANDS, bubbleDown({ ["timeline"] = { ADDED_9_0_2_LAUNCH } }, {
	m(MALDRAXXUS, {
		n(RARES, {
			n(157226, {	-- Pool of Mixed Monstrosities
				["description"] = "The rare that is summoned is determined by the combination of Miscible Ooze (yellow), Mephitic Goo (blue), and Viscous Oil (red) thrown into the pool.",
				["coord"] = { 58.6, 74.2, MALDRAXXUS },
				["modelScale"] = 2,
				["groups"] = sharedData({ ["isDaily"] = true }, {
					n(157310, {	-- Boneslurp
						["description"] = "Requires an equal majority of Blue & Yellow slime.",
						["questID"] = 61722,
						["groups"] = {
							i(184185),	-- Grunge-Caked Collarbone
						},
					}),
					n(157311, {	-- Burnblister
						["description"] = "Requires an equal majority of Red & Yellow slime.",
						["questID"] = 61723,
						["groups"] = {
							i(184175),	-- Bone-Blistering Wand
						},
					}),
					n(157308, {	-- Corrupted Sediment
						["description"] = "Requires a majority of Blue slime.",
						["questID"] = 61719,
						["groups"] = {
							i(184302),	-- Residue-Coated Muck Waders
						},
					}),
					n(157307, {	-- Gelloh
						["description"] = "Requires a majority of Yellow slime.",
						["questID"] = 61721,
						["groups"] = {
							i(182287),	-- Eternally Preserved Scarab
							i(183516),	-- Stained Bloodfused Mantle
						},
					}),
					n(157312, {	-- Oily Invertebrate
						["description"] = "Requires an equal portion of Red, Blue, & Yellow slime.",
						["questID"] = 61724,
						["groups"] = {
							i(184300),	-- Fused Spineguard
							i(181270),	-- Invertebrate Oil (PET!)
							i(184155),	-- Recovered Containment Pack
						},
					}),
					n(157294, {	-- Pulsing Leech
						["description"] = "Requires a majority of Red slime.",
						["questID"] = 61718,
						["groups"] = {
							i(184279),	-- Siphoning Blood-Drinker
						},
					}),
					n(157309, {	-- Violet Mistake
						["description"] = "Requires an equal majority of Red & Blue slime.",
						["questID"] = 61720,
						["groups"] = {
							i(182079),	-- Hulking Deathroc (MOUNT!)
							i(184301),	-- Twenty-Loop Violet Girdle
						},
					}),

				}),
			}),
			header(HEADERS.Achievement, 14372, {	-- Theater of Pain
				["description"] = "These mobs all spawn in the Theater of Pain, a free-for-all arena in the middle of Maldraxxus.",
				["questID"] = 62786,	-- seems to trigger on first ToP rare killed each day
				["groups"] = {
					n(COMMON_BOSS_DROPS, {
						["crs"] = {
							162873,	-- Azmogal
							162875,	-- Devmorta
							162880,	-- Mistress Dyrax
							168147,	-- Sabriel the Bonecleaver
							162874,	-- Ti'or
							162853,	-- Unbreakable Urtz
							162872,	-- Xantuth the Blighted
						},
						["groups"] = {
							i(184062),	-- Battle-Bound Warhound (MOUNT!)
						},
					}),
					n(162873),	-- Azmogal
					n(162875),	-- Devmorta
					n(162880),	-- Mistress Dyrax
					n(162874),	-- Ti'or
					n(162853),	-- Unbreakable Urtz
					n(162872),	-- Xantuth the Blighted
				},
			}),
		}),
		n(RARES, sharedData({ ["isDaily"] = true }, {
			n(162727, {	-- Bubbleblood
				["coord"] = { 52.2, 35.1, MALDRAXXUS },
				["questID"] = 58870,
				["groups"] = {
					i(184476),	-- Regenerating Slime Vial (TOY!)
					i(184290),	-- Blood-Dyed Bonesaw
					i(184154),	-- Grungy Containment Pack
				},
			}),
			n(159105, {	-- Collector Kash
				["coord"] = { 49.8, 24.6, MALDRAXXUS },
				["questID"] = 58005,
				["groups"] = {
					i(184188),	-- Collector's Corpse Gambrel
					i(183692, {	-- Jagged Bonesaw
						["description"] = "This may drop for any character on your account once the toy 'Acolyte's Guise' has been learned by a Necrolord character.",
					}),
					i(183833),	-- Kash's Bag of Junk
					i(184181),	-- Kash's Favored Hook
					i(184189),	-- Stained Fleshgorer
					i(181797),	-- Strange Cloth
					i(184182),	-- Strengthened Abomination Hook
				},
			}),
			n(157058, {	-- Corspecutter Moroc
				["coord"] = { 26.6, 27.2, MALDRAXXUS },
				["questID"] = 58335,
				["groups"] = {
					i(184177),	-- Grotesque Goring Pick
					i(183833),	-- Kash's Bag of Junk
					i(184176),	-- Moroc's Boneslicing Warglaive
					i(181797),	-- Strange Cloth
				},
			}),
			n(162711, {	-- Deadly Dapperling
				["coord"] = { 76.8, 57.0, MALDRAXXUS },
				["questID"] = 58868,
				["groups"] = {
					i(181263),	-- Shy Melvin (PET!)
					i(184280),	-- Dapper Threads
					i(184224),	-- Dapperling Seeds
				},
			}),
			n(162797, {	-- Deepscar <Pit Hound>
				["coords"] = {
					{ 46.8, 45.6, MALDRAXXUS },
					{ 54.0, 45.6, MALDRAXXUS },
					{ 48.2, 51.6, MALDRAXXUS },
				},
				["questID"] = 58878,
				["groups"] = {
					i(182191),	-- Slobber-Soaked Chew Toy
				},
			}),
			n(162669, {	-- Devour'us
				["coord"] = { 45.6, 28.4, MALDRAXXUS },
				["questID"] = 58835,
				["groups"] = {
					i(184178),	-- Worldrending Claymore
				},
			}),
			n(162588, {	-- Gristlebeak
				["description"] = "Kill the Unusual Eggs and Gristled Hatchlings to lure Gristlebeak.",
				["crs"] = {
					168258,	-- Gristled Hatchling
					162761,	-- Unusual Egg
				},
				["coord"] = { 57.6, 51.6, MALDRAXXUS },
				["questID"] = 58837,
				["groups"] = {
					i(182196),	-- Arbalest of the Colossal Predator
				},
			}),
			n(161105, {	-- Indomitable Schmitd
				["coord"] = { 39.8, 43.4, MALDRAXXUS },
				["questID"] = 58332,
				["groups"] = {
					i(182192),	-- Knee-Obstructing Legguards
					i(174070),	-- Indomitable Hide
				},
			}),
			n(174108, {	-- Necromantic Anomaly
				["coord"] = { 73.0, 29.2, MALDRAXXUS },
				["questID"] = 62369,
				["groups"] = {
					i(184174),	-- Clasp of Death
					i(181810, {	-- Phylactery of the Dead Conniver
						["customCollect"] = "SL_COV_NEC",	-- Necrolord
					}),
				},
			}),
			n(162690, {	-- Nerissa Heartless
				["coord"] = { 65.8, 36.0, MALDRAXXUS },
				["questID"] = 58851,
				["groups"] = {
					i(182084),	-- Gorespine (MOUNT!)
					i(184179),	-- Lichborn Commander's Boneblade
					i(174076),	-- Necromantic Oil
				},
			}),
			n(162767, {	-- Pesticide
				["coord"] = { 53.8, 61.0, MALDRAXXUS },
				["questID"] = 58875,
				["groups"] = {
					i(182205),	-- Scarab-Shell Faceguard
				},
			}),

			n(159753, {	-- Ravenomous
				["description"] = "Crush Boneweave Spiderlings in the area for a chance to spawn the rare. After flying around for a little while, it will land and be attackable.",
				["coord"] = { 54.0, 18.4, MALDRAXXUS },
				["crs"] = { 159901 },	-- Boneweave Spiderling
				["questID"] = 58004,
				["groups"] = {
					i(181283),	-- Foulwing Buzzer (PET!)
					i(184184),	-- Ravenomous's Acid-Tipped Stinger
				},
			}),
			n(158406, {	-- Scunner
				["coord"] = { 62.1, 75.8, MALDRAXXUS },
				["questID"] = 58006,
				["groups"] = {
					i(181267),	-- Writhing Spine (PET!)
					i(183833),	-- Kash's Bag of Junk
					i(184287),	-- Scum-Caked Epaulets
					i(181797),	-- Strange Cloth
				},
			}),
			n(159886, {	-- Sister Chelicerae
				["description"] = "Destroy the Intricate Webbing and defeat waves of Chelicerae's Children.",
				["crs"] = {
					159895,	-- Chelicerae's Children
					159885,	-- Intricate Webbing
				},
				["coord"] = { 55.5, 23.6, MALDRAXXUS },
				["questID"] = 58003,
				["groups"] = {
					i(181172),	-- Boneweave Hatchling (PET!)
					i(184289),	-- Spindlefang Spellblade
				},
			}),
			n(162528, {	-- Smorgas the Feaster
				["description"] = "Click the |cFFFFFFFFBloody Lump|r for a chance to spawn the rare. Clicking the object will aggro all the Peaceful Bloodlice in the area.",
				["coord"] = { 42.5, 53.4, MALDRAXXUS },
				["questID"] = 58768,
				["groups"] = {
					i(181265),	-- Corpselouse Larva (PET!)
					i(181266),	-- Feasting Larva (PET!)
					i(184299),	-- Goresoaked Carapace
					i(184038, {	-- Trained Corpselice
						["description"] = "This will only drop for Necrolords that have built the rank 4 Abomination table.",
						["customCollect"] = "SL_COV_NEC",	-- Necrolord
					}),
				},
			}),
			n(162586, {	-- Tahonta
				["coord"] = { 44.6, 52.0, MALDRAXXUS },
				["questID"] = 58783,
				["description"] = "You must be a Necrolord & have the Abomination building construct \"Neena\" with you otherwise the |cFFFFFFFFBonehoof Tauralus Mount|r can't drop. It's not required to use the extra action button to loot Tahonta.",
				["groups"] = {
					i(182075, {	-- Bonehoof Tauralus (MOUNT!)
						["description"] = "You must be a Necrolord & have the Abomination building construct \"Neena\" with you for this mount to have a chance of dropping. It's not required to use the extra action button to loot Tahonta.",
						["customCollect"] = "SL_COV_NEC",	-- Necrolord
					}),
					i(182190),	-- Tauralus Hide Collar
				},
			}),
			n(160059, {	-- Taskmaster Xox <Master Taskmaster>
				["description"] = "Kill non-rare taskmasters (Bloata, Joyless, and Mortis) and Xox has a chance to spawn in their place.",
				["crs"] = {
					160204,	-- Taskmaster Bloata
					160230,	-- Taskmaster Joyless
					160226,	-- Taskmaster Mortis
				},
				["coord"] = { 50.7, 20.1, MALDRAXXUS },
				["questID"] = 58091,
				["groups"] = {
					i(184193),	-- Callus-Forged Hook
					i(184186),	-- Flesh-Fishing Hook
					i(184192),	-- Pristine Alabaster Gorer
					i(184187),	-- Taskmaster's Tenderizer
				},
			}),

			n(162180, {	-- Thread Mistress Leeda
				["description"] = "Kill the Razorthread Weavers in Leeda's room, and there is a chance that she will spawn in their place.",
				["crs"] = { 162220 },	-- Razorthread Weaver
				["coord"] = { 24.0, 43.1, MALDRAXXUS },
				["questID"] = 58678,
				["groups"] = {
					i(184180),	-- Leeda's Unrefined Mask
				},
			}),
			n(162819, {	-- Warbringer Mal'Korak
				["crs"] = { 162818 },	-- Wartusk
				["coord"] = { 34.4, 79.4, MALDRAXXUS },
				["questID"] = 58889,
				["groups"] = {
					i(182085),	-- Blisterback Bloodtusk (MOUNT!)
					i(184288),	-- Ruthless Warlord's Barrier
				},
			}),
			n(157125, {	-- Zargox the Reborn
				["description"] = "Get an |cFFFFFFFFAni-Matter Orb|r from Synder Sixfold at |cFFFFFFFF26.3, 42.7|r (either while doing the weekly quest |cFF349cffAni-Matter Animator|r, or speak to Synder afterward to get another orb from him). Use it to reanimate soldiers near the rare's spawnpoint until a yellow dot appears on your minimap, indicating that Zargox is available to summon.",
				["crs"] = { 157124 },	-- Bone Mass
				["coord"] = { 29.0, 51.6, MALDRAXXUS },
				["questID"] = 59290,
				["groups"] = {
					i(183690, {	-- Ashen Ink
						["description"] = "This may drop for any character on your account once the toy 'Acolyte's Guise' has been learned by a Necrolord character.",
					}),
					i(184285),	-- Boneclutched Shackles
					i(181804, {	-- Trophy of the Reborn Bonelord
						["customCollect"] = { "SL_COV_NEC" },	-- Necrolord
					}),
				},
			}),
		})),
	}),
})));
root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.SL, bubbleDownSelf({ ["timeline"] = { ADDED_9_0_2_LAUNCH } }, {
	m(SHADOWLANDS, {
		m(MALDRAXXUS, {
			n(RARES, {
				q(62805),	-- Pulsing Leech secondary quest
				q(61989),	-- Deadly Dapperling secondary quest
				q(61987),	-- Deepscar secondary kill
				q(61991),	-- Gristlebeak secondary kill
				q(61988),	-- Indomitable Schmitd secondary quest
				q(61992),	-- Pesticide secondary quest
				q(61986),	-- Tahonta secondary quest
			}),
		}),
	}),
})));
