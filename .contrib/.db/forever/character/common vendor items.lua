-------------------------------------------
--    C H A R A C T E R   M O D U L E    --
-------------------------------------------
root(ROOTS.Character, n(COMMON_VENDOR_ITEMS, {
	description = "Sold by vendors all over Azeroth: ammunition by most General Goods and General Supplies vendors, Bowyers and Gunsmiths, thrown weapons by most General Goods and General Supplies vendors and Thrown Weapons Merchants, and quivers by Bowyers and Fletchers.",
	groups = {
		filter(AMMO, {
			i(11284),	-- Accurate Slugs
			i(2519),	-- Heavy Shot
			i(11285),	-- Jagged Arrow
			i(2516),	-- Light Shot
			i(3030),	-- Razor Arrow
			i(2512),	-- Rough Arrow
			i(2515),	-- Sharp Arrow
			i(3033),	-- Solid Shot
		}),
		filter(BAGS, {
			i(2101),	-- Light Quiver
			i(11362),	-- Medium Quiver
			i(5439),	-- Small Quiver
		}),
		filter(THROWN, {
			i(2946),	-- Balanced Throwing Dagger
			i(3137),	-- Deadly Throwing Axe
			i(15326),	-- Gleaming Throwing Axe
			i(3107),	-- Keen Throwing Knife
			i(3135),	-- Sharp Throwing Axe
			i(3131),	-- Weighted Throwing Axe
			i(15327),	-- Wicked Throwing Dagger
		}),
	},
}));
