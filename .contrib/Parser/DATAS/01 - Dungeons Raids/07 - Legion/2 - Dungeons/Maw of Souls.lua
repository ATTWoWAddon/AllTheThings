-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
root(ROOTS.Instances, expansion(EXPANSION.LEGION, {
	inst(727, {	-- Maw of Souls
		["lvl"] = 110,
		["maps"] = { 706, 707, 708 },
		["coord"] = { 52.5, 45.3, STORMHEIM },
		["groups"] = {
			n(WORLD_QUESTS, {
				q(42780, {	-- Maw of Souls: From Hell's Mouth
					["lvl"] = 110,
					["isWorldQuest"] = true,
				}),
				q(42757, {	-- Maw of Souls: Menace of the Seas
					["lvl"] = 110,
					["isWorldQuest"] = true,
				}),
				q(42788, {	-- Maw of Souls: Return of the Beast
					["lvl"] = 110,
					["isWorldQuest"] = true,
				}),
			}),
			d(DIFFICULTY.DUNGEON.MULTI.NORMAL_PLUS, {
				cr(96756, e(1502, {	-- Ymiron, the Fallen King
					i(139619),	-- Ymiron's Broken Blade (QUEST!)
				})),
				cr(96759, e(1663, {	-- Helya
					ach(10807),	-- Maw of Souls
				})),
			}),
			d(DIFFICULTY.DUNGEON.NORMAL, {
				cr(96756, e(1502, {	-- Ymiron, the Fallen King
					i(134199),	-- Biornskin Belt
					i(134217),	-- Bonespeaker Gloves
					i(133629),	-- Crown of Fallen Kings
					i(133614),	-- Frost-Stricken Cuffs
					i(133616),	-- Legwraps of Unworthy Souls
					i(133644),	-- Memento of Angerboda
					i(133625),	-- Shoulderguards of Bane
					i(134179),	-- Skoldiir Breadsplate
					i(134210),	-- Tideskorn Sabatons
					i(133637),	-- Utgarde Royal Signet
					i(137326),	-- Fragmented Meteorite Whetstone
					i(133682),	-- Northern Gale
				})),
				cr(96754, e(1512, {	-- Harbaron
					i(137325),	-- Afterlife Manacles
					i(134197),	-- Biornskin Vest
					i(137324),	-- Bleak Underworld Treads
					i(134218),	-- Bonespeaker Leggings
					i(133645),	-- Neglfar Fare
					i(133771),	-- Seacursed Wrap
					i(134183),	-- Skoldiir Legguards
					i(133611),	-- Soul-Stitched Robes
					i(134211),	-- Tideskorn Coif
					i(133632),	-- Void-Touched Wristplates
					i(133768),	-- Harbaron's Tether
					i(137327),	-- Relinquishing Grip of Helheim
				})),
				cr(96759, e(1663, {	-- Helya
					i(137331),	-- Belt of Eternal Torment
					i(134195),	-- Biornskin Gloves
					i(134221),	-- Bonespeaker Mantle
					i(133636),	-- Brysngamen, Torc of Helheim
					i(137329),	-- Figurehead of the Naglfar
					i(133634),	-- Grasping Tentacle Loop
					i(133618),	-- Kraken Hide Helm
					i(137332),	-- Mantle of the Dark Sea
					i(133608),	-- Mistbound Helarjar Footwraps
					i(137334),	-- Salt-Laden Stompers
					i(137333),	-- Seaworthy Deck Hands
					i(134184),	-- Skoldiir Shoulderguards
					i(133770),	-- Slack Tide Girdle
					i(133769),	-- Tempered Seaborne Leggings
					i(134214),	-- Tideskorn Vest
					i(133684),	-- Screams of the Unworthy
					i(133683),	-- Seacrusted Mist
					i(124025),	-- Ancient Vrykul Hammer
				})),
			}),
			d(DIFFICULTY.DUNGEON.MULTI.HEROIC_PLUS, {
				cr(96759, e(1663, {	-- Helya
					ach(10808),	-- Heroic: Maw of Souls
					i(137848),	-- Design: Blessed Dawnlight Medallion [Rank 3] (RECIPE!)
				--	i(137899),	-- Pattern: Dreadleather Jerkin [Rank 3] (RECIPE!) (Not confirmed)
					i(127932),	-- Recipe: Flask of the Countless Armies [Rank 2] (RECIPE!)
					i(136696),	-- Plans: Terrorspike (RECIPE!)
				})),
			}),
			d(DIFFICULTY.DUNGEON.HEROIC, {
				cr(96756, e(1502, {	-- Ymiron, the Fallen King
					i(134199),	-- Biornskin Belt
					i(134217),	-- Bonespeaker Gloves
					i(133629),	-- Crown of Fallen Kings
					i(133614),	-- Frost-Stricken Cuffs
					i(133616),	-- Legwraps of Unworthy Souls
					i(133644),	-- Memento of Angerboda
					i(133625),	-- Shoulderguards of Bane
					i(134179),	-- Skoldiir Breadsplate
					i(134210),	-- Tideskorn Sabatons
					i(133637),	-- Utgarde Royal Signet
					i(137326),	-- Fragmented Meteorite Whetstone
					i(133682),	-- Northern Gale
				})),
				cr(96754, e(1512, {	-- Harbaron
					i(137325),	-- Afterlife Manacles
					i(134197),	-- Biornskin Vest
					i(137324),	-- Bleak Underworld Treads
					i(134218),	-- Bonespeaker Leggings
					i(133645),	-- Neglfar Fare
					i(133771),	-- Seacursed Wrap
					i(134183),	-- Skoldiir Legguards
					i(133611),	-- Soul-Stitched Robes
					i(134211),	-- Tideskorn Coif
					i(133632),	-- Void-Touched Wristplates
					i(133768),	-- Harbaron's Tether
					i(137327),	-- Relinquishing Grip of Helheim
				})),
				cr(96759, e(1663, {	-- Helya
					i(137331),	-- Belt of Eternal Torment
					i(134195),	-- Biornskin Gloves
					i(134221),	-- Bonespeaker Mantle
					i(133636),	-- Brysngamen, Torc of Helheim
					i(137329),	-- Figurehead of the Naglfar
					i(133634),	-- Grasping Tentacle Loop
					i(133618),	-- Kraken Hide Helm
					i(137332),	-- Mantle of the Dark Sea
					i(133608),	-- Mistbound Helarjar Footwraps
					i(137334),	-- Salt-Laden Stompers
					i(137333),	-- Seaworthy Deck Hands
					i(134184),	-- Skoldiir Shoulderguards
					i(133770),	-- Slack Tide Girdle
					i(133769),	-- Tempered Seaborne Leggings
					i(134214),	-- Tideskorn Vest
					i(133684),	-- Screams of the Unworthy
					i(133683),	-- Seacrusted Mist
					i(124025),	-- Ancient Vrykul Hammer
				})),
			}),
			d(DIFFICULTY.DUNGEON.MYTHIC, {
				["ItemAppearanceModifierID"] = 0,
				["groups"] = {
					cr(96756, e(1502, {	-- Ymiron, the Fallen King
						ach(10413, {	-- Instant Karma
							["crs"] = { 98246 },	-- Risen Warrior
						}),
						i(134199),	-- Biornskin Belt
						i(134217),	-- Bonespeaker Gloves
						i(133629),	-- Crown of Fallen Kings
						i(133614),	-- Frost-Stricken Cuffs
						i(133616),	-- Legwraps of Unworthy Souls
						i(133644),	-- Memento of Angerboda
						i(133625),	-- Shoulderguards of Bane
						i(134179),	-- Skoldiir Breadsplate
						i(134210),	-- Tideskorn Sabatons
						i(133637),	-- Utgarde Royal Signet
						i(137326),	-- Fragmented Meteorite Whetstone
						i(133682),	-- Northern Gale
					})),
					cr(96754, e(1512, {	-- Harbaron
						ach(10411, {	-- Helheim Hath No Fury
							["description"] = "This is a speed-run style achievement. You must get to and kill Harbaron in under 3 minutes and 30 seconds.",
						}),
						i(137325),	-- Afterlife Manacles
						i(134197),	-- Biornskin Vest
						i(137324),	-- Bleak Underworld Treads
						i(134218),	-- Bonespeaker Leggings
						i(133645),	-- Neglfar Fare
						i(133771),	-- Seacursed Wrap
						i(134183),	-- Skoldiir Legguards
						i(133611),	-- Soul-Stitched Robes
						i(134211),	-- Tideskorn Coif
						i(133632),	-- Void-Touched Wristplates
						i(133768),	-- Harbaron's Tether
						i(137327),	-- Relinquishing Grip of Helheim
					})),
					cr(96759, e(1663, {	-- Helya
						ach(10809),	-- Mythic: Maw of Souls
						ach(10863),	-- Mythic: Maw of Souls Guild Run
						ach(10412, {	-- Poor Unfortunate Souls
							["description"] = "Absorb the soul at the beginning of Blackrook Hold, clear the dungeon, then clear Maw of Souls. You must not die at all through both dungeons.\n\nWARNING: You must do this with a group of 5 players for the buffs to upgrade after each boss kill.",
							["maps"] = { 751, 752, 753, 754, 755, 756 },	-- Black Rook Hold
							["crs"] = { 98806 },	-- Soul Essence
							["groups"] = {
								i(140323),	-- Lagan (PET!)
							},
						}),
						i(137899),	-- Pattern: Dreadleather Jerkin [Rank 3] (RECIPE!)
						i(137331),	-- Belt of Eternal Torment
						i(134195),	-- Biornskin Gloves
						i(134221),	-- Bonespeaker Mantle
						i(133636),	-- Brysngamen, Torc of Helheim
						i(137329),	-- Figurehead of the Naglfar
						i(133634),	-- Grasping Tentacle Loop
						i(133618),	-- Kraken Hide Helm
						i(137332),	-- Mantle of the Dark Sea
						i(133608),	-- Mistbound Helarjar Footwraps
						i(137334),	-- Salt-Laden Stompers
						i(137333),	-- Seaworthy Deck Hands
						i(134184),	-- Skoldiir Shoulderguards
						i(133770),	-- Slack Tide Girdle
						i(133769),	-- Tempered Seaborne Leggings
						i(134214),	-- Tideskorn Vest
						i(133684),	-- Screams of the Unworthy
						i(133683),	-- Seacrusted Mist
						i(124025),	-- Ancient Vrykul Hammer
					})),
				},
			}),
		},
	}),
}));
