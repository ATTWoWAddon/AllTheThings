---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, {
	m(BROKEN_ISLES, {
		m(ARGUS, bubbleDown({ ["timeline"] = { ADDED_7_3_0 } }, {
			m(ANTORAN_WASTES, {
				n(ZONE_DROPS, {
					i(152940, {	-- Arc Circuit
						["description"] = "Only drops after |cFFFFFFFFSmashed Portal Generator|r has been collected.",
						["crs"] = {
							127597,	-- Eredar War-Mind
							126233,	-- Eredar War-Mind
							127596,	-- Felsword Myrmidon
							126168,	-- Felsword Myrmidon
						},
					}),
					i(152786, {	-- Call of the Devourer
						["crs"] = {
							126193,	-- Antoran Defender
							126171,	-- Tormented Ritualist
						},
					}),
					i(152941, {	-- Conductive Sheath
						["description"] = "Only drops after |cFFFFFFFFSmashed Portal Generator|r has been collected.",
						["crs"] = {
							127597,	-- Eredar War-Mind
							126233,	-- Eredar War-Mind
							127596,	-- Felsword Myrmidon
							126168,	-- Felsword Myrmidon
						},
					}),
					i(152891, {	-- Power Cell
						["description"] = "Only drops after |cFFFFFFFFSmashed Portal Generator|r has been collected.",
						["crs"] = {
							127597,	-- Eredar War-Mind
							126233,	-- Eredar War-Mind
							127596,	-- Felsword Myrmidon
							126168,	-- Felsword Myrmidon
						},
					}),
					i(152890, {	-- Smashed Portal Generator
						["crs"] = {
							127598,	-- Immortal Netherwalker
							126244,	-- Immortal Netherwalker
						},
					}),
				}),
			}),
		})),
	}),
});
