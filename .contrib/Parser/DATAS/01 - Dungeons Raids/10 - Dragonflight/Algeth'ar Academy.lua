-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
root(ROOTS.Instances, expansion(EXPANSION.DF, bubbleDown({ ["timeline"] = { ADDED_10_0_2_LAUNCH } }, {
	inst(1201, {	-- Algeth'ar Academy
		["coord"] = { 58.3, 42.4, THALDRASZUS },
		["maps"] = {
			2097,	-- Algeth'ar Academy
			2098,	-- The Pitch
			2099,	-- Algeth'ar Academy
		},
		["groups"] = {
			n(QUESTS, {
				q(72193, {	-- The Algeth'ar Academy
					-- ["sourceQuests"] = {  },	--
					["provider"] = { "n", 187676 },	-- Kalecgos
					["coord"] = { 61.7, 36.2, VALDRAKKEN },
				}),
			}),
			n(TREASURES, {
				o(384370, {	-- Deliberately Delinquent Notes
					["description"] = "This Recipe is found near Overgrown Ancient in far left corner of the arena on a table with some strange flasks.",
					["groups"] = {
						i(198908),	-- Technique: Illusion Parchment: Love Charm (RECIPE!)
					},
				}),
			}),
			n(ZONE_DROPS, {
				i(194255),	-- Pattern: Amice of the Blue (RECIPE!)
				i(194256),	-- Pattern: Hood of Surging Time (RECIPE!)
				i(194491),	-- Plans: Frostfire Legguards of Preparation (RECIPE!)
				i(194492),	-- Plans: Unstable Frostfire Belt (RECIPE!)
			}),
			d(DIFFICULTY.DUNGEON.MULTI.NORMAL_PLUS, {
				e(2509, {	-- Vexamus
					["crs"] = {
						189668,	-- Professor Madormu
						195416,	-- Magic Book
						194181, -- Vexamus
					},
					["groups"] = {
						i(193708),	-- Platinum Star Band
						i(193711),	-- Spellbane Cutlass
						i(193710),	-- Spellboon Saber
						i(193709),	-- Vexamus' Expulsion Rod
					},
				}),
				e(2512, {	-- Overgrown Ancient
					["crs"] = { 196482 },	-- Overgrown Ancient
					["groups"] = {
						i(193716),	-- Algeth'ar Hedgecleaver
						i(193715),	-- Boots of Explosive Growth
						i(193713),	-- Experimental Safety Gloves
						i(193714),	-- Frenzyroot Cuffs
						i(193717),	-- Mystakra's Harvester
						i(193712),	-- Potion-Stained Cloak
					},
				}),
				e(2495, {	-- Crawth
					["crs"] = { 191736 },	-- Crawth
					["groups"] = {
						i(193722),	-- Azure Belt of Competition
						i(193720),	-- Bronze Challenger's Robe
						i(193719),	-- Dragon Games Equipment
						i(193718),	-- Emerald Coach's Whistle
						i(193723),	-- Obsidian Goaltending Spire
						i(193721),	-- Ruby Contestant's Gloves
					},
				}),
				e(2514, {	-- Echo of Doragosa
					["crs"] = { 190609 },	-- Echo of Doragosa
					["groups"] = {
						ach(16269),	-- Algeth'ar Academy
						i(193701),	-- Algeth'ar Puzzle Box
						i(193705),	-- Breastplate of Proven Knowledge
						i(193707),	-- Final Grade
						i(193703),	-- Organized Pontificator's Cap
						i(193704),	-- Scaled Commencement Spaulders
						i(193706),	-- Venerated Professor's Greaves
						i(197147),	-- Highland Drake: Heavy Scales (MM!)
						i(197112),	-- Highland Drake: Single Horned Head (MM!)
						i(198910),	-- Technique: Illusion Parchment: Shadow Orb (RECIPE!)
					},
				}),
			}),
			d(DIFFICULTY.DUNGEON.MULTI.HEROIC_PLUS, {
				e(2514, {	-- Echo of Doragosa
					["crs"] = { 190609 },	-- Echo of Doragosa
					["groups"] = {
						ach(16270),	-- Heroic: Algeth'ar Academy
					},
				}),
			}),
			d(DIFFICULTY.DUNGEON.MYTHIC, {
				e(2509, {	-- Vexamus
					["crs"] = {
						189668,	-- Professor Madormu
						195416,	-- Magic Book
						194181, -- Vexamus
					},
					["groups"] = {
						ach(16434),	-- See Me After Class
					},
				}),
				e(2512, {	-- Overgrown Ancient
					["crs"] = { 196482 },	-- Overgrown Ancient
					["groups"] = {
						ach(16329),	-- Duck, Duck, Spruce!
					},
				}),
				e(2495, {	-- Crawth
					["crs"] = { 191736 },	-- Crawth
					["groups"] = {
						ach(16441),	-- Squad Goals
					},
				}),
				e(2514, {	-- Echo of Doragosa
					["crs"] = { 190609 },	-- Echo of Doragosa
					["groups"] = {
						ach(16271),	-- Mythic: Algeth'ar Academy
						ach(17096),	-- Mythic: Algeth'ar Academy Guild Run
					},
				}),
			}),
		},
	})
})));
