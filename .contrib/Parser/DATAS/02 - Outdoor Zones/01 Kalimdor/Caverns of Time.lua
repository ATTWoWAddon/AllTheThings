---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(KALIMDOR, {
	m(CAVERNS_OF_TIME, {
		["lore"] = "Located in the eastern part of Tanaris, the Caverns of Time contain various portals to different key historical periods and events in Warcraft history.",
		["icon"] = 134156,
		-- #if BEFORE MOP
		["zone-text-areaID"] = 1941,	-- Caverns of Time
		-- #endif
		["coord"] = { 65.9, 49.4, TANARIS },
		["maps"] = { 74 },	-- Caverns of Time Entrance
		["groups"] = {
			battlepets({ ADDED_5_1_0 }, {
				pet(1161, {	-- Infinite Whelpling (PET!)
					["description"] = "This pet can be found around the Caverns of Time entrance and the pathway leading to the main chamber.",
				}),
			}),
			-- #if AFTER TBC
			n(FACTIONS, {
				applyclassicphase(TBC_PHASE_ONE, faction(FACTION_KEEPERS_OF_TIME, {	-- Keepers of Time
					["icon"] = 134156,
					["timeline"] = { ADDED_2_0_1 },
					["maps"] = { CAVERNS_OF_TIME_BLACK_MORASS, CAVERNS_OF_TIME_OLD_HILLSBRAD_FOOTHILLS },
				})),
			}),
			n(QUESTS, {
				applyclassicphase(TBC_PHASE_ONE, q(10277, {	-- The Caverns of Time
					["qg"] = 20130,	-- Andormu <Keepers of Time>
					["sourceQuest"] = 10279,	-- To The Master's Lair
					["coords"] = {
						-- #if AFTER CATA
						{ 41.5, 38.5, CAVERNS_OF_TIME },
						-- #else
						{ 58.4, 54.2, TANARIS },
						-- #endif
					},
					["timeline"] = { ADDED_2_0_3 },
					["lvl"] = lvlsquish(66, 66, 15),
				})),
				applyclassicphase(TBC_PHASE_TWO, q(10445, {	-- The Vials of Eternity
					["providers"] = {
						{ "n", 19935 },	-- Soridormi
						{ "n", 19936 },	-- Arazmodu
					},
					["description"] = "The questgiver can be found walking around the Caverns of Time.",
					["coords"] = {
						-- #if AFTER CATA
						{ 39.4, 44.4, CAVERNS_OF_TIME },
						-- #else
						{ 59.6, 54, TANARIS },
						-- #endif
					},
					["timeline"] = { ADDED_2_0_3, REMOVED_3_0_2 },
					["maps"] = {
						TEMPEST_KEEP_THE_EYE,
						SERPENTSHRINE_CAVERN,
					},
					["lvl"] = 70,
					["groups"] = {
						objective(1, {	-- 0/1 Vashj's Vial Remnant
							["provider"] = { "i", 29906 },	-- Vashj's Vial Remnant
						}),
						objective(2, {	-- 0/1 Kael's Vial Remnant
							["provider"] = { "i", 29905 },	-- Kael's Vial Remnant
						}),
					},
				})),
				applyclassicphase(TBC_PHASE_TWO, q(13432, {	-- The Vials of Eternity
					["providers"] = {
						{ "n", 19935 },	-- Soridormi
						{ "n", 19936 },	-- Arazmodu
					},
					["altQuests"] = { 10445 },	-- The Vials of Eternity (legacy version)
					["description"] = "The questgiver can be found walking around the Caverns of Time.",
					["timeline"] = { ADDED_3_0_2 },
					["maps"] = {
						TEMPEST_KEEP_THE_EYE,
						SERPENTSHRINE_CAVERN,
					},
					["lvl"] = 70,
					["groups"] = {
						objective(1, {	-- 0/1 Vashj's Vial Remnant
							["provider"] = { "i", 29906 },	-- Vashj's Vial Remnant
						}),
						objective(2, {	-- 0/1 Kael's Vial Remnant
							["provider"] = { "i", 29905 },	-- Kael's Vial Remnant
						}),
					},
				})),
				applyclassicphase(TBC_PHASE_ONE, q(10279, {	-- To The Master's Lair
					["qg"] = 20142,	-- Steward of Time <Keepers of Time>
					["coords"] = {
						-- #if AFTER CATA
						{ 55.3, 27.9, 74 },	-- Caverns of Time Entrance
						-- #else
						{ 66.0, 49.6, TANARIS },
						-- #endif
					},
					["lvl"] = lvlsquish(66, 66, 15),
					["isBreadcrumb"] = true,
				})),
			}),
			-- #endif
			n(VENDORS, {
				applyclassicphase(TBC_PHASE_THREE, n(19932, {	-- Andormu <Keepers of Time>
					["groups"] = bubbleDownClassicRep(FACTION_KEEPERS_OF_TIME, {
						{		-- Neutral
						}, {	-- Friendly
						}, {	-- Honored
							-- #if BEFORE CATA
							i(31737, {	-- Timeless Arrow
								["timeline"] = { REMOVED_4_0_1 },
							}),
							i(31735, {	-- Timeless Shell
								["timeline"] = { REMOVED_4_0_1 },
							}),
							-- #endif
						}, {	-- Revered
							-- #if ANYCLASSIC
							i(186683, {	-- Formula: Enchant Ring - Stats (RECIPE!)
								["timeline"] = { ADDED_2_5_1 },	-- This item Only Exist in Classic Version
							}),
							-- #endif
						}, {	-- Exalted
						},
					}),
				})),
				applyclassicphase(TBC_PHASE_ONE, n(21643, {	-- Alurmi <Keepers of Time Quartermaster>
					["coord"] = { 40.0, 77.2, 74 },
					["groups"] = bubbleDownClassicRep(FACTION_KEEPERS_OF_TIME, {
						{		-- Neutral
						}, {	-- Friendly
						}, {	-- Honored
							applyclassicphase(TBC_PHASE_TWO, i(35402)),	-- Crusader's Ornamented Chestplate
							applyclassicphase(TBC_PHASE_TWO, i(35414)),	-- Crusader's Scaled Helm
							i(25910),	-- Design: Enigmatic Skyfire Diamond (RECIPE!)
							i(33160),	-- Design: Facet of Eternity (RECIPE!)
							applyclassicphase(TBC_PHASE_TWO, i(35356)),	-- Dragonhide Gloves
							applyclassicphase(TBC_PHASE_TWO, i(35328)),	-- Dreadweave Gloves
							applyclassicphase(TBC_PHASE_TWO, i(35346)),	-- Evoker's Silk Raiment
							i(28272),	-- Formula: Enchant Gloves - Major Spellpower (RECIPE!)
							i(33152, {	-- Formula: Enchant Gloves - Superior Agility (RECIPE!)
								["timeline"] = { ADDED_2_2_0 },
							}),
							i(22536, {	-- Formula: Enchant Ring - Spellpower (RECIPE!)
								["timeline"] = { ADDED_2_0_1, REMOVED_6_0_3 },
							}),
							i(29198, {	-- Glyph of Frost Warding
								["timeline"] = { REMOVED_5_0_4 },
							}),
							applyclassicphase(TBC_PHASE_TWO, i(35363)),	-- Kodohide Legguards
							applyclassicphase(TBC_PHASE_TWO, i(35334)),	-- Mooncloth Legguards
							applyclassicphase(TBC_PHASE_TWO, i(35369)),	-- Opportunist's Leather Spaulders
							i(29713),	-- Pattern: Drums of Panic (RECIPE!)
							-- #if ANYCLASSIC
							applyclassicphase(TBC_PHASE_FOUR, i(185925)),	-- Pattern: Greater Drums of Panic (RECIPE!)
							-- #endif
							applyclassicphase(TBC_PHASE_TWO, i(35338)),	-- Satin Gloves
							applyclassicphase(TBC_PHASE_TWO, i(35410)),	-- Savage Plate Legguards
							applyclassicphase(TBC_PHASE_TWO, i(35384)),	-- Seer's Linked Leggings
							applyclassicphase(TBC_PHASE_TWO, i(35390)),	-- Seer's Mail Spaulders
							applyclassicphase(TBC_PHASE_TWO, i(35393)),	-- Seer's Ringmail Headpiece
							applyclassicphase(TBC_PHASE_TWO, i(35376)),	-- Stalker's Chain Armor
							applyclassicphase(TBC_PHASE_TWO, i(35372)),	-- Wyrmhide Helm
						}, {	-- Revered
							i(29185),	-- Continuum Blade
							i(24181),	-- Design: Living Ruby Serpent (RECIPE!)
							i(24174),	-- Design: Pendant of Frozen Flame (RECIPE!)
							i(33158),	-- Design: Stone of Blades (RECIPE!)
							i(29186, {	-- Glyph of the Defender
								["timeline"] = { REMOVED_5_0_4 },
							}),
							i(30635, {	-- Key of Time
								["timeline"] = { REMOVED_4_2_0 },
								-- #if ANYCLASSIC
								-- Blizzard added "Honored" versions of this key for TBC Classic... BLIZZARD.
								["OnTooltip"] = [[function(t, tooltipInfo)
									local tooltip = _.ShowItemCompareTooltips(t.otherItemID);
									if _.Settings:GetUnobtainableFilter(]] .. TBC_PHASE_FOUR .. [[) then
										tooltip:AddLine("This is now available at Honored reputation.", 0.4, 0.8, 1, 1);
									else
										tooltip:AddLine("This will be available at Honored reputation after TBC Phase 4.", 0.4, 0.8, 1, 1);
									end
									tooltip:Show();
								end]],
								["OnInit"] = [[function(t)
									t.otherItemID = 185693;
									t.GetItemCount = function(t) return ]] .. WOWAPI_GetItemCount("t.itemID") .. [[ + ]] .. WOWAPI_GetItemCount("t.otherItemID") .. [[; end
									return t;
								end]],
								-- #endif
							}),
							i(29184),	-- Timewarden's Leggings
						}, {	-- Exalted
							i(29183),	-- Bindings of the Timewalker
							i(31777),	-- Keepers of Time Tabard
							i(31355),	-- Recipe: Flask of Supreme Power (RECIPE!)
							i(29182),	-- Riftmaker
							i(29181),	-- Timelapse Shard
						},
					}),
				})),
				n(155944, {	-- Otela <Time-Lost Baubles>
					["coord"] = { 42.4, 71.6, 74 },
					["timeline"] = { ADDED_8_2_0 },
					["groups"] = {
						i(170739, {	-- Sunswarmed Sand
							["timeline"] = { ADDED_8_2_0 },
							["cost"] = {{ "c", TIMEWARPED_BADGE, 10 }},
						}),
						i(170380, {	-- Jar of the Sunwarmed Sand (TOY!)
							["timeline"] = { ADDED_8_2_0 },
							["cost"] = {{ "c", TIMEWARPED_BADGE, 1000 }},
						}),
					},
				}),
			}),
		},
	}),
}));