---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(SHADOWLANDS, bubbleDown({ ["timeline"] = { ADDED_9_0_2_LAUNCH } }, {
	m(MALDRAXXUS, {
		n(WORLD_QUESTS, {
			n(REWARDS, {
				i(183111, {	-- Animated Ulna
					["description"] = "A rare reward from pet battle WQs in Maldraxxus.",
				}),
				i(187858, {	-- Bunny Soul
					["description"] = "Has a chance to be listed as a reward for players of the 'Night Fae' Covenant from Pet Battle World Quests.\n\nSwitch to Night Fae Covenant, and use '/attwq' to see if it's up!",
					["timeline"] = { ADDED_9_1_5 },
				}),
			}),
		}),
		n(WORLD_QUESTS, sharedData({
			["isWorldQuest"] = true,
		},{
			q(57205),	-- A Few Bumps Along the Way
			q(59703),	-- Abombing Run
			q(61605, {	-- Alchemy: Draught of Grotesque Strength
				["requireSkill"] = ALCHEMY,
				["groups"] = {
					r(338199, {["u"]=TRAINING}),	-- Brutal Oil
					r(338200, {["u"]=TRAINING}),	-- Crushed Bones
					r(338198, {["u"]=TRAINING}),	-- Draught of Grotesque Strength
					o(356879, {	-- Crafter's Crate
						["coord"] = { 50.3, 53.2, MALDRAXXUS },
						["groups"] = { i(181858) },	-- Draught of Grotesque Strength (QI!)
					}),
					i(182049),	-- Bones of Defeated Enemies (QI!)
					i(182047),	-- Brutal Oil (QI!)
					i(182048),	-- Crushed Bones (QI!)
				},
			}),
			q(61352),	-- All Will Be Consumed
			q(61353),	-- All Will Be Consumed
			q(58605),	-- Amateur Night
			q(61343),	-- Battles Won Long Ago
			q(59836),	-- Battles Won Long Ago
			q(61342),	-- Battles Won Long Ago
			q(57650),	-- Better Off Dead
			q(61606, {	-- Blacksmithing: Soul Razor
				["requireSkill"] = BLACKSMITHING,
				["groups"] = {
					r(338090, {["u"]=TRAINING}),	-- Hardened Heavy Razor
					r(338091, {["u"]=TRAINING}),	-- Soft Heavy Razor
					r(338088, {["u"]=TRAINING}),	-- Soul Razor
					o(356879, {	-- Crafter's Crate
						["coord"] = { 50.3, 53.2, MALDRAXXUS },
						["groups"] = { i(182088) },	-- Borrowed Oxxein Ore (QI!)
					}),
					i(182086),	-- Hardened Heavy Razor (QI!)
					i(182087),	-- Soft Heavy Razor (QI!)
					i(181862),	-- Soul Razor (QI!)
				},
			}),
			q(58207),	-- Buggin' Out
			q(61477),	-- Calling the Champions
			q(60531, {	-- Chosen Champions
				["groups"] = {
					i(174110),	-- Disassembly Flag (QI!)
				},
			}),
			q(61607, {	-- Cooking: Spider Jerky
				["requireSkill"] = COOKING,
				["groups"] = {
					r(338110, {["u"]=TRAINING}),	-- Spider Jerky
					r(338113, {["u"]=TRAINING}),	-- Thick Spider Meat
					o(356879, {	-- Crafter's Crate
						["coord"] = { 50.3, 53.2, MALDRAXXUS },
						["groups"] = {
							i(182046),	-- Grave Dust (QI!)
							i(182045),	-- Thick Spider Legs (QI!)
						},
					}),
					i(181946),	-- Spider Jerky (QI!)
					i(182044),	-- Thick Spider Meat (QI!)
				},
			}),
			q(58490, {	-- Deadly Reminder
				n(161857, {	-- Nirvaska the Summoner
					["questID"] = 58629,
					["description"] = "Only spawns when the |cFFFFD700Deadly Reminder|r world quest is active.",
					["coord"] = { 50.6, 63.2, MALDRAXXUS },
					["isDaily"] = true,
					["groups"] = {
						i(181811, {	-- Beckoner's Shadowy Crystal
							["customCollect"] = "SL_COV_NEC",	-- Necrolord
						}),
						i(183700),	-- Forgotten Summoner's Shoulderpads
					},
				}),
			}),
			q(61141, {	-- Deathfang's Favorite Toy
				["groups"] = {
					i(180810),	-- Throwin' Skull (QI!)
				},
			}),
			q(61708, {	-- Drawing Out The Poison
				["groups"] = {
					o(339750, {	-- Golden Egg
						["coord"] = { 58.8, 26.5, MALDRAXXUS },
						["groups"] = { i(174043) },	-- Phylactery of Arin'gore (QI!)
					}),
				},
			}),
			q(61608, {	-- Enchanting: Unbreakable Crystal
				["requireSkill"] = ENCHANTING,
				["groups"] = {
					r(338123, {["u"]=TRAINING}),	-- Unbreakable Crystal
					o(356879, {	-- Crafter's Crate
						["coord"] = { 50.3, 53.2, MALDRAXXUS },
						["groups"] = { i(182043) },	-- Antique Necromancer's Staff (QI!)
					}),
					i(182042),	-- Necrotic Essence (QI!)
					i(181949),	-- Unbreakable Crystal (QI!)
				},
			}),
			q(61609, {	-- Engineering: Boneclad Stake Launcher
				["requireSkill"] = ENGINEERING,
				["groups"] = {
					r(338218, {["u"]=TRAINING}),	-- Bone Reinforced Oxxein Tubing
					r(338217, {["u"]=TRAINING}),	-- Boneclad Stake Launcher
					r(338219, {["u"]=TRAINING}),	-- Handful of Oxxein Bolts
					o(356879, {	-- Crafter's Crate
						["coord"] = { 50.3, 53.2, MALDRAXXUS },
						["groups"] = { i(182040) },	-- Machined Oxxein Bar (QI!)
					}),
					i(182038),	-- Bone Reinforced Oxxein Tubing (QI!)
					i(181952),	-- Boneclad Stake Launcher (QI!)
					i(182039),	-- Handful of Oxxein Bolts (QI!)
				},
			}),
			petbattle(q(61867)),	-- Extra Pieces
			petbattle(q(61870)),	-- Failed Experiments
			q(61610, {	-- Fishing: Skeletal Mudskipper
				["requireSkill"] = FISHING,
				["groups"] = {
					i(181955),	-- Skeletal Mudskipper (QI!)
				},
			}),
			q(61667),	-- Forged in Secret
			q(61189, {	-- Further Gelatinous Research
				["groups"] = {
					i(180876),	-- Aqueous Material Accumulator (QI!)
				},
			}),
			q(58221, {	-- Gettin' Even
				["groups"] = {
					i(184576),	-- Stolen Equipment (QI!)
				},
			}),
			q(61545, {	-- Herbalism: Engorged Marrowroot
				["requireSkill"] = HERBALISM,
				["groups"] = {
					i(181388),	-- Lush Marrowroot (QI!)
				},
			}),
			q(61611, {	-- Inscription: Litany of Might
				["requireSkill"] = INSCRIPTION,
				["groups"] = {
					r(338231, {["u"]=TRAINING}),	-- Litany of Might
					r(338233, {["u"]=TRAINING}),	-- Necrotic Ink
					r(338232, {["u"]=TRAINING}),	-- Scroll of Unyielding Strength
					o(356879, {	-- Crafter's Crate
						["coord"] = { 50.3, 53.2, MALDRAXXUS },
						["groups"] = {
							i(182297),	-- Flayed Flesh (QI!)
							i(182037),	-- Necrotic Pigment (QI!)
						},
					}),
					i(181958),	-- Litany of Might (QI!)
					i(182036),	-- Necrotic Ink (QI!)
					i(182035),	-- Scroll of Unyielding Strength (QI!)
				},
			}),
			q(61612, {	-- Jewelcrafting: Carved Crystal Ring
				["requireSkill"] = JEWELCRAFTING,
				["groups"] = {
					r(338244, {["u"]=TRAINING}),	-- Carved Crystal Ring
					r(338246, {["u"]=TRAINING}),	-- Faceted Crystal
					r(338245, {["u"]=TRAINING}),	-- Hollowed Crystal
					o(356879, {	-- Crafter's Crate
						["coord"] = { 50.3, 53.2, MALDRAXXUS },
						["groups"] = { i(182034)	},	-- Jagged Necrotic Crystal (QI!)
					}),
					i(181961),	-- Carved Crystal Ring (QI!)
					i(182033),	-- Faceted Crystal (QI!)
					i(182032),	-- Hollowed Crystal (QI!)
				},
			}),
			q(61540),	-- Just Winging It
			q(61613, {	-- Leatherworking: Bonestudded Fists
				["requireSkill"] = LEATHERWORKING,
				["groups"] = {
					r(338260, {["u"]=TRAINING}),	-- Bonestudded Fist
					r(338262, {["u"]=TRAINING}),	-- Cleaned Hide
					o(356879, {
						["coord"] = { 50.3, 53.2, MALDRAXXUS },
						["groups"] = {
							i(182029),	-- Corpsestitch Thread (QI!)
							i(182031),	-- Unused Flesh (QI!)
						},
					}),
					i(181966),	-- Bonestudded Fist (QI!)
					i(182030),	-- Cleaned Hide (QI!)
				},
			}),
			q(61539, {	-- Liches Get Stitches
				["groups"] = {
					i(184560),	-- Ritual Focus (QI!)
				},
			}),
			petbattle(q(61866)),	-- Mighty Minions of Maldraxxus
			q(61537, {	-- Mining: Monolithic Oxxein Cluster
				["requireSkill"] = MINING,
				["groups"] = {
					i(181719),	-- Monolithic Oxxein Ore (QI!)
				},
			}),
			q(59234),	-- Mixing a Mess
			q(58437, {	-- Parts to a Whole
				["groups"] = {
					i(174110),	-- Disassembly Flag (QI!)
				},
			}),
			q(58505, {	-- Planned Demise
				["groups"] = {
					i(174233),	-- Construct Field Plan (QI!)
					i(174231),	-- Lich Battle Plan (QI!)
					i(174232),	-- Vyraz Tactical Plan (QI!)
				},
			}),
			q(59642, {	-- Pulling Hairs
				["groups"] = {
					i(176846),	-- Corpselouse Bristles (QI!)
					i(176847),	-- Sour Suckle's Antenna (QI!)
				},
			}),
			q(61614, {	-- Skinning: Rugged Carapace
				["requireSkill"] = SKINNING,
				["groups"] = {
					i(181969),	-- Rugged Carapace (QI!)
				},
			}),
			q(60211),	-- Spore Losers
			q(61060),	-- Spore Losers
			q(60231, {	-- State of Decay
				i(177245, {	-- Maldraxxi Challenge Banner (EC!)
					["customCollect"] = "SL_COV_VEN",
				}),
			}),
			q(61615, {	-- Tailoring: Haunting Hood
				["requireSkill"] = TAILORING,
				["groups"] = {
					r(338277, {["u"]=TRAINING}),	-- Bleakcloth
					r(338276, {["u"]=TRAINING}),	-- Bolt of Bleakcloth
					r(338275, {["u"]=TRAINING}),	-- Haunting Hood
					o(356879, {	-- Crafter's Crate
						["coord"] = { 50.3, 53.2, MALDRAXXUS },
						["groups"] = { i(182028)	},	-- Bleakthread (QI!)
					}),
					i(182117),	-- Bleakcloth (QI!)
					i(182116),	-- Bolt of Bleakcloth (QI!)
					i(181972),	-- Haunting Hood (QI!)
				},
			}),
			q(59743, {	-- The Spider on the Wall
				["groups"] = {
					i(177712),	-- Envoy's Letter (QI!)
					i(177710),	-- Patrol Schedule (QI!)
					i(177693),	-- Requisitioner's Scroll (QI!)
				},
			}),
			petbattle(q(61868)),	-- Uncomfortably Undercover
			q(58601),	-- Web of Information
		})),
	}),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.SL, bubbleDownSelf({ ["timeline"] = { ADDED_9_0_2_LAUNCH } }, {
	m(SHADOWLANDS, {
		m(MALDRAXXUS, {
			n(PROFESSIONS, {
				n(WORLD_QUESTS, {
					q(62942),	-- Triggers when opening the box during "Cooking: Spider Jerky" (questID 61607) (spellID 345473)
					q(62944),	-- Triggers when opening the box during "Engineering: Boneclad Stake Launcher" (questID 61609) (spellID 345476)
					q(62946),	-- Triggers when opening the box during "Jewelcrafting: Carved Crystal Ring" (questID 61612) (spellID 345478)
					q(62948),	-- Triggers when opening the box during "Tailoring: Haunting Hood" (questID 61615) (spellID 345480)
				}),
			}),
			n(WORLD_QUESTS, {
				q(57210),	-- triggered when completing the ballista at 37.6, 50.8 during #57205, "A Few Bumps Along the Way"
				q(57241),	-- triggered when completing the ballista at 38.8, 48.6 during #57205, "A Few Bumps Along the Way"
				q(57242),	-- triggered when completing #57205, "A Few Bumps Along the Way"
				q(62922),	-- triggered when turning in the Mixing a Mess WQ
			}),
		}),
	}),
})));
