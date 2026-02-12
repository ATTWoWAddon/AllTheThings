---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

-- #if ANYCLASSIC
local FISSURE_STONE_FRAGMENT = 3148;	-- Fissure Stone Fragment
local frags = function(cost, item)
	return applycost(item, { "c", FISSURE_STONE_FRAGMENT, cost });
end
local PROTOCOL_MAPS = {
	DEADMINES, 292,	-- Deadmines
	SHADOWFANG_KEEP,
	SHADOWFANG_KEEP_LEVEL2,
	SHADOWFANG_KEEP_LEVEL3,
	SHADOWFANG_KEEP_LEVEL4,
	SHADOWFANG_KEEP_LEVEL5,
	SHADOWFANG_KEEP_LEVEL6,
	SHADOWFANG_KEEP_LEVEL7,
	283, 284,	-- Blackrock Caverns
	293,	-- Grim Batol
	297, 298, 299,	-- Halls of Origination
	277,	-- Lost City of the Tol'vir
	324,	-- The Stonecore
	322, 323,	-- Throne of the Tides
	325,	-- The Vortex Pinnacle
}
local PROTOCOL_BOSSES = {
	-- Blackrock Caverns
	39665,	-- Rom'ogg Bonecrusher
	39679,	-- Corla, Herald of Twilight
	39698,	-- Karsh Steelbender
	39700,	-- Beauty
	39705,	-- Ascendent Lord Obsidius
	-- Deadmines
	47162,	-- Glubtok
	47296,	-- Helix Gearbreaker
	43778,	-- Foe Reaper 5000
	47626,	-- Admiral Ripsnarl
	47739,	-- "Captain" Cookie
	49541,	-- Vanessa VanCleef
	-- Grim Batol
	39625,	-- General Umbriss
	40177,	-- Forgemaster Throngus
	40319,	-- Drahga Shadowburner
	40484,	-- Erudax
	-- Halls of Origination
	39425,	-- Temple Guardian Anhuur
	39428,	-- Earthrager Ptah
	39788,	-- Anraphet
	39587,	-- Isiset, Construct of Magic
	39731,	-- Ammunae, Construct of Life
	39732,	-- Setesh, Construct of Destruction
	39378,	-- Rajh, Construct of Sun
	-- Lost City of the Tol'vir
	44577,	-- General Husam
	43614,	-- Lockmaw
	49045,	-- Augh
	43612,	-- High Prophet Barim
	44819,	-- Siamat
	-- Shadowfang Keep
	46962,	-- Baron Ashbury
	3887,	-- Baron Silverlaine
	4278,	-- Commander Springvale
	46963,	-- Lord Walden
	46964,	-- Lord Godfrey
	-- The Stonecore
	43438,	-- Corborus
	43214,	-- Slabhide
	42188,	-- Ozruk
	42333,	-- High Priestess Azil
	-- The Vortex Pinnacle
	43878,	-- Grand Vizier Ertan
	43873,	-- Altairus
	43875,	-- Asaad, Caliph of Zephyrs
	-- Throne of the Tides
	40586,	-- Lady Naz'jar
	40765,	-- Commander Ulthok
	40788,	-- Mindbender Ghur'sha
	44566,	-- Ozumat
}
root(ROOTS.ExpansionFeatures, expansion(EXPANSION.CATA, applyclassicphase(CATA_PHASE_RAGE_OF_THE_FIRELANDS, {
	n(PROTOCOL_INFERNO, bubbleDownSelf({ ["timeline"] = { ADDED_4_2_0 } }, {
		["lvl"] = 85,
		["groups"] = {
			n(ACHIEVEMENTS, {
				ach(41148, {	-- Protocol Inferno: Terminated
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						41146,	-- Protocol Inferno: Deadmines
						41147,	-- Protocol Inferno: Shadowfang Keep
						41139,	-- Protocol Inferno: Blackrock Caverns
						41143,	-- Protocol Inferno: Grim Batol
						41144,	-- Protocol Inferno: Halls of Origination
						41145,	-- Protocol Inferno: Lost City of the Tol'vir
						41141,	-- Protocol Inferno: The Stonecore
						41142,	-- Protocol Inferno: The Vortex Pinnacle
						41140,	-- Protocol Inferno: Throne of the Tides
					}},
				}),
			}),
			n(REWARDS, {
				-- CRIEVE NOTE: This doesn't drop on Protocol Twilight mode.
				currency(FISSURE_STONE_FRAGMENT, {
					["OnInit"] = FUNCTION_TEMPLATES.OnInit.GenerateShouldExcludeFromTooltipForBuffs(
						470595	-- Fury of the Firelord [Protocol Inferno buff]
					),
					["description"] = "Two Fissure Stone Fragments drop per boss in Protocol Inferno and the final boss of each dungeon will drop an extra three Fissure Stone Fragments if players have defeated all of the other bosses in the dungeon.",
					["maps"] = PROTOCOL_MAPS,
					["crs"] = PROTOCOL_BOSSES,
				}),
			}),
			n(VENDORS, {
				n(234135, {	-- Kyanite Stonetender <Fissure Stone Fragment Exchange>
					["aqd"] = {
						["coord"] = { 78.9 , 71.3, STORMWIND_CITY },
					},
					["hqd"] = {
						["coord"] = { 48.6, 71.4, ORGRIMMAR },
					},
					["groups"] = {
						filter(MOUNTS, {
							["providers"] = {
								-- Neck
								{ "i", 232948 },	-- Satchel of the Cloudburst Necklace
								{ "i", 232956 },	-- Satchel of the Mistral Pendant
								{ "i", 232958 },	-- Satchel of the Permafrost Choker
								{ "i", 232960 },	-- Satchel of the Planetary Amulet
								-- Cloaks
								{ "i", 232947 },	-- Satchel of the Cloudburst Cloak
								{ "i", 232955 },	-- Satchel of the Mistral Drape
								{ "i", 232957 },	-- Satchel of the Permafrost Cape
								{ "i", 232962 },	-- Satchel of the Planetary Drape
								-- Plate Armor
								{ "i", 232963 },	-- Satchel of the Sky Strider Belt
								{ "i", 232964 },	-- Satchel of the Sky Strider Greaves
								{ "i", 232969 },	-- Satchel of the Tempest Keeper Belt
								{ "i", 232970 },	-- Satchel of the Tempest Keeper Leggings
								{ "i", 232971 },	-- Satchel of the Thunder Wall Belt
								{ "i", 232972 },	-- Satchel of the Thunder Wall Greaves
								-- Mail Armor
								{ "i", 232952 },	-- Satchel of the Lightning Well Belt
								{ "i", 232953 },	-- Satchel of the Lightning Well Legguards
								{ "i", 232967 },	-- Satchel of the Star Chaser Belt
								{ "i", 232968 },	-- Satchel of the Star Chaser Legguards
								-- Leather Armor
								{ "i", 232950 },	-- Satchel of the Gale Rouser Belt
								{ "i", 232951 },	-- Satchel of the Gale Rouser Leggings
								{ "i", 232973 },	-- Satchel of the Wind Stalker Belt
								{ "i", 232974 },	-- Satchel of the Wind Stalker Leggings
								-- Cloth Armor
								{ "i", 232965 },	-- Satchel of the Soul Breath Belt
								{ "i", 232966 },	-- Satchel of the Soul Breath Leggings
								-- Rings
								{ "i", 232949 },	-- Satchel of the Cloudburst Ring
								{ "i", 232954 },	-- Satchel of the Mistral Circle
								{ "i", 232959 },	-- Satchel of the Permafrost Signet
								{ "i", 232961 },	-- Satchel of the Planetary Band
							},
							description = "The randomized satchels whose loot originates from Heroic Throne of the Four Winds all have a chance to contain one of the following mounts.",
							["groups"] = {
								i(63040),	-- Reins of the Drake of the North Wind
								i(63043),	-- Reins of the Vitreous Stone Drake
								i(63041),	-- Reins of the Drake of the South Wind
							},
						}),
						-- Tier Tokens
						frags(32, i(63683)),	-- Helm of the Forlorn Conqueror
						frags(32, i(63684)),	-- Helm of the Forlorn Protector
						frags(32, i(63682)),	-- Helm of the Forlorn Vanquisher
						frags(32, i(64315)),	-- Mantle of the Forlorn Conqueror
						frags(32, i(64316)),	-- Mantle of the Forlorn Protector
						frags(32, i(64314)),	-- Mantle of the Forlorn Vanquisher
						-- Weapons
						-- One-Handed
						frags(25, i(59341)),	-- Incineratus
						frags(25, i(63536)),	-- Blade of the Witching Hour
						frags(20, i(59122)),	-- Organic Lifeform Inverter
						frags(20, i(59494)),	-- Uhn'agh Fash, the Darkest Betrayal
						frags(20, i(59333)),	-- Lava Spine
						frags(20, i(63533)),	-- Fang of Twilight
						frags(25, i(59459)),	-- Andoros, Fist of the Dragon King
						frags(25, i(63680)),	-- Twilight's Hammer
						frags(20, i(59347)),	-- Mace of Acrid Death
						frags(20, i(59443)),	-- Crul'korak, the Lightning's Arc
						-- Two-Handed
						frags(30, i(59492)),	-- Akirus the Worm-Breaker
						frags(30, i(59474)),	-- Malevolence
						frags(30, i(63679)),	-- Reclaimed Ashkandi, Greatsword of the Brotherhood
						frags(30, i(59330)),	-- Shalug'doom, the Axe of Unmaking
						-- Ranged
						frags(30, i(63532)),	-- Dragonheart Piercer
						frags(30, i(59320)),	-- Themios the Darkbringer
						frags(15, i(59314)),	-- Pip's Solution Agitator
						-- Off-hand
						frags(20, i(59444)),	-- Akmin-Kurai, Dominion's Shield
						frags(20, i(59327)),	-- Kingdom's Heart
						frags(15, i(59484)),	-- Book of Binding Will
						frags(15, i(59513)),	-- Scepter of Ice
						-- Necks
						frags(12, i(232948, {	-- Satchel of the Cloudburst Necklace
							i(69885),	-- Cloudburst Necklace
						})),
						frags(12, i(232956, {	-- Satchel of the Mistral Pendant
							i(69880),	-- Mistral Pendant
						})),
						frags(12, i(232958, {	-- Satchel of the Permafrost Choker
							i(69883),	-- Permafrost Choker
						})),
						frags(12, i(232960, {	-- Satchel of the Planetary Amulet
							i(69882),	-- Planetary Amulet
						})),
						frags(80, i(60227)),	-- Caelestrasz's Will
						frags(50, i(65025)),	-- Rage of Ages
						-- Cloaks
						frags(12, i(232947, {	-- Satchel of the Cloudburst Cloak
							i(69879),	-- Cloudburst Cloak
						})),
						frags(12, i(232955, {	-- Satchel of the Mistral Drape
							i(69884),	-- Mistral Drape
						})),
						frags(12, i(232957, {	-- Satchel of the Permafrost Cape
							i(69878),	-- Permafrost Cape
						})),
						frags(12, i(232962, {	-- Satchel of the Planetary Drape
							i(69881),	-- Planetary Drape
						})),
						frags(80, i(60232)),	-- Shroud of Endless Grief
						frags(50, i(65018)),	-- Shadow of Dread
						-- Plate Armor
						frags(12, i(232963, {	-- Satchel of the Sky Strider Belt
							["classes"] = PLATE_CLASSES,
							["groups"] = {
								i(65369),	-- Sky Strider Belt
							},
						})),
						frags(21, i(232964, {	-- Satchel of the Sky Strider Greaves
							["classes"] = PLATE_CLASSES,
							["groups"] = {
								i(65379),	-- Sky Strider Greaves
							},
						})),
						frags(12, i(232969, {	-- Satchel of the Tempest Keeper Belt
							["classes"] = PLATE_CLASSES,
							["groups"] = {
								i(65375),	-- Tempest Keeper Belt
							},
						})),
						frags(21, i(232970, {	-- Satchel of the Tempest Keeper Leggings
							["classes"] = PLATE_CLASSES,
							["groups"] = {
								i(65385),	-- Tempest Keeper Leggings
							},
						})),
						frags(12, i(232971, {	-- Satchel of the Thunder Wall Belt
							["classes"] = PLATE_CLASSES,
							["groups"] = {
								i(65370),	-- Thunder Wall Belt
							},
						})),
						frags(21, i(232972, {	-- Satchel of the Thunder Wall Greaves
							["classes"] = PLATE_CLASSES,
							["groups"] = {
								i(65380),	-- Thunder Wall Greaves
							},
						})),
						frags(60, i(65027)),	-- Pauldrons of the Apocalypse
						frags(50, i(65085)),	-- Electron Inductor Coils
						frags(50, i(65143)),	-- Bracers of Impossible Strength
						frags(50, i(65127)),	-- Shackles of the End of Days
						frags(80, i(60234)),	-- Bindings of Bleak Betrayal
						frags(80, i(60228)),	-- Bracers of the Mat'redor
						frags(50, i(65022)),	-- Belt of the Blackhand
						frags(80, i(60229)),	-- War-Torn Crushers
						-- Mail Armor
						frags(12, i(232952, {	-- Satchel of the Lightning Well Belt
							["classes"] = MAIL_CLASSES,
							["groups"] = {
								i(65377),	-- Lightning Well Belt
							},
						})),
						frags(21, i(232953, {	-- Satchel of the Lightning Well Legguards
							["classes"] = MAIL_CLASSES,
							["groups"] = {
								i(65386),	-- Lightning Well Legguards
							},
						})),
						frags(12, i(232967, {	-- Satchel of the Star Chaser Belt
							["classes"] = MAIL_CLASSES,
							["groups"] = {
								i(65368),	-- Star Chaser Belt
							},
						})),
						frags(21, i(232968, {	-- Satchel of the Star Chaser Legguards
							["classes"] = MAIL_CLASSES,
							["groups"] = {
								i(65378),	-- Star Chaser Legguards
							},
						})),
						frags(60, i(65074)),	-- Spaulders of the Scarred Lady
						frags(50, i(65028)),	-- Chimaeron Armguards
						frags(50, i(65068)),	-- Chaos Beast Bracers
						frags(80, i(60230)),	-- Twilight Scale Leggings
						frags(80, i(60235)),	-- Boots of Az'galada
						-- Leather Armor
						frags(12, i(232950, {	-- Satchel of the Gale Rouser Belt
							["classes"] = LEATHER_CLASSES,
							["groups"] = {
								i(65374),	-- Gale Rouser Belt
							},
						})),
						frags(21, i(232951, {	-- Satchel of the Gale Rouser Leggings
							["classes"] = LEATHER_CLASSES,
							["groups"] = {
								i(65384),	-- Gale Rouser Leggings
							},
						})),
						frags(12, i(232973, {	-- Satchel of the Wind Stalker Belt
							["classes"] = LEATHER_CLASSES,
							["groups"] = {
								i(65371),	-- Wind Stalker Belt
							},
						})),
						frags(21, i(232974, {	-- Satchel of the Wind Stalker Leggings
							["classes"] = LEATHER_CLASSES,
							["groups"] = {
								i(65381),	-- Wind Stalker Leggings
							},
						})),
						frags(50, i(65021)),	-- Manacles of the Sleeping Beast
						frags(50, i(65050)),	-- Parasitic Bands
						frags(80, i(60231)),	-- Belt of the Fallen Brood
						frags(50, i(65057)),	-- Belt of the Nightmare
						frags(80, i(60236)),	-- Nightmare Rider's Boots
						-- Cloth Armor
						frags(12, i(232965, {	-- Satchel of the Soul Breath Belt
							["classes"] = CLOTH_CLASSES,
							["groups"] = {
								i(65376),	-- Soul Breath Belt
							},
						})),
						frags(21, i(232966, {	-- Satchel of the Soul Breath Leggings
							["classes"] = CLOTH_CLASSES,
							["groups"] = {
								i(65383),	-- Soul Breath Leggings
							},
						})),
						frags(80, i(60237)),	-- Crown of the Twilight Queen
						frags(60, i(65043)),	-- Mantle of Nefarius
						frags(60, i(65019)),	-- Shadowblaze Robes
						frags(50, i(65056)),	-- Bracers of the Burningeye
						frags(50, i(65138)),	-- Bracers of the Bronze Flight
						frags(80, i(60238)),	-- Bracers of the Dark Mother
						-- Rings
						frags(12, i(232949, {	-- Satchel of the Cloudburst Ring
							i(65382),	-- Cloudburst Ring
						})),
						frags(12, i(232954, {	-- Satchel of the Mistral Circle
							i(65367),	-- Mistral Circle
						})),
						frags(12, i(232959, {	-- Satchel of the Permafrost Signet
							i(65372),	-- Permafrost Signet
						})),
						frags(12, i(232961, {	-- Satchel of the Planetary Band
							i(65373),	-- Planetary Band
						})),
						frags(80, i(60226)),	-- Dargonax's Signet
						-- Trinkets
						frags(50, i(65124)),	-- Fall of Mortality
						frags(50, i(65105)),	-- Theralion's Mirror
						frags(50, i(65140)),	-- Essence of the Cyclone
						frags(50, i(65053)),	-- Bell of Enraging Resonance
						frags(50, i(65072)),	-- Heart of Rage
						frags(50, i(65048)),	-- Symbiotic Worm
						frags(80, i(60233)),	-- Shard of Woe
						frags(50, i(65026)),	-- Prestor's Talisman of Machination
						frags(50, i(65109)),	-- Vial of Stolen Memories
						frags(50, i(65118)),	-- Crushing Weight
						frags(50, i(65029)),	-- Jar of Ancient Remedies
						frags(50, i(65110)),	-- Heart of Ignacious
						frags(1, i(234446, {	-- Commendation of Service
							currency(395),	-- Justice Points
						})),
					},
				}),
			}),
		},
	})),
})));
-- #endif
