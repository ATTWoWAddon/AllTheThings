---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(KUL_TIRAS, bubbleDown({ ["timeline"] = { ADDED_8_0_1 } }, {
	m(TIRAGARDE_SOUND, {
		n(ZONE_DROPS, {
			i(162580),	-- Fading Treasure Map
			i(162584),	-- Singed Treasure Map
			i(162571),	-- Soggy Treasure Map
			i(162581),	-- Yellowed Treasure Map
			-- not entirely sure on organizing HQTs like this yet. maybe will have a specialized one for "Loot (Item)" for clarity...
			hqt(52854, name(HEADERS.Item, 162580, {	-- Fading Treasure Map (looted)
				["provider"] = {"i",162580},	-- Fading Treasure Map
			})),
			hqt(52860, name(HEADERS.Item, 162584, {	-- Singed Treasure Map (looted)
				["provider"] = {"i",162584},	-- Singed Treasure Map
			})),
			hqt(52853, name(HEADERS.Item, 162571, {	-- Soggy Treasure Map (looted)
				["provider"] = {"i",162571},	-- Soggy Treasure Map
			})),
			hqt(52859, name(HEADERS.Item, 162581, {	-- Yellowed Treasure Map (looted)
				["provider"] = {"i",162581},	-- Yellowed Treasure Map
			})),
		}),
		n(ZONE_DROPS, {
			i(159184),	-- Foxhollow Circlet
			i(159189),	-- Foxhollow Amice
			i(159166),	-- Foxhollow Drape
			i(159187),	-- Foxhollow Robes
			i(159185),	-- Foxhollow Handwraps
			i(159186),	-- Foxhollow Leggings
			i(159188),	-- Foxhollow Sandals
			i(159171),	-- Freehold Cowl
			i(159173),	-- Freehold Shoulderpads
			i(159228),	-- Freehold Cape
			i(159172),	-- Freehold Jerkin
			i(159167),	-- Freehold Bracers
			i(159174),	-- Freehold Belt
			i(159168),	-- Freehold Boots
			i(159229),	-- Mistfall Greatcloak
			i(159161),	-- Ashvane Company Greathelm
			i(159163),	-- Ashvane Company Spaulders
			i(159230),	-- Ashvane Company Cloak
			i(159158),	-- Ashvane Company Chestplate
			i(159162),	-- Ashvane Company Greaves
			i(159164),	-- Ashvane Company Sabatons
		}),
	}),
})))
