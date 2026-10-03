-------------------------------------------
--     S E C R E T S     M O D U L E     --
-------------------------------------------

root(ROOTS.Secrets, expansion(EXPANSION.BFA, {
	header(HEADERS.Item, 161479, {	-- Nazjatar Blood Serpent (MOUNT!)
		["timeline"] = { ADDED_8_0_1_LAUNCH },
		["groups"] = {
			i(161344, {	-- Abyssal Fragment
				["description"] = "These are a World Drop in any zone and can be bought from the Auction House. Once you collect 20, combine them.",
				["maps"] = {
					VOLDUN,
					NAZMIR,
					ZULDAZAR,
					DRUSTVAR,
					TIRAGARDE_SOUND,
					STORMSONG_VALLEY,
				},
			}),
			i(161345, {	-- Abhorrent Essence of the Abyss
				["description"] = "Use this on the \"Abyssal Icon\" located at 73.5, 23.6 in Stormsong Valley. The cave entrance is behind a waterfall.",
				["cost"] = {{"i",161344,20}},	-- Abyssal Fragment
				["coord"] = { 73.5, 23.6, STORMSONG_VALLEY },
			}),
			n(140474, {	-- Adherent of the Abyss
				["cost"] = {{"i",161345,1}},	-- Abhorrent Essence of the Abyss
				["coord"] = { 73.5, 23.6, STORMSONG_VALLEY },
				["groups"] = {
					i(161479),	-- Nazjatar Blood Serpent (MOUNT!)
					i(163929),	-- Aether of the Abyss
				},
			}),
		},
	}),
}))
