---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(KHAZ_ALGAR, {
	m(THE_RINGING_DEEPS, {
		n(VENDORS, {
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
