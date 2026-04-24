---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, {
	m(BROKEN_ISLES, {
		m(ARGUS, bubbleDown({ ["timeline"] = { ADDED_7_3_0 } }, {
			m(KROKUUN, {
				n(QUESTS, {
					q(40238, {	-- A Grim Equation
						["sourceQuests"] = { 47431 },	-- Gathering Light
						["provider"] = { "n", 121521 },	-- Grand Vindicator Sorvos
						["coord"] = { 40.0, 63.1, KROKUUN },
					}),
					q(48483, {	-- A Stranger's Plea
						["sourceQuests"] = { 46938 },	-- Alone in the Abyss
						["provider"] = { "n", 126239 },	-- Chieftain Hatuun
						["coord"] = { 58.8, 78.4, KROKUUN },
						["groups"] = {
							i(152472),	-- Chieftain's Salve (QI!)
						},
					}),
					q(46842, {	-- A Strike at the Heart
						["sourceQuests"] = {
							46840,	-- Prisoners No More
							46841,	-- Threat Reduction
						},
						["provider"] = { "n", 120953 },	-- High Exarch Turalyon
						["coord"] = { 50.3, 53.8, KROKUUN },
					}),
					q(47990, {	-- A Touch of Fel
						["sourceQuests"] = {
							47988,	-- Chaos Theory
							47987,	-- Preventive Measures
							47986,	-- Scars of the Past
						},
						["provider"] = { "n", 124975 },	-- Image of Grand Artificer Romuul
						["coord"] = { 60.7, 47.2, KROKUUN },
						["groups"] = {
							i(151851),	-- Immaculate Felcore (QI!)
						},
					}),
					q(47526, {	-- Bringing the Big Guns
						["sourceQuests"] = { 47771 },	-- Locating the Longshot
						["provider"] = { "n", 121517 },	-- Baraat the Longshot
						["coord"] = { 31.5, 63.7, KROKUUN },
					}),
					q(47988, {	-- Chaos Theory
						["sourceQuests"] = { 47892 },	-- Storming the Citadel
						["provider"] = { "n", 124972 },	-- Illidan Stormrage
						["coord"] = { 60.7, 44.0, KROKUUN },
					}),
					q(46213, {	-- Crystals Not Included
						["sourceQuests"] = { 47431 },	-- Gathering Light
						["provider"] = { "n", 121519 },	-- Captain Fareeya
						["coord"] = { 40.5, 63.5, KROKUUN },
						["groups"] = {
							o(267729, {	-- Argunite Crystal
								i(150942),	-- Argunite Crystal (QI!)
							}),
						},
					}),
					q(47991, {	-- Dark Machinations
						["sourceQuests"] = {
							47988,	-- Chaos Theory
							47987,	-- Preventive Measures
							47986,	-- Scars of the Past
						},
						["provider"] = { "n", 124972 },	-- Illidan Stormrage
						["coord"] = { 60.7, 44.0, KROKUUN },
					}),
					q(47992, {	-- Dawn of Justice
						["sourceQuests"] = {
							47990,	-- A Touch of Fel
							47991,	-- Dark Machinations
							47989,	-- Heralds of Apocalypse
						},
						["provider"] = { "n", 120763 },	-- High Exarch Turalyon
						["coord"] = { 60.9, 47.2, KROKUUN },
					}),
					q(47891, {	-- Dire News
						["sourceQuests"] = { 47890 },	-- Visions of Torment
						["provider"] = { "n", 124595 },	-- Magni Bronzebeard
						["coord"] = { 56.9, 65.8, KROKUUN },
					}),
					q(47508, {	-- Fire at Will
						["sourceQuests"] = {
							40238,	-- A Grim Equation
							46213,	-- Crystals Not Included
							47541,	-- The Best Prevention
						},
						["provider"] = { "n", 121578 },	-- Archmage Y'mera
						["coord"] = { 31.7, 71.9, KROKUUN },
					}),
					q(46839, {	-- From Darkness
						["sourceQuests"] = { 46816 },	-- Rendezvous
						["provider"] = { "n", 120529 },	-- High Exarch Turalyon
						["coord"] = { 56.7, 67.4, KROKUUN },
					}),
					q(47989, {	-- Heralds of Apocalypse
						["sourceQuests"] = {
							47988,	-- Chaos Theory
							47987,	-- Preventive Measures
							47986,	-- Scars of the Past
						},
						["provider"] = { "n", 125443 },	-- Alleria Windrunner
						["coord"] = { 61.6, 46.8, KROKUUN },
					}),
					q(47104, {	-- Imprisoned Inquisitor
						["sourceQuests"] = { 47554 },	-- Intercepting the Legion's Plans
						["provider"] = { "n", 121519 },	-- Captain Fareeya
						["coord"] = { 40.5, 63.6, KROKUUN },
						["lvl"] = 110,
					}),
					q(47554, {	-- Intercepting the Legion's Plans
						["sourceQuests"] = { 47102 },	-- The Mysterious Missive
						["provider"] = { "n", 121519 },	-- Captain Fareeya
						["coord"] = { 40.5, 63.6, KROKUUN },
						["lvl"] = 45,
						["groups"] = {
							i(150993),	-- Army of the Light Code Book (QI!)
							i(150995),	-- Enigmatic Legion Orders (QI!)
						},
					}),
					q(48440, {	-- Into the Night
						["sourceQuests"] = { 47224 },	-- The Vidicaar
						["provider"] = { "n", 120977 },	-- Prophet Velen
						["coord"] = { 39.1, 78.2, 893 },	-- The Vindicaar (introductory scenario)
						["maps"] = {
							891,	-- Azuremyst Isle (introductory scenario)
							892,	-- The Exodar (introductory scenario)
							894,	-- The Vindicaar (introductory scenario)
						},
						["lvl"] = 110,
					}),
					q(47754, {	-- Lightly Roasted
						["sourceQuests"] = { 47526 },	-- Bringing the Big Guns
						["provider"] = { "n", 124906 },	-- Image of Grand Artificer Romuul
						["coord"] = { 31.6, 58.0, KROKUUN },
					}),
					q(47223, {	-- Light's Exodus
						["sourceQuests"] = { 47222 },	-- Two If By Sea
						["provider"] = { "n", 121756 },	-- Vindicator Boros
						["coord"] = { 21.4, 55.2, 891 },	-- Azuremyst Isle (introductory scenario)
						["maps"] = {
							892,	-- The Exodar (introductory scenario)
							893,	-- The Vindicaar (introductory scenario)
							894,	-- The Vindicaar (introductory scenario)
						},
						["lvl"] = 110,
					}),
					q(47653, {	-- Light's Return
						["sourceQuests"] = { 47652 },	-- The Light Mother
						["provider"] = { "n", 122621 },	-- High Exarch Turalyon
						["coord"] = { 37.3, 53.6, KROKUUN },
					}),
					q(47771, {	-- Locating the Longshot
						["sourceQuests"] = { 47508 },	-- Fire at Will
						["provider"] = { "n", 121578 },	-- Archmage Y'mera
						["coord"] = { 31.7, 71.9, KROKUUN },
					}),
					q(47993, {	-- Lord of the Spire
						["sourceQuests"] = { 47992 },	-- Dawn of Justice
					}),
					q(46297, {	-- Overwhelming Power
						["sourceQuests"] = { 46938 },	-- Alone in the Abyss
						["provider"] = { "n", 119535 },	-- Illidan Stormrage
						["coord"] = { 60.8, 79.5, KROKUUN },
						["groups"] = {
							i(152695),	-- Crest of the Grand Army
							i(152690),	-- Darkfall Arcanum
							i(152692),	-- Devastator Anchor Crystal
							i(152691),	-- Doomcaller Heart
							i(152694),	-- Felbound Drudge's Sorrow
							i(153421),	-- Grinning Vilefiend Skull
							i(152696),	-- Manacle of Dominance
							i(152697),	-- Mark of Defiant Survival
							i(152715),	-- Scarwing Talon
							i(152693),	-- Volatile Devastator Round
						},
					}),
					q(47987, {	-- Preventive Measures
						["sourceQuests"] = { 47892 },	-- Storming the Citadel
						["provider"] = { "n", 124974 },	-- Prophet Velen
						["coord"] = { 61.1, 47.7, KROKUUN },
						["groups"] = {
							i(152110),	-- Talisman of the Prophet (QI!)
						},
					}),
					q(46840, {	-- Prisoners No More
						["sourceQuests"] = { 46839 },	-- From Darkness
						["provider"] = { "n", 120760 },	-- High Exarch Turalyon
						["coord"] = { 59.9, 66.5, KROKUUN },
					}),
					q(46816, {	-- Rendezvous
						["sourceQuests"] = { 46732 },	-- The Prophet's Gambit
						["provider"] = { "n", 120529 },	-- High Exarch Turalyon
						["coord"] = { 56.7, 67.4, KROKUUN },
						--[[
						["groups"] = {
							{
								["spellID"] = 252201,	-- Lightforged Beacon: Krokul Hovel
								["questID"] = 46816,	-- Rendezvous
							},
						},
						--]]
					}),
					q(46843, {	-- Return to the Vindicaar
						["sourceQuests"] = { 46842 },	-- A Strike at the Heart
						["provider"] = { "n", 120738 },	-- High Exarch Turalyon
						["coord"] = { 51.5, 52.9, KROKUUN },
					}),
					q(47589, {	-- Righteous Fury
						["sourceQuests"] = { 46938 },	-- Alone in the Abyss
						["provider"] = { "n", 119543 },	-- Prophet Velen
						["coord"] = { 60.8, 79.5, KROKUUN },
					}),
					q(47986, {	-- Scars of the Past
						["sourceQuests"] = { 47892 },	-- Storming the Citadel
						["provider"] = { "n", 124975 },	-- Image of Grand Artificer Romuul
						["coord"] = { 60.8, 47.3, KROKUUN },
						["groups"] = {
							o(272458, {	-- Invocation Array
								["coord"] = { 60.6, 33.1, KROKUUN },
								["groups"] = { i(151837) },	-- Invocation Array (QI!)
							}),
							o(272460, {	-- Judgment Core
								["coord"] = { 60.2, 28.2, KROKUUN },
								["groups"] = { i(151838) },	-- Judgment Core (QI!)
							}),
							o(272463, {	-- Vindicator Plating
								["coord"] = { 62.1, 41.5, KROKUUN },
								["groups"] = { i(151839) },	-- Vindicator Plating (QI!)
							}),
						},
					}),
					q(47641, {	-- Signs of Resistance
						["sourceQuests"] = { 47627 },	-- Vengeance
						["provider"] = { "n", 119543 },	-- Prophet Velen
						["qgs"] = {
							119543,	-- Prophet Velen
							123149,	-- Prophet Velen (phased version of him available right after you finish previous quest)
						},
						["coord"] = { 54.2, 75.4, KROKUUN },
					}),
					q(48542, {	-- Strike Back
						["provider"] = { "i", 152575 },	-- Birth of the Ur'zul (QS!)
						["coord"] = { 71.2, 64.2, KROKUUN },	-- General area where QS can be looted
					}),
					q(47541, {	-- The Best Prevention
						["sourceQuests"] = { 47431 },	-- Gathering Light
						["provider"] = { "n", 121520 },	-- Grand Lector Enaara
						["coord"] = { 40.6, 64.2, KROKUUN },
					}),
					q(47652, {	-- The Light Mother
						["sourceQuests"] = { 47754 },	-- Lightly Roasted
						["provider"] = { "n", 122621 },	-- High Exarch Turalyon
						["coord"] = { 36.2, 56.9, KROKUUN },
					}),
					q(47102, {	-- The Mysterious Missive
						["sourceQuests"] = { 47994 },	-- Forming a Bond
						["provider"] = { "n", 121260 },	-- Lightforged Courier
						["coord"] = { 40.6, 70.0, KROKUUN },
						["lvl"] = 45,
						["groups"] = {
							i(147491),	-- Sealed Missive (QI!)
						},
					}),
					q(46732, {	-- The Prophet's Gambit
						["sourceQuests"] = { 47641 },	-- Signs of Resistance
						["provider"] = { "n", 121345 },	-- Prophet Velen
						["coord"] = { 59.9, 69.3, KROKUUN },
					}),
					q(47224, {	-- The Vindicaar
						["sourceQuests"] = { 47223 },	-- Light's Exodus
						["provider"] = { "n", 120977 },	-- Prophet Velen
						["coords"] = {
							{ 34.0, 65.1, 891 },	-- Azuremyst Isle (introductory scenario)
							{ 34.0, 65.1, 892 },	-- The Exodar (introductory scenario)
						},
						["maps"] = {
							893,	-- The Vindicaar (introductory scenario)
							894,	-- The Vindicaar (introductory scenario)
						},
						["lvl"] = 110,
					}),
					q(48460, {	-- The Wranglers
						["sourceQuests"] = { 46732 },	-- The Prophet's Gambit
						["provider"] = { "n", 119388 },	-- Chieftain Hatuun
						["coord"] = { 56.4, 67.5, KROKUUN },
						["isBreadcrumb"] = true,
					}),
					q(46841, {	-- Threat Reduction
						["sourceQuests"] = { 46839 },	-- From Darkness
						["provider"] = { "n", 120760 },	-- High Exarch Turalyon
						["coord"] = { 59.9, 66.5, KROKUUN },
					}),
					q(47627, {	-- Vengeance
						["sourceQuests"] = {
							47589,	-- Righteous Fury
							46297,	-- Overwhelming Power
							48483,	-- A Stranger's Plea
						},
						["provider"] = { "n", 123148 },	-- Illidan Stormrage
						["coord"] = { 54.3, 75.3, KROKUUN },
					}),
					q(48280, {	-- Visions of Another
						["sourceQuests"] = { 48277 },	-- The Speaker Seeks
						["provider"] = { "n", 124595 },	-- Magni Bronzebeard
						["coord"] = { 57.0, 65.6, KROKUUN },
					}),
					q(48272, {	-- Visions of Fear
						["sourceQuests"] = { 48273 },	-- The Speaker Listens
						["provider"] = { "n", 124595 },	-- Magni Bronzebeard
						["coord"] = { 57.0, 65.6, KROKUUN },
					}),
					q(47890, {	-- Visions of Torment
						["sourceQuests"] = { 47889 },	-- The Speaker Calls
						["provider"] = { "n", 124595 },	-- Magni Bronzebeard
						["coord"] = { 56.6, 67.4, KROKUUN },
					}),
					q(49015, {	-- Antorus, the Burning Throne: The Death of a Titan
						["sourceQuests"] = { 49014 },	-- The Burning Throne
						["qgs"] = {
							120533,	-- Prophet Velen
							126307,	-- Prophet Velen
							126950,	-- Prophet Velen
							128722,	-- Prophet Velen
							128949,	-- Prophet Velen
						},
						["coords"] = {
							{ 32.9, 59.0, THE_VINDICAAR_ANTORAN_WASTES_UPPER },
							{ 40.2, 24.1, THE_VINDICAAR_KROKUUN_UPPER },
						},
						["groups"] = {
							i(152984),	-- Boon of the Pantheon
							i(152626),	-- Insignia of the Grand Army
						},
					}),
					q(47967, {	-- An Argus Roper
						["sourceQuests"] = { 48460 },	-- The Wranglers [Breadcrumb - Required]
						["provider"] = { "n", 126160 },	-- Lead Rider Jerek
						["coord"] = { 64.4, 62.6, KROKUUN },
					}),
					q(48455, {	-- Duskcloak Problem
						["sourceQuests"] = { 48460 },	-- The Wranglers [Breadcrumb - Required]
						["provider"] = { "n", 126160 },	-- Lead Rider Jerek
						["coord"] = { 64.4, 62.6, KROKUUN },
					}),
					q(48453, {	-- Strike Back
						["sourceQuests"] = { 48460 },	-- The Wranglers [Breadcrumb - Required]
						["provider"] = { "n", 126160 },	-- Lead Rider Jerek
						["coord"] = { 64.4, 62.6, KROKUUN },
					}),
					q(48544, {	-- Woah, Nelly
						["sourceQuests"] = {
							47967,	-- An Argus Roper
							48455,	-- Duskcloak Problem
							48453,	-- Strike Back
						},
						["provider"] = { "n", 126160 },	-- Lead Rider Jerek
						["coord"] = { 64.4, 62.6, KROKUUN },
					}),
					q(48441, {	-- Remnants of Darkfall Ridge
						["sourceQuests"] = { 48544 },	-- Woah, Nelly
						["provider"] = { "n", 119388 },	-- Chieftain Hatuun
						["coord"] = { 56.6, 67.6, KROKUUN },
					}),
					q(48442, {	-- Nath'raxas Hold: Preparations
						["sourceQuests"] = { 48441 },	-- Remnants of Darkfall Ridge
						["provider"] = { "n", 119388 },	-- Chieftain Hatuun
						["coord"] = { 56.6, 67.6, KROKUUN },
					}),
					q(48910, {	-- Supplying Krokuun
						["sourceQuests"] = { 48442 },	-- Nath'raxas Hold: Preparations
						["provider"] = { "n", 119388 },	-- Chieftain Hatuun
						["coord"] = { 56.6, 67.6, KROKUUN },
						["isWeekly"] = true,
						["groups"] = {
							i(152095, {	-- Krokul Ridgestalker
								follower(1055, {	-- Krokul Ridgestalker (Temporary Troop)
									["collectible"] = false,
									["u"] = UNLEARNABLE,
								}),
								follower(1056, {	-- Krokul Ridgestalker (Temporary Troop)
									["collectible"] = false,
									["u"] = UNLEARNABLE,
								}),
							}),
						},
					}),
					q(48443, {	-- Nath'raxas Hold: Rescue Mission
						["sourceQuests"] = { 48910 },	-- Supplying Krokuun
						["provider"] = { "n", 119388 },	-- Chieftain Hatuun
						["coord"] = { 56.6, 67.6, KROKUUN },
					}),
					q(48634, {	-- Further Supplying Krokuun
						["sourceQuests"] = {
							48443,	-- Nath'raxas Hold: Rescue Mission
							48910,	-- Supplying Krokuun
						},
						["provider"] = { "n", 119388 },	-- Chieftain Hatuun
						["coord"] = { 56.6, 67.6, KROKUUN },
						["repeatable"] = true,
						["groups"] = {
							i(152095, {	-- Krokul Ridgestalker
								follower(1055, {	-- Krokul Ridgestalker (Temporary Troop)
									["collectible"] = false,
									["u"] = UNLEARNABLE,
								}),
								follower(1056, {	-- Krokul Ridgestalker (Temporary Troop)
									["collectible"] = false,
									["u"] = UNLEARNABLE,
								}),
							}),
						},
					}),
				}),
				n(ZONE_DROPS, {
					i(152575, {	-- Birth of the Ur'zul (QS!)
						["sourceQuest"] = 48460,	-- The Wranglers
						["coord"] = { 71.2, 64.2, KROKUUN },	-- General area where ["crs"] are located
						["crs"] = {
							123130,	-- Eredar Acolyte
							122835,	-- Eredar Soulshaper
						},
					}),
				}),
			}),
		})),
	}),
});

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.LEGION, bubbleDownSelf({ ["timeline"] = { ADDED_7_3_0 } }, {
	m(BROKEN_ISLES, {
		m(ARGUS, {
			m(KROKUUN, {
				n(QUESTS, {
					q(48281),	-- Tracking Quest - getting into the Lightforged Warframe during "Dawn of Justice" (questID 47992)
				}),
			}),
		}),
	}),
})));
