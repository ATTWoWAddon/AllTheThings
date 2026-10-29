-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
instanceroot(760, {	-- Onyxia's Lair
	lore = "Onyxia is the daughter of the mighty dragon Deathwing, and sister of the scheming Nefarian, Lord of Blackrock Spire.\n\nIt is said that Onyxia delights in corrupting the mortal races by meddling in their political affairs. To this end it is believed that she takes on various humanoid forms and uses her charm and power to influence delicate matters between the different races. Some believe that Onyxia has even assumed an alias once used by her father - the title of the royal House Prestor. When not meddling in mortal concerns, Onyxia resides in a fiery cave below the Dragonmurk, a dismal swamp located within Dustwallow Marsh. There she is guarded by her kin, the remaining members of the insidious black dragonflight.",
	icon = 329121,
	zoneTextAreaID = 2159,	-- Onyxia's Lair
	sourceQuests = {
		6502,	-- Alliance Attunement Quest
		6602,	-- Horde Attunement Quest
	},
	cost = {{ "i", 16309, 1 }},	-- 1x Drakefire Amulet
	mapID = MAP.ONYXIAS_LAIR,
	coord = { 52.3, 76.2, MAP.DUSTWALLOW_MARSH },
	isRaid = true,
	lvl = 60,
	groups = {
		n(QUESTS, {
			q(7635, {	-- A Proper String
				--sourceQuest = 7633,	-- An Introduction (requires Molten Core)
				qg = 14525,	-- Stoma the Ancient
				coord = { 47.0, 24.48, MAP.FELWOOD },
				cost = {{ "i", 18705, 1 }},	-- 1x Mature Black Dragon Sinew
				classes = { HUNTER },
				lvl = 60,
				groups = {
					i(18724),	-- Enchanted Black Dragon Sinew
				},
			}),
			q(7634, {	-- Ancient Sinew Wrapped Lamina
				--sourceQuest = 7633,	-- An Introduction (requires Molten Core)
				qg = 14526,	-- Hastat the Ancient
				coord = { 47.0, 24.48, MAP.FELWOOD },
				maps = { MAP.WINTERSPRING },
				cost = {{ "i", 18704, 1 }},	-- 1x Mature Blue Dragon Sinew
				classes = { HUNTER },
				lvl = 60,
				groups = {
					i(18714),	-- Ancient Sinew Wrapped Lamina
				},
			}),
			q(7496, {	-- Celebrating Good Times
				sourceQuest = 7495,	-- Victory for the Alliance
				qg = 1748,	-- Highlord Bolvar Fordragon
				coord = { 67.2, 85.1, MAP.STORMWIND_CITY },
				races = ALLIANCE_ONLY,
				lvl = 60,
				groups = {
					i(18403),	-- Dragonslayer's Signet
					i(18404),	-- Onyxia Tooth Pendant
					i(18406),	-- Onyxia Blood Talisman
				},
			}),
			q(7491, {	-- For All To See
				sourceQuest = 7490,	-- Victory for the Horde
				qg = 4949,	-- Thrall <Warchief>
				coord = { 32.0, 37.8, MAP.ORGRIMMAR },
				races = HORDE_ONLY,
				lvl = 60,
				groups = {
					i(18403),	-- Dragonslayer's Signet
					i(18404),	-- Onyxia Tooth Pendant
					i(18406),	-- Onyxia Blood Talisman
				},
			}),
			q(7507, {	-- Foror's Compendium
				description = "You get this quest by looting Nostro's Compendium from bosses in Dire Maul.\n\nYou can also buy it on the Auction House for a hefty price!",
				provider = { "i", 18401 },	-- Nostro's Compendium of Dragon Slaying
				maps = { MAP.DIRE_MAUL },
				classes = { WARRIOR, PALADIN },
				lvl = 60,
				groups = {
					i(18513),	-- A Dull and Flat Elven Blade
				},
			}),
			q(7636, {	-- Stave of the Ancients
				description = "You must defeat the 4 demons listed below by yourself with no pet in order to complete this quest.",
				--sourceQuest = 7633,	-- An Introduction (requires Molten Core)
				providers = {
					{ "n", 14524 },	-- Vartrus the Ancient
					{ "i", 18708 },	-- Petrified Bark
				},
				coord = { 47.0, 24.48, MAP.FELWOOD },
				maps = { MAP.UNGORO_CRATER, MAP.BURNING_STEPPES, MAP.SILITHUS, MAP.WINTERSPRING },
				classes = { HUNTER },
				lvl = 60,
				groups = {
					objective(1, {	-- 0/1 Simone's Head
						provider = { "i", 18952 },	-- Simone's Head
						description = "There are two things that can make this fight difficult: her pet, a felhound named Precious and low nature resistance. Most hunters tend to CC Precious by freeze trapping it. Using ranged attacks is useless because she casts a debuff that substantially lowers ranged attack power. Your best bet is to use aspect of the wild + a greater nature protection potion (to dull and absorb her lightning bolts) and melee her until she falls.\n\nLocated in Un'goro Crater.",
						coord = { 34.5, 41.1, MAP.UNGORO_CRATER },
						crs = {
							14527,	-- Simone the Inconspicuous
							14533,	-- Simone the Seductress
						},
					}),
					objective(2, {	-- 0/1 Klinfran's Head
						provider = { "i", 18953 },	-- Klinfran's Head
						description = "Use Concussive Shot/Serpent Sting to kite him down the road. You should know how long serpent sting lasts, use only one per trip down the road, more if you think you can risk it. As soon as it's worn off, drop an ice trap, let him stand in it, go to the other side, max range, and start again. If for whatever reason he breaks trap, you can use scatter shot, or use concussive shot to just keep kiting him in a circle until the cooldown finishes.\n\nDo not worry about his enrage, because he won't be touching you at all if you play right.\n\nLocated in the Burning Steppes.",
						coord = { 25.3, 65.9, MAP.BURNING_STEPPES },
						crs = {
							14529,	-- Franklin the Friendly
							14534,	-- Klinfran the Crazed
						},
					}),
					objective(3, {	-- 0/1 Solenor's Head
						provider = { "i", 18954 },	-- Solenor's Head
						description = "This is the hardest demon:\n\nStrengths:\n* He does NOT predictably chase you. He frequently stops to fear (disorienting you and causing around 800 damage also) or will stop to shoot homing beetles at you.\n* The homing beetles basically prevent you from bandaging. They move extremely slow but hit extremely hard\n* If you leave melee range (further than 2-3 range or so), he uses an instant cast fear spell that also does 700-800 damage instantly, and he can cast these quickly, almost seemingly chain casting. Shadow protection potions do absorb this damage, however, even with greater potions, he tears through them very fast. It's also likely that the fear will send you into the homing beetles\n* Seemingly unlimited mana bar, so Viper Sting is useless\n* Scorpid sting has very little/no effect on him\n* Melees extremely hard and fast (200+) when in normal form\n\nWeaknesses:\n* If you use Rank 3 Wing Clip on him, it immobilizes him completely with \"Crippling Clip\" for 30 seconds.\n* The homing missiles (creepings) are not fired when you remain in melee range\n* He does NOT cast his fear when you remain in melee range\n* Must be 'chilled' via Frost Trap prior to fully engaging\n\nLocated in Silithus.",
						coord = { 24.7, 76.0, MAP.SILITHUS },
						crs = {
							14536,	-- Nelson the Nice
							14530,	-- Solenor the Slayer
						},
					}),
					objective(4, {	-- 0/1 Artorius's Head
						provider = { "i", 18955 },	-- Artorius's Head
						description = "Kite him using Aspect of the Cheetah. Keep Serpent Sting on at all times and use Concussive Shot whenever he gets close. It is important to remain beyond 30 yards of the Demonic Doom, yet within range to use Arcane Shot so that he continues chasing you. If you rely completely on Serpent Sting for damage, he will break aggro and return to where he started. Once you apply Serpent Sting, count to 4, and apply it again before it wears off (the damage does stack). You will be able to see this by a 2nd damage listing \"Stinging Trauma\", which will continue to increase each time the sting is applied.\n\nBe sure to clear the area you plan on fighting so as to not get dazed by another NPC wandering by.\n\nLocated in Winterspring.",
						coord = { 60.3, 13.2, MAP.WINTERSPRING },
						crs = {
							14531,	-- Artorius the Amiable
							14535,	-- Artorius the Doombringer
						},
					}),
					i(18707, {	-- Ancient Rune Etched Stave
						cost = {{ "i", 18724, 1 }},	-- 1x Enchanted Black Dragon Sinew
						groups = {
							i(18713),	-- Rhok'delar, Longbow of the Ancient Keepers
						},
					}),
					i(18715, {	-- Lok'delar, Stave of the Ancient Keepers
						description = "Go back to Felwood after having completed all the quests and a chat icon will become available, allowing you to interact with one of the ancients. Speak to him and he will give you the staff.",
						sourceQuests = {
							7634,	-- Ancient Sinew Wrapped Lamina
							7635,	-- A Proper String
							7636,	-- Stave of the Ancients
						},
						classes = { HUNTER },
					}),
				},
			}),
			q(7508, {	-- The Forging of Quel'Serrar
				sourceQuest = 7507,	-- Foror's Compendium
				providers = {
					{ "n", 14368 },	-- Lorekeeper Lydros
					{ "i", 18513 },	-- A Dull and Flat Elven Blade
				},
				maps = { MAP.DIRE_MAUL },
				classes = { WARRIOR, PALADIN },
				lvl = 60,
			}),
			q(7509, {	-- The Forging of Quel'Serrar
				sourceQuest = 7508,	-- The Forging of Quel'Serrar
				qg = 14368,	-- Lorekeeper Lydros
				maps = { MAP.DIRE_MAUL },
				classes = { WARRIOR, PALADIN },
				lvl = 60,
				groups = {
					objective(1, {	-- 0/1 Treated Ancient Blade
						provider = { "i", 18492 },	-- Treated Ancient Blade
						description = "Drops from Onyxia when you use the Heated Ancient Blade on her corpse.",
						cr = 10184,	-- Onyxia
						cost = {{ "i", 18488, 1 }},	-- 1x Heated Ancient Blade
					}),
					i(18488, {	-- Heated Ancient Blade
						provider = { "o", 179562 },	-- Ancient Heated Blade
						description = "Once the boss uses her Breath attack on your Unfired Ancient Blade, loot this item from the ground and then impale the corpse of Onyxia once you defeat her.",
						cost = {{ "i", 18489, 1 }},	-- 1x Unfired Ancient Blade
					}),
					i(18489, {	-- Unfired Ancient Blade
						description = "Place this in front of Onyxia's Breath attack during 'The Forging of Quel'Serrar' quest.\n\nYou may want to delay placing this item on the ground until the breath goes on cooldown during Phase 3.\n\nAs a note you can heat the blade in Phase 1 or 3. The Heated Ancient Blade has a deterioration time of 20 minutes. This is NOT a cooldown. Once the time runs out it will not change back into the Unfired Ancient Blade. It will instead disappear from your inventory and you will have to get a replacement for it by returning to DM, abandoning the quest, and reaccepting.",
					}),
					i(18348),	-- Quel'Serrar
				},
			}),
			q(7497, {	-- The Journey Has Just Begun (A)
				sourceQuests = { 7496 },	-- Celebrating Good Times
				qg = 14394,	-- Major Mattingly
				coord = { 67.0, 85.0, MAP.STORMWIND_CITY },
				requireSkill = LEATHERWORKING,
				learnedAt = 300,
				races = ALLIANCE_ONLY,
				lvl = 60,
				groups = {
					recipe(19093),	-- Onyxia Scale Cloak
				},
			}),
			q(7493, {	-- The Journey Has Just Begun (H)
				sourceQuests = { 7491 },	-- For All To See
				qg = 14392,	-- Overlord Runthak
				coord = { 52.2, 75.8, MAP.ORGRIMMAR },
				requireSkill = LEATHERWORKING,
				learnedAt = 300,
				races = HORDE_ONLY,
				lvl = 60,
				groups = {
					recipe(19093),	-- Onyxia Scale Cloak
				},
			}),
			q(7495, {	-- Victory for the Alliance
				provider = { "i", 18423 },	-- Head of Onyxia (A)
				maps = { MAP.STORMWIND_CITY },
				races = ALLIANCE_ONLY,
				lvl = 60,
			}),
			q(7490, {	-- Victory for the Horde
				provider = { "i", 18422 },	-- Head of Onyxia (H)
				maps = { MAP.ORGRIMMAR },
				races = HORDE_ONLY,
				lvl = 60,
			}),
		}),
		prof(SKINNING, {
			i(15410),	-- Scale of Onyxia
		}),
		n(10184, {	-- Onyxia
			ach(684),	-- Onyxia's Lair
			i(18423, {	-- Head of Onyxia (A)
				races = ALLIANCE_ONLY,
			}),
			i(18422, {	-- Head of Onyxia (H)
				races = HORDE_ONLY,
			}),
			i(18705, {	-- Mature Black Dragon Sinew
				classes = { HUNTER },
				lvl = 60,
			}),
			i(17966),	-- Onyxia Hide Backpack (Bag)
			--[[ Unclear what the lootable will be
			i(17068),	-- Deathbringer
			i(17075),	-- Vis'kag the Bloodletter
			i(17067),	-- Ancient Cornerstone Grimoire
			i(16908),	-- Bloodfang Hood
			i(16939),	-- Dragonstalker's Helm
			i(16921),	-- Halo of Transcendence
			i(16963),	-- Helm of Wrath
			i(16947),	-- Helmet of Ten Storms
			i(16955),	-- Judgment Crown
			i(16929),	-- Nemesis Skullcap
			i(16914),	-- Netherwind Crown
			i(16900),	-- Stormrage Cover
			i(18205),	-- Eskhandar's Collar
			i(17078),	-- Sapphiron Drape
			i(18813),	-- Ring of Binding
			i(17064),	-- Shard of the Scale
			--]]
		}),
	},
});