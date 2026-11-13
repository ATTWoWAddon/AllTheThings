-----------------------------------------------------
--  D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
instanceroot(2970, {	-- The Drowned City
	-- Blizzard lists it for levels 35-40.
	--lore = "",
	icon = 409547,
	zoneTextAreaID = 16550,	-- The Drowned City
	--coord = { , MAP.STRANGLETHORN_VALE },	-- Entrance in a cavern in the Vile Reef (see Locating the Lost City).
	timeline = { TIMELINE.ADDED_1_60_1 },
	lvl = 35,
	groups = {
		n(QUESTS, {
			q(96774, {	-- Ancient Gurubashi Idol
				qg = 264074,	-- Mazu'kon <Earthen Ring>
				coord = { 32.4, 20.6, MAP.MULGORE },
				races = HORDE_ONLY,
				lvl = 30,
				groups = {
					objective(1, {	-- 0/1 Ancient Gurubashi Idol
						provider = { "i", 276894 },	-- Ancient Gurubashi Idol
						crs = {
							269586,	-- Deathless Marrow
							273738,	-- Primeval Elemental
						},
					}),
				},
			}),
			q(97130, {	-- Ancient Gurubashi Secrets
				qg = 31439,	-- Archmage Timear
				coord = { 15.4, 74.0, MAP.ALTERAC_MOUNTAINS },
				races = ALLIANCE_ONLY,
				lvl = 34,
				groups = {
					objective(1, {	-- 0/1 Ancient Gurubashi Idol
						provider = { "i", 276894 },	-- Ancient Gurubashi Idol
						crs = {
							269586,	-- Deathless Marrow
							273738,	-- Primeval Elemental
						},
					}),
				},
			}),
			q(95799, {	-- Findings for the Explorer's League
				-- TODO: Prerequisite unconfirmed. A Contributor Report accepted it right after turning in Magics of the Drowned City (95788) and Take Two With Water (95787).
				qg = 2277,	-- Loremaster Dibbs
				coord = { 50.6, 57.1, MAP.HILLSBRAD_FOOTHILLS },
				races = ALLIANCE_ONLY,
				lvl = 30,
				groups = {
					i(279880),	-- Ancient Voodoo Pouch
					i(279881),	-- Intrepid Explorer's Chainmail
					i(272124),	-- Translated Tale of I'lalai
				},
			}),
			q(95788, {	-- Magics of the Drowned City
				qg = 2277,	-- Loremaster Dibbs
				coord = { 50.6, 57.1, MAP.HILLSBRAD_FOOTHILLS },
				races = ALLIANCE_ONLY,
				lvl = 30,
				groups = {
					objective(1, {	-- 0/5 I'lalai Fetish
						provider = { "i", 270343 },	-- I'lalai Fetish
					}),
				},
			}),
			q(95789, {	-- Shady Saltseers
				qg = 773,	-- Krazek
				coord = { 27.0, 77.2, MAP.STRANGLETHORN_VALE },
				lvl = 34,
				groups = {
					objective(1, {	-- 0/10 Voodoo-Infused Artifact
						provider = { "i", 270333 },	-- Voodoo-Infused Artifact
					}),
					i(279882),	-- Rusted Troll War Belt
					i(279930),	-- Saltseer's Helm
				},
			}),
			q(95787, {	-- Take Two With Water
				qg = 2277,	-- Loremaster Dibbs
				coord = { 50.6, 57.1, MAP.HILLSBRAD_FOOTHILLS },
				races = ALLIANCE_ONLY,
				lvl = 30,
				groups = {
					objective(1, {	-- 0/1 The First Tablet of I'lalai
						description = "Down the stairs to the left, where you first see the pool.",
						providers = {
							{ "i", 270308 },	-- The First Tablet of I'lalai
							{ "o", 642943 },	-- The First Tablet of I'lalai
						},
					}),
					objective(2, {	-- 0/1 The Second Tablet of I'lalai
						description = "To the left of Var'Taka.",
						providers = {
							{ "i", 270309 },	-- The Second Tablet of I'lalai
							{ "o", 642944 },	-- The Second Tablet of I'lalai
						},
					}),
					objective(3, {	-- 0/1 The Third Tablet of I'lalai
						description = "Near Captain Dreadrise, in the mouth of a skull.",
						providers = {
							{ "i", 270310 },	-- The Third Tablet of I'lalai
							{ "o", 642945 },	-- The Third Tablet of I'lalai
						},
					}),
					objective(4, {	-- 0/1 The Fourth Tablet of I'lalai
						description = "Behind Min'loth the Serpent, the last boss.",
						providers = {
							{ "i", 270311 },	-- The Fourth Tablet of I'lalai
							{ "o", 642946 },	-- The Fourth Tablet of I'lalai
						},
					}),
				},
			}),
			q(95775, {	-- The Drowned City
				sourceQuest = 95770,	-- Locating the Lost City
				qg = 2519,	-- Kin'weelay
				coord = { 32.2, 27.8, MAP.STRANGLETHORN_VALE },
				races = HORDE_ONLY,
				lvl = 30,
				groups = {
					objective(1, {	-- 0/1 The First Tablet of I'lalai
						description = "Down the stairs to the left, where you first see the pool.",
						providers = {
							{ "i", 270308 },	-- The First Tablet of I'lalai
							{ "o", 642943 },	-- The First Tablet of I'lalai
						},
					}),
					objective(2, {	-- 0/1 The Second Tablet of I'lalai
						description = "To the left of Var'Taka.",
						providers = {
							{ "i", 270309 },	-- The Second Tablet of I'lalai
							{ "o", 642944 },	-- The Second Tablet of I'lalai
						},
					}),
					objective(3, {	-- 0/1 The Third Tablet of I'lalai
						description = "Near Captain Dreadrise, in the mouth of a skull.",
						providers = {
							{ "i", 270310 },	-- The Third Tablet of I'lalai
							{ "o", 642945 },	-- The Third Tablet of I'lalai
						},
					}),
					objective(4, {	-- 0/1 The Fourth Tablet of I'lalai
						description = "Behind Min'loth the Serpent, the last boss.",
						providers = {
							{ "i", 270311 },	-- The Fourth Tablet of I'lalai
							{ "o", 642946 },	-- The Fourth Tablet of I'lalai
						},
					}),
				},
			}),
			q(95776, {	-- The Only Good Brinescale...
				qg = 2464,	-- Commander Aggro'gosh
				coord = { 32.2, 28.8, MAP.STRANGLETHORN_VALE },
				races = HORDE_ONLY,
				lvl = 30,
				groups = {
					objective(1, {	-- 0/1 Var'Taka slain
						provider = { "n", 258924 },	-- Var'Taka
					}),
					i(279889),	-- Naga Priestess's Mantle
					i(279888),	-- Tidesoaked Leggings
				},
			}),
			q(95791, {	-- The Saltseer Captain
				qg = 773,	-- Krazek
				coord = { 27.0, 77.2, MAP.STRANGLETHORN_VALE },
				lvl = 34,
				groups = {
					objective(1, {	-- 0/3 Saltseer Coroner slain
						provider = { "n", 260353 },	-- Saltseer Coroner
					}),
					objective(2, {	-- 0/1 Captain Dreadrise slain
						provider = { "n", 260042 },	-- Captain Dreadrise
					}),
					i(279883),	-- Mutinous Cuffs
					i(279884),	-- South Seas Shroud
				},
			}),
			q(95798, {	-- The Web of Magic
				-- TODO: Prerequisite unconfirmed. A Contributor Report accepted it right after turning in Magics of the Drowned City (95788) and Take Two With Water (95787).
				qg = 2277,	-- Loremaster Dibbs
				qi = 270339,	-- Bundle of I'lalai Findings (PQI!)
				coord = { 50.6, 57.1, MAP.HILLSBRAD_FOOTHILLS },
				races = ALLIANCE_ONLY,
				lvl = 30,
				groups = {
					i(279878),	-- Apprentice Sorcerer's Slacks
					i(279879),	-- Rune-Etched Epaulets
				},
			}),
		}),
		e(3474, {	-- Zul'Alai
			creatureID = 258905,	-- Zul'Alai
			groups = {
				i(274600),	-- Berserker Shackles
				i(274598),	-- Bloodslash Axe
				i(274599),	-- Oathbound Bracers
			},
		}),
		e(3475, {	-- Var'Taka
			creatureID = 258924,	-- Var'Taka
			groups = {
				i(274602),	-- Brinebelly Leggings
				i(274601),	-- Harpoon of Command
			},
		}),
		e(3476, {	-- Captain Dreadrise
			creatureID = 260042,	-- Captain Dreadrise
			groups = {
				i(274605),	-- Briny Sash
				i(274603),	-- Dreadfrost Saber
				i(274604),	-- Frosty Blunderbuss
			},
		}),
		e(3478, {	-- Deathless Guardians
			crs = {
				260213,	-- Deathless Guardian
				268478,	-- Deathless Guardian
			},
		}),
		e(3511, {	-- Primeval Elemental
			crs = {
				263886,	-- Primeval Elemental
				273738,	-- Primeval Elemental
			},
			groups = {
				i(274611),	-- Robe of the Drowned
				i(274612),	-- Waterlogged Burial Shroud
			},
		}),
		e(3479, {	-- Min'loth the Serpent
			crs = {
				260243,	-- Min'loth the Serpent
				260274,	-- Min'loth the Serpent
			},
			groups = {
				i(274608),	-- Maw of Min'loth
				i(274610),	-- Ritual-Binder's Gloves
				i(274609),	-- Serpentbane Crown
			},
		}),
	},
});