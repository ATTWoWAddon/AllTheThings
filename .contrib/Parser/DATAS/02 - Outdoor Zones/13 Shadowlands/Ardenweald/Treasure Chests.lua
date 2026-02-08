---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(SHADOWLANDS, bubbleDown({ ["timeline"] = { ADDED_9_0_2_LAUNCH } }, {
	m(ARDENWEALD, {
		n(TREASURES, {
			o(364345, {	-- A Faintly Glowing Seed
				["description"] = "Can be found anywhere in Ardenweald",
				["groups"] = {
					i(183902),	-- A Faintly Glowing Seed
				},
			}),
			n(171156, {		-- Aerto <Grove Ranger>
				["coord"] = { 55.9, 21.0, ARDENWEALD },
				["questID"] = 61072,
				["groups"] = {
					i(180630),	-- Gorm Harrier (PET!)
				},
			}),
			o(354646, {		-- Ancient Cloudfeather Egg
				["description"] = "The path to get up to the treasure starts at |cFFFFFFFF50.6, 38.8|r.",
				["coord"] = { 52.9, 37.2, ARDENWEALD },
				["questID"] = 61065,
				["groups"] = {
					i(180642),	-- Cloudfeather Fledgling (PET!)
				},
			}),
			o(355041, {		-- Cache of the Moon
				["description"] = "Combine the |cff1eff00Diary of the Night|r, |cff1eff00Gardener's Basket|r, |cff1eff00Gardener's Hammer|r, |cff1eff00Gardener's Flute|r, and |cff1eff00Gardener's Wand|r to create |cff0070ddTwinklestar's Gardening Toolkit|r. Take the toolkit to Twinklestar at |cFFFFFFFF63.8, 37.5|r. He will grant you the \"Moonsight\" buff, allowing you to see the treasure behind him.",
				["crs"] = { 171349 },	-- Twinklestar
				["coord"] = { 63.8, 37.5, ARDENWEALD },	-- Twinklestar & Treasure
				["questID"] = 61074,
				["cost"] = { { "i", 180753, 1 } },	-- Twinklestar's Gardening Toolkit
				["groups"] = {
					i(180759, {	-- Diary of the Night
						["coord"] = { 39.0, 56.9, ARDENWEALD },
					}),
					i(180758, {	-- Gardener's Basket
						["coord"] = { 40.3, 52.6, ARDENWEALD },
					}),
					i(180756, {	-- Gardener's Flute
						["coord"] = { 38.4, 58.0, ARDENWEALD },
					}),
					i(180754, {	-- Gardener's Hammer
						["coord"] = { 39.7, 54.3, ARDENWEALD },
					}),
					i(180757, {	-- Gardener's Wand
						["coord"] = { 38.8, 60.1, ARDENWEALD },
					}),
					i(180753, {		-- Twinklestar's Gardening Toolkit
						["coord"] = { 63.8, 37.5, ARDENWEALD },
						["cost"] = {
							{ "i", 180759, 1 },	-- Diary of the Night
							{ "i", 180758, 1 },	-- Gardener's Basket
							{ "i", 180756, 1 },	-- Gardener's Flute
							{ "i", 180754, 1 },	-- Gardener's Hammer
							{ "i", 180757, 1 },	-- Gardener's Wand
						},
					}),
					i(180731),	-- Wildseed Cradle (MOUNT!)
				},
			}),
			o(355000, {		-- Cache of the Night
				["description"] = "You need to dispel the barrier with |cff0070ddFae Dreamcatcher|r, which you create by combining |cff1eff00Enchanted Bough|r, and |cff1eff00Fae Ornament|r, and |cff1eff00Raw Dream Fibers|r.",
				["coord"] = { 36.1, 65.2, ARDENWEALD },
				["questID"] = 61110,
				["cost"] = { { "i", 180652, 1 } },	-- Fae Dreamcatcher
				["groups"] = {
					i(179549),	-- Nightwillow Cudgel
					i(180637),	-- Starry Dreamfoal (PET!)
				},
			}),
			o(354648, {		-- Darkreach Supplies
				["description"] = "Use the Mushroom at |cFFFFFFFF37.6, 61.5|r and jump into the broken tree.\n\nThis treasure has a chance to contain any of the BoEs that can drop from Decayed Husks and Hunter Vivanna.",
				["coords"] = {
					{ 37.6, 61.5, ARDENWEALD },	-- Mushroom
					{ 36.1, 65.2, ARDENWEALD },	-- Treasure
				},
				["questID"] = 61068,
			}),
			o_repeated({	-- Decayed Husk
				i(180163),	-- Blackthorn Harvester
				i(180143),	-- Darkreach Hacker
				i(179593),	-- Darkreach Mask
				i(180155),	-- Darkreach Splitter
				i(180142),	-- Deadstone Hatchet
				i(180153),	-- Drustwrought Executioner
				i(180162),	-- Drustwrought Scythe
				i(180156),	-- Witherscorn Greataxe
				i(179594),	-- Witherscorn Guise
				i(180145),	-- Witherscorn Handaxe
				i(180165),	-- Witherscorn Reaper
				-- Objects
				o(353306, {	-- Decayed Husk
					["coord"] = { 54.4, 49.7, ARDENWEALD },
					["questID"] = 60672,
					["isDaily"] = true,
				}),
				o(353323, {	-- Decayed Husk
					["coord"] = { 42.4, 31.2, ARDENWEALD },
					["questID"] = 60715,
					["isDaily"] = true,
				}),
				o(353324, {	-- Decayed Husk
					["coord"] = { 72.8, 28.9, ARDENWEALD },
					["questID"] = 60714,
					["isDaily"] = true,
				}),
				o(353326, {	-- Decayed Husk
					["coord"] = { 66.6, 53.2, ARDENWEALD },
					["questID"] = 60711,
					["isDaily"] = true,
				}),
				o(353327, {	-- Decayed Husk
					["description"] = "The cave entrance is at |cFFFFFFFF54.0, 76.3|r.",
					["coord"] = { 53.3, 78.4, ARDENWEALD },
					["questID"] = 60710,
					["isDaily"] = true,
				}),
			}),
			n(171484, {		-- Desiccated Moth
				["description"] = "Collect Aromatic Flowers from |cFFFFFFFF31.7, 32.5|r, jump onto the tree with the Bounding Shroom at |cFFFFFFFF41.4, 31.6|r, and burn the flowers.",
				["coords"] = {
					{ 31.7, 32.5, ARDENWEALD },	-- Flowers
					{ 41.4, 31.6, ARDENWEALD },	-- Mushroom
					{ 42.0, 32.6, ARDENWEALD },	-- Treasure
				},
				["questID"] = 61147,
				["groups"] = {
					i(180640),	-- Amber Glitterwing (PET!)
					i(180784),	-- Aromatic Flowers
				},
			}),
			o(354650, {		-- Dreamsong Heart
				["description"] = "Use the Bounding Shroom at |cFFFFFFFF38.0, 36.2|r to get to the top of the tree.",
				["crs"] = { 174911 },	-- Bounding Shroom
				["coord"] = { 37.6, 37.0, ARDENWEALD },
				["questID"] = 61070,
				["groups"] = {
					i(179510),	-- Dreamsong Warglaive
				},
			}),
			o(354662, {		-- Elusive Faerie Cache
				["description"] = "Use the Lamp at |cFFFFFFFF46.4, 70.1|r and open the chest while you have the debuff.",
				["modelScale"] = 0.5,
				["crs"] = { 171475 },	-- Elusive Faerie Cache <Obscurred in darkness.>
				["coords"] = {
					{ 46.5, 70.1, ARDENWEALD },	-- Lamp
					{ 44.8, 75.8, ARDENWEALD },	-- Treasure
				},
				["questID"] = 61175,
				["groups"] = {
					i(179512),	-- Dreamsong Saber
					i(184490),	-- Fae Pipes (TOY!)
				},
			}),
			o(355020, {	-- Enchanted Bough
				["description"] = "Under the platform with the big chair.",
				["coord"] = { 42.4, 46.7, ARDENWEALD },
				["groups"] = {
					i(180656),	-- Enchanted Bough
				},
			}),
			o(353233, {		-- Enchanted Chest
				["coords"] = {
					{ 19.6, 58.9, ARDENWEALD },
					{ 22.5, 61.9, ARDENWEALD },
					{ 28.2, 61.6, ARDENWEALD },
					{ 30.1, 60.5, ARDENWEALD },
					{ 31.1, 53.4, ARDENWEALD },
				},
				["questID"] = 60664,
				["isDaily"] = true,
			}),
			o(354651, {		-- Enchanted Dreamcatcher
				["coord"] = { 36.4, 25.0, ARDENWEALD },
				["groups"] = {
					i(183129),	-- Anima-Laden Dreamcatcher
				},
			}),
			o(373460, bubbleDownSelf({ ["timeline"] = { ADDED_9_1_5 } }, {	-- Fae Net
				["coord"] = { 38.3, 36.8, ARDENWEALD },
				["groups"] = {
					i(187943),	-- Fae Net
				},
			})),
			o(355021, {	-- Fae Ornament
				["description"] = "On the tree platform.",
				["coord"] = { 51.5, 61.6, ARDENWEALD },
				["groups"] = {
					i(180654),	-- Fae Ornament
				},
			}),
			o_repeated({	-- Faerie Stash
				-- Rewards
				-- Objects
				o(353329, {	-- Faerie Stash
					["description"] = "Use the Bounding Shroom at |cFFFFFFFF32.7, 29.8|r to reach the treasure.",
					["coord"] = { 32.7, 30.0, ARDENWEALD },
					["questID"] = 60716,
					["isDaily"] = true,
				}),
				o(353330, {	-- Faerie Stash
					["description"] = "Use the Bounding Shroom at |cFFFFFFFF64.7, 23.4|r to reach the treasure.",
					["coord"] = { 65.3, 23.5, ARDENWEALD },
					["questID"] = 60717,
					["isDaily"] = true,
				}),
				o(353331, {	-- Faerie Stash
					["description"] = "Use the Bounding Shroom at |cFFFFFFFF39.9, 43.7|r to reach the treasure.",
					["coord"] = { 41.3, 44.7, ARDENWEALD },
					["questID"] = 60718,
					["isDaily"] = true,
				}),
				o(353332, {	-- Faerie Stash
					["description"] = "Use the Bounding Shroom at |cFFFFFFFF43.6, 22.9|r to reach the treasure.",
					["coord"] = { 42.5, 21.8, ARDENWEALD },
					["questID"] = 60720,
					["isDaily"] = true,
				}),
				o(353333, {	-- Faerie Stash
					["description"] = "Use the Bounding Shroom at |cFFFFFFFF42.7, 66.1|r to reach the treasure.",
					["coord"] = { 42.5, 66.8, ARDENWEALD },
					["questID"] = 60719,
					["isDaily"] = true,
				}),
			}),
			o(354652, {		-- Faerie Trove
				["description"] = "Underneath the platform.",
				["coord"] = { 49.7, 55.9, ARDENWEALD },
				["questID"] = 61073,
				["groups"] = {
					i(182673),	-- Shimmerbough Hoarder (PET!)
				},
			}),
			o(355355, {		-- Harmonic Chest
				["description"] = "You need two people to open the chest. One person needs to play the harp and one needs to play the drums.",
				["coord"] = { 67.8, 34.6, ARDENWEALD },
				["questID"] = 61165,
				["groups"] = {
					i(184489),	-- Fae Harp (TOY!)
					i(179565),	-- Songwood Stem
				},
			}),
			o(354647, {		-- Hearty Dragon Plume
				["description"] = "The path to get up to the treasure starts at |cFFFFFFFF48.1, 39.0|r.\n\nFollow it up and to the left until you reach the beginning of the bridge at |cFFFFFFFF46.1, 39.1|r, and cross it to get to the ledge above the treasure. Any class should be able to safely make it down to the treasure with two jumps (or by using a Goblin Glider), but you can also use the feather found at |cFFFFFFFF48.9, 41.0|r to slow fall.",
				["coord"] = { 48.2, 39.2, ARDENWEALD },
				["questID"] = 61067,
				["groups"] = {
					i(182729),	-- Hearty Dragon Plume (TOY!)
				},
			}),
			o(354645, {		-- Lost Satchel
				["coord"] = { 48.2, 20.3, ARDENWEALD },
				["groups"] = {
					i(182731),	-- Satchel of Culexwood
				},
			}),
			o_repeated({	-- Lunarlight Pod
				-- Rewards
				-- Objects
				o(353683, {	-- Lunarlight Pod
					["description"] = "When you first get to the treasure, it is called |cFFFFFFFFDim Lunarlight Pod|r. To light it up and make it lootable, run through 5 nearby |cFFFFFFFFLunarlight Buds|r.\n\nYou can /tar the buds, so just run around in a circle close to the treasure and spam a target macro to find each one.",
					["coord"] = { 39.2, 54.4, ARDENWEALD },
					["questID"] = 60791,
					["isDaily"] = true,
					["groups"] = sharedData({["isDaily"] = true}, {
						n(170349,{	-- Lunarlight Bud
							["coord"] = { 38.8, 54.2, ARDENWEALD },
							["questID"] = 60809,
						}),
						n(170352,{	-- Lunarlight Bud
							["coord"] = { 38.9, 53.6, ARDENWEALD },
							["questID"] = 60806,
						}),
						n(170351,{	-- Lunarlight Bud
							["coord"] = { 39.2, 53.7, ARDENWEALD },
							["questID"] = 60807,
						}),
						n(170353,{	-- Lunarlight Bud
							["coord"] = { 39.7, 53.5, ARDENWEALD },
							["questID"] = 60805,
						}),
						n(170350,{	-- Lunarlight Bud
							["coord"] = { 39.5, 54.4, ARDENWEALD },
							["questID"] = 60808,
						}),
					}),
				}),
				o(353681, {	-- Lunarlight Pod
					["description"] = "When you first get to the treasure, it is called |cFFFFFFFFDim Lunarlight Pod|r. To light it up and make it lootable, run through 5 nearby |cFFFFFFFFLunarlight Buds|r.\n\nYou can /tar the buds, so just run around in a circle close to the treasure and spam a target macro to find each one.",
					["coord"] = { 48.0, 71.1, ARDENWEALD },
					["questID"] = 60790,
					["isDaily"] = true,
					["groups"] = sharedData({["isDaily"] = true}, {
						n(170346,{	-- Lunarlight Bud
							["coord"] = { 48.3, 71.5, ARDENWEALD },
							["questID"] = 60802,
						}),
						n(170345,{	-- Lunarlight Bud
							["coord"] = { 48.3, 71.2, ARDENWEALD },
							["questID"] = 60801,
						}),
						n(170347,{	-- Lunarlight Bud
							["coord"] = { 48.0, 70.2, ARDENWEALD },
							["questID"] = 60803,
						}),
						n(170344,{	-- Lunarlight Bud
							["coord"] = { 47.8, 71.0, ARDENWEALD },
							["questID"] = 60800,
						}),
						n(170348,{	-- Lunarlight Bud
							["coord"] = { 48.4, 70.0, ARDENWEALD },
							["questID"] = 60804,
						}),
					}),
				}),
				o(353684, {	-- Lunarlight Pod
					["description"] = "When you first get to the treasure, it is called |cFFFFFFFFDim Lunarlight Pod|r. To light it up and make it lootable, run through 5 nearby |cFFFFFFFFLunarlight Buds|r.\n\nYou can /tar the buds, so just run around in a circle close to the treasure and spam a target macro to find each one.",
					["coord"] = { 48.2, 34.9, ARDENWEALD },
					["questID"] = 60792,
					["isDaily"] = true,
				}),
				o(353685, {	-- Lunarlight Pod
					["description"] = "When you first get to the treasure, it is called |cFFFFFFFFDim Lunarlight Pod|r. To light it up and make it lootable, run through 5 nearby |cFFFFFFFFLunarlight Buds|r.\n\nYou can /tar the buds, so just run around in a circle close to the treasure and spam a target macro to find each one.",
					["coord"] = { 55.4, 38.6, ARDENWEALD },
					["questID"] = 60793,
					["isDaily"] = true,
					["groups"] = sharedData({["isDaily"] = true}, {
						n(170359,{	-- Lunarlight Bud
							["coord"] = { 55.2, 39.2, ARDENWEALD },
							["questID"] = 60819,
						}),
						n(170360,{	-- Lunarlight Bud
							["coord"] = { 56.1, 39.4, ARDENWEALD },
							["questID"] = 60818,
						}),
						n(170361,{	-- Lunarlight Bud
							["coord"] = { 55.3, 38.1, ARDENWEALD },
							["questID"] = 60817,
						}),
						n(170362,{	-- Lunarlight Bud
							["coord"] = { 56.1, 38.7, ARDENWEALD },
							["questID"] = 60816,
						}),
						n(170363,{	-- Lunarlight Bud
							["coord"] = { 55.7, 39.6, ARDENWEALD },
							["questID"] = 60815,
						}),
					}),
				}),
				o(353686, {	-- Lunarlight Pod
					["description"] = "When you first get to the treasure, it is called |cFFFFFFFFDim Lunarlight Pod|r. To light it up and make it lootable, run through 5 nearby |cFFFFFFFFLunarlight Buds|r.\n\nYou can /tar the buds, so just run around in a circle close to the treasure and spam a target macro to find each one.",
					["coord"] = { 61.2, 56.9, ARDENWEALD },
					["questID"] = 60794,
					["isDaily"] = true,
					["groups"] = sharedData({["isDaily"] = true}, {
						n(170368,{	-- Lunarlight Bud
							["coord"] = { 60.5, 56.4, ARDENWEALD },
							["questID"] = 60820,
						}),
						n(170367,{	-- Lunarlight Bud
							["coord"] = { 60.4, 57.3, ARDENWEALD },
							["questID"] = 60821,
						}),
						n(170366,{	-- Lunarlight Bud
							["coord"] = { 61.9, 56.8, ARDENWEALD },
							["questID"] = 60822,
						}),
						n(170365,{	-- Lunarlight Bud
							["coord"] = { 61.4, 56.3, ARDENWEALD },
							["questID"] = 60823,
						}),
						n(170364,{	-- Lunarlight Bud
							["coord"] = { 61.4, 57.5, ARDENWEALD },
							["questID"] = 60824,
						}),
					}),
				}),
			}),
			o(355019, {	-- Raw Dream Silk
				["description"] = "Hanging silk fibers at the back of the platform.",
				["coord"] = { 36.9, 29.8, ARDENWEALD },
				["groups"] = {
					i(180655),	-- Raw Dream Fibers
				},
			}),
			o(354911, {		-- Swollen Anima Seed
				["coord"] = { 76.6, 29.7, ARDENWEALD },
				["groups"] = {
					i(182730),	-- Swollen Anima Seed
				},
			}),
			n(170406, {		-- Wish Cricket
				["coords"] = {
					{ 29.1, 47.5, ARDENWEALD },
					{ 32.5, 38.1, ARDENWEALD },
					{ 53.6, 60.0, ARDENWEALD },
				},
				["questID"] = 60829,
				["repeatable"] = true,
			}),
		}),
	}),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.SL, bubbleDownSelf({ ["timeline"] = { ADDED_9_0_2_LAUNCH } }, {
	m(SHADOWLANDS, {
		m(ARDENWEALD, {
			n(TREASURES, {
				-- Treasures of Ardenweald achievement
				q(61126),	-- Cache of the Moon - turning in the Twinklestar Gardening Tools
				q(61170),	-- Harmonic Chest - unlock trigger
				--
				q(60810),	-- \
				q(60811),	--  \
				q(60812),	--   running over Lunarlight Buds (somewhere in/near Glitterfall Basin) to light up Dim Lunarlight Pod and turn it into Lunarlight Pod (questID #60792)
				q(60813),	--  /
				q(60814),	-- /
			}),
		}),
	}),
})));
