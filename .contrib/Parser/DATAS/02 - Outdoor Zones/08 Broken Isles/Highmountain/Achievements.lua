---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, {
	m(BROKEN_ISLES, {
		m(HIGHMOUNTAIN, {
			n(ACHIEVEMENTS, {
				ach(11264, {	-- Adventurer of Highmountain
					["sym"] = {{ "achievement_criteria" }},
				}),
				ach(10059, {	-- Ain't No Mountain High Enough
					["sym"] = {{ "achievement_criteria" }},
				}),
				ach(10398, {	-- Drum Circle
					["description"] = "This achievement can be soloed since after 'Battle for Azeroth'. Repeatedly jump for 1-3 minutes in the middle ring on the lower floor of Thunder Totem. It CANNOT be completed while you are on 'Assault on Thunder Totem' and you must be able to hear the drum beats to know the achievement is working."
				}),
				ach(10667),	-- Explore Highmountain
				ach(10626, {	-- Zoom!
					i(137298),	-- Zoom (PET!)
				}),
				ach(10774, {	-- Hatchling of the Talon
					["sourceQuests"] = { 41094 },	-- Hatchlings of the Talon
					["groups"] = {
						i(139773),	-- Emerald Winds (TOY!)
					},
				}),
				ach(12292),	-- Highmountain Tribe
				ach(11257, {	-- Treasures of Highmountain
					--i(XXXXXX, {["timeline"] = { ADDED_12_0_0 }}),	-- Skyhorn Storage Chest (DECOR!)
				}),
			}),
		}),
	}),
});
