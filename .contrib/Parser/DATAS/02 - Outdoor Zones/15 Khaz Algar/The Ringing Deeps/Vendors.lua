---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(KHAZ_ALGAR, {
	m(THE_RINGING_DEEPS, {
		n(VENDORS, {
			n(252887, {	-- Chert <Decor Specialist>
				["coord"] = { 43.4, 32.8, THE_RINGING_DEEPS },
				["timeline"] = { ADDED_11_2_7 },
				["groups"] = {
					i(253040, {	-- Coreway Sentinel Lamppost (DECOR!)
						["cost"] = { { "c", RESONANCE_CRYSTALS, 650 } },
					}),
					i(253162, {	-- Earthen Chain Wall Shelf (DECOR!)
						["cost"] = { { "c", RESONANCE_CRYSTALS, 600 } },
					}),
					i(253020, {	-- Earthen Etched Throne (DECOR!)
						["cost"] = { { "c", RESONANCE_CRYSTALS, 500 } },
					}),
					i(253172, {	-- Gundargaz Grand Keg (DECOR!)
						["cost"] = { { "c", RESONANCE_CRYSTALS, 850 } },
					}),
				},
			}),
			n(256783, {	-- Gabbun <Wax Decor Specialist>
				["coord"] = { 43.4, 33.3, THE_RINGING_DEEPS },
				["timeline"] = { ADDED_11_2_7 },
				["groups"] = {
					i(258267, {	-- Candle-Festooned Wooden Awning (DECOR!)
						["cost"] = { { "c", RESONANCE_CRYSTALS, 750 } },
					}),
					i(258264, {	-- Kobold Candle Trio (DECOR!)
						["cost"] = { { "c", RESONANCE_CRYSTALS, 200 } },
					}),
					i(258262, {	-- Kobold Digger's Chair (DECOR!)
						["cost"] = { { "c", RESONANCE_CRYSTALS, 350 } },
					}),
					i(258265, {	-- Kobold Wagon (DECOR!)
						["cost"] = { { "c", RESONANCE_CRYSTALS, 1000 } },
					}),
				},
			}),
			n(216598, {	-- Janky <Candles>
				["coord"] = { 47.6, 33.4, THE_RINGING_DEEPS },
				["groups"] = {
					i(224070),	-- Janky's Finest
					i(224071),	-- Sparkspitter Candle
				},
			}),
			n(223163, {	-- Paxton Bombshell <Enbiggenering Vendor>
				["coord"] = { 63.9, 78.4, THE_RINGING_DEEPS },
				["groups"] = {
					i(227770),	-- Assorted Whirligigs
					i(227771),	-- Blinker Fluid
					i(227772),	-- Cataclysmic Converter
					i(227774),	-- Pummel Permit
					i(227773),	-- Pummel-Proof Plating
				},
			}),
			n(218416, {	-- Heissanik <Stable Master>
				["coord"] = { 62.2, 46.0, THE_RINGING_DEEPS },
				["sym"] = {{"sub", "common_vendor", 219230}},	-- Erani <Pet Charm Trader>
			}),
			n(225220, {	-- Wheat <Stable Master>
				["coord"] = { 58.6, 65.4, THE_RINGING_DEEPS },
				["sym"] = {{"sub", "common_vendor", 219230}},	-- Erani <Pet Charm Trader>
			}),
		}),
	}),
}));
