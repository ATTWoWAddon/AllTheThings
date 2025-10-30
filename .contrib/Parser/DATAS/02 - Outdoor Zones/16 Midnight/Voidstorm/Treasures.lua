---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(MIDNIGHT, {
	m(VOIDSTORM, {
		n(TREASURES, {
			--Treasures
			o(613351, {	-- Discarded Energy Pike
				["coord"] = { 35.8, 41.4, VOIDSTORM },
				["questID"] = 93496,
				["groups"] = {
					--missing loot table
				},
			}),
			o(605169, {	-- Final Cluth of Predaxas
				["coord"] = { 49.9, 79.3, VOIDSTORM },
				["questID"] = 93237,
				["groups"] = {
					--missing loot table
				},
			}),
			o(554678, {	-- Lost Shadowstep
				["coord"] = { 39.3, 63.8, VOIDSTORM },
				["questID"] = 91308,
				["groups"] = {
					--missing loot table
				},
			}),
			o(613368, {	-- Quivering Alien Egg
				["coord"] = { 31.5, 44.5, VOIDSTORM },
				["questID"] = 93500,
				["groups"] = {
					--missing loot table
				},
			}),
			o(613327, {	-- Slain Scout's Quiver (Faindel's Quiver?)
				["coord"] = { 43.0, 81.9, VOIDSTORM },
				["questID"] = 93493,
				["groups"] = {
					--missing loot table
				},
			}),
			o(560300, {	-- Unpublished Manuscript
				["coord"] = { 53.4, 68.0, VOIDSTORM },
				["questID"] = 91699,
				["groups"] = {
					i(246268),	-- A Steamy Romance Novel: Voidlust
				},
			}),
			--[[ --Lore
			o(, {	-- Shadowgraft Harness
				["coord"] = { 27.8, 54.0, VOIDSTORM },
				["questID"] = 94398,
			}),]]--
			--Repeatable
			o(587240, {	-- Mysterious Domanaar Vessel
				["maps"] = { VOIDSTORM },
				["groups"] = {
					i(258917),	-- Tarnished Dawnlit Spellbinder's Pads // could be world drop?
				},
			}),
			o(587194, {	-- Stashed Singularity Supplies
				["maps"] = { VOIDSTORM },
				["groups"] = {
					i(259126),	-- Housing Dye: Void Violet (DECOR!)
				},
			}),
		}),
	}),
}));
