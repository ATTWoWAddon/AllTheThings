-------------------------------------------
--    C H A R A C T E R   M O D U L E    --
-------------------------------------------
root(ROOTS.Character, n(NEW_CHARACTER, {
	n(ACHIEVEMENTS, {
		------ Epic ------
		ach(40147, {	-- War Within Epic
			["timeline"] = { ADDED_11_0_2, REMOVED_12_PH_LAUNCH },
		}),
		ach(18977, {	-- Draconically Epic
			["timeline"] = { ADDED_10_1_5 },
		}),
		ach(18366, {	-- Draconically Epic - Replaced with new achievement number 18977
			["timeline"] = { ADDED_10_0_2_LAUNCH, REMOVED_10_1_5 },
		}),
		ach(14797, {	-- Epic [Shadowlands]
			["timeline"] = { ADDED_9_0_2_LAUNCH, REMOVED_10_1_5 },
		}),
		applyclassicphase(BFA_PHASE_ONE, ach(12547, {	-- Epic [Battle For Azeorth]
			["timeline"] = { ADDED_8_0_1_LAUNCH, REMOVED_9_0_2_LAUNCH },
		})),
		applyclassicphase(LEGION_PHASE_ONE, ach(10765, {	-- Brokenly Epic [Legion]
			["timeline"] = { ADDED_7_0_3_LAUNCH, REMOVED_8_0_1_LAUNCH },
		})),
		applyclassicphase(WOD_PHASE_ONE, ach(9708, {	-- Savagely Epic [Warlords Of Draenor]
			["timeline"] = { ADDED_6_0_3_LAUNCH, REMOVED_7_0_3_LAUNCH },
		})),
		applyclassicphase(MOP_PHASE_LANDFALL, ach(6349, {	-- Mystically Epic [Mists of Pandaria]
			["timeline"] = { ADDED_5_0_4, REMOVED_6_0_3_LAUNCH },
		})),
		applyclassicphase(CATA_PHASE_ONE, ach(5372, {	-- Cataclysmically Epic [Cataclysm]
			["timeline"] = { ADDED_4_0_3_LAUNCH, REMOVED_5_0_4 },
		})),
		applyclassicphase(WRATH_PHASE_ONE, ach(556, {	-- Epic
			["timeline"] = { ADDED_3_0_2, REMOVED_4_0_3_LAUNCH },
		})),
		------ Superior ------
		ach(40146, {	-- War Within Superior
			["timeline"] = { ADDED_11_0_2, REMOVED_12_PH_LAUNCH },
		}),
		ach(18976, {	-- Draconically Superior
			["timeline"] = { ADDED_10_1_5 },
		}),
		ach(18365, {	-- Draconically Superior - Replaced with new achievement number 18976
			["timeline"] = { ADDED_10_0_2_LAUNCH, REMOVED_10_1_5 },
		}),
		ach(14796, {	-- Superior [Shadowlands]
			["timeline"] = { ADDED_9_0_2_LAUNCH, REMOVED_10_1_5 },
		}),
		applyclassicphase(BFA_PHASE_ONE, ach(12546, {	-- Superior [Battle For Azeorth]
			["timeline"] = { ADDED_8_0_1_LAUNCH, REMOVED_9_0_2_LAUNCH },
		})),
		applyclassicphase(LEGION_PHASE_ONE, ach(10764, {	-- Brokenly Superior [Legion]
			["timeline"] = { ADDED_7_0_3_LAUNCH, REMOVED_8_0_1_LAUNCH },
		})),
		applyclassicphase(WOD_PHASE_ONE, ach(9707, {	-- Savagely Superior [Warlords Of Draenor]
			["timeline"] = { ADDED_6_0_3_LAUNCH, REMOVED_7_0_3_LAUNCH },
		})),
		applyclassicphase(MOP_PHASE_LANDFALL, ach(6348, {	-- Mystically Superior [Mists of Pandaria]
			["timeline"] = { ADDED_5_0_4, REMOVED_6_0_3_LAUNCH },
		})),
		applyclassicphase(CATA_PHASE_ONE, ach(5373, {	-- Cataclysmically Superior [Cataclysm]
			["timeline"] = { ADDED_4_0_3_LAUNCH, REMOVED_5_0_4 },
		})),
		applyclassicphase(WRATH_PHASE_ONE, ach(557, {	-- Superior
			["timeline"] = { ADDED_3_0_2, REMOVED_4_0_3_LAUNCH },
		})),
		applyclassicphase(CATA_PHASE_ONE, ach(5180, {	-- Breaking the Sound Barrier
			["spellID"] = 90265,	-- Master Riding
			["timeline"] = { ADDED_4_0_1 },
			["rank"] = 5,
		})),
		ach(19489, {	-- Class Connoisseur
			["timeline"] = { ADDED_11_0_2 },
			["g"] = {
				crit(55223),	-- Druid
				crit(55224),	-- Hunter
				crit(64623),	-- Mage
				crit(64625),	-- Paladin
				crit(64626),	-- Priest
				crit(64627),	-- Rogue
				crit(64628),	-- Shaman
				crit(64629),	-- Warlock
				crit(64630),	-- Warrior
				crit(64631),	-- Death Knight
				crit(64624),	-- Monk
				crit(55225),	-- Demon Hunter
				crit(64622),	-- Evoker
			},
		}),
		ach(7380, {	-- Double Agent
			["timeline"] = { ADDED_5_0_4 },
		}),
		ach(7382, {	-- Dynamic Duo
			["timeline"] = { ADDED_5_0_4 },
			["g"] = {
				i(212174, {	-- The Warband Map to Everywhere All At Once (TOY!)
					["timeline"] = { ADDED_11_0_0 },
				}),
			},
		}),
		-- #if AFTER TBC
		ach(889, {	-- Fast and Furious
			["spellID"] = 33391,	-- Journeyman Riding
			["rank"] = 2,
		}),
		-- #endif
		ach(1176, {	-- Got My Mind On My Money [100g]
			["timeline"] = { ADDED_3_0_2 },
			["rank"] = 100,
		}),
		ach(1177, {	-- Got My Mind On My Money [1000g]
			["timeline"] = { ADDED_3_0_2 },
			["rank"] = 1000,
		}),
		ach(1178, {	-- Got My Mind On My Money [5000g]
			["timeline"] = { ADDED_3_0_2 },
			["rank"] = 5000,
		}),
		ach(1180, {	-- Got My Mind On My Money [10000g]
			["timeline"] = { ADDED_3_0_2 },
			["rank"] = 10000,
		}),
		ach(1181, {	-- Got My Mind On My Money [25000g]
			["timeline"] = { ADDED_3_0_2 },
			["rank"] = 25000,
		}),
		ach(5455, {	-- Got My Mind On My Money [50000g]
			["timeline"] = { ADDED_4_0_3 },
			["rank"] = 50000,
		}),
		ach(5456, {	-- Got My Mind On My Money [100000g]
			["timeline"] = { ADDED_4_0_3 },
			["rank"] = 100000,
		}),
		ach(6753, {	-- Got My Mind On My Money [200000g]
			["timeline"] = { ADDED_5_0_4 },
			["rank"] = 200000,
		}),
		ach(891, {	-- Giddy Up!
			-- #if AFTER TBC
			["spellID"] = 33388,	-- Apprentice Riding
			["rank"] = 1,
			-- #else
			["OnClick"] = [[_.CommonAchievementHandlers.KNOW_SPELLS_OnClick]],
			["OnTooltip"] = [[_.CommonAchievementHandlers.KNOW_SPELLS_OnTooltip]],
			["OnUpdate"] = [[function(t) return _.CommonAchievementHandlers.KNOW_SPELLS_ANY_OnUpdate(t, 824, 18995, 10907, 826, 10861, 828, 10906, 825); end]],
			--[[
				824,	-- Horse Riding
				18995,	-- Kodo Riding
				10907,	-- Mechanostrider Piloting
				826,	-- Ram Riding
				10861,	-- Raptor Riding
				828,	-- Tiger Riding
				10906,	-- Undead Horsemanship
				825,	-- Wolf Riding
			]]--
			-- #endif
		}),
		applyclassicphase(TBC_PHASE_ONE, ach(890, {	-- Into the Wild Blue Yonder
			["spellID"] = 34090,	-- Expert Riding
			["timeline"] = { ADDED_2_0_1 },
			["rank"] = 3,
		})),
		ach(19459, {["timeline"] = { ADDED_11_0_2 }}),	-- Level 80
		ach(15805, {["timeline"] = { ADDED_10_0_2_LAUNCH }}),	-- Level 70
		ach(14783, {["timeline"] = { ADDED_9_0_1 }}),	-- Level 60
		ach(14782, {["timeline"] = { ADDED_9_0_1 }}),	-- Level 50
		ach(14884, {["timeline"] = { ADDED_9_0_1 }}),	-- Level 45

		applyclassicphase(WRATH_PHASE_ONE, ach(705, {	-- Master of Arms
			["timeline"] = { ADDED_3_0_2, REMOVED_4_0_1 },
		})),
		ach(7384, {	-- Quintessential Quintet
			["timeline"] = { ADDED_5_0_4 },
		}),
		ach(621, {	-- Represent [TODO]
			["timeline"] = { ADDED_3_0_2 },
			["rank"] = 1,
		}),
		ach(546, {	-- Safe Deposit
			-- #if BEFORE TBC
			["OnUpdate"] = [[function(t) t:SetAchievementCollected(t.achievementID, GetNumBankSlots() >= 6); end]],
			-- #elseif BEFORE WRATH
			["OnUpdate"] = [[function(t) t:SetAchievementCollected(t.achievementID, GetNumBankSlots() >= 7); end]],
			-- #endif
		}),
		ach(545, {	-- Shave and a Haircut
			["timeline"] = { ADDED_3_0_2 },
			["maps"] = { STORMWIND_CITY, ORGRIMMAR, NORTHREND_DALARAN },
		}),
		ach(1020, {	-- Ten Tabards [TODO]
			["timeline"] = { ADDED_3_0_2 },
			["rank"] = 10,
		}),
		ach(7383, {	-- Terrific Trio
			["timeline"] = { ADDED_5_0_4 },
		}),
		applyclassicphase(WRATH_PHASE_ONE, ach(1187, {	-- The Keymaster
			["timeline"] = { ADDED_3_0_2, DELETED_4_0_3 },
		})),
		ach(5755, {	-- Thirty Tabards
			["timeline"] = { ADDED_4_1_0 },
			-- #if BEFORE LEGION
			["_noautomation"] = true,
			-- #endif
			["rank"] = 30,
		}),
		ach(1021, bubbleDownSelf({ ["timeline"] = { ADDED_3_0_2 } }, {	-- Twenty-Five Tabards
			-- #if BEFORE LEGION
			["_noautomation"] = true,
			-- #endif
			["rank"] = 25,
			["groups"] = {
				i(40643),	-- Tabard of the Achiever
			},
		})),
	}),
	cl(DEATHKNIGHT, bubbleDownSelf({ ["timeline"] = { ADDED_3_0_2 }, }, {
		i(34652),	-- Archerus Knight's Hood
		i(34655),	-- Archerus Knight's Pauldrons
		i(34659),	-- Archerus Knight's Shroud
		i(34650),	-- Archerus Knight's Tunic
		i(34653),	-- Archerus Knight's Wristguard
		i(34649),	-- Archerus Knight's Gauntlets
		i(34651),	-- Archerus Knight's Girdle
		i(34656),	-- Archerus Knight's Legplates
		i(34648),	-- Archerus Knight's Greaves
		i(34657),	-- Choker of Damnation
		i(34658),	-- Plague Band
		i(38147),	-- Corrupted Band
		i(38145),	-- Deathweave Bag
	})),
	cl(DEMONHUNTER, bubbleDownSelf({ ["timeline"] = { ADDED_7_0_3 }, }, {
		i(112458),	-- Illidari Warglaive
		i(129181),	-- Illidari Warglaive
		i(112450),	-- Illidari Blindfold
		i(112461),	-- Illidari Chain
		i(112456),	-- Illidari Shoulders
		i(112462),	-- Illidari Drape
		i(112454),	-- Illidari Robe
		i(112452),	-- Illidari Bracers
		i(112455),	-- Illidari Gloves
		i(112453),	-- Illidari Belt
		i(112451),	-- Illidari Leggings
		i(112457),	-- Illidari Boots
		i(112459),	-- Illidari Ring
		i(112460),	-- Illidari Band
		i(123959),	-- Demon Trophy
		i(123960),	-- Charm of Demonic
		i(123958),	-- Demon Hide Satchel
		title(344)	-- Illidari <Name>
	})),
	cl(DRUID, {
		n(ARMOR, {
			i(187778, {	-- Druid's Footwear
				--["races"] = { NIGHTELF, TAUREN, TROLL },
				["timeline"] = { ADDED_9_1_5 },
			}),
			i(187777, {	-- Druid's Handwraps
				--["races"] = { NIGHTELF, TAUREN, TROLL },
				["timeline"] = { ADDED_9_1_5 },
			}),
			i(187776, {	-- Druid's Leggings
				--["races"] = { NIGHTELF, TAUREN, TROLL },
				["timeline"] = { ADDED_9_1_5 },
			}),
			i(187775, {	-- Druid's Tunic
				--["races"] = { NIGHTELF, TAUREN, TROLL },
				["timeline"] = { ADDED_9_1_5 },
			}),
			i(187774, {	-- Druid's Waistband
				--["races"] = { NIGHTELF, TAUREN, TROLL },
				["timeline"] = { ADDED_9_1_5 },
			}),
			i(49565, {	-- Gilnean Novice's Gloves
				--["races"] = { WORGEN },
				["timeline"] = { ADDED_4_0_3 },
			}),
			i(49564, {	-- Gilnean Novice's Boots
				--["races"] = { WORGEN },
				["timeline"] = { ADDED_4_0_3 },
			}),
			i(49563, {	-- Gilnean Novice's Tunic
				--["races"] = { WORGEN },
				["timeline"] = { ADDED_4_0_3 },
			}),
			i(49566, {	-- Gilnean Novice's Pants
				--["races"] = { WORGEN },
				["timeline"] = { ADDED_4_0_3 },
			}),
			i(6124, {	-- Novice's Pants
				--["races"] = { NIGHTELF, TAUREN, TROLL },
				["timeline"] = { REMOVED_9_1_5 },
			}),
			i(6123, {	-- Novice's Robe
				--["races"] = { NIGHTELF },
				["timeline"] = { REMOVED_9_1_5 },
			}),
			i(6139, {	-- Novice's Robe
				--["races"] = { TAUREN, TROLL },
				["timeline"] = { REMOVED_9_1_5 },
			}),
		}),
		n(WEAPONS, {
			i(35),	-- Bent Staff
			i(3661),	-- Handcrafted Staff
		}),
		n(ALLIED_RACES, bubbleDownSelf({ ["timeline"] = { ADDED_7_3_5 }, }, {
			i(157666),	-- Wildshifter Tunic
			i(157673),	-- Wildshifter Bracers
			i(157668),	-- Wildshifter Grips
			i(157672),	-- Wildshifter Belt
			i(157670),	-- Wildshifter Leggings
			i(157667),	-- Wildshifter Treads
			i(157619),	-- Spire of Astral Force
		})),
	}),
	cl(EVOKER, bubbleDownSelf({ ["timeline"] = { ADDED_10_0_2 }, }, {
		i(188814),	-- Emerald Winglord's Amulet
		i(188824),	-- Emerald Winglord's Boots
		i(188823),	-- Emerald Winglord's Bracers
		i(188815),	-- Emerald Winglord's Cloak
		i(188820),	-- Emerald Winglord's Coif
		i(188819),	-- Emerald Winglord's Greaves
		i(188821),	-- Emerald Winglord's Grips
		i(188822),	-- Emerald Winglord's Hauberk
		i(188816),	-- Emerald Winglord's Insignia
		i(188813),	-- Emerald Winglord's Loop
		i(188812),	-- Emerald Winglord's Ring
		i(188817),	-- Claw-Carved Figurine
		i(188213),	-- Large Green Bag
	})),
	cl(HUNTER, {
		n(ARMOR, {
			i(232279, {	-- Creche-Scout's Bracers
				--["races"] = { DRACTHYR_ALLIANCE, DRACTHYR_HORDE },
				["timeline"] = { ADDED_11_0_5 },
			}),
			i(232284, {	-- Creche-Scout's Chausses
				--["races"] = { DRACTHYR_ALLIANCE, DRACTHYR_HORDE },
				["timeline"] = { ADDED_11_0_5 },
			}),
			i(232285, {	-- Creche-Scout's Gauntlets
				--["races"] = { DRACTHYR_ALLIANCE, DRACTHYR_HORDE },
				["timeline"] = { ADDED_11_0_5 },
			}),
			i(232286, {	-- Creche-Scout's Greaves
				--["races"] = { DRACTHYR_ALLIANCE, DRACTHYR_HORDE },
				["timeline"] = { ADDED_11_0_5 },
			}),
			i(232287, {	-- Creche-Scout's Vest
				--["races"] = { DRACTHYR_ALLIANCE, DRACTHYR_HORDE },
				["timeline"] = { ADDED_11_0_5 },
			}),
			i(49569, {	-- Gilnean Trapper's Boots
				--["races"] = { WORGEN },
				["timeline"] = { ADDED_4_0_3 },
			}),
			i(49571, {	-- Gilnean Trapper's Gloves
				--["races"] = { WORGEN },
				["timeline"] = { ADDED_4_0_3 },
			}),
			i(49568, {	-- Gilnean Trapper's Pants
				--["races"] = { WORGEN },
				["timeline"] = { ADDED_4_0_3 },
			}),
			i(49570, {	-- Gilnean Trapper's Tunic
				--["races"] = { WORGEN },
				["timeline"] = { ADDED_4_0_3 },
			}),
			i(49504, {	-- Goblin Trapper's Boots
				--["races"] = { GOBLIN },
				["timeline"] = { ADDED_4_0_3 },
			}),
			i(49503, {	-- Goblin Trapper's Pants
				--["races"] = { GOBLIN },
				["timeline"] = { ADDED_4_0_3 },
			}),
			i(49502, {	-- Goblin Trapper's Shirt
				--["races"] = { GOBLIN },
				["timeline"] = { ADDED_4_0_3 },
			}),
			i(187693, {	-- Hunter's Belt
				--["races"] = { HUMAN, DWARF, NIGHTELF, GNOME, DRAENEI, ORC, UNDEAD, TAUREN, TROLL, BLOODELF },
				["timeline"] = { ADDED_9_1_5 },
			}),
			i(187691, {	-- Hunter's Boots
				--["races"] = { HUMAN, DWARF, NIGHTELF, GNOME, DRAENEI, ORC, UNDEAD, TAUREN, TROLL, BLOODELF },
				["timeline"] = { ADDED_9_1_5 },
			}),
			i(187694, {	-- Hunter's Bracers
				--["races"] = { HUMAN, DWARF, NIGHTELF, GNOME, DRAENEI, ORC, UNDEAD, TAUREN, TROLL, BLOODELF },
				["timeline"] = { ADDED_9_1_5 },
			}),
			i(187695, {	-- Hunter's Gloves
				--["races"] = { HUMAN, DWARF, NIGHTELF, GNOME, DRAENEI, ORC, UNDEAD, TAUREN, TROLL, BLOODELF },
				["timeline"] = { ADDED_9_1_5 },
			}),
			i(187690, {	-- Hunter's Pants
				--["races"] = { HUMAN, DWARF, NIGHTELF, GNOME, DRAENEI, ORC, UNDEAD, TAUREN, TROLL, BLOODELF },
				["timeline"] = { ADDED_9_1_5 },
			}),
			i(187692, {	-- Hunter's Vest
				--["races"] = { HUMAN, DWARF, NIGHTELF, GNOME, DRAENEI, ORC, UNDEAD, TAUREN, TROLL, BLOODELF },
				["timeline"] = { ADDED_9_1_5 },
			}),
			i(129, {	-- Rugged Trapper's Boots
				--["races"] = { HUMAN, DWARF, NIGHTELF, UNDEAD },
				["timeline"] = { REMOVED_9_1_5 },
			}),
			i(147, {	-- Rugged Trapper's Pants
				--["races"] = { HUMAN, DWARF, NIGHTELF, UNDEAD },
				["timeline"] = { REMOVED_9_1_5 },
			}),
			i(58232, {	-- Rugged Trapper's Vest
				--["races"] = { HUMAN, DWARF, NIGHTELF, UNDEAD },
				["timeline"] = { ADDED_4_0_3, REMOVED_9_1_5 },
			}),
			i(23348, {	-- Scout's Boots
				--["races"] = { DRAENEI },
				["timeline"] = { ADDED_2_0_1, REMOVED_9_1_5 },
			}),
			i(23344, {	-- Scout's Pants
				--["races"] = { DRAENEI },
				["timeline"] = { ADDED_2_0_1, REMOVED_9_1_5 },
			}),
			i(58240, {	-- Scout's Vest
				--["races"] = { DRAENEI },
				["timeline"] = { ADDED_4_0_3, REMOVED_9_1_5 },
			}),
			i(6126, {	-- Trapper's Boots [Orc]
				["timeline"] = { REMOVED_4_0_3 }
			}),
			i(6137, {	-- Thug Pants
				--["races"] = { ORC, TAUREN, TROLL },
				["timeline"] = { REMOVED_9_1_5 },
			}),
			i(6127, {	-- Trapper's Boots [Orc]
				["timeline"] = { REMOVED_4_0_3 }
			}),
			i(6138, {	-- Trapper's Boots
				--["races"] = { ORC, TAUREN, TROLL },
				["timeline"] = { REMOVED_9_1_5 },
			}),
			i(58247, {	-- Trapper's Vest
				--["races"] = { ORC, TAUREN, TROLL },
				["timeline"] = { ADDED_4_0_3, REMOVED_9_1_5 },
			}),
			i(20900, {	-- Warder's Boots
				--["races"] = { BLOODELF },
				["timeline"] = { ADDED_2_0_1, REMOVED_9_1_5 },
			}),
			i(20899, {	-- Warder's Pants
				--["races"] = { BLOODELF },
				["timeline"] = { ADDED_2_0_1, REMOVED_9_1_5 },
			}),
			i(58235, {	-- Warder's Vest
				--["races"] = { BLOODELF },
				["timeline"] = { ADDED_4_0_3, REMOVED_9_1_5 },
			}),
		}),
		n(WEAPONS, {
			i(232277, {	-- Creche-Scout's Rifle
				--["races"] = { DRACTHYR_ALLIANCE, DRACTHYR_HORDE },
				["timeline"] = { ADDED_11_0_5 },
			}),
			i(2508),	-- Old Blunderbuss
			i(20982, {	-- Sharp Dagger
				["timeline"] = { ADDED_2_0_1, REMOVED_9_0_1 }	-- TODO: I am not sure when this got removed.
			}),
			i(20980, {	-- Warder's Shortbow
				["description"] = "New Blood Elf Hunters start with this weapon.",
				["timeline"] = { ADDED_2_0_1 }
			}),
			i(57244, {	-- Warder's Spear
				["timeline"] = { ADDED_4_0_1, REMOVED_5_0_4 }
			}),
			i(23347, {	-- Weathered Crossbow
				["description"] = "New Human, Draenei, and Undead Hunters start with this weapon.",
				["timeline"] = { ADDED_2_0_1 }
			}),
			i(2504, {	-- Worn Shortbow
				["timeline"] = { REMOVED_9_0_1 }	-- TODO: I am not sure when this got removed.
			}),
			i(57243, {	-- Worn Spear
				["timeline"] = { ADDED_4_0_1, REMOVED_9_0_1 }	-- TODO: I am not sure when this got removed.
			}),
		}),
		n(ALLIED_RACES, bubbleDownSelf({ ["timeline"] = { ADDED_7_3_5 }, }, {
			i(157674),	-- Heartbonded Vest
			i(157681),	-- Heartbonded Bracers
			i(157676),	-- Heartbonded Gauntlets
			i(157680),	-- Heartbonded Belt
			i(157678),	-- Heartbonded Legguards
			i(157675),	-- Heartbonded Greaves
			i(157649, {	-- Goldstring Recurve
				["description"] = "New Highmountain Tauren Hunters start with this weapon.",
			}),
			i(157622, {	-- Silverscope Longrifle
				["description"] = "New Mechagnome Hunters start with this weapon. The 4 remaining Mechagnome players gatekept this from us for far too long.",
			}),
			i(157650, {	-- Tracker's Spear
				["description"] = "New Highmountain Tauren Hunters start with this weapon in your inventory via the Wrapped Spear.",
			}),
		})),
	}),
	cl(MONK, bubbleDownSelf({ ["timeline"] = { ADDED_7_3_5 }, }, {
		i(157690),	-- Ascetic's Vest
		i(157697),	-- Ascetic's Cuffs
		i(157692),	-- Ascetic's Handguards
		i(157696),	-- Ascetic's Cord
		i(157694),	-- Ascetic's Legguards
		i(157691),	-- Ascetic's Footpads
		-- #if AFTER 11.0.0
		i(204268, {	-- Gilnean Trainee's Cord
			--["races"] = { WORGEN },
			["timeline"] = { ADDED_10_0_7 },
		}),
		i(204267, {	-- Gilnean Trainee's Leggings
			--["races"] = { WORGEN },
			["timeline"] = { ADDED_10_0_7 },
		}),
		i(204266, {	-- Gilnean Trainee's Vest
			--["races"] = { WORGEN },
			["timeline"] = { ADDED_10_0_7 },
		}),
		i(204269, {	-- Gilnean Trainee's Wristwraps
			--["races"] = { WORGEN },
			["timeline"] = { ADDED_10_0_7 },
		}),
		i(204259, {	-- Goblin Trainee's Cord
			--["races"] = { GOBLIN },
			["timeline"] = { ADDED_10_0_7 },
		}),
		i(204260, {	-- Goblin Trainee's Leggings
			--["races"] = { GOBLIN },
			["timeline"] = { ADDED_10_0_7 },
		}),
		i(204261, {	-- Goblin Trainee's Vest
			--["races"] = { GOBLIN },
			["timeline"] = { ADDED_10_0_7 },
		}),
		i(204258, {	-- Goblin Trainee's Wristwraps
			--["races"] = { GOBLIN },
			["timeline"] = { ADDED_10_0_7 },
		}),
		-- #endif
		i(3661, {	-- Handcrafted Staff
			--["races"] = { WORGEN, GOBLIN },
			["timeline"] = { ADDED_10_0_7 },
		}),
		i(157625),	-- Mash Tun Mixer
		i(157627, {	-- Sword of Searing Winds
			["timeline"] = { REMOVED_9_0_1 },	-- this appears to have been replaced with the staff in SL prepatch
		}),
	})),
	cl(MAGE, {
		n(ARMOR, {
			i(55, {	-- Apprentice's Boots
				--["races"] = { HUMAN, DWARF, GNOME, UNDEAD },
				["timeline"] = { REMOVED_9_1_5 }
			}),
			i(52554, {	-- Apprentice's Boots
				--["races"] = { NIGHTELF },
				["timeline"] = { ADDED_4_0_3, REMOVED_9_1_5 }
			}),
			i(20895, {	-- Apprentice's Boots
				--["races"] = { BLOODELF },
				["timeline"] = { ADDED_2_0_1, REMOVED_9_1_5 }
			}),
			i(1395, {	-- Apprentice's Pants
				--["races"] = { HUMAN, DWARF, GNOME, NIGHTELF, UNDEAD },
				["timeline"] = { REMOVED_9_1_5 }
			}),
			i(52681, {	-- Apprentice's Pants
				--["races"] = { ORC, TROLL },
				["timeline"] = { ADDED_4_0_3, REMOVED_9_1_5 }
			}),
			i(20894, {	-- Apprentice's Pants
				--["races"] = { BLOODELF },
				["timeline"] = { ADDED_2_0_1, REMOVED_9_1_5 }
			}),
			i(56, {	-- Apprentice's Robe
				--["races"] = { HUMAN, DWARF, GNOME },
				["timeline"] = { REMOVED_9_1_5 }
			}),
			i(52553, {	-- Apprentice's Robe
				--["races"] = { NIGHTELF },
				["timeline"] = { ADDED_4_0_3, REMOVED_9_1_5 }
			}),
			i(52546, {	-- Apprentice's Robe
				--["races"] = { ORC, TROLL },
				["timeline"] = { ADDED_4_0_3, REMOVED_9_1_5 }
			}),
			i(6140, {	-- Apprentice's Robe
				--["races"] = { UNDEAD },
				["timeline"] = { REMOVED_9_1_5 }
			}),
			i(20893, {	-- Apprentice's Robe
				--["races"] = { BLOODELF },
				["timeline"] = { ADDED_2_0_1, REMOVED_9_1_5 }
			}),
			i(232337, {	-- Creche-Magus's Bindings
				--["races"] = { DRACTHYR_ALLIANCE, DRACTHYR_HORDE },
				["timeline"] = { ADDED_11_0_5 },
			}),
			i(232341, {	-- Creche-Magus's Gloves
				--["races"] = { DRACTHYR_ALLIANCE, DRACTHYR_HORDE },
				["timeline"] = { ADDED_11_0_5 },
			}),
			i(232340, {	-- Creche-Magus's Pants
				--["races"] = { DRACTHYR_ALLIANCE, DRACTHYR_HORDE },
				["timeline"] = { ADDED_11_0_5 },
			}),
			i(232339, {	-- Creche-Magus's Regalia
				--["races"] = { DRACTHYR_ALLIANCE, DRACTHYR_HORDE },
				["timeline"] = { ADDED_11_0_5 },
			}),
			i(232342, {	-- Creche-Magus's Shoes
				--["races"] = { DRACTHYR_ALLIANCE, DRACTHYR_HORDE },
				["timeline"] = { ADDED_11_0_5 },
			}),
			i(49401, {	-- Gilnean Apprentice's Boots
				--["races"] = { WORGEN },
				["timeline"] = { ADDED_4_0_3 }
			}),
			i(49400, {	-- Gilnean Apprentice's Pants
				--["races"] = { WORGEN },
				["timeline"] = { ADDED_4_0_3 }
			}),
			i(49399, {	-- Gilnean Apprentice's Robe
				--["races"] = { WORGEN },
				["timeline"] = { ADDED_4_0_3 }
			}),
			i(49508, {	-- Goblin Apprentice's Boots
				--["races"] = { GOBLIN },
				["timeline"] = { ADDED_4_0_3 }
			}),
			i(49506, {	-- Goblin Apprentice's Pants
				--["races"] = { GOBLIN },
				["timeline"] = { ADDED_4_0_3 }
			}),
			i(49505, {	-- Goblin Apprentice's Robe
				--["races"] = { GOBLIN },
				["timeline"] = { ADDED_4_0_3 }
			}),
			i(187762, {	-- Mage's Mitts
			--[[
				["races"] = { HUMAN, DWARF, NIGHTELF, GNOME, DRAENEI, ORC, UNDEAD, TROLL, BLOODELF,
				-- #if AFTER DF
				TAUREN,
				-- #endif
				},
			]]--
				["timeline"] = { ADDED_9_1_5 },
			}),
			i(187760, {	-- Mage's Sash
			--[[
				["races"] = { HUMAN, DWARF, NIGHTELF, GNOME, DRAENEI, ORC, UNDEAD, TROLL, BLOODELF,
				-- #if AFTER DF
				TAUREN,
				-- #endif
				},
			]]--
				["timeline"] = { ADDED_9_1_5 },
			}),
			i(187759, {	-- Mage's Slippers
			--[[
				["races"] = { HUMAN, DWARF, NIGHTELF, GNOME, DRAENEI, ORC, UNDEAD, TROLL, BLOODELF,
				-- #if AFTER DF
				TAUREN,
				-- #endif
				},
			]]--
				["timeline"] = { ADDED_9_1_5 },
			}),
			i(187758, {	-- Mage's Trousers
			--[[
				["races"] = { HUMAN, DWARF, NIGHTELF, GNOME, DRAENEI, ORC, UNDEAD, TROLL, BLOODELF,
				-- #if AFTER DF
				TAUREN,
				-- #endif
				},
			]]--
				["timeline"] = { ADDED_9_1_5 },
			}),
			i(187761, {	-- Mage's Robes
			--[[
				["races"] = { HUMAN, DWARF, NIGHTELF, GNOME, DRAENEI, ORC, UNDEAD, TROLL, BLOODELF,
				-- #if AFTER DF
				TAUREN,
				-- #endif
				},
			]]--
				["timeline"] = { ADDED_9_1_5 },
			}),
			i(187757, {	-- Mage's Wristwraps
			--[[
				["races"] = { HUMAN, DWARF, NIGHTELF, GNOME, DRAENEI, ORC, UNDEAD, TROLL, BLOODELF,
				-- #if AFTER DF
				TAUREN,
				-- #endif
				},
			]]--
				["timeline"] = { ADDED_9_1_5 },
			}),
			i(23478, {	-- Recruit's Pants
				--["races"] = { DRAENEI },
				["timeline"] = { ADDED_2_0_1, REMOVED_9_1_5 }
			}),
			i(23479, {	-- Recruit's Robe
				--["races"] = { DRAENEI },
				["timeline"] = { ADDED_2_0_1, REMOVED_9_1_5 }
			}),
			i(77509, {	-- Trainee's Cord
				--["races"] = { PANDAREN_ALLIANCE, PANDAREN_HORDE },
				["timeline"] = { ADDED_5_0_4 }
			}),
			i(72020, {	-- Trainee's Leggings
				--["races"] = { PANDAREN_ALLIANCE, PANDAREN_HORDE },
				["timeline"] = { ADDED_5_0_4 }
			}),
			i(72019, {	-- Trainee's Vest
				--["races"] = { PANDAREN_ALLIANCE, PANDAREN_HORDE },
				["timeline"] = { ADDED_5_0_4 }
			}),
			i(77526, {	-- Trainee's Wristwraps
				--["races"] = { PANDAREN_ALLIANCE, PANDAREN_HORDE },
				["timeline"] = { ADDED_5_0_4 }
			}),
		}),
		n(WEAPONS, {
			i(20978, {	-- Apprentice's Staff
				["timeline"] = { ADDED_3_0_2 }
			}),
			i(35),	-- Bent Staff
			i(232336, {	-- Creche-Magus's Staff
				--["races"] = { DRACTHYR_ALLIANCE, DRACTHYR_HORDE },
				["timeline"] = { ADDED_11_0_5 },
			}),
			i(3661),	-- Handcrafted Staff
		}),
		n(ALLIED_RACES, bubbleDownSelf({ ["timeline"] = { ADDED_7_3_5 }, }, {
			i(157686),	-- Spellsculptor's Robe
			i(157689),	-- Spellsculptor's Wristwraps
			i(157683),	-- Spellsculptor's Handwraps
			i(157688),	-- Spellsculptor's Cord
			i(157685),	-- Spellsculptor's Leggings
			i(157682),	-- Spellsculptor's Sandals
			i(157651),	-- Staff of Elemental Shaping
		})),
	}),
	cl(PALADIN, {
		filter(MOUNTS, {
			mount(453785, {	-- Earthen Ordinant's Ramolith (MOUNT!)
				["description"] = "|cFF40bf40Received on reaching Level 10 as a Earthen Paladin.|r",
				["races"] = { EARTHEN_ALLIANCE, EARTHEN_HORDE },
				["classes"] = { PALADIN },
				["timeline"] = { ADDED_11_0_2 }
			}),
			mount(270564, {	-- Dawnforge Ram (MOUNT!)
				["description"] = "|cFF40bf40Received on reaching Level 10 as a Dwarf Paladin.|r", -- Possibly as D.I.D too
				["races"] = { DWARF },
				["classes"] = { PALADIN },
				["timeline"] = { ADDED_8_0_1 }
			}),
			mount(73629, {	-- Exarch's Elekk (MOUNT!)
				["description"] = "|cFF40bf40Received on reaching Level 10 as a Draenei Paladin.|r",
				["races"] = { DRAENEI },
				["classes"] = { PALADIN },
				["timeline"] = { ADDED_4_0_3 }
			}),
			mount(73630, {	-- Great Exarch's Elekk (MOUNT!)
				["description"] = "|cFF40bf40Received on reaching Level 17 as a Draenei Paladin.|r",	-- Removed Lightforged here
				["races"] = { DRAENEI },
				["classes"] = { PALADIN },
				["timeline"] = { ADDED_4_0_3 }
			}),
			mount(69826, {	-- Great Sunwalker Kodo (MOUNT!)
				["description"] = "|cFF40bf40Received on reaching Level 17 as a Tauren Paladin.|r",
				["races"] = { TAUREN },
				["classes"] = { PALADIN },
				["timeline"] = { ADDED_4_0_3 }
			}),
			mount(69820, {	-- Sunwalker Kodo (MOUNT!)
				["description"] = "|cFF40bf40Received on reaching Level 10 as a Tauren Paladin.|r",
				["races"] = { TAUREN },
				["classes"] = { PALADIN },
				["timeline"] = { ADDED_4_0_3 }
			}),
			mount(34767, {	-- Thalassian Charger (MOUNT!)
				-- #if AFTER 9.0.1
				["description"] = "|cFF40bf40Received on reaching Level 17 as a Blood Elf Paladin.|r",
				["lvl"] = 17,
				-- #elseif AFTER 3.2.0
				["lvl"] = 40,
				-- #else
				["lvl"] = 60,
				-- #endif
				["races"] = { BLOODELF },
				["classes"] = { PALADIN },
				["timeline"] = { ADDED_2_0_1 }
			}),
			mount(34769, {	-- Thalassian Warhorse (MOUNT!)
				-- #if AFTER 9.0.1
				["description"] = "|cFF40bf40Received on reaching Level 10 as a Blood Elf Paladin.|r",
				["lvl"] = 10,
				-- #elseif AFTER 3.2.0
				["lvl"] = 20,
				-- #else
				["lvl"] = 40,
				-- #endif
				["races"] = { BLOODELF },
				["classes"] = { PALADIN },
				["timeline"] = { ADDED_2_0_1 }
			}),
			mount(13819, {	-- Warhorse (MOUNT!)
				-- #if AFTER 9.0.1
				["description"] = "|cFF40bf40Received on reaching Level 10 as a Human or Dwarf Paladin.|r",
				["lvl"] = 10,
				-- #elseif AFTER 3.2.0
				["lvl"] = 20,
				-- #else
				["lvl"] = 40,
				-- #endif
				["races"] = { HUMAN, DWARF },
				["classes"] = { PALADIN },
			}),
		}),
		n(ARMOR, {
			i(24146, {	-- Initiate's Boots
				--["races"] = { BLOODELF },
				["timeline"] = { ADDED_2_0_1, REMOVED_9_1_5 }
			}),
			i(52549, {	-- Initiate's Pants
				--["races"] = { TAUREN },
				["timeline"] = { ADDED_4_0_3, REMOVED_9_1_5 }
			}),
			i(24145, {	-- Initiate's Pants
				--["races"] = { BLOODELF },
				["timeline"] = { ADDED_2_0_1, REMOVED_9_1_5 }
			}),
			i(58248, {	-- Initiate's Vest
				--["races"] = { TAUREN },
				["timeline"] = { ADDED_4_0_3, REMOVED_9_1_5 }
			}),
			i(58237, {	-- Initiate's Vest
				--["races"] = { BLOODELF },
				["timeline"] = { ADDED_4_0_3, REMOVED_9_1_5 }
			}),
			i(187722, {	-- Paladin's Chestplate
				--["races"] = { HUMAN, DWARF, DRAENEI, TAUREN, BLOODELF },
				["timeline"] = { ADDED_9_1_5 },
			}),
			i(187725, {	-- Paladin's Cuffs
				--["races"] = { HUMAN, DWARF, DRAENEI, TAUREN, BLOODELF },
				["timeline"] = { ADDED_9_1_5 },
			}),
			i(187724, {	-- Paladin's Gauntlets
				--["races"] = { HUMAN, DWARF, DRAENEI, TAUREN, BLOODELF },
				["timeline"] = { ADDED_9_1_5 },
			}),
			i(187726, {	-- Paladin's Girdle
				--["races"] = { HUMAN, DWARF, DRAENEI, TAUREN, BLOODELF },
				["timeline"] = { ADDED_9_1_5 },
			}),
			i(187723, {	-- Paladin's Greaves
				--["races"] = { HUMAN, DWARF, DRAENEI, TAUREN, BLOODELF },
				["timeline"] = { ADDED_9_1_5 },
			}),
			i(187727, {	-- Paladin's Sabatons
				--["races"] = { HUMAN, DWARF, DRAENEI, TAUREN, BLOODELF },
				["timeline"] = { ADDED_9_1_5 },
			}),
			i(43, {	-- Squire's Boots
				--["races"] = { HUMAN, DWARF },
				["timeline"] = { REMOVED_9_1_5 }
			}),
			i(52533, {	-- Squire's Boots
				--["races"] = { DRAENEI },
				["timeline"] = { ADDED_4_0_3, REMOVED_9_1_5 }
			}),
			i(44, {	-- Squire's Pants
				--["races"] = { HUMAN, DWARF },
				["timeline"] = { REMOVED_9_1_5 }
			}),
			i(6118, {	-- Squire's Pants [Dwarf]
				["timeline"] = { REMOVED_4_0_3 }
			}),
			i(23477, {	-- Squire's Pants
				--["races"] = { DRAENEI },
				["timeline"] = { ADDED_2_0_1, REMOVED_9_1_5 }
			}),
			i(58233, {	-- Squire's Vest
				--["races"] = { HUMAN, DWARF },
				["timeline"] = { ADDED_4_0_3, REMOVED_9_1_5 }
			}),
			i(58242, {	-- Squire's Vest
				--["races"] = { DRAENEI },
				["timeline"] = { ADDED_4_0_3, REMOVED_9_1_5 }
			}),
		}),
		n(WEAPONS, {
			i(52557, {	-- Battleworn Hammer
				["timeline"] = { ADDED_4_0_1, REMOVED_9_0_1 }	-- TODO: I am not sure when this got removed.
			}),
			i(36),	-- Worn Mace
			i(2362),	-- Worn Wooden Shield
		}),
		n(ALLIED_RACES, bubbleDownSelf({ ["timeline"] = { ADDED_7_3_5 }, }, {
			i(157698),	-- Lightsoul Battleplate
			i(157705),	-- Lightsoul Vambraces
			i(157700),	-- Lightsoul Gauntlets
			i(157704),	-- Lightsoul Girdle
			i(157702),	-- Lightsoul Legplates
			i(157699),	-- Lightsoul Sabatons
			i(157631, {	-- Maul of Smiting
				["description"] = "New Lightforged Draenei Paladins start with this weapon."
			}),
			mount(290608, {	-- Crusader's Direhorn (MOUNT!)
				["timeline"] = { ADDED_8_1_5 },
				["races"] = { ZANDALARI },
			}),
			mount(270562, {	-- Darkforge Ram (MOUNT!)
				["timeline"] = { ADDED_8_0_1 },
				["races"] = { DARKIRON },
			}),
			mount(363613, {	-- Lightforged Ruinstrider (MOUNT!)
				["timeline"] = { ADDED_9_1_5 },
				["races"] = { LIGHTFORGED },
			}),
		})),
	}),
	cl(PRIEST, {
		n(ARMOR, {
			i(1396, {	-- Acolyte's Pants
				--["races"] = { DRAENEI },
				["timeline"] = { REMOVED_9_1_5 }
			}),
			i(23322, {	-- Acolyte's Robe
				--["races"] = { DRAENEI },
				["timeline"] = { ADDED_2_0_1, REMOVED_9_1_5 }
			}),
			i(232330, {	-- Creche-Weaver's Bangle
				--["races"] = { DRACTHYR_ALLIANCE, DRACTHYR_HORDE },
				["timeline"] = { ADDED_11_0_5 },
			}),
			i(232333, {	-- Creche-Weaver's Leggings
				--["races"] = { DRACTHYR_ALLIANCE, DRACTHYR_HORDE },
				["timeline"] = { ADDED_11_0_5 },
			}),
			i(232334, {	-- Creche-Weaver's Mitts
				--["races"] = { DRACTHYR_ALLIANCE, DRACTHYR_HORDE },
				["timeline"] = { ADDED_11_0_5 },
			}),
			i(232332, {	-- Creche-Weaver's Robe
				--["races"] = { DRACTHYR_ALLIANCE, DRACTHYR_HORDE },
				["timeline"] = { ADDED_11_0_5 },
			}),
			i(232335, {	-- Creche-Weaver's Slippers
				--["races"] = { DRACTHYR_ALLIANCE, DRACTHYR_HORDE },
				["timeline"] = { ADDED_11_0_5 },
			}),
			i(49406, {	-- Gilnean Neophyte's Boots
				--["races"] = { WORGEN },
				["timeline"] = { ADDED_4_0_3 }
			}),
			i(49404, {	-- Gilnean Neophyte's Pants
				--["races"] = { WORGEN },
				["timeline"] = { ADDED_4_0_3 }
			}),
			i(49403, {	-- Gilnean Neophyte's Robe
				--["races"] = { WORGEN },
				["timeline"] = { ADDED_4_0_3 }
			}),
			i(49512, {	-- Goblin Neophyte's Pants
				--["races"] = { GOBLIN },
				["timeline"] = { ADDED_4_0_3 }
			}),
			i(49510, {	-- Goblin Neophyte's Robe
				--["races"] = { GOBLIN },
				["timeline"] = { ADDED_4_0_3 }
			}),
			i(49531, {	-- Goblin Neophyte's Shoes
				--["races"] = { GOBLIN },
				["timeline"] = { ADDED_4_0_3 }
			}),
			i(51, {	-- Neophyte's Boots
				--["races"] = { HUMAN, DWARF, GNOME, NIGHTELF, UNDEAD, BLOODELF },
				["timeline"] = { REMOVED_9_1_5 }
			}),
			i(52, {	-- Neophyte's Pants
				--["races"] = { HUMAN, DWARF, GNOME, NIGHTELF, UNDEAD, BLOODELF },
				["timeline"] = { REMOVED_9_1_5 }
			}),
			i(52680, {	-- Neophyte's Pants
				--["races"] = { TAUREN, TROLL },
				["timeline"] = { ADDED_4_0_3, REMOVED_9_1_5 }
			}),
			i(6098, {	-- Neophyte's Robe
				--["races"] = { HUMAN, DWARF, GNOME },
				["timeline"] = { REMOVED_9_1_5 }
			}),
			i(6119, {	-- Neophyte's Robe
				--["races"] = { NIGHTELF },
				["timeline"] = { REMOVED_9_1_5 }
			}),
			i(6144, {	-- Neophyte's Robe
				--["races"] = { UNDEAD },
				["timeline"] = { REMOVED_9_1_5 }
			}),
			i(52547, {	-- Neophyte's Robe
				--["races"] = { TAUREN, TROLL },
				["timeline"] = { ADDED_4_0_3, REMOVED_9_1_5 }
			}),
			i(20891, {	-- Neophyte's Robe
				--["races"] = { BLOODELF },
				["timeline"] = { ADDED_2_0_1, REMOVED_9_1_5 }
			}),
			i(187768, {	-- Priest's Mitts
			--[[
				["races"] = { HUMAN, DWARF, NIGHTELF, GNOME, DRAENEI, UNDEAD, TAUREN, TROLL, BLOODELF,
				-- #if AFTER DF
				ORC,
				-- #endif
				},
			]]--
				["timeline"] = { ADDED_9_1_5 },
			}),
			i(187767, {	-- Priest's Robes
			--[[
				["races"] = { HUMAN, DWARF, NIGHTELF, GNOME, DRAENEI, UNDEAD, TAUREN, TROLL, BLOODELF,
				-- #if AFTER DF
				ORC,
				-- #endif
				},
			]]--
				["timeline"] = { ADDED_9_1_5 },
			}),
			i(187766, {	-- Priest's Sash
			--[[
				["races"] = { HUMAN, DWARF, NIGHTELF, GNOME, DRAENEI, UNDEAD, TAUREN, TROLL, BLOODELF,
				-- #if AFTER DF
				ORC,
				-- #endif
				},
			]]--
				["timeline"] = { ADDED_9_1_5 },
			}),
			i(187765, {	-- Priest's Slippers
			--[[
				["races"] = { HUMAN, DWARF, NIGHTELF, GNOME, DRAENEI, UNDEAD, TAUREN, TROLL, BLOODELF,
				-- #if AFTER DF
				ORC,
				-- #endif
				},
			]]--
				["timeline"] = { ADDED_9_1_5 },
			}),
			i(187764, {	-- Priest's Trousers
			--[[
				["races"] = { HUMAN, DWARF, NIGHTELF, GNOME, DRAENEI, UNDEAD, TAUREN, TROLL, BLOODELF,
				-- #if AFTER DF
				ORC,
				-- #endif
				},
			]]--
				["timeline"] = { ADDED_9_1_5 },
			}),
			i(187763, {	-- Priest's Wristwraps
			--[[
				["races"] = { HUMAN, DWARF, NIGHTELF, GNOME, DRAENEI, UNDEAD, TAUREN, TROLL, BLOODELF,
				-- #if AFTER DF
				ORC,
				-- #endif
				},
			]]--
				["timeline"] = { ADDED_9_1_5 },
			}),
			i(77509, {	-- Trainee's Cord
				--["races"] = { PANDAREN_ALLIANCE, PANDAREN_HORDE },
				["timeline"] = { ADDED_5_0_4 }
			}),
			i(72020, {	-- Trainee's Leggings
				--["races"] = { PANDAREN_ALLIANCE, PANDAREN_HORDE },
				["timeline"] = { ADDED_5_0_4 }
			}),
			i(72019, {	-- Trainee's Vest
				--["races"] = { PANDAREN_ALLIANCE, PANDAREN_HORDE },
				["timeline"] = { ADDED_5_0_4 }
			}),
			i(77526, {	-- Trainee's Wristwraps
				--["races"] = { PANDAREN_ALLIANCE, PANDAREN_HORDE },
				["timeline"] = { ADDED_5_0_4 }
			}),
		}),
		n(WEAPONS, {
			i(20978, {	-- Apprentice's Staff
				["timeline"] = { ADDED_3_0_2 }
			}),
			i(35),	-- Bent Staff
			i(232329, {	-- Creche-Weaver's Spire
				--["races"] = { DRACTHYR_ALLIANCE, DRACTHYR_HORDE },
				["timeline"] = { ADDED_11_0_5 },
			}),
			i(3661),	-- Handcrafted Staff
			i(20981, {	-- Neophyte's Mace
				["timeline"] = { ADDED_2_0_1, REMOVED_3_0_2 }
			}),
		}),
		n(ALLIED_RACES, bubbleDownSelf({ ["timeline"] = { ADDED_7_3_5 }, }, {
			i(157710),	-- Curate's Robe
			i(157713),	-- Curate's Bindings
			i(157707),	-- Curate's Gloves
			i(157712),	-- Curate's Sash
			i(157709),	-- Curate's Pants
			i(157706),	-- Curate's Boots
			i(157632, {	-- Staff of Interwoven Power
				["description"] = "New Nightborne or Void Elf Priests start with this weapon."
			}),
		})),
	}),
	cl(ROGUE, {
		n(ARMOR, {
			i(232292, {	-- Creche-Talon's Bindings
				--["races"] = { DRACTHYR_ALLIANCE, DRACTHYR_HORDE },
				["timeline"] = { ADDED_11_0_5 },
			}),
			i(232325, {	-- Creche-Talon's Breeches
				--["races"] = { DRACTHYR_ALLIANCE, DRACTHYR_HORDE },
				["timeline"] = { ADDED_11_0_5 },
			}),
			i(232326, {	-- Creche-Talon's Gloves
				--["races"] = { DRACTHYR_ALLIANCE, DRACTHYR_HORDE },
				["timeline"] = { ADDED_11_0_5 },
			}),
			i(232328, {	-- Creche-Talon's Jerkin
				--["races"] = { DRACTHYR_ALLIANCE, DRACTHYR_HORDE },
				["timeline"] = { ADDED_11_0_5 },
			}),
			i(232327, {	-- Creche-Talon's Kickers
				--["races"] = { DRACTHYR_ALLIANCE, DRACTHYR_HORDE },
				["timeline"] = { ADDED_11_0_5 },
			}),
			i(48, {	-- Footpad's Pants
				--["races"] = { HUMAN, DWARF, GNOME, NIGHTELF, UNDEAD },
				["timeline"] = { REMOVED_9_1_5 }
			}),
			i(47, {	-- Footpad's Shoes
				--["races"] = { HUMAN, DWARF, GNOME, NIGHTELF, UNDEAD },
				["timeline"] = { REMOVED_9_1_5 }
			}),
			i(58234, {	-- Footpad's Vest
				--["races"] = { HUMAN, DWARF, GNOME, NIGHTELF, UNDEAD },
				["timeline"] = { ADDED_4_0_3, REMOVED_9_1_5 }
			}),
			i(49575, {	-- Gilnean Footpad's Boots
				--["races"] = { WORGEN },
				["timeline"] = { ADDED_4_0_3 }
			}),
			i(49573, {	-- Gilnean Footpad's Gloves
				--["races"] = { WORGEN },
				["timeline"] = { ADDED_4_0_3 }
			}),
			i(49572, {	-- Gilnean Footpad's Pants
				--["races"] = { WORGEN },
				["timeline"] = { ADDED_4_0_3 }
			}),
			i(49574, {	-- Gilnean Footpad's Tunic
				--["races"] = { WORGEN },
				["timeline"] = { ADDED_4_0_3 }
			}),
			i(49516, {	-- Goblin Thug's Boots
				--["races"] = { GOBLIN },
				["timeline"] = { ADDED_4_0_3 }
			}),
			i(49515, {	-- Goblin Thug's Pants
				--["races"] = { GOBLIN },
				["timeline"] = { ADDED_4_0_3 }
			}),
			i(49514, {	-- Goblin Thug's Tunic
				--["races"] = { GOBLIN },
				["timeline"] = { ADDED_4_0_3 }
			}),
			i(20896, {	-- Lookout's Pants
				--["races"] = { BLOODELF },
				["timeline"] = { ADDED_2_0_1, REMOVED_9_1_5 }
			}),
			i(20898, {	-- Lookout's Shoes
				--["races"] = { BLOODELF },
				["timeline"] = { ADDED_2_0_1, REMOVED_9_1_5 }
			}),
			i(58238, {	-- Lookout's Vest
				--["races"] = { BLOODELF },
				["timeline"] = { ADDED_4_0_3, REMOVED_9_1_5 }
			}),
			i(187770, {	-- Rogue's Footwear
			--[[
				["races"] = { HUMAN, DWARF, GNOME, NIGHTELF, ORC, UNDEAD, TROLL, BLOODELF,
					-- #if AFTER DF
					DRAENEI,
					TAUREN,
					-- #endif
				},
			]]--
				["timeline"] = { ADDED_9_1_5 },
			}),
			i(187773, {	-- Rogue's Handwraps
			--[[
				["races"] = { HUMAN, DWARF, GNOME, NIGHTELF, ORC, UNDEAD, TROLL, BLOODELF,
					-- #if AFTER DF
					DRAENEI,
					TAUREN,
					-- #endif
				},
			]]--
				["timeline"] = { ADDED_9_1_5 },
			}),
			i(187769, {	-- Rogue's Leggings
			--[[
				["races"] = { HUMAN, DWARF, GNOME, NIGHTELF, ORC, UNDEAD, TROLL, BLOODELF,
					-- #if AFTER DF
					DRAENEI,
					TAUREN,
					-- #endif
				},
			]]--
				["timeline"] = { ADDED_9_1_5 },
			}),
			i(187772, {	-- Rogue's Tunic
			--[[
				["races"] = { HUMAN, DWARF, GNOME, NIGHTELF, ORC, UNDEAD, TROLL, BLOODELF,
					-- #if AFTER DF
					DRAENEI,
					TAUREN,
					-- #endif
				},
			]]--
				["timeline"] = { ADDED_9_1_5 },
			}),
			i(187771, {	-- Rogue's Waistband
			--[[
				["races"] = { HUMAN, DWARF, GNOME, NIGHTELF, ORC, UNDEAD, TROLL, BLOODELF,
					-- #if AFTER DF
					DRAENEI,
					TAUREN,
					-- #endif
				},
			]]--
				["timeline"] = { ADDED_9_1_5 },
			}),
			i(121, {	-- Thug Boots
				--["races"] = { ORC, TROLL },
				["timeline"] = { REMOVED_9_1_5 }
			}),
			i(120, {	-- Thug Pants
				--["races"] = { ORC, TROLL },
				["timeline"] = { REMOVED_9_1_5 }
			}),
			i(58246, {	-- Thug Vest
				--["races"] = { ORC, TROLL },
				["timeline"] = { ADDED_4_0_3, REMOVED_9_1_5 }
			}),
		}),
		n(WEAPONS, {
			i(232289, {	-- Creche-Talon's Baselard
				--["races"] = { DRACTHYR_ALLIANCE, DRACTHYR_HORDE },
				["timeline"] = { ADDED_11_0_5 },
			}),
			i(232288, {	-- Creche-Talon's Poniard
				--["races"] = { DRACTHYR_ALLIANCE, DRACTHYR_HORDE },
				["timeline"] = { ADDED_11_0_5 },
			}),
			i(20977, {	-- Recruit's Shortsword
				["timeline"] = { ADDED_4_0_1, REMOVED_9_0_1 }	-- TODO: I am not sure when this got removed.
			}),
			i(20982, {	-- Sharp Dagger
				["timeline"] = { ADDED_2_0_1, REMOVED_9_0_1 }	-- TODO: I am not sure when this got removed.
			}),
			i(50057, {	-- Sharp Dirk
				["timeline"] = { ADDED_3_3_0 }
			}),
			i(2092),	-- Worn Dagger
			i(50055, {	-- Worn Dirk
				["timeline"] = { ADDED_3_3_0 }
			}),
		}),
		n(ALLIED_RACES, bubbleDownSelf({ ["timeline"] = { ADDED_7_3_5 }, }, {
			i(157714),	-- Nimblefinger Jerkin
			i(157721),	-- Nimblefinger Bindings
			i(157716),	-- Nimblefinger Gloves
			i(157720),	-- Nimblefinger Waistband
			i(157718),	-- Nimblefinger Britches
			i(157715),	-- Nimblefinger Boots
			i(157636),	-- Serrated Poinard
		})),
	}),
	cl(SHAMAN, {
		n(ARMOR, {
			i(52540, {	-- Primal Boots
				--["races"] = { DWARF},
				["timeline"] = { ADDED_4_0_3, REMOVED_9_1_5 }
			}),
			i(52552, {	-- Primal Boots
				--["races"] = { GOBLIN },
				["timeline"] = { ADDED_4_0_3 }
			}),
			i(153, {	-- Primitive Kilt
				["timeline"] = { REMOVED_4_0_3 }
			}),
			i(52539, {	-- Primal Pants
				--["races"] = { DWARF },
				["timeline"] = { ADDED_4_0_3, REMOVED_9_1_5 }
			}),
			i(52535, {	-- Primal Pants
				--["races"] = { DRAENEI },
				["timeline"] = { ADDED_4_0_3, REMOVED_9_1_5 }
			}),
			i(52545, {	-- Primal Pants
				--["races"] = { ORC, TROLL, TAUREN },
				["timeline"] = { ADDED_4_0_3, REMOVED_9_1_5 }
			}),
			i(52551, {	-- Primal Pants
				--["races"] = { GOBLIN },
				["timeline"] = { ADDED_4_0_3 }
			}),
			i(52538, {	-- Primal Robe
				--["races"] = { DWARF },
				["timeline"] = { ADDED_4_0_3, REMOVED_9_1_5 }
			}),
			i(52534, {	-- Primal Robe
				--["races"] = { DRAENEI },
				["timeline"] = { ADDED_4_0_3, REMOVED_9_1_5 }
			}),
			i(52544, {	-- Primal Robe
				--["races"] = { ORC, TROLL, TAUREN },
				["timeline"] = { ADDED_4_0_3, REMOVED_9_1_5 }
			}),
			i(52550, {	-- Primal Shirt
				--["races"] = { GOBLIN },
				["timeline"] = { ADDED_4_0_3 }
			}),
			i(187721, {	-- Shaman's Belt
				--["races"] = { DWARF, DRAENEI, ORC, TAUREN, TROLL },
				["timeline"] = { ADDED_9_1_5 },
			}),
			i(187720, {	-- Shaman's Boots
				--["races"] = { DWARF, DRAENEI, ORC, TAUREN, TROLL },
				["timeline"] = { ADDED_9_1_5 },
			}),
			i(187719, {	-- Shaman's Bracers
				--["races"] = { DWARF, DRAENEI, ORC, TAUREN, TROLL },
				["timeline"] = { ADDED_9_1_5 },
			}),
			i(187718, {	-- Shaman's Gloves
				--["races"] = { DWARF, DRAENEI, ORC, TAUREN, TROLL },
				["timeline"] = { ADDED_9_1_5 },
			}),
			i(187717, {	-- Shaman's Pants
				--["races"] = { DWARF, DRAENEI, ORC, TAUREN, TROLL },
				["timeline"] = { ADDED_9_1_5 },
			}),
			i(187716, {	-- Shaman's Vest
				--["races"] = { DWARF, DRAENEI, ORC, TAUREN, TROLL },
				["timeline"] = { ADDED_9_1_5 },
			}),
		}),
		n(WEAPONS, {
			i(36),		-- Worn Mace
			i(2362),	-- Worn Wooden Shield
		}),
		n(ALLIED_RACES, bubbleDownSelf({ ["timeline"] = { ADDED_7_3_5 }, }, {
			i(157722),	-- Totem-Caller Tunic
			i(157729),	-- Totem-Caller Armbands
			i(157724),	-- Totem-Caller Gloves
			i(157728),	-- Totem-Caller Belt
			i(157726),	-- Totem-Caller Legwraps
			i(157723),	-- Totem-Caller Boots
			i(157638, {	-- Lightning-Binder's Claws
				["description"] = "New Allied Race Shamans start with this weapon."
			}),
			i(157655, {	-- Lightning-Binder's Bulwark
				["description"] = "New Allied Race Shamans start with this weapon."
			}),
		})),
	}),
	cl(WARLOCK, {
		filter(MOUNTS, {
			mount(5784, {	-- Felsteed (MOUNT!)
				-- #if AFTER 9.0.1
				["description"] = "|cFF40bf40Received on reaching Level 10 as a Warlock.|r",
				["lvl"] = 10,
				-- #elseif AFTER 3.2.0
				["lvl"] = 20,
				-- #else
				["lvl"] = 40,
				-- #endif
				["classes"] = { WARLOCK },
			}),
		}),
		n(MAILBOX, bubbleDownSelf({ ["timeline"] = { ADDED_10_1_5 } }, {
			i(206681),	-- Letter from Oman (QI!)
			i(208226, {	-- Mysterious Letter (QI!)
				["races"] = ALLIANCE_ONLY,
			}),
			i(208227, {	-- Mysterious Letter (QI!)
				["races"] = HORDE_ONLY,
			}),
		})),
		n(QUESTS, {
			["timeline"] = { ADDED_9_2_0 },
			["groups"] = {
				q(65425, {	-- Whatever You Sayaad (A)
					["description"] = "Start this quest via your own Sayaad(Succubus/Incubus Pet).",
					["provider"] = { "n", 184600 },	-- Warlock Minion
					["coord"] = { 79.5, 69.8, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { WARLOCK },
					["timeline"] = { ADDED_9_2_0, REMOVED_10_1_5 },
				}),
				q(65424, {	-- Whatever You Sayaad (H)
					["description"] = "Start this quest via your own Sayaad(Succubus/Incubus Pet).",
					["provider"] = { "n", 184600 },	-- Warlock Minion
					["coord"] = { 74.6, 47.4, ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["classes"] = { WARLOCK },
					["timeline"] = { ADDED_9_2_0, REMOVED_10_1_5 },
				}),
				q(76427, {	-- A Dark Summons (H)
					["provider"] = { "i", 208227 },	-- Mysterious Letter (QI!)
					["races"] = HORDE_ONLY,
					["classes"] = { WARLOCK },
					["timeline"] = { ADDED_10_1_5 },
					["isBreadcrumb"] = true,	-- need to confirm
				}),
				q(76430, {	-- Beingning Impositions (H)
					["provider"] = { "n", 207051 },	-- Assistant Phineas
					-- ["coord"] = { X, Y, ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["classes"] = { WARLOCK },
					["timeline"] = { ADDED_10_1_5 },
				}),
				q(76410, {	-- A Dark Summons (A)
					["provider"] = { "i", 208226 },	-- Mysterious Letter (QI!)
					["races"] = ALLIANCE_ONLY,
					["classes"] = { WARLOCK },
					["timeline"] = { ADDED_10_1_5 },
					["isBreadcrumb"] = true,	-- need to confirm
				}),
				q(75538, {	-- Beginning Impositions (A)
					["sourceQuests"] = { 76410 },	-- A Dark Summons (?)
					["provider"] = { "n", 204198 },	-- Assistant Phineas
					["coord"] = { 43.6, 79.3, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { WARLOCK },
					["timeline"] = { ADDED_10_1_5 },
				}),
				q(75539, {	-- Some Wicked Things This Way Come
					["sourceQuests"] = {
						75538,	-- Beginning Impositions (A)
						76430,	-- Beingning Impositions (H)
					},
					["sourceQuestNumRequired"] = 1,
					["provider"] = { "n", 203968 },	-- Madam Shadow
					["coord"] = { 47.4, 78.9, DARKMOON_ISLAND },
					["classes"] = { WARLOCK },
					["timeline"] = { ADDED_10_1_5 },
				}),
				q(75540, {	-- Hermetic Insurance
					["sourceQuests"] = { 75539 },	-- Some Wicked Things This Way Come
					["provider"] = { "n", 203968 },	-- Madam Shadow
					["coord"] = { 47.4, 78.9, DARKMOON_ISLAND },
					["classes"] = { WARLOCK },
					["timeline"] = { ADDED_10_1_5 },
				}),
				q(75541, {	-- Those Who Hesitate
					["sourceQuests"] = { 75540 },	-- Hermetic Insurance
					["provider"] = { "n", 203968 },	-- Madam Shadow
					["coord"] = { 47.4, 78.9, DARKMOON_ISLAND },
					["classes"] = { WARLOCK },
					["timeline"] = { ADDED_10_1_5 },
				}),
				q(76155, {	-- A Wolf Among Sheep
					["sourceQuests"] = { 75541 },	-- Those Who Hesitate
					["provider"] = { "n", 205276 },	-- Initiate Oman
					["coord"] = { 47.4, 78.9, DARKMOON_ISLAND },
					["classes"] = { WARLOCK },
					["timeline"] = { ADDED_10_1_5 },
					["g"] = {
						i(206160),	-- Madam Shadow's Grimoire (QI!)
						spell(412234),	-- Madam Shadow's Soulstone
					},
				}),
				q(75542, {	-- Curses & Cultists
					["sourceQuests"] = { 76155 },	-- A Wolf Among Sheep
					["provider"] = { "n", 203968 },	-- Madam Shadow
					["coord"] = { 47.4, 78.9, DARKMOON_ISLAND },
					["classes"] = { WARLOCK },
					["timeline"] = { ADDED_10_1_5 },
				}),
				q(75639, {	-- Fel Suspicions
					["sourceQuests"] = { 75542 },	-- Curses & Cultists
					["provider"] = { "n", 205433 },	-- Initiate Oman
					["coord"] = { 58.9, 63.1, DARKMOON_ISLAND },
					["classes"] = { WARLOCK },
					["timeline"] = { ADDED_10_1_5 },
				}),
				q(75543, {	-- Last Rites By Accident
					["sourceQuests"] = { 75639 },	-- Fel Suspicions
					["provider"] = { "o", 402609 },	-- Demonic Gateway
					["coord"] = { 59.7, 62.2, DARKMOON_ISLAND },
					["classes"] = { WARLOCK },
					["timeline"] = { ADDED_10_1_5 },
				}),
				q(75544, {	-- When Revenge Burns Green
					["sourceQuests"] = { 75543 },	-- Last Rites By Accident
					["provider"] = { "n", 205575 },	-- Initiate Oman
					["coord"] = { 8.4, 36.0, BURNING_STEPPES },
					["classes"] = { WARLOCK },
					["timeline"] = { ADDED_10_1_5 },
					["g"] = {
						spell(417884),	-- Fiendish Imps
						i(208108),	-- Madam Shadow's Old Grimoire
					},
				}),
				q(76163, {	-- A Lighter Shade of Fel
					["sourceQuests"] = { 75544 },	-- When Revenge Burns Green
					["provider"] = { "i", 206681 },	-- Letter from Oman (QI!)
					["classes"] = { WARLOCK },
					["description"] = "You get this quest in your mailbox next weekly reset after finishing 'When Revenge Burns Green'",
					["timeline"] = { ADDED_10_1_5 },
					["g"] = {
						i(207101),	-- Glyph of Banehollow's Soulstone
					},
				}),
			},
		}),
		n(ARMOR, {
			i(1396, {	-- Acolyte's Pants
				--["races"] = { HUMAN, DWARF, GNOME, UNDEAD, BLOODELF },
				["timeline"] = { REMOVED_9_1_5 },
			}),
			i(52679, {	-- Acolyte's Pants
				--["races"] = { ORC, TROLL },
				["timeline"] = { ADDED_4_0_3, REMOVED_9_1_5 },
			}),
			i(57, {	-- Acolyte's Robe
				--["races"] = { HUMAN, DWARF, GNOME },
				["timeline"] = { REMOVED_9_1_5 },
			}),
			i(52543, {	-- Acolyte's Robe
				--["races"] = { ORC, TROLL },
				["timeline"] = { ADDED_4_0_3, REMOVED_9_1_5 },
			}),
			i(6129, {	-- Acolyte's Robe
				--["races"] = { UNDEAD },
				["timeline"] = { REMOVED_9_1_5 },
			}),
			i(20892, {	-- Acolyte's Robe
				--["races"] = { BLOODELF },
				["timeline"] = { ADDED_2_0_1, REMOVED_9_1_5 },
			}),
			i(59, {	-- Acolyte's Shoes
				--["races"] = { HUMAN, DWARF, GNOME, UNDEAD, BLOODELF },
				["timeline"] = { REMOVED_9_1_5 },
			}),
			i(232032, {	-- Creche-Binder's Gloves
				--["races"] = { DRACTHYR_ALLIANCE, DRACTHYR_HORDE },
				["timeline"] = { ADDED_11_0_5 },
			}),
			i(232034, {	-- Creche-Binder's Leggings
				--["races"] = { DRACTHYR_ALLIANCE, DRACTHYR_HORDE },
				["timeline"] = { ADDED_11_0_5 },
			}),
			i(232036, {	-- Creche-Binder's Robe
				--["races"] = { DRACTHYR_ALLIANCE, DRACTHYR_HORDE },
				["timeline"] = { ADDED_11_0_5 },
			}),
			i(232035, {	-- Creche-Binder's Soles
				--["races"] = { DRACTHYR_ALLIANCE, DRACTHYR_HORDE },
				["timeline"] = { ADDED_11_0_5 },
			}),
			i(232037, {	-- Creche-Binder's Wrappings
				--["races"] = { DRACTHYR_ALLIANCE, DRACTHYR_HORDE },
				["timeline"] = { ADDED_11_0_5 },
			}),
			i(49407, {	-- Gilnean Acolyte's Boots
				--["races"] = { WORGEN },
				["timeline"] = { ADDED_4_0_3 },
			}),
			i(49409, {	-- Gilnean Acolyte's Pants
				--["races"] = { WORGEN },
				["timeline"] = { ADDED_4_0_3 },
			}),
			i(49408, {	-- Gilnean Acolyte's Robe
				--["races"] = { WORGEN },
				["timeline"] = { ADDED_4_0_3 },
			}),
			i(49521, {	-- Goblin Acolyte's Pants
				--["races"] = { GOBLIN },
				["timeline"] = { ADDED_4_0_3 },
			}),
			i(49520, {	-- Goblin Acolyte's Robe
				--["races"] = { GOBLIN },
				["timeline"] = { ADDED_4_0_3 },
			}),
			i(49522, {	-- Goblin Acolyte's Shoes
				--["races"] = { GOBLIN },
				["timeline"] = { ADDED_4_0_3 },
			}),
			i(187753, {	-- Warlock's Mitts
				--["races"] = { HUMAN, DWARF, GNOME, ORC, UNDEAD, TROLL, BLOODELF },
				["timeline"] = { ADDED_9_1_5 },
			}),
			i(187751, {	-- Warlock's Robes
				--["races"] = { HUMAN, DWARF, GNOME, ORC, UNDEAD, TROLL, BLOODELF },
				["timeline"] = { ADDED_9_1_5 },
			}),
			i(187756, {	-- Warlock's Sash
				--["races"] = { HUMAN, DWARF, GNOME, ORC, UNDEAD, TROLL, BLOODELF },
				["timeline"] = { ADDED_9_1_5 },
			}),
			i(187755, {	-- Warlock's Slippers
				--["races"] = { HUMAN, DWARF, GNOME, ORC, UNDEAD, TROLL, BLOODELF },
				["timeline"] = { ADDED_9_1_5 },
			}),
			i(187752, {	-- Warlock's Trousers
				--["races"] = { HUMAN, DWARF, GNOME, ORC, UNDEAD, TROLL, BLOODELF },
				["timeline"] = { ADDED_9_1_5 },
			}),
			i(187754, {	-- Warlock's Wristwraps
				--["races"] = { HUMAN, DWARF, GNOME, ORC, UNDEAD, TROLL, BLOODELF },
				["timeline"] = { ADDED_9_1_5 },
			}),
		}),
		n(WEAPONS, {
			i(20978, {	-- Apprentice's Staff
				["timeline"] = { ADDED_3_0_2 },
			}),
			i(35),		-- Bent Staff
			i(232038, {	-- Creche-Binder's Rod
				--["races"] = { DRACTHYR_ALLIANCE, DRACTHYR_HORDE },
				["timeline"] = { ADDED_11_0_5 },
			}),
		}),
		n(ALLIED_RACES, bubbleDownSelf({ ["timeline"] = { ADDED_7_3_5 }, }, {
			i(157734),	-- Felburner's Robe
			i(157737),	-- Felburner's Wristwraps
			i(157731),	-- Felburner's Handwraps
			i(157736),	-- Felburner's Cord
			i(157733),	-- Felburner's Leggings
			i(157730),	-- Felburner's Sandals
			i(157652, {	-- Shadow-Binder's Spire
				["description"] = "New Allied Race Warlocks start with this weapon."
			}),
		})),
	}),
	cl(WARRIOR, {
		n(ARMOR, {
			i(140, {	-- Brawler's Boots
				--["races"] = { ORC, TROLL, TAUREN },
				["timeline"] = { REMOVED_9_1_5 },
			}),
			i(139, {	-- Brawler's Pants
				--["races"] = { ORC, TROLL, TAUREN },
				["timeline"] = { REMOVED_9_1_5 },
			}),
			i(58245, {	-- Brawler's Vest
				--["races"] = { ORC, TROLL, TAUREN },
				["timeline"] = { ADDED_4_0_3, REMOVED_9_1_5 },
			}),
			i(232276, {	-- Creche-Guard's Brestplate
				--["races"] = { DRACTHYR_ALLIANCE, DRACTHYR_HORDE },
				["timeline"] = { ADDED_11_0_5 },
			}),
			i(232274, {	-- Creche-Guard's Gauntlets
				--["races"] = { DRACTHYR_ALLIANCE, DRACTHYR_HORDE },
				["timeline"] = { ADDED_11_0_5 },
			}),
			i(232272, {	-- Creche-Guard's Legplates
				--["races"] = { DRACTHYR_ALLIANCE, DRACTHYR_HORDE },
				["timeline"] = { ADDED_11_0_5 },
			}),
			i(232275, {	-- Creche-Guard's Sabatons
				--["races"] = { DRACTHYR_ALLIANCE, DRACTHYR_HORDE },
				["timeline"] = { ADDED_11_0_5 },
			}),
			i(232268, {	-- Creche-Guard's Vambraces
				--["races"] = { DRACTHYR_ALLIANCE, DRACTHYR_HORDE },
				["timeline"] = { ADDED_11_0_5 },
			}),
			i(49577, {	-- Gilnean Recruit's Belt
				--["races"] = { WORGEN },
				["timeline"] = { ADDED_4_0_3 },
			}),
			i(49579, {	-- Gilnean Recruit's Boots
				--["races"] = { WORGEN },
				["timeline"] = { ADDED_4_0_3 },
			}),
			i(49576, {	-- Gilnean Recruit's Pants
				--["races"] = { WORGEN },
				["timeline"] = { ADDED_4_0_3 },
			}),
			i(49578, {	-- Gilnean Recruit's Tunic
				--["races"] = { WORGEN },
				["timeline"] = { ADDED_4_0_3 },
			}),
			i(49527, {	-- Goblin Brawler's Boots
				--["races"] = { GOBLIN },
				["timeline"] = { ADDED_4_0_3 },
			}),
			i(49529, {	-- Goblin Brawler's Gauntlets
				--["races"] = { GOBLIN },
				["timeline"] = { ADDED_4_0_3 },
			}),
			i(49528, {	-- Goblin Brawler's Greaves
				--["races"] = { GOBLIN },
				["timeline"] = { ADDED_4_0_3 },
			}),
			i(49524, {	-- Goblin Brawler's Harness
				--["races"] = { GOBLIN },
				["timeline"] = { ADDED_4_0_3 },
			}),
			i(40, {	-- Recruit's Boots
				--["races"] = { HUMAN, DWARF, GNOME, UNDEAD },
				["timeline"] = { REMOVED_9_1_5 },
			}),
			i(6122, {	-- Recruit's Boots
				--["races"] = { NIGHTELF },
				["timeline"] = { REMOVED_9_1_5 },
			}),
			i(23475, {	-- Recruit's Boots
				--["races"] = { DRAENEI },
				["timeline"] = { ADDED_2_0_1, REMOVED_9_1_5 },
			}),
			i(20903, {	-- Recruit's Boots
				--["races"] = { BLOODELF },
				["timeline"] = { ADDED_4_0_1, REMOVED_9_1_5 },
			}),
			i(39, {	-- Recruit's Pants
				--["races"] = { HUMAN, DWARF, GNOME, UNDEAD },
				["timeline"] = { REMOVED_9_1_5 },
			}),
			i(6121, {	-- Recruit's Pants
				--["races"] = { NIGHTELF },
				["timeline"] = { REMOVED_9_1_5 },
			}),
			i(23474, {	-- Recruit's Pants
				--["races"] = { DRAENEI },
				["timeline"] = { ADDED_2_0_1, REMOVED_9_1_5 },
			}),
			i(20902, {	-- Recruit's Pants
				--["races"] = { BLOODELF },
				["timeline"] = { ADDED_4_0_1, REMOVED_9_1_5 },
			}),
			i(20904, {	-- Recruit's Tunic
				--["races"] = { BLOODELF },
				["timeline"] = { ADDED_4_0_1, REMOVED_9_1_5 },
			}),
			i(58231, {	-- Recruit's Vest
				--["races"] = { HUMAN, DWARF, GNOME, UNDEAD },
				["timeline"] = { ADDED_4_0_3, REMOVED_9_1_5 },
			}),
			i(58244, {	-- Recruit's Vest
				--["races"] = { NIGHTELF },
				["timeline"] = { ADDED_4_0_3, REMOVED_9_1_5 },
			}),
			i(58243, {	-- Recruit's Vest
				--["races"] = { DRAENEI },
				["timeline"] = { ADDED_4_0_3, REMOVED_9_1_5 },
			}),
			i(187748, {	-- Warrior's Chestplate
				--["races"] = { HUMAN, DWARF, NIGHTELF, GNOME, DRAENEI, ORC, UNDEAD, TAUREN, TROLL, BLOODELF },
				["timeline"] = { ADDED_9_1_5 },
			}),
			i(187747, {	-- Warrior's Cuffs
				--["races"] = { HUMAN, DWARF, NIGHTELF, GNOME, DRAENEI, ORC, UNDEAD, TAUREN, TROLL, BLOODELF },
				["timeline"] = { ADDED_9_1_5 },
			}),
			i(187746, {	-- Warrior's Gauntlets
				--["races"] = { HUMAN, DWARF, NIGHTELF, GNOME, DRAENEI, ORC, UNDEAD, TAUREN, TROLL, BLOODELF },
				["timeline"] = { ADDED_9_1_5 },
			}),
			i(187745, {	-- Warrior's Girdle
				--["races"] = { HUMAN, DWARF, NIGHTELF, GNOME, DRAENEI, ORC, UNDEAD, TAUREN, TROLL, BLOODELF },
				["timeline"] = { ADDED_9_1_5 },
			}),
			i(187744, {	-- Warrior's Greaves
				--["races"] = { HUMAN, DWARF, NIGHTELF, GNOME, DRAENEI, ORC, UNDEAD, TAUREN, TROLL, BLOODELF },
				["timeline"] = { ADDED_9_1_5 },
			}),
			i(187743, {	-- Warrior's Sabatons
				--["races"] = { HUMAN, DWARF, NIGHTELF, GNOME, DRAENEI, ORC, UNDEAD, TAUREN, TROLL, BLOODELF },
				["timeline"] = { ADDED_9_1_5 },
			}),
		}),
		n(WEAPONS, {
			i(232264, {	-- Creche-Guard's Greataxe
				--["races"] = { DRACTHYR_ALLIANCE, DRACTHYR_HORDE },
				["timeline"] = { ADDED_11_0_5 },
			}),
			i(12282, {	-- Worn Battleaxe
				["timeline"] = { REMOVED_9_0_1 },	-- TODO: I am not sure when this got removed.
			}),
			i(49778, {	-- Worn Greatsword
				["timeline"] = { ADDED_2_0_1, REMOVED_9_0_1 },	-- TODO: I am not sure when this got removed.
			}),
			i(25),	-- Worn Shortsword
			i(2362),	-- Worn Wooden Shield
		}),
		n(ALLIED_RACES, bubbleDownSelf({ ["timeline"] = { ADDED_7_3_5 }, }, {
			i(157738),	-- Warsinger's Breastplate
			i(157745),	-- Warsinger's Vambraces
			i(157740),	-- Warsinger's Gauntlets
			i(157744),	-- Warsinger's Girdle
			i(157742),	-- Warsinger's Legplates
			i(157739),	-- Warsinger's Sabatons
			i(157643),	-- Helm-Hewer Greataxe
		})),
	}),
	-- #if AFTER 4.0.3
	filter(BACK_F, {
		i(52940, {	-- Candy's Cloak
			["races"] = { GOBLIN },
			["description"] = "Former Starter Cloak for Male Goblins",
			["timeline"] = { ADDED_4_0_3, REMOVED_7_0_3 },
		}),
		i(52937, {	-- Chip's Cloak
			["races"] = { GOBLIN },
			["description"] = "Former Starter Cloak for Female Goblins",
			["timeline"] = { ADDED_4_0_3, REMOVED_7_0_3 },
		}),
		i(232351, {	-- Creche-Waker's Cloak
			["races"] = { DRACTHYR_ALLIANCE, DRACTHYR_HORDE },
			["timeline"] = { ADDED_11_0_5 },
		}),
	}),
	-- #endif
	-- #if AFTER 7.0.3
	filter(COSMETIC, {
		i(143539, {["timeline"] = {ADDED_7_1_0}}),	-- Hidden Belt
		i(168664, {["timeline"] = {ADDED_8_2_0}}),	-- Hidden Boots
		i(168665, {["timeline"] = {ADDED_8_2_0}}),	-- Hidden Bracers
		i(168659, {["timeline"] = {ADDED_8_2_0}}),	-- Hidden Chestpiece
		i(134111, {["timeline"] = {ADDED_7_0_3}}),	-- Hidden Cloak
		i(158329, {["timeline"] = {ADDED_8_0_1}}),	-- Hidden Gloves
		i(134110, {["timeline"] = {ADDED_7_0_3}}),	-- Hidden Helm
		i(216696, {["timeline"] = {ADDED_11_0_0}}),	-- Hidden Pants
		i(142503, {["timeline"] = {ADDED_7_1_0}}),	-- Hidden Shirt
		i(134112, {["timeline"] = {ADDED_7_0_3}}),	-- Hidden Shoulder
		i(142504, {["timeline"] = {ADDED_7_1_0}}),	-- Hidden Tabard
	}),
	-- #endif
	-- #if AFTER 11.0.5
	filter(FINGER_F, {
		i(232348, {	-- Creche-Waker's Loop
			["races"] = { DRACTHYR_ALLIANCE, DRACTHYR_HORDE },
			["timeline"] = { ADDED_11_0_5 },
		}),
		i(232349, {	-- Creche-Waker's Ring
			["races"] = { DRACTHYR_ALLIANCE, DRACTHYR_HORDE },
			["timeline"] = { ADDED_11_0_5 },
		}),
	}),
	-- #endif
	filter(ILLUSIONS, bubbleDownSelf({ ["timeline"] = { ADDED_5_0_4 }, }, {
		ill(5387),	-- Agility (ILLUSION!)
		ill(5861),	-- Beastslayer (ILLUSION!)
		ill(5393),	-- Crusader (ILLUSION!)
		ill(1898),	-- Lifestealing (ILLUSION!)
		ill(5360),	-- Hide Weapon Enchant (ILLUSION!)
		ill(5389),	-- Striking (ILLUSION!)
		ill(5862),	-- Titanguard (ILLUSION!)
	})),
	-- #if AFTER 11.0.5
	filter(NECK_F, {
		i(232350, {	-- Creche-Waker's Amulet
			["races"] = { DRACTHYR_ALLIANCE, DRACTHYR_HORDE },
			["timeline"] = { ADDED_11_0_5 },
		}),
	}),
	-- #endif
	filter(SHIRTS, {
		i(6125, {	-- Brawler's Harness
			["description"] = "Former Starter Shirt for Orc, Troll, Tauren & Undead Warriors",
			["timeline"] = { REMOVED_4_0_3 },
		}),
		i(49, {	-- Footpad's Shirt
			["description"] = "Former Starter Shirt for Human, Night Elf, Dwarf & Gnome Rogues",
			["timeline"] = { REMOVED_4_0_3 },
		}),
		i(49567, {	-- Gilnean Adventurer's Shirt
			["description"] = "New Worgen Hunters, Rogues, and Warriors start out with this shirt.",
			["timeline"] = { ADDED_4_0_3 },
		}),
		i(24143, {	-- Initiate's Shirt
			["description"] = "Former Starter Shirt for Blood Elf Paladins",
			["timeline"] = { ADDED_2_0_1, REMOVED_4_0_3 },
		}),
		i(20897, {	-- Lookout's Tunic
			["description"] = "Former Starter Shirt for Blood Elf Rogues.",
			["timeline"] = { ADDED_2_0_1, REMOVED_4_0_3 },
		}),
		i(53, {	-- Neophyte's Shirt
			-- #if BEFORE 4.0.3
			-- #if AFTER 2.0.1
			["description"] = "Former Starter Shirt for Priests. (Also available from Old Hillsbrad)",
			-- #else
			["description"] = "Former Starter Shirt for Priests.",
			-- #endif
			["timeline"] = { REMOVED_4_0_3 },
			-- #endif
		}),
		i(154, {	-- Primitive Mantle
			["description"] = "Former Starter Shirt for Orc & Tauren Shamans",
			["timeline"] = { REMOVED_4_0_3 },
		}),
		i(6134, {	-- Primitive Mantle
			["description"] = "Former Starter Shirt for Troll Shamans",
			["timeline"] = { REMOVED_4_0_3 },
		}),
		i(23473, {	-- Recruit's Shirt
			["description"] = "Former Starter Shirt for Draenei Warriors and Mages",
			["timeline"] = { ADDED_2_0_1, REMOVED_4_0_3 },
		}),
		i(6120, {	-- Recruit's Shirt
			["description"] = "Former Starter Shirt for Night Elf Warriors",
			["timeline"] = { REMOVED_4_0_3 },
		}),
		i(148, {	-- Rugged Trapper's Shirt
			["description"] = "Former Starter Shirt for Dwarf & Night Elf Hunters",
			["timeline"] = { REMOVED_4_0_3 },
		}),
		i(23345, {	-- Scout's Shirt
			["description"] = "Former Starter Shirt for Draenei Hunters and Shamans",
			["timeline"] = { ADDED_2_0_1, REMOVED_4_0_3 },
		}),
		i(6117, {	-- Squire's Shirt
			["description"] = "Former Starter Shirt for Dwarf Paladins",
			["timeline"] = { REMOVED_4_0_3 },
		}),
		i(23476, {	-- Squire's Shirt
			["description"] = "Former Starter Shirt for Draenei Paladins",
			["timeline"] = { ADDED_2_0_1, REMOVED_4_0_3 },
		}),
		i(2105, {	-- Thug Shirt
			["description"] = "Former Starter Shirt for Undead & Orc Rogues",
			["timeline"] = { REMOVED_4_0_3 },
		}),
		i(127, {	-- Trapper's Shirt
			["description"] = "Former Starter Shirt for Orc, Tauren & Troll Hunters",
			["timeline"] = { REMOVED_4_0_3 },
		}),
		i(6136, {	-- Trapper's Shirt
			["description"] = "Former Starter Shirt for Troll Rogues",
			["timeline"] = { REMOVED_4_0_3 },
		}),
		i(20901, {	-- Warder's Shirt
			["description"] = "Former Starter Shirt for Blood Elf Hunters",
			["timeline"] = { ADDED_2_0_1, REMOVED_4_0_3 },
		}),
	}),
	-- #if AFTER 11.0.5
	filter(TRINKET_F, {
		i(232346, {	-- Creche-Waker's Figurine
			["races"] = { DRACTHYR_ALLIANCE, DRACTHYR_HORDE },
			["timeline"] = { ADDED_11_0_5 },
		}),
		i(232347, {	-- Creche-Waker's Insignia
			["races"] = { DRACTHYR_ALLIANCE, DRACTHYR_HORDE },
			["timeline"] = { ADDED_11_0_5 },
		}),
	}),
	-- #endif
	n(WEAPONS, {	-- These were used and changed so many times on different classes, that I leave them here.
		i(23346, {	-- Battleworn Claymore
			["timeline"] = { ADDED_2_0_1, REMOVED_9_0_1 },	-- TODO: I am not sure when this got removed.
		}),
		i(2361, {	-- Battleworn Hammer
			["timeline"] = { REMOVED_9_0_1 },	-- TODO: I am not sure when this got removed.
		}),
		i(37, {	-- Worn Axe
			-- #if BEFORE 10.1.7
			["description"] = "Former Starter Weapon for Orc, Troll & Worgen Rogues as well as Dwarf, Orc, Tauren & Troll Hunters.",
			-- #endif
			-- #if ANYCLASSIC
			-- CRIEVE NOTE: This was not available in Wrath Classic.
			["timeline"] = { ADDED_1_11_0, REMOVED_3_0_2 },
			-- #else
			["timeline"] = { ADDED_1_11_0, REMOVED_7_3_5 },
			-- #endif
		}),
		i(52532, {	-- Worn Wood Chopper
		--	["classes"] = { HUNTER },
		--	["races"] = { GOBLIN, HUMAN, UNDEAD, WORGEN },
			-- #if BEFORE 10.1.7
			["description"] = "Former Starter Weapon for Goblin, Human, Undead & Worgen Hunters.",
			-- #endif
			["timeline"] = { ADDED_4_0_3, REMOVED_5_0_4 },
		}),
	}),
	-- #if AFTER 10.0.7
	-- #if BEFORE 11.0.0
	-- Fixed with TWW - you can collect any armor with any class
	filter(CLOTH, bubbleDownSelf({ ["timeline"] = { ADDED_10_0_7 } }, {
		["g"] = sharedData({
			["sharedDescription"] = "This item is obtained by a newly created worgen monk, but because it's soulbound cloth item, you can't learn it.",
			["collectible"] = false,
		},{
			i(204268),	-- Gilnean Trainee's Cord
			i(204267),	-- Gilnean Trainee's Leggings
			i(204266),	-- Gilnean Trainee's Vest
			i(204269),	-- Gilnean Trainee's Wristwraps
		}),
	})),
	filter(CLOTH, bubbleDownSelf({ ["timeline"] = { ADDED_10_0_7 } }, {
		["g"] = sharedData({
			["sharedDescription"] = "This item is obtained by a newly created goblin monk, but because it's soulbound cloth item, you can't learn it.",
			["collectible"] = false,
		},{
			i(204259),	-- Goblin Trainee's Cord
			i(204260),	-- Goblin Trainee's Leggings
			i(204261),	-- Goblin Trainee's Vest
			i(204258),	-- Goblin Trainee's Wristwraps
		}),
	})),
	-- #endif
	-- #endif
	n(QUESTS, bubbleDownSelf({
		["races"] = { DRACTHYR_ALLIANCE, DRACTHYR_HORDE },
		["classes"] = { HUNTER, MAGE, PRIEST, ROGUE, WARLOCK, WARRIOR },
		["timeline"] = { ADDED_11_0_5 },
	}, {
		q(84423, {	-- Shaking the Dust Off
			["provider"] = { "n", 229075 },	-- Scalecommander Emberthal
			["coord"] = { 43.0, 89.4, THE_WAR_CRECHE },
		}),
		q(84424, {	-- Forward, to Adventure!
			["sourceQuests"] = { 84423 },	-- Shaking the Dust Off
			["provider"] = { "n", 229075 },	-- Scalecommander Emberthal
			["coord"] = { 43.0, 89.4, THE_WAR_CRECHE },
			["g"] = {
				o(467064, {	-- Quest Journal
					i(229165),	-- Quest Journal (QI!)
				}),
			},
		}),
		q(85026, {	-- Where Legends are Made
			["sourceQuests"] = { 84424 },	-- Forward, to Adventure!
			["provider"] = { "n", 167032 },	-- Chromie
			["coords"] = {
				{ 40.8, 80.1, ORGRIMMAR },
				{ 56.2, 17.2, STORMWIND_CITY },
			},
		}),
	})),
	i(6948),	-- Hearthstone
}));

root(ROOTS.HiddenQuestTriggers, {
	expansion(EXPANSION.DF, bubbleDownSelf({ ["timeline"] = { ADDED_10_0_7 } }, {
		n(NEW_CHARACTER, {
			cl(EVOKER, {
				q(74891),	-- Triggeres on the first use of 'Soar' spell after 10.0.7 to get the 'Aerial Halt' (spellID 403092)
			}),
			cl(WARLOCK, bubbleDownSelf({ ["timeline"] = { ADDED_10_1_5 } }, {
				n(QUESTS, {
					q(76444),	-- After completion of 'When Revenge Burns Green' (questID 75544)
					q(77285),	-- After completion of 'When Revenge Burns Green' (questID 75544)
				}),
			})),
		}),
	})),
	expansion(EXPANSION.TWW, bubbleDownSelf({ ["timeline"] = { ADDED_11_0_5 } }, {
		n(NEW_CHARACTER, {
			n(QUESTS, {
				q(85023),	-- When accepting 'Forward, to Adventure!' (questID 84424)
			}),
		}),
	})),
});