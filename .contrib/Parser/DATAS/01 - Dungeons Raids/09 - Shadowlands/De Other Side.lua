-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

root(ROOTS.Instances, expansion(EXPANSION.SL, bubbleDown({ ["timeline"] = { ADDED_9_0_2_LAUNCH } }, {
	inst(1188, {	-- De Other Side
		["coord"] = { 68.6, 66.5, ARDENWEALD },
		["maps"] = {
			1677,	-- Ardenweald
			1678,	-- Mechagon
			1679,	-- Zul'Gurub
			1680,	-- De Other Side
		},
		["groups"] = {
			n(QUESTS, {
				q(62458, {	-- De Other Side
					["provider"] = { "n", 174341 },	-- Mask of Bwonsamdi
					["coord"] = { 64.8, 19.7, ARDENWEALD },
					["isBreadcrumb"] = true,
				}),
				q(62456,{	-- De Other Side: Dealin' Wit' Da Boss
					["sourceQuests"] = { 62458 },	-- De Other Side
					["provider"] = { "n", 174327 },	-- Mask of Bwonsamdi
					["_drop"] = { "g" },	-- Anima Trash
				}),
			}),
			d(DIFFICULTY.DUNGEON.MULTI.NORMAL_PLUS, {
				e(2408, {	-- Hakkar the Soulflayer
					["crs"] = { 164558 },	-- Hakkar the Soulflayer
					["groups"] = {
						-- Conduits
						i(181737),	-- Nourishing Chi
						i(182621),	-- One With the Beast
						i(183479),	-- Umbral Intensity
						i(182134),	-- Unruly Winds
						i(183504),	-- Well-Placed Steel
						-- Items
						i(179328),	-- Bloodspiller
						i(179331),	-- Blood-Spattered Scale
						i(179326),	-- Girdle of the Soulflayer
						i(179325),	-- Hakkari Revenant's Grips
						i(179324),	-- Soulfeather Breeches
						i(179322),	-- Windscale Moccasins
						i(179330),	-- Zin'khas, Blade of the Fallen God
					},
				}),
				e(2409, {	-- The Manastorms
					["crs"] = {
						164556,	-- Millhouse Manastorm
						164555,	-- Millificent Manastorm
					},
					["groups"] = {
						-- Legendaries
						i(183216),	-- Memory of a Burning Wound
						i(183271),	-- Memory of the Infinite Arcane
						i(183369),	-- Memory of Wilfred's Sigil of Superior Summoning
						-- Conduits
						i(181509),	-- Arcane Prodigy
						i(182748),	-- Borne of Blood
						-- Items
						i(179338),	-- Dynamo Doomstompers
						i(179335),	-- Manastorm's Magnificent Threads
						i(179342),	-- Overwhelming Power Crystal
						i(179336),	-- Rocket Chicken Handlers
						i(179340),	-- Supercollider
						i(179337),	-- Techno-Coil Legguards
						i(179339),	-- Whizblast Walking Stick
					},
				}),
				e(2398, {	-- Dealer Xy'exa
					["crs"] = { 164450 },	-- Millificent Manastorm
					["groups"] = {
						-- Legendaries
						i(183265),	-- Memory of a Wildfire Cluster
						-- Conduits
						i(183396),	-- Flame Infusion
						i(182624),	-- Show of Force
						i(183509),	-- Sleight of Hand
						-- Items
						i(179346),	-- Breastplate of Fatal Contrivances
						i(179347),	-- Collector's Pulse Staff
						i(179349),	-- Dealer Xy'exa's Cape
						i(179344),	-- Far Traveler's Shoulderpads
						i(179350),	-- Inscrutable Quantum Device
						i(179343),	-- Sash of Exquisite Acquisitions
						i(179345),	-- Spatial Rift Striders
						i(179348),	-- Xy Cartel Crossbow
					},
				}),
				e(2410, {	-- Mueh'zala
					["crs"] = { 166608 },	-- Mueh'zala
					["groups"] = {
						ach(14373),	-- De Other Side
						-- Legendaries
						i(183329),	-- Memory of a Prism of Shadow and Fire
						i(183282),	-- Memory of the Fatal Touch
						i(183350),	-- Memory of the Great Sundering
						-- Conduits
						i(181943),	-- Eradicating Blow
						i(183490),	-- Floral Recycling
						i(182145),	-- Heavy Rainfall
						i(181376),	-- Inner Fury
						i(182138),	-- Mind Devourer
						i(182684),	-- Resolute Defender
						i(182736),	-- Rolling Agony
						-- Items
						i(182178),	-- Raptor Soul (SS!)
						i(186998, {	-- Pattern: Pallid Oracle Bones (RECIPE!)
							["timeline"] = { ADDED_9_1_0 },
						}),
						i(179355),	-- Death God's Signet
						i(179353),	-- Harness of Twisted Whims
						i(179351),	-- Mueh'zala's Hexthread Sarong
						i(179352),	-- Primeval Soul's Ankleguards
						i(179354),	-- Reality-Shatter Vambraces
						i(179356),	-- Shadowgrasp Totem
					},
				}),
			}),
			d(DIFFICULTY.DUNGEON.MULTI.HEROIC_PLUS, {
				e(2410, {	-- Mueh'zala
					["crs"] = { 166608 },	-- Mueh'zala
					["groups"] = {
						ach(14408),	-- Heroic: De Other Side
					},
				}),
			}),
			d(DIFFICULTY.DUNGEON.MYTHIC, {
				n(ACHIEVEMENTS, {
					ach(14354),	-- Highly Communicable
				}),
				e(2409, {	-- The Manastorms
					["crs"] = {
						164556,	-- Millhouse Manastorm
						164555,	-- Millificent Manastorm
					},
					["groups"] = {
						ach(14374),	-- Couple's Therapy
					},
				}),
				e(2398, {	-- Dealer Xy'exa
					["crs"] = { 164450 },	-- Millificent Manastorm
					["groups"] = {
						ach(14606),	-- Thinking with...
					},
				}),
				e(2410, {	-- Mueh'zala
					["crs"] = { 166608 },	-- Mueh'zala
					["groups"] = {
						ach(14409),	-- Mythic: De Other Side
						ach(14379),	-- Mythic: De Other Side Guild Run
					},
				}),
			}),
		},
	}),
})));
