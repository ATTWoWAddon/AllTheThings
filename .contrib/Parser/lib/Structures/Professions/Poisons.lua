-------------
-- POISONS --
-------------
CLASSIC_POISONS = bubbleDown({ ["timeline"] = { REMOVED_3_0_2 }, ["classes"] = { ROGUE } }, {
	-- #if SEASON_OF_DISCOVERY
	applyclassicphase(SOD_PHASE_THREE, r(439503)),	-- Atrophic Poison
	-- #endif
	r(6510, {["timeline"] = {REMOVED_2_0_1}}),	-- Blinding Powder
	r(3420),	-- Crippling Poison
	r(3421),	-- Crippling Poison II
	r(2835),	-- Deadly Poison
	r(2837),	-- Deadly Poison II
	r(11357),	-- Deadly Poison III
	r(11358),	-- Deadly Poison IV
	r(8687),	-- Instant Poison II
	r(8691),	-- Instant Poison III
	r(11341),	-- Instant Poison IV
	r(11342),	-- Instant Poison V
	r(11343),	-- Instant Poison VI
	r(5763),	-- Mind-numbing Poison
	r(8694),	-- Mind-numbing Poison II
	r(11400),	-- Mind-numbing Poison III
	-- #if SEASON_OF_DISCOVERY
	applyclassicphase(SOD_PHASE_THREE, r(439505)),	-- Numbing Poison
	applyclassicphase(SOD_PHASE_THREE, r(439500)),	-- Sebacious Poison
	-- #endif
	r(13220),	-- Wound Poison
	r(13228),	-- Wound Poison II
	r(13229),	-- Wound Poison III
	r(13230),	-- Wound Poison IV
});
TBC_POISONS = bubbleDown({ ["timeline"] = { ADDED_2_0_5, REMOVED_3_0_2 }, ["classes"] = { ROGUE } }, {
	r(26786),	-- Anesthetic Poison
	r(25347),	-- Deadly Poison V
	r(26969),	-- Deadly Poison VI
	r(27282),	-- Deadly Poison VII
	r(26892),	-- Instant Poison VII
	r(27283),	-- Wound Poison V
});
