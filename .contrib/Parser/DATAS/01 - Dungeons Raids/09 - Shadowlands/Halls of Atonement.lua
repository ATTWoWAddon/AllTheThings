-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
root(ROOTS.Instances, expansion(EXPANSION.SL, bubbleDown({ ["timeline"] = { ADDED_9_0_2_LAUNCH } }, {
	inst(1185, {	-- Halls of Atonement
		["coord"] = { 78.4, 48.9, REVENDRETH },
		["maps"] = {
			1663,	-- Halls of Atonement
			1664,	-- The Nave of Pain
			1665,	-- Sanctury of Souls
		},
		["groups"] = {
			n(QUESTS, {}),	-- Do Not Remove
			d(DIFFICULTY.DUNGEON.MULTI.NORMAL_PLUS, {
				e(2406, {	-- Halkias
					["crs"] = { 165408 },	-- Halkias
					["groups"] = {
						-- Legendaries
						i(183380),	-- Memory of a Seismic Reverberation
						i(182629),	-- Memory of the Crimson Runes
						-- Conduits
						i(181848),	-- Accelerated Cold
						i(181845),	-- Exaltation
						i(181736),	-- Flame Accretion
						i(182681),	-- Vengeful Shock
						-- Items
						i(178818),	-- Halkias' Towering Pillars
						i(178817),	-- Hood of Refracted Shadows
						i(178830),	-- Shardskin Sabatons
						i(178827),	-- Sin Stained Pendant
						i(178813),	-- Sinlight Shroud
					},
				}),
				e(2387, {	-- Echelon
					["crs"] = { 164185 },	-- Echelon
					["groups"] = {
						-- Legendaries
						i(183349),	-- Memory of the Deeptremor Stone
						-- Conduits
						i(183511),	-- Deeper Daggers
						i(181735),	-- Hack and Slash
						i(183487),	-- Layered Mane
						i(182127),	-- Shake the Foundations
						i(183184),	-- Stinging Strike
						-- Items
						i(178825),	-- Pulsating Stoneheart
						i(178819),	-- Skyterror's Stonehide Leggings
						i(178815),	-- Soaring Decimator's Hauberk
						i(178833),	-- Stonefiend Shaper's Mitts
						i(178834),	-- Stoneguardian's Morningstar
						i(178812),	-- Wing Commander's Helmet
					},
				}),
				e(2411, {	-- High Adjudicator Aleez
					["crs"] = { 165410 },	-- High Adjudicator Aleez
					["groups"] = {
						-- Legendaries
						i(183306),	-- Memory of the Righteous Bulwark
						-- Conduits
						i(181963),	-- Blood Bond
						i(181505),	-- Resplendent Mist
						i(181867),	-- Swift Penitence
						i(182675),	-- Untempered Dedication
						-- Items
						i(178814),	-- Breastplate of Otherworldly Influence
						i(178822),	-- Cord of the Dark Word
						i(178832),	-- Gloves of Haunting Fixation
						i(178821),	-- Mantle of Ephemeral Visages
						i(178828),	-- Nathrian Tabernacle
						i(178826),	-- Sunblood Amethyst
					},
				}),
				e(2413, {	-- Lord Chamberlain
					["crs"] = { 164218 },	--	Lord Chamberlain
					["groups"] = {
						ach(14370),	-- Halls of Atonement
						-- Legendaries
						i(183241),	-- Memory of the Dark Titan
						i(183275),	-- Memory of the Firestorm
						-- Conduits
						i(182598),	-- Demon Muzzle
						i(181461),	-- Ice Bite
						i(183477),	-- Precise Alignment
						i(181944),	-- Resonant Words
						i(182751),	-- Tyrant's Soul
						-- Items
						i(178816),	-- Nathrian Usurper's Mask
						i(178829),	-- Nathrian Ferula
						i(178820),	-- Pauldrons of Unleashed Pride
						i(178824),	-- Signet of the False Accuser
						i(178831),	-- Slippers of Leavened Station
						i(178823),	-- Waistcord of Dark Devotion
					},
				}),
			}),
			d(DIFFICULTY.DUNGEON.MULTI.HEROIC_PLUS, {
				e(2413, {	-- Lord Chamberlain
					["crs"] = { 164218 },	--	Lord Chamberlain
					["groups"] = {
						ach(14410),	-- Heroic: Halls of Atonement
					},
				}),
			}),
			d(DIFFICULTY.DUNGEON.MYTHIC, {
				e(2406, {	-- Halkias
					["crs"] = { 165408 },	-- Halkias
					["groups"] = {
						ach(14567),	-- Picking Up the Pieces
					},
				}),
				e(2387, {	-- Echelon
					["crs"] = { 164185 },	-- Echelon
					["groups"] = {
						ach(14284),	-- Breaking Bad
					},
				}),
				e(2413, {	-- Lord Chamberlain
					["crs"] = { 164218 },	--	Lord Chamberlain
					["groups"] = {
						ach(14411),	-- Mythic: Halls of Atonement
						ach(14380),	-- Mythic: Halls of Atonement Guild Run
						ach(14352),	-- Nobody Puts Denathrius in a Corner
					},
				}),
			}),
		},
	}),
})));