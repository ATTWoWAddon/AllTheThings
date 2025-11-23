-- #if SEASON_OF_DISCOVERY
-- TODO: Mark these as unavailable in Phase 1
-- spellID 3538 Blacksmithing (Rank 3)
-- spellID 3564 Mining (Rank 3)
-- spellID 7924 First Aid (Rank 3)
-- spellID 7732 Fishing (Rank 3)
-- spellID 3570 Herb Gathering (Rank 3)
-- spellID 7413 Enchanting (Rank 3)

local classHeader = function(classID, g)
	return cl(classID, bubbleDown({ ["classes"] = { classID } }, g));
end
local OnTooltipFor_ACA_SDL = [[function(t, tooltipInfo)
	local reputation = t.reputation;
	if reputation < 42000 then
		local addRepInfo = _.Modules.FactionData.AddReputationTooltipInfo;
		if reputation < ]] .. FRIENDLY .. [[ then
			addRepInfo(tooltipInfo, reputation, "A Full Shipment [iLvl 10 - Crafted]", 450, ]] .. FRIENDLY .. [[);
			addRepInfo(tooltipInfo, reputation, "A Full Shipment [iLvl 10 - Gathered]", 300, ]] .. FRIENDLY .. [[);
			-- #if BEFORE 1.15.1
			addRepInfo(tooltipInfo, reputation, "A Waylaid Shipment [iLvl 10]", 100, ]] .. FRIENDLY .. [[);
			-- #endif

			tinsert(tooltipInfo, {
				left = "PROTIP: Save higher iLvl Supply Shipments until later!",
				r=1,g=0.1,b=0.1,
				wrap = true
			});
		elseif reputation < ]] .. HONORED .. [[ then
			addRepInfo(tooltipInfo, reputation, "A Full Shipment [iLvl 25 - Crafted (Tier 2)]", 800, ]] .. HONORED .. [[);
			addRepInfo(tooltipInfo, reputation, "A Full Shipment [iLvl 25 - Crafted (Tier 1)]", 650, ]] .. HONORED .. [[);
			addRepInfo(tooltipInfo, reputation, "A Full Shipment [iLvl 25 - Gathered]", 500, ]] .. HONORED .. [[);
			-- #if BEFORE 1.15.1
			addRepInfo(tooltipInfo, reputation, "A Waylaid Shipment [iLvl 25]", 200, ]] .. HONORED .. [[);
			-- #endif
		elseif reputation < ]] .. REVERED .. [[ and _.GameBuildVersion >= 11501 then
			addRepInfo(tooltipInfo, reputation, "A Full Shipment [iLvl 40 - Crafted (Tier 4)]", 1000, ]] .. REVERED .. [[);
			addRepInfo(tooltipInfo, reputation, "A Full Shipment [iLvl 40 - Crafted (Tier 3)]", 850, ]] .. REVERED .. [[);
			addRepInfo(tooltipInfo, reputation, "A Full Shipment [iLvl 40 - Gathered]", 700, ]] .. REVERED .. [[);
		elseif reputation < ]] .. EXALTED .. [[ and _.GameBuildVersion >= 11502 then
			addRepInfo(tooltipInfo, reputation, "A Full Shipment [iLvl 50 - Crafted (Tier 6)]", 1850, ]] .. EXALTED .. [[);
			addRepInfo(tooltipInfo, reputation, "A Full Shipment [iLvl 50 - Crafted (Tier 5)]", 1300, ]] .. EXALTED .. [[);
			addRepInfo(tooltipInfo, reputation, "A Full Shipment [iLvl 50 - Gathered]", 950, ]] .. EXALTED .. [[);
		end
	end
end]];
local OnUpdateFor_ACA_SDL = [[function(t)
	t.minReputation = { t.factionID, (_.GameBuildVersion == 11500 and ]] .. HONORED .. [[) or (_.GameBuildVersion == 11501 and ]] .. REVERED .. [[) or ]] .. EXALTED .. [[; };
end]];

local AZEROTH_COMMERCE_AUTHORITY_VENDORS = {	-- Azeroth Commerce Authority
	["crs"] = {
		213077,	-- Elaine Compton <Supply Officer>
		214099,	-- Tamelyn Aldridge <Supply Officer>
		214101,	-- Marcy Baker <Supply Officer>
	},
	["coords"] = {
		{ 54.5, 61.2, STORMWIND_CITY },
		{ 24.6, 67.2, IRONFORGE },
		{ 59.8, 56.6, DARNASSUS },
	},
};
local DUROTAR_SUPPLY_AND_LOGISTICS_VENDORS = {	-- Durotar Supply and Logistics
	["crs"] = {
		214070,	-- Jornah <Supply Officer>
		214096,	-- Dokimi <Supply Officer>
		214098,	-- Gishah <Supply Officer>
	},
	["coords"] = {
		{ 51.6, 64.6, ORGRIMMAR },
		{ 39.8, 53.4, THUNDER_BLUFF },
		{ 64.6, 38.2, UNDERCITY },
	},
};

-- Nightmare Incursions
local emeraldchip = function(cost, item)	-- Assign an Emerald Chip cost to an item.
	applycost(item, { "i", 219927, cost });
	return item;
end
local questShortcut = function(qg, coord, brief, lvl, id, t)
	local groups = t.groups or t.g;
	if not groups then
		groups = {};
		t.groups = groups;
	end
	local providers = t.providers;
	if not providers then
		providers = {};
		t.providers = providers;
		local provider = t.provider;
		if provider then
			table.insert(providers, provider);
			t.provider = nil;
		else
			provider = t.qg;
			if provider then
				table.insert(providers, { "n", provider });
				t.qg = nil;
			end
		end
	end
	table.insert(providers, { "n", qg });
	table.insert(groups, i(brief));
	t.coord = coord;
	t.maxReputation = { 2641, EXALTED };	-- Emerald Wardens
	t.isDaily = true;
	t.lvl = { lvl, 52 };
	return q(id, t);
end
local ashenvalequest = function(id, t)
	return questShortcut(
		221477,	-- Field Captain Hannalah
		{ 89.6, 40.6, ASHENVALE },
		219773,	-- Mission Brief: Ashenvale
		37, id, t);
end
local duskwoodquest = function(id, t)
	return questShortcut(
		221471,	-- Field Captain Palandar
		{ 45.6, 51.2, DUSKWOOD },
		219526,	-- Mission Brief: Duskwood
		23, id, t);
end
local feralasquest = function(id, t)
	t = questShortcut(
		221480,	-- Field Captain Arunnel
		{ 48.6, 12.4, FERALAS },
		219775,	-- Mission Brief: Feralas
		47, id, t);
	table.insert(t.groups, i(219927));	-- Emerald Chip
	return t;
end
local hinterlandsquest = function(id, t)
	t = questShortcut(
		221479,	-- Field Captain Korlian
		{ 61.4, 34.6, THE_HINTERLANDS },
		219774,	-- Mission Brief: Hinterlands
		47, id, t);
	table.insert(t.groups, i(219927));	-- Emerald Chip
	return t;
end
local OnTooltip_EMERALD_WARDENS = [[function(t, tooltipInfo)
	local reputation = t.reputation;
	if reputation < 42000 then
		local addRepInfo = _.Modules.FactionData.AddReputationTooltipInfo;
		addRepInfo(tooltipInfo, reputation, "Defeat Incursion Dragon Bosses", 200, ]] .. EXALTED .. [[);
		addRepInfo(tooltipInfo, reputation, "Incursion Kill Quests (Feralas & Hinterlands)", 150, ]] .. EXALTED .. [[);
		addRepInfo(tooltipInfo, reputation, "Incursion Quests (Feralas & Hinterlands)", 100, ]] .. EXALTED .. [[);
		addRepInfo(tooltipInfo, reputation, "Incursion Quests (Duskwood & Ashenvale)", 75, ]] .. EXALTED .. [[);
		if _.GameBuildVersion >= 11503 then addRepInfo(tooltipInfo, reputation, "Incursion Resource Quests", 100, ]] .. EXALTED .. [[); end

		local fight = t.fight;
		if not fight then
			fight = _.SearchForField("questID", 82068)[1];
			t.fight = fight;
		end
		_.Modules.FactionData.AddQuestTooltipWithReputation(tooltipInfo, "%s", fight, 1000);
		addRepInfo(tooltipInfo, reputation, " ", 1000, 42000);
	end
end]];


local SEASON_OF_DISCOVERY_HEADER = createHeader({	-- Season of Discovery
	readable = "Season of Discovery",
	icon = 134269,
	constant = "SEASON_OF_DISCOVERY",
	text = {
		en = "Season of Discovery",
		es = "Temporada de Descubrimiento",
		de = "Saison der Entdeckungen",
		fr = "Saison de Découverte",
		it = "La Stagione delle Scoperte",
		pt = "Temporada de Descoberta",
		ru = "Сезон открытий",
		ko = "발견의 계절",
		cn = "探索赛季",
		tw = "探索賽季",
	},
	description = {
		en = "This Season brings an initial level cap of 25 and a new level-25 endgame, including a 10-player Blackfathom Deeps raid with new mechanics, new and reimagined bosses to challenge player tactics and strategies, and fresh rewards.",
		es = "Esta temporada trae un límite de nivel inicial de 25 y un nuevo final de nivel 25, que incluye una incursión de 10 jugadores en Blackfathom Deeps con nuevas mecánicas, jefes nuevos y reinventados para desafiar las tácticas y estrategias de los jugadores, y nuevas recompensas.",
		de = "Diese Saison bringt eine anfängliche Levelobergrenze von 25 und ein neues Level-25-Endspiel, einschließlich eines Blackfathom Deeps-Raids für 10 Spieler mit neuen Mechaniken, neuen und neu gestalteten Bossen, die die Taktiken und Strategien der Spieler herausfordern, und neuen Belohnungen.",
		fr = "Cette saison apporte un niveau maximum initial de 25 et une nouvelle fin de partie de niveau 25, comprenant un raid Blackfathom Deeps à 10 joueurs avec de nouvelles mécaniques, des boss nouveaux et réinventés pour défier les tactiques et stratégies des joueurs, et de nouvelles récompenses.",
		it = "Questa stagione porta un limite di livello iniziale di 25 e un nuovo gioco finale di livello 25, incluso un raid di Blackfathom Deeps per 10 giocatori con nuove meccaniche, boss nuovi e reinventati per sfidare le tattiche e le strategie dei giocatori e nuove ricompense.",
		pt = "Esta temporada traz um limite de nível inicial de 25 e um novo jogo final de nível 25, incluindo um ataque Blackfathom Deeps para 10 jogadores com novas mecânicas, chefes novos e reimaginados para desafiar as táticas e estratégias dos jogadores e novas recompensas.",
		ru = "В этом сезоне начальный максимальный уровень равен 25, а также новый финал для 25-го уровня, включающий рейд в Непроглядную Пучину для 10 игроков с новой механикой, новыми и переосмысленными боссами, которые бросят вызов тактике и стратегии игроков, а также свежими наградами.",
		ko = "이번 시즌에는 새로운 메커니즘이 포함된 10인 Blackfathom Deeps 레이드, 플레이어 전술과 전략에 도전할 수 있는 새롭고 재구성된 보스, 새로운 보상을 포함하여 초기 레벨 상한이 25이고 새로운 레벨 25 최종 게임이 제공됩니다.",
		cn = "本赛季带来了 25 级的初始等级上限和新的 25 级终局游戏，包括 10 名玩家的 Blackfathom Deeps 突袭，其中包含新的机制、新的和重新设计的 Boss 来挑战玩家的战术和策略，以及新鲜的奖励。",
		tw = "這個賽季起初將會有 25 級的上限，還會帶來全新的 25 級終局內容，包括帶有全新機制的 10 人玩家黑澗深淵副本、全新設計的首領來挑戰玩家的戰術實力，同時還會給予新獎勵。",
	},
});
root(ROOTS.SeasonOfDiscovery, applyclassicphase(SOD_PHASE_ONE, n(SEASON_OF_DISCOVERY_HEADER, bubbleDownSelf({ ["timeline"] = { REMOVED_2_0_1 } }, {
	n(FACTIONS, {
		faction(2586, {	-- Azeroth Commerce Authority
			["OnUpdate"] = OnUpdateFor_ACA_SDL,
			["OnTooltip"] = OnTooltipFor_ACA_SDL,
			["maps"] = { DARNASSUS, IRONFORGE, STORMWIND_CITY },
			["races"] = ALLIANCE_ONLY,
		}),
		faction(2587, {	-- Durotar Supply and Logistics
			["OnUpdate"] = OnUpdateFor_ACA_SDL,
			["OnTooltip"] = OnTooltipFor_ACA_SDL,
			["maps"] = { ORGRIMMAR, THUNDER_BLUFF, UNDERCITY },
			["races"] = HORDE_ONLY,
		}),
	}),
	n(COMMON_VENDOR_ITEMS, {
		["aqd"] = faction(2586, AZEROTH_COMMERCE_AUTHORITY_VENDORS),
		["hqd"] = faction(2587, DUROTAR_SUPPLY_AND_LOGISTICS_VENDORS),
		["OnInit"] = [[function(t) local rep = t.factionID; for index,child in ipairs(t.g) do if child.minReputation then child.minReputation[1] = rep; end end return t; end]],
		["groups"] = bubbleDownClassicRep(2586, {	-- ACA / DSL
			{	-- Neutral

			},
			{	-- Friendly
				i(211382, {	-- Small Courier Satchel
					["cost"] = 4746,	-- 47s 36c
				}),
				i(212588, {	-- Provisioner's Gloves
					["cost"] = 1325,	-- 13s 25c
				}),
				i(212590, {	-- Hoist Strap
					["cost"] = 2555,	-- 25s 55c
				}),
				i(212589, {	-- Courier Treads
					["cost"] = 2214,	-- 22s 14c
				}),

				-- After 2023-12-12 Hotfix, Runes were moved from Honored to Friendly with a reduced price.
				i(211387, {	-- Rune of Beckoning Light
					["classes"] = { PALADIN },
					["cost"] = 20000,	-- 2g
					["groups"] = {
						recipe(409999),	-- Engrave Gloves - Beacon of Light
					},
				}),
				i(211392, {	-- Rune of Everlasting Affliction
					["classes"] = { WARLOCK },
					["cost"] = 20000,	-- 2g
					["groups"] = {
						recipe(416008),	-- Engrave Pants - Everlasting Affliction
					},
				}),
				i(211391, {	-- Rune of Healing Rain
					["classes"] = { SHAMAN },
					["cost"] = 20000,	-- 2g
					["groups"] = {
						recipe(416057),	-- Engrave Chest - Healing Rain
					},
				}),
				i(211385, {	-- Rune of Serpent Spread
					["classes"] = { HUNTER },
					["cost"] = 20000,	-- 2g
					["groups"] = {
						recipe(425760),	-- Engrave Pants - Serpent Spread
					},
				}),
				i(211393, {	-- Rune of Single-Minded Fury
					["classes"] = { WARRIOR },
					["cost"] = 20000,	-- 2g
					["groups"] = {
						recipe(416003),	-- Engrave Gloves - Single-Minded Fury
					},
				}),
				i(206992, {	-- Rune of Skull Bash
					["classes"] = { DRUID },
					["cost"] = 20000,	-- 2g
					["groups"] = {
						recipe(416046),	-- Engrave Pants - Skull Bash
					},
				}),
				i(211390, {	-- Rune of Teasing
					["classes"] = { ROGUE },
					["cost"] = 20000,	-- 2g
					["groups"] = {
						recipe(400082),	-- Engrave Chest - Just a Flesh Wound
					},
				}),
				i(211386, {	-- Spell Notes: Arcane Surge
					["classes"] = { MAGE },
					["cost"] = 20000,	-- 2g
					["groups"] = {
						recipe(425171),	-- Engrave Pants - Arcane Surge
					},
				}),
				i(205950, {	-- Tenebrous Epiphany
					["classes"] = { PRIEST },
					["cost"] = 20000,	-- 2g
					["groups"] = {
						recipe(415996),	-- Engrave Gloves - Mind Sear
					},
				}),
			},
			{	-- Honored
				i(211384, {	-- Sturdy Courier Bag
					["cost"] = 19350,	-- 1g 93s 50c
				}),
				-- Prior to the 2023-12-12 Hotfix, Runes were Honored and cost 4.5g each.
				--[[
				i(211387, {	-- Rune of Beckoning Light
					["classes"] = { PALADIN },
					["cost"] = 45000,	-- 4.5g
					["groups"] = {
						recipe(409999),	-- Engrave Gloves - Beacon of Light
					},
				}),
				i(211392, {	-- Rune of Everlasting Affliction
					["classes"] = { WARLOCK },
					["cost"] = 45000,	-- 4.5g
					["groups"] = {
						recipe(416008),	-- Engrave Pants - Everlasting Affliction
					},
				}),
				i(211391, {	-- Rune of Healing Rain
					["classes"] = { SHAMAN },
					["cost"] = 45000,	-- 4.5g
					["groups"] = {
						recipe(416057),	-- Engrave Chest - Healing Rain
					},
				}),
				i(211385, {	-- Rune of Serpent Spread
					["classes"] = { HUNTER },
					["cost"] = 45000,	-- 4.5g
					["groups"] = {
						recipe(425760),	-- Engrave Pants - Serpent Spread
					},
				}),
				i(211393, {	-- Rune of Single-Minded Fury
					["classes"] = { WARRIOR },
					["cost"] = 45000,	-- 4.5g
					["groups"] = {
						recipe(416003),	-- Engrave Gloves - Single-Minded Fury
					},
				}),
				i(206992, {	-- Rune of Skull Bash
					["classes"] = { DRUID },
					["cost"] = 45000,	-- 4.5g
					["groups"] = {
						recipe(416046),	-- Engrave Pants - Skull Bash
					},
				}),
				i(211390, {	-- Rune of Teasing
					["classes"] = { ROGUE },
					["cost"] = 45000,	-- 4.5g
					["groups"] = {
						recipe(400082),	-- Engrave Chest - Just a Flesh Wound
					},
				}),
				i(211386, {	-- Spell Notes: Arcane Surge
					["classes"] = { MAGE },
					["cost"] = 45000,	-- 4.5g
					["groups"] = {
						recipe(425171),	-- Engrave Pants - Arcane Surge
					},
				}),
				i(205950, {	-- Tenebrous Epiphany
					["classes"] = { PRIEST },
					["cost"] = 45000,	-- 4.5g
					["groups"] = {
						recipe(415996),	-- Engrave Gloves - Mind Sear
					},
				}),
				]]--
				i(211247, {	-- Pattern: Phoenix Bindings
					["cost"] = 67500,	-- 6.75g
				}),
				i(210779, {	-- Plans: Mantle of the Second War
					["cost"] = 67500,	-- 6.75g
				}),
				applyclassicphase(SOD_PHASE_TWO, i(212230, {	-- Schematic: Soul Vessel
					["cost"] = 22500,	-- 2g 25s
				})),
				applyclassicphase(SOD_PHASE_TWO, i(219023, {	-- Clerk's Ring
					["cost"] = 36562,	-- 3g 65s 62c
					["b"] = 2,	-- BoA
				})),
				applyclassicphase(SOD_PHASE_TWO, i(219022, {	-- Hauler's Ring
					["cost"] = 36562,	-- 3g 65s 62c
					["b"] = 2,	-- BoA
				})),
				applyclassicphase(SOD_PHASE_TWO, i(219024, {	-- Messenger's Ring
					["cost"] = 36562,	-- 3g 65s 62c
					["b"] = 2,	-- BoA
				})),
				applyclassicphase(SOD_PHASE_THREE, i(223160, {	-- Bargain Bush
					["cost"] = 11890,	-- 1g 18s 90c
				})),
			},
			{	-- Revered
				applyclassicphase(SOD_PHASE_TWO, i(219021, {	-- Hefty Courier Pack
					["cost"] = 48937,	-- 4g 89s 37c
				})),
				applyclassicphase(SOD_PHASE_TWO, i(217399, {	-- Recipe: Lesser Arcane Elixir
					["cost"] = 22500,	-- 2g 25s
				})),
				applyclassicphase(SOD_PHASE_TWO, i(219135, {	-- Curiosity Pendant
					["cost"] = 72562,	-- 7g 25s 62c
					["b"] = 2,	-- BoA
				})),
				applyclassicphase(SOD_PHASE_TWO, i(219137, {	-- Initiative Pendant
					["cost"] = 72562,	-- 7g 25s 62c
					["b"] = 2,	-- BoA
				})),
				applyclassicphase(SOD_PHASE_TWO, i(219136, {	-- Tenacity Pendant
					["cost"] = 72562,	-- 7g 25s 62c
					["b"] = 2,	-- BoA
				})),
				applyclassicphase(SOD_PHASE_THREE, i(223161, {	-- Empty Supply Crate
					["cost"] = 33661,	-- 3g 36s 61c
				})),
			},
			{	-- Exalted
				applyclassicphase(SOD_PHASE_THREE, i(223162, {	-- Handy Courier Haversack
					["cost"] = 101882,	-- 10g 18s 82c
				})),
				applyclassicphase(SOD_PHASE_THREE, i(223164, {	-- Curiosity Cowl
					["cost"] = 72562,	-- 7g 25s 62c
					["b"] = 2,	-- BoA
				})),
				applyclassicphase(SOD_PHASE_THREE, i(223167, {	-- Initiative Cap
					["cost"] = 72562,	-- 7g 25s 62c
					["b"] = 2,	-- BoA
				})),
				applyclassicphase(SOD_PHASE_THREE, i(223169, {	-- Tenacity Cap
					["cost"] = 72562,	-- 7g 25s 62c
					["b"] = 2,	-- BoA
				})),
				applyclassicphase(SOD_PHASE_THREE, i(223172, {	-- Tenacity Chain
					["cost"] = 72562,	-- 7g 25s 62c
					["b"] = 2,	-- BoA
				})),
				applyclassicphase(SOD_PHASE_THREE, i(223186, {	-- Supply Expediter
					["cost"] = 5521,	-- 55s 21c
					["b"] = 2,	-- BoA
				})),
				applyclassicphase(SOD_PHASE_THREE, i(220639, {	-- Lledra's Inanimator
					["cost"] = 83793,	-- 8g 37s 93c
				})),
			},
		}),
	}),
	n(createHeader({	-- Comprehension
		readable = "Comprehension",
		icon = 135933,
		text = {
			en = "Comprehension",
			es = "Comprensión",
			de = "Verständnis",
			fr = "Compréhension",
			it = "Comprensione",
			pt = "Compreensão",
			ru = "Понимание",
			ko = "이해력",
			cn = "理解",
			tw = "理解",
		},
	}), {
		["classes"] = { MAGE },
		["groups"] = {
			n(REWARDS, {
				n(createHeader({	-- Tier 1
					readable = "Comprehension - Tier 1",
					icon = 134937,
					text = {
						en = "Tier 1",
						es = "Nivel 1",
						de = "Stufe 1",
						fr = "Étage 1",
						it = "Livello 1",
						pt = "Nível 1",
						ru = "Уровень 1",
						ko = "층 1",
						cn = "等级 1",
						tw = "等級 1",
					},
				}), {
					["cost"] = {
						{ "i", 211779, 1 },	-- Comprehension Charm
						{ "i", 211785, 1 },	-- Scroll: CWAL
						{ "i", 211786, 1 },	-- Scroll: CHAP BALK WELLES
						{ "i", 211787, 1 },	-- Scroll: LOWER PING WHOMEVER
						{ "i", 211780, 1 },	-- Scroll: KWYJIBO
					},
					["groups"] = {
						i(3012),	-- Scroll of Agility
						i( 955),	-- Scroll of Intellect
						i(3013),	-- Scroll of Protection
						i(1181),	-- Scroll of Spirit
						i(1180),	-- Scroll of Stamina
						i( 954),	-- Scroll of Strength
						i(211800, {	-- Scroll of Reintegration
							["description"] = "Consumed on use.",
							["classes"] = { MAGE },
						}),
					},
				}),
				n(createHeader({	-- Tier 2
					readable = "Comprehension - Tier 2",
					icon = 237449,
					text = {
						en = "Tier 2",
						es = "Nivel 2",
						de = "Stufe 2",
						fr = "Étage 2",
						it = "Livello 2",
						pt = "Nível 2",
						ru = "Уровень 2",
						ko = "층 2",
						cn = "等级 2",
						tw = "等級 2",
					},
				}), {
					["cost"] = {
						{ "i", 211779, 1 },	-- Comprehension Charm
						{ "i", 211854, 1 },	-- Scroll: OMIT KESA
						{ "i", 211853, 1 },	-- Scroll: VOCE WELL
						{ "i", 211784, 1 },	-- Scroll: WUBBA WUBBA
						{ "i", 211855, 1 },	-- Scroll: STHENIC LUNATE
					},
					["groups"] = {
						i(211800, {	-- Scroll of Reintegration
							["description"] = "Consumed on use.",
							["classes"] = { MAGE },
						}),
						i(1712),	-- Scroll of Spirit II
						i(1478),	-- Scroll of Protection II
						i(211954, {	-- Scroll of Arcane Accuracy I
							["classes"] = { MAGE },
						}),
						i(211953, {	-- Scroll of Arcane Recovery I
							["classes"] = { MAGE },
						}),
						i(211957, {	-- Scroll of Arcane Power I
							["classes"] = { MAGE },
						}),
						i(211955, {	-- Scroll of Arcane Protection - Fire I
							["classes"] = { MAGE },
						}),
						i(211956, {	-- Scroll of Arcane Protection - Frost I
							["classes"] = { MAGE },
						}),
					},
				}),
				applyclassicphase(SOD_PHASE_TWO, n(createHeader({	-- Tier 3
					readable = "Comprehension - Tier 3",
					icon = 237446,
					text = {
						en = "Tier 3",
						es = "Nivel 3",
						de = "Stufe 3",
						fr = "Étage 3",
						it = "Livello 3",
						pt = "Nível 3",
						ru = "Уровень 3",
						ko = "층 3",
						cn = "等级 3",
						tw = "等級 3",
					},
				}), {
					["cost"] = {
						{ "i", 211779, 1 },	-- Comprehension Charm
						{ "i", 213545, 1 },	-- Scroll: PEATCHY ATTAX
						{ "i", 213546, 1 },	-- Scroll: SHOOBEEDOOP
						{ "i", 213547, 1 },	-- Scroll: THAW WORDS
						{ "i", 213544, 1 },	-- Scroll: TOPAZ YORAK
						{ "i", 213543, 1 },	-- Scroll: UPDOG
					},
					["groups"] = {
						i(217496, {	-- Scroll of the Blade
							["cost"] = {{ "i", 7714, 1 }},	-- Hypnotic Blade
							["classes"] = { MAGE },
							["groups"] = {
								i(217497),	-- Narpas Sword
							},
						}),
						i(213548, {	-- Scroll of Liminal Passage
							["classes"] = { MAGE },
						}),
						i(215257, {	-- Scroll of Comprehension
							["classes"] = { MAGE },
						}),
						i(217495, {	-- Scroll of Cryoblast
							["classes"] = { MAGE },
						}),
						i(213550, {	-- Scroll of Polymorph: Odd Melon
							["classes"] = { MAGE },
						}),
						applyclassicphase(SOD_PHASE_THREE, i(220792)),	-- Scroll of Spatial Mending
					},
				})),
				i(203747, {	-- Spell Notes: Fingers of Frost
					["cost"] = {
						{ "i", 211779, 1 },	-- Comprehension Charm
						{ "i", 203753, 1 },	-- Spell Notes: RING SEFF OSTROF
					},
					["groups"] = {
						recipe(401765),	-- Engrave Chest - Fingers of Frost
					},
				}),
				i(203745, {	-- Spell Notes: Ice Lance
					["cost"] = {
						{ "i", 211809, 1 },	-- Comprehension Primer
						{ "i", 203751, 1 },	-- Spell Notes: CALE ENCI
					},
					["groups"] = {
						recipe(401760),	-- Engrave Gloves - Ice Lance
					},
				}),
				i(208799, {	-- Spell Notes: Living Bomb
					["cost"] = {
						{ "i", 211779, 1 },	-- Comprehension Charm
						{ "i", 208854, 1 },	-- Chewed Spell Notes
						{ "i", 209028, 1 },	-- Spell Notes: BIVOLG NIMB
					},
					["groups"] = {
						recipe(415936),	-- Engrave Gloves - Living Bomb
					},
				}),
				i(203746, {	-- Spell Notes: Living Flame
					["cost"] = {
						{ "i", 211779, 1 },	-- Comprehension Charm
						{ "i", 203752, 1 },	-- Spell Notes: MILEGIN VALF
					},
					["groups"] = {
						recipe(401768),	-- Engrave Pants - Living Flame
					},
				}),
				i(208753, {	-- Spell Notes: Regeneration
					["cost"] = {
						{ "i", 211779, 1 },	-- Comprehension Charm
						{ "i", 208754, 1 },	-- Spell Notes: TENGI RONEERA
					},
					["groups"] = {
						recipe(401767),	-- Engrave Chest - Regeneration
					},
				}),
			}),
			n(QUESTS, {
				applyclassicphase(SOD_PHASE_THREE, q(82084, {	-- A Lesson in Literacy
					["altQuests"] = { 82086 },	-- A Lesson in Literacy (HQT?)
					["providers"] = {
						{ "n", 211033 },	-- Garion Wendell <Librarian>
						{ "n", 211022 },	-- Owen Thadd <Librarian>
					},
					["coords"] = {
						{ 37.8, 80.2, STORMWIND_CITY },
						{ 73.6, 33, UNDERCITY },
					},
					["timeline"] = { ADDED_1_15_2 },
					["maps"] = { FERALAS, THE_HINTERLANDS, ZULFARRAK },
					["lvl"] = 42,
					["groups"] = {
						objective(1, {	-- 0/1 Pristine Owlbeast Quill
							["provider"] = { "i", 221359 },	-- Pristine Owlbeast Quill
							["coord"] = { 40.6, 55.6, THE_HINTERLANDS },
							["crs"] = {
								2928,	-- Primitive Owlbeast
								2929,	-- Savage Owlbeast
								2927,	-- Vicious Owlbeast
							},
						}),
						objective(2, {	-- 0/5 Zukk'ash Resin
							["provider"] = { "i", 221361 },	-- Zukk'ash Resin
							["coord"] = { 75.0, 59.2, FERALAS },
							["crs"] = {
								5246,	-- Zukk'ash Worker
								5245,	-- Zukk'ash Wasp
								5247,	-- Zukk'ash Tunneler
								5244,	-- Zukk'ash Stinger
							},
						}),
						objective(3, {	-- 0/8 Farraki Papyrus
							["provider"] = { "i", 221360 },	-- Farraki Papyrus
							["cr"] = 7286,	-- Zul'Farrak Zombie
						}),
						i(221344),	-- Personal Spellbook
					},
				})),
				q(78145, {	-- Arcanic Systems Manual
					["providers"] = {
						{ "i", 209847 },	-- Arcanic Systems Manual
						{ "n", 211033 },	-- Garion Wendell <Librarian>
						{ "n", 211022 },	-- Owen Thadd <Librarian>
					},
					["coords"] = {
						{ 37.8, 80.2, STORMWIND_CITY },
						{ 73.6, 33, UNDERCITY },
					},
					["maps"] = { THE_BARRENS },
					["groups"] = {
						i(211779),	-- Comprehension Charm
					},
				}),
				q(79091, {	-- Archmage Antonidas: The Unabridged Autobiography
					["providers"] = {
						{ "i", 203754 },	-- Archmage Antonidas: The Unabridged Autobiography
						{ "n", 211033 },	-- Garion Wendell <Librarian>
					},
					["coord"] = { 37.8, 80.2, STORMWIND_CITY },
					["maps"] = { IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(211779),	-- Comprehension Charm
					},
				}),
				q(79092, {	-- Archmage Theocritus's Research Journal
					["providers"] = {
						{ "i", 203755 },	-- Archmage Theocritus's Research Journal
						{ "n", 211033 },	-- Garion Wendell <Librarian>
					},
					["coord"] = { 37.8, 80.2, STORMWIND_CITY },
					["maps"] = { ELWYNN_FOREST },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(211779),	-- Comprehension Charm
					},
				}),
				q(79096, {	-- Ataeric: On Arcane Curiosities
					["providers"] = {
						{ "i", 210177 },	-- Ataeric: On Arcane Curiosities
						{ "n", 211022 },	-- Owen Thadd <Librarian>
					},
					["coord"] = { 73.6, 33, UNDERCITY },
					["maps"] = { SILVERPINE_FOREST },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(211779),	-- Comprehension Charm
					},
				}),
				q(79097, {	-- Baxtan: On Destructive Magics
					["providers"] = {
						{ "i", 208800 },	-- Baxtan: On Destructive Magics
						{ "n", 211033 },	-- Garion Wendell <Librarian>
						{ "n", 211022 },	-- Owen Thadd <Librarian>
					},
					["coords"] = {
						{ 37.8, 80.2, STORMWIND_CITY },
						{ 73.6, 33, UNDERCITY },
					},
					["maps"] = { THE_BARRENS },
					["groups"] = {
						i(211779),	-- Comprehension Charm
					},
				}),
				q(78142, {	-- Bewitchments and Glamours
					["providers"] = {
						{ "i", 209845 },	-- Bewitchments and Glamours
						{ "n", 211033 },	-- Garion Wendell <Librarian>
						{ "n", 211022 },	-- Owen Thadd <Librarian>
					},
					["coords"] = {
						{ 37.8, 80.2, STORMWIND_CITY },
						{ 73.6, 33, UNDERCITY },
					},
					["maps"] = { WESTFALL },
					["groups"] = {
						i(211779),	-- Comprehension Charm
					},
				}),
				q(78147, {	-- Crimes Against Anatomy
					["providers"] = {
						{ "i", 209849 },	-- Crimes Against Anatomy
						{ "n", 211033 },	-- Garion Wendell <Librarian>
						{ "n", 211022 },	-- Owen Thadd <Librarian>
					},
					["coords"] = {
						{ 37.8, 80.2, STORMWIND_CITY },
						{ 73.6, 33, UNDERCITY },
					},
					["maps"] = { DUSKWOOD },
					["groups"] = {
						i(211779),	-- Comprehension Charm
					},
				}),
				q(78150, {	-- Friend of the Library
					["providers"] = {
						{ "n", 211033 },	-- Garion Wendell <Librarian>
						{ "n", 211022 },	-- Owen Thadd <Librarian>
					},
					["sourceQuests"] = {
						78145,	-- Arcanic Systems Manual
						79091,	-- Archmage Antonidas: The Unabridged Autobiography
						79092,	-- Archmage Theocritus's Research Journal
						79096,	-- Ataeric: On Arcane Curiosities
						79097,	-- Baxtan: On Destructive Magics
						78142,	-- Bewitchments and Glamours
						78147,	-- Crimes Against Anatomy
						78149,	-- Fury of the Land
						78146,	-- Goaz Scrolls
						78124,	-- Nar'thalas Almanac
						79093,	-- Rumi of Gnomeregan: The Collected Works
						78148,	-- Runes of the Sorceror-Kings
						78143,	-- Secrets of the Dreamers
						79095,	-- The Apothecary's Metaphysical Primer
						78127,	-- The Dalaran Digest
						79094,	-- The Lessons of Ta'zo
					},
					["sourceQuestNumRequired"] = 10,
					["coords"] = {
						{ 37.8, 80.2, STORMWIND_CITY },
						{ 73.6, 33, UNDERCITY },
					},
					["groups"] = {
						recipe(425170),	-- Engrave Pants - Icy Veins
					},
				}),
				q(78149, {	-- Fury of the Land
					["providers"] = {
						{ "i", 209851 },	-- Fury of the Land
						{ "n", 211033 },	-- Garion Wendell <Librarian>
						{ "n", 211022 },	-- Owen Thadd <Librarian>
					},
					["coords"] = {
						{ 37.8, 80.2, STORMWIND_CITY },
						{ 73.6, 33, UNDERCITY },
					},
					["maps"] = { STONETALON_MOUNTAINS },
					["groups"] = {
						i(211779),	-- Comprehension Charm
					},
				}),
				q(78146, {	-- Goaz Scrolls
					["providers"] = {
						{ "i", 209848 },	-- Goaz Scrolls
						{ "n", 211033 },	-- Garion Wendell <Librarian>
						{ "n", 211022 },	-- Owen Thadd <Librarian>
					},
					["coords"] = {
						{ 37.8, 80.2, STORMWIND_CITY },
						{ 73.6, 33, UNDERCITY },
					},
					["maps"] = { WETLANDS },
					["groups"] = {
						i(211779),	-- Comprehension Charm
					},
				}),
				q(78124, {	-- Nar'thalas Almanac
					["providers"] = {
						{ "i", 209843 },	-- Nar'thalas Almanac, Vol. 74
						{ "n", 211033 },	-- Garion Wendell <Librarian>
						{ "n", 211022 },	-- Owen Thadd <Librarian>
					},
					["coords"] = {
						{ 37.8, 80.2, STORMWIND_CITY },
						{ 73.6, 33, UNDERCITY },
					},
					["maps"] = { DARKSHORE },
					["groups"] = {
						i(211779),	-- Comprehension Charm
					},
				}),
				q(79093, {	-- Rumi of Gnomeregan: The Collected Works
					["providers"] = {
						{ "i", 208860 },	-- Rumi of Gnomeregan: The Collected Works
						{ "n", 211033 },	-- Garion Wendell <Librarian>
					},
					["coord"] = { 37.8, 80.2, STORMWIND_CITY },
					["maps"] = { WESTFALL, LOCH_MODAN },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(211779),	-- Comprehension Charm
					},
				}),
				q(78148, {	-- Runes of the Sorceror-Kings
					["providers"] = {
						{ "i", 209850 },	-- Runes of the Sorcerer-Kings
						{ "n", 211033 },	-- Garion Wendell <Librarian>
						{ "n", 211022 },	-- Owen Thadd <Librarian>
					},
					["coords"] = {
						{ 37.8, 80.2, STORMWIND_CITY },
						{ 73.6, 33, UNDERCITY },
					},
					["maps"] = { LOCH_MODAN },
					["groups"] = {
						i(211779),	-- Comprehension Charm
					},
				}),
				q(78143, {	-- Secrets of the Dreamers
					["providers"] = {
						{ "i", 209846 },	-- Secrets of the Dreamers
						{ "n", 211033 },	-- Garion Wendell <Librarian>
						{ "n", 211022 },	-- Owen Thadd <Librarian>
					},
					["coords"] = {
						{ 37.8, 80.2, STORMWIND_CITY },
						{ 73.6, 33, UNDERCITY },
					},
					["maps"] = { WAILING_CAVERNS },
					["groups"] = {
						i(211779),	-- Comprehension Charm
					},
				}),
				q(79095, {	-- The Apothecary's Metaphysical Primer
					["providers"] = {
						{ "i", 208185 },	-- The Apothecary's Metaphysical Primer
						{ "n", 211022 },	-- Owen Thadd <Librarian>
					},
					["coord"] = { 73.6, 33, UNDERCITY },
					["maps"] = { TIRISFAL_GLADES },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(211779),	-- Comprehension Charm
					},
				}),
				q(78127, {	-- The Dalaran Digest
					["providers"] = {
						{ "i", 209844 },	-- The Dalaran Digest, Vol. 23
						{ "n", 211033 },	-- Garion Wendell <Librarian>
						{ "n", 211022 },	-- Owen Thadd <Librarian>
					},
					["coords"] = {
						{ 37.8, 80.2, STORMWIND_CITY },
						{ 73.6, 33, UNDERCITY },
					},
					["maps"] = { SILVERPINE_FOREST },
					["groups"] = {
						i(211779),	-- Comprehension Charm
					},
				}),
				q(79094, {	-- The Lessons of Ta'zo
					["providers"] = {
						{ "i", 207972 },	-- The Lessons of Ta'zo
						{ "n", 211022 },	-- Owen Thadd <Librarian>
					},
					["coord"] = { 73.6, 33, UNDERCITY },
					["maps"] = { ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(211779),	-- Comprehension Charm
					},
				}),
			}),
		},
	}),
	n(createHeader({	-- Monster Hunting
		readable = "Monster Hunting",
		icon = 131013,
		text = {
			en = "Monster Hunting",
			es = "Caza de Monstruos",
			de = "Monsterjagd",
			fr = "Chasse aux Monstres",
			it = "Caccia ai Mostri",
			pt = "Caça aos Monstros",
			ru = "Охота на монстров",
			ko = "몬스터 사냥",
			cn = "怪物狩猎",
			tw = "怪物狩獵",
		},
	}), {
		["classes"] = { WARRIOR },
		["groups"] = {
			i(204703, {	-- Rune of Devastate
				["cost"] = {
					{ "i", 204688, 1 },	-- Monster Hunter's First Rune Fragment
					{ "i", 204689, 1 },	-- Monster Hunter's Second Rune Fragment
					{ "i", 204690, 1 },	-- Monster Hunter's Third Rune Fragment
				},
				["maps"] = { DARNASSUS, DUN_MOROGH, DUROTAR, STORMWIND_CITY, MULGORE, UNDERCITY },
				["classes"] = { WARRIOR },
				["groups"] = {
					recipe(403475),	-- Engrave Gloves - Devastate
				},
			}),
			n(209608, {	-- Delwynna <Monster Hunter>
				["coord"] = { 64.0, 22.0, DARNASSUS },
				["timeline"] = { REMOVED_2_0_1 },
				["classes"] = { WARRIOR },
				["races"] = { NIGHTELF },
				["groups"] = {
					i(204688, {	-- Monster Hunter's First Rune Fragment
						["cost"] = { { "i", 208610, 1 } },	-- Severed Owl Head
					}),
					i(204689, {	-- Monster Hunter's Second Rune Fragment
						["cost"] = { { "i", 208611, 1 } },	-- Severed Tiger Head
					}),
					i(204690, {	-- Monster Hunter's Third Rune Fragment
						["cost"] = { { "i", 208612, 1 } },	-- Severed Spider Head
					}),
				},
			}),
			n(208619, {	-- Dorac Graves <Tactical Surgeon>
				["coord"] = { 48.0, 70.6, UNDERCITY },
				["timeline"] = { REMOVED_2_0_1 },
				["classes"] = { WARRIOR },
				["races"] = { UNDEAD },
				["groups"] = {
					i(204688, {	-- Monster Hunter's First Rune Fragment
						["cost"] = { { "i", 207975, 1 } },	-- Severed Bat Head
					}),
					i(204689, {	-- Monster Hunter's Second Rune Fragment
						["cost"] = { { "i", 204477, 1 } },	-- Severed Murloc Head
					}),
					i(204690, {	-- Monster Hunter's Third Rune Fragment
						["cost"] = { { "i", 204478, 1 } },	-- Severed Gnoll Head
					}),
				},
			}),
			n(208652, {	-- Junni Steelpass <Monster Hunter>
				["coord"] = { 46.6, 53.6, DUN_MOROGH },
				["timeline"] = { REMOVED_2_0_1 },
				["classes"] = { WARRIOR },
				["races"] = { DWARF, GNOME },
				["groups"] = {
					i(204688, {	-- Monster Hunter's First Rune Fragment
						["cost"] = { { "i", 208158, 1 } },	-- Pristine Trogg Heart
					}),
					i(204689, {	-- Monster Hunter's Second Rune Fragment
						["cost"] = { { "i", 208159, 1 } },	-- Severed Troll Head
					}),
					i(204690, {	-- Monster Hunter's Third Rune Fragment
						["cost"] = { { "i", 208160, 1 } },	-- Severed Wendigo Paw
					}),
				},
			}),
			n(207637, {	-- Vateya Timberhoof <Monster Hunter>
				["coord"] = { 46.4, 61.8, MULGORE },
				["timeline"] = { REMOVED_2_0_1 },
				["classes"] = { WARRIOR },
				["races"] = { TAUREN },
				["groups"] = {
					i(204688, {	-- Monster Hunter's First Rune Fragment
						["cost"] = { { "i", 206994, 1 } },	-- Severed Quilboar Head
					}),
					i(204689, {	-- Monster Hunter's Second Rune Fragment
						["cost"] = { { "i", 206995, 1 } },	-- Severed Harpy Head
					}),
					i(204690, {	-- Monster Hunter's Third Rune Fragment
						["cost"] = { { "i", 204478, 1 } },	-- Severed Gnoll Head
					}),
				},
			}),
			n(207957, {	-- Vahi Bonesplitter <Monster Hunter>
				["coord"] = { 53.0, 43.6, DUROTAR },
				["timeline"] = { REMOVED_2_0_1 },
				["classes"] = { WARRIOR },
				["races"] = { ORC, TROLL },
				["groups"] = {
					i(204688, {	-- Monster Hunter's First Rune Fragment
						["cost"] = { { "i", 206994, 1 } },	-- Severed Quilboar Head
					}),
					i(204689, {	-- Monster Hunter's Second Rune Fragment
						["cost"] = { { "i", 206995, 1 } },	-- Severed Harpy Head
					}),
					i(204690, {	-- Monster Hunter's Third Rune Fragment
						["cost"] = { { "i", 207062, 1 } },	-- Severed Centaur Head
					}),
				},
			}),
			n(203226, {	-- Viktoria Woods <Monster Hunter>
				["coord"] = { 69.8, 50.0, STORMWIND_CITY },
				["timeline"] = { REMOVED_2_0_1 },
				["classes"] = { WARRIOR },
				["races"] = { HUMAN },
				["groups"] = {
					i(204688, {	-- Monster Hunter's First Rune Fragment
						["cost"] = { { "i", 204476, 1 } },	-- Severed Kobold Head
					}),
					i(204689, {	-- Monster Hunter's Second Rune Fragment
						["cost"] = { { "i", 204477, 1 } },	-- Severed Murloc Head
					}),
					i(204690, {	-- Monster Hunter's Third Rune Fragment
						["cost"] = { { "i", 204478, 1 } },	-- Severed Gnoll Head
					}),
				},
			}),
		},
	}),
	applyclassicphase(SOD_PHASE_THREE, n(createHeader({	-- Nightmare Incursions
		readable = "SOD - Nightmare Incursions",
		icon = 134108,
		text = {
			en = "Nightmare Incursions",
			es = "Incursiones de la Pesadilla",
			mx = "Incursiones de pesadilla",
			de = "Alptraumeinfälle",
			fr = "Incursions de cauchemar",
			-- it = "",
			pt = "Incursões Pesadelares",
			ru = "Кошмарные вторжения",
			ko = "악몽 침공지",
			cn = "梦魇进犯",
			tw = "夢魘入侵",
		},
		description = {
			en = "This event focuses on the portals found across Azeroth, typically hosting an Emerald Dragon World Boss. These new events are PvE focused, asking players to complete quests around and inside the portals.\n\nThe event is intended to provide both endgame content and variation, with a new faction, the Emerald Wardens as well as new items and sets, but also to supplement the leveling experience. As early as level 25, players will be able to start doing Nightmare Incursions for experience and reputation.\n\nIncursions are also intended to be done in a group, with quests being shareable to up to 4 other players. Some quests will also require killing boss-type enemies, or require you to utilize gathering professions. This doesn't mean that you can't do them solo, it is just unlikely to be very efficient.",
		},
	}), {
		n(FACTIONS, {
			faction(2641, {	-- Emerald Wardens
				["OnTooltip"] = OnTooltip_EMERALD_WARDENS,
				["maps"] = { ASHENVALE, DUSKWOOD, FERALAS, TEMPLE_OF_ATALHAKKAR, THE_HINTERLANDS },
			}),
		}),
		n(QUESTS, {
			ashenvalequest(81768, {	-- Ashenvale Mission I: Defeat Satyrs [75 Rep]
				["providers"] = {
					{ "i", 219999 },	-- Nightmare Incursions: Ashenvale Mission I
					{ "i", 220053 },	-- Deputization Authorization: Ashenvale Mission I
				},
				["groups"] = {
					objective(1, {	-- 0/10 Dreamfire Hellcaller slain
						["provider"] = { "n", 221262 },	-- Dreamfire Hellcaller
						["coord"] = { 80.4, 48.4, ASHENVALE },
					}),
					objective(2, {	-- 0/10 Dreamfire Betrayer slain
						["provider"] = { "n", 221261 },	-- Dreamfire Betrayer
						["coord"] = { 79.4, 51.0, ASHENVALE },
					}),
				},
			}),
			ashenvalequest(81769, {	-- Ashenvale Mission II: Defeat Treants [75 Rep]
				["providers"] = {
					{ "i", 220000 },	-- Nightmare Incursions: Ashenvale Mission II
					{ "i", 220054 },	-- Deputization Authorization: Ashenvale Mission II
				},
				["groups"] = {
					objective(1, {	-- 0/7 Vengeful Ancient slain
						["provider"] = { "n", 221263 },	-- Vengeful Ancient
						["coord"] = { 86.8, 59.2, ASHENVALE },
					}),
				},
			}),
			ashenvalequest(81770, {	-- Ashenvale Mission III: Defeat Dragonkin [75 Rep]
				["providers"] = {
					{ "i", 220001 },	-- Nightmare Incursions: Ashenvale Mission III
					{ "i", 220055 },	-- Deputization Authorization: Ashenvale Mission III
				},
				["groups"] = {
					objective(1, {	-- 0/3 Wyrmkin Nightstalker slain
						["provider"] = { "n", 221259 },	-- Wyrmkin Nightstalker
						["coord"] = { 85.8, 46.6, ASHENVALE },
					}),
					objective(2, {	-- 0/10 Terror Whelp slain
						["provider"] = { "n", 221260 },	-- Terror Whelp
						["coord"] = { 87.0, 44.6, ASHENVALE },
					}),
				},
			}),
			ashenvalequest(81771, {	-- Ashenvale Mission IV: Dragon Intelligence [75 Rep]
				["providers"] = {
					{ "i", 220002 },	-- Nightmare Incursions: Ashenvale Mission IV
					{ "i", 220056 },	-- Deputization Authorization: Ashenvale Mission IV
				},
				["groups"] = {
					objective(1, {	-- 0/1 Intelligence Report: Forest Song
						["provider"] = { "i", 219924 },	-- Intelligence Report: Forest Song
						["coord"] = { 83.6, 45.4, ASHENVALE },
						["cr"] = 221271,	-- Dreamwarden Ellodar
					}),
				},
			}),
			ashenvalequest(81772, {	-- Ashenvale Mission V: Satyr Intelligence [75 Rep]
				["providers"] = {
					{ "i", 220003 },	-- Nightmare Incursions: Ashenvale Mission V
					{ "i", 220057 },	-- Deputization Authorization: Ashenvale Mission V
				},
				["groups"] = {
					objective(1, {	-- 0/1 Intelligence Report: Satyrnaar
						["provider"] = { "i", 219925 },	-- Intelligence Report: Satyrnaar
						["coord"] = { 81.6, 48.6, ASHENVALE },
						["cr"] = 221272,	-- Dreamwarden Mandoran
					}),
				},
			}),
			ashenvalequest(81773, {	-- Ashenvale Mission VI: Treant Intelligence [75 Rep]
				["providers"] = {
					{ "i", 220004 },	-- Nightmare Incursions: Ashenvale Mission VI
					{ "i", 220058 },	-- Deputization Authorization: Ashenvale Mission VI
				},
				["groups"] = {
					objective(1, {	-- 0/1 Intelligence Report: Warsong Lumber Camp
						["provider"] = { "i", 219926 },	-- Intelligence Report: Warsong Lumber Camp
						["coord"] = { 91.2, 58.0, ASHENVALE },
						["cr"] = 221273,	-- Dreamwarden Lanaria
					}),
				},
			}),
			ashenvalequest(81774, {	-- Ashenvale Mission VII: Recover Dreamengine [75 Rep]
				["providers"] = {
					{ "i", 220005 },	-- Nightmare Incursions: Ashenvale Mission VII
					{ "i", 220059 },	-- Deputization Authorization: Ashenvale Mission VII
				},
				["groups"] = {
					objective(1, {	-- 0/1 Dreamengine
						["providers"] = {
							{ "i", 219448 },	-- Dreamengine
							{ "o", 441128 },	-- Vibrating Crate
						},
						["coord"] = { 88.4, 55.5, ASHENVALE },
					}),
				},
			}),
			ashenvalequest(81775, {	-- Ashenvale Mission VIII: Recover Azsharan Prophecy [75 Rep]
				["providers"] = {
					{ "i", 220006 },	-- Nightmare Incursions: Ashenvale Mission VIII
					{ "i", 220060 },	-- Deputization Authorization: Ashenvale Mission VIII
				},
				["groups"] = {
					objective(1, {	-- 0/1 Azsharan Prophecy
						["providers"] = {
							{ "i", 219449 },	-- Azsharan Prophecy
							{ "o", 441129 },	-- Azsharan Prophecy
						},
						["coord"] = { 80.7, 48.9, ASHENVALE },
					}),
				},
			}),
			ashenvalequest(81776, {	-- Ashenvale Mission IX: Recover Dream-Touched Dragonegg [75 Rep]
				["providers"] = {
					{ "i", 220007 },	-- Nightmare Incursions: Ashenvale Mission IX
					{ "i", 220061 },	-- Deputization Authorization: Ashenvale Mission IX
				},
				["groups"] = {
					objective(1, {	-- 0/1 Dream-Touched Dragon Egg
						["providers"] = {
							{ "i", 219447 },	-- Dream-Touched Dragon Egg
							{ "o", 441124 },	-- Dream-Touched Dragon Egg
						},
						["coord"] = { 86.1, 45.9, ASHENVALE },
					}),
				},
			}),
			ashenvalequest(81777, {	-- Ashenvale Mission X: Dreamroot [75 Rep]
				["providers"] = {
					{ "i", 220008 },	-- Nightmare Incursions: Ashenvale Mission X
					{ "i", 220062 },	-- Deputization Authorization: Ashenvale Mission X
				},
				["requireSkill"] = HERBALISM,
				["learnedAt"] = 205,
				["groups"] = {
					objective(1, {	-- 0/10 Dreamroot
						["providers"] = {
							{ "i", 219444 },	-- Dreamroot
							{ "o", 439627 },	-- Dreamroot
						},
						["coords"] = {
							{ 93.5, 38.3, ASHENVALE },
							{ 81.0, 44.8, ASHENVALE },
							{ 85.9, 56.5, ASHENVALE },
						},
					}),
				},
			}),
			ashenvalequest(81778, {	-- Ashenvale Mission XI: Fool's Gold Dust [75 Rep]
				["providers"] = {
					{ "i", 220009 },	-- Nightmare Incursions: Ashenvale Mission XI
					{ "i", 220063 },	-- Deputization Authorization: Ashenvale Mission XI
				},
				["requireSkill"] = MINING,
				["learnedAt"] = 205,
				["groups"] = {
					objective(1, {	-- 0/10 Fool's Gold Dust
						["providers"] = {
							{ "i", 219445 },	-- Fool's Gold Dust
							{ "o", 439628 },	-- Fool's Gold Vein
						},
						["coords"] = {
							{ 91.3, 37.6, ASHENVALE },
							{ 82.7, 45.8, ASHENVALE },
							{ 88.1, 62.1, ASHENVALE },
						},
					}),
				},
			}),
			ashenvalequest(81779, {	-- Ashenvale Mission XII: Dream-Infused Dragonscale [75 Rep]
				["providers"] = {
					{ "i", 220010 },	-- Nightmare Incursions: Ashenvale Mission XII
					{ "i", 220064 },	-- Deputization Authorization: Ashenvale Mission XII
				},
				["requireSkill"] = SKINNING,
				["learnedAt"] = 205,
				["groups"] = {
					objective(1, {	-- 0/10 Dream-Infused Dragonscale
						["provider"] = { "i", 219446 },	-- Dream-Infused Dragonscale
						["coord"] = { 86.8, 46.6, ASHENVALE },
						["crs"] = {
							221259,	-- Wyrmkin Nightstalker
							221260,	-- Terror Whelp
						},
					}),
				},
			}),
			ashenvalequest(81780, {	-- Ashenvale Mission XIII: Defeat Larsera [200 Rep]
				["providers"] = {
					{ "i", 220011 },	-- Nightmare Incursions: Ashenvale Mission XIII
					{ "i", 220065 },	-- Deputization Authorization: Ashenvale Mission XVIII
				},
				["groups"] = {
					objective(1, {	-- 0/1 Larsera slain
						["provider"] = { "n", 221265 },	-- Larsera
						["coord"] = { 86.6, 44.6, ASHENVALE },
					}),
				},
			}),
			ashenvalequest(81781, {	-- Ashenvale Mission XIV: Defeat Zalius [75 Rep]
				["providers"] = {
					{ "i", 220012 },	-- Nightmare Incursions: Ashenvale Mission XIV
					{ "i", 220066 },	-- Deputization Authorization: Ashenvale Mission XIV
				},
				["groups"] = {
					objective(1, {	-- 0/1 Zalius slain
						["provider"] = { "n", 221266 },	-- Zalius <Dreamfire Elder>
						["coord"] = { 81.0, 50.6, ASHENVALE },
					}),
				},
			}),
			ashenvalequest(81782, {	-- Ashenvale Mission XV: Defeat Shredder 9000 [75 Rep]
				["providers"] = {
					{ "i", 220013 },	-- Nightmare Incursions: Ashenvale Mission XV
					{ "i", 220067 },	-- Deputization Authorization: Ashenvale Mission XV
				},
				["groups"] = {
					objective(1, {	-- 0/1 Shredder 9000 slain
						["provider"] = { "n", 221267 },	-- Shredder 9000
						["coord"] = { 86.8, 62.6, ASHENVALE },
					}),
				},
			}),
			ashenvalequest(81783, {	-- Ashenvale Mission XVI: Rescue Alyssian Windcaller [75 Rep]
				["providers"] = {
					{ "i", 220014 },	-- Nightmare Incursions: Ashenvale Mission XVI
					{ "i", 220068 },	-- Deputization Authorization: Ashenvale Mission XVI
				},
				["groups"] = {
					objective(1, {	-- Rescue Alyssian Windcaller
						["provider"] = { "n", 221270 },	-- Alyssian Windcaller <Druid of the Claw>
						["coord"] = { 92, 54, ASHENVALE },
					}),
				},
			}),
			ashenvalequest(81784, {	-- Ashenvale Mission XVII: Rescue Doran Dreambough [75 Rep]
				["providers"] = {
					{ "i", 220015 },	-- Nightmare Incursions: Ashenvale Mission XVII
					{ "i", 220069 },	-- Deputization Authorization: Ashenvale Mission XVII
				},
				["groups"] = {
					objective(1, {	-- Rescue Doran Dreambough
						["provider"] = { "n", 221268 },	-- Doran Dreambough <Druid of the Claw>
						["coord"] = { 87.2, 43.6, ASHENVALE },
					}),
				},
			}),
			ashenvalequest(81785, {	-- Ashenvale Mission XVIII: Rescue Maseara Autumnmoon [75 Rep]
				["providers"] = {
					{ "i", 220016 },	-- Nightmare Incursions: Ashenvale Mission XVIII
					{ "i", 220070 },	-- Deputization Authorization: Ashenvale Mission XVIII
				},
				["groups"] = {
					objective(1, {	-- Rescue Maseara Autumnmoon
						["provider"] = { "n", 221269 },	-- Maseara Autumnmoon <Druid of the Claw>
						["coord"] = { 81, 50, ASHENVALE },
					}),
				},
			}),
			duskwoodquest(81730, {	-- Duskwood Mission I: Defeat Worgen [75 Rep]
				["providers"] = {
					{ "i", 219962 },	-- Nightmare Incursions: Duskwood Mission I
					{ "i", 219963 },	-- Deputization Authorization: Duskwood Mission I
				},
				["groups"] = {
					objective(1, {	-- 0/10 Nightmare Runner slain
						["provider"] = { "n", 221171 },	-- Nightmare Runner
						["coord"] = { 63.2, 72.2, DUSKWOOD },
					}),
					objective(2, {	-- 0/10 Nightmare Weaver slain
						["provider"] = { "n", 221172 },	-- Nightmare Weaver
						["coord"] = { 65.8, 66.2, DUSKWOOD },
					}),
				},
			}),
			duskwoodquest(81731, {	-- Duskwood Mission II: Defeat Ogres [75 Rep]
				["providers"] = {
					{ "i", 219966 },	-- Nightmare Incursions: Duskwood Mission II
					{ "i", 219965 },	-- Deputization Authorization: Duskwood Mission II
				},
				["groups"] = {
					objective(1, {	-- 0/3 Deranged Ogre slain
						["provider"] = { "n", 221174 },	-- Deranged Ogre
						["coord"] = { 37.6, 71.6, DUSKWOOD },
					}),
					objective(2, {	-- 0/3 Demented Fire Weaver slain
						["provider"] = { "n", 221175 },	-- Demented Fire Weaver
						["coord"] = { 34.6, 77.8, DUSKWOOD },
					}),
				},
			}),
			duskwoodquest(81732, {	-- Duskwood Mission III: Defeat Dragonkin [75 Rep]
				["providers"] = {
					{ "i", 219967 },	-- Nightmare Incursions: Duskwood Mission III
					{ "i", 219983 },	-- Deputization Authorization: Duskwood Mission III
				},
				["groups"] = {
					objective(1, {	-- 0/3 Wyrmkin Terrorwalker slain
						["provider"] = { "n", 221200 },	-- Wyrmkin Terrorwalker
						["coord"] = { 49.0, 71.8, DUSKWOOD },
					}),
					objective(2, {	-- 0/10 Nightterror Whelp slain
						["provider"] = { "n", 221176 },	-- Nightterror Whelp
						["coord"] = { 49.6, 75.2, DUSKWOOD },
					}),
				},
			}),
			duskwoodquest(81733, {	-- Duskwood Mission IV: Ogre Intelligence [75 Rep]
				["providers"] = {
					{ "i", 219968 },	-- Nightmare Incursions: Duskwood Mission IV
					{ "i", 219984 },	-- Deputization Authorization: Duskwood Mission IV
				},
				["groups"] = {
					objective(1, {	-- 0/1 Intelligence Report: Vul'gol Ogre Mound
						["provider"] = { "i", 219776 },	-- Intelligence Report: Vul'gol Ogre Mound
						["coord"] = { 36.6, 83.8, DUSKWOOD },
						["cr"] = 221222,	-- Dreamwarden Thalinar
					}),
				},
			}),
			duskwoodquest(81734, {	-- Duskwood Mission V: Worgen Intelligence [75 Rep]
				["providers"] = {
					{ "i", 219969 },	-- Nightmare Incursions: Duskwood Mission V
					{ "i", 219985 },	-- Deputization Authorization: Duskwood Mission V
				},
				["groups"] = {
					objective(1, {	-- 0/1 Intelligence Report: Rotting Orchard
						["provider"] = { "i", 219778 },	-- Intelligence Report: Rotting Orchard
						["coord"] = { 66.2, 76.0, DUSKWOOD },
						["cr"] = 221221,	-- Dreamwarden Dorilar
					}),
				},
			}),
			duskwoodquest(81735, {	-- Duskwood Mission VI: Dragon Intelligence [75 Rep]
				["providers"] = {
					{ "i", 219970 },	-- Nightmare Incursions: Duskwood Mission VI
					{ "i", 219986 },	-- Deputization Authorization: Duskwood Mission VI
				},
				["groups"] = {
					objective(1, {	-- 0/1 Intelligence Report: Yorgen Farmstead
						["provider"] = { "i", 219803 },	-- Intelligence Report: Yorgen Farmstead
						["coord"] = { 50.6, 77.0, DUSKWOOD },
						["cr"] = 221220,	-- Dreamwarden Amalia
					}),
				},
			}),
			duskwoodquest(81736, {	-- Duskwood Mission VII: Recover Shadowscythe [75 Rep]
				["providers"] = {
					{ "i", 219971 },	-- Nightmare Incursions: Duskwood Mission VII
					{ "i", 219987 },	-- Deputization Authorization: Duskwood Mission VII
				},
				["groups"] = {
					objective(1, {	-- 0/1 Shadowscythe
						["providers"] = {
							{ "i", 219404 },	-- Shadowscythe
							{ "o", 441114 },	-- Mysterious Box
						},
						["coord"] = { 65.7, 67.5, DUSKWOOD },
					}),
				},
			}),
			duskwoodquest(81737, {	-- Duskwood Mission VIII: Recover Ogre Magi Text [75 Rep]
				["providers"] = {
					{ "i", 219972 },	-- Nightmare Incursions: Duskwood Mission VIII
					{ "i", 219988 },	-- Deputization Authorization: Duskwood Mission VIII
				},
				["groups"] = {
					objective(1, {	-- 0/1 Ogre Magi Text
						["providers"] = {
							{ "i", 219405 },	-- Ogre Magi Text
							{ "o", 441113 },	-- Ogre Magi Text
						},
						["coord"] = { 35.7, 80.1, DUSKWOOD },
					}),
				},
			}),
			duskwoodquest(81738, {	-- Duskwood Mission IX: Recover Dragon Egg [75 Rep]
				["providers"] = {
					{ "i", 219973 },	-- Nightmare Incursions: Duskwood Mission IX
					{ "i", 219989 },	-- Deputization Authorization: Duskwood Mission IX
				},
				["groups"] = {
					objective(1, {	-- 0/1 Unhatched Green Dragon Egg
						["providers"] = {
							{ "i", 219406 },	-- Unhatched Green Dragon Egg
							{ "o", 441119 },	-- Unhatched Green Dragon Egg
						},
						["coord"] = { 49.5, 72.5, DUSKWOOD },
					}),
				},
			}),
			duskwoodquest(81739, {	-- Duskwood Mission X: Nightmare Moss [75 Rep]
				["providers"] = {
					{ "i", 219974 },	-- Nightmare Incursions: Duskwood Mission X
					{ "i", 219990 },	-- Deputization Authorization: Duskwood Mission X
				},
				["requireSkill"] = HERBALISM,
				["learnedAt"] = 125,
				["groups"] = {
					objective(1, {	-- 0/10 Nightmare Moss
						["providers"] = {
							{ "i", 219399 },	-- Nightmare Moss
							{ "o", 439557 },	-- Nightmare Moss
						},
						["coords"] = {
							{ 47.8, 42.9, DUSKWOOD },
							{ 61.6, 75.8, DUSKWOOD },
							{ 35.1, 72.0, DUSKWOOD },
						},
					}),
				},
			}),
			duskwoodquest(81740, {	-- Duskwood Mission XI: Cold Iron Ore [75 Rep]
				["providers"] = {
					{ "i", 219975 },	-- Nightmare Incursions: Duskwood Mission XI
					{ "i", 219991 },	-- Deputization Authorization: Duskwood Mission XI
				},
				["requireSkill"] = MINING,
				["learnedAt"] = 125,
				["groups"] = {
					objective(1, {	-- 0/10 Cold Iron Ore
						["providers"] = {
							{ "i", 219401 },	-- Cold Iron Ore
							{ "o", 439558 },	-- Cold Iron Deposit
						},
						["coords"] = {
							{ 42.5, 34.6, DUSKWOOD },
							{ 67.6, 78.1, DUSKWOOD },
							{ 35.5, 68.0, DUSKWOOD },
						},
					}),
				},
			}),
			duskwoodquest(81741, {	-- Duskwood Mission XII: Dream-Touched Dragonscale [75 Rep]
				["providers"] = {
					{ "i", 219976 },	-- Nightmare Incursions: Duskwood Mission XII
					{ "i", 219992 },	-- Deputization Authorization: Duskwood Mission XII
				},
				["requireSkill"] = SKINNING,
				["learnedAt"] = 125,
				["groups"] = {
					objective(1, {	-- 0/10 Dream-Touched Dragonscale
						["provider"] = { "i", 219402 },	-- Dream-Touched Dragonscale
						["coord"] = { 48.8, 74.4, DUSKWOOD },
						["crs"] = {
							221176,	-- Nightterror Whelp
							221200,	-- Wyrmkin Terrorwalker
						},
					}),
				},
			}),
			duskwoodquest(81742, {	-- Duskwood Mission XIII: Defeat Ylanthrius [200 Rep]
				["providers"] = {
					{ "i", 219977 },	-- Nightmare Incursions: Duskwood Mission XIII
					{ "i", 219993 },	-- Deputization Authorization: Duskwood Mission XIII
				},
				["groups"] = {
					objective(1, {	-- 0/1 Ylanthrius slain
						["provider"] = { "n", 221204 },	-- Ylanthrius
						["coord"] = { 48.2, 73.4, DUSKWOOD },
					}),
				},
			}),
			duskwoodquest(81743, {	-- Duskwood Mission XIV: Defeat Vvarc'zul [75 Rep]
				["providers"] = {
					{ "i", 219978 },	-- Nightmare Incursions: Duskwood Mission XIV
					{ "i", 219994 },	-- Deputization Authorization: Duskwood Mission XIV
				},
				["groups"] = {
					objective(1, {	-- 0/1 Vvarc'zul slain
						["provider"] = { "n", 221206 },	-- Vvarc' Zul <King of The Woods>
						["coord"] = { 37.0, 83.4, DUSKWOOD },
					}),
				},
			}),
			duskwoodquest(81744, {	-- Duskwood Mission XV: Defeat Amokarok [75 Rep]
				["providers"] = {
					{ "i", 219979 },	-- Nightmare Incursions: Duskwood Mission XV
					{ "i", 219995 },	-- Deputization Authorization: Duskwood Mission XV
				},
				["groups"] = {
					objective(1, {	-- 0/1 Amokarok slain
						["provider"] = { "n", 221207 },	-- Amokarok <Lord of the Hunt>
						["coord"] = { 66.2, 76.6, DUSKWOOD },
					}),
				},
			}),
			duskwoodquest(81745, {	-- Duskwood Mission XVI: Rescue Kroll Mountainshade [75 Rep]
				["providers"] = {
					{ "i", 219980 },	-- Nightmare Incursions: Duskwood Mission XVI
					{ "i", 219996 },	-- Deputization Authorization: Duskwood Mission XVI
				},
				["groups"] = {
					objective(1, {	-- Rescue Kroll Mountainshade
						["provider"] = { "n", 221210 },	-- Kroll Mountainshade <Druid of the Claw>
						["coord"] = { 66.0, 69.2, DUSKWOOD },
					}),
				},
			}),
			duskwoodquest(81746, {	-- Duskwood Mission XVII: Rescue Alara Grovemender [75 Rep]
				["providers"] = {
					{ "i", 219981 },	-- Nightmare Incursions: Duskwood Mission XVII
					{ "i", 219997 },	-- Deputization Authorization: Duskwood Mission XVII
				},
				["groups"] = {
					objective(1, {	-- Rescue Alara Grovemender
						["provider"] = { "n", 221215 },	-- Alara Grovemender <Druid of the Claw>
						["coord"] = { 49.15, 77.55, DUSKWOOD },
					}),
				},
			}),
			duskwoodquest(81747, {	-- Duskwood Mission XVIII: Rescue Elenora Marshwalker [75 Rep]
				["providers"] = {
					{ "i", 219982 },	-- Nightmare Incursions: Duskwood Mission XVIII
					{ "i", 219998 },	-- Deputization Authorization: Duskwood Mission XVIII
				},
				["groups"] = {
					objective(1, {	-- Rescue Elenora Marshwalker
						["provider"] = { "n", 221216 },	-- Elenora Marshwalker
						["coord"] = { 32.39, 69.48, DUSKWOOD },
					}),
				},
			}),
			feralasquest(81855, {	-- Feralas Mission I: Defeat Children of Cenarius [150 Rep]
				["providers"] = {
					{ "i", 220035 },	-- Nightmare Incursions: Feralas Mission I
					{ "i", 220089 },	-- Deputization Authorization: Feralas Mission I
				},
				["groups"] = {
					objective(1, {	-- 0/10 Lost Daughter slain
						["provider"] = { "n", 221375 },	-- Lost Daughter
						["coord"] = { 45.6, 22.2, FERALAS },
					}),
					objective(2, {	-- 0/10 Vengeful Son slain
						["provider"] = { "n", 221377 },	-- Vengeful Son
						["coord"] = { 46.4, 14.4, FERALAS },
					}),
				},
			}),
			feralasquest(81856, {	-- Feralas Mission II: Defeat Harpies [150 Rep]
				["providers"] = {
					{ "i", 220036 },	-- Nightmare Incursions: Feralas Mission II
					{ "i", 220090 },	-- Deputization Authorization: Feralas Mission II
				},
				["groups"] = {
					objective(1, {	-- 0/10 Dreamspring Roguefeather slain
						["provider"] = { "n", 221370 },	-- Dreamspring Roguefeather
						["coord"] = { 39.8, 12.6, FERALAS },
					}),
					objective(2, {	-- 0/10 Dreamspring Stormcaller slain
						["provider"] = { "n", 221371 },	-- Dreamspring Stormcaller
						["coord"] = { 39.0, 13.4, FERALAS },
					}),
				},
			}),
			feralasquest(81857, {	-- Feralas Mission III: Defeat Dragonkin [150 Rep]
				["providers"] = {
					{ "i", 220037 },	-- Nightmare Incursions: Feralas Mission III
					{ "i", 220091 },	-- Deputization Authorization: Feralas Mission III
				},
				["groups"] = {
					objective(1, {	-- 0/10 Frenzied Whelp slain
						["provider"] = { "n", 221369 },	-- Frenzied Whelp
						["coord"] = { 51.6, 19.6, FERALAS },
					}),
					objective(2, {	-- 0/3 Wyrmkin Berserker slain
						["provider"] = { "n", 221367 },	-- Wyrmkin Berserker
						["coord"] = { 51.6, 14.8, FERALAS },
					}),
				},
			}),
			feralasquest(81858, {	-- Feralas Mission IV: Dragon Intelligence [100 Rep]
				["providers"] = {
					{ "i", 220038 },	-- Nightmare Incursions: Feralas Mission IV
					{ "i", 220092 },	-- Deputization Authorization: Feralas Mission IV
				},
				["groups"] = {
					objective(1, {	-- 0/1 Intelligence Report: Oneiros
						["provider"] = { "i", 219957 },	-- Intelligence Report: Oneiros
						["coord"] = { 50.6, 19.8, FERALAS },
						["cr"] = 221401,	-- Dreamwarden Sheldryn
					}),
				},
			}),
			feralasquest(81859, {	-- Feralas Mission V: Cenarion Intelligence [100 Rep]
				["providers"] = {
					{ "i", 220039 },	-- Nightmare Incursions: Feralas Mission V
					{ "i", 220093 },	-- Deputization Authorization: Feralas Mission V
				},
				["groups"] = {
					objective(1, {	-- 0/1 Intelligence Report: Twin Colossals
						["provider"] = { "i", 219958 },	-- Intelligence Report: Twin Colossals
						["coord"] = { 47.0, 21.6, FERALAS },
						["cr"] = 221402,	-- Dreamwarden Gorlas
					}),
				},
			}),
			feralasquest(81860, {	-- Feralas Mission VI: Harpy Intelligence [100 Rep]
				["providers"] = {
					{ "i", 220040 },	-- Nightmare Incursions: Feralas Mission VI
					{ "i", 220094 },	-- Deputization Authorization: Feralas Mission VI
				},
				["groups"] = {
					objective(1, {	-- 0/1 Intelligence Report: Ruins of Ravenwind
						["provider"] = { "i", 219959 },	-- Intelligence Report: Ruins of Ravenwind
						["coord"] = { 37.6, 12.0, FERALAS },
						["cr"] = 221404,	-- Dreamwarden Anadelle
					}),
				},
			}),
			feralasquest(81861, {	-- Feralas Mission VII: Recover Moonglow Dragonegg [100 Rep]
				["providers"] = {
					{ "i", 220041 },	-- Nightmare Incursions: Feralas Mission VII
					{ "i", 220095 },	-- Deputization Authorization: Feralas Mission VII
				},
				["groups"] = {
					objective(1, {	-- 0/1 Moonglow Dragonegg
						["providers"] = {
							{ "i", 219520 },	-- Moonglow Dragonegg
							{ "o", 441310 },	-- Moonglow Dragonegg
						},
						["coord"] = { 50.7, 17.2, FERALAS },
					}),
				},
			}),
			feralasquest(81863, {	-- Feralas Mission VIII: Recover Keeper's Notes [100 Rep]
				["providers"] = {
					{ "i", 220042 },	-- Nightmare Incursions: Feralas Mission VIII
					{ "i", 220096 },	-- Deputization Authorization: Feralas Mission VIII
				},
				["groups"] = {
					objective(1, {	-- 0/1 Mad Keeper's Notes
						["providers"] = {
							{ "i", 219519 },	-- Mad Keeper's Notes
							{ "o", 441312 },	-- Mad Keeper's Notes
						},
						["coord"] = { 45.0, 20.0, FERALAS },
					}),
				},
			}),
			feralasquest(81864, {	-- Feralas Mission IX: Recover Harpy Screed [100 Rep]
				["providers"] = {
					{ "i", 220043 },	-- Nightmare Incursions: Feralas Mission IX
					{ "i", 220097 },	-- Deputization Authorization: Feralas Mission IX
				},
				["groups"] = {
					objective(1, {	-- 0/1 Harpy Screed
						["providers"] = {
							{ "i", 219518 },	-- Harpy Screed
							{ "o", 441314 },	-- Harpy Screed
						},
						["coord"] = { 38.6, 15.7, FERALAS },
					}),
				},
			}),
			feralasquest(81865, {	-- Feralas Mission X: Moonroot [100 Rep]
				["providers"] = {
					{ "i", 220044 },	-- Nightmare Incursions: Feralas Mission X
					{ "i", 220098 },	-- Deputization Authorization: Feralas Mission X
				},
				["requireSkill"] = HERBALISM,
				["learnedAt"] = 250,
				["groups"] = {
					objective(1, {	-- 0/10 Moonroot
						["providers"] = {
							{ "i", 219514 },	-- Moonroot
							{ "o", 439810 },	-- Moonroot
						},
						["coords"] = {
							{ 40.5, 11.5, FERALAS },
							{ 44.7, 23.1, FERALAS },
							{ 53.6, 17.5, FERALAS },
							{ 54.9, 6.9, FERALAS },
						},
					}),
				},
			}),
			feralasquest(81866, {	-- Feralas Mission XI: Greater Moonstone [100 Rep]
				["providers"] = {
					{ "i", 220045 },	-- Nightmare Incursions: Feralas Mission XI
					{ "i", 220099 },	-- Deputization Authorization: Feralas Mission XI
				},
				["requireSkill"] = MINING,
				["learnedAt"] = 250,
				["groups"] = {
					objective(1, {	-- 0/10 Greater Moonstone
						["providers"] = {
							{ "i", 219515 },	-- Greater Moonstone
							{ "o", 439815 },	-- Greater Moonstone Formation
						},
						["coords"] = {
							{ 40.8, 9.9, FERALAS },
							{ 37.7, 20.5, FERALAS },
							{ 54.0, 13.5, FERALAS },
						},
					}),
				},
			}),
			feralasquest(81867, {	-- Feralas Mission XII: Greater Moondragon Scales [100 Rep]
				["providers"] = {
					{ "i", 220046 },	-- Nightmare Incursions: Feralas Mission XII
					{ "i", 220100 },	-- Deputization Authorization: Feralas Mission XII
				},
				["requireSkill"] = SKINNING,
				["learnedAt"] = 250,
				["groups"] = {
					objective(1, {	-- 0/10 Moondragon Scale
						["provider"] = { "i", 219517 },	-- Moondragon Scale
						["coords"] = {
							{ 46.6, 12.8, FERALAS },
							{ 51.0, 24.0, FERALAS },
							{ 53.4, 14.6, FERALAS },
						},
						["crs"] = {
							221369,	-- Frenzied Whelp
							221367,	-- Wyrmkin Berserker
						},
					}),
				},
			}),
			feralasquest(81868, {	-- Feralas Mission XIII: Defeat Tyrannikus [200 Rep]
				["providers"] = {
					{ "i", 220047 },	-- Nightmare Incursions: Feralas Mission XIII
					{ "i", 220101 },	-- Deputization Authorization: Feralas Mission XIII
				},
				["groups"] = {
					objective(1, {	-- 0/1 Tyrannikus slain
						["provider"] = { "n", 221393 },	-- Tyrannikus
						["coord"] = { 53.6, 17.0, FERALAS },
					}),
				},
			}),
			feralasquest(81870, {	-- Feralas Mission XIV: Defeat Alondrius [150 Rep]
				["providers"] = {
					{ "i", 220048 },	-- Nightmare Incursions: Feralas Mission XIV
					{ "i", 220102 },	-- Deputization Authorization: Feralas Mission XIV
				},
				["groups"] = {
					objective(1, {	-- 0/1 Alondrius slain
						["provider"] = { "n", 221389 },	-- Alondrius <Keeper of the Nightmare>
						["coord"] = { 47.6, 15.6, FERALAS },
					}),
				},
			}),
			feralasquest(81871, {	-- Feralas Mission XV: Defeat Slirena [150 Rep]
				["providers"] = {
					{ "i", 220049 },	-- Nightmare Incursions: Feralas Mission XV
					{ "i", 220103 },	-- Deputization Authorization: Feralas Mission XV
				},
				["groups"] = {
					objective(1, {	-- 0/1 Slirena slain
						["provider"] = { "n", 221391 },	-- Slirena <Harpy Queen>
						["coord"] = { 39.6, 13.8, FERALAS },
					}),
				},
			}),
			feralasquest(81872, {	-- Feralas Mission XVI: Rescue Mellias Earthtender [100 Rep]
				["providers"] = {
					{ "i", 220050 },	-- Nightmare Incursions: Feralas Mission XVI
					{ "i", 220104 },	-- Deputization Authorization: Feralas Mission XVI
				},
				["groups"] = {
					objective(1, {	-- Rescue Mellias Earthtender
						["provider"] = { "n", 221395 },	-- Mellias Earthtender <Druid of the Claw>
						["coord"] = { 49.6, 15.5, FERALAS },
					}),
				},
			}),
			feralasquest(81873, {	-- Feralas Mission XVII: Rescue Nerene Brooksinger [100 Rep]
				["providers"] = {
					{ "i", 220051 },	-- Nightmare Incursions: Feralas Mission XVII
					{ "i", 220105 },	-- Deputization Authorization: Feralas Mission XVII
				},
				["groups"] = {
					objective(1, {	-- Rescue Nerene Brooksinger
						["provider"] = { "n", 221398 },	-- Nerene Brooksinger <Druid of the Claw>
						["coord"] = { 45, 16, FERALAS },
					}),
				},
			}),
			feralasquest(81874, {	-- Feralas Mission XVIII: Rescue Jamniss Treemender [100 Rep]
				["providers"] = {
					{ "i", 220052 },	-- Nightmare Incursions: Feralas Mission XVIII
					{ "i", 220106 },	-- Deputization Authorization: Feralas Mission XVIII
				},
				["groups"] = {
					objective(1, {	-- Rescue Jamniss Treemender
						["provider"] = { "n", 221399 },	-- Jamniss Treemender <Druid of the Claw>
						["coord"] = { 40.6, 8.2, FERALAS },
					}),
				},
			}),
			q(82068, {	-- Fight the Nightmare Incursions
				["qgs"] = {
					221480,	-- Field Captain Arunnel
					221479,	-- Field Captain Korlian
				},
				["coords"] = {
					{ 48.6, 12.4, FERALAS },
					{ 61.4, 34.6, THE_HINTERLANDS },
				},
				["maxReputation"] = { 2641, EXALTED },	-- Emerald Wardens
				["isDaily"] = true,
				["lvl"] = 47,
			}),
			hinterlandsquest(81786, {	-- Hinterlands Mission I: Defeat Moonkin [150 Rep]
				["providers"] = {
					{ "i", 220017 },	-- Nightmare Incursions: Hinterlands Mission I
					{ "i", 220071 },	-- Deputization Authorization: Hinterlands Mission I
				},
				["groups"] = {
					objective(1, {	-- 0/20 Fallen Moonkin slain
						["provider"] = { "n", 221330 },	-- Fallen Moonkin
						["coord"] = { 58.0, 42.5, THE_HINTERLANDS },
					}),
				},
			}),
			hinterlandsquest(81787, {	-- Hinterlands Mission II: Defeat Giant Turtles [150 Rep]
				["providers"] = {
					{ "i", 220018 },	-- Nightmare Incursions: Hinterlands Mission II
					{ "i", 220072 },	-- Deputization Authorization: Hinterlands Mission II
				},
				["groups"] = {
					objective(1, {	-- 0/20 Dreamwater Vicejaw slain
						["provider"] = { "n", 221328 },	-- Dreamwater Vicejaw
						["coord"] = { 65.0, 44.8, THE_HINTERLANDS },
					}),
				},
			}),
			hinterlandsquest(81788, {	-- Hinterlands Mission III: Defeat Dragonkin [150 Rep]
				["providers"] = {
					{ "i", 220019 },	-- Nightmare Incursions: Hinterlands Mission III
					{ "i", 220073 },	-- Deputization Authorization: Hinterlands Mission III
				},
				["groups"] = {
					objective(1, {	-- 0/10 Wrath Whelp slain
						["provider"] = { "n", 221326 },	-- Wrath Whelp
						["coord"] = { 47.6, 41.0, THE_HINTERLANDS },
					}),
					objective(2, {	-- 0/3 Wyrmkin Starhunter slain
						["provider"] = { "n", 221325 },	-- Wyrmkin Starhunter
						["coord"] = { 47.0, 41.6, THE_HINTERLANDS },
					}),
				},
			}),
			hinterlandsquest(81789, {	-- Hinterlands Mission IV: Dragon Intelligence [100 Rep]
				["providers"] = {
					{ "i", 220020 },	-- Nightmare Incursions: Hinterlands Mission IV
					{ "i", 220074 },	-- Deputization Authorization: Hinterlands Mission IV
				},
				["groups"] = {
					objective(1, {	-- 0/1 Intelligence Report: Agol'watha
						["provider"] = { "i", 219928 },	-- Intelligence Report: Agol'watha
						["coord"] = { 46.8, 41.2, THE_HINTERLANDS },
						["cr"] = 221353,	-- Dreamwarden Laninar
					}),
				},
			}),
			hinterlandsquest(81817, {	-- Hinterlands Mission V: Turtle Intelligence [100 Rep]
				["providers"] = {
					{ "i", 220021 },	-- Nightmare Incursions: Hinterlands Mission V
					{ "i", 220075 },	-- Deputization Authorization: Hinterlands Mission V
				},
				["groups"] = {
					objective(1, {	-- 0/1 Intelligence Report: Shaol'watha
						["provider"] = { "i", 219937 },	-- Intelligence Report: Shaol'watha
						["coord"] = { 73.2, 54.0, THE_HINTERLANDS },
						["cr"] = 221352,	-- Dreamwarden Sanathel
					}),
				},
			}),
			hinterlandsquest(81820, {	-- Hinterlands Mission VI: Moonkin Intelligence [100 Rep]
				["providers"] = {
					{ "i", 220022 },	-- Nightmare Incursions: Hinterlands Mission VI
					{ "i", 220076 },	-- Deputization Authorization: Hinterlands Mission VI
				},
				["groups"] = {
					objective(1, {	-- 0/1 Intelligence Report: Skulk Rock
						["provider"] = { "i", 219938 },	-- Intelligence Report: Skulk Rock
						["coord"] = { 56.6, 43.2, THE_HINTERLANDS },
						["cr"] = 221351,	-- Dreamwarden Valori
					}),
				},
			}),
			hinterlandsquest(81826, {	-- Hinterlands Mission VII: Recover Star-Touched Dragonegg [100 Rep]
				["providers"] = {
					{ "i", 220023 },	-- Nightmare Incursions: Hinterlands Mission VII
					{ "i", 220077 },	-- Deputization Authorization: Hinterlands Mission VII
				},
				["groups"] = {
					objective(1, {	-- 0/1 Star-Touched Dragonegg
						["providers"] = {
							{ "i", 219488 },	-- Star-Touched Dragonegg
							{ "o", 441133 },	-- Star-Touched Dragonegg
						},
						["coord"] = { 45.5, 38.7, THE_HINTERLANDS },
					}),
				},
			}),
			hinterlandsquest(81830, {	-- Hinterlands Mission VIII: Recover Elunar Relic [100 Rep]
				["providers"] = {
					{ "i", 220024 },	-- Nightmare Incursions: Hinterlands Mission VIII
					{ "i", 220078 },	-- Deputization Authorization: Hinterlands Mission VIII
				},
				["groups"] = {
					objective(1, {	-- 0/1 Elunar Relic
						["providers"] = {
							{ "i", 219490 },	-- Elunar Relic
							{ "o", 441140 },	-- Humming Box
						},
						["coord"] = { 57.8, 43.3, THE_HINTERLANDS },
					}),
				},
			}),
			hinterlandsquest(81832, {	-- Hinterlands Mission IX: Recover Dreampearl [100 Rep]
				["providers"] = {
					{ "i", 220025 },	-- Nightmare Incursions: Hinterlands Mission IX
					{ "i", 220079 },	-- Deputization Authorization: Hinterlands Mission IX
				},
				["groups"] = {
					objective(1, {	-- 0/1 Dreampearl
						["providers"] = {
							{ "i", 219491 },	-- Dreampearl
							{ "o", 441141 },	-- Dreampearl
						},
						["coord"] = { 72.7, 54.2, THE_HINTERLANDS },
					}),
				},
			}),
			hinterlandsquest(81833, {	-- Hinterlands Mission X: Star Lotus [100 Rep]
				["providers"] = {
					{ "i", 220026 },	-- Nightmare Incursions: Hinterlands Mission X
					{ "i", 220080 },	-- Deputization Authorization: Hinterlands Mission X
				},
				["requireSkill"] = HERBALISM,
				["learnedAt"] = 250,
				["groups"] = {
					objective(1, {	-- 0/10 Star Lotus
						["providers"] = {
							{ "i", 219454 },	-- Star Lotus
							{ "o", 439762 },	-- Star Lotus
						},
						["coords"] = {
							{ 46.1, 38.5, THE_HINTERLANDS },
							{ 61.8, 25.3, THE_HINTERLANDS },
							{ 70.5, 45.5, THE_HINTERLANDS },
						},
					}),
				},
			}),
			hinterlandsquest(81834, {	-- Hinterlands Mission XI: Starsilver Ore [100 Rep]
				["providers"] = {
					{ "i", 220027 },	-- Nightmare Incursions: Hinterlands Mission XI
					{ "i", 220081 },	-- Deputization Authorization: Hinterlands Mission XI
				},
				["requireSkill"] = MINING,
				["learnedAt"] = 250,
				["groups"] = {
					objective(1, {	-- 0/10 Starsilver Ore
						["providers"] = {
							{ "i", 219486 },	-- Starsilver Ore
							{ "o", 439778 },	-- Starsilver Vein
						},
						["coords"] = {
							{ 45.4, 39.5, THE_HINTERLANDS },
							{ 56.9, 43.5, THE_HINTERLANDS },
							{ 72.2, 52.3, THE_HINTERLANDS },
						},
					}),
				},
			}),
			hinterlandsquest(81835, {	-- Hinterlands Mission XII: Starshells [100 Rep]
				["providers"] = {
					{ "i", 220028 },	-- Nightmare Incursions: Hinterlands Mission XII
					{ "i", 220082 },	-- Deputization Authorization: Hinterlands Mission XII
				},
				["requireSkill"] = SKINNING,
				["learnedAt"] = 250,
				["groups"] = {
					objective(1, {	-- 0/10 Starshell
						["provider"] = { "i", 219487 },	-- Starshell
						["coord"] = { 63.4, 42.2, THE_HINTERLANDS },
						["cr"] = 221328,	-- Dreamwater Vicejaw
					}),
				},
			}),
			hinterlandsquest(81837, {	-- Hinterlands Mission XIII: Defeat Florius [200 Rep]
				["providers"] = {
					{ "i", 220029 },	-- Nightmare Incursions: Hinterlands Mission XIII
					{ "i", 220083 },	-- Deputization Authorization: Hinterlands Mission XIII
				},
				["groups"] = {
					objective(1, {	-- 0/1 Florius slain
						["provider"] = { "n", 221331 },	-- Florius
						["coord"] = { 46.6, 40.6, THE_HINTERLANDS },
					}),
				},
			}),
			hinterlandsquest(81838, {	-- Hinterlands Mission XIV: Defeat Doomkin [150 Rep]
				["providers"] = {
					{ "i", 220030 },	-- Nightmare Incursions: Hinterlands Mission XIV
					{ "i", 220084 },	-- Deputization Authorization: Hinterlands Mission XIV
				},
				["groups"] = {
					objective(1, {	-- 0/1 Doomkin slain
						["provider"] = { "n", 221333 },	-- Doomkin
						["coord"] = { 58.0, 42.2, THE_HINTERLANDS },
					}),
				},
			}),
			hinterlandsquest(81839, {	-- Hinterlands Mission XV: Defeat Ghamoo-Raja [150 Rep]
				["providers"] = {
					{ "i", 220031 },	-- Nightmare Incursions: Hinterlands Mission XV
					{ "i", 220085 },	-- Deputization Authorization: Hinterlands Mission XV
				},
				["groups"] = {
					objective(1, {	-- 0/1 Ghamoo-Raja slain
						["provider"] = { "n", 221334 },	-- Ghamoo-Raja
						["coord"] = { 72.0, 53.2, THE_HINTERLANDS },
					}),
				},
			}),
			hinterlandsquest(81850, {	-- Hinterlands Mission XVI: Rescue Elianar Shadowdrinker [100 Rep]
				["providers"] = {
					{ "i", 220032 },	-- Nightmare Incursions: Hinterlands Mission XVI
					{ "i", 220086 },	-- Deputization Authorization: Hinterlands Mission XVI
				},
				["groups"] = {
					objective(1, {	-- Rescue Elianar Shadowdrinker
						["provider"] = { "n", 221335 },	-- Elianar Shadowdrinker <Druid of the Claw>
						["coord"] = { 53.59, 39.0, THE_HINTERLANDS },
					}),
				},
			}),
			hinterlandsquest(81851, {	-- Hinterlands Mission XVII: Rescue Serlina Starbright [100 Rep]
				["providers"] = {
					{ "i", 220033 },	-- Nightmare Incursions: Hinterlands Mission XVII
					{ "i", 220087 },	-- Deputization Authorization: Hinterlands Mission XVII
				},
				["groups"] = {
					objective(1, {	-- Rescue Serlina Starbright
						["provider"] = { "n", 221336 },	-- Serlina Starbright <Druid of the Claw>
						["coord"] = { 70.94, 47.36, THE_HINTERLANDS },
					}),
				},
			}),
			hinterlandsquest(81852, {	-- Hinterlands Mission XVIII: Rescue Veanna Cloudsleeper [100 Rep]
				["providers"] = {
					{ "i", 220034 },	-- Nightmare Incursions: Hinterlands Mission XVIII
					{ "i", 220088 },	-- Deputization Authorization: Hinterlands Mission XVIII
				},
				["groups"] = {
					objective(1, {	-- Rescue Veanna Cloudsleeper
						["provider"] = { "n", 221337 },	-- Veanna Cloudsleeper <Druid of the Claw>
						["coord"] = { 57.31, 42.84, THE_HINTERLANDS },
					}),
				},
			}),
			applyclassicphase(SOD_PHASE_FOUR, q(84013, {	-- More Starshells
				["qg"] = 221479,	-- Field Captain Korlian
				["coord"] = { 61.4, 34.6, THE_HINTERLANDS },
				["maxReputation"] = { 2641, EXALTED };	-- Emerald Wardens
				["cost"] = {{ "i", 219487, 10 }},	-- Starshell
				["requireSkill"] = SKINNING,
				["learnedAt"] = 250,
				["lvl"] = 53,
			})),
			applyclassicphase(SOD_PHASE_FOUR, q(84012, {	-- More Starsilver Ore
				["qg"] = 221479,	-- Field Captain Korlian
				["coord"] = { 61.4, 34.6, THE_HINTERLANDS },
				["maxReputation"] = { 2641, EXALTED };	-- Emerald Wardens
				["cost"] = {{ "i", 219486, 10 }},	-- Starsilver Ore
				["requireSkill"] = MINING,
				["learnedAt"] = 250,
				["lvl"] = 53,
			})),
			applyclassicphase(SOD_PHASE_FOUR, q(84011, {	-- More Star Lotus
				["qg"] = 221479,	-- Field Captain Korlian
				["coord"] = { 61.4, 34.6, THE_HINTERLANDS },
				["maxReputation"] = { 2641, EXALTED };	-- Emerald Wardens
				["cost"] = {{ "i", 219454, 10 }},	-- Star Lotus
				["requireSkill"] = HERBALISM,
				["learnedAt"] = 250,
				["lvl"] = 53,
			})),
			q(81727, {	-- Recover Incursion Field Report: Ashenvale
				["qg"] = 221477,	-- Field Captain Hannalah
				["coord"] = { 89.6, 40.6, ASHENVALE },
				["maxReputation"] = { 2641, EXALTED },	-- Emerald Wardens
				["repeatable"] = true,
				["lvl"] = 37,
				["groups"] = {
					objective(1, {	-- 0/1 Gemeron's Field Report
						["provider"] = { "i", 219770 },	-- Gemeron's Field Report
						["coord"] = { 93.8, 35.2, ASHENVALE },
						["cr"] = 221482,	-- Scout Gemeron
					}),
					objective(2, {	-- 0/12 Dreampyre Imp slain
						["provider"] = { "n", 221283 },	-- Dreampyre Imp
						["coord"] = { 93.4, 39.6, ASHENVALE },
					}),
					objective(3, {	-- 0/4 Emberspark Dreamsworn slain
						["provider"] = { "n", 221282 },	-- Emberspark Dreamsworn
						["coord"] = { 94.0, 39.8, ASHENVALE },
					}),
					objective(4, {	-- 0/4 Dreamhunter Hound slain
						["provider"] = { "n", 221292 },	-- Dreamhunter Hound
						["coord"] = { 93.6, 39.6, ASHENVALE },
					}),
					i(219773),	-- Mission Brief: Ashenvale
				},
			}),
			q(81716, {	-- Recover Incursion Field Report: Duskwood
				["qg"] = 221471,	-- Field Captain Palandar
				["coord"] = { 45.6, 51.2, DUSKWOOD },
				["maxReputation"] = { 2641, EXALTED },	-- Emerald Wardens
				["repeatable"] = true,
				["lvl"] = 23,
				["groups"] = {
					objective(1, {	-- 0/1 Charla's Field Report
						["provider"] = { "i", 219759 },	-- Charla's Field Report
						["coord"] = { 47.0, 36.0, DUSKWOOD },
						["cr"] = 221472,	-- Scout Charla
					}),
					objective(2, {	-- 0/12 Firestarter Imp slain
						["provider"] = { "n", 221226 },	-- Firestarter Imp
						["coord"] = { 47.6, 40.0, DUSKWOOD },
					}),
					objective(3, {	-- 0/4 Duskblaze Shadowstalker slain
						["provider"] = { "n", 221223 },	-- Duskblaze Shadowstalker
						["coord"] = { 46.6, 42.2, DUSKWOOD },
					}),
					objective(4, {	-- 0/4 Nightmare Hound slain
						["provider"] = { "n", 221227 },	-- Nightmare Hound
						["coord"] = { 44.8, 40.8, DUSKWOOD },
					}),
					i(219526),	-- Mission Brief: Duskwood
				},
			}),
			q(81729, {	-- Recover Incursion Field Report: Feralas
				["qg"] = 221480,	-- Field Captain Arunnel
				["coord"] = { 48.6, 12.4, FERALAS },
				["maxReputation"] = { 2641, EXALTED },	-- Emerald Wardens
				["repeatable"] = true,
				["lvl"] = 47,
				["groups"] = {
					objective(1, {	-- 0/1 Thandros' Field Report
						["provider"] = { "i", 219771 },	-- Thandros' Field Report
						["coord"] = { 51.0, 10.6, FERALAS },
						["cr"] = 221484,	-- Scout Thandros
					}),
					objective(2, {	-- 0/12 Dreamshadow Imp slain
						["provider"] = { "n", 221407 },	-- Dreamshadow Imp
						["coord"] = { 50.2, 12.6, FERALAS },
					}),
					objective(3, {	-- 0/4 Moonwalker Betrayer slain
						["provider"] = { "n", 221406 },	-- Moonwalker Betrayer
						["coord"] = { 48.8, 11.4, FERALAS },
					}),
					objective(4, {	-- 0/4 Night Hunter slain
						["provider"] = { "n", 221408 },	-- Night Hunter
						["coord"] = { 51.6, 12.6, FERALAS },
					}),
					i(219775),	-- Mission Brief: Feralas
				},
			}),
			q(81728, {	-- Recover Incursion Field Report: Hinterlands
				["qg"] = 221479,	-- Field Captain Korlian
				["coord"] = { 61.4, 34.6, THE_HINTERLANDS },
				["maxReputation"] = { 2641, EXALTED },	-- Emerald Wardens
				["repeatable"] = true,
				["lvl"] = 47,
				["groups"] = {
					objective(1, {	-- 0/1 Fallia's Field Report
						["provider"] = { "i", 219772 },	-- Fallia's Field Report
						["coord"] = { 61.8, 24.0, THE_HINTERLANDS },
						["cr"] = 221483,	-- Scout Fallia
					}),
					objective(2, {	-- 0/12 Stardust Imp slain
						["provider"] = { "n", 221357 },	-- Stardust Imp
						["coord"] = { 62.6, 30.8, THE_HINTERLANDS },
					}),
					objective(3, {	-- 0/4 Doomspark Starsworn slain
						["provider"] = { "n", 221356 },	-- Doomspark Starsworn
						["coord"] = { 63.6, 27.6, THE_HINTERLANDS },
					}),
					objective(4, {	-- 0/4 Starkiller Hound slain
						["provider"] = { "n", 221360 },	-- Starkiller Hound
						["coord"] = { 62.8, 25.8, THE_HINTERLANDS },
					}),
					i(219774),	-- Mission Brief: Hinterlands
				},
			}),
		}),
		n(REWARDS, {
			i(219773, {	-- Mission Brief: Ashenvale
				i(220053),	-- Deputization Authorization: Ashenvale Mission I
				i(220054),	-- Deputization Authorization: Ashenvale Mission II
				i(220055),	-- Deputization Authorization: Ashenvale Mission III
				i(220056),	-- Deputization Authorization: Ashenvale Mission IV
				i(220057),	-- Deputization Authorization: Ashenvale Mission V
				i(220058),	-- Deputization Authorization: Ashenvale Mission VI
				i(220059),	-- Deputization Authorization: Ashenvale Mission VII
				i(220060),	-- Deputization Authorization: Ashenvale Mission VIII
				i(220061),	-- Deputization Authorization: Ashenvale Mission IX
				i(220062),	-- Deputization Authorization: Ashenvale Mission X
				i(220063),	-- Deputization Authorization: Ashenvale Mission XI
				i(220064),	-- Deputization Authorization: Ashenvale Mission XII
				i(220065),	-- Deputization Authorization: Ashenvale Mission XIII
				i(220066),	-- Deputization Authorization: Ashenvale Mission XIV
				i(220067),	-- Deputization Authorization: Ashenvale Mission XV
				i(220068),	-- Deputization Authorization: Ashenvale Mission XVI
				i(220069),	-- Deputization Authorization: Ashenvale Mission XVII
				i(220070),	-- Deputization Authorization: Ashenvale Mission XVIII
				i(219999),	-- Nightmare Incursions: Ashenvale Mission I
				i(220000),	-- Nightmare Incursions: Ashenvale Mission II
				i(220001),	-- Nightmare Incursions: Ashenvale Mission III
				i(220002),	-- Nightmare Incursions: Ashenvale Mission IV
				i(220003),	-- Nightmare Incursions: Ashenvale Mission V
				i(220004),	-- Nightmare Incursions: Ashenvale Mission VI
				i(220005),	-- Nightmare Incursions: Ashenvale Mission VII
				i(220006),	-- Nightmare Incursions: Ashenvale Mission VIII
				i(220007),	-- Nightmare Incursions: Ashenvale Mission IX
				i(220008),	-- Nightmare Incursions: Ashenvale Mission X
				i(220009),	-- Nightmare Incursions: Ashenvale Mission XI
				i(220010),	-- Nightmare Incursions: Ashenvale Mission XII
				i(220011),	-- Nightmare Incursions: Ashenvale Mission XIII
				i(220012),	-- Nightmare Incursions: Ashenvale Mission XIV
				i(220013),	-- Nightmare Incursions: Ashenvale Mission XV
				i(220014),	-- Nightmare Incursions: Ashenvale Mission XVI
				i(220015),	-- Nightmare Incursions: Ashenvale Mission XVII
				i(220016),	-- Nightmare Incursions: Ashenvale Mission XVIII
			}),
			i(219526, {	-- Mission Brief: Duskwood
				i(219963),	-- Deputization Authorization: Duskwood Mission I
				i(219965),	-- Deputization Authorization: Duskwood Mission II
				i(219983),	-- Deputization Authorization: Duskwood Mission III
				i(219984),	-- Deputization Authorization: Duskwood Mission IV
				i(219985),	-- Deputization Authorization: Duskwood Mission V
				i(219986),	-- Deputization Authorization: Duskwood Mission VI
				i(219987),	-- Deputization Authorization: Duskwood Mission VII
				i(219988),	-- Deputization Authorization: Duskwood Mission VIII
				i(219989),	-- Deputization Authorization: Duskwood Mission IX
				i(219990),	-- Deputization Authorization: Duskwood Mission X
				i(219991),	-- Deputization Authorization: Duskwood Mission XI
				i(219992),	-- Deputization Authorization: Duskwood Mission XII
				i(219993),	-- Deputization Authorization: Duskwood Mission XIII
				i(219994),	-- Deputization Authorization: Duskwood Mission XIV
				i(219995),	-- Deputization Authorization: Duskwood Mission XV
				i(219996),	-- Deputization Authorization: Duskwood Mission XVI
				i(219997),	-- Deputization Authorization: Duskwood Mission XVII
				i(219998),	-- Deputization Authorization: Duskwood Mission XVIII
				i(219962),	-- Nightmare Incursions: Duskwood Mission I
				i(219966),	-- Nightmare Incursions: Duskwood Mission II
				i(219967),	-- Nightmare Incursions: Duskwood Mission III
				i(219968),	-- Nightmare Incursions: Duskwood Mission IV
				i(219969),	-- Nightmare Incursions: Duskwood Mission V
				i(219970),	-- Nightmare Incursions: Duskwood Mission VI
				i(219971),	-- Nightmare Incursions: Duskwood Mission VII
				i(219972),	-- Nightmare Incursions: Duskwood Mission VIII
				i(219973),	-- Nightmare Incursions: Duskwood Mission IX
				i(219974),	-- Nightmare Incursions: Duskwood Mission X
				i(219975),	-- Nightmare Incursions: Duskwood Mission XI
				i(219976),	-- Nightmare Incursions: Duskwood Mission XII
				i(219977),	-- Nightmare Incursions: Duskwood Mission XIII
				i(219978),	-- Nightmare Incursions: Duskwood Mission XIV
				i(219979),	-- Nightmare Incursions: Duskwood Mission XV
				i(219980),	-- Nightmare Incursions: Duskwood Mission XVI
				i(219981),	-- Nightmare Incursions: Duskwood Mission XVII
				i(219982),	-- Nightmare Incursions: Duskwood Mission XVIII
			}),
			i(219775, {	-- Mission Brief: Feralas
				i(220089),	-- Deputization Authorization: Feralas Mission I
				i(220090),	-- Deputization Authorization: Feralas Mission II
				i(220091),	-- Deputization Authorization: Feralas Mission III
				i(220092),	-- Deputization Authorization: Feralas Mission IV
				i(220093),	-- Deputization Authorization: Feralas Mission V
				i(220094),	-- Deputization Authorization: Feralas Mission VI
				i(220095),	-- Deputization Authorization: Feralas Mission VII
				i(220096),	-- Deputization Authorization: Feralas Mission VIII
				i(220097),	-- Deputization Authorization: Feralas Mission IX
				i(220098),	-- Deputization Authorization: Feralas Mission X
				i(220099),	-- Deputization Authorization: Feralas Mission XI
				i(220100),	-- Deputization Authorization: Feralas Mission XII
				i(220101),	-- Deputization Authorization: Feralas Mission XIII
				i(220102),	-- Deputization Authorization: Feralas Mission XIV
				i(220103),	-- Deputization Authorization: Feralas Mission XV
				i(220104),	-- Deputization Authorization: Feralas Mission XVI
				i(220105),	-- Deputization Authorization: Feralas Mission XVII
				i(220106),	-- Deputization Authorization: Feralas Mission XVIII
				i(220035),	-- Nightmare Incursions: Feralas Mission I
				i(220036),	-- Nightmare Incursions: Feralas Mission II
				i(220037),	-- Nightmare Incursions: Feralas Mission III
				i(220038),	-- Nightmare Incursions: Feralas Mission IV
				i(220039),	-- Nightmare Incursions: Feralas Mission V
				i(220040),	-- Nightmare Incursions: Feralas Mission VI
				i(220041),	-- Nightmare Incursions: Feralas Mission VII
				i(220042),	-- Nightmare Incursions: Feralas Mission VIII
				i(220043),	-- Nightmare Incursions: Feralas Mission IX
				i(220044),	-- Nightmare Incursions: Feralas Mission X
				i(220045),	-- Nightmare Incursions: Feralas Mission XI
				i(220046),	-- Nightmare Incursions: Feralas Mission XII
				i(220047),	-- Nightmare Incursions: Feralas Mission XIII
				i(220048),	-- Nightmare Incursions: Feralas Mission XIV
				i(220049),	-- Nightmare Incursions: Feralas Mission XV
				i(220050),	-- Nightmare Incursions: Feralas Mission XVI
				i(220051),	-- Nightmare Incursions: Feralas Mission XVII
				i(220052),	-- Nightmare Incursions: Feralas Mission XVIII
			}),
			i(219774, {	-- Mission Brief: Hinterlands
				i(220071),	-- Deputization Authorization: Hinterlands Mission I
				i(220072),	-- Deputization Authorization: Hinterlands Mission II
				i(220073),	-- Deputization Authorization: Hinterlands Mission III
				i(220074),	-- Deputization Authorization: Hinterlands Mission IV
				i(220075),	-- Deputization Authorization: Hinterlands Mission V
				i(220076),	-- Deputization Authorization: Hinterlands Mission VI
				i(220077),	-- Deputization Authorization: Hinterlands Mission VII
				i(220078),	-- Deputization Authorization: Hinterlands Mission VIII
				i(220079),	-- Deputization Authorization: Hinterlands Mission IX
				i(220080),	-- Deputization Authorization: Hinterlands Mission X
				i(220081),	-- Deputization Authorization: Hinterlands Mission XI
				i(220082),	-- Deputization Authorization: Hinterlands Mission XII
				i(220083),	-- Deputization Authorization: Hinterlands Mission XIII
				i(220084),	-- Deputization Authorization: Hinterlands Mission XIV
				i(220085),	-- Deputization Authorization: Hinterlands Mission XV
				i(220086),	-- Deputization Authorization: Hinterlands Mission XVI
				i(220087),	-- Deputization Authorization: Hinterlands Mission XVII
				i(220088),	-- Deputization Authorization: Hinterlands Mission XVIII
				i(220017),	-- Nightmare Incursions: Hinterlands Mission I
				i(220018),	-- Nightmare Incursions: Hinterlands Mission II
				i(220019),	-- Nightmare Incursions: Hinterlands Mission III
				i(220020),	-- Nightmare Incursions: Hinterlands Mission IV
				i(220021),	-- Nightmare Incursions: Hinterlands Mission V
				i(220022),	-- Nightmare Incursions: Hinterlands Mission VI
				i(220023),	-- Nightmare Incursions: Hinterlands Mission VII
				i(220024),	-- Nightmare Incursions: Hinterlands Mission VIII
				i(220025),	-- Nightmare Incursions: Hinterlands Mission IX
				i(220026),	-- Nightmare Incursions: Hinterlands Mission X
				i(220027),	-- Nightmare Incursions: Hinterlands Mission XI
				i(220028),	-- Nightmare Incursions: Hinterlands Mission XII
				i(220029),	-- Nightmare Incursions: Hinterlands Mission XIII
				i(220030),	-- Nightmare Incursions: Hinterlands Mission XIV
				i(220031),	-- Nightmare Incursions: Hinterlands Mission XV
				i(220032),	-- Nightmare Incursions: Hinterlands Mission XVI
				i(220033),	-- Nightmare Incursions: Hinterlands Mission XVII
				i(220034),	-- Nightmare Incursions: Hinterlands Mission XVIII
			}),
		}),
		n(COMMON_VENDOR_ITEMS, {
			["crs"] = {
				222685,	-- Quartermaster Kyleen
				222684,	-- Quartermaster Falinar
				222687,	-- Quartermaster Valdane
				222686,	-- Quartermaster Alandra
			},
			["coords"] = {
				{ 89.6, 40.6, ASHENVALE },	-- Quartermaster Kyleen
				{ 45.6, 51.2, DUSKWOOD },	-- Quartermaster Falinar
				{ 48.6, 12.6, FERALAS },	-- Quartermaster Valdane
				{ 61.4, 34.6, THE_HINTERLANDS },	-- Quartermaster Alandra
			},
			["groups"] = bubbleDownClassicRep(2641, {	-- Emerald Wardens
				{	-- Neutral
					i(223914, {	-- Greater Healing Potion
						["cost"] = 562,	-- 5s 62c
					}),
					i(223913, {	-- Major Healing Potion
						["cost"] = 2812,	-- 28s 12c
					}),
					i(223912, {	-- Purification Potion
						["cost"] = 2250,	-- 22s 50c
					}),
				},
				{	-- Friendly
					i(223648, {	-- Dream Imbued Arrow
						["cost"] = {{ "i", 10513, 200 }},	-- Mithril Gyro-Shot
					}),
					i(221362, {	-- Weapon Cleaning Cloth
						["cost"] = 2250,	-- 22s 50c
					}),
					i(212568, {	-- Wolfshead Trophy
						["cost"] = {{ "i", 8345, 1 }},	-- Wolfshead Helm
					}),
					i(221481, {	-- Nihilist Epiphany
						["classes"] = { PRIEST },
						["cost"] = 18000,	-- 1g 80s
						["groups"] = {
							recipe(431705),	-- Engrave Bracers - Void Zone
						},
					}),
					i(221482, {	-- Rune of Affliction
						["classes"] = { WARLOCK },
						["cost"] = 18000,	-- 1g 80s
						["groups"] = {
							recipe(431747),	-- Engrave Bracers - Unstable Affliction
						},
					}),
					i(221512, {	-- Rune of Alacrity
						["classes"] = { ROGUE },
						["cost"] = 18000,	-- 1g 80s
						["groups"] = {
							recipe(432297),	-- Engrave Bracers - Cut to the Chase
						},
					}),
					i(221517, {	-- Rune of Bloodshed
						["classes"] = { DRUID },
						["cost"] = 18000,	-- 1g 80s
						["groups"] = {
							recipe(431447),	-- Engrave Helm - Gore
						},
					}),
					i(221483, {	-- Rune of Burn
						["classes"] = { SHAMAN },
						["cost"] = 18000,	-- 1g 80s
						["groups"] = {
							recipe(416066),	-- Engrave Helm - Burn
						},
					}),
					i(221515, {	-- Rune of Detonation
						["classes"] = { HUNTER },
						["cost"] = 18000,	-- 1g 80s
						["groups"] = {
							recipe(431611),	-- Engrave Bracers - T.N.T.
						},
					}),
					i(223288, {	-- Rune of the Hammer
						["classes"] = { PALADIN },
						["cost"] = 18000,	-- 1g 80s
						["groups"] = {
							recipe(429261),	-- Engrave Bracers - Improved Hammer of Wrath
						},
					}),
					i(221511, {	-- Rune of the Protector
						["classes"] = { WARRIOR },
						["cost"] = 18000,	-- 1g 80s
						["groups"] = {
							recipe(427080),	-- Engrave Helm - Shield Mastery
						},
					}),
					i(221480, {	-- Spell Notes: Molten Armor
						["classes"] = { MAGE },
						["cost"] = 18000,	-- 1g 80s
						["groups"] = {
							recipe(429308),	-- Engrave Bracers - Molten Armor
						},
					}),

					i(221400, {	-- Emerald Chain Shoulders
						["cost"] = 33750,	-- 3g 37s 50c
					}),
					i(221403, {	-- Emerald Chain Gauntlets
						["cost"] = 33750,	-- 3g 37s 50c
					}),
					i(221405, {	-- Emerald Chain Boots
						["cost"] = 33750,	-- 3g 37s 50c
					}),

					i(221381, {	-- Emerald Dream Pauldrons
						["cost"] = 33750,	-- 3g 37s 50c
					}),
					i(221378, {	-- Emerald Dream Gauntlets
						["cost"] = 33750,	-- 3g 37s 50c
					}),
					i(221379, {	-- Emerald Dream Sabatons
						["cost"] = 33750,	-- 3g 37s 50c
					}),

					i(221416, {	-- Emerald Dreamkeeper Shoulders
						["cost"] = 33750,	-- 3g 37s 50c
					}),
					i(221412, {	-- Emerald Dreamkeeper Gloves
						["cost"] = 33750,	-- 3g 37s 50c
					}),
					i(221415, {	-- Emerald Dreamkeeper Boots
						["cost"] = 33750,	-- 3g 37s 50c
					}),

					i(221431, {	-- Emerald Enchanted Shoulders
						["cost"] = 33750,	-- 3g 37s 50c
					}),
					i(221427, {	-- Emerald Enchanted Gloves
						["cost"] = 33750,	-- 3g 37s 50c
					}),
					i(221426, {	-- Emerald Enchanted Boots
						["cost"] = 33750,	-- 3g 37s 50c
					}),

					i(221386, {	-- Emerald Encrusted Spaulders
						["cost"] = 33750,	-- 3g 37s 50c
					}),
					i(221383, {	-- Emerald Encrusted Handguards
						["cost"] = 33750,	-- 3g 37s 50c
					}),
					i(221387, {	-- Emerald Encrusted Plate Boots
						["cost"] = 33750,	-- 3g 37s 50c
					}),

					i(221399, {	-- Emerald Laden Shoulders
						["cost"] = 33750,	-- 3g 37s 50c
					}),
					i(221396, {	-- Emerald Laden Gauntlets
						["cost"] = 33750,	-- 3g 37s 50c
					}),
					i(221394, {	-- Emerald Laden Boots
						["cost"] = 33750,	-- 3g 37s 50c
					}),

					i(221411, {	-- Emerald Leather Shoulders
						["cost"] = 33750,	-- 3g 37s 50c
					}),
					i(221407, {	-- Emerald Leather Gloves
						["cost"] = 33750,	-- 3g 37s 50c
					}),
					i(221409, {	-- Emerald Leather Sabatons
						["cost"] = 33750,	-- 3g 37s 50c
					}),

					i(221392, {	-- Emerald Scalemail Shoulders
						["cost"] = 33750,	-- 3g 37s 50c
					}),
					i(221389, {	-- Emerald Scalemail Gauntlets
						["cost"] = 33750,	-- 3g 37s 50c
					}),
					i(221393, {	-- Emerald Scalemail Boots
						["cost"] = 33750,	-- 3g 37s 50c
					}),

					i(221424, {	-- Emerald Watcher Shoulders
						["cost"] = 33750,	-- 3g 37s 50c
					}),
					i(221421, {	-- Emerald Watcher Gloves
						["cost"] = 33750,	-- 3g 37s 50c
					}),
					i(221420, {	-- Emerald Watcher Boots
						["cost"] = 33750,	-- 3g 37s 50c
					}),

					i(221432, {	-- Emerald Woven Mantle
						["cost"] = 33750,	-- 3g 37s 50c
					}),
					i(221436, {	-- Emerald Woven Gloves
						["cost"] = 33750,	-- 3g 37s 50c
					}),
					i(221438, {	-- Emerald Woven Boots
						["cost"] = 33750,	-- 3g 37s 50c
					}),

					i(224004, {	-- Emerald Ring
						["cost"] = 4761,	-- 47s 61c
					}),
					i(224005, {	-- Emerald Ring
						["cost"] = 4761,	-- 47s 61c
					}),
					i(221374, {	-- Anguish of the Dream
						["cost"] = 9332,	-- 93s 32c
					}),
					i(221369, {	-- Nightmare Siphon
						["cost"] = 5521,	-- 55s 21c
					}),
				},
				{	-- Honored
					i(213407, {	-- Catnip
						["cost"] = 5625,	-- 56s 25c
					}),

					i(221402, {	-- Emerald Chain Helmet
						["cost"] = 67500,	-- 6g 75s
					}),
					i(221404, {	-- Emerald Chain Breastplate
						["cost"] = 67500,	-- 6g 75s
					}),
					i(221401, {	-- Emerald Chain Leggings
						["cost"] = 67500,	-- 6g 75s
					}),

					i(221376, {	-- Emerald Dream Helm
						["cost"] = 67500,	-- 6g 75s
					}),
					i(221380, {	-- Emerald Dream Breastplate
						["cost"] = 67500,	-- 6g 75s
					}),
					i(221377, {	-- Emerald Dream Legplates
						["cost"] = 67500,	-- 6g 75s
					}),

					i(221413, {	-- Emerald Dreamkeeper Helm
						["cost"] = 67500,	-- 6g 75s
						["classes"] = { DRUID },
					}),
					i(221417, {	-- Emerald Dreamkeeper Chest
						["cost"] = 67500,	-- 6g 75s
					}),
					i(221414, {	-- Emerald Dreamkeeper Pants
						["cost"] = 67500,	-- 6g 75s
					}),

					i(221425, {	-- Emerald Enchanted Circlet
						["cost"] = 67500,	-- 6g 75s
					}),
					i(221430, {	-- Emerald Enchanted Robes
						["cost"] = 67500,	-- 6g 75s
					}),
					i(221429, {	-- Emerald Enchanted Pants
						["cost"] = 67500,	-- 6g 75s
					}),

					i(221384, {	-- Emerald Encrusted Helmet
						["cost"] = 67500,	-- 6g 75s
					}),
					i(221382, {	-- Emerald Encrusted Battleplate
						["cost"] = 67500,	-- 6g 75s
					}),
					i(221385, {	-- Emerald Encrusted Legplates
						["cost"] = 67500,	-- 6g 75s
					}),

					i(221397, {	-- Emerald Laden Helmet
						["cost"] = 67500,	-- 6g 75s
					}),
					i(221395, {	-- Emerald Laden Breastplate
						["cost"] = 67500,	-- 6g 75s
					}),
					i(221398, {	-- Emerald Laden Leggings
						["cost"] = 67500,	-- 6g 75s
					}),

					i(221408, {	-- Emerald Leather Helm
						["cost"] = 67500,	-- 6g 75s
					}),
					i(221406, {	-- Emerald Leather Vest
						["cost"] = 67500,	-- 6g 75s
					}),
					i(221410, {	-- Emerald Leather Pants
						["cost"] = 67500,	-- 6g 75s
					}),

					i(221391, {	-- Emerald Scalemail Helmet
						["cost"] = 67500,	-- 6g 75s
					}),
					i(221390, {	-- Emerald Scalemail Breastplate
						["cost"] = 67500,	-- 6g 75s
					}),
					i(221388, {	-- Emerald Scalemail Leggings
						["cost"] = 67500,	-- 6g 75s
					}),

					i(221422, {	-- Emerald Watcher Helm
						["cost"] = 67500,	-- 6g 75s
					}),
					i(221419, {	-- Emerald Watcher Vest
						["cost"] = 67500,	-- 6g 75s
					}),
					i(221423, {	-- Emerald Watcher Leggings
						["cost"] = 67500,	-- 6g 75s
					}),

					i(221437, {	-- Emerald Woven Circlet
						["cost"] = 67500,	-- 6g 75s
					}),
					i(221434, {	-- Emerald Woven Robes
						["cost"] = 67500,	-- 6g 75s
					}),
					i(221435, {	-- Emerald Woven Pants
						["cost"] = 67500,	-- 6g 75s
					}),

					i(221193, {	-- Emerald Ring
						["cost"] = 63512,	-- 6g 35s 12c
					}),
					i(224006, {	-- Emerald Ring
						["cost"] = 63512,	-- 6g 35s 12c
					}),
				},
				{	-- Revered
					i(221441, {	-- Warden of the Dream
						["cost"] = 88752,	-- 8g 87s 52c
					}),
					emeraldchip(50, i(221439)),	-- Armor of the Emerald Slumber
					emeraldchip(50, i(220649)),	-- Merithra's Inheritence
				},
				{	-- Exalted
					emeraldchip(75, i(220621, {	-- Nightmare Resonance Crystal
						["description"] = "Allows you to see and pick resonating herbs in any of the incursions. Herbalism not required.",
					})),
					emeraldchip(75, i(221440)),	-- Roar of the Dream
					emeraldchip(75, i(221443)),	-- Roar of the Grove
					emeraldchip(75, i(221442)),	-- Roar of the Guardian
				},
			}),
		}),
	})),
	n(createHeader({	-- Rune Engraving
		readable = "Rune Engraving",
		icon = 136244,
		text = {
			en = "Rune Engraving",
			es = "Grabado",
			de = "Runenschnitzen",
			fr = "Gravure",
			it = "Rune Engraving",
			pt = "Gravura",
			ru = "Гравировка",
			ko = "각인술",
			cn = "铭刻",
			tw = "紋刻",
		},
		description = {
			en = "Rune Engraving is a new class system for Season of Discovery. It allows each class to tailor their gameplay experience by unlocking new unique abilities!",
			es = "El grabado es un nuevo sistema anunciado recientemente para Season of Discovery. ¡Permite que cada clase adapte su experiencia de juego desbloqueando nuevas habilidades únicas!",
			de = "Runengravur ist ein neues System, das kürzlich für Season of Discovery angekündigt wurde. Es ermöglicht jeder Klasse, ihr Spielerlebnis individuell anzupassen, indem sie neue einzigartige Fähigkeiten freischaltet!",
			fr = "La gravure de runes est un nouveau système récemment annoncé pour Season of Discovery. Il permet à chaque classe d'adapter son expérience de jeu en débloquant de nouvelles capacités uniques!",
			it = "L'incisione delle rune è un nuovo sistema recentemente annunciato per la Stagione delle Scoperte. Permette a ogni classe di personalizzare la propria esperienza di gioco sbloccando nuove abilità uniche!",
			pt = "A gravação de runas é um novo sistema anunciado recentemente para a Temporada de Descobertas. Ele permite que cada classe personalize sua experiência de jogo, desbloqueando novas habilidades únicas!",
			ru = "Гравировка рун — это новая система, недавно анонсированная в сезоне «Открытие». Это позволяет каждому классу адаптировать свой игровой процесс, открывая новые уникальные способности!",
			ko = "룬 각인은 최근 발견의 시즌에 발표된 새로운 시스템입니다. 이를 통해 각 클래스는 새로운 고유 능력을 잠금 해제하여 게임 플레이 경험을 맞춤화할 수 있습니다!",
			cn = "铭刻是最近在发现季节宣布的一个新系统。它允许每个职业通过解锁新的独特能力来定制他们的游戏体验！",
			tw = "紋刻是最近在探索賽季實現的一個新系統，它允許每個職業通過解鎖新的獨特能力來自訂他們的遊戲體驗！",
		},
	}), {
		classHeader(DRUID, {
			-- Phase 1
			recipe(410061),	-- Engrave Chest - Fury of Stormrage
			recipe(416050),	-- Engrave Chest - Living Seed
			recipe(416042),	-- Engrave Chest - Survival of the Fittest
			recipe(410021),	-- Engrave Chest - Wild Strikes
			recipe(416049),	-- Engrave Gloves - Lacerate
			recipe(410025),	-- Engrave Gloves - Mangle
			recipe(416044),	-- Engrave Gloves - Sunfire
			recipe(410028),	-- Engrave Gloves - Wild Growth
			recipe(410033),	-- Engrave Pants - Lifebloom
			recipe(410023),	-- Engrave Pants - Savage Roar
			recipe(416046),	-- Engrave Pants - Skull Bash
			recipe(424718),	-- Engrave Pants - Starsurge
			-- Phase 2
			applyclassicphase(SOD_PHASE_TWO, recipe(424760)),	-- Engrave Belt - Berserk
			applyclassicphase(SOD_PHASE_TWO, recipe(410029)),	-- Engrave Belt - Eclipse
			applyclassicphase(SOD_PHASE_TWO, recipe(410059)),	-- Engrave Belt - Nourish
			applyclassicphase(SOD_PHASE_TWO, recipe(410060)),	-- Engrave Boots - Dreamstate
			applyclassicphase(SOD_PHASE_TWO, recipe(424765)),	-- Engrave Boots - King of the Jungle
			applyclassicphase(SOD_PHASE_TWO, recipe(410027)),	-- Engrave Boots - Survival Instincts

			-- Phase 3
			applyclassicphase(SOD_PHASE_THREE, recipe(431468)),	-- Engrave Bracers - Efflorescence
			applyclassicphase(SOD_PHASE_THREE, recipe(416051)),	-- Engrave Bracers - Elune's Fires
			applyclassicphase(SOD_PHASE_THREE, recipe(431461)),	-- Engrave Bracers - Improved Frenzied Regeneration
			applyclassicphase(SOD_PHASE_THREE, recipe(431451)),	-- Engrave Helm - Gale Winds
			applyclassicphase(SOD_PHASE_THREE, recipe(431447)),	-- Engrave Helm - Gore
			applyclassicphase(SOD_PHASE_THREE, recipe(431449)),	-- Engrave Helm - Improved Barkskin

			-- Phase 4
			applyclassicphase(SOD_PHASE_FOUR, recipe(439765)),	-- Engrave Cloak - Improved Swipe
			applyclassicphase(SOD_PHASE_FOUR, recipe(439767)),	-- Engrave Cloak - Tree of Life
			applyclassicphase(SOD_PHASE_FOUR, recipe(439770)),	-- Engrave Cloak - Starfall
			applyclassicphase(SOD_PHASE_FOUR, recipe(453703, {	-- Engrave Ring - Feral Combat Specialization
				["timeline"] = { ADDED_1_15_3 },
			})),
		}),
		classHeader(HUNTER, {
			-- Phase 1
			recipe(425759),	-- Engrave Chest - Cobra Strikes
			recipe(410115),	-- Engrave Chest - Heart of the Lion / Cobra Slayer
			recipe(410122),	-- Engrave Chest - Lone Wolf
			recipe(410113),	-- Engrave Chest - Master Marksman
			recipe(410110),	-- Engrave Gloves - Beast Mastery
			recipe(425758),	-- Engrave Gloves - Carve
			recipe(410121),	-- Engrave Gloves - Chimera Shot
			recipe(410123),	-- Engrave Gloves - Explosive Shot
			recipe(425762),	-- Engrave Pants - Flanking Strike
			recipe(410111),	-- Engrave Pants - Kill Command / Kill Shot
			recipe(425760),	-- Engrave Pants - Serpent Spread
			recipe(416091),	-- Engrave Pants - Sniper Training

			-- Phase 2
			applyclassicphase(SOD_PHASE_TWO, recipe(410114)),	-- Engrave Belt - Expose Weakness
			applyclassicphase(SOD_PHASE_TWO, recipe(416086)),	-- Engrave Belt - Melee Specialist
			applyclassicphase(SOD_PHASE_TWO, recipe(410109)),	-- Engrave Belt - Steady Shot
			applyclassicphase(SOD_PHASE_TWO, recipe(410116)),	-- Engrave Boots - Dual Wield Specialization
			applyclassicphase(SOD_PHASE_TWO, recipe(416089)),	-- Engrave Boots - Invigoration / Wyvern Strike
			applyclassicphase(SOD_PHASE_TWO, recipe(410118)),	-- Engrave Boots - Trap Launcher

			-- Phase 3
			applyclassicphase(SOD_PHASE_THREE, recipe(431601)),	-- Engrave Bracers - Focus Fire
			applyclassicphase(SOD_PHASE_THREE, recipe(431611)),	-- Engrave Bracers - T.N.T.
			applyclassicphase(SOD_PHASE_THREE, recipe(416093)),	-- Engrave Bracers - Raptor Fury
			applyclassicphase(SOD_PHASE_THREE, recipe(416085)),	-- Engrave Helm - Lock and Load
			applyclassicphase(SOD_PHASE_THREE, recipe(416083)),	-- Engrave Helm - Catlike Reflexes
			applyclassicphase(SOD_PHASE_THREE, recipe(416090)),	-- Engrave Helm - Rapid Killing

			-- Phase 4
			applyclassicphase(SOD_PHASE_FOUR, recipe(440560)),	-- Engrave Cloak - Improved Volley
			applyclassicphase(SOD_PHASE_FOUR, recipe(440557)),	-- Engrave Cloak - Resourcefulness
			applyclassicphase(SOD_PHASE_FOUR, recipe(440563)),	-- Engrave Cloak - Hit and Run
		}),
		classHeader(MAGE, {
			-- Phase 1
			recipe(401759),	-- Engrave Chest - Burnout
			recipe(415942),	-- Engrave Chest - Enlightenment
			recipe(401765),	-- Engrave Chest - Fingers of Frost
			recipe(401767),	-- Engrave Chest - Regeneration
			recipe(401757),	-- Engrave Gloves - Arcane Blast
			recipe(401760),	-- Engrave Gloves - Ice Lance
			recipe(415936),	-- Engrave Gloves - Living Bomb
			recipe(401761),	-- Engrave Gloves - Rewind Time
			recipe(425171),	-- Engrave Pants - Arcane Surge
			recipe(425170),	-- Engrave Pants - Icy Veins
			recipe(401768),	-- Engrave Pants - Living Flame
			recipe(415939),	-- Engrave Pants - Mass Regeneration

			-- Phase 2
			applyclassicphase(SOD_PHASE_TWO, recipe(401762)),	-- Engrave Belt - Frostfire Bolt
			applyclassicphase(SOD_PHASE_TWO, recipe(401749)),	-- Engrave Belt - Hot Streak
			applyclassicphase(SOD_PHASE_TWO, recipe(401763)),	-- Engrave Belt - Missile Barrage
			applyclassicphase(SOD_PHASE_TWO, recipe(415948)),	-- Engrave Belt - Spellfrost Bolt
			applyclassicphase(SOD_PHASE_TWO, recipe(401752)),	-- Engrave Boots - Brain Freeze
			applyclassicphase(SOD_PHASE_TWO, recipe(425189)),	-- Engrave Boots - Chronostatic Preservation
			applyclassicphase(SOD_PHASE_TWO, recipe(415934)),	-- Engrave Boots - Spell Power

			-- Phase 3
			applyclassicphase(SOD_PHASE_THREE, recipe(429311)),	-- Engrave Bracers - Balefire Bolt
			applyclassicphase(SOD_PHASE_THREE, recipe(429309)),	-- Engrave Bracers - Displacement
			applyclassicphase(SOD_PHASE_THREE, recipe(429308)),	-- Engrave Bracers - Molten Armor
			applyclassicphase(SOD_PHASE_THREE, recipe(401754)),	-- Engrave Helm - Advanced Warding
			applyclassicphase(SOD_PHASE_THREE, recipe(429304)),	-- Engrave Helm - Deep Freeze
			applyclassicphase(SOD_PHASE_THREE, recipe(429306)),	-- Engrave Helm - Temporal Anomaly

			-- Phase 4
			applyclassicphase(SOD_PHASE_FOUR, recipe(401722)),	-- Engrave Cloak - Arcane Barrage
			applyclassicphase(SOD_PHASE_FOUR, recipe(440858)),	-- Engrave Cloak - Frozen Orb
			applyclassicphase(SOD_PHASE_FOUR, recipe(401764)),	-- Engrave Cloak - Overheat
		}),
		classHeader(PALADIN, {
			-- Phase 1
			recipe(425619),	-- Engrave Chest - Aegis
			recipe(410014),	-- Engrave Chest - Divine Storm
			recipe(425618),	-- Engrave Chest - Horn of Lordaeron / Hallowed Ground
			recipe(410015),	-- Engrave Chest - Seal of Martyrdom / Divine Light
			recipe(409999),	-- Engrave Gloves - Beacon of Light
			recipe(410002),	-- Engrave Gloves - Crusader Strike
			recipe(410001),	-- Engrave Gloves - Hand of Reckoning
			recipe(410008),	-- Engrave Pants - Avenger's Shield
			recipe(410010),	-- Engrave Pants - Divine Sacrifice
			recipe(416037),	-- Engrave Pants - Exorcist / Aura Mastery
			recipe(410011),	-- Engrave Pants - Inspiration Exemplar
			recipe(425621),	-- Engrave Pants - Rebuke

			-- Phase 2
			applyclassicphase(SOD_PHASE_TWO, recipe(426175)),	-- Engrave Belt - Enlightened Judgements
			applyclassicphase(SOD_PHASE_TWO, recipe(426180)),	-- Engrave Belt - Infusion of Light
			applyclassicphase(SOD_PHASE_TWO, recipe(426178)),	-- Engrave Belt - Sheath of Light
			applyclassicphase(SOD_PHASE_TWO, recipe(416035)),	-- Engrave Boots - Guarded by the Light
			applyclassicphase(SOD_PHASE_TWO, recipe(416028)),	-- Engrave Boots - Sacred Shield
			applyclassicphase(SOD_PHASE_TWO, recipe(416031)),	-- Engrave Boots - The Art of War

			-- Phase 3
			applyclassicphase(SOD_PHASE_THREE, recipe(410013)),	-- Engrave Bracers - Hammer of the Righteous
			applyclassicphase(SOD_PHASE_THREE, recipe(429261)),	-- Engrave Bracers - Improved Hammer of Wrath
			applyclassicphase(SOD_PHASE_THREE, recipe(429242)),	-- Engrave Bracers - Light's Grace
			applyclassicphase(SOD_PHASE_THREE, recipe(429255)),	-- Engrave Bracers - Purifying Power
			applyclassicphase(SOD_PHASE_THREE, recipe(429251)),	-- Engrave Helm - Fanaticism
			applyclassicphase(SOD_PHASE_THREE, recipe(429247)),	-- Engrave Helm - Improved Sanctuary
			applyclassicphase(SOD_PHASE_THREE, recipe(429249)),	-- Engrave Helm - Wrath

			-- Phase 4
			applyclassicphase(SOD_PHASE_FOUR, recipe(440792)),	-- Engrave Cloak - Righteous Vengeance
			applyclassicphase(SOD_PHASE_FOUR, recipe(440788)),	-- Engrave Cloak - Shield of Righteousness
			applyclassicphase(SOD_PHASE_FOUR, recipe(440790)),	-- Engrave Cloak - Shock and Awe
		}),
		classHeader(PRIEST, {
			-- Phase 1
			recipe(415995),	-- Engrave Chest - Serendipity
			recipe(415997),	-- Engrave Chest - Strength of Soul
			recipe(425215),	-- Engrave Chest - Twisted Faith
			recipe(425216),	-- Engrave Chest - Void Plague
			recipe(402859),	-- Engrave Gloves - Circle of Healing
			recipe(415996),	-- Engrave Gloves - Mind Sear
			recipe(402862),	-- Engrave Gloves - Penance
			recipe(402849),	-- Engrave Gloves - Shadow Word - Death
			recipe(402852),	-- Engrave Pants - Homunculi
			recipe(425213),	-- Engrave Pants - Power Word: Barrier
			recipe(402848),	-- Engrave Pants - Prayer of Mending
			recipe(402854),	-- Engrave Pants - Shared Pain

			-- Phase 2
			applyclassicphase(SOD_PHASE_TWO, recipe(425309)),	-- Engrave Belt - Empowered Renew
			applyclassicphase(SOD_PHASE_TWO, recipe(431663)),	-- Engrave Belt - Mind Spike
			applyclassicphase(SOD_PHASE_TWO, recipe(425310)),	-- Engrave Belt - Renewed Hope
			applyclassicphase(SOD_PHASE_TWO, recipe(425314)),	-- Engrave Boots - Dispersion
			applyclassicphase(SOD_PHASE_TWO, recipe(402855)),	-- Engrave Boots - Pain Suppression
			applyclassicphase(SOD_PHASE_TWO, recipe(425312)),	-- Engrave Boots - Spirit of the Redeemer

			-- Phase 3
			applyclassicphase(SOD_PHASE_THREE, recipe(431673)),	-- Engrave Bracers - Despair
			applyclassicphase(SOD_PHASE_THREE, recipe(431669)),	-- Engrave Bracers - Surge of Light
			applyclassicphase(SOD_PHASE_THREE, recipe(431705)),	-- Engrave Bracers - Void Zone
			applyclassicphase(SOD_PHASE_THREE, recipe(431650)),	-- Engrave Helm - Divine Aegis
			applyclassicphase(SOD_PHASE_THREE, recipe(402864)),	-- Engrave Helm - Eye of the Void
			applyclassicphase(SOD_PHASE_THREE, recipe(415991)),	-- Engrave Helm - Pain and Suffering

			-- Phase 4
			applyclassicphase(SOD_PHASE_FOUR, recipe(402853)),	-- Engrave Cloak - Binding Heal
			applyclassicphase(SOD_PHASE_FOUR, recipe(402850)),	-- Engrave Cloak - Soul Warding
			applyclassicphase(SOD_PHASE_FOUR, recipe(402857)),	-- Engrave Cloak - Vampiric Touch
		}),
		classHeader(ROGUE, {
			-- Phase 1
			recipe(400080),	-- Engrave Chest - Deadly Brew
			recipe(400082),	-- Engrave Chest - Just a Flesh Wound
			recipe(400095),	-- Engrave Chest - Quick Draw
			recipe(424992),	-- Engrave Chest - Slaughter from the Shadows
			recipe(424990),	-- Engrave Gloves - Main Gauche
			recipe(400094),	-- Engrave Gloves - Mutilate
			recipe(424984),	-- Engrave Gloves - Saber Slash
			recipe(400105),	-- Engrave Gloves - Shadowstrike
			recipe(424988),	-- Engrave Gloves - Shiv
			recipe(400081),	-- Engrave Pants - Between the Eyes
			recipe(400099),	-- Engrave Pants - Blade Dance
			-- recipe(401488),	-- Engrave Pants - Cutty's Rune [This may be NYI?]
			recipe(400102),	-- Engrave Pants - Envenom

			-- Phase 2
			applyclassicphase(SOD_PHASE_TWO, recipe(425102)),	-- Engrave Belt - Poisoned Knife
			applyclassicphase(SOD_PHASE_TWO, recipe(400101)),	-- Engrave Belt - Shadowstep
			applyclassicphase(SOD_PHASE_TWO, recipe(400096)),	-- Engrave Belt - Shuriken Toss
			applyclassicphase(SOD_PHASE_TWO, recipe(425103)),	-- Engrave Boots - Master of Subtlety
			applyclassicphase(SOD_PHASE_TWO, recipe(400093)),	-- Engrave Boots - Rolling with the Punches
			applyclassicphase(SOD_PHASE_TWO, recipe(415926)),	-- Engrave Boots - Waylay

			-- Phase 3
			applyclassicphase(SOD_PHASE_THREE, recipe(432299)),	-- Engrave Bracers - Carnage
			applyclassicphase(SOD_PHASE_THREE, recipe(432297)),	-- Engrave Bracers - Cut to the Chase
			applyclassicphase(SOD_PHASE_THREE, recipe(432301)),	-- Engrave Bracers - Unfair Advantage
			applyclassicphase(SOD_PHASE_THREE, recipe(432293)),	-- Engrave Helm - Combat Potency
			applyclassicphase(SOD_PHASE_THREE, recipe(432291)),	-- Engrave Helm - Focused Attacks
			applyclassicphase(SOD_PHASE_THREE, recipe(432295)),	-- Engrave Helm - Honor Among Thieves

			-- Phase 4
			applyclassicphase(SOD_PHASE_FOUR, recipe(415922)),	-- Engrave Cloak - Blunderbuss
			applyclassicphase(SOD_PHASE_FOUR, recipe(415918)),	-- Engrave Cloak - Crimson Tempest
			applyclassicphase(SOD_PHASE_FOUR, recipe(436609)),	-- Engrave Cloak - Fan of Knives
		}),
		classHeader(SHAMAN, {
			-- Phase 1
			recipe(410096),	-- Engrave Chest - Dual Wield Specialization
			recipe(416057),	-- Engrave Chest - Healing Rain
			recipe(410094),	-- Engrave Chest - Overload
			recipe(410098),	-- Engrave Chest - Shield Mastery
			recipe(410095),	-- Engrave Gloves - Lava Burst
			recipe(410104),	-- Engrave Gloves - Lava Lash
			recipe(425344),	-- Engrave Gloves - Molten Blast
			recipe(410097),	-- Engrave Gloves - Water Shield
			recipe(410099),	-- Engrave Pants - Ancestral Guidance
			recipe(410101),	-- Engrave Pants - Earth Shield
			recipe(425343),	-- Engrave Pants - Shamanistic Rage / Greater Ghost Wolf
			recipe(410107),	-- Engrave Pants - Way of Earth

			-- Phase 2
			applyclassicphase(SOD_PHASE_TWO, recipe(410093)),	-- Engrave Belt - Fire Nova
			applyclassicphase(SOD_PHASE_TWO, recipe(410100)),	-- Engrave Belt - Maelstrom Weapon
			applyclassicphase(SOD_PHASE_TWO, recipe(416054)),	-- Engrave Belt - Power Surge
			applyclassicphase(SOD_PHASE_TWO, recipe(425883)),	-- Engrave Boots - Ancestral Awakening
			applyclassicphase(SOD_PHASE_TWO, recipe(425882)),	-- Engrave Boots - Decoy Totem
			applyclassicphase(SOD_PHASE_TWO, recipe(410103)),	-- Engrave Boots - Spirit of the Alpha

			-- Phase 3
			applyclassicphase(SOD_PHASE_THREE, recipe(432241)),	-- Engrave Bracers - Overcharged
			applyclassicphase(SOD_PHASE_THREE, recipe(410105)),	-- Engrave Bracers - Riptide
			applyclassicphase(SOD_PHASE_THREE, recipe(432236)),	-- Engrave Bracers - Rolling Thunder
			applyclassicphase(SOD_PHASE_THREE, recipe(432238)),	-- Engrave Bracers - Static Shock
			applyclassicphase(SOD_PHASE_THREE, recipe(416066)),	-- Engrave Helm - Burn
			applyclassicphase(SOD_PHASE_THREE, recipe(416055)),	-- Engrave Helm - Mental Dexterity
			applyclassicphase(SOD_PHASE_THREE, recipe(432234)),	-- Engrave Helm - Tidal Waves

			-- Phase 4
			applyclassicphase(SOD_PHASE_FOUR, recipe(416062)),	-- Engrave Cloak - Coherence
			applyclassicphase(SOD_PHASE_FOUR, recipe(440630)),	-- Engrave Cloak - Feral Spirit
			applyclassicphase(SOD_PHASE_FOUR, recipe(440634)),	-- Engrave Cloak - Storm, Earth, and Fire
		}),
		classHeader(WARLOCK, {
			-- Phase 1
			recipe(416009),	-- Engrave Chest - Demonic Tactics
			recipe(403937),	-- Engrave Chest - Lake of Fire
			recipe(403932),	-- Engrave Chest - Master Channeler
			recipe(403920),	-- Engrave Chest - Soul Siphon
			recipe(403925),	-- Engrave Gloves - Chaos Bolt
			recipe(403919),	-- Engrave Gloves - Haunt
			recipe(403938),	-- Engrave Gloves - Metamorphosis
			recipe(403936),	-- Engrave Gloves - Shadow Bolt Volley
			recipe(425477),	-- Engrave Pants - Demonic Grace
			recipe(425476),	-- Engrave Pants - Demonic Pact
			recipe(416008),	-- Engrave Pants - Everlasting Affliction
			recipe(416015),	-- Engrave Pants - Incinerate

			-- Phase 2
			applyclassicphase(SOD_PHASE_TWO, recipe(426445)),	-- Engrave Belt - Grimoire of Synergy
			applyclassicphase(SOD_PHASE_TWO, recipe(426443)),	-- Engrave Belt - Invocation
			applyclassicphase(SOD_PHASE_TWO, recipe(426452)),	-- Engrave Belt - Shadow and Flame
			applyclassicphase(SOD_PHASE_TWO, recipe(416017)),	-- Engrave Boots - Dance of the Wicked
			applyclassicphase(SOD_PHASE_TWO, recipe(416014)),	-- Engrave Boots - Demonic Knowledge
			applyclassicphase(SOD_PHASE_TWO, recipe(426467)),	-- Engrave Boots - Shadowflame

			-- Phase 3
			applyclassicphase(SOD_PHASE_THREE, recipe(431758)),	-- Engrave Bracers - Immolation Aura
			applyclassicphase(SOD_PHASE_THREE, recipe(431756)),	-- Engrave Bracers - Summon Felguard
			applyclassicphase(SOD_PHASE_THREE, recipe(431747)),	-- Engrave Bracers - Unstable Affliction
			applyclassicphase(SOD_PHASE_THREE, recipe(431745)),	-- Engrave Helm - Backdraft
			applyclassicphase(SOD_PHASE_THREE, recipe(431743)),	-- Engrave Helm - Pandemic
			applyclassicphase(SOD_PHASE_THREE, recipe(426470)),	-- Engrave Helm - Vengeance

			-- Phase 4
			applyclassicphase(SOD_PHASE_FOUR, recipe(440922)),	-- Engrave Cloak - Decimation
			applyclassicphase(SOD_PHASE_FOUR, recipe(440926)),	-- Engrave Cloak - Infernal Armor
			applyclassicphase(SOD_PHASE_FOUR, recipe(440924)),	-- Engrave Cloak - Mark of Chaos -- BOOTS? Shouldn't this be Cloak?
		}),
		classHeader(WARRIOR, {
			-- Phase 1
			recipe(403474),	-- Engrave Chest - Blood Frenzy
			recipe(403480),	-- Engrave Chest - Flagellation
			recipe(425444),	-- Engrave Chest - Raging Blow
			recipe(425445),	-- Engrave Chest - Warbringer
			recipe(403475),	-- Engrave Gloves - Devastate
			recipe(403489),	-- Engrave Gloves - Endless Rage
			recipe(425443),	-- Engrave Gloves - Quick Strike
			recipe(416003),	-- Engrave Gloves - Single-Minded Fury
			recipe(403470),	-- Engrave Gloves - Victory Rush
			recipe(425446),	-- Engrave Pants - Consumed by Rage
			recipe(425447),	-- Engrave Pants - Frenzied Assault
			recipe(403476),	-- Engrave Pants - Furious Thunder

			-- Phase 2
			applyclassicphase(SOD_PHASE_TWO, recipe(416004)),	-- Engrave Belt - Blood Surge
			applyclassicphase(SOD_PHASE_TWO, recipe(409163)),	-- Engrave Belt - Focused Rage
			applyclassicphase(SOD_PHASE_TWO, recipe(416005)),	-- Engrave Belt - Precise Timing
			applyclassicphase(SOD_PHASE_TWO, recipe(403467)),	-- Engrave Boots - Enraged Regeneration
			applyclassicphase(SOD_PHASE_TWO, recipe(403472)),	-- Engrave Boots - Intervene
			applyclassicphase(SOD_PHASE_TWO, recipe(426491)),	-- Engrave Boots - Rallying Cry

			-- Phase 3
			applyclassicphase(SOD_PHASE_THREE, recipe(416002)),	-- Engrave Boots - Gladiator Stance
			applyclassicphase(SOD_PHASE_THREE, recipe(427081)),	-- Engrave Bracers - Rampage
			applyclassicphase(SOD_PHASE_THREE, recipe(427082)),	-- Engrave Bracers - Sword and Board
			applyclassicphase(SOD_PHASE_THREE, recipe(427084)),	-- Engrave Bracers - Wrecking Crew
			applyclassicphase(SOD_PHASE_THREE, recipe(427080)),	-- Engrave Helm - Shield Mastery
			applyclassicphase(SOD_PHASE_THREE, recipe(427076)),	-- Engrave Helm - Taste for Blood
			applyclassicphase(SOD_PHASE_THREE, recipe(427078)),	-- Engrave Helm - Vigilance

			-- Phase 4
			applyclassicphase(SOD_PHASE_FOUR, recipe(440492)),	-- Engrave Cloak - Fresh Meat
			applyclassicphase(SOD_PHASE_FOUR, recipe(440496)),	-- Engrave Cloak - Shockwave
			applyclassicphase(SOD_PHASE_FOUR, recipe(440494)),	-- Engrave Cloak - Sudden Death
		}),

		-- Non-Class Specific Runes
		applyclassicphase(SOD_PHASE_FOUR, recipe(453695, {	-- Engrave Ring - Arcane Specialization
			["timeline"] = { ADDED_1_15_3 },
			["classes"] = { HUNTER, MAGE, DRUID },
		})),
		applyclassicphase(SOD_PHASE_FOUR, recipe(453688, {	-- Engrave Ring - Axe Specialization
			["timeline"] = { ADDED_1_15_3 },
			["classes"] = { WARRIOR, PALADIN, HUNTER, SHAMAN },
		})),
		applyclassicphase(SOD_PHASE_FOUR, recipe(453690, {	-- Engrave Ring - Dagger Specialization
			["timeline"] = { ADDED_1_15_3 },
			["classes"] = { WARRIOR, HUNTER, ROGUE, PRIEST, SHAMAN, MAGE, WARLOCK, DRUID },
		})),
		applyclassicphase(SOD_PHASE_FOUR, recipe(459313, {	-- Engrave Ring - Defense Specialization
			["timeline"] = { ADDED_1_15_3 },
			["classes"] = { WARRIOR, PALADIN, ROGUE, SHAMAN, WARLOCK, DRUID },
		})),
		applyclassicphase(SOD_PHASE_FOUR, recipe(453696, {	-- Engrave Ring - Fire Specialization
			["timeline"] = { ADDED_1_15_3 },
			["classes"] = { HUNTER, SHAMAN, MAGE, WARLOCK },
		})),
		applyclassicphase(SOD_PHASE_FOUR, recipe(453691, {	-- Engrave Ring - Fist Weapon Specialization
			["timeline"] = { ADDED_1_15_3 },
			["classes"] = { WARRIOR, HUNTER, SHAMAN, ROGUE, DRUID },
		})),
		applyclassicphase(SOD_PHASE_FOUR, recipe(453697, {	-- Engrave Ring - Frost Specialization
			["timeline"] = { ADDED_1_15_3 },
			["classes"] = { HUNTER, SHAMAN, MAGE },
		})),
		applyclassicphase(SOD_PHASE_FOUR, recipe(453702, {	-- Engrave Ring - Holy Specialization
			["timeline"] = { ADDED_1_15_3 },
			["classes"] = { PALADIN, PRIEST },
		})),
		applyclassicphase(SOD_PHASE_FOUR, recipe(453689, {	-- Engrave Ring - Mace Specialization
			["timeline"] = { ADDED_1_15_3 },
			["classes"] = { WARRIOR, PALADIN, PRIEST, SHAMAN, ROGUE, DRUID },
		})),
		applyclassicphase(SOD_PHASE_FOUR, recipe(453698, {	-- Engrave Ring - Nature Specialization
			["timeline"] = { ADDED_1_15_3 },
			["classes"] = { HUNTER, ROGUE, SHAMAN, DRUID },
		})),
		applyclassicphase(SOD_PHASE_FOUR, recipe(453694, {	-- Engrave Ring - Pole Weapon Specialization
			["timeline"] = { ADDED_1_15_3 },
			["classes"] = { WARRIOR, PALADIN, HUNTER, PRIEST, SHAMAN, MAGE, WARLOCK, DRUID },
		})),
		applyclassicphase(SOD_PHASE_FOUR, recipe(453692, {	-- Engrave Ring - Ranged Weapon Specialization
			["timeline"] = { ADDED_1_15_3 },
			["classes"] = { WARRIOR, HUNTER, ROGUE },
		})),
		applyclassicphase(SOD_PHASE_FOUR, recipe(453700, {	-- Engrave Ring - Shadow Specialization
			["timeline"] = { ADDED_1_15_3 },
			["classes"] = { PRIEST, WARLOCK },
		})),
		applyclassicphase(SOD_PHASE_FOUR, recipe(453635, {	-- Engrave Ring - Sword Specialization
			["timeline"] = { ADDED_1_15_3 },
			["classes"] = { WARRIOR, PALADIN, HUNTER, MAGE, WARLOCK, ROGUE },
		})),
	}),
	n(createHeader({	-- Soul Brokers
		readable = "SOD - Soul Brokers",
		icon = 136169,
		text = {
			en = "Soul Brokers",
			es = "Corredores de Almas",
			de = "Seelenvermittler",
			fr = "Courtiers D'âmes",
			it = "Broker Dell'anima",
			pt = "Corretores de Almas",
			ru = "Душевные брокеры",
			ko = "소울 브로커",
			cn = "灵魂掮客",
			tw = "靈魂仲介者",
		},
	}), {
		["aqd"] = {
			["crs"] = {
				209002,	-- Gaklik Voidtwist <Soul Broker>
				204256,	-- Damien Kane <Soul Broker>
			},
			["coords"] = {
				{ 47.2, 53.6, DUN_MOROGH },
				{ 44.0, 66.2, ELWYNN_FOREST },
			},
		},
		["hqd"] = {
			["crs"] = {
				208226,	-- Darmak Bloodhowl <Soul Broker>
				208682,	-- Denton Bleakway <Soul Broker>
			},
			["coords"] = {
				{ 54.6, 41.6, DUROTAR },
				{ 84.0, 26.0, UNDERCITY },
			},
			["maps"] = { TIRISFAL_GLADES },
		},
		["classes"] = { WARLOCK },
		["groups"] = {
			i(205022, {	-- Rune of Soul Siphon
				["cost"] = {
					{ "i", 205020, 1 },	-- Pure Soul Shard
					{ "i", 205019, 1 },	-- Tainted Soul Shard
				},
				["classes"] = { WARLOCK },
				["groups"] = {
					recipe(403920),	-- Engrave Chest - Soul Siphon
				},
			}),
			applyclassicphase(SOD_PHASE_THREE, i(221978, {	-- Explorer's Soul
				["description"] = "Casting Drain Soul on any mob will reward you with this.",
				["spellID"] = 445459,	-- Explorer Imp
				["f"] = RECIPES,
			})),
			i(205020, {	-- Pure Soul Shard
				["description"] = "Casting Drain Soul on any critter will reward you with this.",
			}),
			i(205019, {	-- Tainted Soul Shard
				["description"] = "Casting Drain Soul on any of the named mobs listed below will reward you with this. (does not need to be your tag!)",
				["aqd"] = {
					["coords"] = {
						{ 27.0, 92.8, ELWYNN_FOREST },
						{ 27.8, 57.4, DUN_MOROGH },
					},
					["crs"] = {
						448,	-- Hogger
						6113,	-- Vejrek
					},
				},
				["hqd"] = {
					["coords"] = {
						{ 42.6, 26.4, DUROTAR },
						{ 58.6, 31.6, TIRISFAL_GLADES },
					},
					["crs"] = {
						3203,	-- Fizzle Darkstorm
						1753,	-- Maggot Eye
					},
				},
			}),
		},
	}),
	applyclassicphase(SOD_PHASE_FOUR, n(createHeader({	-- Squire Training
		readable = "SOD - PALADIN - Squire Training",
		icon = 237377,
		text = {
			en = "Squire Training",
		},
		description = {
			en = "Starting at level 50, Paladins can complete a quest chain in Western Plaguelands that will give them a Relic that calls forth their own personal Squire. This Squire can level up by fighting in combat as well as by being healed by the Paladin's spells. (Get into combat and just spam rank 1 Flash of Light while he attacks the mobs.)",
		},
	}), {
		["sourceQuest"] = 83936,	-- Dalton's Quest
		["timeline"] = { ADDED_1_15_3 },
		["classes"] = { PALADIN },
		["lvl"] = 50,
		["groups"] = {
			n(createHeader({	-- Inspiration Rank One
				readable = "SOD - PALADIN - Squire Training - Inspiration Rank One",
				icon = 131013,
				text = {
					en = "Inspiration Rank One",
				},
				description = {
					en = "After receiving your squire, summon him forth using the Relic and then level him up by getting into combat and keeping him alive.",
				},
			}), {
				["providers"] = {
					{ "i", 226122 },	-- Dalton's Horn (Rank 1)
					{ "n", 227673 },	-- <Player>'s Squire (Rank 1)
				},
				["questID"] = 84416,	-- Inspiration Rank One HQT
				["sourceQuest"] = 83936,	-- Dalton's Quest
			}),
			q(83936, {	-- A Lesson in Violence
				["qg"] = 227673,	-- <Player>'s Squire (Rank 1)
				["sourceQuest"] = 84416,	-- Inspiration Rank One HQT
				["timeline"] = { ADDED_1_15_3 },
				["classes"] = { PALADIN },
				["lvl"] = 50,
				["groups"] = {
					i(226523),	-- Dalton's Horn (Rank 2)
				},
			}),
			n(createHeader({	-- Inspiration Rank Two
				readable = "SOD - PALADIN - Squire Training - Inspiration Rank Two",
				icon = 131013,
				text = {
					en = "Inspiration Rank Two",
				},
			}), {
				["providers"] = {
					{ "i", 226523 },	-- Dalton's Horn (Rank 2)
					{ "n", 227464 },	-- <Player>'s Squire (Rank 2)
				},
				["questID"] = 84417,	-- Inspiration Rank Two HQT
				["sourceQuest"] = 83936,	-- A Lesson in Violence
			}),
			q(84008, {	-- A Lesson in Grace
				["qg"] = 227464,	-- <Player>'s Squire (Rank 2)
				["sourceQuest"] = 84417,	-- Inspiration Rank Two HQT
				["timeline"] = { ADDED_1_15_3 },
				["classes"] = { PALADIN },
				["lvl"] = 50,
				["groups"] = {
					i(226545),	-- Dalton's Horn (Rank 3)
				},
			}),
			q(84017, {	-- A Time to Kill
				["qg"] = 227674,	-- <Player>'s Squire (Rank 3)
				["sourceQuest"] = 84008,	-- A Lesson in Grace
				["timeline"] = { ADDED_1_15_3 },
				["maps"] = { EASTERN_PLAGUELANDS },
				["classes"] = { PALADIN },
				["lvl"] = 50,
				["groups"] = {
					objective(1, {	-- 0/1 Arkonos Found
						["provider"] = { "n", 227985 },	-- Arkonos the Cursed
						["coord"] = { 86.8, 39.4, EASTERN_PLAGUELANDS },
					}),
				},
			}),
			q(84125, {	-- Close Enough To Touch
				["qg"] = 227674,	-- <Player>'s Squire (Rank 3)
				["sourceQuest"] = 84017,	-- A Time to Kill
				["coord"] = { 86.8, 39.4, EASTERN_PLAGUELANDS },
				["timeline"] = { ADDED_1_15_3 },
				["classes"] = { PALADIN },
				["lvl"] = 50,
				["groups"] = {
					objective(1, {	-- 0/1 Scourge Shadow Scalpel
						["provider"] = { "i", 227041 },	-- Scourge Shadow Scalpel
						["coord"] = { 83.6, 42.0, EASTERN_PLAGUELANDS },
						["crs"] = {
							8550,	-- Shadowmage <Cult of the Damned>
							8528,	-- Dread Weaver
						},
					}),
				},
			}),
			q(84126, {	-- Finish the Fight
				["qg"] = 227674,	-- <Player>'s Squire (Rank 3)
				["sourceQuest"] = 84125,	-- Close Enough To Touch
				["coord"] = { 86.8, 39.4, EASTERN_PLAGUELANDS },
				["timeline"] = { ADDED_1_15_3 },
				["classes"] = { PALADIN },
				["lvl"] = 50,
				["groups"] = {
					objective(1, {	-- 0/1 Arkonos the Cursed slain
						["providers"] = {
							{ "n", 227985 },	-- Arkonos the Cursed
							{ "i", 227685 },	-- Modified Shadow Scalpel
						},
						["coord"] = { 86.8, 39.4, EASTERN_PLAGUELANDS },
					}),
					recipe(440790),	-- Engrave Cloak - Shock and Awe
					i(226399, {	-- Testament of Avenging Wrath
						["spellID"] = 407788,	-- Avenging Wrath
						["f"] = RECIPES,
					}),
				},
			}),
		},
	})),

	n(createHeader({	-- Tier-Set Shoulder Enchants
		readable = "Tier-Set Shoulder Enchants",
		text = {
			en = "Tier-Set Shoulder Enchants",
		},
	}), {
		["groups"] = {
			n(QUESTS, {
				applyclassicphase(SOD_PHASE_SEVEN, q(88745, {	-- Shadows of Doom
					["qg"] = 16361,	-- Commander Thomas Helleran <The Argent Dawn>
					["coord"] = { 80.8, 60.2, EASTERN_PLAGUELANDS },
					["lvl"] = 50,
					["groups"] = {
						objective(1, {	-- 0/1 Shadow of Doom
							["provider"] = { "n", 16143 },	-- Shadow of Doom
						}),
					},
				})),
				applyclassicphase(SOD_PHASE_SEVEN, q(87361, {	-- Laid to Rest
					["provider"] = { "i", 236750},		-- Heart of Doom
					["sourceQuest"] = 88745,	-- Shadows of Doom
					["lvl"] = 60,
					["groups"] = {
						objective(1, {
							["provider"] = { "n", 238376 },		-- Brother Luctus <Soul Seer>
							["coord"] = { 80.6, 65.4 , EASTERN_PLAGUELANDS },
						}),
					},
				})),
			}),
			n(238376, {		-- Brother Luctus <Soul Seer>
				["coord"] = { 80.6, 65.4 , EASTERN_PLAGUELANDS },
				["groups"] = {
					i(236589, {		-- Soul of the Gentle Paw
						["cost"] = { { "i", 12844, 5 } },	-- Argent Dawn Valor Token
					}),
					i(236590, {		-- Soul of the Ferocious
						["cost"] = { { "i", 12844, 5 } },	-- Argent Dawn Valor Token
					}),
					i(236591, {		-- Soul of the Shifter
						["cost"] = { { "i", 12844, 5 } },	-- Argent Dawn Valor Token
					}),
				},
			}),
		},
	}),

	n(createHeader({	-- Waylaid Supplies
		readable = "Waylaid Supplies",
		icon = 132763,
		text = {
			en = "Waylaid Supplies",
			es = "Suministros asaltados",
			de = "Weggelegte Vorräte",
			fr = "Fournitures isolées",
			it = "Forniture Waylaid",
			pt = "Suprimentos emboscados",
			ru = "Подстерегающие припасы",
			ko = "웨이레이드 보급품",
			cn = "被伏击的货物",
			tw = "遭攔截的貨物",
		},
		description = {
			en = "Waylaid Supplies quest items drop from mobs of level 6 and above all over Azeroth. These quests request delivery of the Waylaid Supplies to an organization representative in return for a few silver, experience, and Reputation. Of course, there are items missing from the supply shipment, and you can supplement it for greater reputation rewards.",
			es = "Los objetos de misión de Suministros Waylaid caen de mobs de nivel 6 y, sobre todo, en Azeroth. Estas misiones requieren la entrega de suministros Waylaid a un representante de la organización a cambio de algo de plata, experiencia y reputación. Por supuesto, faltan elementos en el envío de suministros y puedes complementarlos para obtener mayores recompensas de reputación.",
			de = "Questgegenstände für „Weggelegte Vorräte“ fallen von Mobs der Stufe 6 und höher in ganz Azeroth. Diese Quests erfordern die Lieferung der Waylaid-Vorräte an einen Vertreter der Organisation als Gegenleistung für ein paar Silbermünzen, Erfahrung und Ansehen. Natürlich fehlen in der Versorgungslieferung Gegenstände, und Sie können sie ergänzen, um höhere Reputationsbelohnungen zu erhalten.",
			fr = "Les objets de quête Waylaid Supplies proviennent des foules de niveau 6 et surtout partout en Azeroth. Ces quêtes nécessitent la livraison des fournitures Waylaid à un représentant de l'organisation en échange de quelques pièces d'argent, d'expérience et de réputation. Bien sûr, il manque des articles dans la livraison de fournitures, et vous pouvez les compléter pour obtenir de plus grandes récompenses de réputation.",
			it = "Gli oggetti della missione Waylaid Supplies vengono rilasciati dai mob di livello 6 e soprattutto su Azeroth. Queste missioni richiedono la consegna delle Forniture Waylaid a un rappresentante dell'organizzazione in cambio di argento, esperienza e reputazione. Naturalmente, ci sono degli articoli mancanti nella spedizione di rifornimenti e puoi integrarli per ottenere maggiori ricompense in termini di reputazione.",
			pt = "Itens de missão Waylaid Supplies são obtidos de mobs de nível 6 e acima de Azeroth. Essas missões exigem a entrega dos Suprimentos Waylaid a um representante da organização em troca de um pouco de prata, experiência e reputação. É claro que faltam itens na remessa de suprimentos e você pode complementá-los para obter maiores recompensas de reputação.",
			ru = "Квестовые предметы Waylaid Supplies падают с мобов 6-го уровня и выше по всему Азероту. Эти квесты требуют доставки Запасных припасов представителю организации в обмен на немного серебра, опыта и репутации. Конечно, в поставке припасов отсутствуют предметы, и вы можете дополнить их, чтобы получить больше репутации.",
			ko = "길레이드 보급품 퀘스트 아이템은 아제로스 전역의 6레벨 이상의 몹에게서 드롭됩니다. 이 퀘스트는 약간의 은화, 경험치, 평판을 대가로 조직 대표에게 Waylaid 보급품을 전달하도록 요청합니다. 물론, 보급품 배송에 누락된 품목이 있으며, 이를 보완하여 더 큰 평판 보상을 받을 수 있습니다.",
			cn = "'被伏击的货物'任务物品从艾泽拉斯 6 级及以上的小怪中掉落。这些任务要求将'被伏击的货物'交付给组织代表，以换取一些银币、经验和声望。当然，货物中也有缺少的物品，你可以补充以获得更大的声望奖励。",
			tw = "'遭攔截的貨物'任務物品會從艾澤拉斯各地6級及以上的怪物掉落。這些任務要求將'遭攔截的貨物'交付給某個組織的代表，以換取少量銀幣、經驗值和聲望。當然，物資運送中有一些物品遺失，你可以補充這些物品以獲得更多的聲望獎勵。",
		},
	}), {
		["aqd"] = faction(2586, AZEROTH_COMMERCE_AUTHORITY_VENDORS),
		["hqd"] = faction(2587, DUROTAR_SUPPLY_AND_LOGISTICS_VENDORS),
		["OnInit"] = [[function(t) local rep = t.factionID; for index,child in ipairs(t.g[1].g) do if child.maxReputation then child.maxReputation[1] = rep; end end return t; end]],
		["groups"] = {
			n(QUESTS, {
				q(78612, {	-- A Full Shipment [iLvl 10 - Gathered]
					["provider"] = { "i", 211365 },	-- Supply Shipment [iLvl 10 - Gathered]
					["maxReputation"] = { 2586, FRIENDLY },	-- ACA / DSL, Friendly.
					["description"] = "Grants 300 reputation.",
					["repeatable"] = true,
					["lvl"] = 9,
				}),
				q(78872, {	-- A Full Shipment [iLvl 10 - Crafted]
					["provider"] = { "i", 211367 },	-- Supply Shipment [iLvl 10 - Crafted]
					["maxReputation"] = { 2586, FRIENDLY },	-- ACA / DSL, Friendly.
					["description"] = "Grants 450 reputation.",
					["repeatable"] = true,
					["lvl"] = 12,
				}),
				q(79101, {	-- A Full Shipment [iLvl 25 - Gathered]
					["provider"] = { "i", 211839 },	-- Supply Shipment [iLvl 25 - Gathered]
					["maxReputation"] = { 2586, HONORED },	-- ACA / DSL, Honored.
					["description"] = "Grants 500 reputation.",
					["repeatable"] = true,
					["lvl"] = 18,
				}),
				applyclassicphase(SOD_PHASE_TWO, q(80307, {	-- A Full Shipment [iLvl 40 - Gathered]
					["provider"] = { "i", 217337 },	-- Supply Shipment [iLvl 40 - Gathered]
					["maxReputation"] = { 2586, REVERED },	-- ACA / DSL, Revered.
					["description"] = "Grants 700 reputation.",
					["repeatable"] = true,
					["lvl"] = 28,
				})),
				applyclassicphase(SOD_PHASE_THREE, q(82307, {	-- A Full Shipment [iLvl 50 - Gathered]
					["provider"] = { "i", 221008 },	-- Supply Shipment [iLvl 50 - Gathered]
					["maxReputation"] = { 2586, EXALTED },	-- ACA / DSL, Exalted.
					["description"] = "Grants 950 reputation.",
					["repeatable"] = true,
					["lvl"] = 42,
				})),
				q(79102, {	-- A Full Shipment [iLvl 25 - Crafted (Tier 1)]
					["provider"] = { "i", 211840 },	-- Supply Shipment [iLvl 25 - Crafted (Tier 1)]
					["maxReputation"] = { 2586, HONORED },	-- ACA / DSL, Honored.
					["description"] = "Grants 650 reputation.",
					["repeatable"] = true,
					["lvl"] = 22,
				}),
				q(79103, {	-- A Full Shipment [iLvl 25 - Crafted (Tier 2)]
					["provider"] = { "i", 211841 },	-- Supply Shipment [iLvl 25 - Crafted (Tier 2)]
					["maxReputation"] = { 2586, HONORED },	-- ACA / DSL, Honored.
					["description"] = "Grants 800 reputation.",
					["repeatable"] = true,
					["lvl"] = 25,
				}),
				applyclassicphase(SOD_PHASE_TWO, q(80308, {	-- A Full Shipment [iLvl 40 - Crafted (Tier 3)]
					["provider"] = { "i", 217338 },	-- Supply Shipment [iLvl 40 - Crafted (Tier 3)]
					["maxReputation"] = { 2586, REVERED },	-- ACA / DSL, Revered.
					["description"] = "Grants 850 reputation.",
					["repeatable"] = true,
					["lvl"] = 35,
				})),
				applyclassicphase(SOD_PHASE_TWO, q(80309, {	-- A Full Shipment [iLvl 40 - Crafted (Tier 4)]
					["provider"] = { "i", 217339 },	-- Supply Shipment [iLvl 40 - Crafted (Tier 4)]
					["maxReputation"] = { 2586, REVERED },	-- ACA / DSL, Revered.
					["description"] = "Grants 1000 reputation.",
					["repeatable"] = true,
					["lvl"] = 40,
				})),
				applyclassicphase(SOD_PHASE_THREE, q(82308, {	-- A Full Shipment [iLvl 50 - Crafted (Tier 5)]
					["provider"] = { "i", 221009 },	-- Supply Shipment [iLvl 50 - Crafted (Tier 5)]
					["maxReputation"] = { 2586, EXALTED },	-- ACA / DSL, Exalted.
					["description"] = "Grants 1300 reputation.",
					["repeatable"] = true,
					["lvl"] = 45,
				})),
				applyclassicphase(SOD_PHASE_THREE, q(82309, {	-- A Full Shipment [iLvl 50 - Crafted (Tier 6)]
					["provider"] = { "i", 221010 },	-- Supply Shipment [iLvl 50 - Crafted (Tier 6)]
					["maxReputation"] = { 2586, EXALTED },	-- ACA / DSL, Exalted.
					["description"] = "Grants 1850 reputation.",
					["repeatable"] = true,
					["lvl"] = 50,
				})),
				-- These were only in Phase 1, in Phase 2 you can only hand in full shipments (but you can carry multiple empty ones)
				q(79100, {	-- A Waylaid Shipment [iLvl 10]
					["providers"] = {
						{ "i", 211331 },	-- Waylaid Supplies: Brilliant Smallfish
						{ "i", 211327 },	-- Waylaid Supplies: Brown Linen Pants
						{ "i", 211328 },	-- Waylaid Supplies: Brown Linen Robes
						{ "i", 210771 },	-- Waylaid Supplies: Copper Bars
						{ "i", 211319 },	-- Waylaid Supplies: Copper Shortswords
						{ "i", 211326 },	-- Waylaid Supplies: Embossed Leather Vests
						{ "i", 211325 },	-- Waylaid Supplies: Handstitched Leather Belts
						{ "i", 211934 },	-- Waylaid Supplies: Healing Potions
						{ "i", 211332 },	-- Waylaid Supplies: Heavy Linen Bandages
						{ "i", 211329 },	-- Waylaid Supplies: Herb Baked Eggs
						{ "i", 211321 },	-- Waylaid Supplies: Lesser Magic Wands
						{ "i", 211315 },	-- Waylaid Supplies: Light Leather
						{ "i", 211318 },	-- Waylaid Supplies: Minor Healing Potions
						{ "i", 211322 },	-- Waylaid Supplies: Minor Wizard Oil
						{ "i", 211316 },	-- Waylaid Supplies: Peacebloom
						{ "i", 211324 },	-- Waylaid Supplies: Rough Boomsticks
						{ "i", 211323 },	-- Waylaid Supplies: Rough Copper Bombs
						{ "i", 211933 },	-- Waylaid Supplies: Rough Stone
						{ "i", 211320 },	-- Waylaid Supplies: Runed Copper Pants
						{ "i", 211317 },	-- Waylaid Supplies: Silverleaf
						{ "i", 211330 },	-- Waylaid Supplies: Spiced Wolf Meat
					},
					["maxReputation"] = { 2586, FRIENDLY },	-- ACA / DSL, Friendly.
					["description"] = "Grants 100 reputation.",
					["timeline"] = { ADDED_1_15_0, REMOVED_1_15_1 },
					["repeatable"] = true,
					["lvl"] = 8,
				}),
				q(78611, {	-- A Waylaid Shipment [iLvl 25]
					["providers"] = {
						{ "i", 211819 },	-- Waylaid Supplies: Bronze Bars
						{ "i", 211822 },	-- Waylaid Supplies: Bruiseweed
						{ "i", 211837 },	-- Waylaid Supplies: Goblin Deviled Clams
						{ "i", 211838 },	-- Waylaid Supplies: Heavy Wool Bandages
						{ "i", 211821 },	-- Waylaid Supplies: Medium Leather
						{ "i", 211820 },	-- Waylaid Supplies: Silver Bars
						{ "i", 211836 },	-- Waylaid Supplies: Smoked Bear Meat
						{ "i", 211835 },	-- Waylaid Supplies: Smoked Sagefish
						{ "i", 211823 },	-- Waylaid Supplies: Swiftthistle
						{ "i", 211831 },	-- Waylaid Supplies: Dark Leather Cloaks
						{ "i", 211833 },	-- Waylaid Supplies: Gray Woolen Shirts
						{ "i", 211824 },	-- Waylaid Supplies: Lesser Mana Potions
						{ "i", 211828 },	-- Waylaid Supplies: Minor Mana Oil
						{ "i", 211825 },	-- Waylaid Supplies: Rough Bronze Boots
						{ "i", 211829 },	-- Waylaid Supplies: Small Bronze Bombs
						{ "i", 211935 },	-- Waylaid Supplies: Elixir of Firepower
						{ "i", 211832 },	-- Waylaid Supplies: Hillman's Shoulders
						{ "i", 211830 },	-- Waylaid Supplies: Ornate Spyglasses
						{ "i", 211834 },	-- Waylaid Supplies: Pearl-clasped Cloaks
						{ "i", 211827 },	-- Waylaid Supplies: Runed Silver Rods
						{ "i", 211826 },	-- Waylaid Supplies: Silver Skeleton Keys
					},
					["maxReputation"] = { 2586, HONORED },	-- ACA / DSL, Honored.
					["description"] = "Grants 200 reputation.",
					["timeline"] = { ADDED_1_15_0, REMOVED_1_15_1 },
					["repeatable"] = true,
					["lvl"] = 15,
				}),
			}),
			n(createHeader({	-- Crafted
				readable = "Crafted",
				icon = 131034,
				text = {
					en = "Crafted",
					--[[
					es = "",
					de = "",
					fr = "",
					it = "",
					pt = "",
					ru = "",
					ko = "",
					]]--
					cn = "制造",
					tw = "製作",
				},
			}), {
				-- iLvl 10 - Crafted Supplies
				i(211327, {	-- Waylaid Supplies: Brown Linen Pants
					["cost"] = { { "i", 4343, 6 } },	-- Brown Linen Pants
					["groups"] = {
						i(211367),	-- Supply Shipment [iLvl 10 - Crafted]
					},
				}),
				i(211328, {	-- Waylaid Supplies: Brown Linen Robes
					["cost"] = { { "i", 6238, 4 } },	-- Brown Linen Robes
					["groups"] = {
						i(211367),	-- Supply Shipment [iLvl 10 - Crafted]
					},
				}),
				i(211319, {	-- Waylaid Supplies: Copper Shortswords
					["cost"] = { { "i", 2847, 6 } },	-- Copper Shortswords
					["groups"] = {
						i(211367),	-- Supply Shipment [iLvl 10 - Crafted]
					},
				}),
				i(211326, {	-- Waylaid Supplies: Embossed Leather Vests
					["cost"] = { { "i", 2300, 3 } },	-- Embossed Leather Vests
					["groups"] = {
						i(211367),	-- Supply Shipment [iLvl 10 - Crafted]
					},
				}),
				i(211325, {	-- Waylaid Supplies: Handstitched Leather Belts
					["cost"] = { { "i", 4237, 5 } },	-- Handstitched Leather Belts
					["groups"] = {
						i(211367),	-- Supply Shipment [iLvl 10 - Crafted]
					},
				}),
				i(211934, {	-- Waylaid Supplies: Healing Potions
					["cost"] = { { "i", 929, 10 } },	-- Healing Potions
					["groups"] = {
						i(211367),	-- Supply Shipment [iLvl 10 - Crafted]
					},
				}),
				i(211321, {	-- Waylaid Supplies: Lesser Magic Wands
					["cost"] = { { "i", 11287, 2 } },	-- Lesser Magic Wands
					["groups"] = {
						i(211367),	-- Supply Shipment [iLvl 10 - Crafted]
					},
				}),
				i(211318, {	-- Waylaid Supplies: Minor Healing Potions
					["cost"] = { { "i", 118, 20 } },	-- Minor Healing Potions
					["groups"] = {
						i(211367),	-- Supply Shipment [iLvl 10 - Crafted]
					},
				}),
				i(211322, {	-- Waylaid Supplies: Minor Wizard Oil
					["cost"] = { { "i", 20744, 2 } },	-- Minor Wizard Oil
					["groups"] = {
						i(211367),	-- Supply Shipment [iLvl 10 - Crafted]
					},
				}),
				i(211324, {	-- Waylaid Supplies: Rough Boomsticks
					["cost"] = { { "i", 4362, 3 } },	-- Rough Boomsticks
					["groups"] = {
						i(211367),	-- Supply Shipment [iLvl 10 - Crafted]
					},
				}),
				i(211323, {	-- Waylaid Supplies: Rough Copper Bombs
					["cost"] = { { "i", 4360, 12 } },	-- Rough Copper Bombs
					["groups"] = {
						i(211367),	-- Supply Shipment [iLvl 10 - Crafted]
					},
				}),
				i(211320, {	-- Waylaid Supplies: Runed Copper Pants
					["cost"] = { { "i", 3473, 3 } },	-- Runed Copper Pants
					["groups"] = {
						i(211367),	-- Supply Shipment [iLvl 10 - Crafted]
					},
				}),

				-- iLvl 25 - Crafted Supplies (Tier 1)
				i(211831, {	-- Waylaid Supplies: Dark Leather Cloaks
					["cost"] = { { "i", 2316, 2 } },	-- Dark Leather Cloaks
					["groups"] = {
						i(211840),	-- Supply Shipment [iLvl 25 - Crafted (Tier 1)]
					},
				}),
				i(211833, {	-- Waylaid Supplies: Gray Woolen Shirts
					["cost"] = { { "i", 2587, 4 } },	-- Gray Woolen Shirts
					["groups"] = {
						i(211840),	-- Supply Shipment [iLvl 25 - Crafted (Tier 1)]
					},
				}),
				i(211824, {	-- Waylaid Supplies: Lesser Mana Potions
					["cost"] = { { "i", 3385, 20 } },	-- Lesser Mana Potions
					["groups"] = {
						i(211840),	-- Supply Shipment [iLvl 25 - Crafted (Tier 1)]
					},
				}),
				i(211828, {	-- Waylaid Supplies: Minor Mana Oil
					["cost"] = { { "i", 20745, 2 } },	-- Minor Mana Oil
					["groups"] = {
						i(211840),	-- Supply Shipment [iLvl 25 - Crafted (Tier 1)]
					},
				}),
				i(211825, {	-- Waylaid Supplies: Rough Bronze Boots
					["cost"] = { { "i", 6350, 3 } },	-- Rough Bronze Boots
					["groups"] = {
						i(211840),	-- Supply Shipment [iLvl 25 - Crafted (Tier 1)]
					},
				}),
				i(211829, {	-- Waylaid Supplies: Small Bronze Bombs
					["cost"] = { { "i", 4374, 12 } },	-- Small Bronze Bombs
					["groups"] = {
						i(211840),	-- Supply Shipment [iLvl 25 - Crafted (Tier 1)]
					},
				}),

				-- iLvl 25 - Crafted Supplies (Tier 2)
				i(211935, {	-- Waylaid Supplies: Elixir of Firepower
					["cost"] = { { "i", 6373, 15 } },	-- Elixir of Firepower
					["groups"] = {
						i(211841),	-- Supply Shipment [iLvl 25 - Crafted (Tier 2)]
					},
				}),
				i(211832, {	-- Waylaid Supplies: Hillman's Shoulders
					["cost"] = { { "i", 4251, 2 } },	-- Hillman's Shoulders
					["groups"] = {
						i(211841),	-- Supply Shipment [iLvl 25 - Crafted (Tier 2)]
					},
				}),
				i(211830, {	-- Waylaid Supplies: Ornate Spyglasses
					["cost"] = { { "i", 5507, 2 } },	-- Ornate Spyglasses
					["groups"] = {
						i(211841),	-- Supply Shipment [iLvl 25 - Crafted (Tier 2)]
					},
				}),
				i(211834, {	-- Waylaid Supplies: Pearl-clasped Cloaks
					["cost"] = { { "i", 5542, 3 } },	-- Pearl-clasped Cloaks
					["groups"] = {
						i(211841),	-- Supply Shipment [iLvl 25 - Crafted (Tier 2)]
					},
				}),
				i(211827, {	-- Waylaid Supplies: Runed Silver Rods
					["cost"] = { { "i", 6339, 1 } },	-- Runed Silver Rods
					["groups"] = {
						i(211841),	-- Supply Shipment [iLvl 25 - Crafted (Tier 2)]
					},
				}),
				i(211826, {	-- Waylaid Supplies: Silver Skeleton Keys
					["cost"] = { { "i", 15869, 14 } },	-- Silver Skeleton Keys
					["groups"] = {
						i(211841),	-- Supply Shipment [iLvl 25 - Crafted (Tier 2)]
					},
				}),

				-- iLvl 40 - Crafted Supplies (Tier 3)
				applyclassicphase(SOD_PHASE_TWO, i(215407, {	-- Waylaid Supplies: Barbaric Shoulders
					["cost"] = { { "i", 5964, 4 } },	-- Barbaric Shoulders
					["groups"] = {
						i(217338),	-- Supply Shipment [iLvl 40 - Crafted (Tier 3)]
					},
				})),
				applyclassicphase(SOD_PHASE_TWO, i(215402, {	-- Waylaid Supplies: Big Iron Bombs
					["cost"] = { { "i", 4394, 8 } },	-- Big Iron Bomb
					["groups"] = {
						i(217338),	-- Supply Shipment [iLvl 40 - Crafted (Tier 3)]
					},
				})),
				applyclassicphase(SOD_PHASE_TWO, i(215401, {	-- Waylaid Supplies: Compact Harvest Reaper Kits
					["cost"] = { { "i", 4391, 2 } },	-- Compact Harvest Reaper Kits
					["groups"] = {
						i(217338),	-- Supply Shipment [iLvl 40 - Crafted (Tier 3)]
					},
				})),
				applyclassicphase(SOD_PHASE_TWO, i(215414, {	-- Waylaid Supplies: Crimson Silk Pantaloons
					["cost"] = { { "i", 7062, 4 } },	-- Crimson Silk Pantaloons
					["groups"] = {
						i(217338),	-- Supply Shipment [iLvl 40 - Crafted (Tier 3)]
					},
				})),
				applyclassicphase(SOD_PHASE_TWO, i(215403, {	-- Waylaid Supplies: Deadly Scopes
					["cost"] = { { "i", 10546, 4 } },	-- Deadly Scopes
					["groups"] = {
						i(217338),	-- Supply Shipment [iLvl 40 - Crafted (Tier 3)]
					},
				})),
				applyclassicphase(SOD_PHASE_TWO, i(215410, {	-- Waylaid Supplies: Dusky Belts
					-- TODO: Cost is currently bugged ingame. Fix when Blizzard also does.
					["cost"] = { { "i", 2840, 20 } },	-- Dusky Belts
					["timeline"] = { CREATED_1_15_1 },
					["groups"] = {
						i(217338),	-- Supply Shipment [iLvl 40 - Crafted (Tier 3)]
					},
				})),
				applyclassicphase(SOD_PHASE_TWO, i(215395, {	-- Waylaid Supplies: Elixirs of Agility
					["cost"] = { { "i", 8949, 12 } },	-- Elixirs of Agility
					["groups"] = {
						i(217338),	-- Supply Shipment [iLvl 40 - Crafted (Tier 3)]
					},
				})),
				applyclassicphase(SOD_PHASE_TWO, i(215411, {	-- Waylaid Supplies: Frost Leather Cloaks
					["cost"] = { { "i", 7377, 3 } },	-- Frost Leather Cloaks
					["groups"] = {
						i(217338),	-- Supply Shipment [iLvl 40 - Crafted (Tier 3)]
					},
				})),
				applyclassicphase(SOD_PHASE_TWO, i(215385, {	-- Waylaid Supplies: Gold Bars
					["cost"] = { { "i", 3577, 4 } },	-- Gold Bars
					["groups"] = {
						i(217338),	-- Supply Shipment [iLvl 40 - Crafted (Tier 3)]
					},
				})),
				applyclassicphase(SOD_PHASE_TWO, i(215393, {	-- Waylaid Supplies: Greater Healing Potions
					["cost"] = { { "i", 1710, 16 } },	-- Greater Healing Potions
					["groups"] = {
						i(217338),	-- Supply Shipment [iLvl 40 - Crafted (Tier 3)]
					},
				})),
				applyclassicphase(SOD_PHASE_TWO, i(215398, {	-- Waylaid Supplies: Green Iron Bracers
					["cost"] = { { "i", 3835, 5 } },	-- Green Iron Bracers
					["groups"] = {
						i(217338),	-- Supply Shipment [iLvl 40 - Crafted (Tier 3)]
					},
				})),
				applyclassicphase(SOD_PHASE_TWO, i(215408, {	-- Waylaid Supplies: Guardian Gloves
					["cost"] = { { "i", 5966, 6 } },	-- Guardian Gloves
					["groups"] = {
						i(217338),	-- Supply Shipment [iLvl 40 - Crafted (Tier 3)]
					},
				})),
				applyclassicphase(SOD_PHASE_TWO, i(215399, {	-- Waylaid Supplies: Heavy Mithril Gauntlets
					["cost"] = { { "i", 7919, 4 } },	-- Heavy Mithril Gauntlets
					["groups"] = {
						i(217338),	-- Supply Shipment [iLvl 40 - Crafted (Tier 3)]
					},
				})),
				applyclassicphase(SOD_PHASE_TWO, i(215415, {	-- Waylaid Supplies: Rich Purple Silk Shirts
					["cost"] = { { "i", 4335, 5 } },	-- Rich Purple Silk Shirts
					["groups"] = {
						i(217338),	-- Supply Shipment [iLvl 40 - Crafted (Tier 3)]
					},
				})),
				applyclassicphase(SOD_PHASE_TWO, i(215412, {	-- Waylaid Supplies: Shadowskin Gloves
					-- TODO: Cost is currently bugged ingame. Fix when Blizzard also does.
					["cost"] = { { "i", 2840, 20 } },	-- Dusky Belts
					["timeline"] = { CREATED_1_15_1 },
					["groups"] = {
						i(217338),	-- Supply Shipment [iLvl 40 - Crafted (Tier 3)]
					},
				})),

				-- iLvl 40 - Crafted Supplies (Tier 4)
				applyclassicphase(SOD_PHASE_TWO, i(215396, {	-- Waylaid Supplies: Elixirs of Greater Defense
					["cost"] = { { "i", 8951, 14 } },	-- Elixir of Greater Defense
					["groups"] = {
						i(217339),	-- Supply Shipment [iLvl 40 - Crafted (Tier 4)]
					},
				})),
				applyclassicphase(SOD_PHASE_TWO, i(215397, {	-- Waylaid Supplies: Massive Iron Axes
					["cost"] = { { "i", 3855, 2 } },	-- Massive Iron Axe
					["groups"] = {
						i(217339),	-- Supply Shipment [iLvl 40 - Crafted (Tier 4)]
					},
				})),
				applyclassicphase(SOD_PHASE_TWO, i(215404, {	-- Waylaid Supplies: Mithril Blunderbuss
					["cost"] = { { "i", 10508, 2 } },	-- Mithril Blunderbuss
					["groups"] = {
						i(217339),	-- Supply Shipment [iLvl 40 - Crafted (Tier 4)]
					},
				})),
				applyclassicphase(SOD_PHASE_TWO, i(215416, {	-- Waylaid Supplies: White Bandit Masks
					["cost"] = { { "i", 10008, 4 } },	-- White Bandit Mask
					["groups"] = {
						i(217339),	-- Supply Shipment [iLvl 40 - Crafted (Tier 4)]
					},
				})),
				applyclassicphase(SOD_PHASE_TWO, i(215409, {	-- Waylaid Supplies: Turtle Scale Bracers
					["cost"] = { { "i", 8198, 3 } },	-- Turtle Scale Bracers
					["groups"] = {
						i(217339),	-- Supply Shipment [iLvl 40 - Crafted (Tier 4)]
					},
				})),

				-- iLvl 50 - Crafted Supplies (Tier 5)
				applyclassicphase(SOD_PHASE_THREE, i(220940, {	-- Waylaid Supplies: Black Mageweave Headbands
					["cost"] = { { "i", 10024, 5 } },	-- Black Mageweave Headband
					["groups"] = {
						i(221009),	-- Supply Shipment [iLvl 50 - Crafted (Tier 5)]
					},
				})),
				applyclassicphase(SOD_PHASE_THREE, i(220928, {	-- Waylaid Supplies: Enchanted Thorium Bars
					["cost"] = { { "i", 12655, 4 } },	-- Enchanted Thorium Bar
					["groups"] = {
						i(221009),	-- Supply Shipment [iLvl 50 - Crafted (Tier 5)]
					},
				})),
				applyclassicphase(SOD_PHASE_THREE, i(220931, {	-- Waylaid Supplies: Hi-Explosive Bombs
					["cost"] = { { "i", 10562, 16 } },	-- Hi-Explosive Bomb
					["groups"] = {
						i(221009),	-- Supply Shipment [iLvl 50 - Crafted (Tier 5)]
					},
				})),
				applyclassicphase(SOD_PHASE_THREE, i(220930, {	-- Waylaid Supplies: Major Healing Potions
					["cost"] = { { "i", 13446, 8 } },	-- Major Healing Potion
					["groups"] = {
						i(221009),	-- Supply Shipment [iLvl 50 - Crafted (Tier 5)]
					},
				})),
				applyclassicphase(SOD_PHASE_THREE, i(220934, {	-- Waylaid Supplies: Mithril Coifs
					["cost"] = { { "i", 7931, 3 } },	-- Mithril Coif
					["groups"] = {
						i(221009),	-- Supply Shipment [iLvl 50 - Crafted (Tier 5)]
					},
				})),
				applyclassicphase(SOD_PHASE_THREE, i(220937, {	-- Waylaid Supplies: Rugged Armor Kits
					["cost"] = { { "i", 15564, 12 } },	-- Rugged Armor Kit
					["groups"] = {
						i(221009),	-- Supply Shipment [iLvl 50 - Crafted (Tier 5)]
					},
				})),
				applyclassicphase(SOD_PHASE_THREE, i(220929, {	-- Waylaid Supplies: Superior Mana Potions
					["cost"] = { { "i", 13443, 6 } },	-- Superior Mana Potion
					["groups"] = {
						i(221009),	-- Supply Shipment [iLvl 50 - Crafted (Tier 5)]
					},
				})),
				applyclassicphase(SOD_PHASE_THREE, i(220935, {	-- Waylaid Supplies: Thorium Belts
					["cost"] = { { "i", 12406, 5 } },	-- Thorium Belt
					["groups"] = {
						i(221009),	-- Supply Shipment [iLvl 50 - Crafted (Tier 5)]
					},
				})),
				applyclassicphase(SOD_PHASE_THREE, i(220942, {	-- Waylaid Supplies: Tuxedo Shirts
					["cost"] = { { "i", 10034, 4 } },	-- Tuxedo Shirt
					["groups"] = {
						i(221009),	-- Supply Shipment [iLvl 50 - Crafted (Tier 5)]
					},
				})),
				applyclassicphase(SOD_PHASE_THREE, i(220938, {	-- Waylaid Supplies: Wicked Leather Bracers
					["cost"] = { { "i", 15084, 6 } },	-- Wicked Leather Bracer
					["groups"] = {
						i(221009),	-- Supply Shipment [iLvl 50 - Crafted (Tier 5)]
					},
				})),
				applyclassicphase(SOD_PHASE_THREE, i(220932, {	-- Waylaid Supplies: Thorium Grenades
					["cost"] = { { "i", 15993, 3 } },	-- Thorium Grenade
					["groups"] = {
						i(221009),	-- Supply Shipment [iLvl 50 - Crafted (Tier 5)]
					},
				})),

				-- iLvl 50 - Crafted Supplies (Tier 6)
				applyclassicphase(SOD_PHASE_THREE, i(220941, {	-- Waylaid Supplies: Runecloth Belts
					["cost"] = { { "i", 13856, 6 } },	-- Runecloth Belt
					["groups"] = {
						i(221010),	-- Supply Shipment [iLvl 50 - Crafted (Tier 6)]
					},
				})),
				applyclassicphase(SOD_PHASE_THREE, i(220939, {	-- Waylaid Supplies: Runic Leather Bracers
					["cost"] = { { "i", 15092, 5 } },	-- Runic Leather Bracer
					["groups"] = {
						i(221010),	-- Supply Shipment [iLvl 50 - Crafted (Tier 6)]
					},
				})),
				applyclassicphase(SOD_PHASE_THREE, i(220933, {	-- Waylaid Supplies: Thorium Rifles
					["cost"] = { { "i", 15995, 2 } },	-- Thorium Rifle
					["groups"] = {
						i(221010),	-- Supply Shipment [iLvl 50 - Crafted (Tier 6)]
					},
				})),
				applyclassicphase(SOD_PHASE_THREE, i(220936, {	-- Waylaid Supplies: Truesilver Gauntlets
					["cost"] = { { "i", 7938, 2 } },	-- Truesilver Gauntlet
					["groups"] = {
						i(221010),	-- Supply Shipment [iLvl 50 - Crafted (Tier 6)]
					},
				})),

			}),
			n(createHeader({	-- Gathering
				readable = "Gathering",
				icon = 131025,
				text = {
					en = "Gathering",
					--[[
					es = "",
					de = "",
					fr = "",
					it = "",
					pt = "",
					ru = "",
					ko = "",
					]]--
					cn = "采集",
					tw = "採集",
				},
			}), {
				-- iLvl 10 - Gathering Supplies
				i(211331, {	-- Waylaid Supplies: Brilliant Smallfish
					["cost"] = { { "i", 6290, 20 } },	-- Brilliant Smallfish
					["groups"] = {
						i(211365),	-- Supply Shipment [iLvl 10 - Gathering]
					},
				}),
				i(210771, {	-- Waylaid Supplies: Copper Bars
					["cost"] = { { "i", 2840, 20 } },	-- Copper Bars
					["groups"] = {
						i(211365),	-- Supply Shipment [iLvl 10 - Gathering]
					},
				}),
				i(211332, {	-- Waylaid Supplies: Heavy Linen Bandages
					["cost"] = { { "i", 2581, 10 } },	-- Heavy Linen Bandages
					["groups"] = {
						i(211365),	-- Supply Shipment [iLvl 10 - Gathering]
					},
				}),
				i(211329, {	-- Waylaid Supplies: Herb Baked Eggs
					["cost"] = { { "i", 6888, 20 } },	-- Herb Baked Eggs
					["groups"] = {
						i(211365),	-- Supply Shipment [iLvl 10 - Gathering]
					},
				}),
				i(211315, {	-- Waylaid Supplies: Light Leather
					["cost"] = { { "i", 2318, 14 } },	-- Light Leather
					["groups"] = {
						i(211365),	-- Supply Shipment [iLvl 10 - Gathering]
					},
				}),
				i(211316, {	-- Waylaid Supplies: Peacebloom
					["cost"] = { { "i", 2447, 20 } },	-- Peacebloom
					["groups"] = {
						i(211365),	-- Supply Shipment [iLvl 10 - Gathering]
					},
				}),
				i(211933, {	-- Waylaid Supplies: Rough Stone
					["cost"] = { { "i", 2835, 10 } },	-- Rough Stone
					["groups"] = {
						i(211365),	-- Supply Shipment [iLvl 10 - Gathering]
					},
				}),
				i(211317, {	-- Waylaid Supplies: Silverleaf
					["cost"] = { { "i", 765, 20 } },	-- Silverleaf
					["groups"] = {
						i(211365),	-- Supply Shipment [iLvl 10 - Gathering]
					},
				}),
				i(211330, {	-- Waylaid Supplies: Spiced Wolf Meat
					["cost"] = { { "i", 2680, 20 } },	-- Spiced Wolf Meat
					["groups"] = {
						i(211365),	-- Supply Shipment [iLvl 10 - Gathering]
					},
				}),

				-- iLvl 25 - Gathering Supplies
				i(211819, {	-- Waylaid Supplies: Bronze Bars
					["cost"] = { { "i", 2841, 12 } },	-- Bronze Bars
					["groups"] = {
						i(211839),	-- Supply Shipment [iLvl 25 - Gathered]
					},
				}),
				i(211822, {	-- Waylaid Supplies: Bruiseweed
					["cost"] = { { "i", 2453, 20 } },	-- Bruiseweed
					["groups"] = {
						i(211839),	-- Supply Shipment [iLvl 25 - Gathered]
					},
				}),
				i(211837, {	-- Waylaid Supplies: Goblin Deviled Clams
					["cost"] = { { "i", 5527, 8 } },	-- Goblin Deviled Clams
					["groups"] = {
						i(211839),	-- Supply Shipment [iLvl 25 - Gathered]
					},
				}),
				i(211838, {	-- Waylaid Supplies: Heavy Wool Bandages
					["cost"] = { { "i", 3531, 15 } },	-- Heavy Wool Bandages
					["groups"] = {
						i(211839),	-- Supply Shipment [iLvl 25 - Gathered]
					},
				}),
				i(211821, {	-- Waylaid Supplies: Medium Leather
					["cost"] = { { "i", 2319, 12 } },	-- Medium Leather
					["groups"] = {
						i(211839),	-- Supply Shipment [iLvl 25 - Gathered]
					},
				}),
				i(211820, {	-- Waylaid Supplies: Silver Bars
					["cost"] = { { "i", 2842, 6 } },	-- Silver Bars
					["groups"] = {
						i(211839),	-- Supply Shipment [iLvl 25 - Gathered]
					},
				}),
				i(211836, {	-- Waylaid Supplies: Smoked Bear Meat
					["cost"] = { { "i", 6890, 20 } },	-- Smoked Bear Meat
					["groups"] = {
						i(211839),	-- Supply Shipment [iLvl 25 - Gathered]
					},
				}),
				i(211835, {	-- Waylaid Supplies: Smoked Sagefish
					["cost"] = { { "i", 21072, 15 } },	-- Smoked Sagefish
					["groups"] = {
						i(211839),	-- Supply Shipment [iLvl 25 - Gathered]
					},
				}),
				i(211823, {	-- Waylaid Supplies: Swiftthistle
					["cost"] = { { "i", 2452, 20 } },	-- Swiftthistle
					["groups"] = {
						i(211839),	-- Supply Shipment [iLvl 25 - Gathered]
					},
				}),

				-- iLvl 40 - Gathering Supplies
				applyclassicphase(SOD_PHASE_TWO, i(215389, {	-- Waylaid Supplies: Fadeleaf
					["cost"] = { { "i", 3818, 16 } },	-- Fadeleaf
					["groups"] = {
						i(217337),	-- Supply Shipment [iLvl 40 - Gathered]
					},
				})),
				applyclassicphase(SOD_PHASE_TWO, i(215421, {	-- Waylaid Supplies: Fire Oil
					["cost"] = { { "i", 6371, 10 } },	-- Fire Oil
					["groups"] = {
						i(217337),	-- Supply Shipment [iLvl 40 - Gathered]
					},
				})),
				applyclassicphase(SOD_PHASE_TWO, i(215413, {	-- Waylaid Supplies: Formal White Shirts
					["cost"] = { { "i", 4334, 3 } },	-- Formal White Shirts
					["groups"] = {
						i(217337),	-- Supply Shipment [iLvl 40 - Gathered]
					},
				})),
				applyclassicphase(SOD_PHASE_TWO, i(215387, {	-- Waylaid Supplies: Heavy Hide
					["cost"] = { { "i", 4235, 5 } },	-- Heavy Hide
					["groups"] = {
						i(217337),	-- Supply Shipment [iLvl 40 - Gathered]
					},
				})),
				applyclassicphase(SOD_PHASE_TWO, i(215419, {	-- Waylaid Supplies: Heavy Silk Bandages
					["cost"] = { { "i", 6451, 10 } },	-- Heavy Silk Bandages
					["groups"] = {
						i(217337),	-- Supply Shipment [iLvl 40 - Gathered]
					},
				})),
				applyclassicphase(SOD_PHASE_TWO, i(215390, {	-- Waylaid Supplies: Khadgar's Whisker
					["cost"] = { { "i", 3358, 10 } },	-- Khadgar's Whisker
					["groups"] = {
						i(217337),	-- Supply Shipment [iLvl 40 - Gathered]
					},
				})),
				applyclassicphase(SOD_PHASE_TWO, i(215386, {	-- Waylaid Supplies: Mithril Bars
					["cost"] = { { "i", 3860, 6 } },	-- Mithril Bars
					["groups"] = {
						i(217337),	-- Supply Shipment [iLvl 40 - Gathered]
					},
				})),
				applyclassicphase(SOD_PHASE_TWO, i(215392, {	-- Waylaid Supplies: Purple Lotus
					["cost"] = { { "i", 8831, 8 } },	-- Purple Lotus
					["groups"] = {
						i(217337),	-- Supply Shipment [iLvl 40 - Gathered]
					},
				})),
				applyclassicphase(SOD_PHASE_TWO, i(215420, {	-- Waylaid Supplies: Rockscale Cod
					["cost"] = { { "i", 4594, 40 } },	-- Rockscale Cod
					["groups"] = {
						i(217337),	-- Supply Shipment [iLvl 40 - Gathered]
					},
				})),
				applyclassicphase(SOD_PHASE_TWO, i(215400, {	-- Waylaid Supplies: Solid Grinding Stones
					["cost"] = { { "i", 7966, 10 } },	-- Solid Grinding Stones
					["groups"] = {
						i(217337),	-- Supply Shipment [iLvl 40 - Gathered]
					},
				})),
				applyclassicphase(SOD_PHASE_TWO, i(215417, {	-- Waylaid Supplies: Soothing Turtle Bisque
					["cost"] = { { "i", 3729, 10 } },	-- Soothing Turtle Bisque
					["groups"] = {
						i(217337),	-- Supply Shipment [iLvl 40 - Gathered]
					},
				})),
				applyclassicphase(SOD_PHASE_TWO, i(215418, {	-- Waylaid Supplies: Spider Sausages
					["cost"] = { { "i", 17222, 10 } },	-- Spider Sausages
					["groups"] = {
						i(217337),	-- Supply Shipment [iLvl 40 - Gathered]
					},
				})),
				applyclassicphase(SOD_PHASE_TWO, i(215388, {	-- Waylaid Supplies: Thick Leather
					["cost"] = { { "i", 4304, 10 } },	-- Thick Leather
					["groups"] = {
						i(217337),	-- Supply Shipment [iLvl 40 - Gathered]
					},
				})),
				applyclassicphase(SOD_PHASE_TWO, i(215391, {	-- Waylaid Supplies: Wintersbite
					["cost"] = { { "i", 3819, 20 } },	-- Wintersbite
					["groups"] = {
						i(217337),	-- Supply Shipment [iLvl 40 - Gathered]
					},
				})),

				-- iLvl 50 - Gathering Supplies
				applyclassicphase(SOD_PHASE_THREE, i(220923, {	-- Waylaid Supplies: Dreamfoil
					["cost"] = { { "i", 13463, 6 } },	-- Dreamfoil
					["groups"] = {
						i(221008),	-- Supply Shipment [iLvl 50 - Gathered]
					},
				})),
				applyclassicphase(SOD_PHASE_THREE, i(220921, {	-- Waylaid Supplies: Heavy Mageweave Bandages
					["cost"] = { { "i", 8545, 14 } },	-- Heavy Mageweave Bandage
					["groups"] = {
						i(221008),	-- Supply Shipment [iLvl 50 - Gathered]
					},
				})),
				applyclassicphase(SOD_PHASE_THREE, i(220919, {	-- Waylaid Supplies: Nightfin Soup
					["cost"] = { { "i", 13931, 8 } },	-- Nightfin Soup
					["groups"] = {
						i(221008),	-- Supply Shipment [iLvl 50 - Gathered]
					},
				})),
				applyclassicphase(SOD_PHASE_THREE, i(220926, {	-- Waylaid Supplies: Rugged Leather
					["cost"] = { { "i", 8170, 14 } },	-- Rugged Leather
					["groups"] = {
						i(221008),	-- Supply Shipment [iLvl 50 - Gathered]
					},
				})),
				applyclassicphase(SOD_PHASE_THREE, i(220922, {	-- Waylaid Supplies: Sungrass
					["cost"] = { { "i", 8838, 15 } },	-- Sungrass
					["groups"] = {
						i(221008),	-- Supply Shipment [iLvl 50 - Gathered]
					},
				})),
				applyclassicphase(SOD_PHASE_THREE, i(220920, {	-- Waylaid Supplies: Tender Wolf Steaks
					["cost"] = { { "i", 18045, 12 } },	-- Tender Wolf Steak
					["groups"] = {
						i(221008),	-- Supply Shipment [iLvl 50 - Gathered]
					},
				})),
				applyclassicphase(SOD_PHASE_THREE, i(220927, {	-- Waylaid Supplies: Thick Hide
					["cost"] = { { "i", 8169, 8 } },	-- Thick Hide
					["groups"] = {
						i(221008),	-- Supply Shipment [iLvl 50 - Gathered]
					},
				})),
				applyclassicphase(SOD_PHASE_THREE, i(220925, {	-- Waylaid Supplies: Thorium Bars
					["cost"] = { { "i", 12359, 16 } },	-- Thorium Bars
					["groups"] = {
						i(221008),	-- Supply Shipment [iLvl 50 - Gathered]
					},
				})),
				applyclassicphase(SOD_PHASE_THREE, i(220924, {	-- Waylaid Supplies: Truesilver Bars
					["cost"] = { { "i", 6037, 12 } },	-- Truesilver Bars
					["groups"] = {
						i(221008),	-- Supply Shipment [iLvl 50 - Gathered]
					},
				})),
				applyclassicphase(SOD_PHASE_THREE, i(220918, {	-- Waylaid Supplies: Undermine Clam Chowder
					["cost"] = { { "i", 16766, 16 } },	-- Undermine Clam Chowder
					["groups"] = {
						i(221008),	-- Supply Shipment [iLvl 50 - Gathered]
					},
				})),
			}),
		},
	}),

	----------------------------
	-- UNSORTED QUESTS        --
	----------------------------
	--[[
	-- No peaking - Crieve
	-- Tier 0.5 Quests
	q(84147),	-- An Earnest Proposition
	q(84150),	-- An Earnest Proposition
	q(84155),	-- An Earnest Proposition
	q(84152),	-- An Earnest Proposition
	q(84149),	-- An Earnest Proposition
	q(84151),	-- An Earnest Proposition
	q(84160),	-- An Earnest Proposition
	q(84154),	-- An Earnest Proposition
	q(84157),	-- An Earnest Proposition
	q(84162),	-- An Earnest Proposition
	q(84148),	-- An Earnest Proposition
	q(84153),	-- An Earnest Proposition
	q(84156),	-- An Earnest Proposition
	q(84158),	-- An Earnest Proposition
	q(84159),	-- An Earnest Proposition
	q(84161),	-- An Earnest Proposition
	q(84179),	-- Anthion's Parting Words
	q(84182),	-- Anthion's Parting Words
	q(84181),	-- Anthion's Parting Words
	q(84192),	-- Anthion's Parting Words
	q(84189),	-- Anthion's Parting Words
	q(84190),	-- Anthion's Parting Words
	q(84186),	-- Anthion's Parting Words
	q(84180),	-- Anthion's Parting Words
	q(84194),	-- Anthion's Parting Words
	q(84187),	-- Anthion's Parting Words
	q(84183),	-- Anthion's Parting Words
	q(84184),	-- Anthion's Parting Words
	q(84193),	-- Anthion's Parting Words
	q(84185),	-- Anthion's Parting Words
	q(84191),	-- Anthion's Parting Words
	q(84188),	-- Anthion's Parting Words
	q(84163),	-- Just Compensation
	q(84170),	-- Just Compensation
	q(84176),	-- Just Compensation
	q(84164),	-- Just Compensation
	q(84178),	-- Just Compensation
	q(84165),	-- Just Compensation
	q(84166),	-- Just Compensation
	q(84171),	-- Just Compensation
	q(84169),	-- Just Compensation
	q(84172),	-- Just Compensation
	q(84168),	-- Just Compensation
	q(84177),	-- Just Compensation
	q(84167),	-- Just Compensation
	q(84173),	-- Just Compensation
	q(84175),	-- Just Compensation
	q(84174),	-- Just Compensation
	q(84205),	-- Saving the Best for Last
	q(84197),	-- Saving the Best for Last
	q(84195),	-- Saving the Best for Last
	q(84198),	-- Saving the Best for Last
	q(84208),	-- Saving the Best for Last
	q(84200),	-- Saving the Best for Last
	q(84203),	-- Saving the Best for Last
	q(84209),	-- Saving the Best for Last
	q(84199),	-- Saving the Best for Last
	q(84204),	-- Saving the Best for Last
	q(84201),	-- Saving the Best for Last
	q(84206),	-- Saving the Best for Last
	q(84207),	-- Saving the Best for Last
	q(84202),	-- Saving the Best for Last
	q(84210),	-- Saving the Best for Last
	q(84196),	-- Saving the Best for Last

	-- Mage Quests


	-- Priest Quests


	q(84412),	-- A Diplomatic Mission
	q(84327),	-- A Diplomatic Mission
	q(84398),	-- A Study of the Light
	q(84135),	-- Beach Bot
	q(84212),	-- Bookin' it Back
	q(84326),	-- Diplomat Ring
	q(84411),	-- Diplomat Ring
	q(84324),	-- Diplomatic Overtures
	q(84408),	-- Diplomatic Overtures
	q(84495),	-- Fiery Plate Gauntlets
	q(84138),	-- Frosty Favors
	q(84394),	-- Greater Friend of the Library
	q(84369),	-- Healing the Healer
	q(84317),	-- Infinite Midnight
	q(84399),	-- Ka-Boom!
	q(84124),	-- Legacy of Valor
	q(84320),	-- Lost Heirloom
	q(84405),	-- Lost Heirloom
	q(84396),	-- Magma or Lava?
	q(84137),	-- Mechanical Romance
	q(84015),	-- More Greater Moonstones
	q(84016),	-- More Moondragon Scales
	q(84014),	-- More Moonroot
	q(84011),	-- More Star Lotus
	q(84013),	-- More Starshells
	q(84012),	-- More Starsilver Ore
	q(84402),	-- Necromancy 101
	q(84397),	-- Northern Kalimdor - A Comprehensive Guide
	q(83192),	-- Otherworldly Treasure
	q(83189),	-- Otherworldly Treasure
	q(83191),	-- Otherworldly Treasure
	q(83190),	-- Otherworldly Treasure
	q(84525),	-- Otherworldly Treasure
	q(83188),	-- Otherworldly Treasure
	q(84211),	-- Poacher's Den
	q(84146),	-- Red Bag Blues
	q(84321),	-- Relic of Light
	q(84406),	-- Relic of Light
	q(84328),	-- Repairing the Shard
	q(84413),	-- Repairing the Shard
	q(84213),	-- Rift Away
	q(84322),	-- Scarlet Research
	q(84401),	-- Scourge: Undead Menace or Misunderstood?
	q(84410),	-- Shrine of Cooperation
	q(84325),	-- Shrine of Cooperation
	q(84496),	-- Sweet Serenity
	q(84329),	-- The Convocation Assembles
	q(84400),	-- The Knight and the Lady
	q(84331),	-- The Miracle
	q(84323),	-- The Prize Within
	q(84407),	-- The Prize Within
	q(84395),	-- Undead Potatoes
	]]--
}))));

-- Dungeon & Raid Phase Requirements
root(ROOTS.Instances, expansion(EXPANSION.CLASSIC, {
	applyclassicphase(SOD_PHASE_TWO, inst(239)),	-- Uldaman
	applyclassicphase(SOD_PHASE_TWO, inst(233)),	-- Razorfen Downs
	applyclassicphase(SOD_PHASE_THREE, inst(232)),	-- Maraudon
	applyclassicphase(SOD_PHASE_THREE, inst(241)),	-- Zul'Farrak
	applyclassicphase(SOD_PHASE_THREE, inst(237)),	-- The Temple of Atal'hakkar
	applyclassicphase(SOD_PHASE_THREE, inst(228)),	-- Blackrock Depths
	applyclassicphase(SOD_PHASE_FOUR, inst(229)),	-- Blackrock Spire
	applyclassicphase(SOD_PHASE_FOUR, inst(230)),	-- Dire Maul
	applyclassicphase(SOD_PHASE_FOUR, inst(246)),	-- Scholomance
	applyclassicphase(SOD_PHASE_FOUR, inst(236)),	-- Stratholme
	applyclassicphase(SOD_PHASE_FOUR, n(TIER_ZERO_POINT_FIVE_SETS)),	-- Tier 0.5
	applyclassicphase(SOD_PHASE_FOUR, n(WORLD_BOSSES)),	-- World Bosses
	applyclassicphase(SOD_PHASE_FOUR, inst(741)),	-- Molten Core
	applyclassicphase(SOD_PHASE_FOUR, inst(760)),	-- Onyxia's Lair
}));

-- World Drop Recipes
root(ROOTS.WorldDrops, expansion(EXPANSION.CLASSIC, {
	filter(RECIPES, {
		cl(DRUID, {
			applyclassicphase(SOD_PHASE_TWO, i(216764, {	-- Leaflet of Deeper Wilds
				["spellID"] = 436956,	-- Deeper Wilds
				["f"] = RECIPES,
			})),
			applyclassicphase(SOD_PHASE_TWO, i(216771, {	-- Leaflet of Enhanced Restoration
				["spellID"] = 417123,	-- Enhanced Restoration
				["f"] = RECIPES,
			})),
			applyclassicphase(SOD_PHASE_TWO, i(216767, {	-- Leaflet of Revive
				["spellID"] = 437138,	-- Revive
				["f"] = RECIPES,
			})),
		}),
		cl(HUNTER, {
			applyclassicphase(SOD_PHASE_TWO, i(216770, {	-- Treatise on Aspect of the Viper
				["spellID"] = 415423,	-- Aspect of the Viper
				["f"] = RECIPES,
			})),
			applyclassicphase(SOD_PHASE_FOUR, i(226401, {	-- Treatise on the Heart of the Lion
				["spellID"] = 409580,	-- Heart of the Lion
				["f"] = RECIPES,
			})),
		}),
		cl(MAGE, {
			applyclassicphase(SOD_PHASE_TWO, i(216740, {	-- Tome of Expanded Intellect
				["spellID"] = 436949,	-- Expanded Intellect
				["f"] = RECIPES,
			})),
		}),
		cl(PALADIN, {
			applyclassicphase(SOD_PHASE_TWO, i(216768, {	-- Testament of Enhanced Blessings
				["spellID"] = 435984,	-- Enhanced Blessings
				["f"] = RECIPES,
			})),
			applyclassicphase(SOD_PHASE_FOUR, i(226398, {	-- Testament of Martyrdom
				["spellID"] = 407798,	-- Seal of Martyrdom
				["f"] = RECIPES,
			})),
			applyclassicphase(SOD_PHASE_FOUR, i(226400, {	-- Testament of the Exorcist
				["spellID"] = 415076,	-- Exorcist
				["f"] = RECIPES,
			})),
		}),
		cl(PRIEST, {
			applyclassicphase(SOD_PHASE_TWO, i(216744, {	-- Scroll of Increased Fortitude
				["spellID"] = 436951,	-- Increased Fortitude
				["f"] = RECIPES,
			})),
			applyclassicphase(SOD_PHASE_TWO, i(216745, {	-- Scroll of Shadowfiend
				["spellID"] = 401977,	-- Shadowfiend
				["f"] = RECIPES,
			})),
		}),
		cl(ROGUE, {
			applyclassicphase(SOD_PHASE_FOUR, i(226394, {	-- Manual of Atrophic Poison
				["spellID"] = 439503,	-- Atrophic Poison
				["f"] = RECIPES,
			})),
			applyclassicphase(SOD_PHASE_FOUR, i(226395, {	-- Manual of Numbing Poison
				["spellID"] = 439505,	-- Numbing Poison
				["f"] = RECIPES,
			})),
			applyclassicphase(SOD_PHASE_FOUR, i(226396, {	-- Manual of Occult Poison
				["spellID"] = 458822,	-- Occult Poison I
				["f"] = RECIPES,
			})),
			applyclassicphase(SOD_PHASE_TWO, i(216738, {	-- Manual of Redirect
				["spellID"] = 438040,	-- Redirect
				["f"] = RECIPES,
			})),
			applyclassicphase(SOD_PHASE_FOUR, i(226397, {	-- Manual of Sebacious Poison
				["spellID"] = 439500,	-- Sebacious Poison
				["f"] = RECIPES,
			})),
		}),
		cl(SHAMAN, {
			applyclassicphase(SOD_PHASE_FOUR, i(226402, {	-- Revelation of Shamanistic Rage
				["spellID"] = 425336,	-- Shamanistic Rage
				["f"] = RECIPES,
			})),
			applyclassicphase(SOD_PHASE_TWO, i(216769, {	-- Revelation of Totemic Projection
				["spellID"] = 437009,	-- Totemic Projection
				["f"] = RECIPES,
			})),
		}),
		cl(WARLOCK, {
			applyclassicphase(SOD_PHASE_TWO, i(216748, {	-- Grimoire of Portal of Summoning
				["spellID"] = 437169,	-- Portal of Summoning
				["f"] = RECIPES,
			})),
			applyclassicphase(SOD_PHASE_TWO, i(216747, {	-- Grimoire of Soul Harvesting
				["spellID"] = 437032,	-- Soul Harvesting
				["f"] = RECIPES,
			})),
		}),
		cl(WARRIOR, {
			applyclassicphase(SOD_PHASE_TWO, i(216746, {	-- Handbook of Commanding Shout
				["spellID"] = 403215,	-- Commanding Shout
				["f"] = RECIPES,
			})),
			applyclassicphase(SOD_PHASE_FOUR, i(226403, {	-- Handbook of Meathook
				["spellID"] = 403228,	-- Meathook
				["f"] = RECIPES,
			})),
		}),
	}),
}));

root(ROOTS.NeverImplemented, {
	applyclassicphase(SOD_PHASE_ONE, n(SEASON_OF_DISCOVERY_HEADER, bubbleDownSelf({ ["timeline"] = { REMOVED_2_0_1 } }, {
		i(211445),	-- Barbaric Recurve
		i(211443),	-- Blade of Rage
		i(211444),	-- Summoner's Cloak
		i(211501),	-- Chestguard of Might
		i(211263),	-- Judgement Chestguard
		i(211940),	-- Ecks'av's Tribal Guardian
		i(211944),	-- Tojara's Will
		i(211941),	-- Windwalker's Yari

		-- Phase 3
		applyclassicphase(SOD_PHASE_THREE, i(220619)),	-- Atal'ai Blood Ceremony
	}))),
});
-- #endif