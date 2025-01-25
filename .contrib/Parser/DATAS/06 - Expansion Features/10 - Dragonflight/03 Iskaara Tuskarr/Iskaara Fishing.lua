-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------
ISKAARA_FISHING = createHeader({
	readable = "Iskaara Fishing",
	icon = 1911518,
	text = {
		en = "Iskaara Fishing",
		ru = "Искарское рыболовство",
		cn = "伊斯卡拉渔具",
	},
});
root(ROOTS.ExpansionFeatures, expansion(EXPANSION.DF, bubbleDown({ ["timeline"] = { ADDED_10_0_2_LAUNCH } }, {
	n(ISKAARA_TUSKARR, {
		n(ISKAARA_FISHING, bubbleDownSelf({ ["minReputation"] = { FACTION_ISKAARA_TUSKARR, 4 } }, {
			n(ACHIEVEMENTS, {
				ach(16531),	-- A Whole Heap of Lunkers
				ach(16322, {	-- Best in Slot
					crit(55019, {	-- Harpoon handle
						["_quests"] = { 70795 },	-- Reinforced Irontree Harpoon Handle
					}),
					crit(55076, {	-- Harpoon head
						["_quests"] = { 70797 },	-- Jagged Serevite Harpoon Head
					}),
					crit(55024, {	-- Harpoon rope
						["_quests"] = { 70799 },	-- Braided Seavine Harpoon Rope
					}),
					crit(55021, {	-- Fishing net weights
						["_quests"] = { 70801 },	-- Dense Draconium Net Weights
					}),
					crit(55022, {	-- fishing net nots
						["_quests"] = { 70803 },	-- Double Imbu Knot
					}),
				}),
				ach(16321, {	-- Cutting Tusk Equipment
					crit(55023, {	-- Iskaaran Harpoon
						["_quests"] = { 70792 },	-- Iskaaran Harpoon
					}),
					crit(55020, {	-- Iskaaran Fishing Net
						["_quests"] = { 70793 },	-- Iskaaran Fishing Net
					}),
				}),
				ach(16550),	-- Giving Back to Nature
				ach(16552),	-- Giving Even More Back to Nature
				ach(16551),	-- Giving More Back to Nature
				ach(16548),	-- It Takes a Tuskarr Buddy
				ach(16564),	-- It Takes a Tuskarr Family
				ach(16565),	-- It Takes a Tuskarr Village
				ach(16533),	-- Lots of Lunkers
				ach(16561),	-- Lunkers, Lunkers Everywhere
				ach(16547),	-- Pulled!
				ach(16317),	-- Secret Fishing Spots
				ach(16553),	-- Taking From Nature
				ach(16562, {	-- That's not a Fish...
					crit(55689, {	-- Cast the Spell - Summon Massive Lunker
						["provider"] = { "i", 194701 },	-- Ominous Conch
					}),
				}),
				ach(16563, {	-- We're Going to Need a Bigger Harpoon
					crit(55689, {	-- Cast the Spell - Summon Massive Lunker
						["provider"] = { "i", 194701 },	-- Ominous Conch
					}),
				}),
				ach(16546, {	-- What's Down There?
					crit(55689, {	-- Cast the Spell - Summon Massive Lunker
						["provider"] = { "i", 194701 },	-- Ominous Conch
					}),
				}),
			}),
			n(QUESTS, {
				------ RENOWN 4 ------
				q(70941, {	-- Fishing Holes
					["description"] = "Spawns Anywhere on Dragon Isles.",
					["provider"] = { "n", 197631 },	-- Rowie
					["maps"] = { THE_WAKING_SHORES, OHNAHRAN_PLAINS, THE_AZURE_SPAN, THALDRASZUS, VALDRAKKEN },
				}),
				------ RENOWN 5 ------
				q(71230, {	-- Tuskarr Fishing Gear
					["minReputation"] = { FACTION_ISKAARA_TUSKARR, 5 },
					["description"] = "Spawns Anywhere on Dragon Isles.",
					["provider"] = { "n", 197631 },	-- Rowie
					["maps"] = { THE_WAKING_SHORES, OHNAHRAN_PLAINS, THE_AZURE_SPAN, THALDRASZUS, VALDRAKKEN },
				}),
				q(70871, {	-- Iskaaran Fishing Net
					["minReputation"] = { FACTION_ISKAARA_TUSKARR, 5 },
					["provider"] = { "n", 195935 },	-- Tavio
					["coord"] = { 12.8, 49.2, THE_AZURE_SPAN },
					["g"] = {
						i(199925),	-- Stone With Hole
						i(199924),	-- Strong Sea Kelp
					},
				}),
				q(72584, {	-- Setting Your Very Own Net
					["minReputation"] = { FACTION_ISKAARA_TUSKARR, 5 },
					["sourceQuests"] = { 70871 },	-- Iskaaran Fishing Net
					["provider"] = { "n", 195935 },	-- Tavio
					["coord"] = { 12.8, 49.2, THE_AZURE_SPAN },
				}),
				------ RENOWN 6 ------
				q(70942, {	-- Highland Fishing
					["minReputation"] = { FACTION_ISKAARA_TUSKARR, 6 },
					["provider"] = { "n", 195935 },	-- Tavio
					["coord"] = { 12.8, 49.2, THE_AZURE_SPAN },
				}),
				------ RENOWN 7 ------
				q(70943, {	-- Harpooning
					["minReputation"] = { FACTION_ISKAARA_TUSKARR, 7 },
					["provider"] = { "n", 195935 },	-- Tavio
					["coord"] = { 12.8, 49.2, THE_AZURE_SPAN },
				}),
				------ RENOWN 10 ------
				q(70944, {	-- Ice Fishing
					["minReputation"] = { FACTION_ISKAARA_TUSKARR, 10 },
					["provider"] = { "n", 195935 },	-- Tavio
					["coord"] = { 12.8, 49.2, THE_AZURE_SPAN },
				}),
				------ RENOWN 13 ------
				q(70945, {	-- Netting More
					["minReputation"] = { FACTION_ISKAARA_TUSKARR, 13 },
					["provider"] = { "n", 195935 },	-- Tavio
					["coord"] = { 12.8, 49.2, THE_AZURE_SPAN },
				}),
				------ RENOWN 15 ------
				q(70948, {	-- Hook, Line, and Swelter!
					["minReputation"] = { FACTION_ISKAARA_TUSKARR, 15 },
					["provider"] = { "n", 195935 },	-- Tavio
					["coord"] = { 12.8, 49.2, THE_AZURE_SPAN },
				}),
				------ RENOWN 18 ------
				q(70950, {	-- Fishy Entertainment
					["minReputation"] = { FACTION_ISKAARA_TUSKARR, 18 },
					["provider"] = { "n", 195935 },	-- Tavio
					["coord"] = { 12.8, 49.2, THE_AZURE_SPAN },
				}),
				------ RENOWN 27 ------
				q(70952, {	-- Abandoned... or Hidden Caches
					["minReputation"] = { FACTION_ISKAARA_TUSKARR, 27 },
					["provider"] = { "n", 195935 },	-- Tavio
					["coord"] = { 12.8, 49.2, THE_AZURE_SPAN },
				}),
			}),
			n(QUESTS, sharedData({
				["minReputation"] = { FACTION_ISKAARA_TUSKARR, 4 },
				["isDaily"] = true,
			}, {
					-- The Waking Shores --
				q(70438, {	-- Flying Fish
					["provider"] = { "n", 195338 },	-- Fisherman Pasqaa
					["coord"] = { 63.7, 76.5, THE_WAKING_SHORES },
					["g"] = {
						i(198855),	-- Throw Net
					},
				}),
				q(70450, {	-- Otter Devastation
					["provider"] = { "n", 195444 },	-- Brix Rocketcast
					["coord"] = { 63.6, 75, THE_WAKING_SHORES },
				}),
				q(71194, {	-- Frogs of Fire
					["provider"] = { "n", 198767 },	-- Explorative Fisher
					["coord"] = { 34.5, 65.2, THE_WAKING_SHORES },
				}),
				q(72075, {	-- Hot Stock
					["provider"] = { "n", 198767 },	-- Explorative Fisher
					["coord"] = { 34.5, 65.2, THE_WAKING_SHORES },
					["g"] = {
						i(198855),	-- Throw Net
					},
				}),
					-- Ohn'Ahran Plains --
				q(72072, {	-- Dragonsprings Drop
					["provider"] = { "n", 198766 },	-- Thrifty Fisher
					["coord"] = { 80.8, 78.4, OHNAHRAN_PLAINS },
					["g"] = {
						i(198855),	-- Throw Net
					},
				}),
				q(71192, {	-- Predator Control
					["provider"] = { "n", 198766 },	-- Thrifty Fisher
					["coord"] = { 80.8, 78.4, OHNAHRAN_PLAINS },
				}),
					-- The Azure Span --
				q(71191, {	-- Net Worth
					["provider"] = { "n", 197700 },	-- Gruff Fisher
					["coord"] = { 58.6, 34.4, OHNAHRAN_PLAINS },
					["g"] = {
						i(200646),	-- Gruff Fisher's Net (QI!)
					},
				}),
				q(72069, {	-- Subglacial Refill
					["provider"] = { "n", 197700 },	-- Gruff Fisher
					["coord"] = { 58.6, 34.4, OHNAHRAN_PLAINS },
				}),
					-- Thaldraszus
				q(71193, {	-- Underwater Menace
					["provider"] = { "n", 197597 },	-- Cautious Fisher
					["coord"] = { 57.2, 65.3, THALDRASZUS },
					["g"] = {
						i(200667),	-- Grim Morsel (QI!)
					},
				}),
				q(72074, {	-- Highland Habitat
					["provider"] = { "n", 197597 },	-- Cautious Fisher
					["coord"] = { 57.2, 65.3, THALDRASZUS },
				}),
					-- Forbidden Reach
				q(73226, {	-- Dragonskull Shoal
					["provider"] = { "n", 200947 },	-- Reclusive Fisher
					["coord"] = { 74.1, 40.5, THE_FORBIDDEN_REACH },
					["g"] = {
						i(198855),	-- Throw Net
					},
				}),
			})),
			n(QUESTS, sharedData({
				["minReputation"] = { FACTION_ISKAARA_TUSKARR, 4 },
				["providers"] = {
					{ "n", 197645 },	-- Daring Fisher
					{ "n", 194584 },	-- Khuri
					{ "n", 196840 },	-- Young Quickhands
				},
				["coords"] = {
					{ 63.3, 75.8, THE_WAKING_SHORES },
					{ 81.6, 78.4, OHNAHRAN_PLAINS },
					{ 58.8, 34.8, THE_AZURE_SPAN },
					{ 56.8, 64.8, THALDRASZUS },
					{ 74.2, 41.4, THE_FORBIDDEN_REACH },
				},
				["isRepeatable"] = true,
				["sym"] = {{"select","achievementID",
					16550,	-- Giving Back to Nature
					16552,	-- Giving Even More Back to Nature
					16551,	-- Giving More Back to Nature
				}},
			}, {
				q(70201, {	-- Catch and Release: Aileron Seamoth
					["cost"] = {{"i",194967,20}},	-- Aileron Seamoth
				}),
				q(70202, {	-- Catch and Release: Cerulean Spinefish
					["cost"] = {{"i",194968,20}},	-- Cerulean Spinefish
				}),
				q(70935, {	-- Catch and Release: Islefin Dorado
					["cost"] = {{"i",194970,20}},	-- Islefin Dorado
				}),
				q(70199, {	-- Catch and Release: Scalebelly Mackerel
					["cost"] = {{"i",194730,20}},	-- Scalebelly Mackerel
				}),
				q(70203, {	-- Catch and Release: Temporal Dragonhead
					["cost"] = {{"i",194969,20}},	-- Temporal Dragonhead
				}),
				q(70200, {	-- Catch and Release: Thousandbite Piranha
					["cost"] = {{"i",194966,20}},	-- Thousandbite Piranha
				}),
			})),
			n(QUESTS, sharedData({
				["minReputation"] = { FACTION_ISKAARA_TUSKARR, 13 },
				["provider"] = { "n", 195935 },	-- Tavio
				["coord"] = { 12.8, 49.1, THE_AZURE_SPAN },
				["isRepeatable"] = true,
			}, {
				q(72785),	-- Contribute Supplies: Draconium Nugget
				q(72786),	-- Contribue Supplies: Strong Seavine
				q(72787),	-- Contribute Supplies: Battered Imbu-made Net
				q(72788),	-- Contribue Supplies: Irontree Branch
				q(72789),	-- Contribue Supplies: Salinated Serevite
				q(72790),	-- Contribute Supplies: Khaz'gorite-infused Resin
				q(72791),	-- Contribute Supplies: Khaz'gorite Wire
			})),
			prof(TUSKARR_FISHING_GEAR, sharedData({
				-- If you want to touch this specific file, check with contributor chat before.
				["requireSkill"] = FISHING,	-- Minimum 25, but it shows in the tooltip
			},{
				["crs"] = { 195935 },
				["coord"] = { 12.8, 49.2, THE_AZURE_SPAN },
				["g"] = {
					filter(RECIPES, sharedData({ ["u"] = TRAINING }, {
						r(388251),	-- Braided Seavine Harpoon Rope
						r(388253),	-- Dense Draconium Net Weights
						r(388255),	-- Double Imbu Knot
						r(388252),	-- Draconium Net Weights
						r(387827),	-- Flying Fish Bone Charm
						r(388254),	-- Imbu Knot
						r(387836),	-- Irontree Harpoon Handle
						r(387828),	-- Iskaaran Fishing Net
						r(387831),	-- Iskaaran Harpoon
						r(387832),	-- Iskaaran Ice Axe
						r(388249),	-- Jagged Serevite Harpoon Head
						r(387833),	-- Polished Basalt Bracelet
						r(387594),	-- Reinforced Irontree Harpoon Handle
						r(388250),	-- Seavine Harpoon Rope
						r(387375),	-- Serevite Harpoon Head
					})),
					-- These "Recipes" show as learned, but when you have learned them, they dissapear causing ATT to think you no longer have them learned.
					-- Commented out spellID due to odd use case where players who completed the upgrades/crafting and could no longer open the crafting window can't re-cache.
					i(199847, {	-- Braided Seavine Harpoon Rope
						--["spellID"] = 388251,	-- Braided Seavine Harpoon Rope
						["questID"] = 70799,	-- Triggered after crafting 'Braided Seavine Harpoon Rope'
						["cost"] = {
							{ "i", 200081, 6 },	-- 6x Strong Seavine
							{ "i", 200086, 1 },	-- 1x Khaz'gorite-infused Resin
						},
					}),
					i(199849, {	-- Dense Draconium Net Weight
						--["spellID"] = 388253,	-- Dense Draconium Net Weights
						["questID"] = 70801,	-- Triggered after crafting 'Dense Draconium Net Weights'
						["cost"] = {
							{ "i", 200080, 6 },	-- 6x Draconium Nugget
							{ "i", 200085, 1 },	-- 1x Khaz'gorite Wire
						},
					}),
					i(199851, {	-- Double Imbu Knot
						--["spellID"] = 388255,	-- Double Imbu Knot
						["questID"] = 70803,	-- Triggered after crafting 'Double Imbu Knot'
						["cost"] = {
							{ "i", 200082, 6 },	-- 6x Battered Imbu-made Net
							{ "i", 200085, 1 },	-- 1x Khaz'gorite Wire
						},
					}),
					i(199848, {	-- Draconium Net Weights
						--["spellID"] = 388252,	-- Draconium Net Weights
						["questID"] = 70800,	-- Triggered after crafting 'Draconium Net Weights'
						["cost"] = {
							{ "i", 200080, 3 },	-- 3x Draconium Nugget
						},
					}),
					i(199694, {	-- Flying Fish Bone Charm
						--["spellID"] = 387827,	-- Flying Fish Bone Charm
						["questID"] = 75642,	-- Triggered after crafting 'Flying Fish Bone Charm'
						["cost"] = {
							{ "i", 200075, 1 },	-- 1x Flying Fish Bones
						},
					}),
					i(199850, {	-- Imbu Knot
						--["spellID"] = 388254,	-- Imbu Knot
						["questID"] = 70802,	-- Triggered after crafting 'Imbu Knot'
						["cost"] = {
							{ "i", 200082, 3 },	-- 3x Battered Imbu-made Net
						},
					}),
					i(199698, {	-- Irontree Harpoon Handle
						--["spellID"] = 387836,	-- Irontree Harpoon Handle
						["questID"] = 70794,	-- Triggered after crafting 'Irontree Harpoon Handle'
						["cost"] = {
							{ "i", 200083, 3 },	-- 3x Irontree Branch
						},
					}),
					i(199695, {	-- Iskaaran Fishing Net
						--["spellID"] = 387828,	-- Iskaaran Fishing Net
						["questID"] = 70793,	-- Triggered after crafting 'Iskaaran Fishing Net'
						["cost"] = {
							{ "i", 199925, 2 },	-- 2x Stone With Hole
							{ "i", 199924, 3 },	-- 3x Strong Sea Kelp
						},
					}),
					i(194510, {	-- Iskaaran Harpoon
						--["spellID"] = 387831,	-- Iskaaran Harpoon
						["questID"] = 70792,	-- Triggered after crafting 'Iskaaran Harpoon'
						["cost"] = {
							{ "i", 200076, 1 },	-- 1x Harpoon Head
							{ "i", 198070, 1 },	-- 1x Tattered Seavine
							{ "i", 200077, 1 },	-- 1x Wooden Pole
						},
					}),
					i(199696, {	-- Iskaaran Ice Axe
						--["spellID"] = 387832,	-- Iskaaran Ice Axe
						["questID"] = 67141,	-- Triggered after crafting 'Iskaaran Ice Axe'
						["cost"] = {
							{ "i", 200078, 1 },	-- 1x Pickaxe Blade
						},
					}),
					i(199845, {	-- Jagged Serevite Harpoon Head
						--["spellID"] = 388249,	-- Jagged Serevite Harpoon Head
						["questID"] = 70797,	-- Triggered after crafting 'Jagged Serevite Harpoon Head'
						["cost"] = {
							{ "i", 200084, 6 },	-- 6x Salinated Serevite
							{ "i", 200086, 1 },	-- 1x Khaz'gorite-infused Resin
						},
					}),
					i(199697, {	-- Polished Basalt Bracelet
						--["spellID"] = 387833,	-- Polished Basalt Bracelet
						["questID"] = 67140,	-- Triggered after crafting 'Polished Basalt Bracelet'
						["cost"] = {
							{ "i", 200079, 3 },	-- 3x Sea-Polished Basalt
						},
					}),
					i(199641, {	-- Reinforced Irontree Harpoon Handle
						--["spellID"] = 387594,	-- Reinforced Irontree Harpoon Handle
						["questID"] = 70795,	-- Triggered after crafting 'Reinforced Irontree Harpoon Handle'
						["cost"] = {
							{ "i", 200083, 6 },	-- 6x Irontree Branch
							{ "i", 200086, 1 },	-- 1x Khaz'gorite-infused Resin
						},
					}),
					i(199846, {	-- Seavine Harpoon Rope
						--["spellID"] = 388250,	-- Seavine Harpoon Rope
						["questID"] = 70798,	-- Triggered after crafting 'Seavine Harpoon Rope'
						["cost"] = {
							{ "i", 200081, 3 },	-- 3x Strong Seavine
						},
					}),
					i(199844, {	-- Serevite Harpoon Head
						--["spellID"] = 387375,	-- Serevite Harpoon Head
						["questID"] = 70796,	-- Triggered after crafting 'Serevite Harpoon Head'
						["cost"] = {
							{ "i", 200084, 3 },	-- 3x Salinated Serevite
						},
					}),
				},
			})),
			n(RARES, sharedData({
				["sharedDescription"] = "Chance to spawn after using 5 |cffffffffOminous Conches|r at specific |cffffffffLarge Lunker Sighting|r Locations.\nWhich Lunker Sighting is up changes every week & if there is no fish icon, the pool is not up and you cannot spawn a Lunker at that location.",
				["cost"] = { { "i", 194701, 5 } },	-- 5x Ominous Conch
				["isDaily"] = true,
				["g"] = {
					i(200086),	-- Khaz'gorite-Infused Resin
				},
			},{
				n(197411, {	-- Astray Splasher <Lunker>
					["coords"] = {
						{ 57.2, 65.6, THALDRASZUS },
						{ 81.0, 77.8, OHNAHRAN_PLAINS },
					},
					["questID"] = 74057,
				}),
				n(193735, {	-- Moth'go Deeploom <Lunker>
					["coord"] = { 65.6, 73.8, THE_WAKING_SHORES },
					["questID"] = 74068,
				}),
				n(197371, {	-- Ravenous Tundra Bear <Lunker>
					["coord"] = { 58.8, 32.6, THE_AZURE_SPAN },
					["questID"] = 73891,
				}),
				n(193710, {	-- Seereel, the Spring <Lunker>
					["coord"] = { 65.6, 73.8, THE_WAKING_SHORES },
					["questID"] = 74074,
				}),
				n(193706, {	-- Snufflegust <Lunker>
					["coord"] = { 58.6, 32.4, THE_AZURE_SPAN },
					["questID"] = 74080,
				}),
				n(193708, {	-- Skald the Impaler <Lunker>
					["coord"] = { 33.8, 64.4, THE_WAKING_SHORES },
					["questID"] = 74078,
					["g"] = {
						i(200086),	-- Khaz'gorite-Infused Resin
						i(200218, {	-- Charred Fishing Pole
							--["collectible"] = true,  -- Changed flag from false to true so that it can be collected.  Was able to collect with SS June 21, 2024
							--if someone able to cache it - add description, please
						}),
					},
				}),
				n(193634, {	-- Swog'ranka <Lunker>
					["coord"] = { 65.6, 73.8, THE_WAKING_SHORES },
					["questID"] = 74084,
				}),
			})),
			n(REWARDS, {
				["maps"] = {
					OHNAHRAN_PLAINS,
					THALDRASZUS,
					THE_AZURE_SPAN,
					THE_WAKING_SHORES,
				},
				["groups"] = {
					i(200082, {	-- Battered Imbu-made Net
						["description"] = "Obtained from fishing in Prismatic Leaper Schools, Overheated Magma Thresher Pools or Deep Ice Fishing Holes.",
						["providers"] = {
							{ "o", 377938 },	-- Prismatic Leaper School
							{ "o", 382180 },	-- Overheated Magma Thresher Pool
							{ "n", 197596 },	-- Deep Ice Fishing Hole
						},
					}),
					i(200080, {	-- Draconium Nugget
						["description"] = "Obtained from fishing in Prismatic Leaper Schools, Overheated Magma Thresher Pools or Deep Ice Fishing Holes.",
						["providers"] = {
							{ "o", 377938 },	-- Prismatic Leaper School
							{ "o", 382180 },	-- Overheated Magma Thresher Pool
							{ "n", 197596 },	-- Deep Ice Fishing Hole
						},
					}),
					i(200081, {	-- Hardened Seavine
						["description"] = "Obtained from fishing in Prismatic Leaper Schools, Overheated Magma Thresher Pools or Deep Ice Fishing Holes.",
						["providers"] = {
							{ "o", 377938 },	-- Prismatic Leaper School
							{ "o", 382180 },	-- Overheated Magma Thresher Pool
							{ "n", 197596 },	-- Deep Ice Fishing Hole
						},
					}),
					i(200083, {	-- Irontree Branch
						["description"] = "Obtained from fishing in Prismatic Leaper Schools, Overheated Magma Thresher Pools or Deep Ice Fishing Holes.",
						["providers"] = {
							{ "o", 377938 },	-- Prismatic Leaper School
							{ "o", 382180 },	-- Overheated Magma Thresher Pool
							{ "n", 197596 },	-- Deep Ice Fishing Hole
						},
					}),
					i(200086, {	-- Khaz'gorite-Infused Resin
						["description"] = "Obtained from Rares summoned by using Ominous Conch at Large Lunker Sightings.",
						["providers"] = {
							{ "n", 193706 },	-- Snufflegust
							{ "n", 197411 },	-- Astray Splasher
							{ "n", 193634 },	-- Swog'Ranka
							{ "n", 193708 },	-- Skald the Impaler
							{ "n", 193710 },	-- Seereel, the Spring
							{ "n", 193735 },	-- Moth'go Deeploom
							{ "n", 197371 },	-- Ravenous Tundra Bear
						},
					}),
					i(200085, {	-- Khaz'gorite Wire
						["description"] = "Obtained from Full Tuskarr Fishing Nets.",
						["providers"] = {
							{ "o", 382071 },	-- Full Fishing Net
							{ "o", 379314 },	-- Full Fishing Net
							{ "o", 381069 },	-- Full Fishing Net
						},
					}),
					i(200084, {	-- Salinated Serevite
						["description"] = "Obtained from fishing in Prismatic Leaper Schools, Overheated Magma Thresher Pools or Deep Ice Fishing Holes.",
						["providers"] = {
							{ "o", 377938 },	-- Prismatic Leaper School
							{ "o", 382180 },	-- Overheated Magma Thresher Pool
							{ "n", 197596 },	-- Deep Ice Fishing Hole
							--[[ Never got one from it and wowhead doesnt have data either. If confirmed, re-add them ~Gold Jan 2023
							{ "o", 382071 },	-- Full Fishing Net
							{ "o", 379314 },	-- Full Fishing Net
							{ "o", 381069 },	-- Full Fishing Net
							--]]
						},
					}),
					o(381514, {	-- Sea-Polished Basalt
						-- i didn't save the coords, and wowhead doesn't know about it. probably need some fine-tuning and additional spawn locations, then remove description
						["description"] = "Near landing points for Alliance/Horde in The Waking Shores. Rough coordinates.",
						["coords"] = {
							{ 80.0, 27.0, THE_WAKING_SHORES },
						},
						["g"] = {
							i(200079),	-- Sea-Polished Basalt
						},
					}),
					o(381512, {	-- Wooden Pole
						["description"] = "Used to craft Iskaaran Harpoon.",
						["coord"] = { 15.6, 44.5, THE_AZURE_SPAN },
						["g"] = {
							i(200077),	-- Wooden Pole
						},
					}),
				},
			}),
			n(SPECIAL, sharedData({
				["sharedDescription"] = "Chance to spawn after using 5 |cffffffffOminous Conches|r at specific |cffffffffLarge Lunker Sighting|r Locations.\nWhich Lunker Sighting is up changes every week & if there is no fish icon, the pool is not up and you cannot spawn a Thresher at that location.",
				["cost"] = {{"i",194701,5}},	-- 5x Ominous Conch
			},{
				n(192919, {	-- Gigantic Thresher <Lunker>
					["coords"] = {
						{ 65.8, 74.8, THE_WAKING_SHORES },
						{ 57.2, 65.4, THALDRASZUS },
					},
					["groups"] = {
						i(198438, {	-- Draconic Recipe in a Bottle
							["sym"] = {{ "fill" }},	-- simply fill this item
						}),
					},
				}),
				n(191951, {	-- Massive Thresher <Lunker>
					["coords"] = {
						{ 65.8, 74.8, THE_WAKING_SHORES },
						{ 57.2, 65.4, THALDRASZUS },
						{ 13.6, 48.6, THE_AZURE_SPAN },
					},
					["groups"] = {
						i(198438, {	-- Draconic Recipe in a Bottle
							["sym"] = {{ "fill" }},	-- simply fill this item
						}),
					},
				}),
			})),
			o(383732, {	-- Tuskarr Tacklebox
				["maps"] = { THE_WAKING_SHORES, OHNAHRAN_PLAINS, THE_AZURE_SPAN, THALDRASZUS },
				["groups"] = {
					i(199338),	-- Copper Coin of the Isles
					i(198438, {	-- Draconic Recipe in a Bottle
						["sym"] = {{ "fill" }},	-- simply fill this item
					}),
					i(199340),	-- Gold Coin of the Isles
					i(199339),	-- Silver Coin of the Isles
				},
			}),
		})),
	}),
})));
root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.DF, bubbleDown({ ["timeline"] = { ADDED_10_0_2_LAUNCH } }, {
	n(ISKAARA_TUSKARR, {
		n(ISKAARA_FISHING, {
			n(QUESTS, {
				q(74370),	-- First weekly completion of 'Contribute Supplies: Battered Imbu-made Net'
				q(74369),	-- First weekly completion of 'Contribute Supplies: Salinated Serevite'
				q(74368),	-- First weekly completion of 'Contribute Supplies: Khaz'gorite-infused Resin'
				q(74371),	-- First weekly completion of 'Contribute Supplies: Khaz'gorite Wire'
				q(74372),	-- First weekly completion of 'Contribute Supplies: Strong Seavine'
				q(74367),	-- First weekly completion of 'Contribute Supplies: Irontree Branch'
				q(74373),	-- First weekly completion of 'Contribute Supplies: Draconium Nugget'
				--
				q(72828),	-- First weekly completion of 'Catch and Release: Scalebell Mackerel' (70199)
				q(72827),	-- First weekly completion of 'Catch and Release: Thousandbite Piranha' (70200)
				q(72826),	-- First weekly completion of 'Catch and Release: Aileron Seamoth' (70201)
				q(72825),	-- First weekly completion of 'Catch and Release: Cerulean Spinefish' (70202)
				q(72824),	-- First weekly completion of 'Catch and Release: Temporal Dragonhead' (70203)
				q(72823),	-- First weekly completion of 'Catch and Release: Islefin Dorado' (70935)
				q(67139),	-- Was tied to Flying Fish Charms but not the spellID causing issues for players
			}),
		}),
	}),
})));