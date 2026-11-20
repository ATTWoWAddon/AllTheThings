---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, n(COMMON_VENDOR_ITEMS, {
	filter(CONSUMABLES, {
		i(6533, {	-- Aquadynamic Fish Attractor
			isLimited = true,
		}),
		i(6532),	-- Bright Baubles
		i(2594),	-- Flagon of Dwarven Honeymead/Mead
		i(2593),	-- Flask of Stormwind Tawny
		i(1179),	-- Ice Cold Milk
		i(2595),	-- Jug of Badlands Bourbon
		i(6530),	-- Nightcrawlers
		i(159),	-- Refreshing Spring Water
		i(6529),	-- Shiny Bauble
		i(2596),	-- Skin of Dwarven Stout
	}),
	filter(PROFESSION_EQUIPMENT, {
		i(5956, {	-- Blacksmith Hammer
			collectible = false,
		}),
		i(6256),	-- Fishing Pole
		i(7005, {	-- Skinning Knife
			collectible = false,
		}),
		i(6365, {	-- Strong Fishing Pole
			isLimited = true,
		}),
	}),
	filter(REAGENTS, {
		i(2325),	-- Black Dye
		i(2324),	-- Bleach
		i(6260),	-- Blue Dye
		i(3857),	-- Coal
		i(2320),	-- Coarse Thread
		i(6217),	-- Copper Rod
		i(8925),	-- Crystal Vial
		i(18567),	-- Elemental Flux
		i(3371),	-- Empty Vial
		i(2321),	-- Fine Thread
		i(2605),	-- Green Dye
		i(4340),	-- Grey Dye
		i(8343),	-- Heavy Silken Thread
		i(4400),	-- Heavy Stock
		i(2692),	-- Hot Spices
		i(18256),	-- Imbued Vial
		i(3372),	-- Leaded Vial
		i(10938, {	-- Lesser Magic Essence
			isLimited = true,
		}),
		i(2678),	-- Mild Spices
		i(6261),	-- Orange Dye
		i(10290),	-- Pink Dye
		i(4342),	-- Purple Dye
		i(2604),	-- Red Dye
		i(14341),	-- Rune Thread
		i(4289),	-- Salt
		i(4291),	-- Silken Thread
		i(4470),	-- Simple Wood
		i(3713),	-- Soothing Spices
		i(11291),	-- Star Wood
		i(10940, {	-- Strange Dust
			isLimited = true,
		}),
		i(3466),	-- Strong Flux
		i(2880),	-- Weak Flux
		i(4399),	-- Wooden Stock
		i(4341),	-- Yellow Dye
	}),
}));
