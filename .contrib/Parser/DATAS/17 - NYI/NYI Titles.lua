---------------------------------------------------------------
--     N E V E R    I M P L E M E N T E D    M O D U L E     --
---------------------------------------------------------------
-- #if AFTER WRATH
root(ROOTS.NeverImplemented, filter(TITLES, {
	expansion(EXPANSION.WRATH, {
		-- 3.0.2
		expansion(EXPANSION.WRATH, patch(0,2), bubbleDownSelf({ ["timeline"] = { CREATED_3_0_2 } }, {
			title(69),	-- Doctor <Name>
			title(64),	-- Grand Master Alchemist <Name>
			title(70),	-- Grand Master Angler <Name>
			title(65),	-- Grand Master Blacksmith <Name>
			title(67),	-- Grand Master Enchanter <Name>
			title(68),	-- Grand Master Engineer <Name>
			title(71),	-- Grand Master Herbalist <Name>
			title(73),	-- Grand Master Jewelcrafter <Name>
			title(74),	-- Grand Master Leatherworker <Name>
			title(75),	-- Grand Master Miner <Name>
			title(72),	-- Grand Master Scribe <Name>
			title(76),	-- Grand Master Skinner <Name>
			title(77),	-- Grand Master Tailor <Name>
			title(66),	-- Iron Chef <Name>
		})),

		-- 3.x.x
		n(P3xx, {
			title(83),	-- <Name>, Champion of Elune
			title(91),	-- <Name>, Hero of Northrend
			title(84),	-- <Name>, Hero of Orgrimmar
			title(86),	-- <Name> of the Darkspear
			title(60),	-- <Name> of the Ebon Blade
			title(54),	-- <Name> of the Ten Storms
			title(87),	-- <Name> the Forsaken
			title(82),	-- <Name> the Lion Hearted
			title(58),	-- <Name> the Malefic
			title(63),	-- Assassin <Name>
			title(85),	-- Plainsrunner <Name>
			title(57),	-- Prophet <Name>
		}),
	}),
	expansion(EXPANSION.LEGION, {
		-- 7.0.3
		expansion(EXPANSION.LEGION, patch(0,3), bubbleDownSelf({ ["timeline"] = { CREATED_7_0_3 } }, {
			title(330),	-- Master Assassin <Name>
		})),
	}),
	expansion(EXPANSION.BFA, {
		-- 8.2.0
		expansion(EXPANSION.BFA, patch(2,0), bubbleDownSelf({ ["timeline"] = { CREATED_8_2_0 } }, {
			title(406),	-- Sparking <Name>
		})),
	}),
	expansion(EXPANSION.SL, {
		-- 9.0.1
		expansion(EXPANSION.SL, patch(0,1), bubbleDownSelf({ ["timeline"] = { CREATED_9_0_1 } }, {
			title(436),	-- <Name> the Avowed
			i(183940),	-- Avowed Archivist's Tome
			title(424),	-- Deathbringer <Name>
			title(408),	-- Pilgrim <Name> the Mallet Bearer
		})),

		-- 9.2.0
		-- #if BEFORE 11.2.0
		expansion(EXPANSION.SL, patch(2,0), bubbleDownSelf({ ["timeline"] = { CREATED_9_2_0 } }, {
			title(453),	-- <Name> the [PH] TBD Title
		})),
		-- #endif
	}),
	expansion(EXPANSION.DF, {
		-- 10.2.0
		expansion(EXPANSION.DF, patch(2,0), bubbleDownSelf({ ["timeline"] = { CREATED_10_2_0 } }, {
			title(518),	-- <Name>, Honorary Historian
		})),

		-- 10.2.7
		expansion(EXPANSION.DF, patch(2,7), bubbleDownSelf({ ["timeline"] = { CREATED_10_2_7 } }, {
			title(539),	-- Mistrunner
		})),
	}),
	expansion(EXPANSION.TWW, {
		-- 11.1.5
		expansion(EXPANSION.TWW, patch(1,5), bubbleDownSelf({ ["timeline"] = { CREATED_11_1_5 } }, {
			title(625),	-- Aeroknight <Name>
			title(624),	-- Ardent <Name>
			title(621),	-- Field Sacredite <Name>
			title(626),	-- Flame Guard <Name>
			title(627),	-- Radiant Officer <Name>
			title(619),	-- Recruit <Name>
			title(620),	-- Reservist <Name>
			title(623),	-- Stalwart <Name>
		})),
	}),
}));
-- #endif
