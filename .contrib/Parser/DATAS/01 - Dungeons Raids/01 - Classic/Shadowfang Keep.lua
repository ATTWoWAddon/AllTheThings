-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

root(ROOTS.Instances, expansion(EXPANSION.CLASSIC, {
	inst(64, {	-- Shadowfang Keep
		-- #if BEFORE MOP
		["lore"] = "During the Third War, the wizards of the Kirin Tor battled against the undead armies of the Scourge. When the wizards of Dalaran died in battle, they would rise soon after - adding their former might to the growing Scourge. Frustrated by their lack of progress (and against the advice of his peers) the Archmage, Arugal elected to summon extra-dimensional entities to bolster Dalaran's diminishing ranks. Arugal's summoning brought the ravenous worgen into the world of Azeroth. The feral wolf-men slaughtered not only the Scourge, but quickly turned on the wizards themselves. The worgen sieged the keep of the noble, Baron Silverlaine. Situated above the tiny hamlet of Pyrewood, the keep quickly fell into shadow and ruin. Driven mad with guilt, Arugal adopted the worgen as his children and retreated to the newly dubbed 'Shadowfang Keep'. It's said he still resides there, protected by his massive pet, Fenrus - and haunted by the vengeful ghost of Baron Silverlaine.",
		-- #endif
		["zone-text-areaID"] = 209,	-- Shadowfang Keep
		["coords"] = {
			-- #if AFTER CATA
			{ 44.79, 67.82, SILVERPINE_FOREST },
			-- #else
			{ 36.6, 65.6, SILVERPINE_FOREST },
			-- #endif
		},
		["maps"] = {
			SHADOWFANG_KEEP,
			SHADOWFANG_KEEP_LEVEL2,
			SHADOWFANG_KEEP_LEVEL3,
			SHADOWFANG_KEEP_LEVEL4,
			SHADOWFANG_KEEP_LEVEL5,
			SHADOWFANG_KEEP_LEVEL6,
			SHADOWFANG_KEEP_LEVEL7
		},
		["lvl"] = lvlsquish(14, 14, 8),
		["groups"] = {
			-- #if SEASON_OF_DISCOVERY
			header(HEADERS.Spell, 921, {	-- Pickpocketing
				["description"] = "The Rare Creatures only spawn if a Rogue enters the instance alone while on the quest The Horn of Xelthos.",
				["classes"] = { ROGUE },
				["groups"] = {
					applyclassicphase(SOD_PHASE_ONE, i(210212, {	-- Brother's Half-Key
						["description"] = "Found shortly after Baron Silverlaine.\nHead up the stairs behind the boss, and take a right, Gefell should be in a room up the stairs around the corner.",
						["timeline"] = { REMOVED_2_0_1 },
						["classes"] = { ROGUE },
						["cr"] = 211764,	-- Gefell
					})),
					applyclassicphase(SOD_PHASE_ONE, i(210213, {	-- Sister's Half-Key
						["description"] = "Just after the Kitchen in Baron Silverlaine's room.",
						["timeline"] = { REMOVED_2_0_1 },
						["classes"] = { ROGUE },
						["cr"] = 211765,	-- Gemela
					})),
				},
			}),
			-- #endif
			n(QUESTS, {
				q(27355, {	-- A Boon for the Powerful
					["sourceQuest"] = 27272,	-- Demisette Sends Word [CATA] / A Message From Evelyn Thorn [SL+]
					["qgs"] = {
						-- #if AFTER SL
						164942,	-- Evelyn Thorn
						-- #else
						461,	-- Demisette Cloyce
						-- #endif
					},
					["coords"] = {
						-- #if AFTER SL
						{ 79.5, 69.9, STORMWIND_CITY },
						-- #else
						{ 39.4, 84.8, STORMWIND_CITY },
						-- #endif
					},
					["timeline"] = { ADDED_4_0_3 },
					["classes"] = { WARLOCK },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(20, 20, 8),
					["groups"] = {
						objective(1, {	-- 0/1 Tenebrous Orb
							["provider"] = { "i", 60882 },	-- Tenebrous Orb
						}),
						objective(2, {	-- 0/1 Book of Lost Souls
							["provider"] = { "i", 60873 },	-- Book of Lost Souls
						}),
						objective(3, {	-- 0/5 Ghostly Essence
							["provider"] = { "i", 60875 },	-- Ghostly Essence
						}),
						i(65496),	-- Staff of Justified Sins
					},
				}),
				q(27363, {	-- A Budding Young Surgeon [Gnome]
					["sourceQuest"] = 27274,	-- The Chief Surgeon [CATA] / Patrice Lancaster Sends Word [Gnome] [SL+]
					["qg"] = 45306,	-- Chief Surgeon Gashweld
					["coord"] = { 63.0, 34.2, STORMWIND_CITY },
					["timeline"] = { ADDED_4_0_3 },
					["classes"] = { PRIEST },
					["races"] = { GNOME },
					["lvl"] = lvlsquish(20, 20, 8),
					["groups"] = {
						objective(1, {	-- 0/1 Commander's Holy Symbol
							["provider"] = { "i", 60879 },	-- Commander's Holy Symbol
						}),
						objective(2, {	-- 0/5 Moontouched Wood
							["provider"] = { "i", 60871 },	-- Moontouched Wood
						}),
						objective(3, {	-- 0/5 Ghostly Essence
							["provider"] = { "i", 60875 },	-- Ghostly Essence
						}),
						i(65480),	-- Staff of the Technocrat
					},
				}),
				q(27337, {	-- A Fitting Weapon [Alliance]
					["sourceQuest"] = 27225,	-- A Summons from Ander Germaine
					["qgs"] = {
						-- #if BEFORE SL
						914,	-- Ander Germaine
						-- #else
						164939,	-- Signilda Hardforge <Warrior Trainer>
						-- #endif
					},
					["coords"] = {
						-- #if AFTER SL
						{ 80.3, 70.4, STORMWIND_CITY },
						-- #else
						{ 79.4, 69.0, STORMWIND_CITY },
						-- #endif
					},
					["timeline"] = { ADDED_4_0_3 },
					["classes"] = { WARRIOR },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(20, 20, 8),
					["groups"] = {
						objective(1, {	-- 0/1 Silverlaine Family Sword
							["provider"] = { "i", 60885 },	-- Silverlaine Family Sword
						}),
						objective(2, {	-- 0/5 Moonsteel Ingots
							["provider"] = { "i", 60872 },	-- Moonsteel Ingots
						}),
						objective(3, {	-- 0/5 Deathless Sinew
							["provider"] = { "i", 60874 },	-- Deathless Sinew
						}),
						i(65492),	-- Broadsword of the Crown
						i(65493),	-- Greatsword of the Crown
					},
				}),
				q(27365, {	-- A Fitting Weapon [Horde]
					["sourceQuest"] = 27281,	-- Grezz Ragefist [CATA] / Gormok Ogrefist [SL+]
					["qgs"] = {
						-- #if AFTER SL
						168596,	-- Gormok Ogrefist
						-- #else
						3353,	-- Grezz Ragefist
						-- #endif
					},
					["coords"] = {
						-- #if AFTER SL
						{ 73.6, 45.6, ORGRIMMAR },
						-- #else
						{ 73.8, 45.6, ORGRIMMAR },
						-- #endif
					},
					["timeline"] = { ADDED_4_0_3 },
					["classes"] = { WARRIOR },
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(20, 20, 8),
					["groups"] = {
						objective(1, {	-- 0/1 Silverlaine Family Sword
							["provider"] = { "i", 60885 },	-- Silverlaine Family Sword
						}),
						objective(2, {	-- 0/5 Moonsteel Ingots
							["provider"] = { "i", 60872 },	-- Moonsteel Ingots
						}),
						objective(3, {	-- 0/5 Deathless Sinew
							["provider"] = { "i", 60874 },	-- Deathless Sinew
						}),
						i(65494),	-- Broadaxe of the Horde
						i(65495),	-- Greataxe of the Horde
					},
				}),
				q(27283, {	-- A Journey to Moonglade
					["qgs"] = {
						44726,	-- Shalla Whiteleaf
						44978,	-- Sesebi
						3034,	-- Sheal Runetotem
						52319,	-- Mala Skywatcher
					},
					["coords"] = {
						{ 44.8, 51.6, ORGRIMMAR },	-- Shalla Whiteleaf
						{ 35.0, 67.6, ORGRIMMAR },	-- Sesebi
						{ 77.0, 27.4, THUNDER_BLUFF },	-- Sheal Runetotem
						{ 55.0, 50.4, UNDERCITY },	-- Mala Skywatcher
					},
					["timeline"] = { ADDED_4_0_3 },
					["classes"] = { DRUID },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = lvlsquish(8, 20, 8),
				}),
				q(27395, {	-- A Marksman's Weapon
					["sourceQuest"] = 27278,	-- Grimshot's Call [CATA] / Tamanji's Call [SL+]
					["qgs"] = {
						-- #if AFTER SL
						168551,	-- Tamanji <Hunter Trainer>
						-- #else
						3352,	-- Ormak Grimshot
						-- #endif
					},
					["coords"] = {
						-- #if AFTER SL
						{ 73.8, 43.8, ORGRIMMAR },
						-- #else
						{ 63.8, 32.8, ORGRIMMAR },
						-- #endif
					},
					["timeline"] = { ADDED_4_0_3 },
					["classes"] = { HUNTER },
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(20, 20, 8),
					["groups"] = {
						objective(1, {	-- 0/1 Godfrey's Crystal Scope
							["provider"] = { "i", 60877 },	-- Godfrey's Crystal Scope
						}),
						objective(2, {	-- 0/5 Moontouched Wood
							["provider"] = { "i", 60871 },	-- Moontouched Wood
						}),
						objective(3, {	-- 0/5 Deathless Sinew
							["provider"] = { "i", 60874 },	-- Deathless Sinew
						}),
						i(65466),	-- Bow of the Great Hunter
					},
				}),
				-- #if AFTER SL
				q(27272, {	-- A Message From Evelyn Thorn [SL+] / Demisette Sends Word [CATA]
					["qg"] = 5173,	-- Alexander Calder
					["coord"] = { 50.2, 6.8, IRONFORGE },
					["timeline"] = { ADDED_4_0_3 },
					["classes"] = { WARLOCK },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = lvlsquish(20, 20, 8),
				}),
				-- #endif
				q(27351, {	-- A Royal Reward
					["sourceQuest"] = 27267,	-- Make Contact with SI:7
					["qgs"] = {
						-- #if AFTER SL
						164946,	-- Veruca Darkstream <Rogue Trainer>
						-- #else
						51998,	-- Arthur Huwe
						13283,	-- Lord Tony Romano
						-- #endif
					},
					["coords"] = {
						-- #if AFTER SL
						{ 78.6, 70.6, STORMWIND_CITY },	-- Veruca Darkstream <Rogue Trainer>
						-- #else
						{ 79.6, 61.2, STORMWIND_CITY },	-- Arthur Huwe
						{ 79.6, 60.8, STORMWIND_CITY },	-- Lord Tony Romano
						-- #endif
					},
					["timeline"] = { ADDED_4_0_3 },
					["classes"] = { ROGUE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(20, 20, 8),
					["groups"] = {
						objective(1, {	-- 0/1 Springvale's Sharpening Stone
							["provider"] = { "i", 60880 },	-- Springvale's Sharpening Stone
						}),
						objective(2, {	-- 0/5 Moonsteel Ingots
							["provider"] = { "i", 60872 },	-- Moonsteel Ingots
						}),
						objective(3, {	-- 0/5 Deathless Sinew
							["provider"] = { "i", 60874 },	-- Deathless Sinew
						}),
						i(65486),	-- SI:7 Special Issue Dagger
					},
				}),
				q(27441, {	-- A Seer's Staff [Goblin]
					["sourceQuest"] = 28164,	-- Seek Brother Silverhallow [CATA] / Journey to Orgrimmar [Goblin] [SL+]
					["qgs"] = {
						-- #if AFTER SL
						168621,	-- Martin Goodchilde <Priest Trainer>
						-- #else
						45347,	-- Brother Silverhallow
						-- #endif
					},
					["coords"] = {
						-- #if AFTER SL
						{ 72.6, 46.6, ORGRIMMAR },
						-- #else
						{ 37.8, 87.4, ORGRIMMAR },
						-- #endif
					},
					["timeline"] = { ADDED_4_0_3 },
					["classes"] = { PRIEST },
					["races"] = { GOBLIN },
					["lvl"] = lvlsquish(20, 20, 8),
					["groups"] = {
						objective(1, {	-- 0/1 Commander's Holy Symbol
							["provider"] = { "i", 60879 },	-- Commander's Holy Symbol
						}),
						objective(2, {	-- 0/5 Moontouched Wood
							["provider"] = { "i", 60871 },	-- Moontouched Wood
						}),
						objective(3, {	-- 0/5 Ghostly Essence
							["provider"] = { "i", 60875 },	-- Ghostly Essence
						}),
						i(65481),	-- Staff of Golden Worship
					},
				}),
				q(27435, {	-- A Seer's Staff [Tauren]
					["sourceQuest"] = 27331,	-- The Seer's Call [CATA] / Journey to Orgrimmar [Tauren] [SL+]
					["qgs"] = {
						-- #if AFTER SL
						168621,	-- Martin Goodchilde <Priest Trainer>
						-- #else
						44735,	-- Seer Liwatha
						-- #endif
					},
					["coords"] = {
						-- #if AFTER SL
						{ 72.6, 46.6, ORGRIMMAR },
						-- #else
						{ 45.4, 53.4, ORGRIMMAR },
						-- #endif
					},
					["timeline"] = { ADDED_4_0_3 },
					["classes"] = { PRIEST },
					["races"] = { TAUREN },
					["lvl"] = lvlsquish(20, 20, 8),
					["groups"] = {
						objective(1, {	-- 0/1 Commander's Holy Symbol
							["provider"] = { "i", 60879 },	-- Commander's Holy Symbol
						}),
						objective(2, {	-- 0/5 Moontouched Wood
							["provider"] = { "i", 60871 },	-- Moontouched Wood
						}),
						objective(3, {	-- 0/5 Ghostly Essence
							["provider"] = { "i", 60875 },	-- Ghostly Essence
						}),
						i(65484),	-- Staff of the Earthmother
					},
				}),
				-- #if AFTER SL
				q(27436, {	-- A Seer's Staff [Troll] [SL+] / The Shadow-Walker's Task [CATA]
					["sourceQuest"] = 27332,	-- Seek the Shadow-Walker [CATA] / Journey to Orgrimmar [Undead] [SL+]
					["qg"] = 168621,	-- Martin Goodchilde <Priest Trainer>
					["coord"] = { 72.6, 46.6, ORGRIMMAR },
					["timeline"] = { ADDED_4_0_3 },
					["classes"] = { PRIEST },
					["races"] = { TROLL },
					["lvl"] = lvlsquish(20, 20, 8),
					["groups"] = {
						objective(1, {	-- 0/1 Commander's Holy Symbol
							["provider"] = { "i", 60879 },	-- Commander's Holy Symbol
						}),
						objective(2, {	-- 0/5 Moontouched Wood
							["provider"] = { "i", 60871 },	-- Moontouched Wood
						}),
						objective(3, {	-- 0/5 Ghostly Essence
							["provider"] = { "i", 60875 },	-- Ghostly Essence
						}),
						i(65485),	-- Shadow-Walker Staff
					},
				}),
				-- #endif
				q(27225, {	-- A Summons from Ander Germaine
					["qgs"] = {
						4087,	-- Arias'ta Bladesinger
						17120,	-- Behomat
					},
					["coords"] = {
						{ 56.4, 46.2, DARNASSUS },	-- Arias'ta Bladesinger
						{ 56.4, 46.2, THE_EXODAR },	-- Behomat
					},
					["timeline"] = { ADDED_4_0_3 },
					["maps"] = { STORMWIND_CITY },
					["classes"] = { WARRIOR },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = lvlsquish(20, 20, 8),
				}),
				q(27403, {	-- A True Sunwalker
					["sourceQuest"] = 27304,	-- Follow the Sun [CATA] / Meet with Avaros Dawnglaive [Tauren] [SL+]
					["qg"] = 44725,	-- Sunwalker Atohmo
					["coord"] = { 45.2, 53.6, ORGRIMMAR },
					["timeline"] = { ADDED_4_0_3 },
					["classes"] = { PALADIN },
					["races"] = { TAUREN },
					["lvl"] = lvlsquish(20, 20, 8),
					["groups"] = {
						objective(1, {	-- 0/1 Commander's Holy Symbol
							["provider"] = { "i", 60879 },	-- Commander's Holy Symbol
						}),
						objective(2, {	-- 0/5 Moonsteel Ingots
							["provider"] = { "i", 60872 },	-- Moonsteel Ingots
						}),
						objective(3, {	-- 0/5 Deathless Sinew
							["provider"] = { "i", 60874 },	-- Deathless Sinew
						}),
						i(65472),	-- Mace of the Sunwalker
						i(65473),	-- Battlehammer of the Sunwalker
						i(65474),	-- Greatsword of the Sunwalker
					},
				}),
				q(27344, {	-- A Well-Earned Reward
					["sourceQuest"] = 27266,	-- Wulf Calls [CATA] / Dalgrun Calls [SL+]
					["qgs"] = {
						-- #if AFTER SL
						164960,	-- Dalgrun Steelpine <Hunter Trainer>
						-- #else
						44247,	-- Wulf Hansreim
						-- #endif
					},
					["coords"] = {
						-- #if AFTER SL
						{ 79.2, 71.2, STORMWIND_CITY },
						-- #else
						{ 79.0, 71.0, STORMWIND_CITY },
						-- #endif
					},
					["timeline"] = { ADDED_4_0_3 },
					["classes"] = { HUNTER },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(8, 20, 8),
					["groups"] = {
						objective(1, {	-- 0/1 Godfrey's Crystal Scope
							["provider"] = { "i", 60877 },	-- Godfrey's Crystal Scope
						}),
						objective(2, {	-- 0/5 Moontouched Wood
							["provider"] = { "i", 60871 },	-- Moontouched Wood
						}),
						objective(3, {	-- 0/5 Deathless Sinew
							["provider"] = { "i", 60874 },	-- Deathless Sinew
						}),
						i(65465),	-- Crossbow of the Crown
					},
				}),
				q(27270, {	-- An Audience with the Farseer [CATA] / An Audience with Mulric [SL+]
					["qgs"] = {
						52292,	-- Droha
						23127,	-- Farseer Javad
					},
					["coords"] = {
						{ 43.8, 78.8, DARNASSUS },
						{ 55.0, 30.2, IRONFORGE },
					},
					["timeline"] = { ADDED_4_0_3 },
					["classes"] = { SHAMAN },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = lvlsquish(20, 20, 8),
				}),
				q(27273, {	-- An Invitation from Moonglade
					["qgs"] = {
						16721,	-- Shalannius
						4217,	-- Mathrengyl Bearwalker
						5504,	-- Sheldras Moontree (Stormwind)
						44395,	-- Celestine of the Harvest (Stormwind)
					},
					["coords"] = {
						{ 24.4, 54.4, AZUREMYST_ISLE },	-- Shalannius
						{ 40.4, 27.6, DARNASSUS },	-- Mathrengyl Bearwalker
						{ 27.6, 50.0, STORMWIND_CITY },	-- Sheldras Moontree
						{ 57.6, 24.8, STORMWIND_CITY },	-- Celestine of the Harvest
					},
					["timeline"] = { ADDED_4_0_3 },
					["classes"] = { DRUID },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = lvlsquish(8, 20, 8),
				}),
				q(27920, {	-- Armored to the Teeth
					["sourceQuest"] = 27917,	-- Sniffing Them Out
					["qg"] = 47006,	-- Packleader Ivar Bloodfang
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(16, 16, 8),
					["groups"] = {
						objective(1, {	-- 0/1 Baron Silverlaine slain
							["provider"] = { "n", 3887 },	-- Baron Silverlaine
						}),
						objective(2, {	-- 0/1 Commander Springvale slain
							["provider"] = { "n", 4278 },	-- Commander Springvale
						}),
					},
				}),
				q(1014, {	-- Arugal Must Die
					["qg"] = 1938,	-- Dalar Dawnweaver
					["coord"] = { 44.2, 39.8, SILVERPINE_FOREST },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 18,
					["groups"] = {
						objective(1, {	-- 0/1 Head of Arugal
							["provider"] = { "i", 5442 },	-- Head of Arugal
						}),
						i(6414, {	-- Seal of Sylvanas
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(27396, {	-- Blade of the Shattered Hand
					["sourceQuest"] = 27279,	-- The Shattered Hand
					["qgs"] = {
						-- #if AFTER SL
						168598,	-- Thega Graveblade <Rogue Trainer>
						-- #else
						47233,	-- Gordul
						-- #endif
					},
					["coords"] = {
						-- #if AFTER SL
						{ 75.4, 47.4, ORGRIMMAR },
						-- #else
						{ 32.9, 65.8, ORGRIMMAR },
						-- #endif
					},
					["timeline"] = { ADDED_4_0_3 },
					["classes"] = { ROGUE },
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(20, 20, 8),
					["groups"] = {
						objective(1, {	-- 0/1 Springvale's Sharpening Stone
							["provider"] = { "i", 60880 },	-- Springvale's Sharpening Stone
						}),
						objective(2, {	-- 0/5 Moonsteel Ingots
							["provider"] = { "i", 60872 },	-- Moonsteel Ingots
						}),
						objective(3, {	-- 0/5 Deathless Sinew
							["provider"] = { "i", 60874 },	-- Deathless Sinew
						}),
						i(65487),	-- Blade of the Shattered Hand
					},
				}),
				q(27353, {	-- Blessings of the Elements
					["sourceQuest"] = 27270,	-- An Audience with the Farseer [CATA] / An Audience with Mulric [SL+]
					["qgs"] = {
						-- #if AFTER SL
						164945,	-- Mulric Boldrock
						-- #else
						20407,	-- Farseer Umbrua
						-- #endif
					},
					["coords"] = {
						-- #if AFTER SL
						{ 78.2, 70.9, STORMWIND_CITY },
						-- #else
						{ 64.6, 33.0, STORMWIND_CITY },
						-- #endif
					},
					["timeline"] = { ADDED_4_0_3 },
					["classes"] = { SHAMAN },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(20, 20, 8),
					["groups"] = {
						objective(1, {	-- 0/1 Walden's Talisman
							["provider"] = { "i", 60881 },	-- Walden's Talisman
						}),
						objective(2, {	-- 0/1 Book of Lost Souls
							["provider"] = { "i", 60873 },	-- Book of Lost Souls
						}),
						objective(3, {	-- 0/5 Ghostly Essence
							["provider"] = { "i", 60875 },	-- Ghostly Essence
						}),
						i(65488),	-- Battleaxe of the Farseer
						i(65489),	-- Spell Axe of the Farseer
					},
				}),
				-- #if AFTER SL
				q(27266, {	-- Dalgrun Calls [SL+] / Wulf Calls [CATA]
					["qgs"] = {
						4138,	-- Jeen'ra Nightrunner
						5115,	-- Daera Brightspear
						17122,	-- Vord
					},
					["coords"] = {
						{ 43.4, 26.0, DARNASSUS },	-- Jeen'ra Nightrunner
						{ 70.9, 89.8, IRONFORGE },	-- Daera Brightspear
						{ 47.2, 88.4, THE_EXODAR },	-- Vord
					},
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { HUNTER },
					["isBreadcrumb"] = true,
					["lvl"] = lvlsquish(8, 20, 8),
				}),
				-- #endif
				-- #if BEFORE SL
				q(27334, {	-- Dark Cleric Cecille [CATA] / Journey to Orgrimmar [SL+]
					["qgs"] = {
						16658,	-- Aldrae <Priest Trainer>
						3045,	-- Malakai Cross <Priest Trainer>
						43870,	-- Seer Beryl <Priest Trainer>
						4606,	-- Aelthalyste <Priest Trainer>
					},
					["coords"] = {
						{ 53.2, 26.6, SILVERMOON_CITY },	-- Aldrae <Priest Trainer>
						{ 24.8, 22.4, THUNDER_BLUFF },	-- Malakai Cross <Priest Trainer>
						{ 75.4, 28.0, THUNDER_BLUFF },	-- Seer Beryl <Priest Trainer>
						{ 49.3, 17.1, UNDERCITY },	-- Aelthalyste <Priest Trainer>
					},
					["timeline"] = { ADDED_4_0_3 },
					["classes"] = { PRIEST },
					["races"] = { UNDEAD },
					["isBreadcrumb"] = true,
					["lvl"] = lvlsquish(20, 20, 8),
				}),
				-- #endif
				q(1098, {	-- Deathstalkers in Shadowfang
					["qg"] = 1952,	-- High Executor Hadrec
					["coord"] = { 43.4, 40.8, SILVERPINE_FOREST },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 18,
					["groups"] = {
						i(3324, {	-- Ghostly Mantle
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				-- #if BEFORE SL
				q(27272, {	-- Demisette Sends Word [CATA] / A Message From Evelyn Thorn [SL+]
					["qg"] = 5173,	-- Alexander Calder
					["coord"] = { 50.2, 6.8, IRONFORGE },
					["timeline"] = { ADDED_4_0_3 },
					["classes"] = { WARLOCK },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = lvlsquish(20, 20, 8),
				}),
				-- #endif
				-- #if BEFORE MOP
				q(27397, {	-- Dreamseeker's Task [CATA] / Terga's Task [MOP] / Hretar's Task [SL+]
					["sourceQuest"] = 27280,	-- The Dreamseeker Calls [CATA] / The Earthbreaker Calls [MOP] / The Riverspeaker Calls [SL+]
					["qgs"] = {
						-- #if AFTER SL
						168628,	-- Hretar Riverspeaker <Shaman Trainer>
						-- #elseif AFTER MOP
						72939,	-- Terga Earthbreaker
						-- #else
						3344,	-- Kardris Dreamseeker
						-- #endif
					},
					["coords"] = {
						-- #if AFTER SL
						{ 73.6, 43.4, ORGRIMMAR },
						-- #elseif AFTER MOP
						{ 39.0, 47.6, ORGRIMMAR },
						-- #else
						{ 39.0, 47.4, ORGRIMMAR },
						-- #endif
					},
					["timeline"] = { ADDED_4_0_3 },
					["classes"] = { SHAMAN },
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(20, 20, 8),
					["groups"] = {
						objective(1, {	-- 0/1 Walden's Talisman
							["provider"] = { "i", 60881 },	-- Walden's Talisman
						}),
						objective(2, {	-- 0/1 Book of Lost Souls
							["provider"] = { "i", 60873 },	-- Book of Lost Souls
						}),
						objective(3, {	-- 0/5 Ghostly Essence
							["provider"] = { "i", 60875 },	-- Ghostly Essence
						}),
						i(65490),	-- Battleaxe of the Speaker
						i(65491),	-- Spell Axe of the Speaker
					},
				}),
				-- #endif
				-- #if AFTER SL
				q(27265, {	-- Ezul'aan Calls [SL+] / Lord Grayson Shadowbreaker [CATA]
					["qgs"] = {
						16761,	-- Baatun
						35281,	-- Rukua
						5147,	-- Valgar Highforge
					},
					["coords"] = {
						{ 43.6, 78.4, THE_EXODAR },	-- Baatun
						{ 43.6, 78.4, DARNASSUS },	-- Rukua
						{ 23.6, 5.6, IRONFORGE },	-- Valgar Highforge
					},
					["timeline"] = { ADDED_4_0_3 },
					["classes"] = { PALADIN },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = lvlsquish(20, 20, 8),
				}),
				-- #endif
				q(27362, {	-- Favored of Elune
					["sourceQuest"] = 27269,	-- The Temple of the Moon
					["qg"] = 7999,	-- Tyrande Whisperwind
					["coord"] = { 43.0, 77.8, DARNASSUS },
					["timeline"] = { ADDED_4_0_3 },
					["classes"] = { PRIEST },
					["races"] = { NIGHTELF },
					["lvl"] = lvlsquish(20, 20, 8),
					["groups"] = {
						objective(1, {	-- 0/1 Commander's Holy Symbol
							["provider"] = { "i", 60879 },	-- Commander's Holy Symbol
						}),
						objective(2, {	-- 0/5 Moontouched Wood
							["provider"] = { "i", 60871 },	-- Moontouched Wood
						}),
						objective(3, {	-- 0/5 Ghostly Essence
							["provider"] = { "i", 60875 },	-- Ghostly Essence
						}),
						i(65483),	-- Moon Staff of Elune
					},
				}),
				q(27361, {	-- Favored of the Light
					["sourceQuest"] = 27268,	-- Make Haste to the Cathedral [CATA] / Patrice Lancaster Sends Word [All] [SL+]
					["qgs"] = {
						-- #if AFTER SL
						164949,	-- Patrice Lancaster
						-- #else
						376,	-- High Priestess Laurena
						-- #endif
					},
					["coords"] = {
						-- #if AFTER SL
						{ 79.0, 69.8, STORMWIND_CITY },
						-- #else
						{ 49.6, 44.8, STORMWIND_CITY },
						-- #endif
					},
					["timeline"] = { ADDED_4_0_3 },
					["classes"] = { PRIEST },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(20, 20, 8),
					["groups"] = {
						objective(1, {	-- 0/1 Commander's Holy Symbol
							["provider"] = { "i", 60879 },	-- Commander's Holy Symbol
						}),
						objective(2, {	-- 0/5 Moontouched Wood
							["provider"] = { "i", 60871 },	-- Moontouched Wood
						}),
						objective(3, {	-- 0/5 Ghostly Essence
							["provider"] = { "i", 60875 },	-- Ghostly Essence
						}),
						i(65482),	-- Staff of the Hallowed
					},
				}),
				q(27921, {	-- Fighting Tooth and Claw
					["sourceQuest"] = 27920,	-- Armored to the Teeth
					["qg"] = 47006,	-- Packleader Ivar Bloodfang
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(16, 16, 8),
					["groups"] = {
						objective(1, {	-- 0/1 Lord Walden slain
							["provider"] = { "n", 46963 },	-- Lord Walden
						}),
					},
				}),
				-- #if BEFORE SL
				q(27304, {	-- Follow the Sun [CATA] / Meet with Avaros Dawnglaive [Tauren] [SL+]
					["qgs"] = {
						43795,	-- Aponi Brightmane
						20406,	-- Champion Cyssa Dawnrose
					},
					["coords"] = {
						{ 63.2, 79.8, THUNDER_BLUFF },	-- Aponi Brightmane
						{ 57.8, 90.2, UNDERCITY },	-- Champion Cyssa Dawnrose
					},
					["timeline"] = { ADDED_4_0_3 },
					["classes"] = { PALADIN },
					["races"] = { TAUREN },
					["isBreadcrumb"] = true,
					["lvl"] = lvlsquish(20, 20, 8),
				}),
				-- #endif
				-- #if AFTER SL
				q(27437, {	-- Forsaken Faith [SL+] / The Dark Cleric's Bidding [CATA]
					["sourceQuest"] = 27334,	-- Dark Cleric Cecille [CATA] / Journey to Orgrimmar [SL+]
					["qg"] = 168621,	-- Martin Goodchilde <Priest Trainer>
					["coord"] = { 72.6, 46.6, ORGRIMMAR },
					["timeline"] = { ADDED_4_0_3 },
					["classes"] = { PRIEST },
					["races"] = { UNDEAD },
					["lvl"] = lvlsquish(20, 20, 8),
					["groups"] = {
						objective(1, {	-- 0/1 Commander's Holy Symbol
							["provider"] = { "i", 60879 },	-- Commander's Holy Symbol
						}),
						objective(2, {	-- 0/5 Moontouched Wood
							["provider"] = { "i", 60871 },	-- Moontouched Wood
						}),
						objective(3, {	-- 0/5 Ghostly Essence
							["provider"] = { "i", 60875 },	-- Ghostly Essence
						}),
						i(65479),	-- Staff of the Forsaken Faith
					},
				}),
				-- #endif
				q(27968, {	-- Fury of the Pack
					["sourceQuest"] = 27921,	-- Fighting Tooth and Claw
					["qg"] = 47006,	-- Packleader Ivar Bloodfang
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(16, 16, 8),
					["groups"] = {
						objective(1, {	-- 0/1 Lord Godfrey slain
							["provider"] = { "n", 46964 },	-- Lord Godfrey
						}),
						i(65984),	-- Breastplate of the Terrible Price
						i(66002),	-- Packleader's Pauldrons
						i(65960),	-- Shadowfang Shoulderpads
						i(65936),	-- Sandals of Sacrifice
						i(65910),	-- Godfrey's Britches
						i(131684, {	-- Packleader's Chain Spaulders
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(131685, {	-- Boots of Painful Cost
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_ONE, q(78261, {	-- The Horn of Xelthos (1/2)
					["providers"] = {
						{ "o", 410369 },	-- Dead Drop
						{ "i", 210186 },	-- Breaching Charge
					},
					["coord"] = { 47.1, 71.1, SILVERPINE_FOREST },
					["timeline"] = { REMOVED_2_0_1 },
					["classes"] = { ROGUE },
					["lvl"] = 20,
					["groups"] = {
						objective(1, {	-- 0/1 Horn of Xelthos
							["providers"] = {
								{ "i", 210183 },	-- Horn of Xelthos
								{ "o", 410528 },	-- Ornamented Chest
								{ "i", 210209 },	-- Twin Key
							},
							["description"] = "Once you've gotten both of the half keys from pick pocketing the npcs, combine them and bring the twin key to the ornamented chest in the stables.",
							["cost"] = {
								{ "i", 210212, 1 },	-- Brother's Half-Key
								{ "i", 210213, 1 },	-- Sister's Half-Key
							},
						}),
					},
				})),
				applyclassicphase(SOD_PHASE_ONE, q(78307, {	-- The Horn of Xelthos (2/2)
					["description"] = "15 minutes or so after you turn in the first part of the Horn of Xelthos, you'll receive another mail from C and be able to loot the rune from the dead drop outside of SFK.",
					["sourceQuest"] = 78261,	-- The Horn of Xelthos (1/2)
					["provider"] = { "o", 410369 },	-- Dead Drop
					["coord"] = { 47.1, 71.1, SILVERPINE_FOREST },
					["timeline"] = { REMOVED_2_0_1 },
					["classes"] = { ROGUE },
					["lvl"] = 20,
					["groups"] = {
						i(203994, {	-- Rune of Deadly Brew
							["classes"] = { ROGUE },
							["groups"] = {
								recipe(400080),	-- Engrave Chest - Deadly Brew
							},
						}),
					},
				})),
				-- #endif
				-- #if AFTER SL
				q(27281, {	-- Gormok Ogrefist [SL+] / Grezz Ragefist [CATA]
					["qgs"] = {
						43009,	-- Alsudar the Bastion <Warrior Trainer>
						3042,	-- Sark Ragetotem <Warrior Trainer>
						4593,	-- Christoph Walker <Warrior Trainer>
					},
					["coords"] = {
						{ 81.0, 37.8, SILVERMOON_CITY },	-- Alsudar the Bastion <Warrior Trainer>
						{ 57.2, 89.0, THUNDER_BLUFF },	-- Sark Ragetotem <Warrior Trainer>
						{ 47.2, 15.2, UNDERCITY },	-- Christoph Walker <Warrior Trainer>
					},
					["timeline"] = { ADDED_4_0_3 },
					["classes"] = { WARRIOR },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = lvlsquish(20, 20, 8),
				}),
				-- #endif
				-- #if BEFORE SL
				q(27281, {	-- Grezz Ragefist [CATA] / Gormok Ogrefist [SL+]
					["qgs"] = {
						43009,	-- Alsudar the Bastion <Warrior Trainer>
						3042,	-- Sark Ragetotem <Warrior Trainer>
						4593,	-- Christoph Walker <Warrior Trainer>
					},
					["coords"] = {
						{ 81.0, 37.8, SILVERMOON_CITY },	-- Alsudar the Bastion <Warrior Trainer>
						{ 57.2, 89.0, THUNDER_BLUFF },	-- Sark Ragetotem <Warrior Trainer>
						{ 47.2, 15.2, UNDERCITY },	-- Christoph Walker <Warrior Trainer>
					},
					["timeline"] = { ADDED_4_0_3 },
					["classes"] = { WARRIOR },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = lvlsquish(20, 20, 8),
				}),
				q(27278, {	-- Grimshot's Call [CATA] / Tamanji's Call [SL+]
					["qgs"] = {
						16674,	-- Zandine <Hunter Trainer>
						3039,	-- Holt Thunderhorn <Hunter Trainer>
						39116,	-- Apolos <Hunter Trainer>
					},
					["coords"] = {
						{ 84.4, 28.0, SILVERMOON_CITY },	-- Zandine <Hunter Trainer>
						{ 57.4, 89.2, THUNDER_BLUFF },	-- Holt Thunderhorn <Hunter Trainer>
						{ 49.6, 29.0, UNDERCITY },	-- Apolos <Hunter Trainer>
					},
					["timeline"] = { ADDED_4_0_3 },
					["classes"] = { HUNTER },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = lvlsquish(20, 20, 8),
				}),
				-- #endif
				-- #if AFTER SL
				q(27397, {	-- Hretar's Task [SL+] / Dreamseeker's Task [CATA] / Terga's Task [MOP]
					["sourceQuest"] = 27280,	-- The Dreamseeker Calls [CATA] / The Earthbreaker Calls [MOP] / The Riverspeaker Calls [SL+]
					["qgs"] = {
						-- #if AFTER SL
						168628,	-- Hretar Riverspeaker <Shaman Trainer>
						-- #elseif AFTER MOP
						72939,	-- Terga Earthbreaker
						-- #else
						3344,	-- Kardris Dreamseeker
						-- #endif
					},
					["coords"] = {
						-- #if AFTER SL
						{ 73.6, 43.4, ORGRIMMAR },
						-- #elseif AFTER MOP
						{ 39.0, 47.6, ORGRIMMAR },
						-- #else
						{ 39.0, 47.4, ORGRIMMAR },
						-- #endif
					},
					["timeline"] = { ADDED_4_0_3 },
					["classes"] = { SHAMAN },
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(20, 20, 8),
					["groups"] = {
						objective(1, {	-- 0/1 Walden's Talisman
							["provider"] = { "i", 60881 },	-- Walden's Talisman
						}),
						objective(2, {	-- 0/1 Book of Lost Souls
							["provider"] = { "i", 60873 },	-- Book of Lost Souls
						}),
						objective(3, {	-- 0/5 Ghostly Essence
							["provider"] = { "i", 60875 },	-- Ghostly Essence
						}),
						i(65490),	-- Battleaxe of the Speaker
						i(65491),	-- Spell Axe of the Speaker
					},
				}),
				-- #endif
				q(27335, {	-- Journey to Orgrimmar [Blood Elf]
					["qgs"] = {
						16658,	-- Aldrae <Priest Trainer>
						3045,	-- Malakai Cross <Priest Trainer>
						43870,	-- Seer Beryl <Priest Trainer>
						4606,	-- Aelthalyste <Priest Trainer>
					},
					["coords"] = {
						{ 53.2, 26.6, SILVERMOON_CITY },	-- Aldrae <Priest Trainer>
						{ 24.8, 22.4, THUNDER_BLUFF },	-- Malakai Cross <Priest Trainer>
						{ 75.4, 28.0, THUNDER_BLUFF },	-- Seer Beryl <Priest Trainer>
						{ 49.3, 17.1, UNDERCITY },	-- Aelthalyste <Priest Trainer>
					},
					["timeline"] = { ADDED_4_0_3 },
					["classes"] = { PRIEST },
					["races"] = { BLOODELF },
					["isBreadcrumb"] = true,
					["lvl"] = lvlsquish(20, 20, 8),
				}),
				-- #if AFTER SL
				q(28164, {	-- Journey to Orgrimmar [Goblin] [SL+] / Seek Brother Silverhallow [CATA]
					["qgs"] = {
						16658,	-- Aldrae <Priest Trainer>
						3045,	-- Malakai Cross <Priest Trainer>
						43870,	-- Seer Beryl <Priest Trainer>
						4606,	-- Aelthalyste <Priest Trainer>
					},
					["coords"] = {
						{ 53.2, 26.6, SILVERMOON_CITY },	-- Aldrae <Priest Trainer>
						{ 24.8, 22.4, THUNDER_BLUFF },	-- Malakai Cross <Priest Trainer>
						{ 75.4, 28.0, THUNDER_BLUFF },	-- Seer Beryl <Priest Trainer>
						{ 49.3, 17.1, UNDERCITY },	-- Aelthalyste <Priest Trainer>
					},
					["timeline"] = { ADDED_4_0_3 },
					["classes"] = { PRIEST },
					["races"] = { GOBLIN },
					["isBreadcrumb"] = true,
					["lvl"] = lvlsquish(20, 20, 8),
				}),
				q(27331, {	-- Journey to Orgrimmar [Tauren] [SL+] / The Seer's Call [CATA]
					["qgs"] = {
						16658,	-- Aldrae <Priest Trainer>
						3045,	-- Malakai Cross <Priest Trainer>
						43870,	-- Seer Beryl <Priest Trainer>
						4606,	-- Aelthalyste <Priest Trainer>
					},
					["coords"] = {
						{ 53.2, 26.6, SILVERMOON_CITY },	-- Aldrae <Priest Trainer>
						{ 24.8, 22.4, THUNDER_BLUFF },	-- Malakai Cross <Priest Trainer>
						{ 75.4, 28.0, THUNDER_BLUFF },	-- Seer Beryl <Priest Trainer>
						{ 49.3, 17.1, UNDERCITY },	-- Aelthalyste <Priest Trainer>
					},
					["timeline"] = { ADDED_4_0_3 },
					["classes"] = { PRIEST },
					["races"] = { TAUREN },
					["isBreadcrumb"] = true,
					["lvl"] = lvlsquish(20, 20, 8),
				}),
				q(27332, {	-- Journey to Orgrimmar [Troll] [SL+] / Seek the Shadow-Walker [CATA]
					["qgs"] = {
						16658,	-- Aldrae <Priest Trainer>
						3045,	-- Malakai Cross <Priest Trainer>
						43870,	-- Seer Beryl <Priest Trainer>
						4606,	-- Aelthalyste <Priest Trainer>
					},
					["coords"] = {
						{ 53.2, 26.6, SILVERMOON_CITY },	-- Aldrae <Priest Trainer>
						{ 24.8, 22.4, THUNDER_BLUFF },	-- Malakai Cross <Priest Trainer>
						{ 75.4, 28.0, THUNDER_BLUFF },	-- Seer Beryl <Priest Trainer>
						{ 49.3, 17.1, UNDERCITY },	-- Aelthalyste <Priest Trainer>
					},
					["timeline"] = { ADDED_4_0_3 },
					["classes"] = { PRIEST },
					["races"] = { TROLL },
					["isBreadcrumb"] = true,
					["lvl"] = lvlsquish(20, 20, 8),
				}),
				q(27334, {	-- Journey to Orgrimmar [Undead] [SL+] / Dark Cleric Cecille [CATA]
					["qgs"] = {
						16658,	-- Aldrae <Priest Trainer>
						3045,	-- Malakai Cross <Priest Trainer>
						43870,	-- Seer Beryl <Priest Trainer>
						4606,	-- Aelthalyste <Priest Trainer>
					},
					["coords"] = {
						{ 53.2, 26.6, SILVERMOON_CITY },	-- Aldrae <Priest Trainer>
						{ 24.8, 22.4, THUNDER_BLUFF },	-- Malakai Cross <Priest Trainer>
						{ 75.4, 28.0, THUNDER_BLUFF },	-- Seer Beryl <Priest Trainer>
						{ 49.3, 17.1, UNDERCITY },	-- Aelthalyste <Priest Trainer>
					},
					["timeline"] = { ADDED_4_0_3 },
					["classes"] = { PRIEST },
					["races"] = { UNDEAD },
					["isBreadcrumb"] = true,
					["lvl"] = lvlsquish(20, 20, 8),
				}),
				q(27282, {	-- Kazak's Behest [SL+] / Zevrost's Behest [CATA] / Kranosh's Behest [WOD]
					["qgs"] = {
						43881,	-- Delano Morisett <Warlock Trainer>
						4563,	-- Kaal Soulreaper <Warlock Trainer>
						16648,	-- Zanien (Silvermoon <Warlock Trainer>
					},
					["coords"] = {
						{ 25.2, 14.4, THUNDER_BLUFF },		-- Delano Morisett <Warlock Trainer>
						{ 86.0, 15.6, UNDERCITY },		-- Kaal Soulreaper <Warlock Trainer>
						{ 73.2, 45.2, SILVERMOON_CITY },	-- Zanien <Warlock Trainer>
					},
					["timeline"] = { ADDED_4_0_3 },
					["classes"] = { WARLOCK },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = lvlsquish(8, 20, 8),
				}),
				-- #elseif AFTER WOD
				q(27282, {	-- Kranosh's Behest [WOD] / Zevrost's Behest [CATA] / Kazak's Behest [SL+]
					["qgs"] = {
						43881,	-- Delano Morisett <Warlock Trainer>
						4563,	-- Kaal Soulreaper <Warlock Trainer>
						16648,	-- Zanien (Silvermoon <Warlock Trainer>
					},
					["coords"] = {
						{ 25.2, 14.4, THUNDER_BLUFF },		-- Delano Morisett <Warlock Trainer>
						{ 86.0, 15.6, UNDERCITY },		-- Kaal Soulreaper <Warlock Trainer>
						{ 73.2, 45.2, SILVERMOON_CITY },	-- Zanien <Warlock Trainer>
					},
					["timeline"] = { ADDED_4_0_3 },
					["classes"] = { WARLOCK },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = lvlsquish(8, 20, 8),
				}),
				-- #endif
				-- #if BEFORE SL
				q(27265, {	-- Lord Grayson Shadowbreaker [CATA] / Ezul'aan Calls [SL+]
					["qgs"] = {
						16761,	-- Baatun
						35281,	-- Rukua
						5147,	-- Valgar Highforge
					},
					["coords"] = {
						{ 43.6, 78.4, THE_EXODAR },	-- Baatun
						{ 43.6, 78.4, DARNASSUS },	-- Rukua
						{ 23.6, 5.6, IRONFORGE },	-- Valgar Highforge
					},
					["timeline"] = { ADDED_4_0_3 },
					["classes"] = { PALADIN },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = lvlsquish(20, 20, 8),
				}),
				-- #endif
				q(27267, {	-- Make Contact with SI:7
					["qgs"] = {
						4214,	-- Erion Shadewhisper
						5165,	-- Hulfdan Blackbeard
					},
					["coords"] = {
						{ 40.0, 39.6, DARNASSUS },	-- Erion Shadewhisper
						{ 51.6, 14.6, IRONFORGE },	-- Hulfdan Blackbeard
					},
					["timeline"] = { ADDED_4_0_3 },
					["classes"] = { ROGUE },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = lvlsquish(20, 20, 8),
				}),
				-- #if BEFORE SL
				q(27268, {	-- Make Haste to the Cathedral [CATA] / Patrice Lancaster Sends Word [SL+]
					["qgs"] = {
						16756,	-- Caedmos
						11401,	-- Priestess Alathea
						11406,	-- High Priest Rohan
					},
					["coords"] = {
						{ 38.5, 50.9, THE_EXODAR },	-- Caedmos
						{ 43.4, 79.2, DARNASSUS },	-- Priestess Alathea
						{ 25.0, 8.2, IRONFORGE },	-- High Priest Rohan
					},
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { PRIEST },
					["isBreadcrumb"] = true,
					["lvl"] = lvlsquish(20, 20, 8),
				}),
				-- #endif
				q(27354, {	-- Mastering the Arcane [Alliance]
					["sourceQuest"] = 27271,	-- Journey to the Wizard's Sanctum
					["qgs"] = {
						-- #if BEFORE SL
						331,	-- Maginor Dumas
						-- #else
						164955,	-- Frazzle Frostfingers
						-- #endif
					},
					["coords"] = {
						-- #if AFTER SL
						{ 80.0, 69.6, STORMWIND_CITY },
						-- #else
						{ 49.2, 87.6, STORMWIND_CITY },
						-- #endif
					},
					["timeline"] = { ADDED_4_0_3 },
					["classes"] = { MAGE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(20, 20, 8),
					["groups"] = {
						objective(1, {	-- 0/1 Silverlaine's Enchanted Crystal
							["provider"] = { "i", 60878 },	-- Silverlaine's Enchanted Crystal
						}),
						objective(2, {	-- 0/5 Moontouched Wood
							["provider"] = { "i", 60871 },	-- Moontouched Wood
						}),
						objective(3, {	-- 0/5 Ghostly Essence
							["provider"] = { "i", 60875 },	-- Ghostly Essence
						}),
						i(65467),	-- Staff of the Royal Wizard
					},
				}),
				q(27400, {	-- Mastering the Arcane [Horde]
					["sourceQuest"] = 27277,	-- An Audience with Ureda [CATA] / An Audience with Feenix Arcshine [SL+]
					["qgs"] = {
						-- #if AFTER SL
						168626,	-- Feenix Arcshine
						-- #else
						47246,	-- Ureda
						-- #endif
					},
					["coords"] = {
						-- #if AFTER SL
						{ 74.6, 43.5, ORGRIMMAR },	-- Feenix Arcshine
						-- #else
						{ 48.4, 62.6, ORGRIMMAR },	-- Ureda
						-- #endif
					},
					["timeline"] = { ADDED_4_0_3 },
					["classes"] = { MAGE },
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(20, 20, 8),
					["groups"] = {
						objective(1, {	-- 0/1 Silverlaine's Enchanted Crystal
							["provider"] = { "i", 60878 },	-- Silverlaine's Enchanted Crystal
						}),
						objective(2, {	-- 0/5 Moontouched Wood
							["provider"] = { "i", 60871 },	-- Moontouched Wood
						}),
						objective(3, {	-- 0/5 Ghostly Essence
							["provider"] = { "i", 60875 },	-- Ghostly Essence
						}),
						i(65468),	-- Staff of the Arcane Path
					},
				}),
				-- #if AFTER SL
				q(27304, {	-- Meet with Avaros Dawnglaive [Tauren] [SL+] / Follow the Sun [CATA]
					["qgs"] = {
						43795,	-- Aponi Brightmane
						20406,	-- Champion Cyssa Dawnrose
					},
					["coords"] = {
						{ 63.2, 79.8, THUNDER_BLUFF },	-- Aponi Brightmane
						{ 57.8, 90.2, UNDERCITY },	-- Champion Cyssa Dawnrose
					},
					["timeline"] = { ADDED_4_0_3 },
					["classes"] = { PALADIN },
					["races"] = { TAUREN },
					["isBreadcrumb"] = true,
					["lvl"] = lvlsquish(20, 20, 8),
				}),
				-- #endif
				q(27996, {	-- Orders Are For the Living
					["sourceQuest"] = 27988,	-- Plague...Plague Everywhere!
					["qg"] = 47293,	-- Deathstalker Commander Belmont
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(16, 16, 8),
					["groups"] = {
						objective(1, {	-- 0/1 Lord Walden slain
							["provider"] = { "n", 46963 },	-- Lord Walden
						}),
					},
				}),
				-- #if AFTER SL
				q(27268, {	-- Patrice Lancaster Sends Word [All] [SL+] / Make Haste to the Cathedral [CATA]
					["qgs"] = {
						16756,	-- Caedmos
						11401,	-- Priestess Alathea
						11406,	-- High Priest Rohan
					},
					["coords"] = {
						{ 38.5, 50.9, THE_EXODAR },	-- Caedmos
						{ 43.4, 79.2, DARNASSUS },	-- Priestess Alathea
						{ 25.0, 8.2, IRONFORGE },	-- High Priest Rohan
					},
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { PRIEST },
					["isBreadcrumb"] = true,
					["lvl"] = lvlsquish(20, 20, 8),
				}),
				q(27274, {	-- Patrice Lancaster Sends Word [Gnome] [SL+] / The Chief Surgeon [CATA]
					["qgs"] = {
						16756,	-- Caedmos
						11401,	-- Priestess Alathea
						11406,	-- High Priest Rohan
					},
					["coords"] = {
						{ 38.5, 50.9, THE_EXODAR },	-- Caedmos
						{ 43.4, 79.2, DARNASSUS },	-- Priestess Alathea
						{ 25.0, 8.2, IRONFORGE },	-- High Priest Rohan
					},
					["timeline"] = { ADDED_4_0_3 },
					["classes"] = { PRIEST },
					["races"] = { GNOME },
					["isBreadcrumb"] = true,
					["lvl"] = lvlsquish(20, 20, 8),
				}),
				-- #endif
				q(27988, {	-- Plague...Plague Everywhere!
					["sourceQuest"] = 27974,	-- This Land is Our Land
					["qg"] = 47293,	-- Deathstalker Commander Belmont
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(16, 16, 8),
					["groups"] = {
						objective(1, {	-- 0/1 Baron Silverlaine slain
							["provider"] = { "n", 3887 },	-- Baron Silverlaine
						}),
						objective(2, {	-- 0/1 Commander Springvale slain
							["provider"] = { "n", 4278 },	-- Commander Springvale
						}),
					},
				}),
				-- #if BEFORE SL
				q(28164, {	-- Seek Brother Silverhallow [CATA] / Journey to Orgrimmar [Goblin] [SL+]
					["qgs"] = {
						16658,	-- Aldrae <Priest Trainer>
						3045,	-- Malakai Cross <Priest Trainer>
						43870,	-- Seer Beryl <Priest Trainer>
						4606,	-- Aelthalyste <Priest Trainer>
					},
					["coords"] = {
						{ 53.2, 26.6, SILVERMOON_CITY },	-- Aldrae <Priest Trainer>
						{ 24.8, 22.4, THUNDER_BLUFF },	-- Malakai Cross <Priest Trainer>
						{ 75.4, 28.0, THUNDER_BLUFF },	-- Seer Beryl <Priest Trainer>
						{ 49.3, 17.1, UNDERCITY },	-- Aelthalyste <Priest Trainer>
					},
					["timeline"] = { ADDED_4_0_3 },
					["classes"] = { PRIEST },
					["races"] = { GOBLIN },
					["isBreadcrumb"] = true,
					["lvl"] = lvlsquish(20, 20, 8),
				}),
				-- #endif
				q(27298, {	-- Seek Out Master Pyreanor [CATA] / Seek Out Avaros Dawnglaive [SL+]
					["qgs"] = {
						16681,	-- Champion Bachi
						43795,	-- Aponi Brightmane
						20406,	-- Champion Cyssa Dawnrose
					},
					["coords"] = {
						{ 92.0, 37.2, SILVERMOON_CITY },	-- Champion Bachi
						{ 63.2, 79.8, THUNDER_BLUFF },	-- Aponi Brightmane
						{ 57.8, 90.2, UNDERCITY },	-- Champion Cyssa Dawnrose
					},
					["timeline"] = { ADDED_4_0_3 },
					["classes"] = { PALADIN },
					["races"] = { BLOODELF },
					["isBreadcrumb"] = true,
					["lvl"] = lvlsquish(20, 20, 8),
				}),
				-- #if BEFORE SL
				q(27332, {	-- Seek the Shadow-Walker [CATA] / Journey to Orgrimmar [Undead] [SL+]
					["qgs"] = {
						16658,	-- Aldrae <Priest Trainer>
						3045,	-- Malakai Cross <Priest Trainer>
						43870,	-- Seer Beryl <Priest Trainer>
						4606,	-- Aelthalyste <Priest Trainer>
					},
					["coords"] = {
						{ 53.2, 26.6, SILVERMOON_CITY },	-- Aldrae <Priest Trainer>
						{ 24.8, 22.4, THUNDER_BLUFF },	-- Malakai Cross <Priest Trainer>
						{ 75.4, 28.0, THUNDER_BLUFF },	-- Seer Beryl <Priest Trainer>
						{ 49.3, 17.1, UNDERCITY },	-- Aelthalyste <Priest Trainer>
					},
					["timeline"] = { ADDED_4_0_3 },
					["classes"] = { PRIEST },
					["races"] = { TROLL },
					["isBreadcrumb"] = true,
					["lvl"] = lvlsquish(20, 20, 8),
				}),
				-- #endif
				q(27917, {	-- Sniffing Them Out
					["qg"] = 47006,	-- Packleader Ivar Bloodfang
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(16, 16, 8),
					["groups"] = {
						objective(1, {	-- 0/1 Baron Ashbury slain
							["provider"] = { "n", 46962 },	-- Baron Ashbury
						}),
					},
				}),
				q(27439, {	-- Staff of the Light [Blood Elf]
					["sourceQuest"] = 27335,	-- Journey to Orgrimmar [Blood Elf]
					["qgs"] = {
						-- #if AFTER SL
						168621,	-- Martin Goodchilde <Priest Trainer>
						-- #else
						45337,	-- Tyelis
						-- #endif
					},
					["coords"] = {
						-- #if AFTER SL
						{ 72.6, 46.6, ORGRIMMAR },
						-- #else
						{ 49.0, 71.0, ORGRIMMAR },
						-- #endif
					},
					["timeline"] = { ADDED_4_0_3 },
					["races"] = { BLOODELF },
					["classes"] = { PRIEST },
					["groups"] = {
						objective(1, {	-- 0/1 Commander's Holy Symbol
							["provider"] = { "i", 60879 },	-- Commander's Holy Symbol
						}),
						objective(2, {	-- 0/5 Moontouched Wood
							["provider"] = { "i", 60871 },	-- Moontouched Wood
						}),
						objective(3, {	-- 0/5 Ghostly Essence
							["provider"] = { "i", 60875 },	-- Ghostly Essence
						}),
						i(65478),	-- Staff of the Sunchaser
					},
				}),
				q(27998, {	-- Sweet, Merciless Revenge
					["sourceQuest"] = 27988,	-- Plague...Plague Everywhere!
					["qg"] = 47293,	-- Deathstalker Commander Belmont
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(16, 16, 8),
					["groups"] = {
						objective(1, {	-- 0/1 Lord Godfrey slain
							["provider"] = { "n", 46964 },	-- Lord Godfrey
						}),
						i(66038),	-- Breastplate of the Terrible Price
						i(66044),	-- Deathstalker Pauldrons
						i(66029),	-- Shadowfanger Shoulderpads
						i(66020),	-- Sandals of Sacrifice
						i(66011),	-- Godfrey's Britches
						i(131686, {	-- Packleader's Chain Spaulders
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(131687, {	-- Boots of Painful Cost
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				-- #if AFTER SL
				q(27278, {	-- Tamanji's Call [SL+] / Grimshot's Call [CATA]
					["qgs"] = {
						16674,	-- Zandine <Hunter Trainer>
						3039,	-- Holt Thunderhorn <Hunter Trainer>
						39116,	-- Apolos <Hunter Trainer>
					},
					["coords"] = {
						{ 84.4, 28.0, SILVERMOON_CITY },	-- Zandine <Hunter Trainer>
						{ 57.4, 89.2, THUNDER_BLUFF },	-- Holt Thunderhorn <Hunter Trainer>
						{ 49.6, 29.0, UNDERCITY },	-- Apolos <Hunter Trainer>
					},
					["timeline"] = { ADDED_4_0_3 },
					["classes"] = { HUNTER },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = lvlsquish(20, 20, 8),
				}),
				-- #endif
				-- #if AFTER MOP
				-- #if BEFORE SL
				q(27397, {	-- Terga's Task [MOP] / Dreamseeker's Task [CATA] / Hretar's Task [SL+]
					["sourceQuest"] = 27280,	-- The Dreamseeker Calls [CATA] / The Earthbreaker Calls [MOP] / The Riverspeaker Calls [SL+]
					["qgs"] = {
						-- #if AFTER SL
						168628,	-- Hretar Riverspeaker <Shaman Trainer>
						-- #elseif AFTER MOP
						72939,	-- Terga Earthbreaker
						-- #else
						3344,	-- Kardris Dreamseeker
						-- #endif
					},
					["coords"] = {
						-- #if AFTER SL
						{ 73.6, 43.4, ORGRIMMAR },
						-- #elseif AFTER MOP
						{ 39.0, 47.6, ORGRIMMAR },
						-- #else
						{ 39.0, 47.4, ORGRIMMAR },
						-- #endif
					},
					["timeline"] = { ADDED_4_0_3 },
					["classes"] = { SHAMAN },
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(20, 20, 8),
					["groups"] = {
						objective(1, {	-- 0/1 Walden's Talisman
							["provider"] = { "i", 60881 },	-- Walden's Talisman
						}),
						objective(2, {	-- 0/1 Book of Lost Souls
							["provider"] = { "i", 60873 },	-- Book of Lost Souls
						}),
						objective(3, {	-- 0/5 Ghostly Essence
							["provider"] = { "i", 60875 },	-- Ghostly Essence
						}),
						i(65490),	-- Battleaxe of the Speaker
						i(65491),	-- Spell Axe of the Speaker
					},
				}),
				-- #endif
				-- #endif
				q(27434, {	-- The Adept's Path
					["sourceQuest"] = 27298,	-- Seek Out Master Pyreanor
					["qgs"] = {
						-- #if AFTER SL
						168597,	-- Avaros Dawnglaive <Paladin Trainer>
						-- #else
						23128,	-- Master Pyreanor
						-- #endif
					},
					["coords"] = {
						-- #if AFTER SL
						{ 73.0, 47.2, ORGRIMMAR },
						-- #else
						{ 49.2, 71.2, ORGRIMMAR },
						-- #endif
					},
					["timeline"] = { ADDED_4_0_3 },
					["classes"] = { PALADIN },
					["races"] = { BLOODELF },
					["lvl"] = lvlsquish(20, 20, 8),
					["groups"] = {
						objective(1, {	-- 0/1 Commander's Holy Symbol
							["provider"] = { "i", 60879 },	-- Commander's Holy Symbol
						}),
						objective(2, {	-- 0/5 Moonsteel Ingots
							["provider"] = { "i", 60872 },	-- Moonsteel Ingots
						}),
						objective(3, {	-- 0/5 Deathless Sinew
							["provider"] = { "i", 60874 },	-- Deathless Sinew
						}),
						i(65469),	-- Morningstar of the Order
						i(65470),	-- Battlemace of the Order
						i(65471),	-- Greatmace of the Order
					},
				}),
				q(1013, {	-- The Book of Ur
					["qg"] = 2934,	-- Keeper Bel'dugur
					["coord"] = { 54.0, 54.6, UNDERCITY },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 16,
					["groups"] = {
						objective(1, {	-- 0/1 The Book of Ur
							["providers"] = {
								{ "i", 6283 },	-- The Book of Ur
								{ "o", 36738 },	-- The Book of Ur
							},
							["description"] = "Can be found on a bookshelf in the circular room with Fenrus.",
						}),
						i(4534, {	-- Steel-Clasped Bracers
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(6335, {	-- Grizzled Boots
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				-- #if BEFORE SL
				q(27274, {	-- The Chief Surgeon [CATA] / Patrice Lancaster Sends Word [Gnome] [SL+]
					["qg"] = 11406,	-- High Priest Rohan
					["coord"] = { 25.0, 8.2, IRONFORGE },
					["timeline"] = { ADDED_4_0_3 },
					["classes"] = { PRIEST },
					["races"] = { GNOME },
					["isBreadcrumb"] = true,
					["lvl"] = lvlsquish(20, 20, 8),
				}),
				-- #endif
				q(27356, {	-- The Circle's Future [Alliance]
					["sourceQuest"] = 27273,	-- An Invitation from Moonglade
					["qg"] = 12042,	-- Loganaar
					["coord"] = { 52.4, 40.4, MOONGLADE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { DRUID },
					["lvl"] = lvlsquish(8, 20, 8),
					["groups"] = {
						objective(1, {	-- 0/1 Walden's Elixirs
							["provider"] = { "i", 60876 },	-- Walden's Elixirs
						}),
						objective(2, {	-- 0/5 Moontouched Wood
							["provider"] = { "i", 60871 },	-- Moontouched Wood
						}),
						objective(3, {	-- 0/5 Ghostly Essence
							["provider"] = { "i", 60875 },	-- Ghostly Essence
						}),
						i(65461),	-- Staff of the Green Circle
						i(65462),	-- Staff of the Verdant Circle
					},
				}),
				q(27404, {	-- The Circle's Future [Horde]
					["sourceQuest"] = 27283,	-- A Journey to Moonglade
					["qg"] = 12042,	-- Loganaar
					["coord"] = { 52.4, 40.4, MOONGLADE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["classes"] = { DRUID },
					["lvl"] = lvlsquish(8, 20, 8),
					["groups"] = {
						objective(1, {	-- 0/1 Walden's Elixirs
							["provider"] = { "i", 60876 },	-- Walden's Elixirs
						}),
						objective(2, {	-- 0/5 Moontouched Wood
							["provider"] = { "i", 60871 },	-- Moontouched Wood
						}),
						objective(3, {	-- 0/5 Ghostly Essence
							["provider"] = { "i", 60875 },	-- Ghostly Essence
						}),
						i(65463),	-- Staff of the Green Circle
						i(65464),	-- Staff of the Verdant Circle
					},
				}),
				-- #if BEFORE SL
				q(27437, {	-- The Dark Cleric's Bidding [CATA] / Forsaken Faith [SL+]
					["sourceQuest"] = 27334,	-- Dark Cleric Cecille [CATA] / Journey to Orgrimmar [SL+]
					["qg"] = 45339,	-- Dark Cleric Cecille
					["coord"] = { 48.2, 72.8, ORGRIMMAR },
					["timeline"] = { ADDED_4_0_3 },
					["classes"] = { PRIEST },
					["races"] = { UNDEAD },
					["lvl"] = lvlsquish(20, 20, 8),
					["groups"] = {
						objective(1, {	-- 0/1 Commander's Holy Symbol
							["provider"] = { "i", 60879 },	-- Commander's Holy Symbol
						}),
						objective(2, {	-- 0/5 Moontouched Wood
							["provider"] = { "i", 60871 },	-- Moontouched Wood
						}),
						objective(3, {	-- 0/5 Ghostly Essence
							["provider"] = { "i", 60875 },	-- Ghostly Essence
						}),
						i(65479),	-- Staff of the Forsaken Faith
					},
				}),
				-- #if BEFORE MOP
				q(27280, {	-- The Dreamseeker Calls [CATA] / The Earthbreaker Calls [MOP] / The Riverspeaker Calls [SL+]
					["qgs"] = {
						16661,	-- Gez'li
						51639,	-- Kador Cloudsong
						3032,	-- Beram Skychaser <Shaman Trainer>
					},
					["coords"] = {
						{ 71.8, 56.0, SILVERMOON_CITY },
						{ 22.2, 19.0, THUNDER_BLUFF },
						{ 22.0, 18.8, THUNDER_BLUFF },
					},
					["timeline"] = { ADDED_4_0_3 },
					["classes"] = { SHAMAN },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = lvlsquish(20, 20, 8),
				}),
				-- #else
				q(27280, {	-- The Earthbreaker Calls [MOP] / The Dreamseeker Calls [CATA] / The Riverspeaker Calls [SL+]
					["qgs"] = {
						16661,	-- Gez'li
						51639,	-- Kador Cloudsong
						3032,	-- Beram Skychaser <Shaman Trainer>
					},
					["coords"] = {
						{ 71.8, 56.0, SILVERMOON_CITY },
						{ 22.2, 19.0, THUNDER_BLUFF },
						{ 22.0, 18.8, THUNDER_BLUFF },
					},
					["timeline"] = { ADDED_4_0_3 },
					["classes"] = { SHAMAN },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = lvlsquish(20, 20, 8),
				}),
				-- #endif
				-- #endif
				q(27343, {	-- The Hand of the Light
					["sourceQuest"] = 27265,	-- Lord Grayson Shadowbreaker [CATA] / Ezul'aan Calls [SL+]
					["qgs"] = {
						-- #if AFTER SL
						164952,	-- Ezul'aan <Paladin Trainer>
						-- #else
						928,	-- Lord Grayson Shadowbreaker
						-- #endif
					},
					["coords"] = {
						-- #if AFTER SL
						{ 79.2, 69.6, STORMWIND_CITY },
						-- #else
						{ 52.6, 45.0, STORMWIND_CITY },
						-- #endif
					},
					["timeline"] = { ADDED_4_0_3 },
					["classes"] = { PALADIN },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(20, 20, 8),
					["groups"] = {
						objective(1, {	-- 0/1 Commander's Holy Symbol
							["provider"] = { "i", 60879 },	-- Commander's Holy Symbol
						}),
						objective(2, {	-- 0/5 Moonsteel Ingots
							["provider"] = { "i", 60872 },	-- Moonsteel Ingots
						}),
						objective(3, {	-- 0/5 Deathless Sinew
							["provider"] = { "i", 60874 },	-- Deathless Sinew
						}),
						i(65475),	-- Mace of the Order
						i(65476),	-- Gavel of the Order
						i(65477),	-- Warhammer of the Order
					},
				}),
				q(1740, {	-- The Orb of Soran'ruk
					["qg"] = 6247,	-- Doan Karhan
					["coord"] = { 49.2, 57.2, THE_BARRENS },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { BLACKFATHOM_DEEPS },
					["classes"] = { WARLOCK },
					["lvl"] = 20,
					["groups"] = {
						objective(1, {	-- 0/3 Soran'ruk Fragment
							["provider"] = { "i", 6914 },	-- Soran'ruk Fragment
							-- #if BEFORE 6.0.1.18322
							["cr"] = 4809,	-- Twilight Acolyte
							-- #endif
						}),
						objective(2, {	-- 0/1 Large Soran'ruk Fragment
							["provider"] = { "i", 6915 },	-- Large Soran'ruk Fragment
							["cr"] = 3855,	-- Shadowfang Darksoul
						}),
						i(6898, {	-- Orb of Soran'ruk
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(15109, {	-- Staff of Soran'ruk
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				-- #if AFTER SL
				q(27280, {	-- The Riverspeaker Calls [SL+] / The Dreamseeker Calls [CATA] / The Earthbreaker Calls [MOP]
					["qgs"] = {
						16661,	-- Gez'li
						51639,	-- Kador Cloudsong
						3032,	-- Beram Skychaser <Shaman Trainer>
					},
					["coords"] = {
						{ 71.8, 56.0, SILVERMOON_CITY },
						{ 22.2, 19.0, THUNDER_BLUFF },
						{ 22.0, 18.8, THUNDER_BLUFF },
					},
					["timeline"] = { ADDED_4_0_3 },
					["classes"] = { SHAMAN },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = lvlsquish(20, 20, 8),
				}),
				-- #endif
				-- #if BEFORE SL
				q(27331, {	-- The Seer's Call [CATA] / Journey to Orgrimmar [Tauren] [SL+]
					["qgs"] = {
						16658,	-- Aldrae <Priest Trainer>
						3045,	-- Malakai Cross <Priest Trainer>
						43870,	-- Seer Beryl <Priest Trainer>
						4606,	-- Aelthalyste <Priest Trainer>
					},
					["coords"] = {
						{ 53.2, 26.6, SILVERMOON_CITY },	-- Aldrae <Priest Trainer>
						{ 24.8, 22.4, THUNDER_BLUFF },	-- Malakai Cross <Priest Trainer>
						{ 75.4, 28.0, THUNDER_BLUFF },	-- Seer Beryl <Priest Trainer>
						{ 49.3, 17.1, UNDERCITY },	-- Aelthalyste <Priest Trainer>
					},
					["timeline"] = { ADDED_4_0_3 },
					["classes"] = { PRIEST },
					["races"] = { TAUREN },
					["isBreadcrumb"] = true,
					["lvl"] = lvlsquish(20, 20, 8),
				}),
				q(27436, {	-- The Shadow-Walker's Task [CATA] / A Seer's Staff [Troll] [SL+]
					["sourceQuest"] = 27332,	-- Seek the Shadow-Walker [CATA] / Journey to Orgrimmar [Undead] [SL+]
					["qg"] = 45137,	-- Shadow-Walker Zuru
					["coord"] = { 35.4, 69.2, ORGRIMMAR },
					["timeline"] = { ADDED_4_0_3 },
					["classes"] = { PRIEST },
					["races"] = { TROLL },
					["lvl"] = lvlsquish(20, 20, 8),
					["groups"] = {
						objective(1, {	-- 0/1 Commander's Holy Symbol
							["provider"] = { "i", 60879 },	-- Commander's Holy Symbol
						}),
						objective(2, {	-- 0/5 Moontouched Wood
							["provider"] = { "i", 60871 },	-- Moontouched Wood
						}),
						objective(3, {	-- 0/5 Ghostly Essence
							["provider"] = { "i", 60875 },	-- Ghostly Essence
						}),
						i(65485),	-- Shadow-Walker Staff
					},
				}),
				-- #endif
				q(27279, {	-- The Shattered Hand
					["qgs"] = {
						16684,	-- Zelanis
						4584,	-- Gregory Charles
					},
					["coords"] = {
						{ 79.4, 52.0, SILVERMOON_CITY },	-- Zelanis
						{ 84.6, 73.2, UNDERCITY },	-- Gregory Charles
					},
					["timeline"] = { ADDED_4_0_3 },
					["classes"] = { ROGUE },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = lvlsquish(20, 20, 8),
				}),
				q(27269, {	-- The Temple of the Moon
					["qgs"] = {
						11401,	-- Priestess Alathea
						11406,	-- High Priest Rohan
					},
					["coords"] = {
						{ 43.4, 79.2, DARNASSUS },	-- Priestess Alathea
						{ 25.0, 8.2, IRONFORGE },	-- High Priest Rohan
					},
					["timeline"] = { ADDED_4_0_3 },
					["classes"] = { PALADIN },
					["races"] = { NIGHTELF },
					["isBreadcrumb"] = true,
					["lvl"] = lvlsquish(20, 20, 8),
				}),
				q(27974, {	-- This Land is Our Land
					["qg"] = 47293,	-- Deathstalker Commander Belmont
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(16, 16, 8),
					["groups"] = {
						objective(1, {	-- 0/1 Baron Ashbury slain
							["provider"] = { "n", 46962 },	-- Baron Ashbury
						}),
					},
				}),
				q(27402, {	-- Token of Power
					["sourceQuest"] = 27282,	-- Zevrost's Behest [CATA] / Kranosh's Behest [WOD] / Kazak's Behest [SL+]
					["qgs"] = {
						-- #if AFTER SL
						168623,	-- Kazak Darkscream <Warlock Trainer>
						-- #elseif AFTER WOD
						88705,	-- Kranosh
						-- #else
						3326,	-- Zevrost <Warlock Trainer>
						-- #endif
					},
					["coords"] = {
						-- #if AFTER SL
						{ 74.6, 47.2, ORGRIMMAR },
						-- #elseif AFTER WOD
						{ 76.8, 37.4, ORGRIMMAR },
						-- #else
						{ 53.5, 49.6, ORGRIMMAR },
						-- #endif
					},
					["timeline"] = { ADDED_4_0_3 },
					["classes"] = { WARLOCK },
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(20, 20, 8),
					["groups"] = {
						objective(1, {	-- 0/1 Tenebrous Orb
							["provider"] = { "i", 60882 },	-- Tenebrous Orb
						}),
						objective(2, {	-- 0/1 Book of Lost Souls
							["provider"] = { "i", 60873 },	-- Book of Lost Souls
						}),
						objective(3, {	-- 0/5 Ghostly Essence
							["provider"] = { "i", 60875 },	-- Ghostly Essence
						}),
						i(65497),	-- Staff of the Left Hand Path
					},
				}),
				-- #if BEFORE SL
				q(27266, {	-- Wulf Calls [CATA] / Dalgrun Calls [SL+]
					["qgs"] = {
						4138,	-- Jeen'ra Nightrunner
						5115,	-- Daera Brightspear
						17122,	-- Vord
					},
					["coords"] = {
						{ 43.4, 26.0, DARNASSUS },	-- Jeen'ra Nightrunner
						{ 70.9, 89.8, IRONFORGE },	-- Daera Brightspear
						{ 47.2, 88.4, THE_EXODAR },	-- Vord
					},
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { HUNTER },
					["isBreadcrumb"] = true,
					["lvl"] = lvlsquish(8, 20, 8),
				}),
				-- #endif
				-- #if BEFORE WOD
				q(27282, {	-- Zevrost's Behest [CATA] / Kranosh's Behest [WOD] / Kazak's Behest [SL+]
					["qgs"] = {
						43881,	-- Delano Morisett <Warlock Trainer>
						4563,	-- Kaal Soulreaper <Warlock Trainer>
						16648,	-- Zanien (Silvermoon <Warlock Trainer>
					},
					["coords"] = {
						{ 25.2, 14.4, THUNDER_BLUFF },		-- Delano Morisett <Warlock Trainer>
						{ 86.0, 15.6, UNDERCITY },		-- Kaal Soulreaper <Warlock Trainer>
						{ 73.2, 45.2, SILVERMOON_CITY },	-- Zanien <Warlock Trainer>
					},
					["timeline"] = { ADDED_4_0_3 },
					["classes"] = { WARLOCK },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = lvlsquish(8, 20, 8),
				}),
				-- #endif
			}),
			-- #if AFTER CATA
			d(DIFFICULTY.DUNGEON.NORMAL, {
			-- #endif
				n(ZONE_DROPS, {
					i(60874, {	-- Deathless Sinew
						["timeline"] = { ADDED_4_0_3 },
					}),
					i(60875, {	-- Ghostly Essence
						["timeline"] = { ADDED_4_0_3 },
					}),
					i(60872, {	-- Moonsteel Ingots
						["provider"] = { "o", 205477 },	-- Moonsteel Ingots
						["timeline"] = { ADDED_4_0_3 },
					}),
					i(60871, {	-- Moontouched Wood
						["provider"] = { "o", 205479 },	-- Moontouched Wood
						["timeline"] = { ADDED_4_0_3 },
					}),
					i(1935),	-- Assassin's Blade
					i(3194),	-- Black Malice
					i(2205, {	-- Duskbringer
						["crs"] = {
							-- #if AFTER 4.0.3
							47132,	-- Dark Creeper
							3870,	-- Stone Sleeper
							47136,	-- Unstable Ravager
							-- #else
							3863,	-- Lupine Horror
							3857,	-- Shadowfang Glutton
							3859,	-- Shadowfang Ragetooth
							2529,	-- Son of Arugal
							3873,	-- Tormented Officer
							3877,	-- Wailing Guardsman
							-- #endif
						},
					}),
					i(1483),	-- Face Smasher
					i(1489, {	-- Gloomshroud Armor
						["crs"] = {
							-- #if AFTER 4.0.3
							3875,	-- Haunted Servitor
							47136,	-- Unstable Ravager
							-- #else
							3863,	-- Lupine Horror
							3859,	-- Shadowfang Ragetooth
							2529,	-- Son of Arugal
							3873,	-- Tormented Officer
							3866,	-- Vile Bat
							3877,	-- Wailing Guardsman
							-- #endif
						},
					}),
					i(2807),	-- Guillotine Axe
					i(1974),	-- Mindthrust Bracers
					i(2292, {	-- Necrology Robes
						["crs"] = {
							-- #if AFTER 4.0.3
							3870,	-- Stone Sleeper
							47146,	-- Spitebone Flayer
							-- #else
							3863,	-- Lupine Horror
							3859,	-- Shadowfang Ragetooth
							2529,	-- Son of Arugal
							3873,	-- Tormented Officer
							3877,	-- Wailing Guardsman
							-- #endif
						},
					}),
					i(1318),	-- Night Reaver
					i(1482),	-- Shadowfang
					i(1484),	-- Witching Stave
				}),
				n(3914, {	-- Rethilgore <The Cell Keeper>
					["timeline"] = { REMOVED_4_0_3 },
					["groups"] = {
						i(5254, {	-- Rugged Spaulders
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				e(96, {	-- Baron Ashbury
					["creatureID"] = 46962,
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						i(6323),	-- Baron's Scepter
						i(6314),	-- Wolfmaster Cape
						i(6324),	-- Robes of Arugal
					},
				}),
				n(3864, {	-- Fel Steed/Shadow Charger
					i(6341),	-- Eerie Stable Lantern
					i(932),	-- Fel Steed Saddlebags
				}),
				n(3886, {	-- Razorclaw the Butcher
					["timeline"] = { REMOVED_4_0_3 },
					["groups"] = {
						i(1292, {	-- Butcher's Cleaver
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(6633, {	-- Butcher's Slicer
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(6226, {	-- Bloody Apron
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				e(97, {	-- Baron Silverlaine
					["creatureID"] = 3887,
					["groups"] = {
						i(60878, {	-- Silverlaine's Enchanted Crystal
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(60885, {	-- Silverlaine Family Sword
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(6323),	-- Baron's Scepter
						i(5254, {	-- Rugged Spaulders
							["timeline"] = {
								CREATED_4_0_3,
								-- #if ANYCLASSIC
								ADDED_5_0_4,
								-- #else
								ADDED_7_1_5,
								-- #endif
							},
						}),
						i(132568, {	-- Shadowfang Pauldrons
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(5943, {	-- Rift Bracers
							["timeline"] = {
								CREATED_4_0_3,
								-- #if ANYCLASSIC
								ADDED_5_0_4,
								-- #else
								ADDED_7_1_5,
								-- #endif
							},
						}),
						i(132567, {	-- Blindwatcher's Chain
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(6319, {	-- Girdle of the Blindwatcher
							["timeline"] = {
								CREATED_4_0_3,
								-- #if ANYCLASSIC
								ADDED_5_0_4,
								-- #else
								ADDED_7_1_5,
								-- #endif
							},
						}),
						i(6321),	-- Silverlaine's Family Seal
					},
				}),
				e(98, {	-- Commander Springvale
					["creatureID"] = 4278,
					["groups"] = {
						i(60879, {	-- Commander's Holy Symbol
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(60880, {	-- Springvale's Sharpening Stone
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(3191),	-- Arced War Axe
						i(6320),	-- Commander's Crest
						-- #if BEFORE 4.0.3
						i(6341),	-- Eerie Stable Lantern
						-- #endif
						i(151069, {	-- Breastplate of the Stilled Heart
							["timeline"] = { ADDED_7_3_0 },
						}),
						i(151070, {	-- Gloves of the Greymane Wall
							["timeline"] = { ADDED_7_3_0 },
						}),
						i(151067, {	-- Boots of Lingering Sorrow
							["timeline"] = { ADDED_7_3_0 },
						}),
						i(151068, {	-- Boots of the Predator
							["timeline"] = { ADDED_7_3_0 },
						}),
					},
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_ONE, i(209872, {	-- Dragonslayer's Helm
					["provider"] = { "o", 409758 },	-- Discarded Helm
					["timeline"] = { REMOVED_2_0_1 },
					["classes"] = { WARRIOR },
				})),
				-- #endif
				n(3872, {	-- Deathsworn Captain
					["description"] = "This is a Rare Creature and, as such, is not always present.\nCan be found in place of a Tormented Officer patrolling the outdoor wall section just after the boss Commander Springvale.\nThe Rare can be seen at the entrance of the Dungeon via the /tar command..",
					["groups"] = {
						i(6641),	-- Haunting Blade
						i(6642),	-- Phantom Armor
					},
				}),
				n(4279, {	-- Odo the Blindwatcher
					["timeline"] = { REMOVED_4_0_3 },
					["groups"] = {
						i(6318, {	-- Odo's Ley Staff
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(6319, {	-- Girdle of the Blindwatcher
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				e(99, {	-- Lord Walden
					["creatureID"] = 46963,
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						i(60876, {	-- Walden's Elixirs
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(60881, {	-- Walden's Talisman
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(1292, {	-- Butcher's Cleaver
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(6341),	-- Eerie Stable Lantern
						i(6642),	-- Phantom Armor
						i(3230, {	-- Black Wolf Bracers
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(132566, {	-- Dark Lupine Wraps
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				i(60873, {	-- Book of Lost Souls
					["description"] = "This item in located on a chair in Lord Walden's room.",
					["provider"] = { "o", 205476 },	-- Book of Lost Souls
					["timeline"] = { ADDED_4_0_3 },
				}),
				n(4274, {	-- Fenrus the Devourer
					["timeline"] = { REMOVED_4_0_3 },
					["groups"] = {
						i(3230, {	-- Black Wolf Bracers
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(6340, {	-- Fenrus' Hide
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				n(4627, {	-- Arugal's Voidwalker
					["timeline"] = { REMOVED_4_0_3 },
					["groups"] = {
						i(5943, {	-- Rift Bracers
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				n(3927, {	-- Wolf Master Nandos
					["timeline"] = { REMOVED_4_0_3 },
					-- #if BEFORE 4.0.3
					["groups"] = {
						i(3748),	-- Feline Mantle
						i(6314),	-- Wolfmaster Cape
					},
					-- #endif
				}),
				n(4275, {	-- Archmage Arugal
					["timeline"] = { REMOVED_4_0_3 },
					["groups"] = {
						-- #if BEFORE 4.0.3
						ach(631, {	-- Shadowfang Keep
							-- #if BEFORE WRATH
							["races"] = HORDE_ONLY,
							-- #endif
						}),
						i(5442),	-- Head of Arugal
						i(6220),	-- Meteor Shard
						i(6324),	-- Robes of Arugal
						-- #endif
						i(6392, {	-- Belt of Arugal
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				e(100, {	-- Lord Godfrey
					["creatureID"] = 46964,
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						ach(631),	-- Shadowfang Keep
						ach(5040, {	-- Shadowfang Keep Guild Run
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(60877),	-- Godfrey's Crystal Scope
						i(60882),	-- Tenebrous Orb
						i(6641),	-- Haunting Blade
						i(6318),	-- Odo's Ley Staff
						i(6220),	-- Meteor Shard
						i(151072, {	-- Worgen Hunter's Helm
							["timeline"] = { ADDED_7_3_0 },
						}),
						i(3748),	-- Feline Mantle
						i(244655, {	-- Gilnean Circular Rug (DECOR!)
							["timeline"] = { ADDED_11_2_7 },
						}),
						i(151071, {	-- Gloves of the Uplifted Cup
							["timeline"] = { ADDED_7_3_0 },
						}),
						i(151073, {	-- Greaves of the Misguided
							["timeline"] = { ADDED_7_3_0 },
						}),
					},
				}),
			-- #if AFTER CATA
			}),
			-- #endif
			d(DIFFICULTY.DUNGEON.HEROIC, {
				["timeline"] = { ADDED_4_0_3 },
				["lvl"] = 85,
				["groups"] = {
					e(96, {	-- Baron Ashbury
						["creatureID"] = 46962,
						["groups"] = {
							ach(5503),	-- Pardon Denied
							i(63433),	-- Robes of Arugal
							i(63437),	-- Baron Ashbury's Cuffs
							i(63434),	-- Gloves of the Greymane Wall
							i(63436),	-- Traitor's Grips
							i(63435),	-- Boots of the Predator
						},
					}),
					e(97, {	-- Baron Silverlaine
						["creatureID"] = 3887,
						["groups"] = {
							i(63438),	-- Baroness Silverlaine's Locket
							i(238984, {	-- Baroness Silverlaine's Locket
								["timeline"] = { ADDED_11_1_5 },
							}),
							i(63441),	-- Pendant of the Keep
							i(63439),	-- Gloves of the Uplifted Cup
							i(63444),	-- Baron Silverlaine's Greaves
							i(63440),	-- Boots of Lingering Sorrow
						},
					}),
					e(98, {	-- Commander Springvale
						["creatureID"] = 4278,
						["groups"] = {
							ach(5504),	-- To the Ground!
							i(63445),	-- Arced War Axe
							i(63449),	-- Thieving Spaulders
							i(63448),	-- Spingvale's Cloak
							i(63447),	-- Breastplate of the Stilled Heart
							i(63446),	-- Haunting Footfalls
						},
					}),
					e(99, {	-- Lord Walden
						["creatureID"] = 46963,
						["groups"] = {
							i(63455, {	-- Blinders of the Follower
								["timeline"] = { REMOVED_11_1_5 },
							}),
							i(238976, {	-- Blinders of the Follower
								["timeline"] = { ADDED_11_1_5 },
							}),
							i(63452, {	-- Burden of Lost Humanity
								["timeline"] = { REMOVED_11_1_5 },
							}),
							i(238978, {	-- Burden of Lost Humanity
								["timeline"] = { ADDED_11_1_5 },
							}),
							i(63450, {	-- Phantom Armor
								["timeline"] = { REMOVED_11_1_5 },
							}),
							i(238979, {	-- Phantom Armor
								["timeline"] = { ADDED_11_1_5 },
							}),
							i(63454),	-- Double Dealing Bracers
							i(63453, {	-- Iron Will Girdle
								["timeline"] = { REMOVED_11_1_5 },
							}),
							i(238977, {	-- Iron Will Girdle
								["timeline"] = { ADDED_11_1_5 },
							}),
						},
					}),
					e(100, {	-- Lord Godfrey
						["creatureID"] = 46964,
						["groups"] = {
							ach(5505, {	-- Bullet Time
								crit(16086),	-- Defeat Lord Godfrey
								crit(16544),	-- Bloodthirsty Ghouls killed by Pistol Barrage
							}),
							ach(5093),	-- Heroic: Shadowfang Keep
							ach(5142),	-- Heroic: Shadowfang Keep Guild Run
							i(63461),	-- Staff of Isolation
							i(63456),	-- Meteor Shard
							i(63459),	-- Worgen Hunter's Helm
							i(244655, {	-- Gilnean Circular Rug (DECOR!)
								["timeline"] = { ADDED_11_2_7 },
							}),
							i(63462),	-- Helm of Untold Stories
							i(63465),	-- Mantle of Loss
							i(63463),	-- Mantle of the Eastern Lords
							i(63458),	-- Lord Walden's Breastplate
							i(157617, {	-- Wolfshide Vest
								["timeline"] = { ADDED_7_3_5 },
							}),
							i(63457),	-- Shackles of Undeath
							i(63464),	-- Greaves of the Misguided
							-- #if BEFORE MOP
							i(63460, {	-- Relic of Arathor
								["timeline"] = { ADDED_4_0_3, REMOVED_5_0_4 },
							}),
							-- #endif
						},
					}),
				},
			}),
			-- #if ANYCLASSIC
			applyclassicphase(CATA_PHASE_RAGE_OF_THE_FIRELANDS, n(PROTOCOL_INFERNO, {
				["OnInit"] = FUNCTION_TEMPLATES.OnInit.GenerateShouldExcludeFromTooltipForBuffs(470595),
				["timeline"] = { ADDED_4_0_3 },
				["lvl"] = 85,
				["groups"] = {
					e(100, {	-- Lord Godfrey
						["creatureID"] = 46964,
						["groups"] = {
							ach(41147),	-- Protocol Inferno: Shadowfang Keep
						},
					}),
				},
			})),
			-- #endif
		},
	}),
}));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.WOD, bubbleDownSelf({ ["timeline"] = { ADDED_6_0_2 } }, {
	inst(64, {
		q(35304),	-- Shadowfang Keep Reward Quest - Normal completion
		q(35309),	-- Shadowfang Keep Reward Quest - Heroic completion
		q(35311),	-- Commander Springvale Reward Quest
		q(35305),	-- Defeat Baron Silverlaine Reward
	}),
})));
