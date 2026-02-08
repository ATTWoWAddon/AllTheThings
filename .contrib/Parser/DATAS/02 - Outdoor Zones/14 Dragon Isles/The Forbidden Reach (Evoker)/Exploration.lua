---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root("Zones", m(DRAGON_ISLES, bubbleDown({ ["timeline"] = { ADDED_10_0_2 } }, {
	m(THE_FORBIDDEN_REACH_DRACTHYR, bubbleDownSelf({ ["races"] = { DRACTHYR_ALLIANCE, DRACTHYR_HORDE } }, {
		explorationHeader({
			exploration(13811),	-- Aerie Chasm
			exploration(13809),	-- Caldera of The Menders
			exploration(14150),	-- Dragonskull Island
			exploration(13810),	-- Froststone Vault
			exploration(14156),	-- Hornswog Grounds
			exploration(14155),	-- Morqut Islet
			exploration(13874),	-- Scaleborn Pass
			exploration(13808),	-- Stormsunder Crater
			exploration(13872),	-- Talonlords' Perch
			exploration(14056),	-- Tempest Coast
			exploration(14071),	-- The Lost Atheneum
			exploration(13807),	-- The Old Weyrn Grounds
		}),
	})),
})));
