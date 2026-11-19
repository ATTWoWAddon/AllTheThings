-----------------------------------------------------
--  D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
instanceroot(2974, {	-- Blackmaw Hold
	-- Blizzard lists it for levels 55-60.
	--lore = "",
	icon = 409547,
	zoneTextAreaID = 16554,	-- Blackmaw Hold
	--coord = { 37.2, 33.3, MAP.AZSHARA },	-- Blackmaw Hold (area 1216); verify the entrance.
	timeline = { TIMELINE.ADDED_1_60_1 },
	lvl = 55,
	groups = {
		n(QUESTS, {
			q(92070, {	-- A Lost Memento
				-- TODO: Wowhead doesn't list the quest giver yet.
				timeline = { TIMELINE.ADDED_1_60_1 },
				lvl = 47,
				groups = {
					objective(1, {	-- 0/1 Feathered Charm Necklace
						provider = { "i", 249698 },	-- Feathered Charm Necklace
					}),
					i(279893),	-- Nama's Cherished Necklace
				},
			}),
			q(92345, {	-- Beneath Nordrassil
				qg = 239822,	-- Commander Truesong
				coord = { 11.8, 78.2, MAP.AZSHARA },
				maps = { MAP.DARNASSUS },
				races = ALLIANCE_ONLY,
				lvl = 45,
			}),
			q(97173, {	-- Blackmaw Magic [A]
				qg = 31439,	-- Archmage Timear
				coord = { 15.4, 73.8, MAP.ALTERAC_MOUNTAINS },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = ALLIANCE_ONLY,
				lvl = 52,
				groups = {
					objective(1, {	-- 0/1 Blackmaw Ritual Totem
						provider = { "i", 276893 },	-- Blackmaw Ritual Totem
					}),
				},
			}),
			q(97198, {	-- Blackmaw Magic [H]
				qg = 259118,	-- Muln Earthfury
				coord = { 33.4, 22.4, MAP.MULGORE },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = HORDE_ONLY,
				lvl = 52,
				groups = {
					objective(1, {	-- 0/1 Blackmaw Ritual Totem
						provider = { "i", 276893 },	-- Blackmaw Ritual Totem
					}),
				},
			}),
			q(97327, {	-- Blackmaw Pouches
				qg = 235903,	-- Ekkal
				coord = { 42.0, 38.8, MAP.AZSHARA },
				timeline = { TIMELINE.ADDED_1_60_1 },
				lvl = 55,
				groups = {
					objective(1, {	-- 0/5 Blackmaw Pouch
						provider = { "i", 273050 },	-- Blackmaw Pouch
					}),
				},
			}),
			q(92065, {	-- Blackmaw Reclamation
				sourceQuest = 86814,	-- Blackmaw Counter-Offensive
				qg = 236573,	-- Gatekeeper Rageroar
				coord = { 42.4, 20.2, MAP.AZSHARA },
				timeline = { TIMELINE.ADDED_1_60_1 },
				lvl = 47,
				groups = {
					objective(1, {	-- 0/1 Head of Varrox Bleakhoof
						provider = { "i", 249692 },	-- Head of Varrox Bleakhoof
					}),
					i(260216),	-- Ouroboros Ring
					i(260217),	-- Eagle's Head Signet
					i(260218),	-- Malefactor's End
					i(260219),	-- Engraved Band
				},
			}),
			q(92069, {	-- Claws That Rend, Tusks that Gore
				qg = 8405,	-- Ogtinc
				coord = { 42.4, 42.6, MAP.AZSHARA },
				timeline = { TIMELINE.ADDED_1_60_1 },
				lvl = 45,
				groups = {
					objective(1, {	-- 0/1 Claws of the Great Bear
						provider = { "i", 249697 },	-- Claws of the Great Bear
					}),
					objective(2, {	-- 0/1 Tusks of the Unbroken
						provider = { "i", 249696 },	-- Tusks of the Unbroken
					}),
					i(260213),	-- Great Bear Claw
					i(260214),	-- Staff of Wild Beasts
					i(260215),	-- Wild Malleus
				},
			}),
			q(92344, {	-- Get to the Roots of It
				sourceQuest = 92345,	-- Beneath Nordrassil
				qg = 4217,	-- Mathrengyl Bearwalker
				coord = { 35.2, 8.0, MAP.DARNASSUS },
				races = ALLIANCE_ONLY,
				lvl = 45,
				groups = {
					objective(1, {	-- 0/10 Nordrassil Root Cap
						provider = { "i", 250773 },	-- Nordrassil Root Cap
					}),
				},
			}),
			q(92343, {	-- Get to the Roots of It
				sourceQuest = 92346,	-- Beneath Nordrassil
				qg = 5770,	-- Nara Wildmane
				coord = { 75.6, 31.2, MAP.THUNDER_BLUFF },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = HORDE_ONLY,
				lvl = 45,
				groups = {
					objective(1, {	-- 0/10 Nordrassil Root Cap
						provider = { "i", 250773 },	-- Nordrassil Root Cap
					}),
				},
			}),
			q(92066, {	-- The Twin Bears
				qg = 249853,	-- Lorekeeper Nok
				coord = { 41.4, 20.0, MAP.AZSHARA },
				timeline = { TIMELINE.ADDED_1_60_1 },
				lvl = 47,
				groups = {
					objective(1, {	-- 0/1 Totem of Ursoc
						provider = { "i", 249694 },	-- Totem of Ursoc
					}),
					objective(2, {	-- 0/1 Totem of Ursol
						provider = { "i", 249693 },	-- Totem of Ursol
					}),
					i(279891),	-- Guidance of Ursoc
					i(279892),	-- Wisdom of Ursol
				},
			}),
		}),
		n(ZONE_DROPS, {
			i(252893, {	-- Pattern: Timbermaw Tunic (RECIPE!)
				cr = 258516,	-- Blackmaw Druid
			}),
			i(251453, {	-- Plans: Breastplate of Salvation (RECIPE!)
				cr = 247248,	-- Legashi Summoner
			}),
		}),
		e(3315, {	-- Withermaw
			creatureID = 247195,	-- Withermaw
		}),
		e(3316, {	-- Impaan the Imprisoner
			creatureID = 247206,	-- Impaan the Imprisoner
		}),
		e(3327, {	-- Elder Shaman Bloodmane
			creatureID = 247209,	-- Elder Shaman Bloodmane
		}),
		e(3322, {	-- Bonesnout the Unbroken
			creatureID = 247198,	-- Bonesnout the Unbroken
		}),
		e(3334, {	-- Varrox Bleakhoof
			creatureID = 247234,	-- Varrox Bleakhoof
		}),
		e(3323, {	-- Blackmaw Behemoth
			creatureID = 247207,	-- Blackmaw Behemoth
		}),
		e(3336, {	-- Unbound Spirit
			creatureID = 247231,	-- Unbound Spirit
		}),
	},
});
