---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(SHADOWLANDS, bubbleDown({ ["timeline"] = { ADDED_9_0_2_LAUNCH } }, {
	m(ARDENWEALD, {
		n(RARES, sharedData({
			["isDaily"] = true,
		}, {
			n(164477, {	-- Deathbinder Hroth
				["coord"] = { 34.6, 68.0, ARDENWEALD },
				["questID"] = 59226,
				["groups"] = {
					i(180166),	-- Deathbinder's Staff
				},
			}),
			n(164238, {	-- Deifir the Untamed
				["description"] = "The rare runs laps through the water. You can hop on its back slow it and periodically stun it.",
				["coord"] = { 47.6, 24.6, ARDENWEALD },
				["questID"] = 59201,
				["groups"] = {
					i(180631),	-- Gorm Needler (PET!)
				},
			}),
			n(163229, {	-- Dustbrawl
				["coord"] = { 48.6, 76.8, ARDENWEALD },
				["questID"] = 58987,
				["groups"] = {
					i(181395)	-- Dustbreak Maul
				},
			}),
			n(167851, {	-- Egg-Tender Leh'go
				["description"] = "At the back of the cave. Destroy |cFFFFFFFFQuivering Gorm Eggs|r and defeat the Angry Egg-Tenders until the rare spawns.",
				["crs"] = { 171827 },	-- Angry Egg-Tender
				["coord"] = { 58.5, 31.8, ARDENWEALD },
				["questID"] = 60266,
				["groups"] = {
					i(179539),	-- Kelox's Eggbeater
				},
			}),
			n(171688, {	-- Faeflayer
				["description"] = "In a cave behind a waterfall.",
				["coord"] = { 68.4, 29.4, ARDENWEALD },
				["questID"] = 61184,
				["groups"] = {
					i(180144),	-- Faeflayer's Hatchet
				},
			}),
			n(163370, {	-- Gormbore
				["description"] = "Kill mobs on top of the dust cloud. Eventually, Watcher Ver'lo will yell a warning about something moving underground, at which point you've almost killed enough to force the rare to spawn.",
				["coord"] = { 53.8, 75.8, ARDENWEALD },
				["questID"] = 59006,
				["groups"] = {
					i(183196),	-- Lavender Nibbler (PET!)
				},
			}),
			n(164107, {	-- Gormtamer Tizo
				["description"] = "Kill Deranged Guardians and Bristlecone Terrors until Chompy spawns. Gormtamer Tizo will spawn after Chompy is killed.",
				["crs"] = { 164110 },	-- Chompy
				["coord"] = { 28.4, 55.3, ARDENWEALD },
				["questID"] = 59145,
				["groups"] = {
					i(180725),	-- Spinemaw Gladechewer (MOUNT!)
				},
			}),
			n(164547, {	-- Mystic Rainbowhorn
				["description"] = "The horn can randomly spawn at one of many locations in Ardenweald. When the horn is used, the Mystic Rainbowhorn will spawn at |cFFFFFFFF65.7, 28.1|r.",
				["provider"] = { "o", 345446 },	-- Great Horn of the Runestag
				["coord"] = { 65.7, 28.1, ARDENWEALD },
				["questID"] = 59235,
				["groups"] = {
					i(182179),	-- Runestag Soul
					i(179586),	-- Elderwood Piercer
				},
			}),
			n(164112, {	-- Humon'gozz
				["crs"] = { 164122 },	-- Rapidly Growing Mushroom/Humon'gozz (npcID stays the same after it morphs from the mushroom into Humon'gozz)
				["coord"] = { 32.6, 31.0, ARDENWEALD },
				["questID"] = 59157,
				["cost"] = { { "i", 175247, 1 } },	-- 1x Unusually Large Mushroom
				["groups"] = {
					i(182650),	-- Arboreal Gulper (MOUNT!)
				},
			}),
			n(160448, {	-- Hunter Vivanna <The Wild Hunt>
				["coord"] = { 67.8, 51.2, ARDENWEALD },
				["questID"] = 59221,
				["groups"] = {
					i(183091),	-- Lifewoven Bracelet (QI!)
					i(180163),	-- Blackthorn Harvester
					i(180143),	-- Darkreach Hacker
					i(179593),	-- Darkreach Mask
					i(180155),	-- Darkreach Splitter
					i(180142),	-- Deadstone Hatchet
					i(179596),	-- Drust Mask of Dominance
					i(180153),	-- Drustwrought Executioner
					i(180162),	-- Drustwrought Scythe
					i(180156),	-- Witherscorn Greataxe
					i(179594),	-- Witherscorn Guise
					i(180145),	-- Witherscorn Handaxe
					i(180165),	-- Witherscorn Reaper
				},
			}),
			n(164093, {	-- Macabre
				["description"] = "Shows up as 'Mysterious Mushroom Ring' on the minimap. Requires 3 players.\n\nAll 3 must stand in the Ring of Dance. Player 1 /dances with Player 2, Player 2 /dances with Player 3, and Player 3 /dances with Player 1.",
				["coords"] = {
					{ 32.9, 44.4, ARDENWEALD },
					{ 36.4, 48.1, ARDENWEALD },
					{ 47.9, 40.2, ARDENWEALD },
				},
				["questID"] = 59140,
				["groups"] = {
					i(180644),	-- Rocky (PET!)
				},
			}),
			n(165053, {	-- Mymaen
				["description"] = "Shared spawn with Rotbriar Scrappers.",
				["coord"] = { 62.2, 24.8, ARDENWEALD },
				["questID"] = 59431,
				["groups"] = {
					i(179502),	-- Ripvine Barb
				},
			}),
			n(164391, {	-- Old Ardeite
				["description"] = "Use either a |cff16bf0dPinch of Faerie Dust|r (dropped by the mobs in the area) or the buff from |cFFFFFFFFBasket of Enchanted Wings|r to fly up to the rare. When you get close enough, it will fly down and be attackable.",
				["coord"] = { 52.0, 58.8, ARDENWEALD },
				["questID"] = 59208,
				["groups"] = {
					i(180643),	-- Chirpy Valeshrieker (PET!)
				},
			}),
			n(167726, {	-- Rootwrithe
				["description"] = "Poke the Dormant Blossoms repeatedly to summon the rare.",
				["crs"] = {
					167928,	-- Dormant Blossom
					167929,	-- Dormant Blossom
					167916,	-- Dormant Blossom
				},
				["coord"] = { 64.6, 44.0, ARDENWEALD },
				["questID"] = 60273,
				["groups"] = {
					i(179603),	-- Nettlehusk Barrier
				},
			}),
			n(167724, {	-- Rotbriar Boggart
				["coord"] = { 65.6, 24.0, ARDENWEALD },
				["crs"] = { 171684 },	-- Daffodil
				["questID"] = 60258,
				["groups"] = {
					i(175729),	-- Rotbriar Sprout
				},
			}),
			n(164415, {	-- Skuld Vit
				["description"] = "Use soulshape to cross the barrier.",
				["coord"] = { 37.4, 59.6, ARDENWEALD },
				["questID"] = 59220,
				["groups"] = {
					i(182183),	-- Wolfhawk Soul
					i(180146),	-- Axe of Broken Wills
				},
			}),
			n(171451, {	-- Soultwister Cero
				["coord"] = { 72.4, 51.6, ARDENWEALD },
				["questID"] = 61177,
				["groups"] = {
					i(180164),	-- Soultwister's Scythe
				},
			}),
			n(167721, {	-- The Slumbering Emperor
				["description"] = "You can use various toys (Darkmoon Cannon, Phial of Ravenous Slime), pet abilities, and AoE abilities to pull this rare. If you need help not falling asleep, pulling a nearby Greater Ardenmoth can apply a poison that will give you a few more seconds by waking you up with each tick.",
				["coord"] = { 59.2, 46.6, ARDENWEALD },
				["questID"] = 60290,
				["groups"] = {
					i(183828),	-- Friendly Bugs
					i(175711),	-- Slumberwood Band
				},
			}),
			n(164147, {	-- Wrigglemortis
				["description"] = "Pull on the Wriggling Tendril to spawn the rare.",
				["crs"] = { 164179 },	-- Wriggling Tendril
				["coord"] = { 58.0, 61.6, ARDENWEALD },
				["questID"] = 59170,
				["groups"] = {
					i(181396),	-- Thornsweeper Scythe
				},
			}),
		})),
	}),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.SL, bubbleDownSelf({ ["timeline"] = { ADDED_9_0_2_LAUNCH } }, {
	m(SHADOWLANDS, {
		m(ARDENWEALD, {
			n(RARES, {
				q(62267),	-- Gormbore secondary quest
				q(62269),	-- Macabre secondary quest
				q(62270),	-- Old Ardeite secondary quest
				q(62271),	-- Deifir the Untamed secondary quest
				q(61198),	-- Triggers when successfully completing the pre-req sequence for the Shimmermist Runner rare
			}),
		}),
	}),
})));
