-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------

root(ROOTS.ExpansionFeatures, expansion(EXPANSION.SL, bubbleDown({ ["customCollect"] = "SL_COV_NFA" }, {
	n(NIGHT_FAE, {
		n(SOULSHAPES, {
			q(65010, {	-- Alpaca Soul
				["provider"] = { "i", 187882 },	-- Alpaca Soul
			}),
			q(62422, {	-- Ardenmoth Soul
				["provider"] = { "i", 182165 },	-- Ardenmoth Soul
			}),
			applyevent(EVENTS.TIMEWALKING_WARLORDS_OF_DRAENOR_DUNGEON_EVENT, q(65025, {	-- Boar Soul
				["provider"] = { "i", 187905 },	-- Boar Soul
			})),
			petbattle(q(64984, {	-- Bunny Soul
				["provider"] = { "i", 187858 },	-- Bunny Soul
			})),
			q(64961, {	-- Cat Soul
				["provider"] = { "i", 187819 },	-- Cat Soul
			}),
			q(64982, {	-- Cat (Well-Fed) Soul
				["name"] = "Cat (Well-Fed) Soul",
				["icon"] = 656577,
				["sourceQuests"] = { 64961 },	-- Cat Soul
				["cost"] = { { "i", 187811, 1 } },	-- Spectral Feed
				["coord"] = { 58.4, 70.5, 1702 },	-- Heart of the Forest
				["qg"] = 182093,	-- Ma'oh
				["description"] = "After obtaining the Cat Soul, grab a |cFFFFFFFFSpectral Feed|r located at |cFFFFFFFF63.75, 61.69|r in Revendreth. Then return to Heart of the Forest with it, and go to the Queen's Conservatory portal downstairs.\nFind |cFFFFFFFFMa'oh|r next to the portal and |cFFFFFFFF/meow|r at them. Then use the |cFFFFFFFFSpectral Feed|r from your inventory while targeting them.",
			}),
			q(64941, {	-- Chicken Soul
				["provider"] = { "i", 187813 },	-- Chicken Soul
			}),
			q(64939, {	-- Choofa/Squirrel Soul
				["name"] = "Choofa/Squirrel Soul",
				["icon"] = 645526,
				["description"] = "Talk to Choofa in the covenant sanctum."
			}),
			applyevent(EVENTS.TIMEWALKING_MISTS_OF_PANDARIA_DUNGEON_EVENT, q(65024, {	-- Cloud Serpent Soul
				["provider"] = { "i", 187904 },	-- Cloud Serpent Soul
			})),
			pvp(q(64651, {	-- Cobra Soul
				["description"] = "Drops from rated PvP.",
				["provider"] = { "i", 182167 },	-- Cobra Soul
			})),
			q(64938, {	-- Corgi Soul
				["name"] = "Corgi Soul",
				["icon"] = 1339013,
				["description"] = "Emote |cFFFFFFFF/pet|r on the little corgi named Sparkle running around the night fae covenant sanctum.",
				["crs"] = { 174608 },	-- Sparkle
			}),
			q(62424, {	-- Crane Soul
				["provider"] = { "i", 182168 },	-- Crane Soul
			}),
			q(64990, {	-- Cricket Soul
				["provider"] = { "i", 187871 },	-- Cricket Soul
			}),
			q(63607, {	-- Direhorn Soul
				["provider"] = { "i", 185051 },	-- Direhorn Soul
			}),
			q(65021, {	-- Eagle Soul
				["provider"] = { "i", 187901 },	-- Eagle Soul
			}),
			q(62428, {	-- Equine Soul
				["provider"] = { "i", 182172 },	-- Equine Soul
			}),
			q(64994, {	-- Frog Soul
				["provider"] = { "i", 187877 },	-- Frog Soul
			}),
			q(65008, {	-- Goat Soul
				["provider"] = { "i", 187880 },	-- Goat Soul
			}),
			pvp(q(62426, {	-- Gryphon Soul
				["description"] = "Drops from rated PvP.",
				["provider"] = { "i", 182170 },	-- Gryphon Soul
			})),
			q(62421, {	-- Gulper Soul
				["provider"] = { "i", 181314 },	-- Gulper Soul
			}),
			q(63608, {	-- Hippo Soul
				["provider"] = { "i", 185052 },	-- Hippo Soul
			}),
			q(62427, {	-- Hippogryph Soul
				["provider"] = { "i", 182171 },	-- Hippogryph Soul
			}),
			q(64650, {	-- Hyena Soul
				["description"] = "Drops from Mythic Dungeons.",
				["provider"] = { "i", 182173 },	-- Hyena Soul
			}),
			applyevent(EVENTS.TIMEWALKING_NORTHREND_DUNGEON_EVENT, q(65023, {	-- Jormungar Soul
				["provider"] = { "i", 187903 },	-- Jormungar Soul
			})),
			applyevent(EVENTS.TIMEWALKING_CATACLYSM_DUNGEON_EVENT, q(63609, {	-- Kodo Soul
				["provider"] = { "i", 185053 },	-- Kodo Soul
			})),
			q(62429, {	-- Leonine Soul
				["provider"] = { "i", 182174 },	-- Leonine Soul
			}),
			q(62438, {	-- Lupine Soul
				["provider"] = { "i", 182182 },	-- Lupine Soul
			}),
			q(63610, {	-- Mammoth Soul
				["provider"] = { "i", 185054 },	-- Mammoth Soul
			}),
			q(62430, {	-- Moose Soul
				["provider"] = { "i", 182175 },	-- Moose Soul
			}),
			q(64959, {	-- Otter Soul
				["provider"] = { "i", 187818 },	-- Otter Soul
			}),
			applyevent(EVENTS.TIMEWALKING_LEGION_DUNGEON_EVENT, q(65026, {	-- Owl Soul
				["provider"] = { "i", 187906 },	-- Owl Soul
			})),
			q(62432, {	-- Owlcat Soul
				["provider"] = { "i", 182177 },	-- Owlcat Soul
				-- ["crs"] = { 175732 },	-- Sylvanas Windrunner
			}),
			q(64989, {	-- Porcupine Soul
				["provider"] = { "i", 187870 },	-- Porcupine Soul
			}),
			q(64992, {	-- Prairie Dog Soul
				["provider"] = { "i", 187873 },	-- Prairie Dog Soul
			}),
			q(65009, {	-- Ram Soul
				["provider"] = { "i", 187881 },	-- Ram Soul
			}),
			q(62433, {	-- Raptor Soul
				["provider"] = { "i", 182178 },	-- Raptor Soul
				-- ["crs"] = { 169769 },	-- Mueh'zala
			}),
			q(64985, {	-- Rat Soul
				["provider"] = { "i", 187859 },	-- Rat Soul
			}),
			q(62434, {	-- Runestag Soul
				["provider"] = { "i", 182179 },	-- Runestag Soul
				-- ["crs"] = { 164547 },	-- Mystic Rainbowhorn
			}),
			q(64995, {	-- Saurid Soul
				["provider"] = { "i", 187878 },	-- Saurid Soul
			}),
			q(63605, {	-- Saurolisk Soul
				["provider"] = { "i", 185049 },	-- Saurolisk Soul
			}),
			q(64993, {	-- Saurolisk Hatchling Soul
				["provider"] = { "i", 187876 },	-- Saurolisk Hatchling Soul
			}),
			q(62431, {	-- Shadowstalker Soul
				["provider"] = { "i", 182176 },	-- Shadowstalker Soul
				-- ["crs"] = { 168647 },	-- Valfir the Unrelenting
			}),
			pvp(q(63604, {	-- Shoveltusk Soul
				["description"] = "Drops from PvP.",	-- Comp Stomp 2 Nov 2021
				["provider"] = { "i", 185048 },	-- Shoveltusk Soul
			})),
			q(62436, {	-- Shrieker Soul
				["provider"] = { "i", 182185 },	-- Shrieker Soul
				-- ["crs"] = { 164501 },	-- Mistcaller
			}),
			q(64988, {	-- Snake Soul
				["provider"] = { "i", 187862 },	-- Snake Soul
			}),
			q(62420, {	-- Snapper Soul
				["provider"] = { "i", 181313 },	-- Snapper Soul
			}),
			q(63606, {	-- Spider Soul
				["provider"] = { "i", 185050 },	-- Spider Soul
			}),
			applyevent(EVENTS.TIMEWALKING_OUTLAND_DUNGEON_EVENT, q(65022, {	-- Sporebat Soul
				["provider"] = { "i", 187902 },	-- Sporebat Soul
			})),
			q(62435, {	-- Stag Soul
				["provider"] = { "i", 182180 },	-- Stag Soul
			}),
			q(62437, {	-- Tiger Soul
				["provider"] = { "i", 182181 },	-- Tiger Soul
			}),
			applyevent(EVENTS.PILGRIMS_BOUNTY, q(65467, {	-- Turkey Soul
				["provider"] = { "i", 189705 },	-- Turkey Soul
			})),
			q(62423, {	-- Ursine Soul
				["provider"] = { "i", 182166 },	-- Ursine Soul
			}),
			q(62425, {	-- Veilwing Soul
				["provider"] = { "i", 182169 },	-- Veilwing Soul
			}),
			q(62439, {	-- Wolfhawk Soul
				["provider"] = { "i", 182183 },	-- Wolfhawk Soul
				-- ["crs"] = { 164415 },	-- Skuld Vit
			}),
			pvp(q(62440, {	-- Wyvern Soul
				["description"] = "Drops from random battlegrounds.",
				["provider"] = { "i", 182184 },	-- Wyvern Soul
			})),
			q(63603, {	-- Yak Soul
				["provider"] = { "i", 185047 },	-- Yak Soul
			}),
			-- #if AFTER 9.2.0
			q(65514, {	-- Armadillo Soul
				["provider"] = { "i", 189986 },	-- Armadillo Soul
			}),
			q(65509, {	-- Bat Soul
				["provider"] = { "i", 189977 },	-- Bat Soul
			}),
			q(65518, {	-- Bee Soul
				["provider"] = { "i", 189990 },	-- Bee Soul
			}),
			q(65510, {	-- Brutosaur Soul
				["provider"] = { "i", 189980 },	-- Brutosaur Soul
			}),
			q(65640, {	-- Cervid Soul
				["provider"] = { "i", 190337 },	-- Cervid Soul
			}),
			q(65504, {	-- Dragonhawk Soul
				["provider"] = { "i", 189971 },	-- Dragonhawk Soul
			}),
			q(65507, {	-- Elekk Soul
				["provider"] = { "i", 189975 },	-- Elekk Soul
			}),
			q(65513, {	-- Gromit Soul
				["provider"] = { "i", 189983 },	-- Gromit Soul
			}),
			q(65517, {	-- Penguin Soul
				["provider"] = { "i", 189989 },	-- Penguin Soul
			}),
			q(65515, {	-- Pig Soul
				["provider"] = { "i", 189987 },	-- Pig Soul
			}),
			q(65506, {	-- Ray Soul
				["provider"] = { "i", 189973 },	-- Ray Soul
			}),
			q(65505, {	-- Scorpid Soul
				["provider"] = { "i", 189972 },	-- Scorpid Soul
			}),
			q(65516, {	-- Sheep Soul
				["provider"] = { "i", 189988 },	-- Sheep Soul
			}),
			q(65512, {	-- Silithid Soul
				["provider"] = { "i", 189982 },	-- Silithid Soul
			}),
			q(65519, {	-- Snail Soul
				["provider"] = { "i", 189991 },	-- Snail Soul
			}),
			q(65508, {	-- Tallstrider Soul
				["provider"] = { "i", 189976 },	-- Tallstrider Soul
			}),
			-- #endif
		}),
	}),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.SL, bubbleDown({ ["customCollect"] = "SL_COV_NFA" }, {
	n(NIGHT_FAE, {
		n(SOULSHAPES, {
			q(65029),	-- when learning about 'random' soulshape selection option (spellID 360630)
		}),
	}),
})))