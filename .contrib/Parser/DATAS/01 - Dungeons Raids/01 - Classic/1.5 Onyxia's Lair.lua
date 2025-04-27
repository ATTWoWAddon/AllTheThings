-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
local ADDED_WITH_RERELEASE = { ADDED_3_2_2 };
local REMOVED_WITH_RERELEASE = {
	ADDED_1_0_1,
	-- #if ANYCLASSIC
	REMOVED_10_0_0,	-- Blizzard added it back to Classic Wrath!
	-- #else
	REMOVED_3_2_2,
	-- #endif
};
local REMOVED_WITH_CATA = { ADDED_1_0_1, REMOVED_4_0_3 };

-- Helms were moved to Nefarian with 3.2.2
-- CRIEVE NOTE: In SOD, these are completely gone.
local BLOODFANG_HOOD = i(16908);	-- Bloodfang Hood
local DRAGONSTALKERS_HELM = i(16939);	-- Dragonstalker's Helm
local HALO_OF_TRANSCENDENCE = i(16921);	-- Halo of Transcendence
local HELM_OF_WRATH = i(16963);	-- Helm of Wrath
local HELMET_OF_TEN_STORMS = i(16947);	-- Helmet of Ten Storms
local JUDGMENT_CROWN = i(16955);	-- Judgment Crown
local NEMESIS_SKULLCAP = i(16929);	-- Nemesis Skullcap
local NETHERWIND_CROWN = i(16914);	-- Netherwind Crown
local STORMRAGE_COVER = i(16900);	-- Stormrage Cover

-- #if WRATH
local ONYXIAS_LAIR_FORTYMAN_ONUPDATE = [[function(t)
	if _.Settings:GetUnobtainableFilter(]] .. MOP_PHASE_LANDFALL .. [[) then
		t.u = ]] .. REMOVED_FROM_GAME .. [[;
		t.rwp = nil;
	else
		t.u = nil;
		-- #if ANYCLASSIC
		t.description = "Blizzard decided not to remove this yet, but we'll see if it lasts!";
		t.rwp = 100001;
		-- #else
		t.rwp = 30202;
		-- #endif
	end
end]];
-- #endif
local ONYXIAS_LAIR_FORTYMAN_BUBBLE_DOWN_CONTENTS = {
	-- #if WRATH
	["OnUpdate"] = ONYXIAS_LAIR_FORTYMAN_ONUPDATE,
	-- #endif
	["timeline"] = REMOVED_WITH_RERELEASE,
};
local ONYXIAS_LAIR_FORTYMAN_BUBBLE_DOWN_FILTER = function(t)
	 return not t.objectiveID;
end

root(ROOTS.Instances, expansion(EXPANSION.CLASSIC, {
	inst(760, {	-- Onyxia's Lair
		["lore"] = "Onyxia is the daughter of the mighty dragon Deathwing, and sister of the scheming Nefarian, Lord of Blackrock Spire.\n\nIt is said that Onyxia delights in corrupting the mortal races by meddling in their political affairs. To this end it is believed that she takes on various humanoid forms and uses her charm and power to influence delicate matters between the different races. Some believe that Onyxia has even assumed an alias once used by her father - the title of the royal House Prestor. When not meddling in mortal concerns, Onyxia resides in a fiery cave below the Dragonmurk, a dismal swamp located within Dustwallow Marsh. There she is guarded by her kin, the remaining members of the insidious black dragonflight.",
		["zone-text-areaID"] = 2159,	-- Onyxia's Lair
		-- #if BEFORE 3.0.2
		["sourceQuests"] = {
			6502,	-- Alliance Attunement Quest
			6602,	-- Horde Attunement Quest
		},
		["cost"] = {
			-- #if SEASON_OF_DISCOVERY
			{ "i", 226500, 1 },	-- Chipped Drakefire Amulet
			-- #endif
			{ "i", 16309, 1 },	-- Drakefire Amulet
		},
		-- #endif
		["coord"] = { 52.3, 76.2, DUSTWALLOW_MARSH },
		["mapID"] = ONYXIAS_LAIR,
		-- #if NOT ANYCLASSIC
		-- TODO: Double check this in Retail.
		-- You can get into all three difficulties in Wrath Classic.
		["sharedLockout"] = 1,
		-- #endif
		["isRaid"] = true,
		["lvl"] = lvlsquish(60, 60, 30),
		["groups"] = {
			n(QUESTS, {
				applyclassicphase(WRATH_PHASE_THREE, q(24428, {	-- A Most Puzzling Circumstance (A)
					["provider"] = { "i", 49644 },	-- Head of Onyxia (A)
					["timeline"] = { ADDED_3_3_0 },
					["maps"] = { STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 80,
					["groups"] = {
						i(49486),	-- Polished Dragonslayer's Signet
						i(49485),	-- Sparkling Onyxia Tooth Pendant
						i(49487),	-- Purified Onyxia Blood Talisman
					},
				})),
				applyclassicphase(WRATH_PHASE_THREE, q(24429, {	-- A Most Puzzling Circumstance (H)
					["provider"] = { "i", 49643 },	-- Head of Onyxia (H)
					["timeline"] = { ADDED_3_3_0 },
					["maps"] = { ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["lvl"] = 80,
					["groups"] = {
						i(49486),	-- Polished Dragonslayer's Signet
						i(49485),	-- Sparkling Onyxia Tooth Pendant
						i(49487),	-- Purified Onyxia Blood Talisman
					},
				})),
				q(7635, bubbleDown({ ["timeline"] = REMOVED_WITH_CATA }, {	-- A Proper String
					["qg"] = 14525,	-- Stoma the Ancient
					["sourceQuest"] = 7633,	-- An Introduction
					["coord"] = { 47, 24.48, FELWOOD },
					-- #if AFTER WRATH
					["maps"] = { BURNING_STEPPES },
					-- #endif
					["classes"] = { HUNTER },
					["lvl"] = lvlsquish(60, 60, 30),
					-- #if BEFORE WRATH
					["cost"] = { { "i", 18705, 1 } },	-- Mature Black Dragon Sinew
					-- #endif
					["groups"] = {
						-- #if AFTER WRATH
						objective(1, {	-- 0/1 Mature Black Dragon Sinew
							["provider"] = { "i", 18705 },	-- Mature Black Dragon Sinew
							["crs"] = {
								7047,	-- Black Broodling
								7040,	-- Black Dragonspawn
								7044,	-- Black Drake
								7041,	-- Black Wyrmkin
								7049,	-- Flamescale Broodling
								7042,	-- Flamescale Dragonspawn
								7043,	-- Flamescale Wyrmkin
								8976,	-- Hematos
								10184,	-- Onyxia (Normal)
								36538,	-- Onyxia (Heroic)
								7048,	-- Scalding Broodling
								7045,	-- Scalding Drake
								7046,	-- Searscale Drake
							},
						}),
						-- #endif
						i(18724),	-- Enchanted Black Dragon Sinew
					},
				})),
				q(7634, bubbleDown({ ["timeline"] = REMOVED_WITH_CATA }, {	-- Ancient Sinew Wrapped Lamina
					["qg"] = 14526,	-- Hastat the Ancient
					["sourceQuest"] = 7633,	-- An Introduction
					["coord"] = { 47, 24.48, FELWOOD },
					["maps"] = { WINTERSPRING },
					["classes"] = { HUNTER },
					["cost"] = { { "i", 18704, 1 } },	-- Mature Blue Dragon Sinew
					["lvl"] = lvlsquish(60, 60, 30),
					["groups"] = {
						i(18714),	-- Ancient Sinew Wrapped Lamina
					},
				})),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_FOUR, q(84560, {	-- Celebrating Good Times
					["qg"] = 1748,	-- Highlord Bolvar Fordragon
					["sourceQuest"] = 7495,	-- Victory for the Alliance
					["coord"] = { 67.2, 85.1, STORMWIND_CITY },
					["timeline"] = { ADDED_1_15_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(60, 60, 30),
					["groups"] = {
						i(228687),	-- Dragonslayer's Signet
						i(228685),	-- Onyxia Tooth Pendant
						i(228686),	-- Onyxia Blood Talisman
					},
				})),
				-- #endif
				q(7496, bubbleDownFiltered(ONYXIAS_LAIR_FORTYMAN_BUBBLE_DOWN_CONTENTS, ONYXIAS_LAIR_FORTYMAN_BUBBLE_DOWN_FILTER, {	-- Celebrating Good Times
					["qg"] = 1748,	-- Highlord Bolvar Fordragon
					["sourceQuest"] = 7495,	-- Victory for the Alliance
					["coord"] = { 67.2, 85.1, STORMWIND_CITY },
					-- #if SEASON_OF_DISCOVERY
					["timeline"] = { REMOVED_1_15_3 },
					-- #endif
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(60, 60, 30),
					["groups"] = {
						i(18403, {	-- Dragonslayer's Signet
							-- #if SEASON_OF_DISCOVERY
							["timeline"] = { REMOVED_1_15_3 },
							-- #endif
						}),
						i(18404, {	-- Onyxia Tooth Pendant
							-- #if SEASON_OF_DISCOVERY
							["timeline"] = { REMOVED_1_15_3 },
							-- #endif
						}),
						i(18406, {	-- Onyxia Blood Talisman
							-- #if SEASON_OF_DISCOVERY
							["timeline"] = { REMOVED_1_15_3 },
							-- #endif
						}),
					},
				})),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_FOUR, q(84561, {	-- For All To See
					["qg"] = 4949,	-- Thrall
					["sourceQuest"] = 7490,	-- Victory for the Horde
					["coord"] = { 32.0, 37.8, ORGRIMMAR },
					["timeline"] = { ADDED_1_15_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(60, 60, 30),
					["groups"] = {
						i(228687),	-- Dragonslayer's Signet
						i(228685),	-- Onyxia Tooth Pendant
						i(228686),	-- Onyxia Blood Talisman
					},
				})),
				-- #endif
				q(7491, bubbleDownFiltered(ONYXIAS_LAIR_FORTYMAN_BUBBLE_DOWN_CONTENTS, ONYXIAS_LAIR_FORTYMAN_BUBBLE_DOWN_FILTER, {	-- For All To See
					["qg"] = 4949,	-- Thrall
					["sourceQuest"] = 7490,	-- Victory for the Horde
					["coord"] = { 32.0, 37.8, ORGRIMMAR },
					-- #if SEASON_OF_DISCOVERY
					["timeline"] = { REMOVED_1_15_3 },
					-- #endif
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(60, 60, 30),
					["groups"] = {
						i(18403, {	-- Dragonslayer's Signet
							-- #if SEASON_OF_DISCOVERY
							["timeline"] = { REMOVED_1_15_3 },
							-- #endif
						}),
						i(18404, {	-- Onyxia Tooth Pendant
							-- #if SEASON_OF_DISCOVERY
							["timeline"] = { REMOVED_1_15_3 },
							-- #endif
						}),
						i(18406, {	-- Onyxia Blood Talisman
							-- #if SEASON_OF_DISCOVERY
							["timeline"] = { REMOVED_1_15_3 },
							-- #endif
						}),
					},
				})),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_FOUR, q(84555, {	-- Nostro's Compendium
					["provider"] = { "i", 228680 },	-- Nostro's Compendium of Dragon Slaying
					["description"] = "You get this quest by looting Nostro's Compendium from bosses in Dire Maul.\n\nYou can also buy it on the Auction House for a hefty price!",
					["classes"] = { WARRIOR, PALADIN, ROGUE },
					["timeline"] = { ADDED_1_15_3 },
					["maps"] = { DIRE_MAUL },
					["lvl"] = lvlsquish(60, 60, 30),
					["groups"] = {
						i(228695),	-- A Dull and Flat Elven Blade
					},
				})),
				-- #endif
				q(7507, bubbleDown({ ["timeline"] = { REMOVED_3_3_0 } }, {	-- Nostro's Compendium
					["provider"] = { "i", 18401 },	-- Nostro's Compendium of Dragon Slaying
					["description"] = "You get this quest by looting Nostro's Compendium from bosses in Dire Maul.\n\nYou can also buy it on the Auction House for a hefty price!",
					["classes"] = { WARRIOR, PALADIN },
					-- #if SEASON_OF_DISCOVERY
					["timeline"] = { REMOVED_1_15_3 },
					-- #endif
					["maps"] = { DIRE_MAUL },
					["lvl"] = lvlsquish(60, 60, 30),
					["groups"] = {
						i(18513),	-- A Dull and Flat Elven Blade
					},
				})),
				-- #if SEASON_OF_DISCOVERY
				q(84546, bubbleDown({ ["timeline"] = REMOVED_WITH_CATA }, {	-- Stave of the Ancients
					["providers"] = {
						{ "n", 14524 },	-- Vartrus the Ancient
						{ "i", 18708 },	-- Petrified Bark
					},
					["sourceQuest"] = 7633,	-- An Introduction
					["description"] = "You must defeat the 4 demons listed below by yourself with no pet in order to complete this quest.",
					["coord"] = { 47, 24.48, FELWOOD },
					["timeline"] = { ADDED_1_15_3 },
					["maps"] = { UNGORO_CRATER, BURNING_STEPPES, SILITHUS, WINTERSPRING },
					["classes"] = { HUNTER },
					["lvl"] = lvlsquish(60, 60, 30),
					["groups"] = {
						objective(1, {	-- 0/1 Simone's Head
							["provider"] = { "i", 18952 },	-- Simone's Head
							["description"] = "There are two things that can make this fight difficult: her pet, a felhound named Precious and low nature resistance. Most hunters tend to CC Precious by freeze trapping it. Using ranged attacks is useless because she casts a debuff that substantially lowers ranged attack power. Your best bet is to use aspect of the wild + a greater nature protection potion (to dull and absorb her lightning bolts) and melee her until she falls.\n\nLocated in Ungoro Crater.",
							["coord"] = { 34.5, 41.1, UNGORO_CRATER },
							["crs"] = {
								14527,	-- Simone the Inconspicuous
								14533,	-- Simone the Seductress
							},
						}),
						objective(2, {	-- 0/1 Klinfran's Head
							["provider"] = { "i", 18953 },	-- Klinfran's Head
							["description"] = "Use Concussive Shot/Serpent Sting to kite him down the road. You should know how long serpent sting lasts, use only one per trip down the road, more if you think you can risk it. As soon as it's worn off, drop an ice trap, let him stand in it, go to the other side, max range, and start again. If for whatever reason he breaks trap, you can use scatter shot, or use concussive shot to just keep kiting him in a circle until the cooldown finishes.\n\nDo not worry about his enrage, because he won't be touching you at all if you play right.\n\nLocated in the Burning Steppes.",
							["coord"] = { 25.3, 65.9, BURNING_STEPPES },
							["crs"] = {
								14529,	-- Franklin the Friendly
								14534,	-- Klinfran the Crazed
							},
						}),
						objective(3, {	-- 0/1 Solenor's Head
							["provider"] = { "i", 18954 },	-- Solenor's Head
							["description"] = "This is the hardest demon:\n\nStrengths:\n* He does NOT predictably chase you. He frequently stops to fear (disorienting you and causing around 800 damage also) or will stop to shoot homing beetles at you.\n* The homing beetles basically prevent you from bandaging. They move extremely slow but hit extremely hard\n* If you leave melee range (further than 2-3 range or so), he uses an instant cast fear spell that also does 700-800 damage instantly, and he can cast these quickly, almost seemingly chain casting. Shadow protection potions do absorb this damage, however, even with greater potions, he tears through them very fast. It's also likely that the fear will send you into the homing beetles\n* Seemingly unlimited mana bar, so Viper Sting is useless\n* Scorpid sting has very little/no effect on him\n* Melees extremely hard and fast (200+) when in normal form\n\nWeaknesses:\n* If you use Rank 3 Wing Clip on him, it immobilizes him completely with \"Crippling Clip\" for 30 seconds.\n* The homing missiles (creepings) are not fired when you remain in melee range\n* He does NOT cast his fear when you remain in melee range\n* Must be 'chilled' via Frost Trap prior to fully engaging\n\nLocated in Silithus.",
							["coord"] = { 24.7, 76.0, SILITHUS },
							["crs"] = {
								14536,	-- Nelson the Nice
								14530,	-- Solenor the Slayer
							},
						}),
						objective(4, {	-- 0/1 Artorius's Head
							["provider"] = { "i", 18955 },	-- Artorius's Head
							["description"] = "Kite him using Aspect of the Cheetah. Keep Serpent Sting on at all times and use Concussive Shot whenever he gets close. It is important to remain beyond 30 yards of the Demonic Doom, yet within range to use Arcane Shot so that he continues chasing you. If you rely completely on Serpent Sting for damage, he will break aggro and return to where he started. Once you apply Serpent Sting, count to 4, and apply it again before it wears off (the damage does stack). You will be able to see this by a 2nd damage listing \"Stinging Trauma\", which will continue to increase each time the sting is applied.\n\nBe sure to clear the area you plan on fighting so as to not get dazed by another NPC wandering by.\n\nLocated in Winterspring.",
							["coord"] = { 60.3, 13.2, WINTERSPRING },
							["crs"] = {
								14531,	-- Artorius the Amiable
								14535,	-- Artorius the Doombringer
							},
						}),
						i(228659, {	-- Ancient Rune Etched Stave
							["cost"] = {
								{ "i", 18724, 1 },	-- Enchanted Black Dragon Sinew
							},
							["groups"] = {
								i(228334),	-- Rhok'delar, Longbow of the Ancient Keepers
							},
						}),
						i(228332, {	-- Lok'delar, Stave of the Ancient Keepers
							["description"] = "Go back to Felwood after having completed all the quests and a chat icon will become available, allowing you to interact with one of the ancients. Speak to him and he will give you the staff.",
							["classes"] = { HUNTER },
							["sourceQuests"] = {
								7634,	-- Ancient Sinew Wrapped Lamina
								7635,	-- A Proper String
								84546,	-- Stave of the Ancients
							},
						}),
					},
				})),
				-- #endif
				q(7636, bubbleDown({ ["timeline"] = REMOVED_WITH_CATA }, {	-- Stave of the Ancients
					["providers"] = {
						{ "n", 14524 },	-- Vartrus the Ancient
						{ "i", 18708 },	-- Petrified Bark
					},
					["sourceQuest"] = 7633,	-- An Introduction
					["description"] = "You must defeat the 4 demons listed below by yourself with no pet in order to complete this quest.",
					["coord"] = { 47, 24.48, FELWOOD },
					["maps"] = { UNGORO_CRATER, BURNING_STEPPES, SILITHUS, WINTERSPRING },
					["classes"] = { HUNTER },
					["lvl"] = lvlsquish(60, 60, 30),
					["groups"] = {
						-- #if NOT SEASON_OF_DISCOVERY
						objective(1, {	-- 0/1 Simone's Head
							["provider"] = { "i", 18952 },	-- Simone's Head
							["description"] = "There are two things that can make this fight difficult: her pet, a felhound named Precious and low nature resistance. Most hunters tend to CC Precious by freeze trapping it. Using ranged attacks is useless because she casts a debuff that substantially lowers ranged attack power. Your best bet is to use aspect of the wild + a greater nature protection potion (to dull and absorb her lightning bolts) and melee her until she falls.\n\nLocated in Ungoro Crater.",
							["coord"] = { 34.5, 41.1, UNGORO_CRATER },
							["crs"] = {
								14527,	-- Simone the Inconspicuous
								14533,	-- Simone the Seductress
							},
						}),
						objective(2, {	-- 0/1 Klinfran's Head
							["provider"] = { "i", 18953 },	-- Klinfran's Head
							["description"] = "Use Concussive Shot/Serpent Sting to kite him down the road. You should know how long serpent sting lasts, use only one per trip down the road, more if you think you can risk it. As soon as it's worn off, drop an ice trap, let him stand in it, go to the other side, max range, and start again. If for whatever reason he breaks trap, you can use scatter shot, or use concussive shot to just keep kiting him in a circle until the cooldown finishes.\n\nDo not worry about his enrage, because he won't be touching you at all if you play right.\n\nLocated in the Burning Steppes.",
							["coord"] = { 25.3, 65.9, BURNING_STEPPES },
							["crs"] = {
								14529,	-- Franklin the Friendly
								14534,	-- Klinfran the Crazed
							},
						}),
						objective(3, {	-- 0/1 Solenor's Head
							["provider"] = { "i", 18954 },	-- Solenor's Head
							["description"] = "This is the hardest demon:\n\nStrengths:\n* He does NOT predictably chase you. He frequently stops to fear (disorienting you and causing around 800 damage also) or will stop to shoot homing beetles at you.\n* The homing beetles basically prevent you from bandaging. They move extremely slow but hit extremely hard\n* If you leave melee range (further than 2-3 range or so), he uses an instant cast fear spell that also does 700-800 damage instantly, and he can cast these quickly, almost seemingly chain casting. Shadow protection potions do absorb this damage, however, even with greater potions, he tears through them very fast. It's also likely that the fear will send you into the homing beetles\n* Seemingly unlimited mana bar, so Viper Sting is useless\n* Scorpid sting has very little/no effect on him\n* Melees extremely hard and fast (200+) when in normal form\n\nWeaknesses:\n* If you use Rank 3 Wing Clip on him, it immobilizes him completely with \"Crippling Clip\" for 30 seconds.\n* The homing missiles (creepings) are not fired when you remain in melee range\n* He does NOT cast his fear when you remain in melee range\n* Must be 'chilled' via Frost Trap prior to fully engaging\n\nLocated in Silithus.",
							["coord"] = { 24.7, 76.0, SILITHUS },
							["crs"] = {
								14536,	-- Nelson the Nice
								14530,	-- Solenor the Slayer
							},
						}),
						objective(4, {	-- 0/1 Artorius's Head
							["provider"] = { "i", 18955 },	-- Artorius's Head
							["description"] = "Kite him using Aspect of the Cheetah. Keep Serpent Sting on at all times and use Concussive Shot whenever he gets close. It is important to remain beyond 30 yards of the Demonic Doom, yet within range to use Arcane Shot so that he continues chasing you. If you rely completely on Serpent Sting for damage, he will break aggro and return to where he started. Once you apply Serpent Sting, count to 4, and apply it again before it wears off (the damage does stack). You will be able to see this by a 2nd damage listing \"Stinging Trauma\", which will continue to increase each time the sting is applied.\n\nBe sure to clear the area you plan on fighting so as to not get dazed by another NPC wandering by.\n\nLocated in Winterspring.",
							["coord"] = { 60.3, 13.2, WINTERSPRING },
							["crs"] = {
								14531,	-- Artorius the Amiable
								14535,	-- Artorius the Doombringer
							},
						}),
						-- #endif
						i(18707, {	-- Ancient Rune Etched Stave
							["cost"] = {
								{ "i", 18724, 1 },	-- Enchanted Black Dragon Sinew
							},
							["groups"] = {
								ach(11296, {	-- The Ancient Keeper
									["timeline"] = { ADDED_7_0_3, REMOVED_7_0_3_LAUNCH },
									["classes"] = { HUNTER },
								}),
								i(18713),	-- Rhok'delar, Longbow of the Ancient Keepers
							},
						}),
						i(18715, {	-- Lok'delar, Stave of the Ancient Keepers
							["description"] = "Go back to Felwood after having completed all the quests and a chat icon will become available, allowing you to interact with one of the ancients. Speak to him and he will give you the staff.",
							["classes"] = { HUNTER },
							["sourceQuests"] = {
								7634,	-- Ancient Sinew Wrapped Lamina
								7635,	-- A Proper String
								7636,	-- Stave of the Ancients
							},
						}),
					},
				})),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_FOUR, q(84556, {	-- The Forging of Quel'Serrar
					["providers"] = {
						{ "n",  14368 },	-- Lorekeeper Lydros
						{ "i", 228695 },	-- A Dull and Flat Elven Blade
					},
					["sourceQuest"] = 84555,	-- Nostro's Compendium
					["classes"] = { WARRIOR, PALADIN, ROGUE },
					["timeline"] = { ADDED_1_15_3 },
					["maps"] = { DIRE_MAUL },
					["lvl"] = lvlsquish(60, 60, 30),
				})),
				-- #endif
				q(7508, bubbleDown({ ["timeline"] = { REMOVED_3_3_0 } }, {	-- The Forging of Quel'Serrar
					["providers"] = {
						{ "n", 14368 },	-- Lorekeeper Lydros
						{ "i", 18513 },	-- A Dull and Flat Elven Blade
					},
					["sourceQuest"] = 7507,	-- Nostro's Compendium
					-- #if SEASON_OF_DISCOVERY
					["timeline"] = { REMOVED_1_15_3 },
					-- #endif
					["maps"] = { DIRE_MAUL },
					["classes"] = { WARRIOR, PALADIN },
					["lvl"] = lvlsquish(60, 60, 30),
				})),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_FOUR, q(84557, {	-- The Forging of Quel'Serrar
					["qg"] = 14368,	-- Lorekeeper Lydros
					["sourceQuest"] = 84556,	-- The Forging of Quel'Serrar
					["classes"] = { WARRIOR, PALADIN, ROGUE },
					["timeline"] = { ADDED_1_15_3 },
					["maps"] = { DIRE_MAUL },
					["lvl"] = lvlsquish(60, 60, 30),
					["groups"] = {
						objective(1, {	-- 0/1 Treated Ancient Blade
							["provider"] = { "i", 18492 },	-- Treated Ancient Blade
							["description"] = "Drops from Onyxia when you use the Heated Ancient Blade on her corpse.",
							["cr"] = 10184,	-- Onyxia
							["cost"] = {
								{ "i", 18488, 1 },	-- Heated Ancient Blade
							},
						}),
						{
							["itemID"] = 18488,	-- Heated Ancient Blade
							["provider"] = { "o", 179562 },	-- Ancient Heated Blade
							["description"] = "Once the boss uses her Breath attack on your Unfired Ancient Blade, loot this item from the ground and then impale the corpse of Onyxia once you defeat her.",
							["cost"] = {
								{ "i", 18489, 1 },	-- Unfired Ancient Blade
							},
						},
						{
							["itemID"] = 18489,	-- Unfired Ancient Blade
							["description"] = "Place this in front of Onyxia's Breath attack during The Forging of Quel'Serrar quest.\n\nYou may want to delay placing this item on the ground until the breath goes on cooldown during Phase 3.\n\nAs a note you can heat the blade in Phase 1 or 3. The Heated Ancient Blade has a deteriation time of 20 minutes. This is NOT a cooldown. Once the time runs out it will not change back into the Unfired Ancient Blade. It will instead disappear from your inventory and you will have to get a replacement for it by returning to DM, abandoning the quest, and reaccepting.",
						},
						i(228679),	-- Quel'Serrar
					},
				})),
				-- #endif
				q(7509, bubbleDown({ ["timeline"] = { REMOVED_3_3_0 } }, {	-- The Forging of Quel'Serrar
					["qg"] = 14368,	-- Lorekeeper Lydros
					["sourceQuest"] = 7508,	-- The Forging of Quel'Serrar
					-- #if SEASON_OF_DISCOVERY
					["timeline"] = { REMOVED_1_15_3 },
					-- #endif
					["maps"] = { DIRE_MAUL },
					["classes"] = { WARRIOR, PALADIN },
					["lvl"] = lvlsquish(60, 60, 30),
					["groups"] = {
						-- #if NOT SEASON_OF_DISCOVERY
						objective(1, {	-- 0/1 Treated Ancient Blade
							["provider"] = { "i", 18492 },	-- Treated Ancient Blade
							["description"] = "Drops from Onyxia when you use the Heated Ancient Blade on her corpse.",
							["cr"] = 10184,	-- Onyxia
							["cost"] = {
								{ "i", 18488, 1 },	-- Heated Ancient Blade
							},
						}),
						{
							["itemID"] = 18488,	-- Heated Ancient Blade
							["provider"] = { "o", 179562 },	-- Ancient Heated Blade
							["description"] = "Once the boss uses her Breath attack on your Unfired Ancient Blade, loot this item from the ground and then impale the corpse of Onyxia once you defeat her.",
							["cost"] = {
								{ "i", 18489, 1 },	-- Unfired Ancient Blade
							},
						},
						{
							["itemID"] = 18489,	-- Unfired Ancient Blade
							["description"] = "Place this in front of Onyxia's Breath attack during The Forging of Quel'Serrar quest.\n\nYou may want to delay placing this item on the ground until the breath goes on cooldown during Phase 3.\n\nAs a note you can heat the blade in Phase 1 or 3. The Heated Ancient Blade has a deteriation time of 20 minutes. This is NOT a cooldown. Once the time runs out it will not change back into the Unfired Ancient Blade. It will instead disappear from your inventory and you will have to get a replacement for it by returning to DM, abandoning the quest, and reaccepting.",
						},
						-- #endif
						i(18348),	-- Quel'Serrar
					},
				})),
				q(7497, {	-- The Journey Has Just Begun (A)
					["qg"] = 14394,	-- Major Mattingly
					["sourceQuests"] = {
						7496,	-- Celebrating Good Times
						-- #if AFTER WRATH
						24428,	-- A Most Puzzling Circumstance (A)
						-- #endif
					},
					["coord"] = { 67.0, 85.0, STORMWIND_CITY },
					["requireSkill"] = LEATHERWORKING,
					["learnedAt"] = 300,
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(60, 60, 30),
					["groups"] = {
						recipe(19093, {	-- Onyxia Scale Cloak
							["timeline"] = ADDED_WITH_RERELEASE,
						}),
						i(15769, {	-- Pattern: Onyxia Scale Cloak (RECIPE!)
							["timeline"] = REMOVED_WITH_RERELEASE,
						}),
					},
				}),
				q(7493, {	-- The Journey Has Just Begun (H)
					["qg"] = 14392,		-- Overlord Runthak / Overlord Natoj
					["sourceQuests"] = {
						7491,	-- For All To See
						-- #if AFTER WRATH
						24429,	-- A Most Puzzling Circumstance (H)
						-- #endif
					},
					["coord"] = { 52.2, 75.8, ORGRIMMAR },
					["requireSkill"] = LEATHERWORKING,
					["learnedAt"] = 300,
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(60, 60, 30),
					["groups"] = {
						recipe(19093, {	-- Onyxia Scale Cloak
							["timeline"] = ADDED_WITH_RERELEASE,
						}),
						i(15769, {	-- Pattern: Onyxia Scale Cloak (RECIPE!)
							["timeline"] = REMOVED_WITH_RERELEASE,
						}),
					},
				}),
				q(7495, bubbleDownFiltered(ONYXIAS_LAIR_FORTYMAN_BUBBLE_DOWN_CONTENTS, ONYXIAS_LAIR_FORTYMAN_BUBBLE_DOWN_FILTER, {	-- Victory for the Alliance
					["provider"] = { "i", 18423 },	-- Head of Onyxia (A)
					["maps"] = { STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(60, 60, 30),
				})),
				q(7490, bubbleDownFiltered(ONYXIAS_LAIR_FORTYMAN_BUBBLE_DOWN_CONTENTS, ONYXIAS_LAIR_FORTYMAN_BUBBLE_DOWN_FILTER, {	-- Victory for the Horde
					["provider"] = { "i", 18422 },	-- Head of Onyxia (H)
					["maps"] = { ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(60, 60, 30),
				})),
			}),
			prof(SKINNING, {
				i(15410),	-- Scale of Onyxia
			}),
			-- #if AFTER WRATH
			applyclassicphase(WRATH_PHASE_THREE, d(DIFFICULTY.LEGACY_RAID.PLAYER10_NORMAL, {
				["lvl"] = 80,
				["groups"] = {
					e(1651, {	-- Onyxia
						["creatureID"] = 10184,	-- Onyxia
						["groups"] = {
							ach(4403),	-- Many Whelps! Handle It! (10 player)
							ach(4402),	-- More Dots! (10 player)
							ach(4396),	-- Onyxia's Lair (10 player)
							ach(4404),	-- She Deep Breaths More (10 player)
							i(49644, {	-- Head of Onyxia (A)
								["races"] = ALLIANCE_ONLY,
							}),
							i(49643, {	-- Head of Onyxia (H)
								["races"] = HORDE_ONLY,
							}),
							i(49636),	-- Onyxian Drake (MOUNT!)
							i(49295),	-- Enlarged Onyxia Hide Backpack (Bag)
							i(49294),	-- Ashen Sack of Gems (Misc)
							i(49299),	-- Keen Obsidian Edged Blade
							i(49302),	-- Reclaimed Shadowstrike
							i(49301),	-- Reclaimed Thunderstrike
							i(49437),	-- Rusted Gutgore Ripper
							i(49304),	-- Sharpened Fang of the Mystics
							i(49297),	-- Empowered Deathbringer
							i(49303),	-- Gleaming Quel'Serrar
							i(49298),	-- Glinting Azuresong Mageblade
							i(49296),	-- Singed Vis'kag the Bloodletter
							i(49305),	-- Snub-Nose Blastershot Launcher
							i(49308),	-- Antique Cornerstone Grimoire
							i(49322),	-- Bloodfang Mask (Rogue)
							i(49316),	-- Circlet of Transcendence (Priest)
							i(49331),	-- Coif of Ten Storms (Shaman)
							i(49317),	-- Coronet of Transcendence (Priest)
							i(49330),	-- Cowl of Ten Storms (Shaman)
							i(49319),	-- Dragonstalker's Helmet (Hunter)
							i(49320),	-- Faceguard of Wrath (Warrior)
							i(49333),	-- Frostforged Helmet (Death Knight)
							i(49332),	-- Frostforged Ringhelm (Death Knight)
							i(49329),	-- Gaze of Ten Storms (Shaman)
							i(49321),	-- Greathelm of Wrath (Warrior)
							i(49323),	-- Judgment Cover (Paladin)
							i(49325),	-- Judgment Helm (Paladin)
							i(49324),	-- Judgment Helmet (Paladin)
							i(49315),	-- Nemesis Skullcover (Warlock)
							i(49318),	-- Netherwind Hood (Mage)
							i(49327),	-- Stormrage Antlers (Druid)
							i(49328),	-- Stormrage Helm (Druid)
							i(49326),	-- Stormrage Hood (Druid)
							i(49306),	-- Eskhandar's Choker
							i(49307),	-- Fluttering Sapphiron Drape
							i(49309),	-- Runed Ring of Binding
							i(49463),	-- Purified Shard of the Flame
							i(49310),	-- Purified Shard of the Scale
						},
					}),
				},
			})),
			applyclassicphase(WRATH_PHASE_THREE, d(DIFFICULTY.LEGACY_RAID.PLAYER25_NORMAL, {
				["lvl"] = 80,
				["groups"] = {
					e(1651, {	-- Onyxia
						["creatureID"] = 10184,	-- Onyxia
						["groups"] = {
							ach(4406),	-- Many Whelps! Handle It! (25 player)
							ach(4405),	-- More Dots! (25 player)
							ach(4397),	-- Onyxia's Lair (25 player)
							ach(4407),	-- She Deep Breaths More (25 player)
							i(49644, {	-- Head of Onyxia (A)
								["races"] = ALLIANCE_ONLY,
							}),
							i(49643, {	-- Head of Onyxia (H)
								["races"] = HORDE_ONLY,
							}),
							i(49636),	-- Onyxian Drake (MOUNT!)
							i(49295),	-- Enlarged Onyxia Hide Backpack (Bag)
							i(49294),	-- Ashen Sack of Gems (Misc)
							i(49496),	-- Reinforced Shadowstrike
							i(49497),	-- Reinforced Thunderstrike
							i(49498),	-- Sharpened Obsidian Edged Blade
							i(49495),	-- Burnished Quel'Serrar
							i(49494),	-- Honed Fang of the Mystics
							i(49499),	-- Polished Azuresong Mageblade
							i(49500),	-- Raging Deathbringer
							i(49465),	-- Tarnished Gutgore Ripper
							i(49501),	-- Tempered Vis'kag the Bloodletter
							i(49493),	-- Rifled Blastershot Launcher
							i(49490),	-- Antediluvian Cornerstone Grimoire
							i(49482),	-- Aurora of Transcendence (Priest)
							i(49477),	-- Bloodfang Hood (Rogue)
							i(49469),	-- Crown of Ten Storms (Shaman)
							i(49480),	-- Dragonstalker's Helm (Hunter)
							i(49467),	-- Frostforged Greathelm (Death Knight)
							i(49466),	-- Frostforged Helm (Death Knight)
							i(49483),	-- Halo of Transcendence (Priest)
							i(49468),	-- Helm of Ten Storms (Shaman)
							i(49479),	-- Helm of Wrath (Warrior)
							i(49470),	-- Helmet of Ten Storms (Shaman)
							i(49478),	-- Helmet of Wrath (Warrior)
							i(49476),	-- Judgment Crown (Paladin)
							i(49475),	-- Judgment Heaume (Paladin)
							i(49474),	-- Judgment Hood (Paladin)
							i(49484),	-- Nemesis Skullcap (Warlock)
							i(49481),	-- Netherwind Crown (Mage)
							i(49473),	-- Stormrage Cover (Druid)
							i(49471),	-- Stormrage Coverlet (Druid)
							i(49472),	-- Stormrage Crown (Druid)
							i(49492),	-- Eskhandar's Links
							i(49491),	-- Flowing Sapphiron Drape
							i(49489),	-- Signified Ring of Binding
							i(49464),	-- Shiny Shard of the Flame
							i(49488),	-- Shiny Shard of the Scale
						},
					})
				},
			})),
			d(DIFFICULTY.LEGACY_RAID.PLAYER40, {
				["sourceQuests"] = {
					6502,	-- Alliance Attunement Quest
					6602,	-- Horde Attunement Quest
				},
				["ignoreBonus"] = true,
				-- #if AFTER CATA
				["timeline"] = REMOVED_WITH_RERELEASE,
				-- #else
				["OnUpdate"] = ONYXIAS_LAIR_FORTYMAN_ONUPDATE,
				-- #endif
				["groups"] = {
			-- #endif
					n(10184, bubbleDownFiltered(ONYXIAS_LAIR_FORTYMAN_BUBBLE_DOWN_CONTENTS, ONYXIAS_LAIR_FORTYMAN_BUBBLE_DOWN_FILTER, {	-- Onyxia
						ach(684, {	-- Onyxia's Lair (Level 60)
							-- #if BEFORE WRATH
							["sourceQuests"] = {
								7635,	-- A Proper String
								7509,	-- The Forging of Quel'Serrar
								8620,	-- The Only Prescription
								7495,	-- Victory for the Alliance
								7490,	-- Victory for the Horde
							},
							-- #endif
						}),
						i(18423, {	-- Head of Onyxia (A)
							["races"] = ALLIANCE_ONLY,
						}),
						i(18422, {	-- Head of Onyxia (H)
							["races"] = HORDE_ONLY,
						}),
						-- #if BEFORE WRATH
						i(18705, {	-- Mature Black Dragon Sinew
							["timeline"] = { REMOVED_4_0_3 },
							["classes"] = { HUNTER },
							["lvl"] = 60,
						}),
						-- #endif
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_FOUR, i(227532, {	-- Incandescent Hood
							["timeline"] = { ADDED_1_15_3 },
						})),
						applyclassicphase(SOD_PHASE_FOUR, i(227755, {	-- Molten Scaled Helm
							["timeline"] = { ADDED_1_15_3 },
						})),
						applyclassicphase(SOD_PHASE_FOUR, i(227764, {	-- Scorched Core Helm
							["timeline"] = { ADDED_1_15_3 },
						})),
						applyclassicphase(SOD_PHASE_FOUR, i(227537, {	-- Incandescent Shoulderpads
							["timeline"] = { ADDED_1_15_3 },
						})),
						applyclassicphase(SOD_PHASE_FOUR, i(227752, {	-- Molten Scaled Shoulderpads
							["timeline"] = { ADDED_1_15_3 },
						})),
						applyclassicphase(SOD_PHASE_FOUR, i(227762, {	-- Scorched Core Shoulderpads
							["timeline"] = { ADDED_1_15_3 },
						})),
						applyclassicphase(SOD_PHASE_FOUR, i(227535, {	-- Incandescent Robe
							["timeline"] = { ADDED_1_15_3 },
						})),
						applyclassicphase(SOD_PHASE_FOUR, i(227758, {	-- Molten Scaled Chest
							["timeline"] = { ADDED_1_15_3 },
						})),
						applyclassicphase(SOD_PHASE_FOUR, i(227766, {	-- Scorched Core Chest
							["timeline"] = { ADDED_1_15_3 },
						})),
						applyclassicphase(SOD_PHASE_FOUR, i(227531, {	-- Incandescent Bindings
							["timeline"] = { ADDED_1_15_3 },
						})),
						applyclassicphase(SOD_PHASE_FOUR, i(227750, {	-- Molten Scaled Bindings
							["timeline"] = { ADDED_1_15_3 },
						})),
						applyclassicphase(SOD_PHASE_FOUR, i(227760, {	-- Scorched Core Bindings
							["timeline"] = { ADDED_1_15_3 },
						})),
						applyclassicphase(SOD_PHASE_FOUR, i(227533, {	-- Incandescent Gloves
							["timeline"] = { ADDED_1_15_3 },
						})),
						applyclassicphase(SOD_PHASE_FOUR, i(227756, {	-- Molten Scaled Gloves
							["timeline"] = { ADDED_1_15_3 },
						})),
						applyclassicphase(SOD_PHASE_FOUR, i(227759, {	-- Scorched Core Gloves
							["timeline"] = { ADDED_1_15_3 },
						})),
						applyclassicphase(SOD_PHASE_FOUR, i(227530, {	-- Incandescent Belt
							["timeline"] = { ADDED_1_15_3 },
						})),
						applyclassicphase(SOD_PHASE_FOUR, i(227751, {	-- Molten Scaled Belt
							["timeline"] = { ADDED_1_15_3 },
						})),
						applyclassicphase(SOD_PHASE_FOUR, i(227761, {	-- Scorched Core Belt
							["timeline"] = { ADDED_1_15_3 },
						})),
						applyclassicphase(SOD_PHASE_FOUR, i(227534, {	-- Incandescent Leggings
							["timeline"] = { ADDED_1_15_3 },
						})),
						applyclassicphase(SOD_PHASE_FOUR, i(227754, {	-- Molten Scaled Leggings
							["timeline"] = { ADDED_1_15_3 },
						})),
						applyclassicphase(SOD_PHASE_FOUR, i(227763, {	-- Scorched Core Leggings
							["timeline"] = { ADDED_1_15_3 },
						})),
						applyclassicphase(SOD_PHASE_FOUR, i(227536, {	-- Incandescent Boots
							["timeline"] = { ADDED_1_15_3 },
						})),
						applyclassicphase(SOD_PHASE_FOUR, i(227757, {	-- Molten Scaled Boots
							["timeline"] = { ADDED_1_15_3 },
						})),
						applyclassicphase(SOD_PHASE_FOUR, i(227765, {	-- Scorched Core Boots
							["timeline"] = { ADDED_1_15_3 },
						})),
						-- #endif
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_FOUR, i(228992, {	-- Onyxia Hide Backpack (Bag)
							["timeline"] = { ADDED_1_15_3 },
						})),
						-- #endif
						i(17966, {	-- Onyxia Hide Backpack (Bag)
							-- #if SEASON_OF_DISCOVERY
							["timeline"] = { REMOVED_1_15_3 },
							-- #endif
						}),
						i(17068),	-- Deathbringer
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_FOUR, i(228162, {	-- Deceit
							["timeline"] = { ADDED_1_15_3 },
						})),
						applyclassicphase(SOD_PHASE_FOUR, i(228166, {	-- Key to the City
							["timeline"] = { ADDED_1_15_3 },
						})),
						-- #endif
						i(17075),	-- Vis'kag the Bloodletter
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_FOUR, i(228955, {	-- Ancient Cornerstone Grimoire
							["timeline"] = { ADDED_1_15_3 },
						})),
						-- #endif
						i(17067, {	-- Ancient Cornerstone Grimoire
							-- #if SEASON_OF_DISCOVERY
							["timeline"] = { REMOVED_1_15_3 },
							-- #endif
						}),
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_FOUR, i(228165, {	-- Dragonslayer's Javelin
							["timeline"] = { ADDED_1_15_3 },
						})),
						-- #endif
						BLOODFANG_HOOD,
						DRAGONSTALKERS_HELM,
						HALO_OF_TRANSCENDENCE,
						HELM_OF_WRATH,
						HELMET_OF_TEN_STORMS,
						JUDGMENT_CROWN,
						NEMESIS_SKULLCAP,
						NETHERWIND_CROWN,
						STORMRAGE_COVER,
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_FOUR, i(228759, {	-- Eskhandar's Collar
							["timeline"] = { ADDED_1_15_3 },
						})),
						-- #endif
						i(18205, {	-- Eskhandar's Collar
							-- #if SEASON_OF_DISCOVERY
							["timeline"] = { REMOVED_1_15_3 },
							-- #endif
						}),
						i(17078),	-- Sapphiron Drape
						i(18813),	-- Ring of Binding
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_FOUR, i(228163, {	-- Broodmother's Brooch
							["timeline"] = { ADDED_1_15_3 },
						})),
						applyclassicphase(SOD_PHASE_FOUR, i(228188, {	-- Prestor's Hairpin
							["timeline"] = { ADDED_1_15_3 },
						})),
						-- #endif
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_FOUR, i(228298, {	-- Shard of the Scale
							["timeline"] = { ADDED_1_15_3 },
						})),
						-- #endif
						i(17064, {	-- Shard of the Scale
							-- #if SEASON_OF_DISCOVERY
							["timeline"] = { REMOVED_1_15_3 },
							-- #endif
						}),
					})),
			-- #if AFTER WRATH
				},
			}),
			-- #endif
		},
	}),
}));

-- Helms were moved to Nefarian with 3.2.2, remove the unobtainable flag.
for _,item in pairs({
	BLOODFANG_HOOD,
	DRAGONSTALKERS_HELM,
	HALO_OF_TRANSCENDENCE,
	HELM_OF_WRATH,
	HELMET_OF_TEN_STORMS,
	JUDGMENT_CROWN,
	NEMESIS_SKULLCAP,
	NETHERWIND_CROWN,
	STORMRAGE_COVER,
}) do
	for key,value in pairs(ONYXIAS_LAIR_FORTYMAN_BUBBLE_DOWN_CONTENTS) do
		item[key] = nil;
	end
	-- #if SEASON_OF_DISCOVERY
	item.timeline = { REMOVED_1_15_3 };
	-- #endif
end