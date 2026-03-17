---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

local LATENT_ARCANA = 3394;
local BRIMMING_ARCANA = 3379;

SALTHERILS_HAVEN = createHeader({
	readable = "Saltheril's Soiree",
	icon = 132809,
	text = {
		en = "Saltheril's Soiree",
		cn = "萨瑟利尔的聚会",
	},
});

root(ROOTS.Zones, m(MAP.MIDNIGHT.QUELTHALAS, {
	m(MAP.MIDNIGHT.EVERSONG_WOODS, {
		n(SALTHERILS_HAVEN, {
			n(ACHIEVEMENTS, {
				ach(62190, {	-- Life of the Party
					i(257144),	-- Umbral Dragonhawk (MOUNT!)
				}),
				ach(61961),	-- Runestone Rush
				ach(62186, {	-- The Party Must Go On
					i(251909),	-- Eversong Feast Platter (DECOR!)
				}),
			}),
			n(FACTIONS, {
				faction(FACTION_BLOOD_KNIGHTS),
				faction(FACTION_FARSTRIDERS),
				faction(FACTION_MAGISTERS),
				faction(FACTION_SHADES_OF_THE_ROW),
			}),
			n(QUESTS, {
				q(91627, {	-- Saltheril's Haven
					--["sourceQuests"] = { ??? },	-- ??
					["provider"] = { "n", 247955 },	-- Jonas Everdawn
					["coord"] = { 45.7, 62.5, MAP.MIDNIGHT.SILVERMOON_CITY },
				}),
				q(91628, {	-- Honored Guests
					["sourceQuests"] = { 91627 },	-- Saltheril's Haven
					["provider"] = { "n", 240832 },	-- Lord Saltheril
					["coord"] = { 42.7, 47.3, MAP.MIDNIGHT.EVERSONG_WOODS },
				}),
				q(91629, {	-- High Esteem
					["sourceQuests"] = { 91628 },	-- Honored Guests
					["provider"] = { "n", 240832 },	-- Lord Saltheril
					["coord"] = { 42.7, 47.3, MAP.MIDNIGHT.EVERSONG_WOODS },
					["groups"] = {
						i(238987),	-- Saltheril's Favor (TODO: not really quest item, but it is?)
					},
				}),
				q(91693, {	-- The Subtle Game
					["sourceQuests"] = { 91629 },	-- High Esteem (TODO: could be wrong)
					["provider"] = { "n", 240832 },	-- Lord Saltheril
					["coord"] = { 42.7, 47.3, MAP.MIDNIGHT.EVERSONG_WOODS },
				}),
				q(89289, {	-- Favor of the Court
					["provider"] = { "n", 240832 },	-- Lord Saltheril
					["coord"] = { 42.7, 47.3, MAP.MIDNIGHT.EVERSONG_WOODS },
					["isWeekly"] = true,
				}),
			}),
			-- Blood Knights weekly
			n(QUESTS, sharedData({
				["provider"] = { "n", 240835 },	-- Knight-Lord Sunguard
				["coord"] = { 42.4, 46.7, MAP.MIDNIGHT.EVERSONG_WOODS },
				["maxReputation"] =  { FACTION_BLOOD_KNIGHTS, 6 },	-- Luminary
				["isWeekly"] = true,
			}, {
				q(91979),	-- Chop It Down
				q(90574),	-- Fortify the Runestones: Blood Knights
				q(91972),	-- Hold the Watch
				q(91977),	-- Less Lawless
				q(91971, {	-- Hitting the Hammer
					i(249416),	-- Partially Eaten Rations (QI!)
					i(249413),	-- Previously Loved Earring (QI!)
					i(249412),	-- Smelly Left Shoe (QI!)
					i(249415),	-- Throk's Scroll of Doom (QI!)
					i(249411),	-- Twilight Tokens (QI!)
				}),
				q(91974, {	-- Sunfire to the Blade
					i(249691),	-- Holy Sunfire (QI!)
				}),
				q(91978, {	-- Taxing the Tideborne
					o_repeated({
						["coords"] = {
							{ 37.7, 44.9, MAP.MIDNIGHT.SILVERMOON_CITY },
							{ 37.4, 45.2, MAP.MIDNIGHT.SILVERMOON_CITY },
							{ 39.0, 42.3, MAP.MIDNIGHT.SILVERMOON_CITY },
							{ 39.1, 44.4, MAP.MIDNIGHT.SILVERMOON_CITY },
							{ 39.3, 42.6, MAP.MIDNIGHT.SILVERMOON_CITY },
							{ 40.2, 45.0, MAP.MIDNIGHT.SILVERMOON_CITY },
							{ 40.6, 43.9, MAP.MIDNIGHT.SILVERMOON_CITY },
						},
						["groups"] = {
							o(568550),	-- Sack of Coins
							o(629446),	-- Smuggler's Satchel
							i(249686),	-- Tideborne Dubloon (QI!)
						},
					}),
				}),
				q(91973, {	-- Naga Blade
					o(568483, {	--
						i(249499),	-- Naga Scimitar (QI!)
					}),
				}),
			})),
			-- Farstriders weekly
			n(QUESTS, sharedData({
				["provider"] = { "n", 240836 },	-- Ranger-Captain Dawnfletch
				["coord"] = { 42.9, 46.4, MAP.MIDNIGHT.EVERSONG_WOODS },
				["maxReputation"] = { FACTION_FARSTRIDERS, 6 },	-- Luminary
				["isWeekly"] = true,
			}, {
				q(91991, {	-- A Little Errand
					o(568943, {	-- Vintner's Golden
						["coord"] = { 39.9, 60.8, MAP.MIDNIGHT.EVERSONG_WOODS },
						["groups"] = { i(249732), },	-- Vintner's Golden (QI!)
					}),
				}),
				q(90575),	-- Fortify the Runestones: Farstriders
				q(91989, {	-- Ghostland Peppers
					o(568477, {	-- Ghostland Pepper
						i(249497),	-- Ghostland Pepper (QI!)
					}),
				}),
				q(91987, {	-- Potted Lashers
					i(249418),	-- Lightblooming Bulb (QI!)
				}),
				q(91986, {	-- Put a Little Snap in Their Step
					i(249779),	-- Discordant Tune (QI!)
				}),
				q(91984, {	-- Sungrub Silk
					i(249422),	-- Sunsilk (QI!)
				}),
				q(91985, {	-- Windrunner Memorabilia
					i(249542),	-- Partially Used Memento (QI!)
					o(568507, {	--
						i(249552),	-- Mischievous Mask (QI!)
						i(249531),	-- Mysterious Cube (QI!)
						i(249540),	-- Oddly Sealed Book (QI!)
						i(249554),	-- Variable Timepiece (QI!)
					}),
				}),
				q(91983, {	-- Lovely Plumage
					i(249439),	-- Bright Feather (QI!)
					i(249440),	-- Bright Feather (QI!)
				}),
			})),
			-- Magisters weekly
			n(QUESTS, sharedData({
				["provider"] = { "n", 240834 },	-- Magistrix Bloodflame
				["coord"] = { 42.6, 46.2, MAP.MIDNIGHT.EVERSONG_WOODS },
				["maxReputation"] = { FACTION_MAGISTERS, 6 },	-- Luminary
				["isWeekly"] = true,
			}, {
				q(91993, {	-- Diminutive Demand
					i(249437),	-- Wand of Diminutive Proportions (QI!)
				}),
				q(90573),	-- Fortify the Runestones: Magisters
				q(89276),	-- Light Snacks
				q(91997, {	-- Power Clean
					i(249452),	-- Inanimate Broom (QI!)
				}),
				q(91995),	-- What Horrible Magic
			})),
			-- Shades of the Row weekly
			n(QUESTS, sharedData({
				["provider"] = { "n", 240837 },	-- Vyrin the Supplier
				["coord"] = { 42.6, 46.2, MAP.MIDNIGHT.EVERSONG_WOODS },
				["maxReputation"] = { FACTION_SHADES_OF_THE_ROW, 6 },	-- Luminary
				["isWeekly"] = true,
			}, {
				q(92007, {	-- Begged, Borrowed or Stolen
					i(249544),	-- Chest of Stolen Valuables (QI!)
				}),
				q(92002, {	-- Dangerous Showpieces
					i(249528),	-- Twilight Weaponry (QI!)
				}),
				q(90576),	-- Fortify the Runestone: Shades of the Row
				q(92004, {	-- Shady Dealings
					i(249687),	-- Poisonous Frog Secretions (QI!)
				}),
				q(92005, {	-- Throw The Dice
					i(249541),	-- Naga Fang (QI!)
				}),
				q(92006, {	-- We Need a Refill
					i(249555),	-- Bloodthistle Brandy (QI!)
					i(249556),	-- Mana Burner (QI!)
					i(249557),	-- Sun-Kissed Tranquilla (QI!)
				}),
			})),
			n(BONUS_OBJECTIVES, {
				q(91966, {	-- Saltheril's Soiree
					["sourceQuests"] = { 91629 },	-- High Esteem
					["coord"] = { 42.7, 47.3, MAP.MIDNIGHT.EVERSONG_WOODS },
					["isDaily"] = true,
				}),
			}),
			n(REWARDS, {
				--Currency
				currency(LATENT_ARCANA),
				currency(BRIMMING_ARCANA),
				i(242241),	-- Latent Arcana
				-- Boxes
				i(269701, {	-- Surplus Bag of Party Favors
					["sym"] = { -- [Quel'Thalas Zone Rewards content]
						{"select","mapID",MAP.MIDNIGHT.QUELTHALAS},{"pop"},
						{"where","headerID",ZONE_REWARDS},{"pop"},
						{"where","headerID",ARMOR},{"finalize"},

						{"select","mapID",MAP.MIDNIGHT.QUELTHALAS},{"pop"},
						{"where","headerID",ZONE_REWARDS},{"pop"},
						{"where","headerID",WEAPONS},
					},
				}),
				i(268489, {	-- Surplus Bag of Party Favors (Pre-Season)
					["timeline"] = { ADDED_12_0_1_LAUNCH, REMOVED_12_0_X_SEASONSTART },
					["sym"] = { -- [Quel'Thalas Zone Rewards content]
						{"select","mapID",MAP.MIDNIGHT.QUELTHALAS},{"pop"},
						{"where","headerID",ZONE_REWARDS},{"pop"},
						{"where","headerID",ARMOR},{"finalize"},

						{"select","mapID",MAP.MIDNIGHT.QUELTHALAS},{"pop"},
						{"where","headerID",ZONE_REWARDS},{"pop"},
						{"where","headerID",WEAPONS},
					},
				}),
				i(263465, {	-- Surplus Bag of Party Favors (Season 1)
					["timeline"] = { ADDED_12_0_X_SEASONSTART, REMOVED_12_1_0 },
					["sym"] = { -- [Quel'Thalas Zone Rewards content]
						{"select","mapID",MAP.MIDNIGHT.QUELTHALAS},{"pop"},
						{"where","headerID",ZONE_REWARDS},{"pop"},
						{"where","headerID",ARMOR},{"finalize"},

						{"select","mapID",MAP.MIDNIGHT.QUELTHALAS},{"pop"},
						{"where","headerID",ZONE_REWARDS},{"pop"},
						{"where","headerID",WEAPONS},
					},
				}),
			}),
			n(VENDORS, {
				n(242723, {	-- Apprentice Diell <Magister Vendor>
					["coord"] = { 43.5, 47.5, MAP.MIDNIGHT.EVERSONG_WOODS },
					["groups"] = bubbleDownRep(FACTION_MAGISTERS, {
						{		-- Interloper
						}, {	-- Guest
							iensemble(259074, {	-- Ensemble: Magister's Elegant Regalia
								["cost"] = { { "c", BRIMMING_ARCANA, 100 } },
							}),
						}, {	-- Socialite
							i(263225, {	-- Sunlit Glass Mirror (DECOR!)
								["cost"] = { { "c", BRIMMING_ARCANA, 150 } },
							}),
						}, {	-- Trendsetter
							iensemble(259080, {	-- Ensemble: Magister Dignitary's Trappings
								["cost"] = { { "c", BRIMMING_ARCANA, 100 } },
							}),
						}, {	-- Host
							i(259367, {	-- Formula: Animated Sin'dorei Pick (RECIPE!)
								["cost"] = {
									{ "c", ARTISAN_MOXIE.ENCHANTING, 150 },
									{ "c", BRIMMING_ARCANA, 200 },
								},
							}),
							i(263224, {	-- Gentle Floating Planter (DECOR!)
								["cost"] = { { "c", BRIMMING_ARCANA, 150 } },
							}),
						}, {	-- Luminary
							i(264909, {	-- Flicker (PET!)
								["cost"] = { { "c", BRIMMING_ARCANA, 200 } },
							}),
							iensemble(259089, {	-- Ensemble: Magister Socialite's Attire
								["cost"] = { { "c", BRIMMING_ARCANA, 100 } },
							}),
						},
					}),
				}),
				n(242725, {	-- Armorer Goldcrest <Blood Knight Vendor>
					["coord"] = { 43.5, 47.5, MAP.MIDNIGHT.EVERSONG_WOODS },
					["groups"] = bubbleDownRep(FACTION_BLOOD_KNIGHTS, {
						{		-- Interloper
						}, {	-- Guest
							iensemble(259027, {	-- Ensemble: Blood Knight's Elegant Regalia
								["cost"] = { { "c", BRIMMING_ARCANA, 100 } },
							}),
						}, {	-- Socialite
							i(263203, {	-- Rack of Silvermoon Arms (DECOR!)
								["cost"] = { { "c", BRIMMING_ARCANA, 150 } },
							}),
						}, {	-- Trendsetter
							iensemble(259081, {	-- Ensemble: Blood Knight Dignitary's Trappings
								["cost"] = { { "c", BRIMMING_ARCANA, 100 } },
							}),
						}, {	-- Host
							i(265997, {	-- Blood Knight Champion's Tabard (COSMETIC!)
								["cost"] = { { "c", BRIMMING_ARCANA, 100 } },
							}),
							i(259364, {	-- Formula: Animated Sin'dorei Hammer (RECIPE!)
								["cost"] = {
									{ "c", ARTISAN_MOXIE.ENCHANTING, 150 },
									{ "c", BRIMMING_ARCANA, 200 },
								},
							}),
						}, {	-- Luminary
							i(264907, {	-- Blood Knight Recruit's Shield (COSMETIC!)
								["cost"] = { { "c", BRIMMING_ARCANA, 200 } },
							}),
							iensemble(259088, {	-- Ensemble: Blood Knight Socialite's Attire
								["cost"] = { { "c", BRIMMING_ARCANA, 100 } },
							}),
						},
					}),
				}),
				n(242726, {	-- Neriv <Row Vendor>
					["coord"] = { 43.5, 47.7, MAP.MIDNIGHT.EVERSONG_WOODS },
					["groups"] = bubbleDownRep(FACTION_SHADES_OF_THE_ROW, {
						{		-- Interloper
						}, {	-- Guest
							iensemble(259075, {	-- Ensemble: Pilfered Elegant Regalia
								["cost"] = { { "c", BRIMMING_ARCANA, 100 } },
							}),
						}, {	-- Socialite
							i(250772, {	-- Crimson Lightwood Privacy Screen (DECOR!)
								["cost"] = { { "c", BRIMMING_ARCANA, 150 } },
							}),
						}, {	-- Trendsetter
							iensemble(259083, {	-- Ensemble: Pilfered Dignitary's Trappings
								["cost"] = { { "c", BRIMMING_ARCANA, 100 } },
							}),
						}, {	-- Host
							i(259375, {	-- Formula: Self-Pouring Thalassian Sunwine (RECIPE!)
								["cost"] = {
									{ "c", ARTISAN_MOXIE.ENCHANTING, 150 },
									{ "c", BRIMMING_ARCANA, 200 },
								},
							}),
							i(246692, {	-- Murder Row Wine Decanter (DECOR!)
								["cost"] = { { "c", BRIMMING_ARCANA, 150 } },
							}),
						}, {	-- Luminary
							i(264996, {	-- Gilded Sunlance (COSMETIC!)
								["cost"] = { { "c", BRIMMING_ARCANA, 200 } },
							}),
							iensemble(259087, {	-- Ensemble: Pilfered Socialite's Attire
								["cost"] = { { "c", BRIMMING_ARCANA, 100 } },
							}),
						},
					}),
				}),
				n(242724, {	-- Ranger Allorn <Farstrider Vendor>
					["coord"] = { 43.4, 47.6, MAP.MIDNIGHT.EVERSONG_WOODS },
					["groups"] = bubbleDownRep(FACTION_FARSTRIDERS, {
						{		-- Interloper
						}, {	-- Guest
							iensemble(259076, {	-- Ensemble: Farstrider's Elegant Regalia
								["cost"] = { { "c", BRIMMING_ARCANA, 100 } },
							}),
						}, {	-- Socialite
							i(263212, {	-- Farstrider's Comfy Cushion (DECOR!)
								["cost"] = { { "c", BRIMMING_ARCANA, 150 } },
							}),
						}, {	-- Trendsetter
							iensemble(259079, {	-- Ensemble: Farstrider Dignitary's Trappings
								["cost"] = { { "c", BRIMMING_ARCANA, 100 } },
							}),
						}, {	-- Host
							i(263216, {	-- Gilded Lightwood Wardrobe (DECOR!)
								["cost"] = { { "c", BRIMMING_ARCANA, 150 } },
							}),
							i(258505, {	-- Technique: Sin'dorei Phoenix Quill (RECIPE!)
								["cost"] = {
									{ "c", ARTISAN_MOXIE.INSCRIPTION, 150 },
									{ "c", BRIMMING_ARCANA, 200 },
								},
							}),
						}, {	-- Luminary
							i(264997, {	-- Farstriders Quiver (COSMETIC!)
								["cost"] = { { "c", BRIMMING_ARCANA, 200 } },
							}),
							iensemble(259090, {	-- Ensemble: Farstrider Socialite's Attire
								["cost"] = { { "c", BRIMMING_ARCANA, 100 } },
							}),
						},
					}),
				}),
			}),
		}),
	}),
}));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.MID, {
	m(MAP.MIDNIGHT.QUELTHALAS, {
		n(SALTHERILS_HAVEN, {
			n(QUESTS, {
				q(95113),	-- Weekly completion of ???
				q(89290),	-- Weekly completion of Farstriders
			}),
		}),
	}),
}));
