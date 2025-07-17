---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(ARGUS, bubbleDown({ ["timeline"] = { ADDED_7_3_0 } }, {
	m(KROKUUN, {
		n(RARES, {
			n(124775, {	-- Commander Endaxis
				["questID"] = 48564,
				["isDaily"] = true,
				["coord"] = { 45.0, 58.8, KROKUUN },
				["sym"] = {
					{"select","mapID",KROKUUN},		-- get Krokuun
					{"find","headerID",SPECIAL},	-- get Special
					{"find","filterID",PLATE},{"pop"},	-- get Plate
				},
				["g"] = {
					i(153255),	-- Isolon Anchorite's Cudgel
				},
			}),
			n(122912, {	-- Commander Sathrenael
				["questID"] = 48562,
				["isDaily"] = true,
				["coord"] = { 33.6, 75.2, KROKUUN },
				["g"] = {
					i(153113),	-- Demon's Soulstone
				},
			}),
			n(122911, {	-- Commander Vecaya
				["questID"] = 48563,
				["isDaily"] = true,
				["coord"] = { 39.2, 59.4, KROKUUN },
				["sym"] = {
					{"select","mapID",KROKUUN},		-- get Krokuun
					{"find","headerID",SPECIAL},	-- get Special
					{"find","filterID",PLATE},{"pop"},	-- get Plate
				},
				["g"] = {
					i(153299),	-- Militant Exarch's Shortsword
				},
			}),
			n(125820, {	-- Imp Mother Laglath
				["questID"] = 48666,
				["isDaily"] = true,
				["coord"] = { 42.2, 70.0, KROKUUN },
			}),
			n(125824, {	-- Khazaduum
				["questID"] = 48561,
				["isDaily"] = true,
				["coord"] = { 38.6, 39.4, 833 },	-- Nath'raxas Spire
				["sym"] = {
					{"select","mapID",KROKUUN},		-- get Krokuun
					{"find","headerID",SPECIAL},	-- get Special
					{"find","filterID",PLATE},{"pop"},	-- get Plate
				},
				["g"] = {
					i(153316),	-- Praetor's Ornamental Edge
				},
			}),
			n(126419, {	-- Naroua, King of the Forest
				["modelScale"] = 0.63,
				["questID"] = 48667,
				["isDaily"] = true,
				["coord"] = { 71, 32.4, KROKUUN },
				["g"] = {
					i(153190),	-- Fel-Spotted Egg
				},
			}),
			n(120393, {	-- Siegemaster Voraan
				["questID"] = 48627,
				["isDaily"] = true,
				["coord"] = { 58.6, 76.8, KROKUUN },
			}),
			n(123464, {	-- Sister Subversia <Coven of Shivarra>
				["modelScale"] = 0.80,
				["questID"] = 48565,
				["isDaily"] = true,
				["coord"] = { 53.0, 31.0, KROKUUN },
				["g"] = {
					i(153124),	-- Spire of Spite (TOY!)
				},
			}),
			n(123689, {	-- Talestra the Vile
				["questID"] = 48628,
				["isDaily"] = true,
				["coord"] = { 55.4, 80.4, KROKUUN },
				["sym"] = {
					{"select","mapID",KROKUUN},		-- get Krokuun
					{"find","headerID",SPECIAL},	-- get Special
					{"find","filterID",PLATE},{"pop"},	-- get Plate
				},
				["g"] = {
					i(153329),	-- Mystic Wakener's Blade
				},
			}),
			n(125479, {	-- Tar Spitter
				["questID"] = 48665,
				["isDaily"] = true,
				["coord"] = { 70.2, 81.6, KROKUUN },
			}),
			n(124804, {	-- Tereck the Selector
				["questID"] = 48664,
				["isDaily"] = true,
				["coord"] = { 69.6, 56.8, KROKUUN },
				["sym"] = {
					{"select","mapID",KROKUUN},		-- get Krokuun
					{"find","headerID",SPECIAL},	-- get Special
					{"find","filterID",PLATE},{"pop"},	-- get Plate
				},
				["g"] = {
					i(153263),	-- Enclave Aspirant's Cleaver
				},
			}),
			n(125388, {	-- Vagath the Betrayed
				["questID"] = 48629,
				["isDaily"] = true,
				["coord"] = { 61.0, 20.6, KROKUUN },
				["g"] = {
					i(153114),	-- Nathrezim Tome of Manipulation
				},
			}),
		}),
	}),
})));