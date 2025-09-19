---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(KHAZ_ALGAR, {
	m(SIREN_ISLE, {
		n(RARES, sharedData({
			["isDaily"] = true,
		},{
			n(COMMON_BOSS_DROPS, {
				["crs"] = {
					230137, -- Asbjorn the Bloodsoaked
					228154, -- Bloodbrine
					231356, -- Brinebough
					228583, -- Chef Chum Platter
					229852, -- Coralweaver Calliso
					228601, -- Ghostmaker
					228201, -- Gravesludge
					228155, -- Grimgull
					228159, -- Gunnlod the Sea-Drinker
					227545, -- Ikir the Flotsurge
					231368, -- Ksvir the Forgotten
					229982, -- Nerathor
					228580, -- Plank-Master Bluebelly
					229853, -- Siris the Sea Scorpion
					227550, -- Shardsong
					228547, -- Slaughtershell
					231090, -- Snacker
					229992, -- Stalagnarok
					228151, -- Wreckwater
					231353, -- Tempest Talon
					231357, -- Zek'ul the Shipbreaker
				},
				["groups"] = {
					filter(CLOAKS, {
						i(229019),	-- Earthen Deckhand's Cape
						i(229027),	-- Earthen Islander's Shawl
						i(229036),	-- Earthen Landlubber's Drape
						i(229010),	-- Earthen Scallywag's Cloak
					}),
					filter(CLOTH, {
						i(229017),	-- Earthen Scallywag's Cord
						i(229014),	-- Earthen Scallywag's Cowl
						i(229018),	-- Earthen Scallywag's Cuffs
						i(229013),	-- Earthen Scallywag's Handwraps
						i(229015),	-- Earthen Scallywag's Leggings
						i(229016),	-- Earthen Scallywag's Mantle
						i(229012),	-- Earthen Scallywag's Sandals
						i(229011),	-- Earthen Scallywag's Vestment
					}),
					filter(FINGER_F, {
						i(229051),	-- Scurvy Sailor's Ring
						i(229050),	-- Seafarer's Wandering Signet
					}),
					filter(LEATHER, {
						i(229026),	-- Earthen Deckhand's Bindings
						i(229023),	-- Earthen Deckhand's Breeches
						i(229045),	-- Earthen Deckhand's Cap
						i(229022),	-- Earthen Deckhand's Grips
						i(229025),	-- Earthen Deckhand's Sash
						i(229024),	-- Earthen Deckhand's Shoulderpads
						i(229020),	-- Earthen Deckhand's Vest
						i(229021),	-- Earthen Deckhand's Waders
					}),
					filter(MAIL, {
						i(229035),	-- Earthen Islander's Bracers
						i(229028),	-- Earthen Islander's Chainmail
						i(229034),	-- Earthen Islander's Cinch
						i(229031),	-- Earthen Islander's Coif
						i(229032),	-- Earthen Islander's Greaves
						i(229030),	-- Earthen Islander's Grips
						i(229033),	-- Earthen Islander's Shoulderguards
						i(229029),	-- Earthen Islander's Striders
					}),
					filter(NECK_F, {
						i(229053),	-- Conch Collector's Locket
						i(229052),	-- Moneyed Mariner's Pendant
					}),
					filter(PLATE, {
						i(229044),	-- Earthen Landlubber's Armplates
						i(229037),	-- Earthen Landlubber's Breastplate
						i(229039),	-- Earthen Landlubber's Gauntlets
						i(229043),	-- Earthen Landlubber's Girdle
						i(229040),	-- Earthen Landlubber's Helm
						i(229041),	-- Earthen Landlubber's Legguards
						i(229042),	-- Earthen Landlubber's Mantle
						i(229038),	-- Earthen Landlubber's Sabatons
					}),
					filter(TRINKET_F, {
						i(231116),	-- Cursed Pirate Skull
						i(231117),	-- Darktide Wavebender's Orb
						i(231118),	-- Runecaster's Stormbound Rune
						i(230945),	-- Wayward Vrykul's Lantern
					}),
					n(WEAPONS, {
						i(229190),	-- Earthen Deckhand's Blunderbuss
						i(229175),	-- Earthen Deckhand's Bulwark
						i(229167),	-- Earthen Deckhand's Cleaver
						i(229179),	-- Earthen Deckhand's Cudgel
						i(229182),	-- Earthen Deckhand's Dagger
						i(229172),	-- Earthen Deckhand's Halberd
						i(229184),	-- Earthen Deckhand's Knuckles
						i(229187),	-- Earthen Deckhand's Rod
						i(229185),	-- Earthen Deckhand's Warglaive
						i(229168),	-- Earthen Landlubber's Axe
						i(229191),	-- Earthen Landlubber's Crossbow
						i(229177),	-- Earthen Landlubber's Greataxe
						i(229176),	-- Earthen Landlubber's Greatsword
						i(229180),	-- Earthen Landlubber's Hammer
						i(229183),	-- Earthen Landlubber's Knife
						i(229171),	-- Earthen Landlubber's Polearm
						i(229174),	-- Earthen Landlubber's Shield
						i(229169),	-- Earthen Landlubber's Sword
						i(229189),	-- Earthen Scallywag's Bow
						i(229178),	-- Earthen Scallywag's Gavel
						i(229186),	-- Earthen Scallywag's Greatstaff
						i(229188),	-- Earthen Scallywag's Implement
						i(229192),	-- Earthen Scallywag's Kris
						i(229170),	-- Earthen Scallywag's Saber
						i(229173),	-- Earthen Scallywag's Spear
					}),
				},
			}),
			-- NON STORM PHASE RARES
			n(228154, {	-- Bloodbrine
				["coord"] = { 36.0, 72.1, SIREN_ISLE },
				["questID"] = 84795,
			}),
			n(228601, {	-- Ghostmaker
				["coord"] = { 52.0, 32.3, SIREN_ISLE },
				["questID"] = 84801,
			}),
			n(228201, {	-- Gravesludge
				["description"] = "Available during The Drain objective",
				["coord"] = { 55.6, 27.0, SIREN_ISLE },
				["questID"] = 85937,
			}),
			n(228155, {	-- Grimgull
				["coord"] = { 37.2, 21.8, SIREN_ISLE },
				["questID"] = 84796,
			}),
			n(228159, {	-- Gunnlod the Sea-Drinker
				["description"] = "In non-Storm phase of the Vault.",
				["coord"] = { 66.5, 55.9, 2375 },
				["questID"] = 84797,
				["groups"] = {
					i(235017),	-- Glittering Vault Shard (TOY!)
				},
			}),
			n(229982, {	-- Nerathor
				["description"] = "Available during The Drowned Lair objective",
				["coord"] = { 27.3, 65.5, SIREN_ISLE },
				["questID"] = 85938,
			}),
			n(227550, {	-- Shardsong
				["description"] = "In non-Storm phase of the Vault.",
				["coord"] = { 28.1, 24.9, 2375 },
				["questID"] = 86779,
				["groups"] = {
					i(235017),	-- Glittering Vault Shard (TOY!)
				},
			}),
			n(231090, {	-- Snacker
				["coord"] = { 67.8, 20.7, SIREN_ISLE },
				["questID"] = 86933,
			}),
			n(229992, {	-- Stalagnarok
				["description"] = "Available during Shuddering Hollow objective",
				["coord"] = { 67.8, 20.7, SIREN_ISLE },
				["questID"] = 85437,
			}),
			n(228151, {	-- Wreckwater
				["coord"] = { 46.7, 78.4, SIREN_ISLE },
				["questID"] = 84794,
			}),
		})),
	}),
}));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.TWW, {
	m(SIREN_ISLE, {
		n(RARES, {
			-- Need more data / confirmation, current data is mess
			-- after kill Bloodbrine (228154) - 84795 (on re-kill), 84871 (one of it is i(229172),	-- Earthen Deckhand's Halberd drop?)
			-- after kill Gravesludge (228201) - 84872 (i(229178),	-- Earthen Scallywag's Gavel drop?, 85669 (speculated - gem looted and unlocked on vendor), 85937 (on re-kill)
			-- after kill Nerathor (229982) - 84841 (i(229023),	-- Earthen Deckhand's Breeches drop?), 85672 (citrine?), 85938 (on re-kill)
		}),
	}),
}));
