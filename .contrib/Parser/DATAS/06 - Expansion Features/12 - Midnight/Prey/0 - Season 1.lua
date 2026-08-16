-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------

PREY_MID_S1 = createHeader({
	readable = "Prey MID S1",
	icon = [[~_.asset("Category_Prey")]],
	text = {
		en = "Prey MID S1",
		-- TODO: de = "",
		-- TODO: es = "",
		-- TODO: mx = "",
		-- TODO: fr = "",
		-- TODO: it = "",
		-- TODO: ko = "",
		-- TODO: pt = "",
		-- TODO: ru = "",
		-- TODO: cn = "",
		-- TODO: tw = "",
	},
});

local PREYSEEKER_BOX_SYM_SEASON_ONE = {
	SymSelector.select("MIDNIGHT_PREY_EVENT_COMPLETION_SEASON_ONE"),{"pop"},
	{"where","headerID",ARMOR},{"finalize"},

	SymSelector.select("MIDNIGHT_PREY_EVENT_COMPLETION_SEASON_ONE"),{"pop"},
	{"where","headerID",WEAPONS},{"finalize"},

	{"select","mapID",MAP.MIDNIGHT.QUELTHALAS},{"pop"},
	{"where","headerID",ZONE_REWARDS},{"pop"},
	{"where","headerID",ARMOR},{"pop"},
	{"where","filterID",TRINKET_F},
}

root(ROOTS.ExpansionFeatures, expansion(EXPANSION.MID, {
	n(PREY, {
		n(PREY_MID_S1, {
			["timeline"] = { ADDED_12_0_1_SEASONSTART, REMOVED_12_1_0 },
			["groups"] = {
				n(ACHIEVEMENTS, {
					ach(63164, {	-- Big Prey Hunter (Season 1)
						["timeline"] = { ADDED_12_0_7, REMOVED_12_1_0 },
					}),
				}),
				n(EVENT_COMPLETION, {symselector=SymSelector.MIDNIGHT_PREY_EVENT_COMPLETION_SEASON_ONE}),
				n(EVENT_COMPLETION, {
					n(ARMOR, {
						filter(BACK_F, {
							i(258533),	-- Preyseeker's Polished Cloak
							i(259909),	-- Preyseeker's Refined Shawl
							i(258532),	-- Preyseeker's Rugged Stole
							i(259910),	-- Preyseeker's Sleek Capelet
						}),
						filter(CLOTH, {
							i(259923),	-- Preyseeker's Refined Cord
							i(259920),	-- Preyseeker's Refined Crown
							i(259924),	-- Preyseeker's Refined Cuffs
							i(259922),	-- Preyseeker's Refined Epaulet
							i(259919),	-- Preyseeker's Refined Gloves
							i(259918),	-- Preyseeker's Refined Slippers
							i(259921),	-- Preyseeker's Refined Tights
							i(259917),	-- Preyseeker's Refined Vestments
						}),
						filter(FINGER_F, {
							i(259911),	-- Preyseeker's Band
							i(259914),	-- Preyseeker's Circle
							i(259913),	-- Preyseeker's Ring
							i(259912),	-- Preyseeker's Signet
						}),
						filter(LEATHER, {
							i(259932),	-- Preyseeker's Sleek Armlets
							i(259931),	-- Preyseeker's Sleek Belt
							i(259926),	-- Preyseeker's Sleek Boots
							i(259927),	-- Preyseeker's Sleek Gauntlets
							i(259925),	-- Preyseeker's Sleek Jerkin
							i(259928),	-- Preyseeker's Sleek Mask
							i(259930),	-- Preyseeker's Sleek Shoulderpads
							i(259929),	-- Preyseeker's Sleek Trousers
						}),
						filter(MAIL, {
							i(259940),	-- Preyseeker's Rugged Bindings
							i(259939),	-- Preyseeker's Rugged Clasp
							i(259935),	-- Preyseeker's Rugged Grips
							i(259933),	-- Preyseeker's Rugged Haubergeon
							i(259937),	-- Preyseeker's Rugged Legguards
							i(259936),	-- Preyseeker's Rugged Plume
							i(259934),	-- Preyseeker's Rugged Sabatons
							i(259938),	-- Preyseeker's Rugged Shoulderguards
						}),
						filter(NECK_F, {
							i(259916),	-- Preyseeker's Choker
							i(259915),	-- Preyseeker's Clasp
						}),
						filter(PLATE, {
							i(259941),	-- Preyseeker's Polished Brigandine
							i(259947),	-- Preyseeker's Polished Greatbelt
							i(259942),	-- Preyseeker's Polished Greatboots
							i(259943),	-- Preyseeker's Polished Handguards
							i(259944),	-- Preyseeker's Polished Helmet
							i(259946),	-- Preyseeker's Polished Pauldrons
							i(259945),	-- Preyseeker's Polished Tassets
							i(259948),	-- Preyseeker's Polished Vambraces
						}),
					}),
					n(WEAPONS, {
						i(259952),	-- Preyseeker's Cudgel
						i(259964),	-- Preyseeker's Falchion
						i(259955),	-- Preyseeker's Hammer
						i(259949),	-- Preyseeker's Hatchet
						i(259950),	-- Preyseeker's Kukri
						i(259965),	-- Preyseeker's Lantern
						i(259960),	-- Preyseeker's Longbow
						i(259958),	-- Preyseeker's Longsword
						i(259957),	-- Preyseeker's Ritual Blade
						i(259953),	-- Preyseeker's Scepter
						i(259956),	-- Preyseeker's Scimitar
						i(259951),	-- Preyseeker's Shiv
						i(259961),	-- Preyseeker's Spear
						i(259963),	-- Preyseeker's Spire
						i(259962),	-- Preyseeker's Staff
						i(259966),	-- Preyseeker's Tower Shield
						i(259959),	-- Preyseeker's Warglaive
					}),
					filter(MISC, {
						i(262928),	-- Preyseeker's Adventurer Sack
						i(262938),	-- Preyseeker's Champion Sack
						i(262936),	-- Preyseeker's Veteran Sack
						-- Boxes, Season 1
						i(257023, {	-- Preyseeker's Adventurer Chest
							["sym"] = PREYSEEKER_BOX_SYM_SEASON_ONE,
						}),
						i(257026, {	-- Preyseeker's Veteran Chest
							["sym"] = PREYSEEKER_BOX_SYM_SEASON_ONE,
						}),
						i(262346, {	-- Preyseeker's Champion Chest
							["sym"] = PREYSEEKER_BOX_SYM_SEASON_ONE,
						}),
						i(268545, {	-- Aspiring Preyseeker's Chest
							["sym"] = PREYSEEKER_BOX_SYM_SEASON_ONE,
						}),
						-- Bonus roll
						i(269768, {["timeline"] = { ADDED_12_0_5, REMOVED_12_1_0 }}),	-- Nebulous Voidcache: Prey
					}),
				}),
				n(FACTIONS, {
					faction(2764),	-- Prey: Season 1
				}),
			},
		}),
	}),
}));
