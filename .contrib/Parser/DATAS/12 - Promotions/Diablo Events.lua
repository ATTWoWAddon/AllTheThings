-----------------------------------------------------
--        P R O M O T I O N S   M O D U L E        --
-----------------------------------------------------
-- #if AFTER 7.1.0.22908
DIABLO_EVENTS = createHeader({
	readable = "Diablo Events",
	icon = 1529348,
	text = {
		en = "Diablo Events",
		ru = "События Diablo",
		cn = "暗黑破坏神活动",
		tw = "暗黑破壞神活動",
	},
});
DIABLO_TWENTIETH_ANNIVERSARY = createHeader({
	readable = "Diablo 20th Anniversary",
	icon = 1529344,
	text = {
		en = "Diablo 20th Anniversary",
		de = "20. Geburtstag von Diablo",
		fr = "20e anniversaire de Diablo",
		ru = "20-ая годовщина Diablo",
		cn = "暗黑破坏神20周年庆",
		tw = "《暗黑破壞神》20週年慶",
	},
});
A_GREEDY_EMISSARY = 1382;
GREEDY_EMISSARY_EVENT = createHeader({
	-- https://www.wowhead.com/event=1382/a-greedy-emissary
	readable = "A Greedy Emissary",
	icon = 5160585,
	eventID = A_GREEDY_EMISSARY,
	text = {
		en = "A Greedy Emissary",
		es = "Un Emisario Codicioso",
		de = "Ein gieriger Abgesandter",
		fr = "Émissaire cupide",
		it = "Un emissario avido",
		pt = "Um Emissário Ganancioso",
		ru = "Алчный посланец",
		ko = "탐욕의 사절",
		cn = "贪婪的特使",
		tw = "貪婪使者",
	},
});
root(ROOTS.Promotions, n(DIABLO_EVENTS, {
	n(DIABLO_TWENTIETH_ANNIVERSARY, bubbleDown({ ["u"] = REMOVED_FROM_GAME }, {
		["timeline"] = { ADDED_7_1_0 },
		["maps"] = { DUSKWOOD },
		["groups"] = {
			n(ZONE_DROPS, {
				i(143628),	-- Blank Diabolic Tome
				i(142548),	-- Large Charm of Dexterity
				i(142547),	-- Large Charm of Strength
				i(142543),	-- Scroll of Town Portal
				i(142549),	-- Serpent's Grand Charm
				i(142546),	-- Small Charm of Inertia
				i(142545),	-- Small Charm of Life
				i(142551),	-- Stalwart's Grand Charm
			}),
			n(REWARDS, {
				i(142542, {	-- Tome of Town Portal (TOY!)
					["cost"] = {
						{ "i", 142543, 10 },	-- Scroll of Town Portal
						{ "i", 143628,  1 },	-- Blank Diabolic Tome
					},
				}),
			}),
			n(116041, {		-- Treasure Goblin (Outdoor)
				["description"] = "Can be found randomly in Legion zones, especially often in the Dalaran Underbelly.",
				["groups"] = {
					i(142544),	-- Horadric Satchel
				},
			}),
			n(116652, {		-- Treasure Goblin (Dungeons)
				["description"] = "Can be found after killing the last boss in a dungeon. Kill it and enter the portal to fight The Cow King.",
				["groups"] = {
					i(142544),	-- Horadric Satchel
				},
			}),
			n(116034, {	-- The Cow King
				["description"] = "Access is granted by taking a portal that spawns after a Treasure Goblin is killed. Can only be looted once per character. Right click the 'The Secret Cow Level' buff to leave the zone.",
				["groups"] = {
					ach(11395),	-- Diablo's 20th Anniversary
					i(143327),	-- Livestock Lochaber Axe
					i(143543),	-- Twelve String Guitar (TOY!)
				},
			}),
		},
	})),
	applyevent(A_GREEDY_EMISSARY, n(GREEDY_EMISSARY_EVENT, bubbleDownSelf({ ["timeline"] = { ADDED_10_1_0, REMOVED_10_1_0, ADDED_11_1_7 } }, {
		-- Event begins on May 25, 2023, and ends on June 13, 2023.
		n(ACHIEVEMENTS, bubbleDownSelf({ ["timeline"] = { ADDED_10_1_0, REMOVED_10_1_0, } }, {
			ach(18258, {	--	Little Lord of Lies
				["provider"] = { "i", 206018 },	-- Baa'lial Soulstone
			}),
		})),
		n(205722, bubbleDownSelf({ ["timeline"] = { ADDED_10_1_0, REMOVED_10_1_0, } }, {	-- Demon Portal
			["coords"] = {
				{ 68.3, 40.8, ORGRIMMAR },
				{ 50.6, 85.6, STORMWIND_CITY },
				{ 54.7, 54.4, STORMWIND_CITY },
				-- Plains here
				{ 55.2, 79.4, THALDRASZUS },
				{ 58.8, 78.2, THALDRASZUS },
				{ 64.3, 30.4, THE_AZURE_SPAN },
				-- Waking Shores here
				{ 26.7, 56.8, VALDRAKKEN },
				{ 54.3, 78.6, VALDRAKKEN },
				{ 57.5, 20.1, VALDRAKKEN },
			};
			["maps"] = { 
				{ ORGRIMMAR },
				{ STORMWIND_CITY },
				{ THALDRASZUS },
				{ THE_AZURE_SPAN },
				{ VALDRAKKEN },
			},
			["description"] = "Every 30 Minutes a Portal spawns in either a Dragonflight Zone & or in a Capital, causing a Treasure Goblin to appear after 5 minutes.",
			["groups"] = {
				n(205490, {	-- Treasure Goblin
					["questID"] = 76215,
					["isDaily"] = true,
					["groups"] = {
						i(206018),	-- Baa'lial (PET!)
						i(206039, {	-- Enmity Bundle
							i(206004),	-- Enmity Cloak
							i(206020),	-- Enmity Hood
						}),
						i(206003),	-- Horadric Haversack (BAG)
						i(142548),	-- Large Charm of Dexterity
						i(206274),	-- Large Charm of Intelligence
						i(142547),	-- Large Charm of Strength
						i(143327),	-- Lovestock Lochaber Axe
						i(206008),	-- Nightmare Banner (TOY!)
						i(142549),	-- Serpent's Grand Charm
						i(142546),	-- Small Charm of Inertia
						i(142545),	-- Small Charm of Life
						i(142551),	-- Stalwart's Grand Charm
						i(206007),	-- Treasure Nabbin Bag
						i(142542),	-- Tome of Town Portal (TOY!)
						i(143543),	-- Twelve String Guitar (TOY!)
						i(76755),	-- Tyrael's Charger (MOUNT!)
						i(206275),	-- Wirt's Fightin' Leg (BOE)
						i(206276),	-- Wirt's Haunted Leg (BOE)
						i(206005),	-- Wirt's Last Leg (BOE)
					},
				}),
			},
		})),
		n(246220, bubbleDownSelf({ ["timeline"] = { ADDED_11_1_7, REMOVED_11_2_0, } }, {	-- Demon Portal
			-- Double CheckID
			-- July 1st to August 1st 2025
			["coords"] = {
			--	{ 68.3, 40.8, ORGRIMMAR },
			--	{ 50.6, 85.6, STORMWIND_CITY },
			--	{ 54.7, 54.4, STORMWIND_CITY },
			--	{ 54.7, 54.4, DORNOGAL },
			},
			["maps"] = { 
				{ DORNOGAL },
				{ ORGRIMMAR },
				{ STORMWIND_CITY },
				{ UNDERMINE },
			},
			["description"] = "Every 60 Minutes a Portal spawns in either Dornogal, Stormwind or Orgrimmar, causing a Treasure Goblin to appear after 5 minutes.\n\nCan also spawn in Undermine after defeating a rare (one portal per rare, per hour)",
			["groups"] = {
				n(205490, {	-- Treasure Goblin
				--	["questID"] = 76215,
				--	["isDaily"] = true,
					["groups"] = {
						i(245589, {	--	Hellcaller Chest
							currency(3309),	-- Hellstone Shard
							mount(1241429),	-- Inarius' Charger
							-- Buff Gobo Items
							i(245639), -- Arcane Elixir
							i(245642), -- Blistering Elixir
							i(245652), -- Chromic Elixir
							i(245654), -- Connected Elixir
							i(245634), -- Cursing Elixir
							i(245636), -- Deafening Elixir
							i(245638), -- Explosive Elixir
							i(245630), -- Ghostly Elixir
							i(245590), -- Magma Elixir
							i(245641), -- Molten Elixir
							i(245632), -- Rallying Elixir
							i(245635), -- Rich Elixir
							i(245633), -- Sneaky Elixir
							i(245643), -- Storming Elixir
							i(245640), -- Tempestuous Elixir
							i(245614), -- Trapper Elixir
							i(245637), -- Windforce Elixir
							-- Temp Buff Items
							i(245899), -- Bat's Grand Charm
							i(245749), -- Large Charm of Intelligence
							i(245889), -- Large Charm of Dexterity
							i(245890), -- Large Charm of Strength
							i(245924), -- Mongoose's Grand Charm
							i(245888), -- Serpent's Grand Charm
							i(245891), -- Small Charm of Inertia
							i(245892), -- Small Charm of Life
							i(245893), -- Small Charm of Alacrity
							i(245894), -- Small Charm of Proficiency
							i(245895), -- Small Charm of Savagery
							i(245896), -- Small Charm of Adaptability
							i(245887), -- Stalwart's Grand Charm							
							-- Trash Grey Items
							i(245606), -- Blank Scroll
							i(245592), -- Chipped Skull
							i(245608), -- Chipped Sapphire
							i(245596), -- Damaged Eburine Jewel
							i(245607), -- Dull Javelin
							i(245597), -- Empty Antidote Bottle
							i(245591), -- Flawed Amethyst
							i(245609), -- Flawed Skull
							i(245593), -- Runed Cube
							i(245599), -- Rusted Adventurer's Leg
							i(245595), -- Splintered Charm
							i(245598), -- Unknown Spellbook
							i(245594), -- Worn Rune
						}),
					},
						--[[	Unconfirmed Returning Items
							i(206018),	-- Baa'lial (PET!)
							i(206039, {	-- Enmity Bundle
								i(206004),	-- Enmity Cloak
								i(206020),	-- Enmity Hood
							}),
							i(206003),	-- Horadric Haversack (BAG)
							i(142548),	-- Large Charm of Dexterity
							i(206274),	-- Large Charm of Intelligence
							i(142547),	-- Large Charm of Strength
							i(143327),	-- Lovestock Lochaber Axe
							i(206008),	-- Nightmare Banner (TOY!)
							i(142549),	-- Serpent's Grand Charm
							i(142546),	-- Small Charm of Inertia
							i(142545),	-- Small Charm of Life
							i(142551),	-- Stalwart's Grand Charm
							i(206007),	-- Treasure Nabbin Bag
							i(142542),	-- Tome of Town Portal (TOY!)
							i(143543),	-- Twelve String Guitar (TOY!)
							i(76755),	-- Tyrael's Charger (MOUNT!)
							i(206275),	-- Wirt's Fightin' Leg (BOE)
							i(206276),	-- Wirt's Haunted Leg (BOE)
							i(206005),	-- Wirt's Last Leg (BOE)
						--]]
				}),
			},
		})),
		n(VENDOR, {
		--	n(205722, bubbleDownSelf({ ["timeline"] = { ADDED_11_1_7, REMOVED_11_2_0, } }, {	-- Name Here
			--	["coords"] = {
				--	{ 54.7, 54.4, DORNOGAL },
			--	},
				["maps"] = { { DORNOGAL },},
				["g"] = sharedData({
					["cost"] = {
						{"c", 3309, 10},	-- 10x Hellstone Shard
					},
				}, {
					iensemble(244794), -- Ensemble: Armor of Torment
					iensemble(244800), -- Ensemble: Blood Vindicator's Armor
					iensemble(244799), -- Ensemble: Death-Touched Battlegear
					iensemble(244798), -- Ensemble: Emberwind Regalia
					iensemble(244805), -- Ensemble: Executioner's Bladed Battlegear
					iensemble(244803), -- Ensemble: Flamelash Armor
					iensemble(244793), -- Ensemble: Grimforged Armor
					iensemble(244804), -- Ensemble: Hellfire Raiment
					iensemble(244796), -- Ensemble: Life-Binder's Armor
					iensemble(244802), -- Ensemble: Shadowslayer Armor
					iensemble(244795), -- Ensemble: Staghelm Armor
					iensemble(244797), -- Ensemble: Timestalker's Armor
					iensemble(244801), -- Ensemble: Vestments of Searing Radiance
				}),
		--	}),
		}),
	}))),
	i(206007, {	-- Treasure Nabbin' Bag
		["description"] = "Can be earned by logging into Diablo Immortal on a level 10+ character during the 'Eternal War' crossover event between November 13, 3:00 a.m. & December 11, 2:59 a.m. local server time.",
		["timeline"] = { "added 11.0.5.57388", "removed 11.0.5.57689" },
	}),
	n(DIABLO_IV, {
		["description"] = "Granted to players who owned WoW: The War Within and Diablo IV: Vessel of Hatred before January 7th, 2025.",
		["timeline"] = { ADDED_11_0_7, "removed 11.0.7.58608" },
		["g"] = {
			i(191114),	-- Amalgam of Rage (MOUNT!)
			i(206018),	-- Baa'lial (PET!)
			i(206039, {	-- Enmity Bundle
				i(206004),	-- Enmity Cloak
				i(206020),	-- Enmity Hood
			}),
			i(143327),	-- Lovestock Lochaber Axe
			i(206008),	-- Nightmare Banner (TOY!)
			i(142542),	-- Tome of Town Portal (TOY!)
			i(143543),	-- Twelve String Guitar (TOY!)
			i(206275),	-- Wirt's Fightin' Leg
			i(206276),	-- Wirt's Haunted Leg
			i(206005),	-- Wirt's Last Leg
		},
	}),
}));


root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.DF, bubbleDownSelf({ ["timeline"] = { ADDED_10_1_0} }, {
	n(DIABLO_EVENTS, {
		q(76216),	-- 'Bonus loot' if Tyrael's Charger unlearned / first goblin kill per day for account
	}),
})));
-- #endif