-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

root(ROOTS.Instances, {
	inst(3065, {	-- The Hall of Thanes
		["lore"] = "Hidden beneath the High Seat of Ironforge, the Hall of Thanes is part of the legendary \"Old Ironforge\", forever incapable of access in Classic Azeroth until WoW: Forever. The Hall of Thanes is the resting place of the Legendary Dwarves of the Eastern Kingdoms, but has recently been invaded by the hostile Dark Iron Dwarves",
		["icon"] = [[~_.asset("hallofthanes")]],
		["zone-text-areaID"] = 16919,	-- The Hall of Thanes
		["coord"] = { 50.0, 50.0, MAP.IRONFORGE },
		["timeline"] = { TIMELINE.ADDED_1_60_1 },
		["lvl"] = 13,
		["groups"] = {
			n(QUESTS, {
				q(96395, {	-- An Ancient Grudge
					qg = 265002,	-- Ghostly Attendant
					races = ALLIANCE_ONLY,
					lvl = 10,
					groups = {
						objective(1, {	-- 0/1 Faldrim Anvilmar slain
							provider = { "n", 261306 },	-- Faldrim Anvilmar
						}),
						i(279899),	-- Catacomb Cloak
						i(279900),	-- Deepgrave Trousers
					},
				}),
				q(96403, {	-- Important Heirlooms
					qg = 265003,	-- Thom Filch
					coord = { 32.4, 44.8, MAP.IRONFORGE },
					races = ALLIANCE_ONLY,
					lvl = 10,
					groups = {
						objective(1, {	-- 0/8 Dwarven Heirloom
							providers = {
								{ "i", 274289 },	-- Dwarven Heirloom
								{ "o", 457387 },	-- Dwarven Heirloom
							},
						}),
						i(279898),	-- Dwarven Tome
						i(280096),	-- Tomb Robber's Gloves
					},
				}),
				q(96394, {	-- The Restless Dead
					qg = 264943,	-- Afadra Dunwall <Lorekeeper of Ironforge>
					coord = { 33.2, 47.8, MAP.IRONFORGE },
					races = ALLIANCE_ONLY,
					lvl = 10,
					groups = {
						objective(1, {	-- 0/15 Enraged Apparition slain
							provider = { "n", 263389 },	-- Enraged Apparition
						}),
						objective(2, {	-- 0/10 Tormented Soul slain
							provider = { "n", 263390 },	-- Tormented Soul
						}),
						i(279897),	-- Dusty Belt
						i(280095),	-- Cryptwalker Bracers
					},
				}),
				q(96393, {	-- Old Ironforge Incursion
					sourceQuest = 96391,	-- Underground Map
					qg = 264936,	-- Earthseer Farsen
					coord = { 64.8, 58.4, MAP.DUN_MOROGH },
					races = ALLIANCE_ONLY,
					lvl = 9,
					groups = {
						objective(1, {	-- 0/1 Durgen Dirgehammer's Head
							provider = { "i", 274286 },	-- Durgen Dirgehammer's Head
							cr = 261319,	-- Durgen Dirgehammer
						}),
						i(279894),	-- Calibrated Blunderbuss
						i(279895),	-- Ironforge Greathammer
						i(279896),	-- Deepblaze
					},
				}),
				q(98423, {	-- The Treaty of Understanding
					qs = 281030,	-- Treaty of Understanding (QS!)
					races = ALLIANCE_ONLY,
					lvl = 9,
					groups = {
						objective(1, {	-- Deliver the Treaty of Understanding to Magni Bronzebeard
							provider = { "n", 2784 },	-- King Magni Bronzebeard
							coord = { 39.3, 56.0, MAP.IRONFORGE },
						}),
					},
				}),
			}),
			e(3493, {	-- Faldrim Anvilmar
				creatureID = 261306,	-- Faldrim Anvilmar
				groups = {
					i(271096),	-- Aetherwisp Bracers
					i(270227),	-- Ephemeral Choker
					i(271097),	-- Spiritwraith Drape
				},
			}),
			e(3495, {	-- Magmatus
				creatureID = 261316,	-- Magmatus
				groups = {
					i(271095),	-- Fang of Magmatus
					i(270231),	-- Flamefist Grips
					i(270230),	-- Kindlegem Girdle
				},
			}),
			e(3494, {	-- Plunder
				creatureID = 261311,	-- Plunder
				groups = {
					i(271098),	-- Golemguard Chest
					i(270228),	-- Golemheart Stave
					i(270229),	-- Treads of the Protector Golem
				},
			}),
			e(3496, {	-- Durgen Dirgehammer
				creatureID = 261319,	-- Durgen Dirgehammer
				groups = {
					i(270260),	-- Direhammer Leggings
					i(270256),	-- Durgen's Crescent Axe
					i(270261),	-- Robes of the Disgraced Thane
				},
			}),
		},
	}),
});
