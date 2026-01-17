---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, {
	m(BROKEN_ISLES, {
		m(ARGUS, bubbleDown({ ["timeline"] = { ADDED_7_3_0 } }, {
			m(ANTORAN_WASTES, {
				n(ZONE_DROPS, {
					header(HEADERS.NPC, 127943, {	-- Vishax's Portal
						i(152940, {	-- Arc Circuit
							["description"] = "Only drops after |cFFFFFFFFSmashed Portal Generator|r has been collected.",
							["crs"] = {
								127597,	-- Eredar War-Mind
								126233,	-- Eredar War-Mind
								127596,	-- Felsword Myrmidon
								126168,	-- Felsword Myrmidon
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
						i(152965, {	-- Vishax's Portal Generator (QS!)
							["description"] = "Collect |cFFFFFFFFSmashed Portal Generator|r, |cFFFFFFFFConductive Sheath|r, |cFFFFFFFFArc Circuit|r and |cFFFFFFFFPower Cell|r from the elite Demons on the Terminus docks and ship, and combine them to create |cFFFFFFFFVishax's Portal Generator|r.\n\nOnce you create the item you will get a follow-up Quest to power up the portal to the rare.",
							["cost"] = {
								{ "i", 152890, 1 },	-- Smashed Portal Generator
								{ "i", 152940, 1 },	-- Arc Circuit
								{ "i", 152941, 1 },	-- Conductive Sheath
								{ "i", 152891, 1 },	-- Power Cell
							},
						}),
					}),
					i(152786, {	-- Call of the Devourer
						["crs"] = {
							126193,	-- Antoran Defender
							126171,	-- Tormented Ritualist
						},
					}),
				}),
			}),
		})),
	}),
});
