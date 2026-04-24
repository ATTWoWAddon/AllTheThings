---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(SHADOWLANDS, bubbleDown({ ["timeline"] = { ADDED_9_1_0 } }, {
	m(KORTHIA, {
		explorationHeader({
			visit_exploration(13691,{coord={52.5,32.2,KORTHIA}}),	-- Chamber of Knowledge
			visit_exploration(13692,{coord={55.4,30.5,KORTHIA}}),	-- Chamber of Wisdom
			exploration(13673),	-- Estuary of Awakening
			visit_exploration(13700,{coord={30.5,54.8,KORTHIA}}),	-- Gromit Hollow
			exploration(13630),	-- Hope's Ascent
			exploration(13625),	-- Keeper's Respite
			exploration(13626),	-- Mauler's Outlook
			visit_exploration(13652,{coord={61.5,21.7,KORTHIA}}),	-- Reliquary of Remembrance
			visit_exploration(13624,{coord={58.5,27.1,KORTHIA}}),	-- Sanctuary of Guidance
			exploration(13627),	-- Scholar's Den
			exploration(13628),	-- Seeker's Quorum
			exploration(13677),	-- The Path of Understanding
			visit_exploration(13695,{coord={41.1,42.1,KORTHIA}}),	-- The Rift
			exploration(13631),	-- Vault of Secrets
			exploration(13629),	-- Windswept Aerie
		}),
	}),
})));
