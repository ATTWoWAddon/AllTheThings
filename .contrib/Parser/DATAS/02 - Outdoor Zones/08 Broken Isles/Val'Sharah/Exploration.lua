---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(BROKEN_ISLES, bubbleDown({ ["timeline"] = { ADDED_7_0_3_LAUNCH } }, {
	m(VALSHARAH, {
		explorationHeader({
			exploration(7804),	-- Andu'talah
			visit_exploration(7746,{coord={68.3,41.1,VALSHARAH}}),	-- Ash'theran
			exploration(8164),	-- Ashamane's Fall
			exploration(8266),	-- Ashamane's Gate
			exploration(7780),	-- Black Rook Hold
			exploration(8364),	-- Bladesong's Retreat
			exploration(7642),	-- Bradensbrook
			visit_exploration(7876,{coord={66.6,36.0,VALSHARAH}}),	-- Cavern of the Keeper
			exploration(8320, {	-- Darkfollow's Spire
				-- CRIEVE NOTE: I was initially able to collect this, but if you collect Bradensbrook, it gets masked behind it.
				["collectible"] = false,
			}),
			visit_exploration(7669,{coord={65.9,56.2,VALSHARAH}}),	-- Darkgrove Cavern
			exploration(7702),	-- Dreadroot
			visit_exploration(8031,{coord={71.0,32.5,VALSHARAH}}),	-- Emerald Ascent
			exploration(8332),	-- Emerald Bay
			exploration(8323, {	-- Field of Dreamers
				-- CRIEVE NOTE: I was initially able to collect this, but if you collect Bradensbrook, it gets masked behind it.
				["collectible"] = false,
			}),
			exploration(7667),	-- Garden of the Moon
			visit_exploration(7657,{coord={68.0,44.8,VALSHARAH}}),	-- Glittering Falls
			exploration(8368),	-- Gloaming Reef
			exploration(8365),	-- Gloomscale Coast
			exploration(8278),	-- Grizzleweald
			exploration(7601),	-- Grove of Cenarius
			exploration(7778),	-- Heathrow Manor
			exploration(7659),	-- Heroes' Rest
			exploration(8303),	-- Howling Dale
			exploration(7968),	-- Kal'delar
			exploration(7600),	-- Lorlathil
			exploration(8268),	-- Lostlight Grotto
			exploration(7680),	-- Lunarwing Shallows
			exploration(7704),	-- Malorne's Refuge
			visit_exploration(7650,{coord={39.4,60.3,VALSHARAH}}),	-- Marl's Stead
			visit_exploration(7972,{coord={44.6,86.9,VALSHARAH}}),	-- Marrowden
			exploration(7710),	-- Mistvale
			exploration(7617),	-- Moonclaw Vale
			exploration(7647),	-- Moonrest
			exploration(7664),	-- Oakheart
			visit_exploration(7779,{coord={37.3,58.3,VALSHARAH}}),	-- Radcliffe Landing
			visit_exploration(8151,{coord={43.0,48.2,VALSHARAH}}),	-- Raven's Glory
			exploration(7661),	-- Ravencourt
			exploration(8322),	-- Sabermaw Bluff
			exploration(7666),	-- Shadowfen
			exploration(7665),	-- Shala'nir
			visit_exploration(8179,{coord={57.0,36.9,VALSHARAH}}),	-- Shaladrassil
			visit_exploration(7689,{coord={46.8,85.8,VALSHARAH}}),	-- Smolderhide Thicket
			exploration(8029),	-- Starsong Refuge
			exploration(8304),	-- Starstalker's Point
			exploration(7559),	-- Steelclaw Vale
			visit_exploration(8032,{coord={66.7,32.2,VALSHARAH}}),	-- Sylvan Vale
			visit_exploration(8067,{coord={72.4,50.4,VALSHARAH}}),	-- Sundersong Glade
			exploration(8333),	-- Tangled Cleft
			visit_exploration(7677,{coord={52.4,58.0,VALSHARAH}}),	-- Temple of Elune
			exploration(7572, {	-- Thas'talah
				-- CRIEVE NOTE: I was initially able to collect this, but if you collect Bradensbrook, it gets masked behind it.
				["collectible"] = false,
			}),
			visit_exploration(7668,{coord={42.6,70.2,VALSHARAH}}),	-- Thas'talah Basin
			exploration(7913),	-- The Crescent Vale
			exploration(7846),	-- The Dreamgrove
			visit_exploration(8066,{coord={70.7,48.6,VALSHARAH}}),	-- The High Road
			exploration(8363),	-- The Wildwood
			visit_exploration(8494,{coord={44.7,8.9,VALSHARAH}}),	-- Verdant Cliffs
			exploration(7692),	-- Whispering Bluffs
			visit_exploration(7605,{coord={41.8,77.6,VALSHARAH}}),	-- Wretched Hollow
		}),
	}),
})));
