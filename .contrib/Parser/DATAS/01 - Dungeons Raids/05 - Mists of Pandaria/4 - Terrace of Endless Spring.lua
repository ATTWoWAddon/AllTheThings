-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

local TOKENS = {
	RAIDFINDER = {
		CONQUEROR = {	-- Paladin, Priest, Warlock
			HELM = 89274,		-- Helm of the Shadowy Conquerer
			SHOULDERS = 89277,	-- Shoulders of the Shadowy Conquerer
		},
		PROTECTOR = {	-- Warrior, Hunter, Shaman, Monk
			HELM = 89275,		-- Helm of the Shadowy Protector
			SHOULDERS = 89278,	-- Shoulders of the Shadowy Protector
		},
		VANQUISHER = {	-- Rogue, Death Knight, Mage, Druid
			HELM = 89273,		-- Helm of the Shadowy Vanquisher
			SHOULDERS = 89276,	-- Shoulders of the Shadowy Vanquisher
		},
	},
	NORMAL = {
		CONQUEROR = {	-- Paladin, Priest, Warlock
			HELM = 89235,		-- Helm of the Shadowy Conquerer
			SHOULDERS = 89246,	-- Shoulders of the Shadowy Conquerer
		},
		PROTECTOR = {	-- Warrior, Hunter, Shaman, Monk
			HELM = 89236,		-- Helm of the Shadowy Protector
			SHOULDERS = 89247,	-- Shoulders of the Shadowy Protector
		},
		VANQUISHER = {	-- Rogue, Death Knight, Mage, Druid
			HELM = 89234,		-- Helm of the Shadowy Vanquisher
			SHOULDERS = 89248,	-- Shoulders of the Shadowy Vanquisher
		},
	},
	HEROIC = {
		CONQUEROR = {	-- Paladin, Priest, Warlock
			HELM = 89259,		-- Helm of the Shadowy Conquerer
			SHOULDERS = 89262,	-- Shoulders of the Shadowy Conquerer
		},
		PROTECTOR = {	-- Warrior, Hunter, Shaman, Monk
			HELM = 89260,		-- Helm of the Shadowy Protector
			SHOULDERS = 89263,	-- Shoulders of the Shadowy Protector
		},
		VANQUISHER = {	-- Rogue, Death Knight, Mage, Druid
			HELM = 89258,		-- Helm of the Shadowy Vanquisher
			SHOULDERS = 89261,	-- Shoulders of the Shadowy Vanquisher
		},
	},
};

-- #if MOP
local CUTTING_EDGE_ONUPDATE = [[function(t)
	if _.Settings:GetUnobtainableFilter(]] .. MOP_PHASE_RISE_OF_THE_THUNDER_KING .. [[) then
		t.u = ]] .. REMOVED_FROM_GAME .. [[;
		t.rwp = nil;
	else
		t.u = ]] .. MOP_PHASE_ONE_TERRACE_OF_ENDLESS_SPRINGS .. [[;
		t.rwp = 50200;
	end
end]];
-- #endif

root(ROOTS.Instances, expansion(EXPANSION.MOP, bubbleDown({ ["timeline"] = { ADDED_5_0_4 } }, {
	applyclassicphase(MOP_PHASE_ONE_TERRACE_OF_ENDLESS_SPRINGS, inst(320, {	-- Terrace of Endless Spring
		["coord"] = { 48.4, 61.4, THE_VEILED_STAIR },
		["maps"] = { 456 },	-- Terrace of Endless Spring
		["sharedLockout"] = 1,
		["isRaid"] = true,
		["groups"] = {
			n(ACHIEVEMENTS, {
				ach(11757, {	-- Sha of Fabulous (Heart of Fear and Terrace of Endless Spring)
					["timeline"] = { ADDED_7_2_0 },
					["maps"] = {
						-- Heart of Fear
						474,	-- Oratorium of the Voice
						475,	-- Heart of Fear
					},
				}),
				ach(6689, {	-- Terrace of Endless Spring
					crit(19518, {	-- Protectors of the Endless
						["_encounter"] = { 683, DIFFICULTY.LEGACY_RAID.MULTI.ALL },
					}),
					crit(19519, {	-- Tsulong
						["_encounter"] = { 742, DIFFICULTY.LEGACY_RAID.MULTI.ALL },
					}),
					crit(19520, {	-- Lei Shi
						["_encounter"] = { 729, DIFFICULTY.LEGACY_RAID.MULTI.ALL },
					}),
					crit(19521, {	-- Sha of Fear
						["_encounter"] = { 709, DIFFICULTY.LEGACY_RAID.MULTI.ALL },
					}),
				}),
				ach(6670),	-- Terrace of Endless Spring Guild Run
			}),
			n(VENDORS, {
				-- #if NOT ANYCLASSIC
				n(RAID_FINDER_VENDOR, {
					["provider"] = { "n", 64606 },	-- Commander Oxheart <Valor Quartermaster>
					["coord"] = { 37.8, 64.6, TOWNLONG_STEPPES },
					["groups"] = {
						cl(WARRIOR, {
							-- DPS
							tokencost(TOKENS.RAIDFINDER.PROTECTOR.HELM, i(86673)),		-- Helmet of Resounding Rings
							tokencost(TOKENS.RAIDFINDER.PROTECTOR.SHOULDERS, i(86669)),	-- Pauldrons of Resounding Rings

							-- Tank
							tokencost(TOKENS.RAIDFINDER.PROTECTOR.HELM, i(86666)),		-- Faceguard of Resounding Rings
							tokencost(TOKENS.RAIDFINDER.PROTECTOR.SHOULDERS, i(86664)),	-- Shoulderguards of Resounding Rings
						}),
						cl(PALADIN, {
							-- DPS
							tokencost(TOKENS.RAIDFINDER.CONQUEROR.HELM, i(86681)),		-- White Tiger Helmet
							tokencost(TOKENS.RAIDFINDER.CONQUEROR.SHOULDERS, i(86679)),	-- White Tiger Pauldrons

							-- Healer
							tokencost(TOKENS.RAIDFINDER.CONQUEROR.HELM, i(86686)),		-- White Tiger Headguard
							tokencost(TOKENS.RAIDFINDER.CONQUEROR.SHOULDERS, i(86684)),	-- White Tiger Mantle

							-- Tank
							tokencost(TOKENS.RAIDFINDER.CONQUEROR.HELM, i(86661)),		-- White Tiger Faceguard
							tokencost(TOKENS.RAIDFINDER.CONQUEROR.SHOULDERS, i(86659)),	-- White Tiger Shoulderguards
						}),
						cl(DEATHKNIGHT, {
							-- DPS
							tokencost(TOKENS.RAIDFINDER.VANQUISHER.HELM, i(86676)),			-- Helmet of the Lost Catacomb
							tokencost(TOKENS.RAIDFINDER.VANQUISHER.SHOULDERS, i(86674)),	-- Pauldrons of the Lost Catacomb

							-- Tank
							tokencost(TOKENS.RAIDFINDER.VANQUISHER.HELM, i(86656)),			-- Faceguard of the Lost Catacomb
							tokencost(TOKENS.RAIDFINDER.VANQUISHER.SHOULDERS, i(86654)),	-- Shoulderguards of the Lost Catacomb
						}),
						cl(HUNTER, {
							tokencost(TOKENS.RAIDFINDER.PROTECTOR.HELM, i(86636)),		-- Yaungol Slayer's Headguard
							tokencost(TOKENS.RAIDFINDER.PROTECTOR.SHOULDERS, i(86634)),	-- Yaungol Slayer's Spaulders
						}),
						cl(ROGUE, {
							tokencost(TOKENS.RAIDFINDER.VANQUISHER.HELM, i(86641)),			-- Helmet of the Thousandfold Blades
							tokencost(TOKENS.RAIDFINDER.VANQUISHER.SHOULDERS, i(86639)),	-- Spaulders of the Thousandfold Blades
						}),
						cl(PRIEST, {
							-- DPS
							tokencost(TOKENS.RAIDFINDER.CONQUEROR.HELM, i(86705)),		-- Guardian Serpent Hood
							tokencost(TOKENS.RAIDFINDER.CONQUEROR.SHOULDERS, i(86708)),	-- Guardian Serpent Shoulderguards

							-- Healer
							tokencost(TOKENS.RAIDFINDER.CONQUEROR.HELM, i(86702)),		-- Guardian Serpent Cowl
							tokencost(TOKENS.RAIDFINDER.CONQUEROR.SHOULDERS, i(86699)),	-- Guardian Serpent Mantle
						}),
						cl(SHAMAN, {
							-- DPS (Enhance)
							tokencost(TOKENS.RAIDFINDER.PROTECTOR.HELM, i(86626)),		-- Firebird's Helmet
							tokencost(TOKENS.RAIDFINDER.PROTECTOR.SHOULDERS, i(86624)),	-- Firebird's Spaulders

							-- DPS (Elemental)
							tokencost(TOKENS.RAIDFINDER.PROTECTOR.HELM, i(86631)),		-- Firebird's Headpiece
							tokencost(TOKENS.RAIDFINDER.PROTECTOR.SHOULDERS, i(86633)),	-- Firebird's Shoulderwraps

							-- Healer
							tokencost(TOKENS.RAIDFINDER.PROTECTOR.HELM, i(86691)),		-- Firebird's Faceguard
							tokencost(TOKENS.RAIDFINDER.PROTECTOR.SHOULDERS, i(86689)),	-- Firebird's Mantle
						}),
						cl(MAGE, {
							tokencost(TOKENS.RAIDFINDER.VANQUISHER.HELM, i(86717)),			-- Hood of the Burning Scroll
							tokencost(TOKENS.RAIDFINDER.VANQUISHER.SHOULDERS, i(86714)),	-- Mantle of the Burning Scroll
						}),
						cl(MONK, {
							-- DPS
							tokencost(TOKENS.RAIDFINDER.PROTECTOR.HELM, i(86736)),		-- Red Crane Headpiece
							tokencost(TOKENS.RAIDFINDER.PROTECTOR.SHOULDERS, i(86738)),	-- Red Crane Spaulders

							-- Healer
							tokencost(TOKENS.RAIDFINDER.PROTECTOR.HELM, i(86730)),		-- Red Crane Helm
							tokencost(TOKENS.RAIDFINDER.PROTECTOR.SHOULDERS, i(86733)),	-- Red Crane Mantle

							-- Tank
							tokencost(TOKENS.RAIDFINDER.PROTECTOR.HELM, i(86726)),		-- Red Crane Crown
							tokencost(TOKENS.RAIDFINDER.PROTECTOR.SHOULDERS, i(86724)),	-- Red Crane Shoulderguards
						}),
						cl(WARLOCK, {
							tokencost(TOKENS.RAIDFINDER.CONQUEROR.HELM, i(86710)),		-- Sha-Skin Hood
							tokencost(TOKENS.RAIDFINDER.CONQUEROR.SHOULDERS, i(86713)),	-- Sha-Skin Mantle
						}),
						cl(DRUID, {
							-- DPS (Boomkin)
							tokencost(TOKENS.RAIDFINDER.VANQUISHER.HELM, i(86647)),			-- Eternal Blossom Cover
							tokencost(TOKENS.RAIDFINDER.VANQUISHER.SHOULDERS, i(86644)),	-- Eternal Blossom Shoulderwraps

							-- DPS (Feral)
							tokencost(TOKENS.RAIDFINDER.VANQUISHER.HELM, i(86651)),			-- Eternal Blossom Headpiece
							tokencost(TOKENS.RAIDFINDER.VANQUISHER.SHOULDERS, i(86649)),	-- Eternal Blossom Spaulders

							-- Healer
							tokencost(TOKENS.RAIDFINDER.VANQUISHER.HELM, i(86697)),			-- Eternal Blossom Helm
							tokencost(TOKENS.RAIDFINDER.VANQUISHER.SHOULDERS, i(86694)),	-- Eternal Blossom Mantle

							-- Tank
							tokencost(TOKENS.RAIDFINDER.VANQUISHER.HELM, i(86721)),			-- Eternal Blossom Headguard
							tokencost(TOKENS.RAIDFINDER.VANQUISHER.SHOULDERS, i(86723)),	-- Eternal Blossom Shoulderguards
						}),
					},
				}),
				-- #endif
				n(RAID_NORMAL_VENDOR, {
					["provider"] = { "n", 64606 },	-- Commander Oxheart <Valor Quartermaster>
					["coord"] = { 37.8, 64.6, TOWNLONG_STEPPES },
					["groups"] = {
						cl(WARRIOR, {
							-- DPS
							tokencost(TOKENS.NORMAL.PROTECTOR.HELM, i(85333)),		-- Helmet of Resounding Rings
							tokencost(TOKENS.NORMAL.PROTECTOR.SHOULDERS, i(85329)),	-- Pauldrons of Resounding Rings

							-- Tank
							tokencost(TOKENS.NORMAL.PROTECTOR.HELM, i(85326)),		-- Faceguard of Resounding Rings
							tokencost(TOKENS.NORMAL.PROTECTOR.SHOULDERS, i(85324)),	-- Shoulderguards of Resounding Rings
						}),
						cl(PALADIN, {
							-- DPS
							tokencost(TOKENS.NORMAL.CONQUEROR.HELM, i(85341)),		-- White Tiger Helmet
							tokencost(TOKENS.NORMAL.CONQUEROR.SHOULDERS, i(85339)),	-- White Tiger Pauldrons

							-- Healer
							tokencost(TOKENS.NORMAL.CONQUEROR.HELM, i(85346)),		-- White Tiger Headguard
							tokencost(TOKENS.NORMAL.CONQUEROR.SHOULDERS, i(85344)),	-- White Tiger Mantle

							-- Tank
							tokencost(TOKENS.NORMAL.CONQUEROR.HELM, i(85321)),		-- White Tiger Faceguard
							tokencost(TOKENS.NORMAL.CONQUEROR.SHOULDERS, i(85319)),	-- White Tiger Shoulderguards
						}),
						cl(DEATHKNIGHT, {
							-- DPS
							tokencost(TOKENS.NORMAL.VANQUISHER.HELM, i(85336)),			-- Helmet of the Lost Catacomb
							tokencost(TOKENS.NORMAL.VANQUISHER.SHOULDERS, i(85334)),	-- Pauldrons of the Lost Catacomb

							-- Tank
							tokencost(TOKENS.NORMAL.VANQUISHER.HELM, i(85316)),			-- Faceguard of the Lost Catacomb
							tokencost(TOKENS.NORMAL.VANQUISHER.SHOULDERS, i(85314)),	-- Shoulderguards of the Lost Catacomb
						}),
						cl(HUNTER, {
							tokencost(TOKENS.NORMAL.PROTECTOR.HELM, i(85296)),		-- Yaungol Slayer's Headguard
							tokencost(TOKENS.NORMAL.PROTECTOR.SHOULDERS, i(85294)),	-- Yaungol Slayer's Spaulders
						}),
						cl(ROGUE, {
							tokencost(TOKENS.NORMAL.VANQUISHER.HELM, i(85301)),			-- Helmet of the Thousandfold Blades
							tokencost(TOKENS.NORMAL.VANQUISHER.SHOULDERS, i(85299)),	-- Spaulders of the Thousandfold Blades
						}),
						cl(PRIEST, {
							-- DPS
							tokencost(TOKENS.NORMAL.CONQUEROR.HELM, i(85365)),		-- Guardian Serpent Hood
							tokencost(TOKENS.NORMAL.CONQUEROR.SHOULDERS, i(85368)),	-- Guardian Serpent Shoulderguards

							-- Healer
							tokencost(TOKENS.NORMAL.CONQUEROR.HELM, i(85362)),		-- Guardian Serpent Cowl
							tokencost(TOKENS.NORMAL.CONQUEROR.SHOULDERS, i(85359)),	-- Guardian Serpent Mantle
						}),
						cl(SHAMAN, {
							-- DPS (Enhance)
							tokencost(TOKENS.NORMAL.PROTECTOR.HELM, i(85286)),		-- Firebird's Helmet
							tokencost(TOKENS.NORMAL.PROTECTOR.SHOULDERS, i(85284)),	-- Firebird's Spaulders

							-- DPS (Elemental)
							tokencost(TOKENS.NORMAL.PROTECTOR.HELM, i(85291)),		-- Firebird's Headpiece
							tokencost(TOKENS.NORMAL.PROTECTOR.SHOULDERS, i(85293)),	-- Firebird's Shoulderwraps

							-- Healer
							tokencost(TOKENS.NORMAL.PROTECTOR.HELM, i(85351)),		-- Firebird's Faceguard
							tokencost(TOKENS.NORMAL.PROTECTOR.SHOULDERS, i(85349)),	-- Firebird's Mantle
						}),
						cl(MAGE, {
							tokencost(TOKENS.NORMAL.VANQUISHER.HELM, i(85377)),			-- Hood of the Burning Scroll
							tokencost(TOKENS.NORMAL.VANQUISHER.SHOULDERS, i(85374)),	-- Mantle of the Burning Scroll
						}),
						cl(MONK, {
							-- DPS
							tokencost(TOKENS.NORMAL.PROTECTOR.HELM, i(85396)),		-- Red Crane Headpiece
							tokencost(TOKENS.NORMAL.PROTECTOR.SHOULDERS, i(85398)),	-- Red Crane Spaulders

							-- Healer
							tokencost(TOKENS.NORMAL.PROTECTOR.HELM, i(85390)),		-- Red Crane Helm
							tokencost(TOKENS.NORMAL.PROTECTOR.SHOULDERS, i(85393)),	-- Red Crane Mantle

							-- Tank
							tokencost(TOKENS.NORMAL.PROTECTOR.HELM, i(85386)),		-- Red Crane Crown
							tokencost(TOKENS.NORMAL.PROTECTOR.SHOULDERS, i(85384)),	-- Red Crane Shoulderguards
						}),
						cl(WARLOCK, {
							tokencost(TOKENS.NORMAL.CONQUEROR.HELM, i(85370)),		-- Sha-Skin Hood
							tokencost(TOKENS.NORMAL.CONQUEROR.SHOULDERS, i(85373)),	-- Sha-Skin Mantle
						}),
						cl(DRUID, {
							-- DPS (Boomkin)
							tokencost(TOKENS.NORMAL.VANQUISHER.HELM, i(85307)),			-- Eternal Blossom Cover
							tokencost(TOKENS.NORMAL.VANQUISHER.SHOULDERS, i(85304)),	-- Eternal Blossom Shoulderwraps

							-- DPS (Feral)
							tokencost(TOKENS.NORMAL.VANQUISHER.HELM, i(85311)),			-- Eternal Blossom Headpiece
							tokencost(TOKENS.NORMAL.VANQUISHER.SHOULDERS, i(85309)),	-- Eternal Blossom Spaulders

							-- Healer
							tokencost(TOKENS.NORMAL.VANQUISHER.HELM, i(85357)),			-- Eternal Blossom Helm
							tokencost(TOKENS.NORMAL.VANQUISHER.SHOULDERS, i(85354)),	-- Eternal Blossom Mantle

							-- Tank
							tokencost(TOKENS.NORMAL.VANQUISHER.HELM, i(85381)),			-- Eternal Blossom Headguard
							tokencost(TOKENS.NORMAL.VANQUISHER.SHOULDERS, i(85383)),	-- Eternal Blossom Shoulderguards
						}),
					},
				}),
				n(RAID_HEROIC_VENDOR, {
					["provider"] = { "n", 64606 },	-- Commander Oxheart <Valor Quartermaster>
					["coord"] = { 37.8, 64.6, TOWNLONG_STEPPES },
					["groups"] = {
						cl(WARRIOR, {
							-- DPS
							tokencost(TOKENS.HEROIC.PROTECTOR.HELM, i(87192)),		-- Helmet of Resounding Rings
							tokencost(TOKENS.HEROIC.PROTECTOR.SHOULDERS, i(87196)),	-- Pauldrons of Resounding Rings

							-- Tank
							tokencost(TOKENS.HEROIC.PROTECTOR.HELM, i(87199)),		-- Faceguard of Resounding Rings
							tokencost(TOKENS.HEROIC.PROTECTOR.SHOULDERS, i(87201)),	-- Shoulderguards of Resounding Rings
						}),
						cl(PALADIN, {
							-- DPS
							tokencost(TOKENS.HEROIC.CONQUEROR.HELM, i(87101)),		-- White Tiger Helmet
							tokencost(TOKENS.HEROIC.CONQUEROR.SHOULDERS, i(87108)),	-- White Tiger Pauldrons

							-- Healer
							tokencost(TOKENS.HEROIC.CONQUEROR.HELM, i(87106)),		-- White Tiger Headguard
							tokencost(TOKENS.HEROIC.CONQUEROR.SHOULDERS, i(87113)),	-- White Tiger Mantle

							-- Tank
							tokencost(TOKENS.HEROIC.CONQUEROR.HELM, i(87111)),		-- White Tiger Faceguard
							tokencost(TOKENS.HEROIC.CONQUEROR.SHOULDERS, i(87103)),	-- White Tiger Shoulderguards
						}),
						cl(DEATHKNIGHT, {
							-- DPS
							tokencost(TOKENS.HEROIC.VANQUISHER.HELM, i(86915)),			-- Helmet of the Lost Catacomb
							tokencost(TOKENS.HEROIC.VANQUISHER.SHOULDERS, i(86917)),	-- Pauldrons of the Lost Catacomb

							-- Tank
							tokencost(TOKENS.HEROIC.VANQUISHER.HELM, i(86920)),			-- Faceguard of the Lost Catacomb
							tokencost(TOKENS.HEROIC.VANQUISHER.SHOULDERS, i(86922)),	-- Shoulderguards of the Lost Catacomb
						}),
						cl(HUNTER, {
							tokencost(TOKENS.HEROIC.PROTECTOR.HELM, i(87004)),		-- Yaungol Slayer's Headguard
							tokencost(TOKENS.HEROIC.PROTECTOR.SHOULDERS, i(87006)),	-- Yaungol Slayer's Spaulders
						}),
						cl(ROGUE, {
							tokencost(TOKENS.HEROIC.VANQUISHER.HELM, i(87126)),			-- Helmet of the Thousandfold Blades
							tokencost(TOKENS.HEROIC.VANQUISHER.SHOULDERS, i(87128)),	-- Spaulders of the Thousandfold Blades
						}),
						cl(PRIEST, {
							-- DPS
							tokencost(TOKENS.HEROIC.CONQUEROR.HELM, i(87120)),		-- Guardian Serpent Hood
							tokencost(TOKENS.HEROIC.CONQUEROR.SHOULDERS, i(87123)),	-- Guardian Serpent Shoulderguards

							-- Healer
							tokencost(TOKENS.HEROIC.CONQUEROR.HELM, i(87115)),		-- Guardian Serpent Cowl
							tokencost(TOKENS.HEROIC.CONQUEROR.SHOULDERS, i(87118)),	-- Guardian Serpent Mantle
						}),
						cl(SHAMAN, {
							-- DPS (Enhance)
							tokencost(TOKENS.HEROIC.PROTECTOR.HELM, i(87136)),		-- Firebird's Helmet
							tokencost(TOKENS.HEROIC.PROTECTOR.SHOULDERS, i(87138)),	-- Firebird's Spaulders

							-- DPS (Elemental)
							tokencost(TOKENS.HEROIC.PROTECTOR.HELM, i(87141)),		-- Firebird's Headpiece
							tokencost(TOKENS.HEROIC.PROTECTOR.SHOULDERS, i(87143)),	-- Firebird's Shoulderwraps

							-- Healer
							tokencost(TOKENS.HEROIC.PROTECTOR.HELM, i(87131)),		-- Firebird's Faceguard
							tokencost(TOKENS.HEROIC.PROTECTOR.SHOULDERS, i(87133)),	-- Firebird's Mantle
						}),
						cl(MAGE, {
							tokencost(TOKENS.HEROIC.VANQUISHER.HELM, i(87008)),			-- Hood of the Burning Scroll
							tokencost(TOKENS.HEROIC.VANQUISHER.SHOULDERS, i(87011)),	-- Mantle of the Burning Scroll
						}),
						cl(MONK, {
							-- DPS
							tokencost(TOKENS.HEROIC.PROTECTOR.HELM, i(87086)),		-- Red Crane Headpiece
							tokencost(TOKENS.HEROIC.PROTECTOR.SHOULDERS, i(87088)),	-- Red Crane Spaulders

							-- Healer
							tokencost(TOKENS.HEROIC.PROTECTOR.HELM, i(87090)),		-- Red Crane Helm
							tokencost(TOKENS.HEROIC.PROTECTOR.SHOULDERS, i(87093)),	-- Red Crane Mantle

							-- Tank
							tokencost(TOKENS.HEROIC.PROTECTOR.HELM, i(87096)),		-- Red Crane Crown
							tokencost(TOKENS.HEROIC.PROTECTOR.SHOULDERS, i(87098)),	-- Red Crane Shoulderguards
						}),
						cl(WARLOCK, {
							tokencost(TOKENS.HEROIC.CONQUEROR.HELM, i(87188)),		-- Sha-Skin Hood
							tokencost(TOKENS.HEROIC.CONQUEROR.SHOULDERS, i(87191)),	-- Sha-Skin Mantle
						}),
						cl(DRUID, {
							-- DPS (Boomkin)
							tokencost(TOKENS.HEROIC.VANQUISHER.HELM, i(86934)),			-- Eternal Blossom Cover
							tokencost(TOKENS.HEROIC.VANQUISHER.SHOULDERS, i(86937)),	-- Eternal Blossom Shoulderwraps

							-- DPS (Feral)
							tokencost(TOKENS.HEROIC.VANQUISHER.HELM, i(86925)),			-- Eternal Blossom Headpiece
							tokencost(TOKENS.HEROIC.VANQUISHER.SHOULDERS, i(86927)),	-- Eternal Blossom Spaulders

							-- Healer
							tokencost(TOKENS.HEROIC.VANQUISHER.HELM, i(86929)),			-- Eternal Blossom Helm
							tokencost(TOKENS.HEROIC.VANQUISHER.SHOULDERS, i(86932)),	-- Eternal Blossom Mantle

							-- Tank
							tokencost(TOKENS.HEROIC.VANQUISHER.HELM, i(86940)),			-- Eternal Blossom Headguard
							tokencost(TOKENS.HEROIC.VANQUISHER.SHOULDERS, i(86942)),	-- Eternal Blossom Shoulderguards
						}),
					},
				}),
			}),
			d(DIFFICULTY.LEGACY_RAID.MULTI.ALL, {
				-- #if AFTER 6.0.1
				["crs"] = { 80633 },	-- Lorewalker Han <Raid Finder Storyteller>
				["coord"] = { 83.0, 30.6, VALE_OF_ETERNAL_BLOSSOMS },
				-- #endif
				["groups"] = {
					n(ZONE_DROPS, {
						i(86238),	-- Pattern: Chestguard of Nemeses (RECIPE!)
						i(86272),	-- Pattern: Fists of Lightning (RECIPE!)
						i(86279),	-- Pattern: Liferuned Leather Gloves (RECIPE!)
						i(86280),	-- Pattern: Murderer's Gloves (RECIPE!)
						i(86281),	-- Pattern: Nightfire Robe (RECIPE!)
						i(86283),	-- Pattern: Raiment of Blood and Bone (RECIPE!)
						i(86284),	-- Pattern: Raven Lord's Gloves (RECIPE!)
						i(86297),	-- Pattern: Stormbreaker Chestguard (RECIPE!)
						i(86379),	-- Pattern: Robe of Eternal Rule (RECIPE!)
						i(86380),	-- Pattern: Imperial Silk Gloves (RECIPE!)
						i(86381),	-- Pattern: Legacy of the Emperor (RECIPE!)
						i(86382),	-- Pattern: Touch of the Light (RECIPE!)
						i(87408),	-- Plans: Unyielding Bloodplate (RECIPE!)
						i(87409),	-- Plans: Gauntlets of Battle Command (RECIPE!)
						i(87410),	-- Plans: Ornate Battleplate of the Master (RECIPE!)
						i(87411),	-- Plans: Bloodforged Warfists (RECIPE!)
						i(87412),	-- Plans: Chestplate of Limitless Faith (RECIPE!)
						i(87413),	-- Plans: Gauntlets of Unbound Devotion (RECIPE!)
					}),
					e(683, {	-- Protectors of the Endless
						["crs"] = {
							60586,	-- Elder Asani
							60585,	-- Elder Regail
							60583,	-- Protector Kaolan
						},
					}),
					e(742, {	-- Tsulong
						["crs"] = { 62442 },	-- Tsulong
						["groups"] = {
							i(167051, {	-- Azure Windseeker (PET!)
								["timeline"] = { ADDED_8_1_5 },
							}),
						},
					}),
					e(729, {	-- Lei Shi
						["crs"] = { 62983 },	-- Lei Shi
						["groups"] = {
							i(167052, {	-- Spirit of the Spring (PET!)
								["timeline"] = { ADDED_8_1_5 },
							}),
						},
					}),
					e(709, {	-- Sha of Fear
						["crs"] = { 60999 },	-- Sha of Fear
						["groups"] = {
							i(87210),	-- Chimera of Fear
							i(138805, {	-- Illusion: Jade Spirit (ILLUSION!)
								["timeline"] = { ADDED_7_0_3 },
							}),
							i(122199, {	-- Music Roll: Heart of Pandaria
								["timeline"] = { ADDED_6_1_0 },
							}),
						},
					}),
				},
			}),
			-- #if NOT ANYCLASSIC
			d(DIFFICULTY.LEGACY_RAID.FINDER, {
				-- #if AFTER 6.0.1
				["crs"] = { 80633 },	-- Lorewalker Han <Raid Finder Storyteller>
				["coord"] = { 83.0, 30.6, VALE_OF_ETERNAL_BLOSSOMS },
				-- #endif
				["ignoreBonus"] = true,
				["groups"] = {
					i(89808, {	-- Dividends of the Everlasting Spring (Original)
						["description"] = "Contains 28g 50s.\n\nThis item and other consolation items like it created many riots on the WoW Forums and continued to do so until they added the updated bags in 5.2.0.",
						["timeline"] = { ADDED_5_0_4, REMOVED_5_2_0 },
					}),
					i(89857, {	-- Dividends of the Everlasting Spring (Original)
						["description"] = "Contains 28g 50s.\n\nThis item and other consolation items like it created many riots on the WoW Forums and continued to do so until they added the updated bags in 5.2.0.",
						["timeline"] = { ADDED_5_0_4, REMOVED_5_2_0 },
					}),
					i(95617, {	-- Dividends of the Everlasting Spring
						["description"] = "This item is awarded as a consolation prize to players who do not win loot after defeating a boss encounter in the Raid Finder mode of Heart of Fear.",
						["timeline"] = { ADDED_5_2_0, REMOVED_8_0_1 },
						["sym"] = {{ "select", "itemID", 95618 }},	-- Cache of Mogu Riches
					}),
					header(HEADERS.Achievement, 6689, {	-- Terrace of Endless Spring
						e(683, {	-- Protectors of the Endless
							["crs"] = {
								60586,	-- Elder Asani
								60585,	-- Elder Regail
								60583,	-- Protector Kaolan
							},
							["groups"] = {
								i(86878),	-- Asani's Uncleansed Sandals
								i(86868),	-- Bracers of Defiled Earth
								i(86876),	-- Casque of Expelled Corruption
								i(86874),	-- Cloak of Overwhelming Corruption
								i(86875),	-- Cuffs of the Corrupted Waters
								i(86870),	-- Deepwater Greatboots
								i(86872),	-- Kaolan's Withering Necklace
								i(89978),	-- Legguards of Failing Purification
								i(86877),	-- Lightning Prisoner's Boots
								i(86869),	-- Regail's Band of the Endless
								i(86909),	-- Regail's Crackling Dagger
								i(86871),	-- Shackle of Eversparks
								i(89979),	-- Waterborne Shoulderguards
								i(86873),	-- Watersoul Signet
							},
						}),
						e(742, {	-- Tsulong
							["crs"] = { 62442 },	-- Tsulong
							["groups"] = {
								i(86884),	-- Belt of Embodied Terror
								i(86900),	-- Binder's Chain of Unending Summer
								i(86883),	-- Daybreak Drape
								i(86880),	-- Dread Shadow Ring
								i(89983),	-- Fear-Blackened Leggings
								i(86879),	-- Gao-Rei, Staff of the Legendary Protector
								i(89980),	-- Gauntlets of the Shadow's Caress
								i(89981),	-- Grasps of Serpentine Might
								i(86895),	-- Healer's Belt of Final Winter
								i(86896),	-- Invoker's Belt of Final Winter
								i(86886),	-- Loshan, Terror Incarnate
								i(86902),	-- Mender's Girdle of Endless Spring
								i(86904),	-- Patroller's Girdle of Endless Spring
								i(86903),	-- Protector's Girdle of Endless Spring
								i(86901),	-- Ranger's Chain of Unending Summer
								i(86888),	-- Sandals of the Blackest Night
								i(89982),	-- Shoulderpads of Twisted Fate
								i(86887),	-- Sollerets of Instability
								i(86897),	-- Sorcerer's Belt of Final Winter
								i(86885),	-- Spirits of the Sun
								i(86899),	-- Stalker's Cord of Eternal Autumn
								i(86881),	-- Stuff of Nightmares
								i(86882),	-- Sunwrought Mail Hauberk
								i(86898),	-- Weaver's Cord of Eternal Autumn
							},
						}),
						e(729, {	-- Lei Shi
							["crs"] = { 62983 },	-- Lei Shi
							["groups"] = {
								i(89277, {	-- Shoulders of the Shadowy Conqueror
									-- #if AFTER 7.2.0
									["description"] = "Paladin completionists will want to turn this into the vendor since one piece can be awarded in any spec.",
									-- #endif
								}),
								i(89278),	-- Shoulders of the Shadowy Protector
								i(89276),	-- Shoulders of the Shadowy Vanquisher
								i(86900),	-- Binder's Chain of Unending Summer
								i(86891),	-- Cuirass of the Animated Protector
								i(86894),	-- Darkmist Vortex
								i(86895),	-- Healer's Belt of Final Winter
								i(86896),	-- Invoker's Belt of Final Winter
								i(86893),	-- Jin'ya, Orb of the Waterspeaker
								i(86902),	-- Mender's Girdle of Endless Spring
								i(86904),	-- Patroller's Girdle of Endless Spring
								i(86903),	-- Protector's Girdle of Endless Spring
								i(86901),	-- Ranger's Chain of Unending Summer
								i(86892),	-- Robes of the Unknown Fear
								i(86897),	-- Sorcerer's Belt of Final Winter
								i(86910),	-- Spiritsever
								i(86899),	-- Stalker's Cord of Eternal Autumn
								i(86889),	-- Taoren, the Soul Burner
								i(86890),	-- Terror in the Mists
								i(86898),	-- Weaver's Cord of Eternal Autumn
							},
						}),
						e(709, {	-- Sha of Fear
							["crs"] = { 60999 },	-- Sha of Fear
							["groups"] = {
								i(89274, {	-- Helm of the Shadowy Conqueror
									-- #if AFTER 7.2.0
									["description"] = "Paladin completionists will want to turn this into the vendor since one piece can be awarded in any spec.",
									-- #endif
								}),
								i(89275),	-- Helm of the Shadowy Protector
								i(89273),	-- Helm of the Shadowy Vanquisher
								i(86908),	-- Dreadwoven Leggings of Failure
								i(86907),	-- Essence of Terror
								i(86906),	-- Kilrak, Jaws of Terror
								i(89984),	-- Robes of Pinioned Eyes
								i(89986),	-- Shadowgrip Girdle
								i(86905),	-- Shin'ka, Execution of Dominion
								i(89985),	-- Wrap of Instant Petrification
							},
						}),
					}),
				},
			}),
			-- #endif
			d(DIFFICULTY.LEGACY_RAID.MULTI.NORMAL_HEROIC, {
				e(683, {	-- Protectors of the Endless
					["crs"] = {
						60586,	-- Elder Asani
						60585,	-- Elder Regail
						60583,	-- Protector Kaolan
					},
					["groups"] = {
						ach(6717, {	-- Power Overwhelming
							crit(19624, {	-- Protector Kaolan defeated last
								["cr"] = 60583,	-- Protector Kaolan
							}),
							crit(19625, {	-- Elder Regail defeated last
								["cr"] = 60585,	-- Elder Regail
							}),
							crit(19626, {	-- Elder Asani defeated last
								["cr"] = 60586,	-- Elder Asani
							}),
						}),
					},
				}),
				e(742, {	-- Tsulong
					["crs"] = { 62442 },	-- Tsulong
					["groups"] = {
						ach(6933),	-- Who's Got Two Green Thumbs?
					},
				}),
				e(729, {	-- Lei Shi
					["crs"] = { 62983 },	-- Lei Shi
					["groups"] = {
						ach(6824),	-- Face Clutchers
					},
				}),
				e(709, {	-- Sha of Fear
					["crs"] = { 60999 },	-- Sha of Fear
					["groups"] = {
						ach(6825),	-- The Mind-Killer
						ach(8248, {	-- Ahead of the Curve: Sha of Fear
							["timeline"] = { ADDED_5_0_4, REMOVED_5_2_0 },
							-- #if MOP
							["OnUpdate"] = CUTTING_EDGE_ONUPDATE;
							-- #endif
						}),
					},
				}),
			}),
			d(DIFFICULTY.LEGACY_RAID.MULTI.NORMAL, {
				["ignoreBonus"] = true,
				["groups"] = {
					e(683, {	-- Protectors of the Endless
						["crs"] = {
							60583,	-- Protector Kaolan
							60586,	-- Elder Asani
							60585,	-- Elder Regail
						},
						["groups"] = {
							n(QUALITY_ELITE, {
								["description"] = "You must kill Protector Kaolan last!",
								["groups"] = {
									i(90528),	-- Asani's Uncleansed Sandals (Elite)
									i(90520),	-- Bracers of Defiled Earth (Elite)
									i(90530),	-- Casque of Expelled Corruption (Elite)
									i(90526),	-- Cloak of Overwhelming Corruption (Elite)
									i(90524),	-- Cuffs of the Corrupted Waters (Elite)
									i(90521),	-- Deepwater Greatboots (Elite)
									i(90523),	-- Kaolan's Withering Necklace (Elite)
									i(90518),	-- Legguards of Failing Purification (Elite)
									i(90529),	-- Lightning Prisoner's Boots (Elite)
									i(90517),	-- Regail's Band of the Endless (Elite)
									i(90527),	-- Regail's Crackling Dagger (Elite)
									i(90522),	-- Shackle of Eversparks (Elite)
									i(90519),	-- Waterborne Shoulderguards (Elite)
									i(90525),	-- Watersoul Signet (Elite)
								},
							}),
							i(86320),	-- Asani's Uncleansed Sandals
							i(86230),	-- Bracers of Defiled Earth
							i(86318),	-- Casque of Expelled Corruption
							i(86316),	-- Cloak of Overwhelming Corruption
							i(86317),	-- Cuffs of the Corrupted Waters
							i(86232),	-- Deepwater Greatboots
							i(86234),	-- Kaolan's Withering Necklace
							i(89841),	-- Legguards of Failing Purification
							i(86319),	-- Lightning Prisoner's Boots
							i(86231),	-- Regail's Band of the Endless
							i(86390),	-- Regail's Crackling Dagger
							i(86233),	-- Shackle of Eversparks
							i(89885),	-- Waterborne Shoulderguards
							i(86315),	-- Watersoul Signet
						},
					}),
					e(742, {	-- Tsulong
						["crs"] = { 62442 },	-- Tsulong
						["groups"] = {
							i(86326),	-- Belt of Embodied Terror
							i(86342),	-- Binder's Chain of Unending Summer
							i(86325),	-- Daybreak Drape
							i(86322),	-- Dread Shadow Ring
							i(89884),	-- Fear-Blackened Leggings
							i(86321),	-- Gao-Rei, Staff of the Legendary Protector
							i(89842),	-- Gauntlets of the Shadow's Caress
							i(89843),	-- Grasps of Serpentine Might
							i(86337),	-- Healer's Belt of Final Winter
							i(86338),	-- Invoker's Belt of Final Winter
							i(86328),	-- Loshan, Terror Incarnate
							i(86383),	-- Mender's Girdle of Endless Spring
							i(86385),	-- Patroller's Girdle of Endless Spring
							i(86384),	-- Protector's Girdle of Endless Spring
							i(86343),	-- Ranger's Girdle of Unending Summer
							i(86330),	-- Sandals of the Blackest Night
							i(89883),	-- Shoulderpads of Twisted Fate
							i(86329),	-- Sollerets of Instability
							i(86339),	-- Sorceror's Belt of Final Winter
							i(86327),	-- Spirits of the Sun
							i(86341),	-- Stalker's Cord of Eternal Autumn
							i(86323),	-- Stuff of Nightmares
							i(86324),	-- Sunwrought Mail Hauberk
							i(86340),	-- Weaver's Cord of Eternal Autumn
						},
					}),
					e(729, {	-- Lei Shi
						["crs"] = { 62983 },	-- Lei Shi
						["groups"] = {
							i(89246, {	-- Shoulders of the Shadowy Conqueror
								-- #if AFTER 7.2.0
								["description"] = "Paladin completionists will want to turn this into the vendor since one piece can be awarded in any spec.",
								-- #endif
							}),
							i(89247),	-- Shoulders of the Shadowy Protector
							i(89248),	-- Shoulders of the Shadowy Vanquisher
							i(86342),	-- Binder's Chain of Unending Summer
							i(86333),	-- Cuirass of the Animated Protector
							i(86336),	-- Darkmist Vortex
							i(86337),	-- Healer's Belt of Final Winter
							i(86338),	-- Invoker's Belt of Final Winter
							i(86335),	-- Jin'ya, Orb of the Waterspeaker
							i(86383),	-- Mender's Girdle of Endless Spring
							i(86385),	-- Patroller's Girdle of Endless Spring
							i(86384),	-- Protector's Girdle of Endless Spring
							i(86343),	-- Ranger's Chain of Unending Summer
							i(86334),	-- Robes of the Unknown Fear
							i(86339),	-- Sorceror's Belt of Final Winter
							i(86391),	-- Spiritsever
							i(86341),	-- Stalker's Cord of Eternal Autumn
							i(86331),	-- Taoren, the Soul Burner
							i(86332),	-- Terror in the Mists
							i(86340),	-- Weaver's Cord of Eternal Autumn
						},
					}),
					e(709, {	-- Sha of Fear
						["crs"] = { 60999 },	-- Sha of Fear
						["groups"] = {
							i(89235, {	-- Helm of the Shadowy Conqueror
								-- #if AFTER 7.2.0
								["description"] = "Paladin completionists will want to turn this into the vendor since one piece can be awarded in any spec.",
								-- #endif
							}),
							i(89236),	-- Helm of the Shadowy Protector
							i(89234),	-- Helm of the Shadowy Vanquisher
							i(86389),	-- Dreadwoven Leggings of Failure
							i(86388),	-- Essence of Terror
							i(86387),	-- Kilrak, Jaws of Terror
							i(89887),	-- Robes of Pinioned Eyes
							i(89839),	-- Shadowgrip Girdle
							i(86386),	-- Shin'ka, Execution of Dominion
							i(89886),	-- Wrap of Instant Petrification
						},
					}),
				},
			}),
			d(DIFFICULTY.LEGACY_RAID.MULTI.HEROIC, {
				["ignoreBonus"] = true,
				["groups"] = {
					e(683, {	-- Protectors of the Endless
						["crs"] = {
							60583,	-- Protector Kaolan
							60586,	-- Elder Asani
							60585,	-- Elder Regail
						},
						["groups"] = {
							ach(6731),	-- Heroic: Protectors of the Endless
							n(QUALITY_ELITE, {
								["description"] = "You must kill Protector Kaolan last!",
								["groups"] = {
									i(90514),	-- Asani's Uncleansed Sandals (Elite)
									i(90506),	-- Bracers of Defiled Earth (Elite)
									i(90516),	-- Casque of Expelled Corruption (Elite)
									i(90512),	-- Cloak of Overwhelming Corruption (Elite)
									i(90510),	-- Cuffs of the Corrupted Waters (Elite)
									i(90507),	-- Deepwater Greatboots (Elite)
									i(90509),	-- Kaolan's Withering Necklace (Elite)
									i(90504),	-- Legguards of Failing Purification (Elite)
									i(90515),	-- Lightning Prisoner's Boots (Elite)
									i(90503),	-- Regail's Band of the Endless (Elite)
									i(90513),	-- Regail's Crackling Dagger (Elite)
									i(90508),	-- Shackle of Eversparks (Elite)
									i(90505),	-- Waterborne Shoulderguards (Elite)
									i(90511),	-- Watersoul Signet (Elite)
								},
							}),
							i(87153),	-- Asani's Uncleansed Sandals
							i(87145),	-- Bracers of Defiled Earth
							i(87155),	-- Casque of Expelled Corruption
							i(87150),	-- Cloak of Overwhelming Corruption
							i(87149),	-- Cuffs of the Corrupted Waters
							i(87146),	-- Deepwater Greatboots
							i(87148),	-- Kaolan's Withering Necklace
							i(89943),	-- Legguards of Failing Purification
							i(87154),	-- Lightning Prisoner's Boots
							i(87144),	-- Regail's Band of the Endless
							i(87152),	-- Regail's Crackling Dagger
							i(87147),	-- Shackle of Eversparks
							i(89944),	-- Waterborne Shoulderguards
							i(87151),	-- Watersoul Signet
						},
					}),
					e(742, {	-- Tsulong
						["crs"] = { 62442 },	-- Tsulong
						["groups"] = {
							ach(6732),	-- Heroic: Tsulong
							i(87161),	-- Belt of Embodied Terror
							i(87183),	-- Binder's Chain of Unending Summer
							i(87159),	-- Daybreak Drape
							i(87158),	-- Dread Shadow Ring
							i(89948),	-- Fear-Blackened Leggings
							i(87156),	-- Gao-Rei, Staff of the Legendary Protector
							i(89945),	-- Gauntlets of the Shadow's Caress
							i(89946),	-- Grasps of Serpentine Might
							i(87178),	-- Healer's Belt of Final Winter
							i(87177),	-- Invoker's Belt of Final Winter
							i(87164),	-- Loshan, Terror Incarnate
							i(87184),	-- Mender's Girdle of Endless Spring
							i(87186),	-- Patroller's Girdle of Endless Spring
							i(87185),	-- Protector's Girdle of Endless Spring
							i(87182),	-- Ranger's Chain of Unending Summer
							i(87162),	-- Sandals of the Blackest Night
							i(89947),	-- Shoulderpads of Twisted Fate
							i(87165),	-- Sollerets of Instability
							i(87179),	-- Sorceror's Belt of Final Winter
							i(87163),	-- Spirits of the Sun
							i(87180),	-- Stalker's Cord of Eternal Autumn
							i(87160),	-- Stuff of Nightmares
							i(87157),	-- Sunwrought Mail Hauberk
							i(87181),	-- Weaver's Cord of Eternal Autumn
						},
					}),
					e(729, {	-- Lei Shi
						["crs"] = { 62983 },	-- Lei Shi
						["groups"] = {
							ach(6733),	-- Heroic: Lei Shi
							i(89262, {	-- Shoulders of the Shadowy Conqueror
								-- #if AFTER 7.2.0
								["description"] = "Paladin completionists will want to turn this into the vendor since one piece can be awarded in any spec.",
								-- #endif
							}),
							i(89263),	-- Shoulders of the Shadowy Protector
							i(89261),	-- Shoulders of the Shadowy Vanquisher
							i(87183),	-- Binder's Chain of Unending Summer
							i(87171),	-- Cuirass of the Animated Protector
							i(87172),	-- Darkmist Vortex
							i(87178),	-- Healer's Belt of Final Winter
							i(87177),	-- Invoker's Belt of Final Winter
							i(87170),	-- Jin'ya, Orb of the Waterspeaker
							i(87184),	-- Mender's Girdle of Endless Spring
							i(87186),	-- Patroller's Girdle of Endless Spring
							i(87185),	-- Protector's Girdle of Endless Spring
							i(87182),	-- Ranger's Chain of Unending Summer
							i(87169),	-- Robes of the Unknown Fear
							i(87179),	-- Sorceror's Belt of Final Winter
							i(87166),	-- Spiritsever
							i(87180),	-- Stalker's Cord of Eternal Autumn
							i(87168),	-- Taoren, the Soul Burner
							i(87167),	-- Terror in the Mists
							i(87181),	-- Weaver's Cord of Eternal Autumn
						},
					}),
					e(709, {	-- Sha of Fear
						["crs"] = { 60999 },	-- Sha of Fear
						["groups"] = {
							ach(6734, {	-- Heroic: Sha of Fear
								title(198),	-- the Fearless
							}),
							ach(7487, {	-- Cutting Edge: Sha of Fear
								["timeline"] = { ADDED_5_0_4, REMOVED_5_2_0 },
								-- #if MOP
								["OnUpdate"] = CUTTING_EDGE_ONUPDATE;
								-- #endif
							}),
							ach(6676),	-- Heroic: Sha of Fear Guild Run
							ach(6678, {	-- Realm First! Sha of Fear
								["timeline"] = { ADDED_5_0_4, REMOVED_5_2_0 },
								-- #if MOP
								["OnUpdate"] = CUTTING_EDGE_ONUPDATE;
								-- #endif
							}),
							i(89259, {	-- Helm of the Shadowy Conqueror
								-- #if AFTER 7.2.0
								["description"] = "Paladin completionists will want to turn this into the vendor since one piece can be awarded in any spec.",
								-- #endif
							}),
							i(89260),	-- Helm of the Shadowy Protector
							i(89258),	-- Helm of the Shadowy Vanquisher
							i(87174),	-- Dreadwoven Leggings of Failure
							i(87175),	-- Essence of Terror
							i(87173),	-- Kilrak, Jaws of Terror
							i(89949),	-- Robes of Pinioned Eyes
							i(89951),	-- Shadowgrip Girdle
							i(87176),	-- Shin'ka, Execution of Dominion
							i(89950),	-- Wrap of Instant Petrification
						},
					}),
				},
			}),
		},
	})),
})));
