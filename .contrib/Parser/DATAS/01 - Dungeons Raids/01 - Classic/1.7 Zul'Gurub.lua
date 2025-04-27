-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
local TOME_OF_POLYMORPH_TURTLE = i(22739);
local RAZZASHI_HATCHLING = i(48126, {	-- Razzashi Hatchling
	["timeline"] = { ADDED_3_2_0 },
	["cr"] = 14821,	-- Razzashi Raptor
});
root(ROOTS.Instances, expansion(EXPANSION.CLASSIC, applyclassicphase(PHASE_FOUR, {
	inst(76, bubbleDownSelf({ ["timeline"] = { REMOVED_4_0_3 } }, {	-- Zul'Gurub
		["lore"] = "Over a thousand years ago the powerful Gurubashi Empire was torn apart by a massive civil war. An influential group of troll priests, known as the Atal'ai, called forth the avatar of an ancient and terrible blood god named Hakkar the Soulflayer. Though the priests were defeated and ultimately exiled, the great troll empire collapsed upon itself. The exiled priests fled far to the north, into the Swamp of Sorrows, where they erected a great temple to Hakkar in order to prepare for his arrival into the physical world.",
		-- #if BEFORE WRATH
		["zone-text-areaID"] = 19,	-- Zul'Gurub
		-- #endif
		["maps"] = {
			ZULGURUB,
			ZULGURUB_OUTDOORS,
		},
		["isRaid"] = true,
		["lvl"] = 58,
		["groups"] = {
			n(ACHIEVEMENTS, {
				achWithRep(957, FACTION_ZANDALAR_TRIBE, {	-- Hero of the Zandalar Tribe
					["maps"] = { STRANGLETHORN_VALE },
				}),
			}),
			n(FACTIONS, {
				faction(FACTION_ZANDALAR_TRIBE, {	-- Zandalar Tribe
					["icon"] = 135727,
					["maps"] = { STRANGLETHORN_VALE },
				}),
			}),
			n(QUESTS, {
				cl(DRUID, bubbleDown({ ["classes"] = { DRUID }, ["lvl"] = 58 }, {
					q(8192, {	-- Animist's Caress [Druid]
						["qg"] = 15042,		-- Zanza the Restless
						["repeatable"] = true,
						["cost"] = {
							{ "i", 22637, 1 },	-- Primal Hakkari Idol
							{ "i", 19821, 1 },	-- Punctured Voodoo Doll [Druid]
						},
						["groups"] = {
							i(19790),	-- Animist's Caress [Druid]
						},
					}),
					q(8065, {	-- Paragons of Power: The Haruspex's Tunic [Revered]
						["qg"] = 14904,		-- Maywiki of Zuldazar
						["minReputation"] = { FACTION_ZANDALAR_TRIBE, REVERED },	-- Zandalari Tribe, Revered.
						["coord"] = { 15.3, 16.0, STRANGLETHORN_VALE },
						["cost"] = {
							{ "i", 19722, 1 },	-- Primal Hakkari Tabard
						},
						["groups"] = {
							i(19838),	-- Zandalar Haruspex's Tunic
						},
					}),
					q(8057, {	-- Paragons of Power: The Haruspex's Bracers [Friendly]
						["qg"] = 14904,		-- Maywiki of Zuldazar
						["minReputation"] = { FACTION_ZANDALAR_TRIBE, FRIENDLY },	-- Zandalari Tribe, Friendly.
						["coord"] = { 15.3, 16.0, STRANGLETHORN_VALE },
						["cost"] = {
							{ "i", 19718, 1 },	-- Primal Hakkari Stanchion
						},
						["groups"] = {
							i(19840),	-- Zandalar Haruspex's Bracers
						},
					}),
					q(8064, {	-- Paragons of Power: The Haruspex's Belt [Honored]
						["qg"] = 14904,		-- Maywiki of Zuldazar
						["minReputation"] = { FACTION_ZANDALAR_TRIBE, HONORED },	-- Zandalari Tribe, Honored.
						["coord"] = { 15.3, 16.0, STRANGLETHORN_VALE },
						["cost"] = {
							{ "i", 19720, 1 },	-- Primal Hakkari Sash
						},
						["groups"] = {
							i(19839),	-- Zandalar Haruspex's Belt
						},
					}),
					q(8110, {	-- Enchanted South Seas Kelp [Friendly]
						["qg"] = 14904,		-- Maywiki of Zuldazar
						["minReputation"] = { FACTION_ZANDALAR_TRIBE, FRIENDLY },	-- Zandalari Tribe, Friendly.
						["coord"] = { 15.3, 16.0, STRANGLETHORN_VALE },
						["groups"] = {
							i(19610),	-- Enchanted South Seas Kelp
						},
					}),
					q(8111, {	-- Enchanted South Seas Kelp [Honored]
						["qg"] = 14904,		-- Maywiki of Zuldazar
						["sourceQuest"] = 8110,	-- Enchanted South Seas Kelp [Friendly]
						["minReputation"] = { FACTION_ZANDALAR_TRIBE, HONORED },	-- Zandalari Tribe, Honored.
						["coord"] = { 15.3, 16.0, STRANGLETHORN_VALE },
						["groups"] = {
							i(19611),	-- Enchanted South Seas Kelp
						},
					}),
					q(8112, {	-- Enchanted South Seas Kelp [Revered]
						["qg"] = 14904,		-- Maywiki of Zuldazar
						["sourceQuest"] = 8111,	-- Enchanted South Seas Kelp [Honored]
						["minReputation"] = { FACTION_ZANDALAR_TRIBE, REVERED },	-- Zandalari Tribe, Revered.
						["coord"] = { 15.3, 16.0, STRANGLETHORN_VALE },
						["groups"] = {
							i(19612),	-- Enchanted South Seas Kelp
						},
					}),
					q(8113, {	-- Pristine Enchanted South Seas Kelp
						["qg"] = 14904,		-- Maywiki of Zuldazar
						["sourceQuest"] = 8112,	-- Enchanted South Seas Kelp [Revered]
						["minReputation"] = { FACTION_ZANDALAR_TRIBE, EXALTED },	-- Zandalari Tribe, Exalted.
						["coord"] = { 15.3, 16.0, STRANGLETHORN_VALE },
						["groups"] = {
							i(19613),	-- Pristine Enchanted South Seas Kelp
						},
					}),
				})),
				cl(HUNTER, bubbleDown({ ["classes"] = { HUNTER }, ["lvl"] = 58 }, {
					q(8187, {	-- Falcon's Call [Hunter]
						["qg"] = 15042,		-- Zanza the Restless
						["repeatable"] = true,
						["cost"] = {
							{ "i", 22637, 1 },	-- Primal Hakkari Idol
							{ "i", 19816, 1 },	-- Punctured Voodoo Doll [Hunter]
						},
						["groups"] = {
							i(19785),	-- Falcon's Call [Hunter]
						},
					}),
					q(8067, {	-- Paragons of Power: The Predator's Mantle [Revered]
						["qg"] = 14905,		-- Falthir the Sightless
						["minReputation"] = { FACTION_ZANDALAR_TRIBE, REVERED },	-- Zandalari Tribe, Revered.
						["coord"] = { 14.1, 13.7, STRANGLETHORN_VALE },
						["cost"] = {
							{ "i", 19724, 1 },	-- Primal Hakkari Aegis
						},
						["groups"] = {
							i(19831),	-- Zandalar Predator's Mantle
						},
					}),
					q(8062, {	-- Paragons of Power: The Predator's Bracers [Friendly]
						["qg"] = 14905,		-- Falthir the Sightless
						["minReputation"] = { FACTION_ZANDALAR_TRIBE, FRIENDLY },	-- Zandalari Tribe, Friendly.
						["coord"] = { 14.1, 13.7, STRANGLETHORN_VALE },
						["cost"] = {
							{ "i", 19716, 1 },	-- Primal Hakkari Bindings
						},
						["groups"] = {
							i(19833),	-- Zandalar Predator's Bracers
						},
					}),
					q(8066, {	-- Paragons of Power: The Predator's Belt [Honored]
						["qg"] = 14905,		-- Falthir the Sightless
						["minReputation"] = { FACTION_ZANDALAR_TRIBE, HONORED },	-- Zandalari Tribe, Honored.
						["coord"] = { 14.1, 13.7, STRANGLETHORN_VALE },
						["cost"] = {
							{ "i", 19721, 1 },	-- Primal Hakkari Shawl
						},
						["groups"] = {
							i(19832),	-- Zandalar Predator's Belt
						},
					}),
					q(8145, {	-- The Maelstrom's Tendril [Friendly]
						["qg"] = 14905,		-- Falthir the Sightless
						["minReputation"] = { FACTION_ZANDALAR_TRIBE, FRIENDLY },	-- Zandalari Tribe, Friendly.
						["coord"] = { 14.1, 13.7, STRANGLETHORN_VALE },
						["groups"] = {
							i(19618),	-- Maelstrom's Tendril
						},
					}),
					q(8146, {	-- The Maelstrom's Tendril [Honored]
						["qg"] = 14905,		-- Falthir the Sightless
						["sourceQuest"] = 8145,	-- The Maelstrom's Tendril [Friendly]
						["minReputation"] = { FACTION_ZANDALAR_TRIBE, HONORED },	-- Zandalari Tribe, Honored.
						["coord"] = { 14.1, 13.7, STRANGLETHORN_VALE },
						["groups"] = {
							i(19619),	-- Maelstrom's Tendril
						},
					}),
					q(8147, {	-- The Maelstrom's Tendril [Revered]
						["qg"] = 14905,		-- Falthir the Sightless
						["sourceQuest"] = 8146,	-- The Maelstrom's Tendril [Honored]
						["minReputation"] = { FACTION_ZANDALAR_TRIBE, REVERED },	-- Zandalari Tribe, Revered.
						["coord"] = { 14.1, 13.7, STRANGLETHORN_VALE },
						["groups"] = {
							i(19620),	-- Maelstrom's Tendril
						},
					}),
					q(8148, {	-- The Maelstrom's Wrath
						["qg"] = 14905,		-- Falthir the Sightless
						["sourceQuest"] = 8147,	-- The Maelstrom's Tendril [Revered]
						["minReputation"] = { FACTION_ZANDALAR_TRIBE, EXALTED },	-- Zandalari Tribe, Exalted.
						["coord"] = { 14.1, 13.7, STRANGLETHORN_VALE },
						["groups"] = {
							i(19621),	-- Maelstrom's Wrath
						},
					}),
				})),
				cl(MAGE, bubbleDown({ ["classes"] = { MAGE }, ["lvl"] = 58 }, {
					q(8189, {	-- Presence of Sight [Mage]
						["qg"] = 15042,		-- Zanza the Restless
						["repeatable"] = true,
						["cost"] = {
							{ "i", 22637, 1 },	-- Primal Hakkari Idol
							{ "i", 19818, 1 },	-- Punctured Voodoo Doll [Mage]
						},
						["groups"] = {
							i(19787),	-- Presence of Sight [Mage]
						},
					}),
					q(8068, {	-- Paragons of Power: The Illusionist's Mantle [Honored]
						["qg"] = 14903,		-- Al'tabim the All-Seeing
						["minReputation"] = { FACTION_ZANDALAR_TRIBE, HONORED },	-- Zandalari Tribe, Honored.
						["coord"] = { 15.3, 16.1, STRANGLETHORN_VALE },
						["cost"] = {
							{ "i", 19721, 1 },	-- Primal Hakkari Shawl
						},
						["groups"] = {
							i(19845),	-- Zandalar Illusionist's Mantle
						},
					}),
					q(8069, {	-- Paragons of Power: The Illusionist's Robes [Revered]
						["qg"] = 14903,		-- Al'tabim the All-Seeing
						["minReputation"] = { FACTION_ZANDALAR_TRIBE, REVERED },	-- Zandalari Tribe, Revered.
						["coord"] = { 15.3, 16.1, STRANGLETHORN_VALE },
						["cost"] = {
							{ "i", 19723, 1 },	-- Primal Hakkari Kossack
						},
						["groups"] = {
							i(20034),	-- Zandalar Illusionist's Robe
						},
					}),
					q(8060, {	-- Paragons of Power: The Illusionist's Wraps [Friendly]
						["qg"] = 14903,		-- Al'tabim the All-Seeing
						["minReputation"] = { FACTION_ZANDALAR_TRIBE, FRIENDLY },	-- Zandalari Tribe, Friendly.
						["coord"] = { 15.3, 16.1, STRANGLETHORN_VALE },
						["cost"] = {
							{ "i", 19716, 1 },	-- Primal Hakkari Bindings
						},
						["groups"] = {
							i(19846),	-- Zandalar Illusionist's Wraps
						},
					}),
					q(8101, {	-- The Pebble of Kajaro [Friendly]
						["qg"] = 14903,		-- Al'tabim the All-Seeing
						["minReputation"] = { FACTION_ZANDALAR_TRIBE, FRIENDLY },	-- Zandalari Tribe, Friendly.
						["coord"] = { 15.3, 16.1, STRANGLETHORN_VALE },
						["groups"] = {
							i(19598),	-- Pebble of Kajaro
						},
					}),
					q(8102, {	-- The Pebble of Kajaro [Honored]
						["qg"] = 14903,		-- Al'tabim the All-Seeing
						["sourceQuest"] = 8101,	-- The Pebble of Kajaro [Friendly]
						["minReputation"] = { FACTION_ZANDALAR_TRIBE, HONORED },	-- Zandalari Tribe, Honored.
						["coord"] = { 15.3, 16.1, STRANGLETHORN_VALE },
						["groups"] = {
							i(19599),	-- Pebble of Kajaro
						},
					}),
					q(8103, {	-- The Pebble of Kajaro [Revered]
						["qg"] = 14903,		-- Al'tabim the All-Seeing
						["sourceQuest"] = 8102,	-- The Pebble of Kajaro [Honored]
						["minReputation"] = { FACTION_ZANDALAR_TRIBE, REVERED },	-- Zandalari Tribe, Revered.
						["coord"] = { 15.3, 16.1, STRANGLETHORN_VALE },
						["groups"] = {
							i(19600),	-- Pebble of Kajaro
						},
					}),
					q(8104, {	-- The Jewel of Kajaro
						["qg"] = 14903,		-- Al'tabim the All-Seeing
						["sourceQuest"] = 8103,	-- The Pebble of Kajaro [Revered]
						["minReputation"] = { FACTION_ZANDALAR_TRIBE, EXALTED },	-- Zandalari Tribe, Exalted.
						["coord"] = { 15.3, 16.1, STRANGLETHORN_VALE },
						["groups"] = {
							i(19601),	-- Jewel of Kajaro
						},
					}),
				})),
				cl(PALADIN, bubbleDown({ ["classes"] = { PALADIN }, ["lvl"] = 58 }, {
					q(8185, {	-- Syncretist's Sigil [Paladin]
						["qg"] = 15042,		-- Zanza the Restless
						["repeatable"] = true,
						["cost"] = {
							{ "i", 22637, 1 },	-- Primal Hakkari Idol
							{ "i", 19815, 1 },	-- Punctured Voodoo Doll [Paladin]
						},
						["groups"] = {
							i(19783),	-- Syncretist's Sigil [Paladin]
						},
					}),
					q(8055, {	-- Paragons of Power: The Freethinker's Breastplate [Revered]
						["qg"] = 14902,		-- Jin'rokh the Breaker
						["minReputation"] = { FACTION_ZANDALAR_TRIBE, REVERED },	-- Zandalari Tribe, Revered.
						["coord"] = { 15.3, 14.4, STRANGLETHORN_VALE },
						["cost"] = {
							{ "i", 19722, 1 },	-- Primal Hakkari Tabard
						},
						["groups"] = {
							i(19825),	-- Zandalar Freethinker's Breastplate
						},
					}),
					q(8053, {	-- Paragons of Power: The Freethinker's Armguards [Friendly]
						["qg"] = 14902,		-- Jin'rokh the Breaker
						["minReputation"] = { FACTION_ZANDALAR_TRIBE, FRIENDLY },	-- Zandalari Tribe, Friendly.
						["coord"] = { 15.3, 14.4, STRANGLETHORN_VALE },
						["cost"] = {
							{ "i", 19716, 1 },	-- Primal Hakkari Bindings
						},
						["groups"] = {
							i(19827),	-- Zandalar Freethinker's Armguards
						},
					}),
					q(8054, {	-- Paragons of Power: The Freethinker's Belt [Honored]
						["qg"] = 14902,		-- Jin'rokh the Breaker
						["minReputation"] = { FACTION_ZANDALAR_TRIBE, HONORED },	-- Zandalari Tribe, Honored.
						["coord"] = { 15.3, 14.4, STRANGLETHORN_VALE },
						["cost"] = {
							{ "i", 19721, 1 },	-- Primal Hakkari Shawl
						},
						["groups"] = {
							i(19826),	-- Zandalar Freethinker's Belt
						},
					}),
					q(8045, {	-- The Heathen's Brand [Friendly]
						["qg"] = 14902,		-- Jin'rokh the Breaker
						["minReputation"] = { FACTION_ZANDALAR_TRIBE, FRIENDLY },	-- Zandalari Tribe, Friendly.
						["coord"] = { 15.3, 14.4, STRANGLETHORN_VALE },
						["groups"] = {
							i(19579),	-- Heathen's Brand
						},
					}),
					q(8046, {	-- The Heathen's Brand [Honored]
						["qg"] = 14902,		-- Jin'rokh the Breaker
						["sourceQuest"] = 8045,	-- The Heathen's Brand [Friendly]
						["minReputation"] = { FACTION_ZANDALAR_TRIBE, HONORED },	-- Zandalari Tribe, Honored.
						["coord"] = { 15.3, 14.4, STRANGLETHORN_VALE },
						["groups"] = {
							i(19585),	-- Heathen's Brand
						},
					}),
					q(8047, {	-- The Heathen's Brand [Revered]
						["qg"] = 14902,		-- Jin'rokh the Breaker
						["sourceQuest"] = 8046,	-- The Heathen's Brand [Honored]
						["minReputation"] = { FACTION_ZANDALAR_TRIBE, REVERED },	-- Zandalari Tribe, Revered.
						["coord"] = { 15.3, 14.4, STRANGLETHORN_VALE },
						["groups"] = {
							i(19586),	-- Heathen's Brand
						},
					}),
					q(8048, {	-- The Hero's Brand
						["qg"] = 14902,		-- Jin'rokh the Breaker
						["sourceQuest"] = 8047,	-- The Heathen's Brand [Revered]
						["minReputation"] = { FACTION_ZANDALAR_TRIBE, EXALTED },	-- Zandalari Tribe, Exalted.
						["coord"] = { 15.3, 14.4, STRANGLETHORN_VALE },
						["groups"] = {
							i(19588),	-- Hero's Brand
						},
					}),
				})),
				cl(PRIEST, bubbleDown({ ["classes"] = { PRIEST }, ["lvl"] = 58 }, {
					q(8191, {	-- Prophetic Aura [Priest]
						["qg"] = 15042,		-- Zanza the Restless
						["repeatable"] = true,
						["cost"] = {
							{ "i", 22637, 1 },	-- Primal Hakkari Idol
							{ "i", 19820, 1 },	-- Punctured Voodoo Doll [Priest]
						},
						["groups"] = {
							i(19789),	-- Prophetic Aura [Priest]
						},
					}),
					q(8071, {	-- Paragons of Power: The Confessor's Mantle [Revered]
						["qg"] = 14903,		-- Al'tabim the All-Seeing
						["minReputation"] = { FACTION_ZANDALAR_TRIBE, REVERED },	-- Zandalari Tribe, Revered.
						["coord"] = { 15.3, 16.1, STRANGLETHORN_VALE },
						["cost"] = {
							{ "i", 19724, 1 },	-- Primal Hakkari Aegis
						},
						["groups"] = {
							i(19841),	-- Zandalar Confessor's Mantle
						},
					}),
					q(8061, {	-- Paragons of Power: The Confessor's Wraps [Friendly]
						["qg"] = 14903,		-- Al'tabim the All-Seeing
						["minReputation"] = { FACTION_ZANDALAR_TRIBE, FRIENDLY },	-- Zandalari Tribe, Friendly.
						["coord"] = { 15.3, 16.1, STRANGLETHORN_VALE },
						["cost"] = {
							{ "i", 19718, 1 },	-- Primal Hakkari Stanchion
						},
						["groups"] = {
							i(19843),	-- Zandalar Confessor's Wraps
						},
					}),
					q(8070, {	-- Paragons of Power: The Confessor's Bindings [Honored]
						["qg"] = 14903,		-- Al'tabim the All-Seeing
						["minReputation"] = { FACTION_ZANDALAR_TRIBE, HONORED },	-- Zandalari Tribe, Honored.
						["coord"] = { 15.3, 16.1, STRANGLETHORN_VALE },
						["cost"] = {
							{ "i", 19720, 1 },	-- Primal Hakkari Sash
						},
						["groups"] = {
							i(19842),	-- Zandalar Confessor's Bindings
						},
					}),
					q(8049, {	-- The Eye of Zuldazar [Friendly]
						["qg"] = 14903,		-- Al'tabim the All-Seeing
						["minReputation"] = { FACTION_ZANDALAR_TRIBE, FRIENDLY },	-- Zandalari Tribe, Friendly.
						["coord"] = { 15.3, 16.1, STRANGLETHORN_VALE },
						["groups"] = {
							i(19591),	-- The Eye of Zuldazar
						},
					}),
					q(8050, {	-- The Eye of Zuldazar [Honored]
						["qg"] = 14903,		-- Al'tabim the All-Seeing
						["sourceQuest"] = 8049,	-- The Eye of Zuldazar [Friendly]
						["minReputation"] = { FACTION_ZANDALAR_TRIBE, HONORED },	-- Zandalari Tribe, Honored.
						["coord"] = { 15.3, 16.1, STRANGLETHORN_VALE },
						["groups"] = {
							i(19592),	-- The Eye of Zuldazar
						},
					}),
					q(8051, {	-- The Eye of Zuldazar [Revered]
						["qg"] = 14903,		-- Al'tabim the All-Seeing
						["sourceQuest"] = 8050,	-- The Eye of Zuldazar [Honored]
						["minReputation"] = { FACTION_ZANDALAR_TRIBE, REVERED },	-- Zandalari Tribe, Revered.
						["coord"] = { 15.3, 16.1, STRANGLETHORN_VALE },
						["groups"] = {
							i(19593),	-- The Eye of Zuldazar
						},
					}),
					q(8052, {	-- The All-Seeing Eye of Zuldazar
						["qg"] = 14903,		-- Al'tabim the All-Seeing
						["sourceQuest"] = 8051,	-- The Eye of Zuldazar [Revered]
						["minReputation"] = { FACTION_ZANDALAR_TRIBE, EXALTED },	-- Zandalari Tribe, Exalted.
						["coord"] = { 15.3, 16.1, STRANGLETHORN_VALE },
						["groups"] = {
							i(19594),	-- The All-Seeing Eye of Zuldazar
						},
					}),
				})),
				cl(ROGUE, bubbleDown({ ["classes"] = { ROGUE }, ["lvl"] = 58 }, {
					q(8186, {	-- Death's Embrace [Rogue]
						["qg"] = 15042,		-- Zanza the Restless
						["repeatable"] = true,
						["cost"] = {
							{ "i", 22637, 1 },	-- Primal Hakkari Idol
							{ "i", 19814, 1 },	-- Punctured Voodoo Doll [Rogue]
						},
						["groups"] = {
							i(19784),	-- Death's Embrace [Rogue]
						},
					}),
					q(8072, {	-- Paragons of Power: The Madcap's Mantle [Honored]
						["qg"] = 14905,		-- Falthir the Sightless
						["minReputation"] = { FACTION_ZANDALAR_TRIBE, HONORED },	-- Zandalari Tribe, Honored.
						["coord"] = { 14.1, 13.7, STRANGLETHORN_VALE },
						["cost"] = {
							{ "i", 19719, 1 },	-- Primal Hakkari Girdle
						},
						["groups"] = {
							i(19835),	-- Zandalar Madcap's Mantle
						},
					}),
					q(8073, {	-- Paragons of Power: The Madcap's Tunic [Revered]
						["qg"] = 14905,		-- Falthir the Sightless
						["minReputation"] = { FACTION_ZANDALAR_TRIBE, REVERED },	-- Zandalari Tribe, Revered.
						["coord"] = { 14.1, 13.7, STRANGLETHORN_VALE },
						["cost"] = {
							{ "i", 19724, 1 },	-- Primal Hakkari Aegis
						},
						["groups"] = {
							i(19834),	-- Zandalar Madcap's Tunic
						},
					}),
					q(8063, {	-- Paragons of Power: The Madcap's Bracers [Friendly]
						["qg"] = 14905,		-- Falthir the Sightless
						["minReputation"] = { FACTION_ZANDALAR_TRIBE, FRIENDLY },	-- Zandalari Tribe, Friendly.
						["coord"] = { 14.1, 13.7, STRANGLETHORN_VALE },
						["cost"] = {
							{ "i", 19717, 1 },	-- Primal Hakkari Armsplint
						},
						["groups"] = {
							i(19836),	-- Zandalar Madcap's Bracers
						},
					}),
					q(8141, {	-- Zandalrian Shadow Talisman [Friendly]
						["qg"] = 14905,		-- Falthir the Sightless
						["minReputation"] = { FACTION_ZANDALAR_TRIBE, FRIENDLY },	-- Zandalari Tribe, Friendly.
						["coord"] = { 14.1, 13.7, STRANGLETHORN_VALE },
						["groups"] = {
							i(19614),	-- Zandalrian Shadow Talisman
						},
					}),
					q(8142, {	-- Zandalrian Shadow Talisman [Honored]
						["qg"] = 14905,		-- Falthir the Sightless
						["sourceQuest"] = 8141,	-- Zandalrian Shadow Talisman [Friendly]
						["minReputation"] = { FACTION_ZANDALAR_TRIBE, HONORED },	-- Zandalari Tribe, Honored.
						["coord"] = { 14.1, 13.7, STRANGLETHORN_VALE },
						["groups"] = {
							i(19615),	-- Zandalrian Shadow Talisman
						},
					}),
					q(8143, {	-- Zandalrian Shadow Talisman [Revered]
						["qg"] = 14905,		-- Falthir the Sightless
						["sourceQuest"] = 8142,	-- Zandalrian Shadow Talisman [Honored]
						["minReputation"] = { FACTION_ZANDALAR_TRIBE, REVERED },	-- Zandalari Tribe, Revered.
						["coord"] = { 14.1, 13.7, STRANGLETHORN_VALE },
						["groups"] = {
							i(19616),	-- Zandalrian Shadow Talisman
						},
					}),
					q(8144, {	-- Zandalrian Shadow Mastery Talisman
						["qg"] = 14905,		-- Falthir the Sightless
						["sourceQuest"] = 8143,	-- Zandalrian Shadow Talisman [Revered]
						["minReputation"] = { FACTION_ZANDALAR_TRIBE, EXALTED },	-- Zandalari Tribe, Exalted.
						["coord"] = { 14.1, 13.7, STRANGLETHORN_VALE },
						["groups"] = {
							i(19617),	-- Zandalrian Shadow Mastery Talisman
						},
					}),
				})),
				cl(SHAMAN, bubbleDown({ ["classes"] = { SHAMAN }, ["lvl"] = 58 }, {
					q(8188, {	-- Vodouisant's Vigilant Embrace [Shaman]
						["qg"] = 15042,		-- Zanza the Restless
						["repeatable"] = true,
						["cost"] = {
							{ "i", 22637, 1 },	-- Primal Hakkari Idol
							{ "i", 19817, 1 },	-- Punctured Voodoo Doll [Shaman]
						},
						["groups"] = {
							i(19786),	-- Vodouisant's Vigilant Embrace [Shaman]
						},
					}),
					q(8075, {	-- Paragons of Power: The Augur's Hauberk [Revered]
						["qg"] = 14904,		-- Maywiki of Zuldazar
						["minReputation"] = { FACTION_ZANDALAR_TRIBE, REVERED },	-- Zandalari Tribe, Revered.
						["coord"] = { 15.3, 16.0, STRANGLETHORN_VALE },
						["cost"] = {
							{ "i", 19722, 1 },	-- Primal Hakkari Tabard
						},
						["groups"] = {
							i(19828),	-- Zandalar Augur's Hauberk
						},
					}),
					q(8056, {	-- Paragons of Power: The Augur's Bracers [Friendly]
						["qg"] = 14904,		-- Maywiki of Zuldazar
						["minReputation"] = { FACTION_ZANDALAR_TRIBE, FRIENDLY },	-- Zandalari Tribe, Friendly.
						["coord"] = { 15.3, 16.0, STRANGLETHORN_VALE },
						["cost"] = {
							{ "i", 19717, 1 },	-- Primal Hakkari Armsplint
						},
						["groups"] = {
							i(19830),	-- Zandalar Augur's Bracers
						},
					}),
					q(8074, {	-- Paragons of Power: The Augur's Belt [Honored]
						["qg"] = 14904,		-- Maywiki of Zuldazar
						["minReputation"] = { FACTION_ZANDALAR_TRIBE, HONORED },	-- Zandalari Tribe, Honored.
						["coord"] = { 15.3, 16.0, STRANGLETHORN_VALE },
						["cost"] = {
							{ "i", 19719, 1 },	-- Primal Hakkari Girdle
						},
						["groups"] = {
							i(19829),	-- Zandalar Augur's Belt
						},
					}),
					q(8116, {	-- Vision of Voodress [Friendly]
						["qg"] = 14904,		-- Maywiki of Zuldazar
						["minReputation"] = { FACTION_ZANDALAR_TRIBE, FRIENDLY },	-- Zandalari Tribe, Friendly.
						["coord"] = { 15.3, 16.0, STRANGLETHORN_VALE },
						["groups"] = {
							i(19606),	-- Vision of Voodress
						},
					}),
					q(8117, {	-- Vision of Voodress [Honored]
						["qg"] = 14904,		-- Maywiki of Zuldazar
						["sourceQuest"] = 8116,	-- Vision of Voodress [Friendly]
						["minReputation"] = { FACTION_ZANDALAR_TRIBE, HONORED },	-- Zandalari Tribe, Honored.
						["coord"] = { 15.3, 16.0, STRANGLETHORN_VALE },
						["groups"] = {
							i(19607),	-- Vision of Voodress
						},
					}),
					q(8118, {	-- Vision of Voodress [Revered]
						["qg"] = 14904,		-- Maywiki of Zuldazar
						["sourceQuest"] = 8117,	-- Vision of Voodress [Honored]
						["minReputation"] = { FACTION_ZANDALAR_TRIBE, REVERED },	-- Zandalari Tribe, Revered.
						["coord"] = { 15.3, 16.0, STRANGLETHORN_VALE },
						["groups"] = {
							i(19608),	-- Vision of Voodress
						},
					}),
					q(8119, {	-- The Unmarred Vision of Voodress
						["qg"] = 14904,		-- Maywiki of Zuldazar
						["sourceQuest"] = 8118,	-- Vision of Voodress [Revered]
						["minReputation"] = { FACTION_ZANDALAR_TRIBE, EXALTED },	-- Zandalari Tribe, Exalted.
						["coord"] = { 15.3, 16.0, STRANGLETHORN_VALE },
						["groups"] = {
							i(19609),	-- Unmarred Vision of Voodress
						},
					}),
				})),
				cl(WARLOCK, bubbleDown({ ["classes"] = { WARLOCK }, ["lvl"] = 58 }, {
					q(8190, {	-- Hoodoo Hex [Warlock]
						["qg"] = 15042,		-- Zanza the Restless
						["repeatable"] = true,
						["cost"] = {
							{ "i", 22637, 1 },	-- Primal Hakkari Idol
							{ "i", 19819, 1 },	-- Punctured Voodoo Doll [Warlock]
						},
						["groups"] = {
							i(19788),	-- Hoodoo Hex [Warlock]
						},
					}),
					q(8076, {	-- Paragons of Power: The Demoniac's Mantle [Honored]
						["qg"] = 14903,		-- Al'tabim the All-Seeing
						["minReputation"] = { FACTION_ZANDALAR_TRIBE, HONORED },	-- Zandalari Tribe, Honored.
						["coord"] = { 15.3, 16.1, STRANGLETHORN_VALE },
						["cost"] = {
							{ "i", 19720, 1 },	-- Primal Hakkari Sash
						},
						["groups"] = {
							i(19849),	-- Zandalar Demoniac's Mantle
						},
					}),
					q(8077, {	-- Paragons of Power: The Demoniac's Robes [Revered]
						["qg"] = 14903,		-- Al'tabim the All-Seeing
						["minReputation"] = { FACTION_ZANDALAR_TRIBE, REVERED },	-- Zandalari Tribe, Revered.
						["coord"] = { 15.3, 16.1, STRANGLETHORN_VALE },
						["cost"] = {
							{ "i", 19723, 1 },	-- Primal Hakkari Kossack
						},
						["groups"] = {
							i(20033),	-- Zandalar Demoniac's Robe
						},
					}),
					q(8059, {	-- Paragons of Power: The Demoniac's Wraps [Friendly]
						["qg"] = 14903,		-- Al'tabim the All-Seeing
						["minReputation"] = { FACTION_ZANDALAR_TRIBE, FRIENDLY },	-- Zandalari Tribe, Friendly.
						["coord"] = { 15.3, 16.1, STRANGLETHORN_VALE },
						["cost"] = {
							{ "i", 19718, 1 },	-- Primal Hakkari Stanchion
						},
						["groups"] = {
							i(19848),	-- Zandalar Demoniac's Wraps
						},
					}),
					q(8106, {	-- Kezan's Taint [Friendly]
						["qg"] = 14903,		-- Al'tabim the All-Seeing
						["minReputation"] = { FACTION_ZANDALAR_TRIBE, FRIENDLY },	-- Zandalari Tribe, Friendly.
						["coord"] = { 15.3, 16.1, STRANGLETHORN_VALE },
						["groups"] = {
							i(19602),	-- Kezan's Taint
						},
					}),
					q(8107, {	-- Kezan's Taint [Honored]
						["qg"] = 14903,		-- Al'tabim the All-Seeing
						["sourceQuest"] = 8106,	-- Kezan's Taint [Friendly]
						["minReputation"] = { FACTION_ZANDALAR_TRIBE, HONORED },	-- Zandalari Tribe, Honored.
						["coord"] = { 15.3, 16.1, STRANGLETHORN_VALE },
						["groups"] = {
							i(19603),	-- Kezan's Taint
						},
					}),
					q(8108, {	-- Kezan's Taint [Revered]
						["qg"] = 14903,		-- Al'tabim the All-Seeing
						["sourceQuest"] = 8107,	-- Kezan's Taint [Honored]
						["minReputation"] = { FACTION_ZANDALAR_TRIBE, REVERED },	-- Zandalari Tribe, Revered.
						["coord"] = { 15.3, 16.1, STRANGLETHORN_VALE },
						["groups"] = {
							i(19604),	-- Kezan's Taint
						},
					}),
					q(8109, {	-- Kezan's Unstoppable Taint
						["qg"] = 14903,		-- Al'tabim the All-Seeing
						["sourceQuest"] = 8108,	-- Kezan's Taint [Revered]
						["minReputation"] = { FACTION_ZANDALAR_TRIBE, EXALTED },	-- Zandalari Tribe, Exalted.
						["coord"] = { 15.3, 16.1, STRANGLETHORN_VALE },
						["groups"] = {
							i(19605),	-- Kezan's Unstoppable Taint
						},
					}),
				})),
				cl(WARRIOR, bubbleDown({ ["classes"] = { WARRIOR }, ["lvl"] = 58 }, {
					q(8184, {	-- Presence of Might [Warrior]
						["qg"] = 15042,		-- Zanza the Restless
						["repeatable"] = true,
						["cost"] = {
							{ "i", 22637, 1 },	-- Primal Hakkari Idol
							{ "i", 19813, 1 },	-- Punctured Voodoo Doll [Warrior]
						},
						["groups"] = {
							i(19782),	-- Presence of Might [Warrior]
						},
					}),
					q(8079, {	-- Paragons of Power: The Vindicator's Breastplate [Revered]
						["qg"] = 14902,		-- Jin'rokh the Breaker
						["minReputation"] = { FACTION_ZANDALAR_TRIBE, REVERED },	-- Zandalari Tribe, Revered.
						["coord"] = { 15.3, 14.4, STRANGLETHORN_VALE },
						["cost"] = {
							{ "i", 19723, 1 },	-- Primal Hakkari Kossack
						},
						["groups"] = {
							i(19822),	-- Zandalar Vindicator's Breastplate
						},
					}),
					q(8058, {	-- Paragons of Power: The Vindicator's Armguards [Friendly]
						["qg"] = 14902,		-- Jin'rokh the Breaker
						["minReputation"] = { FACTION_ZANDALAR_TRIBE, FRIENDLY },	-- Zandalari Tribe, Friendly.
						["coord"] = { 15.3, 14.4, STRANGLETHORN_VALE },
						["cost"] = {
							{ "i", 19717, 1 },	-- Primal Hakkari Armsplint
						},
						["groups"] = {
							i(19824),	-- Zandalar Vindicator's Armguards
						},
					}),
					q(8078, {	-- Paragons of Power: The Vindicator's Belt [Honored]
						["qg"] = 14902,		-- Jin'rokh the Breaker
						["minReputation"] = { FACTION_ZANDALAR_TRIBE, HONORED },	-- Zandalari Tribe, Honored.
						["coord"] = { 15.3, 14.4, STRANGLETHORN_VALE },
						["cost"] = {
							{ "i", 19719, 1 },	-- Primal Hakkari Girdle
						},
						["groups"] = {
							i(19823),	-- Zandalar Vindicator's Belt
						},
					}),
					q(8041, {	-- Strength of Mount Mugamba [Friendly]
						["qg"] = 14902,		-- Jin'rokh the Breaker
						["minReputation"] = { FACTION_ZANDALAR_TRIBE, FRIENDLY },	-- Zandalari Tribe, Friendly.
						["coord"] = { 15.3, 14.4, STRANGLETHORN_VALE },
						["groups"] = {
							i(19574),	-- Strength of Mugamba
						},
					}),
					q(8042, {	-- Strength of Mount Mugamba [Honored]
						["qg"] = 14902,		-- Jin'rokh the Breaker
						["sourceQuest"] = 8041,	-- Strength of Mount Mugamba [Friendly]
						["minReputation"] = { FACTION_ZANDALAR_TRIBE, HONORED },	-- Zandalari Tribe, Honored.
						["coord"] = { 15.3, 14.4, STRANGLETHORN_VALE },
						["groups"] = {
							i(19575),	-- Strength of Mugamba
						},
					}),
					q(8043, {	-- Strength of Mount Mugamba [Revered]
						["qg"] = 14902,		-- Jin'rokh the Breaker
						["sourceQuest"] = 8042,	-- Strength of Mount Mugamba [Honored]
						["minReputation"] = { FACTION_ZANDALAR_TRIBE, REVERED },	-- Zandalari Tribe, Revered.
						["coord"] = { 15.3, 14.4, STRANGLETHORN_VALE },
						["groups"] = {
							i(19576),	-- Strength of Mugamba
						},
					}),
					q(8044, {	-- The Rage of Mount Mugamba
						["qg"] = 14902,		-- Jin'rokh the Breaker
						["sourceQuest"] = 8043,	-- Strength of Mount Mugamba [Revered]
						["minReputation"] = { FACTION_ZANDALAR_TRIBE, EXALTED },	-- Zandalari Tribe, Exalted.
						["coord"] = { 15.3, 14.4, STRANGLETHORN_VALE },
						["groups"] = {
							i(19577),	-- Rage of Mugamba
						},
					}),
				})),
				q(8240, {	-- A Bijou for Zanza
					["qg"] = 15070,		-- Vinchaxa <Servitor of Zanza>
					["description"] = "Costs 1 bijou of any color per turn in. There are 9 colors and 8 (+1 for Shaman/Paladin) classes in the game, as such, some guilds assign specific classes specific color bijous and treat one as a wild card.",
					["coord"] = { 14.5, 15.8, STRANGLETHORN_VALE },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 19708, 1 },	-- Blue Hakkari Bijou
						{ "i", 19713, 1 },	-- Bronze Hakkari Bijou
						{ "i", 19715, 1 },	-- Gold Hakkari Bijou
						{ "i", 19711, 1 },	-- Green Hakkari Bijou
						{ "i", 19710, 1 },	-- Orange Hakkari Bijou
						{ "i", 19712, 1 },	-- Purple Hakkari Bijou
						{ "i", 19707, 1 },	-- Red Hakkari Bijou
						{ "i", 19714, 1 },	-- Silver Hakkari Bijou
						{ "i", 19709, 1 },	-- Yellow Hakkari Bijou
					},
					["lvl"] = 58,
					["groups"] = {
						i(19858),	-- Zandalar Honor Token
					}
				}),
				q(8201, {	-- A Collection of Heads
					["qg"] = 14910,	-- Exzhal <Servitor of Rastakhan>
					["coord"] = { 15.3, 15.5, STRANGLETHORN_VALE },
					["lvl"] = 58,
					["groups"] = {
						objective(1, {	-- 0/1 Gurubashi Head Collection
							["provider"] = { "i", 19880 },	-- Gurubashi Head Collection
							["cost"] = {
								{ "i", 19883, 1 },	-- Sacred Cord
								{ "i", 19881, 5 },	-- Channeler's Head
							},
						}),
						i(20216),	-- Belt of Preserved Heads
						i(20215),	-- Belt of Shriveled Heads
						i(20213),	-- Belt of Shrunken Heads
						i(20217),	-- Belt of Tiny Heads
					},
				}),
				q(8196, {	-- Essence Mangoes
					["qg"] = 14921,	-- Rin'wosho the Trader <Zandalar Supplies & Repair>
					["minReputation"] = { FACTION_ZANDALAR_TRIBE, HONORED },	-- Zandalari Tribe, Honored.
					["description"] = "No. Stop. WHAT ARE YOU DOING! Do not waste your token on this FOR THE LOVE OF GOD!\n - Crieve",
					["coord"] = { 15.1, 16.0, STRANGLETHORN_VALE },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 19858, 1 },	-- Zandalar Honor Token
					},
					["lvl"] = 58,
					["groups"] = {
						i(20031),	-- Essence Mango
					},
				}),
				q(8238, {	-- Gurubashi, Vilebranch, and Witherbark Coins
					["qg"] = 15070,		-- Vinchaxa <Servitor of Zanza>
					["coord"] = { 14.5, 15.8, STRANGLETHORN_VALE },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 19701, 1 },	-- Gurubashi Coin
						{ "i", 19702, 1 },	-- Vilebranch Coin
						{ "i", 19703, 1 },	-- Witherbark Coin
					},
					["lvl"] = 58,
					["groups"] = {
						i(19858),	-- Zandalar Honor Token
					}
				}),
				q(8227, {	-- Nat's Measuring Tape
					["provider"] = { "i", 19973 },	-- Nat's Measuring Tape
					["requireSkill"] = FISHING,
					["lvl"] = 58,
				}),
				q(8239, {	-- Sandfury, Skullsplitter, and Bloodscalp Coins
					["qg"] = 15070,		-- Vinchaxa <Servitor of Zanza>
					["coord"] = { 14.5, 15.8, STRANGLETHORN_VALE },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 19704, 1 },	-- Sandfury Coin
						{ "i", 19705, 1 },	-- Skullsplitter Coin
						{ "i", 19706, 1 },	-- Bloodscalp Coin
					},
					["lvl"] = 58,
					["groups"] = {
						i(19858),	-- Zandalar Honor Token
					}
				}),
				q(8246, {	-- Signets of the Zandalar
					["qg"] = 14921,	-- Rin'wosho the Trader <Zandalar Supplies & Repair>
					["minReputation"] = { FACTION_ZANDALAR_TRIBE, EXALTED },	-- Zandalari Tribe
					["coord"] = { 15.1, 16.0, STRANGLETHORN_VALE },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 19858, 15 },	-- Zandalar Honor Token
					},
					["lvl"] = 58,
					["groups"] = {
						i(20077),	-- Zandalar Signet of Might
						i(20076),	-- Zandalar Signet of Mojo
						i(20078),	-- Zandalar Signet of Serenity
					},
				}),
				q(8183, {	-- The Heart of Hakkar
					["provider"] = { "i", 19802 },	-- The Heart of Hakkar
					["description"] = "Turning this head in will cause a world buff to drop for those on the island or in Booty Bay. Announce when you're going to do this for folks looking to get WBs for raid!",
					["maps"] = { STRANGLETHORN_VALE },
					["lvl"] = 58,
					["groups"] = {
						i(19948),	-- Zandalarian Hero Badge
						i(19950),	-- Zandalarian Hero Charm
						i(19949),	-- Zandalarian Hero Medallion
					},
				}),
				applyclassicphase(PHASE_SIX, q(9210, {	-- The Savage Guard - Arcanum of Focus
					["qg"] = 15042,		-- Zanza the Restless
					["repeatable"] = true,
					["cost"] = {
						{ "i", 18330, 1 },	-- Arcanum of Focus
					},
					["lvl"] = 58,
					["groups"] = {
						i(22635),	-- Savage Guard
					},
				})),
				applyclassicphase(PHASE_SIX, q(9208, {	-- The Savage Guard - Arcanum of Protection
					["qg"] = 15042,		-- Zanza the Restless
					["repeatable"] = true,
					["cost"] = {
						{ "i", 18331, 1 },	-- Arcanum of Protection
					},
					["lvl"] = 58,
					["groups"] = {
						i(22635),	-- Savage Guard
					},
				})),
				applyclassicphase(PHASE_SIX, q(9209, {	-- The Savage Guard - Arcanum of Rapidity
					["qg"] = 15042,	-- Zanza the Restless
					["repeatable"] = true,
					["cost"] = {
						{ "i", 18329, 1 },	-- Arcanum of Rapidity
					},
					["lvl"] = 58,
					["groups"] = {
						i(22635),	-- Savage Guard
					},
				})),
				q(8243, {	-- Zanza's Potent Potables
					["qg"] = 14921,	-- Rin'wosho the Trader <Zandalar Supplies & Repair>
					["minReputation"] = { FACTION_ZANDALAR_TRIBE, REVERED },	-- Zandalari Tribe, Revered.
					["coord"] = { 15.1, 16.0, STRANGLETHORN_VALE },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 19858, 1 },	-- Zandalar Honor Token
					},
					["lvl"] = 58,
					["groups"] = {
						i(20080),	-- Sheen of Zanza
						i(20079),	-- Spirit of Zanza
						i(20081),	-- Swiftness of Zanza
					},
				}),
				q(8195, {	-- Zulian, Razzashi, and Hakkari Coins
					["qg"] = 15070,		-- Vinchaxa <Servitor of Zanza>
					["coord"] = { 14.5, 15.8, STRANGLETHORN_VALE },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 19698, 1 },	-- Zulian Coin
						{ "i", 19699, 1 },	-- Razzashi Coin
						{ "i", 19700, 1 },	-- Hakkari Coin
					},
					["lvl"] = 58,
					["groups"] = {
						i(19858),	-- Zandalar Honor Token
					}
				}),
			}),
			n(VENDORS, {
				n(14921, {	-- Rin'wosho the Trader <Zandalar Supplies & Repair>
					["coord"] = { 15.1, 16.0, STRANGLETHORN_VALE },
					["groups"] = {
						applyclassicphase(PHASE_FIVE, i(20757)),	-- Formula: Brilliant Mana Oil (RECIPE!)
						applyclassicphase(PHASE_FIVE, i(20756)),	-- Formula: Brilliant Wizard Oil (RECIPE!)
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_SIX, i(232610, {	-- Formula: Magnificent Trollshine
							["timeline"] = { ADDED_1_15_5 },
						})),
						-- #endif
						i(19772),	-- Pattern: Blood Tiger Breastplate (RECIPE!)
						i(19773),	-- Pattern: Blood Tiger Shoulders (RECIPE!)
						i(19766),	-- Pattern: Bloodvine Boots
						i(19765),	-- Pattern: Bloodvine Leggings
						i(19764),	-- Pattern: Bloodvine Vest
						i(19771),	-- Pattern: Primal Batskin Bracers (RECIPE!)
						i(19770),	-- Pattern: Primal Batskin Gloves (RECIPE!)
						i(19769),	-- Pattern: Primal Batskin Jerkin (RECIPE!)
						i(19776),	-- Plans: Bloodsoul Breastplate (RECIPE!)
						i(19778),	-- Plans: Bloodsoul Gauntlets (RECIPE!)
						i(19777),	-- Plans: Bloodsoul Shoulders (RECIPE!)
						i(19779),	-- Plans: Darksoul Breastplate (RECIPE!)
						i(19780),	-- Plans: Darksoul Leggings (RECIPE!)
						i(19781),	-- Plans: Darksoul Shoulders (RECIPE!)
						i(20012),	-- Recipe: Greater Dreamless Sleep Potion (RECIPE!)
						i(20013),	-- Recipe: Living Action Potion (RECIPE!)
						i(20011),	-- Recipe: Mageblood Elixir[2.1.0+] / Mageblood Potion (RECIPE!)
						i(20014),	-- Recipe: Mighty Troll's Blood Elixir[Wrath+] / Major Troll's Blood Potion (RECIPE!)
						i(20000),	-- Schematic: Bloodvine Goggles (RECIPE!)
						i(20001),	-- Schematic: Bloodvine Lens (RECIPE!)
					},
				}),
			}),
			n(ZONE_DROPS, {
				-- #if BEFORE 4.0.3
				i(12662, {	-- Demonic Rune
					["cr"] = 15111,	-- Mad Servant
				}),
				-- #endif
				i(20263),	-- Gurubashi Helm
				i(19908),	-- Sceptre of Smiting
				i(20261),	-- Shadow Panther Hide Belt
				i(20259),	-- Shadow Panther Hide Gloves
				i(20258),	-- Zulian Ceremonial Staff
				i(19921),	-- Zulian Hacker
				i(19708),	-- Blue Hakkari Bijou
				i(19713),	-- Bronze Hakkari Bijou
				i(19715),	-- Gold Hakkari Bijou
				i(19711),	-- Green Hakkari Bijou
				i(19710),	-- Orange Hakkari Bijou
				i(19712),	-- Purple Hakkari Bijou
				i(19707),	-- Red Hakkari Bijou
				i(19714),	-- Silver Hakkari Bijou
				i(19709),	-- Yellow Hakkari Bijou
				i(19706),	-- Bloodscalp Coin
				i(19701),	-- Gurubashi Coin
				i(19700),	-- Hakkari Coin
				i(19699),	-- Razzashi Coin
				i(19704),	-- Sandfury Coin
				i(19705),	-- Skullsplitter Coin
				i(19702),	-- Vilebranch Coin
				i(19703),	-- Witherbark Coin
				i(19698),	-- Zulian Coin
				-- #if BEFORE CATA
				RAZZASHI_HATCHLING,
				-- #endif
			}),
			n(COMMON_BOSS_DROPS, {
				i(22721, {	-- Band of Servitude
					["crs"] = {
						14509,	-- High Priest Thekal
						14507,	-- High Priest Venoxis
						14515,	-- High Priestess Arlokk
						14517,	-- High Priestess Jeklik
						14510,	-- High Priestess Mar'li
					},
				}),
				i(22716, {	-- Belt of Untapped Power
					["crs"] = {
						14509,	-- High Priest Thekal
						14507,	-- High Priest Venoxis
						14515,	-- High Priestess Arlokk
						14517,	-- High Priestess Jeklik
						14510,	-- High Priestess Mar'li
					},
				}),
				i(22718, {	-- Blooddrenched Mask
					["crs"] = {
						14509,	-- High Priest Thekal
						14507,	-- High Priest Venoxis
						14515,	-- High Priestess Arlokk
						14517,	-- High Priestess Jeklik
						14510,	-- High Priestess Mar'li
					},
				}),
				i(19881, {	-- Channeler's Head
					["crs"] = {
						14509,	-- High Priest Thekal
						14507,	-- High Priest Venoxis
						14515,	-- High Priestess Arlokk
						14517,	-- High Priestess Jeklik
						14510,	-- High Priestess Mar'li
					},
				}),
				i(22711, {	-- Cloak of the Hakkari Worshipers
					["crs"] = {
						14509,	-- High Priest Thekal
						14507,	-- High Priest Venoxis
						14515,	-- High Priestess Arlokk
						14517,	-- High Priestess Jeklik
						14510,	-- High Priestess Mar'li
					},
				}),
				i(22715, {	-- Gloves of the Tormented
					["crs"] = {
						14509,	-- High Priest Thekal
						14507,	-- High Priest Venoxis
						14515,	-- High Priestess Arlokk
						14517,	-- High Priestess Jeklik
						14510,	-- High Priestess Mar'li
					},
				}),
				i(19943, {	-- Massive Mojo
					["crs"] = {
						14834,	-- Hakkar
						11382,	-- Bloodlord Mandokir
						14509,	-- High Priest Thekal
						14507,	-- High Priest Venoxis
						14515,	-- High Priestess Arlokk
						14517,	-- High Priestess Jeklik
						14510,	-- High Priestess Mar'li
						11380,	-- Jin'do the Hexxer
					},
				}),
				i(22712, {	-- Might of the Tribe
					["crs"] = {
						14509,	-- High Priest Thekal
						14507,	-- High Priest Venoxis
						14515,	-- High Priestess Arlokk
						14517,	-- High Priestess Jeklik
						14510,	-- High Priestess Mar'li
					},
				}),
				i(19724, {	-- Primal Hakkari Aegis
					["crs"] = {
						11382,	-- Bloodlord Mandokir
						14509,	-- High Priest Thekal
						14507,	-- High Priest Venoxis
						14515,	-- High Priestess Arlokk
						14517,	-- High Priestess Jeklik
						14510,	-- High Priestess Mar'li
						11380,	-- Jin'do the Hexxer
					},
				}),
				i(19717, {	-- Primal Hakkari Armsplint
					["crs"] = {
						11382,	-- Bloodlord Mandokir
						14509,	-- High Priest Thekal
						14507,	-- High Priest Venoxis
						14515,	-- High Priestess Arlokk
						14517,	-- High Priestess Jeklik
						14510,	-- High Priestess Mar'li
						11380,	-- Jin'do the Hexxer
					},
				}),
				i(19716, {	-- Primal Hakkari Bindings
					["crs"] = {
						11382,	-- Bloodlord Mandokir
						14509,	-- High Priest Thekal
						14507,	-- High Priest Venoxis
						14515,	-- High Priestess Arlokk
						14517,	-- High Priestess Jeklik
						14510,	-- High Priestess Mar'li
						11380,	-- Jin'do the Hexxer
					},
				}),
				i(19719, {	-- Primal Hakkari Girdle
					["crs"] = {
						11382,	-- Bloodlord Mandokir
						14509,	-- High Priest Thekal
						14507,	-- High Priest Venoxis
						14515,	-- High Priestess Arlokk
						14517,	-- High Priestess Jeklik
						14510,	-- High Priestess Mar'li
						11380,	-- Jin'do the Hexxer
					},
				}),
				i(19723, {	-- Primal Hakkari Kossack
					["crs"] = {
						11382,	-- Bloodlord Mandokir
						14509,	-- High Priest Thekal
						14507,	-- High Priest Venoxis
						14515,	-- High Priestess Arlokk
						14517,	-- High Priestess Jeklik
						14510,	-- High Priestess Mar'li
						11380,	-- Jin'do the Hexxer
					},
				}),
				i(19720, {	-- Primal Hakkari Sash
					["crs"] = {
						11382,	-- Bloodlord Mandokir
						14509,	-- High Priest Thekal
						14507,	-- High Priest Venoxis
						14515,	-- High Priestess Arlokk
						14517,	-- High Priestess Jeklik
						14510,	-- High Priestess Mar'li
						11380,	-- Jin'do the Hexxer
					},
				}),
				i(19721, {	-- Primal Hakkari Shawl
					["crs"] = {
						11382,	-- Bloodlord Mandokir
						14509,	-- High Priest Thekal
						14507,	-- High Priest Venoxis
						14515,	-- High Priestess Arlokk
						14517,	-- High Priestess Jeklik
						14510,	-- High Priestess Mar'li
						11380,	-- Jin'do the Hexxer
					},
				}),
				i(19718, {	-- Primal Hakkari Stanchion
					["crs"] = {
						11382,	-- Bloodlord Mandokir
						14509,	-- High Priest Thekal
						14507,	-- High Priest Venoxis
						14515,	-- High Priestess Arlokk
						14517,	-- High Priestess Jeklik
						14510,	-- High Priestess Mar'li
						11380,	-- Jin'do the Hexxer
					},
				}),
				i(19722, {	-- Primal Hakkari Tabard
					["crs"] = {
						11382,	-- Bloodlord Mandokir
						14509,	-- High Priest Thekal
						14507,	-- High Priest Venoxis
						14515,	-- High Priestess Arlokk
						14517,	-- High Priestess Jeklik
						14510,	-- High Priestess Mar'li
						11380,	-- Jin'do the Hexxer
					},
				}),
				i(22714, {	-- Sacrificial Gauntlets
					["crs"] = {
						14509,	-- High Priest Thekal
						14507,	-- High Priest Venoxis
						14515,	-- High Priestess Arlokk
						14517,	-- High Priestess Jeklik
						14510,	-- High Priestess Mar'li
					},
				}),
				i(22722, {	-- Seal of the Gurubashi Berserker
					["crs"] = {
						14509,	-- High Priest Thekal
						14507,	-- High Priest Venoxis
						14515,	-- High Priestess Arlokk
						14517,	-- High Priestess Jeklik
						14510,	-- High Priestess Mar'li
					},
				}),
				i(22720, {	-- Zulian Headdress
					["crs"] = {
						14509,	-- High Priest Thekal
						14507,	-- High Priest Venoxis
						14515,	-- High Priestess Arlokk
						14517,	-- High Priestess Jeklik
						14510,	-- High Priestess Mar'li
					},
				}),
				i(22713, {	-- Zulian Scepter of Rites
					["crs"] = {
						14509,	-- High Priest Thekal
						14507,	-- High Priest Venoxis
						14515,	-- High Priestess Arlokk
						14517,	-- High Priestess Jeklik
						14510,	-- High Priestess Mar'li
					},
				}),
			}),
			prof(FISHING, {
				i(19975, {	-- Zulian Mudskunk
					["provider"] = { "o", 180369 },	-- Muddy Churning Waters
				}),
			}),
			prof(HERBALISM, {
				i(19726, {	-- Bloodvine
					["cost"] = {
						{ "i", 19727, 1 },	-- Blood Scythe
					},
				}),
			}),
			prof(MINING, {
				i(19774, {	-- Souldarite
					["provider"] = { "o", 180215 },	-- Hakkari Thorium Vein
				}),
			}),
			prof(SKINNING, {
				i(19768, {	-- Primal Tiger Leather
					["crs"] = {
						11361,	-- Zulian Tiger
						15067,	-- Zulian Stalker
						11360,	-- Zulian Cub
					},
				}),
				i(19767, {	-- Primal Bat Leather
					["cr"] = 11368,	-- Bloodseeker Bat
				}),
			}),
			o(180229, {	-- Jinxed Hoodoo Pile
				["description"] = "These can randomly mind control a nearby player. Be careful.\n\nAlso don't kill them! (Looking at you, Diz!)",
				["groups"] = {
					i(19727, {	-- Blood Scythe
						["requireSkill"] = HERBALISM,
						["b"] = 1,
					}),
					i(19821),	-- Punctured Voodoo Doll [Druid]
					i(19816),	-- Punctured Voodoo Doll [Hunter]
					i(19818),	-- Punctured Voodoo Doll [Mage]
					i(19815),	-- Punctured Voodoo Doll [Paladin]
					i(19820),	-- Punctured Voodoo Doll [Priest]
					i(19814),	-- Punctured Voodoo Doll [Rogue]
					i(19817),	-- Punctured Voodoo Doll [Shaman]
					i(19819),	-- Punctured Voodoo Doll [Warlock]
					i(19813),	-- Punctured Voodoo Doll [Warrior]
				},
			}),
			n(14517, {	-- High Priestess Jeklik
				i(19918),	-- Jeklik's Crusher
				i(19915),	-- Zulian Defender
				i(19923),	-- Jeklik's Opaline Talisman
				i(19928),	-- Animist's Spaulders
				i(20265),	-- Peacekeeper Boots
				i(20262),	-- Seafury Boots
				i(19920),	-- Primalist's Band
			}),
			n(14507, {	-- High Priest Venoxis
				applyclassicphase(PHASE_FIVE, i(22216)),	-- Venoxis's Venom Sac
				i(19903),	-- Fang of Venoxis
				i(19900),	-- Zulian Stone Axe
				i(19907),	-- Zulian Tigerhide Cloak
				i(19904),	-- Runed Bloodstained Hauberk
				i(19906),	-- Blooddrenched Footpads
				i(19905),	-- Zanzil's Band
			}),
			n(14510, {	-- High Priestess Mar'li
				i(19927),	-- Mar'li's Touch
				i(20032),	-- Flowing Ritual Robes
				i(19919),	-- Bloodstained Greaves
				i(19925),	-- Band of Jin
				i(19930),	-- Mar'li's Eye
				i(19871),	-- Talisman of Protection
			}),
			n(11382, {	-- Bloodlord Mandokir
				ach(881, {	-- Swift Razzashi Raptor
					["provider"] = { "i", 19872 },	-- Swift Razzashi Raptor
					["timeline"] = { REMOVED_4_0_3 },
					["filterID"] = MOUNTS,
				}),
				i(19872, {	-- Swift Razzashi Raptor (MOUNT!)
					["timeline"] = { REMOVED_4_0_3 },
				}),
				i(19867),	-- Bloodlord's Defender
				i(19874),	-- Halberd of Smiting
				i(20038),	-- Mandokir's Sting
				i(19866),	-- Warblade of the Hakkari [Offhand]
				i(19870),	-- Hakkari Loa Cloak
				i(19878),	-- Bloodsoaked Pauldrons
				i(19869),	-- Blooddrenched Grips
				i(19877),	-- Animist's Leggings
				i(19895),	-- Bloodtinged Kilt
				i(19873),	-- Overlord's Crimson Band
				i(19863),	-- Primalist's Seal
				i(19893),	-- Zanzil's Seal
				i(22637),	-- Primal Hakkari Idol
			}),
			o(180368, {	-- Tablet of Madness
				["description"] = "Alchemists with 300 skill can interact with the Tablet of Madness to learn the recipe.",
				["requireSkill"] = ALCHEMY,
				["groups"] = {
					recipe(24266),	-- Gurubashi Mojo Madness
				},
			}),
			o(180327, {	-- Brazier of Madness
				["description"] = "There are tablets on the walls describing each boss; one of these tablets will indicate which boss will spawn by commenting that he is \"close to the edge of madness.\" The boss that spawns is chosen according to a spawn calendar, going by the day the instance ID was created.",
				["cost"] = {
					{ "i", 19931, 1 },	-- Gurubashi Mojo Madness
				},
				["groups"] = {
					filter(TRINKET_F, {
						["description"] = "The following trinkets can be crafted by using a class-specific Punctured Voodoo Doll and one of each of the named reagents that drop from the madness bosses.",
						["groups"] = {
							i(19951, {	-- Gri'lek's Charm of Might [Warrior]
								["cost"] = {
									{ "i", 19813, 1 },	-- Punctured Voodoo Doll [Warrior]
									{ "i", 19939, 1 },	-- Gri'lek's Blood
									{ "i", 19942, 1 },	-- Hazza'rah's Dream Thread
									{ "i", 19940, 1 },	-- Renataki's Tooth
									{ "i", 19941, 1 },	-- Wushoolay's Mane
								},
							}),
							i(19952, {	-- Gri'lek's Charm of Valor [Paladin]
								["cost"] = {
									{ "i", 19815, 1 },	-- Punctured Voodoo Doll [Paladin]
									{ "i", 19939, 1 },	-- Gri'lek's Blood
									{ "i", 19942, 1 },	-- Hazza'rah's Dream Thread
									{ "i", 19940, 1 },	-- Renataki's Tooth
									{ "i", 19941, 1 },	-- Wushoolay's Mane
								},
							}),
							i(19953, {	-- Renataki's Charm of Beasts [Hunter]
								["cost"] = {
									{ "i", 19816, 1 },	-- Punctured Voodoo Doll [Hunter]
									{ "i", 19939, 1 },	-- Gri'lek's Blood
									{ "i", 19942, 1 },	-- Hazza'rah's Dream Thread
									{ "i", 19940, 1 },	-- Renataki's Tooth
									{ "i", 19941, 1 },	-- Wushoolay's Mane
								},
							}),
							i(19954, {	-- Renataki's Charm of Trickery [Rogue]
								["cost"] = {
									{ "i", 19814, 1 },	-- Punctured Voodoo Doll [Rogue]
									{ "i", 19939, 1 },	-- Gri'lek's Blood
									{ "i", 19942, 1 },	-- Hazza'rah's Dream Thread
									{ "i", 19940, 1 },	-- Renataki's Tooth
									{ "i", 19941, 1 },	-- Wushoolay's Mane
								},
							}),
							i(19957, {	-- Hazza'rah's Charm of Destruction [Warlock]
								["cost"] = {
									{ "i", 19819, 1 },	-- Punctured Voodoo Doll [Warlock]
									{ "i", 19939, 1 },	-- Gri'lek's Blood
									{ "i", 19942, 1 },	-- Hazza'rah's Dream Thread
									{ "i", 19940, 1 },	-- Renataki's Tooth
									{ "i", 19941, 1 },	-- Wushoolay's Mane
								},
							}),
							i(19958, {	-- Hazza'rah's Charm of Healing [Priest]
								["cost"] = {
									{ "i", 19820, 1 },	-- Punctured Voodoo Doll [Priest]
									{ "i", 19939, 1 },	-- Gri'lek's Blood
									{ "i", 19942, 1 },	-- Hazza'rah's Dream Thread
									{ "i", 19940, 1 },	-- Renataki's Tooth
									{ "i", 19941, 1 },	-- Wushoolay's Mane
								},
							}),
							i(19959, {	-- Hazza'rah's Charm of Magic [Mage]
								["cost"] = {
									{ "i", 19818, 1 },	-- Punctured Voodoo Doll [Mage]
									{ "i", 19939, 1 },	-- Gri'lek's Blood
									{ "i", 19942, 1 },	-- Hazza'rah's Dream Thread
									{ "i", 19940, 1 },	-- Renataki's Tooth
									{ "i", 19941, 1 },	-- Wushoolay's Mane
								},
							}),
							i(19955, {	-- Wushoolay's Charm of Nature [Druid]
								["cost"] = {
									{ "i", 19821, 1 },	-- Punctured Voodoo Doll [Druid]
									{ "i", 19939, 1 },	-- Gri'lek's Blood
									{ "i", 19942, 1 },	-- Hazza'rah's Dream Thread
									{ "i", 19940, 1 },	-- Renataki's Tooth
									{ "i", 19941, 1 },	-- Wushoolay's Mane
								},
							}),
							i(19956, {	-- Wushoolay's Charm of Spirits [Shaman]
								["cost"] = {
									{ "i", 19817, 1 },	-- Punctured Voodoo Doll [Shaman]
									{ "i", 19939, 1 },	-- Gri'lek's Blood
									{ "i", 19942, 1 },	-- Hazza'rah's Dream Thread
									{ "i", 19940, 1 },	-- Renataki's Tooth
									{ "i", 19941, 1 },	-- Wushoolay's Mane
								},
							}),
						},
					}),
					n(15082, {	-- Gri'lek
						i(19939),	-- Gri'lek's Blood
						i(19961),	-- Gri'lek's Grinder
						i(19962),	-- Gri'lek Carver
					}),
					n(15083, {	-- Hazza'rah
						i(19942),	-- Hazza'rah's Dream Thread
						i(19967),	-- Thoughtblighter
						i(19968),	-- Fiery Retributer
					}),
					n(15084, {	-- Renataki
						i(19940),	-- Renataki's Tooth
						i(19963),	-- Pitchfork of Madness
						i(19964),	-- Renataki's Soul Conduit
					}),
					n(15085, {	-- Wushoolay
						i(19941),	-- Wushoolay's Mane
						i(19965),	-- Wushoolay's Poker
						i(19993),	-- Hoodoo Hunting Bow
					}),
				},
			}),
			n(14509, {	-- High Priest Thekal
				ach(880, {	-- Swift Zulian Tiger
					["provider"] = { "i", 19902 },	-- Swift Zulian Tiger
					["timeline"] = { REMOVED_4_0_3 },
					["filterID"] = MOUNTS,
				}),
				i(19902, {	-- Swift Zulian Tiger (MOUNT!)
					["timeline"] = { REMOVED_4_0_3 },
				}),
				i(19896),	-- Thekal's Grasp
				i(19901),	-- Zulian Slicer
				i(20266),	-- Peacekeeper Leggings
				i(19899),	-- Ritualistic Legguards
				i(20260),	-- Seafury Leggings
				i(19897),	-- Betrayer's Boots
				i(19898),	-- Seal of Jin
			}),
			o(180366, {	-- Battered Tackle Box
				["description"] = "Fishermen with 300 skill can interact with this to receive the quest item.",
				["requireSkill"] = FISHING,
				["groups"] = {
					i(19973),	-- Nat's Measuring Tape
				},
			}),
			n(15114, {	-- Gahz'ranka
				["sourceQuest"] = 8227,	-- Nat's Measuring Tape
				["description"] = "You can fish up Zulian Mudskunk from the Muddy Churning Waters in the instance and the lures can be purchased from Nat Pagle once you have turned in Nat's Measuring Tape.",
				["cost"] = {
					{ "i", 19974, 1 },	-- Mudskunk Lure
					{ "i", 19975, 5 },	-- Zulian Mudskunk
				},
				["groups"] = {
					ach(560, {	-- Deadliest Catch
						["timeline"] = { ADDED_3_0_2, REMOVED_4_1_0 },
					}),
					i(19944),	-- Nat Pagle's Fish Terminator
					i(19946),	-- Tigule's Harpoon
					i(19945),	-- Foror's Eyepatch
					i(19947),	-- Nat Pagle's Broken Reel
					TOME_OF_POLYMORPH_TURTLE,
				},
			}),
			n(14515, {	-- High Priestess Arlokk
				["provider"] = { "o", 180526 },	-- Gong of Bethekk
				["groups"] = {
					i(19914),	-- Panther Hide Sack
					i(19910),	-- Arlokk's Grasp
					i(19909),	-- Will of Arlokk
					i(19922),	-- Arlokk's Hoodoo Stick
					i(19913),	-- Bloodsoaked Greaves
					i(19912),	-- Overlord's Onyx Band
				},
			}),
			n(11380, {	-- Jin'do the Hexxer
				i(19891),	-- Jin'do's Bag of Whammies
				i(19890),	-- Jin'do's Hexxer
				i(19884),	-- Jin'do's Judgement
				i(19886),	-- The Hexxer's Cover
				i(19885),	-- Jin'do's Evil Eye
				i(19888),	-- Overlord's Embrace
				i(19889),	-- Blooddrenched Leggings
				i(19875),	-- Bloodstained Coif
				i(19894),	-- Bloodsoaked Gauntlets
				i(19929),	-- Bloodtinged Gloves
				i(19887),	-- Bloodstained Legplates
				i(19892),	-- Animist's Boots
				i(22637),	-- Primal Hakkari Idol
			}),
			n(14834, {	-- Hakkar the Soulflayer
				ach(688, {	-- Zul'Gurub
					-- #if BEFORE WRATH
					["sourceQuest"] = 8183,	-- The Heart of Hakkar
					-- #endif
				}),
				i(19802),	-- Heart of Hakkar
				i(19862),	-- Aegis of the Blood God
				i(19852),	-- Ancient Hakkari Manslayer
				i(19864),	-- Bloodcaller
				i(19859),	-- Fang of the Faceless
				i(19853),	-- Gurubashi Dwarf Destroyer
				i(19861),	-- Touch of Chaos
				i(19865),	-- Warblade of the Hakkari [Main Hand]
				i(19854),	-- Zin'rokh, Destroyer of Worlds
				i(19876),	-- Soul Corrupter's Necklace
				i(19856),	-- The Eye of Hakkar
				i(19857),	-- Cloak of Consumption
				i(20264),	-- Peacekeeper Gauntlets
				i(20257),	-- Seafury Gauntlets
				i(19855),	-- Bloodsoaked Legplates
			}),
		},
	})),
})));

-- The tome was added to Cataclysm Fishing Pools after being removed from ZG.
TOME_OF_POLYMORPH_TURTLE.timeline = nil;
RAZZASHI_HATCHLING.u = nil;