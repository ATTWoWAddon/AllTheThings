-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

root(ROOTS.Instances, expansion(EXPANSION.CATA, {
	applyclassicphase(CATA_PHASE_ONE, inst(74, bubbleDownSelf({ ["timeline"] = { ADDED_4_0_3 }, }, {	-- Throne of the Four Winds
		["mapID"] = 328,
		["coord"] = { 38.37, 80.63, ULDUM },	-- Throne of the Four Winds
		["sharedLockout"] = 1,
		["isRaid"] = true,
		["lvl"] = 85,
		["groups"] = {
			n(ACHIEVEMENTS, {
				ach(4851, {		-- Throne of the Four Winds
					crit(14097, {	-- Conclave of Wind
						["_encounter"] = { 154, DIFFICULTY.LEGACY_RAID.MULTI.NORMAL_HEROIC },
					}),
					crit(13581, {	-- Al'Akir
						["_encounter"] = { 155, DIFFICULTY.LEGACY_RAID.MULTI.NORMAL_HEROIC },
					}),
				}),
				ach(4987),	-- Throne of the Four Winds Guild Run
			}),
			d(DIFFICULTY.LEGACY_RAID.MULTI.NORMAL_HEROIC, {
				e(154, {	-- The Conclave of Wind
					["creatureID"] = 45871,
					["groups"] = {
						ach(5304),	-- Stay Chill
						i(152974,	{	-- Drafty (PET!)
							["timeline"] = { ADDED_7_3_0 },
						}),
					},
				}),
				e(155, {	-- Al'Akir
					["creatureID"] = 46753,
					["groups"] = {
						ach(5305),	-- Four Play
						i(138836, {	-- Illusion: Windfury (ILLUSION!)
							["classes"] = { SHAMAN },
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(63041),	-- Drake of the South Wind (MOUNT!)
						i(152973, {	-- Zephyrian Prince (PET!)
							["timeline"] = { ADDED_7_3_0 },
						}),
					},
				}),
			}),
			d(DIFFICULTY.LEGACY_RAID.MULTI.NORMAL, {
				e(154, {	-- The Conclave of Wind
					["creatureID"] = 45871,
					["groups"] = {
						i(63497),	-- Gale Rouser Belt
						i(63496),	-- Lightning Well Belt
						i(63490),	-- Sky Strider Belt
						i(63498),	-- Soul Breath Belt
						i(63492),	-- Star Chaser Belt
						i(63495),	-- Temepst Keeper Belt
						i(63491),	-- Thunder Wall Belt
						i(63493),	-- Wind Stalker Belt
						i(63488),	-- Mistral Circle
						i(63489),	-- Permafrost Signet
						i(63494),	-- Planetary Band
					},
				}),
				e(155, {	-- Al'Akir
					["creatureID"] = 46753,
					["groups"] = {
						i(63683, {	-- Helm of the Forlorn Conqueror
							["sym"] = SYMLINKS.TIER_ELEVEN.CONQ.HEAD,
						}),
						i(63684, {	-- Helm of the Forlorn Protector
							["sym"] = SYMLINKS.TIER_ELEVEN.PROT.HEAD,
						}),
						i(63682, {	-- Helm of the Forlorn Vanquisher
							["sym"] = SYMLINKS.TIER_ELEVEN.VANQ.HEAD,
						}),
						i(64315, {	-- Mantle of the Forlorn Conqueror
							["sym"] = SYMLINKS.TIER_ELEVEN.CONQ.SHOULDER,
						}),
						i(64316, {	-- Mantle of the Forlorn Protector
							["sym"] = SYMLINKS.TIER_ELEVEN.PROT.SHOULDER,
						}),
						i(64314, {	-- Mantle of the Forlorn Vanquisher
							["sym"] = SYMLINKS.TIER_ELEVEN.VANQ.SHOULDER,
						}),
						i(68127),	-- Stormwake, the Tempest's Reach
						i(68128),	-- Stormwake, the Tempest's Reach
						i(68129),	-- Stormwake, the Tempest's Reach
						i(69829),	-- Cloudburst Necklace
						i(69827),	-- Mistral Pendant
						i(69828),	-- Permafrost Choker
						i(69830),	-- Planetary Amulet
						i(69834),	-- Cloudburst Cloak
						i(69831),	-- Mistral Drape
						i(69833),	-- Permasfrost Cape
						i(69835),	-- Planetary Drape
						i(63506),	-- Gale Rouser Leggings
						i(63505),	-- Lightning Well Legguards
						i(63500),	-- Sky Strider Greaves
						i(63507),	-- Soul Breath Leggings
						i(63502),	-- Star Chaser Legguards
						i(63504),	-- Tempest Keeper Leggings
						i(63501),	-- Thunder Wall Greaves
						i(63503),	-- Wind Stalker Leggings
						i(63499),	-- Cloudburst Ring
					},
				}),
			}),
			d(DIFFICULTY.LEGACY_RAID.MULTI.HEROIC, {
				e(154, {	-- The Conclave of Wind
					["creatureID"] = 45871,
					["groups"] = {
						ach(5122),	-- Heroic: Conclave of Wind
						i(65374),	-- Gale Rouser Belt
						i(65377),	-- Lightning Well Belt
						i(65369),	-- Sky Strider Belt
						i(65376),	-- Soul Breath Belt
						i(65368),	-- Star Chaser Belt
						i(65375),	-- Tempest Keeper Belt
						i(65370),	-- Thunder Wall Belt
						i(65371),	-- Wind Stalker Belt
						i(65367),	-- Mistral Circle
						i(65372),	-- Permafrost Signet
						i(65373),	-- Planetary Band
					},
				}),
				e(155, {	-- Al'Akir
					["creatureID"] = 46753,
					["groups"] = {
						ach(5123, {	-- Heroic: Al'Akir
							title(151),	-- of the Four Winds
						}),
						ach(5463),	-- Heroic: Al'Akir Guild Run
						un(REMOVED_FROM_GAME, ach(5410)),	-- Realm First! Al'Akir
						i(65001),	-- Crown of the Forlorn Conqueror
						i(65000),	-- Crown of the Forlorn Protector
						i(65002),	-- Crown of the Forlorn Vanquisher
						i(66998),	-- Essence of the Forlorn
						i(65088),	-- Shoulders of the Forlorn Conqueror
						i(65087),	-- Shoulders of the Forlorn Protector
						i(65089),	-- Shoulders of the Forlorn Vanquisher
						i(68132),	-- Stormwake, the Tempest's Reach
						i(68130),	-- Stormwake, the Tempest's Reach
						i(68131),	-- Stormwake, the Tempest's Reach
						i(69885),	-- Cloudburst Necklace
						i(69880),	-- Mistral Pendant
						i(69883),	-- Permafrost Choker
						i(69882),	-- Planetary Amulet
						i(69879),	-- Cloudburst Cloak
						i(69884),	-- Mistral Drape
						i(69878),	-- Permafrost Cape
						i(69881),	-- Planetary Drape
						i(65384),	-- Gale Rouser Leggings
						i(65386),	-- Lightning Well Legguards
						i(65379),	-- Sky Strider Greaves
						i(65383),	-- Soul Breath Leggings
						i(65378),	-- Star Chaser Legguards
						i(65385),	-- Tempest Keeper Leggings
						i(65380),	-- Thunder Wall Greaves
						i(65381),	-- Wind Stalker Leggings
						i(65382),	-- Cloudburst Ring
					},
				}),
			}),
		},
	}))),
}));
