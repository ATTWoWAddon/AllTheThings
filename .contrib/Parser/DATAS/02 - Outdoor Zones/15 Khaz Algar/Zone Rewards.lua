---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(KHAZ_ALGAR, {
	n(ZONE_DROPS, {
		i(228963, {	-- Unfamiliar Emblem (QS!)
			["timeline"] = { ADDED_11_1_7 },
			["maps"] = { 2372 },	-- Arathi Highlands
			["crs"] = {
				230199,	-- Defias Bandit
				230021,	-- Defias Lookout
				230020,	-- Defias Ringleader
			},
		}),
	}),
	n(ZONE_REWARDS, {
		n(ARMOR, {
			filter(BACK_F, {
				i(224664),	-- Gem-Woven Cloak
				i(224663),	-- Gem-Woven Shawl
			}),
			filter(CLOTH, {
				i(224672),	-- Alighted Cord
				i(224669),	-- Alighted Cowl
				i(224673),	-- Alighted Cuffs
				i(224668),	-- Alighted Handwraps
				i(224670),	-- Alighted Leggings
				i(224666),	-- Alighted Robes
				i(224667),	-- Alighted Sandals
				i(224671),	-- Alighted Shoulderpads
			}),
			filter(FINGER_F, {
				i(224660),	-- Gem-Studded Band
				i(224662),	-- Gem-Studded Ring
				i(224661),	-- Gem-Studded Signet
				i(224593),	-- Spinner's Circlet
			}),
			filter(LEATHER, {
				i(224681),	-- Lockstitch Bindings
				i(224678),	-- Lockstitch Breeches
				i(224679),	-- Lockstitch Epaulets
				i(224676),	-- Lockstitch Grips
				i(224677),	-- Lockstitch Headgear
				i(224680),	-- Lockstitch Sash
				i(224674),	-- Lockstitch Vest
				i(224675),	-- Lockstitch Waders
			}),
			filter(MAIL, {
				i(224688),	-- Chitinoid Belt
				i(224689),	-- Chitinoid Bracers
				i(224682),	-- Chitinoid Chainmail
				i(224685),	-- Chitinoid Coif
				i(224686),	-- Chitinoid Greaves
				i(224684),	-- Chitinoid Grips
				i(224687),	-- Chitinoid Shoulderguards
				i(224683),	-- Chitinoid Striders
			}),
			filter(NECK_F, {
				i(224665),	-- Gem-Studded Pendant
				i(224594),	-- Spinner's Amulet
			}),
			filter(PLATE, {
				i(224697),	-- Sedimentary Armplates
				i(224690),	-- Sedimentary Breastplate
				i(224692),	-- Sedimentary Gauntlets
				i(224696),	-- Sedimentary Girdle
				i(224693),	-- Sedimentary Helm
				i(224694),	-- Sedimentary Legguards
				i(224695),	-- Sedimentary Mantle
				i(224691),	-- Sedimentary Sabatons
			}),
			filter(TRINKET_F, {
				i(225648),	-- Candle Confidant
				i(225657),	-- Detachable Fang
				i(225656),	-- Goldenglow Censer
				i(225654),	-- Imperfect Ascendancy Serum
				i(225651),	-- Kaheti Shadeweaver's Emblem
				i(225649),	-- Quickwick Candlestick
				i(226521),	-- Reinforced-Wax Plating
				i(226539),	-- Scroll of Momentum
				i(225647),	-- Shining Arathor Insignia
				i(225638),	-- Spelunker's Waning Candle
			}),
		}),
		filter(MISC, sharedDataSelf({ ["timeline"] = { ADDED_11_1_0 } }, {
			i(237014),	-- Severed Threads Commendation [1500 Rep]
			i(244848, { ["timeline"] = { ADDED_11_1_7 } }),	-- Severed Threads Commendation [100 Rep]
		})),
		n(WEAPONS, {
			i(224702),	-- Ancient Forged Blade
			i(224700),	-- Ancient Forged Cudgel
			i(224711),	-- Ancient Forged Curio
			i(224713),	-- Ancient Forged Glaive
			i(224701),	-- Ancient Forged Hammer
			i(224705),	-- Ancient Forged Mace
			i(224708),	-- Ancient Forged Polearm
			i(224699),	-- Ancient Forged Ritual Knife
			i(224698),	-- Ancient Forged Shank
			i(224712),	-- Ancient Forged Shield
			i(224704),	-- Ancient Forged Slugthrower
			i(224707),	-- Ancient Forged Spear
			i(224710),	-- Ancient Forged Spellstaff
			i(224709),	-- Ancient Forged Staff
			i(224703),	-- Ancient Forged Sword
			i(224706),	-- Ancient Forged Warhammer
		}),
		--
		i(229354, {	-- Algari Adventurer's Cache
			["sym"] = {{"select","itemID",228361},{"pop"}},	-- Seasoned Adventurer's Cache [Khaz Algar Zone Rewards content]
		}),
		i(224784, {	-- Pinnacle Cache (S1)
			["sym"] = {{"select","itemID",228361},{"pop"}},	-- Seasoned Adventurer's Cache [Khaz Algar Zone Rewards content]
			["timeline"] = { ADDED_11_0_2, REMOVED_11_1_0_SEASONSTART },
		}),
		i(239118, {	-- Pinnacle Cache (S2)
			["sym"] = {{"select","itemID",228361},{"pop"}},	-- Seasoned Adventurer's Cache [Khaz Algar Zone Rewards content]
			["timeline"] = { ADDED_11_1_0_SEASONSTART, REMOVED_11_2_0 },
		}),
		i(244865, {	-- Pinnacle Cache (S3)
			["sym"] = { -- [K'aresh Zone Rewards content]
				{"select","mapID",KARESH},{"pop"},
				{"where","headerID",ZONE_REWARDS},{"pop"},
				{"where","headerID",ARMOR},{"finalize"},

				{"select","mapID",KARESH},{"pop"},
				{"where","headerID",ZONE_REWARDS},{"pop"},
				{"where","headerID",WEAPONS},
			},
			["timeline"] = { ADDED_11_2_0 },
		}),
		i(228361, {	-- Seasoned Adventurer's Cache (S1)
			["sym"] = { -- [Khaz Algar Zone Rewards content]
				{"select","mapID",KHAZ_ALGAR},{"pop"},
				{"where","headerID",ZONE_REWARDS},{"pop"},
				{"where","headerID",ARMOR},{"finalize"},

				{"select","mapID",KHAZ_ALGAR},{"pop"},
				{"where","headerID",ZONE_REWARDS},{"pop"},
				{"where","headerID",WEAPONS},
			},
			["timeline"] = { REMOVED_11_1_0_SEASONSTART },
		}),
		i(239120, {	-- Seasoned Adventurer's Cache (S2)
			["sym"] = {{"select","itemID",228361},{"pop"}},	-- Seasoned Adventurer's Cache [Khaz Algar Zone Rewards content]
			["timeline"] = { ADDED_11_1_0_SEASONSTART, REMOVED_11_2_0 },
		}),
		i(235639, {	-- Seasoned Adventurer's Cache (Undermine)
			["sym"] = { -- [Undermine Zone Rewards content]
				{"select","mapID",KHAZ_ALGAR},{"pop"},
				{"where","mapID",UNDERMINE},{"pop"},
				{"where","headerID",ZONE_REWARDS},{"pop"},
				{"where","headerID",ARMOR},{"finalize"},

				{"select","mapID",KHAZ_ALGAR},{"pop"},
				{"where","mapID",UNDERMINE},{"pop"},
				{"where","headerID",ZONE_REWARDS},{"pop"},
				{"where","headerID",WEAPONS},
			},
			["timeline"] = { ADDED_11_1_0_SEASONSTART },
		}),
		i(235610, {	-- Seasoned Adventurer's Cache (Undermine)
			["sym"] = {{"select","itemID",235639},{"pop"}},	-- Seasoned Adventurer's Cache [Undermine Zone Rewards content]
			["timeline"] = { ADDED_11_1_0_SEASONSTART },
		}),
		i(245280, {	-- Seasoned Khaz Algar Adventurer's Cache
			["sym"] = {{"select","itemID",228361},{"pop"}},	-- Seasoned Adventurer's Cache [Khaz Algar Zone Rewards content]
			["timeline"] = { ADDED_11_2_0 },
		}),
		i(244883, {	-- Seasoned Undermine Adventurer's Cache
			["sym"] = {{"select","itemID",235639},{"pop"}},	-- Seasoned Adventurer's Cache [Undermine Zone Rewards content]
			["timeline"] = { ADDED_11_2_0_SEASONSTART },
		}),
	}),
}));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.TWW, {
	n(WORLD_QUESTS, {
		m(KHAZ_ALGAR, {
			q(83280, name(HEADERS.Item,228361,{["isWeekly"]=true,})),	-- Granted additional reward from weekly caches #1
			q(83281, name(HEADERS.Item,228361,{["isWeekly"]=true,})),	-- Granted additional reward from weekly caches #2
		}),
	}),
}));
