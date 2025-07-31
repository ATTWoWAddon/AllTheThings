---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
local IRON_INVASION = createHeader({
	readable = "The Iron Invasion",
	icon = 132396,
	text = {
		en = "The Iron Invasion",
		es = "La invasión de Hierro",
		de = "Die Eiserne Invasion",
		fr = "L’invasion de Fer",
		it = "L'invasione di ferro",
		mx = "La invasión de Hierro",
		pt = "A invasão de ferro",
		ru = "Железное вторжение",
		ko = "강철의 침략",
		cn = "钢铁入侵",
		tw = "鋼鐵入侵",
	},
	description = {
		en = "If you are phased into the Invasion Blasted Lands and need to go to the pre-Invasion Blasted Lands, then you need to speak with Zidormi, who is standing on a small hill near the entrance of the zone from Swamp of Sorrows.",
	},
	lore = {
		en = "The Iron Horde have activated their Dark Portal and have begun streaming through it in the Blasted Lands. They've made it all the way to Blackrock Spire and have designs on the rest of Azeroth. In the Blasted Lands, Nethergarde Keep has fallen, Okril'lon Hold (previously Dreadmaul Hold) has been taken over, and the Dreadmaul tribe have taken up with the Iron Horde as endless numbers of orcs stream from the Dark Portal.",
	},
})
root(ROOTS.ExpansionFeatures, expansion(EXPANSION.WOD, {
	n(IRON_INVASION, {
		-- This redirects the mini list to use this header instead when this quest is NOT active and the original mapID is the map that is is currently active
		["zone-artIDs"] = { 628 },
		["timeline"] = { ADDED_6_0_2 },
		["maps"] = { BLASTED_LANDS },
		["crs"] = { 88206 },	-- Zidormi
		["groups"] = {
			n(ACHIEVEMENTS, {
				ach(9618, {		-- The Iron Invasion
					["sourceQuests"] = {
						36941,	-- Report to the King
						36940,	-- Warning Orgrimmar
					},
					["timeline"] = { ADDED_6_0_2, REMOVED_6_0_3_LAUNCH },
					["groups"] = {
						title(289, {		-- <Name> of the Iron Vanguard
							["timeline"] = { ADDED_6_0_2, REMOVED_6_0_3_LAUNCH },
						}),
					},
				}),
			}),
			n(FLIGHT_PATHS, {
				fp(1538, {	-- Shattered Beachhead
					["cr"] = 85731,	-- Araazi <Flight Master>
					["coord"] = { 67.6, 28.0, BLASTED_LANDS },
					["timeline"] = { ADDED_6_0_2 },
					["races"] = ALLIANCE_ONLY,
				}),
				fp(1537, {	-- Shattered Landing
					["cr"] = 85734,	-- Ameri Windblade <Flight Master>
					["coord"] = { 72.8, 48.6, BLASTED_LANDS },
					["timeline"] = { ADDED_6_0_2 },
					["races"] = HORDE_ONLY,
				}),
			}),
			n(QUESTS, {
				q(35460, {	-- Attack of the Iron Horde (A)
					["qg"] = 82270,	-- Vindicator Maraad
					["coord"] = { 66.6, 28.2, BLASTED_LANDS },
					["timeline"] = { ADDED_6_0_2 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/8 Ironmarch Grunt slain
							["providers"] = {
								{ "n", 76189 },	-- Ironmarch Grunt
								{ "n", 76556 },	-- Ironmarch Grunt
								{ "n", 84228 },	-- Ironmarch Skirmisher <Iron Horde>
							},
						}),
						i(118761, {	-- Invader's Scarlet Seal
							["timeline"] = { ADDED_6_0_2 },
						}),
						i(118762, {	-- Portal-Breaker's Band
							["timeline"] = { ADDED_6_0_2 },
						}),
						i(118763, {	-- Blackstone Signet
							["timeline"] = { ADDED_6_0_2 },
						}),
						i(118764, {	-- Ruby-Eye Seal
							["timeline"] = { ADDED_6_0_2 },
						}),
						i(118765, {	-- Sapphire Seal
							["timeline"] = { ADDED_6_0_2 },
						}),
					},
				}),
				q(35745, {	-- Attack of the Iron Horde (H)
					["qg"] = 82851,	-- Thrall
					["coord"] = { 71.8, 47.7, BLASTED_LANDS },
					["timeline"] = { ADDED_6_0_2 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/8 Ironmarch Grunt slain
							["providers"] = {
								{ "n", 76189 },	-- Ironmarch Grunt
								{ "n", 76556 },	-- Ironmarch Grunt
								{ "n", 84228 },	-- Ironmarch Skirmisher <Iron Horde>
							},
						}),
						i(118761, {	-- Invader's Scarlet Seal
							["timeline"] = { ADDED_6_0_2 },
						}),
						i(118762, {	-- Portal-Breaker's Band
							["timeline"] = { ADDED_6_0_2 },
						}),
						i(118763, {	-- Blackstone Signet
							["timeline"] = { ADDED_6_0_2 },
						}),
						i(118764, {	-- Ruby-Eye Seal
							["timeline"] = { ADDED_6_0_2 },
						}),
						i(118765, {	-- Sapphire Seal
							["timeline"] = { ADDED_6_0_2 },
						}),
					},
				}),
				q(35751, {	-- Attack on Nethergarde
					["sourceQuest"] = 36292,	-- Investigating the Invasion
					["qg"] = 84928,	-- Thrall
					["coord"] = { 48.7, 31.7, BLASTED_LANDS },
					["timeline"] = { ADDED_6_0_2 },
					["races"] = HORDE_ONLY,
				}),
				q(35488, {	-- Death to the Dreadmaul (A)
					["sourceQuests"] = {
						35492,	-- For Nethergarde!
						35486,	-- Lunatic Lieutenants (A)
						35494,	-- Mementos of the Fallen
					},
					["qg"] = 84929,	-- Vindicator Maraad
					["coord"] = { 52.0, 28.6, BLASTED_LANDS },
					["timeline"] = { ADDED_6_0_2 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/8 Dreadmaul slain
							["providers"] = {
								{ "n", 78345 },	-- Dreadmaul Crusher
								{ "n", 77771 },	-- Dreadmaul Destroyer
								{ "n", 78348 },	-- Dreadmaul Flamebelcher
								{ "n", 78349 },	-- Dreadmaul Magmaster <Iron Horde>
								{ "n", 78488 },	-- Dreadmaul Packmaster
								{ "n", 82451 },	-- Toothsmash the Annihilator
							},
						}),
					},
				}),
				q(35762, {	-- Death to the Dreadmaul (H)
					["sourceQuests"] = {
						35751,	-- Attack on Nethergarde
						35750,	-- Lunatic Lieutenants (H)
						35761,	-- Ransacking Nethergarde
					},
					["qg"] = 84928,	-- Thrall
					["coord"] = { 48.7, 31.7, BLASTED_LANDS },
					["timeline"] = { ADDED_6_0_2 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/8 Dreadmaul slain
							["providers"] = {
								{ "n", 78345 },	-- Dreadmaul Crusher
								{ "n", 77771 },	-- Dreadmaul Destroyer
								{ "n", 78348 },	-- Dreadmaul Flamebelcher
								{ "n", 78349 },	-- Dreadmaul Magmaster <Iron Horde>
								{ "n", 78488 },	-- Dreadmaul Packmaster
								{ "n", 82451 },	-- Toothsmash the Annihilator
							},
						}),
					},
				}),
				q(35464, {	-- Ending Executions (A)
					["sourceQuests"] = {
						35460,	-- Attack of the Iron Horde (A)
						35462,	-- Under Siege (A)
					},
					["qg"] = 85213,	-- Bodrick Grey
					["coord"] = { 66.8, 28.0, BLASTED_LANDS },
					["timeline"] = { ADDED_6_0_2 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/3 Ironmarch Executioner slain
							["provider"] = { "n", 82774 },	-- Ironmarch Executioner
							["coord"] = { 58.6, 30.4, BLASTED_LANDS },
						}),
					},
				}),
				q(35744, {	-- Ending Executions (H)
					["sourceQuests"] = {
						35745,	-- Attack of the Iron Horde (H)
						35746,	-- Under Siege (H)
					},
					["qg"] = 85247,	-- Rokhan
					["coord"] = { 71.8, 48.9, BLASTED_LANDS },
					["timeline"] = { ADDED_6_0_2 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/3 Ironmarch Executioner slain
							["provider"] = { "n", 82774 },	-- Ironmarch Executioner
							["coord"] = { 58.6, 30.4, BLASTED_LANDS },
						}),
					},
				}),
				q(35496, {	-- Enohar's Revenge
					["sourceQuests"] = {
						35492,	-- For Nethergarde!
						35486,	-- Lunatic Lieutenants
						35494,	-- Mementos of the Fallen
					},
					["qg"] = 76111,	-- Enohar Thunderbrew
					["coord"] = { 51.8, 28.6, BLASTED_LANDS },
					["timeline"] = { ADDED_6_0_2 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/3 Poisoned cooking pot
							["provider"] = { "o", 232625 },	-- Cooking Pot
							["coords"] = {
								{ 44.0, 31.1, BLASTED_LANDS },
								{ 44.2, 35.6, BLASTED_LANDS },
								{ 43.5, 37.1, BLASTED_LANDS },
							},
						}),
					},
				}),
				q(35492, {	-- For Nethergarde!
					["sourceQuest"] = 36307,	-- Investigating the Invasion
					["qg"] = 84929,	-- Vindicator Maraad
					["coord"] = { 52.0, 28.6, BLASTED_LANDS },
					["timeline"] = { ADDED_6_0_2 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(35500, {	-- Gar'mak Bladetwist (A)
					["sourceQuests"] = {
						35488,	-- Death to the Dreadmaul (A)
						35496,	-- Enohar's Revenge (A)
						35495,	-- Toothsmash the Annihilator (A)
					},
					["qg"] = 84929,	-- Vindicator Maraad
					["coord"] = { 52.0, 28.6, BLASTED_LANDS },
					["timeline"] = { ADDED_6_0_2 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Gar'mak Bladetwist slain
							["provider"] = { "n", 82458 },	-- Gar'mak Bladetwist
							["coord"] = { 40.4, 11.6, BLASTED_LANDS },
						}),
					},
				}),
				q(35763, {	-- Gar'mak Bladetwist (H)
					["sourceQuests"] = {
						35762,	-- Death to the Dreadmaul (H)
						35764,	-- Okrilla's Revenge (H)
						35760,	-- Toothsmash the Annihilator (H)
					},
					["qg"] = 84928,	-- Thrall
					["coord"] = { 48.7, 31.7, BLASTED_LANDS },
					["timeline"] = { ADDED_6_0_2 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Gar'mak Bladetwist slain
							["provider"] = { "n", 82458 },	-- Gar'mak Bladetwist
							["coord"] = { 40.4, 11.6, BLASTED_LANDS },
						}),
					},
				}),
				q(36307, {	-- Investigating the Invasion (A)
					["sourceQuests"] = {
						35464,	-- Ending Executions (A)
						35463,	-- Subversive Scouts (A)
					},
					["qg"] = 82270,	-- Vindicator Maraad
					["coord"] = { 66.6, 28.2, BLASTED_LANDS },
					["timeline"] = { ADDED_6_0_2 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(36292, {	-- Investigating the Invasion (H)
					["sourceQuests"] = {
						35744,	-- Ending Executions (H)
						35748,	-- Subversive Scouts (H)
					},
					["qg"] = 82851,	-- Thrall
					["coord"] = { 71.8, 47.7, BLASTED_LANDS },
					["timeline"] = { ADDED_6_0_2 },
					["races"] = HORDE_ONLY,
				}),
				warchiefscommand(q(36499, {	-- Iron Horde Invasion (LEGACY - pre WoD)
					["timeline"] = { ADDED_6_0_2, REMOVED_6_0_3 },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
				})),
				heroscall(q(36498, {	-- Iron Horde Invasion
					["timeline"] = { ADDED_6_0_2, REMOVED_6_0_3 },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
				})),
				{	-- Lunatic Lieutenants
					["allianceQuestData"] = q(35486, {	-- Lunatic Lieutenants [A]
						["sourceQuest"] = 36307,	-- Investigating the Invasion (A)
						["qg"] = 84929,	-- Vindicator Maraad
						["coord"] = { 52.0, 28.6, BLASTED_LANDS },
					}),
					["hordeQuestData"] = q(35750, {	-- Lunatic Lieutenants [H]
						["sourceQuest"] = 36292,	-- Investigating the Invasion (H)
						["qg"] = 84928,	-- Thrall
						["coord"] = { 48.7, 31.7, BLASTED_LANDS },
					}),
					["timeline"] = { ADDED_6_0_2 },
					["groups"] = {
						objective(1, {	-- 0/1 Mokrik's Battleplan
							["provider"] = { "i", 113399 },	-- Mokrik's Battleplan
							["coord"] = { 62.6, 13.2, BLASTED_LANDS },
							["cr"] = 73459,	-- Mokrik Blackfingers
						}),
						objective(2, {	-- 0/1 Rukah's Battleplan
							["provider"] = { "i", 113400 },	-- Rukah's Battleplan
							["coord"] = { 57.2, 17.4, BLASTED_LANDS },
							["cr"] = 73458,	-- Rukah the Machinist
						}),
						objective(3, {	-- 0/1 Gar's Battleplan
							["provider"] = { "i", 113401 },	-- Gar's Battleplan
							["coord"] = { 60.2, 14.0, BLASTED_LANDS },
							["cr"] = 73446,	-- Gar Steelcrush
						}),
						i(118766, {	-- Skulltooth Collar
							["timeline"] = { ADDED_6_0_2 },
						}),
						i(118767, {	-- Necklace of Celerity
							["timeline"] = { ADDED_6_0_2 },
						}),
						i(118768, {	-- Gnawing Tooth
							["timeline"] = { ADDED_6_0_2 },
						}),
						i(118769, {	-- Emberfury Choker
							["timeline"] = { ADDED_6_0_2 },
						}),
						i(118770, {	-- Chain of Evasion
							["timeline"] = { ADDED_6_0_2 },
						}),
					},
				},
				q(35494, {	-- Mementos of the Fallen
					["sourceQuest"] = 36307,	-- Investigating the Invasion
					["qg"] = 82447,	-- Commander Vines
					["coord"] = { 52.0, 28.6, BLASTED_LANDS },
					["timeline"] = { ADDED_6_0_2 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Strumner's Sword
							["providers"] = {
								{ "i", 113395 },	-- Strumner's Sword
								{ "o", 232573 },	-- Strumner's Sword
							},
							["coord"] = { 61.8, 15.0, BLASTED_LANDS },
						}),
						objective(2, {	-- 0/1 Krolan's Shield
							["providers"] = {
								{ "i", 113396 },	-- Krolan's Shield
								{ "o", 232575 },	-- Krolan's Shield
							},
							["coord"] = { 60.6, 19.9, BLASTED_LANDS },
						}),
						objective(3, {	-- 0/1 Keri's Mug
							["providers"] = {
								{ "i", 113397 },	-- Keri's Mug
								{ "o", 232576 },	-- Keri's Mug
							},
							["coord"] = { 59.5, 18.0, BLASTED_LANDS },
						}),
					},
				}),
				q(35764, {	-- Okrilla's Revenge
					["sourceQuests"] = {
						35751,	-- Attack on Nethergarde
						35750,	-- Lunatic Lieutenants
						35761,	-- Ransacking Nethergarde
					},
					["qg"] = 76609,	-- Okrilla
					["coord"] = { 48.7, 31.8, BLASTED_LANDS },
					["timeline"] = { ADDED_6_0_2 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/3 Poisoned cooking pot
							["provider"] = { "o", 232625 },	-- Cooking Pot
							["coords"] = {
								{ 44.0, 31.1, BLASTED_LANDS },
								{ 44.2, 35.6, BLASTED_LANDS },
								{ 43.5, 37.1, BLASTED_LANDS },
							},
						}),
					},
				}),
				q(36379, {	-- Peeking into the Portal (A)
					["qg"] = 85213,	-- Bodrick Grey
					["coord"] = { 66.8, 28.0, BLASTED_LANDS },
					["timeline"] = { ADDED_6_0_2 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- Use the telescope
							["provider"] = { "o", 234576 },	-- Telescope
							["coord"] = { 61.7, 36.5, BLASTED_LANDS },
						}),
					},
				}),
				q(36382, {	-- Peeking into the Portal (H)
					["qg"] = 85247,	-- Rokhan
					["coord"] = { 71.8, 48.9, BLASTED_LANDS },
					["timeline"] = { ADDED_6_0_2 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- Use the telescope
							["provider"] = { "o", 234619 },	-- Telescope
							["coord"] = { 61.7, 36.5, BLASTED_LANDS },
						}),
					},
				}),
				q(35761, {	-- Ransacking Nethergarde
					["sourceQuest"] = 36292,	-- Investigating the Invasion
					["qg"] = 76609,	-- Okrilla
					["coord"] = { 48.7, 31.9, BLASTED_LANDS },
					["timeline"] = { ADDED_6_0_2 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Aitokk's Axe
							["providers"] = {
								{ "i", 113439 },	-- Aitokk's Axe
								{ "o", 233228 },	-- Aitokk's Axe
							},
							["coord"] = { 61.8, 14.8, BLASTED_LANDS },
						}),
						objective(2, {	-- 0/1 Overseer Struk's Shield
							["providers"] = {
								{ "i", 113437 },	-- Overseer Struk's Shield
								{ "o", 233227 },	-- Overseer Struk's Shield
							},
							["coord"] = { 60.6, 19.9, BLASTED_LANDS },
						}),
						objective(3, {	-- 0/1 Neka's Poison Flask
							["providers"] = {
								{ "i", 113436 },	-- Neka's Poison Flask
								{ "o", 233224 },	-- Neka's Poison Flask
							},
							["coord"] = { 59.5, 18.0, BLASTED_LANDS },
						}),
					},
				}),
				q(36941, {	-- Report to the King
					["sourceQuest"] = 35500,	-- Gar'mark Bladetwist
					["qg"] = 84929,	-- Vindicator Maraad
					["coord"] = { 52.0, 28.6, BLASTED_LANDS },
					["timeline"] = { ADDED_6_0_2 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(118776, {	-- Talisman of the Invader
							["timeline"] = { ADDED_6_0_2 },
						}),
						i(118777, {	-- Bloodcaster's Charm
							["timeline"] = { ADDED_6_0_2 },
						}),
						i(118778, {	-- Ironmender's Totem
							["timeline"] = { ADDED_6_0_2 },
						}),
						i(118779, {	-- Bladespike Charm
							["timeline"] = { ADDED_6_0_2 },
						}),
						i(118780, {	-- Bloodburn Protector
							["timeline"] = { ADDED_6_0_2 },
						}),
						i(111660, {	-- Iron Starlette (PET!)
							["timeline"] = { ADDED_6_0_2 },
						}),
					},
				}),
				{	-- Subversive Scouts
					["allianceQuestData"] = q(35463, {	-- Subversive Scouts [A]
						["sourceQuests"] = {
							35460,	-- Attack of the Iron Horde (A)
							35462,	-- Under Siege (A)
						},
						["qg"] = 82270,	-- Vindicator Maraad
						["coord"] = { 66.6, 28.2, BLASTED_LANDS },
					}),
					["hordeQuestData"] = q(35748, {	-- Subversive Scouts [H]
						["sourceQuests"] = {
							35745,	-- Attack of the Iron Horde (H)
							35746,	-- Under Siege (H)
						},
						["qg"] = 82851,	-- Thrall
						["coord"] = { 71.8, 47.7, BLASTED_LANDS },
					}),
					["timeline"] = { ADDED_6_0_2 },
					["groups"] = {
						objective(1, {	-- 0/1 Ironmarch Scout slain
							["provider"] = { "n", 76886 },	-- Ironmarch Scout <Iron Horde>
						}),
					},
				},
				-- #if BEFORE 9.0.1
				q(36881, {	-- The Dark Portal / Warlords of Draenor: The Dark Portal [9.0.1]
					["description"] = "If you want to do the Blasted Lands questline before going to Draenor, abandon this quest after taking the portal to Blasted Lands.",
					["qg"] = 78423,	-- Archmage Khadgar
					["coord"] = { 54.9, 50.4, BLASTED_LANDS },
					["timeline"] = { ADDED_6_0_2 },
					["lvl"] = 90,
				}),
				q(34398, {	-- The Dark Portal / Warlords of Draenor: The Dark Portal [9.0.1]
					["description"] = "If you want to do the Blasted Lands questline before going to Draenor, abandon this quest after taking the portal to Blasted Lands.",
					["provider"] = { "n", 167032 },	-- Chromie <Emissary of the Bronze Dragonflight>
					["coord"] = { 56.2, 17.3, STORMWIND_CITY },
					["timeline"] = { ADDED_6_0_2 },
					["lvl"] = 90,
				}),
				-- #endif
				{	-- Toothsmash the Annihilator
					["allianceQuestData"] = q(35495, {	-- Toothsmash the Annihilator [A]
						["sourceQuests"] = {
							35492,	-- For Nethergarde!
							35486,	-- Lunatic Lieutenants (A)
							35494,	-- Mementos of the Fallen
						},
						["qg"] = 84929,	-- Vindicator Maraad
						["coord"] = { 52.0, 28.6, BLASTED_LANDS },
					}),
					["hordeQuestData"] = q(35760, {	-- Toothsmash the Annihilator [H]
						["sourceQuests"] = {
							35751,	-- Attack on Nethergarde
							35750,	-- Lunatic Lieutenants (H)
							35761,	-- Ransacking Nethergarde
						},
						["qg"] = 84928,	-- Thrall
						["coord"] = { 48.7, 31.7, BLASTED_LANDS },
					}),
					["timeline"] = { ADDED_6_0_2 },
					["groups"] = {
						objective(1, {	-- 0/1 Toothsmash the Annihilator slain
							["provider"] = { "n", 82451 },	-- Toothsmash the Annihilator
							["coord"] = { 44, 35.4, BLASTED_LANDS },
						}),
						i(118771, {	-- Wildfire Windcloak
							["timeline"] = { ADDED_6_0_2 },
						}),
						i(118772, {	-- Frostshaper Cape
							["timeline"] = { ADDED_6_0_2 },
						}),
						i(118773, {	-- Butcher's Wrap
							["timeline"] = { ADDED_6_0_2 },
						}),
						i(118774, {	-- Armswake Greatcloak
							["timeline"] = { ADDED_6_0_2 },
						}),
						i(118775, {	-- Night Prowler's Cloak
							["timeline"] = { ADDED_6_0_2 },
						}),
					},
				},
				{	-- Under Siege
					["allianceQuestData"] = q(35462, {	-- Under Siege [A]
						["qg"] = 82270,	-- Vindicator Maraad
						["coord"] = { 66.6, 28.2, BLASTED_LANDS },
					}),
					["hordeQuestData"] = q(35746, {	-- Under Siege [H]
						["qg"] = 82851,	-- Thrall
						["coord"] = { 71.8, 47.7, BLASTED_LANDS },
					}),
					["timeline"] = { ADDED_6_0_2 },
					["groups"] = {
						objective(1, {	-- 0/3 Iron Demolisher destroyed
							["provider"] = { "n", 82298 },	-- Iron Demolisher
						}),
					},
				},
				-- #if AFTER 9.0.1
				q(36881, {	-- Warlords of Draenor: The Dark Portal [9.0.1] / The Dark Portal
					["description"] = "If you want to do the Blasted Lands questline before going to Draenor, abandon this quest after taking the portal to Blasted Lands.",
					["qg"] = 78423,	-- Archmage Khadgar
					["coord"] = { 54.9, 50.4, BLASTED_LANDS },
					["timeline"] = { ADDED_6_0_2 },
					["lvl"] = 90,
				}),
				q(34398, {	-- Warlords of Draenor: The Dark Portal [9.0.1] / The Dark Portal
					["description"] = "If you want to do the Blasted Lands questline before going to Draenor, abandon this quest after taking the portal to Blasted Lands.",
					["provider"] = { "n", 167032 },	-- Chromie <Emissary of the Bronze Dragonflight>
					["coord"] = { 56.2, 17.3, STORMWIND_CITY },
					["timeline"] = { ADDED_6_0_2 },
					["lvl"] = 90,
				}),
				-- #endif
				q(36940, {	-- Warning Orgrimmar
					["sourceQuest"] = 35763,	-- Gar'mak Bladetwist
					["qg"] = 84928,	-- Thrall
					["coord"] = { 48.7, 31.7, BLASTED_LANDS },
					["timeline"] = { ADDED_6_0_2 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(118776, {	-- Talisman of the Invader
							["timeline"] = { ADDED_6_0_2 },
						}),
						i(118777, {	-- Bloodcaster's Charm
							["timeline"] = { ADDED_6_0_2 },
						}),
						i(118778, {	-- Ironmender's Totem
							["timeline"] = { ADDED_6_0_2 },
						}),
						i(118779, {	-- Bladespike Charm
							["timeline"] = { ADDED_6_0_2 },
						}),
						i(118780, {	-- Bloodburn Protector
							["timeline"] = { ADDED_6_0_2 },
						}),
						i(111660, {	-- Iron Starlette (PET!)
							["timeline"] = { ADDED_6_0_2 },
						}),
					},
				}),
			}),
			n(VENDORS, {
				n(76117, bubbleDown({ ["timeline"] = { ADDED_6_0_2 } }, {	-- Quartermaster Rindelle <Replacement Quest Rewards and General Goods>
					["coord"] = { 66.4, 27.6, BLASTED_LANDS },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(118774),	-- Armswake Greatcloak
						i(118763),	-- Blackstone Signet
						i(118779),	-- Bladespike Charm
						i(118780),	-- Bloodburn Protector
						i(118777),	-- Bloodcaster's Charm
						i(118773),	-- Butcher's Wrap
						i(118770),	-- Chain of Evasion
						i(118769),	-- Emberfury Choker
						i(118772),	-- Frostshaper Cape
						i(118768),	-- Gnawing Tooth
						i(118761),	-- Invader's Scarlet Seal
						i(118778),	-- Ironmender's Totem
						i(118767),	-- Necklace of Celerity
						i(118775),	-- Night Prowler's Cloak
						i(118762),	-- Portal-Breaker's Band
						i(118764),	-- Ruby-Eye Seal
						i(118765),	-- Sapphire Seal
						i(118766),	-- Skulltooth Collar
						i(118776),	-- Talisman of the Invader
						i(118771),	-- Wildfire Windcloak
					},
				})),
				n(76522, bubbleDown({ ["timeline"] = { ADDED_6_0_2 } }, {	-- Zerpy Clampshock <Replacement Quest Rewards and General Goods>
					["coord"] = { 71.5, 49.1, BLASTED_LANDS },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(118774),	-- Armswake Greatcloak
						i(118763),	-- Blackstone Signet
						i(118779),	-- Bladespike Charm
						i(118780),	-- Bloodburn Protector
						i(118777),	-- Bloodcaster's Charm
						i(118773),	-- Butcher's Wrap
						i(118770),	-- Chain of Evasion
						i(118769),	-- Emberfury Choker
						i(118772),	-- Frostshaper Cape
						i(118768),	-- Gnawing Tooth
						i(118761),	-- Invader's Scarlet Seal
						i(118778),	-- Ironmender's Totem
						i(118767),	-- Necklace of Celerity
						i(118775),	-- Night Prowler's Cloak
						i(118762),	-- Portal-Breaker's Band
						i(118764),	-- Ruby-Eye Seal
						i(118765),	-- Sapphire Seal
						i(118766),	-- Skulltooth Collar
						i(118776),	-- Talisman of the Invader
						i(118771),	-- Wildfire Windcloak
					},
				})),
			}),
			n(ZONE_DROPS, {
				i(118675, {	-- Bronze Whelpling (PET!)
					["description"] = "Must be in the Iron Horde Invasion version of Blasted Lands. Drops from any Iron Horde enemy.",
					["timeline"] = { ADDED_6_0_2 },
				}),
			}),
		},
	}),
}));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.WOD, bubbleDownSelf({ ["timeline"] = { ADDED_6_0_2 } }, {
	n(IRON_INVASION, {
		q(37677),	-- Blasted Land 6.0:JP3 - Invasion - Tracking Quest - See Maraad
		q(37676),	-- Blasted Land 6.0:JP3 - Invasion - Tracking Quest - See Thrall
		q(66560, { ["timeline"] = { ADDED_9_2_5 } }),	-- Changing time of zone from Present to Past through Zidormi
	}),
})));
