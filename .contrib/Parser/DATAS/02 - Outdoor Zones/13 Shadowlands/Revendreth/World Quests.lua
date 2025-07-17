---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(SHADOWLANDS, bubbleDown({ ["timeline"] = { ADDED_9_0_2_LAUNCH } }, {
	m(REVENDRETH, {
		n(WORLD_QUESTS, {
			n(REWARDS, {
				i(187858, {	-- Bunny Soul
					["description"] = "Has a chance to be listed as a reward for players of the 'Night Fae' Covenant from Pet Battle World Quests.\n\nSwitch to Night Fae Covenant, and use '/attwq' to see if it's up!",
					["timeline"] = { ADDED_9_1_5 },
				}),
			}),
		}),
		n(WORLD_QUESTS, sharedData({
			["isWorldQuest"] = true,
			["lvl"] = { 60 },
		},{
			q(59902),	-- A Curious Cache
			q(59904),	-- A Curious Cache
			q(59905),	-- A Curious Cache
			q(60655, {	-- A Stolen Stone Fiend
				["description"] = "After you initially defeat Edgar the Collector at the end of the quest, go behind the building and speak to a dredger named Penkle to get a |cFFFFFFFFCage Key|r.\n\nThe key is used to open the cage next to Penkle, which gives the pet.",
				["crs"] = { 170189 },	-- Penkle
				["g"] = {
					i(180249),	-- Stone Fiend Tracker (QI!)
					i(180270, {	-- Cage Key
						i(183859),	-- Dal (PET!)
					}),
				},
			}),
			q(60657),	-- Aid From Above
			q(61619, {	-- Alchemy: Elixir of Humility
				["requireSkill"] = ALCHEMY,
				["g"] = {
					r(338204, {["u"]=TRAINING}),	-- Bramblethorn Juice
					r(338202, {["u"]=TRAINING}),	-- Elixir of Humility
					r(338203, {["u"]=TRAINING}),	-- Refined Submission
					o(356880, {	-- Crafter's Crate
						["coord"] = { 32.6, 49.0, REVENDRETH },
						["g"] = { i(182073) },	-- Fresh Bramblethorn Trimmings (QI!)
					}),
					i(182072),	-- Bramblethorn Juice (QI!)
					i(181857),	-- Elixir of Humility (QI!)
					i(182071),	-- Refined Submission (QI!)
				},
			}),
			q(60658),	-- An Endless Appetite
			petbattle(q(61879)),	-- Ashes Will Fall
			q(58144),	-- Battered and Bruised
			q(61620, {	-- Blacksmithing: Prideful Manacles
				["requireSkill"] = BLACKSMITHING,
				["g"] = {
					r(338097, {["u"]=TRAINING}),	-- Binding Cuffs
					r(338094, {["u"]=TRAINING}),	-- Prideful Manacles
					r(338096, {["u"]=TRAINING}),	-- Soft Manacle Chains
					r(338095, {["u"]=TRAINING}),	-- Tempered Manacle Chains
					o(356880, {	-- Crafter's Crate
						["coord"] = { 32.6, 49.0, REVENDRETH },
						["g"] = {
							i(182091),	-- Borrowed Sinvyr Bar (QI!)
							i(182094),	-- Borrowed Sinvyr Rod (QI!)
							i(182089),	-- Enchanted Rivets (QI!)
						},
					}),
					i(182090),	-- Binding Cuffs (QI!)
					i(181378),	-- Prideful Manacles (QI!)
					i(182093),	-- Soft Manacle Chains (QI!)
					i(182092),	-- Tempered Manacle Chains (QI!)
				},
			}),
			q(61621, {	-- Cooking: Skewered Meats
				["requireSkill"] = COOKING,
				["g"] = {
					r(338115, {["u"]=TRAINING}),	-- Ember Sauce
					r(338117, {["u"]=TRAINING}),	-- Seared Cutlets
					r(338116, {["u"]=TRAINING}),	-- Skewered Meats
					o(356880, {	-- Crafter's Crate
						["coord"] = { 32.6, 49.0, REVENDRETH },
						["g"] = {
							i(182096),	-- Ember Chilis (QI!)
							i(182070),	-- Fresh Beast Steak (QI!)
						},
					}),
					i(182068),	-- Ember Sauce (QI!)
					i(182069),	-- Seared Cutlets (QI!)
					i(181947),	-- Skewered Meats (QI!)
				},
			}),
			q(60532, {	-- Destroy the Dominant
				["g"] = {
					i(174110),	-- Disassembly Flag (QI!)
				},
			}),
			q(57443),	-- Dirty Job: Demolition Detail
			q(57465),	-- Dirty Job: Wood Work
			q(61630, {	-- Enchanting: Everburning Brand
				["requireSkill"] = ENCHANTING,
				["g"] = {
					r(338125, {["u"]=TRAINING}),	-- Everburning Brand
					o(356880, {	-- Crafter's Crate
						["coord"] = { 32.6, 49.0, REVENDRETH },
						["g"] = { i(182067) },	-- Antique Duelist's Rapier (QI!)
					}),
					i(181950),	-- Everburning Brand (QI!)
					i(182066),	-- Sanguine Crystal (QI!)
				},
			}),
			q(61622, {	-- Engineering: Duelist's Pistol
				["requireSkill"] = ENGINEERING,
				["g"] = {
					r(338220, {["u"]=TRAINING}),-- Duelist's Pistol
					r(338222, {["u"]=TRAINING}),-- Sinvyr Barrel
					r(338223, {["u"]=TRAINING}),-- Sinvyr Trigger Mechanism
					o(356880, {	-- Crafter's Crate
						["coord"] = { 32.6, 49.0, REVENDRETH },
						["g"] = { i(182064) },	-- Machined Sinvyr Bar (QI!)
					}),
					i(181953),	-- Duelist's Pistol (QI!)
					i(182062),	-- Sinvyr Barrel (QI!)
					i(182063),	-- Sinvyr Trigger Mechanism (QI!)
				},
			}),
			petbattle(q(61885)),	-- Eyegor's Special Friends
			q(61623, {	-- Fishing: Bloodthroated Grouper
				["requireSkill"] = FISHING,
				["g"] = {
					i(181956),	-- Bloodthroated Grouper (QI!)
				},
			}),
			q(59803),	-- For Honor
			q(61544, {	-- Herbalism: Lush Widowbloom
				["requireSkill"] = HERBALISM,
				["g"] = {
					i(181762),	-- Lush Widowbloom (QI!)
				},
			}),
			q(61624, {	-- Inscription: Catalog of Sins
				["requireSkill"] = INSCRIPTION,
				["g"] = {
					r(338234, {["u"]=TRAINING}),	-- Catalog of Sins
					r(338236, {["u"]=TRAINING}),	-- Prideful Ink
					r(338235, {["u"]=TRAINING}),	-- Scroll of Calming Lyrics
					o(356880, {	-- Crafter's Crate
						["coord"] = { 32.6, 49.0, REVENDRETH },
						["g"] = {
							i(182061),	-- Prideful Pigment (QI!)
							i(182309),	-- Rigid Vellum (QI!)
						},
					}),
					i(181959),	-- Catalog of Sins (QI!)
					i(182060),	-- Prideful Ink (QI!)
					i(182059),	-- Scroll of Castigation (QI!)
				},
			}),
			q(59643, {	-- It's Race Day in the Ramparts!
				i(177239, {	-- Racing Permit (EC!)
					["customCollect"] = "SL_COV_VEN",
				}),
				ach(14765),	-- Ramparts Racer
			}),
			q(61625, {	-- Jewelcrafting: Sinister Choker
				["requireSkill"] = JEWELCRAFTING,
				["g"] = {
					r(338247, {["u"]=TRAINING}),	-- Sinister Choker
					r(338248, {["u"]=TRAINING}),	-- Brilliant Bauble
					r(338249, {["u"]=TRAINING}),	-- Fine Sinvyr Chain
					o(356880, {	-- Crafter's Crate
						["coord"] = { 32.6, 49.0, REVENDRETH },
						["g"] = {
							i(182308),	-- Garnet Shard (QI!)
							i(182058),	-- Polished Sinvyr Bar (QI!)
						},
					}),
					i(182056),	-- Brilliant Bauble (QI!)
					i(182057),	-- Fine Sinvyr Chain (QI!)
					i(181964),	-- Sinister Choker (QI!)
				},
			}),
			q(61626, {	-- Leatherworking: Courtly Leather Boots
				["requireSkill"] = LEATHERWORKING,
				["g"] = {
					r(338263, {["u"]=TRAINING}),	-- Courtly Leather Boots
					r(338265, {["u"]=TRAINING}),	-- Softened Leather
					r(338264, {["u"]=TRAINING}),	-- Tortured Sole
					o(356880, {	-- Crafter's Crate
						["coord"] = { 32.6, 49.0, REVENDRETH },
						["g"] = { i(182055) },	-- Ragged Sinrunner Leather (QI!)
					}),
					i(181967),	-- Courtly Leather Boots (QI!)
					i(182054),	-- Softened Leather (QI!)
					i(182053),	-- Tortured Sole (QI!)
				},
			}),
			q(60659),	-- Light Defense
			q(59855),	-- Major Mirror Disruptions
			q(62203),	-- Major Mirror Disruptions
			q(62204),	-- Major Mirror Disruptions
			q(61538, {	-- Mining: Menacing Sinvyr Cluser
				["requireSkill"] = MINING,
				["g"] = {
					i(181720),	-- Menacing Sinvyr Ore (QI!)
				},
			}),
			q(60653, {	-- Mirror Restoration
				["g"] = {
					i(175384),	-- Glass Shard (QI!)
				},
			}),
			q(59808, {	-- Muck it Up
				n(166292, {	-- Bog Beast
					["description"] = "Only available when the |cFFFFD700Muck It Up|r world quest is active.  Loot Primordial Muck from the quest mobs and throw it into the mire for a chance to summon the rare.",
					["questID"] = 59823,
					["isDaily"] = true,
					["coord"] = { 35.8, 32.6, REVENDRETH },
					["g"] = {
						i(180588),	-- Primordial Bogling (PET!)
						i(177880),	-- Primordial Muck (QI!)
						i(180707),	-- Sticky Muck
					},
				}),
			}),
			q(59718, {	-- Parasol Peril
				ach(14766, {	-- Parasoling
					i(182695),	-- Weathered Purple Parasol (TOY!)
				}),
			}),
			petbattle(q(61883)),	-- Resilient Survivors
			q(59599),	-- Retaining the Court
			q(60602, {	-- Secret Service
				ach(14772),	-- Caught in a Bat Romance
			}),
			q(61627, {	-- Skinning: Horrific Leather Hide
				["requireSkill"] = SKINNING,
				["g"] = {
					i(181970),	-- Horrific Leather Hide (QI!)
				},
			}),
			q(58084),	-- Soul Snares
			q(59617, {	-- Stone Fiend Saboteurs
				i(176582),	-- Stolen Missive (QI!)
			}),
			q(60656, {	-- Summon Your Sins
				n(170434, {	-- Amalgamation of Sin
					["description"] = "At the end of the world quest, you will receive either an |cFFFFFFFFAmalgamation of Sin|r or an |cFF0070ddAmalgamation of Sin|r.  The white version summons a guardian elemental, and the blue version will summon the rare.\n\nSo far, there doesn't seem to be a surefire way to get the rare-summoning item.",
					["questID"] = 60836,
					["isDaily"] = true,
					["coord"] = { 66.0, 33.2, REVENDRETH },
					["cost"] = { { "i", 180376, 1 } },	-- Amalgamation of Sin
					["g"] = {
						i(180279),	-- Sinstone Fragment (QI!)
						i(180281),	-- Sinstone Fragment (QI!)
						i(180282),	-- Sinstone Fragment (QI!)
						i(180283),	-- Sinstone Fragment (QI!)
						i(180284),	-- Sinstone Fragment (QI!)
						i(183730),	-- Sinstone-Studded Greathelm
					},
				}),
				i(180298),	-- Amalgamation of Sin (QI!)
				i(180299),	-- Amalgamation of Sin (QI!)
				i(180300),	-- Amalgamation of Sin (QI!)
				i(180301),	-- Amalgamation of Sin (QI!)
				i(180302),	-- Amalgamation of Sin (QI!)
				i(180303),	-- Amalgamation of Sin (QI!)
				i(180304),	-- Amalgamation of Sin (QI!)
				i(180305),	-- Amalgamation of Sin (QI!)
				i(180306),	-- Amalgamation of Sin (QI!)
				i(180357),	-- Amalgamation of Sin (QI!)
				i(180358),	-- Amalgamation of Sin (QI!)
				i(180359),	-- Amalgamation of Sin (QI!)
				i(180360),	-- Amalgamation of Sin (QI!)
				i(180361),	-- Amalgamation of Sin (QI!)
				i(180362),	-- Amalgamation of Sin (QI!)
				i(180363),	-- Amalgamation of Sin (QI!)
				i(180364),	-- Amalgamation of Sin (QI!)
				i(180365),	-- Amalgamation of Sin (QI!)
				i(180366),	-- Amalgamation of Sin (QI!)
				i(180367),	-- Amalgamation of Sin (QI!)
				i(180368),	-- Amalgamation of Sin (QI!)
				i(180369),	-- Amalgamation of Sin (QI!)
				i(180370),	-- Amalgamation of Sin (QI!)
				i(180371),	-- Amalgamation of Sin (QI!)
				i(180372),	-- Amalgamation of Sin (QI!)
				i(180373),	-- Amalgamation of Sin (QI!)
				i(180374),	-- Amalgamation of Sin (QI!)
				i(180376),	-- Amalgamation of Sin (QI!)
			}),
			q(60654, {	-- Swarming Souls
				n(170048, {	-- Manifestation of Wrath
					["description"] = "Only available when the |cFFFFD700Swarming Souls|r world quest is active.  When turning Lost Souls in to the Avowed Ritualist, there is a chance to spawn the rare.",
					["questID"] = 60729,
					["isDaily"] = true,
					["coord"] = { 49.8, 35.0, REVENDRETH },
					["crs"] = { 169917 },	-- Avowed Ritualist
					["g"] = {
						i(180585),	-- Wrathling (PET!)
					},
				}),
			}),
			q(61628, {	-- Tailoring: Looming Tapestry
				["requireSkill"] = TAILORING,
				["g"] = {
					r(338279, {["u"]=TRAINING}),	-- Bolt of Prideweave
					r(338278, {["u"]=TRAINING}),	-- Looming Tapestry
					r(338280, {["u"]=TRAINING}),	-- Prideweave Cloth
					o(356880, {	-- Crafter's Crate
						["coord"] = { 32.6, 49.0, REVENDRETH },
						["g"] = { i(182052) },	-- Thread of Pride (QI!)
					}),
					i(182051),	-- Bolt of Prideweave (QI!)
					i(181973),	-- Looming Tapestry (QI!)
					i(182050),	-- Prideweave Cloth (QI!)
				}
			}),
			q(59852, {	-- Tea Tales: Gubbins and Tubbins
				i(177235, {	-- Tubbins's Lucky Teapot (EC!)
					["customCollect"] = "SL_COV_VEN",
				}),
			}),
			q(59853),	-- Tea Tales: Lost Sybille
			q(59848),	-- Tea Tales: Theotar
			q(59850),	-- Tea Tales: Vulca
			petbattle(q(61886)),	-- The Mind Games of Addius
			q(59581),	-- The Strength of Sinfall
			q(59789, {	-- Tithe and Taxes
				["g"] = {
					i(177839),	-- Anima Siphon (QI!)
				},
			}),
			q(57328, {	-- Trashin' the Camp
				["g"] = {
					i(171310),	-- Ring of Stonebound Control (QI!)
					i(171249),	-- Soul Cage Key (QI!)
				},
			}),
		})),
	}),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.SL, bubbleDownSelf({ ["timeline"] = { ADDED_9_0_2_LAUNCH } }, {
	m(SHADOWLANDS, {
		m(REVENDRETH, {
			n(PROFESSIONS, {
				n(WORLD_QUESTS, {
					q(62940),	-- Triggers when opening the box during "Alchemy: Elixir of Humility" (questID 61619) (spellID 345470)
				}),
			}),
			n(WORLD_QUESTS, {
				q(59858),	-- Tea Tales: Theotar Achievement criteria
				q(59861),	-- Tea Tales: Theotar Achievement criteria
				q(60701),	-- triggered when completing #60653, "Mirror Restoration"
				q(62649),	-- triggered during 'Secret Service WQ'
				q(59857),	-- triggered when completing Tea Tales: Vulca
				q(59859),	-- triggered when completing Tea Tales: Gubbins and Tubbins
				q(59860),	-- triggered when completing Tea Tales: Lost Sybille
				q(60768),	-- opening the cage to get Dal's Courier Badge on "A Stolen Stone Fiend"
			}),
		}),
	}),
})));