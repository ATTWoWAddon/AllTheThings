DELVES_MID_S2 = createHeader({
	readable = "Delves MID S2",
	icon = 1604168,
	text = {
		en = "Delves MID S2",
		-- TODO: de = "",
		es = "Profundidades MID T2",
		mx = "Abismos MID T2",
		-- TODO: fr = "",
		-- TODO: it = "",
		-- TODO: ko = "",
		-- TODO: pt = "",
		ru = "Вылазки MID 2 сезон",
		cn = "至暗之夜地下堡第二季",
		tw = "至暗之夜探究第二季",
	},
});
local ALL_REGULAR_DELVES_MID = {
	ATAL_AMAN,
	COLLEGIATE_CALAMITY,
	PARHELION_PLAZA,
	SHADOWGUARD_POINT,
	SUNKILLER_SANCTUM,
	THE_DARKWAY,
	THE_GULF_OF_MEMORY,
	THE_GRUDGE_PIT,
	THE_SHADOW_ENCLAVE,
	--TORMENTS_RISE,
	TWILIGHT_CRYPTS,
	-- #if AFTER 12.1.0
	GNARLDOR_ISLE,
	THE_RING_OF_GLORY,
	-- VENOMFALL_DEEPS,
	-- #endif
};
local ALL_THE_DELVES_MID = {
	ATAL_AMAN,
	COLLEGIATE_CALAMITY,
	PARHELION_PLAZA,
	SHADOWGUARD_POINT,
	SUNKILLER_SANCTUM,
	THE_DARKWAY,
	THE_GULF_OF_MEMORY,
	THE_GRUDGE_PIT,
	THE_SHADOW_ENCLAVE,
	TORMENTS_RISE,
	TWILIGHT_CRYPTS,
	-- #if AFTER 12.1.0
	GNARLDOR_ISLE,
	THE_RING_OF_GLORY,
	VENOMFALL_DEEPS,
	-- #endif
};
local mapped = function(t)
	if not t.maps then
		t.maps = ALL_REGULAR_DELVES_MID
	end
	return t
end
root(ROOTS.Delves, expansion(EXPANSION.MID, {
	n(DELVES_MID_S2, {
		["timeline"] = { ADDED_12_1_0, REMOVED_12_2_0 },
		["groups"] = {
			-- MID Season 2 Boss
			m(VENOMFALL_DEEPS, {
				["icon"] = 7876113,
				["coord"] = { 51.2, 30.3, MAP.MIDNIGHT.THE_COILED_ISLE },
				["groups"] = {
					n(262455, {	-- Azta'rec ?
						--["questID"] = XXXXX,	-- triggers on ? and ?? difficulties
						--["isDaily"] = true,
						["groups"] = {
							ach(63326, {	-- My Venomous Nemesis
								i(276163),	-- Apophic Patagia (COSMETIC!)
							}),
						},
					}),
					n(265500, {	-- Azta'rec ??
						--["questID"] = XXXXX,	-- triggered ?? difficulty
						["groups"] = {
							ach(63334, {	-- Fabled Let Me Solo Him: Azta'rec
								["timeline"] = { ADDED_12_1_0, REMOVED_12_1_0 },
								["groups"] = {
									title(776),	-- <Name>, Fabled Vanquisher of Azta'rec
								},
							}),
							ach(63333, {	-- Let Me Solo Him: Azta'rec
								i(275657),	-- Apophic Soul Crusher (MOUNT!)
							}),
							ach(63332, {	-- Purging the Poison
								title(775),	-- <Name> the Poisonous
							}),
						},
					}),
				},
			}),
			n(ACHIEVEMENTS, {
				mapped(ach(62889)),	-- Midnight Delves: Tier 4 (Season 2)
				mapped(ach(62890)),	-- Midnight Delves: Tier 5 (Season 2)
				mapped(ach(62891)),	-- Midnight Delves: Tier 6 (Season 2)
				mapped(ach(62892)),	-- Midnight Delves: Tier 7 (Season 2)
				mapped(ach(62893)),	-- Midnight Delves: Tier 8 (Season 2)
				mapped(ach(62894)),	-- Midnight Delves: Tier 9 (Season 2)
				mapped(ach(62895)),	-- Midnight Delves: Tier 10 (Season 2)
				mapped(ach(62897, {	-- Midnight Delves: Tier 11 (Season 2)
					title(550),	-- High Explorer <Name>
				})),
				ach(63433, {	-- Midnight: Journey's End (Season 2)
					-- TITLE!
				}),
			}),
			n(CURIO, {
				--Combat
				--Utility
				i(271130),	-- Venom Infusion
			}),
			mapped(n(DELVE_COMPLETION, {
				n(ARMOR, {
					filter(BACK_F, {
						i(272227),	-- Galerider's Veil
						i(272226),	-- Miststalker's Shroud
						i(272230),	-- Pledgebearer's Pall
						i(272225),	-- Pyrewalker's Mantle
					}),
					filter(CLOTH, {
						i(272232),	-- Pyrewalker's Buskins
						i(272231),	-- Pyrewalker's Doublet
						i(272233),	-- Pyrewalker's Gloves
						i(272236),	-- Pyrewalker's Mantlet
						i(272234),	-- Pyrewalker's Miter
						i(272237),	-- Pyrewalker's Obi
						i(272235),	-- Pyrewalker's Treads
						i(272238),	-- Pyrewalker's Wraps
					}),
					filter(FINGER_F, {
						i(272148),	-- Anguine Gyre
						i(272147),	-- Colubrine Band
						i(272149),	-- Hex Loop
						i(272150),	-- Ouroboric Signet
					}),
					filter(LEATHER, {
						i(272239),	-- Miststalker's Brigandine
						i(272245),	-- Miststalker's Cinch
						i(272242),	-- Miststalker's Cowl
						i(272243),	-- Miststalker's Cuisses
						i(272241),	-- Miststalker's Grips
						i(272244),	-- Miststalker's Spaulders
						i(272240),	-- Miststalker's Striders
						i(272246),	-- Miststalker's Wristbands
					}),
					filter(MAIL, {
						i(272247),	-- Galerider's Byrnie
						i(272249),	-- Galerider's Chain Clasps
						i(272248),	-- Galerider's Chausses
						i(272251),	-- Galerider's Chausses
						i(272250),	-- Galerider's Gaze
						i(272253),	-- Galerider's Mail Skirt
						i(272252),	-- Galerider's Mantle
						i(272254),	-- Galerider's Mesh Wraps
					}),
					filter(NECK_F, {
						i(272229),	-- Serpentine Talisman
						i(272228),	-- Whispering Periapt
					}),
					filter(PLATE, {
						i(272255),	-- Pledgebearer's Cuirass
						i(272257),	-- Pledgebearer's Gauntlets
						i(272261),	-- Pledgebearer's Girdle
						i(272258),	-- Pledgebearer's Mask
						i(272260),	-- Pledgebearer's Pauldrons
						i(272259),	-- Pledgebearer's Poleyns
						i(272256),	-- Pledgebearer's Sabatons
						i(272262),	-- Pledgebearer's Splints
					}),
				}),
				filter(MISC, {
					i(273000),	-- Corrosive Soul
					i(274374, {	-- Trovehunter's Bounty
						["providers"] = {{"o",584518}}, -- Bountiful Heavy Trunk (verified)
					}),
				}),
				filter(QUEST_ITEMS, {
					-- Currently unaware of objectIDs so treated just as reward
					i(274970),	-- Ancient Curio (Utility) (QI!/QS!)
					i(277506),	-- Codex of the Soul Coilers (QS!)
				}),
				n(WEAPONS, {
					i(272270),	-- Bonedust Pestle
					i(272280),	-- Exhumed Soul-Cleaver
					i(272266),	-- Forgotten Eidolon's Dagger
					i(272272),	-- Harrowed Partisan
					i(272268),	-- Mask-Etcher
					i(272274),	-- Realm Splitter
					i(272278),	-- Recurve Wisp-Shooter
					i(272269),	-- Soulsealer's Headstone
					i(272275),	-- Soulsinger's Horn
					i(272271),	-- Spiritbound Focus
					i(272277),	-- Spirit-Reaver
					i(272283),	-- Swordsman's Emanation
					i(272267),	-- Uncoffined Labrys
					i(272273),	-- Unshrined Ceremonial Scepter
				}),
			})),
			n(FACTIONS, {
				faction(2796),	-- Delves: Season 2
			}),
			n(QUESTS, {
				q(97454, {	-- Seasonal Refresher: Midnight
					["qg"] = 242381,	-- Valeera Sanguinar
					["coord"] = { 52.5, 78.3, MAP.MIDNIGHT.SILVERMOON_CITY },
				}),
				q(97321, {	-- Slithering Spoils
					["sourceQuest"] = 97454,	-- Seasonal Refresher: Midnight
					["qg"] = 242381,	-- Valeera Sanguinar
					["coord"] = { 52.5, 78.3, MAP.MIDNIGHT.SILVERMOON_CITY },
					["groups"] = {
						i(277949),	-- Sizzling Venom (QI!)
						o(661347, {	-- Slithersoul Spoils
							i(277934),	-- Slithersoul Spoils (QI!)
						}),
					},
				}),
				q(97482, {	-- Fangs for the Memories
					["sourceQuest"] = 97321,	-- Slithering Spoils
					["qg"] = 242381,	-- Valeera Sanguinar
					["coord"] = { 52.5, 78.3, MAP.MIDNIGHT.SILVERMOON_CITY },
					["maps"] = { VENOMFALL_DEEPS },
					["groups"] = { i(275988) },	-- Corrosive Victory (TOY!)
				}),
				q(96615, {	-- Ancient Curiosity: Utility
					["provider"] = { "i", 274970 },	-- Ancient Curio (QI!/QS!)
					["maps"] = ALL_REGULAR_DELVES_MID,
				}),
				q(97616, {	-- Corrosive Gifts: Corrosive Power
					["provider"] = { "i", 277506 },	-- Codex of the Soul Coilers (QS!)
					["maps"] = ALL_REGULAR_DELVES_MID,
				}),
			}),
			--[[mapped(n(TREASURES, {
				o(656489, {	-- Azta'rec Cache
					["questID"] = 92887,
					["isWeekly"] = true,
					["cost"] = { { "i", 253342, 1 } },	-- Beacon of Hope
					["sym"] = {{"select","itemID",
					--	264971,	-- Annihilation Rod (COSMETIC!)
					--	264970,	-- Oblivion's Edge (COSMETIC!)
						265368,	-- Twilight Destroyer (COSMETIC!)
						265366,	-- Twilight Executioner (COSMETIC!)
						265367,	-- Twilight Fang (COSMETIC!)
					}},
					["groups"] = {
						i(262391),	-- Ominous Domanus (PET!)
						i(264971),	-- Annihilation Rod (COSMETIC!)
						i(264970),	-- Oblivion's Edge (COSMETIC!)
					},
				}),
			})),--]]
			n(VENDORS, {
				n(242398, {	-- Naleidea Rivergleam
					["coord"] = { 52.8, 77.9, MAP.MIDNIGHT.SILVERMOON_CITY },
					["groups"] = {
						i(275978, {	-- Delver's Starter Kit (CI!)
							--["cost"] = { { "c", UNDERCOIN, 0 } },
						}),
					},
				}),
			}),
		},
	}),
}))

--[[root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.MID, {
	n(DELVES, {
		["timeline"] = { ADDED_12_1_0 },
		["groups"] = {
			n(DELVES_MID_S2, {
			}),
		},
	}),
}))--]]
