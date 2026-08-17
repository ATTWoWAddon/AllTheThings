-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------

PREY_MID_S2 = createHeader({
	readable = "Prey MID S2",
	icon = [[~_.asset("Category_Prey")]],
	text = {
		en = "Prey MID S2",
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

local PREYSEEKER_BOX_SYM_SEASON_TWO = {
	SymSelector.select("MIDNIGHT_PREY_EVENT_COMPLETION_SEASON_TWO"),{"pop"},
	{"where","headerID",ARMOR},{"finalize"},

	SymSelector.select("MIDNIGHT_PREY_EVENT_COMPLETION_SEASON_TWO"),{"pop"},
	{"where","headerID",WEAPONS},{"finalize"},

	{"select","mapID",MAP.MIDNIGHT.QUELTHALAS},{"pop"},
	{"where","headerID",ZONE_REWARDS},{"pop"},
	{"where","headerID",ARMOR},{"pop"},
	{"where","filterID",TRINKET_F},
}

root(ROOTS.ExpansionFeatures, expansion(EXPANSION.MID, {
	n(PREY, {
		n(PREY_MID_S2, {
			["timeline"] = { ADDED_12_1_0, REMOVED_12_2_0 },
			["groups"] = {
				n(ACHIEVEMENTS, {
					ach(63611, {	-- Big Prey Hunter (Season 2)
						title(792),	-- <Name>, Servant of Astalor
					}),
				}),
				n(EVENT_COMPLETION, {symselector=SymSelector.MIDNIGHT_PREY_EVENT_COMPLETION_SEASON_TWO}),
				n(EVENT_COMPLETION, {
					n(ARMOR, {
						filter(BACK_F, {
							i(275525),	-- Preyhunter's Polished Cloak
							i(275522),	-- Preyhunter's Refined Shawl
							i(275524),	-- Preyhunter's Rugged Stole
							i(275523),	-- Preyhunter's Sleek Capelet
						}),
						filter(CLOTH, {
							i(275496),	-- Preyhunter's Refined Cord
							i(275497),	-- Preyhunter's Refined Crown
							i(275498),	-- Preyhunter's Refined Cuffs
							i(275499),	-- Preyhunter's Refined Epaulet
							i(275500),	-- Preyhunter's Refined Gloves
							i(275501),	-- Preyhunter's Refined Slippers
							i(275502),	-- Preyhunter's Refined Tights
							i(275503),	-- Preyhunter's Refined Vestments
						}),
						filter(FINGER_F, {
							i(275526),	-- Preyhunter's Band
							i(275529),	-- Preyhunter's Circle
							i(275528),	-- Preyhunter's Ring
							i(275527),	-- Preyhunter's Signet

						}),
						filter(LEATHER, {
							i(275512),	-- Preyhunter's Sleek Armlets
							i(275513),	-- Preyhunter's Sleek Belt
							i(275514),	-- Preyhunter's Sleek Boots
							i(275515),	-- Preyhunter's Sleek Gauntlets
							i(275516),	-- Preyhunter's Sleek Jerkin
							i(275517),	-- Preyhunter's Sleek Mask
							i(275518),	-- Preyhunter's Sleek Shoulderpads
							i(275519),	-- Preyhunter's Sleek Trousers
						}),
						filter(MAIL, {
							i(275504),	-- Preyhunter's Rugged Bindings
							i(275505),	-- Preyhunter's Rugged Clasp
							i(275506),	-- Preyhunter's Rugged Grips
							i(275507),	-- Preyhunter's Rugged Haubergeon
							i(275508),	-- Preyhunter's Rugged Legguards
							i(275509),	-- Preyhunter's Rugged Plume
							i(275510),	-- Preyhunter's Rugged Sabatons
							i(275511),	-- Preyhunter's Rugged Shoulderguards
						}),
						filter(NECK_F, {
							i(275531),	-- Preyhunter's Choker
							i(275530),	-- Preyhunter's Clasp
						}),
						filter(PLATE, {
							i(275488),	-- Preyhunter's Polished Brigandine
							i(275489),	-- Preyhunter's Polished Greatbelt
							i(275490),	-- Preyhunter's Polished Greatboots
							i(275491),	-- Preyhunter's Polished Handguards
							i(275492),	-- Preyhunter's Polished Helmet
							i(275493),	-- Preyhunter's Polished Pauldrons
							i(275494),	-- Preyhunter's Polished Tassets
							i(275495),	-- Preyhunter's Polished Vambraces
						}),
					}),
					n(WEAPONS, {
						i(275535),	-- Preyhunter's Cudgel
						i(275546),	-- Preyhunter's Falchion
						i(275537),	-- Preyhunter's Hammer
						i(275532),	-- Preyhunter's Hatchet
						i(275533),	-- Preyhunter's Kukri
						i(275547),	-- Preyhunter's Lantern
						i(275542),	-- Preyhunter's Longbow
						i(275540),	-- Preyhunter's Longsword
						i(275539),	-- Preyhunter's Ritual Blade
						i(275536),	-- Preyhunter's Scepter
						i(275538),	-- Preyhunter's Scimitar
						i(275534),	-- Preyhunter's Shiv
						i(275543),	-- Preyhunter's Spear
						i(275545),	-- Preyhunter's Spire
						i(275544),	-- Preyhunter's Staff
						i(275548),	-- Preyhunter's Tower Shield
						i(275541),	-- Preyhunter's Warglaive
					}),
					filter(MISC, {
						i(275919),	-- Preyhunter's Adventurer Sack
						i(275728),	-- Preyhunter's Champion Sack
						i(275917),	-- Preyhunter's Veteran Sack
						-- Boxes, Season 2
						i(275918, {	-- Preyhunter's Adventurer Chest
							["sym"] = PREYSEEKER_BOX_SYM_SEASON_TWO,
						}),
						i(275822, {	-- Preyhunter's Veteran Chest
							["sym"] = PREYSEEKER_BOX_SYM_SEASON_TWO,
						}),
						i(275726, {	-- Preyhunter's Champion Chest
							["sym"] = PREYSEEKER_BOX_SYM_SEASON_TWO,
						}),
						i(276104, {	-- Aspiring Preyhunter's Chest
							["sym"] = PREYSEEKER_BOX_SYM_SEASON_TWO,
						}),
					}),
				}),
				n(FACTIONS, {
					faction(2808),	-- Prey: Season 2
				}),
			},
		}),
	}),
}));
