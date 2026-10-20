-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

local ATALAI_DEFENDERS = createHeader({
	readable = "Atal'ai Defenders",
	icon = 134177,
	text = {
		en = "Atal'ai Defenders",
		de = "Verteidiger der Atal'ai",
		es = "Defensores Atal'ai",
		mx = "Defensores de Atal'ai",
		fr = "Défenseurs atal’ai",
		it = "",
		ko = "아탈라이 파수병",
		pt = "Defensores Atal'ai",
		ru = "Защитники Атал'ай",
		cn = "阿塔莱防御者",
		tw = "阿塔萊防衛者",
	},
	description = {
		en = "You must kill all 6 mini bosses around the room in order to unlock the way to Jammal'an the Prophet.",
		cn = "你必须击杀大厅周围的全部6名小首领，才能解锁通往预言者迦玛兰的道路。",
	},
});

local ESSENCE_OF_ERANIKUS_PART_TWO_OnUpdate = [[function(t)
	if not t.collected and _.IsQuestFlaggedCompleted(3373) and ]] .. WOWAPI_GetItemCount(10455) .. [[ < 1 then
		if not _.Settings.AccountWide.Quests then
			t.u = ]] .. REMOVED_FROM_GAME .. [[;
		else
			t.u = nil;
		end
		t.description = "|cffaa0000You have completed the previous quest, but deleted the item needed to complete this quest. As such, you'll be unable to complete the quest chain. Sorry!|r";
	end
end]];
local ESSENCE_OF_ERANIKUS_OWN_WORDS_OnUpdate = [[function(t)
	if not _.IsQuestFlaggedCompleted(3374) and (_.IsQuestFlaggedCompleted(3373) and ]] .. WOWAPI_GetItemCount(10455) .. [[ < 1) then
		if not _.Settings.AccountWide.Quests then
			t.u = ]] .. REMOVED_FROM_GAME .. [[;
		else
			t.u = nil;
		end
		t.description = "|cffaa0000You deleted the item needed to complete the previous quest. As such, you'll be unable to complete this one. Sorry!|r";
	end
end]];

local SUNKEN_TEMPLE_ZONE_DROPS = n(ZONE_DROPS, {
	i(11318, {	-- Atal'ai Haze
		["crs"] = {
			8384,	-- Deep Lurker
			5226,	-- Murk Worm
			5228,	-- Saturated Ooze
		},
	}),
	i(6181),	-- Fetish of Hakkar
	i(16216, {	-- Formula: Enchant Cloak - Greater Resistance (RECIPE!)
		["crs"] = {
			5259,	-- Atal'ai Witch Doctor
		},
	}),
	i(15733),	-- Pattern: Green Dragonscale Leggings (RECIPE!)
	i(10627),	-- Bludgeon of the Grinning Dog
	i(10628),	-- Deathblow
	i(10626),	-- Ragehammer
	i(10625),	-- Stealthblade
	i(10624),	-- Stinging Bow
	i(10623),	-- Winter's Bite
	i(10630),	-- Soulcatcher Halo
	i(10632),	-- Slimescale Bracers
	i(10631),	-- Murkwater Gauntlets
	i(10633),	-- Silvershell Leggings
	i(10629),	-- Mistwalker Boots
	i(10634),	-- Mindseye Circle
});

root(ROOTS.Instances, {
	inst(237, {	-- The Temple of Atal'hakkar
		["lore"] = "Over a thousand years ago, the powerful Gurubashi Empire was torn apart by a massive civil war. An influential group of troll priests, known as the Atal'ai, attempted to bring back an ancient blood god named Hakkar the Soulflayer. Though the priests were defeated and ultimately exiled, the great troll empire buckled in upon itself. The exiled priests fled far to the north, into the Swamp of Sorrows. There they erected a great temple to Hakkar - where they could prepare for his arrival into the physical world. The great dragon Aspect, Ysera, learned of the Atal'ai's plans and smashed the temple beneath the marshes. To this day, the temple's drowned ruins are guarded by the green dragons who prevent anyone from getting in or out. However, it is believed that some of the fanatical Atal'ai may have survived Ysera's wrath - and recommitted themselves to the dark service of Hakkar.",
		zoneTextAreaIDs = {
			1417,	-- Sunken Temple
			1477,	-- The Temple of Atal'hakkar
		},
		["mapID"] = MAP.TEMPLE_OF_ATALHAKKAR,
		["coords"] = {
			{ 69.2, 54.8, MAP.SWAMP_OF_SORROWS },
		},
		["lvl"] = 45,
		["groups"] = {
			n(QUESTS, {
				 q(9053, {	-- A Better Ingredient
					["sourceQuest"] = 9051,	-- Toxic Test
					["qg"] = 9619,	-- Torwa Pathfinder
					["coord"] = { 71.6, 76.0, MAP.UNGORO_CRATER },
					["classes"] = { DRUID },
					["lvl"] = 50,
					["groups"] = {
						objective(1, {	-- 0/1 Putrid Vine
							["provider"] = { "i", 22444 },	-- Putrid Vine
						}),
						i(22458, {	-- Moonshadow Stave
						}),
						i(22272, {	-- Forest's Embrace
						}),
						i(22274, {	-- Grizzled Pelt
						}),
					},
				}),
				 q(8257, {	-- Blood of Morphaz
					["sourceQuest"] = 8256,	-- The Ichor of Undeath
					["qg"] = 8405,	-- Ogtinc
					["coord"] = { 42.2, 42.6, MAP.AZSHARA },
					["classes"] = { PRIEST },
					["lvl"] = 50,
					["groups"] = {
						objective(1, {	-- 0/1 Blood of Morphaz
							["provider"] = { "i", 20025 },	-- Blood of Morphaz
							["cr"] = 5719,	-- Morphaz
						}),
						i(19990, {	-- Blessed Prayer Beads
						}),
						i(20006, {	-- Circle of Hope
						}),
						i(20082, {	-- Woestave
						}),
					},
				}),
				 q(8413, {	-- Da Voodoo
					["sourceQuest"] = 8412,	-- Spirit Totem
					["qg"] = 6176,	-- Bath'rah the Windwatcher
					["coord"] = { 80.4, 66.8, MAP.ALTERAC_MOUNTAINS },
					["races"] = HORDE_ONLY,
					["classes"] = { SHAMAN },
					["lvl"] = 50,
					["groups"] = {
						objective(1, {	-- 0/2 Amber Voodoo Feather
							["provider"] = { "i", 20606 },	-- Amber Voodoo Feather
						}),
						objective(2, {	-- 0/2 Blue Voodoo Feather
							["provider"] = { "i", 20607 },	-- Blue Voodoo Feather
						}),
						objective(3, {	-- 0/2 Green Voodoo Feather
							["provider"] = { "i", 20608 },	-- Green Voodoo Feather
						}),
						i(20369, {	-- Azurite Fists
						}),
						i(20503, {	-- Enamored Water Spirit
						}),
						i(20556, {	-- Wildstaff
						}),
					},
				}),
				 q(8253, {	-- Destroy Morphaz
					["sourceQuest"] = 8252,	-- The Siren's Coral
					["qg"] = 8379,	-- Archmage Xylem
					["coord"] = { 29.6, 40.6, MAP.AZSHARA },
					["classes"] = { MAGE },
					["lvl"] = 50,
					["groups"] = {
						objective(1, {	-- 0/1 Arcane Shard
							["provider"] = { "i", 20085 },	-- Arcane Shard
							["cr"] = 5719,	-- Morphaz
						}),
						i(20035, {	-- Glacial Spike
						}),
						i(20036, {	-- Fire Ruby
						}),
						i(20037, {	-- Arcane Crystal Pendant
						}),
					},
				}),
				 q(8418, {	-- Forging the Mightstone
					["sourceQuest"] = 8416,	-- Inert Scourgestones
					["qg"] = 10838,	-- Commander Ashlam Valorfist
					["coord"] = { 42.8, 84.0, MAP.WESTERN_PLAGUELANDS },
					["classes"] = { PALADIN },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 50,
					["groups"] = {
						objective(1, {	-- 0/2 Amber Voodoo Feather
							["provider"] = { "i", 20606 },	-- Amber Voodoo Feather
						}),
						objective(2, {	-- 0/2 Blue Voodoo Feather
							["provider"] = { "i", 20607 },	-- Blue Voodoo Feather
						}),
						objective(3, {	-- 0/2 Green Voodoo Feather
							["provider"] = { "i", 20608 },	-- Green Voodoo Feather
						}),
						i(20504, {	-- Lightforged Blade
						}),
						i(20505, {	-- Chivalrous Signet
						}),
						i(20512, {	-- Sanctified Orb
						}),
						i(20620, {	-- Holy Mightstone
						}),
					},
				}),
				q(4143, {	-- Haze of Evil
					["sourceQuest"] = 4142,	-- A Visit to Gregan
					["qg"] = 7775,	-- Gregan Brewspewer
					["coord"] = { 45.1, 25.6, MAP.FERALAS },
					["maps"] = { MAP.UNGORO_CRATER },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 47,
					["groups"] = {
						objective(1, {	-- 0/5 Atal'ai Haze
							["provider"] = { "i", 11318 },	-- Atal'ai Haze
						}),
					},
				}),
				q(3512, {	-- In Eranikus' Own Words
					["description"] = "This quest chain seems to be an incomplete one as there is no follow-up. Still an interesting quest chain as most people do not know about it. It essentially details how Eranikus is not actually dead and likely prepares the player for the Opening of AQ quest chain that does involve Eranikus once again.",
					["sourceQuest"] = 3374,	-- The Essence of Eranikus [Part 2]
					["qg"] = 5353,	-- Itharius
					["coord"] = { 13.7, 71.7, MAP.SWAMP_OF_SORROWS },
					["maps"] = { MAP.WINTERSPRING },
					["lvl"] = 48,
					["OnUpdate"] = ESSENCE_OF_ERANIKUS_OWN_WORDS_OnUpdate,
				}),
				q(3446, {	-- Into the Depths
					["sourceQuest"] = 3444,	-- The Stone Circle
					["providers"] = {
						{ "n",  7771 },	-- Marvon Rivetseeker
						{ "i",  10466 },	-- Atal'ai Stone Circle
						{ "o", 148836 },	-- Altar of Hakkar
					},
					["coord"] = { 52.6, 45.8, MAP.TANARIS },
					["lvl"] = 46,
				}),
				q(1475, {	-- Into The Temple of Atal'Hakkar
					["sourceQuest"] = 1469,	-- Rhapsody's Tale
					["qg"] = 5384,	-- Brohann Caskbelly <Explorers' League>
					["coord"] = { 64.2, 20.8, MAP.STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 38,
					["groups"] = {
						objective(1, {	-- 0/10 Atal'ai Tablet
							["providers"] = {
								{ "i", 6288 },	-- Atal'ai Tablet
								{ "o", 37099 },	-- Atal'ai Tablet
							},
							["description"] = "Scattered around the inside and outside of the instance.",
						}),
						i(1490, {	-- Guardian Talisman
						}),
					},
				}),
				q(1446, {	-- Jammal'an the Prophet
					["qg"] = 5598,	-- Atal'ai Exile
					["coord"] = { 33.6, 75.2, MAP.THE_HINTERLANDS },
					["lvl"] = 38,
					["groups"] = {
						objective(1, {	-- 0/1 Head of Jammal'an
							["provider"] = { "i", 6212 },	-- Head of Jammal'an
						}),
						i(11124, {	-- Helm of Exile
						}),
						i(11123, {	-- Rainstrider Leggings
						}),
					},
				}),
				 q(8236, {	-- The Azure Key
					["sourceQuest"] = 8235,	-- Encoded Fragments
					["qg"] = 8379,	-- Archmage Xylem
					["coord"] = { 29.6, 40.6, MAP.AZSHARA },
					["maps"] = { MAP.HILLSBRAD_FOOTHILLS },
					["classes"] = { ROGUE },
					["lvl"] = 50,
					["groups"] = {
						objective(1, {	-- 0/1 Azure Key
							["provider"] = { "i", 20022 },	-- Azure Key
							["cr"] = 5719,	-- Morphaz
						}),
						i(19982, {	-- Duskbat Drape
						}),
						i(19984, {	-- Ebon Mask
						}),
						i(20255, {	-- Whisperwalk Boots
						}),
					},
				}),
				q(3373, {	-- The Essence of Eranikus
					["description"] = "Interact with the Essence Font located in the back corner of the room after you defeat Eranikus to turn in this quest and loot the Essence of Eranikus.",
					["providers"] = {
						{ "i",  10454 },	-- Essence of Eranikus
						{ "o", 148512 },	-- Essence Font
					},
					["lvl"] = 48,
					["groups"] = {
						i(10455, {	-- Chained Essence of Eranikus
						}),
					},
				}),
				q(3374, {	-- The Essence of Eranikus [Part 2]
					["description"] = "You get the Oathstone by talking to Itharius, at the cave in the SW part of Swamp of Sorrows. You must have the Chained Essence first.",
					["sourceQuest"] = 3373,	-- The Essence of Eranikus
					["qg"] = 5353,	-- Itharius
					["provider"] = { "i", 10589 },	-- Oathstone of Ysera's Dragonflight
					["coord"] = { 13.7, 71.7, MAP.SWAMP_OF_SORROWS },
					["cost"] = { { "i", 10455, 1 } },	-- Chained Essence of Eranikus
					["lvl"] = 48,
					["OnUpdate"] = ESSENCE_OF_ERANIKUS_PART_TWO_OnUpdate,
				}),
				q(3528, {	-- The God Hakkar
					["sourceQuest"] = 4787,	-- The Ancient Egg
					["qg"] = 8579,	-- Yeh'kinya
					["coord"] = { 66.8, 22.4, MAP.TANARIS },
					["lvl"] = 40,
					["groups"] = {
						objective(1, {	-- 0/1 Filled Egg of Hakkar
							["provider"] = { "i", 10662 },	-- Filled Egg of Hakkar
							["cr"] = 8443,	-- Avatar of Hakkar
							["cost"] = {
								{ "i", 10465, 1 },	-- Egg of Hakkar
								{ "i", 10663, 1 },	-- Essence of Hakkar
							},
						}),
						i(10749, {	-- Avenguard Helm
						}),
						i(10750, {	-- Lifeforce Dirk
						}),
						i(10751, {	-- Gemburst Circlet
						}),
					},
				}),
				 q(8232, {	-- The Green Drake
					["sourceQuest"] = 8231,	-- Wavethrashing
					["qg"] = 8405,	-- Ogtinc
					["coord"] = { 42.2, 42.6, MAP.AZSHARA },
					["classes"] = { HUNTER },
					["lvl"] = 50,
					["groups"] = {
						objective(1, {	-- 0/1 Tooth of Morphaz
							["provider"] = { "i", 20019 },	-- Tooth of Morphaz
							["cr"] = 5719,	-- Morphaz
						}),
						i(19991, {	-- Devilsaur Eye
						}),
						i(19992, {	-- Devilsaur Tooth
						}),
						i(20083, {	-- Hunting Spear
						}),
					},
				}),
				q(1445, {	-- The Temple of Atal'Hakkar
					["sourceQuests"] = { 1444 },	-- Return to Fel'Zerul
					["qg"] = 1443,	-- Fel'zerul
					["coord"] = { 64.2, 20.8, MAP.SWAMP_OF_SORROWS },
					["races"] = HORDE_ONLY,
					["lvl"] = 38,
					["groups"] = {
						objective(1, {	-- 0/20 Fetish of Hakkar
							["provider"] = { "i", 6181 },	-- Fetish of Hakkar
						}),
						i(1490, {	-- Guardian Talisman
						}),
					},
				}),
				 q(8422, {	-- Trolls of a Feather
					["sourceQuest"] = 8421,	-- The Wrong Stuff
					["qg"] = 14470,	-- Impsy <Niby's Minion>
					["coord"] = { 41.6, 45.0, MAP.FELWOOD },
					["classes"] = { WARLOCK },
					["lvl"] = 50,
					["groups"] = {
						objective(1, {	-- 0/2 Amber Voodoo Feather
							["provider"] = { "i", 20606 },	-- Amber Voodoo Feather
						}),
						objective(2, {	-- 0/2 Blue Voodoo Feather
							["provider"] = { "i", 20607 },	-- Blue Voodoo Feather
						}),
						objective(3, {	-- 0/2 Green Voodoo Feather
							["provider"] = { "i", 20608 },	-- Green Voodoo Feather
						}),
						i(20534, {	-- Abyss Shard
						}),
						i(20530, {	-- Robes of Servitude
						}),
						i(20536, {	-- Soul Harvester
						}),
					},
				}),
				 q(8425, {	-- Voodoo Feathers
					["sourceQuest"] = 8424,	-- War on the Shadowsworn
					["qg"] = 7572,	-- Fallen Hero of the Horde
					["coord"] = { 34.3, 66.2, MAP.SWAMP_OF_SORROWS },
					["classes"] = { WARRIOR },
					["lvl"] = 50,
					["groups"] = {
						objective(1, {	-- 0/2 Amber Voodoo Feather
							["provider"] = { "i", 20606 },	-- Amber Voodoo Feather
						}),
						objective(2, {	-- 0/2 Blue Voodoo Feather
							["provider"] = { "i", 20607 },	-- Blue Voodoo Feather
						}),
						objective(3, {	-- 0/2 Green Voodoo Feather
							["provider"] = { "i", 20608 },	-- Green Voodoo Feather
						}),
						i(20130, {	-- Diamond Flask
						}),
						i(20517, {	-- Razorsteel Shoulders
						}),
						i(20521, {	-- Fury Visor
						}),
					},
				}),
				q(4146, {	-- Zapper Fuel
					["sourceQuest"] = 4147,	-- Marvon's Workshop
					["providers"] = {
						{ "n", 8496 },	-- Liv Rizzlefix <Workshop Assistant>
						{ "i", 11319 },	-- Unloaded Zapper
					},
					["coord"] = { 62.5, 38.7, MAP.THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 47,
					["groups"] = {
						objective(1, {	-- 0/5 Atal'ai Haze
							["provider"] = { "i", 11318 },	-- Atal'ai Haze
						}),
					},
				}),
			}),
			SUNKEN_TEMPLE_ZONE_DROPS,
			n(COMMON_BOSS_DROPS, {
				i(20606, {	-- Amber Voodoo Feather
					["crs"] = {
						5713,	-- Gasher
						5716,	-- Zul'Lor
					},
				}),
				i(20607, {	-- Blue Voodoo Feather
					["crs"] = {
						5715,	-- Hukku
						5717,	-- Mijan
					},
				}),
				i(20608, {	-- Green Voodoo Feather
					["crs"] = {
						5714,	-- Loro
						5712,	-- Zolo
					},
				}),
			}),
			n(5708, {	-- Spawn of Hakkar
				["groups"] = {
					i(10801, {	-- Slitherscale Boots
					}),
					i(10802, {	-- Wingveil Cloak
					}),
				},
			}),
			o(148832, {	-- Atal'ai Statue
				["description"] = "Go to the Pit of Refuse.\n\nClear all of the trash as you travel around the circular platform. You'll notice balconies that dip out and overlook the center of the pit. Essentially, once it's all cleared, each of your party members should spread out and be assigned to a balcony with an Atal'ai Shrine. The shrines must be clicked in a specific order:\n\n    South (Bottom)\n    North (Top)\n    Southwest (Bottom Left)\n    Southeast (Bottom Right)\n    Northwest (Top Left)\n    Northeast (Top Right)\n\nOnce a statue has been clicked in the correct sequence, it'll turn green. If not, the person attempting to activate will gain a curse.",
				["groups"] = {
					q(3447, {	-- Secret of the Circle
						["sourceQuest"] = 3444,	-- The Stone Circle
						["providers"] = {
							{ "n",   7771 },	-- Marvon Rivetseeker
							{ "o", 148838 },	-- Idol of Hakkar
						},
						["coord"] = { 52.6, 45.8, MAP.TANARIS },
						["lvl"] = 46,
						["groups"] = {
							i(10773, {	-- Hakkari Urn
								["groups"] = {
									i(10781, {	-- Hakkari Breastplate
									}),
									i(10782, {	-- Hakkari Shroud
									}),
									i(10780, {	-- Mark of Hakkar
									}),
								},
							}),
						},
					}),
					n(8580, {	-- Atal'alarion
						["description"] = "Summoned by activating the Atal'ai Statues in the proper order.",
						["groups"] = {
							i(22444, {	-- Putrid Vine
							}),
							i(10799, {	-- Headspike
							}),
							i(10800, {	-- Darkwater Bracers
							}),
							i(10798, {	-- Atal'alarion Tusk Ring
							}),
						},
					}),
				},
			}),
			n(ATALAI_DEFENDERS, {
				["providers"] = {
					{ "n", 5713 },	-- Gasher
					{ "n", 5715 },	-- Hukku
					{ "n", 5714 },	-- Loro
					{ "n", 5717 },	-- Mijan
					{ "n", 5712 },	-- Zolo
					{ "n", 5716 },	-- Zul'Lor
				},
				["groups"] = {
					i(10783, {	-- Atal'ai Spaulders
					}),
					i(10787, {	-- Atal'ai Gloves
					}),
					i(10784, {	-- Atal'ai Breastplate
					}),
					i(10788, {	-- Atal'ai Girdle
					}),
					i(10785, {	-- Atal'ai Leggings
					}),
					i(10786, {	-- Atal'ai Boots
					}),
				},
			}),
			e(457, {	-- Avatar of Hakkar
				["crs"] = {
					8443,	-- Avatar of Hakkar
					8440,	-- Shade of Hakkar
				},
				["description"] =
					"Requires the use of the Egg of Hakkar or Yeh'kinya's Scroll to summon.\n\nOnce you start the fight, the room will fill with a variety of creatures. You need to kill the 4 Wind Serpents that appear, and loot the blood off of them, and use it to douse one of the fires in each corner of the room.\n\nEvery time you douse a fire, a dragonkin will walk in and start channeling a spell on Hakkar. Do not let them complete this channel.\n\nThe boss spawns after all 4 flames are doused.",
				["cost"] = {
					{ "i", 10465, 1 },	-- Egg of Hakkar
					{ "i", 10818, 1 },	-- Yeh'kinya's Scroll
				},
				["groups"] = {
					i(10663),	-- Essence of Hakkar
					i(10844),	-- Spire of Hakkar
					i(10838),	-- Might of Hakkar
					i(10843),	-- Featherskin Cape
					i(12462),	-- Embrace of the Wind Serpent
					i(10845),	-- Warrior's Embrace
					i(10842),	-- Windscale Sarong
					i(10846),	-- Bloodshot Greaves
				},
			}),
			n(5711, {	-- Ogom the Wretched
				i(10803),	-- Blade of the Wretched
				i(10805),	-- Eater of the Dead
				i(10804),	-- Fist of the Damned
			}),
			n(5710, {	-- Jammal'an the Prophet
				i(6212),	-- Head of Jammal'an
				i(10806),	-- Vestments of the Atal'ai Prophet
				i(10808),	-- Gloves of the Atal'ai Prophet
				i(10807),	-- Kilt of the Atal'ai Prophet
			}),
			e(459, {	-- Wardens of the Dream
				["description"] = "These four dragons come in pairs. You can tank them away from each other if you pull the one that's behind the other one and get really lucky.",
				["crs"] = {
					5721,	-- Dreamscythe
					5722,	-- Hazzas
					5719,	-- Morphaz
					5720,	-- Weaver
				},
				["groups"] = {
					i(12463),	-- Drakefang Butcher
					i(12243),	-- Smoldering Claw
					i(10797),	-- Firebreather
					i(10796),	-- Drakestone
					i(12465),	-- Nightfall Drape
					i(12464),	-- Bloodfire Talons
					i(12466),	-- Dawnspire Cord
					i(10795),	-- Drakeclaw Band
				},
			}),
			e(463, {	-- Shade of Erankikus
				["creatureID"] = 5709,
				["groups"] = {
					i(10454, {	-- Essence of Eranikus
					}),
					i(10828),	-- Dire Nail
					i(10847),	-- Dragon's Call
					i(10837),	-- Tooth of Eranikus
					i(10836),	-- Rod of Corrosion
					i(10835),	-- Crest of Supremacy
					i(10833),	-- Horns of Eranikus
					i(10829),	-- Dragon's Eye [Classic] / The Dragon's Eye [WRATH+]
				},
			}),
		},
	}),
});
