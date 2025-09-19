---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, {
	m(BROKEN_ISLES, {
		m(ARGUS, bubbleDown({ ["timeline"] = { ADDED_7_3_0 } }, {
			m(EREDATH, {
				n(VENDORS, {
					n(128199, {	-- Kuraam <Tournament Vendor>
						["coord"] = { 50.6, 45.6, EREDATH },
						["groups"] = {
							i(153169),	-- Commemorative Jed'hin Belt
							i(153170),	-- Jed'hin Headguard
						},
					}),
				}),
			}),
		})),
	}),
});
