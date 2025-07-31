--------------------------------------------
--       E V E N T S    M O D U L E       --
--------------------------------------------
THE_SCOURGE_INVASION = createHeader({
	readable = "The Scourge Invasion",
	icon = 135228,
	text = {
		en = "The Scourge Invasion",
		ru = "Вторжение Плети",
		cn = "天灾入侵",
		tw = "天譴軍團入侵",
	},
	description = {
		en = "The Scourge Invasion was a world event in Patch 1.11 and again during the Wrath of the Lich King Pre-Patch during 3.0.1 that heralded the opening of Naxxramas, the citadel of the dreaded Kel'Thuzad.\n\nSeveral regions of Azeroth came under attack by Scourge forces. Members of the Argent Dawn organized a worldwide counter to the Scourge invasion, keeping an eye out for any necropolis sightings and passing on their information to all adventurers willing to aid them in their struggle.\n\nWith each victory against the Scourge, the defense grows stronger. As more and more invasion attempts are beaten back by the defenders, the Argent Dawn will be able to bestow increasingly more powerful blessings upon those fighting the invaders. If the mortal races focus on clearing the Scourge camps all over the world that have sprung up beneath each necropolis, perhaps the invasion can effectively be halted or even repelled. Those who wish to take up arms against the undead invaders should speak with a representative of the Argent Dawn to learn what regions need help and how the defense is holding up.",
	},
});
-- Note: This is up here to prevent the unobtainable flag from getting put on the Major Healing and Mana Potions (for now)
local MAJOR_HEALING_POTION = i(13446);	-- Major Healing Potion
local MAJOR_MANA_POTION = i(13444);	-- Major Mana Potion
local REMOVED_WITH_NAXX_RELEASE = REMOVED_2_0_1;
local ADDED_WITH_WRATH_PREPATCH = ADDED_3_0_2;
local REMOVED_WITH_NAXX_RELEASE_OR_SOD = REMOVED_WITH_NAXX_RELEASE;
-- #if ANYCLASSIC
local REMOVED_AFTER_WRATH_PREPATCH = REMOVED_3_0_3;
local BUBBLE_DOWN_FILTER = function(t)
	-- Do not apply the bubble down data to things removed with the first invasion.
	local timeline = t.timeline;
	if timeline then
		local phase = timeline[#timeline];
		if phase == REMOVED_WITH_NAXX_RELEASE or phase == REMOVED_WITH_NAXX_RELEASE_OR_SOD then
			return false;
		end
	end
	return not t.u or t.u ~= PHASE_SIX_SCOURGE_INVASION;
end;
-- So the idea here is that for Classic Wrath it would dynamically set the RWP down to 3.0.1 and mark everything removed from game if you have Wrath Phase 2 activated.
local SCOURGE_INVASION_ONUPDATE = [[function(t)
	if _.Settings:GetUnobtainableFilter(]] .. WRATH_PHASE_ONE .. [[) then
		t.u = ]] .. REMOVED_FROM_GAME .. [[;
		t.rwp = nil;
	else
		t.u = ]] .. TBC_PHASE_FIVE_SCOURGE_INVASION .. [[;
		t.rwp = 30001;
	end
end]];
-- #else
local REMOVED_AFTER_WRATH_PREPATCH = REMOVED_3_0_2;
local BUBBLE_DOWN_FILTER = function(t) return true; end;
-- #endif

local invasion = n(THE_SCOURGE_INVASION, bubbleDownFiltered({
	["timeline"] = { REMOVED_AFTER_WRATH_PREPATCH },
	-- #if ANYCLASSIC
	-- #if BEFORE WRATH
	-- #if AFTER TBC
	["OnUpdate"] = SCOURGE_INVASION_ONUPDATE,
	-- #endif
	-- #endif
	-- #endif
}, BUBBLE_DOWN_FILTER, {
	["maps"] = {
		AZSHARA,
		BLASTED_LANDS,
		BURNING_STEPPES,
		EASTERN_PLAGUELANDS,
		TANARIS,
		WINTERSPRING,
		-- #if AFTER TBC
		SHATTRATH_CITY,
		-- #endif
	},
	["groups"] = {
		n(ACHIEVEMENTS, {
			ach(2116, {	-- Tabard of the Argent Dawn
				["provider"] = { "i", 22999 },	-- Tabard of the Argent Dawn
				-- #if BEFORE WRATH
				["timeline"] = { REMOVED_3_0_2 },
				-- #endif
			}),
		}),
		n(QUESTS, {
			-- TODO: Find quest giver information for A Desperate Alliance / Desperate Research, all I have resource-wise is "Commoners in Major Cities".
			q(12753, {	-- A Desperate Alliance [Dwarf]
				["qg"] = 20102,	-- Goblin Commoner
				["timeline"] = { ADDED_WITH_WRATH_PREPATCH, REMOVED_AFTER_WRATH_PREPATCH },
				["races"] = { DWARF },
				["lvl"] = 65,
			}),
			q(12772, {	-- A Desperate Alliance [Night Elf]
				["qg"] = 19173,	-- Night Elf Commoner
				["timeline"] = { ADDED_WITH_WRATH_PREPATCH, REMOVED_AFTER_WRATH_PREPATCH },
				["maps"] = { DARNASSUS },
				["races"] = { NIGHTELF },
				["lvl"] = 65,
			}),
			q(12775, {	-- A Desperate Alliance [Human]
				["qg"] = 18927,	-- Human Commoner
				["timeline"] = { ADDED_WITH_WRATH_PREPATCH, REMOVED_AFTER_WRATH_PREPATCH },
				["maps"] = { STORMWIND_CITY },
				["races"] = { HUMAN },
				["lvl"] = 65,
			}),
			q(12777, {	-- A Desperate Alliance [Draenei]
				["qg"] = 18927,	-- Human Commoner
				["timeline"] = { ADDED_WITH_WRATH_PREPATCH, REMOVED_AFTER_WRATH_PREPATCH },
				["maps"] = { STORMWIND_CITY },
				["races"] = { DRAENEI },
				["lvl"] = 65,
			}),
			q(12808, {	-- A Desperate Alliance [Gnome]
				["timeline"] = { ADDED_WITH_WRATH_PREPATCH, REMOVED_AFTER_WRATH_PREPATCH },
				["races"] = { GNOME },
				["lvl"] = 65,
			}),
			applyclassicphase(PHASE_SIX_SCOURGE_INVASION, {	-- Argent Dawn Gloves
				["allianceQuestData"] = q(9094, {	-- Argent Dawn Gloves [A]
					["qg"] = 16786,	-- Argent Quartermaster <The Argent Dawn>
					["coords"] = {
						{ 54.7, 62.2, STORMWIND_CITY },
						{ 34.0, 66.4, IRONFORGE },
						{ 64.3, 44.5, DARNASSUS },
						{ 81.0, 59.8, EASTERN_PLAGUELANDS },
					},
				}),
				["hordeQuestData"] = q(9333, {	-- Argent Dawn Gloves [H]
					["qg"] = 16787,	-- Argent Outfitter <The Argent Dawn>
					["coords"] = {
						{ 43.7, 52.6, THUNDER_BLUFF },
						{ 52.5, 73.7, ORGRIMMAR },
						{ 49.9, 29.4, UNDERCITY },
						{ 80.8, 59.6, EASTERN_PLAGUELANDS },
					},
				}),
				["sourceQuest"] = 9153,	-- Under the Shadow
				["timeline"] = { REMOVED_WITH_NAXX_RELEASE_OR_SOD },
				["cost"] = { { "i", 22484, 30 } },	-- Necrotic Rune
				["repeatable"] = true,
				["lvl"] = 50,
				["groups"] = {
					i(23084, {	-- Gloves of Undead Cleansing
						["timeline"] = { REMOVED_WITH_NAXX_RELEASE_OR_SOD },
					}),
					i(23081, {	-- Handwraps of Undead Slaying
						["timeline"] = { REMOVED_WITH_NAXX_RELEASE_OR_SOD },
					}),
					i(23082, {	-- Handguards of Undead Slaying
						["timeline"] = { REMOVED_WITH_NAXX_RELEASE_OR_SOD },
					}),
					i(23078, {	-- Gauntlets of Undead Slaying
						["timeline"] = { REMOVED_WITH_NAXX_RELEASE_OR_SOD },
					}),
				},
			}),
			applyclassicphase(PHASE_SIX_SCOURGE_INVASION, {	-- Blessed Wizard Oil
				["allianceQuestData"] = q(9318, {	-- Blessed Wizard Oil [A]
					["qg"] = 16786,	-- Argent Quartermaster <The Argent Dawn>
					["coords"] = {
						{ 54.7, 62.2, STORMWIND_CITY },
						{ 34.0, 66.4, IRONFORGE },
						{ 64.3, 44.5, DARNASSUS },
						{ 81.0, 59.8, EASTERN_PLAGUELANDS },
					},
				}),
				["hordeQuestData"] = q(9334, {	-- Blessed Wizard Oil [H]
					["qg"] = 16787,	-- Argent Outfitter <The Argent Dawn>
					["coords"] = {
						{ 43.7, 52.6, THUNDER_BLUFF },
						{ 52.5, 73.7, ORGRIMMAR },
						{ 49.9, 29.4, UNDERCITY },
						{ 80.8, 59.6, EASTERN_PLAGUELANDS },
					},
				}),
				["sourceQuest"] = 9153,	-- Under the Shadow
				["timeline"] = { REMOVED_WITH_NAXX_RELEASE_OR_SOD },
				["cost"] = { { "i", 22484, 8 } },	-- Necrotic Rune
				["repeatable"] = true,
				["lvl"] = 50,
				["groups"] = {
					i(23123),	-- Blessed Wizard Oil
				},
			}),
			q(12616, {	-- Chamber of Secrets
				["qg"] = 16285,	-- Argent Emissary <The Argent Dawn>
				["timeline"] = { ADDED_WITH_WRATH_PREPATCH, REMOVED_AFTER_WRATH_PREPATCH },
				["maps"] = { KARAZHAN },
				["lvl"] = 70,
				["groups"] = {
					i(40354, {	-- Monster Slayer's Kit
						["timeline"] = { ADDED_WITH_WRATH_PREPATCH, REMOVED_AFTER_WRATH_PREPATCH },
					}),
				},
			}),
			applyclassicphase(PHASE_SIX_SCOURGE_INVASION, {	-- Consecrated Sharpening Stones
				["allianceQuestData"] = q(9317, {	-- Consecrated Sharpening Stones [A]
					["qg"] = 16786,	-- Argent Quartermaster <The Argent Dawn>
					["coords"] = {
						{ 54.7, 62.2, STORMWIND_CITY },
						{ 34.0, 66.4, IRONFORGE },
						{ 64.3, 44.5, DARNASSUS },
						{ 81.0, 59.8, EASTERN_PLAGUELANDS },
					},
				}),
				["hordeQuestData"] = q(9335, {	-- Consecrated Sharpening Stones [H]
					["qg"] = 16787,	-- Argent Outfitter <The Argent Dawn>
					["coords"] = {
						{ 43.7, 52.6, THUNDER_BLUFF },
						{ 52.5, 73.7, ORGRIMMAR },
						{ 49.9, 29.4, UNDERCITY },
						{ 80.8, 59.6, EASTERN_PLAGUELANDS },
					},
				}),
				["sourceQuest"] = 9153,	-- Under the Shadow
				["timeline"] = { REMOVED_WITH_NAXX_RELEASE_OR_SOD },
				["cost"] = { { "i", 22484, 8 } },	-- Necrotic Rune
				["repeatable"] = true,
				["lvl"] = 50,
				["groups"] = {
					i(23122),	-- Consecrated Sharpening Stone
				},
			}),
			q(9292, {	-- Cracked Necrotic Crystal
				["description"] = "If you hear the yell across the city that they've invaded the Park, head for the canals between the Keep and the Park, that is where the elite abomination will be (heading from the Park to the Keep on the north side of the canal).\n\nWhen he dies, the crystal appears above his corpse and everyone (of the appropriate level) can click on it and get the quest regardless of who tagged him first.",
				["providers"] = {
					{ "n", 16431 },	-- Cracked Necrotic Crystal
					{ "i", 22949 },	-- Cracked Necrotic Crystal
				},
				["maps"] = { STORMWIND_CITY },
				["races"] = ALLIANCE_ONLY,
				["isYearly"] = true,
				["lvl"] = 1,
				["groups"] = {
					i(23123),	-- Blessed Wizard Oil
					i(23122),	-- Consecrated Sharpening Stone
				},
			}),
			q(12773, {	-- Darnassus
				["sourceQuest"] = 12753,	-- A Desperate Alliance
				["providers"] = {
					{ "n", 29087 },	-- Bishop Lazaril
					{ "i", 39698 },	-- Light-Infused Artifact
				},
				["timeline"] = { ADDED_WITH_WRATH_PREPATCH, REMOVED_AFTER_WRATH_PREPATCH },
				["maps"] = { DARNASSUS },
				["races"] = { NIGHTELF },
				["lvl"] = 65,
			}),
			q(12783, {	-- Desperate Research [Troll]
				["timeline"] = { ADDED_WITH_WRATH_PREPATCH, REMOVED_AFTER_WRATH_PREPATCH },
				["races"] = { TROLL },
				["lvl"] = 65,
			}),
			q(12752, {	-- Desperate Research [Undead]
				["timeline"] = { ADDED_WITH_WRATH_PREPATCH, REMOVED_AFTER_WRATH_PREPATCH },
				["races"] = { UNDEAD },
				["lvl"] = 65,
			}),
			q(12782, {	-- Desperate Research [Blood Elf]
				["timeline"] = { ADDED_WITH_WRATH_PREPATCH, REMOVED_AFTER_WRATH_PREPATCH },
				["races"] = { BLOODELF },
				["lvl"] = 65,
			}),
			q(12784, {	-- Desperate Research [Tauren]
				["timeline"] = { ADDED_WITH_WRATH_PREPATCH, REMOVED_AFTER_WRATH_PREPATCH },
				["races"] = { TAUREN },
				["lvl"] = 65,
			}),
			q(12811, {	-- Desperate Research [Orc]
				["timeline"] = { ADDED_WITH_WRATH_PREPATCH, REMOVED_AFTER_WRATH_PREPATCH },
				["races"] = { ORC },
				["lvl"] = 65,
			}),
			q(9304, {	-- Document from the Front
				["providers"] = {
					{ "i", 22975 },	-- A Smudged Document
					{ "i", 22948 },	-- A Smudged Document
				},
				["lvl"] = 45,
			}),
			q(9301, {	-- Envelope from the Front
				["providers"] = {
					{ "i", 22970 },	-- A Bloodstained Envelope
					{ "i", 22930 },	-- A Bloodstained Envelope
				},
				["lvl"] = 45,
			}),
			q(9310, {	-- Faint Necrotic Crystal
				["description"] = "If you hear the yell across the city that they've invaded the Sewers, head for the canals between the Sewers and the Royal Quarter, that is where the elite abomination will be.\n\nWhen he dies, the crystal appears above his corpse and everyone (of the appropriate level) can click on it and get the quest regardless of who tagged him first.",
				["providers"] = {
					{ "n", 16531 },	-- Faint Necrotic Crystal
					{ "i", 22950 },	-- Faint Necrotic Crystal
				},
				["maps"] = { TIRISFAL_GLADES, UNDERCITY },
				["races"] = HORDE_ONLY,
				["isYearly"] = true,
				["lvl"] = 1,
				["groups"] = {
					i(23123),	-- Blessed Wizard Oil
					i(23122),	-- Consecrated Sharpening Stone
				},
			}),
			q(9262, {	-- Investigate the Scourge of Darnassus
				["qg"] = 16495,	-- Lieutenant Beitha <The Argent Dawn>
				["coord"] = { 77.7, 42.7, DARNASSUS },
				["maps"] = { TELDRASSIL },
				["races"] = ALLIANCE_ONLY,
				["isYearly"] = true,
				["lvl"] = 1,
				["groups"] = {
					objective(1, {	-- 0/3 Dim Necrotic Stone
						["provider"] = { "i", 22892 },	-- Dim Necrotic Stone
						["crs"] = {
							16423,	-- Spectral Apparition
							16422,	-- Skeletal Soldier
							16437,	-- Spectral Spirit
							16438,	-- Skeletal Trooper
						},
					}),
				},
			}),
			q(9261, {	-- Investigate the Scourge of Ironforge
				["qg"] = 16484,	-- Lieutenant Nevell <The Argent Dawn>
				["coord"] = { 53.2, 35.0, DUN_MOROGH },
				["maps"] = { IRONFORGE },
				["races"] = ALLIANCE_ONLY,
				["isYearly"] = true,
				["lvl"] = 1,
				["groups"] = {
					objective(1, {	-- 0/3 Dim Necrotic Stone
						["provider"] = { "i", 22892 },	-- Dim Necrotic Stone
						["crs"] = {
							16423,	-- Spectral Apparition
							16422,	-- Skeletal Soldier
							16437,	-- Spectral Spirit
							16438,	-- Skeletal Trooper
						},
					}),
				},
			}),
			q(9263, {	-- Investigate the Scourge of Orgrimmar
				["qg"] = 16493,	-- Lieutenant Dagel <The Argent Dawn>
				["coord"] = { 51.7, 83.3, ORGRIMMAR },
				["maps"] = { DUROTAR },
				["races"] = HORDE_ONLY,
				["isYearly"] = true,
				["lvl"] = 1,
				["groups"] = {
					objective(1, {	-- 0/3 Dim Necrotic Stone
						["provider"] = { "i", 22892 },	-- Dim Necrotic Stone
						["crs"] = {
							16423,	-- Spectral Apparition
							16422,	-- Skeletal Soldier
							16437,	-- Spectral Spirit
							16438,	-- Skeletal Trooper
						},
					}),
				},
			}),
			q(9260, {	-- Investigate the Scourge of Stormwind
				["qg"] = 16478,	-- Lieutenant Orrin <The Argent Dawn>
				["coord"] = { 63.8, 75.5, STORMWIND_CITY },
				["maps"] = { ELWYNN_FOREST },
				["races"] = ALLIANCE_ONLY,
				["isYearly"] = true,
				["lvl"] = 1,
				["groups"] = {
					objective(1, {	-- 0/3 Dim Necrotic Stone
						["provider"] = { "i", 22892 },	-- Dim Necrotic Stone
						["crs"] = {
							16423,	-- Spectral Apparition
							16422,	-- Skeletal Soldier
							16437,	-- Spectral Spirit
							16438,	-- Skeletal Trooper
						},
					}),
				},
			}),
			q(9265, {	-- Investigate the Scourge of the Undercity
				["qg"] = 16494,	-- Lieutenant Rukag <The Argent Dawn>
				["coord"] = { 66.2, 21.4, UNDERCITY },
				["maps"] = { TIRISFAL_GLADES },
				["races"] = HORDE_ONLY,
				["isYearly"] = true,
				["lvl"] = 1,
				["groups"] = {
					objective(1, {	-- 0/3 Dim Necrotic Stone
						["provider"] = { "i", 22892 },	-- Dim Necrotic Stone
						["crs"] = {
							16423,	-- Spectral Apparition
							16422,	-- Skeletal Soldier
							16437,	-- Spectral Spirit
							16438,	-- Skeletal Trooper
						},
					}),
				},
			}),
			q(9264, {	-- Investigate the Scourge of Thunder Bluff
				["qg"] = 16490,	-- Lieutenant Lisande <The Argent Dawn>
				["coord"] = { 33.1, 59.9, THUNDER_BLUFF },
				["maps"] = { MULGORE },
				["races"] = HORDE_ONLY,
				["isYearly"] = true,
				["lvl"] = 1,
				["groups"] = {
					objective(1, {	-- 0/3 Dim Necrotic Stone
						["provider"] = { "i", 22892 },	-- Dim Necrotic Stone
						["crs"] = {
							16423,	-- Spectral Apparition
							16422,	-- Skeletal Soldier
							16437,	-- Spectral Spirit
							16438,	-- Skeletal Trooper
						},
					}),
				},
			}),
			q(12771, {	-- Ironforge (Dwarf)
				["sourceQuest"] = 12753,	-- A Desperate Alliance
				["providers"] = {
					{ "n", 29087 },	-- Bishop Lazaril
					{ "i", 39698 },	-- Light-Infused Artifact
				},
				["timeline"] = { ADDED_WITH_WRATH_PREPATCH, REMOVED_AFTER_WRATH_PREPATCH },
				["maps"] = { IRONFORGE },
				["races"] = { DWARF },
				["lvl"] = 65,
			}),
			q(12809, {	-- Ironforge (Gnome)
				["sourceQuest"] = 12808,	-- A Desperate Alliance
				["providers"] = {
					{ "n", 29087 },	-- Bishop Lazaril
					{ "i", 39698 },	-- Light-Infused Artifact
				},
				["timeline"] = { ADDED_WITH_WRATH_PREPATCH, REMOVED_AFTER_WRATH_PREPATCH },
				["maps"] = { IRONFORGE },
				["races"] = { GNOME },
				["lvl"] = 65,
			}),
			q(9295, {	-- Letter from the Front
				["providers"] = {
					{ "i", 22977 },	-- A Torn Letter
					{ "i", 22932 },	-- A Torn Letter
				},
				["lvl"] = 45,
			}),
			q(9154, {	-- Light's Hope Chapel
				["providers"] = {
					{ "n", 16241 },	-- Argent Recruiter <The Argent Dawn>
					{ "n", 16255 },	-- Argent Scout <The Argent Dawn>
					{ "i", 22595 },	-- Call to Arms Announcement
				},
				["coords"] = {
					{ 64.5, 44.2, DARNASSUS },
					{ 77.3, 42.8, DARNASSUS },
					{ 53.1, 35.0, DUN_MOROGH },
					{ 35.3, 68.7, IRONFORGE },
					{ 53.1, 73.6, ORGRIMMAR },
					{ 51.7, 83.6, ORGRIMMAR },
					{ 55.0, 62.0, STORMWIND_CITY },
					{ 64.1, 75.0, STORMWIND_CITY },
					{ 32.9, 60.1, THUNDER_BLUFF },
					{ 43.5, 53.2, THUNDER_BLUFF },
					{ 49.5, 32.1, UNDERCITY },
					{ 65.9, 21.4, UNDERCITY },
				},
				["isYearly"] = true,
				["lvl"] = 50,
			}),
			applyclassicphase(PHASE_SIX_SCOURGE_INVASION, {	-- Major Healing Potion
				["allianceQuestData"] = q(9321, {	-- Major Healing Potion [A]
					["qg"] = 16786,	-- Argent Quartermaster <The Argent Dawn>
					["coords"] = {
						{ 54.7, 62.2, STORMWIND_CITY },
						{ 34.0, 66.4, IRONFORGE },
						{ 64.3, 44.5, DARNASSUS },
						{ 81.0, 59.8, EASTERN_PLAGUELANDS },
					},
				}),
				["hordeQuestData"] = q(9336, {	-- Major Healing Potion [H]
					["qg"] = 16787,	-- Argent Outfitter <The Argent Dawn>
					["coords"] = {
						{ 43.7, 52.6, THUNDER_BLUFF },
						{ 52.5, 73.7, ORGRIMMAR },
						{ 49.9, 29.4, UNDERCITY },
						{ 80.8, 59.6, EASTERN_PLAGUELANDS },
					},
				}),
				["sourceQuest"] = 9153,	-- Under the Shadow
				["timeline"] = { REMOVED_WITH_NAXX_RELEASE },
				["cost"] = { { "i", 22484, 15 } },	-- Necrotic Rune
				["repeatable"] = true,
				["lvl"] = 50,
				["groups"] = {
					MAJOR_HEALING_POTION,	-- Major Healing Potion
				},
			}),
			applyclassicphase(PHASE_SIX_SCOURGE_INVASION, {	-- Major Mana Potion
				["allianceQuestData"] = q(9337, {	-- Major Mana Potion [A]
					["qg"] = 16786,	-- Argent Quartermaster <The Argent Dawn>
					["coords"] = {
						{ 54.7, 62.2, STORMWIND_CITY },
						{ 34.0, 66.4, IRONFORGE },
						{ 64.3, 44.5, DARNASSUS },
						{ 81.0, 59.8, EASTERN_PLAGUELANDS },
					},
				}),
				["hordeQuestData"] = q(9320, {	-- Major Mana Potion [H]
					["qg"] = 16787,	-- Argent Outfitter <The Argent Dawn>
					["coords"] = {
						{ 43.7, 52.6, THUNDER_BLUFF },
						{ 52.5, 73.7, ORGRIMMAR },
						{ 49.9, 29.4, UNDERCITY },
						{ 80.8, 59.6, EASTERN_PLAGUELANDS },
					},
				}),
				["sourceQuest"] = 9153,	-- Under the Shadow
				["timeline"] = { REMOVED_WITH_NAXX_RELEASE },
				["cost"] = { { "i", 22484, 15 } },	-- Necrotic Rune
				["repeatable"] = true,
				["lvl"] = 50,
				["groups"] = {
					MAJOR_MANA_POTION,	-- Major Mana Potion
				},
			}),
			q(9302, {	-- Missive from the Front
				["providers"] = {
					{ "i", 22973 },	-- A Crumpled Missive
					{ "i", 22944 },	-- A Crumpled Missive
				},
				["lvl"] = 45,
			}),
			q(9299, {	-- Note from the Front
				["providers"] = {
					{ "i", 22972 },	-- A Careworn Note
					{ "i", 22945 },	-- A Careworn Note
				},
				["lvl"] = 45,
			}),
			q(12785, {	-- Orgrimmar (Troll)
				["sourceQuest"] = 12783,	-- Desperate Research
				["providers"] = {
					{ "n", 28318 },	-- Grand Apothecary Putress
					{ "i", 40482 },	-- Dual-Plagued Brain
				},
				["timeline"] = { ADDED_WITH_WRATH_PREPATCH, REMOVED_AFTER_WRATH_PREPATCH },
				["maps"] = { ORGRIMMAR },
				["races"] = { TROLL },
				["lvl"] = 65,
			}),
			q(12812, {	-- Orgrimmar (Orc)
				["sourceQuest"] = 12811,	-- Desperate Research
				["providers"] = {
					{ "n", 28318 },	-- Grand Apothecary Putress
					{ "i", 40482 },	-- Dual-Plagued Brain
				},
				["timeline"] = { ADDED_WITH_WRATH_PREPATCH, REMOVED_AFTER_WRATH_PREPATCH },
				["maps"] = { ORGRIMMAR },
				["races"] = { ORC },
				["lvl"] = 65,
			}),
			q(9300, {	-- Page from the Front
				["providers"] = {
					{ "i", 22974 },	-- A Ragged Page
					{ "i", 22946 },	-- A Ragged Page
				},
				["lvl"] = 45,
			}),
			q(9085, {	-- Shadows of Doom
				["qg"] = 16361,	-- Commander Thomas Helleran <The Argent Dawn>
				["coord"] = { 81.1, 60.6, EASTERN_PLAGUELANDS },
				["isYearly"] = true,
				["lvl"] = 50,
				["groups"] = {
					objective(1, {	-- 0/1 Shadow of Doom slain
						["provider"] = { "n", 16143 },	-- Shadow of Doom
					}),
					i(23123),	-- Blessed Wizard Oil
					i(23122),	-- Consecrated Sharpening Stone
				},
			}),
			q(12788, {	-- Silvermoon
				["sourceQuest"] = 12782,	-- Desperate Research
				["providers"] = {
					{ "n", 28318 },	-- Grand Apothecary Putress
					{ "i", 40482 },	-- Dual-Plagued Brain
				},
				["timeline"] = { ADDED_WITH_WRATH_PREPATCH, REMOVED_AFTER_WRATH_PREPATCH },
				["maps"] = { SILVERMOON_CITY },
				["races"] = { BLOODELF },
				["lvl"] = 65,
			}),
			q(12774, {	-- Stormwind
				["sourceQuest"] = 12775,	-- A Desperate Alliance
				["providers"] = {
					{ "n", 29087 },	-- Bishop Lazaril
					{ "i", 39698 },	-- Light-Infused Artifact
				},
				["timeline"] = { ADDED_WITH_WRATH_PREPATCH, REMOVED_AFTER_WRATH_PREPATCH },
				["maps"] = { STORMWIND_CITY },
				["races"] = { HUMAN },
				["lvl"] = 65,
			}),
			applyclassicphase(PHASE_SIX_SCOURGE_INVASION, {	-- Tabard of the Argent Dawn
				["allianceQuestData"] = q(9341, {	-- Tabard of the Argent Dawn [A]
					["qg"] = 16786,	-- Argent Quartermaster <The Argent Dawn>
					["coords"] = {
						{ 54.7, 62.2, STORMWIND_CITY },
						{ 34.0, 66.4, IRONFORGE },
						{ 64.3, 44.5, DARNASSUS },
						{ 81.0, 59.8, EASTERN_PLAGUELANDS },
					},
				}),
				["hordeQuestData"] = q(9343, {	-- Tabard of the Argent Dawn [H]
					["qg"] = 16787,	-- Argent Outfitter <The Argent Dawn>
					["coords"] = {
						{ 43.7, 52.6, THUNDER_BLUFF },
						{ 52.5, 73.7, ORGRIMMAR },
						{ 49.9, 29.4, UNDERCITY },
						{ 80.8, 59.6, EASTERN_PLAGUELANDS },
					},
				}),
				["sourceQuest"] = 9153,	-- Under the Shadow
				["timeline"] = { REMOVED_WITH_NAXX_RELEASE },
				["cost"] = { { "i", 22484, 10 } },	-- Necrotic Rune
				["repeatable"] = true,
				["lvl"] = 50,
				["groups"] = {
					i(22999),	-- Tabard of the Argent Dawn
				},
			}),
			q(12776, {	-- The Exodar
				["sourceQuest"] = 12777,	-- A Desperate Alliance
				["providers"] = {
					{ "n", 29087 },	-- Bishop Lazaril
					{ "i", 39698 },	-- Light-Infused Artifact
				},
				["timeline"] = { ADDED_WITH_WRATH_PREPATCH, REMOVED_AFTER_WRATH_PREPATCH },
				["maps"] = { THE_EXODAR },
				["races"] = { DRAENEI },
				["lvl"] = 65,
			}),
			q(9247, {	-- The Keeper's Call
				["description"] = "You should receive this in the mail at level 60.",
				["providers"] = {
					{ "n", 16281 },	-- Keeper of the Rolls <The Argent Dawn>
					{ "i", 22723 },	-- A Letter from the Keeper of the Rolls [You get this in the mail.]
				},
				["coord"] = { 81.1, 60.5, EASTERN_PLAGUELANDS },
				["isYearly"] = true,
				["lvl"] = 60,
				["groups"] = {
					i(23123),	-- Blessed Wizard Oil
					i(23122),	-- Consecrated Sharpening Stone
				},
			}),
			q(12787, {	-- The Undercity
				["sourceQuest"] = 12752,	-- Desperate Research
				["providers"] = {
					{ "n", 28318 },	-- Grand Apothecary Putress
					{ "i", 40482 },	-- Dual-Plagued Brain
				},
				["timeline"] = { ADDED_WITH_WRATH_PREPATCH, REMOVED_AFTER_WRATH_PREPATCH },
				["maps"] = { UNDERCITY },
				["races"] = { UNDEAD },
				["lvl"] = 65,
			}),
			q(12786, {	-- Thunder Bluff
				["sourceQuest"] = 12784,	-- Desperate Research
				["providers"] = {
					{ "n", 28318 },	-- Grand Apothecary Putress
					{ "i", 40482 },	-- Dual-Plagued Brain
				},
				["timeline"] = { ADDED_WITH_WRATH_PREPATCH, REMOVED_AFTER_WRATH_PREPATCH },
				["maps"] = { THUNDER_BLUFF },
				["races"] = { TAUREN },
				["lvl"] = 65,
			}),
			q(9153, {	-- Under the Shadow
				["qg"] = 16361,	-- Commander Thomas Helleran <The Argent Dawn>
				["coord"] = { 81.1, 60.6, EASTERN_PLAGUELANDS },
				["cost"] = { { "i", 22484, 10 } },	-- Necrotic Rune
				["isYearly"] = true,
				["lvl"] = 50,
				["groups"] = {
					i(23123),	-- Blessed Wizard Oil
					i(23122),	-- Consecrated Sharpening Stone
				},
			}),
		}),
		n(14684, {	-- Balzaphon
			["description"] = "Located in Stratholme.\n\nCan be found wandering in a circle around the fountain in the courtyard.",
			["maps"] = { STRATHOLME },
			["groups"] = {
				i(23124),	-- Staff of Balzaphon
				i(23125),	-- Chains of the Lich
				i(23126),	-- Waistband of Balzaphon
			},
		}),
		n(14686, {	-- Lady Falther'ess
			["description"] = "Located in Razorfen Downs.\n\nCan be found inside one of the prison cells, before the skeleton pile. Looks like a human female until you talk to her upon she transforms into a Banshee.",
			["maps"] = { RAZORFEN_DOWNS },
			["groups"] = {
				i(23177),	-- Lady Falther'ess' Finger
				i(23178),	-- Mantle of Lady Falther'ess
			},
		}),
		n(14695, {	-- Lord Blackwood
			["description"] = "Located in Scholomance.\n\nCan be found in the room just before the plagued hatchlings.",
			["maps"] = { SCHOLOMANCE },
			["groups"] = {
				i(23156),	-- Blackwood's Thigh
				i(23132),	-- Lord Blackwood's Blade
				i(23139),	-- Lord Blackwood's Buckler
			},
		}),
		n(14690, {	-- Revanchion
			["description"] = "Located in Dire Maul West.\n\nCan be found in the corridor above and behind Tendris Warpwood, the same one Magister Kalendris is in.",
			["maps"] = { DIRE_MAUL },
			["groups"] = {
				i(23127),	-- Cloak of Revanchion
				i(23129),	-- Bracers of Mending
				i(23128),	-- The Shadow's Grasp
			},
		}),
		n(14693, {	-- Scorn
			["description"] = "Located in Scarlet Monastery Graveyard.\n\nHe patrols the graveyard after killing the last boss.",
			["maps"] = { SCARLET_MONASTERY },
			["groups"] = {
				i(23168),	-- Scorn's Focal Dagger
				i(23169),	-- Scorn's Icy Choker
				i(23170),	-- The Frozen Clutch
			},
		}),
		n(14682, {	-- Sever
			["description"] = "Located in Shadowfang Keep.\n\nCan be found in the room up the ramp to the right of the entrance to the Butcher's room in the courtyard.",
			["maps"] = { SHADOWFANG_KEEP },
			["groups"] = {
				i(23171),	-- The Axe of Severing
				i(23173),	-- Abomination Skin Leggings
			},
		}),
		n(16143, {	-- Shadow of Doom
			["description"] = "To summon this mob, speak to the cultist and give them 8 runes. This will automatically tag that mob for your group.",
			["cost"] = { { "i", 22484, 8 } },	-- Necrotic Rune
			["groups"] = {
				i(22484),	-- Necrotic Rune
				i(43069, {	-- Blessed Breastplate of Undead Slaying
					["timeline"] = { ADDED_WITH_WRATH_PREPATCH, REMOVED_AFTER_WRATH_PREPATCH },
				}),
				i(43080, {	-- Blessed Hauberk of Undead Slaying
					["timeline"] = { ADDED_WITH_WRATH_PREPATCH, REMOVED_AFTER_WRATH_PREPATCH },
				}),
				i(43072, {	-- Blessed Robe of Undead Cleansing
					["timeline"] = { ADDED_WITH_WRATH_PREPATCH, REMOVED_AFTER_WRATH_PREPATCH },
				}),
				i(43076, {	-- Blessed Tunic of Undead Slaying
					["timeline"] = { ADDED_WITH_WRATH_PREPATCH, REMOVED_AFTER_WRATH_PREPATCH },
				}),
				applyclassicphase(PHASE_SIX_SCOURGE_INVASION, i(23087, {	-- Breastplate of Undead Slaying
					["timeline"] = { REMOVED_WITH_NAXX_RELEASE_OR_SOD },
				})),
				applyclassicphase(PHASE_SIX_SCOURGE_INVASION, i(23088, {	-- Chestguard of Undead Slaying
					["timeline"] = { REMOVED_WITH_NAXX_RELEASE_OR_SOD },
				})),
				applyclassicphase(PHASE_SIX_SCOURGE_INVASION, i(23085, {	-- Robe of Undead Cleansing
					["timeline"] = { REMOVED_WITH_NAXX_RELEASE_OR_SOD },
				})),
				applyclassicphase(PHASE_SIX_SCOURGE_INVASION, i(23089, {	-- Tunic of Undead Slaying
					["timeline"] = { REMOVED_WITH_NAXX_RELEASE_OR_SOD },
				})),
			},
		}),
		n(28194, {	-- Prince Tenris Mirkblood
			["description"] = "Located in Karazhan.\n\nCan be found in the Guardhouse, behind a Bloodstained Door above the stables where Attumen resides, which can be accessed through the stairs after Attumen, or through the ballroom where Moroes resides.",
			["timeline"] = { ADDED_WITH_WRATH_PREPATCH, REMOVED_AFTER_WRATH_PREPATCH },
			["maps"] = { KARAZHAN },
			["groups"] = {
				ach(2456, {	-- Vampire Hunter
					["provider"] = { "i", 38658 },	-- Vampiric Batling Pet
					-- #if BEFORE WRATH
					["timeline"] = { ADDED_WITH_WRATH_PREPATCH, REMOVED_3_0_2 },
					-- #else
					["timeline"] = { ADDED_WITH_WRATH_PREPATCH, REMOVED_AFTER_WRATH_PREPATCH },
					-- #endif
				}),
				i(38658, {	-- Vampiric Batling (PET!)
					-- #if ANYCLASSIC
					["description"] = "Drops for everyone in the raid. Get one on all of your alts!",
					-- #endif
					["timeline"] = { ADDED_WITH_WRATH_PREPATCH, REMOVED_AFTER_WRATH_PREPATCH },
				}),
				i(39769, {	-- Arcanite Ripper
					-- #if ANYCLASSIC
					["description"] = "Only ONE of these drops per raid. Help your friends get one on their account by bringing your alts! Highly recommend 6-8 manning the boss for this item and hard reserving it for one person per raid group.",
					-- #endif
					["timeline"] = { ADDED_WITH_WRATH_PREPATCH, REMOVED_AFTER_WRATH_PREPATCH },
				}),
			},
		}),
		-- #if AFTER WRATH
		n(VENDORS, {
			n(16786, {	-- Argent Quartermaster <The Argent Dawn>
				["coords"] = {
					{ 54.7, 62.2, STORMWIND_CITY },
					{ 34.0, 66.4, IRONFORGE },
					{ 43.7, 52.6, THUNDER_BLUFF },
					{ 52.5, 73.7, ORGRIMMAR },
					{ 49.9, 29.4, UNDERCITY },
					{ 64.3, 44.5, DARNASSUS },
					{ 80.9, 59.6, EASTERN_PLAGUELANDS },
				},
				["groups"] = {
					i(22999, {	-- Tabard of the Argent Dawn
						["cost"] = { { "i", 22484, 8 } },	-- Necrotic Rune
					}),
					i(43074, {	-- Blessed Mantle of Undead Cleansing
						["cost"] = { { "i", 22484, 15 } },	-- Necrotic Rune
						["timeline"] = { ADDED_WITH_WRATH_PREPATCH, REMOVED_AFTER_WRATH_PREPATCH },
					}),
					i(43073, {	-- Blessed Gloves of Undead Cleansing
						["cost"] = { { "i", 22484, 15 } },	-- Necrotic Rune
						["timeline"] = { ADDED_WITH_WRATH_PREPATCH, REMOVED_AFTER_WRATH_PREPATCH },
					}),
					i(43077, {	-- Blessed Shoulderpads of Undead Slaying
						["cost"] = { { "i", 22484, 15 } },	-- Necrotic Rune
						["timeline"] = { ADDED_WITH_WRATH_PREPATCH, REMOVED_AFTER_WRATH_PREPATCH },
					}),
					i(43078, {	-- Blessed Grips of Undead Slaying
						["cost"] = { { "i", 22484, 15 } },	-- Necrotic Rune
						["timeline"] = { ADDED_WITH_WRATH_PREPATCH, REMOVED_AFTER_WRATH_PREPATCH },
					}),
					i(43081, {	-- Blessed Pauldrons of Undead Slaying
						["cost"] = { { "i", 22484, 15 } },	-- Necrotic Rune
						["timeline"] = { ADDED_WITH_WRATH_PREPATCH, REMOVED_AFTER_WRATH_PREPATCH },
					}),
					i(43082, {	-- Blessed Handguards of Undead Slaying
						["cost"] = { { "i", 22484, 15 } },	-- Necrotic Rune
						["timeline"] = { ADDED_WITH_WRATH_PREPATCH, REMOVED_AFTER_WRATH_PREPATCH },
					}),
					i(43068, {	-- Blessed Spaulders of Undead Slaying
						["cost"] = { { "i", 22484, 15 } },	-- Necrotic Rune
						["timeline"] = { ADDED_WITH_WRATH_PREPATCH, REMOVED_AFTER_WRATH_PREPATCH },
					}),
					i(43070, {	-- Blessed Gauntlets of Undead Slaying
						["cost"] = { { "i", 22484, 15 } },	-- Necrotic Rune
						["timeline"] = { ADDED_WITH_WRATH_PREPATCH, REMOVED_AFTER_WRATH_PREPATCH },
					}),
					i(40601, {	-- Argent Dawn Banner
						["cost"] = { { "i", 22484, 8 } },	-- Necrotic Rune
						["timeline"] = { ADDED_WITH_WRATH_PREPATCH, REMOVED_AFTER_WRATH_PREPATCH },
					}),
					i(40593, {	-- Argent Tome
						["cost"] = { { "i", 22484, 30 } },	-- Necrotic Rune
						["timeline"] = { ADDED_WITH_WRATH_PREPATCH, REMOVED_AFTER_WRATH_PREPATCH },
					}),
					i(40492, {	-- Argent War Horn
						["cost"] = { { "i", 22484, 40 } },	-- Necrotic Rune
						["timeline"] = { ADDED_WITH_WRATH_PREPATCH, REMOVED_AFTER_WRATH_PREPATCH },
					}),
					i(23123, {	-- Blessed Wizard Oil
						["cost"] = { { "i", 22484, 8 } },	-- Necrotic Rune
					}),
					i(23122, {	-- Consecrated Sharpening Stone
						["cost"] = { { "i", 22484, 8 } },	-- Necrotic Rune
					}),
					i(43531, {	-- Argent Healing Potion
						["cost"] = { { "i", 22484, 20 } },	-- Necrotic Rune
						["timeline"] = { ADDED_WITH_WRATH_PREPATCH, REMOVED_AFTER_WRATH_PREPATCH },
					}),
					i(43530, {	-- Argent Mana Potion
						["cost"] = { { "i", 22484, 20 } },	-- Necrotic Rune
						["timeline"] = { ADDED_WITH_WRATH_PREPATCH, REMOVED_AFTER_WRATH_PREPATCH },
					}),
				},
			}),
		}),
		-- #endif
		n(ZONE_DROPS, {
			["crs"] = {
				16383,	-- Flameshocker
				16141,	-- Ghoul Berserker
				16299,	-- Skeletal Shocktrooper
				16298,	-- Spectral Soldier
			},
			["groups"] = {
				i(22484),	-- Necrotic Rune
				i(22970),	-- A Bloodstained Envelope
				i(22972),	-- A Careworn Note
				i(22973),	-- A Crumpled Missive
				i(22974),	-- A Ragged Page
				i(22975),	-- A Smudged Document
				i(22977),	-- A Torn Letter
				i(40110, {	-- Haunted Memento
					["description"] = "This is probably one of the coolest items in the game. DO NOT GET RID OF IT.",
					["timeline"] = { ADDED_WITH_WRATH_PREPATCH, REMOVED_AFTER_WRATH_PREPATCH },
				}),
			},
		}),
		n(RARES, {
			["crs"] = {
				16380,	-- Bone Witch
				14697,	-- Lumbering Horror
				16379,	-- Spirit of the Damned
			},
			["groups"] = {
				i(43083, {	-- Blessed Greaves of Undead Slaying
					["timeline"] = { ADDED_WITH_WRATH_PREPATCH, REMOVED_AFTER_WRATH_PREPATCH },
				}),
				i(43079, {	-- Blessed Leggings of Undead Slaying
					["timeline"] = { ADDED_WITH_WRATH_PREPATCH, REMOVED_AFTER_WRATH_PREPATCH },
				}),
				i(43071, {	-- Blessed Legplates of Undead Slaying
					["timeline"] = { ADDED_WITH_WRATH_PREPATCH, REMOVED_AFTER_WRATH_PREPATCH },
				}),
				i(43075, {	-- Blessed Trousers of Undead Cleansing
					["timeline"] = { ADDED_WITH_WRATH_PREPATCH, REMOVED_AFTER_WRATH_PREPATCH },
				}),
				applyclassicphase(PHASE_SIX_SCOURGE_INVASION, i(23091, {	-- Bracers of Undead Cleansing
					["timeline"] = { REMOVED_WITH_NAXX_RELEASE },
				})),
				applyclassicphase(PHASE_SIX_SCOURGE_INVASION, i(23093, {	-- Wristwraps of Undead Slaying
					["timeline"] = { REMOVED_WITH_NAXX_RELEASE },
				})),
				applyclassicphase(PHASE_SIX_SCOURGE_INVASION, i(23092, {	-- Wristguards of Undead Slaying
					["timeline"] = { REMOVED_WITH_NAXX_RELEASE },
				})),
				applyclassicphase(PHASE_SIX_SCOURGE_INVASION, i(23090, {	-- Bracers of Undead Slaying
					["timeline"] = { REMOVED_WITH_NAXX_RELEASE },
				})),
			},
		}),
		n(REWARDS, {
			["description"] = "The reports are mailed to you about 48 hours after you turn in the random drop letter quests and there is one unique flavor message per letter. I'm not sure if speaking to the npcs mentioned in the responses leads to more flavor text, but someone should probably look into that.",
			["groups"] = {
				i(23196, {	-- Greater Mark of the Dawn
					["description"] = "1 Stamina for every 2 levels for 1 Hour.\n\nAvailable after 150 Battles won.",
					["crs"] = {
						16436,	-- Argent Dawn Priest <The Argent Dawn>
						16434,	-- Argent Dawn Champion <The Argent Dawn>
					},
				}),
				i(23194, {	-- Lesser Mark of the Dawn
					["description"] = "1 Stamina for every 6 levels for 1 Hour.\n\nAvailable after 50 Battles won.",
					["crs"] = {
						16384,	-- Argent Dawn Initiate <The Argent Dawn>
						16395,	-- Argent Dawn Paladin <The Argent Dawn>
					},
				}),
				i(23195, {	-- Mark of the Dawn
					["description"] = "1 Stamina for every 3 levels for 1 Hour.\n\nAvailable after 100 Battles won.",
					["crs"] = {
						16435,	-- Argent Dawn Cleric <The Argent Dawn>
						16433,	-- Argent Dawn Crusader <The Argent Dawn>
					},
				}),
				i(23008),	-- Sealed Research Report
				i(23010),	-- Sealed Research Report
				i(23011),	-- Sealed Research Report
				i(23012),	-- Sealed Research Report
				i(23013),	-- Sealed Research Report
				i(23016),	-- Sealed Research Report
			},
		}),
	},
}));
-- #if AFTER TBC
applyclassicphase(TBC_PHASE_FIVE_SCOURGE_INVASION, invasion);
-- #else
applyclassicphase(PHASE_SIX_SCOURGE_INVASION, invasion);
-- #endif
root(ROOTS.WorldEvents, invasion);

-- Wipe out the unobtainable states.
MAJOR_HEALING_POTION.OnUpdate = nil;
MAJOR_HEALING_POTION.timeline = nil;
MAJOR_HEALING_POTION.u = nil;
MAJOR_MANA_POTION.OnUpdate = nil;
MAJOR_MANA_POTION.timeline = nil;
MAJOR_MANA_POTION.u = nil;
