---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(ZANDALAR, bubbleDown({ ["timeline"] = { ADDED_8_0_1 } }, {
	m(ZULDAZAR, {
		explorationHeader({
			exploration(9404),	-- Atal'Dazar
			exploration(9045),	-- Atal'Gral
			exploration(9797),	-- Bilgewater Bonanza
			exploration(8722),	-- Blood Gate
			exploration(8670),	-- Dazar'alor
			exploration(9324),	-- Dreadpearl Shallows
			exploration(8727),	-- Garden of the Loa
			exploration(8666),	-- Grand Bazaar
			exploration(9603),	-- Isle of Fangs
			visit_exploration(15449, {	-- Kaja'Coast
				["coord"] = { 22.1, 58.0, ZULDAZAR },
				["timeline"] = { ADDED_11_1_0 },
			}),
			exploration(8731),	-- Mount Mugamba
			exploration(8665),	-- Port of Zandalar
			exploration(8934),	-- Rootway
			exploration(8850),	-- Savagelands
			exploration(9046),	-- Scavenger's Strand
			exploration(9714),	-- Seekers' Expedition
			exploration(9329),	-- Seekers' Outpost
			exploration(9436),	-- Sundered Temple
			exploration(9619),	-- Talanji's Rebuke
			exploration(8734),	-- Temple of Rezan
			exploration(8732),	-- Temple of the Prophet
			exploration(9172),	-- Terrace of the Chosen
			exploration(9543),	-- The Mugambala
			exploration(8927),	-- The Preserve
			exploration(9604),	-- Tusk Isle
			exploration(9678),	-- Verdant Slope
			exploration(9419),	-- Village in the Vines
			exploration(9235),	-- Warport Rastari
			exploration(8965),	-- Xibala
			exploration(8726),	-- Zanchul
			exploration(8733),	-- Zeb'ahari
		}),
	}),
})));
