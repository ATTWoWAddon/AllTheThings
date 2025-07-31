---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, {
	m(BROKEN_ISLES, {
		m(SURAMAR, {
			n(ZONE_DROPS, {
				i(133817, {	-- Recipe: Suramar Surf and Turf [Rank 1] (RECIPE!)
					["cost"] = {
						{ "i", 141011, 1 },	-- Recipe: Surf
						{ "i", 141012, 1 },	-- Recipe: Turf
					},
				}),
				i(141011, {	-- Recipe: Surf
					["description"] = "Drops from any marine mob in the zone.",
					["crs"] = {
						99720,	-- Coastal Spikeback
						99506,	-- Colossal Striper
						100864,	-- Cora'kar
						99504,	-- Deepwater Spikeback
						107312,	-- Frothing Crab
						107846,	-- Pinchshank
						99893,	-- Razortail Hammerhead
						103575,	-- Reef Lord Raj'his
						102819,	-- Sashj'tar Pincher
						99070,	-- Sashj'tar Reef Runner
						99075,	-- Sashj'tar Stormcaller
						110824,	-- Tideclaw
						99304,	-- Trenchwalker Scavenger
					},
				}),
				i(141012, {	-- Recipe: Turf
					["description"] = "Fly to Crimson Thicket, Suramar. Kill the Heartwood stag. 3-4 and you should have it.",
				}),
				i(136901, {	-- Eye of Inquisition (PET!)
					["crs"] = { 101878 },	-- Felsoul Inquisitor
				}),
				i(137841),	-- Design: Deep Amber Pendant (Rank 3)
				i(136704),	-- Formula: Immaculate Fibril (RECIPE!)
				i(139559, {	-- The Stars' Design
					artifact(893),	-- Fire Mage Hidden Appearance
				}),
				i(141292, {	-- Crystallizing Mana
					["bonusID"] = 1812,
				}),
				i(121236, {	-- Dawnswood Hunter's Fletchings
					["bonusID"] = 1812,
				}),
				i(121234, {	-- Koralune Keepsake
					["bonusID"] = 1812,
				}),
				i(121248, {	-- Nightfall Chain
					["bonusID"] = 1812,
				}),
				i(121247, {	-- Nightfall Loop
					["bonusID"] = 1812,
				}),
				i(121232, {	-- Nightfallen Outcast's Cloak
					["bonusID"] = 1812,
				}),
				i(121235, {	-- Sashj'tar Brooch
					["bonusID"] = 1812,
				}),
				i(141293, {	-- Spellfire Oil
					["bonusID"] = 1812,
				}),
				i(121269, {	-- Moonfall Cowl
					["bonusID"] = 1812,
				}),
				i(121274, {	-- Moonfall Shoulderpads
					["bonusID"] = 1812,
				}),
				i(121272, {	-- Moonfall Robe
					["bonusID"] = 1812,
				}),
				i(121275, {	-- Moonfall Wristwraps
					["bonusID"] = 1812,
				}),
				i(121270, {	-- Moonfall Handwraps
					["bonusID"] = 1812,
				}),
				i(121268, {	-- Moonfall Cord
					["bonusID"] = 1812,
				}),
				i(121271, {	-- Moonfall Leggings
					["bonusID"] = 1812,
				}),
				i(121273, {	-- Moonfall Sandals
					["bonusID"] = 1812,
				}),
				i(121241, {	-- Ambervale Hood
					["bonusID"] = 1812,
				}),
				i(121243, {	-- Ambervale Shoulders
					["bonusID"] = 1812,
				}),
				i(121242, {	-- Ambervale Jerkin
					["bonusID"] = 1812,
				}),
				i(121237, {	-- Ambervale Bindings
					["bonusID"] = 1812,
				}),
				i(121240, {	-- Ambervale Gloves
					["bonusID"] = 1812,
				}),
				i(121244, {	-- Ambervale Waistband
					["bonusID"] = 1812,
				}),
				i(121239, {	-- Ambervale Britches
					["bonusID"] = 1812,
				}),
				i(121238, {	-- Ambervale Boots
					["bonusID"] = 1812,
				}),
				i(121264, {	-- Warpwind Helm
					["bonusID"] = 1812,
				}),
				i(121266, {	-- Warpwind Spaulders
					["bonusID"] = 1812,
				}),
				i(121267, {	-- Warpwind Vest
					["bonusID"] = 1812,
				}),
				i(121261, {	-- Warpwind Bracers
					["bonusID"] = 1812,
				}),
				i(121262, {	-- Warpwind Gauntlets
					["bonusID"] = 1812,
				}),
				i(121260, {	-- Warpwind Belt
					["bonusID"] = 1812,
				}),
				i(121265, {	-- Warpwind Legguards
					["bonusID"] = 1812,
				}),
				i(121263, {	-- Warpwind Greaves
					["bonusID"] = 1812,
				}),
				i(121224, {	-- Jandvik Helm
					["bonusID"] = 1812,
				}),
				i(121226, {	-- Jandvik Pauldrons
					["bonusID"] = 1812,
				}),
				i(121221, {	-- Jandvik Breastplate
					["bonusID"] = 1812,
				}),
				i(121228, {	-- Jandvik Vambraces
					["bonusID"] = 1812,
				}),
				i(121222, {	-- Jandvik Gauntlets
					["bonusID"] = 1812,
				}),
				i(121223, {	-- Jandvik Girdle
					["bonusID"] = 1812,
				}),
				i(121225, {	-- Jandvik Legplates
					["bonusID"] = 1812,
				}),
				i(121227, {	-- Jandvik Sabatons
					["bonusID"] = 1812,
				}),
				i(121801),	-- Coral-Edge Band
			}),
		}),
	}),
});
