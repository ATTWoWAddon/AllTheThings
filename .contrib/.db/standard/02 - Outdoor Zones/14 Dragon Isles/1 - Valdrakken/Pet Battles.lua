---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(DRAGON_ISLES, bubbleDown({ ["timeline"] = { ADDED_10_0_2_LAUNCH } }, {
	m(VALDRAKKEN, {
		petbattles({
			q(70647, {	-- Oh Where, Oh Where Can He Be?
				["sourceQuests"] = {
					66244,	-- To Valdrakken
					DF_ACCOUNT_CAMPAIGN_QUEST,
				},
				["qg"] = 185563,	-- Jyhanna
				["coord"] = { 10.4, 58.3, VALDRAKKEN },
				["timeline"] = { ADDED_10_0_2_LAUNCH },
				["_drop"] = { "g" },	-- Drop Battle Pet Bandage
				["groups"] = {
					i(199175),	-- Lubbins (PET!)
				},
			}),
			q(70697, {	-- An Expert Opinion
				["sourceQuest"] = 70647,	-- Oh Where, Oh Where Can He Be?
				["qg"] = 185563,	-- Jyhanna
				["coord"] = { 10.4, 58.3, VALDRAKKEN },
				["timeline"] = { ADDED_10_0_2_LAUNCH },
				["maps"] = { THE_AZURE_SPAN },
			}),
		}),
	}),
})));
