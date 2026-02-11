-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

root(ROOTS.Instances, expansion(EXPANSION.DF, bubbleDown({ ["timeline"] = { ADDED_10_0_2_LAUNCH } }, {
	inst(1196, {	-- Brackenhide Hollow
		["coord"] = { 11.6, 48.8, THE_AZURE_SPAN },
		["maps"] = {
			2096,	-- Brackenhide Hollow
			2106,	-- Den of Decay
		},
		["groups"] = {
			n(ACHIEVEMENTS, {
				ach(16762, {	-- The Vegetarian Diet
					i(200631),	-- Happy Tuskarr Palooza (TOY!)
				}),
			}),
			n(QUESTS, {
				q(66211, {	-- Brackenhide Hollow: To the Source
					["sourceQuests"] = { 65849 },	-- To Iskaara
					["provider"] = { "n", 186480 },	-- Brena
					["coord"] = { 13.2, 49.6, THE_AZURE_SPAN },
					["groups"] = {
						i(193661),	-- Blightweaver's Clutches
						i(193671),	-- Bloodied Wedding Ring
						i(193666),	-- Tuskarr Bone Necklace
					},
				}),
			}),
			d(DIFFICULTY.DUNGEON.MULTI.NORMAL_PLUS, {
				e(2471, {	-- Hackclaw's War-Band
					["crs"] = {
						186124,	-- Gashtooth
						186122,	-- Rira Hackclaw
						186125,	-- Tricktotem
					},
					["groups"] = {
						i(193674),	-- Ancestral Stone Shaper
						i(193671),	-- Bloodied Wedding Ring
						i(193672),	-- Frenzying Signoll Flare
						i(193675),	-- Poached Kalu'ak Spear
						i(193673),	-- Ravenous Pursuer's Footwraps
					},
				}),
				e(2473, {	-- Treemouth
					["crs"] = { 186120 },	-- Treemouth
					["groups"] = {
						i(193654),	-- Ancient Rot Walkers
						i(193657),	-- Binders of the Moldering
						i(193658),	-- Crushing Bough of Deterioration
						i(193653),	-- Mask of Imperishable Leaves
						i(193655),	-- Rooted Shoulders of Putrefaction
						i(193656),	-- Swollen Bark Clasp
						i(193652),	-- Treemouth's Festering Splinter
					},
				}),
				e(2472, {	-- Gutshot
					["crs"] = { 186116 },	-- Gutshot
					["groups"] = {
						i(193667),	-- Boastful Stalker's Epaulets
						i(193793),	-- Ferocious Hyena Hidebinders
						i(193670),	-- Gutshot's Trophy Hunter
						i(193669),	-- Trapmaster's Utility Belt
						i(193666),	-- Tuskarr Bone Necklace
					},
				}),
				e(2474, {	-- Decatriarch Wratheye
					["crs"] = { 186121 },	-- Decatriarch Wratheye
					["groups"] = {
						ach(16255),	-- Brackenhide Hollow
						i(193661),	-- Blight Weaver's Clutches
						i(193665),	-- Decatriarch's Bone Pestle
						i(193663),	-- Decay Mother's Wrathful Gaze
						i(193662),	-- Densified Ooze Tassets
						i(193660),	-- Idol of Pure Decay
						i(193664),	-- Rot-Carved Totemic Shank
						i(197396),	-- Renewed Proto-Drake: Skyterror Pattern (MM!)
						i(197598),	-- Windborne Velocidrake: Gray Hair (MM!)
					},
				}),
			}),
			d(DIFFICULTY.DUNGEON.MULTI.HEROIC_PLUS, {
				e(2474, {	-- Decatriarch Wratheye
					["crs"] = { 186121 },	-- Decatriarch Wratheye
					["groups"] = {
						ach(16256),	-- Heroic: Brackenhide Hollow
					},
				}),
			}),
			d(DIFFICULTY.DUNGEON.MYTHIC, {
				n(ACHIEVEMENTS, {
					ach(16110),	-- Subscribed to Hyena Facts
				}),
				e(2471, {	-- Hackclaw's War-Band
					["crs"] = {
						186124,	-- Gashtooth
						186122,	-- Rira Hackclaw
						186125,	-- Tricktotem
					},
					["groups"] = {
						ach(16296),	-- Growlbossify
					},
				}),
				e(2473, {	-- Treemouth
					["crs"] = { 186120 },	-- Treemouth
					["groups"] = {
						ach(16430),	-- All Bark, All Bite
					},
				}),
				e(2474, {	-- Decatriarch Wratheye
					["crs"] = { 186121 },	-- Decatriarch Wratheye
					["groups"] = {
						ach(16257),	-- Mythic: Brackenhide Hollow
						ach(17097),	-- Mythic: Brackenhide Hollow Guild Run
						ach(16404),	-- So You Can Kill This in a Way That Matters...
					},
				}),
			}),
		},
	})
})));
