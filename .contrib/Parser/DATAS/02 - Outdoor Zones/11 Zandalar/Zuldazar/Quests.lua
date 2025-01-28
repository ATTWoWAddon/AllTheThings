---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
local ASPIRANTS_EQUIPMENT_CACHE = i(167744, {	-- Aspirant's Equipment Cache
	["sym"] = {
		{ "sub", "pvp_gear_base", EXPANSION.BFA, SEASON_CORRUPTED, PVP_ASPIRANT },{"merge"},	-- BFA header > Season 4 header > Aspirant gear header
		{ "pop" },	-- discard Aspirant / Combatant Gear header
		{ "pop" },	-- discard item type headers
		{ "modID", 47 },	-- blue.  still the wrong iLvl because i can't also apply 2, but it looks better
	},
})
root(ROOTS.Zones, m(ZANDALAR, bubbleDown({ ["timeline"] = { ADDED_8_0_1 } }, {
	m(ZULDAZAR, {
		n(QUESTS, {
			-- TODO: shit that needs solving:
				--	what unlocks "productive pests"/"crabulous feast"?  the other two quests in the area (76.4, 48.7) are available with no prerequisites, not even starting the zuldazar/dazar'alor, but as soon as you land in the port of dazar'alor for the first time after the pre-BFA stuff.
				--	when does "keep them on task" (breadcrumb for area mentioned above) unlock?  could be as early as "terrace of the chosen" or as late as "mistress of lies," which is when i saw it.
				--	when are "sandscar breach" and "the bones of xibala" available?  i picked them up after "the king's gambit," but they may be available slightly earlier.
				--	when does "who seeks the seekers?" (in dazar'alor) become available?  seen as early as "the prophet's ploy," but may be available sooner.
				--	when does "king da'ka" become available?  didn't see it until after i picked up the breadcrumb for the area after turning in "the prophet's ploy," but may be available sooner.  "kaja'mite ore dust" (in the same area) requires zero prereqs, not even the intro to dazar'alor, but this quest wasn't available then.
				-- when does "lil' tika" become available?  saw it after "the king's gambit" but not sure if that's the requirement to unlock.  the other quests in the area are available prior to doing any quests in dazar'alor or zuldazar.
				-- possible that "hunting the hunter" only requires "predatory."  check!
				-- figure out if "prepare for a siege" is a breadcrumb for anything.  there was no follow-up quest to take so i'm not sure if this quest is a requirement for something or just flavor.
				-- for "how to train your direhorn," i never got the version of "away from the herd" that is questID #55249, just #55244.  figure out if 55249 is used/unused and if/when it appears.
			pvp(n(PVP, {
				n(AZERITE_ESSENCES, {
					i(169902, {	-- Finger-Bone Trophy of Battle (Rank 1)
						["description"] = "Requires earning 500 Conquest and opening your weekly chest.\n",
					}),
					i(169901, {	-- Etched Bone Trophy of the Vanquished (Rank 2)
						["description"] = "Requires reaching 1,000 rating in PvP and opening your next weekly chest.\n",
					}),
					i(169900, {	-- Rib-Bone Choker of Dominance (Rank 3)
						["description"] = "The amount of |cff9832dfBurgeoning Battlefield Furor|r you receive from your weekly chest varies depending on your rating.\n\nUnranked - 1\nCombatant - 3\nChallenger - 5\nRival - 6\nDuelist - 8\nElite - 10\n",
						["cost"] = { { "i", 169590, 15 } },	-- 15x Burgeoning Battlefield Furor
					}),
					i(169899, {	-- Polished Skull Trophy (Rank 4)
						["description"] = "Requires reaching Elite rating in PvP and opening your next weekly chest.\n",
						["cost"] = { { "i", 169590, 15 } },	-- 15x Burgeoning Battlefield Furor
						["u"] = REMOVED_FROM_GAME,	-- PvP Elite/Gladiator
					}),
				}),
				q(52958, {	-- Call to Arms: Drustvar
					["provider"] = { "n", 143536 },	-- High Warlord Volrath
					["isWeekly"] = true,
					["coord"] = { 51.5, 58.1, ZULDAZAR },
					["races"] = HORDE_ONLY,
					["g"] = {
						ASPIRANTS_EQUIPMENT_CACHE,
						i(169614),	-- Call to Arms Distinction
					},
				}),
				q(56650, {	-- Call to Arms: Mechagon
					["provider"] = { "n", 143536 },	-- High Warlord Volrath
					["isWeekly"] = true,
					["coord"] = { 51.5, 58.1, ZULDAZAR },
					["races"] = HORDE_ONLY,
					["g"] = {
						ASPIRANTS_EQUIPMENT_CACHE,
						i(169614),	-- Call to Arms Distinction
					},
				}),
				q(56148, {	-- Call to Arms: Nazjatar
					["sourceQuests"] = { 55500 },	-- Save a Friend
					["provider"] = { "n", 143536 },	-- High Warlord Volrath
					["isWeekly"] = true,
					["coord"] = { 51.5, 58.1, ZULDAZAR },
					["races"] = HORDE_ONLY,
					["g"] = {
						ASPIRANTS_EQUIPMENT_CACHE,
						i(169614),	-- Call to Arms Distinction
					},
				}),
				q(52954, {	-- Call to Arms: Nazmir
					["provider"] = { "n", 143536 },	-- High Warlord Volrath
					["isWeekly"] = true,
					["coord"] = { 51.5, 58.1, ZULDAZAR },
					["races"] = HORDE_ONLY,
					["g"] = {
						ASPIRANTS_EQUIPMENT_CACHE,
						i(169614),	-- Call to Arms Distinction
					},
				}),
				q(52957, {	-- Call to Arms: Stormsong Valley
					["provider"] = { "n", 143536 },	-- High Warlord Volrath
					["isWeekly"] = true,
					["coord"] = { 51.5, 58.1, ZULDAZAR },
					["races"] = HORDE_ONLY,
					["g"] = {
						ASPIRANTS_EQUIPMENT_CACHE,
						i(169614),	-- Call to Arms Distinction
					},
				}),
				q(52956, {	-- Call to Arms: Tiragarde Sound
					["provider"] = { "n", 143536 },	-- High Warlord Volrath
					["isWeekly"] = true,
					["coord"] = { 51.5, 58.1, ZULDAZAR },
					["races"] = HORDE_ONLY,
					["g"] = {
						ASPIRANTS_EQUIPMENT_CACHE,
						i(169614),	-- Call to Arms Distinction
					},
				}),
				q(59016, {	-- Call to Arms: Uldum
					["provider"] = { "n", 143536 },	-- High Warlord Volrath
					["isWeekly"] = true,
					["coord"] = { 51.5, 58.1, ZULDAZAR },
					["races"] = HORDE_ONLY,
					["g"] = {
						ASPIRANTS_EQUIPMENT_CACHE,
						i(169614),	-- Call to Arms Distinction
					},
				}),
				q(59017, {	-- Call to Arms: Vale of Eternal Blossoms
					["provider"] = { "n", 143536 },	-- High Warlord Volrath
					["isWeekly"] = true,
					["coord"] = { 51.5, 58.1, ZULDAZAR },
					["races"] = HORDE_ONLY,
					["g"] = {
						ASPIRANTS_EQUIPMENT_CACHE,
						i(169614),	-- Call to Arms Distinction
					},
				}),
				q(52953, {	-- Call to Arms: Vol'dun
					["provider"] = { "n", 143536 },	-- High Warlord Volrath
					["isWeekly"] = true,
					["coord"] = { 51.5, 58.1, ZULDAZAR },
					["races"] = HORDE_ONLY,
					["g"] = {
						ASPIRANTS_EQUIPMENT_CACHE,
						i(169614),	-- Call to Arms Distinction
					},
				}),
				q(52952, {	-- Call to Arms: Zuldazar
					["provider"] = { "n", 143536 },	-- High Warlord Volrath
					["isWeekly"] = true,
					["coord"] = { 51.5, 58.1, ZULDAZAR },
					["races"] = HORDE_ONLY,
					["g"] = {
						ASPIRANTS_EQUIPMENT_CACHE,
						i(169614),	-- Call to Arms Distinction
					},
				}),
				q(53338, {	-- Prove Your Worth
					["coord"] = { 51.56, 58.06, ZULDAZAR },
					["races"] = HORDE_ONLY,
					["provider"] = { "n", 143551 },	--  Centurion Firescream
					["g"] = {
						i(163604, {	-- Net-O-Matic 5000
							["filterID"] = CONSUMABLES,
						}),
					},
				}),
				q(56500, {	-- Storming the Battlefields!
					["provider"] = { "n", 143555 },	-- Xander Silberman
					["races"] = HORDE_ONLY,
					["coord"] = { 51.6, 58.2, ZANDALAR },
					["g"] = {
						i(168920),	-- Azerite-Encrusted Timequartz (Rank 1)
						i(168442),	-- Roiling Blood of the Vanquished (Rank 1)
						i(168578),	-- Sphere of Suppressed Force (Rank 1)
					},
				}),
				q(53053, {	-- To The Mugambala!
					["provider"] = { "n", 138708 },	-- Garona Halforcen
					["coord"] = { 58.4, 62.6, DAZARALOR },
					["description"] = "You have to enable War Mode to get this quest.",
					["races"] = HORDE_ONLY,
					["lvl"] = 110,
				}),
				q(53054, {	-- Dueler's Guild
					["provider"] = { "n", 143536 },	-- High Warlord Volrath
					["coord"] = { 51.5, 58.2, ZULDAZAR },
					["sourceQuests"] = { 53053 },	-- To The Mugambala!
					["races"] = HORDE_ONLY,
					["lvl"] = 110,
				}),
			})),
			q(50393, {	-- A Child of Pa'ku
				["races"] = HORDE_ONLY,
				["provider"] = { "i", 157782 },	-- Pterrordax Egg
			}),
			q(48399, {	-- A Dark (Iron) Tide
				["sourceQuests"] = { 48317 },	-- A Nose for Magic
				["provider"] = { "n", 131580 },	-- Apprentice Telemancer Astrandis
				["coord"] = { 40.0, 76.5, ZULDAZAR },
				["races"] = HORDE_ONLY,
			}),
			q(55251, {	-- A Daughter of Torcali #1
				["sourceQuests"] = { 55258 },	-- Sleep, Eat, Repeat
				["provider"] = { "n", 151319 },	-- Li'zal
				["isDaily"] = true,
				["coord"] = { 68.1, 41.7, ZULDAZAR },
				["races"] = HORDE_ONLY,
			}),
			q(55243, {	-- A Daughter of Torcali #2
				["sourceQuests"] = { 55507 },	-- Torcali's Blessing
				["provider"] = { "n", 151319 },	-- Li'zal
				["isDaily"] = true,
				["coord"] = { 68.1, 41.7, ZULDAZAR },
				["races"] = HORDE_ONLY,
			}),
			q(50331, {	-- A Different Outcome
				["sourceQuests"] = { 51407 },	-- Find Their Words
				["isBreadcrumb"] = true,
				["provider"] = { "n", 129717 },	-- Akru
				["coord"] = { 70.6, 64.9, ZULDAZAR },
			}),
			q(48581, {	-- A Good Spanking
				["sourceQuests"] = { 47261 },	-- How to Train Your Direhorn
				["provider"] = { "n", 122009 },	-- Kraal Master B'khor
				["coord"] = { 67.6, 43.4, ZULDAZAR },
				["races"] = HORDE_ONLY,
				["g"] = {
					i(158411),	-- Jambani Girdle
					i(158434),	-- Jambani Legwraps
					i(158408),	-- Rastari Girdle
					i(158431),	-- Rastari Legplates
					i(158410),	-- Torcalin Chain
					i(158433),	-- Torcalin Greaves
					i(158409),	-- Zanchuli Cincture
					i(158432),	-- Zanchuli Trousers
				},
			}),
			q(55250, {	-- A Growing Appetite
				["sourceQuests"] = { 55258 },	-- Sleep, Eat, Repeat
				["races"] = HORDE_ONLY,
				["provider"] = { "n", 151286 },		-- Child of Torcali
				["isDaily"] = true,
				["coord"] = { 68.2, 41.8, ZULDAZAR },
			}),
			q(55252, {	-- A Loa Without a Temple
				["sourceQuests"] = { 55254 },	-- An Unending Sleep
				["provider"] = { "n", 121706 },	-- Beastlord L'kala
				["coord"] = { 66.8, 42.5, ZULDAZAR },
				["races"] = HORDE_ONLY,
				["g"] = {
					i(167545),	-- L'kala's Offering (QI!)
				},
			}),
			q(48317, {	-- A Nose for Magic
				["sourceQuests"] = {
					47228,	-- Xibalan Ecology
					50043,	-- Archaeological Efficiency
					47235,	-- Scrying for the Eye
				},
				["provider"] = { "n", 131580 },	-- Apprentice Telemancer Astrandis
				["coord"] = { 43.9, 72.1, ZULDAZAR },
				["races"] = HORDE_ONLY,
			}),
			q(50801, {	-- A Nose for Ptrouble #1
				["sourceQuests"] = { 50402 },	-- SKREEEEE! (#1)
				["provider"] = { "n", 135308 },	-- Wingminder Goja
				["isDaily"] = true,
				["coord"] = { 70.8, 50.9, ZULDAZAR },
				["races"] = HORDE_ONLY,
			}),
			q(50838, {	-- A Nose for Ptrouble #2
				["sourceQuests"] = { 50412 },	-- Back to the Nest
				["provider"] = { "n", 135308 },	-- Wingminder Goja
				["isDaily"] = true,
				["coord"] = { 70.7, 50.8, ZULDAZAR },
				["races"] = HORDE_ONLY,
				["cost"] = { { "i", 158906, 8 } },	-- 8x Shimmerfin Flesh
			}),
			q(50860, {	-- A Nose for Ptrouble #3
				["sourceQuests"] = { 50900 },	-- Maybe When You're Older
				["provider"] = { "n", 135308 },	-- Wingminder Goja
				["isDaily"] = true,
				["coord"] = { 70.8, 50.7, ZULDAZAR },
				["races"] = HORDE_ONLY,
			}),
			q(50396, {	-- A Pterrible Fate
				["sourceQuests"] = { 52447 },	-- Room to Grow
				["provider"] = { "n", 133679 },	-- Kua'fon
				["coord"] = { 70.6, 51.0, ZULDAZAR },
				["races"] = HORDE_ONLY,
			}),
			q(55253, {	-- A Show of Faith
				["sourceQuests"] = { 55252 },	-- A Loa Without a Temple
				["provider"] = { "n", 151257 },	-- Torcali
				["coord"] = { 68.2, 29.7, ZULDAZAR },
				["races"] = HORDE_ONLY,
				["g"] = {
					i(167546),	-- Blessed Offering (QI!)
				},
			}),
			q(49289, {	-- A Special Stone
				["sourceQuests"] = {
					49287,	-- Lost Chelonians
					49288,	-- Scrollhunters
				},
				["provider"] = { "n", 128925 },	-- Deyon
				["coord"] = { 75.2, 61.5, ZULDAZAR },
				["g"] = {
					i(157543),	-- Orders from Nazjatar (QI!)
					i(157539),	-- Scroll of Storm Control (QI!)
					i(157554),	-- Stone Fragment (QI!)
					i(159151),	-- Tidemistress Greatcloak
					i(158440),	-- Rastari Waistplate
					i(158441),	-- Zanchuli Cord
					i(158442),	-- Torcalin Belt
					i(158443),	-- Jambani Belt
				},
			}),
			q(51679, {	-- A Strange Port of Call
				["sourceQuests"] = { 47738 },	-- The Will of the Loa
				["provider"] = { "n", 124083 },	-- Zolani
				["coord"] = { 76.6, 16.2, ZULDAZAR },
				["races"] = HORDE_ONLY,
			}),
			q(47584, {	-- A Thorn in the Side
				["sourceQuests"] = { 49768 },	-- Nesingwary's Trek
				["provider"] = { "n", 123026 },	-- Erak the Aloof
				["coord"] = { 67.4, 17.7, ZULDAZAR },
			}),
			q(50397, {	-- Aerial Aspirations
				["sourceQuests"] = { 52748 },	-- Eyes on the Skies
				["provider"] = { "n", 133682 },	-- Kua'fon
				["coord"] = { 75.2, 49.4, ZULDAZAR },
				["races"] = HORDE_ONLY,
			}),
			q(49871, {	-- Against the Tide
				["sourceQuests"] = { 49754 },	-- Not "Only Zul"
				["provider"] = { "n", 130821 },	-- Wavemaster Lanfa
				["coord"] = { 54.3, 87.0, ZULDAZAR },
				["races"] = HORDE_ONLY,
				["g"] = {
					i(156473),	-- Empowered Fire Mojo (QI!)
				},
			}),
			q(49801, {	-- Aggressive Mating Strategy
				["sourceQuests"] = { 49810 },	-- Monstrous Matchmaker
				["provider"] = { "n", 130905 },	-- Cala Cruzpot
				["coord"] = { 64.0, 35.4, ZULDAZAR },
				["races"] = HORDE_ONLY,
				["g"] = {
					i(155904),	-- Razorwing Bile Sac (QI!)
				},
			}),
			q(52855, {	-- Alchemy is an Inexact Science
				["sourceQuests"] = { 47260 },	-- Side Effects May Include...
				["provider"] = { "n", 122129 },	-- Trader Alexxi Cruzpot
				["coord"] = { 66.7, 42.7, ZULDAZAR },
				["races"] = HORDE_ONLY,
				["g"] = {
					i(162586),	-- Crown of Torcali (QI!)
					i(162587),	-- Dustwing Incandescence (QI!)
				},
			}),
			q(55254, {	-- An Unending Sleep
				["sourceQuests"] = { 52857 },	-- Held For Observation
				["provider"] = { "n", 151283 },	-- Direhorn Hatchling
				["coord"] = { 68.2, 41.8, ZULDAZAR },
				["races"] = HORDE_ONLY,
			}),
			q(47735, {	-- Ancient Tortollan Remedies
				["sourceQuests"] = { 51680 },	-- In Bwonsamdi's Shadow
				["provider"] = { "n", 124063 },	-- Jol the Ancient
				["coord"] = { 76.4, 16.2, ZULDAZAR },
				["races"] = HORDE_ONLY,
				["g"] = {
					i(156827),	-- Aged Crab Foam (QI!)
					i(156824),	-- Brutosaur Scale (QI!)
					i(156809),	-- Envenomed Puffer Spine (QI!)
				},
			}),
			q(50043, {	-- Archaeological Efficiency (H)
				["sourceQuests"] = { 47329 },	-- The Bloodwatcher Legacy
				["provider"] = { "n", 131580 },	-- Apprentice Telemancer Astrandis
				["coord"] = { 43.9, 72.1, ZULDAZAR },
				["races"] = HORDE_ONLY,
				["g"] = {
					i(156596),	-- Sweeper Beacon (QI!)
					i(156597),	-- Xibalan Fossil Fragment (QI!)
				},
			}),
			q(49492, {	-- Arrogance of Vol'jamba
				["sourceQuests"] = {
					49489,	-- Needs a Little Body
					49490,	-- The Urn of Voices
					49491,	-- Fuel for the Voodoo
				},
				["provider"] = { "n", 129907 },	-- Zul the Prophet
				["coord"] = { 62.9, 28.2, ZULDAZAR },
				["races"] = HORDE_ONLY,
				["g"] = {
					i(155300),	-- Jambani Deflector
					i(159763),	-- Jambani Hex Focus
					i(155302),	-- Idol of Vol'jamba
				},
			}),
			q(49901, {	-- Atal'Dazar: Yazma the Fallen Priestess
				["sourceQuests"] = { 49426 },	-- The King's Gambit
				["provider"] = { "n", 129757 },	-- King Rastakhan
				["coord"] = { 42.7, 37.7, ZULDAZAR },
				["races"] = HORDE_ONLY,
			}),
			q(49969, {	-- Awaken a God
				["sourceQuests"] = {
					48014,	-- Clear the Riffraff
					48015,	-- The Scrolls of Gral
				},
				["provider"] = { "n", 125039 },	-- Trader Kro
				["coord"] = { 79.2, 42.3, ZULDAZAR },
				["g"] = {
					i(156539),	-- Chunk of Naga Flesh (QI!)
				},
			}),
			q(55244, {	-- Away From the Herd
				["sourceQuests"] = { 55507 },	-- Torcali's Blessing [1 back from previous]
				["provider"] = { "n", 152258 },	-- Child of Torcali
				["isDaily"] = true,
				["races"] = HORDE_ONLY,
				["coord"] = { 68.2, 41.8, ZULDAZAR },
				["g"] = {
					i(168304),	-- Squeaky Raptor (QI!)
				},
			}),
			q(55249, {	-- Away From the Herd
			--	i never got this version of the quest, only 55244.  is this version unused or is there a specific set of circumstances under which it appears?
			--	the quest directive is slightly different -- this one says "help your direhorn cheer up" and the one i got repeatedly says "play with your direhorn."
			--	according to wowhead, this one comes from the NPC listed under "provider" here, and the one i got comes from 152258.  so possibly from a different place in the storyline?
				["provider"] = { "n", 151286 },	-- Child of Torcali
				["isDaily"] = true,
				["coord"] = { 68.2, 41.8, ZULDAZAR },
				["races"] = HORDE_ONLY,
				["g"] = {
					i(168304),	-- Squeaky Raptor (QI!)
				},
			}),
			q(50412, {	-- Back to the Nest
				["sourceQuests"] = { 50401 },	-- Fear of Falling
				["provider"] = { "n", 133678 },	-- Kua'fon
				["coord"] = { 74.3, 51.9, ZULDAZAR },
				["races"] = HORDE_ONLY,
			}),
			q(48026, {	-- Beneath the Waves
				["sourceQuests"] = { 49969 },	-- Awaken a God
				["provider"] = { "n", 131475 },	-- Shrine of Gral
				["coord"] = { 82.8, 42.3, ZULDAZAR },
				["g"] = {
					i(159765),	-- Empowered Shark's Tooth
					i(155308),	-- Whispering Seawitch's Ring
				},
			}),
			q(50332, {	-- Big Hunter Mon
				["sourceQuests"] = {
					51145,	-- Curse of Jani (A)
					47442,	-- Curse of Jani (H)
				},
				["provider"] = { "n", 113490 },	-- Jani
				["coord"] = { 66.2, 16.6, ZULDAZAR },
			}),
			q(50074, {	-- Brutal Boost
				["sourceQuests"] = {
					49801,	-- Aggressive Mating Strategy
				},
				["provider"] = { "n", 130905 },	-- Cala Cruzpot
				["coord"] = { 64.1, 35.3, ZULDAZAR },
				["races"] = HORDE_ONLY,
				["g"] = {
					i(156475),	-- Aggression Formula (QI!)
				},
			}),
			q(47229, {	-- Bulwark of Torcali
				["sourceQuests"] = {
					47204,	-- The New Frontline
					47205,	-- Warmother
				},
				["provider"] = { "n", 121601 },		-- Rokhan
				["coord"] = { 56.9, 19.1, ZULDAZAR },
				["races"] = HORDE_ONLY,
			}),
			q(49286, {	-- Caged Wisdom
				["sourceQuests"] = {
					49284,	-- Perfect Tidings
					49285,	-- Tiny Treasures
				},
				["provider"] = { "n", 128889 },	-- Deyon
				["coord"] = { 73.7, 61.0, ZULDAZAR },
				["g"] = {
					i(154708),	-- Nazeshi Cage Key (QI!)
				},
			}),
			q(49425, {	-- City of Gold
				["sourceQuests"] = {
					49422,	-- Heretics
					49424,	-- The Full Prophecy
				},
				["provider"] = { "n", 129703 },	-- Hexlord Raal
				["coord"] = { 49.6, 38.0, ZULDAZAR },
				["races"] = HORDE_ONLY,
			}),
			q(48014, {	-- Clear the Riffraff
				["sourceQuests"] = { 50331 },	-- A Different Outcome (breadcrumb)
				["provider"] = { "n", 125047 },	-- Rokor
				["coord"] = { 81.3, 45.8, ZULDAZAR },
			}),
			q(51249, {	-- Crabulous Feast
			--	"the wreckoning" and "the things they carried" are available with ZERO prereqs, before starting zuldazar.  this + "productive pests" are not.  unsure what unlocks them.
			--	could be literally anything from the dazar'alor intro through to "terrace of the chosen" or "mistress of lies," which unlock the breadcrumb that brings you to this area
				["provider"] = { "n", 135803 },	-- J'eebi
				["coord"] = { 76.4, 48.7, ZULDAZAR },
				["races"] = HORDE_ONLY,
				["g"] = {
					i(159934),	-- Large Lump of Crab Meat (QI!)
				},
			}),
			q(49148, {	-- Crumbling Apart
				["sourceQuests"] = {
					49144,	-- Wrath of the Zandalari
					49145,	-- No Troll Left Behind
					49146,	-- Spirits' Belongings
				},
				["provider"] = { "n", 127815 },	-- Zolani
				["coord"] = { 47.9, 60.4, ZULDAZAR },
				["races"] = HORDE_ONLY,
				["g"] = {
					i(153529),	-- Condensed Thunder (QI!)
				},
			}),
			q(49785, {	-- Destroy the Weapon
				["sourceQuests"] = { 49871 },	-- Against the Tide
				["provider"] = { "n", 130750 },	-- Captain Grez'ko
				["coord"] = { 54.7, 89.7, ZULDAZAR },
				["races"] = HORDE_ONLY,
			}),
			q(51998, {	-- DGH: Now With Real Direhorn
				["sourceQuests"] = {
					47311,	-- Headbutting 101
					47272,	-- Direhorn Growth Hormone
					47312,	-- Queenfeather
				},
				["provider"] = { "n", 122129 },	-- Trader Alexxi Cruzpot
				["coord"] = { 66.8, 42.6, ZULDAZAR },
				["races"] = HORDE_ONLY,
				["g"] = {
					i(160975),	-- Partially Digested Direhorn Flesh (QI!)
				},
			}),
			q(47583, {	-- Die, Die, Diemetradon
				["sourceQuests"] = { 49768 },	-- Nesingwary's Trek
				["provider"] = { "n", 123022 },	-- Tracker Burke
				["coord"] = { 67.6, 17.7, ZULDAZAR },
			}),
			q(47259, {	-- Direhorn Daycare
				["sourceQuests"] = { 47226 },	-- The Orphaned Hatchling
				["provider"] = { "n", 121706 },	-- Beastlord L'kala
				["coord"] = { 66.8, 42.5, ZULDAZAR },
				["races"] = HORDE_ONLY,
			}),
			q(47272, {	-- Direhorn Growth Hormone
				["sourceQuests"] = {
					47259,	-- Direhorn Daycare
					48527,	-- Ravenous Landsharks
				},
				["provider"] = { "n", 122129 },	-- Trader Alexxi Cruzpot
				["coord"] = { 66.8, 42.6, ZULDAZAR },
				["races"] = HORDE_ONLY,
				["g"] = {
					i(150347),	-- Steaming Fresh Carrion (QI!)
				},
			}),
			q(50944, {	-- Down, But Not Out
				["sourceQuests"] = { 50943 },	-- The Joy of Flight
				["providers"] = {
					{ "n", 135744 },	-- Kua'fon
					{ "n", 133680 },	-- Kua'fon (both versions of the NPC are in the same place at the same time.  i assume if you relog this is the only one there)
				},
				["coord"] = { 70.6, 50.6, ZULDAZAR },
				["races"] = HORDE_ONLY,
				["g"] = {
					i(159146, {	-- Kua'fon (MOUNT!)
						-- using cost here to show the quest chain starting item
						["cost"] = {{"i",157782,1}},	-- Pterrordax Egg
					}),
				},
			}),
			q(50942, {	-- Dress for the Slide, Not the Ride
				["sourceQuests"] = { 50940 },	-- Wisdom of the Wingless
				["provider"] = { "n", 135801 },	-- Hexlord Raal
				["coord"] = { 70.6, 50.6, ZULDAZAR },
				["races"] = HORDE_ONLY,
				["cost"] = { { "i", 159139, 1 } },	-- 1x Lightweight Skyterror Barding
				["g"] = {
					i(159138),	-- Berserker Skull (QI!)
				},
			}),
			q(55245, {	-- Eat Like a Direhorn
				["sourceQuests"] = { 55507 },	-- Torcali's Blessing [1 back from previous]
				["provider"] = { "n", 152258 },	-- Child of Torcali
				["isDaily"] = true,
				["coord"] = { 68.2, 41.8, ZULDAZAR },
				["races"] = HORDE_ONLY,
			}),
			q(49149, {	-- Embrace the Voodoo
				["sourceQuests"] = {
					49145,	-- No Troll Left Behind
					49146,	-- Spirits' Belongings
					49144,	-- Wrath of the Zandalari
				},
				["provider"] = { "n", 127837 },	-- Kaza'jin the Wavebinder
				["coord"] = { 49.6, 64.5, ZULDAZAR },
				["races"] = HORDE_ONLY,
			}),
			q(49495, {	-- Enforcing Fate
				["sourceQuests"] = {
					51663,	-- Preparing for the Fall
					49493,	-- Zul's Ethical Dilemma
					49494,	-- Zuvembi Brew
				},
				["provider"] = { "n", 129907 },	-- Zul the Prophet
				["coord"] = { 65.7, 30.2, ZULDAZAR },
				["races"] = HORDE_ONLY,
				["g"] = {
					i(160523),	-- Seal of Implacable Fate (QI!)
					i(160524),	-- Zul's Ire (QI!)
				},
			}),
			q(55246, {	-- Even Greener Pastures
				--["sourceQuests"] = { 55258 },	--
				["provider"] = { "n", 151319 },	-- Li'zal
				["isDaily"] = true,
				["coord"] = { 68.1, 41.7, ZULDAZAR },
				["races"] = HORDE_ONLY,
			}),
			q(52748, {	-- Eyes on the Skies
				["sourceQuests"] = { 50900 },	-- Maybe When You're Older
				["provider"] = { "n", 135308 },	-- Wingminder Goja
				["coord"] = { 70.8, 51.0, ZULDAZAR },
				["races"] = HORDE_ONLY,
			}),
			q(50930, {	-- Falling with Style
				["sourceQuests"] = { 50900 },	-- Maybe When You're Older
				["provider"] = { "n", 135308 },	-- Wingminder Goja
				["isDaily"] = true,
				["coord"] = { 70.8, 50.7, ZULDAZAR },
				["races"] = HORDE_ONLY,
			}),
			q(49663, {	-- False Prophecies
				["sourceQuests"] = { 49905 },	-- Plot Twist
				["provider"] = { "n", 129907 },	-- Zul the Prophet
				["coord"] = { 65.6, 30.5, ZULDAZAR },
				["races"] = HORDE_ONLY,
			}),
			q(50401, {	-- Fear of Falling
				["sourceQuests"] = { 50395 },	-- The Call of the Skies
				["provider"] = { "n", 127377 },	-- Pa'ku
				["coord"] = { 70.9, 50.8, ZULDAZAR },
				["races"] = HORDE_ONLY,
				["g"] = {
					i(158885),	-- Shimmerfin Flesh (QI!)
				},
			}),
			q(51407, {	-- Find Their Words
				["sourceQuests"] = { 49289 },	-- A Special Stone
				["providers"] = {
					{ "n", 128925 },	-- Deyon
					{ "n", 129717 },	-- Akru
				},
				["coords"] = {
					{ 75.2, 61.5, ZULDAZAR },	-- Deyon
					{ 70.6, 64.9, ZULDAZAR },	-- Akru
				},
				["g"] = {
					i(157543),	-- Orders from Nazjatar (QI!)
				},
			}),
			q(50268, {	-- Give it a Little Juice
				["sourceQuests"] = { 50252 },	-- Mating Season Halftime
				["provider"] = { "n", 130905 },	-- Cala Cruzpot
				["coord"] = { 64.0, 35.4, ZULDAZAR },
				["races"] = HORDE_ONLY,
			}),
			q(48400, {	-- Grand Theft Telemancy (H)
				["sourceQuests"] = { 48317 },	-- A Nose for Magic
				["provider"] = { "n", 131580 },	-- Apprentice Telemancer Astrandis
				["coord"] = { 40.0, 76.5, ZULDAZAR },
				["races"] = HORDE_ONLY,
				["g"] = {
					i(155310),	-- Reliquary Explorer's Drape
					i(158419),	-- Rastari Treads
					i(158420),	-- Zanchuli Footwraps
					i(158421),	-- Torcalin Treads
					i(158422),	-- Jambani Treads
				},
			}),
			q(55248, {	-- Greener Pastures
				["sourceQuests"] = { 55258 },	-- Sleep, Eat, Repeat
				["provider"] = { "n", 151319 },	-- Li'zal
				["isDaily"] = true,
				["coord"] = { 68.1, 41.7, ZULDAZAR },
				["races"] = HORDE_ONLY,
			}),
			q(47418, {	-- Growing Pains
				["sourceQuests"] = {
					51998,	-- DGH: Now With Real Direhorn
					51990,	-- Wings for the Kraal
				},
				["provider"] = { "n", 122129 },	-- Trader Alexxi Cruzpot
				["coord"] = { 66.8, 42.6, ZULDAZAR },
				["races"] = HORDE_ONLY,
				["g"] = {
					i(147897),	-- Direhorn Growth Hormone (QI!)
				},
			}),
			q(50466, {	-- He's Gone Mad!
				["sourceQuests"] = { 49768 },	-- Nesingwary's Trek
				["provider"] = { "n", 123005 },	-- Hemet Nesingwary
				["coord"] = { 67.5, 17.7, ZULDAZAR },
				["g"] = {
					i(158447),	-- Jambani Armguards
					i(158423),	-- Jambani Gloves
					i(158445),	-- Rastari Armguards
					i(158424),	-- Rastari Battlegloves
					i(158426),	-- Torcalin Gauntlets
					i(158446),	-- Torcalin Wristguards
					i(158444),	-- Zanchuli Bands
					i(158425),	-- Zanchuli Gloves
				},
			}),
			q(47311, {	-- Headbutting 101
				["sourceQuests"] = {
					47259,	-- Direhorn Daycare
					48527,	-- Ravenous Landsharks
				},
				["provider"] = { "n", 121706 },	-- Beastlord L'kala
				["coord"] = { 66.8, 42.5, ZULDAZAR },
				["races"] = HORDE_ONLY,
			}),
			q(47587, {	-- Headhunter Jo
				["sourceQuests"] = { 47586 },	-- Hunting the Hunter
				["provider"] = { "n", 138669 },	-- Hemet Nesingwary
				["coord"] = { 63.5, 16.1, ZULDAZAR },
				["g"] = {	-- The rewards are Horde-only.
					i(159120, {	-- Great Hunt Warglaive
						["races"] = HORDE_ONLY,
					}),
					i(159117, {	-- Great Hunt Skullcracker
						["races"] = HORDE_ONLY,
					}),
					i(159121, {	-- Headhunter Jo's Longstaff
						["races"] = HORDE_ONLY,
					}),
					i(159119, {	-- Headhunter Jo's Machete
						["races"] = HORDE_ONLY,
					}),
					i(159115, {	-- K'tal Fang Blade
						["races"] = HORDE_ONLY,
					}),
					i(159114, {	-- Rootway Safari Greatbow
						["races"] = HORDE_ONLY,
					}),
					i(159118, {	-- Rootway Safari Magestaff
						["races"] = HORDE_ONLY,
					}),
					i(159116, {	-- Wildtusk Ivory Cudgel
						["races"] = HORDE_ONLY,
					}),
					i(159122, {	-- Wildtusk Ivory Headcracker
						["races"] = HORDE_ONLY,
					}),
					-- Earned as Alliance Character
					-- along with i(15117)
					i(161291),	-- Grimestone Spellmace
				},
			}),
			q(47736, {	-- Heads Will Roll
				["sourceQuests"] = { 47737 },	-- The Temple of Rezan
				["provider"] = { "n", 124656 },	-- Zolani
				["coord"] = { 72.1, 21.2, ZULDAZAR },
				["races"] = HORDE_ONLY,
				["g"] = {
					i(151384),	-- Traitorous Zandalari Head (QI!)
				},
			}),
			q(52857, {	-- Held For Observation
				["sourceQuests"] = { 52855 },	-- Alchemy is an Inexact Science
				["provider"] = { "n", 122129 },	-- Trader Alexxi Cruzpot
				["coord"] = { 66.7, 42.7, ZULDAZAR },
				["races"] = HORDE_ONLY,
				["g"] = {
					i(162589),	-- Alexxi's Foolproof Remedy (QI!)
				},
			}),
			q(55796, {	-- Heresy at the Crossroad
				["sourceQuests"] = { 55795 },	-- Mountain On the Move
				["provider"] = { "n", 151257 },	-- Torcali <Loa of Wanderers>
				["coord"] = { 68.5, 29.9, ZULDAZAR },
				["races"] = HORDE_ONLY,
			}),
			q(49422, {	-- Heretics
				["sourceQuests"] = { 49965 },	-- The Warpack
				["provider"] = { "n", 129740 },	-- Gonk
				["coord"] = { 49.3, 44.3, ZULDAZAR },
				["races"] = HORDE_ONLY,
			}),
			q(49884, {	-- Hope's Blue Light
				["sourceQuests"] = { 49785 },	-- Destroy the Weapon
				["provider"] = { "n", 130833 },	-- Captain Grez'ko
				["coord"] = { 57.8, 76.6, ZULDAZAR },
				["races"] = HORDE_ONLY,
				["g"] = {
					i(156473),	-- Empowered Fire Mojo (QI!)
					i(158667),	-- Blue Flame Spelltorch
					i(159124),	-- Golden Fleet Buckler
					i(159152),	-- Torcalin Grips
					i(159153),	-- Zanchuli Grips
					i(159154),	-- Rastari Gloves
					i(159155),	-- Jambani Handguards
					i(160090, {	-- Outrigger Graspers (confirmed)
						["races"] = ALLIANCE_ONLY,	-- Alliance appearance with no other source, granted by learning Horde appearance
					}),
					i(160091, {	-- Sea Raider's Grips (confirmed)
						["races"] = ALLIANCE_ONLY,	-- Alliance appearance with no other source, granted by learning Horde appearance
					}),
				},
			}),
			q(47740, {	-- House of the King
				["sourceQuests"] = { 47737 },	-- The Temple of Rezan
				["provider"] = { "n", 124655 },	-- King Rastakhan
				["coord"] = { 72.0, 21.0, ZULDAZAR },
				["races"] = HORDE_ONLY,
			}),
			q(47261, {	-- How to Train Your Direhorn
				["sourceQuests"] = { 47418 },	-- Growing Pains
				["provider"] = { "n", 121706 },	-- Beastlord L'kala
				["coord"] = { 66.8, 42.5, ZULDAZAR },
				["races"] = HORDE_ONLY,
			}),
			q(47706, {	-- Hunt for King K'tal
				["provider"] = { "o", 271706 },	-- Hunters' Board
				["coord"] = { 67.4, 17.9, ZULDAZAR },
				["g"] = {
					i(151169),	-- Skull of K'tal (QI!)
				},
			}),
			q(47586, {	-- Hunting the Hunter
				["sourceQuests"] = {
					50466,	-- He's Gone Mad!
					47583,	-- Die, Die, Diemetradon
					47584,	-- A Thorn in the Side
					47585,	-- Predatory
				},
				["provider"] = { "n", 123019 },	-- Huntmaster Vol'ka
				["coord"] = { 67.5, 17.7, ZULDAZAR },
			}),
			q(49678, {	-- I Spy a Spire
				["sourceQuests"] = { 49940 },	-- Sandscar Breach (breadcrumb)
				["provider"] = { "n", 130450 },	-- Bladeguard Sonji
				["coord"] = { 47.3, 25.0, ZULDAZAR },
				["races"] = HORDE_ONLY,
			}),
			q(51680, {	-- In Bwonsamdi's Shadow
				["sourceQuests"] = { 51101 },	-- The Wounded King
				["provider"] = { "n", 124083 },	-- Zolani
				["coord"] = { 76.7, 16.3, ZULDAZAR },
				["races"] = HORDE_ONLY,
			}),
			q(51539, {	-- Inform the Horde!
				["sourceQuests"] = {
					48025,	-- Saving For Later
					51538,	-- Word from the Deep
				},
				["provider"] = { "n", 125041 },	-- Scrollsage Goji
				["coord"] = { 79.2, 42.1, ZULDAZAR },
				["races"] = HORDE_ONLY,
			}),
			q(56205, {	--  Just Ptrust Me On This
				["sourceQuests"] = { 50944 },	-- Down, But Not Out
				["provider"] = { "n", 127377 },	-- Pa'Ku
				["races"] = HORDE_ONLY,
				["coord"] = { 71.5, 49.4, ZULDAZAR },
			}),
			q(49919, {	-- Kaja'mite Ore Bust
				["sourceQuests"] = { 49917 },	-- Kaja'mite? Kaja'must!
				["provider"] = { "n", 132267 },	-- Bently Greaseflare
				["coord"] = { 51.6, 50.6, ZULDAZAR },
				["races"] = HORDE_ONLY,
			}),
			q(49775, {	-- Key to the Brig
				["sourceQuests"] = { 49758 },	-- Send the Signal!
				["provider"] = { "n", 135576 },	-- Bo'tzun Maset
				["coord"] = { 54.4, 87.0, ZULDAZAR },
				["races"] = HORDE_ONLY,
				["g"] = {
					i(155882),	-- Brig Key (QI!)
					i(159942),	-- Zul Adherent's Band
				},
			}),
			q(49922, {	-- King Da'ka (H)
			--	kaja'mite ore dust was available before starting the intro to dazar'alor, but this quest wasn't.  what unlocks it?
				["provider"] = { "n", 132267 },	-- Bently Greaseflare
				["coord"] = { 51.6, 50.6, ZULDAZAR },
				["races"] = HORDE_ONLY,
			}),
			q(51111, {	-- King or Prey
				["sourceQuests"] = {
					47528,	-- Mistress of Lies
					47741,	-- To Sacrifice a Loa
				},
				["isBreadcrumb"] = true,
				["provider"] = { "n", 124915 },	-- King Rastakhan
				["coord"] = { 71.0, 29.8, ZULDAZAR },
				["races"] = HORDE_ONLY,
			}),
			q(51146, {	-- Kua'fon's Day Off #1
				["sourceQuests"] = { 50412 },	-- Back to the Nest
				["provider"] = { "n", 135308 },	-- Wingminder Goja
				["isDaily"] = true,
				["coord"] = { 70.7, 51.0, ZULDAZAR },
				["races"] = HORDE_ONLY,
			}),
			q(51147, {	-- Kua'fon's Day Off #2
				["sourceQuests"] = { 50900 },	-- Maybe When You're Older
				["provider"] = { "n", 135308 },	-- Wingminder Goja
				["isDaily"] = true,
				["coord"] = { 70.8, 50.7, ZULDAZAR },
				["races"] = HORDE_ONLY,
			}),
			q(49681, {	-- Lil' Tika
			--	unknown prereq, isn't available prior to starting dazar'alor like the other quests in the area
				["provider"] = { "n", 130468 },	-- Lil' Tika
				["coord"] = { 46.2, 23.3, ZULDAZAR },
				["races"] = HORDE_ONLY,
			}),
			q(49287, {	-- Lost Chelonians
				["sourceQuests"] = { 49286 },	-- Caged Wisdom
				["provider"] = { "n", 128889 },	-- Deyon
				["coord"] = { 73.7, 61.0, ZULDAZAR },
			}),
			q(50842, {	-- Mast Effect
				["sourceQuests"] = { 50412 },	-- Back to the Nest
				["provider"] = { "n", 135308 },	-- Wingminder Goja
				["isDaily"] = true,
				["coord"] = { 70.7, 50.8, ZULDAZAR },
				["races"] = HORDE_ONLY,
				["cost"] = { { "i", 158906, 8 } },	-- 8x Shimmerfin Flesh
			}),
			q(50252, {	-- Mating Season Halftime
				["sourceQuests"] = {
					50074,	-- Brutal Boost
					50150,	-- Setting the Mood
				},
				["provider"] = { "n", 130929 },	-- Witch Doctor Jangalar
				["coord"] = { 64.1, 35.3, ZULDAZAR },
				["races"] = HORDE_ONLY,
			}),
			q(50900, {	-- Maybe When You're Older
				["sourceQuests"] = { 50887 },	-- Ptrust Fall
				["provider"] = { "n", 135595 },	-- Pa'ku
				["coord"] = { 72.4, 57.0, ZULDAZAR },
				["races"] = HORDE_ONLY,
			}),
			q(51677, {	-- Mending Body and Soul
				["sourceQuests"] = {
					47735,	-- Ancient Tortollan Remedies
					50235,	-- No Safe Haven
					47733,	-- The Loa-Speaker's Betrayal
					47739,	-- The Scent of Vengeance
				},
				["provider"] = { "n", 124063 },	-- Jol the Ancient
				["coord"] = { 76.4, 16.2, ZULDAZAR },
				["races"] = HORDE_ONLY,
				["g"] = {
					i(160568),	-- Ancient Tortollan Scroll (QI!)
					i(160566),	-- Astringent Spices (QI!)
					i(160569),	-- Clotting Powder (QI!)
					i(160567),	-- Sea Urchin Brine (QI!)
				},
			}),
			q(47528, {	-- Mistress of Lies
				["sourceQuests"] = {
					47963,	-- The Ancient One
					47522,	-- The Hunter
				},
				["provider"] = { "n", 124749 },	-- Acolyte Mali
				["coords"] = {
					{ 48.4, 32.1, ZULDAZAR },
					{ 52.1, 32.8, ZULDAZAR },
				},
				["races"] = HORDE_ONLY,
				["g"] = {
					i(159105),	-- Spy Mistress Chopper
					i(159106),	-- Venom Queen Longbow
					i(159107),	-- Shadra Disciple's Hexknife
					i(159108),	-- Hexlord's Polearm
					i(159109),	-- Loa-Defender's Battleaxe
					i(159110),	-- Fallen Spider Handaxe
					i(159111),	-- Loa-Defender's Longspear
					i(159112),	-- Shadra Disciple's Stabber
				},
			}),
			q(49810, {	-- Monstrous Matchmaker
				["provider"] = { "n", 130929 },	-- Witch Doctor Jangalar
				["coord"] = { 64.1, 35.3, ZULDAZAR },
				["races"] = HORDE_ONLY,
				["g"] = {
					i(155911),	-- Jangalar's Voodoo Totem (QI!)
				},
			}),
			q(55795, {	-- Mountain On the Move
				["sourceQuests"] = { 55247 },	-- The Trust You've Earned
				["providers"] = {
					{ "n", 151319 },	-- Li'zal <Priestess of Torcali>
					{ "n", 154673 },	-- Li'zal <Priestess of Torcali>
				},
				["coord"] = { 68.2, 41.9, ZULDAZAR },
				["races"] = HORDE_ONLY,
			}),
			q(47310, {	-- Naptime
				["sourceQuests"] = { 48581 },	-- A Good Spanking
				["provider"] = { "n", 121706 },	-- Beastlord L'kala
				["coord"] = { 66.8, 42.5, ZULDAZAR },
				["races"] = HORDE_ONLY,
			}),
			q(52305, {	-- Nature Versus Nurture
				["sourceQuests"] = { 50402 },	-- SKREEEEE!
				["provider"] = { "n", 135308 },	-- Wingminder Goja
				["coord"] = { 70.8, 50.9, ZULDAZAR },
				["races"] = HORDE_ONLY,
			}),
			q(49489, {	-- Needs a Little Body
				["sourceQuests"] = { 49488 },	-- Tal'gurub
				["provider"] = { "n", 129907 },	-- Zul the Prophet
				["coord"] = { 62.8, 32.5, ZULDAZAR },
				["races"] = HORDE_ONLY,
				["g"] = {
					i(161139),	-- Spirit Twister's Band
					i(155255),	-- Rastari Legguards
					i(155257),	-- Zanchuli Legwraps
					i(155254),	-- Torcalin Legguards
					i(155256),	-- Jambani Breeches
				},
			}),
			q(50235, {	-- No Safe Haven
				["sourceQuests"] = { 51680 },	-- In Bwonsamdi's Shadow
				["provider"] = { "n", 124083 },	-- Zolani
				["coord"] = { 76.7, 16.3, ZULDAZAR },
				["races"] = HORDE_ONLY,
			}),
			q(52317, {	-- No Ptake, Only Throw
				["sourceQuests"] = { 50412 },	-- Back to the Nest
				["provider"] = { "n", 141025 },	-- Kua'fon
				["isDaily"] = true,
				["coord"] = { 70.7, 51.1, ZULDAZAR },
				["races"] = HORDE_ONLY,
				["g"] = {
					i(162024),	-- Kua'fon's Favorite Skull (QI!)
				},
			}),
			q(49145, {	-- No Troll Left Behind
				["sourceQuests"] = { 49122 },	-- A Port in Peril
				["provider"] = { "n", 127814 },	-- Habutu
				["coord"] = { 47.9, 60.4, ZULDAZAR },
				["races"] = HORDE_ONLY,
				["g"] = {
					i(153524),	-- Rastari Skull Whistle (QI!)
				},
			}),
			q(49754, {	-- Not "Only Zul"
				["sourceQuests"] = { 49775 },	-- Key to the Brig
				["provider"] = { "n", 130821 },	-- Wavemaster Lanfa
				["coord"] = { 45.3, 52.0, 1176 },	-- Upper Deck
				["races"] = HORDE_ONLY,
			}),
			q(50963, {	-- Of Dark Deeds and Dark Days
			--	possibly a breadcrumb?
				["sourceQuests"] = { 49426 },	-- The King's Gambit
				["provider"] = { "n", 129757 },	-- King Rastakhan
				["coord"] = { 42.7, 37.7, ZULDAZAR },
				["races"] = HORDE_ONLY,
			}),
			q(55506, {	-- One Road Ends
				["sourceQuests"] = { 55503 },	-- The Direhorn and the Saurid
				["provider"] = { "n", 154607 },	-- Image of Torcali
				["coord"] = { 52.4, 23.2, DAZARALOR },	-- on the very edge
				["races"] = HORDE_ONLY,
			}),
			q(50798, {	-- Out on a Limb
				["sourceQuests"] = { 50402 },	-- SKREEEEE! (#1, prior to Nature Versus Nurture, during which this quest is available)
				["provider"] = { "n", 135308 },	-- Wingminder Goja
				["isDaily"] = true,
				["coord"] = { 70.7, 50.8, ZULDAZAR },
				["races"] = HORDE_ONLY,
			}),
			q(47734, {	-- Partners in Heresy
				["sourceQuests"] = {
					47736,	-- Heads Will Roll
					47740,	-- House of the King
				},
				["provider"] = { "n", 124655 },	-- King Rastakhan
				["coord"] = { 74.9, 24.9, ZULDAZAR },
				["races"] = HORDE_ONLY,
			}),
			q(49284, {	-- Perfect Tidings
				["sourceQuests"] = { 49283 },	-- Who Seeks the Seekers?
				["provider"] = { "n", 129586 },	-- Batu
				["coord"] = { 70.5, 65.2, ZULDAZAR },
				["g"] = {
					i(154704),	-- Scroll of Seeking (QI!)
				},
			}),
			q(49905, {	-- Plot Twist
				["sourceQuests"] = { 49495 },	-- Enforcing Fate
				["provider"] = { "n", 129907 },	-- Zul the Prophet
				["coord"] = { 65.7, 30.2, ZULDAZAR },
				["races"] = HORDE_ONLY,
			}),
			q(47585, {	-- Predatory
				["provider"] = { "n", 123118 },	-- Trapper Custer
				["coord"] = { 68.9, 19.4, ZULDAZAR },
			}),
			q(47258, {	-- Prepare for a Siege
			--	is this a breadcrumb?
				["sourceQuests"] = { 47229 },	-- Bulwark of Torcali
				["provider"] = { "n", 135890 },	-- King Rastakhan
				["coord"] = { 60.0, 22.2, ZULDAZAR },
				["races"] = HORDE_ONLY,
			}),
			q(51663, {	-- Preparing for the Fall
				["sourceQuests"] = { 49492 },	-- Arrogance of Vol'jamba
				["provider"] = { "o", 290750 },	-- Jambani Stockpile
				["coord"] = { 65.3, 28.3, ZULDAZAR },
				["races"] = HORDE_ONLY,
			}),
			q(51248, {	-- Productive Pests
			--	"the wreckoning" and "the things they carried" are available with ZERO prereqs, before starting zuldazar.  this + "crabulous" are not.  unsure what unlocks them.
			--	could be literally anything from the dazar'alor intro through to "terrace of the chosen" or "mistress of lies," which unlock the breadcrumb that brings you to this area
				["provider"] = { "n", 135855 },	-- Teekay Treadlebobbin
				["coord"] = { 76.4, 48.7, ZULDAZAR },
				["races"] = HORDE_ONLY,
			}),
			q(50887, {	-- Ptrust Fall
				["sourceQuests"] = { 50886 },	-- Surrogate Wings
				["provider"] = { "n", 135308 },	-- Wingminder Goja
				["coord"] = { 70.8, 51.0, ZULDAZAR },
				["races"] = HORDE_ONLY,
				["cost"] = { { "i", 158913, 1 } },	-- Huge Dragon Kite
			}),
			q(47312, {	-- Queenfeather
				["sourceQuests"] = {	-- probably!  might be available as early as picking up "the orphaned hatchling" or turning in "the missing handler."
					47259,	-- Direhorn Daycare
					48527,	-- Ravenous Landsharks
				},
				["provider"] = { "n", 125486 },	-- Wingrider Nivek
				["coord"] = { 69.0, 40.7, ZULDAZAR },
				["races"] = HORDE_ONLY,
				["g"] = {
					i(160945),	-- Queenfeather's Plume (QI!)
				},
			}),
			q(51678, {	-- Rastakhan's Might
				["sourceQuests"] = { 47738 },	-- The Will of the Loa
				["provider"] = { "n", 124062 },	-- King Rastakhan
				["coord"] = { 76.7, 16.1, ZULDAZAR },
				["races"] = HORDE_ONLY,
				["g"] = {
					i(156861),	-- Skull of Windcaller Ula'jan (QI!)
					i(155242),	-- Rastari Warboots
					i(155243),	-- Zanchuli Slippers
					i(155244),	-- Torcalin Boots
					i(155245),	-- Jambani Footpads
					i(158391),	-- Jambani Handwraps
					i(158392),	-- Rastari Handguards
					i(158393),	-- Zanchuli Grips
					i(158394),	-- Torcalin Handguards
				},
			}),
			q(48527, {	-- Ravenous Landsharks
				["sourceQuests"] = { 47226 },	-- The Orphaned Hatchling
				["provider"] = { "n", 121706 },	-- Beastlord L'kala
				["coord"] = { 66.8, 42.5, ZULDAZAR },
				["races"] = HORDE_ONLY,
				["g"] = {
					i(159764),	-- Enraged Diemetradon Fin
					i(158390),	-- Jambani Striders
					i(158387),	-- Rastari Footguards
					i(158389),	-- Torcalin Sabatons
					i(158388),	-- Zanchuli Sandals
				},
			}),
			q(47201, {	-- Rokhan
				["sourceQuests"] = {
					47198,	-- They Want Us Alive
					47200,	-- Ticks
				},
				["provider"] = { "n", 121599 },	-- King Rastakhan
				["coord"] = { 60.3, 22.0, ZULDAZAR },
				["races"] = HORDE_ONLY,
			}),
			q(55505, {	-- Roo'li's Memory
				["sourceQuests"] = { 55506 },	-- One Road Ends
				["provider"] = { "n", 152115 },	-- Koo'li
				["coord"] = { 62.0, 49.6, ZULDAZAR },
				["races"] = HORDE_ONLY,
			}),
			q(52447, {	-- Room to Grow
				["sourceQuests"] = { 50412 },	-- Back to the Nest
				["provider"] = { "n", 135308 },	-- Wingminder Goja
				["coord"] = { 70.8, 50.9, ZULDAZAR },
				["races"] = HORDE_ONLY,
			}),
			q(48025, {	-- Saving for Later
				["sourceQuests"] = {
					48014,	-- Clear the Riffraff
					48015,	-- The Scrolls of Gral
				},
				["provider"] = { "n", 125041 },	-- Scrollsage Goji
				["coord"] = { 79.2, 42.1, ZULDAZAR },
				["g"] = {
					i(151859),	-- Scroll of Illusion (QI!)
				},
			}),
			q(49288, {	-- Scrollhunters
				["sourceQuests"] = { 49286 },	-- Caged Wisdom
				["provider"] = { "n", 128889 },	-- Deyon
				["coord"] = { 73.7, 61.0, ZULDAZAR },
				["g"] = {
					i(153022),	-- Tortollan Scroll (QI!)
				},
			}),
			q(47235, {	-- Scrying for the Eye
				["sourceQuests"] = { 47329 },	-- The Bloodwatcher Legacy
				["provider"] = { "n", 131580 },	-- Apprentice Telemancer Astrandis
				["coord"] = { 43.9, 72.1, ZULDAZAR },
				["races"] = HORDE_ONLY,
			}),
			q(50150, {	-- Setting the Mood
				["sourceQuests"] = {
					49814,	-- The Scent for a Brutosaur
					50154,	-- They Say It's a Delicacy
				},
				["provider"] = { "n", 130929 },	-- Witch Doctor Jangalar
				["coord"] = { 64.1, 35.3, ZULDAZAR },
				["races"] = HORDE_ONLY,
			}),
			q(53775, {	-- Shades of Disruption
				["provider"] = { "n", 145190 },	-- Princess Talanji
				["coord"] = { 66.4, 70.8, ZANCHUL_HALL_OF_THE_HIGH_PRIESTS },
				["races"] = HORDE_ONLY,
				["sourceQuests"] = { 53774 },	-- Wisdom of the Warchief
			}),
			q(49147, {	-- Show of Strength
				["sourceQuests"] = {
					49144,	-- Wrath of the Zandalari
					49145,	-- No Troll Left Behind
					49146,	-- Spirits' Belongings
				},
				["provider"] = { "n", 127814 },	-- Habutu
				["coord"] = { 47.9, 60.4, ZULDAZAR },
				["races"] = HORDE_ONLY,
				["g"] = {
					i(155304),	-- Stormbinder Signet Ring
					i(158412),	-- Zanchuli Cuffs
					i(158413),	-- Rastari Bracers
					i(158414),	-- Torcalin Bindings
					i(158415),	-- Jambani Wristwraps
				},
			}),
			q(47260, {	-- Side Effects May Include...
				["sourceQuests"] = { 47310 },	-- Naptime
				["provider"] = { "n", 141952 },	-- Direhorn Juvenile
				["coord"] = { 68.2, 41.7, ZULDAZAR },
				["races"] = HORDE_ONLY,
			}),
			q(49870, {	-- Size Matters
				["sourceQuests"] = { 50268 },	-- Give it a Little Juice
				["provider"] = { "n", 130905 },	-- Cala Cruzpot
				["coord"] = { 64.0, 35.4, ZULDAZAR },
				["races"] = HORDE_ONLY,
				["g"] = {
					i(156922),	-- Gloomtail's Head (QI!)
					i(156867),	-- Voodoo'ed Aggression Formula (QI!)
				},
			}),
			q(50791, {	-- Skree...
				["sourceQuests"] = { 50402 },	-- SKREEEEE! (#1)
				["provider"] = { "n", 135272 },	-- Kua'fon
				["isDaily"] = true,
				["coord"] = { 70.7, 50.8, ZULDAZAR },
				["races"] = HORDE_ONLY,
			}),
			q(50402, {	-- SKREEEEE! (#1)
				["sourceQuests"] = { 50394 },	-- Your Problem Now
				["provider"] = { "n", 133678 },	-- Kua'fon
				["coord"] = { 70.8, 50.9, ZULDAZAR },
				["races"] = HORDE_ONLY,
			}),
			q(50796, {	-- SKREEEEE! (#2)
				["sourceQuests"] = { 50402 },	-- SKREEEEE!
				["provider"] = { "n", 135279 },	-- Kua'fon
				["isDaily"] = true,
				["coord"] = { 70.7, 50.8, ZULDAZAR },
				["races"] = HORDE_ONLY,
			}),
			q(50839, {	-- SKREEEEE! (#3)
				["sourceQuests"] = { 50412 },	-- Back to the Nest
				["provider"] = { "n", 135455 },	-- Kua'fon
				["isDaily"] = true,
				["coord"] = { 70.7, 50.8, ZULDAZAR },
				["races"] = HORDE_ONLY,
			}),
			q(50841, {	-- SKREEEEE! (#4)
				["sourceQuests"] = { 50900 },	-- Maybe When You're Older
				["provider"] = { "n", 135502 },	-- Kua'fon
				["isDaily"] = true,
				["coord"] = { 70.8, 50.6, ZULDAZAR },
				["races"] = HORDE_ONLY,
			}),
			q(49680, {	-- Skycaller Soltok
				["sourceQuests"] = { 49940 },	-- Sandscar Breach (breadcrumb)
				["provider"] = { "n", 130450 },	-- Bladeguard Sonji
				["coord"] = { 47.3, 25.0, ZULDAZAR },
				["races"] = HORDE_ONLY,
				["g"] = {
					i(155311),	-- Soltok's Drape
					i(155309),	-- Lightning Caller's Band
				},
			}),
			q(55258, {	-- Sleep, Eat, Repeat
				["sourceQuests"] = { 55253 },	-- A Show of Faith
				["provider"] = { "n", 151286 },	-- Child of Torcali
				["coord"] = { 68.1, 41.7, ZULDAZAR },
				["races"] = HORDE_ONLY,
				["cost"] = { { "i", 157779, 3 }, },	-- 3x Infant Dino Kibble
			}),
			q(49146, {	-- Spirits' Belongings
				["sourceQuests"] = { 49122 },	-- A Port in Peril
				["provider"] = { "n", 127837 },	-- Kaza'jin the Wavebinder
				["coord"] = { 47.1, 60.5, ZULDAZAR },
				["races"] = HORDE_ONLY,
				["g"] = {
					o(277886, {	-- Grimoire of the Other Side 
						["coord"] = { 46.8, 61.9, ZULDAZAR },
						["g"] = { i(153526) },	-- Grimoire of the Other Side (QI!)
					}),
					o(277444, {	-- Reclaimed Bijous
						["coord"] = { 45.6, 60.4, ZULDAZAR },
						["g"] = { i(153525) },	-- Reclaimed Bijous (QI!)
					}),
					o(277447, {	-- Venerated Remains
						["coord"] = { 45.8, 62.4, ZULDAZAR },
						["g"] = { i(153527) },	-- Venerated Remains (QI!)
					}),
				},
			}),
			q(51286, {	-- Stop the Evacuation
				["sourceQuests"] = {
					51246,	-- The Wreckoning
					51247,	-- The Things They Carried
				},
				["provider"] = { "n", 137075 },	-- Lieutenant Dennis Grimtale
				["coord"] = { 76.6, 48.5, ZULDAZAR },
				["races"] = HORDE_ONLY,
			}),
			q(50886, {	-- Surrogate Wings
				["sourceQuests"] = { 50396 },	-- A Pterrible Fate
				["provider"] = { "n", 127377 },	-- Pa'ku
				["coord"] = { 71.4, 49.2, ZULDAZAR },
				["races"] = HORDE_ONLY,
				["g"] = {
					i(158913),	-- Huge Dragon Kite (QI!)
				},
			}),
			q(47963, {	-- The Ancient One
				["sourceQuests"] = { 47521 },	-- Midnight in the Garden of the Loa
				["provider"] = { "n", 133653 },	-- Hexlord Raal
				["coord"] = { 50.7, 29.6, ZULDAZAR },
				["races"] = HORDE_ONLY,
			}),
			q(47329, {	-- The Bloodwatcher Legacy
				["sourceQuests"] = { 47257 },	-- The Bones of Xibala
				["provider"] = { "n", 131582 },	-- Examiner Tae'shara Bloodwatcher
				["coord"] = { 43.9, 72.1, ZULDAZAR },
				["races"] = HORDE_ONLY,
			}),
			q(50395, {	-- The Call of the Skies
				["sourceQuests"] = { 52305 },	-- Nature Versus Nurture
				["provider"] = { "n", 133678 },	-- Kua'fon
				["coord"] = { 70.8, 50.9, ZULDAZAR },
				["races"] = HORDE_ONLY,
			}),
			q(55503, {	-- The Direhorn and the Saurid
				["sourceQuests"] = { 55504 },	-- Wayshrines of Zuldazar
				["provider"] = { "n", 154607 },	-- Image of Torcali
				["coord"] = { 52.4, 23.2, ZULDAZAR },
				["races"] = HORDE_ONLY,
			}),
			q(55797, {	-- The Direhorn Mother's Fury
				["sourceQuests"] = { 55796 },	-- Heresy at the Crossroad
				["provider"] = { "n", 151999 },	-- Jo'nok, Bulwark of Torcali <Zanchuli Council>
				["coord"] = { 28.6, 89.6, NAZMIR },
				["races"] = HORDE_ONLY,
			}),
			q(49424, {	-- The Full Prophecy
				["sourceQuests"] = { 49965 },	-- The Warpack
				["provider"] = { "n", 129561 },	-- Wardruid Loti
				["coord"] = { 49.3, 44.4, ZULDAZAR },
				["races"] = HORDE_ONLY,
			}),
			q(50381, {	-- The Great Hat Robbery
				["sourceQuests"] = {
					51145,	-- Curse of Jani (A)
					47442,	-- Curse of Jani (H)
				},
				["provider"] = { "n", 133612 },	-- Jani
				["coord"] = { 61.9, 46.9, ZULDAZAR },
			}),
			q(53476, {	-- The Great Sea Scrolls
				["description"] = "You receive the item that starts this quest from looting any treasure chest.",
				["provider"] = { "i", 163856 },	-- Ancient Pilgrimage Scrollcasing
				["_drop"] = { "g" },
				["g"] = {
					i(163853),	-- Pilgrimage Scroll (QI!)
					i(163852),	-- Tortollan Pilgrimage Scroll (QI!)
					azeriteItem(163863),	-- Bartered Vrykul Cowl
					azeriteItem(163864),	-- Bartered Vrykul Facemask
					azeriteItem(163862),	-- Bartered Vrykul Hood
					azeriteItem(163865),	-- Bartered Vrykul Warhelm
					azewrongItem(180028),	-- Bartered Vrykul Cowl
					azewrongItem(180029),	-- Bartered Vrykul Facemask
					azewrongItem(180027),	-- Bartered Vrykul Hood
					azewrongItem(180030),	-- Bartered Vrykul Warhelm
				},
				["maps"] = {
					NAZMIR,
					VOLDUN,
					TIRAGARDE_SOUND,
					STORMSONG_VALLEY,
					-- ZULDAZAR,
					DRUSTVAR,
				},
			}),
			q(50297, {	-- The Head of Her Enemy
				["sourceQuests"] = { 49870 },	-- Size Matters
				["provider"] = { "n", 130929 },	-- Witch Doctor Jangalar
				["coord"] = { 64.1, 35.3, ZULDAZAR },
				["races"] = HORDE_ONLY,
				["g"] = {
					i(156925),	-- Offering of Gloomtail's Head (QI!)
					i(159123),	-- Jambani Barrier
					i(158666),	-- Jambani Voodoo Focus
					i(159147),	-- Jambani Walkers
					i(159150),	-- Rastari Stompers
					i(159148),	-- Torcalin Walkers
					i(159149),	-- Zanchuli Footies
				},
			}),
			q(47522, {	-- The Hunter
				["sourceQuests"] = { 47521 },	-- Midnight in the Garden of the Loa
				["provider"] = { "n", 122760 },	-- Wardruid Loti
				["coord"] = { 50.7, 29.7, ZULDAZAR },
				["races"] = HORDE_ONLY,
			}),
			q(50943, {	-- The Joy of Flight
				["sourceQuests"] = { 50942 },	-- Dress for the Slide, Not the Ride
				["provider"] = { "n", 135801 },	-- Hexlord Raal
				["coord"] = { 75.2, 49.4, ZULDAZAR },
				["races"] = HORDE_ONLY,
			}),
			q(47733, {	-- The Loa-Speaker's Betrayal
				["sourceQuests"] = { 51680 },	-- In Bwonsamdi's Shadow
				["provider"] = { "n", 138520 },	-- Zeb'ahari Villager
				["coord"] = { 79.4, 16.8, ZULDAZAR },
				["races"] = HORDE_ONLY,
			}),
			q(47204, {	-- The New Frontline
				["sourceQuests"] = { 47201 },	-- Rokhan
				["provider"] = { "n", 121601 },		-- Rokhan
				["coord"] = { 56.9, 19.1, ZULDAZAR },
				["races"] = HORDE_ONLY,
			}),
			q(47226, {	-- The Orphaned Hatchling
				["sourceQuests"] = { 50538 },	-- The Missing Handler
				["provider"] = { "n", 122939 },	-- Direhorn Hatchling
				["coord"] = { 64.3, 44.6, ZULDAZAR },
				["races"] = HORDE_ONLY,
			}),
			q(49310, {	-- The Prophet's Ploy
				["sourceQuests"] = { 49309 },	-- Thunder's Fall
				["provider"] = { "n", 127837 },	-- Kaza'jin the Wavebinder
				["coord"] = { 49.6, 64.5, ZULDAZAR },
				["races"] = HORDE_ONLY,
				["g"] = {
					azeriteItem(155250),	-- Rastari Helm
					azeriteItem(155260),	-- Rastari Pauldrons
					azeriteItem(155252),	-- Torcalin Coif
					azeriteItem(155262),	-- Torcalin Spaulders
					azeriteItem(155253),	-- Jambani Hood
					azeriteItem(155259),	-- Jambani Shoulderpads
					azeriteItem(155251),	-- Zanchuli Cowl
					azeriteItem(155261),	-- Zanchuli Mantle
					azewrongItem(175283),	-- Rastari Helm
					azewrongItem(175287),	-- Rastari Pauldrons
					azewrongItem(175284),	-- Torcalin Coif
					azewrongItem(175289),	-- Torcalin Spaulders
					azewrongItem(175285),	-- Jambani Hood
					azewrongItem(175286),	-- Jambani Shoulderpads
					azewrongItem(175278),	-- Zanchuli Cowl
					azewrongItem(175288),	-- Zanchuli Mantle
				--	i(175317),	-- Sea Raider's Helmet // Alliance apperance // Sourced under Proudmoore's Parley/Alliance Quest
				--	i(175319),	-- Sea Raider's Spaulders  // Alliance apperance // Sourced under Proudmoore's Parley/Alliance Quest
				},
			}),
			q(49814, {	-- The Scent for a Brutosaur
				["sourceQuests"] = { 49810 },	-- Monstrous Matchmaker
				["provider"] = { "n", 130929 },	-- Witch Doctor Jangalar
				["coord"] = { 64.1, 35.3, ZULDAZAR },
				["races"] = HORDE_ONLY,
				["g"] = {
					o(279044, {	-- Zandalari Rushes
						["g"] = { i(155916) },	-- Fragrant Rushes (QI!)
					}),
				},
			}),
			q(47739, {	-- The Scent of Vengeance
				["sourceQuests"] = { 51680 },	-- In Bwonsamdi's Shadow
				["provider"] = { "n", 132637 },	-- Jamil Abul'housin
				["coord"] = { 76.5, 16.0, ZULDAZAR },
				["races"] = HORDE_ONLY,
				["g"] = {
					i(156834),	-- Traitor's Blood (QI!)
				},
			}),
			q(48015, {	-- The Scrolls of Gral
				["sourceQuests"] = {
					50331,	-- A Different Outcome
					49769,	-- Wreckage of the Cataclysm
				},
				["provider"] = { "n", 125047 },	-- Rokor
				["coord"] = { 81.3, 45.8, ZULDAZAR },
				["g"] = {
					i(151852),	-- Edicts of Gral (QI!)
					i(151854),	-- Scroll of Purify (QI!)
					i(151853),	-- Waves of Power (QI!)
				},
			}),
			q(49679, {	-- The Sethrak Incursion
				["sourceQuests"] = { 49940 },	-- Sandscar Breach (breadcrumb)
				["provider"] = { "n", 131354 },	-- Beastmother Jabati
				["coord"] = { 47.3, 25.1, ZULDAZAR },
				["races"] = HORDE_ONLY,
			}),
			q(47737, {	-- The Temple of Rezan
				["sourceQuests"] = {
					51679,	-- A Strange Port of Call
					51678,	-- Rastakhan's Might
					47742,	-- Zul's Mutiny
				},
				["provider"] = { "n", 124062 },	-- King Rastakhan
				["coord"] = { 76.7, 16.1, ZULDAZAR },
				["races"] = HORDE_ONLY,
			}),
			q(51247, {	-- The Things They Carried
				["sourceQuests"] = { 51555 },	-- Keep Them On Task
				["provider"] = { "n", 137075 },	-- Lieutenant Dennis Grimtale
				["coord"] = { 76.6, 48.5, ZULDAZAR },
				["races"] = HORDE_ONLY,
				["g"] = {
					i(159836),	-- Scouting Map (QI!)
					i(159835),	-- Ship's Manifest (QI!)
					i(159837),	-- Unsent Letter (QI!)
				},
			}),
			q(55247, {	-- The Trust You've Earned
				["sourceQuests"] = { 55507 },	-- Torcali's Blessing
				["provider"] = { "n", 151319 },	-- Li'zal <Priestess of Torcali>
				["coord"] = { 68.3, 41.8, ZULDAZAR },
				["races"] = HORDE_ONLY,
				["g"] = {
					i(168325),	-- Direhorn Saddle (QI!)
				},
			}),
			q(55462, {	-- The Wanderer's Call
				["sourceQuests"] = { 55258 },	-- Sleep, Eat, Repeat
				["provider"] = { "n", 151999 },	-- Jo'nok, Bulwark of Torcali <Zanchuli Council>
				["races"] = HORDE_ONLY,
				["coord"] = { 68.2, 41.6, ZULDAZAR },
			}),
			q(47738, {	-- The Will of the Loa
				["sourceQuests"] = { 51677 },	-- Mending Body and Soul
				["provider"] = { "n", 132637 },	-- Jamil Abul'housin
				["coord"] = { 76.5, 16.0, ZULDAZAR },
				["races"] = HORDE_ONLY,
			}),
			q(51246, {	-- The Wreckoning
				["sourceQuests"] = { 51555 },	-- Keep Them On Task
				["provider"] = { "n", 137075 },	-- Lieutenant Dennis Grimtale
				["coord"] = { 76.6, 48.5, ZULDAZAR },
				["races"] = HORDE_ONLY,
			}),
			q(50154, {	-- They Say It's a Delicacy
				["sourceQuests"] = { 49810 },	-- Monstrous Matchmaker
				["provider"] = { "n", 130929 },	-- Witch Doctor Jangalar
				["coord"] = { 64.1, 35.3, ZULDAZAR },
				["races"] = HORDE_ONLY,
				["g"] = {
					i(155917),	-- Partially Digested Pod (QI!)
				},
			}),
			q(47198, {	-- They Want Us Alive
				["sourceQuests"] = { 47199 },	-- The Blood Gate
				["provider"] = { "n", 121599 },		-- King Rastakhan
				["coord"] = { 60.39, 22.03, ZULDAZAR },
				["races"] = HORDE_ONLY,
				["g"] = {
					i(147833),	-- Antitoxin (QI!)
				},
			}),
			q(49309, {	-- Thunder's Fall
				["sourceQuests"] = {
					49147,	-- Show of Strength
					49148,	-- Crumbling Apart
					49149,	-- Embrace the Voodoo
				},
				["provider"] = { "n", 127837 },	-- Kaza'jin the Wavebinder
				["coord"] = { 49.6, 64.5, ZULDAZAR },
				["races"] = HORDE_ONLY,
			}),
			q(47200, {	-- Ticks
				["sourceQuests"] = { 47199 },	-- The Blood Gate
				["provider"] = { "n", 121599 },		-- King Rastakhan
				["coord"] = { 60.39, 22.03, ZULDAZAR },
				["races"] = HORDE_ONLY,
			}),
			q(49285, {	-- Tiny Treasures
				["sourceQuests"] = { 49283 },	-- Who Seeks the Seekers?
				["provider"] = { "n", 128888 },	-- Koba
				["coord"] = { 70.2, 65.0, ZULDAZAR },
				["g"] = {
					i(156871),	-- Spitzy (TOY!)
					i(156865),	-- Amphibious Lab Enclosure (QI!)
					i(156866),	-- Hatchling's First Alchemy Stone (QI!)
					i(156869),	-- Spitzy (QI!)
				},
			}),
			q(55507, {	-- Torcali's Blessing
				["sourceQuests"] = { 55505 },	-- Roo'li's Memory
				["provider"] = { "n", 151257 },	-- Torcali <Loa of Wanderers>
				["coord"] = { 68.2, 29.4, ZULDAZAR },
				["races"] = HORDE_ONLY,
			}),
			q(47741, {	-- To Sacrifice a Loa
				["sourceQuests"] = { 47734 },	-- Partners in Heresy
				["provider"] = { "n", 124655 },	-- King Rastakhan
				["coord"] = { 74.9, 24.9, ZULDAZAR },
				["races"] = HORDE_ONLY,
			}),
			q(53776, {	-- To the Broken Shore
				["provider"] = { "n", 145225 },	-- Spirit of Vol'jin
				["coord"] = { 67.6, 72.8, ZANCHUL_HALL_OF_THE_HIGH_PRIESTS },
				["races"] = HORDE_ONLY,
				["sourceQuests"] = { 53775 },	-- Shades of Disruption
				["g"] = {
					i(165401),	-- The Glaive of Vol'jin (QI!)
				},
			}),
			q(55798, {	-- Wander Not Alone
				["sourceQuests"] = { 55797 },	-- The Direhorn Mother's Fury
				["provider"] = { "n", 151999 },	-- Jo'nok, Bulwark of Torcali <Zanchuli Council>
				["coord"] = { 23.3, 73.8, NAZMIR },
				["races"] = HORDE_ONLY,
				["g"] = {
					i(168408),	-- Child of Torcali (MOUNT!)
				},
			}),
			q(51087, {	-- WANTED: Dark Chronicler (H)
				["provider"] = { "o", 287229 },	-- Wanted: Dark Chronicler
				["coord"] = { 44.3, 72.2, ZULDAZAR },
				["races"] = HORDE_ONLY,
			}),
			q(51069, {	-- WANTED: Darkspeaker Jo'la
				["provider"] = { "o", 287185 },	-- Wanted: Darkspeaker Jo'la
				["coord"] = { 63.7, 10.2, ZULDAZAR },
			}),
			q(51980, {	-- WANTED: Jabra'kan
				["provider"] = { "o", 291291 },	-- Wanted: Poacher
				["coord"] = { 69.0, 40.9, ZULDAZAR },
				["races"] = HORDE_ONLY,
			}),
			q(51072, {	-- WANTED: Prime Thumpknuckle (H)
				["provider"] = { "o", 287189 },	-- Wanted: Dangerous Beasts
				["coord"] = { 51.6, 45.4, ZULDAZAR },
				["races"] = HORDE_ONLY,
			}),
			q(51071, {	-- WANTED: Sabertusk Empress (H)
				["provider"] = { "o", 287189 },	-- Wanted: Dangerous Beasts
				["coord"] = { 51.6, 45.4, ZULDAZAR },
				["races"] = HORDE_ONLY,
			}),
			q(51091, {	-- WANTED: Ten'gor and Nol'ixwan
				["provider"] = { "o", 271706 },	-- Hunters' Board
				["coord"] = { 67.4, 17.9, ZULDAZAR },
			}),
			q(47205, {	-- Warmother
				["sourceQuests"] = { 47201 },	-- Rokhan
				["provider"] = { "n", 121601 },		-- Rokhan
				["coord"] = { 56.9, 19.10, ZULDAZAR },
				["races"] = HORDE_ONLY,
				["g"] = {
					i(158653),	-- Bloodsiege Drape
					i(162453),	-- Shazraka's Curse Ring
				},
			}),
			q(55504, {	-- Wayshrines of Zuldazar
				["sourceQuests"] = { 55462 },	-- The Wanderer's Call
				["provider"] = { "n", 151257 },	-- Torcali <Loa of Wanderers>
				["races"] = HORDE_ONLY,
				["coord"] = { 68.2, 29.6, ZULDAZAR },
				["g"] = {
					i(168005),	-- Mature Direbloom Petal (QI!)
				},
			}),
			q(51990, {	-- Wings for the Kraal
				["sourceQuests"] = {
					47311,	-- Headbutting 101
					47272,	-- Direhorn Growth Hormone
					47312,	-- Queenfeather
				},
				["provider"] = { "n", 121706 },	-- Beastlord L'kala
				["coord"] = { 66.8, 42.5, ZULDAZAR },
				["races"] = HORDE_ONLY,
				["g"] = {
					i(150272),	-- Nearly-hatching Pterrordax Egg (QI!)
				},
			}),
			q(53774, {	-- Wisdom of the Warchief
				["minReputation"] = { FACTION_ZANDALARI_EMPIRE, EXALTED },	-- Zandalari Empire, Exalted.
				["provider"] = { "n", 141555 },	-- Baine Bloodhoof
				["coord"] = { 41.4, 72.2, HALL_OF_CHRONICLERS },
				["races"] = HORDE_ONLY,
				["sourceQuests"] = {
					51521,	-- The True Leader of Zandalar
					54165,	-- The Return of Derek Proudmoore
				},
				["g"] = {
					i(164944),	-- The Bloodied Glaive of Vol'jin (QI!)
				},
			}),
			q(50940, {	-- Wisdom of the Wingless
				["sourceQuests"] = { 50397 },	-- Aerial Aspirations
				["provider"] = { "n", 133682 },	-- Kua'fon
				["coord"] = { 75.2, 49.4, ZULDAZAR },
				["races"] = HORDE_ONLY,
			}),
			q(51538, {	-- Word from the Deep
				["sourceQuests"] = { 48026 },	-- Beneath the Waves
				["provider"] = { "n", 131461 },	-- Spirit of Gral
				["coord"] = { 83.5, 44.1, ZULDAZAR },
			}),
			q(49144, {	-- Wrath of the Zandalari
				["sourceQuests"] = { 49122 },	-- A Port in Peril
				["provider"] = { "n", 127815 },	-- Zolani
				["coord"] = { 47.9, 60.4, ZULDAZAR },
				["races"] = HORDE_ONLY,
			}),
			q(47228, {	-- Xibalan Ecology (H)
				["sourceQuests"] = { 47329 },	-- The Bloodwatcher Legacy
				["provider"] = { "n", 131582 },	-- Examiner Tae'shara Bloodwatcher
				["coord"] = { 43.9, 72.1, ZULDAZAR },
				["races"] = HORDE_ONLY,
			}),
			q(50394, {	-- Your Problem Now
				["sourceQuests"] = { 50393 },	-- A Child of Pa'ku
				["provider"] = { "n", 127377 },	-- Pa'ku
				["coord"] = { 71.4, 49.2, ZULDAZAR },
				["races"] = HORDE_ONLY,
			}),
			q(50433, {	-- Zanchuli Disbanded
				["isBreadcrumb"] = true,
				["coord"] = { 48.6, 26.8, ZULDAZAR },
				["races"] = HORDE_ONLY,
				["provider"] = { "n", 122760 },	-- Wardruid Loti
				["sourceQuests"] = {
					47528,	-- Mistress of Lies
					47741,	-- To Sacrifice a Loa
				},
			}),
			q(49493, {	-- Zul's Ethical Dilemma
				["sourceQuests"] = { 49492 },	-- Arrogance of Vol'jamba
				["provider"] = { "n", 129907 },	-- Zul the Prophet
				["coord"] = { 64.4, 28.5, ZULDAZAR },
				["races"] = HORDE_ONLY,
				["g"] = {
					i(155458),	-- Mindbreaker Chant (QI!)
				},
			}),
			q(47742, {	-- Zul's Mutiny
				["sourceQuests"] = { 47738 },	-- The Will of the Loa
				["provider"] = { "n", 124062 },	-- King Rastakhan
				["coord"] = { 76.7, 16.1, ZULDAZAR },
				["races"] = HORDE_ONLY,
			}),
			q(49494, {	-- Zuvembi Brew
				["sourceQuests"] = { 49492 },	-- Arrogance of Vol'jamba
				["provider"] = { "n", 129907 },	-- Zul the Prophet
				["coord"] = { 64.4, 28.5, ZULDAZAR },
				["races"] = HORDE_ONLY,
			}),
			q(53449, {	-- Apes of Wrath
				["isBreadcrumb"] = true,
				["provider"] = { "n", 129589 },	-- The Monkey King
				["coords"] = {
					{ 47.0, 88.4, DAZARALOR },
					{ 57, 58.5, ZULDAZAR },
				},
				["races"] = ALLIANCE_ONLY,
			}),
			q(50044, {	-- Archaeological Efficiency (A)
				["coord"] = { 44.4, 73.4, ZULDAZAR },
				["races"] = ALLIANCE_ONLY,
				["provider"] = { "n", 131763 },	-- Excavator Morgrum Emberflint
				["sourceQuests"] = { 49276 },	-- The Thrill of Exploration
				["g"] = {
					i(159640),	-- Elemental Summoning Stone (QI!)
					i(156597),	-- Xibalan Fossil Fragment (QI!)
				},
			}),
			q(49491, {	-- Fuel for the Voodoo
				["provider"] = { "n", 130706 },	-- Izita's Spirit
				["coord"] = { 63.5, 31.7, ZULDAZAR },
				["sourceQuests"] = { 49488 },	-- Tal'gurub
				["races"] = HORDE_ONLY,
				["g"] = {
					o(278453, {	-- Voodoo Totem
						["coords"] = {
							{ 62.4, 28.5, ZULDAZAR },
							{ 62.5, 28.4, ZULDAZAR },
							{ 62.7, 29.1, ZULDAZAR },
							{ 63.1, 30.2, ZULDAZAR },
							{ 63.1, 31.3, ZULDAZAR },
							{ 63.7, 30.9, ZULDAZAR },
							{ 63.8, 30.2, ZULDAZAR },
							{ 63.9, 31.9, ZULDAZAR },
							{ 64.2, 32.8, ZULDAZAR },
							{ 64.4, 33.9, ZULDAZAR },
							{ 64.7, 33.0, ZULDAZAR },
						},
						["g"] = { i(154901) },	-- Voodoo Totem (QI!)
					}),
				},
			}),
			q(53452, {	-- Gorilla Warfare (A)
				["provider"] = { "n", 143792 },	-- Tsunga
				["coord"] = { 50.2, 54.6, ZULDAZAR },
				["races"] = ALLIANCE_ONLY,
			}),
			q(49920, {	-- Gorilla Warfare (H)
				["provider"] = { "n", 130947 },	-- Tsunga
				["coord"] = { 50.2, 54.6, ZULDAZAR },
				["races"] = HORDE_ONLY,
			}),
			q(49428, {	-- Grand Theft Telemancy (A)
				["provider"] = { "n", 131763 },	-- Excavator Morgrum Emberflint
				["coord"] = { 44.4, 73.4, ZULDAZAR },
				["sourceQuests"] = { 49282 },	-- Morgrum's Extended Survey
				["races"] = ALLIANCE_ONLY,
				["g"] = {
					i(159743),	-- Breath of Xibala (QI!)
				},
			}),
			q(53450, {	-- King Da'ka (A)
				["provider"] = { "n", 143787 },	-- Flap-Flap
				["coord"] = { 51.4, 53.0, ZULDAZAR },
				["sourceQuests"] = { 53449 },	-- Apes of Wrath
				["races"] = ALLIANCE_ONLY,
			}),
			q(49282, {	-- Morgrum's Extended Survey
				["coord"] = { 44.4, 73.4, ZULDAZAR },
				["races"] = ALLIANCE_ONLY,
				["provider"] = { "n", 131763 },	-- Excavator Morgrum Emberflint
				["sourceQuests"] = {
					49060,	-- Xibalan Ecology
					49274,	-- Morgrum's Survey
					50044,	-- Archaeological Efficiency
				},
			}),
			q(49274, {	-- Morgrum's Survey
				["coord"] = { 44.4, 73.4, ZULDAZAR },
				["races"] = ALLIANCE_ONLY,
				["provider"] = { "n", 131763 },	-- Excavator Morgrum Emberflint
				["sourceQuests"] = { 49276 },	-- The Thrill of Exploration
			}),
			q(49427, {	-- Not Our Purple Elves
				["coord"] = { 44.4, 73.4, ZULDAZAR },
				["races"] = ALLIANCE_ONLY,
				["provider"] = { "n", 131763 },	-- Excavator Morgrum Emberflint
				["sourceQuests"] = { 49282 },	-- Morgrum's Extended Survey
			}),
			q(52210, {	-- Sending Out An SOS
				["sourceQuests"] = {
					-- 47528,	-- Mistress of Lies (lq of inaccurate quest dialog / On Jan 9 2025 this was reported as not required)
					47741,	-- To Sacrifice a Loa (Based on wowhead comment section)
					49310,	-- The Prophet's Ploy (guessed)
				},
				["isBreadcrumb"] = true,
				["provider"] = { "n", 141555 },	-- Baine Bloodhoof
				["coord"] = { 41.4, 72.2, HALL_OF_CHRONICLERS },
				["races"] = HORDE_ONLY,
			}),
			q(49426, {	-- The King's Gambit
				["sourceQuests"] = { 49425 },	-- City of Gold
				["provider"] = { "n", 131049 },	-- Rezan
				["coord"] = { 43.6, 39.2, ZULDAZAR },
				["races"] = HORDE_ONLY,
				["g"] = {
					azeriteItem(155239),	-- Rastari Breastplate
					azeriteItem(161143),	-- Rastari Helmet
					azeriteItem(161141),	-- Torcalin Headguard
					azeriteItem(155240),	-- Torcalin Chainmail
					azeriteItem(161140),	-- Jambani Mask
					azeriteItem(155241),	-- Jambani Jerkin
					azeriteItem(161142),	-- Zanchuli Crest
					azeriteItem(155258),	-- Zanchuli Raiment
					azewrongItem(175291),	-- Torcalin Headguard
					azewrongItem(175281),	-- Torcalin Chainmail
					azewrongItem(175290),	-- Jambani Mask
					azewrongItem(175282),	-- Jambani Jerkin
					azewrongItem(175292),	-- Zanchuli Crest
					azewrongItem(175366),	-- Zanchuli Raiment
					azewrongItem(175293),	-- Rastari Helmet
					azewrongItem(175280),	-- Rastari Breastplate
				--	i(175294),	-- Sea Raider's Greathelm // Alliance appearance // Listed under Tirisgarde Fairwind's "Friends" (Alliance Quest Reward)
				--	i(175354),	-- Sea Raider's Breastplate // Alliance apperance // Listed under Tirisgarde Fairwind's "Friends" (Alliance Quest Reward)
				},
			}),
			q(49276, {	-- The Thrill of Exploration
				["coord"] = { 41.2, 71.4, ZULDAZAR },
				["races"] = ALLIANCE_ONLY,
				["provider"] = { "n", 131777 },	-- Acadia Chistlestone
			}),
			q(49490, {	-- The Urn of Voices
				["provider"] = { "n", 129907 },	-- Zul the Prophet
				["coord"] = { 62.8, 32.5, ZULDAZAR },
				["sourceQuests"] = { 49488 },	-- Tal'gurub
				["races"] = HORDE_ONLY,
			}),
			q(53453, {	-- To Stomp or Not To Stomp
				["provider"] = { "n", 143787 },	-- Flap-Flap
				["coord"] = { 51.4, 53.0, ZULDAZAR },
				["sourceQuests"] = { 53449 },	-- Apes of Wrath
				["races"] = ALLIANCE_ONLY,
			}),
			q(51085, {	-- WANTED: Dark Chronicler (A)
				["coord"] = { 40.7, 71.1, ZULDAZAR },
				["races"] = ALLIANCE_ONLY,
				["provider"] = { "o", 287228 },	-- Wanted: Dark Chronicler
			}),
			q(53337, {	-- WANTED: Prime Thumpknuckle (A)
				["provider"] = { "o", 287189 },	-- Wanted: Dangerous Beasts
				["coord"] = { 51.6, 45.4, ZULDAZAR },
				["races"] = ALLIANCE_ONLY,
			}),
			q(53336, {	-- WANTED: Sabertusk Empress (A)
				["provider"] = { "o", 287189 },	-- Wanted: Dangerous Beasts
				["coord"] = { 51.6, 45.4, ZULDAZAR },
				["races"] = ALLIANCE_ONLY,
			}),
			q(49060, {	-- Xibalan Ecology (A)
				["coord"] = { 41.2, 71.4, ZULDAZAR },
				["races"] = ALLIANCE_ONLY,
				["provider"] = { "n", 131777 },	-- Acadia Chistlestone
				["sourceQuests"] = { 49276 },	-- The Thrill of Exploration
			}),
			--	unsorted
			q(50954, {	-- Zandalar Forever!
				["sourceQuests"] = {
					47229,	-- Bulwark of Torcali
					50087,	-- Ateena's Fall
					50702,	-- Defeat Jakra'zet
					49426,	-- The King's Gambit
				},
				["provider"] = { "n", 135890 },		-- King Rastakhan
				["coord"] = { 60.0, 22.2, ZULDAZAR },
				["races"] = HORDE_ONLY,
				["maps"] = { 1181 },	-- Zandalar Scenario
				["g"] = {
					ach(12481),	-- The Final Seal
				},
			}),
			q(54756, {	-- Garbage for the Garbage God
				["races"] = HORDE_ONLY,
				["provider"] = { "i", 166507 },	-- Jani's First Offering
			}),
			q(54757, {	-- The Loa of Scavengers
				["races"] = HORDE_ONLY,
				["provider"] = { "n", 149006 },	-- Jani
				["sourceQuests"] = { 54756 },	-- Garbage for the Garbage God
			}),
			n(BONUS_OBJECTIVES, sharedData({
				["lockCriteria"] = { 1, "lvl", 50 },
				["races"] = HORDE_ONLY,
			},{
				-- TODO: Check SQ, also probably can't do after a certain level
				q(47527),	-- Rituals of Heresy
				q(47797),	-- Occupation Hazard
				q(49315),	-- Dreadpearl Collusion
				q(49918),	-- Gorilla Gorge
				q(50178),	-- Trouble in the Rootway
			})),
		}),
	}),
})));

root(ROOTS.HiddenQuestTriggers, m(ZANDALAR, bubbleDown({ ["timeline"] = { ADDED_8_0_1 } }, {
	m(ZULDAZAR, {
		q(54738),	-- Loa Changer Jani to Paku
	}),
})));