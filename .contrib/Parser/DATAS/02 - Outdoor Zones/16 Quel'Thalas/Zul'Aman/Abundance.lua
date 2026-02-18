---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

ABUNDANCE = createHeader({
	readable = "Abundance",
	icon = 237556,
	text = {
		en = "Abundance",
	},
});
local UNALLOYED_ABUNDANCE = 3377;
root(ROOTS.Zones, m(MAP.MIDNIGHT.QUELTHALAS, {
	m(MAP.MIDNIGHT.ZULAMAN, {
		n(ABUNDANCE, {
			["maps"] = {
				2580,	-- Loaknit Den
				2579,	-- Wartha'nan Crypts
				2581,	-- Voidburrow
				2582,	-- Voidburrow
				2522,	-- Abundant Grotto
				2523,	-- Abundant Grotto
			},
			["coords"] = {
				{ 56.6, 65.8, MAP.MIDNIGHT.EVERSONG_WOODS },
				{ 31.6, 26.7, MAP.MIDNIGHT.ZULAMAN },
				{ 66.0, 61.4, MAP.MIDNIGHT.HARANDAR },
				--{ X, Y, MAP.MIDNIGHT.VOIDSTORM },
			},
			["groups"] = {
				n(ACHIEVEMENTS, {
					-- EXO NOTE: Abundance Achievements. Dunno what it is yet but they happen across all zones from what I can see. Dunno if a new Header for the event is warranted or just use [maps]. Or both...
					ach(61941),	-- Abundance: Acolyte of a Glorious Entity
					ach(62341),	-- Abundance: Ain't Dun Till It's Dun
					ach(62266),	-- Abundance: An Acolyte no Longer
					ach(62338),	-- Abundance: Artisan
					ach(61939),	-- Abundance: Artisan of Floaret	// Note: Harandar
					ach(61938),	-- Abundance: Artisan of Loaknit	// Note: Zul'Aman
					ach(61940),	-- Abundance: Artisan of Loanite	// Note: Voidstorm
					ach(61937),	-- Abundance: Artisan of Mausoloa	// Note: Eversong Woods
					ach(42283),	-- Abundance: Azeroth Runs on Dundun
					ach(62336),	-- Abundance: Contributer
					ach(62331),	-- Abundance: Drops of Prosperity
					ach(62332),	-- Abundance: Dundun's Favored
					ach(62339),	-- Abundance: Gambler
					ach(62326),	-- Abundance: Golden Opportunities
					ach(62333),	-- Abundance: Harvester
					ach(62340),	-- Abundance: Investor
					ach(62324),	-- Abundance: Loa of all Trades
					ach(62330),	-- Abundance: One Bite at a Time
					ach(62337),	-- Abundance: Professional
					ach(62268),	-- Abundance: Professionals Only
					ach(61943),	-- Abundance: Prosperous Plentitude!	// Note: Eversong Woods, Zul'Aman, Harandar, Voidstorm
					ach(62329),	-- Abundance: Squash the Competition
					ach(62325),	-- Abundance: Treasures Aplenty
					ach(61681),	-- Abundance: You Should See Him in a Crown
				}),
				n(QUESTS, {
					q(91930, {	-- The Abundant Lands
						["qg"] = 241924,	-- Chel the Chip
						["coord"] = { 45.1, 67.6, MAP.MIDNIGHT.ZULAMAN },
					}),
					q(91932, {	-- The Abundant Awakening
						["qg"] = 241928,	-- Chel the Chip
						["coord"] = { 31.6, 26.7, MAP.MIDNIGHT.ZULAMAN },
					}),
					q(89507, {	-- Weekly: Abundance
						["qg"] = 241928,	-- Chel the Chip
						["coord"] = { 31.6, 26.7, MAP.MIDNIGHT.ZULAMAN },
						["isWeekly"] = true,
						["groups"] = {
							i(268488),	-- Overflowing Abundant Satchel
							i(269702),	-- Overflowing Abundant Satchel
						},
					}),
				}),
				n(VENDORS, {
					["crs"] = {
						257633,	-- Chel the Chip <Abundance Vendor>
						241928,	-- Chel the Chip <Abundance Vendor>
						248658,	-- Chel the Chip <Abundance Vendor>
						--XXXXXX,	-- Chel the Chip <Abundance Vendor>
					},
					["coords"] = {
						{ 56.6, 65.8, MAP.MIDNIGHT.EVERSONG_WOODS },
						{ 31.6, 26.7, MAP.MIDNIGHT.ZULAMAN },
						{ 66.0, 61.4, MAP.MIDNIGHT.HARANDAR },
						--{ X, Y, MAP.MIDNIGHT.VOIDSTORM },
					},
					["groups"] = {
						i(265746, {	-- Idol of Abundance (QI!)
							["cost"] = {{ "c", UNALLOYED_ABUNDANCE, 1600 }},
						}),
						filter(COSMETIC, {
							i(262582, {	-- Amani Gem Clamps
								["cost"] = {{ "c", UNALLOYED_ABUNDANCE, 800 }},
							}),
							i(262579, {	-- Amani Hide Cutter
								["cost"] = {{ "c", UNALLOYED_ABUNDANCE, 800 }},
							}),
							i(262580, {	-- Amani Log Splitter
								["cost"] = {{ "c", UNALLOYED_ABUNDANCE, 800 }},
							}),
							i(262581, {	-- Amani Rock Hammer
								["cost"] = {{ "c", UNALLOYED_ABUNDANCE, 800 }},
							}),
							i(262578, {	-- Amani Stonework Chisel
								["cost"] = {{ "c", UNALLOYED_ABUNDANCE, 800 }},
							}),
							i(266970, {	-- Ensemble: Abundant Raiment
								["cost"] = {{ "c", UNALLOYED_ABUNDANCE, 3200 }},
							}),
						}),
						n(DECOR, {
							i(256923, {	-- Amani Crafter's Tool Rack (DECOR!)
								["cost"] = {{ "c", UNALLOYED_ABUNDANCE, 3200 }},
							}),
							i(264655, {	-- Amani Slate Bench (DECOR!)
								["cost"] = {{ "c", UNALLOYED_ABUNDANCE, 3200 }},
							}),
							i(264254, {	-- Three-Tier Zul'Aman Shelf (DECOR!)
								["cost"] = {{ "c", UNALLOYED_ABUNDANCE, 3200 }},
							}),
							i(264249, {	-- Woodblock Stoll (DECOR!)
								["cost"] = {{ "c", UNALLOYED_ABUNDANCE, 1600 }},
							}),
						}),
						filter(MOUNTS, {
							i(250782, {	-- Amani Sunfeather (MOUNT!)
								["cost"] = {{ "c", UNALLOYED_ABUNDANCE, 6400 }},
							}),
							i(257197, {	-- Blessed Amani Burrower (MOUNT!)
								["cost"] = {{ "c", UNALLOYED_ABUNDANCE, 6400 }},
							}),
						}),
						n(PROFESSIONS, {
							i(250753, {	-- Bag of Cracked Orebits
								["requireSkill"] = MINING,
								["cost"] = {{ "c", UNALLOYED_ABUNDANCE, 1200 }},
							}),
							i(250754, {	-- Bag of Wild Skinnings
								["requireSkill"] = SKINNING,
								["cost"] = {{ "c", UNALLOYED_ABUNDANCE, 1200 }},
							}),
							i(250755, {	-- Pouch of Mystic Grindings
								["requireSkill"] = ENCHANTING,
								["cost"] = {{ "c", UNALLOYED_ABUNDANCE, 1200 }},
							}),
							i(250750, {	-- Pouch of Sprouted Clippings
								["requireSkill"] = HERBALISM,
								["cost"] = {{ "c", UNALLOYED_ABUNDANCE, 1200 }},
							}),
							i(250445, {	-- Echo of Abundance: Enchanting
								["requireSkill"] = ENCHANTING,
								["cost"] = {
									{ "c", ARTISAN_MOXIE.ENCHANTING, 75 },
									{ "c", UNALLOYED_ABUNDANCE, 1600 },
								},
							}),
							i(250443, {	-- Echo of Abundance: Herbalism
								["requireSkill"] = HERBALISM,
								["cost"] = {
									{ "c", ARTISAN_MOXIE.HERBALISM, 75 },
									{ "c", UNALLOYED_ABUNDANCE, 1600 },
								},
							}),
							i(250444, {	-- Echo of Abundance: Mining
								["requireSkill"] = MINING,
								["cost"] = {
									{ "c", ARTISAN_MOXIE.MINING, 75 },
									{ "c", UNALLOYED_ABUNDANCE, 1600 },
								},
							}),
							i(250360, {	-- Echo of Abundance: Skinning
								["requireSkill"] = SKINNING,
								["cost"] = {
									{ "c", ARTISAN_MOXIE.SKINNING, 75 },
									{ "c", UNALLOYED_ABUNDANCE, 1600 },
								},
							}),
							i(245345, {	-- Fused Vitality
								["cost"] = {{ "c", UNALLOYED_ABUNDANCE, 400 }},
							}),
							i(254875, {	-- Muck-Covered Writings
								["cost"] = {{ "c", UNALLOYED_ABUNDANCE, 6400 }},
							}),
							i(241147, {	-- Blood Hunter Lure
								["cost"] = {{ "c", UNALLOYED_ABUNDANCE, 200 }},
							}),
							i(241145, {	-- Lucky Loa Lure
								["cost"] = {{ "c", UNALLOYED_ABUNDANCE, 200 }},
							}),
						}),
						filter(TOYS, {
							i(251633, {	-- Bursting Bounty Bundle (TOY!)
								["cost"] = {{ "c", UNALLOYED_ABUNDANCE, 6400 }},
							}),
							i(266370, {	-- Dundun's Abundant Travel Method (TOY!)
								["cost"] = {{ "c", UNALLOYED_ABUNDANCE, 3200 }},
							}),
						}),
					},
				}),
			},
		}),
	}),
}));
