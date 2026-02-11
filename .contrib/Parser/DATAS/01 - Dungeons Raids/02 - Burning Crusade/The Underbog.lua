-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

root(ROOTS.Instances, expansion(EXPANSION.TBC, applyclassicphase(TBC_PHASE_ONE, {
	inst(262, bubbleDownSelf({ ["timeline"] = { ADDED_2_0_1 } }, {	-- The Underbog
		["lore"] = "Underbog is the 2nd 5-man instance within the Coilfang Reservoir found on the east side of the naga invested complex. The Underbog is home to the last vestiges of natural life left within Coilfang Reservoir that has not been completely stamped out by the Naga incursion. The only Naga presence in this section defends the structure they built to house their hydra god, Ghaz'an. The rest of the Underbog is a natural habitat, home to the most powerful species of animal life in Zangarmarsh.",
		-- #if BEFORE MOP
		["zone-text-areaID"] = 3716,	-- The Underbog
		-- #endif
		["mapID"] = COILFANG_RESERVOIR_UNDERBOG,
		["coord"] = { 54.24, 34.45, ZANGARMARSH },	-- The Underbog, Zangarmarsh
		["lvl"] = lvlsquish(60, 60, 10),
		["groups"] = {
			n(QUESTS, {
				q(29568, {	-- A Necessary Evil
					["qg"] = 54678,	-- Naturalist Bite
					["timeline"] = { ADDED_4_3_0 },
					["lvl"] = lvlsquish(61, 61, 10),
					["groups"] = {
						objective(1, {	-- Hungarfen slain
							["provider"] = { "n", 17770 },	-- Hungarfen
						}),
					},
				}),
				q(9715, {	-- Bring Me A Shrubbery!
					["qg"] = 17856,	-- Gzhun'tt
					["coord"] = { 19.4, 50.0, ZANGARMARSH },
					["timeline"] = { REMOVED_4_3_0 },
					["cost"] = { { "i", 24246, 5 } },	-- Sanguine Hibiscus
					["lvl"] = lvlsquish(63, 63, 10),
				}),
				q(29691, {	-- Bring Me A Shrubbery!
					["qg"] = 54674,	-- T'shu
					["timeline"] = { ADDED_4_3_0 },
					["cost"] = { { "i", 24246, 5 } },	-- Sanguine Hibiscus
					["lvl"] = lvlsquish(61, 61, 10),
				}),
				q(9714, {	-- Bring Me Another Shrubbery!
					["sourceQuest"] = 9715,	-- Bring Me A Shrubbery!
					["qg"] = 17856,	-- Gzhun'tt
					["coord"] = { 19.4, 50.0, ZANGARMARSH },
					["maxReputation"] = { FACTION_SPOREGGAR, EXALTED },	-- Sporeggar, Exalted.
					["timeline"] = { REMOVED_4_3_0 },
					["cost"] = { { "i", 24246, 5 } },	-- Sanguine Hibiscus
					["repeatable"] = true,
					["lvl"] = lvlsquish(63, 63, 10),
				}),
				q(29692, {	-- Bring Me Another Shrubbery!
					["sourceQuest"] = 29691,	-- Bring Me A Shrubbery!
					["qg"] = 54674,	-- T'shu
					["maxReputation"] = { FACTION_SPOREGGAR, EXALTED },	-- Sporeggar, Exalted.
					["timeline"] = { ADDED_4_3_0 },
					["cost"] = { { "i", 24246, 5 } },	-- Sanguine Hibiscus
					["repeatable"] = true,
					["lvl"] = lvlsquish(61, 61, 10),
				}),
				q(29571, {	-- Defending the Wilds
					["qg"] = 18074,	-- Elementalist Morgh <The Earthen Ring>
					["coord"] = { 60.6, 22.4, NAGRAND },
					["timeline"] = { ADDED_4_3_0 },
					-- ["isBreadcrumb"] = true,	-- 2024-06-22 Discord: not locked by 'Rescuing the Expedition' (29570)
					["lvl"] = lvlsquish(63, 63, 10),
				}),
				q(9717, {	-- Oh, It's On!
					["qg"] = 17857,	-- T'shu
					["coord"] = { 19.4, 49.8, ZANGARMARSH },
					["timeline"] = { REMOVED_4_3_0 },
					["lvl"] = lvlsquish(63, 63, 10),
					["groups"] = {
						objective(1, {	-- 0/1 Underspore Frond
							["providers"] = {
								{ "i",  24247 },	-- Underspore Frond
								{ "o", 182054 },	-- The Underspore
							},
							["coord"] = { 71.5, 86.9, COILFANG_RESERVOIR_UNDERBOG },
						}),
						i(28111),	-- Everlasting Underspore Frond
					},
				}),
				q(29570, {	-- Rescuing the Expedition
					["sourceQuest"] = 29571,	-- Defending the Wilds
					["qg"] = 54675,	-- Watcher Jhang
					["timeline"] = { ADDED_4_3_0 },
					["lvl"] = lvlsquish(61, 61, 10),
					["groups"] = {
						objective(1, {	-- Earthbinder Rayge Discovered
							["provider"] = { "n", 17885 },	-- Earthbinder Rayge
						}),
						objective(2, {	-- Windcaller Claw Discovered
							["provider"] = { "n", 17894 },	-- Windcaller Claw
						}),
					},
				}),
				q(29567, {	-- Stalk the Stalker
					["qg"] = 54674,	-- T'shu
					["timeline"] = { ADDED_4_3_0 },
					["groups"] = {
						objective(1, {	-- 0/1 Brain of the Black Stalker
							["provider"] = { "i", 24248 },	-- Brain of the Black Stalker
							["cr"] = 17882,	-- The Black Stalker
						}),
						i(28109),	-- Essence-Infused Mushroom
						i(28108),	-- Power-Infused Mushroom
					},
				}),
				q(9719, {	-- Stalk the Stalker
					["qg"] = 17866,	-- Khn'nix
					["coord"] = { 19.6, 49.8, ZANGARMARSH },
					["timeline"] = { REMOVED_4_3_0 },
					["lvl"] = lvlsquish(63, 63, 10),
					["groups"] = {
						objective(1, {	-- 0/1 Brain of the Black Stalker
							["provider"] = { "i", 24248 },	-- Brain of the Black Stalker
							["cr"] = 17882,	-- The Black Stalker
						}),
						i(28109),	-- Essence-Infused Mushroom
						i(28108),	-- Power-Infused Mushroom
					},
				}),
			}),
			n(ZONE_DROPS, {
				i(24246, {	-- Sanguine Hibiscus
					["description"] =
						-- #if AFTER 4.3.0
						"Drops commmonly from all Underbog mobs, and can be turned in to the NPCs named T'shu for Sporeggar reputation. Each turn in requires 5 Sanguine Hibiscus. T'shu can be found just inside the Underbog dungeon.",
						-- #else
						"Drops commmonly from all Underbog mobs, and can be turned in to the NPCs named Gzhun'tt for Sporeggar reputation. Each turn in requires 5 Sanguine Hibiscus. Gzhun'tt can be found in Sporeggar.",
						-- #endif
					["provider"] = { "o", 183385 },	-- Sanguine Hibiscus
				}),
			}),
			d(DIFFICULTY.DUNGEON.NORMAL, {
				e(576, {	-- Hungarfen
					["creatureID"] = 17770,
					["groups"] = {
						-- #if BEFORE MOP
						i(27631, {	-- Needle Shrike
							["timeline"] = { REMOVED_5_0_4 },
						}),
						-- #endif
						-- #if AFTER 7.3.5
						i(27747),	-- Boggspine Knuckles
						i(27746),	-- Arcanium Signet Bands
						-- #endif
						i(24451),	-- Lykul Bloodbands
						-- #if AFTER 7.3.5
						i(27745),	-- Hungarhide Gauntlets
						-- #endif
						i(24450),	-- Manaspark Gloves
						i(24452),	-- Starlight Gauntlets
						-- #if AFTER 7.3.5
						i(27743),	-- Girdle of Living Flame
						i(27748),	-- Cassock of the Loyal
						-- #endif
						-- #if BEFORE MOP
						i(24413, {	-- Totem of the Thunderhead
							["timeline"] = { REMOVED_5_0_4 },
						}),
						-- #endif
					},
				}),
				e(577, {	-- Ghaz'an
					["creatureID"] = 18105,
					["groups"] = {
						-- #if AFTER 7.3.5
						i(27757),	-- Greatstaff of the Leviathan
						-- #endif
						i(24461),	-- Hatebringer
						-- #if AFTER 7.3.5
						i(27759),	-- Headdress of the Tides
						i(27758),	-- Hydra-Fang Necklace
						-- #endif
						i(24462),	-- Luminous Pearls of Insight
						i(24460),	-- Talisman of Tenacity
						i(24459),	-- Cloak of Healing Rays
						-- #if AFTER 7.3.5
						i(27760),	-- Dunewind Sash
						i(27755),	-- Girdle of Gallantry
						-- #endif
						i(24458),	-- Studded Girdle of Virtue
						-- #if AFTER 7.3.5
						i(27761),	-- Ring of the Shadow Deeps
						-- #endif
					},
				}),
				e(578, {	-- Swamplord Musel'ek
					["creatureID"] = 17826,
					["groups"] = {
						-- #if AFTER 7.3.5
						i(27767),	-- Bogreaver
						-- #endif
						i(24453),	-- Zangartooth Shortblade
						-- #if AFTER 7.3.5
						i(27763),	-- Crown of the Forest Lord
						i(27766),	-- Swampstone Necklace
						-- #endif
						i(24457),	-- Truth Bearer Shoulderguards
						i(24454),	-- Cloak of Enduring Swiftness
						i(24455),	-- Tunic of the Nightwatcher
						-- #if AFTER 7.3.5
						i(27765),	-- Armwraps of Disdain
						i(27764),	-- Hands of the Sun
						-- #endif
						i(24456),	-- Greaves of the Iron Guardian
						-- #if AFTER 7.3.5
						i(27762),	-- Weathered Band of the Swamplord
						-- #endif
					},
				}),
				e(579, {	-- The Black Stalker
					["creatureID"] = 17882,
					["groups"] = {
						ach(650),	-- Underbog
						-- #if AFTER 7.3.5
						i(27769),	-- Endbringer
						-- #endif
						i(24464),	-- The Stalker's Fangs
						-- #if AFTER 7.3.5
						i(29350),	-- The Black Stalk
						i(27772),	-- Stormshield of Renewal
						i(27781),	-- Demonfang Ritual Helm
						i(27938),	-- Savage Mask of the Lynx Lord
						i(27779),	-- Bone Chain Necklace
						i(27771),	-- Doomplate Shoulderguards
						-- #endif
						i(24463),	-- Pauldrons of Brute Force
						i(24481),	-- Robes of the Augurer
						i(24465),	-- Shamblehide Chestguard
						-- #if AFTER 7.3.5
						i(27768),	-- Oracle Belt of Timeless Mystery
						i(27773),	-- Barbaric Legstraps
						i(27907),	-- Mana-Etched Pantaloons
						-- #endif
						i(24466),	-- Skulldugger's Leggings
						-- #if AFTER 7.3.5
						i(30541),	-- Stormsong Kilt
						i(29265),	-- Barkchip Boots
						i(32081),	-- Eye of the Stalker
						i(27780),	-- Ring of Fabled Hope
						i(27896),	-- Alembic of Infernal Power
						i(27770),	-- Argussian Compass
						-- #endif
					},
				}),
			}),
			d(DIFFICULTY.DUNGEON.HEROIC, {
				-- #if BEFORE 4.2.0
				["description"] = "You need to have a key to the instance in order to access this mode.",
				["cost"] = { { "i", 30623, 1 } },	-- Reservoir Key
				-- #endif
				["lvl"] = lvlsquish(70, 70, 30),
				["groups"] = {
					n(COMMON_BOSS_DROPS, {
						["crs"] = {
							17770,	-- Hungarfen
							18105,	-- Ghaz'an
							17826,	-- Swamplord Musel'ek
							17882,	-- The Black Stalker
						},
						["groups"] = {
							-- #if BEFORE CATA
							BADGE_OF_JUSTICE,
							-- #endif
							i(30606),	-- Lambent Chrysoprase
							i(30608),	-- Radiant Chrysoprase
							i(30607),	-- Splendid Fire Opal
						},
					}),
					e(576, {	-- Hungarfen
						["creatureID"] = 17770,
						["groups"] = {
							i(27747),	-- Boggspine Knuckles
							i(27746),	-- Arcanium Signet Bands
							-- #if AFTER 7.3.5
							i(24451),	-- Lykul Bloodbands
							-- #endif
							i(27745),	-- Hungarhide Gauntlets
							-- #if AFTER 7.3.5
							i(24450),	-- Manaspark Gloves
							i(24452),	-- Starlight Gauntlets
							-- #endif
							i(27743),	-- Girdle of Living Flame
							i(27748),	-- Cassock of the Loyal
							-- #if BEFORE MOP
							i(27744, {	-- Idol of Ursoc
								["timeline"] = { REMOVED_5_0_4 },
							}),
							-- #endif
						},
					}),
					e(577, {	-- Ghaz'an
						["creatureID"] = 18105,
						["groups"] = {
							i(27757),	-- Greatstaff of the Leviathan
							-- #if AFTER 7.3.5
							i(24461),	-- Hatebringer
							-- #endif
							i(27759),	-- Headdress of the Tides
							i(27758),	-- Hydra-Fang Necklace
							-- #if AFTER 7.3.5
							i(24462),	-- Luminous Pearls of Insight
							i(24460),	-- Talisman of Tenacity
							i(24459),	-- Cloak of Healing Rays
							-- #endif
							i(27760),	-- Dunewind Sash
							i(27755),	-- Girdle of Gallantry
							-- #if AFTER 7.3.5
							i(24458),	-- Studded Girdle of Virtue
							-- #endif
							i(27761),	-- Ring of the Shadow Deeps
						},
					}),
					e(578, {	-- Swamplord Musel'ek
						["creatureID"] = 17826,
						["groups"] = {
							i(27767),	-- Bogreaver
							-- #if AFTER 7.3.5
							i(24453),	-- Zangartooth Shortblade
							-- #endif
							i(27763),	-- Crown of the Forest Lord
							i(27766),	-- Swampstone Necklace
							-- #if AFTER 7.3.5
							i(24457),	-- Truth Bearer Shoulderguards
							i(24454),	-- Cloak of Enduring Swiftness
							i(24455),	-- Tunic of the Nightwatcher
							-- #endif
							i(27765),	-- Armwraps of Disdain
							i(27764),	-- Hands of the Sun
							-- #if AFTER 7.3.5
							i(24456),	-- Greaves of the Iron Guardian
							-- #endif
							i(27762),	-- Weathered Band of the Swamplord
						},
					}),
					e(579, {	-- The Black Stalker
						["creatureID"] = 17882,
						["groups"] = {
							ach(670),	-- Heroic: Underbog
							ach(5070, {	-- Heroic: Underbog Guild Run
								["timeline"] = { ADDED_4_0_3 },
							}),
							i(27769),	-- Endbringer
							-- #if AFTER 7.3.5
							i(24464),	-- The Stalker's Fangs
							-- #endif
							i(29350),	-- The Black Stalk
							i(27772),	-- Stormshield of Renewal
							i(27781),	-- Demonfang Ritual Helm
							i(27938),	-- Savage Mask of the Lynx Lord
							i(27779),	-- Bone Chain Necklace
							i(27771),	-- Doomplate Shoulderguards
							-- #if AFTER 7.3.5
							i(24463),	-- Pauldrons of Brute Force
							i(24481),	-- Robes of the Augurer
							i(24465),	-- Shamblehide Chestguard
							-- #endif
							i(27768),	-- Oracle Belt of Timeless Mystery
							i(27773),	-- Barbaric Legstraps
							i(27907),	-- Mana-Etched Pantaloons
							-- #if AFTER 7.3.5
							i(24466),	-- Skulldugger's Leggings
							-- #endif
							i(30541),	-- Stormsong Kilt
							i(29265),	-- Barkchip Boots
							i(32081),	-- Eye of the Stalker
							i(27780),	-- Ring of Fabled Hope
							i(27896),	-- Alembic of Infernal Power
							i(27770),	-- Argussian Compass
							applyclassicphase(TBC_PHASE_ONE, i(23572)),	-- Primal Nether
							i(33826),	-- Black Stalker Egg
						},
					}),
				},
			}),
		},
	})),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.WOD, bubbleDownSelf({ ["timeline"] = { ADDED_6_0_2 } }, {
	inst(262, {
		q(35559),	-- The Underbog Reward Quest - Normal completion
		q(35560),	-- The Underbog Reward Quest - Heroic completion
	}),
})));
