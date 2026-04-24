-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

------ Encounter Constants ------
local KYSTIA = 2679;
local ZAEN = 2680;
local XATHUUX = 2681;
local LITHIEL = 2682;

------ EncounterToCRS ------
local EncounterToCRS = {
	[KYSTIA] = {
		252458,	-- Kystia Manaheart
		234660,	-- Nibbles
	},
	[ZAEN] = { 234649 },	-- Zaen Bladesorrow
	[XATHUUX] = { 234647 },	-- Xathuux the Annihilator <Lithiel's Guardian>
	[LITHIEL] = { 237415 },	-- Lithiel Cinderfury
};

------ Boss Functions ------
local InstanceHelper = CreateInstanceHelper(EncounterToCRS)
local BossOnly, Difficulty =
InstanceHelper.BossOnly, InstanceHelper.Difficulty

root(ROOTS.Instances, expansion(EXPANSION.MID, bubbleDownSelf({ ["timeline"] = { ADDED_12_0_1_LAUNCH } }, {
	inst(1304, {	-- Murder Row
		["coord"] = { 56.8, 61.1, MAP.MIDNIGHT.SILVERMOON_CITY },
		["maps"] = {
			2433,	-- Murder Row
			2434,	-- Augurs' Terrace
			2435,	-- The Illicit Rain
		},
		["groups"] = {
			n(QUESTS, {
				q(90822, {	-- Murder Row: One Fel Swoop
					["sourceQuests"] = { 90821 },	-- Murder Row: Harbored Secrets
					["provider"] = { "n", 245297 },	-- Belath Dawnblade
					["coord"] = { 32.2, 26.0, MAP.MIDNIGHT.SILVERMOON_CITY },
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.MULTI.NORMAL_PLUS).AddGroups({
				BossOnly(KYSTIA, {
					i(251125),	-- Felsoaked Soles
					i(251124),	-- Gauntlets of Fevered Defense
					i(251126),	-- Greathelm of Temptation
					i(250243),	-- Manaheart's Binding Flame
					i(251123),	-- Nibbles' Training Rod
					i(251127),	-- Nibbling Armbands
				}),
				BossOnly(ZAEN, {
					ach(62388, {	-- Illicit Rain: Five Stars
						i(263975),	-- Feeling Fielder Mk. 7 (TOY!)
					}),
					i(251128),	-- Bladesorrow
					i(251130),	-- Breeches of Deft Deals
					i(251129),	-- Counterfeit Clutches
					i(250215),	-- Freightrunner's Flask
					i(251131),	-- Jangling Felpaulets
					i(251133),	-- Overseer's Vambraces
					i(251132),	-- Speakeasy Shroud
				}),
				BossOnly(XATHUUX, {
					i(251135),	-- Fury-fletched Armlets
					i(250228),	-- Resonant Bellowstone
					i(251136),	-- Signet of Snarling Servitude
					i(251137),	-- Tempestuous Sandals
					i(251134),	-- Xathuux's Cleave
				}),
				BossOnly(LITHIEL, {
					ach(41960),	-- Murder Row
					i(256746),	-- Formula: Smuggler's Enchanted Edge (RECIPE!)
					i(256640),	-- Pattern: Row Walker's Insurance  (RECIPE!)
					i(258518),	-- Plans: Murder Row Fishhook (RECIPE!)
					i(258487),	-- Plans: Murder Row Fleet Feet (RECIPE!)
					i(263238),	-- Illicit Long Table (DECOR!)
					i(251138),	-- Cinderfury Shoulderguards
					i(258045),	-- Dawnblade's Glaives (COSMETIC!)
					i(251141),	-- Lithiel's Linked Leggings
					i(251142),	-- Pendant of Malefic Fury
					i(251139),	-- Summoner's Searing Shirt
					i(250255),	-- Unstable Felheart Crystal
					i(251140),	-- Vilefiend's Guise
				}),
				filter(MISC, {
					currency(3250, {	-- Faceted Crystaline Fel
						["description"] = "Can be found scattered throughout the Murder Row Dungeon.\nUsed for buying buffs from highlighted vendors.\nOnly 1 per player, per run can be obtained.",
					}),
				}),
				n(VENDORS, {
					n(236861, {	-- Cravitz Lorent <Shady Art Dealer>
						i(246857, {	-- "Shu'halo Perspective" Painting (DECOR!)
							["description"] = "|cFFE50D12WARNING! DO NOT BUY RIGHT AWAY!|r\nGet 13 different Sargle's Fortunes to drastically cut down the price.",
							["cost"] = 9999999,	-- 999g 99s 99c
						}),
						i(237764, {	-- Exquisite Painting
							["cost"] = { { "c", 3250, 1 } },	-- 1x Faceted Crystaline Fel
						}),
					}),
					n(236076, {	-- Darlia <Poison Supplies>
						i(237765, {	-- Hearthstop Blade
							["cost"] = { { "c", 3250, 1 } },	-- 1x Faceted Crystaline Fel
						}),
					}),
					n(236078, {	-- Feranin <Exotic Goods>
						i(237766, {	-- Felwyrm Egg
							["cost"] = { { "c", 3250, 1 } },	-- 1x Faceted Crystaline Fel
						}),
					}),
					n(236080, {	-- Sleyin <Weapon Merchant>
						i(235644, {	-- Concealed Pistol
							["cost"] = { { "c", 3250, 1 } },	-- 1x Faceted Crystaline Fel
						}),
					}),
					n(236872, {	-- Vanaris <Gem Vendor>
						i(237763, {	-- Felstone
							["cost"] = { { "c", 3250, 1 } },	-- 1x Faceted Crystaline Fel
						}),
					}),
					n(236079, {	-- Vinemaster Suntouched <Wine & Spirits Vendor>
						i(236332, {	-- Suntouched Special Reserve
							["cost"] = { { "c", 3250, 1 } },	-- 1x Faceted Crystaline Fel
						}),
					}),
				}),
				n(SPECIAL, {
					n(236866, {	-- Soothsayer Sargle
						i(236359),	-- Sargle's Fortune #1
						i(236365),	-- Sargle's Fortune #2
						i(236366),	-- Sargle's Fortune #3
						i(236367),	-- Sargle's Fortune #4
						i(236368),	-- Sargle's Fortune #5
						i(236369),	-- Sargle's Fortune #6
						i(236370),	-- Sargle's Fortune #7
						i(236371),	-- Sargle's Fortune #8
						i(236372),	-- Sargle's Fortune #9
						i(236373),	-- Sargle's Fortune #10
						i(236377),	-- Sargle's Fortune #11
						i(236381),	-- Sargle's Fortune #12
						i(236387),	-- Sargle's Fortune #13
					}),
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.MULTI.HEROIC_PLUS).AddGroups({
				BossOnly(LITHIEL, {
					ach(41961),	-- Heroic: Murder Row
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.MYTHIC).AddGroups({
				BossOnly(LITHIEL, {
					ach(41962),	-- Mythic: Murder Row
					ach(61617),	-- Mythic: Murder Row Guild Run
				}),
			}),
		},
	})
})));
