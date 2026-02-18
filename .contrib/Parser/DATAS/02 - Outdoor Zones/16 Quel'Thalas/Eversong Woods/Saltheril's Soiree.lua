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
	},
});

root(ROOTS.Zones, m(MAP.MIDNIGHT.QUELTHALAS, {
	m(MAP.MIDNIGHT.EVERSONG_WOODS, {
		n(SALTHERILS_HAVEN, {
			n(ACHIEVEMENTS, {
				ach(62190, {	-- Life of the Party
					i(257144),	-- Umbral Dragonhawk (MOUNT!)
				}),
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
			}),
			--Blood-Guards weekly
			n(QUESTS, sharedData({
				["provider"] = { "n", 240835 },	-- Knight-Lord Sunguard
				["coord"] = { 42.4, 46.7, MAP.MIDNIGHT.EVERSONG_WOODS },
				["isWeekly"] = true,
			}, {
				--q(XXX),	-- Fortify the Runestones: XXX
				q(91971, {	-- Hitting the Hammer
					["description"] = "Up after 1st Saltheril's Favor donation.",
					["groups"] = {
						i(249416),	-- Partially Eaten Rations (QI!)
						i(249413),	-- Previously Loved Earring (QI!)
						i(249412),	-- Smelly Left Shoe (QI!)
						i(249415),	-- Throk's Scroll of Doom (QI!)
						i(249411),	-- Twilight Tokens (QI!)
					},
				}),
				q(91978, {	-- Taxing the Tideborne
					["description"] = "Up after 2nd Saltheril's Favor donation.",
					["groups"] = {
						o(568550, {	--
							i(249686),	-- Tideborne Dubloon (QI!)
						}),
					},
				}),
				q(91973, {	-- Naga Blade
					["description"] = "Up after 3rd Saltheril's Favor donation.",
					["groups"] = {
						o(568483, {	--
							i(249499),	-- Naga Scimitar (QI!)
						}),
					},
				}),
			})),
			--Farstriders weekly
			n(QUESTS, sharedData({
				["provider"] = { "n", 240836 },	-- Ranger-Captain Dawnfletch
				["coord"] = { 42.9, 46.4, MAP.MIDNIGHT.EVERSONG_WOODS },
				["isWeekly"] = true,
			}, {
				q(90575),	-- Fortify the Runestones: Farstriders
				q(91989, {	-- Ghostland Peppers
					["description"] = "Up after 1st Saltheril's Favor donation.",
					["groups"] = {
						o(568477, {	--
							i(249497),	-- Ghostland Pepper (QI!)
						}),
					},
				}),
				q(91984, {	-- Sungrub Silk
					["description"] = "Up after 2nd Saltheril's Favor donation.",
					["groups"] = {
						i(249422),	-- Sunsilk (QI!)
					},
				}),
				q(91985, {	-- Windrunner Memorabilia
					["description"] = "Up after 3rd Saltheril's Favor donation.",
					["groups"] = {
						i(249542),	-- Partially Used Memento (QI!)
						o(568507, {	--
							i(249552),	-- Mischievous Mask (QI!)
							i(249531),	-- Mysterious Cube (QI!)
							i(249540),	-- Oddly Sealed Book (QI!)
							i(249554),	-- Variable Timepiece (QI!)
						}),
					},
				}),
			})),
			n(BONUS_OBJECTIVES, {
				q(91966, {	-- Saltheril's Soiree (TODO: possibly wq in future builds? questID unique per chosen faction?)
					["coord"] = { 42.7, 47.3, MAP.MIDNIGHT.EVERSONG_WOODS },
				}),
			}),
			n(REWARDS, {
				--Currency
				currency(LATENT_ARCANA),
				currency(BRIMMING_ARCANA),
				--It was a bad idea to not add it right away, it could be Midnight wqs rewards
				i(256969),	-- Farstrider's Pendant (neck)
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

-- root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.MID, {
-- 	m(MAP.MIDNIGHT.QUELTHALAS, {
-- 		n(SALTHERILS_HAVEN, {
-- 			n(QUESTS, {

-- 			}),
-- 		}),
-- 	}),
-- }));
