---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(SHADOWLANDS, bubbleDown({ ["timeline"] = { ADDED_9_0_2_LAUNCH } }, {
	m(BASTION, {
		n(WORLD_QUESTS, {
			n(REWARDS, {
				i(187858, {	-- Bunny Soul
					["description"] = "Has a chance to be listed as a reward for players of the 'Night Fae' Covenant from Pet Battle World Quests.\n\nSwitch to Night Fae Covenant, and use '/attwq' to see if it's up!",
					["timeline"] = { ADDED_9_1_5 },
				}),
			}),
		}),
		n(WORLD_QUESTS, sharedData({ ["isWorldQuest"] = true }, {
			q(61593),	-- A Crisis of Memory (no idea why there are 2 versions of this)
			q(61689),	-- A Crisis of Memory
			q(60623),	-- AHHH! Real Monsters!
			q(61148, {	-- AHHH! Real Monsters!
				["g"] = {
					i(180789),	-- Devoured Anima (QI!)
				},
			}),
			q(61220),	-- AHHH! Real Monsters!
			q(60929, {	-- Air Supremacy
				["g"] = {
					i(180465),	-- Xandria's Reach (QI!)
				},
			}),
			q(61434, {	-- Alchemy: Flask of Measured Discipline
				["requireSkill"] = ALCHEMY,
				["g"] = {
					r(338195, {["u"]=TRAINING}),	-- Distilled Resolve
					r(338194, {["u"]=TRAINING}),	-- Flask of Measured Discipline
					r(338196, {["u"]=TRAINING}),	-- Pulverized Breezebloom
					o(356553, {	-- Crafter's Crate
						["coord"] = { 52.5, 46.5, BASTION },
						["g"] = { i(182027) },	-- Fresh Breezebloom Trimmings (QI!)
					}),
					i(182025),	-- Distilled Resolve (QI!)
					i(181859),	-- Flask of Measured Discipline (QI!)
					i(182026),	-- Pulverized Breezebloom (QI!)
				},
			}),
			q(62235, {	-- Allay Their Fears
				["g"] = {
					i(183045),	-- Korinna's Allaying Crook (QI!)
				},
			}),
			q(59601, {	-- Assault on the Vestibule
				i(176805),	-- Centurion Armor Fragment (QI!)
				i(172451),	-- Weak Anima Mote (QI!)
				i(176806),	-- Drained Anima-Core (QI!)
			}),
			q(62451),	-- Assault on the Vestibule
			q(60565),	-- A Steward for Every Occasion
			q(61564, {	-- Blacksmithing: Polished Kyrian Shield
				["requireSkill"] = BLACKSMITHING,
				["g"] = {
					r(337619, {["u"]=TRAINING}),	-- Polished Kyrian Shield
					r(337626, {["u"]=TRAINING}),	-- Reforged Kyrian Shield
					r(337621, {["u"]=TRAINING}),	-- Tarnished Kyrian Shield
					o(356553, {	-- Crafter's Crate
						["coord"] = { 52.5, 46.5, BASTION },
						["g"] = { i(181793) },	-- Shattered Kyrian Shield Fragment (QI!)
					}),
					i(181791),	-- Polished Kyrian Shield (QI!)
					i(181790),	-- Reforged Kyrian Shield (QI!)
					i(181792),	-- Tarnished Kyrian Shield (QI!)
				},
			}),
			q(62058),	-- Centurions, Assemble!
			petbattle(q(61784)),	-- Cliffs of Bastion
			q(61439, {	-- Cooking: Steward Stew
				["requireSkill"] = COOKING,
				["g"] = {
					r(338107, {["u"]=TRAINING}),	-- Diced Vegetables
					r(338106, {["u"]=TRAINING}),	-- Grazer Bone Broth
					r(338105, {["u"]=TRAINING}),	-- Steward Stew
					o(356553, {	-- Crafter's Crate
						["coord"] = { 52.5, 46.5, BASTION },
						["g"] = {
							i(182098),	-- Fresh Carrots (QI!)
							i(182100),	-- Fresh Mushrooms (QI!)
							i(182099),	-- Fresh Turnips (QI!)
							i(182024),	-- Grazer Bones (QI!)
						},
					}),
					i(182022),	-- Diced Vegetables (QI!)
					i(182023),	-- Grazer Bone Broth (QI!)
					i(181945),	-- Steward Stew (QI!)
				},
			}),
			q(60534),	-- Disloyal Denizens
			q(61549),	-- Drought Conditions
			q(61629, {	-- Enchanting: True Aim
				["requireSkill"] = ENCHANTING,
				["g"] = {
					r(338121, {["u"]=TRAINING}),	-- True Aim Spear
					o(356553, {	-- Crafter's Crate
						["coord"] = { 52.5, 46.5, BASTION },
						["g"] = { i(182021) },	-- Antique Kyrian Javelin (QI!)
					}),
					i(181948),	-- Enchant: True Aim (QI!)
					i(182020),	-- Transcendent Dust (QI!)
				},
			}),
			q(61520, {	-- Enemy of My Mnemis
				["g"] = {
					i(181711),	-- Depleted Centurion Core (QI!)
					o(356395, {	-- Inert Centurion Core
						["coord"] = { 50.8, 20.7, BASTION },
						["g"] = { i(181710) },	-- Inert Centurion Core (QI!)
					}),
				},
			}),
			q(61441, {	-- Engineering: Power Hammer
				["requireSkill"] = ENGINEERING,
				["g"] = {
					r(338216, {["u"]=TRAINING}),	-- Hardened Bolts
					r(338214, {["u"]=TRAINING}),	-- Piston Assembly
					r(338213, {["u"]=TRAINING}),	-- Power Hammer
					o(356553, {	-- Crafter's Crate
						["coord"] = { 52.5, 46.5, BASTION },
						["g"] = { i(182018) },	-- Machined Solenium Bar (QI!)
					}),
					i(182017),	-- Hardened Bolts (QI!)
					i(182016),	-- Piston Assembly (QI!)
					i(181951),	-- Power Hammer (QI!)
				},
			}),
			q(59658),	-- Express Dominance
			q(61442, {	-- Fishing: Glorious Shimmerfin
				["requireSkill"] = FISHING,
				["g"] = {
					i(181954),	-- Glorious Shimmerfin (QI!)
				},
			}),
			q(60844),	-- Flight School: Falling With Style
			q(60911, {	-- Flight School: Flapping Frenzy
				ach(14741, {	-- Aerial Ace
					["description"] = "Speak to the NPC after completing the WQ and ask to complete the Paragon's Challenge.",
				}),
			}),
			q(60858, {	-- Flight School: Up and Away!
				ach(14762),	-- Breaking the Stratus Fear
			}),
			q(59804),	-- Gateways of Horror
			q(61443, {	-- Herbalism: Windswept Rising Glory
				["requireSkill"] = HERBALISM,
				["g"] = {
					i(181749),	-- Windswept Rising Glory (QI!)
				},
			}),
			q(59771, {	-- History of Corruption
				["g"] = {
					i(177836),	-- Wingpierce Javelin (QI!)
				},
			}),
			q(61446, {	-- Inscription: Invocation of Duty
				["requireSkill"] = INSCRIPTION,
				["g"] = {
					r(338228, {["u"]=TRAINING}),	-- Invocation of Duty
					r(338230, {["u"]=TRAINING}),	-- Opalescent Ink
					r(338229, {["u"]=TRAINING}),	-- Poem on Duty
					o(356553, {	-- Crafter's Crate
						["coord"] = { 52.5, 46.5, BASTION },
						["g"] = {
							i(182202),	-- Borrowed Parchment (QI!)
							i(182015),	-- Opalescent Pigment (QI!)
						},
					}),
					i(181957),	-- Invocation of Duty (QI!)
					i(182014),	-- Opalescent Ink (QI!)
					i(182013),	-- Poem on Duty (QI!)
				},
			}),
			q(61447, {	-- Jewelcrafting: Gleaming Kyranite Necklace
				["requireSkill"] = JEWELCRAFTING,
				["g"] = {
					r(338241, {["u"]=TRAINING}),	-- Gleaming Kyranite Necklace
					r(338242, {["u"]=TRAINING}),	-- Kyranite Dangle
					r(338243, {["u"]=TRAINING}),	-- Solenium Wire
					o(356553, {	-- Crafter's Crate
						["coord"] = { 52.5, 46.5, BASTION },
						["g"] = {
							i(182197),	-- Borrowed Kyranite (QI!)
							i(182012),	-- Borrowed Solenium Nugget (QI!)
						},
					}),
					i(181960),	-- Gleaming Kyranite Necklace (QI!)
					i(182010),	-- Kyranite Dangle (QI!)
					i(182011),	-- Solenium Wire (QI!)
				},
			}),
			q(61449, {	-- Leatherworking: Steelhide Leather Harness
				["requireSkill"] = LEATHERWORKING,
				["g"] = {
					r(338258, {["u"]=TRAINING}),	-- Steelhide Leather Belt
					r(338257, {["u"]=TRAINING}),	-- Steelhide Leather Harness
					r(338259, {["u"]=TRAINING}),	-- Steelhide Leather Strap
					o(356553, {	-- Crafter's Crate
						["coord"] = { 52.5, 46.5, BASTION },
						["g"] = {
							i(182009),	-- Fresh Steelhide (QI!)
							i(182194),	-- Steelhide Sinew (QI!)
							i(182193),	-- Thick Steelhide Leather (QI!)
						},
					}),
					i(182007),	-- Steelhide Leather Belt (QI!)
					i(181965),	-- Steelhide Leather Harness (QI!)
					i(182008),	-- Steelhide Leather Strap (QI!)
				},
			}),
			q(59578),	-- Let's Get Ready to Humble
			q(61337),	-- March of the Eternal Protector
			petbattle(q(61783)),	-- Mega Bite
			petbattle(q(61787)),	-- Micro Defense Force
			q(61467, {	-- Mining: Luminous Solenium Cluster
				["requireSkill"] = MINING,
				["g"] = {
					i(181450),	-- Luminous Solenium Ore (QI!)
				},
			}),
			q(61967, {	-- Remedial Lessons
				["g"] = {
					i(182457),	-- Mirror Fragment (QI!)
					i(182458),	-- Mirror of Ancient Teachings (QI!)
					i(182477),	-- Sacred Text (QI!)
				},
			}),
			q(61468, {	-- Skinning: Plush Copperfur Pelts
				["requireSkill"] = SKINNING,
				["g"] = {
					i(181968),	-- Plush Copperfur Pelt (QI!)
				},
			}),
			q(62258, {	-- Soaring Over Bastion
				["g"] = {
					i(183140),	-- Cloudstrider Antler (QI!)
				},
			}),
			q(61469, {	-- Tailoring: Woven Gossamer Tunic
				["requireSkill"] = TAILORING,
				["g"] = {
					r(338272, {["u"]=TRAINING}),	-- Bolt of Woven Gossamer
					r(338273, {["u"]=TRAINING}),	-- Gossamer Cloth
					r(338271, {["u"]=TRAINING}),	-- Woven Gossamer Tunic
					o(356553, {	-- Crafter's Crate
						["coord"] = { 52.5, 46.5, BASTION },
						["g"] = { i(182104) },	-- Gossamer Thread (QI!)
					}),
					i(182102),	-- Bolt of Woven Gossamer (QI!)
					i(182103),	-- Gossamer Cloth (QI!)
					i(181971),	-- Woven Gossamer Tunic (QI!)
				},
			}),
			petbattle(q(61791)),	-- Thenia's Loyal Companions
			q(59717, {	-- Things Remembered
				ach(14737, {	-- What Bastion Remembered
					crit(49827),	-- Eridia, Hand of Purity
					crit(49828),	-- Kalisthene
					crit(49829),	-- Chyrus, Paragon of Humility
					crit(49830),	-- Kleia
					crit(49831),	-- Pelagos
					crit(49832),	-- Forgelite Sophone
					crit(49833),	-- Uther
					crit(49834),	-- Mikanikos
				}),
			}),
			q(59705, {	-- Things Remembered
				["sym"] = {{"select","achievementID",14737}},	-- What Bastion Remembered
				["g"] = {
					i(177186),	-- Forgotten Memorandum (QI!)
				},
			}),
			q(62241, {	-- Training Regimen
				["g"] = {
					i(183121),	-- Training Gem (QI!)
				},
			}),
			q(59680),	-- Vesiphone's Vicious Vesper
			q(59585),	-- We'll Make an Aspirant Out of You
			q(60958),	-- We Send Only You
		})),
	}),
})));
root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.SL, bubbleDownSelf({ ["timeline"] = { ADDED_9_0_2_LAUNCH } }, {
	m(SHADOWLANDS, {
		m(BASTION, {
			n(PROFESSIONS, {
				n(WORLD_QUESTS, {
					q(62947),	-- Triggers when opening the box during "Leatherworking: Steelhide Leather Harness" (questID 61449) (spellID 345479)
				}),
			}),
			n(WORLD_QUESTS, {
				q(63262),	-- triggered after completing the WQ "Flight School: Up and Away!" (questID 60858) (spellID 347486)
				q(63263),	-- triggered after completing the WQ "Flight School: Flapping Frenzy" (questID 60911) (spellID 347487)
			}),
		}),
	}),
})));