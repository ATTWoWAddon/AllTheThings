-----------------------------------------------------
--       P R O F E S S I O N S   M O D U L E       --
-----------------------------------------------------
profession(TAILORING, {
	n(ACHIEVEMENTS, {
		ach(62030, {	-- Artisan Tailor
			timeline = { TIMELINE.ADDED_1_60_1 },
		}),
		ach(62029, {	-- Expert Tailor
			timeline = { TIMELINE.ADDED_1_60_1 },
		}),
		ach(62028, {	-- Journeyman Tailor
			timeline = { TIMELINE.ADDED_1_60_1 },
		}),
	}),
	n(MOONWELL, {
		coords = {
			{ 38.7, 85.2, MAP.DARNASSUS },	-- Temple of the Moon
			{ 35.6, 66.0, MAP.STORMWIND_CITY },	-- The Park
			{ 60.0, 72.0, MAP.ASHENVALE },	-- Moonwell of Cleansing
		},
		OnTooltip = FUNCTION_TEMPLATES.GenerateOnTooltipSpellCooldownRemaining(18560),	-- Mooncloth
		sym = { { "select", "itemID", 14342 } },	-- Mooncloth
	}),
});
