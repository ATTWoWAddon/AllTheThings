---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
local function bo(questID)
    return { ["questID"] = questID, ["isDaily"] = true };
end
root(ROOTS.Zones, m(SHADOWLANDS, bubbleDown({ ["timeline"] = { ADDED_9_0_2_LAUNCH } }, {
	m(THE_MAW, {
		n(RARES, sharedData({ ["isDaily"] = true }, {
			n(COMMON_BOSS_DROPS, {
				i(184395, {	-- Fallen Adventurer's Cache
					["description"] = "Drops from numerous rares, elites, and named mobs in The Maw and Korthia.",
					["crs"] = {
						169102,	-- Agonix
						170301,	-- Apholeias, Herald of Loss
						157833,	-- Borr-Geth
						171317,	-- Conjured Death
						162452,	-- Dartanos <Flayer of Souls>
						162844,	-- Dath Rezara <Lord of Blades>
						158314,	-- Drifting Sorrow
						170774,	-- Eketra <The Impaler>
						169827,	-- Ekphoras, Herald of Grief
						154330,	-- Eternas the Tormentor
						162965,	-- Huwerath
						175012,	-- Ikras the Devourer
						171316,	-- Malevolent Stygia
						162849,	-- Morguliax <Lord of Decapitation>
						172207,	-- Odalrik
						172577,	-- Orophea
						162845,	-- Orrholyn <Lord of Bloodletting>
						162829,	-- Razkazzar <Lord of Axes>
						166398,	-- Soulforger Rhovus
						165047,	-- Soulsmith Yol-Mattar
						156203,	-- Stygian Incinerator
						170302,	-- Talaporas, Herald of Pain
						172862,	-- Yero the Skittish
					--	Korthia
						179769,	-- Consumption
						179755,	-- Consumption (Rare, non-Elite version)
						179768,	-- Consumption (Rare Elite version)
						179931,	-- Relic Breaker Krelva
						179985,	-- Stygian Stonecrusher
						179760,	-- Towering Exterminator
					},
					["groups"] = {
						i(183409),	-- Decaying Mawrat (PET!)
						i(184368),	-- Sputtering Hilt
						i(183408),	-- Undying Deathroach (PET!)
					},
				}),
			}),
			n(157964, {	-- Adjutant Dekaris
				["coord"] = { 25.8, 31.2, THE_MAW },
				["questID"] = 57482,
				["groups"] = {
					i(186222, {	-- Grips of the Coldheart Adjutant
						["timeline"] = { ADDED_9_1_0 },
					}),
				},
			}),
			n(169102, {	-- Agonix
				["coord"] = { 28.0, 44.6, THE_MAW },
				["questID"] = 63380,
				["groups"] = {
					i(186616, {	-- Bindings of Screaming Death
						["timeline"] = { ADDED_9_1_0 },
					}),
					bo(61136),	-- Agonix bonus objective
				},
			}),
			n(170787, {	-- Akros <Death's Hammer>
				["coord"] = { 34.0, 74.6, THE_MAW },
				["questID"] = 63382,
				["groups"] = {
					i(186617, {	-- Death's Hammer Stompers
						["timeline"] = { ADDED_9_1_0 },
					}),
					bo(60920),	-- Akros bonus objective
				},
			}),
			n(170301, {	-- Apholeias, Herald of Loss
				["description"] = "Requires 4 players to summon.",
				["coord"] = { 19.6, 42.0, THE_MAW },
				["questID"] = 60788,
				["groups"] = {
					i(184106),	-- Gimble
					i(182327),	-- Dominion Etching: Loss
				},
			}),
			n(157833, {	-- Borr-Geth
				["coord"] = { 38.9, 41.2, THE_MAW },
				["questID"] = 57469,
				["groups"] = {
					i(184312),	-- Borr-Geth's Fiery Brimstone (TOY!)
					i(186223),	-- Coif of the Molten Terror
				},
			}),
			n(180246, bubbleDownSelf({ ["timeline"] = { ADDED_9_1_0 } }, {	-- Carriage Crusher
				["description"] = "The Assault Supply Carriage starts in Korthia, moves to the northeastern bridge out of the Beastwarrens, and then finishes its supply run to the current covenant assault.\n\nWhen the carriage makes it to the bridge, the Carriage Crusher spawns. You can hop into the carriage to heal it and yourself.",
				["crs"] = {
					180182,	-- Assault Supply Carriage
					180181,	-- Wicklick [Vignette]
				},
				["coord"] = { 45.5, 54.8, THE_MAW },
				["questID"] = 64258, -- and 64439, both of which also triggered on my first Traitor Balthier kill.
				["maps"] = { KORTHIA },	-- show in Korthia as well since it spawns there
				["groups"] = {
					i(187370),	-- Carriage Crusher's Padded Slippers
					i(187399),	-- Maw Construct's Shoulderguards
				},
			})),
			n(171317, {	-- Conjured Death
				["description"] = "Spawns outside the Tremaculum when the Venthyr assault is active and inside the Tremaculum at all other times.",
				["coords"] = {
					{ 27.8, 13.2, THE_MAW },
					{ 28.6, 19.4, THE_MAW },	-- Venthyr assault spawnpoint
				},
				["questID"] = 61106,
				["groups"] = {
					i(183887),	-- Suirhtaned, Blade of the Heir
				},
			}),
			n(168693, {	-- Cyrixia
				["coord"] = { 28.6, 25.0, THE_MAW },
				["questID"] = 61346,
				["groups"] = {
					i(183070),	-- Mawsworn Orders
					i(186618),	-- Willbreaker's Chain
				},
			}),
			n(160770, {	-- Darithis the Bleak
				["description"] = "At the back of the cave.",
				["coord"] = { 59.3, 51.9, THE_MAW },
				["questID"] = 62281,
				["groups"] = {
					i(186220),	-- Stygian Chestcage
				},
			}),
			n(158025, {	-- Darklord Taraxis
				["coord"] = { 48.6, 82.6, THE_MAW },
				["questID"] = 62282,
				["groups"] = {
					i(183901, {	-- Bonestorm Top (TOY!)
						["timeline"] = { ADDED_9_1_0 },
					}),
					i(186611, {	-- Taraxis' Treads
						["timeline"] = { ADDED_9_1_0 },
					}),
				},
			}),
			n(162452, {	-- Dartanos
				["description"] = "Coordinates are for a teleportation pad that will take you to the rare's platform.",
				["coord"] = { 27.5, 17.3, THE_MAW },
				["questID"] = 63373,
				["groups"] = {
					i(186619),	-- Bloodspattered Shoulders of the Flayer
					bo(59230),	-- Dartanos bonus objective
				},
			}),
			n(162844, {	-- Dath Rezara
				["coord"] = { 19.0, 57.6, THE_MAW },
				["questID"] = 60988,
				["groups"] = {
					i(183066),	-- Korrath's Grimoire: Aleketh
					i(183067),	-- Korrath's Grimoire: Belidir
					i(183068),	-- Korrath's Grimoire: Gyadrek
					i(186620),	-- Rezara's Fencing Grips
					bo(61140),	-- Dath Rezara bonus objective
				},
			}),
			n(179779, bubbleDownSelf({ ["timeline"] = { ADDED_9_1_0 } }, {	-- Deomen the Vortex
				["description"] = "If the cage is locked, enter the building to the left of the rare at |cFFFFFFFF63.3, 43.6|r. There is a lever on the wall on either side of the room at the bottom of the stairs, inside the alcoves.",
				["crs"] = { 179791 },	-- Deomen the Vortex (while in cage)
				["coord"] = { 61.3, 41.3, THE_MAW },
				["questID"] = 64251,
				["groups"] = {
					i(187367),	-- Deomen's Vortex Blade
					i(187385),	-- Vortex Piercing Headgear
				},
			})),
			n(170711, {	-- Dolos
				["description"] = "Will not spawn during Necrolord assault.",
				["coord"] = { 28.6, 60.6, THE_MAW },
				["questID"] = 60909,
				["groups"] = {
					i(186209),	-- Blood-Spattered Gloves of Death
				},
			}),
			n(158314, {	-- Drifting Sorrow
				["description"] = "To summon the mob, kill Agonizing Shades near the dark floating orb.",
				["coord"] = { 32.0, 21.7, THE_MAW },
				["questID"] = 63372,
				["groups"] = {
					i(186622, {	-- Robe of Drifting Sorrow
						["timeline"] = { ADDED_9_1_0 },
					}),
					bo(59183),	-- Drifting Sorrow bonus objective
				},
			}),
			n(170774, {	-- Eketra <The Impaler>
				["coord"] = { 23.8, 53.6, THE_MAW },
				["questID"] = 60915,
				["groups"] = {
					i(186563),	-- Spear of the Impaler
				},
			}),
			n(169827, {	-- Ekphoras, Herald of Grief
				["description"] = "Requires 4 players to summon.",
				["coord"] = { 42.2, 21.0, THE_MAW },
				["questID"] = 60666,
				["groups"] = {
					i(184105),	-- Gyre
					i(182328),	-- Dominion Etching: Grief
				},
			}),
			n(154330, {	-- Eternas the Tormentor
				["coord"] = { 19.3, 46.1, THE_MAW },
				["questID"] = 57509,
				["groups"] = {
					i(183407),	-- Dread (PET!)
					i(186212, {	-- Eternas' Braided Waistcord
						["timeline"] = { ADDED_9_1_0 },
					}),
				},
			}),
			n(170303, {	-- Exos, Herald of Domination
				["description"] = "Summoned using |cff0070ddDomination's Calling|r.",
				["coord"] = { 21.0, 70.2, THE_MAW },
				["questID"] = 62260,
				["cost"] = { { "i", 182329, 1 } },	-- 1x Domination's Calling
				["groups"] = {
					i(186606),	-- Nilganihmaht's Signet Ring
					i(184108),	-- Vorpal Amulet
					i(183066),	-- Korrath's Grimoire: Aleketh
					i(183067),	-- Korrath's Grimoire: Belidir
					i(183068),	-- Korrath's Grimoire: Gyadrek
				},
			}),
			n(179460, {	-- Fallen Charger
				["description"] = "It spawns in the Crucible of the Damned with a zonewide announcement: |cFFff8040An earsplitting whinny echoes across the Maw as the Fallen Charger begins its ride.|r\n\nIt either runs (A) through the Tremaculum, south past Ve'nari's Refuge, and down the eastern side of the Beastwarrens or (B) down the western side of Zovaal's Cauldron, past Perdition Hold, and down the western side of the Beastwarrens.\n\nIf it makes it all the way to Korthia, it despawns with another zonewide announcement: |cFFff8040Fallen Charger releases a final mournful whinny as it fades away.|r",
				["questID"] = 64164,
				["groups"] = {
					i(186659),	-- Fallen Charger (MOUNT!)
				},
			}),
			n(172523, {	-- Houndmaster Vasanok
				["coord"] = { 60.1, 64.9, THE_MAW },
				["questID"] = 63385,
				["groups"] = {
					i(186224),	-- Beastwarren Houndmaster's Treads
					bo(62209),	-- Houndmaster Vasanok bonus objective
				},
			}),
			n(162965, {	-- Huwerath
				["coord"] = { 21.3, 29.3, THE_MAW },
				["questID"] = 58918,
				["groups"] = {
					i(186623, {	-- Lost Soul's Mantle
						["timeline"] = { ADDED_9_1_0 },
					}),
				},
			}),
			n(175012, {	-- Ikras the Devourer
				["description"] = "Flies along the gap between islands.",
				["coord"] = { 35.6, 52.2, THE_MAW },
				["questID"] = 62788,
				["groups"] = {
					i(186214),	-- Maw Snakeskin Boots
				},
			}),
			n(170692, {	-- Krala <Death's Wings>
				["coord"] = { 30.7, 68.8, THE_MAW },
				["questID"] = 63381,
				["groups"] = {
					i(186624),	-- Death Wing Drape
					bo(60903),	-- Krala bonus objective
				},
			}),
			n(171316, {	-- Malevolent Stygia
				["coord"] = { 27.3, 17.3, THE_MAW },
				["questID"] = 63383,
				["groups"] = {
					i(186625, {	-- Hood of Malevolence
						["timeline"] = { ADDED_9_1_0 },
					}),
					bo(61125),	-- Malevolent Stygia bonus objective
				},
			}),
			n(162849, {	-- Morguliax <Lord of Decapitation>
				["description"] = "Spawns next to the Herald of Loss when the Night Fae assault is active.",
				["coords"] = {
					{ 16.6, 50.6, THE_MAW },
					{ 19.0, 43.8, THE_MAW },	-- Night Fae assault spawnpoint
				},
				["questID"] = 60987,
				["groups"] = {
					i(184292),	-- Ancient Elethium Coin (TOY!)
					i(185892, {	-- Stygia-Etched Decapitator
						["timeline"] = { ADDED_9_1_0 },
					}),
				},
			}),
			n(158278, {	-- Nascent Devourer
				["coord"] = { 46.0, 74.2, THE_MAW },
				["questID"] = 57573,
				["groups"] = {
					i(186236, {	-- Devourer's Shadehide Jerkin
						["timeline"] = { ADDED_9_1_0 },
					}),
				},
			}),
			n(164064, {	-- Obolos
				["coord"] = { 48.6, 18.4, THE_MAW },
				["questID"] = 60667,
				["groups"] = {
					i(186238, {	-- Mantle of the Prime Collector
						["timeline"] = { ADDED_9_1_0 },
					}),
				},
			}),
			n(172207, {	-- Odalrik
				["coord"] = { 38.6, 28.8, THE_MAW },
				["questID"] = 63413,
				["groups"] = {
					i(183061),	-- Wailing Coin
					bo(62618),	-- Odalrik bonus objective
				},
			}),
			n(162845, {	-- Orrholyn <Lord of Bloodletting>
				["coord"] = { 25.6, 48.2, THE_MAW },
				["questID"] = 63375,
				["groups"] = {
					i(186626, {	-- Bloodwicking Bands
						["timeline"] = { ADDED_9_1_0 },
					}),
					bo(60991),	-- Orrholyn bonus objective
				},
			}),
			n(172577, {	-- Orophea
				["description"] = "Collect Eurydea's Necklace and offer it to Orophea.",
				["coord"] = { 23.6, 21.6, THE_MAW },
				["questID"] = 61519,
				["groups"] = {
					i(186211, {	-- Pantaloons of the Condemned Bard
						["timeline"] = { ADDED_9_1_0 },
					}),
					o(356555, {	-- Eurydea's Necklace
						["coord"] = { 26.8, 29.3, THE_MAW },
						["groups"] = {
							i(181794),	-- Orophea's Lyre (TOY!)
						},
					}),
				},
			}),
			n(175821, {	-- Ratgusher <10,000 Mawrats in a Suit of Armor>
				["description"] = "Inside the cave.",
				["coord"] = { 20.8, 39.1, THE_MAW },
				["questID"] = 63388,
				["groups"] = {
					i(186627),	-- Belt of Ten Thousand Tails
					i(183136),	-- Incendiary Mawrat
					bo(63044),	-- Ratgusher bonus objective
				},
			}),
			n(162829, {	-- Razkazzar
				["coord"] = { 26.2, 37.4, THE_MAW },
				["questID"] = 63374,
				["groups"] = {
					i(186628),	-- Razkazzar's Axe Grippers
					bo(60992),	-- Razkazzar bonus objective
				},
			}),
			n(172521, {	-- Sanngror the Torturer
				["description"] = "Inside the cave.",
				["coords"] = {
					{ 55.8, 67.5, THE_MAW },
					{ 55.7, 67.6, THE_MAW },
				},
				["questID"] = 62210,
				["groups"] = {
					i(186629),	-- Sanngor's Spiked Band
					i(183410),	-- Sharpclaw (PET!)
				},
			}),
			n(170634, {	-- Shadeweaver Zeris
				["coord"] = { 32.8, 66.6, THE_MAW },
				["questID"] = 60884,
				["groups"] = {
					i(185945),	-- Shadeweaver's Spire
					i(183066),	-- Korrath's Grimoire: Aleketh
					i(183067),	-- Korrath's Grimoire: Belidir
					i(183068),	-- Korrath's Grimoire: Gyadrek
				},
			}),
			n(172524, {	-- Skittering Broodmother
				["description"] = "Inside the cave.",
				["coords"] = {
					-- #if BEFORE 9.1.0
					{ 59.2, 79.9, THE_MAW },	-- pre-9.1
					-- #else
					{ 54.4, 79.2, THE_MAW },	-- 9.1 cave entrance
					-- #endif
				},
				["questID"] = 63386,
				["groups"] = {
					i(186240, {	-- Broodmotherhide Cloak
						["timeline"] = { ADDED_9_1_0 },
					}),
					bo(62211),	-- Skittering Broodmother bonus objective
				},
			}),
			n(166398, {	-- Soulforger Rhovus
				["coord"] = { 36.0, 41.4, THE_MAW },
				["questID"] = 60834,
				["groups"] = {
					i(186613, {	-- Rhovus' Linked Greaves
						["timeline"] = { ADDED_9_1_0 },
					}),
					i(183141),	-- Stygic Magma
				},
			}),
			n(165047, {	-- Soulsmith Yol-Mattar
				["coord"] = { 36.6, 37.2, THE_MAW },
				["questID"] = 63377,
				["groups"] = {
					i(186630),	-- Spark-Deflecting Girdle
					bo(59441),	-- Soulsmith Yol-Mattar bonus objective
				},
			}),
			n(156203, {	-- Stygian Incinerator
				["coord"] = { 36.4, 44.4, THE_MAW },
				["questID"] = 63371,
				["groups"] = {
					i(186631, {	-- Emberfused Band
						["timeline"] = { ADDED_9_1_0 },
					}),
					bo(62539),	-- Stygian Incinerator bonus objective
				},
			}),
			n(170302, {	-- Talaporas, Herald of Pain
				["description"] = "Requires 4 players to summon.",
				["coord"] = { 28.6, 12.6, THE_MAW },
				["questID"] = 60789,
				["groups"] = {
					i(184107),	-- Borogove Cloak
					i(182326),	-- Dominion Etching: Pain
				},
			}),
			n(170731, {	-- Thanassos <Death's Voice>
				["coord"] = { 27.6, 71.6, THE_MAW },
				["questID"] = 60914,
				["groups"] = {
					i(186234, {	-- Girdle of the Death Speaker
						-- this is the only permanently-available source, but the Item can drop from other temporary creatures
						["crs"] = {
							177118,	-- Keeper of Chains
							184426,	-- Leashkeeper Helzid
						},
					}),
				},
			}),
			n(179805, bubbleDownSelf({ ["timeline"] = { ADDED_9_1_0 } }, {	-- Traitor Balthier
				["coords"] = {
					{ 67.5, 48.3, THE_MAW },
					{ 68.8, 45.5, THE_MAW },
				},
				["questID"] = 64439, -- and 64258, both of which also triggered on my first completion of the Assault Supply Carriage event.
				["groups"] = {
					i(187374),	-- Balthier's Waistcord
					i(187364),	-- Maldraxxi Traitor's Blade
				},
			})),
			n(173086, {	-- Valis the Cruel
				["description"] = "Click the runes in the correct order.",
				["coord"] = { 40.8, 59.8, THE_MAW },
				["questID"] = 63387,
				["groups"] = {
					i(186632),	-- Rune Covered Bindings
					n(174810, {	-- Rune of Cruelty (1)
						["description"] = "Click 1st.",
					}),
					n(174811, {	-- Rune of Cruelty (2)
						["description"] = "Click 2nd.",
					}),
					n(174812, {	-- Rune of Cruelty (3)
						["description"] = "Click 3rd.",
					}),
					bo(61728),	-- Valis bonus objective
				},
			}),
			n(172862, {	-- Yero the Skittish
				["coord"] = { 37.9, 61.4, THE_MAW },
				["questID"] = 61568,
				["groups"] = {
					i(186228),	-- Helm of the Skittish Hero
				},
			}),
			n(177444, bubbleDownSelf({ ["timeline"] = { ADDED_9_1_0 } }, {	-- Ylva <Mate of Guarm>
				["questID"] = 64152,	-- also 62683 after a refresh, not sure which one is 'first time' or if both trigger every time. didn't get to do the achievement so it's unrelated to that
				["coord"] = { 66.7, 42.4, THE_MAW },
				["groups"] = {
					ach(14943, {	-- Guarmageddon
						["description"] = "Kill all of Ylva and Guarm's children, and then kill the rare. You must be within range of the baby guarm when they die to get the debuff.",
							["crs"] = {
								177441,	-- Frekki
								177422,	-- Girs
								177442,	-- Hrodvetni
								177445,	-- Vanargun
								177443,	-- Vargir
						},
						["coords"] = {
							{ 65.4, 38.9, THE_MAW },	-- Frekki <Child of Guarm>
							{ 67.0, 41.5, THE_MAW },	-- Girs <Child of Guarm>
							{ 63.1, 40.3, THE_MAW },	-- Hrodvetni <Child of Guarm>
							{ 63.1, 42.4, THE_MAW },	-- Vanargun <Child of Guarm>
							{ 68.4, 42.0, THE_MAW },	-- Vargir <Child of Guarm>
						},
					}),
					i(187393),	-- Sterling Hound-Handler's Gauntlets
					i(186217),	-- Supple Helhound Leather Pants
					i(187359),	-- Ylva's Water Dish
					i(186970, {	-- Feeder's Hand and Key (CI!)
						["groups"] = {
							i(186727),	-- Seal Breaker Key
						},
					}),
				},
			})),
			i(182329, {	-- Domination's Calling
				["description"] = "This is NOT consumed upon use.",
				["cost"] = {
					{ "i", 182328, 1 },	-- Dominion Etching: Grief
					{ "i", 182327, 1 },	-- Dominion Etching: Loss
					{ "i", 182326, 1 },	-- Dominion Etching: Pain
				},
			}),
		})),
	}),
})));
root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.SL, bubbleDownSelf({ ["timeline"] = { ADDED_9_0_2_LAUNCH } }, {
	m(SHADOWLANDS, {
		m(THE_MAW, {
			n(RARES, {
				-- q(64258),	-- Carriage Crusher / Traitor Balthier
				-- q(64439),	-- Carriage Crusher / Traitor Balthier
				q(62722),	-- triggered when killing Naelcrotix / Eketra (possible Wrath of the Jailer rare)
				q(63384),	-- triggered when killing Sanngror (in addition to 62210)
				q(68666),	-- Either after killing Ekphoras, Herald of Grief

				-- these seem shared... ? some sort of incremental counter?
				q(64692, {["timeline"] = {ADDED_9_1_0}}),	-- triggered when killing Manifestation of Pain / Zul'gath the Flayer
				q(64693, {["timeline"] = {ADDED_9_1_0}}),	-- triggered when killing Manifestation of Pain
				q(64694, {["timeline"] = {ADDED_9_1_0}}),	-- triggered when killing Malleus Grakizz
				q(64695, {["timeline"] = {ADDED_9_1_0}}),	-- triggered when killing Algel the Haunter / Gruukuuek the Elder / Gralebboih (5th of week)
				q(64696, {["timeline"] = {ADDED_9_1_0}}),	-- triggered when killing Promathiz / Sentinel Shakorzeth
				q(64697, {["timeline"] = {ADDED_9_1_0}}),	-- triggered when killing Malleus Grakizz / Sentinel Shakorzeth / Versya the Damned
				q(64698, {["timeline"] = {ADDED_9_1_0}}),	-- triggered when killing Intercessor Razzra / Zul'gath the Flayer (4th Tormentor of week?)
				q(64120, {["timeline"] = {ADDED_9_1_0}}),	-- triggered when killing Versya the Damned
			}),
		}),
	}),
})));
