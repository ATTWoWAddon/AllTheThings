---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(DRAGON_ISLES, bubbleDown({ ["timeline"] = { ADDED_10_2_0 } }, {
	m(EMERALD_DREAM, {
		prof(SUPPLY_SHIPMENTS, bubbleDownSelf({ ["requireSkill"] = SUPPLY_SHIPMENTS }, {
			["cr"] = 211236,	-- Vashonir
			["coord"] = { 52.5, 62.5, EMERALD_DREAM },
			["groups"] = {
				n(CRAFTABLES, {
					i(210041),	-- Shipment of Goods
				}),
				filter(RECIPES, sharedData({ ["u"] = TRAINING }, {
					r(424810),	-- Cloth Shipment
					r(427111),	-- Diamond Shipment
					r(424695),	-- Draconium Shipment
					r(424823),	-- Food Shipment
					r(424881),	-- Hide Shipment
					r(424529),	-- Hochenblume Shipment
					r(424899),	-- Islefin Dorado Shipment
					r(424876),	-- Khaz'gorite Shipment
					r(427109),	-- Rare Gem Shipment
					r(424694),	-- Serevite Shipment
					r(424736),	-- Skin Shipment
					r(424538),	-- Uncommon Herbs Shipment
				})),
				n(QUESTS, sharedData({
					["provider"] = { "n", 211240 },	-- Eran'nda
					["coord"] = { 52.5, 62.5, EMERALD_DREAM },
					["maxReputation"] = { FACTION_DREAM_WARDENS, 20 },
					["isWeekly"] = true,
				}, {
					q(78427, {	-- Great Crates!
						["sourceQuests"] = {
							77283,	-- A Multi-Front Battle
							77887,	-- 'World Quest Unlock' (spellID 421687)
						},
						["sourceQuestNumRequired"] = 1,
						["cost"] = { { "i", 210041, 1 } },	-- Shipment of Goods
					}),
					q(78428, {	-- Crate of the Art
						["sourceQuests"] = { 78427 },	-- Great Crates!
						["cost"] = { { "i", 210041, 5 } },	-- Shipment of Goods
					}),
				})),
			},
		})),
	}),
})));
