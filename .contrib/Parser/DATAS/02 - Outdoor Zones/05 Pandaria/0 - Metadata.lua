---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, {
	m(PANDARIA, applyclassicphase(MOP_PHASE_LANDFALL, {
		["lore"] = "Pandaria is the homeland of the pandaren and birthplace of their ancient empire. Located in the southern part of Azeroth, Pandaria was shrouded by a magical mist by its last emperor after the Great Sundering ten thousand years ago, and thus disappeared into myth and legend. Only those pandaren who left their homeland on the back of the great turtle Shen-zin Su, including the renowned pandaren brewmasters, have been seen outside of their homeland since; some even came to the aid of the other races during the Third War.",
		["zone-text-continent"] = true,
		["icon"] = 630786,
		["timeline"] = { ADDED_5_0_4 },
		["groups"] = {
			prof(FISHING, {
				["maps"] = {
					DREAD_WASTES,
					ISLE_OF_GIANTS,
					ISLE_OF_THUNDER,
					KRASARANG_WILDS,
					KUN_LAI_SUMMIT,
					THE_JADE_FOREST,
					THE_VEILED_STAIR,
					TIMELESS_ISLE,
					TOWNLONG_STEPPES,
					VALE_OF_ETERNAL_BLOSSOMS,
					VALLEY_OF_THE_FOUR_WINDS,
				},
				["g"] = {
					i(94933, {	-- Tiny Blue Carp (PET!)
						["description"] = "Can be fished from:\n\n|cFFFfffff— Schools:|r Jewel Danio & Redbelly Mandarin\n\n|cFFFfffff— Fish of the Day:|r Townlong Steppes & Vale of Eternal Blossoms\n\n|cFFFfffff— Inland open water:|r Townlong Steppes & Vale of Eternal Blossoms\n",
					}),
					i(94934, {	-- Tiny Green Carp (PET!)
						["description"] = "Can be fished from:\n\n|cFFFfffff— Schools:|r Emperor Salmon, Jade Lungfish, & Krasarang Paddlefish\n\n|cFFFfffff— Fish of the Day:|r Jade Forest, Krasarang Wilds, & Valley of the Four Winds\n\n|cFFFfffff— Inland open water:|r Jade Forest, Krasarang Wilds, & Valley of the Four Winds\n",
					}),
					i(94932, {	-- Tiny Red Carp (PET!)
						["description"] = "Can be fished from:\n\n|cFFFfffff— Schools:|r Spinefish\n\n|cFFFfffff— Fish of the Day:|r Kun-Lai Summit\n\n|cFFFfffff— Sha-Touched water:|r Dread Wastes, Kun-Lai Summit, Jade Forest (Widow's Wail only), & Townlong Steppes\n",
					}),
					i(94935, {	-- Tiny White Carp (PET!)
						["description"] = "Can be fished from:\n\n|cFFFfffff— Schools:|r Giant Mantis Shrimp, Reef Octopus, & Tiger Gourami\n\n|cFFFfffff— Fish of the Day:|r Dread Wastes, Jade Forest, & Kun-Lai Summit\n\n|cFFFfffff— Inland open water:|r Kun-Lai Summit & The Veiled Stair\n\nIt can also be caught in most coastal open water.\n",
					}),
				},
			}),
			n(QUESTS, {
				-- TODO: move these provider items into the respective achievement groups
				q(31055, {    -- Between a Saurok and a Hard Place
					["provider"] = { "i", 83769 },    -- Between a Saurok and a Hard Place
					["description"] = "This will be mailed to you upon completion of Between a Saurok and a Hard Place achievement.",
					["g"] = {
						i(83076),	-- Between a Saurok and a Hard Place (QI!)
					},
				}),
				q(31094, {    -- Fish Tales
					["provider"] = { "i", 83771 },    -- Fish Tales
					["description"] = "This will be mailed to you upon completion of Fish Tales achievement.",
				}),
				q(32602, {    -- Gods and Monsters
					["provider"] = { "i", 94199 },    -- Gods and Monsters
					["description"] = "This will be mailed to you upon completion of Gods and Monsters achievement.",
				}),
				q(31093, {    -- Hozen in the Mist
					["provider"] = { "i", 83770 },    -- Hozen in the Mist
					["description"] = "This will be mailed to you upon completion of Hozen in the Mist achievement.",
				}),
				q(32601, {    -- Rumbles of Thunder
					["provider"] = { "i", 94198 },    -- Rumbles of Thunder
					["description"] = "This will be mailed to you upon completion of Rumbles of Thunder achievement.",
				}),
				q(31102, {    -- The Seven Burdens of Shaohao
					["provider"] = { "i", 83779 },    -- The Seven Burdens of Shaohao
					["description"] = "This will be mailed to you upon completion of The Seven Burdens of Shaohao achievement.",
				}),
				q(31100, {    -- The Song of the Yaungol
					["provider"] = { "i", 83777 },    -- The Song of the Yaungol
					["description"] = "This will be mailed to you upon completion of The Song of the Yaungol achievement.",
				}),
				q(32600, {    -- The Zandalari Prophecy
					["provider"] = { "i", 94197 },    -- The Zandalari Prophecy
					["description"] = "This will be mailed to you upon completion of The Zandalari Prophecy achievement.",
				}),
				q(31096, {    -- What is Worth Fighting For
					["provider"] = { "i", 83774 },    -- What is Worth Fighting For
					["description"] = "This will be mailed to you upon completion of What is Worth Fighting For achievement.",
				}),
			}),
			n(TREASURES, {
				o(213460, { -- A Most Famous Bill of Sale
					["coord"] = { 55.0, 47.3, VALLEY_OF_THE_FOUR_WINDS },
				}),
				o(213414, {	-- Always Remember
					["coords"] = {
						{ 53.0, 68.3, VALE_OF_ETERNAL_BLOSSOMS },
						-- #if AFTER BFA
						{ 53.0, 68.3, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },	-- BFA alternate zone
						-- #endif
					},
				}),
				o(213418, {	-- Dominance
					["coord"] = { 65.5, 50.0, TOWNLONG_STEPPES },
				}),
				o(215785, {	-- Embracing the Passions
					["coord"] = { 83.22, 21.16, VALLEY_OF_THE_FOUR_WINDS },
				}),
				o(211993, {	-- Hozen Maturity
					["coord"] = { 52.4, 87.6, KRASARANG_WILDS },
				}),
				o(211990, {	-- Hozen Speech
					["coord"] = { 26.5, 28.3, THE_JADE_FOREST },
				}),
				o(215782, {	-- Origins
					["coord"] = { 30.6, 38.5, KRASARANG_WILDS },
				}),
				o(213413, {	-- Pandaren Fighting Tactics
					["coord"] = { 18.8, 31.8, VALLEY_OF_THE_FOUR_WINDS },
				}),
				o(213407, {	-- Quan Tou Kuo the Two Fisted
					["coord"] = { 81.4, 11.4, KRASARANG_WILDS },
				}),
				o(213438, {	-- Ren Yun the Blind
					["coord"] = { 44.7, 52.5, KUN_LAI_SUMMIT },
				}),
				o(215783, {	-- Role Call
					["coord"] = { 74.5, 83.5, KUN_LAI_SUMMIT },
				}),
				o(213333, {	-- Spirit Binders
					["coord"] = { 42.2, 17.4, THE_JADE_FOREST },
				}),
				o(213459, {	-- The Birthplace of Liu Lang
					["coord"] = { 20.3, 55.9, VALLEY_OF_THE_FOUR_WINDS },
				}),
				o(213328, {	-- The Defiant
					["description"] = "At the north end of the circular room at the back of the cave.",
					["coords"] = {
						{ 73.2, 94.6, KUN_LAI_SUMMIT },	-- entrance
						{ 54.9, 16.9, 434 },	-- actual object
					},
				}),
				o(213329, {	-- The Deserters
					["coord"] = { 67.4, 60.8, DREAD_WASTES },
				}),
				o(215799, {	-- The Emperor's Burden - Part 1
					["coord"] = { 47.0, 45.1, THE_JADE_FOREST },
				}),
				o(215797, {	-- The Emperor's Burden - Part 2
					["coord"] = { 43.8, 51.2, KUN_LAI_SUMMIT },
				}),
				o(213421, {	-- The Emperor's Burden - Part 3
					["coord"] = { 55.8, 56.8, THE_JADE_FOREST },
				}),
				o(213422, {	-- The Emperor's Burden - Part 4
					["coord"] = { 40.4, 56.6, KRASARANG_WILDS },
				}),
				o(213445, {	-- The Emperor's Burden - Part 5
					["coord"] = { 37.7, 62.9, TOWNLONG_STEPPES },
				}),
				o(213443, {	-- The Emperor's Burden - Part 6
					["coord"] = { 67.7, 48.3, KUN_LAI_SUMMIT },
				}),
				o(213455, {	-- The Emperor's Burden - Part 7
					["coord"] = { 40.9, 42.3, KUN_LAI_SUMMIT },
				}),
				o(213456, {	-- The Emperor's Burden - Part 8
					-- #if AFTER BFA
					["description"] = "This can only be found in the non-N'zoth phase. Speak to Zidormi atop the Seat of Knowledge to travel to the past.",
					-- #endif
					["coord"] = { 67.7, 44.2, VALE_OF_ETERNAL_BLOSSOMS },
				}),
				o(213415, {	-- The First Monks
					["coord"] = { 35.7, 30.5, THE_JADE_FOREST },
				}),
				o(211994, {	-- The Hozen Ravage
					["coord"] = { 45.7, 61.9, KUN_LAI_SUMMIT },
				}),
				o(213330, {	-- The Last Stand
					["coord"] = { 33.3, 25.0, KRASARANG_WILDS },
				}),
				o(213332, {	-- The Lost Dynasty
					["coords"] = {
						-- not sure correctness of these based on phasing maybe?
						{ 50.90, 31.67, KRASARANG_WILDS },
						{ 52.96, 27.42, KRASARANG_WILDS },
					},
				}),
				o(213327, {	-- The Saurok
					["coord"] = { 67.7, 29.3, THE_JADE_FOREST },
				}),
				o(213334, {	-- The Thunder King
					["coords"] = {
						{ 40.1, 75.6, VALE_OF_ETERNAL_BLOSSOMS },
						-- #if AFTER BFA
						{ 40.1, 75.6, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },	-- BFA alternate zone
						-- #endif
					},
				}),
				o(213461, {	-- The Wandering Widow
					["coord"] = { 34.6, 64.0, VALLEY_OF_THE_FOUR_WINDS },
				}),
				o(213416, {	-- Together, We Are Strong
					["coords"] = {
						{ 26.6, 20.8, VALE_OF_ETERNAL_BLOSSOMS },
						-- #if AFTER BFA
						{ 26.6, 20.8, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },	-- BFA alternate zone
						-- #endif
					},
				}),
				o(213420, {	-- Trapped in a Strange Land
					["coord"] = { 84.1, 72.8, TOWNLONG_STEPPES },
				}),
				o(213331, {	-- Valley of the Emperors (Kun-Lai Summit)
					["coord"] = { 53.0, 46.58, KUN_LAI_SUMMIT },
					["description"] = "The scroll is in the first big room."
				}),
				o(213511, {	-- Victory in Kun-Lai
					["coord"] = { 63.1, 40.8, KUN_LAI_SUMMIT },
				}),
				o(215765, {	-- Waiting for the Turtle
					["coord"] = { 72.2, 31.1, KRASARANG_WILDS },
				}),
				o(215779, {	-- Watersmithing
					["coord"] = { 66.0, 87.5, THE_JADE_FOREST },
				}),
				o(215780, {	-- Waterspeakers
					["coord"] = { 61.52, 34.88, VALLEY_OF_THE_FOUR_WINDS },
				}),
				o(213512, {	-- Xin Wo Yin the Broken Hearted
					["coord"] = { 37.5, 30.1, THE_JADE_FOREST },
				}),
				o(213417, {	-- Yaungol Tactics
					["coord"] = { 50.5, 79.3, KUN_LAI_SUMMIT },
				}),
				o(215798, {	-- Yaungoil
					["coord"] = { 71.7, 63.0, KUN_LAI_SUMMIT },
				}),
			}),
			n(ZONE_DROPS, {
				["maps"] = {
					DREAD_WASTES,
					THE_JADE_FOREST,
					TOWNLONG_STEPPES,
					KRASARANG_WILDS,
				},
				["g"] = {
					i(94158, {	-- Big Bag of Zandalari Supplies
						["crs"] = {
							70530,	-- Ra'sha
							70096,	-- War-God Dokah
							69769,	-- Zandarlari Warbringer
							69841,	-- Zandarlari Warbringer
							69842,	-- Zandarlari Warbringer
							69768,	-- Zandarlari Warscout
						},
						["sym"] = {{"select","itemID",87218},{"pop"}},	-- Big Bag of Arms
					}),
					i(94225, {	-- Stolen Celestial Insignia
						["crs"] = {
							70530,	-- Ra'sha
							70096,	-- War-God Dokah
							69769,	-- Zandarlari Warbringer
							69841,	-- Zandarlari Warbringer
							69842,	-- Zandarlari Warbringer
							69768,	-- Zandarlari Warscout
						},
					}),
					i(94227, {	-- Stolen Golden Lotus Insignia
						["crs"] = {
							70530,	-- Ra'sha
							70096,	-- War-God Dokah
							69769,	-- Zandarlari Warbringer
							69841,	-- Zandarlari Warbringer
							69842,	-- Zandarlari Warbringer
							69768,	-- Zandarlari Warscout
						},
					}),
					i(94226, {	-- Stolen Klaxxi Insignia
						["crs"] = {
							70530,	-- Ra'sha
							70096,	-- War-God Dokah
							69769,	-- Zandarlari Warbringer
							69841,	-- Zandarlari Warbringer
							69842,	-- Zandarlari Warbringer
							69768,	-- Zandarlari Warscout
						},
					}),
					i(94223, {	-- Stolen Shado-Pan Insignia
						["crs"] = {
							70530,	-- Ra'sha
							70096,	-- War-God Dokah
							69769,	-- Zandarlari Warbringer
							69841,	-- Zandarlari Warbringer
							69842,	-- Zandarlari Warbringer
							69768,	-- Zandarlari Warscout
						},
					}),
					i(94159, {	-- Small Bag of Zandalari Supplies
						["crs"] = {
							70530,	-- Ra'sha
							70096,	-- War-God Dokah
							69769,	-- Zandarlari Warbringer
							69841,	-- Zandarlari Warbringer
							69842,	-- Zandarlari Warbringer
							69768,	-- Zandarlari Warscout
						},
					}),
				},
			}),
		},
	})),
});