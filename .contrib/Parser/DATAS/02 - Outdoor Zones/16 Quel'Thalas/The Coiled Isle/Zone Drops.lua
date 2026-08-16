---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(MAP.MIDNIGHT.QUELTHALAS, {
	m(MAP.MIDNIGHT.THE_COILED_ISLE, {
		n(ZONE_DROPS, {
			filter(REAGENTS, {
				-- TODO: Determine/Verify if these drop only on The Coiled Isle or did they start dropping on the entirety of Quel'Thalas as of 12.1.0, just like Amphibious Scrap (i275283) or Folded Wing (i275281)
				i(274781),	-- Cursebound Globe
				i(275280),	-- Gamey Flank
				i(275286),	-- Leafy Appendage
				i(274777),	-- Neutralized Venom Clot
				i(275288),	-- Photosynthesized Scrap
				i(275284),	-- Slobbery Tongue
				i(275282),	-- Smooth Loin
				i(275289),	-- Winged Stalk
			}),
		}),
	}),
}));
