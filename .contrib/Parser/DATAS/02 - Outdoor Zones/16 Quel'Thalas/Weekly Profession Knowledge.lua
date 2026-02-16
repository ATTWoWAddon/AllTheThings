---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(MAP.MIDNIGHT.QUELTHALAS, bubbleDownSelf({ ["timeline"] = { ADDED_12_0_X_LAUNCH } }, {
	n(WEEKLY_PROFESSION_KNOWLEDGE, {
		["sharedDescription"] = "Rewarded from most repeatable treasures.",
		["groups"] = {
			-- Alchemy
			i(259189),	-- Aged Cruor
			i(259188),	-- Lightbloomed Spore Sample
			-- Blacksmithing
			i(259191),	-- Infused Quenching Oil
			i(259190),	-- Thalassian Whestone
			-- Enchanting
			i(259193),	-- Lost Thalassian Vellum
			i(259192),	-- Voidstorm Ashes
			-- Engineering
			i(259194),	-- Dance Gear
			i(259195),	-- Dawn Capacitor
			--[[
			-- Inscription
			i(225226),	-- Striated Inkstone
			i(225227),	-- Wax-Sealed Records
			-- Jewelcrafting
			i(225225),	-- Deepstone Fragment
			i(225224),	-- Diaphanous Gem Shards
			-- Leatherworking
			i(225222),	-- Stone-Leather Swatch
			i(225223),	-- Sturdy Nerubian Carapace
			-- Tailoring
			i(225220),	-- Chitin Needle
			i(225221),	-- Spool of Webweave
			--]]
		},
	}),
})));
