-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
-- #if ANYCLASSIC
local WOTLK_CLASSIC_TENMAN_KEY_ONUPDATE = [[function(t)
	if _.Settings:GetUnobtainableFilter(]] .. WRATH_PHASE_TWO .. [[) then
		t.u = ]] .. REMOVED_FROM_GAME .. [[;
		t.rwp = nil;
	else
		t.u = ]] .. WRATH_PHASE_ONE .. [[;
		t.rwp = 30100;
	end
end]];
-- #endif
root(ROOTS.Instances, expansion(EXPANSION.WRATH, applyclassicphase(WRATH_PHASE_ONE, bubbleDownSelf({ ["timeline"] = { ADDED_3_0_2 } }, {
	inst(756, {	-- The Eye of Eternity
		["mapID"] = THE_EYE_OF_ETERNITY,
		["coord"] = { 27.5, 26.6, BOREAN_TUNDRA },	-- The Eye of Eternity (Coldarra)
		-- #if AFTER CATA
		["sharedLockout"] = 1,
		-- #endif
		["isRaid"] = true,
		["lvl"] = 80,
		["groups"] = {
			d(DIFFICULTY.LEGACY_RAID.PLAYER10_NORMAL, {
				n(QUESTS, {
					q(13384, {	-- Judgment at the Eye of Eternity
						["sourceQuest"] = 13372,	-- The Key to the Focusing Iris
						["qg"] = 27990,	-- Krasus <Consort of the Queen>
						["coord"] = { 59.7, 54.6, DRAGONBLIGHT },
						-- #if ANYCLASSIC
						["OnUpdate"] = WOTLK_CLASSIC_TENMAN_KEY_ONUPDATE,
						-- #endif
						["groups"] = {
							objective(1, {	-- 0/1 Heart of Magic
								["provider"] = { "i", 44650 },	-- Heart of Magic
							}),
							i(44658),	-- Chain of the Ancient Wyrm
							i(44660),	-- Drakescale Collar
							i(44659),	-- Pendant of the Dragonsworn
							i(44657),	-- Torque of the Red Dragonflight
						},
					}),
				}),
				e(1617, {	-- Malygos
					["creatureID"] = 28859,	-- Malygos
					["groups"] = {
						ach(1869),	-- A Poke in the Eye (10 player)
						ach(2148),	-- Denyin' the Scion (10 player)
						ach(622),	-- The Spellweaver's Downfall (10 player)
						ach(1874),	-- You Don't Have an Eternity (10 player)
						ach(5018, {	-- You Don't Have an Eternity - Guild Edition
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(43952),	-- Azure Drake (MOUNT!)
						-- #if AFTER 4.0.3
						i(43953, {	-- Blue Drake (MOUNT!)
							-- #if BEFORE 4.0.3
							["description"] = "This mount was originally a drop from 10-man Malygos, but was moved to the cache of the ley guardian in the Occulus to encourage people to not skip the instance when it came up in the Dungeon Finder. In Wrath Classic, they decided to not implement the RDF feature, effectively making this mount unobtainable until Cataclysm.",
							-- #endif
							["timeline"] = { CREATED_3_0_2, ADDED_4_0_3 },
						}),
						-- #endif
						i(40497),	-- Black Ice
						i(40489),	-- Greatstaff of the Nexus
						i(40491),	-- Hailstorm
						i(40488),	-- Ice Spire Scepter
						i(40475),	-- Barricade of Eternity
						i(40486),	-- Necklace of the Glittering Chamber
						i(40511),	-- Focusing Energy Epaulets
						i(40526),	-- Gown of the Spell-Weaver
						i(40519),	-- Footsteps of Malygos
						i(40474),	-- Surge Needle Ring
						i(44650),	-- Heart of Magic
					},
				}),
			}),
			d(DIFFICULTY.LEGACY_RAID.PLAYER25_NORMAL, {
				n(QUESTS, {
					q(13385, {	-- Heroic Judgment at the Eye of Eternity
						["sourceQuest"] = 13375,	-- The Heroic Key to the Focusing Iris
						["qg"] = 27990,	-- Krasus <Consort of the Queen>
						["coord"] = { 59.7, 54.6, DRAGONBLIGHT },
						["groups"] = {
							objective(1, {	-- 0/1 Heart of Magic
								["provider"] = { "i", 44651 },	-- Heart of Magic
							}),
							i(44664),	-- Favor of the Dragon Queen
							i(44662),	-- Life-Binder's Locket
							i(44665),	-- Nexus War Champion Beads
							i(44661),	-- Wyrmrest Necklace of Power
						},
					}),
				}),
				e(1617, {	-- Malygos
					["creatureID"] = 28859,	-- Malygos
					["groups"] = {
						ach(1870),	-- A Poke in the Eye (25 player)
						ach(2149),	-- Denyin' the Scion (25 player)
						ach(623),	-- The Spellweaver's Downfall (25 player)
						ach(1875),	-- You Don't Have an Eternity (25 player)
						ach(5018, {	-- You Don't Have an Eternity - Guild Edition
							["timeline"] = { ADDED_4_0_3 },
						}),
						ach(1400, {	-- Realm First! Magic Seeker
							["timeline"] = { ADDED_3_0_2, REMOVED_3_0_8  },
							["groups"] = {
								title(88, {	-- <Name> the Magic Seeker
									["timeline"] = { ADDED_3_0_2, REMOVED_3_0_8 },
								}),
							},
						}),
						i(43952),	-- Azure Drake (MOUNT!)
						-- #if AFTER 4.0.3
						i(43953, {	-- Blue Drake (MOUNT!)
							-- #if BEFORE 4.0.3
							["description"] = "This mount was originally a drop from 10-man Malygos, but was moved to the cache of the ley guardian in the Occulus to encourage people to not skip the instance when it came up in the Dungeon Finder. In Wrath Classic, they decided to not implement the RDF feature, effectively making this mount unobtainable until Cataclysm.",
							-- #endif
							["timeline"] = { CREATED_3_0_2, ADDED_4_0_3 },
						}),
						-- #endif
						i(40543),	-- Blue Aspect Helm
						i(40562),	-- Hood of Rationality
						i(40590),	-- Elevated Lair Pauldrons
						i(40555),	-- Mantle of Dissemination
						i(40594),	-- Spaulders of Catatonia
						i(40194),	-- Blanketing Robes of Snow
						i(40539),	-- Chestguard of the Recluse
						i(40588),	-- Tunic of the Artifact Guardian
						i(40541),	-- Frosted Adroit Handguards
						i(40564),	-- Winter Spectacle Gloves
						i(40561),	-- Leash of Heedless Magic
						i(40566),	-- Unravelling Strands of Sanity
						i(40560),	-- Leggings of the Wanton Spellcaster
						i(40589),	-- Legplates of Soveriegnty
						i(40558),	-- Arcanic Tramplers
						i(40592),	-- Boots of Healing Energies
						i(40549),	-- Boots of the Renewed Flight
						i(40591),	-- Melancholy Sabatons
						i(40532),	-- Living Ice Crystals
						i(40531),	-- Mark of Norgannon
						i(44651),	-- Heart of Magic
					},
				}),
			}),
		},
	}),
}))));
