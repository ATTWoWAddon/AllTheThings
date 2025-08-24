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
			i(169632, {	-- Crackling Mandible
				["crs"] = { 154919 },	-- Voltgorger
				["coord"] = { 37.5, 16.7, NAZJATAR },
			}),
			i(169637, {	-- Crackling Mandible
				["crs"] = { 154919 },	-- Voltgorger
				["coord"] = { 37.5, 16.7, NAZJATAR },
			}),
			i(169628, {	-- Eel Jelly
				["crs"] = { 154915 },	-- Elderspawn of Nalaada
				["coord"] = { 51.3, 75.0, NAZJATAR },
			}),
			i(169641, {	-- Eel Jelly
				["crs"] = { 154915 },	-- Elderspawn of Nalaada
				["coord"] = { 51.3, 75.0, NAZJATAR },
			}),
			i(169633, {	-- Frenzy Fang
				["crs"] = { 154920 },	-- Frenzied Knifefang
				["coord"] = { 61.40, 19.85, NAZJATAR },	-- cave entrance
				["description"] = "Inside the cave.",
			}),
			i(169636, {	-- Frenzy Fang
				["crs"] = { 154920 },	-- Frenzied Knifefang
				["coord"] = { 61.40, 19.85, NAZJATAR },	-- cave entrance
				["description"] = "Inside the cave.",
			}),
			i(169625, {	-- Half-Digested Deepcoral Pod
				["crs"] = { 154912 },	-- Silence
				["coord"] = { 58.3, 48.1, NAZJATAR },
			}),
			i(169644, {	-- Half-Digested Deepcoral Pod
				["crs"] = { 154912 },	-- Silence
				["coord"] = { 58.3, 48.1, NAZJATAR },
			}),
			i(169624, {	-- Leathery Venom Gland
				["crs"] = { 154911 },	-- Chomp
				["coord"] = { 71.9, 51.2, NAZJATAR },
			}),
			i(169645, {	-- Leathery Venom Gland
				["crs"] = { 154911 },	-- Chomp
				["coord"] = { 71.9, 51.2, NAZJATAR },
			}),
			i(169626, {	-- Molted Spineshell
				["crs"] = { 154913 },	-- Shadowspine Lurker
				["coord"] = { 42.2, 14.0, NAZJATAR },
			}),
			i(169643, {	-- Molted Spineshell
				["crs"] = { 154913 },	-- Shadowspine Lurker
				["coord"] = { 42.2, 14.0, NAZJATAR },
			}),
			i(169629, {	-- Mottled Hydra Scale
				["crs"] = { 154916 },	-- Ravenous Scalespawn
				["coord"] = { 29.6, 49.7, NAZJATAR },
			}),
			i(169640, {	-- Mottled Hydra Scale
				["crs"] = { 154916 },	-- Ravenous Scalespawn
				["coord"] = { 29.6, 49.7, NAZJATAR },
			}),
			i(169634, {	-- Opaline Conch
				["crs"] = { 154921 },	-- Giant Opaline Conch
				["coord"] = { 28.2, 26.8, NAZJATAR },
			}),
			i(169635, {	-- Opaline Conch
				["crs"] = { 154921 },	-- Giant Opaline Conch
				["coord"] = { 28.2, 26.8, NAZJATAR },
			}),
			i(169631, {	-- Overgrown Stone
				["crs"] = { 154918 },	-- Kelpstone
				["coord"] = { 46.6, 28.0, NAZJATAR },
			}),
			i(169638, {	-- Overgrown Stone
				["crs"] = { 154918 },	-- Kelpstone
				["coord"] = { 46.6, 28.0, NAZJATAR },
			}),
			i(169627, {	-- Pearlescent Shell
				["crs"] = { 154914 },	-- Pearlhusk Crawler
				["coord"] = { 50.5, 50.2, NAZJATAR },
			}),
			i(169642, {	-- Pearlescent Shell
				["crs"] = { 154914 },	-- Pearlhusk Crawler
				["coord"] = { 50.5, 50.2, NAZJATAR },
			}),
			i(169630, {	-- Strange Organ
				["crs"] = { 154917 },	-- Mindshackle
				["coord"] = { 56.4, 8.1, NAZJATAR },
			}),
			i(169639, {	-- Strange Organ
				["crs"] = { 154917 },	-- Mindshackle
				["coord"] = { 56.4, 8.1, NAZJATAR },
			}),
			i(169623, {	-- Wiggletail's Poking Fork
				["crs"] = { 154910 },	-- Prince Wiggletail
				["coord"] = { 34.7, 27.4, NAZJATAR },
			}),
			i(169646, {	-- Wiggletail's Poking Fork
				["crs"] = { 154910 },	-- Prince Wiggletail
				["coord"] = { 34.7, 27.4, NAZJATAR },
			}),
		}),
		n(QUESTS, {
			q(56454, {	-- Crackling Mandible (A)
				["provider"] = {"i",169632},	-- Crackling Mandible
				["races"] = ALLIANCE_ONLY,
			}),
			q(56466, {	-- Crackling Mandible (H)
				["provider"] = {"i",169637},	-- Crackling Mandible
				["races"] = HORDE_ONLY,
			}),
			q(56450, {	-- Eel Jelly (A)
				["provider"] = {"i",169628},	-- Eel Jelly
				["races"] = ALLIANCE_ONLY,
			}),
			q(56462, {	-- Eel Jelly (H)
				["provider"] = {"i",169641},	-- Eel Jelly
				["races"] = HORDE_ONLY,
			}),
			q(56455, {	-- Frenzy Fang (A)
				["provider"] = {"i",169633},	-- Frenzy Fang
				["races"] = ALLIANCE_ONLY,
			}),
			q(56467, {	-- Frenzy Fang (H)
				["provider"] = {"i",169636},	-- Frenzy Fang
				["races"] = HORDE_ONLY,
			}),
			q(56447, {	-- Half-Digested Deepcoral Pod (A)
				["provider"] = {"i",169625},	-- Half-Digested Deepcoral Pod
				["races"] = ALLIANCE_ONLY,
			}),
			q(56459, {	-- Half-Digested Deepcoral Pod (H)
				["provider"] = {"i",169644},	-- Half-Digested Deepcoral Pod
				["races"] = HORDE_ONLY,
			}),
			q(56446, {	-- Leathery Venom Gland (A)
				["provider"] = {"i",169624},	-- Leathery Venom Gland
				["races"] = ALLIANCE_ONLY,
			}),
			q(56457, {	-- Leathery Venom Gland (H)
				["provider"] = {"i",169645},	-- Leathery Venom Gland
				["races"] = HORDE_ONLY,
			}),
			q(56448, {	-- Molted Spineshell (A)
				["provider"] = {"i",169626},	-- Molted Spineshell
				["races"] = ALLIANCE_ONLY,
			}),
			q(56460, {	-- Molted Spineshell (H)
				["provider"] = {"i",169643},	-- Molted Spineshell
				["races"] = HORDE_ONLY,
			}),
			q(56451, {	-- Mottled Hydra Scale (A)
				["provider"] = {"i",169629},	-- Mottled Hydra Scale
				["races"] = ALLIANCE_ONLY,
			}),
			q(56463, {	-- Mottled Hydra Scale (H)
				["provider"] = {"i",169640},	-- Mottled Hydra Scale
				["races"] = HORDE_ONLY,
			}),
			q(56456, {	-- Opaline Conch (A)
				["provider"] = {"i",169634},	-- Opaline Conch
				["races"] = ALLIANCE_ONLY,
			}),
			q(56458, {	-- Opaline Conch (H)
				["provider"] = {"i",169635},	-- Opaline Conch
				["races"] = HORDE_ONLY,
			}),
			q(56453, {	-- Overgrown Stone (A)
				["provider"] = {"i",169631},	-- Overgrown Stone
				["races"] = ALLIANCE_ONLY,
			}),
			q(56465, {	-- Overgrown Stone (H)
				["provider"] = {"i",169638},	-- Overgrown Stone
				["races"] = HORDE_ONLY,
			}),
			q(56449, {	-- Pearlescent Shell (A)
				["provider"] = {"i",169627},	-- Pearlescent Shell
				["races"] = ALLIANCE_ONLY,
			}),
			q(56461, {	-- Pearlescent Shell (H)
				["provider"] = {"i",169642},	-- Pearlescent Shell
				["races"] = HORDE_ONLY,
			}),
			q(56452, {	-- Strange Organ (A)
				["provider"] = {"i",169630},	-- Strange Organ
				["races"] = ALLIANCE_ONLY,
			}),
			q(56464, {	-- Strange Organ (H)
				["provider"] = {"i",169639},	-- Strange Organ
				["races"] = HORDE_ONLY,
			}),
			q(56444, {	-- Wiggletail's Poking Fork (A)
				["provider"] = {"i",169623},	-- Wiggletail's Poking Fork
				["races"] = ALLIANCE_ONLY,
			}),
			q(56445, {	-- Wiggletail's Poking Fork (H)
				["provider"] = {"i",169646},	-- Wiggletail's Poking Fork
				["races"] = HORDE_ONLY,
			}),
		}),
	})),
})));
