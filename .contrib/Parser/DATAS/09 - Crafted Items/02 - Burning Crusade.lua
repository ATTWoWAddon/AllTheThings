---------------------------------------------
--    C R A F T A B L E S   M O D U L E    --
---------------------------------------------
local function ClassicCost(cost)
	-- This data is provided by ReagentsDB in Retail
	-- #IF ANYCLASSIC
	return cost
	-- #ENDIF
end
local MAPS_FIELD = "maps"
-- #if RETAIL_STYLE_FILL_ENABLED
-- Filling allows users to 'chose' whether the Items dropped from Objects should show up in lists and potentially be Filled
MAPS_FIELD = "maps_disp"
-- #ENDIF
root(ROOTS.Craftables, expansion(EXPANSION.TBC, applyclassicphase(TBC_PHASE_ONE, bubbleDownSelf({ ["timeline"] = { ADDED_2_0_5 } }, {
	i(180055, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past I
	i(180057, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past II
	i(180058, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past III
	i(180059, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past IV
	i(180060, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past V
	n(DECOR, bubbleDownSelf({ ["timeline"] = { ADDED_11_2_7 } }, {
		o_repeated({	-- Olemba Lumber
			["maps"] = {
				BLADES_EDGE_MOUNTAINS,
				ISLE_OF_QUELDANAS,
				NAGRAND,
				TEROKKAR_FOREST,
				ZANGARMARSH,
				-- SMV/Netherstorm have barely any nodes
			},
			["groups"] = {
				-- Objects
				o(571070),	-- [Terokkar Forest/Shattrah/Nagrand]
				o(571071),	-- [Zangarmarsh]
				o(571213),	-- [Blade's Edge Mountains]
				o(571345),	-- [Netherstorm]
				o(572094),	-- [Nagrand]
				o(572129),	-- [Shadowmoon Valley]
				o(572869),	-- [Eversong Woods/Ghostlands]
				o(572995),	-- [Ghostlands]
				-- Drops
				i(242691),	-- Olemba Lumber
			},
		}),
	})),
	prof(ALCHEMY, {
		n(DISCOVERY, {
			r(41458, {["timeline"] = {ADDED_2_1_0}}),	-- Cauldron of Major Arcane Protection
			r(41500, {["timeline"] = {ADDED_2_1_0}}),	-- Cauldron of Major Fire Protection
			r(41501, {["timeline"] = {ADDED_2_1_0}}),	-- Cauldron of Major Frost Protection
			r(41502, {["timeline"] = {ADDED_2_1_0}}),	-- Cauldron of Major Nature Protection
			r(41503, {["timeline"] = {ADDED_2_1_0}}),	-- Cauldron of Major Shadow Protection
			r(28590),	-- Flask of Blinding Light
			r(28587),	-- Flask of Fortification
			r(28588),	-- Flask of Mighty Versatility[Legion+] / Flask of Mighty Restoration
			r(28591),	-- Flask of Pure Death
			r(28589),	-- Flask of Relentless Assault
			r(28586),	-- Super Rejuvenation Potion
			r(28585),	-- Transmute: Primal Earth to Life
			r(28583),	-- Transmute: Primal Fire to Mana
			r(28584),	-- Transmute: Primal Life to Earth
			r(28582),	-- Transmute: Primal Mana to Fire
			r(28580),	-- Transmute: Primal Shadow to Water
			r(28581),	-- Transmute: Primal Water to Shadow
		}),
		filter(CONSUMABLES, {
			i(28103, {["timeline"] = {ADDED_2_1_0}}),	-- Adept's Elixir
			i(32839, {["timeline"] = {ADDED_2_1_0}}),	-- Cauldron of Major Arcane Protection
			i(32849, {["timeline"] = {ADDED_2_1_0}}),	-- Cauldron of Major Fire Protection
			i(32850, {["timeline"] = {ADDED_2_1_0}}),	-- Cauldron of Major Frost Protection
			i(32851, {["timeline"] = {ADDED_2_1_0}}),	-- Cauldron of Major Nature Protection
			i(32852, {["timeline"] = {ADDED_2_1_0}}),	-- Cauldron of Major Shadow Protection
			i(22839),	-- Destruction Potion
			i(32063, {["timeline"] = {ADDED_2_1_0}}),	-- Earthen Elixir
			i(22823),	-- Elixir of Camouflage
			i(32067, {["timeline"] = {ADDED_2_1_0}}),	-- Elixir of Draenic Wisdom
			i(22848),	-- Elixir of Empowerment
			i(22825, {["timeline"] = {ADDED_2_1_0}}),	-- Elixir of Healing Power
			i(32068, {["timeline"] = {ADDED_2_1_0}}),	-- Elixir of Ironskin
			i(22831),	-- Elixir of Major Agility
			i(22834),	-- Elixir of Major Defense
			i(22833),	-- Elixir of Major Firepower
			i(32062, {["timeline"] = {ADDED_2_1_0}}),	-- Elixir of Major Fortitude
			i(22827),	-- Elixir of Major Frost Power
			i(22840),	-- Elixir of Major Mageblood
			i(22835),	-- Elixir of Major Shadow Power
			i(22824),	-- Elixir of Major Strength
			i(28104),	-- Elixir of Mastery
			i(22830),	-- Elixir of the Searching Eye
			i(31677),	-- Fel Mana Potion
			i(31676),	-- Fel Regeneration Potion
			i(31679),	-- Fel Strength Elixir
			i(22861),	-- Flask of Blinding Light
			applyclassicphase(TBC_PHASE_THREE, i(33208, {["timeline"] = {ADDED_2_2_0, REMOVED_5_0_4}})),	-- Flask of Chromatic Wonder
			i(22851),	-- Flask of Fortification
			i(22853),	-- Flask of Mighty Versatility[Legion+] / Flask of Mighty Restoration
			i(22866),	-- Flask of Pure Death
			i(22854),	-- Flask of Relentless Assault
			i(22838),	-- Haste Potion
			i(22837),	-- Heroic Potion
			i(22828),	-- Insane Strength Potion
			i(22849),	-- Ironshield Potion
			i(34440, {["timeline"] = {ADDED_2_3_0}}),	-- Mad Alchemist's Potion
			i(22845),	-- Major Arcane Protection Potion
			i(22836),	-- Major Dreamless Sleep Potion
			i(22841),	-- Major Fire Protection Potion
			i(22842),	-- Major Frost Protection Potion
			i(22847),	-- Major Holy Protection Potion
			i(22844),	-- Major Nature Protection Potion
			i(22846),	-- Major Shadow Protection Potion
			i(28102),	-- Onslaught Elixir
			i(22871),	-- Shrouding Potion
			i(22826),	-- Sneaking Potion
			i(22829),	-- Super Healing Potion
			i(22832),	-- Super Mana Potion
			i(22850),	-- Super Rejuvenation Potion
			i(28101),	-- Unstable Mana Potion
			i(28100),	-- Volatile Healing Potion
		}),
		n(DECOR, sharedDataSelf({["timeline"] = { ADDED_11_2_7 }}, {
			i(264900, {["timeline"] = { ADDED_12_0_0 }}),	-- Arakkoan Alchemist's Bottle (DECOR!)
			i(264899, {["timeline"] = { ADDED_12_0_0 }}),	-- Arakkoan Alchemist's Concoction (DECOR!)
			i(264705),	-- Glazed Sin'dorei Vial (DECOR!)
			i(264706),	-- Shadow Council Torch (DECOR!)
			i(264709),	-- Stranglekelp Sack (DECOR!)
		})),
		filter(REAGENTS, {
			i(25867),	-- Earthstorm Diamond
			convertItem(22451, 22572, 10),	-- Primal Air / Mote of Air
			convertItem(22452, 22573, 10),	-- Primal Earth / Mote of Earth
			convertItem(21884, 22574, 10),	-- Primal Fire / Mote of Fire
			convertItem(21886, 22575, 10),	-- Primal Life / Mote of Life
			convertItem(22457, 22576, 10),	-- Primal Mana / Mote of Mana
			i(23571),	-- Primal Might
			convertItem(22456, 22577, 10),	-- Primal Shadow / Mote of Shadow
			convertItem(21885, 22578, 10),	-- Primal Water / Mote of Water
			i(25868),	-- Skyfire Diamond
		}),
		filter(TRINKET_F, {
			["sharedDescription"] = "Alchemy Lab can be found on Aldor Rise and Scryer's Tier in Shattrath.",
			["groups"] = {
				i(13503),	-- Alchemist Stone
				applyclassicphase(TBC_PHASE_FIVE, i(35751, {["timeline"] = {ADDED_2_4_0}})),	-- Assassin's Alchemist Stone
				applyclassicphase(TBC_PHASE_FIVE, i(35748, {["timeline"] = {ADDED_2_4_0}})),	-- Guardian's Alchemist Stone
				applyclassicphase(TBC_PHASE_FIVE, i(35750, {["timeline"] = {ADDED_2_4_0}})),	-- Redeemer's Alchemist Stone
				applyclassicphase(TBC_PHASE_FIVE, i(35749, {["timeline"] = {ADDED_2_4_0}})),	-- Sorcerer's Alchemist Stone
				i(31080),	-- Mercurial Stone
			},
		}),
	}),
	prof(ARCHAEOLOGY, bubbleDownSelf({ ["timeline"] = { ADDED_4_0_3_LAUNCH } }, {
		i(64394),	-- Draenei Tome
		i(64392),	-- Orc Blood Text
		header(HEADERS.Currency, ARCH_CURRENCY_DRAENEI, {
			["provider"] = { "o", 207188 },	-- Draenei Archaeology Find
			["maps"] = {
				HELLFIRE_PENINSULA,
				NAGRAND,
				NETHERSTORM,
				SHADOWMOON_VALLEY,
				TEROKKAR_FOREST,
				ZANGARMARSH,
			},
			["groups"] = {
				i(64440, {["cost"]={{"c",ARCH_CURRENCY_DRAENEI,45}}}),	-- Anklet with Golden Bells
				i(64456, {["cost"]={{"c",ARCH_CURRENCY_DRAENEI,124}}}),	-- Arrival of the Naaru (TOY!)
				i(64453, {["cost"]={{"c",ARCH_CURRENCY_DRAENEI,46}}}),	-- Baroque Sword Scabbard
				i(64442, {["cost"]={{"c",ARCH_CURRENCY_DRAENEI,45}}}),	-- Carved Harp of Exotic Wood
				i(64455, {["cost"]={{"c",ARCH_CURRENCY_DRAENEI,45}}}),	-- Dignified Portrait
				i(64454, {["cost"]={{"c",ARCH_CURRENCY_DRAENEI,44}}}),	-- Fine Crystal Candelabra
				i(64458, {["cost"]={{"c",ARCH_CURRENCY_DRAENEI,45}}}),	-- Plated Elekk Goad
				i(64444, {["cost"]={{"c",ARCH_CURRENCY_DRAENEI,46}}}),	-- Scepter of the Nathrezim
				i(64443, {["cost"]={{"c",ARCH_CURRENCY_DRAENEI,46}}}),	-- Strange Silver Paperweight
				i(64457, {["cost"]={{"c",ARCH_CURRENCY_DRAENEI,130}}}),	-- The Last Relic of Argus (TOY!)
			},
		}),
		header(HEADERS.Currency, ARCH_CURRENCY_ORC, {
			["provider"] = { "o", 207187 },	-- Orc Archaeology Find
			["maps"] = {
				HELLFIRE_PENINSULA,
				NAGRAND,
				SHADOWMOON_VALLEY,
				TEROKKAR_FOREST,
			},
			["groups"] = {
				i(64436, {["cost"]={{"c",ARCH_CURRENCY_ORC,45}}}),	-- Fiendish Whip
				i(64421, {["cost"]={{"c",ARCH_CURRENCY_ORC,45}}}),	-- Fierce Wolf Figurine
				i(64418, {["cost"]={{"c",ARCH_CURRENCY_ORC,45}}}),	-- Gray Candle Stub
				i(64644, {["cost"]={{"c",ARCH_CURRENCY_ORC,130}}}),	-- Headdress of the First Shaman
				i(64417, {["cost"]={{"c",ARCH_CURRENCY_ORC,45}}}),	-- Maul of Stone Guard Mur'og
				i(64419, {["cost"]={{"c",ARCH_CURRENCY_ORC,45}}}),	-- Rusted Steak Knife
				i(64420, {["cost"]={{"c",ARCH_CURRENCY_ORC,45}}}),	-- Scepter of Nekros Skullcrusher
				i(64438, {["cost"]={{"c",ARCH_CURRENCY_ORC,45}}}),	-- Skull Drinking Cup
				i(64437, {["cost"]={{"c",ARCH_CURRENCY_ORC,45}}}),	-- Tile of Glazed Clay
				i(64389, {["cost"]={{"c",ARCH_CURRENCY_ORC,45}}}),	-- Tiny Bronze Scorpion
			},
		}),
	})),
	prof(BLACKSMITHING, {
		-- #if BEFORE CATA
		prof(9788, {	-- Armorsmith
			["description"] = "These items can only be crafted by Blacksmiths who have completed the Art of the Armorsmith quest chain.",
			["groups"] = {
				i(28483, {["timeline"] = {ADDED_2_1_0, REMOVED_4_0_3}}),	-- Breastplate of Kings
				i(28484, {["timeline"] = {ADDED_2_0_5, REMOVED_4_0_3}}),	-- Bulwark of Kings
				i(28485, {["timeline"] = {ADDED_2_0_5, REMOVED_4_0_3}}),	-- Bulwark of the Ancient Kings
				i(30069, {["timeline"] = {ADDED_2_0_5, REMOVED_4_0_3}}),	-- Earthforged Leggings
				i(23565, {["timeline"] = {ADDED_2_0_5, REMOVED_4_0_3}}),	-- Embrace of the Twisting Nether
				i(30074, {["timeline"] = {ADDED_2_0_5, REMOVED_4_0_3}}),	-- Heavy Earthforged Breastplate
				i(23563, {["timeline"] = {ADDED_2_1_0, REMOVED_4_0_3}}),	-- Nether Chain Shirt / Nether Plate Shirt[LEGION+]
				i(30076, {["timeline"] = {ADDED_2_0_5, REMOVED_4_0_3}}),	-- Stormforged Hauberk
				i(23564, {["timeline"] = {ADDED_2_0_5, REMOVED_4_0_3}}),	-- Twisting Nether Chain Shirt / Nether Plate Shirt[LEGION+]
				i(30070, {["timeline"] = {ADDED_2_0_5, REMOVED_4_0_3}}),	-- Windforged Leggings
			},
		}),
		prof(9787, {	-- Weaponsmith
			["description"] = "These items can only be crafted by Blacksmiths who have completed the Way of the Weaponsmith quest chain.",
			["groups"] = {
				prof(17041, {	-- Master Axesmith
					["description"] = "These items can only be crafted by Master Axesmith specialized Weaponsmiths.",
					["groups"] = {
						i(28432, {["timeline"] = {ADDED_2_0_5, REMOVED_4_0_3}}),	-- Black Planar Edge
						i(28436, {["timeline"] = {ADDED_2_0_5, REMOVED_4_0_3}}),	-- Bloodmoon
						i(28434, {["timeline"] = {ADDED_2_0_5, REMOVED_4_0_3}}),	-- Lunar Crescent
						i(28435, {["timeline"] = {ADDED_2_0_5, REMOVED_4_0_3}}),	-- Mooncleaver
						i(30088, {["timeline"] = {ADDED_2_0_5, REMOVED_4_0_3, ADDED_7_1_5}}),	-- Skyforged Great Axe
						i(30087, {["timeline"] = {ADDED_2_0_5, REMOVED_4_0_3, ADDED_7_1_5}}),	-- Stormforged Axe
						i(28431, {["timeline"] = {ADDED_2_0_5, REMOVED_4_0_3}}),	-- The Planar Edge
						i(28433, {["timeline"] = {ADDED_2_0_5, REMOVED_4_0_3}}),	-- Wicked Edge of the Planes
					},
				}),
				prof(17040, {	-- Master Hammersmith
					["description"] = "These items can only be crafted by Master Hammersmith specialized Weaponsmiths.",
					["groups"] = {
						i(28441, {["timeline"] = {ADDED_2_0_5, REMOVED_4_0_3}}),	-- Deep Thunder
						i(28438, {["timeline"] = {ADDED_2_0_5, REMOVED_4_0_3}}),	-- Dragonmaw
						i(28439, {["timeline"] = {ADDED_2_0_5, REMOVED_4_0_3}}),	-- Dragonstrike
						i(28437, {["timeline"] = {ADDED_2_0_5, REMOVED_4_0_3}}),	-- Drakefist Hammer
						i(30093, {["timeline"] = {ADDED_2_0_5, REMOVED_4_0_3, ADDED_7_1_5}}),	-- Great Earthforged Hammer
						i(30089, {["timeline"] = {ADDED_2_0_5, REMOVED_4_0_3, ADDED_7_1_5}}),	-- Lavaforged Warhammer
						i(28442, {["timeline"] = {ADDED_2_0_5, REMOVED_4_0_3}}),	-- Stormherald
						i(28440, {["timeline"] = {ADDED_2_0_5, REMOVED_4_0_3}}),	-- Thunder
					},
				}),
				prof(17039, {	-- Master Swordsmith
					["description"] = "These items can only be crafted by Master Swordsmith specialized Weaponsmiths.",
					["groups"] = {
						i(28427, {["timeline"] = {ADDED_2_0_5, REMOVED_4_0_3}}),	-- Blazefury
						i(28426, {["timeline"] = {ADDED_2_0_5, REMOVED_4_0_3}}),	-- Blazeguard
						i(28425, {["timeline"] = {ADDED_2_0_5, REMOVED_4_0_3}}),	-- Fireguard
						i(28428, {["timeline"] = {ADDED_2_0_5, REMOVED_4_0_3}}),	-- Lionheart Blade
						i(28429, {["timeline"] = {ADDED_2_0_5, REMOVED_4_0_3}}),	-- Lionheart Champion
						i(28430, {["timeline"] = {ADDED_2_0_5, REMOVED_4_0_3}}),	-- Lionheart Executioner
						i(30086, {["timeline"] = {ADDED_2_0_5, REMOVED_4_0_3, ADDED_7_1_5}}),	-- Stoneforged Claymore
						i(30077, {["timeline"] = {ADDED_2_0_5, REMOVED_4_0_3, ADDED_7_1_5}}),	-- Windforged Rapier
					},
				}),
				n(WEAPONS, {
					["description"] = "These can be crafted by any Weaponsmith.",
					["groups"] = {
						i(30071,  {["timeline"] = {ADDED_2_0_5, REMOVED_4_0_3, ADDED_7_1_5}}),	-- Light Earthforged Blade
						i(30073, {["timeline"] = {ADDED_2_0_5, REMOVED_4_0_3}}),	-- Light Emberforged Hammer
						i(30072, {["timeline"] = {ADDED_2_0_5, REMOVED_4_0_3}}),	-- Light Skyforged Axe
					},
				}),
			},
		}),
		-- #endif
		n(ARMOR, {
			i(23507),	-- Adamantite Breastplate
			i(23506),	-- Adamantite Plate Bracers
			i(23508),	-- Adamantite Plate Gloves
			applyclassicphase(TBC_PHASE_TWO, i(30034, {["timeline"] = {ADDED_2_1_0}})),	-- Belt of the Guardian
			i(23537),	-- Black Felsteel Bracers
			i(23539),	-- Blessed Bracers
			applyclassicphase(TBC_PHASE_TWO, i(30033, {["timeline"] = {ADDED_2_1_0}})),	-- Boots of the Protector
			i(23538),	-- Bracers of the Green Fortress
			applyclassicphase(TBC_PHASE_THREE, i(32571, {["timeline"] = {ADDED_2_1_0}})),	-- Dawnsteel Bracers
			applyclassicphase(TBC_PHASE_THREE, i(32573, {["timeline"] = {ADDED_2_1_0}})),	-- Dawnsteel Shoulders
			i(23527),	-- Earthpeace Breastplate
			i(23510),	-- Enchanted Adamantite Belt
			i(23511),	-- Enchanted Adamantite Boots
			i(23509),	-- Enchanted Adamantite Breastplate
			i(23512),	-- Enchanted Adamantite Leggings
			i(23494),	-- Fel Iron Chain Bracers
			i(23493),	-- Fel Iron Chain Coif
			i(23491),	-- Fel Iron Chain Gloves
			i(23490),	-- Fel Iron Chain Tunic
			i(23489),	-- Fel Iron Breastplate
			i(23484),	-- Fel Iron Plate Belt
			i(23487),	-- Fel Iron Plate Boots
			i(23482),	-- Fel Iron Plate Gloves
			i(23488),	-- Fel Iron Plate Pants
			i(23531),	-- Felfury Gauntlets
			i(23517),	-- Felsteel Gloves
			i(23519),	-- Felsteel Helm
			i(23518),	-- Felsteel Leggings
			i(23515),	-- Flamebane Bracers
			i(23513),	-- Flamebane Breastplate
			i(23514),	-- Flamebane Gloves
			i(23516),	-- Flamebane Helm
			i(23532),	-- Gauntlets of the Iron Tower
			applyclassicphase(TBC_PHASE_FIVE, i(34378, {["timeline"] = {ADDED_2_4_0}})),	-- Hard Khorium Battlefists
			applyclassicphase(TBC_PHASE_FIVE, i(34377, {["timeline"] = {ADDED_2_4_0}})),	-- Hard Khorium Battleplate
			i(23535),	-- Helm of the Stalwart Defender
			i(31369),	-- Iceguard Breastplate
			i(31371),	-- Iceguard Helm
			i(31370),	-- Iceguard Leggings
			i(23524),	-- Khorium Belt
			i(23525),	-- Khorium Boots
			i(23523),	-- Khorium Pants
			i(23536),	-- Oathkeeper's Helm
			i(23522),	-- Ragesteel Breastplate
			i(23520),	-- Ragesteel Gloves
			i(23521),	-- Ragesteel Helm
			i(33173, {["timeline"] = {ADDED_2_2_0}}),	-- Ragesteel Shoulders
			applyclassicphase(TBC_PHASE_TWO, i(30032, {["timeline"] = {ADDED_2_1_0}})),	-- Red Belt of Battle
			applyclassicphase(TBC_PHASE_TWO, i(30031, {["timeline"] = {ADDED_2_1_0}})),	-- Red Havoc Boots
			applyclassicphase(TBC_PHASE_THREE, i(32403, {["timeline"] = {ADDED_2_1_0}})),	-- Shadesteel Bracers
			applyclassicphase(TBC_PHASE_THREE, i(32401, {["timeline"] = {ADDED_2_1_0}})),	-- Shadesteel Girdle
			applyclassicphase(TBC_PHASE_THREE, i(32404, {["timeline"] = {ADDED_2_1_0}})),	-- Shadesteel Greaves
			applyclassicphase(TBC_PHASE_THREE, i(32402, {["timeline"] = {ADDED_2_1_0}})),	-- Shadesteel Sabots
			i(23533),	-- Steelgrip Gauntlets
			i(23534),	-- Storm Helm
			applyclassicphase(TBC_PHASE_FIVE, i(34379,{["timeline"] = {ADDED_2_4_0}})),	-- Sunblessed Breastplate
			applyclassicphase(TBC_PHASE_FIVE, i(34380,{["timeline"] = {ADDED_2_4_0}})),	-- Sunblessed Gauntlets
			applyclassicphase(TBC_PHASE_THREE, i(32568, {["timeline"] = {ADDED_2_1_0}})),	-- Swiftsteel Bracers
			i(23526),	-- Swiftsteel Gloves
			applyclassicphase(TBC_PHASE_THREE, i(32570, {["timeline"] = {ADDED_2_1_0}})),	-- Swiftsteel Shoulders
			i(31364),	-- Wildguard Breastplate
			i(31368),	-- Wildguard Helm
			i(31367),	-- Wildguard Leggings
			-- #if AFTER CATA
			i(28483, {["timeline"] = {ADDED_2_1_0, REMOVED_4_0_3}}),	-- Breastplate of Kings
			i(28484, {["timeline"] = {ADDED_2_0_5, REMOVED_4_0_3}}),	-- Bulwark of Kings
			i(28485, {["timeline"] = {ADDED_2_0_5, REMOVED_4_0_3}}),	-- Bulwark of the Ancient Kings
			i(30069, {["timeline"] = {ADDED_2_0_5, REMOVED_4_0_3}}),	-- Earthforged Leggings
			i(23565, {["timeline"] = {ADDED_2_0_5, REMOVED_4_0_3}}),	-- Embrace of the Twisting Nether
			i(30074, {["timeline"] = {ADDED_2_0_5, REMOVED_4_0_3}}),	-- Heavy Earthforged Breastplate
			i(23563, {["timeline"] = {ADDED_2_1_0, REMOVED_4_0_3}}),	-- Nether Chain Shirt / Nether Plate Shirt[LEGION+]
			i(30076, {["timeline"] = {ADDED_2_0_5, REMOVED_4_0_3}}),	-- Stormforged Hauberk
			i(23564, {["timeline"] = {ADDED_2_0_5, REMOVED_4_0_3}}),	-- Twisting Nether Chain Shirt / Nether Plate Shirt[LEGION+]
			i(30070, {["timeline"] = {ADDED_2_0_5, REMOVED_4_0_3}}),	-- Windforged Leggings
			-- #endif
		}),
		n(DECOR, sharedDataSelf({["timeline"] = { ADDED_11_2_7 }}, {
			i(257035),	-- Bronze Banner of the Exiled (DECOR!)
			i(257039),	-- Draenei Crystal Forge (DECOR!)
			i(257036),	-- Draenei Smith's Anvil (DECOR!)
		})),
		filter(MISC, {
			i(33185, {["timeline"] = {ADDED_2_3_0}}),	-- Adamantite Weapon Chain
			i(25844, {["timeline"] = {ADDED_2_0_5, REMOVED_5_0_4}}),	-- Adamantite Rod
			i(23529),	-- Adamantite Sharpening Stone
			i(28421),	-- Adamantite Weightstone
			i(25845, {["timeline"] = {ADDED_2_0_5, REMOVED_5_0_4}}),	-- Eternium Rod
			i(25843, {["timeline"] = {ADDED_2_0_5, REMOVED_5_0_4}}),	-- Fel Iron Rod
			i(23528),	-- Fel Sharpening Stone
			i(28420),	-- Fel Weightstone
			i(23530),	-- Felsteel Shield Spike
			i(25521),	-- Greater Rune of Warding
			i(23576),	-- Greater Ward of Shielding
			i(23559),	-- Lesser Rune of Warding
			i(23575),	-- Lesser Ward of Shielding
		}),
		n(WEAPONS, {
			i(23503),	-- Adamantite Cleaver
			i(23504),	-- Adamantite Dagger
			i(23502),	-- Adamantite Maul
			i(23505),	-- Adamantite Rapier
			i(23555),	-- Dirge
			i(23554),	-- Eternium Runed Blade
			i(23542),	-- Fel Edged Battleaxe
			i(23546),	-- Fel Hardened Maul
			i(23499),	-- Fel Iron Greatsword
			i(23498),	-- Fel Iron Hammer
			i(23497),	-- Fel Iron Hatchet
			i(23540),	-- Felsteel Longblade
			i(23543),	-- Felsteel Reaper
			i(29204, {["timeline"] = {ADDED_2_0_5, REMOVED_5_0_4}}),	-- Felsteel Whisper Knives
			i(32854, {["timeline"] = {ADDED_2_3_0}}),	-- Hammer of Righteous Might
			i(23556),	-- Hand of Eternity
			i(23541),	-- Khorium Champion
			i(23544),	-- Runic Hammer
			-- #if AFTER CATA
			i(28432, {["timeline"] = {ADDED_2_0_5, REMOVED_4_0_3}}),	-- Black Planar Edge
			i(28427, {["timeline"] = {ADDED_2_0_5, REMOVED_4_0_3}}),	-- Blazefury
			i(28426, {["timeline"] = {ADDED_2_0_5, REMOVED_4_0_3}}),	-- Blazeguard
			i(28436, {["timeline"] = {ADDED_2_0_5, REMOVED_4_0_3}}),	-- Bloodmoon
			i(28441, {["timeline"] = {ADDED_2_0_5, REMOVED_4_0_3}}),	-- Deep Thunder
			i(28438, {["timeline"] = {ADDED_2_0_5, REMOVED_4_0_3}}),	-- Dragonmaw
			i(28439, {["timeline"] = {ADDED_2_0_5, REMOVED_4_0_3}}),	-- Dragonstrike
			i(28437, {["timeline"] = {ADDED_2_0_5, REMOVED_4_0_3}}),	-- Drakefist Hammer
			i(28425, {["timeline"] = {ADDED_2_0_5, REMOVED_4_0_3}}),	-- Fireguard
			i(30093, {["timeline"] = {ADDED_2_0_5, REMOVED_4_0_3, ADDED_7_1_5}}),	-- Great Earthforged Hammer
			i(30089, {["timeline"] = {ADDED_2_0_5, REMOVED_4_0_3, ADDED_7_1_5}}),	-- Lavaforged Warhammer
			i(30073, {["timeline"] = {ADDED_2_0_5, REMOVED_4_0_3}}),	-- Light Emberforged Hammer
			i(30072, {["timeline"] = {ADDED_2_0_5, REMOVED_4_0_3}}),	-- Light Skyforged Axe
			i(28428, {["timeline"] = {ADDED_2_0_5, REMOVED_4_0_3}}),	-- Lionheart Blade
			i(28429, {["timeline"] = {ADDED_2_0_5, REMOVED_4_0_3}}),	-- Lionheart Champion
			i(28430, {["timeline"] = {ADDED_2_0_5, REMOVED_4_0_3}}),	-- Lionheart Executioner
			i(28434, {["timeline"] = {ADDED_2_0_5, REMOVED_4_0_3}}),	-- Lunar Crescent
			i(28435, {["timeline"] = {ADDED_2_0_5, REMOVED_4_0_3}}),	-- Mooncleaver
			i(30088, {["timeline"] = {ADDED_2_0_5, REMOVED_4_0_3, ADDED_7_1_5}}),	-- Skyforged Great Axe
			i(30086, {["timeline"] = {ADDED_2_0_5, REMOVED_4_0_3, ADDED_7_1_5}}),	-- Stoneforged Claymore
			i(30087, {["timeline"] = {ADDED_2_0_5, REMOVED_4_0_3, ADDED_7_1_5}}),	-- Stormforged Axe
			i(28442, {["timeline"] = {ADDED_2_0_5, REMOVED_4_0_3}}),	-- Stormherald
			i(28431, {["timeline"] = {ADDED_2_0_5, REMOVED_4_0_3}}),	-- The Planar Edge
			i(28440, {["timeline"] = {ADDED_2_0_5, REMOVED_4_0_3}}),	-- Thunder
			i(28433, {["timeline"] = {ADDED_2_0_5, REMOVED_4_0_3}}),	-- Wicked Edge of the Planes
			i(30077, {["timeline"] = {ADDED_2_0_5, REMOVED_4_0_3, ADDED_7_1_5}}),	-- Windforged Rapier
			-- #endif
		}),
	}),
	prof(COOKING, {
		i(27657),	-- Blackened Basilisk
		i(27663),	-- Blackened Sporefish
		i(27661),	-- Blackened Trout
		i(33867, {["timeline"] = {ADDED_2_3_0}}),	-- Broiled Bloodfin
		i(27651),	-- Buzzard Bites
		i(30155),	-- Clam Bar
		i(31673),	-- Crunchy Serpent
		i(27662),	-- Feltail Delight
		applyclassicphase(TBC_PHASE_TWO, i(33052, {["timeline"] = {ADDED_2_1_2}})),	-- Fisherman's Feast
		i(27666),	-- Golden Fish Sticks
		i(27664),	-- Grilled Mudfish
		applyclassicphase(TBC_PHASE_TWO, i(33053, {["timeline"] = {ADDED_2_1_2}})),	-- Hot Buttered Trout
		i(33874, {["timeline"] = {ADDED_2_3_0}}),	-- Kibler's Bits
		i(31672),	-- Mok'Nathal Shortribs
		i(27665),	-- Poached Bluefish
		i(27655),	-- Ravager Dog
		i(27658),	-- Roasted Clefthoof
		i(33825, {["timeline"] = {ADDED_2_3_0}}),	-- Skullfish Soup
		i(27667),	-- Spicy Crawdad
		i(33872, {["timeline"] = {ADDED_2_3_0}}),	-- Spicy Hot Talbuk
		i(27656, {["timeline"] = {ADDED_2_0_5, REMOVED_4_2_0}}),	-- Sporeling Snack
		applyclassicphase(TBC_PHASE_TWO, i(33048, {["timeline"] = {ADDED_2_1_2}})),	-- Stewed Trout
		i(33866, {["timeline"] = {ADDED_2_3_0}}),	-- Stormchops
		i(27660),	-- Talbuk Steak
		i(27659),	-- Warp Burger
	}),
	prof(ENCHANTING, {
		header(HEADERS.Spell, 13262, {	-- Disenchant
			-- Danny Donkey: We need ilvl data from WoD and BfA stat squishes.
			-- Dust:
			i(22445, {	-- Arcane Dust
				-- #if AFTER 9.0.1
				["description"] = "Obtained from disenchanting uncommon (green) quality TBC garments, amulets, rings, shields and off-hand frills.",
				-- #elseif BEFORE WOD
				["description"] = "Obtained from disenchanting uncommon (green) quality TBC garments, amulets, rings, shields and off-hand frills within the ilvl bracket 87-120.",
				-- #endif
			}),
			-- Essences:
			i(22446, {	-- Greater Planar Essence
				-- #if AFTER 9.0.1
				["description"] = "Obtained from disenchanting uncommon (green) quality TBC weapons, except shields and off-hand frills.",
				-- #elseif BEFORE WOD
				["description"] = "Obtained from disenchanting uncommon (green) quality TBC weapons within the ilvl bracket 102-120, except shields and off-hand frills.",
				-- #endif
			}),
			i(22447, {	-- Lesser Planar Essence
				-- #if AFTER 9.0.1
				["description"] = "Obtained from disenchanting uncommon (green) quality TBC weapons, except shields and off-hand frills. This gives you Greater Planar Essence which you then have to split into Lesser Planar Essence.",
				-- #elseif BEFORE WOD
				["description"] = "Obtained from disenchanting uncommon (green) quality TBC weapons within the ilvl bracket 80-98, except shields and off-hand frills.",
				-- #endif
			}),
			-- Shards and crystals:
			i(22449, {	-- Large Prismatic Shard
				-- #if AFTER 9.0.1
				["description"] = "Obtained from disenchanting all rare (blue) quality TBC gear.",
				-- #elseif BEFORE WOD
				["description"] = "Obtained from disenchanting all rare (blue) quality TBC gear within the ilvl bracket 100-115.",
				-- #endif
			}),
			i(22448, {	-- Small Prismatic Shard
				-- #if AFTER 9.0.1
				["description"] = "Obtained from disenchanting all rare (blue) quality TBC gear. This gives you Large Prismatic Shard which you then have to split into Small Prismatic Shard by crafting. Requires skill level 35 to learn from trainer.",
				-- #elseif BEFORE WOD
				["description"] = "Obtained from disenchanting all rare (blue) quality TBC gear within the ilvl bracket 68-97.",
				-- #endif
			}),
			i(22450, {	-- Void Crystal
				-- #if AFTER 9.0.1
				["description"] = "Obtained from disenchanting all epic (purple) quality TBC gear.",
				-- #elseif BEFORE WOD
				["description"] = "Obtained from disenchanting all epic (purple) quality TBC gear within the ilvl bracket 100-141.",
				-- #endif
			}),
		}),
		applyclassicphase(WRATH_PHASE_ONE, n(ARMOR_ENCHANTMENTS, sharedDataSelf({ ["timeline"] = { ADDED_3_0_2 } }, {
			i(38944),	-- Enchant Boots - Boar's Speed
			i(38943),	-- Enchant Boots - Cat's Swiftness
			i(37603),	-- Enchant Boots - Dexterity
			i(38909),	-- Enchant Boots - Fortitude
			i(38910),	-- Enchant Boots - Surefooted
			i(38908),	-- Enchant Boots - Vitality
			i(38897),	-- Enchant Bracer - Brawn
			i(38902),	-- Enchant Bracer - Fortitude
			i(38899),	-- Enchant Bracer - Greater Dodge / TBC: Major Defense
			i(38938),	-- Enchant Bracer - Lesser Assault
			i(38937),	-- Enchant Bracer - Major Intellect
			i(38903),	-- Enchant Bracer - Spellpower
			i(38898),	-- Enchant Bracer - Stats
			i(38900),	-- Enchant Bracer - Superior Healing
			i(38901),	-- Enchant Bracer - Versatility Prime / TBC: Restore Mana Prime
			i(38999),	-- Enchant Chest - Dodge / TBC: Defense
			i(38911),	-- Enchant Chest - Exceptional Health
			i(38913),	-- Enchant Chest - Exceptional Stats
			i(38930),	-- Enchant Chest - Major Armor / TBC:Major Resilience
			i(38928),	-- Enchant Chest - Major Versatility / TBC: Major Spirit
			i(38929),	-- Enchant Chest - Versatility Prime / TBC: Restore Mana Prime
			i(38940),	-- Enchant Cloak - Greater Agility
			i(38941, {["timeline"] = { ADDED_3_0_2, REMOVED_5_0_4 }}),	-- Enchant Cloak - Greater Arcane Resistance
			i(39000),	-- Enchant Cloak - Greater Dodge / TBC: Steelweave
			i(38942, {["timeline"] = { ADDED_3_0_2, REMOVED_5_0_4 }}),	-- Enchant Cloak - Greater Shadow Resistance
			i(38914),	-- Enchant Cloak - Major Armor
			i(38915, {["timeline"] = { ADDED_3_0_2, REMOVED_5_0_4 }}),	-- Enchant Cloak - Major Resistance
			i(38939),	-- Enchant Cloak - Empowerment
			-- #if AFTER BFA
			i(38895),	-- Enchant Cloak - Dodge
			i(38893),	-- Enchant Cloak - Stealth
			i(38894),	-- Enchant Cloak - Subtlety
			-- #endif
			i(38934),	-- Enchant Gloves - Assault
			i(38931),	-- Enchant Gloves - Blasting
			i(38936),	-- Enchant Gloves - Major Healing
			i(38935),	-- Enchant Gloves - Major Spellpower
			i(38933),	-- Enchant Gloves - Major Strength
			i(38932),	-- Enchant Gloves - Precise Strikes / TBC: Spell Strike
			-- #if AFTER BFA
			i(38890),	-- Enchant Gloves - Superior Agility
			i(38885),	-- Enchant Gloves - Threat
			-- #endif
		}))),
		n(DECOR, sharedDataSelf({["timeline"] = { ADDED_11_2_7 }}, {
			i(257093),	-- Aldor Stellar Console (DECOR!)
			i(257037),	-- Draenei Holo-Dais (DECOR!)
			i(257038),	-- Draenei Holo-Path (DECOR!)
		})),
		filter(ILLUSIONS, bubbleDownSelf({ ["timeline"] = { ADDED_7_0_3 } }, {
			i(138789, {	-- Tome of Illusions: Outland
				ill(5390),	-- Battlemaster (ILLUSION!)
				ill(2674),	-- Spellsurge (ILLUSION!)
				ill(5864),	-- Netherflame (ILLUSION!)
			}),
		})),
		filter(MISC, {
			i(22460),	-- Prismatic Sphere
			i(22521),	-- Superior Mana Oil
			i(22522),	-- Superior Wizard Oil
			i(22459, {	-- Void Sphere
				["description"] = "This craft have a 48 hours cooldown.",
			}),
		}),
		filter(PROFESSION_EQUIPMENT, sharedDataSelf({ ["timeline"] = { REMOVED_5_0_4 }}, {
			i(22462),	-- Runed Adamantite Rod
			i(22463),	-- Runed Eternium Rod
			i(22461),	-- Runed Fel Iron Rod
		})),
		applyclassicphase(WRATH_PHASE_ONE, n(WEAPON_ENCHANTMENTS, sharedDataSelf({ ["timeline"] = { ADDED_3_0_2 } }, {
			i(38949),	-- Enchant Shield - Armor / TBC: Resilience
			i(38905),	-- Enchant Shield - Intellect
			i(38904),	-- Enchant Shield - Lesser Dodge / TBC: Tough Shield
			i(38945),	-- Enchant Shield - Major Stamina
			i(38906),	-- Enchant Shield - Parry / TBC: Shield Block
			i(38907, {["timeline"] = { ADDED_3_0_2, REMOVED_5_0_4 }}),	-- Enchant Shield - Resistance
			i(38927),	-- Enchant Weapon - Battlemaster
			i(38948),	-- Enchant Weapon - Executioner
			i(38998),	-- Enchant Weapon - Deathfrost
			i(38947),	-- Enchant Weapon - Greater Agility
			i(38922),	-- Enchant 2H Weapon - Major Agility
			i(38946),	-- Enchant Weapon - Major Healing
			i(38918),	-- Enchant Weapon - Major Intellect
			i(38921),	-- Enchant Weapon - Major Spellpower
			i(38917),	-- Enchant Weapon - Major Striking
			i(38925),	-- Enchant Weapon - Mongoose
			i(38920),	-- Enchant Weapon - Potency
			i(38919),	-- Enchant 2H Weapon - Savagery
			i(38924),	-- Enchant Weapon - Soulfrost
			i(38926),	-- Enchant Weapon - Spellsurge
			i(38923),	-- Enchant Weapon - Sunfire
		}))),
	}),
	prof(ENGINEERING, {
		prof(GNOMISH_ENGINEERING, {
			["description"] = "These items can only be crafted by Engineers who have completed the Gnomish Engineering quest chain.",
			["groups"] = {
				n(ARMOR, {
					i(23829),	-- Gnomish Battle Goggles
					i(23828),	-- Gnomish Power Goggles
				}),
				filter(MISC, {
					i(23841),	-- Gnomish Flame Turret
					i(23835),	-- Gnomish Poultryizer
					i(23825),	-- Nigh-Invulnerability Belt
				}),
				filter(TOYS, {
					i(30544, {	-- Ultrasafe Transporter: Toshley's Station (TOY!)
						["requireSkill"] = GNOMISH_ENGINEERING,	-- (BOP - Required)
					}),
				}),
			},
		}),
		prof(GOBLIN_ENGINEERING, {
			["description"] = "These items can only be crafted by Engineers who have completed the Goblin Engineering quest chain.",
			["groups"] = {
				n(ARMOR, {
					i(23838),	-- Foreman's Enchanted Helmet
					i(23839),	-- Foreman's Reinforced Helmet
				}),
				filter(MISC, {
					i(23836),	-- Goblin Rocket Launcher
					i(23827),	-- Super Sapper Charge
					i(23826),	-- The Bigger One
				}),
				filter(TOYS, {
					i(30542, {	-- Dimensional Ripper - Area 52 (TOY!)
						["requireSkill"] = GOBLIN_ENGINEERING,	-- (BOP - Required)
					}),
				}),
			},
		}),
		n(ARMOR, {
			applyclassicphase(TBC_PHASE_FIVE, i(34847, {["timeline"] = {ADDED_2_4_0}})),	-- Annihilator Holo-Gogs
			i(23758),	-- Cogspinner Goggles
			applyclassicphase(TBC_PHASE_TWO, i(32478, {["timeline"] = {ADDED_2_1_0}})),	-- Deathblow X11 Goggles
			applyclassicphase(TBC_PHASE_TWO, i(32494, {["timeline"] = {ADDED_2_1_0}})),	-- Destruction Holo-Gogs
			applyclassicphase(TBC_PHASE_TWO, i(32461, {["timeline"] = {ADDED_2_1_0}})),	-- Furious Gizmatic Goggles
			applyclassicphase(TBC_PHASE_TWO, i(32476, {	-- Gadgetstorm Goggles
				["timeline"] = { ADDED_2_1_0 },
				-- #if BEFORE 7.3.0
				["classes"] = { SHAMAN },
				-- #endif
			})),
			applyclassicphase(TBC_PHASE_FIVE, i(34357, {["timeline"] = {ADDED_2_4_0}})),	-- Hard Khorium Goggles
			applyclassicphase(TBC_PHASE_FIVE, i(35182, { 	-- Hyper-Magnified Moon Specs
				["timeline"] = { ADDED_2_4_0 },
				-- #if BEFORE 7.3.0
				["classes"] = LEATHER_CLASSES_INTELLECT,
				-- #endif
			})),
			i(23763),	-- Hyper-Vision Goggles
			applyclassicphase(TBC_PHASE_TWO, i(32472, {	-- Justicebringer 2000 Specs
				["timeline"] = { ADDED_2_1_0 },
				-- #if BEFORE 7.3.0
				["classes"] = { PALADIN },
				-- #endif
			})),
			applyclassicphase(TBC_PHASE_FIVE, i(35185, {	-- Justicebringer 3000 Specs
				["timeline"] = { ADDED_2_4_0 },
				-- #if BEFORE 7.3.0
				["classes"] = { PALADIN },
				-- #endif
			})),
			applyclassicphase(TBC_PHASE_FIVE, i(34355, {	-- Lightning Etched Specs
				["timeline"] = { ADDED_2_4_0 },
				-- #if BEFORE 7.3.0
				["classes"] = { SHAMAN },
				-- #endif
			})),
			applyclassicphase(TBC_PHASE_TWO, i(32475, {	-- Living Replicator Specs
				["timeline"] = { ADDED_2_1_0 },
				-- #if BEFORE 7.3.0
				["classes"] = { SHAMAN },
				-- #endif
			})),
			applyclassicphase(TBC_PHASE_TWO, i(32480, {	-- Magnified Moon Specs
				["timeline"] = { ADDED_2_1_0 },
				-- #if BEFORE 7.3.0
				["classes"] = LEATHER_CLASSES_INTELLECT,
				-- #endif
			})),
			applyclassicphase(TBC_PHASE_FIVE, i(34354, {["timeline"] = {ADDED_2_4_0}})),	-- Mayhem Projection Goggles
			i(23761),	-- Power Amplification Goggles
			applyclassicphase(TBC_PHASE_TWO, i(32495, {	-- Powerheal 4000 Lens
				["timeline"] = { ADDED_2_1_0 },
				-- #if BEFORE 7.3.0
				["classes"] = { PRIEST },
				-- #endif
			})),
			applyclassicphase(TBC_PHASE_FIVE, i(35181, {	-- Powerheal 9000 Lens
				["timeline"] = { ADDED_2_4_0 },
				-- #if BEFORE 7.3.0
				["classes"] = { PRIEST },
				-- #endif
			})),
			applyclassicphase(TBC_PHASE_FIVE, i(35184, {	-- Primal-Attuned Goggles
				["timeline"] = { ADDED_2_4_0 },
				-- #if BEFORE 7.3.0
				["classes"] = { SHAMAN },
				-- #endif
			})),
			applyclassicphase(TBC_PHASE_FIVE, i(34353, {["timeline"] = {ADDED_2_4_0}})),	-- Quad Deathblow X44 Goggles
			applyclassicphase(TBC_PHASE_TWO, i(32474, {["timeline"] = {ADDED_2_1_0}})),	-- Surestrike Goggles v2.0
			applyclassicphase(TBC_PHASE_FIVE, i(34356, {["timeline"] = {ADDED_2_4_0}})),	-- Surestrike Goggles v3.0
			applyclassicphase(TBC_PHASE_TWO, i(32473, {["timeline"] = {ADDED_2_1_0}})),	-- Tankatronic Goggles
			i(23762),	-- Ultra-Spectropic Detection Goggles
			applyclassicphase(TBC_PHASE_TWO, i(32479, {	-- Wonderheal XT40 Shades
				["timeline"] = { ADDED_2_1_0 },
				-- #if BEFORE 7.3.0
				["classes"] = LEATHER_CLASSES_INTELLECT,
				-- #endif
			})),
			applyclassicphase(TBC_PHASE_FIVE, i(35183, {	-- Wonderheal XT68 Shades
				["timeline"] = { ADDED_2_4_0 },
				-- #if BEFORE 7.3.0
				["classes"] = LEATHER_CLASSES_INTELLECT,
				-- #endif
			})),
		}),
		n(DECOR, sharedDataSelf({["timeline"] = { ADDED_11_2_7 }}, {
			i(258193),	-- Draenei Holo-Projector Pedestal (DECOR!)
			i(258196),	-- Draenei Transmitter (DECOR!)
			i(258194),	-- Tempest Keep Cryo-Pod (DECOR!)
		})),
		filter(MISC, {
			i(23737),	-- Adamantite Grenade
			applyclassicphase(TBC_PHASE_TWO, i(20475, {["timeline"] = {ADDED_2_3_0, REMOVED_4_0_1}})),	-- Adamantite Arrow Maker
			applyclassicphase(TBC_PHASE_TWO, i(33803, {["timeline"] = {ADDED_2_3_0, REMOVED_4_0_1}})),	-- Adamantite Stinger
			applyclassicphase(TBC_PHASE_TWO, i(34504, {["timeline"] = {ADDED_2_0_5, REMOVED_4_0_1}})),	-- Adamantite Shell Machine
			applyclassicphase(TBC_PHASE_TWO, i(23773, {["timeline"] = {ADDED_2_0_5, REMOVED_4_0_1}})),	-- Adamantite Shells
			i(23819),	-- Elemental Seaforium Charge
			i(23736),	-- Fel Iron Bomb
			i(23772, {["timeline"] = {ADDED_2_0_5, REMOVED_4_0_1}}),	-- Fel Iron Shells
			i(23774),	-- Fel Iron Toolbox
			i(34113, {["timeline"] = {ADDED_2_3_0}}),	-- Field Repair Bot 110G
			i(32413, {["timeline"] = {ADDED_2_1_0}}),	-- Frost Grenade
			i(23771),	-- Green Smoke Flare
			i(33092),	-- Healing Potion Injector
			i(33093),	-- Mana Potion Injector
			i(25886),	-- Purple Smoke Flare
			i(23824),	-- Rocket Boots Xtreme
			i(35581, {["timeline"] = {ADDED_2_4_0}}),	-- Rocket Boots Xtreme Lite
			i(23768),	-- White Smoke Flare
			i(23821),	-- Zapthrottle Mote Extractor
			-- Danny Donkey:	The gas clouds are sourced in the zones they are located in, and listed as sources for their respective reagents.
			-- 					This works fine in TBC where gas clouds are unique per zone (Nagrand - Windy Cloud; Zangarmarsh - Swamp Gas; Netherstorm - Arcane Vortex; Shadowmoon Valley - Felmist)
			-- 					For WotLK it is more complicated where Arctic Cloud, Cinder Cloud and Steam Cloud all appears in at least two zones, some shared with other gas clouds.
			-- 					It also does not helps that maps/coords/description does not appears on tooltips on creatures listed as sources in classic iterations of the game, while source path on cratures is broken in retail. it is a mess.
		}),
		filter(MOUNTS, {
			i(34060, {["timeline"] = {ADDED_2_3_0}}),	-- Flying Machine (MOUNT!)
			i(34061, {["timeline"] = {ADDED_2_3_0}}),	-- Turbo-Charged Flying Machine (MOUNT!)
		}),
		filter(REAGENTS, {
			i(23784),	-- Adamantite Frame
			i(23781),	-- Elemental Blasting Powder
			i(23782),	-- Fel Iron Casing
			i(23787),	-- Felsteel Stabilizer
			i(23783),	-- Handful of Fel Iron Bolts
			i(23785),	-- Hardened Adamantite Tube
			i(32423, {["timeline"] = {ADDED_2_1_0}}),	-- Icy Blasting Primers
			i(23786),	-- Khorium Power Core
		}),
		filter(TOYS, {
			i(23767),	-- Crashin' Thrashin' Robot (TOY!)
		}),
		n(WEAPONS, {
			i(23746),	-- Adamantite Rifle
			i(23742),	-- Fel Iron Musket
			i(23747),	-- Felsteel Boomstick
			applyclassicphase(TBC_PHASE_TWO, i(32756, {["timeline"] = {ADDED_2_1_0}})),	-- Gyro-Balanced Khorium Destroyer
			i(23748),	-- Ornate Khorium Rifle
		}),
		n(WEAPON_ENCHANTMENTS, {
			i(23764),	-- Adamantite Scope
			i(23765),	-- Khorium Scope
			i(23766),	-- Stabilized Eternium Scope
		}),
		i(23821, {	-- Zapthrottle Mote Extractor
			n(17408, {	-- Arcane Vortex (Gas cloud)
				["maps"] = { NETHERSTORM },
				["requireSkill"] = ENGINEERING,
			}),
			n(17407, {	-- Felmist (Gas cloud)
				["maps"] = { SHADOWMOON_VALLEY },
				["requireSkill"] = ENGINEERING,
			}),
			n(17378, {	-- Swamp Gas (Gas cloud)
				["maps"] = { ZANGARMARSH },
				["requireSkill"] = ENGINEERING,
			}),
			n(24222, {	-- Windy Cload (Gas cloud)
				["maps"] = { NAGRAND },
				["requireSkill"] = ENGINEERING,
				["timeline"] = { ADDED_2_3_0 },
			}),
		}),
	}),
	-- #if BEFORE BFA
	prof(FIRST_AID, {
		i(21991),	-- Heavy Netherweave Bandage
		i(21990),	-- Netherweave Bandage
	}),
	-- #endif
	prof(FISHING, {
		-- Fish
		i(27422, {	-- Barbed Gill Trout
			[MAPS_FIELD] = {
				DEADWIND_PASS,
				NAGRAND,
				TEROKKAR_FOREST,
				ZANGARMARSH,
			},
		}),
		i(34865, {	-- Blackfin Darter (Quest Item for Terokkar Forest fishing daily q(11666) Bait Bandits)
			[MAPS_FIELD] = { TEROKKAR_FOREST } ,
			["timeline"] = { ADDED_2_4_0 },
		}),
		i(35313, {	-- Bloated Barbed Gill Trout (Quest Item for Terokkar Forest fishing daily q(11668) Shrimpin' Ain't Easy)
			[MAPS_FIELD] = ZANGARMARSH,
			["timeline"] = { ADDED_2_4_0 },
			["groups"] = {
				i(34866),	-- Giant Freshwater Shrimp
			},
		}),
		applyclassicphase(TBC_PHASE_FIVE, i(35286, {	-- Bloated Giant Sunfish
			[MAPS_FIELD] = { ISLE_OF_QUELDANAS },
			["timeline"] = { ADDED_2_4_0 },
			["groups"] = {
				i(35287),	-- Luminous Bluetail
			},
		})),
		applyclassicphase(TBC_PHASE_FOUR, i(33823, {	-- Bloodfin Catfish
			[MAPS_FIELD] = { DEADWIND_PASS },
			["timeline"] = { ADDED_2_3_0 },
		})),
		applyclassicphase(TBC_PHASE_FOUR, i(33824, {	-- Crescent-Tail Skullfish
			[MAPS_FIELD] = { DEADWIND_PASS },
			["timeline"] = { ADDED_2_3_0 },
		})),
		i(27513, {	-- Curious Crate
			["providers"] = {
				{ "o", 182959 },	-- Bluefish School
				{ "o", 182954 },	-- Brackish Mixed School
				{ "o", 182957 },	-- Highland Mixed School
				{ "o", 182958 },	-- Mudfish School
				{ "o", 182951 },	-- Pure Water (fishing school)
				{ "o", 182956 },	-- School of Darter
				{ "o", 182953 },	-- Sporefish School
				{ "o", 182952 },	-- Steam Pump Floatsam
			},
			[MAPS_FIELD] = {
				NAGRAND,
				TEROKKAR_FOREST,
				ZANGARMARSH,
			},
		}),
		i(27516, {	-- Enormous Barbed Gill Trout
			["providers"] = {
				{ "o", 182959 },	-- Bluefish School
				{ "o", 182954 },	-- Brackish Mixed School
				{ "o", 182957 },	-- Highland Mixed School
				{ "o", 182958 },	-- Mudfish School
				{ "o", 182951 },	-- Pure Water (fishing school)
				{ "o", 182956 },	-- School of Darter
				{ "o", 182953 },	-- Sporefish School
				{ "o", 182952 },	-- Steam Pump Floatsam
			},
			[MAPS_FIELD] = {
				NAGRAND,
				TEROKKAR_FOREST,
				ZANGARMARSH,
			},
		}),
		i(27435, {	-- Figluster's Mudfish
			["provider"] = { "o", 182958 },	-- Mudfish School
			[MAPS_FIELD] = { NAGRAND },
		}),
		i(27439, {	-- Furious Crawdad
			["coords"] = {
				{ 59.6, 59.85, TEROKKAR_FOREST },	-- Lake Ere'Noru
				{ 46.6, 40.7, TEROKKAR_FOREST },	-- Lake Jorune
				{ 66.0, 78.3, TEROKKAR_FOREST },	-- Skettis
			},
			["_allowObjectProvider"] = true,
			["provider"] = { "o", 182957 },	-- Highland Mixed School
		}),
		applyclassicphase(TBC_PHASE_FIVE, i(35285, {	-- Giant Sunfish
			[MAPS_FIELD] = { ISLE_OF_QUELDANAS },
			["timeline"] = { ADDED_2_4_0 },
		})),
		i(27438, {	-- Golden Darter
			["providers"] = {
				{ "o", 182954 },	-- Brackish Mixed School
				{ "o", 182957 },	-- Highland Mixed School
				{ "o", 182956 },	-- School of Darter
			},
			[MAPS_FIELD] = TEROKKAR_FOREST,
		}),
		i(27442, {	-- Goldenscale Vendorfish
			["providers"] = {
				{ "o", 182959 },	-- Bluefish School
				{ "o", 182954 },	-- Brackish Mixed School
				{ "o", 182957 },	-- Highland Mixed School
				{ "o", 182958 },	-- Mudfish School
				{ "o", 182951 },	-- Pure Water (fishing school)
				{ "o", 182956 },	-- School of Darter
				{ "o", 182953 },	-- Sporefish School
				{ "o", 182952 },	-- Steam Pump Floatsam
			},
			[MAPS_FIELD] = {
				NAGRAND,
				TEROKKAR_FOREST,
				ZANGARMARSH,
			},
		}),
		i(27481, {	-- Heavy Supply Crate
			["provider"] = { "o", 182952 },	-- Steam Pump Flotsam
		}),
		i(27515, {	-- Huge Spotted Feltail
			["providers"] = {
				{ "o", 182959 },	-- Bluefish School
				{ "o", 182954 },	-- Brackish Mixed School
				{ "o", 182957 },	-- Highland Mixed School
				{ "o", 182958 },	-- Mudfish School
				{ "o", 182951 },	-- Pure Water (fishing school)
				{ "o", 182956 },	-- School of Darter
				{ "o", 182953 },	-- Sporefish School
				{ "o", 182952 },	-- Steam Pump Floatsam
			},
			[MAPS_FIELD] = {
				NAGRAND,
				TEROKKAR_FOREST,
				ZANGARMARSH,
			},
		}),
		i(27437, {	-- Icefin Bluefish
			["provider"] = { "o", 182959 },	-- Bluefish School
			[MAPS_FIELD] = { NAGRAND },
		}),
		i(27511, {	-- Inscribed Scrollcase
			["providers"] = {
				{ "o", 182959 },	-- Bluefish School
				{ "o", 182954 },	-- Brackish Mixed School
				{ "o", 182957 },	-- Highland Mixed School
				{ "o", 182958 },	-- Mudfish School
				{ "o", 182951 },	-- Pure Water (fishing school)
				{ "o", 182956 },	-- School of Darter
				{ "o", 182953 },	-- Sporefish School
				{ "o", 182952 },	-- Steam Pump Floatsam
			},
			[MAPS_FIELD] = {
				NAGRAND,
				TEROKKAR_FOREST,
				ZANGARMARSH,
			},
		}),
		i(34867, {	-- Monstrous Felblood Snapper (Quest Item for Terokkar Forest fishing daily q(11669) Felblood Fillet)
			[MAPS_FIELD] = {
				HELLFIRE_PENINSULA,
				SHADOWMOON_VALLEY,
			},
			["timeline"] = { ADDED_2_4_0 },
		}),
		i(27388, {	-- Mr. Pinchy
			["coords"] = {
				{ 59.6, 59.85, TEROKKAR_FOREST },	-- Lake Ere'Noru
				{ 46.6, 40.7, TEROKKAR_FOREST },	-- Lake Jorune
				{ 66.0, 78.3, TEROKKAR_FOREST },	-- Skettis
			},
			["description"] = "Fished up from Highland Mixed Schools. You have 3 wishes per Mr. Pinchy, each wish granting one of the following effects:\n\n1) Mr. Pinchy's Blessing (Flask)\n2) Summon Furious Mr. Pinchy (Enemy)\n3) Magical Crawdad Box (Rare Pet)\n4) Mr. Pinchy's Gift (Potions)\n5) Benevolent Mr. Pinchy (Guardian)",
			["_allowObjectProvider"] = true,
			["provider"] = { "o", 182957 },	-- Highland Mixed School
			["groups"] = {
				i(27445),	-- Magical Crawdad (PET!)
				i(27446, {	-- Mr. Pinchy's Gift
					["description"] = "Contains an assortment of potions.",
					["groups"] = {
						i(8350),	-- The 1 Ring
					},
				}),
			},
		}),
		i(27425, {	-- Spotted Feltail
			[MAPS_FIELD] = {
				TEROKKAR_FOREST,
				ZANGARMARSH,
			},
		}),
		i(34868, {	-- World's Largest Mudfish (Quest Item for Terokkar Forest fishing daily q(11667) The One That Got Away)
			[MAPS_FIELD] = { NAGRAND },
		}),
		i(27429, {	-- Zangarian Sporefish
			["provider"] = { "o", 182953 },	-- Sporefish School
			[MAPS_FIELD] = { ZANGARMARSH },
		}),
		-- Schools
		o(182959, {	-- Bluefish School
			["maps"] = { NAGRAND },
		}),
		o(182954, {	-- Brackish Mixed School
			["maps"] = {
				TEROKKAR_FOREST,
				ZANGARMARSH,
			},
		}),
		o(182957, {	-- Highland Mixed School
			["coords"] = {
				{ 59.6, 59.85, TEROKKAR_FOREST },	-- Lake Ere'Noru
				{ 46.6, 40.7, TEROKKAR_FOREST },	-- Lake Jorune
				{ 66.0, 78.3, TEROKKAR_FOREST },	-- Skettis
			},
		}),
		o(182958, {	-- Mudfish School
			["maps"] = { NAGRAND },
		}),
		o(182951, {	-- Pure Water (fishing school)
			["maps"] = { NAGRAND },
		}),
		o(182956, {	-- School of Darter
			["maps"] = { TEROKKAR_FOREST },
		}),
		o(182953, {	-- Sporefish School
			["maps"] = { ZANGARMARSH },
		}),
		o(182952, {	-- Steam Pump Flotsam
			["maps"] = { ZANGARMARSH },
		}),
		-- Recipe
		filter(RECIPES, {
			i(34109, {	-- Weather-Beaten Journal (RECIPE!)
				["description"] = "Can be fished from schools.",
				["timeline"] = { ADDED_2_3_0 },
			}),
		}),
	}),
	prof(HERBALISM, {
		header(HEADERS.Spell, 2366, {	-- Herb Gathering
			-- Herbs
			i(22790, {	-- Ancient Lichen
				[MAPS_FIELD] = {
					AUCHINDOUN_AUCHENAI_CRYPTS,
					AUCHINDOUN_MANA_TOMBS,
					AUCHINDOUN_SETHEKK_HALLS,
					AUCHINDOUN_SHADOW_LABYRINTH,
					COILFANG_RESERVOIR_SLAVE_PENS,
					COILFANG_RESERVOIR_STEAMVAULT,
					COILFANG_RESERVOIR_UNDERBOG,
				},
				["provider"] = { "o", 181278 },	-- Ancient Lichen
			}),
			i(108348, {	-- Ancient Lichen Petal
				["provider"] = { "o", 181278 },	-- Ancient Lichen
				["timeline"] = { ADDED_6_0_2 },
				["groups"] = {
					i(22790),	-- Ancient Lichen
				},
			}),
			i(22786, {	-- Dreaming Glory
				["description"] = "Found near edges and highly uneven terrain.",
				[MAPS_FIELD] = {
					BLADES_EDGE_MOUNTAINS,
					NAGRAND,
					NETHERSTORM,
					SHADOWMOON_VALLEY,
					TEROKKAR_FOREST,
				},
				["provider"] = { "o", 181271 },	-- Dreaming Glory
			}),
			i(108345, {	-- Dreaming Glory Petal
				["provider"] = { "o", 181271 },	-- Dreaming Glory
				["timeline"] = { ADDED_6_0_2 },
				["groups"] = {
					i(22786),	-- Dreaming Glory
				},
			}),
			i(22795, {	-- Fel Blossom
				["provider"] = { "o", 181270 },	-- Felweed
			}),
			i(22794, {	-- Fel Lotus
				["description"] = "Can uncommonly be looted when gathering TBC herbs.",
				["providers"] = {
					{ "o", 181278 },	-- Ancient Lichen
					{ "o", 181271 },	-- Dreaming Glory
					{ "o", 181270 },	-- Felweed
					{ "o", 181281 },	-- Mana Thistle
					{ "o", 181279 },	-- Netherbloom
					{ "o", 181280 },	-- Nightmare Vine
					{ "o", 181275 },	-- Ragveil
					{ "o", 181277 },	-- Terocone
				},
			}),
			i(22785, {	-- Felweed
				[MAPS_FIELD] = {
					BLADES_EDGE_MOUNTAINS,
					HELLFIRE_PENINSULA,
					NAGRAND,
					SHADOWMOON_VALLEY,
					TEROKKAR_FOREST,
					ZANGARMARSH,
				},
				["provider"] = { "o", 181270 },	-- Felweed
			}),
			i(108344, {	-- Felweed Stalk
				["provider"] = { "o", 181270 },	-- Felweed
				["timeline"] = { ADDED_6_0_2 },
				["groups"] = {
					i(22785),	-- Felweed
				},
			}),
			i(22788, {	-- Flame Cap
				[MAPS_FIELD] = {
					COILFANG_RESERVOIR_SLAVE_PENS,
					COILFANG_RESERVOIR_STEAMVAULT,
					COILFANG_RESERVOIR_UNDERBOG,
					ZANGARMARSH,
				},
				["provider"] = { "o", 181276 },	-- Flame Cap
			}),
			i(22793, {	-- Mana Thistle
				[MAPS_FIELD] = { ISLE_OF_QUELDANAS },
				["provider"] = { "o", 181281 },	-- Mana Thistle
			}),
			i(108351, {	-- Mana Thistle Leaf
				["provider"] = { "o", 181281 },	-- Mana Thistle
				["timeline"] = { ADDED_6_0_2 },
				["groups"] = {
					i(22793),	-- Mana Thistle
				},
			}),
			i(35229, {	-- Nether Residue (Quest Item for Shattrath q(11875) Gaining the Advantage)
				["providers"] = {
					{ "o", 181278 },	-- Ancient Lichen
					{ "o", 181271 },	-- Dreaming Glory
					{ "o", 181270 },	-- Felweed
					{ "o", 181281 },	-- Mana Thistle
					{ "o", 181279 },	-- Netherbloom
					{ "o", 181280 },	-- Nightmare Vine
					{ "o", 181275 },	-- Ragveil
					{ "o", 181277 },	-- Terocone
				},
				["timeline"] = { ADDED_2_4_0 },
			}),
			i(22791, {	-- Netherbloom
				[MAPS_FIELD] = { NETHERSTORM },
				["provider"] = { "o", 181279 },	-- Netherbloom
			}),
			i(108349, {	-- Netherbloom Leaf
				["provider"] = { "o", 181279 },	-- Netherbloom
				["timeline"] = { ADDED_6_0_2 },
				["groups"] = {
					i(22791),	-- Netherbloom
				},
			}),
			i(22797, {	-- Nightmare Seed
				["provider"] = { "o", 181280 },	-- Nightmare Vine
				["timeline"] = { REMOVED_3_3_0 },	-- Danny Donkey: Must confirm how this applies to Classic!
			}),
			i(22792, {	-- Nightmare Vine
				["coords"] = {
					{ 63.9, 68.3, BLADES_EDGE_MOUNTAINS },	-- Death's Door
					{ 34.8, 40.4, BLADES_EDGE_MOUNTAINS },	-- Forge Camp: Wrath
					{ 29.2, 81.3, BLADES_EDGE_MOUNTAINS },	-- Forge Camp: Terror
					{ 62.7, 19.5, HELLFIRE_PENINSULA },	-- Throne of Kil'jaeden
				},
				["description"] = "Although it can be found all over Shadowmoon Valley, the more efficient farm is the listed coordinates.",
				[MAPS_FIELD] = SHADOWMOON_VALLEY,
				["_allowObjectProvider"] = true,
				["provider"] = { "o", 181280 },	-- Nightmare Vine
			}),
			i(108350, {	-- Nightmare Vine Stem
				["provider"] = { "o", 181280 },	-- Nightmare Vine
				["timeline"] = { ADDED_6_0_2 },
				["groups"] = {
					i(22792),	-- Nightmare Vine
				},
			}),
			i(22787, {	-- Ragveil
				[MAPS_FIELD] = ZANGARMARSH,
				["provider"] = { "o", 181275 },	-- Ragveil
			}),
			i(108346, {	-- Ragveil Cap
				["provider"] = { "o", 181275 },	-- Ragveil
				["timeline"] = { ADDED_6_0_2 },
				["groups"] = {
					i(22787),	-- Ragveil
				},
			}),
			i(22789, {	-- Terocone
				["coords"] = {
					{ 43.4, 55.8, SHADOWMOON_VALLEY },	-- Sketh'lon Base Camp
					{ 36.5, 32.5, SHADOWMOON_VALLEY },	-- Sketh'lon Wreckage
					{ 29.2, 81.3, BLADES_EDGE_MOUNTAINS },	-- Forge Camp: Terror
					{ 62.7, 19.5, HELLFIRE_PENINSULA },	-- Throne of Kil'jaeden
				},
				["description"] = "Found near the base of trees.",
				[MAPS_FIELD] = TEROKKAR_FOREST,
				["_allowObjectProvider"] = true,
				["provider"] = { "o", 181277 },	-- Terocone
			}),
			i(108347, {	-- Terocone Leaf
				["provider"] = { "o", 181277 },	-- Terocone
				["timeline"] = { ADDED_6_0_2 },
				["groups"] = {
					i(22789),	-- Terocone
				},
			}),
			i(24401, {	-- Unidentified Plant Parts (Quest Item for Zangarmarsh q(9802) and q(9784))
				[MAPS_FIELD] = ZANGARMARSH,
			}),
			-- Nodes
			o(181278, {	-- Ancient Lichen
				["maps"] = {
					AUCHINDOUN_AUCHENAI_CRYPTS,
					AUCHINDOUN_MANA_TOMBS,
					AUCHINDOUN_SETHEKK_HALLS,
					AUCHINDOUN_SHADOW_LABYRINTH,
					COILFANG_RESERVOIR_SLAVE_PENS,
					COILFANG_RESERVOIR_STEAMVAULT,
					COILFANG_RESERVOIR_UNDERBOG,
				},
			}),
			o(181271, {	-- Dreaming Glory
				["description"] = "Found near edges and highly uneven terrain.",
				["maps"] = {
					BLADES_EDGE_MOUNTAINS,
					NAGRAND,
					NETHERSTORM,
					SHADOWMOON_VALLEY,
					TEROKKAR_FOREST,
				},
			}),
			o(181270, {	-- Felweed
				["maps"] = {
					BLADES_EDGE_MOUNTAINS,
					HELLFIRE_PENINSULA,
					NAGRAND,
					NETHERSTORM,
					SHADOWMOON_VALLEY,
					TEROKKAR_FOREST,
					ZANGARMARSH,
				},
			}),
			o(181276, {	-- Flame Cap
				["maps"] = {
					COILFANG_RESERVOIR_SLAVE_PENS,
					COILFANG_RESERVOIR_STEAMVAULT,
					COILFANG_RESERVOIR_UNDERBOG,
					ZANGARMARSH,
				},
			}),
			o(181281, {	-- Mana Thistle
				["maps"] = { ISLE_OF_QUELDANAS },
			}),
			o(181279, {	-- Netherbloom
				["maps"] = { NETHERSTORM },
			}),
			o(181280, {	-- Nightmare Vine
				["description"] = "Although this can be found all over Shadowmoon Valley, the more efficient farm is the listed coordinates.",
				["coords"] = {
					{ 63.9, 68.3, BLADES_EDGE_MOUNTAINS },	-- Death's Door
					{ 34.8, 40.4, BLADES_EDGE_MOUNTAINS },	-- Forge Camp: Wrath
					{ 29.2, 81.3, BLADES_EDGE_MOUNTAINS },	-- Forge Camp: Terror
					{ 62.7, 19.5, HELLFIRE_PENINSULA },	-- Throne of Kil'jaeden
				},
				["maps"] = SHADOWMOON_VALLEY,
			}),
			o(181275, {	-- Ragveil
				["maps"] = {
					COILFANG_RESERVOIR_SLAVE_PENS,
					COILFANG_RESERVOIR_STEAMVAULT,
					COILFANG_RESERVOIR_UNDERBOG,
					ZANGARMARSH,
				},
			}),	-- Sanguine Hibiscus
			o(183385, {
				["maps"] = { COILFANG_RESERVOIR_UNDERBOG },
			}),
			o(181277, {	-- Terocone
				["description"] = "Found near the base of trees.",
				["coords"] = {
					{ 43.4, 55.8, SHADOWMOON_VALLEY },	-- Sketh'lon Base Camp
					{ 36.5, 32.5, SHADOWMOON_VALLEY },	-- Sketh'lon Wreckage
					{ 29.2, 81.3, BLADES_EDGE_MOUNTAINS },	-- Forge Camp: Terror
					{ 62.7, 19.5, HELLFIRE_PENINSULA },	-- Throne of Kil'jaeden
				},
				["maps"] = { TEROKKAR_FOREST },
			}),
		}),
	}),
	-- #if AFTER WRATH
	prof(INSCRIPTION, {
		-- Inks and reagents:
		header(HEADERS.Spell, 51005, {	-- Milling
			i(43108, {	-- Ebon Pigment
				["providers"] = {
					{ "i", 22790 },	-- Ancient Lichen
					{ "i", 22786 },	-- Dreaming Glory
					{ "i", 22785 },	-- Felweed
					{ "i", 22793 },	-- Mana Thistle
					{ "i", 22792 },	-- Nightmare Vine
					{ "i", 22787 },	-- Ragveil
					{ "i", 22789 },	-- Terocone
				},
			}),
			i(39342, {	-- Nether Pigment
				["providers"] = {
					{ "i", 22790 },	-- Ancient Lichen
					{ "i", 22786 },	-- Dreaming Glory
					{ "i", 22785 },	-- Felweed
					{ "i", 22793 },	-- Mana Thistle
					{ "i", 22792 },	-- Nightmare Vine
					{ "i", 22787 },	-- Ragveil
					{ "i", 22789 },	-- Terocone
				},
			}),
		}),
		filter(REAGENTS, {
			i(43125),	-- Darkflame Ink
			i(43124),	-- Ethereal Ink
		}),
		n(DECOR, sharedDataSelf({["timeline"] = { ADDED_11_2_7 }}, {
			i(258199),	-- Aldor Bookcase (DECOR!)
			i(258197),	-- Crystal Signpost (DECOR!)
			i(258198),	-- Gilded Draenei Round Table (DECOR!)
			i(258215),	-- Halaa Bench (DECOR!)
			i(258192),	-- Talon King's Totem (DECOR!)
		})),
		-- Non-reagent crafts:
		filter(GLYPHS, {
			i(42743, {["timeline"]={ ADDED_3_0_2, REMOVED_7_0_3 }}),	-- Glyph of Ice Armor / Glyph of Pyroblast[CATA] / Glyph of Momentum[MOP+]
			i(43316, {["timeline"]={ ADDED_3_0_2, REMOVED_7_0_3 }}),	-- Glyph of Aquatic Form
			i(43368, {["timeline"]={ ADDED_3_0_2, REMOVED_7_0_3 }}),	-- Glyph of Sense Undead / Glyph of Truth[CATA] / Glyph of Seal of Blood[MOP+]
			i(42461, {["timeline"]={ ADDED_3_0_2, REMOVED_7_0_3 }}),	-- Glyph of Health Funnel
			i(42908, {["timeline"]={ ADDED_3_0_2, REMOVED_7_0_3 }}),	-- Glyph of Immolation Trap / Glyph of Explosive Trap[MOP+]
			i(43378, {["timeline"]={ ADDED_3_0_2, REMOVED_7_0_3 }}),	-- Glyph of Safe Fall
			-- #if ANYCLASSIC
			-- Danny Donkey: These glyphs became vanilla crafts on retail at an unknown point after MoP
			i(43535, {["timeline"]={ ADDED_3_0_2 }}),					-- Glyph of Blood Tap / Glyph of the Geist [MOP+]
			i(43400, {["timeline"]={ ADDED_3_0_2 }}),					-- Glyph of Enduring Victory / Glyph of Mighty Victory [MOP+]
			i(43551, {["timeline"]={ ADDED_3_0_2 }}),					-- Glyph of Scourge Strike / Glyph of Foul Menagerie [MOP+]
			-- #endif
			-- #if NOT ANYCLASSIC
			-- Danny Donkey: These glyphs were WotLK crafts on retail until an unknown point after MoP.
			i(42459, {["timeline"]={ ADDED_3_0_2 }}),					-- Glyph of Felguard
			applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(104120,{["timeline"]={ ADDED_5_4_0 }})),	-- Glyph of the Sha
			-- #endif
		}),
		filter(HELD_IN_OFF_HAND, {
			i(43667),	-- Book of Clever Tricks
			i(43666),	-- Hellfire Tome
		}),
		filter(MISC, {
			i(33457),	-- Scroll of Agility VI
			i(33462),	-- Scroll of Intellect VI
			i(33458),	-- Scroll of Strength VI
		}),
		category(106, {	-- Tarot Cards
			i(44317, {	-- Greater Darkmoon Card
				-- Blessings Deck
				i(31882),	-- Ace of Blessings
				i(31889),	-- Two of Blessings
				i(31888),	-- Three of Blessings
				i(31885),	-- Four of Blessings
				i(31884),	-- Five of Blessings
				i(31887),	-- Six of Blessings
				i(31886),	-- Seven of Blessings
				i(31883),	-- Eight of Blessings

				-- Furies Deck
				i(31901),	-- Ace of Furies
				i(31909),	-- Two of Furies
				i(31908),	-- Three of Furies
				i(31904),	-- Four of Furies
				i(31903),	-- Five of Furies
				i(31906),	-- Six of Furies
				i(31905),	-- Seven of Furies
				i(31902),	-- Eight of Furies

				-- Lunacy Deck
				i(31910),	-- Ace of Lunacy
				i(31918),	-- Two of Lunacy
				i(31917),	-- Three of Lunacy
				i(31913),	-- Four of Lunacy
				i(31912),	-- Five of Lunacy
				i(31916),	-- Six of Lunacy
				i(31915),	-- Seven of Lunacy
				i(31911),	-- Eight of Lunacy

				-- Storms Deck
				i(31892),	-- Ace of Storms
				i(31900),	-- Two of Storms
				i(31899),	-- Three of Storms
				i(31895),	-- Four of Storms
				i(31894),	-- Five of Storms
				i(31898),	-- Six of Storms
				i(31896),	-- Seven of Storms
				i(31893),	-- Eight of Storms
			}),
		}),
	}),
	-- #endif
	prof(JEWELCRAFTING, {
		header(HEADERS.Spell, 31252, {	-- Prospecting
			-- Note: Epic quality (purple) gems CANNOT be obtained from prospecting, see Mining.
			["groups"] = appendAllGroups(
				sharedData({	-- Uncommon quality (green) gems:
					["description"] = "This gem is most reliably obtained from prospecting ore with Jewelcrafting.",
					["providers"] = {
						{ "i", 23425 },	-- Adamantite Ore
						{ "i", 23424 },	-- Fel Iron Ore
					},
				}, {
					i(23117),	-- Azure Moonstone
					i(23077),	-- Blood Garnet
					i(23079),	-- Deep Perigot
					i(21929),	-- Flame Spessarite
					i(23112),	-- Golden Draenite
					i(23107),	-- Shadow Draenite
				}),
				sharedData({	-- Rare quality (blue) gems:
					-- #if AFTER CATA
					["description"] = "This gem is most reliably obtained from prospecting ore with Jewelcrafting, Adamatite Ores offering the better drop rate. Mining Ancient Gem Veins in the raid Battle for Mount Hyjal is also a reliable source.",
					-- #else
					["description"] = "This gem is most reliably obtained from prospecting ore with Jewelcrafting, Adamatite Ores offering the better drop rate.",
					-- #endif
					["providers"] = {
						{ "i", 23425 },	-- Adamantite Ore
						{ "i", 23424 },	-- Fel Iron Ore
					},
				}, {
					i(23440),	-- Dawnstone
					i(23436),	-- Living Ruby
					i(23441),	-- Nightseye
					i(23439),	-- Noble Topaz
					i(23438),	-- Star of Elune
					i(23437),	-- Talasite
				}),
				{
					i(24243, {	-- Adamantite Powder
						["cost"] = {{ "i", 23425, 5 }},	-- Adamantite Ore
					}),
				}
			),
		}),
		n(ARMOR, {
			i(24123),	-- Circlet of Arcane Might
			i(24122),	-- Coronet of Verdant Flame
			applyclassicphase(TBC_PHASE_TWO, i(32776, {["timeline"] = {ADDED_2_1_0}})),	-- Crown of the Sea Witch
		}),
		n(DECOR, sharedDataSelf({["timeline"] = { ADDED_11_2_7 }}, {
			i(262347),	-- Draenei Crystal Chandelier (DECOR!)
			i(258201),	-- Shattrath Lamppost (DECOR!)
			i(258200),	-- Shattrath Sconce (DECOR!)
		})),
		filter(GEMS, {
			n(SPECIAL, {
				["timeline"] = { ADDED_2_2_0 },
				["groups"] = {
					i(33140),	-- Blood of Amber
					i(33131),	-- Crimson Sun
					i(33133),	-- Don Julio's Heart
					i(33135),	-- Falling Star
					i(33144),	-- Facet of Eternity
					i(33134),	-- Kailee's Rose
					i(33143),	-- Stone of Blades
				},
			}),
			-- #if BEFORE CATA
			n(QUALITY_UNCOMMON, {
				applyclassicphase(TBC_PHASE_TWO_OGRILA, i(31862, {["timeline"] = {ADDED_2_2_0, REMOVED_4_0_3}})),	-- Balanced Shadow Draenite
				i(23095),	-- Bold Blood Garnet
				i(28595),	-- Bright Blood Garnet
				i(23113, {["timeline"] = {ADDED_2_0_5, REMOVED_4_0_3}}),	-- Brilliant Golden Draenite
				i(23106, {["timeline"] = {ADDED_2_0_5, REMOVED_4_0_3}}),	-- Dazzling Deep Peridot
				i(23097, {["timeline"] = {ADDED_2_0_5, REMOVED_4_0_3}}),	-- Delicate Blood Garnet
				i(23105),	-- Enduring Deep Peridot
				i(23114),	-- Gleaming Golden Draenite
				i(23100),	-- Glinting Flame Spessarite
				i(23108),	-- Glowing Shadow Draenite
				applyclassicphase(TBC_PHASE_TWO_OGRILA, i(31860, {["timeline"] = {ADDED_2_2_0, REMOVED_4_0_3}})),	-- Great Golden Draenite
				applyclassicphase(TBC_PHASE_TWO_OGRILA, i(31864, {["timeline"] = {ADDED_2_2_0, REMOVED_4_0_3}})),	-- Infused Shadow Draenite
				i(23098),	-- Inscribed Flame Spessarite
				i(23104),	-- Jagged Deep Peridot
				i(23099),	-- Luminous Flame Spessarite
				i(23121, {["timeline"] = {ADDED_2_0_5, REMOVED_4_0_3}}),	-- Lustrous Azure Moonstone
				i(23101),	-- Potent Flame Spessarite
				i(32833, {["timeline"] = {ADDED_2_1_0}}),	-- Purified Jaggal Pearl
				i(23103),	-- Radiant Deep Peridot
				i(23116),	-- Rigid Golden Draenite
				i(23109),	-- Royal Shadow Draenite
				i(23096, {["timeline"] = {ADDED_2_0_5, REMOVED_4_0_3}}),	-- Runed Blood Garnet
				i(23110),	-- Shifting Shadow Draenite
				i(28290, {["timeline"] = {ADDED_2_0_5, REMOVED_4_0_3}}),	-- Smooth Golden Draenite
				i(23118),	-- Solid Azure Moonstone
				i(23111),	-- Sovereign Shadow Draenite
				i(23119),	-- Sparkling Azure Moonstone
				i(23120),	-- Stormy Azure Moonstone
				i(23094),	-- Teardrop Blood Garnet
				i(23115),	-- Thick Golden Draenite
				applyclassicphase(TBC_PHASE_TWO_OGRILA, i(31866)),	-- Veiled Flame Spessarite
				applyclassicphase(TBC_PHASE_TWO_OGRILA, i(31869)),	-- Wicked Flame Spessarite
			}),
			n(QUALITY_RARE, {
				i(31863, {["timeline"] = {ADDED_2_1_0, REMOVED_4_0_3}}),	-- Balanced Nightseye
				i(24027),	-- Bold Living Ruby
				i(25897),	-- Bracing Earthstorm Diamond
				i(24031, {["timeline"] = {ADDED_2_0_5, REMOVED_4_0_3}}),	-- Bright Living Ruby
				i(24047, {["timeline"] = {ADDED_2_0_5, REMOVED_4_0_3}}),	-- Brilliant Dawnstone
				i(25899),	-- Brutal Earthstorm Diamond
				i(34220, {["timeline"] = {ADDED_2_3_0}}),	-- Chaotic Skyfire Diamond
				i(24065),	-- Dazzling Talasite
				i(24028),	-- Delicate Living Ruby
				i(25890),	-- Destructive Skyfire Diamond
				applyclassicphase(TBC_PHASE_FIVE, i(35503, {["timeline"] = {ADDED_2_4_0}})),	-- Ember Skyfire Diamond
				i(24062, {["timeline"] = {ADDED_2_0_5, REMOVED_4_0_3}}),	-- Enduring Talasite
				i(25895),	-- Enigmatic Skyfire Diamond
				applyclassicphase(TBC_PHASE_FIVE, i(35501, {["timeline"] = {ADDED_2_4_0}})),	-- Eternal Earthstorm Diamond
				i(24036),	-- Flashing Living Ruby
				applyclassicphase(TBC_PHASE_FIVE, i(35318, {["timeline"] = {ADDED_2_4_2}})),	-- Forceful Talasite
				i(24050, {["timeline"] = {ADDED_2_0_5, REMOVED_4_0_3}}),	-- Gleaming Dawnstone
				i(24061),	-- Glinting Noble Topaz
				i(24056),	-- Glowing Nightseye
				i(31861, {["timeline"] = {ADDED_2_1_0, REMOVED_4_0_3}}),	-- Great Dawnstone
				i(31865, {["timeline"] = {ADDED_2_1_0, REMOVED_4_0_3}}),	-- Infused Nightseye
				i(24058),	-- Inscribed Noble Topaz
				i(25901),	-- Insightful Earthstorm Diamond
				i(24067),	-- Jagged Talasite
				i(24060),	-- Luminous Noble Topaz
				i(24037, {["timeline"] = {ADDED_2_0_5, REMOVED_4_0_3}}),	-- Lustrous Star of Elune
				i(24053, {["timeline"] = {ADDED_2_1_3}}),	-- Mystic Dawnstone
				i(25893),	-- Mystical Skyfire Diamond
				i(24059),	-- Potent Noble Topaz
				i(25896),	-- Powerful Earthstorm Diamond
				i(32836, {["timeline"] = {ADDED_2_1_0}}),	-- Purified Shadow Pearl
				applyclassicphase(TBC_PHASE_FIVE, i(35315, {["timeline"] = {ADDED_2_4_2}})),	-- Quick Dawnstone
				i(24066),	-- Radiant Talasite
				applyclassicphase(TBC_PHASE_FIVE, i(35316, {["timeline"] = {ADDED_2_4_2, REMOVED_4_0_3}})),	-- Reckless Noble Topaz
				applyclassicphase(TBC_PHASE_FIVE, i(35707, {["timeline"] = {ADDED_2_4_0}})),	-- Regal Nightseye
				i(32409, {["timeline"] = {ADDED_2_1_0}}),	-- Relentless Earthstorm Diamond
				i(24051),	-- Rigid Dawnstone
				i(24057, {["timeline"] = {ADDED_2_0_5, REMOVED_4_0_3}}),	-- Royal Nightseye
				i(24030),	-- Runed Living Ruby
				i(24055),	-- Shifting Nightseye
				i(24048),	-- Smooth Dawnstone
				i(24033),	-- Solid Star of Elune
				i(24054),	-- Sovereign Nightseye
				i(24035),	-- Sparkling Star of Elune
				i(33782, {["timeline"] = {ADDED_2_2_0}}),	-- Steady Talasite
				i(24039),	-- Stormy Star of Elune
				i(24032),	-- Subtle Living Ruby
				i(25894),	-- Swift Skyfire Diamond
				i(24029, {["timeline"] = {ADDED_2_0_5, REMOVED_4_0_3}}),	-- Teardrop Living Ruby
				i(25898),	-- Tenacious Earthstorm Diamond
				i(24052, {["timeline"] = {ADDED_2_0_5, REMOVED_4_0_3}}),	-- Thick Dawnstone
				i(32410, {["timeline"] = {ADDED_2_1_0}}),	-- Thundering Skyfire Diamond
				i(31867, {["timeline"] = {ADDED_2_1_0}}),	-- Veiled Noble Topaz
				i(31868, {["timeline"] = {ADDED_2_1_0}}),	-- Wicked Noble Topaz
			}),
			applyclassicphase(TBC_PHASE_THREE, n(QUALITY_EPIC, {
				["timeline"] = { ADDED_2_1_0 },
				["groups"] = {
					i(32213, {["timeline"] = {ADDED_2_1_0, REMOVED_4_0_3}}),	-- Balanced Shadowsong Amethyst
					i(32193),	-- Bold Crimson Spinel
					i(32197, {["timeline"] = {ADDED_2_1_0, REMOVED_4_0_3}}),	-- Bright Crimson Spinel
					i(32204, {["timeline"] = {ADDED_2_1_0, REMOVED_4_0_3}}),	-- Brilliant Lionseye
					i(32225),	-- Dazzling Seaspray Emerald
					i(32194),	-- Delicate Crimson Spinel
					i(32223),	-- Enduring Seaspray Emerald
					i(32199),	-- Flashing Crimson Spinel
					applyclassicphase(TBC_PHASE_FIVE, i(35759, {["timeline"] = {ADDED_2_4_0}})),	-- Forceful Seaspray Emerald
					i(32207, {["timeline"] = {ADDED_2_1_0, REMOVED_4_0_3}}),	-- Gleaming Lionseye
					i(32220),	-- Glinting Pyrestone
					i(32215),	-- Glowing Shadowsong Amethyst
					i(32210, {["timeline"] = {ADDED_2_1_0, REMOVED_4_0_3}}),	-- Great Lionseye
					i(32214, {["timeline"] = {ADDED_2_1_0, REMOVED_4_0_3}}),	-- Infused Shadowsong Amethyst
					i(32217),	-- Inscribed Pyrestone
					i(32226),	-- Jagged Seaspray Emerald
					i(32219, {["timeline"] = {ADDED_2_1_0, REMOVED_4_0_3}}),	-- Luminous Pyrestone
					i(32202, {["timeline"] = {ADDED_2_1_0, REMOVED_4_0_3}}),	-- Lustrous Empyrean Sapphire
					i(32209),	-- Mystic Lionseye
					i(32218),	-- Potent Pyrestone
					applyclassicphase(TBC_PHASE_FIVE, i(37503, {["timeline"] = {ADDED_2_4_2, REMOVED_4_0_3}})),	-- Purified Shadowsong Amethyst
					applyclassicphase(TBC_PHASE_FIVE, i(35761, {["timeline"] = {ADDED_2_4_0}})),	-- Quick Lionseye
					i(32224),	-- Radiant Seaspray Emerald
					applyclassicphase(TBC_PHASE_FIVE, i(35760, {["timeline"] = {ADDED_2_4_0}})),	-- Reckless Pyrestone
					i(32206),	-- Rigid Lionseye
					i(32216, {["timeline"] = {ADDED_2_1_0, REMOVED_4_0_3}}),	-- Royal Shadowsong Amethyst
					i(32196),	-- Runed Crimson Spinel
					i(32212),	-- Shifting Shadowsong Amethyst
					i(32205),	-- Smooth Lionseye
					i(32200),	-- Solid Empyrean Sapphire
					i(32211),	-- Sovereign Shadowsong Amethyst
					i(32201),	-- Sparkling Empyrean Sapphire
					applyclassicphase(TBC_PHASE_FIVE, i(35758, {["timeline"] = {ADDED_2_4_0}})),	-- Steady Seaspray Emerald
					i(32203),	-- Stormy Empyrean Sapphire
					i(32198),	-- Subtle Crimson Spinel
					i(32195, {["timeline"] = {ADDED_2_1_0, REMOVED_4_0_3}}),	-- Teardrop Crimson Spinel
					i(32208, {["timeline"] = {ADDED_2_1_0, REMOVED_4_0_3}}),	-- Thick Lionseye
					i(32221),	-- Veiled Pyrestone
					i(32222),	-- Wicked Pyrestone
				},
			})),
			-- #else
			n(QUALITY_UNCOMMON, {
				i(23095),	-- Bold Blood Garnet
				i(23094),	-- Brilliant Blood Garnet
				i(23113, {["timeline"] = {ADDED_2_0_5, REMOVED_4_0_3}}),	-- Brilliant Blood Garnet
				i(23096, {["timeline"] = {ADDED_2_0_5, REMOVED_4_0_3}}),	-- Brilliant Blood Garnet
				applyclassicphase(TBC_PHASE_TWO_OGRILA, i(31869)),	-- Deadly Flame Spessarite
				i(31868, {["timeline"] = {ADDED_2_1_0}}),	-- Deadly Noble Topaz
				i(28595),	-- Delicate Blood Garnet
				i(23097, {["timeline"] = {ADDED_2_0_5, REMOVED_4_0_3}}),	-- Delicate Blood Garnet
				applyclassicphase(TBC_PHASE_FIVE, i(35318, {["timeline"] = {ADDED_2_4_2}})),	-- Forceful Talasite
				i(23100),	-- Glinting Shadow Draenite
				i(23098),	-- Inscribed Flame Spessarite
				i(24058),	-- Inscribed Noble Topaz
				i(23104),	-- Jagged Deep Peridot
				i(24067),	-- Jagged Talasite
				i(23101),	-- Potent Flame Spessarite
				i(24059),	-- Potent Noble Topaz
				i(32833, {["timeline"] = {ADDED_2_1_0}}),	-- Purified Jaggal Pearl
				i(23106, {["timeline"] = {ADDED_2_0_5, REMOVED_4_0_3}}),	-- Purified Shadow Draenite
				i(23109),	-- Purified Shadow Draenite
				i(23103),	-- Radiant Deep Peridot
				i(24066),	-- Radiant Talasite
				i(23099),	-- Reckless Flame Spessarite
				applyclassicphase(TBC_PHASE_FIVE, i(35316, {["timeline"] = {ADDED_2_4_2, REMOVED_4_0_3}})),	-- Reckless Noble Topaz
				i(24060),	-- Reckless Noble Topaz
				i(23105),	-- Regal Deep Peridot
				i(24062, {["timeline"] = {ADDED_2_0_5, REMOVED_4_0_3}}),	-- Regal Talasite
				applyclassicphase(TBC_PHASE_FIVE, i(35707, {["timeline"] = {ADDED_2_4_0}})),	-- Regal Talasite
				i(23116),	-- Rigid Azure Moonstone
				applyclassicphase(TBC_PHASE_TWO_OGRILA, i(31860, {["timeline"] = {ADDED_2_2_0, REMOVED_4_0_3}})),	-- Rigid Azure Moonstone
				i(23110),	-- Shifting Shadow Draenite
				applyclassicphase(TBC_PHASE_TWO_OGRILA, i(31862, {["timeline"] = {ADDED_2_2_0, REMOVED_4_0_3}})),	-- Shifting Shadow Draenite
				applyclassicphase(TBC_PHASE_TWO_OGRILA, i(31864, {["timeline"] = {ADDED_2_2_0, REMOVED_4_0_3}})),	-- Shifting Shadow Draenite
				i(28290, {["timeline"] = {ADDED_2_0_5, REMOVED_4_0_3}}),	-- Smooth Golden Draenite
				i(23114),	-- Smooth Golden Draenite
				i(23118),	-- Solid Azure Moonstone
				i(23111),	-- Sovereign Shadow Draenite
				i(23119),	-- Sparkling Azure Moonstone
				i(23121, {["timeline"] = {ADDED_2_0_5, REMOVED_4_0_3}}),	-- Sparkling Azure Moonstone
				i(33782, {["timeline"] = {ADDED_2_2_0}}),	-- Steady Talasite
				i(23120),	-- Stormy Azure Moonstone
				i(23115),	-- Subtle Golden Draenite
				i(23108),	-- Timeless Shadow Draenite
				applyclassicphase(TBC_PHASE_TWO_OGRILA, i(31866)),	-- Veiled Shadow Draenite
			}),
			n(QUALITY_RARE, {
				i(24027),	-- Bold Living Ruby
				i(25897),	-- Bracing Earthstorm Diamond
				i(24047, {["timeline"] = {ADDED_2_0_5, REMOVED_4_0_3}}),	-- Brilliant Living Ruby
				i(24029, {["timeline"] = {ADDED_2_0_5, REMOVED_4_0_3}}),	-- Brilliant Living Ruby
				i(24030),	-- Brilliant Living Ruby
				i(25899),	-- Brutal Earthstorm Diamond
				i(34220, {["timeline"] = {ADDED_2_3_0}}),	-- Chaotic Skyfire Diamond
				i(24031, {["timeline"] = {ADDED_2_0_5, REMOVED_4_0_3}}),	-- Delicate Living Ruby
				i(24028),	-- Delicate Living Ruby
				i(25890),	-- Destructive Skyfire Diamond
				applyclassicphase(TBC_PHASE_FIVE, i(35503, {["timeline"] = {ADDED_2_4_0}})),	-- Ember Skyfire Diamond
				i(25895),	-- Enigmatic Skyfire Diamond
				applyclassicphase(TBC_PHASE_FIVE, i(35501, {["timeline"] = {ADDED_2_4_0}})),	-- Eternal Earthstorm Diamond
				i(24036),	-- Flashing Living Ruby
				i(31865, {["timeline"] = {ADDED_2_1_0, REMOVED_4_0_3}}),	-- Glinting Nightseye
				i(24061),	-- Glinting Nightseye
				i(25901),	-- Insightful Earthstorm Diamond
				i(24053, {["timeline"] = {ADDED_2_1_3}}),	-- Mystic Dawnstone
				i(25893),	-- Mystical Skyfire Diamond
				i(25896),	-- Powerful Earthstorm Diamond
				i(24057, {["timeline"] = {ADDED_2_0_5, REMOVED_4_0_3}}),	-- Purified Nightseye
				i(24065),	-- Purified Nightseye
				i(32836, {["timeline"] = {ADDED_2_1_0}}),	-- Purified Shadow Pearl
				applyclassicphase(TBC_PHASE_FIVE, i(35315, {["timeline"] = {ADDED_2_4_2}})),	-- Quick Dawnstone
				i(32409, {["timeline"] = {ADDED_2_1_0}}),	-- Relentless Earthstorm Diamond
				i(31861, {["timeline"] = {ADDED_2_1_0, REMOVED_4_0_3}}),	-- Rigid Star of Elune
				i(24051),	-- Rigid Star of Elune
				i(31863, {["timeline"] = {ADDED_2_1_0, REMOVED_4_0_3}}),	-- Shifting Nightseye
				i(24055),	-- Shifting Nightseye
				i(24050, {["timeline"] = {ADDED_2_0_5, REMOVED_4_0_3}}),	-- Smooth Dawnstone
				i(24048),	-- Smooth Dawnstone
				i(24033),	-- Solid Star of Elune
				i(24054),	-- Sovereign Nightseye
				i(24037, {["timeline"] = {ADDED_2_0_5, REMOVED_4_0_3}}),	-- Sparkling Star of Elune
				i(24035),	-- Sparkling Star of Elune
				i(24039),	-- Stormy Star of Elune
				i(24052, {["timeline"] = {ADDED_2_0_5, REMOVED_4_0_3}}),	-- Subtle Dawnstone
				i(24032),	-- Subtle Dawnstone
				i(25894),	-- Swift Skyfire Diamond
				i(25898),	-- Tenacious Earthstorm Diamond
				i(32410, {["timeline"] = {ADDED_2_1_0}}),	-- Thundering Skyfire Diamond
				i(24056),	-- Timeless Nightseye
				i(31867, {["timeline"] = {ADDED_2_1_0}}),	-- Veiled Nightseye
			}),
			applyclassicphase(TBC_PHASE_THREE, n(QUALITY_EPIC, {
				["timeline"] = { ADDED_2_1_0 },
				["groups"] = {
					i(32193),	-- Bold Crimson Spinel
					i(32195, {["timeline"] = {ADDED_2_1_0, REMOVED_4_0_3}}),	-- Brilliant Crimson Spinel
					i(32204, {["timeline"] = {ADDED_2_1_0, REMOVED_4_0_3}}),	-- Brilliant Crimson Spinel
					i(32196),	-- Brilliant Crimson Spinel
					i(32197, {["timeline"] = {ADDED_2_1_0, REMOVED_4_0_3}}),	-- Delicate Crimson Spinel
					i(32194),	-- Delicate Crimson Spinel
					i(32199),	-- Flashing Crimson Spinel
					i(32222),	-- Deadly Pyrestone
					i(32217),	-- Inscribed Pyrestone
					i(32218),	-- Potent Pyrestone
					i(32219, {["timeline"] = {ADDED_2_1_0, REMOVED_4_0_3}}),	-- Reckless Pyrestone
					applyclassicphase(TBC_PHASE_FIVE, i(35760, {["timeline"] = {ADDED_2_4_0}})),	-- Reckless Pyrestone
					i(32214, {["timeline"] = {ADDED_2_1_0, REMOVED_4_0_3}}),	-- Glinting Shadowsong Amethyst
					i(32220),	-- Glinting Shadowsong Amethyst
					i(32216, {["timeline"] = {ADDED_2_1_0, REMOVED_4_0_3}}),	-- Purified Shadowsong Amethyst
					applyclassicphase(TBC_PHASE_FIVE, i(37503, {["timeline"] = {ADDED_2_4_2, REMOVED_4_0_3}})),	-- Purified Shadowsong Amethyst
					i(32225),	-- Purified Shadowsong Amethyst
					i(32213, {["timeline"] = {ADDED_2_1_0, REMOVED_4_0_3}}),	-- Shifting Shadowsong Amethyst
					i(32212),	-- Shifting Shadowsong Amethyst
					i(32211),	-- Sovereign Shadowsong Amethyst
					i(32215),	-- Timeless Shadowsong Amethyst
					i(32221),	-- Veiled Shadowsong Amethyst
					applyclassicphase(TBC_PHASE_FIVE, i(35759, {["timeline"] = {ADDED_2_4_0}})),	-- Forceful Seaspray Emerald
					i(32226),	-- Jagged Seaspray Emerald
					i(32224),	-- Radiant Seaspray Emerald
					i(32223),	-- Regal Seaspray Emerald
					applyclassicphase(TBC_PHASE_FIVE, i(35758, {["timeline"] = {ADDED_2_4_0}})),	-- Steady Seaspray Emerald
					i(32209),	-- Mystic Lionseye
					applyclassicphase(TBC_PHASE_FIVE, i(35761, {["timeline"] = {ADDED_2_4_0}})),	-- Quick Lionseye
					i(32207, {["timeline"] = {ADDED_2_1_0, REMOVED_4_0_3}}),	-- Smooth Lionseye
					i(32205),	-- Smooth Lionseye
					i(32208, {["timeline"] = {ADDED_2_1_0, REMOVED_4_0_3}}),	-- Subtle Lionseye
					i(32198),	-- Subtle Lionseye
					i(32210, {["timeline"] = {ADDED_2_1_0, REMOVED_4_0_3}}),	-- Rigid Empyrean Sapphire
					i(32206),	-- Rigid Empyrean Sapphire
					i(32200),	-- Solid Empyrean Sapphire
					i(32202, {["timeline"] = {ADDED_2_1_0, REMOVED_4_0_3}}),	-- Sparkling Empyrean Sapphire
					i(32201),	-- Sparkling Empyrean Sapphire
					i(32203),	-- Stormy Empyrean Sapphire
				},
			})),
			-- #endif
		}),
		filter(FINGER_F, {
			i(24086),	-- Arcane Khorium Band
			i(24076),	-- Azure Moonstone Ring
			i(21779),	-- Band of Natural Fire
			i(24089),	-- Blazing Eternium Band
			i(32772, {["timeline"] = {ADDED_2_1_0}}),	-- Brilliant Pearl Band
			i(24088),	-- Delicate Eternium Ring
			i(24074),	-- Fel Iron Blood Ring
			i(24075),	-- Golden Draenite Ring
			applyclassicphase(TBC_PHASE_FIVE, i(34361, {["timeline"] = {ADDED_2_4_0}})),	-- Hard Khorium Band
			i(24078),	-- Heavy Adamantite Ring
			i(24087),	-- Heavy Felsteel Ring
			i(24080),	-- Khorium Band of Frost
			i(24085),	-- Khorium Band of Leaves
			i(24079),	-- Khorium Band of Shadows
			i(24082),	-- Khorium Inferno Band
			applyclassicphase(TBC_PHASE_FIVE, i(34362, {["timeline"] = {ADDED_2_4_0}})),	-- Loop of Forged Power
			i(30825),	-- Ring of Arcane Shielding
			applyclassicphase(TBC_PHASE_FIVE, i(34363, {["timeline"] = {ADDED_2_4_0}})),	-- Ring of Flowing Life
			i(32774, {["timeline"] = {ADDED_2_1_0}}),	-- The Black Pearl
			i(31398),	-- The Frozen Eye
			i(31399),	-- The Natural Ward
		}),
		filter(NECK_F, {
			applyclassicphase(TBC_PHASE_FIVE, i(34360, {["timeline"] = {ADDED_2_4_0}})),	-- Amulet of Flowing Life
			i(24114),	-- Braided Eternium Chain
			i(24121),	-- Chain of the Twilight Owl
			i(24117),	-- Embrace of the Dawn
			i(24116),	-- Eye of the Night
			applyclassicphase(TBC_PHASE_FIVE, i(34358, {["timeline"] = {ADDED_2_4_0}})),	-- Hard Khorium Choker
			i(24110),	-- Living Ruby
			applyclassicphase(TBC_PHASE_TWO, i(32508, {["timeline"] = {ADDED_2_1_0}})),	-- Necklace of the Deep
			i(21792),	-- Necklace of the Diamond Tower
			i(24092),	-- Pendant of Frozen Flame
			i(24097),	-- Pendant of Shadow's End
			applyclassicphase(TBC_PHASE_FIVE, i(34359, {["timeline"] = {ADDED_2_4_0}})),	-- Pendant of Sunfire
			i(24093),	-- Pendant of Thawing
			i(24098),	-- Pendant of the Null Rune
			i(24095),	-- Pendant of Withering
			i(24077),	-- Thick Adamantite Necklace
			i(24106),	-- Thick Felsteel Necklace
		}),
		filter(MISC, {
			i(35945, {["timeline"] = {ADDED_2_4_0}}),	-- Brilliant Glass
			applyclassicphase(WRATH_PHASE_ONE, i(45054, {["timeline"] = {ADDED_3_1_0, REMOVED_4_0_3}})),	-- Prismatic Black Diamond
		}),
		filter(REAGENTS, {
			i(31079),	-- Mercurial Adamantite
		}),
		filter(TRINKET_F, {
			applyclassicphase(TBC_PHASE_FIVE, i(35700, {["timeline"] = {ADDED_2_4_0}})),	-- Figurine - Crimson Serpent
			i(24125),	-- Figurine - Dawnstone Crab
			applyclassicphase(TBC_PHASE_FIVE, i(35693, {["timeline"] = {ADDED_2_4_0}})),	-- Figurine - Empyrean Tortoise
			i(24124),	-- Figurine - Felsteel Boar
			applyclassicphase(TBC_PHASE_FIVE, i(35694, {["timeline"] = {ADDED_2_4_0}})),	-- Figurine - Khorium Boar
			i(24126),	-- Figurine - Living Ruby Serpent
			i(24128),	-- Figurine - Nightseye Panther
			applyclassicphase(TBC_PHASE_FIVE, i(35703, {["timeline"] = {ADDED_2_4_0}})),	-- Figurine - Seaspray Albatross
			applyclassicphase(TBC_PHASE_FIVE, i(35702, {["timeline"] = {ADDED_2_4_0}})),	-- Figurine - Shadowsong Panther
			i(24127),	-- Figurine - Talasite Owl
		}),
	}),
	prof(LEATHERWORKING, {
		-- #if BEFORE CATA
		prof(10656, {	-- Dragonscale Leatherworking
			["description"] = "These items can only be crafted by Leatherworkers who have completed the associated quest.",
			["groups"] = {
				i(29971),	-- Dragonstrike Leggings
				i(29516, {["timeline"] = {ADDED_2_0_5, REMOVED_4_0_3}}),	-- Ebon Netherscale Belt
				i(29517, {["timeline"] = {ADDED_2_0_5, REMOVED_4_0_3}}),	-- Ebon Netherscale Bracers
				i(29515, {["timeline"] = {ADDED_2_0_5, REMOVED_4_0_3}}),	-- Ebon Netherscale Breastplate
				i(29975),	-- Golden Dragonstrike Breastplate
				i(29520, {["timeline"] = {ADDED_2_0_5, REMOVED_4_0_3}}),	-- Netherstrike Belt
				i(29521, {["timeline"] = {ADDED_2_0_5, REMOVED_4_0_3}}),	-- Netherstrike Bracers
				i(29519, {["timeline"] = {ADDED_2_0_5, REMOVED_4_0_3}}),	-- Netherstrike Breastplate
			},
		}),
		prof(10658, {	-- Elemental Leatherworking
			["description"] = "These items can only be crafted by Leatherworkers who have completed the associated quest.",
			["groups"] = {
				i(29964),	-- Blackstorm Leggings
				i(29973),	-- Primalstorm Breastplate
				i(29526, {["timeline"] = {ADDED_2_0_5, REMOVED_4_0_3}}),	-- Primalstrike Belt
				i(29527, {["timeline"] = {ADDED_2_0_5, REMOVED_4_0_3}}),	-- Primalstrike Bracers
				i(29525, {["timeline"] = {ADDED_2_0_5, REMOVED_4_0_3}}),	-- Primalstrike Vest
			},
		}),
		prof(10660, {	-- Tribal Leatherworking
			["description"] = "These items can only be crafted by Leatherworkers who have completed the associated quest.",
			["groups"] = {
				i(29974),	-- Living Crystal Breastplate
				i(29970),	-- Wildfeather Leggings
				i(29522, {["timeline"] = {ADDED_2_0_5, REMOVED_4_0_3}}),	-- Windhawk Hauberk
				i(29523, {["timeline"] = {ADDED_2_0_5, REMOVED_4_0_3}}),	-- Windhawk Bracers
				i(29524, {["timeline"] = {ADDED_2_0_5, REMOVED_4_0_3}}),	-- Windhawk Belt
			},
		}),
		-- #endif
		n(ARMOR, {
			n(BACK, {
				applyclassicphase(TBC_PHASE_THREE, i(33122, {["timeline"] = {ADDED_2_2_0}})),	-- Cloak of Darkness
			}),
			filter(LEATHER, {
				applyclassicphase(TBC_PHASE_TWO, i(30040, {["timeline"] = {ADDED_2_1_0}})),	-- Belt of Deep Shadow
				applyclassicphase(TBC_PHASE_TWO, i(30042, {["timeline"] = {ADDED_2_1_0}})),	-- Belt of Natural Power
				i(29500),	-- Blastguard Belt
				i(29499),	-- Blastguard Boots
				i(29498),	-- Blastguard Pants
				applyclassicphase(TBC_PHASE_TWO, i(30041, {["timeline"] = {ADDED_2_1_0}})),	-- Boots of Natural Grace
				applyclassicphase(TBC_PHASE_TWO, i(30039, {["timeline"] = {ADDED_2_1_0}})),	-- Boots of Utter Darkness
				applyclassicphase(TBC_PHASE_THREE, i(32582)),	-- Bracers of Renewed Life
				applyclassicphase(TBC_PHASE_FIVE, i(34369, {["timeline"] = {ADDED_2_4_0}})),	-- Carapace of Sun and Shadow
				i(29503),	-- Cobrascale Gloves
				i(29502),	-- Cobrascale Hood
				i(29497),	-- Enchanted Clefthoof Boots
				i(29496),	-- Enchanted Clefthoof Gloves
				i(29495),	-- Enchanted Clefthoof Leggings
				i(25686),	-- Fel Leather Boots
				i(25685),	-- Fel Leather Gloves
				i(25687),	-- Fel Leather Leggings
				applyclassicphase(TBC_PHASE_FIVE, i(34370, {["timeline"] = {ADDED_2_4_0}})),	-- Gloves of Immortal Dusk
				i(29506),	-- Gloves of the Living Touch
				i(25691),	-- Heavy Clefthoof Boots
				i(25690),	-- Heavy Clefthoof Leggings
				i(25689),	-- Heavy Clefthoof Vest
				i(29505),	-- Hood of Primal Life
				applyclassicphase(TBC_PHASE_FIVE, i(34371, {["timeline"] = {ADDED_2_4_0}})),	-- Leather Chestguard of the Sun
				applyclassicphase(TBC_PHASE_FIVE, i(34372, {["timeline"] = {ADDED_2_4_0}})),	-- Leather Gauntlets of the Sun
				applyclassicphase(TBC_PHASE_THREE, i(32393, {["timeline"] = {ADDED_2_1_0}})),	-- Redeemed Soul Cinch
				applyclassicphase(TBC_PHASE_THREE, i(32396, {["timeline"] = {ADDED_2_1_0}})),	-- Redeemed Soul Legguards
				applyclassicphase(TBC_PHASE_THREE, i(32394, {["timeline"] = {ADDED_2_1_0}})),	-- Redeemed Soul Moccasins
				applyclassicphase(TBC_PHASE_THREE, i(32395, {["timeline"] = {ADDED_2_1_0}})),	-- Redeemed Soul Wristguards
				applyclassicphase(TBC_PHASE_THREE, i(33204, {["timeline"] = {ADDED_2_2_0}})),	-- Shadowprowler's Chestguard
				applyclassicphase(TBC_PHASE_THREE, i(32583, {["timeline"] = {ADDED_2_1_0}})),	-- Shoulderpads of Renewed Life
				i(25682),	-- Stylin' Jungle Hat
				i(25680),	-- Stylin' Purple Hat
				applyclassicphase(TBC_PHASE_THREE, i(32580, {["timeline"] = {ADDED_2_1_0}})),	-- Swiftstrike Bracers
				applyclassicphase(TBC_PHASE_THREE, i(32581, {["timeline"] = {ADDED_2_1_0}})),	-- Swiftstrike Shoulders
				i(25669),	-- Thick Draenic Gloves
				i(25670),	-- Thick Draenic Pants
				i(25668),	-- Thick Draenic Boots
				i(25671),	-- Thick Draenic Vest
				i(29504),	-- Windscale Hood
				i(29507),	-- Windslayer Wraps


				-- #if AFTER CATA
				i(29973),	-- Primalstorm Breastplate
				i(29526, {["timeline"] = {ADDED_2_0_5, REMOVED_4_0_3}}),	-- Primalstrike Belt
				i(29527, {["timeline"] = {ADDED_2_0_5, REMOVED_4_0_3}}),	-- Primalstrike Bracers
				i(29525, {["timeline"] = {ADDED_2_0_5, REMOVED_4_0_3}}),	-- Primalstrike Vest

				i(29974),	-- Living Crystal Breastplate
				i(29522, {["timeline"] = {ADDED_2_0_5, REMOVED_4_0_3}}),	-- Windhawk Hauberk
				i(29523, {["timeline"] = {ADDED_2_0_5, REMOVED_4_0_3}}),	-- Windhawk Bracers
				i(29524, {["timeline"] = {ADDED_2_0_5, REMOVED_4_0_3}}),	-- Windhawk Belt
				-- #endif
			}),
			filter(MAIL, {
				applyclassicphase(TBC_PHASE_TWO, i(30046, {["timeline"] = {ADDED_2_1_0}})),	-- Belt of the Black Eagle
				applyclassicphase(TBC_PHASE_THREE, i(32574, {["timeline"] = {ADDED_2_1_0}})),	-- Bindings of Lightning Reflexes
				applyclassicphase(TBC_PHASE_THREE, i(32398, {["timeline"] = {ADDED_2_1_0}})),	-- Boots of Shackled Souls
				applyclassicphase(TBC_PHASE_TWO, i(30045, {["timeline"] = {ADDED_2_1_0}})),	-- Boots of the Crimson Hawk
				applyclassicphase(TBC_PHASE_THREE, i(32399, {["timeline"] = {ADDED_2_1_0}})),	-- Bracers of Shackled Souls
				i(29512),	-- Earthen Netherscale Boots
				applyclassicphase(TBC_PHASE_FIVE, i(34373, {["timeline"] = {ADDED_2_4_0}})),	-- Embrace of the Phoenix
				i(29491),	-- Enchanted Felscale Boots
				i(29490),	-- Enchanted Felscale Gloves
				i(29489),	-- Enchanted Felscale Leggings
				i(25654),	-- Felscale Gloves
				i(25655),	-- Felscale Boots
				i(25656),	-- Felscale Pants
				i(25657),	-- Felscale Breastplate
				i(25695),	-- Felstalker Belt
				i(25697),	-- Felstalker Bracers
				i(25696),	-- Felstalker Breastplate
				i(29494),	-- Flamescale Belt
				i(29493),	-- Flamescale Boots
				i(29492),	-- Flamescale Leggings
				applyclassicphase(TBC_PHASE_FIVE, i(34374, {["timeline"] = {ADDED_2_4_0}})),	-- Fletcher's Gloves of the Phoenix
				applyclassicphase(TBC_PHASE_THREE, i(32400, {["timeline"] = {ADDED_2_1_0}})),	-- Greaves of Shackled Souls
				applyclassicphase(TBC_PHASE_TWO, i(30043, {["timeline"] = {ADDED_2_1_0}})),	-- Hurricane Boots
				i(29508),	-- Living Dragonscale Helm
				applyclassicphase(TBC_PHASE_THREE, i(32577, {["timeline"] = {ADDED_2_1_0}})),	-- Living Earth Bindings
				applyclassicphase(TBC_PHASE_THREE, i(32579, {["timeline"] = {ADDED_2_1_0}})),	-- Living Earth Shoulders
				applyclassicphase(TBC_PHASE_TWO, i(30044, {["timeline"] = {ADDED_2_1_0}})),	-- Monsoon Belt
				i(29511),	-- Netherdrake Gloves
				i(29510),	-- Netherdrake Helm
				i(25694),	-- Netherfury Belt
				i(25693),	-- Netherfury Boots
				i(25692),	-- Netherfury Leggings
				i(25662),	-- Scaled Draenic Pants
				i(25661),	-- Scaled Draenic Gloves
				i(25660),	-- Scaled Draenic Vest
				i(25659),	-- Scaled Draenic Boots
				applyclassicphase(TBC_PHASE_THREE, i(32575, {["timeline"] = {ADDED_2_1_0}})),	-- Shoulders of Lightning Reflexes
				i(25681),	-- Stylin' Adventure Hat
				i(25683),	-- Stylin' Crimson Hat
				applyclassicphase(TBC_PHASE_FIVE, i(34375, {["timeline"] = {ADDED_2_4_0}})),	-- Sun-Drenched Scale Chestguard
				applyclassicphase(TBC_PHASE_FIVE, i(34376, {["timeline"] = {ADDED_2_4_0}})),	-- Sun-Drenched Scale Gloves
				i(29514),	-- Thick Netherscale Breastplate
				applyclassicphase(TBC_PHASE_THREE, i(32397, {["timeline"] = {ADDED_2_1_0}})),	-- Waistguard of Shackled Souls
				i(25673),	-- Wild Draenish Boots
				i(25674),	-- Wild Draenish Gloves
				i(25675),	-- Wild Draenish Leggings
				i(25676),	-- Wild Draenish Vest
				i(29509),	-- Windstrike Gloves
				-- #if AFTER CATA
				i(29516, {["timeline"] = {ADDED_2_0_5, REMOVED_4_0_3}}),	-- Ebon Netherscale Belt
				i(29517, {["timeline"] = {ADDED_2_0_5, REMOVED_4_0_3}}),	-- Ebon Netherscale Bracers
				i(29515, {["timeline"] = {ADDED_2_0_5, REMOVED_4_0_3}}),	-- Ebon Netherscale Breastplate
				i(29975),	-- Golden Dragonstrike Breastplate
				i(29520, {["timeline"] = {ADDED_2_0_5, REMOVED_4_0_3}}),	-- Netherstrike Belt
				i(29521, {["timeline"] = {ADDED_2_0_5, REMOVED_4_0_3}}),	-- Netherstrike Bracers
				i(29519, {["timeline"] = {ADDED_2_0_5, REMOVED_4_0_3}}),	-- Netherstrike Breastplate
				-- #endif
			}),
		}),
		n(DECOR, sharedDataSelf({["timeline"] = { ADDED_11_2_7 }}, {
			i(258191),	-- Arakkoa Decoy Scarecrow (DECOR!)
			i(258190),	-- Outland Mag'har Banner (DECOR!)
		})),
		filter(MISC, {
			i(29488, {["timeline"] = {ADDED_2_0_5, REMOVED_5_0_4}}),	-- Arcane Armor Kit
			i(34490, {["timeline"] = {ADDED_2_3_0}}),	-- Bag of Many Hides
			i(29534),	-- Clefthide Leg Armor
			i(29533),	-- Cobrahide Leg Armor
			i(25679),	-- Comfortable Insoles
			i(29529),	-- Drums of Battle
			i(29532),	-- Drums of Panic
			i(29531),	-- Drums of Restoration
			i(29530),	-- Drums of Speed
			i(29528),	-- Drums of War
			i(29485, {["timeline"] = {ADDED_2_0_5, REMOVED_5_0_4}}),	-- Flame Armor Kit
			i(29486, {["timeline"] = {ADDED_2_0_5, REMOVED_5_0_4}}),	-- Frost Armor Kit
			i(34207, {["timeline"] = {ADDED_2_3_0}}),	-- Glove Reinforcements
			-- #if ANYCLASSIC
			applyclassicphase(TBC_PHASE_FOUR, i(185848)),	-- Greater Drums of Battle
			applyclassicphase(TBC_PHASE_FOUR, i(185849)),	-- Greater Drums of Panic
			applyclassicphase(TBC_PHASE_FOUR, i(185850)),	-- Greater Drums of Restoration
			applyclassicphase(TBC_PHASE_FOUR, i(185851)),	-- Greater Drums of Speed
			applyclassicphase(TBC_PHASE_FOUR, i(185852, {	-- Greater Drums of War
				["timeline"] = { ADDED_2_0_1, REMOVED_3_0_2 },
			})),
			-- #endif
			i(34330, {["timeline"] = {ADDED_2_3_0}}),	-- Heavy Knothide Armor Kit
			i(23793),	-- Heavy Knothide Leather
			applyclassicphase(TBC_PHASE_FOUR, i(34099, {["timeline"] = {ADDED_2_3_0, REMOVED_4_0_1}})),	-- Knothide Ammo Pouch
			i(25650),	-- Knothide Armor Kit
			i(21887),	-- Knothide Leather
			applyclassicphase(TBC_PHASE_FOUR, i(34100, {["timeline"] = {ADDED_2_3_0, REMOVED_4_0_1}})),	-- Knothide Quiver
			i(34482, {["timeline"] = {ADDED_2_3_0}}),	-- Leatherworker's Satchel
			i(25652),	-- Magister's Armor Kit
			i(29487, {["timeline"] = {ADDED_2_0_5, REMOVED_5_0_4}}),	-- Nature Armor Kit
			i(29536),	-- Nethercleft Leg Armor
			i(29535),	-- Nethercobra Leg Armor
			applyclassicphase(TBC_PHASE_THREE, i(34106, {["timeline"] = {ADDED_2_3_0, REMOVED_4_0_1}})),	-- Netherscale Ammo Pouch
			applyclassicphase(TBC_PHASE_THREE, i(34105, {["timeline"] = {ADDED_2_3_0, REMOVED_4_0_1}})),	-- Quiver of a Thousand Feathers
			i(29540),	-- Reinforced Mining Bag
			i(29483, {["timeline"] = {ADDED_2_0_5, REMOVED_5_0_4}}),	-- Shadow Armor Kit
			i(25651),	-- Vindicator's Armor Kit
		}),
		filter(TRINKET_F, {
			i(25653),	-- Riding Crop
		}),
	}),
	prof(MINING, {
		header(HEADERS.Spell, 2575, {	-- Mining
			-- Nodes
			o(181556, {	-- Adamantite Deposit
				["maps"] = {
					BLADES_EDGE_MOUNTAINS,
					ISLE_OF_QUELDANAS,
					NAGRAND,
					NETHERSTORM,
					SHADOWMOON_VALLEY,
					TEROKKAR_FOREST,
					ZANGARMARSH,
				},
			}),
			o(185557, {	-- Ancient Gem Vein
				["maps"] = { THE_BATTLE_FOR_MOUNT_HYJAL },
				["timeline"] = { ADDED_2_1_0 },
				["groups"] = appendAllGroups(
					{	-- Rare quality (blue) gems:
						i(23440),	-- Dawnstone
						i(23436),	-- Living Ruby
						i(23441),	-- Nightseye
						i(23439),	-- Noble Topaz
						i(23438),	-- Star of Elune
						i(23437),	-- Talasite
					},
					sharedData({
						["timeline"] = { ADDED_2_1_0 },
					}, {
						-- Epiq quality (purple) gems:
						i(32227),	-- Crimson Spinel
						i(32228),	-- Empyrean Sapphire
						i(32229),	-- Lionseye
						i(32231),	-- Pyrestone
						i(32249),	-- Seaspray Emerald
						i(32230),	-- Shadowsong Amethyst
					})
				),
			}),
			o(181555, {	-- Fel Iron Deposit
				["maps"] = {
					BLADES_EDGE_MOUNTAINS,
					HELLFIRE_PENINSULA,
					NAGRAND,
					NETHERSTORM,
					SHADOWMOON_VALLEY,
					TEROKKAR_FOREST,
					ZANGARMARSH,
				},
			}),
			o(181557, {	-- Khorium Vein
				["maps"] = {
					AUCHINDOUN_AUCHENAI_CRYPTS,
					AUCHINDOUN_MANA_TOMBS,
					AUCHINDOUN_SETHEKK_HALLS,
					AUCHINDOUN_SHADOW_LABYRINTH,
					BLADES_EDGE_MOUNTAINS,
					COILFANG_RESERVOIR_SLAVE_PENS,
					COILFANG_RESERVOIR_STEAMVAULT,
					COILFANG_RESERVOIR_UNDERBOG,
					ISLE_OF_QUELDANAS,
					NAGRAND,
					NETHERSTORM,
					SHADOWMOON_VALLEY,
					TEROKKAR_FOREST,
				},
			}),
			o(181569, {	-- Rich Adamantite Deposit
				["maps"] = {
					BLADES_EDGE_MOUNTAINS,
					ISLE_OF_QUELDANAS,
					NAGRAND,
					NETHERSTORM,
					SHADOWMOON_VALLEY,
					TEROKKAR_FOREST,
					ZANGARMARSH,
				},
			}),
			o(181570, {	-- Rich Adamantite Deposit (Another ID for deposits exclusive to Nagrand.)
				["maps"] = { NAGRAND },
			}),
			-- Ores
			i(23425, {	-- Adamantite Ore
				[MAPS_FIELD] = {
					BLADES_EDGE_MOUNTAINS,
					ISLE_OF_QUELDANAS,
					NAGRAND,
					NETHERSTORM,
					SHADOWMOON_VALLEY,
					TEROKKAR_FOREST,
					ZANGARMARSH,
				},
				["providers"] = {
					{ "o", 181556 },	-- Adamantite Deposit
					{ "o", 181569 },	-- Rich Adamantite Deposit
					{ "o", 181570 },	-- Rich Adamantite Deposit (Nagrand special)
				},
			}),
			i(108302, {	-- Adamantite Ore Nugget
				["providers"] = {
					{ "o", 181556 },	-- Adamantite Deposit
					{ "o", 181569 },	-- Rich Adamantite Deposit
				},
				["timeline"] = { ADDED_6_0_2 },
				["groups"] = {
					i(23425),	-- Adamantite Ore
				}
			}),
			i(23427, {	-- Eternium Ore
				[MAPS_FIELD] = {
					BLADES_EDGE_MOUNTAINS,
					ISLE_OF_QUELDANAS,
					NAGRAND,
					NETHERSTORM,
					SHADOWMOON_VALLEY,
					TEROKKAR_FOREST,
					ZANGARMARSH,
				},
				["providers"] = {
					{ "o", 181556 },	-- Adamantite Deposit
					{ "o", 181557 },	-- Khorium Vein
					{ "o", 181569 },	-- Rich Adamantite Deposit
					{ "o", 181570 },	-- Rich Adamantite Deposit (Nagrand special)
				},
			}),
			i(108303, {	-- Eternium Ore Nugget
				["timeline"] = { ADDED_6_0_2 },
				["groups"] = {
					i(23427),	-- Eternium Ore
				}
			}),
			i(23424, {	-- Fel Iron Ore
				[MAPS_FIELD] = {
					BLADES_EDGE_MOUNTAINS,
					HELLFIRE_PENINSULA,
					NAGRAND,
					NETHERSTORM,
					SHADOWMOON_VALLEY,
					TEROKKAR_FOREST,
					ZANGARMARSH,
				},
				["provider"] = { "o", 181555 },	-- Fel Iron Deposit
			}),
			i(108301, {	-- Fel Iron Ore Nugget
				["provider"] = { "o", 181555 },	-- Fel Iron Deposit
				["timeline"] = { ADDED_6_0_2 },
				["groups"] = {
					i(23424),	-- Fel Iron Ore
				}
			}),
			i(23426, {	-- Khorium Ore
				[MAPS_FIELD] = {
					AUCHINDOUN_AUCHENAI_CRYPTS,
					AUCHINDOUN_MANA_TOMBS,
					AUCHINDOUN_SETHEKK_HALLS,
					AUCHINDOUN_SHADOW_LABYRINTH,
					BLADES_EDGE_MOUNTAINS,
					COILFANG_RESERVOIR_SLAVE_PENS,
					COILFANG_RESERVOIR_STEAMVAULT,
					COILFANG_RESERVOIR_UNDERBOG,
					ISLE_OF_QUELDANAS,
					NAGRAND,
					NETHERSTORM,
					SHADOWMOON_VALLEY,
					TEROKKAR_FOREST,
				},
				["provider"] = { "o", 181557 },	-- Khorium Vein
			}),
			i(108304, {	-- Khorium Ore Nugget
				["provider"] = { "o", 181557 },	-- Khorium Vein
				["timeline"] = { ADDED_6_0_2 },
				["groups"] = {
					i(23426),	-- Khorium Ore
				}
			}),
			i(35229, {["timeline"] = {ADDED_2_4_0}}),	-- Nether Residue (Quest Item for Shattrath q(11875) Gaining the Advantage)
		}),
		header(HEADERS.Spell, 2656, {	-- Smelting
			i(23446, {	-- Adamantite Bar
				["cost"] = ClassicCost({ { "i", 23425, 2 } }),	-- Adamantite Ore
			}),
			i(23447, {	-- Eternium Bar
				["cost"] = ClassicCost({ { "i", 23427, 2 } }),	-- Eternium Ore
			}),
			i(23445, {	-- Fel Iron Bar
				["cost"] = ClassicCost({ { "i", 23424, 2 } }),	-- Fel Iron Ore
			}),
			i(23448, {	-- Felsteel Bar
				["cost"] = ClassicCost({
					{ "i", 23445, 3 },	-- Fel Iron Bar
					{ "i", 23447, 2 },	-- Eternium Bar
				}),
			}),
			i(23573, {	-- Hardened Adamantite Bar
				["cost"] = ClassicCost({ { "i", 23446, 10 } }),	-- Adamantite Bar
			}),
			applyclassicphase(TBC_PHASE_FIVE, i(35128, {	-- Hardened Khorium Bar
				["timeline"] = {ADDED_2_4_0},
				["cost"] = ClassicCost({
					{ "i", 23449, 3 },	-- Khorium Bar
					{ "i", 23573, 1 },	-- Hardened Adamantite Bar
				}),
			})),
			i(23449, {	-- Khorium Bar
				["cost"] = ClassicCost({ { "i", 23426, 2 } }),	-- Khorium Ore
			}),
		}),
	}),
	prof(POISONS, bubbleDownSelf({ ["timeline"] = { ADDED_2_0_5, REMOVED_3_0_2 }, ["classes"] = { ROGUE }}, {
		i(21835),	-- Anesthetic Poison
		i(22053),	-- Deadly Poison VI
		i(22054),	-- Deadly Poison VII
		i(21927),	-- Instant Poison VII
		i(22055),	-- Wound Poison V
	})),
	prof(SKINNING, {
		["description"] = "The following items can be gathered by skinning creatures on Outland. Note that Knothide Leather is the most common reagent to get from skinning. All other skinned reagents have a lower than 100% drop chance from skinning the respective mobs, thus you must expect having to skin multiple creatures to obtain the reagent.\n\nThis header will often not show everything uncollected it contains, even when enabling 'Debug Mode'. The best way to track specific reagents is to do /att item:[itemID] or pop out this header.",
		["groups"] = {
			i(29539, {	-- Cobra Scales
				["crs"] = {
					19784,	-- Coilskar Cobra
					23020,	-- Shadow Serpent
					23026,	-- Twilight Serpent
				},
				["coords"] = {
					{ 11.4, 39.3, NAGRAND },	-- Twilight Ridge west
					{ 19.4, 34.6, NAGRAND },	-- Twilight Ridge east
					{ 45.5, 13.0, SHADOWMOON_VALLEY },	-- Coilskar Point, north of.
					{ 65.25, 22.5, SHADOWMOON_VALLEY },	-- Altar of Sha'tar, north of.
					{ 66.1, 30.0, SHADOWMOON_VALLEY },	-- Altar of Sha'tar, east of.
					{ 71.8, 30.0, SHADOWMOON_VALLEY },	-- Black Temple, north of.
					{ 53.05, 25.55, SHADOWMOON_VALLEY },	-- Coilskar Cistern
					{ 45.8, 28.6, SHADOWMOON_VALLEY },	-- Coilskar Point
				},
			}),
			i(25699, {	-- Crystal-Infused Leather
				["crs"] = {
					18461,	-- Dampscale Basilisk
					18463,	-- Dampscale Devourer
					20924,	-- Grishnath Basilisk
					21816,	-- Ironspine Chomper
					19730,	-- Ironspine Gazer
					21854,	-- Ironspine Petrifier
					19729,	-- Ironspine Threshalisk
					20283,	-- Marshrock Stomper
					19706,	-- Marshrock Threshalisk
					16934,	-- Quillfang Ravager
					19189,	-- Quillfang Skitterer
					20279,	-- Ragestone Threshalisk
					20280,	-- Ragestone Trampler
					16932,	-- Razorfang Hatchling
					16933,	-- Razorfang Ravager
					20987,	-- Ruuan Weald Basilisk
					20925,	-- Scalded Basilisk
					22180,	-- Shard-Hide Boar
					19349,	-- Thornfang Ravager
					19350,	-- Thornfang Venomspitter
					-- #if AFTER 2.1.0
					23169,	-- Nethermine Flayer
					23326,	-- Nethermine Ravager
					23264,	-- Overmine Flayer
					-- #endif
				},
				["coords"] = {
					{ 64.5, 33.0, BLADES_EDGE_MOUNTAINS },	-- Veil Ruuan
					{ 72.4, 20.2, BLADES_EDGE_MOUNTAINS },	-- Skald
					{ 67.5, 11.7, BLADES_EDGE_MOUNTAINS },	-- Crystal Spine East
					{ 61.0, 11.0, BLADES_EDGE_MOUNTAINS },	-- Crystal Spine West
					{ 40.2, 18.4, BLADES_EDGE_MOUNTAINS },	-- Grishnath
					{ 32.1, 55.0, BLADES_EDGE_MOUNTAINS },	-- Vortex Summit North
					{ 29.5, 67.0, BLADES_EDGE_MOUNTAINS },	-- Vortex Summit South
					{ 38.5, 88.3, HELLFIRE_PENINSULA },	-- Razorthorn Trail
					{ 22.9, 67.2, HELLFIRE_PENINSULA },	-- Dustquill Ravine
					{ 8.7, 50.8, HELLFIRE_PENINSULA },	-- Thornfang Hill
					{ 68.5, 44.4, NETHERSTORM },	-- Voidwind Plateu
					{ 39.3, 9.7, TEROKKAR_FOREST },	-- Silmyr Lake
					{ 44.6, 34.3, TEROKKAR_FOREST },	-- Cenarion Thicket, south of
					{ 62.4, 49.0, TEROKKAR_FOREST },	-- Bonechewer Ruins, west of
					{ 68.7, 30.5, TEROKKAR_FOREST },	-- Firewing Point, northwest of
					{ 88.1, 33.6, ZANGARMARSH },	-- Dead Mire East
					{ 78.1, 30.0, ZANGARMARSH },	-- Dead Mire North
					{ 34.7, 18.0, ZANGARMARSH },	-- Hewn Bog, north of
					{ 24.7, 19.1, ZANGARMARSH },	-- Daggerfen Village, north of
					{ 14.9, 28.9, ZANGARMARSH },	-- Ango'rosh, west of
					{ 8.3, 52.7, ZANGARMARSH },	-- Sporewind Lake, west of
					-- #if AFTER 2.1.0
					{ 63.0, 07.8, SHADOWMOON_VALLEY },	-- Netherwing Mines (entrance)
					{ 73.0, 85.4, SHADOWMOON_VALLEY },	-- Netherwing Ledge flayer hill
					-- #endif
				},
				["description"] = "Can be efficiently farmed in Blade's Edge Mountains and Zangarmarsh using a route from the southwestern end of Zangarmarsh following the western edge northwards and later eastwards to Blade's Edge Mountains. Then fly up to and follow the Vortex Summit, down again to Grishnath, and east up again following the Crystal Spine, over to Skald, and down to Veil Ruuan.\n\nCan also be found on basilisks all over Terokkar Forest, most of them dropping Dampscale Basilisk Eye.\n\nSkinning most mobs can also give Fel Scales",
			}),
			i(25707, {	-- Fel Hide
				["crs"] = {
					19852,	-- Artifact Seeker
					23219,	-- Blackwind Warp Chaser
					22255,	-- Daggertail Lizard
					16863,	-- Deranged Helboar
					16177,	-- Dreadbeast
					16880,	-- Hulking Helboar
					16950,	-- Netherhound
					16178,	-- Phase Hound
					16176,	-- Shadowbeast
					18884,	-- Warp Chaser
					18465,	-- Warp Hunter
					18464,	-- Warp Stalker
					20557,	-- Wrath Hound
				},
				["coords"] = {
					{ 67.5, 11.7, BLADES_EDGE_MOUNTAINS },	-- Crystal Spine East
					{ 61.0, 11.0, BLADES_EDGE_MOUNTAINS },	-- Crystal Spine West
					{ 34.8, 40.4, BLADES_EDGE_MOUNTAINS },	-- Forge Camp: Wrath
					{ 20.3, 55.8, HELLFIRE_PENINSULA },	-- Shanaari Wastes, east of
					{ 49.5, 71.5, HELLFIRE_PENINSULA },	-- Honour Hold, southwest of
					{ 49.5, 31.3, HELLFIRE_PENINSULA },	-- Stonewall Canyon
					{ 63.1, 70.7, HELLFIRE_PENINSULA },	-- Zeth'gor, west of
					{ 72.1, 57.0, HELLFIRE_PENINSULA },	-- The Legion Front South
					{ 72.8, 42.4, HELLFIRE_PENINSULA },	-- The Legion Front North
					{ 40.8, 72.5, NETHERSTORM },	-- Arklon Ruins
					{ 56.4, 60.0, NETHERSTORM },	-- The Vortex Fields west
					{ 66.3, 61.8, NETHERSTORM },	-- The Vortex Fields east
					{ 65.9, 85.0, TEROKKAR_FOREST },	-- Blackwind Lake Southside
					{ 60.3, 38.7, TEROKKAR_FOREST },	-- Tuurem, southeast of
					{ 20.6, 73.5, TEROKKAR_FOREST },	-- Veil Lithic, vest of
				},
			}),
			i(25700, {	-- Fel Scales
				["crs"] = {
					18461,	-- Dampscale Basilisk
					18463,	-- Dampscale Devourer
					20924,	-- Grishnath Basilisk
					21816,	-- Ironspine Chomper
					19730,	-- Ironspine Gazer
					21854,	-- Ironspine Petrifier
					19729,	-- Ironspine Threshalisk
					20283,	-- Marshrock Stomper
					19706,	-- Marshrock Threshalisk
					16934,	-- Quillfang Ravager
					19189,	-- Quillfang Skitterer
					20279,	-- Ragestone Threshalisk
					20280,	-- Ragestone Trampler
					16932,	-- Razorfang Hatchling
					16933,	-- Razorfang Ravager
					20987,	-- Ruuan Weald Basilisk
					20925,	-- Scalded Basilisk
					22180,	-- Shard-Hide Boar
					19349,	-- Thornfang Ravager
					19350,	-- Thornfang Venomspitter
				},
				["coords"] = {
					{ 64.5, 33.0, BLADES_EDGE_MOUNTAINS },	-- Veil Ruuan
					{ 72.4, 20.2, BLADES_EDGE_MOUNTAINS },	-- Skald
					{ 67.5, 11.7, BLADES_EDGE_MOUNTAINS },	-- Crystal Spine East
					{ 61.0, 11.0, BLADES_EDGE_MOUNTAINS },	-- Crystal Spine West
					{ 40.2, 18.4, BLADES_EDGE_MOUNTAINS },	-- Grishnath
					{ 32.1, 55.0, BLADES_EDGE_MOUNTAINS },	-- Vortex Summit North
					{ 29.5, 67.0, BLADES_EDGE_MOUNTAINS },	-- Vortex Summit South
					{ 38.5, 88.3, HELLFIRE_PENINSULA },	-- Razorthorn Trail
					{ 22.9, 67.2, HELLFIRE_PENINSULA },	-- Dustquill Ravine
					{ 8.7, 50.8, HELLFIRE_PENINSULA },	-- Thornfang Hill
					{ 68.5, 44.4, NETHERSTORM },	-- Voidwind Plateu
					{ 39.3, 9.7, TEROKKAR_FOREST },	-- Silmyr Lake
					{ 44.6, 34.3, TEROKKAR_FOREST },	-- Cenarion Thicket, south of
					{ 62.4, 49.0, TEROKKAR_FOREST },	-- Bonechewer Ruins, west of
					{ 68.7, 30.5, TEROKKAR_FOREST },	-- Firewing Point, northwest of
					{ 88.1, 33.6, ZANGARMARSH },	-- Dead Mire East
					{ 78.1, 30.0, ZANGARMARSH },	-- Dead Mire North
					{ 34.7, 18.0, ZANGARMARSH },	-- Hewn Bog, north of
					{ 24.7, 19.1, ZANGARMARSH },	-- Daggerfen Village, north of
					{ 14.9, 28.9, ZANGARMARSH },	-- Ango'rosh, west of
					{ 8.3, 52.7, ZANGARMARSH },	-- Sporewind Lake, west of
				},
				["description"] = "Can be efficiently farmed in Blade's Edge Mountains and Zangarmarsh using a route from the southwestern end of Zangarmarsh following the western edge northwards and later eastwards to Blade's Edge Mountains. Then fly up to and follow the Vortex Summit, down again to Grishnath, and east up again following the Crystal Spine, over to Skald, and down to Veil Ruuan.\n\nCan also be found on basilisks all over Terokkar Forest, most of them dropping Dampscale Basilisk Eye.\n\nSkinning all mobs can also give Crystal-Infused Leather.",
			}),
			i(21887, {	-- Knothide Leather
				["description"] = "Can be skinned from any skinnable TBC mobs.",
			}),
			i(25649, {	-- Knothide Leather Scraps
				["groups"] = {
					i(21887),	-- Knothide Leather
				},
			}),
			i(29548, {	-- Nether Dragonscales
				["description"] = "Is skinned from Netherwing drakes in Outland. Characters who have started the Netherwing questline can only kill Netherwing drakes in Blade's Edge Nountains and Netherstorm, and then it requires the player to toggle 'At War' with the Netherwing in the reputation panel. Killing Netherwing drakes does not lower the reputation with the faction.",
				["crs"] = {
					21722,	-- Enslaved Netherwing Drake
					21004,	-- Lesser Nether Drake
					20332,	-- Nether Dragon
					18877,	-- Nether Drake
				},
				["coords"] = {
					{ 62.3, 77.0, BLADES_EDGE_MOUNTAINS },	-- Singing Ridge
					{ 72.5, 38.4, NETHERSTORM },	-- Celestial Ridge
					{ 68.35, 61.0, SHADOWMOON_VALLEY },	-- Dragonmaw Fortress
				},
			}),
			i(35229),	-- Nether Residue (Quest Item for Shattrath q(11875) Gaining the Advantage)
			i(25708, {	-- Thick Clefthoof Leather
				["description"] = "Clefthoofs can be found all over Nagrand.",
				["crs"] = {
					17133,	-- Aged Clefthoof
					17132,	-- Clefthoof Bull
					19183,	-- Clefthoof Calf
					18205,	-- Clefthoof
				},
				[MAPS_FIELD] = { NAGRAND },
			}),
			i(29547, {	-- Wind Scales
				["crs"] = {
					20502,	-- Eclipsion Dragonhawk
					21123,	-- Felsworn Scalewing
					20749,	-- Scalewing Serpent
					20673,	-- Swiftwing Shredder
				},
				["coords"] = {
					{ 68.5, 70.55, BLADES_EDGE_MOUNTAINS },	-- Scalewing Shelf
					{ 66.0, 52.6, BLADES_EDGE_MOUNTAINS },	-- Razor Ridge
					{ 71.5, 30.1, BLADES_EDGE_MOUNTAINS },	-- Bladed Gulch
					{ 56.4, 60.0, NETHERSTORM },	-- The Vortex Fields west
					{ 66.3, 61.8, NETHERSTORM },	-- The Vortex Fields east
					{ 47.0, 64.5, SHADOWMOON_VALLEY },	-- Eclipse Point
				},
			}),
		},
	}),
	prof(TAILORING, {
		-- #if BEFORE CATA
		prof(MOONCLOTH_TAILORING, {
			["description"] = "These items can only be crafted by Tailorings that have completed the Becoming a Mooncloth Tailor quest in Shattrath.\n\nNOTE: You may only have one of these specializations active per character.",
			["groups"] = {
				i(21873),	-- Primal Mooncloth Belt
				i(21875),	-- Primal Mooncloth Robe
				i(21874),	-- Primal Mooncloth Shoulders
			},
		}),
		prof(SHADOWEAVE_TAILORING, {
			["description"] = "These items can only be crafted by Tailorings that have completed the Becoming a Shadoweave Tailor quest in Shattrath.\n\nNOTE: You may only have one of these specializations active per character.",
			["groups"] = {
				i(21869),	-- Frozen Shadoweave Shoulders
				i(21871),	-- Frozen Shadoweave Robe
				i(21870),	-- Frozen Shadoweave Boots
			},
		}),
		prof(SPELLFIRE_TAILORING, {
			["description"] = "These items can only be crafted by Tailorings that have completed the Becoming a Spellfire Tailor quest in Shattrath.\n\nNOTE: You may only have one of these specializations active per character.",
			["groups"] = {
				i(21846),	-- Spellfire Belt
				i(21847),	-- Spellfire Gloves
				i(21848),	-- Spellfire Robe
			},
		}),
		-- #endif
		n(ARMOR, {
			i(21867),	-- Arcanoweave Boots
			i(21866),	-- Arcanoweave Bracers
			i(21868),	-- Arcanoweave Robe
			i(24267),	-- Battlecast Hood
			i(24263),	-- Battlecast Pants
			applyclassicphase(TBC_PHASE_TWO, i(30038, {["timeline"] = {ADDED_2_1_0}})),	-- Belt of Blasting
			applyclassicphase(TBC_PHASE_TWO, i(30036, {["timeline"] = {ADDED_2_1_0}})),	-- Belt of the Long Road
			i(24257),	-- Black Belt of Knowledge
			i(24251),	-- Blackstrike Bracers
			applyclassicphase(TBC_PHASE_TWO, i(30037, {["timeline"] = {ADDED_2_1_0}})),	-- Boots of Blasting
			applyclassicphase(TBC_PHASE_TWO, i(30035, {["timeline"] = {ADDED_2_1_0}})),	-- Boots of the Long Road
			i(24250),	-- Bracers of Havok
			applyclassicphase(TBC_PHASE_THREE, i(32586, {["timeline"] = {ADDED_2_1_0}})),	-- Bracers of Nimble Thought
			i(30831),	-- Cloak of Arcane Evasion
			i(24253),	-- Cloak of Eternity
			i(24252),	-- Cloak of the Black Void
			i(30837),	-- Flameheart Bracers
			i(30838),	-- Flameheart Gloves
			i(30839),	-- Flameheart Vest
			-- #if AFTER CATA
			i(21870),	-- Frozen Shadoweave Boots
			i(21871),	-- Frozen Shadoweave Robe
			i(21869),	-- Frozen Shadoweave Shoulders
			-- #endif
			i(24256),	-- Girdle of Ruination
			applyclassicphase(TBC_PHASE_FIVE, i(34367, {["timeline"] = {ADDED_2_4_0}})),	-- Hands of Eternal Light
			i(21860),	-- Imbued Netherweave Boots
			i(21859),	-- Imbued Netherweave Pants
			i(21861),	-- Imbued Netherweave Robe
			i(21862),	-- Imbued Netherweave Tunic
			i(24260),	-- Manaweave Cloak
			applyclassicphase(TBC_PHASE_THREE, i(32587, {["timeline"] = {ADDED_2_1_0}})),	-- Mantle of Nimble Thought
			i(21850),	-- Netherweave Belt
			i(21853),	-- Netherweave Boots
			i(21849),	-- Netherweave Bracers
			i(21851),	-- Netherweave Gloves
			i(21852),	-- Netherweave Pants
			i(21854),	-- Netherweave Robe
			i(21855),	-- Netherweave Tunic
			applyclassicphase(TBC_PHASE_THREE, i(32420, {["timeline"] = {ADDED_2_1_0}})),	-- Night's End
			-- #if AFTER CATA
			i(21873),	-- Primal Mooncloth Belt
			i(21875),	-- Primal Mooncloth Robe
			i(21874),	-- Primal Mooncloth Shoulders
			-- #endif
			i(24258),	-- Resolute Cape
			applyclassicphase(TBC_PHASE_FIVE, i(34365, {["timeline"] = {ADDED_2_4_0}})),	-- Robe of Eternal Light
			i(21863),	-- Soulcloth Gloves
			i(21864),	-- Soulcloth Shoulders
			i(21865),	-- Soulcloth Vest
			applyclassicphase(TBC_PHASE_THREE, i(32392, {["timeline"] = {ADDED_2_1_0}})),	-- Soulguard Bracers
			applyclassicphase(TBC_PHASE_THREE, i(32390, {["timeline"] = {ADDED_2_1_0}})),	-- Soulguard Girdle
			applyclassicphase(TBC_PHASE_THREE, i(32389, {["timeline"] = {ADDED_2_1_0}})),	-- Soulguard Leggings
			applyclassicphase(TBC_PHASE_THREE, i(32391, {["timeline"] = {ADDED_2_1_0}})),	-- Soulguard Slippers
			-- #if AFTER CATA
			i(21846),	-- Spellfire Belt
			i(21847),	-- Spellfire Gloves
			i(21848),	-- Spellfire Robe
			-- #endif
			i(24266),	-- Spellstrike Hood
			i(24262),	-- Spellstrike Pants
			applyclassicphase(TBC_PHASE_FIVE, i(34366, {["timeline"] = {ADDED_2_4_0}})),	-- Sunfire Handwraps
			applyclassicphase(TBC_PHASE_FIVE, i(34364, {["timeline"] = {ADDED_2_4_0}})),	-- Sunfire Robe
			applyclassicphase(TBC_PHASE_THREE, i(32585, {["timeline"] = {ADDED_2_1_0}})),	-- Swiftheal Mantle
			applyclassicphase(TBC_PHASE_THREE, i(32584, {["timeline"] = {ADDED_2_1_0}})),	-- Swiftheal Wraps
			i(24249),	-- Unyielding Bracers
			i(24255),	-- Unyielding Girdle
			i(24259),	-- Vengeance Wrap
			i(24254),	-- White Remedy Cape
			i(24264),	-- Whitemend Hood
			i(24261),	-- Whitemend Pants
		}),
		n(ARMOR_ENCHANTMENTS, {
			i(24276),	-- Golden Spellthread
			i(24273),	-- Mystic Spellthread
			i(24274),	-- Runic Spellthread
			i(24275),	-- Silver Spellthread
		}),
		filter(BAGS, {
			i(24270),	-- Bag of Jewels
			i(21872),	-- Ebon Shadowbag
			i(21843),	-- Imbued Netherweave Bag
			i(38225, {["timeline"] = {ADDED_2_4_3}}),	-- Mycah's Botanical Bag
			i(21841),	-- Netherweave Bag
			i(21876),	-- Primal Mooncloth Bag
			i(21858),	-- Spellfire Bag
		}),
		n(DECOR, sharedDataSelf({["timeline"] = { ADDED_11_2_7 }}, {
			i(258195),	-- Draenei Weaver's Loom (DECOR!)
			i(258202),	-- Grand Drape of the Exiles (DECOR!)
		})),
		filter(MISC, {
			-- #if AFTER BFA
			i(21991),	-- Heavy Netherweave Bandage
			i(21990),	-- Netherweave Bandage
			-- #endif
			i(24268),	-- Netherweave Net
		}),
		filter(REAGENTS, {
			i(21842),	-- Bolt of Imbued Netherweave
			i(21840),	-- Bolt of Netherweave
			i(21844),	-- Bolt of Soulcloth
			i(21845, {	-- Primal Mooncloth
				["description"] = "Coordinates are for select Moonwells around the world.",
				["coords"] = {
					{ 43.10, 80.27, DARNASSUS },	-- Temple of the Moon
					-- #if BEFORE 4.0.3
					{ 21.0, 53.0, STORMWIND_CITY },	-- The Park
					{ 60.0, 72.0, ASHENVALE },	-- Moonwell of Cleansing (exists after 4.0.3, but reduntant on practicality.)
					-- #else
					{ 57.11, 37.52, WETLANDS },	-- Greenwarden's Grove
					{ 48.05, 18.54, DARNASSUS },	-- The Howling Oak
					{ 10.77, 74.71, AZSHARA },	-- Talrendis Point
					{ 49.06, 33.58, DUSKWOOD },	-- Twlight Grove (exists pre 4.0.3, but this area is then infested with world bosses.)
					-- #endif
					-- #if AFTER 2.0.1
					{ 13.13, 26.23, GHOSTLANDS },	-- Shalandis Isle
					{ 45.02, 23.54, TEROKKAR_FOREST },	-- Cenarion Thicket
					-- #endif
				},
			}),
			i(24272, {	-- Shadowcloth
				["coord"] = { 58.3, 70.9, SHADOWMOON_VALLEY },
			}),
			i(24271, {	-- Spellcloth
				[MAPS_FIELD] = { NETHERSTORM },
			}),
		}),
	}),
}))));
