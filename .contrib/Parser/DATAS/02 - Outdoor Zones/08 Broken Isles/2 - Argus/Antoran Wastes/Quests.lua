---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, {
	m(BROKEN_ISLES, {
		m(ARGUS, bubbleDown({ ["timeline"] = { ADDED_7_3_0 } }, {
			m(ANTORAN_WASTES, {
				n(QUESTS, {
					q(49007, {	-- Commander on Deck!
						["description"] = "Collect all four parts from mobs near the Terminus, and combine them to repair the Portal Generator. This allows you to summon Squadron Commander Vishax.",
						["provider"] = { "i", 152965 },	-- Vishax's Portal Generator
						["cost"] = {
							{ "i", 152890, 1 },	-- Smashed Portal Generator
							{ "i", 152940, 1 },	-- Arc Circuit
							{ "i", 152941, 1 },	-- Conductive Sheath
							{ "i", 152891, 1 },	-- Power Cell
						},
					}),
					q(48605, {	-- Commander's Downfall
						["sourceQuests"] = { 48513 },	-- Invasion Point Offensive
						["qgs"] = {
							126408,	-- Illidan Stormrage
							127051,	-- Illidan Stormrage
							127057,	-- Illidan Stormrage
						},
						["coords"] = {
							{ 31.4, 60.0, THE_VINDICAAR_ANTORAN_WASTES_UPPER },
							{ 39.1, 19.8, THE_VINDICAAR_KROKUUN_UPPER },
							{ 68.8, 25.9, ANTORAN_WASTES },
						},
					}),
					q(48448, {	-- Hindering the Legion War Machine
						["sourceQuests"] = {
							48446,	-- Relics of the Ancient Eredar
							48654,	-- Beneath Oronaar
						},
						["provider"] = { "n", 124312 },	-- High Exarch Turalyon
						["coord"] = { 46.7, 24.6, THE_VINDICAAR_KROKUUN_UPPER },
					}),
					q(47473, {	-- Sizing Up The Opposition (Light's Purchase)
						["sourceQuests"] = { 48201 },	-- Reinforce Light's Purchase
						["provider"] = { "n", 127051 },	-- Illidan Stormrage
						["coord"] = { 68.8, 25.9, ANTORAN_WASTES },
					}),
					q(48929, {	-- Sizing Up The Opposition (The Veiled Den)
						["sourceQuests"] = { 48202 },	-- Reinforce the Veiled Den
						["provider"] = { "n", 127051 },	-- Illidan Stormrage
						["coord"] = { 68.8, 25.9, ANTORAN_WASTES },
					}),
					q(48600, {	-- Take the Edge Off
						["sourceQuests"] = { 48448 },	-- Hindering the Legion War Machine
						["provider"] = { "n", 124312 },	-- High Exarch Turalyon
						["coord"] = { 46.7, 24.6, THE_VINDICAAR_KROKUUN_UPPER },
					}),
					q(48870, {	-- The Many-Faced Devourer
						["description"] = "You need to collect three bones from various locations around the zone. After you have done the initial collection and summoning process, you can always summon the rare.\n\nYou must have |cFFFFFFFFCall of the Devourer|r in your inventory to be able to see the bones.",
						["cost"] = {
							{ "i", 152993, 1 },	-- Ur'zul Bone
							{ "i", 152992, 1 },	-- Imp Bone
							{ "i", 152991, 1 },	-- Fiend Bone
						},
					}),
				}),
			}),
		})),
	}),
});

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.LEGION, bubbleDownSelf({ ["timeline"] = { ADDED_7_3_0 } }, {
	m(BROKEN_ISLES, {
		m(ARGUS, {
			m(ANTORAN_WASTES, {
				n(QUESTS, {
					q(48984),	-- Triggers when combining the Smashed Portal Generator and other parts to make Vishak's Portal Generator
					q(49162),	-- Triggers when completing 'Sizing Up The Opposition' (questID 48929) (spellID 254549)
				}),
				n(TREASURES, {
					q(49023),	-- Triggers when looting Ancient Legion War Cache. Probably achievement criteria as chests have their own questIDs
					q(49024),	-- Triggers when looting Fel-Bound Chest. Probably achievement criteria as chests have their own questIDs
				}),
			}),
		}),
	}),
})));
