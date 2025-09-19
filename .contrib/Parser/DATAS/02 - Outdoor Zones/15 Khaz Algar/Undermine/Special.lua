---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(KHAZ_ALGAR, {
	m(UNDERMINE, {
		n(SPECIAL, {
			o(509490, {	-- Sewer Cheese
				["description"] = "In the sewers on a barrel, shared interaction between players but respawns quickly. Feed to the nearby Hungry rat.",
				["modelScale"] = 0.3,
				["cr"] = 238661,	-- Hungry Rat
				["coord"] = { 33.1, 58.2, UNDERMINE },
			}),
			n(238661, {	-- Hungry Rat
				["description"] = "Feed it Sewer Cheese picked up from a nearby barrel.",
				["coord"] = { 33.6, 58.1, UNDERMINE },
				["groups"] = {
					i(237129, {	-- Tarnished Undermine Real
						["description"] = "Give to Pix Xizzix on the second floor of the Port Authority at the Blackwater Marina.",
					}),
				},
			}),
			n(237412, {	-- Pix Xizzix
				["coord"] = { 63.3, 16.9, UNDERMINE },
				["groups"] = {
					i(237130, {	-- Undermine Undershirt
						["cost"] = {{ "i", 237129, 1 }},	-- Tarnished Undermine Real
					}),
				},
			}),
		}),
	}),
}));
