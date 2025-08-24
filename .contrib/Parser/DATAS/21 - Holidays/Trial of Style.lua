--------------------------------------------
--     H O L I D A Y S  M O D U L E       --
--------------------------------------------
local TRIAL_OF_STYLE_TOKEN = 151134;
root(ROOTS.Holidays, applyevent(EVENTS.TRIAL_OF_STYLE, n(TRIAL_OF_STYLE_HEADER, bubbleDownSelf({ ["timeline"] = { ADDED_7_2_5 } }, {
	["zone-text-areaID"] = 8712,
	["groups"] = {
		n(SCENARIO_COMPLETION, {
			i(TRIAL_OF_STYLE_TOKEN),
			i(147573),	-- Trial of Style Reward: First Place
			i(147574),	-- Trial of Style Reward: Second Place
			i(147575),	-- Trial of Style Reward: Third Place
			i(147576),	-- Trial of Style Consolation Prize
		}),
		n(VENDORS, {
			["crs"] = {
				185570,	-- Warpweaver Dayelis <Transmogrifier> (Valdrakken)
				54473,	-- Warpweaver Dushar <Transmogrifier> (Horde / Orgrimmar)
				142068,	-- Warpweaver Ezil <Transmogrifier> (Alliance / Boralus)
				85289,	-- Warpweaver Farshlah <Transmogrifier> (Horde / Frostwall)
				54442,	-- Warpweaver Hashom <Transmogrifier> (Alliance / Stormwind)
				142068,	-- Warpweaver Hayri <Transmogrifier> (Horde / Dazar'alor)
				86395,	-- Warpweaver Jasor <Transmogrifier> (Horde / Warspear)
				64573,	-- Warpweaver Ramahesh <Transmogrifier> (Alliance / Shrine of Seven Stars)
				67014,	-- Warpweaver Shafiee <Transmogrifier> (Horde / Shrine of Two Moons)
				85961,	-- Warpweaver Shal <Transmogrifier> (Alliance / Stormshield)
				133196,	-- Warpweaver Sle'shal <Token Exchange> (Inside Trial of Style)
				156663,	-- Warpweaver Ta'oren <Transmogrifier> (Neutral / Oribos)
				99867,	-- Warpweaver Tuviss <Transmogrifier> (Neutral / Dalaran)
				85291,	-- Warpweaver Tuviss <Transmogrifier> (Alliance / Lunarfall)
				221848,	-- Warpweaver Voxin <Transmogrifier> (Dornogal)
			},
			["coord"] = { 74.4, 56.2, VALDRAKKEN },	-- Add all Coords if you want to..
			["groups"] = {
				-- SEASON 1 --
				spell(245743, {	-- Stylish!
					i(151116, {	-- Fashionable Undershirt
						["cost"] = { { "i", TRIAL_OF_STYLE_TOKEN, 1 }, },
					}),
				}),
				iensemble(151117, {	-- Ensemble: Mana-Etched Regalia
					["cost"] = { { "i", TRIAL_OF_STYLE_TOKEN, 60 }, },
					["classes"] = CLOTH_CLASSES,
				}),
				iensemble(151118, { -- Ensemble: Obsidian Prowler's Garb
					["cost"] = { { "i", TRIAL_OF_STYLE_TOKEN, 60 }, },
					["classes"] = LEATHER_CLASSES,
				}),
				iensemble(151119, { -- Ensemble: Der'izu Armor
					["cost"] = { { "i", TRIAL_OF_STYLE_TOKEN, 60 }, },
					["classes"] = MAIL_CLASSES,
				}),
				iensemble(151120, { -- Ensemble: Righteous Battleplate
					["cost"] = { { "i", TRIAL_OF_STYLE_TOKEN, 60 }, },
					["classes"] = PLATE_CLASSES,
				}),

				-- SEASON 2 --
				iensemble(157573, { -- Ensemble: Mindwrack Raiment
					["cost"] = { { "i", TRIAL_OF_STYLE_TOKEN, 60 }, },
					["classes"] = CLOTH_CLASSES,
					["timeline"] = { ADDED_7_3_5 },
				}),
				iensemble(157574, { -- Ensemble: Tundraspite Armor
					["cost"] = { { "i", TRIAL_OF_STYLE_TOKEN, 60 }, },
					["classes"] = LEATHER_CLASSES,
					["timeline"] = { ADDED_7_3_5 },
				}),
				iensemble(157576, { -- Ensemble: Crimson Sentinel Garb
					["cost"] = { { "i", TRIAL_OF_STYLE_TOKEN, 60 }, },
					["classes"] = MAIL_CLASSES,
					["timeline"] = { ADDED_7_3_5 },
				}),
				iensemble(157577, { -- Ensemble: Goldspine Plate
					["cost"] = { { "i", TRIAL_OF_STYLE_TOKEN, 60 }, },
					["classes"] = PLATE_CLASSES,
					["timeline"] = { ADDED_7_3_5 },
				}),
				i(156862, {	-- Trial of Style Dance Floor
					["cost"] = { { "i", TRIAL_OF_STYLE_TOKEN, 100 }, },
					["timeline"] = { ADDED_7_3_5 },
				}),
				i(156864, {	-- Trial of Style Flames
					["cost"] = { { "i", TRIAL_OF_STYLE_TOKEN, 100 }, },
					["timeline"] = { ADDED_7_3_5 },
				}),
				i(156863, {	-- Trial of Style Spotlight
					["cost"] = { { "i", TRIAL_OF_STYLE_TOKEN, 100 }, },
					["timeline"] = { ADDED_7_3_5 },
				}),

				-- SEASON 3 --
				i(164378, {	-- Letter from an Admirer
					["cost"] = { { "i", TRIAL_OF_STYLE_TOKEN, 100 }, },
					["timeline"] = { ADDED_8_0_1 },
				}),

				-- SEASON 4 --
				iensemble(168058, { -- Ensemble: Tranquil Spiritbind Regalia
					["cost"] = { { "i", TRIAL_OF_STYLE_TOKEN, 60 }, },
					["classes"] = CLOTH_CLASSES,
					["timeline"] = { ADDED_8_1_5 },
				}),
				iensemble(168059, { -- Ensemble: Restless Dreambound Battlegear
					["cost"] = { { "i", TRIAL_OF_STYLE_TOKEN, 60 }, },
					["classes"] = LEATHER_CLASSES,
					["timeline"] = { ADDED_8_1_5 },
				}),
				iensemble(168060, {	-- Ensemble: Chainmail of the Timeless Hunt
					["cost"] = { { "i", TRIAL_OF_STYLE_TOKEN, 60 }, },
					["classes"] = MAIL_CLASSES,
					["timeline"] = { ADDED_8_1_5 },
				}),
				iensemble(168061, { -- Ensemble: Amaranthine Path Armor
					["cost"] = { { "i", TRIAL_OF_STYLE_TOKEN, 60 }, },
					["classes"] = PLATE_CLASSES,
					["timeline"] = { ADDED_8_1_5 },
				}),

				--
				i(188237, {	-- Conjuror's Slippers
					["cost"] = { { "i", TRIAL_OF_STYLE_TOKEN, 7 }, },
					["timeline"] = { ADDED_9_1_5 },
				}),
				i(188249, {	-- Freezing Footguards
					["cost"] = { { "i", TRIAL_OF_STYLE_TOKEN, 15 }, },
					["timeline"] = { ADDED_9_1_5 },
				}),
				i(188236, {	-- Patroller's Footwear
					["cost"] = { { "i", TRIAL_OF_STYLE_TOKEN, 7 }, },
					["timeline"] = { ADDED_9_1_5 },
				}),
				i(188248, {	-- Searing Stompers
					["cost"] = { { "i", TRIAL_OF_STYLE_TOKEN, 15 }, },
					["timeline"] = { ADDED_9_1_5 },
				}),
				i(188243, {	-- Shadow-Stitched Stalkers
					["cost"] = { { "i", TRIAL_OF_STYLE_TOKEN, 10 }, },
					["timeline"] = { ADDED_9_1_5 },
				}),
				i(188244, {	-- Virulent Gravetreaders
					["cost"] = { { "i", TRIAL_OF_STYLE_TOKEN, 10 }, },
					["timeline"] = { ADDED_9_1_5 },
				}),

				--
				i(202308, {	-- Alley Skulker's Bandana
					["cost"] = { { "i", TRIAL_OF_STYLE_TOKEN, 25 }, },
					["timeline"] = { ADDED_10_0_5 },
				}),
				i(190686, {	-- Anetheron's Edge
					["cost"] = { { "i", TRIAL_OF_STYLE_TOKEN, 50 }, },
					["timeline"] = { ADDED_10_0_5 },
				}),
				i(202295, {	-- Anointed Crusader's Claymore
					["cost"] = { { "i", TRIAL_OF_STYLE_TOKEN, 50 }, },
					["timeline"] = { ADDED_10_0_5 },
				}),
				i(189870, {	-- Arcanofire Wrap
					["cost"] = { { "i", TRIAL_OF_STYLE_TOKEN, 15 }, },
					["timeline"] = { ADDED_10_0_5 },
				}),
				i(190697, {	-- Boots of a Broken World
					["cost"] = { { "i", TRIAL_OF_STYLE_TOKEN, 15 }, },
					["timeline"] = { ADDED_10_0_5 },
				}),
				i(190429, {	-- Clasp of Ursine Rage
					["cost"] = { { "i", TRIAL_OF_STYLE_TOKEN, 15 }, },
					["timeline"] = { ADDED_10_0_5 },
				}),
				i(202303, {	-- Crimson Beanie
					["cost"] = { { "i", TRIAL_OF_STYLE_TOKEN, 25 }, },
					["timeline"] = { ADDED_10_0_5 },
				}),
				i(202296, {	-- Deathmantle Ripper
					["cost"] = { { "i", TRIAL_OF_STYLE_TOKEN, 50 }, },
					["timeline"] = { ADDED_10_0_5 },
				}),
				i(202306, {	-- Dread Captain's Chapeau
					["cost"] = { { "i", TRIAL_OF_STYLE_TOKEN, 25 }, },
					["timeline"] = { ADDED_10_0_5 },
				}),
				i(190888, {	-- Embrace of the Great Dark Beyond
					["cost"] = { { "i", TRIAL_OF_STYLE_TOKEN, 15 }, },
					["timeline"] = { ADDED_10_0_5 },
				}),
				i(202301, {	-- Focalized Mana Accelerator
					["cost"] = { { "i", TRIAL_OF_STYLE_TOKEN, 50 }, },
					["timeline"] = { ADDED_10_0_5 },
				}),
				i(190858, {	-- Girdle of Chilled Embers
					["cost"] = { { "i", TRIAL_OF_STYLE_TOKEN, 15 }, },
					["timeline"] = { ADDED_10_0_5 },
				}),
				i(202304, {	-- Green Beanie
					["cost"] = { { "i", TRIAL_OF_STYLE_TOKEN, 25 }, },
					["timeline"] = { ADDED_10_0_5 },
				}),
				i(202297, {	-- Jade Arcus
					["cost"] = { { "i", TRIAL_OF_STYLE_TOKEN, 50 }, },
					["timeline"] = { ADDED_10_0_5 },
				}),
				i(190803, {	-- Lost Acolyte's Boots
					["cost"] = { { "i", TRIAL_OF_STYLE_TOKEN, 15 }, },
					["timeline"] = { ADDED_10_0_5 },
				}),
				i(190830, {	-- Mad Thief's Boots
					["cost"] = { { "i", TRIAL_OF_STYLE_TOKEN, 15 }, },
					["timeline"] = { ADDED_10_0_5 },
				}),
				i(190202, {	-- Scoundrel's Missing Boots
					["cost"] = { { "i", TRIAL_OF_STYLE_TOKEN, 15 }, },
					["timeline"] = { ADDED_10_0_5 },
				}),
				i(202305, {	-- Stevedore's Skullcap
					["cost"] = { { "i", TRIAL_OF_STYLE_TOKEN, 25 }, },
					["timeline"] = { ADDED_10_0_5 },
				}),
				i(202298, {	-- Trader's Bicorne
					["cost"] = { { "i", TRIAL_OF_STYLE_TOKEN, 25 }, },
					["timeline"] = { ADDED_10_0_5 },
				}),
				i(190544, {	-- Ultramafic Girdle
					["cost"] = { { "i", TRIAL_OF_STYLE_TOKEN, 15 }, },
					["timeline"] = { ADDED_10_0_5 },
				}),
				i(190167, {	-- Vault Stalker's Greaves
					["cost"] = { { "i", TRIAL_OF_STYLE_TOKEN, 15 }, },
					["timeline"] = { ADDED_10_0_5 },
				}),
				i(190673, {	-- Waistguard of the Infernal Eye
					["cost"] = { { "i", TRIAL_OF_STYLE_TOKEN, 15 }, },
					["timeline"] = { ADDED_10_0_5 },
				}),
				i(202307, {	-- Well-Worn Tricorne
					["cost"] = { { "i", TRIAL_OF_STYLE_TOKEN, 25 }, },
					["timeline"] = { ADDED_10_0_5 },
				}),
				i(190064, {	-- Ymirjar Berserker's Girdle
					["cost"] = { { "i", TRIAL_OF_STYLE_TOKEN, 15 }, },
					["timeline"] = { ADDED_10_0_5 },
				}),
				i(202300, {	-- Zealot's Prayer Staff
					["cost"] = { { "i", TRIAL_OF_STYLE_TOKEN, 50 }, },
					["timeline"] = { ADDED_10_0_5 },
				}),

				--
				i(213518, {	-- Classic Sepia Tabard
					["cost"] = {{ "i", TRIAL_OF_STYLE_TOKEN, 25 }},
					["timeline"] = { ADDED_10_2_6 },
				}),
				i(212626, {	-- Dueler's Sepia Shoulder Cape
					["cost"] = {{ "i", TRIAL_OF_STYLE_TOKEN, 25 }},
					["timeline"] = { ADDED_10_2_6 },
				}),
				i(213432, {	-- Duelist's Cedar Doublet
					["cost"] = {{ "i", TRIAL_OF_STYLE_TOKEN, 25 }},
					["timeline"] = { ADDED_10_2_6 },
				}),
				i(213435, {	-- Duelist's Crimson Doublet
					["cost"] = {{ "i", TRIAL_OF_STYLE_TOKEN, 25 }},
					["timeline"] = { ADDED_10_2_6 },
				}),
				i(213433, {	-- Duelist's Ivy Doublet
					["cost"] = {{ "i", TRIAL_OF_STYLE_TOKEN, 25 }},
					["timeline"] = { ADDED_10_2_6 },
				}),
				i(213437, {	-- Duelist's Marble Doublet
					["cost"] = {{ "i", TRIAL_OF_STYLE_TOKEN, 25 }},
					["timeline"] = { ADDED_10_2_6 },
				}),
				i(213430, {	-- Duelist's Midnight Doublet
					["cost"] = {{ "i", TRIAL_OF_STYLE_TOKEN, 25 }},
					["timeline"] = { ADDED_10_2_6 },
				}),
				i(213431, {	-- Duelist's Navy Doublet
					["cost"] = {{ "i", TRIAL_OF_STYLE_TOKEN, 25 }},
					["timeline"] = { ADDED_10_2_6 },
				}),
				i(213434, {	-- Duelist's Royal Doublet
					["cost"] = {{ "i", TRIAL_OF_STYLE_TOKEN, 25 }},
					["timeline"] = { ADDED_10_2_6 },
				}),
				i(213441, {	-- Earth Mother's Sepia Gloves
					["cost"] = {{ "i", TRIAL_OF_STYLE_TOKEN, 25 }},
					["timeline"] = { ADDED_10_2_6 },
				}),
				i(210850, {	-- Trader's Sepia Sarong
					["cost"] = {{ "i", TRIAL_OF_STYLE_TOKEN, 25 }},
					["timeline"] = { ADDED_10_2_6 },
				}),
				---
				i(237243, {	-- Banded Aquatic War Legwraps
					["cost"] = {{ "i", TRIAL_OF_STYLE_TOKEN, 15 }},
					["timeline"] = { ADDED_11_1_0 },
				}),
				i(237254, {	-- Banded Azure War Legwraps
					["cost"] = {{ "i", TRIAL_OF_STYLE_TOKEN, 15 }},
					["timeline"] = { ADDED_11_1_0 },
				}),
				i(237250, {	-- Banded Brick War Legwraps
					["cost"] = {{ "i", TRIAL_OF_STYLE_TOKEN, 15 }},
					["timeline"] = { ADDED_11_1_0 },
				}),
				i(237251, {	-- Banded Camo War Legwraps
					["cost"] = {{ "i", TRIAL_OF_STYLE_TOKEN, 15 }},
					["timeline"] = { ADDED_11_1_0 },
				}),
				i(237247, {	-- Banded Carrot War Legwraps
					["cost"] = {{ "i", TRIAL_OF_STYLE_TOKEN, 15 }},
					["timeline"] = { ADDED_11_1_0 },
				}),
				i(237253, {	-- Banded Cloudy War Legwraps
					["cost"] = {{ "i", TRIAL_OF_STYLE_TOKEN, 15 }},
					["timeline"] = { ADDED_11_1_0 },
				}),
				i(237256, {	-- Banded Crimson War Legwraps
					["cost"] = {{ "i", TRIAL_OF_STYLE_TOKEN, 15 }},
					["timeline"] = { ADDED_11_1_0 },
				}),
				i(237252, {	-- Banded Deep War Legwraps
					["cost"] = {{ "i", TRIAL_OF_STYLE_TOKEN, 15 }},
					["timeline"] = { ADDED_11_1_0 },
				}),
				i(237248, {	-- Banded Faded War Legwraps
					["cost"] = {{ "i", TRIAL_OF_STYLE_TOKEN, 15 }},
					["timeline"] = { ADDED_11_1_0 },
				}),
				i(237257, {	-- Banded Grassy War Legwraps
					["cost"] = {{ "i", TRIAL_OF_STYLE_TOKEN, 15 }},
					["timeline"] = { ADDED_11_1_0 },
				}),
				i(237249, {	-- Banded Lively War Legwraps
					["cost"] = {{ "i", TRIAL_OF_STYLE_TOKEN, 15 }},
					["timeline"] = { ADDED_11_1_0 },
				}),
				i(237255, {	-- Banded Midnight War Legwraps
					["cost"] = {{ "i", TRIAL_OF_STYLE_TOKEN, 15 }},
					["timeline"] = { ADDED_11_1_0 },
				}),
				i(237245, {	-- Banded Plum War Legwraps
					["cost"] = {{ "i", TRIAL_OF_STYLE_TOKEN, 15 }},
					["timeline"] = { ADDED_11_1_0 },
				}),
				i(237246, {	-- Banded Rosy War Legwraps
					["cost"] = {{ "i", TRIAL_OF_STYLE_TOKEN, 15 }},
					["timeline"] = { ADDED_11_1_0 },
				}),
				i(237240, {	-- Banded Sepia War Legwraps
					["cost"] = {{ "i", TRIAL_OF_STYLE_TOKEN, 15 }},
					["timeline"] = { ADDED_11_1_0 },
				}),
				i(233171, {	-- Banded Sepia War Slippers
					["cost"] = {{ "i", TRIAL_OF_STYLE_TOKEN, 15 }},
					["timeline"] = { ADDED_11_1_0 },
				}),
				i(233154, {	-- Banded Sepia War Wraps
					["cost"] = {{ "i", TRIAL_OF_STYLE_TOKEN, 25 }},
					["timeline"] = { ADDED_11_1_0 },
				}),
				i(237242, {	-- Banded Snowy War Legwraps
					["cost"] = {{ "i", TRIAL_OF_STYLE_TOKEN, 15 }},
					["timeline"] = { ADDED_11_1_0 },
				}),
				i(237241, {	-- Banded Sunny War Legwraps
					["cost"] = {{ "i", TRIAL_OF_STYLE_TOKEN, 15 }},
					["timeline"] = { ADDED_11_1_0 },
				}),
				i(237244, {	-- Banded Violet War Legwraps
					["cost"] = {{ "i", TRIAL_OF_STYLE_TOKEN, 15 }},
					["timeline"] = { ADDED_11_1_0 },
				}),
				iensemble(230166, {	-- Ensemble: Prowler's Sepia Headgear
					["cost"] = {{ "i", TRIAL_OF_STYLE_TOKEN, 60 }},
					["timeline"] = { ADDED_11_1_0 },
				}),
				i(233098, {	-- Long Sepia War Skirt
					["cost"] = {{ "i", TRIAL_OF_STYLE_TOKEN, 25 }},
					["timeline"] = { ADDED_11_1_0 },
				}),
				i(233137, {	-- Long Sepia War Skirt and Leg Wraps
					["cost"] = {{ "i", TRIAL_OF_STYLE_TOKEN, 50 }},
					["timeline"] = { ADDED_11_1_0 },
				}),
				i(230035, {	-- Prowler's Sepia Shoulder Cape
					["cost"] = {{ "i", TRIAL_OF_STYLE_TOKEN, 25 }},
					["timeline"] = { ADDED_11_1_0 },
				}),
				i(233081, {	-- Short Sepia War Skirt
					["cost"] = {{ "i", TRIAL_OF_STYLE_TOKEN, 25 }},
					["timeline"] = { ADDED_11_1_0 },
				}),
				i(233120, {	-- Short Sepia War Skirt and Leg Wraps
					["cost"] = {{ "i", TRIAL_OF_STYLE_TOKEN, 50 }},
					["timeline"] = { ADDED_11_1_0 },
				}),
				i(235021, {	-- Vigilante's Sepia Mask
					["cost"] = {{ "i", TRIAL_OF_STYLE_TOKEN, 25 }},
					["timeline"] = { ADDED_11_1_0 },
				}),
			},
		}),
		n(QUESTS, bubbleDown({
			["timeline"] = { ADDED_10_1_5 },
			["isMonthly"] = true,
		}, {
			q(76308, {	-- The Trial of Style
				["description"] = "Blizzard messed up here, this should've been the second quest and not breadcrumb.",
				["providers"] = {
					{ "n", 206252 },	-- Primo
					{ "n", 206383 },	-- Don'a
					-- #if AFTER 11.1.0
					{ "n", 236405 },	-- Perfecto
					-- #endif
				},
				["coords"] = {
					{ 51.0, 72.5, STORMWIND_CITY },
					{ 49.0, 76.4, ORGRIMMAR },
					-- #if AFTER 11.1.0
					{ 45.7, 52.7, DORNOGAL },
					-- #endif
				},
				["isBreadcrumb"] = true,
			}),
			q(76361, {	-- Fashion Week
				["description"] = "Blizzard messed up here, this should've been the first quest and breadcrumb.",
				["sourceQuest"] = 76308,	-- The Trial of Style
				["qgs"] = {
					199261,	-- Holiday Enthusiast
					220307,	-- Holiday Enthusiast
				},
				["coords"] = {
					{ 31.5, 63.1, VALDRAKKEN },
					{ 46.0, 55.0, DORNOGAL },
				},
			}),
			q(76214, {	-- Work It
				["provider"] = { "n", 205914 },	-- Cataloger Alexia
				["coord"] = { 54.3, 59.9, VALDRAKKEN },
			}),
			q(76271, {	-- Work It
				["provider"] = { "n", 206188 },	-- Cataloger Ro
				["coord"] = { 14.3, 49.6, THE_AZURE_SPAN },
			}),
			q(76272, {	-- Work It
				["provider"] = { "n", 206192 },	-- Cataloger Silverstream
				["coord"] = { 47.7, 83.9, THE_WAKING_SHORES },
			}),
			q(76273, {	-- Work It
				["provider"] = { "n", 206193 },	-- Cataloger Sweetbreeze
				["coord"] = { 59.8, 37.9, OHNAHRAN_PLAINS },
			}),
			q(76274, {	-- Work It
				["provider"] = { "n", 206196 },	-- Cataloger Sprocketspark
				["coord"] = { 36.3, 57.6, THE_FORBIDDEN_REACH },
			}),
			q(76275, {	-- Work It
				["provider"] = { "n", 206198 },	-- Cataloger Fairshot
				["coord"] = { 56.8, 58.2, ZARALEK_CAVERN },
			}),
			q(76278, {	-- Work It
				["provider"] = { "n", 206200 },	-- Cataloger Wilson
				["coord"] = { 72.2, 56.0, THALDRASZUS },
			}),
			q(76284, {	-- Work It
				["provider"] = { "n", 206201 },	-- Cataloger Ryler
				["coord"] = { 57.5, 15.3, THE_AZURE_SPAN },
			}),
			q(76285, {	-- Work It
				["provider"] = { "n", 206202 },	-- Cataloger Berulean
				["coord"] = { 58.0, 68.5, THE_WAKING_SHORES },
			}),
			q(76286, {	-- Work It
				["provider"] = { "n", 206204 },	-- Cataloger Grazewell
				["coord"] = { 29.6, 55.8, OHNAHRAN_PLAINS },
			}),
			q(76287, {	-- Work It
				["provider"] = { "n", 206205 },	-- Cataloger Sparkyboom
				["coord"] = { 63.4, 51.3, THE_FORBIDDEN_REACH },
			}),
			q(76288, {	-- Work It
				["provider"] = { "n", 206206 },	-- Cataloger Sandia
				["coord"] = { 50.7, 24.9, ZARALEK_CAVERN },
			}),
			q(86698, {	-- Work It
				["provider"] = { "n", 236334 },	-- Cataloger Ironshot
				["coord"] = { 45.9, 54.8, DORNOGAL },
				["timeline"] = { ADDED_11_1_0 },
			}),
			q(86704, {	-- Work It
				["provider"] = { "n", 236365 },	-- Cataloger Moonsage
				["coord"] = { 56.7, 40.7, AZJ_KAHET },
				["timeline"] = { ADDED_11_1_0 },
			}),
			q(86705, {	-- Work It
				["provider"] = { "n", 236366 },	-- Cataloger Simone
				["coord"] = { 59.9, 18.6, HALLOWFALL },
				["timeline"] = { ADDED_11_1_0 },
			}),
			q(86703, {	-- Work It
				["provider"] = { "n", 236364 },	-- Cataloger Grilka
				["coord"] = { 61.3, 31.1, HALLOWFALL },
				["timeline"] = { ADDED_11_1_0 },
			}),
			q(86702, {	-- Work It
				["provider"] = { "n", 236362 },	-- Cataloger Elaine
				["coord"] = { 42.7, 54.6, HALLOWFALL },
				["timeline"] = { ADDED_11_1_0 },
			}),
			q(86699, {	-- Work It
				["provider"] = { "n", 236356 },	-- Cataloger Sunshot
				["coord"] = { 56.5, 51.5, ISLE_OF_DORN },
				["timeline"] = { ADDED_11_1_0 },
			}),
			q(86700, {	-- Work It
				["provider"] = { "n", 236359 },	-- Cataloger Judith
				["coord"] = { 43.0, 33.2, THE_RINGING_DEEPS },
				["timeline"] = { ADDED_11_1_0 },
			}),
			q(86701, {	-- Work It
				["provider"] = { "n", 236361 },	-- Cataloger Shotfrenzy
				["coord"] = { 58.8, 78.9, THE_RINGING_DEEPS },
				["timeline"] = { ADDED_11_1_0 },
			}),
		})),
	},
}))));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.BFA, bubbleDownSelf({ ["timeline"] = { ADDED_8_0_1 } }, {
	applyevent(EVENTS.TRIAL_OF_STYLE, n(TRIAL_OF_STYLE_HEADER, {
		q(53613),	-- Trial of Style: Using a Letter from an Admirer the 1st time
		q(53614),	-- Trial of Style: Using a Letter from an Admirer the 2nd time
		q(53615),	-- Trial of Style: Using a Letter from an Admirer the 3rd time
	})),
})));
