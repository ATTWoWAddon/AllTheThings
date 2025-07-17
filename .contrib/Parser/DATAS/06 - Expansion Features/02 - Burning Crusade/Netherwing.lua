-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------
ExportDB.OnTooltipDB.ForNetherwing = [[~function(t, tooltipInfo)
	local reputation = t.reputation;
	if reputation < 42000 then
		_.Modules.FactionData.AddReputationTooltipInfo(tooltipInfo, reputation, "Turn in Netherwing Eggs.", 250, 42000);
	end
end]];
root(ROOTS.ExpansionFeatures, expansion(EXPANSION.TBC, applyclassicphase(TBC_PHASE_THREE_NETHERWING, {
	header(HEADERS.Faction, FACTION_NETHERWING, bubbleDownSelf({ ["timeline"] = { ADDED_2_1_0 } }, {
		["description"] = "The Netherwing, sometimes called the Netherwing dragonflight, are the main faction of the nether dragons in Outland.\nAlthough generally hostile to most humanoids based on their treatment by the Dragonmaw clan of orcs in Shadowmoon Valley, they can be swayed to change their attitude if tasks to aid them are completed.",
		["icon"] = 132250,
		["maps"] = { SHADOWMOON_VALLEY },
		["lvl"] = lvlsquish(70, 70, 25),
		["groups"] = {
			n(ACHIEVEMENTS, {
				achWithRep(898, FACTION_NETHERWING),	-- On Wings of Nether
			}),
			n(FACTIONS, {
				faction(FACTION_NETHERWING, {	-- Netherwing
					["icon"] = 132250,
					["OnTooltip"] = [[_.OnTooltipDB.ForNetherwing]],
				}),
			}),
			prof(HERBALISM, {
				i(32468, {	-- Netherdust Pollen
					["provider"] = { "o", 185881 },	-- Netherdust Bush
				}),
			}),
			prof(MINING, {
				i(32464, {	-- Nethercite Ore
					["provider"] = { "o", 185877 },	-- Nethercite Deposit
				}),
			}),
			prof(SKINNING, {
				i(32470, {	-- Nethermine Flayer Hide
					["crs"] = {
						23267,	-- Arvoar the Rapacious
						23269,	-- Barash the Den Mother
						23285,	-- Nethermine Burster
						23169,	-- Nethermine Flayer
						23326,	-- Nethermine Ravager
						23264,	-- Overmine Flayer
					},
				}),
			}),
			n(QUESTS, {
				q(11041, {	-- A Job Unfinished...
					["provider"] = { "i", 32621 },	-- Partially Digested Hand
					["sourceQuest"] = 10870,	-- Ally of the Netherwing
					["minReputation"] = { FACTION_NETHERWING, NEUTRAL },	-- Netherwing, Neutral.
					["groups"] = {
						objective(1, {	-- 0/10 Overmine Flayer slain
							["provider"] = { "n", 23264 },	-- Overmine Flayer
						}),
						objective(2, {	-- 0/1 Barash the Den Mother slain
							["provider"] = { "n", 23269 },	-- Barash the Den Mother
						}),
						i(32866),	-- Ascendant's Boots
						i(32867),	-- Dragonmaw Augur's Cinch
						i(32865),	-- Drake Tamer's Gloves
						i(32868),	-- Skybreaker's Mantle
					},
				}),
				q(11020, {	-- A Slow Death
					["qg"] = 23141,	-- Yarzill the Merc
					["sourceQuest"] = 11019,	-- Your Friend on the Inside
					["coord"] = { 65.9, 86.4, SHADOWMOON_VALLEY },
					["maxReputation"] = { FACTION_NETHERWING, EXALTED },	-- Netherwing, Exalted.
					["isDaily"] = true,
					["groups"] = {
						objective(1, {	-- 0/12 Dragonmaw Peon Camp Poisoned
							["provider"] = { "i", 32503 },	-- Yarzill's Mutton
							["cost"] = { { "i", 32502, 12 }},	-- Fel Gland
							["coord"] = { 72.8, 81.8, SHADOWMOON_VALLEY },
							["cr"] = 22252,	-- Dragonmaw Peon
						}),
						i(32502, {	-- Fel Gland
							["crs"] = {
								21878,	-- Felboar
								21408,	-- Felfire Diemetradon
								21462,	-- Greater Felfire Diemetradon
								21305,	-- Mutant Horror
								21901,	-- Netherskate
								21864,	-- Scorchshell Pincer
								23020,	-- Shadow Serpent
								21879,	-- Vilewing Chimaera
							},
						}),
					},
				}),
				q(11050, {	-- Accepting All Eggs
					["qg"] = 23141,	-- Yarzill the Merc
					["sourceQuest"] = 11049,	-- The Great Netherwing Egg Hunt
					["coord"] = { 65.9, 86.4, SHADOWMOON_VALLEY },
					["maxReputation"] = { FACTION_NETHERWING, EXALTED },	-- Netherwing, Exalted.
					["cost"] = {{ "i", 32506, 1 }},	-- Netherwing Egg
					["repeatable"] = true,
				}),
				q(11012, {	-- Blood Oath of the Netherwing
					["qg"] = 22113,	-- Mordenai
					["sourceQuest"] = 10870,	-- Ally of the Netherwing
					["coord"] = { 59.3, 58.7, SHADOWMOON_VALLEY },
				}),
				q(11107, {	-- Bow to the Highlord
					["qg"] = 23140,	-- Taskmaster Varkule Dragonbreath
					["sourceQuest"] = 11092,	-- Hail, Commander!
					["coord"] = { 66.0, 86.4, SHADOWMOON_VALLEY },
					["minReputation"] = { FACTION_NETHERWING, EXALTED },	-- Netherwing, Exalted.
				}),
				q(11100, {	-- Commander Arcus
					["providers"] = {
						{ "n", 21402 },	-- Anchorite Ceyla
						{ "i", 32842 },	-- Dragonmaw Flare Gun
					},
					["sourceQuest"] = 11099,	-- Kill Them All! (Aldor)
					["coord"] = { 62.4, 28.4, SHADOWMOON_VALLEY },
					["minReputation"] = { FACTION_THE_ALDOR, NEUTRAL },	-- The Aldor, Neutral.
				}),
				q(11095, {	-- Commander Hobb
					["providers"] = {
						{ "n", 21955 },	-- Arcanist Thelis
						{ "i", 32842 },	-- Dragonmaw Flare Gun
					},
					["sourceQuest"] = 11094,	-- Kill Them All! (Scryers)
					["coord"] = { 56.2, 59.6, SHADOWMOON_VALLEY },
					["minReputation"] = { FACTION_THE_SCRYERS, NEUTRAL },	-- The Scryers, Neutral.
				}),
				q(11083, {	-- Crazed and Confused
					["qg"] = 23166,	-- Ronag the Slave Driver
					["sourceQuest"] = 11075,	-- The Netherwing Mines
					["coord"] = { 71.6, 87.6, SHADOWMOON_VALLEY },
					["minReputation"] = { FACTION_NETHERWING, FRIENDLY },	-- Netherwing, Friendly.
					["groups"] = {
						objective(1, {	-- 0/1 Crazed Murkblood Foreman slain
							["provider"] = { "n", 23305 },	-- Crazed Murkblood Foreman
						}),
						objective(2, {	-- 0/5 Crazed Murkblood Miner slain
							["provider"] = { "n", 23324 },	-- Crazed Murkblood Miner
						}),
					},
				}),
				q(11086, {	-- Disrupting the Twilight Portal
					["qg"] = 23139,	-- Overlord Mor'ghor
					["sourceQuest"] = 11084,	-- Stand Tall, Captain!
					["coord"] = { 66.3, 85.6, SHADOWMOON_VALLEY },
					["maxReputation"] = { FACTION_NETHERWING, EXALTED },	-- Netherwing, Exalted.
					["maps"] = { NAGRAND },
					["isDaily"] = true,
					["groups"] = {
						objective(1, {	-- 0/20 Deathshadow Agent slain
							["providers"] = {
								{ "n", 23393 },	-- Deathshadow Agent
								{ "n", 22341 },	-- Deathshadow Acolyte
								{ "n", 22342 },	-- Deathshadow Spellbinder
								{ "n", 22343 },	-- Deathshadow Archon
								{ "n", 22363 },	-- Deathshadow Warlock
								{ "n", 22393 },	-- Deathshadow Overlord
							},
							["coord"] = { 12.0, 40.6, NAGRAND },
						}),
					},
				}),
				q(11071, {	-- Dragonmaw Race: Captain Skyshatter
					["qg"] = 23348,	-- Captain Skyshatter
					["sourceQuest"] = 11070,	-- Dragonmaw Race: Wing Commander Mulverick
					["coord"] = { 65.5, 85.3, SHADOWMOON_VALLEY },
					["groups"] = {
						ach(1638, {	-- Skyshattered
							["sourceQuest"] = 11071,	-- Dragonmaw Race: Captain Skyshatter
						}),
						i(32863),	-- Skybreaker Whip
					},
				}),
				q(11068, {	-- Dragonmaw Race: Corlok the Vet
					["qg"] = 23344,	-- Corlok the Vet
					["sourceQuest"] = 11067,	-- Dragonmaw Race: Trope the Filth-Belcher
					["coord"] = { 65.2, 85.2, SHADOWMOON_VALLEY },
				}),
				q(11064, {	-- Dragonmaw Race: The Ballad of Oldie McOld
					["qg"] = 23340,	-- Murg "Oldie" Muckjaw
					["sourceQuest"] = 11063,	-- Earning Your Wings
					["coord"] = { 65.2, 85.7, SHADOWMOON_VALLEY },
				}),
				q(11067, {	-- Dragonmaw Race: Trope the Filth-Belcher
					["qg"] = 23342,	-- Trope the Filth-Belcher
					["sourceQuest"] = 11064,	-- Dragonmaw Race: The Ballad of Oldie McOld
					["coord"] = { 65.2, 85.5, SHADOWMOON_VALLEY },
				}),
				q(11069, {	-- Dragonmaw Race: Wing Commander Ichman
					["qg"] = 23345,	-- Wing Commander Ichman
					["sourceQuest"] = 11068,	-- Dragonmaw Race: Corlok the Vet
					["coord"] = { 65.2, 85.1, SHADOWMOON_VALLEY },
				}),
				q(11070, {	-- Dragonmaw Race: Wing Commander Mulverick
					["qg"] = 23346,	-- Wing Commander Mulverick
					["sourceQuest"] = 11069,	-- Dragonmaw Race: Wing Commander Ichman
					["coord"] = { 65.2, 84.9, SHADOWMOON_VALLEY },
				}),
				q(11077, {	-- Dragons are the Least of Our Problems
					["qg"] = 23376,	-- Dragonmaw Foreman
					["sourceQuest"] = 11075,	-- The Netherwing Mines
					["coord"] = { 63.4, 87.4, SHADOWMOON_VALLEY },
					["maxReputation"] = { FACTION_NETHERWING, EXALTED },	-- Netherwing, Exalted.
					["minReputation"] = { FACTION_NETHERWING, FRIENDLY },	-- Netherwing, Friendly.
					["isDaily"] = true,
					["groups"] = {
						objective(1, {	-- 0/15 Nethermine Flayer slain
							["provider"] = { "n", 23169 },	-- Nethermine Flayer
						}),
						objective(2, {	-- 0/5 Nethermine Ravager slain
							["provider"] = { "n", 23326 },	-- Nethermine Ravager
						}),
					},
				}),
				q(11063, {	-- Earning Your Wings
					["qg"] = 22433,	-- Ja'y Nosliw
					["sourceQuest"] = 11084,	-- Stand Tall, Captain!
					["coord"] = { 65.9, 87.2, SHADOWMOON_VALLEY },
				}),
				q(11014, {	-- Enter the Taskmaster
					["qg"] = 23139,	-- Overlord Mor'ghor
					["sourceQuest"] = 11013,	-- In Service of the Illidari
					["coord"] = { 66.2, 85.6, SHADOWMOON_VALLEY },
				}),
				q(11092, {	-- Hail, Commander!
					["qg"] = 23140,	-- Taskmaster Varkule Dragonbreath
					["sourceQuest"] = 11084,	-- Stand Tall, Captain!
					["coord"] = { 66.0, 86.4, SHADOWMOON_VALLEY },
					["minReputation"] = { FACTION_NETHERWING, REVERED },	-- Netherwing, Revered.
					["groups"] = {
						i(32864),	-- Commander's Badge
					},
				}),
				q(11013, {	-- In Service of the Illidari
					["qg"] = 22113,	-- Mordenai
					["sourceQuest"] = 11012,	-- Blood Oath of the Netherwing
					["coord"] = { 59.3, 58.7, SHADOWMOON_VALLEY },
				}),
				q(11109, {	-- Jorus the Cobalt Netherwing Drake
					["qg"] = 23462,	-- Jorus
					["sourceQuest"] = 11107,	-- Bow to the Highlord
					["coord"] = { 67.8, 17.2, SHATTRATH_CITY },
					["minReputation"] = { FACTION_NETHERWING, EXALTED },	-- Netherwing, Exalted.
					["groups"] = {
						i(32859),	-- Reins of the Cobalt Netherwing Drake Mount
					},
				}),
				q(11099, {	-- Kill Them All! (Aldor)
					["providers"] = {
						{ "n", 23139 },	-- Overlord Mor'ghor
						{ "i", 32842 },	-- Dragonmaw Flare Gun
					},
					["sourceQuest"] = 11092,	-- Hail, Commander!
					["coord"] = { 66.2, 85.6, SHADOWMOON_VALLEY },
					["minReputation"] = { FACTION_THE_ALDOR, FRIENDLY },	-- The Aldor, Friendly.
				}),
				q(11094, {	-- Kill Them All! (Scryers)
					["providers"] = {
						{ "n", 23139 },	-- Overlord Mor'ghor
						{ "i", 32842 },	-- Dragonmaw Flare Gun
					},
					["sourceQuest"] = 11092,	-- Hail, Commander!
					["coord"] = { 66.2, 85.6, SHADOWMOON_VALLEY },
					["minReputation"] = { FACTION_THE_SCRYERS, FRIENDLY },	-- The Scryers, Friendly.
				}),
				q(11108, {	-- Lord Illidan Stormrage
					["qg"] = 23139,	-- Overlord Mor'ghor
					["sourceQuest"] = 11107,	-- Bow to the Highlord
					["coord"] = { 66.2, 85.6, SHADOWMOON_VALLEY },
				}),
				q(11110, {	-- Malfas the Purple Netherwing Drake
					["qg"] = 23464,	-- Malfas
					["sourceQuest"] = 11107,	-- Bow to the Highlord
					["coord"] = { 67.8, 18.0, SHATTRATH_CITY },
					["minReputation"] = { FACTION_NETHERWING, EXALTED },	-- Netherwing, Exalted.
					["groups"] = {
						i(32860),	-- Reins of the Purple Netherwing Drake Mount
					},
				}),
				q(11018, {	-- Nethercite Ore
					["qg"] = 23140,	-- Taskmaster Varkule Dragonbreath
					["sourceQuest"] = 11014,	-- Enter the Taskmaster
					["maxReputation"] = { FACTION_NETHERWING, EXALTED },	-- Netherwing, Exalted.
					["cost"] = { { "i", 32464, 40 } },	-- Nethercite Ore
					["requireSkill"] = MINING,
					["isDaily"] = true,
				}),
				q(11017, {	-- Netherdust Pollen
					["qg"] = 23140,	-- Taskmaster Varkule Dragonbreath
					["sourceQuest"] = 11014,	-- Enter the Taskmaster
					["maxReputation"] = { FACTION_NETHERWING, EXALTED },	-- Netherwing, Exalted.
					["cost"] = { { "i", 32468, 40 } },	-- Netherdust Pollen
					["requireSkill"] = HERBALISM,
					["isDaily"] = true,
				}),
				q(11016, {	-- Nethermine Flayer Hide
					["qg"] = 23140,	-- Taskmaster Varkule Dragonbreath
					["sourceQuest"] = 11014,	-- Enter the Taskmaster
					["maxReputation"] = { FACTION_NETHERWING, EXALTED },	-- Netherwing, Exalted.
					["cost"] = { { "i", 32470, 35 } },	-- Nethermine Flayer Hide
					["requireSkill"] = SKINNING,
					["isDaily"] = true,
				}),
				q(11015, {	-- Netherwing Crystals
					["qg"] = 23140,	-- Taskmaster Varkule Dragonbreath
					["sourceQuest"] = 11014,	-- Enter the Taskmaster
					["maxReputation"] = { FACTION_NETHERWING, EXALTED },	-- Netherwing, Exalted.
					["cost"] = { { "i", 32427, 30 } },	-- Netherwing Crystals
					["isDaily"] = true,
				}),
				q(11111, {	-- Onyxien the Onyx Netherwing Drake
					["qg"] = 23463,	-- Onyxien
					["sourceQuest"] = 11107,	-- Bow to the Highlord
					["coord"] = { 67.6, 18.4, SHATTRATH_CITY },
					["minReputation"] = { FACTION_NETHERWING, EXALTED },	-- Netherwing, Exalted.
					["groups"] = {
						i(32857),	-- Reins of the Onyx Netherwing Drake Mount
					},
				}),
				q(11054, {	-- Overseeing and You: Making the Right Choices
					["qg"] = 23291,	-- Chief Overseer Mudlump
					["sourceQuest"] = 11053,	-- Rise, Overseer!
					["coord"] = { 66.8, 86.0, SHADOWMOON_VALLEY },
					["minReputation"] = { FACTION_NETHERWING, FRIENDLY },	-- Netherwing, Friendly.
					["groups"] = {
						objective(1, {	-- 0/10 Knothide Leather
							["cost"] = {
								{ "i", 21887, 10 },	-- Knothide Leather
							},
						}),
						objective(2, {	-- 0/1 Hardened Hide of Tyrantus
							["provider"] = { "i", 32666 },	-- Hardened Hide of Tyrantus
							["cr"] = 20931,	-- Tyrantus
						}),
					},
				}),
				q(11076, {	-- Picking Up The Pieces...
					["qg"] = 23149,	-- Mistress of the Mines
					["sourceQuest"] = 11075,	-- The Netherwing Mines
					["coord"] = { 63.0, 87.8, SHADOWMOON_VALLEY },
					["maxReputation"] = { FACTION_NETHERWING, EXALTED },	-- Netherwing, Exalted.
					["isDaily"] = true,
					["groups"] = {
						objective(1, {	-- 0/15 Nethermine Cargo
							["providers"] = {
								{ "i", 32723 },	-- Nethermine Cargo
								{ "o", 185939 },	-- Nethermine Cargo
							},
						}),
					},
				}),
				q(11053, {	-- Rise, Overseer!
					["qg"] = 23140,	-- Taskmaster Varkule Dragonbreath
					["sourceQuest"] = 11014,	-- Enter the Taskmaster
					["coord"] = { 66.0, 86.4, SHADOWMOON_VALLEY },
					["minReputation"] = { FACTION_NETHERWING, FRIENDLY },	-- Netherwing, Friendly.
					["groups"] = {
						i(32694),	-- Overseer's Badge
					},
				}),
				q(11082, {	-- Seeker of Truth
					["qg"] = 23149,	-- Mistress of the Mines
					["sourceQuest"] = 11081,	-- The Great Murkblood Revolt
					["coord"] = { 63.0, 87.8, SHADOWMOON_VALLEY },
					["groups"] = {
						objective(1, {	-- 0/1 Hand of the Overseer
							["provider"] = { "i", 32734 },	-- Hand of the Overseer
						}),
						objective(2, {	-- 0/1 Murkblood Information Gathered
							["provider"] = { "n", 23309 },	-- Murkblood Overseer
						}),
					},
				}),
				q(11084, {	-- Stand Tall, Captain!
					["qg"] = 23140,	-- Taskmaster Varkule Dragonbreath
					["sourceQuest"] = 11053,	-- Rise, Overseer!
					["coord"] = { 66.0, 86.4, SHADOWMOON_VALLEY },
					["minReputation"] = { FACTION_NETHERWING, HONORED },	-- Netherwing, Honored.
					["groups"] = {
						i(32695),	-- Captain's Badge
					},
				}),
				q(11090, {	-- Subdue the Subduer
					["qg"] = 23427,	-- Illidari Lord Balthas
					["sourceQuest"] = 11089,	-- The Soul Cannon of Reth'hedron
					["coord"] = { 66.2, 85.6, SHADOWMOON_VALLEY },
					["maps"] = { NAGRAND },
					["groups"] = {
						objective(1, {	-- Subdue Reth'hedron the Subduer
							["providers"] = {
								{ "n", 22357 },	-- Reth'hedron the Subduer
								{ "i", 32825 },	-- Soul Cannon
							},
							["coord"] = { 10.6, 41.4, NAGRAND },
						}),
						i(32871),	-- Horns of the Illidari
						i(32869),	-- Illidari Lord's Tunic
						i(32872),	-- Illidari Rod of Discipline
						i(32870),	-- Legguards of Contemplation
					},
				}),
				q(11112, {	-- Suraku the Azure Netherwing Drake
					["qg"] = 23461,	-- Suraku
					["sourceQuest"] = 11107,	-- Bow to the Highlord
					["coord"] = { 66.8, 18.4, SHATTRATH_CITY },
					["minReputation"] = { FACTION_NETHERWING, EXALTED },	-- Netherwing, Exalted.
					["groups"] = {
						i(32858),	-- Reins of the Azure Netherwing Drake Mount
					},
				}),
				q(11055, {	-- The Booterang: A Cure For The Common Worthless Peon
					["qg"] = 23291,	-- Chief Overseer Mudlump
					["sourceQuest"] = 11054,	-- Overseeing and You: Making the Right Choices
					["coord"] = { 66.8, 86.0, SHADOWMOON_VALLEY },
					["maxReputation"] = { FACTION_NETHERWING, EXALTED },	-- Netherwing, Exalted.
					["isDaily"] = true,
					["groups"] = {
						objective(1, {	-- 0/20 Dragonmaw Peon Disciplined
							["provider"] = { "n", 23311 },	-- Disobedient Dragonmaw Peon
						}),
					},
				}),
				q(11101, {	-- The Deadliest Trap Ever Laid (Aldor)
					["qg"] = 23452,	-- Commander Arcus
					["sourceQuest"] = 11100,	-- Commander Arcus
					["coord"] = { 62.4, 29.4, SHADOWMOON_VALLEY },
					["maxReputation"] = { FACTION_NETHERWING, EXALTED },	-- Netherwing, Exalted.
					["minReputation"] = { FACTION_THE_ALDOR, NEUTRAL },	-- The Aldor, Neutral.
					["isDaily"] = true,
				}),
				q(11097, {	-- The Deadliest Trap Ever Laid (Scryers)
					["qg"] = 23434,	-- Commander Hobb
					["sourceQuest"] = 11095,	-- Commander Hobb
					["coord"] = { 56.6, 58.6, SHADOWMOON_VALLEY },
					["maxReputation"] = { FACTION_NETHERWING, EXALTED },	-- Netherwing, Exalted.
					["minReputation"] = { FACTION_THE_SCRYERS, NEUTRAL },	-- The Scryers, Neutral.
					["isDaily"] = true,
				}),
				q(11081, {	-- The Great Murkblood Revolt
					["provider"] = { "i", 32726 },	-- Murkblood Escape Plans
					["description"] = "The plans can be found inside Sludge-Covered Object, looted from Black Bloods inside the mines.  You must be at least Friendly with Netherwing to loot them.",
					["minReputation"] = { FACTION_NETHERWING, FRIENDLY },	-- Netherwing, Friendly.
				}),
				q(11049, {	-- The Great Netherwing Egg Hunt
					["qg"] = 23141,	-- Yarzill the Merc
					["sourceQuest"] = 11019,	-- Your Friend on the Inside
					["coord"] = { 65.9, 86.4, SHADOWMOON_VALLEY },
					["cost"] = { { "i", 32506, 1 }, },	-- Netherwing Egg
				}),
				q(11075, {	-- The Netherwing Mines
					["qg"] = 23140,	-- Taskmaster Varkule Dragonbreath
					["sourceQuest"] = 11053,	-- Rise, Overseer!
					["coord"] = { 66.0, 86.4, SHADOWMOON_VALLEY },
					["minReputation"] = { FACTION_NETHERWING, FRIENDLY },	-- Netherwing, Friendly.
				}),
				q(11035, {	-- The Not-So-Friendly Skies...
					["qg"] = 23141,	-- Yarzill the Merc
					["sourceQuest"] = 11019,	-- Your Friend on the Inside
					["coord"] = { 65.9, 86.4, SHADOWMOON_VALLEY },
					["maxReputation"] = { FACTION_NETHERWING, EXALTED },	-- Netherwing, Exalted.
					["isDaily"] = true,
					["groups"] = {
						objective(1, {	-- 0/10 Netherwing Relic
							["provider"] = { "i", 32509 },	-- Netherwing Relic
							["cr"] = 23188,	-- Dragonmaw Transporter
						}),
					},
				}),
				q(11089, {	-- The Soul Cannon of Reth'hedron
					["qg"] = 23427,	-- Illidari Lord Balthas
					["sourceQuest"] = 11084,	-- Stand Tall, Captain!
					["coord"] = { 66.2, 85.6, SHADOWMOON_VALLEY },
					["maps"] = { TEROKKAR_FOREST },
					["groups"] = {
						objective(1, {	-- 0/2 Felsteel Bar
							["providers"] = {
								{ "i", 23448 },	-- Felsteel Bar
							},
						}),
						objective(2, {	-- 0/1 Adamantite Frame
							["providers"] = {
								{ "i", 23784 },	-- Adamantite Frame
							},
						}),
						objective(3, {	-- 0/1 Khorium Power Core
							["providers"] = {
								{ "i", 23786 },	-- Khorium Power Core
							},
						}),
						objective(4, {	-- 0/1 Flawless Arcane Essence
							["provider"] = { "i", 32822 },	-- Flawless Arcane Essence
							["coord"] = { 44.0, 41.0, TEROKKAR_FOREST },
							["crs"] = {
								23100,	-- Flawless Arcane Elemental
								23093,	-- Sar'this
							},
						}),
					},
				}),
				q(11113, {	-- Voranaku the Violet Netherwing Drake
					["qg"] = 23466,	-- Voranaku
					["sourceQuest"] = 11107,	-- Bow to the Highlord
					["coord"] = { 66.6, 17.8, SHATTRATH_CITY },
					["minReputation"] = { FACTION_NETHERWING, EXALTED },	-- Netherwing, Exalted.
					["groups"] = {
						i(32862),	-- Reins of the Violet Netherwing Drake Mount
					},
				}),
				q(11019, {	-- Your Friend On The Inside
					["qg"] = 23141,	-- Yarzill the Merc
					["sourceQuest"] = 11013,	-- In Service of the Illidari
					["coord"] = { 65.9, 86.4, SHADOWMOON_VALLEY },
				}),
				q(11114, {	-- Zoya the Veridian Netherwing Drake
					["qg"] = 23465,	-- Zoya
					["sourceQuest"] = 11107,	-- Bow to the Highlord
					["coord"] = { 66.6, 18.6, SHATTRATH_CITY },
					["minReputation"] = { FACTION_NETHERWING, EXALTED },	-- Netherwing, Exalted.
					["groups"] = {
						i(32861),	-- Reins of the Veridian Netherwing Drake Mount
					},
				}),
			}),
			n(VENDORS, {
				n(23489, {	-- Drake Dealer Hurlunk
					["sourceQuests"] = {
						11109,	-- Jorus the Cobalt Netherwing Drake
						11110,	-- Malfas the Purple Netherwing Drake
						11111,	-- Onyxien the Onyx Netherwing Drake
						11112,	-- Suraku the Azure Netherwing Drake
						11113,	-- Voranaku the Violet Netherwing Drake
						11114,	-- Zoya the Veridian Netherwing Drake
					},
					["coord"] = { 65.6, 85.9, SHADOWMOON_VALLEY },
					["minReputation"] = { FACTION_NETHERWING, EXALTED },	-- Netherwing, Exalted.
					["description"] = "To access this vendor, you must reach Exalted with the Netherwing and claim one of the netherwing drakes in Shattrath.",
					["groups"] = {
						i(32858),	-- Azure Netherwing Drake (MOUNT!)
						i(32859),	-- Cobalt Netherwing Drake (MOUNT!)
						i(32857),	-- Onyx Netherwing Drake (MOUNT!)
						i(32860),	-- Purple Netherwing Drake (MOUNT!)
						i(32861),	-- Veridian Netherwing Drake (MOUNT!)
						i(32862),	-- Violet Netherwing Drake (MOUNT!)
					},
				}),
			}),
			n(ZONE_DROPS, {
				i(32427, {	-- Netherwing Crystal
					["crs"] = {
						23267,	-- Arvoar the Rapacious
						23269,	-- Barash the Den Mother
						23286,	-- Black Blood of Draenor
						23305,	-- Crazed Murkblood Foreman
						23324,	-- Crazed Murkblood Miner
						23285,	-- Nethermine Burster
						23169,	-- Nethermine Flayer
						23326,	-- Nethermine Ravager
						23501,	-- Netherwing Ray
						23264,	-- Overmine Flayer
					},
				}),
				i(32506, {	-- Netherwing Egg
					["providers"] = {
						{ "o", 185881 },	-- Netherdust Bush
						{ "o", 185915 },	-- Netherwing Egg
						{ "o", 185877 },	-- Nethercite Deposit
					},
					["crs"] = {
						23269,	-- Barash the Den Mother
						23286,	-- Black Blood of Draenor
						23324,	-- Crazed Murkblood Miner
						23285,	-- Nethermine Burster
						23169,	-- Nethermine Flayer
						23326,	-- Nethermine Ravager
						23501,	-- Netherwing Ray
						23264,	-- Overmine Flayer
					},
				}),
				i(32621, {	-- Partially Digested Hand
					["coord"] = { 74.6, 86.5, SHADOWMOON_VALLEY },
					["minReputation"] = { FACTION_NETHERWING, NEUTRAL },	-- Netherwing, Neutral.
					["cr"] = 23267,	-- Arvoar the Rapacious
				}),
				i(32724, {	-- Sludge-covered Object
					["coord"] = { 69.4, 86.0, SHADOWMOON_VALLEY },
					["cr"] = 23286,	-- Black Blood of Draenor
					["sym"] = {
						{ "select", "itemID",
							32506,	-- Netherwing Egg
							32464,	-- Nethercite Ore
							32468,	-- Netherdust Pollen
							32470,	-- Nethermine Flayer Hide
						},
					},
					["groups"] = {
						i(32726),	-- Murkblood Escape Plans
					},
				}),
			}),
		},
	})),
})));