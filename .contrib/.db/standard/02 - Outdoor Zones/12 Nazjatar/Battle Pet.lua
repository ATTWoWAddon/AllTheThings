---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(NAZJATAR, bubbleDownSelf({ ["timeline"] = { ADDED_8_2_0 } }, {
	petbattle(filter(BATTLE_PETS, {
		pet(2678),	-- Abyssal Slitherling (PET!)
		pet(2652),	-- Bloodseeker (PET!)
		pet(2648),	-- Chitterspine Skitterling (PET!)
		pet(2651),	-- Deeptide Fingerling (PET!)
		pet(2647),	-- Glimmershell Scuttler (PET!)
		pet(2650),	-- Great Sea Albatross (PET!)
		pet(2649),	-- Hissing Chitterspine (PET!)
		pet(2660),	-- Muck Slug (PET!)
		pet(2645),	-- Sandclaw Pincher (PET!)
		pet(2646),	-- Sandclaw Sunshell (PET!)
		pet(2653),	-- Spireshell Snail (PET!)
		n(DROPS, {
			i(169632, {	-- Crackling Mandible (QS!)
				["coord"] = { 37.5, 16.7, NAZJATAR },
				["crs"] = { 154919 },	-- Voltgorger
			}),
			i(169637, {	-- Crackling Mandible (QS!)
				["coord"] = { 37.5, 16.7, NAZJATAR },
				["crs"] = { 154919 },	-- Voltgorger
			}),
			i(169628, {	-- Eel Jelly (QS!)
				["coord"] = { 51.3, 75.0, NAZJATAR },
				["crs"] = { 154915 },	-- Elderspawn of Nalaada
			}),
			i(169641, {	-- Eel Jelly (QS!)
				["coord"] = { 51.3, 75.0, NAZJATAR },
				["crs"] = { 154915 },	-- Elderspawn of Nalaada
			}),
			i(169633, {	-- Frenzy Fang (QS!)
				["description"] = "Inside the cave.",
				["coord"] = { 61.40, 19.85, NAZJATAR },	-- cave entrance
				["crs"] = { 154920 },	-- Frenzied Knifefang
			}),
			i(169636, {	-- Frenzy Fang (QS!)
				["description"] = "Inside the cave.",
				["coord"] = { 61.40, 19.85, NAZJATAR },	-- cave entrance
				["crs"] = { 154920 },	-- Frenzied Knifefang
			}),
			i(169625, {	-- Half-Digested Deepcoral Pod (QS!)
				["coord"] = { 58.3, 48.1, NAZJATAR },
				["crs"] = { 154912 },	-- Silence
			}),
			i(169644, {	-- Half-Digested Deepcoral Pod (QS!)
				["coord"] = { 58.3, 48.1, NAZJATAR },
				["crs"] = { 154912 },	-- Silence
			}),
			i(169624, {	-- Leathery Venom Gland (QS!)
				["coord"] = { 71.9, 51.2, NAZJATAR },
				["crs"] = { 154911 },	-- Chomp
			}),
			i(169645, {	-- Leathery Venom Gland (QS!)
				["coord"] = { 71.9, 51.2, NAZJATAR },
				["crs"] = { 154911 },	-- Chomp
			}),
			i(169626, {	-- Molted Spineshell (QS!)
				["coord"] = { 42.2, 14.0, NAZJATAR },
				["crs"] = { 154913 },	-- Shadowspine Lurker
			}),
			i(169643, {	-- Molted Spineshell (QS!)
				["coord"] = { 42.2, 14.0, NAZJATAR },
				["crs"] = { 154913 },	-- Shadowspine Lurker
			}),
			i(169629, {	-- Mottled Hydra Scale (QS!)
				["coord"] = { 29.6, 49.7, NAZJATAR },
				["crs"] = { 154916 },	-- Ravenous Scalespawn
			}),
			i(169640, {	-- Mottled Hydra Scale (QS!)
				["coord"] = { 29.6, 49.7, NAZJATAR },
				["crs"] = { 154916 },	-- Ravenous Scalespawn
			}),
			i(169634, {	-- Opaline Conch (QS!)
				["coord"] = { 28.2, 26.8, NAZJATAR },
				["crs"] = { 154921 },	-- Giant Opaline Conch
			}),
			i(169635, {	-- Opaline Conch (QS!)
				["coord"] = { 28.2, 26.8, NAZJATAR },
				["crs"] = { 154921 },	-- Giant Opaline Conch
			}),
			i(169631, {	-- Overgrown Stone (QS!)
				["coord"] = { 46.6, 28.0, NAZJATAR },
				["crs"] = { 154918 },	-- Kelpstone
			}),
			i(169638, {	-- Overgrown Stone (QS!)
				["coord"] = { 46.6, 28.0, NAZJATAR },
				["crs"] = { 154918 },	-- Kelpstone
			}),
			i(169627, {	-- Pearlescent Shell (QS!)
				["coord"] = { 50.5, 50.2, NAZJATAR },
				["crs"] = { 154914 },	-- Pearlhusk Crawler
			}),
			i(169642, {	-- Pearlescent Shell (QS!)
				["coord"] = { 50.5, 50.2, NAZJATAR },
				["crs"] = { 154914 },	-- Pearlhusk Crawler
			}),
			i(169630, {	-- Strange Organ (QS!)
				["coord"] = { 56.4, 8.1, NAZJATAR },
				["crs"] = { 154917 },	-- Mindshackle
			}),
			i(169639, {	-- Strange Organ (QS!)
				["coord"] = { 56.4, 8.1, NAZJATAR },
				["crs"] = { 154917 },	-- Mindshackle
			}),
			i(169623, {	-- Wiggletail's Poking Fork (QS!)
				["coord"] = { 34.7, 27.4, NAZJATAR },
				["crs"] = { 154910 },	-- Prince Wiggletail
			}),
			i(169646, {	-- Wiggletail's Poking Fork (QS!)
				["coord"] = { 34.7, 27.4, NAZJATAR },
				["crs"] = { 154910 },	-- Prince Wiggletail
			}),
		}),
		n(QUESTS, {
			q(56454, {	-- Crackling Mandible (A)
				["qs"] = 169632,	-- Crackling Mandible (QS!)
				["races"] = ALLIANCE_ONLY,
			}),
			q(56466, {	-- Crackling Mandible (H)
				["qs"] = 169637,	-- Crackling Mandible (QS!)
				["races"] = HORDE_ONLY,
			}),
			q(56450, {	-- Eel Jelly (A)
				["qs"] = 169628,	-- Eel Jelly (QS!)
				["races"] = ALLIANCE_ONLY,
			}),
			q(56462, {	-- Eel Jelly (H)
				["qs"] = 169641,	-- Eel Jelly (QS!)
				["races"] = HORDE_ONLY,
			}),
			q(56455, {	-- Frenzy Fang (A)
				["qs"] = 169633,	-- Frenzy Fang (QS!)
				["races"] = ALLIANCE_ONLY,
			}),
			q(56467, {	-- Frenzy Fang (H)
				["qs"] = 169636,	-- Frenzy Fang (QS!)
				["races"] = HORDE_ONLY,
			}),
			q(56447, {	-- Half-Digested Deepcoral Pod (A)
				["qs"] = 169625,	-- Half-Digested Deepcoral Pod (QS!)
				["races"] = ALLIANCE_ONLY,
			}),
			q(56459, {	-- Half-Digested Deepcoral Pod (H)
				["qs"] = 169644,	-- Half-Digested Deepcoral Pod (QS!)
				["races"] = HORDE_ONLY,
			}),
			q(56446, {	-- Leathery Venom Gland (A)
				["qs"] = 169624,	-- Leathery Venom Gland (QS!)
				["races"] = ALLIANCE_ONLY,
			}),
			q(56457, {	-- Leathery Venom Gland (H)
				["qs"] = 169645,	-- Leathery Venom Gland (QS!)
				["races"] = HORDE_ONLY,
			}),
			q(56448, {	-- Molted Spineshell (A)
				["qs"] = 169626,	-- Molted Spineshell (QS!)
				["races"] = ALLIANCE_ONLY,
			}),
			q(56460, {	-- Molted Spineshell (H)
				["qs"] = 169643,	-- Molted Spineshell (QS!)
				["races"] = HORDE_ONLY,
			}),
			q(56451, {	-- Mottled Hydra Scale (A)
				["qs"] = 169629,	-- Mottled Hydra Scale (QS!)
				["races"] = ALLIANCE_ONLY,
			}),
			q(56463, {	-- Mottled Hydra Scale (H)
				["qs"] = 169640,	-- Mottled Hydra Scale (QS!)
				["races"] = HORDE_ONLY,
			}),
			q(56456, {	-- Opaline Conch (A)
				["qs"] = 169634,	-- Opaline Conch (QS!)
				["races"] = ALLIANCE_ONLY,
			}),
			q(56458, {	-- Opaline Conch (H)
				["qs"] = 169635,	-- Opaline Conch (QS!)
				["races"] = HORDE_ONLY,
			}),
			q(56453, {	-- Overgrown Stone (A)
				["qs"] = 169631,	-- Overgrown Stone (QS!)
				["races"] = ALLIANCE_ONLY,
			}),
			q(56465, {	-- Overgrown Stone (H)
				["qs"] = 169638,	-- Overgrown Stone (QS!)
				["races"] = HORDE_ONLY,
			}),
			q(56449, {	-- Pearlescent Shell (A)
				["qs"] = 169627,	-- Pearlescent Shell (QS!)
				["races"] = ALLIANCE_ONLY,
			}),
			q(56461, {	-- Pearlescent Shell (H)
				["qs"] = 169642,	-- Pearlescent Shell (QS!)
				["races"] = HORDE_ONLY,
			}),
			q(56452, {	-- Strange Organ (A)
				["qs"] = 169630,	-- Strange Organ (QS!)
				["races"] = ALLIANCE_ONLY,
			}),
			q(56464, {	-- Strange Organ (H)
				["qs"] = 169639,	-- Strange Organ (QS!)
				["races"] = HORDE_ONLY,
			}),
			q(56444, {	-- Wiggletail's Poking Fork (A)
				["qs"] = 169623,	-- Wiggletail's Poking Fork (QS!)
				["races"] = ALLIANCE_ONLY,
			}),
			q(56445, {	-- Wiggletail's Poking Fork (H)
				["qs"] = 169646,	-- Wiggletail's Poking Fork (QS!)
				["races"] = HORDE_ONLY,
			}),
		}),
	})),
})));
