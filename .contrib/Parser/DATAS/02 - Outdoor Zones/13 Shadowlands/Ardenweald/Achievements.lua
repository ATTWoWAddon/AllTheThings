---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(SHADOWLANDS, bubbleDown({ ["timeline"] = { ADDED_9_0_2_LAUNCH } }, {
	m(ARDENWEALD, {
		n(ACHIEVEMENTS, {
			ach(14309, {	-- Adventurer of Ardenweald
				crit(48714, {
					["_npcs"] = { 164477 },	-- Deathbinder Hroth
				}),
				crit(48715, {
					["_npcs"] = { 164547 },	-- Mystic Rainbowhorn
				}),
				crit(48780, {
					["_npcs"] = { 164093 },	-- Macabre
				}),
				crit(48781, {
					["_npcs"] = { 164107 },	-- Gormtamer Tizo
				}),
				crit(48782, {
					["_npcs"] = { 164112 },	-- Humon'gozz
				}),
				crit(48783, {
					["_npcs"] = { 164147 },	-- Wrigglemortis
				}),
				crit(48784, {
					["_npcs"] = { 164238 },	-- Deifir the Untamed
				}),
				crit(48785, {
					["_npcs"] = { 164391 },	-- Old Ardeite
				}),
				crit(48786, {
					["_npcs"] = { 164415 },	-- Skuld Vit
				}),
				crit(48787, {
					["_npcs"] = { 160448 },	-- Hunter Vivanna <The Wild Hunt>
				}),
				crit(48788, {
					["_npcs"] = { 165053 },	-- Mymaen
				}),
				crit(48789, {
					["_npcs"] = { 167724 },	-- Rotbriar Boggart
				}),
				crit(48790, {
					["_npcs"] = { 167851 },	-- Egg-Tender Leh'go
				}),
				crit(48791, {
					["_npcs"] = { 167726 },	-- Rootwrithe
				}),
				crit(48792, {
					["_npcs"] = { 167721 },	-- The Slumbering Emperor
				}),
				crit(48793, {
					["_npcs"] = { 168135 },	-- Night Mare
				}),
				crit(48794, {
					["_npcs"] = { 163229 },	-- Dustbrawl
				}),
				crit(48795, {
					["_npcs"] = { 163370 },	-- Gormbore
				}),
				crit(48796, {
					["_npcs"] = { 168647 },	-- Valfir the Unrelenting
				}),
				crit(48797, {
					["_npcs"] = { 171451 },	-- Soultwister Cero
				}),
				crit(48798, {
					["_npcs"] = { 171688 },	-- Faeflayer
				}),
			}),
			ach(14774, {	-- Ardenweald Gourmand
				["description"] = "All food is sold by Tanor in Ardenweald at |cFFFFFFFF65.0, 19.6|r.",
				["coord"] = { 65.0, 19.6, ARDENWEALD },
				["crs"] = { 164725 },	-- Tanor <Food & Drink>
				["groups"] = {
					crit(49954, {["provider"] = { "i", 178228 }}),	-- Glittersnap Snowpeas
					crit(49955, {["provider"] = { "i", 173761 }}),	-- Glazed Glowberries
					crit(49956, {["provider"] = { "i", 173759 }}),	-- Candied Brightbark
					crit(49957, {["provider"] = { "i", 178252 }}),	-- Torchberry Bundle
					crit(49958, {["provider"] = { "i", 178216 }}),	-- Grilled Slumbershrooms
					crit(49959, {["provider"] = { "i", 178226 }}),	-- Charred Runeflank
					crit(49960, {["provider"] = { "i", 178223 }}),	-- Poached Strider Egg
					crit(49961, {["provider"] = { "i", 173762 }}),	-- Flask of Ardendew
					crit(49962, {["provider"] = { "i", 178219 }}),	-- Mulled Faewine
					crit(49963, {["provider"] = { "i", 178218 }}),	-- Wintermelon Brandy
					crit(49964, {["provider"] = { "i", 178222 }}),	-- Honeyplum Pie
					crit(49965, {["provider"] = { "i", 173760 }}),	-- Sylberry Snowcake
					crit(49966, {["provider"] = { "i", 178247 }}),	-- Ripe Wintermelon
					crit(49967, {["provider"] = { "i", 178225 }}),	-- Wild Hunter's Stew
					crit(49968, {["provider"] = { "i", 178224 }}),	-- Steamed Gorm Tail
					crit(49969, {["provider"] = { "i", 178227 }}),	-- Midnight Starpepper
				},
			}),
			ach(14353, {	-- Ardenweald's a Stage
				["description"] = "You have to be in the Night Fae covenant to personally summon mobs, but anyone can kill and loot the mobs if they are summoned by someone else. Only one mob is summonable per day.",
				["coord"] = { 41.5, 44.8, ARDENWEALD },
				["crs"] = { 171743 },	-- Dapperdew
				["groups"] = {
					crit(48705, {	-- Xavius
						["_npcs"] = { 166146 },
					}),
					crit(48706, {	-- Gul'dan
						["_npcs"] = { 166140 },
					}),
					crit(48707, {	-- Kil'jaeden
						["_npcs"] = { 166139 },
					}),
					crit(48708, {	-- Argus, The Unmaker
						["_npcs"] = { 166138 },
					}),
					crit(48704, {	-- Jaina
						["_npcs"] = { 166142 },
					}),
					crit(48709, {	-- Azshara
						["_npcs"] = { 166135 },
					}),
					crit(48710, {	-- N'Zoth
						["_npcs"] = { 166145 },
					}),
				},
			}),
			ach(14164, {	-- Awaken, Ardenweald
				["sym"] = {{ "achievement_criteria" }},
			}),
			ach(14304),	-- Explore Ardenweald
			ach(14788, {	-- Fractured Faerie Tales
				["sym"] = {{ "achievement_criteria" }},
			}),
			ach(14800, {	-- Sojourner of Ardenweald
				["sym"] = {{ "achievement_criteria" }},
			}),
			ach(14791, {	-- Toss a Seed to Your Hunter...
				["description"] = "The Faintly Glowing Seeds can be found scattered around the zone, but the closest ones to the encounter are up the hill in Heartwood Grove. Look around the bases of trees for sparkling bluish-purple plants.",
				["crs"] = { 171690 },	-- Gwyncierw
				["coord"] = { 65.6, 24.6, ARDENWEALD },
				["provider"] = { "i", 183902 },	-- 1x A Faintly Glowing Seed
			}),
			ach(14511, {	-- Tour of Duty: Ardenweald
				["pvp"] = true,
			}),
			ach(14313, {	-- Treasures of Ardenweald
				["sym"] = {{ "achievement_criteria" }},
			}),
			ach(14779, {	-- Wild Hunting
				crit(49983, {	-- Nightsong Wader
					["coord"] = { 37.7, 56.9, ARDENWEALD },
					["crs"] = { 161889 },
				}),
				crit(49980, {	-- Decayfly
					["coord"] = { 64.5, 24.2, ARDENWEALD },
					["crs"] = { 170734 },
				}),
				crit(49978, {	-- Basin Vulpin
					["coord"] = { 61.5, 50.3, ARDENWEALD },
					["crs"] = { 163093 },
				}),
				crit(49975, {	-- Greater Ardenmoth
					["coord"] = { 60.5, 38.6, ARDENWEALD },
					["crs"] = { 166073 },
				}),
				crit(49992, {	-- Verdant Prowler
					["coord"] = { 42.7, 58.7, ARDENWEALD },
					["crs"] = { 161917 },
				}),
				crit(49993, {	-- Veilwing Guardian
					["coord"] = { 47.6, 43.2, ARDENWEALD },
					["crs"] = { 167503 },
				}),
				crit(49994, {	-- Highland Runestag
					["coord"] = { 58.0, 57.8, ARDENWEALD },
					["crs"] = { 170856 },
				}),
				crit(49995, {	-- Wild Gloomrunner
					["coord"] = { 39.7, 34.3, ARDENWEALD },
					["crs"] = { 169750 },
				}),
				crit(49996, {	-- Voracious Lasher
					["coord"] = { 35.5, 37.0, ARDENWEALD },
					["crs"] = { 169819 },
				}),
				crit(49997, {	-- Mystic Gulper
					["coord"] = { 36.0, 38.5, ARDENWEALD },
					["crs"] = { 169768 },
				}),
				crit(49998, {	-- Roving Gladechewer
					["coord"] = { 66.0, 51.2, ARDENWEALD },
					["crs"] = { 165912 },
				}),
				crit(49999, {	-- Wild Gormling
					["coord"] = { 65.8, 51.6, ARDENWEALD },
					["crs"] = { 158946 },
				}),
			}),
		}),
	}),
})));
