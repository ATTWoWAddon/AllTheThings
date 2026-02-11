-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

local TOKENS = {
	RAIDFINDER = {
		CONQUEROR = {	-- Paladin, Priest, Warlock
			CHEST = 89265,		-- Chest of the Shadowy Conquerer
			GAUNTLETS = 89271,	-- Gauntlets of the Shadowy Conquerer
			LEGS = 89268,		-- Leggings of the Shadowy Conquerer
		},
		PROTECTOR = {	-- Warrior, Hunter, Shaman, Monk
			CHEST = 89266,		-- Chest of the Shadowy Protector
			GAUNTLETS = 89272,	-- Gauntlets of the Shadowy Protector
			LEGS = 89269,		-- Leggings of the Shadowy Protector
		},
		VANQUISHER = {	-- Rogue, Death Knight, Mage, Druid
			CHEST = 89264,		-- Chest of the Shadowy Vanquisher
			GAUNTLETS = 89270,	-- Gauntlets of the Shadowy Vanquisher
			LEGS = 89267,		-- Leggings of the Shadowy Vanquisher
		},
	},
	NORMAL = {
		CONQUEROR = {	-- Paladin, Priest, Warlock
			CHEST = 89237,		-- Chest of the Shadowy Conquerer
			GAUNTLETS = 89240,	-- Gauntlets of the Shadowy Conquerer
			LEGS = 89243,		-- Leggings of the Shadowy Conquerer
		},
		PROTECTOR = {	-- Warrior, Hunter, Shaman, Monk
			CHEST = 89238,		-- Chest of the Shadowy Protector
			GAUNTLETS = 89241,	-- Gauntlets of the Shadowy Protector
			LEGS = 89244,		-- Leggings of the Shadowy Protector
		},
		VANQUISHER = {	-- Rogue, Death Knight, Mage, Druid
			CHEST = 89239,		-- Chest of the Shadowy Vanquisher
			GAUNTLETS = 89242,	-- Gauntlets of the Shadowy Vanquisher
			LEGS = 89245,		-- Leggings of the Shadowy Vanquisher
		},
	},
	HEROIC = {
		CONQUEROR = {	-- Paladin, Priest, Warlock
			CHEST = 89250,		-- Chest of the Shadowy Conquerer
			GAUNTLETS = 89256,	-- Gauntlets of the Shadowy Conquerer
			LEGS = 89253,		-- Leggings of the Shadowy Conquerer
		},
		PROTECTOR = {	-- Warrior, Hunter, Shaman, Monk
			CHEST = 89251,		-- Chest of the Shadowy Protector
			GAUNTLETS = 89257,	-- Gauntlets of the Shadowy Protector
			LEGS = 89254,		-- Leggings of the Shadowy Protector
		},
		VANQUISHER = {	-- Rogue, Death Knight, Mage, Druid
			CHEST = 89249,		-- Chest of the Shadowy Vanquisher
			GAUNTLETS = 89255,	-- Gauntlets of the Shadowy Vanquisher
			LEGS = 89252,		-- Leggings of the Shadowy Vanquisher
		},
	},
};

-- #if MOP
local CUTTING_EDGE_ONUPDATE = [[function(t)
	if _.Settings:GetUnobtainableFilter(]] .. MOP_PHASE_RISE_OF_THE_THUNDER_KING .. [[) then
		t.u = ]] .. REMOVED_FROM_GAME .. [[;
		t.rwp = nil;
	else
		t.u = ]] .. MOP_PHASE_ONE_HEART_OF_FEAR .. [[;
		t.rwp = 50200;
	end
end]];
-- #endif

root(ROOTS.Instances, expansion(EXPANSION.MOP, bubbleDown({ ["timeline"] = { ADDED_5_0_4 } }, {
	applyclassicphase(MOP_PHASE_ONE_HEART_OF_FEAR, inst(330, {	-- Heart of Fear
		["coord"] = { 39.0, 34.9, DREAD_WASTES },	-- Heart of Fear
		["maps"] = {
			474,	-- Oratorium of the Voice
			475,	-- Heart of Fear
		},
		["sharedLockout"] = 1,
		["isRaid"] = true,
		["groups"] = {
			n(ACHIEVEMENTS, {
				ach(6718, {	-- The Dread Approach
					crit(19628, {	-- Imperial Vizier Zor'lok
						["_encounter"] = { 745, DIFFICULTY.LEGACY_RAID.MULTI.ALL },
					}),
					crit(19629, {	-- Blade Lord Ta'yak
						["_encounter"] = { 744, DIFFICULTY.LEGACY_RAID.MULTI.ALL },
					}),
					crit(19632, {	-- Garalon
						["_encounter"] = { 713, DIFFICULTY.LEGACY_RAID.MULTI.ALL },
					}),
				}),
				ach(6845, {	-- Nightmare of Shek'zeer
					crit(19631, {	-- Wind Lord Mel'jarak
						["_encounter"] = { 741, DIFFICULTY.LEGACY_RAID.MULTI.ALL },
					}),
					crit(19633, {	-- Amber-Shaper Un'sok
						["_encounter"] = { 737, DIFFICULTY.LEGACY_RAID.MULTI.ALL },
					}),
					crit(19634, {	-- Grand Empress Shek'zeer
						["_encounter"] = { 743, DIFFICULTY.LEGACY_RAID.MULTI.ALL },
					}),
				}),
				ach(6669),	-- Heart of Fear Guild Run
			}),
			n(VENDORS, {
				-- #if NOT ANYCLASSIC
				n(RAID_FINDER_VENDOR, {
					["provider"] = { "n", 64606 },	-- Commander Oxheart <Valor Quartermaster>
					["coord"] = { 37.8, 64.6, TOWNLONG_STEPPES },
					["groups"] = {
						cl(WARRIOR, {
							-- DPS
							tokencost(TOKENS.RAIDFINDER.PROTECTOR.CHEST, i(86672)),		-- Battleplate of Resounding Rings
							tokencost(TOKENS.RAIDFINDER.PROTECTOR.GAUNTLETS, i(86671)),	-- Gauntlets of Resounding Rings
							tokencost(TOKENS.RAIDFINDER.PROTECTOR.LEGS, i(86670)),		-- Legplates of Resounding Rings

							-- Tank
							tokencost(TOKENS.RAIDFINDER.PROTECTOR.CHEST, i(86668)),		-- Chestguard of Resounding Rings
							tokencost(TOKENS.RAIDFINDER.PROTECTOR.GAUNTLETS, i(86667)),	-- Handguards of Resounding Rings
							tokencost(TOKENS.RAIDFINDER.PROTECTOR.LEGS, i(86665)),		-- Legguards of Resounding Rings
						}),
						cl(PALADIN, {
							-- DPS
							tokencost(TOKENS.RAIDFINDER.CONQUEROR.CHEST, i(86683)),		-- White Tiger Battleplate
							tokencost(TOKENS.RAIDFINDER.CONQUEROR.GAUNTLETS, i(86682)),	-- White Tiger Gauntlets
							tokencost(TOKENS.RAIDFINDER.CONQUEROR.LEGS, i(86680)),		-- White Tiger Legplates

							-- Healer
							tokencost(TOKENS.RAIDFINDER.CONQUEROR.CHEST, i(86688)),		-- White Tiger Breastplate
							tokencost(TOKENS.RAIDFINDER.CONQUEROR.GAUNTLETS, i(86687)),	-- White Tiger Gloves
							tokencost(TOKENS.RAIDFINDER.CONQUEROR.LEGS, i(86685)),		-- White Tiger Greaves

							-- Tank
							tokencost(TOKENS.RAIDFINDER.CONQUEROR.CHEST, i(86663)),		-- White Tiger Chestguard
							tokencost(TOKENS.RAIDFINDER.CONQUEROR.GAUNTLETS, i(86662)),	-- White Tiger Handguards
							tokencost(TOKENS.RAIDFINDER.CONQUEROR.LEGS, i(86660)),		-- White Tiger Legguards
						}),
						cl(DEATHKNIGHT, {
							-- DPS
							tokencost(TOKENS.RAIDFINDER.VANQUISHER.CHEST, i(86678)),		-- Breastplate of the Lost Catacomb
							tokencost(TOKENS.RAIDFINDER.VANQUISHER.GAUNTLETS, i(86677)),	-- Gauntlets of the Lost Catacomb
							tokencost(TOKENS.RAIDFINDER.VANQUISHER.LEGS, i(86675)),			-- Greaves of the Lost Catacomb

							-- Tank
							tokencost(TOKENS.RAIDFINDER.VANQUISHER.CHEST, i(86658)),		-- Chestguard of the Lost Catacomb
							tokencost(TOKENS.RAIDFINDER.VANQUISHER.GAUNTLETS, i(86657)),	-- Handguards of the Lost Catacomb
							tokencost(TOKENS.RAIDFINDER.VANQUISHER.LEGS, i(86655)),			-- Legguards of the Lost Catacomb
						}),
						cl(HUNTER, {
							tokencost(TOKENS.RAIDFINDER.PROTECTOR.CHEST, i(86638)),		-- Yaungol Slayer's Tunic
							tokencost(TOKENS.RAIDFINDER.PROTECTOR.GAUNTLETS, i(86637)),	-- Yaungol Slayer's Gloves
							tokencost(TOKENS.RAIDFINDER.PROTECTOR.LEGS, i(86635)),		-- Yaungol Slayer's Legguards
						}),
						cl(ROGUE, {
							tokencost(TOKENS.RAIDFINDER.VANQUISHER.CHEST, i(86643)),		-- Tunic of the Thousandfold Blades
							tokencost(TOKENS.RAIDFINDER.VANQUISHER.GAUNTLETS, i(86642)),	-- Gloves of the Thousandfold Blades
							tokencost(TOKENS.RAIDFINDER.VANQUISHER.LEGS, i(86640)),			-- Legguards of the Thousandfold Blades
						}),
						cl(PRIEST, {
							-- DPS
							tokencost(TOKENS.RAIDFINDER.CONQUEROR.CHEST, i(86707)),		-- Guardian Serpent Raiment
							tokencost(TOKENS.RAIDFINDER.CONQUEROR.GAUNTLETS, i(86704)),	-- Guardian Serpent Gloves
							tokencost(TOKENS.RAIDFINDER.CONQUEROR.LEGS, i(86706)),		-- Guardian Serpent Leggings

							-- Healer
							tokencost(TOKENS.RAIDFINDER.CONQUEROR.CHEST, i(86700)),		-- Guardian Serpent Robes
							tokencost(TOKENS.RAIDFINDER.CONQUEROR.GAUNTLETS, i(86703)),	-- Guardian Serpent Handwraps
							tokencost(TOKENS.RAIDFINDER.CONQUEROR.LEGS, i(86701)),		-- Guardian Serpent Legwraps
						}),
						cl(SHAMAN, {
							-- DPS (Enhance)
							tokencost(TOKENS.RAIDFINDER.PROTECTOR.CHEST, i(86628)),		-- Firebird's Cuirass
							tokencost(TOKENS.RAIDFINDER.PROTECTOR.GAUNTLETS, i(86627)),	-- Firebird's Grips
							tokencost(TOKENS.RAIDFINDER.PROTECTOR.LEGS, i(86625)),		-- Firebird's Legguards

							-- DPS (Elemental)
							tokencost(TOKENS.RAIDFINDER.PROTECTOR.CHEST, i(86629)),		-- Firebird's Hauberk
							tokencost(TOKENS.RAIDFINDER.PROTECTOR.GAUNTLETS, i(86630)),	-- Firebird's Gloves
							tokencost(TOKENS.RAIDFINDER.PROTECTOR.LEGS, i(86632)),		-- Firebird's Kilt

							-- Healer
							tokencost(TOKENS.RAIDFINDER.PROTECTOR.CHEST, i(86693)),		-- Firebird's Tunic
							tokencost(TOKENS.RAIDFINDER.PROTECTOR.GAUNTLETS, i(86692)),	-- Firebird's Handwraps
							tokencost(TOKENS.RAIDFINDER.PROTECTOR.LEGS, i(86690)),		-- Firebird's Legwraps
						}),
						cl(MAGE, {
							tokencost(TOKENS.RAIDFINDER.VANQUISHER.CHEST, i(86715)),		-- Robes of the Burning Scroll
							tokencost(TOKENS.RAIDFINDER.VANQUISHER.GAUNTLETS, i(86718)),	-- Gloves of the Burning Scroll
							tokencost(TOKENS.RAIDFINDER.VANQUISHER.LEGS, i(86716)),			-- Leggings of the Burning Scroll
						}),
						cl(MONK, {
							-- DPS
							tokencost(TOKENS.RAIDFINDER.PROTECTOR.CHEST, i(86734)),		-- Red Crane Tunic
							tokencost(TOKENS.RAIDFINDER.PROTECTOR.GAUNTLETS, i(86735)),	-- Red Crane Grips
							tokencost(TOKENS.RAIDFINDER.PROTECTOR.LEGS, i(86737)),		-- Red Crane Leggings

							-- Healer
							tokencost(TOKENS.RAIDFINDER.PROTECTOR.CHEST, i(86732)),		-- Red Crane Vest
							tokencost(TOKENS.RAIDFINDER.PROTECTOR.GAUNTLETS, i(86729)),	-- Red Crane Handwraps
							tokencost(TOKENS.RAIDFINDER.PROTECTOR.LEGS, i(86731)),		-- Red Crane Legwraps

							-- Tank
							tokencost(TOKENS.RAIDFINDER.PROTECTOR.CHEST, i(86728)),		-- Red Crane Chestguard
							tokencost(TOKENS.RAIDFINDER.PROTECTOR.GAUNTLETS, i(86727)),	-- Red Crane Gauntlets
							tokencost(TOKENS.RAIDFINDER.PROTECTOR.LEGS, i(86725)),		-- Red Crane Legguards
						}),
						cl(WARLOCK, {
							tokencost(TOKENS.RAIDFINDER.CONQUEROR.CHEST, i(86712)),		-- Sha-Skin Robes
							tokencost(TOKENS.RAIDFINDER.CONQUEROR.GAUNTLETS, i(86709)),	-- Sha-Skin Gloves
							tokencost(TOKENS.RAIDFINDER.CONQUEROR.LEGS, i(86711)),		-- Sha-Skin Leggings
						}),
						cl(DRUID, {
							-- DPS (Boomkin)
							tokencost(TOKENS.RAIDFINDER.VANQUISHER.CHEST, i(86645)),		-- Eternal Blossom Vestment
							tokencost(TOKENS.RAIDFINDER.VANQUISHER.GAUNTLETS, i(86648)),	-- Eternal Blossom Gloves
							tokencost(TOKENS.RAIDFINDER.VANQUISHER.LEGS, i(86646)),			-- Eternal Blossom Leggings

							-- DPS (Feral)
							tokencost(TOKENS.RAIDFINDER.VANQUISHER.CHEST, i(86653)),		-- Eternal Blossom Raiment
							tokencost(TOKENS.RAIDFINDER.VANQUISHER.GAUNTLETS, i(86652)),	-- Eternal Blossom Grips
							tokencost(TOKENS.RAIDFINDER.VANQUISHER.LEGS, i(86650)),			-- Eternal Blossom Legguards

							-- Healer
							tokencost(TOKENS.RAIDFINDER.VANQUISHER.CHEST, i(86695)),		-- Eternal Blossom Robes
							tokencost(TOKENS.RAIDFINDER.VANQUISHER.GAUNTLETS, i(86698)),	-- Eternal Blossom Handwraps
							tokencost(TOKENS.RAIDFINDER.VANQUISHER.LEGS, i(86696)),			-- Eternal Blossom Legwraps

							-- Tank
							tokencost(TOKENS.RAIDFINDER.VANQUISHER.CHEST, i(86719)),		-- Eternal Blossom Tunic
							tokencost(TOKENS.RAIDFINDER.VANQUISHER.GAUNTLETS, i(86720)),	-- Eternal Blossom Handguards
							tokencost(TOKENS.RAIDFINDER.VANQUISHER.LEGS, i(86722)),			-- Eternal Blossom Breeches
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
							tokencost(TOKENS.NORMAL.PROTECTOR.CHEST, i(85332)),		-- Battleplate of Resounding Rings
							tokencost(TOKENS.NORMAL.PROTECTOR.GAUNTLETS, i(85331)),	-- Gauntlets of Resounding Rings
							tokencost(TOKENS.NORMAL.PROTECTOR.LEGS, i(85330)),		-- Legplates of Resounding Rings

							-- Tank
							tokencost(TOKENS.NORMAL.PROTECTOR.CHEST, i(85328)),		-- Chestguard of Resounding Rings
							tokencost(TOKENS.NORMAL.PROTECTOR.GAUNTLETS, i(85327)),	-- Handguards of Resounding Rings
							tokencost(TOKENS.NORMAL.PROTECTOR.LEGS, i(85325)),		-- Legguards of Resounding Rings
						}),
						cl(PALADIN, {
							-- DPS
							tokencost(TOKENS.NORMAL.CONQUEROR.CHEST, i(85343)),		-- White Tiger Battleplate
							tokencost(TOKENS.NORMAL.CONQUEROR.GAUNTLETS, i(85342)),	-- White Tiger Gauntlets
							tokencost(TOKENS.NORMAL.CONQUEROR.LEGS, i(85340)),		-- White Tiger Legplates

							-- Healer
							tokencost(TOKENS.NORMAL.CONQUEROR.CHEST, i(85348)),		-- White Tiger Breastplate
							tokencost(TOKENS.NORMAL.CONQUEROR.GAUNTLETS, i(85347)),	-- White Tiger Gloves
							tokencost(TOKENS.NORMAL.CONQUEROR.LEGS, i(85345)),		-- White Tiger Greaves

							-- Tank
							tokencost(TOKENS.NORMAL.CONQUEROR.CHEST, i(85323)),		-- White Tiger Chestguard
							tokencost(TOKENS.NORMAL.CONQUEROR.GAUNTLETS, i(85322)),	-- White Tiger Handguards
							tokencost(TOKENS.NORMAL.CONQUEROR.LEGS, i(85320)),		-- White Tiger Legguards
						}),
						cl(DEATHKNIGHT, {
							-- DPS
							tokencost(TOKENS.NORMAL.VANQUISHER.CHEST, i(85338)),		-- Breastplate of the Lost Catacomb
							tokencost(TOKENS.NORMAL.VANQUISHER.GAUNTLETS, i(85337)),	-- Gauntlets of the Lost Catacomb
							tokencost(TOKENS.NORMAL.VANQUISHER.LEGS, i(85335)),			-- Greaves of the Lost Catacomb

							-- Tank
							tokencost(TOKENS.NORMAL.VANQUISHER.CHEST, i(85318)),		-- Chestguard of the Lost Catacomb
							tokencost(TOKENS.NORMAL.VANQUISHER.GAUNTLETS, i(85317)),	-- Handguards of the Lost Catacomb
							tokencost(TOKENS.NORMAL.VANQUISHER.LEGS, i(85315)),			-- Legguards of the Lost Catacomb
						}),
						cl(HUNTER, {
							tokencost(TOKENS.NORMAL.PROTECTOR.CHEST, i(85298)),		-- Yaungol Slayer's Tunic
							tokencost(TOKENS.NORMAL.PROTECTOR.GAUNTLETS, i(85297)),	-- Yaungol Slayer's Gloves
							tokencost(TOKENS.NORMAL.PROTECTOR.LEGS, i(85295)),		-- Yaungol Slayer's Legguards
						}),
						cl(ROGUE, {
							tokencost(TOKENS.NORMAL.VANQUISHER.CHEST, i(85303)),		-- Tunic of the Thousandfold Blades
							tokencost(TOKENS.NORMAL.VANQUISHER.GAUNTLETS, i(85302)),	-- Gloves of the Thousandfold Blades
							tokencost(TOKENS.NORMAL.VANQUISHER.LEGS, i(85300)),			-- Legguards of the Thousandfold Blades
						}),
						cl(PRIEST, {
							-- DPS
							tokencost(TOKENS.NORMAL.CONQUEROR.CHEST, i(85367)),		-- Guardian Serpent Raiment
							tokencost(TOKENS.NORMAL.CONQUEROR.GAUNTLETS, i(85364)),	-- Guardian Serpent Gloves
							tokencost(TOKENS.NORMAL.CONQUEROR.LEGS, i(85366)),		-- Guardian Serpent Leggings

							-- Healer
							tokencost(TOKENS.NORMAL.CONQUEROR.CHEST, i(85360)),		-- Guardian Serpent Robes
							tokencost(TOKENS.NORMAL.CONQUEROR.GAUNTLETS, i(85363)),	-- Guardian Serpent Handwraps
							tokencost(TOKENS.NORMAL.CONQUEROR.LEGS, i(85361)),		-- Guardian Serpent Legwraps
						}),
						cl(SHAMAN, {
							-- DPS (Enhance)
							tokencost(TOKENS.NORMAL.PROTECTOR.CHEST, i(85288)),		-- Firebird's Cuirass
							tokencost(TOKENS.NORMAL.PROTECTOR.GAUNTLETS, i(85287)),	-- Firebird's Grips
							tokencost(TOKENS.NORMAL.PROTECTOR.LEGS, i(85285)),		-- Firebird's Legguards

							-- DPS (Elemental)
							tokencost(TOKENS.NORMAL.PROTECTOR.CHEST, i(85289)),		-- Firebird's Hauberk
							tokencost(TOKENS.NORMAL.PROTECTOR.GAUNTLETS, i(85290)),	-- Firebird's Gloves
							tokencost(TOKENS.NORMAL.PROTECTOR.LEGS, i(85292)),		-- Firebird's Kilt

							-- Healer
							tokencost(TOKENS.NORMAL.PROTECTOR.CHEST, i(85353)),		-- Firebird's Tunic
							tokencost(TOKENS.NORMAL.PROTECTOR.GAUNTLETS, i(85352)),	-- Firebird's Handwraps
							tokencost(TOKENS.NORMAL.PROTECTOR.LEGS, i(85350)),		-- Firebird's Legwraps
						}),
						cl(MAGE, {
							tokencost(TOKENS.NORMAL.VANQUISHER.CHEST, i(85375)),		-- Robes of the Burning Scroll
							tokencost(TOKENS.NORMAL.VANQUISHER.GAUNTLETS, i(85378)),	-- Gloves of the Burning Scroll
							tokencost(TOKENS.NORMAL.VANQUISHER.LEGS, i(85376)),			-- Leggings of the Burning Scroll
						}),
						cl(MONK, {
							-- DPS
							tokencost(TOKENS.NORMAL.PROTECTOR.CHEST, i(85394)),		-- Red Crane Tunic
							tokencost(TOKENS.NORMAL.PROTECTOR.GAUNTLETS, i(85395)),	-- Red Crane Grips
							tokencost(TOKENS.NORMAL.PROTECTOR.LEGS, i(85397)),		-- Red Crane Leggings

							-- Healer
							tokencost(TOKENS.NORMAL.PROTECTOR.CHEST, i(85392)),		-- Red Crane Vest
							tokencost(TOKENS.NORMAL.PROTECTOR.GAUNTLETS, i(85389)),	-- Red Crane Handwraps
							tokencost(TOKENS.NORMAL.PROTECTOR.LEGS, i(85391)),		-- Red Crane Legwraps

							-- Tank
							tokencost(TOKENS.NORMAL.PROTECTOR.CHEST, i(85388)),		-- Red Crane Chestguard
							tokencost(TOKENS.NORMAL.PROTECTOR.GAUNTLETS, i(85387)),	-- Red Crane Gauntlets
							tokencost(TOKENS.NORMAL.PROTECTOR.LEGS, i(85385)),		-- Red Crane Legguards
						}),
						cl(WARLOCK, {
							tokencost(TOKENS.NORMAL.CONQUEROR.CHEST, i(85372)),		-- Sha-Skin Robes
							tokencost(TOKENS.NORMAL.CONQUEROR.GAUNTLETS, i(85369)),	-- Sha-Skin Gloves
							tokencost(TOKENS.NORMAL.CONQUEROR.LEGS, i(85371)),		-- Sha-Skin Leggings
						}),
						cl(DRUID, {
							-- DPS (Boomkin)
							tokencost(TOKENS.NORMAL.VANQUISHER.CHEST, i(85305)),		-- Eternal Blossom Vestment
							tokencost(TOKENS.NORMAL.VANQUISHER.GAUNTLETS, i(85308)),	-- Eternal Blossom Gloves
							tokencost(TOKENS.NORMAL.VANQUISHER.LEGS, i(85306)),			-- Eternal Blossom Leggings

							-- DPS (Feral)
							tokencost(TOKENS.NORMAL.VANQUISHER.CHEST, i(85313)),		-- Eternal Blossom Raiment
							tokencost(TOKENS.NORMAL.VANQUISHER.GAUNTLETS, i(85312)),	-- Eternal Blossom Grips
							tokencost(TOKENS.NORMAL.VANQUISHER.LEGS, i(85310)),			-- Eternal Blossom Legguards

							-- Healer
							tokencost(TOKENS.NORMAL.VANQUISHER.CHEST, i(85355)),		-- Eternal Blossom Robes
							tokencost(TOKENS.NORMAL.VANQUISHER.GAUNTLETS, i(85358)),	-- Eternal Blossom Handwraps
							tokencost(TOKENS.NORMAL.VANQUISHER.LEGS, i(85356)),			-- Eternal Blossom Legwraps

							-- Tank
							tokencost(TOKENS.NORMAL.VANQUISHER.CHEST, i(85379)),		-- Eternal Blossom Tunic
							tokencost(TOKENS.NORMAL.VANQUISHER.GAUNTLETS, i(85380)),	-- Eternal Blossom Handguards
							tokencost(TOKENS.NORMAL.VANQUISHER.LEGS, i(85382)),			-- Eternal Blossom Breeches
						}),
					},
				}),
				n(RAID_HEROIC_VENDOR, {
					["provider"] = { "n", 64606 },	-- Commander Oxheart <Valor Quartermaster>
					["coord"] = { 37.8, 64.6, TOWNLONG_STEPPES },
					["groups"] = {
						cl(WARRIOR, {
							-- DPS
							tokencost(TOKENS.HEROIC.PROTECTOR.CHEST, i(87193)),		-- Battleplate of Resounding Rings
							tokencost(TOKENS.HEROIC.PROTECTOR.GAUNTLETS, i(87194)),	-- Gauntlets of Resounding Rings
							tokencost(TOKENS.HEROIC.PROTECTOR.LEGS, i(87195)),		-- Legplates of Resounding Rings

							-- Tank
							tokencost(TOKENS.HEROIC.PROTECTOR.CHEST, i(87197)),		-- Chestguard of Resounding Rings
							tokencost(TOKENS.HEROIC.PROTECTOR.GAUNTLETS, i(87198)),	-- Handguards of Resounding Rings
							tokencost(TOKENS.HEROIC.PROTECTOR.LEGS, i(87200)),		-- Legguards of Resounding Rings
						}),
						cl(PALADIN, {
							-- DPS
							tokencost(TOKENS.HEROIC.CONQUEROR.CHEST, i(87099)),		-- White Tiger Battleplate
							tokencost(TOKENS.HEROIC.CONQUEROR.GAUNTLETS, i(87105)),	-- White Tiger Gauntlets
							tokencost(TOKENS.HEROIC.CONQUEROR.LEGS, i(87107)),		-- White Tiger Legplates

							-- Healer
							tokencost(TOKENS.HEROIC.CONQUEROR.CHEST, i(87104)),		-- White Tiger Breastplate
							tokencost(TOKENS.HEROIC.CONQUEROR.GAUNTLETS, i(87110)),	-- White Tiger Gloves
							tokencost(TOKENS.HEROIC.CONQUEROR.LEGS, i(87112)),		-- White Tiger Greaves

							-- Tank
							tokencost(TOKENS.HEROIC.CONQUEROR.CHEST, i(87109)),		-- White Tiger Chestguard
							tokencost(TOKENS.HEROIC.CONQUEROR.GAUNTLETS, i(87100)),	-- White Tiger Handguards
							tokencost(TOKENS.HEROIC.CONQUEROR.LEGS, i(87102)),		-- White Tiger Legguards
						}),
						cl(DEATHKNIGHT, {
							-- DPS
							tokencost(TOKENS.HEROIC.VANQUISHER.CHEST, i(86913)),		-- Breastplate of the Lost Catacomb
							tokencost(TOKENS.HEROIC.VANQUISHER.GAUNTLETS, i(86914)),	-- Gauntlets of the Lost Catacomb
							tokencost(TOKENS.HEROIC.VANQUISHER.LEGS, i(86916)),			-- Greaves of the Lost Catacomb

							-- Tank
							tokencost(TOKENS.HEROIC.VANQUISHER.CHEST, i(86918)),		-- Chestguard of the Lost Catacomb
							tokencost(TOKENS.HEROIC.VANQUISHER.GAUNTLETS, i(86919)),	-- Handguards of the Lost Catacomb
							tokencost(TOKENS.HEROIC.VANQUISHER.LEGS, i(86921)),			-- Legguards of the Lost Catacomb
						}),
						cl(HUNTER, {
							tokencost(TOKENS.HEROIC.PROTECTOR.CHEST, i(87002)),		-- Yaungol Slayer's Tunic
							tokencost(TOKENS.HEROIC.PROTECTOR.GAUNTLETS, i(87003)),	-- Yaungol Slayer's Gloves
							tokencost(TOKENS.HEROIC.PROTECTOR.LEGS, i(87005)),		-- Yaungol Slayer's Legguards
						}),
						cl(ROGUE, {
							tokencost(TOKENS.HEROIC.VANQUISHER.CHEST, i(87124)),		-- Tunic of the Thousandfold Blades
							tokencost(TOKENS.HEROIC.VANQUISHER.GAUNTLETS, i(87125)),	-- Gloves of the Thousandfold Blades
							tokencost(TOKENS.HEROIC.VANQUISHER.LEGS, i(87127)),			-- Legguards of the Thousandfold Blades
						}),
						cl(PRIEST, {
							-- DPS
							tokencost(TOKENS.HEROIC.CONQUEROR.CHEST, i(87122)),		-- Guardian Serpent Raiment
							tokencost(TOKENS.HEROIC.CONQUEROR.GAUNTLETS, i(87119)),	-- Guardian Serpent Gloves
							tokencost(TOKENS.HEROIC.CONQUEROR.LEGS, i(87121)),		-- Guardian Serpent Leggings

							-- Healer
							tokencost(TOKENS.HEROIC.CONQUEROR.CHEST, i(87117)),		-- Guardian Serpent Robes
							tokencost(TOKENS.HEROIC.CONQUEROR.GAUNTLETS, i(87114)),	-- Guardian Serpent Handwraps
							tokencost(TOKENS.HEROIC.CONQUEROR.LEGS, i(87116)),		-- Guardian Serpent Legwraps
						}),
						cl(SHAMAN, {
							-- DPS (Enhance)
							tokencost(TOKENS.HEROIC.PROTECTOR.CHEST, i(87134)),		-- Firebird's Cuirass
							tokencost(TOKENS.HEROIC.PROTECTOR.GAUNTLETS, i(87135)),	-- Firebird's Grips
							tokencost(TOKENS.HEROIC.PROTECTOR.LEGS, i(87137)),		-- Firebird's Legguards

							-- DPS (Elemental)
							tokencost(TOKENS.HEROIC.PROTECTOR.CHEST, i(87139)),		-- Firebird's Hauberk
							tokencost(TOKENS.HEROIC.PROTECTOR.GAUNTLETS, i(87140)),	-- Firebird's Gloves
							tokencost(TOKENS.HEROIC.PROTECTOR.LEGS, i(87142)),		-- Firebird's Kilt

							-- Healer
							tokencost(TOKENS.HEROIC.PROTECTOR.CHEST, i(87129)),		-- Firebird's Tunic
							tokencost(TOKENS.HEROIC.PROTECTOR.GAUNTLETS, i(87130)),	-- Firebird's Handwraps
							tokencost(TOKENS.HEROIC.PROTECTOR.LEGS, i(87132)),		-- Firebird's Legwraps
						}),
						cl(MAGE, {
							tokencost(TOKENS.HEROIC.VANQUISHER.CHEST, i(87010)),		-- Robes of the Burning Scroll
							tokencost(TOKENS.HEROIC.VANQUISHER.GAUNTLETS, i(87007)),	-- Gloves of the Burning Scroll
							tokencost(TOKENS.HEROIC.VANQUISHER.LEGS, i(87009)),			-- Leggings of the Burning Scroll
						}),
						cl(MONK, {
							-- DPS
							tokencost(TOKENS.HEROIC.PROTECTOR.CHEST, i(87084)),		-- Red Crane Tunic
							tokencost(TOKENS.HEROIC.PROTECTOR.GAUNTLETS, i(87085)),	-- Red Crane Grips
							tokencost(TOKENS.HEROIC.PROTECTOR.LEGS, i(87087)),		-- Red Crane Leggings

							-- Healer
							tokencost(TOKENS.HEROIC.PROTECTOR.CHEST, i(87092)),		-- Red Crane Vest
							tokencost(TOKENS.HEROIC.PROTECTOR.GAUNTLETS, i(87089)),	-- Red Crane Handwraps
							tokencost(TOKENS.HEROIC.PROTECTOR.LEGS, i(87091)),		-- Red Crane Legwraps

							-- Tank
							tokencost(TOKENS.HEROIC.PROTECTOR.CHEST, i(87094)),		-- Red Crane Chestguard
							tokencost(TOKENS.HEROIC.PROTECTOR.GAUNTLETS, i(87095)),	-- Red Crane Gauntlets
							tokencost(TOKENS.HEROIC.PROTECTOR.LEGS, i(87097)),		-- Red Crane Legguards
						}),
						cl(WARLOCK, {
							tokencost(TOKENS.HEROIC.CONQUEROR.CHEST, i(87190)),		-- Sha-Skin Robes
							tokencost(TOKENS.HEROIC.CONQUEROR.GAUNTLETS, i(87187)),	-- Sha-Skin Gloves
							tokencost(TOKENS.HEROIC.CONQUEROR.LEGS, i(87189)),		-- Sha-Skin Leggings
						}),
						cl(DRUID, {
							-- DPS (Boomkin)
							tokencost(TOKENS.HEROIC.VANQUISHER.CHEST, i(86936)),		-- Eternal Blossom Vestment
							tokencost(TOKENS.HEROIC.VANQUISHER.GAUNTLETS, i(86933)),	-- Eternal Blossom Gloves
							tokencost(TOKENS.HEROIC.VANQUISHER.LEGS, i(86935)),			-- Eternal Blossom Leggings

							-- DPS (Feral)
							tokencost(TOKENS.HEROIC.VANQUISHER.CHEST, i(86923)),		-- Eternal Blossom Raiment
							tokencost(TOKENS.HEROIC.VANQUISHER.GAUNTLETS, i(86924)),	-- Eternal Blossom Grips
							tokencost(TOKENS.HEROIC.VANQUISHER.LEGS, i(86926)),			-- Eternal Blossom Legguards

							-- Healer
							tokencost(TOKENS.HEROIC.VANQUISHER.CHEST, i(86931)),		-- Eternal Blossom Robes
							tokencost(TOKENS.HEROIC.VANQUISHER.GAUNTLETS, i(86928)),	-- Eternal Blossom Handwraps
							tokencost(TOKENS.HEROIC.VANQUISHER.LEGS, i(86930)),			-- Eternal Blossom Legwraps

							-- Tank
							tokencost(TOKENS.HEROIC.VANQUISHER.CHEST, i(86938)),		-- Eternal Blossom Tunic
							tokencost(TOKENS.HEROIC.VANQUISHER.GAUNTLETS, i(86939)),	-- Eternal Blossom Handguards
							tokencost(TOKENS.HEROIC.VANQUISHER.LEGS, i(86941)),			-- Eternal Blossom Breeches
						}),
					},
				}),
			}),
			d(DIFFICULTY.LEGACY_RAID.MULTI.ALL, {
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
					e(745, {	-- Imperial Vizier Zor'lok
						["crs"] = { 62980 },	-- Imperial Vizier Zor'lok
						["groups"] = {
							i(167058, {	-- Kor'thik Swarmling (PET!)
								["timeline"] = { ADDED_8_1_5 },
							}),
						},
					}),
					e(744, {	-- Blade Lord Ta'yak
						["crs"] = { 62543 },	-- Blade Lord Ta'yak
						["groups"] = {
							i(167053, {	-- Amberglow Stinger (PET!)
								["timeline"] = { ADDED_8_1_5 },
							}),
						},
					}),
					e(713, {	-- Garalon
						["crs"] = { 62164 },	-- Garalon
						["groups"] = {
							i(167054, {	-- Spawn of Garalon (PET!)
								["timeline"] = { ADDED_8_1_5 },
							}),
						},
					}),
					e(741, {	-- Wind Lord Mel'jarak
						["crs"] = { 62397 },	-- Wind Lord Mel'jarak
						["groups"] = {

						},
					}),
					e(737, {	-- Amber-Shaper Un'sok
						["crs"] = { 62511 },	-- Amber-Shaper Un'sok
						["groups"] = {
							i(167055, {	-- Living Amber (PET!)
								["timeline"] = { ADDED_8_1_5 },
							}),
						},
					}),
					e(743, {	-- Grand Empress Shek'zeer
						["crs"] = { 62837 },	-- Grand Empress Shek'zeer
						["groups"] = {
							i(167056, {	-- Ravenous Prideling (PET!)
								["timeline"] = { ADDED_8_1_5 },
							}),
						},
					}),
				},
			}),
			-- #if NOT ANYCLASSIC
			d(DIFFICULTY.LEGACY_RAID.FINDER, {
				["description"] = "Loot from this LFR is NOT tradeable to others in group.",
				-- #if AFTER 6.0.1
				["crs"] = { 80633 },	-- Lorewalker Han <Raid Finder Storyteller>
				["coord"] = { 83.0, 30.6, VALE_OF_ETERNAL_BLOSSOMS },
				-- #endif
				["ignoreBonus"] = true,
				["groups"] = {
					i(89807, {	-- Amber Encased Treasure Pouch (Original)
						["description"] = "Contains 28g 50s.\n\nThis item and other consolation items like it created many riots on the WoW Forums and continued to do so until they added the updated bags in 5.2.0.",
						["timeline"] = { ADDED_5_0_4, REMOVED_5_2_0 },
					}),
					i(89856, {	-- Amber Encased Treasure Pouch (Original)
						["description"] = "Contains 28g 50s.\n\nThis item and other consolation items like it created many riots on the WoW Forums and continued to do so until they added the updated bags in 5.2.0.",
						["timeline"] = { ADDED_5_0_4, REMOVED_5_2_0 },
					}),
					i(95619, {	-- Amber Encased Treasure Pouch
						["description"] = "This item is awarded as a consolation prize to players who do not win loot after defeating a boss encounter in the Raid Finder mode of Heart of Fear.",
						["timeline"] = { ADDED_5_2_0, REMOVED_8_0_1 },
						["sym"] = {{ "select", "itemID", 95618 }},	-- Cache of Mogu Riches
					}),
					header(HEADERS.Achievement, 6718, {	-- The Dread Approach
						e(745, {	-- Imperial Vizier Zor'lok
							["crs"] = { 62980 },	-- Imperial Vizier Zor'lok
							["groups"] = {
								i(86854),	-- Articulated Legplates
								i(86815),	-- Attenuating Bracers
								i(86811),	-- Boots of the Still Breath
								i(86816),	-- Chestplate of the Forbidden Tower
								i(86814),	-- Fragment of Fear Made Flesh
								i(86817),	-- Gauntlets of Undesired Gifts
								i(86819),	-- Gloves of Grasping Claws
								i(86812),	-- Hisek's Chrysanthemum Cape
								i(86818),	-- Mail of Screaming Secrets
								i(89952),	-- Pheromone-Coated Choker
								i(89953),	-- Scent-Soaked Sandals
								i(86813),	-- Vizier's Ruby Signet
								i(89954),	-- Warbelt of Sealed Pods
								i(87823),	-- Zor'lok's Fizzing Chestguard
							},
						}),
						e(744, {	-- Blade Lord Ta'yak
							["crs"] = { 62543 },	-- Blade Lord Ta'yak
							["groups"] = {
								i(86825),	-- Boots of the Blowing Wind
								i(86821),	-- Bracers of Unseen Strikes
								i(86826),	-- Bracers of Tempestuous Fury
								i(86824),	-- Choker of the Unleashed Storm
								i(86827),	-- Drape of Gathering Clouds
								i(89957),	-- Hood of Stilled Winds
								i(90739),	-- Kaz'tik's Stormseizer Gauntlets
								i(89956),	-- Pauldrons of the Broken Blade
								i(86820),	-- Ring of the Bladed Tempest
								i(89955),	-- Sword Dancer's Leggings
								i(86829),	-- Tornado-Summoning Censer
								i(86828),	-- Twisting Wind Bracers
								i(86822),	-- Waistplate of Overwhelming Assault
								i(86823),	-- Windblade Talons
							},
						}),
						e(713, {	-- Garalon
							["crs"] = {
								62164,	-- Garalon	-- Maybe Outside Version
								63191 ,	-- Garalon	-- In Raid Version
							},
							["groups"] = {
								i(86834),	-- Bonebreaker Gauntlets
								i(86832),	-- Garalon's Hollow Skull
								i(89958),	-- Garalon's Graven Carapace
								i(86837),	-- Grasps of Panic
								i(86833),	-- Grips of the Leviathan
								i(86831),	-- Legbreaker Greatcloak
								i(86835),	-- Necklace of Congealed Weaknesses
								i(86830),	-- Ring of the Shattered Shell
								i(86838),	-- Robes of Eighty Lights
								i(86836),	-- Sandals of the Unbidden
								i(89959),	-- Shoulders of Foaming Fluids
								i(86840),	-- Stormwake Mistcloak
								i(89960),	-- Vestments of Steaming Ichor
								i(86839),	-- Xaril's Hood of Intoxicating Vapors
							},
						}),
					}),
					header(HEADERS.Achievement, 6845, {	-- Nightmare of Shek'zeer
						e(741, {	-- Wind Lord Mel'jarak
							["crs"] = { 62397 },	-- Wind Lord Mel'jarak
							["groups"] = {
								i(89271, {	-- Gauntlets of the Shadowy Conqueror
									-- #if AFTER 7.2.0
									["description"] = "Paladin completionists will want to turn this into the vendor since one piece can be awarded in any spec.",
									-- #endif
								}),
								i(89272),	-- Gauntlets of the Shadowy Protector
								i(89270),	-- Gauntlets of the Shadowy Vanquisher
								i(86853),	-- Cloak of Raining Blades
								i(86912),	-- Clutches of Dying Hope
								i(86852),	-- Impaling Treads
								i(86856),	-- Korven's Amber-Sealed Beetle
								i(86851),	-- Painful Thorned Ring
								i(86911),	-- Robes of Torn Nightmares
								i(86855),	-- Wingslasher Pauldrons
							},
						}),
						e(737, {	-- Amber-Shaper Un'sok
							["crs"] = { 62511 },	-- Amber-Shaper Un'sok
							["groups"] = {
								i(89268, {	-- Leggings of the Shadowy Conqueror
									-- #if AFTER 7.2.0
									["description"] = "Paladin completionists will want to turn this into the vendor since one piece can be awarded in any spec.",
									-- #endif
								}),
								i(89269),	-- Leggings of the Shadowy Protector
								i(89267),	-- Leggings of the Shadowy Vanquisher
								i(86857),	-- Belt of Malleable Amber
								i(86861),	-- Monstrous Stompers
								i(86863),	-- Scimitar of Seven Stars
								i(86858),	-- Seal of the Profane
								i(86860),	-- Shoulderpads of Misshapen Life
								i(86859),	-- Treads of Deadly Secretions
								i(86862),	-- Un'sok's Amber Scalpel
							},
						}),
						e(743, {	-- Grand Empress Shek'zeer
							["crs"] = { 62837 },	-- Grand Empress Shek'zeer
							["groups"] = {
								i(89265, {	-- Chest of the Shadowy Conqueror
									-- #if AFTER 7.2.0
									["description"] = "Paladin completionists will want to turn this into the vendor since one piece can be awarded in any spec.",
									-- #endif
								}),
								i(89266),	-- Chest of the Shadowy Protector
								i(89264),	-- Chest of the Shadowy Vanquisher
								i(86864),	-- Claws of Shek'zeer
								i(86866),	-- Crown of the Doomed Empress
								i(89962),	-- Hood of Dark Dreams
								i(86865),	-- Kri'tak, Imperial Scepter of the Swarm
								i(86867),	-- Leggings of Shadow Infestation
								i(89963),	-- Legplates of Regal Reinforcement
								i(89961),	-- Shadow Heart Spaulders
							},
						}),
					}),
				},
			}),
			-- #endif
			d(DIFFICULTY.LEGACY_RAID.MULTI.NORMAL_HEROIC, {
				n(ZONE_DROPS, {
					i(86192),	-- Darting Damselfly Cuffs
					i(86186),	-- Gleaming Moth Cuffs
					i(86188),	-- Inlaid Cricket Bracers
					i(86042),	-- Jade Charioteer Figurine
					i(86043),	-- Jade Bandit Figurine
					i(86044),	-- Jade Magistrate Figurine
					i(86045),	-- Jade Courtesan Figurine
					i(86046),	-- Jade Warlord Figurine
					i(86189),	-- Jagged Hornet Bracers
					i(86184),	-- Luminescent Firefly Wristguards
					i(86187),	-- Pearlescent Butterfly Wristbands
					i(86191),	-- Plated Locust Bracers
					i(86190),	-- Serrated Wasp Bracers
					i(86183),	-- Shining Cicada Bracers
					i(86185),	-- Smooth Beetle Wristbands
				}),
				e(745, {	-- Imperial Vizier Zor'lok
					["crs"] = { 62980 },	-- Imperial Vizier Zor'lok
					["groups"] = {
						ach(6937),	-- Overzealous
					},
				}),
				e(744, {	-- Blade Lord Ta'yak
					["crs"] = { 62543 },	-- Blade Lord Ta'yak
					["groups"] = {
						ach(6936),	-- Candle in the Wind
					},
				}),
				e(713, {	-- Garalon
					["crs"] = { 62164 },	-- Garalon
					["groups"] = {
						ach(6553),	-- Like an Arrow to the Face
					},
				}),
				e(741, {	-- Wind Lord Mel'jarak
					["crs"] = { 62397 },	-- Wind Lord Mel'jarak
					["groups"] = {
						ach(6683),	-- Less Than Three
					},
				}),
				e(737, {	-- Amber-Shaper Un'sok
					["crs"] = { 62511 },	-- Amber-Shaper Un'sok
					["groups"] = {
						ach(6518),	-- I Heard You Like Amber...
					},
				}),
				e(743, {	-- Grand Empress Shek'zeer
					["crs"] = { 62837 },	-- Grand Empress Shek'zeer
					["groups"] = {
						ach(6922, {	-- Timing is Everything
							crit(21105, {	-- Defeat 2 Kor'thik Reavers within 10 seconds of each other
								["cr"] = 63591,	-- Kor'thik Reaver
							}),
						}),
						ach(8246, {	-- Ahead of the Curve: Grand Empress Shek'zeer
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
					e(745, {	-- Imperial Vizier Zor'lok
						["crs"] = { 62980 },	-- Imperial Vizier Zor'lok
						["groups"] = {
							i(86203),	-- Articulated Leggings
							i(86157),	-- Attenuating Bracers
							i(86153),	-- Boots of the Still Breath
							i(86158),	-- Chestplate of the Forbidden Tower
							i(86156),	-- Fragment of Fear Made Flesh
							i(86159),	-- Gauntlets of Undesired Gifts
							i(86161),	-- Gloves of Grasping Claws
							i(86154),	-- Hisek's Chrysanthemum Cape
							i(86160),	-- Mail of Screaming Secrets
							i(89827),	-- Pheromone-Coated Choker
							i(89829),	-- Scent-Soaked Sandals
							i(86155),	-- Vizier's Ruby Signet
							i(89826),	-- Warbelt of Sealed Pods
							i(87824),	-- Zor'lok's Fizzing Chestguard
						},
					}),
					e(744, {	-- Blade Lord Ta'yak
						["crs"] = { 62543 },	-- Blade Lord Ta'yak
						["groups"] = {
							i(86167),	-- Boots of the Blowing Wind
							i(86163),	-- Bracers of Unseen Strikes
							i(86168),	-- Bracers of Tempestuous Fury
							i(86166),	-- Choker of the Unleashed Storm
							i(86169),	-- Drape of Gathering Clouds
							i(89831),	-- Hood of Stilled Winds
							i(90738),	-- Kaz'tik's Stormseizer Gauntlets
							i(89828),	-- Pauldrons of the Broken Blade
							i(86162),	-- Ring of the Bladed Tempest
							i(89830),	-- Sword Dancer's Leggings
							i(86171),	-- Tornado-Summoning Censer
							i(86170),	-- Twisting Wind Bracers
							i(86164),	-- Waistplate of Overwhelming Assault
							i(86165),	-- Windblade Talons
						},
					}),
					e(713, {	-- Garalon
						["crs"] = { 62164 },	-- Garalon
						["groups"] = {
							i(86176),	-- Bonebreaker Gauntlets
							i(89832),	-- Garalon's Graven Carapace
							i(86174),	-- Garlon's Hollow Skull
							i(86179),	-- Grasps of Panic
							i(86175),	-- Grips of the Leviathan
							i(86173),	-- Legbreaker Greatcloak
							i(86177),	-- Necklace of Congealed Weaknesses
							i(86172),	-- Ring of the Shattered Shell
							i(86180),	-- Robes of Eighty Lights
							i(86178),	-- Sandals of the Unbidden
							i(89833),	-- Shoulders of Foaming Fluids
							i(86182),	-- Stormwake Mistcloak
							i(89834),	-- Vestments of Steaming Ichor
							i(86181),	-- Xaril's Hood of Intoxicating Vapors
						},
					}),
					e(741, {	-- Wind Lord Mel'jarak
						["crs"] = { 62397 },	-- Wind Lord Mel'jarak
						["groups"] = {
							i(89240, {	-- Gauntlets of the Shadowy Conqueror
								-- #if AFTER 7.2.0
								["description"] = "Paladin completionists will want to turn this into the vendor since one piece can be awarded in any spec.",
								-- #endif
							}),
							i(89241),	-- Gauntlets of the Shadowy Protector
							i(89242),	-- Gauntlets of the Shadowy Vanquisher
							i(86202),	-- Cloak of Raining Blades
							i(86514),	-- Clutches of Dying Hope
							i(86201),	-- Impaling Treads
							i(86205),	-- Korven's Amber-Sealed Beetle
							i(86200),	-- Painful Thorned Ring
							i(86513),	-- Robes of Torn Nightmares
							i(86204),	-- Wingslasher Pauldrons
						},
					}),
					e(737, {	-- Amber-Shaper Un'sok
						["crs"] = { 62511 },	-- Amber-Shaper Un'sok
						["groups"] = {
							i(89243, {	-- Leggings of the Shadowy Conqueror
								-- #if AFTER 7.2.0
								["description"] = "Paladin completionists will want to turn this into the vendor since one piece can be awarded in any spec.",
								-- #endif
							}),
							i(89244),	-- Leggings of the Shadowy Protector
							i(89245),	-- Leggings of the Shadowy Vanquisher
							i(86210),	-- Belt of Malleable Amber
							i(86214),	-- Monstrous Stompers
							i(86219),	-- Scimitar of Seven Stars
							i(86211),	-- Seal of the Profane
							i(86213),	-- Shoulderpads of Misshapen Life
							i(86212),	-- Treads of Deadly Secretions
							i(86217),	-- Un'sok's Amber Scalpel
						},
					}),
					e(743, {	-- Grand Empress Shek'zeer
						["crs"] = { 62837 },	-- Grand Empress Shek'zeer
						["groups"] = {
							i(89237, {	-- Chest of the Shadowy Conqueror
								-- #if AFTER 7.2.0
								["description"] = "Paladin completionists will want to turn this into the vendor since one piece can be awarded in any spec.",
								-- #endif
							}),
							i(89238),	-- Chest of the Shadowy Protector
							i(89239),	-- Chest of the Shadowy Vanquisher
							i(86226),	-- Claws of Shek'zeer
							i(86228),	-- Crown of the Doomed Empress
							i(89835),	-- Hood of Dark Dreams
							i(86227),	-- Kri'tak, Imperial Scepter of the Swarm
							i(86229),	-- Leggings of Shadow Infestation
							i(89837),	-- Legplates of Regal Reinforcement
							i(89836),	-- Shadow Heart Spaulders
						},
					}),
				},
			}),
			d(DIFFICULTY.LEGACY_RAID.MULTI.HEROIC, {
				["ignoreBonus"] = true,
				["groups"] = {
					e(745, {	-- Imperial Vizier Zor'lok
						["crs"] = { 62980 },	-- Imperial Vizier Zor'lok
						["groups"] = {
							ach(6725),	-- Heroic: Imperial Vizier Zor'lok
							i(86944),	-- Articulated Legplates
							i(86948),	-- Attenuating Bracers
							i(86943),	-- Boots of the Still Breath
							i(86952),	-- Chestplate of the Forbidden Tower
							i(86949),	-- Fragment of Fear Made Flesh
							i(86950),	-- Gauntlets of Undesired Gifts
							i(86947),	-- Gloves of Grasping Claws
							i(86945),	-- Hisek's Chrysanthemum Cape
							i(86951),	-- Mail of Screaming Secrets
							i(89917),	-- Pheromone-Coated Choker
							i(89918),	-- Scent-Soaked Sandals
							i(86946),	-- Vizier's Ruby Signet
							i(89919),	-- Warbelt of Sealed Pods
							i(87822),	-- Zor'lok's Fizzing Chestguard
						},
					}),
					e(744, {	-- Blade Lord Ta'yak
						["crs"] = { 62543 },	-- Blade Lord Ta'yak
						["groups"] = {
							ach(6726),	-- Heroic: Blade Lord Ta'yak
							i(86959),	-- Boots of the Blowing Wind
							i(86954),	-- Bracers of Unseen Strikes
							i(86962),	-- Bracers of Tempestuous Fury
							i(86953),	-- Choker of the Unleashed Storm
							i(86961),	-- Drape of Gathering Clouds
							i(89922),	-- Hood of Stilled Winds
							i(90740),	-- Kaz'tik's Stormseizer Gauntlets
							i(89921),	-- Pauldrons of the Broken Blade
							i(86957),	-- Ring of the Bladed Tempest
							i(89920),	-- Sword Dancer's Leggings
							i(86960),	-- Tornado-Summoning Censer
							i(86958),	-- Twisting Wind Bracers
							i(86955),	-- Waistplate of Overwhelming Assault
							i(86956),	-- Windblade Talons
						},
					}),
					e(713, {	-- Garalon
						["crs"] = { 62164 },	-- Garalon
						["groups"] = {
							ach(6727),	-- Heroic: Garalon
							i(86964),	-- Bonebreaker Gauntlets
							i(86966),	-- Garalon's Hollow Skull
							i(89923),	-- Garalon's Graven Carapace
							i(86973),	-- Grasps of Panic
							i(86965),	-- Grips of the Leviathan
							i(86963),	-- Legbreaker Greatcloak
							i(86967),	-- Necklace of Congealed Weaknesses
							i(86968),	-- Ring of the Shattered Shell
							i(86972),	-- Robes of Eighty Lights
							i(86969),	-- Sandals of the Unbidden
							i(89924),	-- Shoulders of Foaming Fluids
							i(86971),	-- Stormwake Mistcloak
							i(89925),	-- Vestments of Steaming Ichor
							i(86970),	-- Xaril's Hood of Intoxicating Vapors
						},
					}),
					e(741, {	-- Wind Lord Mel'jarak
						["crs"] = { 62397 },	-- Wind Lord Mel'jarak
						["groups"] = {
							ach(6728),	-- Heroic: Wind Lord Mel'jarak
							i(89256, {	-- Gauntlets of the Shadowy Conqueror
								-- #if AFTER 7.2.0
								["description"] = "Paladin completionists will want to turn this into the vendor since one piece can be awarded in any spec.",
								-- #endif
							}),
							i(89257),	-- Gauntlets of the Shadowy Protector
							i(89255),	-- Gauntlets of the Shadowy Vanquisher
							i(86980),	-- Cloak of Raining Blades
							i(86977),	-- Clutches of Dying Hope
							i(86979),	-- Impaling Treads
							i(86976),	-- Korven's Amber-Sealed Beetle
							i(86974),	-- Painful Thorned Ring
							i(86975),	-- Robes of Torn Nightmares
							i(86978),	-- Wingslasher Pauldrons
						},
					}),
					e(737, {	-- Amber-Shaper Un'sok
						["crs"] = { 62511 },	-- Amber-Shaper Un'sok
						["groups"] = {
							ach(6729),	-- Heroic: Amber-Shaper Un'sok
							i(89253, {	-- Leggings of the Shadowy Conqueror
								-- #if AFTER 7.2.0
								["description"] = "Paladin completionists will want to turn this into the vendor since one piece can be awarded in any spec.",
								-- #endif
							}),
							i(89254),	-- Leggings of the Shadowy Protector
							i(89252),	-- Leggings of the Shadowy Vanquisher
							i(86981),	-- Belt of Malleable Amber
							i(86985),	-- Monstrous Stompers
							i(86987),	-- Scimitar of Seven Stars
							i(86982),	-- Seal of the Profane
							i(86986),	-- Shoulderpads of Misshapen Life
							i(86984),	-- Treads of Deadly Secretions
							i(86983),	-- Un'sok's Amber Scalpel
						},
					}),
					e(743, {	-- Grand Empress Shek'zeer
						["crs"] = { 62837 },	-- Grand Empress Shek'zeer
						["groups"] = {
							ach(7486, {	-- Cutting Edge: Grand Empress Shek'zeer
								["timeline"] = { ADDED_5_0_4, REMOVED_5_2_0 },
								-- #if MOP
								["OnUpdate"] = CUTTING_EDGE_ONUPDATE;
								-- #endif
							}),
							ach(6679, {	-- Realm First! Grand Empress Shek'zeer
								["timeline"] = { ADDED_5_0_4, REMOVED_5_2_0 },
								-- #if MOP
								["OnUpdate"] = CUTTING_EDGE_ONUPDATE;
								-- #endif
							}),
							ach(6730),	-- Heroic: Grand Empress Shek'zeer
							ach(6677),	-- Heroic: Grand Empress Shek'zeer Guild Run
							i(89250, {	-- Chest of the Shadowy Conqueror
								-- #if AFTER 7.2.0
								["description"] = "Paladin completionists will want to turn this into the vendor since one piece can be awarded in any spec.",
								-- #endif
							}),
							i(89251),	-- Chest of the Shadowy Protector
							i(89249),	-- Chest of the Shadowy Vanquisher
							i(86988),	-- Claws of Shek'zeer
							i(86991),	-- Crown of the Doomed Empress
							i(89927),	-- Hood of Dark Dreams
							i(86990),	-- Kri'tak, Imperial Scepter of the Swarm
							i(86989),	-- Leggings of Shadow Infestation
							i(89928),	-- Legplates of Regal Reinforcement
							i(89926),	-- Shadow Heart Spaulders
						},
					}),
				},
			}),
		},
	})),
})));
