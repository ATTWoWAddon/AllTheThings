---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(SHADOWLANDS, bubbleDown({ ["timeline"] = { ADDED_9_0_2_LAUNCH } }, {
	m(ORIBOS, {
		n(WEEKLY_HOLIDAYS, {
			n(REWARDS, {
				i(184869, {	-- Cache of Nathrian Treasures (N)
					["timeline"] = { ADDED_9_0_2, REMOVED_9_1_0 },
					--[[
					["sym"] = {
						{"select", "instanceID", 1190},			-- Castle Nathria
						{"pop"},								-- Discard the Instance Headers and acquire all of their children.
						{"where", "difficultyID", 14},			-- Select only the Normal Difficulty Headers.
						{"pop"},								-- Discard the Difficulty Headers and acquire all of their children.
						{"is","encounterID"},					-- Only Encounter Headers
						{"not", "encounterID", 2425},			-- No Stone Legion Generals
						{"not", "encounterID", 2424},			-- No Sire
						{"pop"},								-- Discard the Encounter Headers and acquire all of their children.
						{"is", "itemID"},						-- Only Items!
						{"invtype", "INVTYPE_HEAD", "INVTYPE_NECK", "INVTYPE_SHOULDER", "INVTYPE_CLOAK", "INVTYPE_CHEST", "INVTYPE_ROBE", "INVTYPE_WRIST", "INVTYPE_HAND", "INVTYPE_WAIST", "INVTYPE_LEGS", "INVTYPE_FEET", "INVTYPE_FINGER", "INVTYPE_TRINKET", "INVTYPE_WEAPON", "INVTYPE_SHIELD", "INVTYPE_RANGED", "INVTYPE_2HWEAPON", "INVTYPE_WEAPONMAINHAND", "INVTYPE_WEAPONOFFHAND", "INVTYPE_HOLDABLE", },
					},
					--]]
				}),
				i(184868, {	-- Cache of Nathrian Treasures (HC)
					["timeline"] = { ADDED_9_0_2, REMOVED_9_1_0 },
					--[[
					["sym"] = {
						{"select", "instanceID", 1190},			-- Castle Nathria
						{"pop"},								-- Discard the Instance Headers and acquire all of their children.
						{"where", "difficultyID", 15},			-- Select only the Heroic Difficulty Headers.
						{"pop"},								-- Discard the Difficulty Headers and acquire all of their children.
						{"is", "encounterID"},					-- Only Encounter Headers
						{"not", "encounterID", 2425},			-- No Stone Legion Generals
						{"not", "encounterID", 2424},			-- No Sire
						{"pop"},								-- Discard the Encounter Headers and acquire all of their children.
						{"is", "itemID"},						-- Only Items!
						{"invtype", "INVTYPE_HEAD", "INVTYPE_NECK", "INVTYPE_SHOULDER", "INVTYPE_CLOAK", "INVTYPE_CHEST", "INVTYPE_ROBE", "INVTYPE_WRIST", "INVTYPE_HAND", "INVTYPE_WAIST", "INVTYPE_LEGS", "INVTYPE_FEET", "INVTYPE_FINGER", "INVTYPE_TRINKET", "INVTYPE_WEAPON", "INVTYPE_SHIELD", "INVTYPE_RANGED", "INVTYPE_2HWEAPON", "INVTYPE_WEAPONMAINHAND", "INVTYPE_WEAPONOFFHAND", "INVTYPE_HOLDABLE", },
					},
					--]]
				}),
				i(186531, {	-- Cache of Sanctum Treasures (N)
					["timeline"] = { ADDED_9_1_0, REMOVED_9_2_0 },
					--[[
					["sym"] = {
						{"select", "instanceID", 1193},			-- Sanctum of Domination
						{"pop"},								-- Discard the Instance Headers and acquire all of their children.
						{"where", "difficultyID", 14},			-- Select only the Normal Difficulty Headers.
						{"pop"},								-- Discard the Difficulty Headers and acquire all of their children.
						{"is", "encounterID" },					-- Only Encounter Headers
						{"not", "encounterID", 2440},			-- No Kel'Thuzad
						{"not", "encounterID", 2441},			-- No Sylvanas
						{"pop"},								-- Discard the Encounter Headers and acquire all of their children.
						{"is", "itemID"},						-- Only Items!
						{"invtype", "INVTYPE_HEAD", "INVTYPE_NECK", "INVTYPE_SHOULDER", "INVTYPE_CLOAK", "INVTYPE_CHEST", "INVTYPE_ROBE", "INVTYPE_WRIST", "INVTYPE_HAND", "INVTYPE_WAIST", "INVTYPE_LEGS", "INVTYPE_FEET", "INVTYPE_FINGER", "INVTYPE_TRINKET", "INVTYPE_WEAPON", "INVTYPE_SHIELD", "INVTYPE_RANGED", "INVTYPE_2HWEAPON", "INVTYPE_WEAPONMAINHAND", "INVTYPE_WEAPONOFFHAND", "INVTYPE_HOLDABLE", },
					},
					--]]
				}),
				i(186533, {	-- Cache of Sanctum Treasures (HC)
					["timeline"] = { ADDED_9_1_0, REMOVED_9_2_0 },
					--[[
					["sym"] = {
						{"select", "instanceID", 1193},			-- Sanctum of Domination
						{"pop"},								-- Discard the Instance Headers and acquire all of their children.
						{"where", "difficultyID", 15},			-- Select only the Heroic Difficulty Headers.
						{"pop"},								-- Discard the Difficulty Headers and acquire all of their children.
						{"is","encounterID"},					-- Only Encounter Headers
						{"not", "encounterID", 2440},			-- No Kel'Thuzad
						{"not", "encounterID", 2441},			-- No Sylvanas
						{"pop"},								-- Discard the Encounter Headers and acquire all of their children.
						{"is", "itemID"},						-- Only Items!
						{"invtype", "INVTYPE_HEAD", "INVTYPE_NECK", "INVTYPE_SHOULDER", "INVTYPE_CLOAK", "INVTYPE_CHEST", "INVTYPE_ROBE", "INVTYPE_WRIST", "INVTYPE_HAND", "INVTYPE_WAIST", "INVTYPE_LEGS", "INVTYPE_FEET", "INVTYPE_FINGER", "INVTYPE_TRINKET", "INVTYPE_WEAPON", "INVTYPE_SHIELD", "INVTYPE_RANGED", "INVTYPE_2HWEAPON", "INVTYPE_WEAPONMAINHAND", "INVTYPE_WEAPONOFFHAND", "INVTYPE_HOLDABLE", },
					},
					--]]
				}),
				i(190655, {	-- Cache of Sepulcher Treasures (N) or 190654
					["timeline"] = { ADDED_9_2_0, REMOVED_9_2_5 },
					--[[
					["sym"] = {
						{"select", "instanceID", 1195},			-- Sepulcher of the First Ones
						{"pop"},								-- Discard the Instance Headers and acquire all of their children.
						{"where", "difficultyID", 14},			-- Select only the Normal Difficulty Headers.
						{"pop"},								-- Discard the Difficulty Headers and acquire all of their children.
						{"is", "encounterID" },					-- Only Encounter Headers
						{"pop"},								-- Discard the Encounter Headers and acquire all of their children.
						{"is", "itemID"},						-- Only Items!
						{"invtype", "INVTYPE_HEAD", "INVTYPE_NECK", "INVTYPE_SHOULDER", "INVTYPE_CLOAK", "INVTYPE_CHEST", "INVTYPE_ROBE", "INVTYPE_WRIST", "INVTYPE_HAND", "INVTYPE_WAIST", "INVTYPE_LEGS", "INVTYPE_FEET", "INVTYPE_FINGER", "INVTYPE_TRINKET", "INVTYPE_WEAPON", "INVTYPE_SHIELD", "INVTYPE_RANGED", "INVTYPE_2HWEAPON", "INVTYPE_WEAPONMAINHAND", "INVTYPE_WEAPONOFFHAND", "INVTYPE_HOLDABLE", },
					},
					--]]
				}),
				i(191040, {	-- Cache of Sepulcher Treasures (5x BC TW -> N) [Q:62632]
					["timeline"] = { ADDED_9_2_0, REMOVED_9_2_5 },
					--[[
					["sym"] = {
						{"select", "instanceID", 1195},			-- Sepulcher of the First Ones
						{"pop"},								-- Discard the Instance Headers and acquire all of their children.
						{"where", "difficultyID", 14},			-- Select only the Normal Difficulty Headers.
						{"pop"},								-- Discard the Difficulty Headers and acquire all of their children.
						{"is", "encounterID" },					-- Only Encounter Headers
						{"pop"},								-- Discard the Encounter Headers and acquire all of their children.
						{"is", "itemID"},						-- Only Items!
						{"invtype", "INVTYPE_HEAD", "INVTYPE_NECK", "INVTYPE_SHOULDER", "INVTYPE_CLOAK", "INVTYPE_CHEST", "INVTYPE_ROBE", "INVTYPE_WRIST", "INVTYPE_HAND", "INVTYPE_WAIST", "INVTYPE_LEGS", "INVTYPE_FEET", "INVTYPE_FINGER", "INVTYPE_TRINKET", "INVTYPE_WEAPON", "INVTYPE_SHIELD", "INVTYPE_RANGED", "INVTYPE_2HWEAPON", "INVTYPE_WEAPONMAINHAND", "INVTYPE_WEAPONOFFHAND", "INVTYPE_HOLDABLE", },
					},
					--]]
				}),
				i(191041, {	-- Cache of Sepulcher Treasures (4x Mythic -> H)
					["timeline"] = { ADDED_9_2_0, REMOVED_9_2_5 },
					--[[
					["sym"] = {
						{"select", "instanceID", 1195},			-- Sepulcher of the First Ones
						{"pop"},								-- Discard the Instance Headers and acquire all of their children.
						{"where", "difficultyID", 15},			-- Select only the Heroic Difficulty Headers.
						{"pop"},								-- Discard the Difficulty Headers and acquire all of their children.
						{"is", "encounterID" },					-- Only Encounter Headers
						{"pop"},								-- Discard the Encounter Headers and acquire all of their children.
						{"is", "itemID"},						-- Only Items!
						{"invtype", "INVTYPE_HEAD", "INVTYPE_NECK", "INVTYPE_SHOULDER", "INVTYPE_CLOAK", "INVTYPE_CHEST", "INVTYPE_ROBE", "INVTYPE_WRIST", "INVTYPE_HAND", "INVTYPE_WAIST", "INVTYPE_LEGS", "INVTYPE_FEET", "INVTYPE_FINGER", "INVTYPE_TRINKET", "INVTYPE_WEAPON", "INVTYPE_SHIELD", "INVTYPE_RANGED", "INVTYPE_2HWEAPON", "INVTYPE_WEAPONMAINHAND", "INVTYPE_WEAPONOFFHAND", "INVTYPE_HOLDABLE", },
					},
					--]]
				}),
				i(190656, {	-- Cache of Sepulcher Treasures (H)
					["timeline"] = { ADDED_9_2_0, REMOVED_9_2_5 },
					--[[
					["sym"] = {
						{"select", "instanceID", 1195},			-- Sepulcher of the First Ones
						{"pop"},								-- Discard the Instance Headers and acquire all of their children.
						{"where", "difficultyID", 15},			-- Select only the Heroic Difficulty Headers.
						{"pop"},								-- Discard the Difficulty Headers and acquire all of their children.
						{"is", "encounterID" },					-- Only Encounter Headers
						{"pop"},								-- Discard the Encounter Headers and acquire all of their children.
						{"is", "itemID"},						-- Only Items!
						{"invtype", "INVTYPE_HEAD", "INVTYPE_NECK", "INVTYPE_SHOULDER", "INVTYPE_CLOAK", "INVTYPE_CHEST", "INVTYPE_ROBE", "INVTYPE_WRIST", "INVTYPE_HAND", "INVTYPE_WAIST", "INVTYPE_LEGS", "INVTYPE_FEET", "INVTYPE_FINGER", "INVTYPE_TRINKET", "INVTYPE_WEAPON", "INVTYPE_SHIELD", "INVTYPE_RANGED", "INVTYPE_2HWEAPON", "INVTYPE_WEAPONMAINHAND", "INVTYPE_WEAPONOFFHAND", "INVTYPE_HOLDABLE", },
					},
					--]]
				}),
				i(192437, {	-- Cache of Fated Treasures (Normal)
					["timeline"] = { ADDED_9_2_5, REMOVED_10_0_2_LAUNCH },
					["bonusID"] = 8157,
					["modID"] = 11,
					--[[
					["sym"] = {
						{"select", "instanceID"
							,1190			-- Castle Nathria
							,1193			-- Sanctum of Domination
							,1195			-- Sepulcher of the First Ones
						},
						{"pop"},								-- Discard the Instance Headers and acquire all of their children.
						{"where", "difficultyID", 15},			-- Select only the Heroic Difficulty Headers.
						{"extract", "itemID"},						-- All nested Items
						{"invtype", "INVTYPE_HEAD", "INVTYPE_NECK", "INVTYPE_SHOULDER", "INVTYPE_CLOAK", "INVTYPE_CHEST", "INVTYPE_ROBE", "INVTYPE_WRIST", "INVTYPE_HAND", "INVTYPE_WAIST", "INVTYPE_LEGS", "INVTYPE_FEET", "INVTYPE_FINGER", "INVTYPE_TRINKET", "INVTYPE_WEAPON", "INVTYPE_SHIELD", "INVTYPE_RANGED", "INVTYPE_2HWEAPON", "INVTYPE_WEAPONMAINHAND", "INVTYPE_WEAPONOFFHAND", "INVTYPE_HOLDABLE", },
						{"select", "itemID"						-- Include Anima Spherules
							-- only need 1 of each, will expand in tooltip to see possible rewards
							,183899	-- Zenith Anima Spherule
							,183897	-- Mystic Anima Spherule
							,183896	-- Abominable Anima Spherule
							,183895	-- Apogee Anima Bead
							,183889	-- Thaumaturgic Anima Bead
							,183891	-- Venerated Anima Spherule
						},
						{"modID",89},	-- Fated ModID
					},
					--]]
				}),
				i(192438, {	-- Cache of Fated Treasures (Heroic)
					["timeline"] = { ADDED_9_2_5, REMOVED_10_0_2_LAUNCH },
					["bonusID"] = 8157,
					["modID"] = 11,
					--[[
					["sym"] = {
						{"select", "instanceID"
							,1190			-- Castle Nathria
							,1193			-- Sanctum of Domination
							,1195			-- Sepulcher of the First Ones
						},
						{"pop"},								-- Discard the Instance Headers and acquire all of their children.
						{"where", "difficultyID", 15},			-- Select only the Heroic Difficulty Headers.
						{"extract", "itemID"},						-- All nested Items
						{"invtype", "INVTYPE_HEAD", "INVTYPE_NECK", "INVTYPE_SHOULDER", "INVTYPE_CLOAK", "INVTYPE_CHEST", "INVTYPE_ROBE", "INVTYPE_WRIST", "INVTYPE_HAND", "INVTYPE_WAIST", "INVTYPE_LEGS", "INVTYPE_FEET", "INVTYPE_FINGER", "INVTYPE_TRINKET", "INVTYPE_WEAPON", "INVTYPE_SHIELD", "INVTYPE_RANGED", "INVTYPE_2HWEAPON", "INVTYPE_WEAPONMAINHAND", "INVTYPE_WEAPONOFFHAND", "INVTYPE_HOLDABLE", },
						{"select", "itemID"						-- Include Anima Spherules
							-- only need 1 of each, will expand in tooltip to see possible rewards
							,183899	-- Zenith Anima Spherule
							,183897	-- Mystic Anima Spherule
							,183896	-- Abominable Anima Spherule
							,183895	-- Apogee Anima Bead
							,183889	-- Thaumaturgic Anima Bead
							,183891	-- Venerated Anima Spherule
						},
						{"modID",91},	-- Fated Heroic ModID
					},
					--]]
				}),
			}),
			n(QUESTS, sharedData({
				["provider"] = { "n", 166307 },	-- Caretaker Kah-Toll
				["isWeekly"] = true,
				["coord"] = { 64.9, 32.7, ORIBOS },
				["_drop"] = { "g" },	-- Drop Trash
				["timeline"] = { REMOVED_10_0_2_LAUNCH },
			}, {
				q(62632),					-- A Burning Path Through Time
				pvp(q(62637)),				-- A Call to Battle
				q(64709, {					-- A Fel Path Through Time
					["timeline"] = { ADDED_9_1_5, REMOVED_10_0_2_LAUNCH },
				}),
				q(62633),					-- A Frozen Path Through Time
				q(62636),					-- A Savage Path Through Time
				q(62634),					-- A Shattered Path Through Time
				q(62635),					-- A Shrouded Path Through Time
				q(62638),					-- Emissary of War
				q(64970, {					-- Timeworn Keystone: The Broken Isle
					["provider"] = { "n", 178804 },	-- Ta'hsup
					["coord"] = { 65.2, 35.1, ORIBOS },
					["timeline"] = { ADDED_9_1_5, REMOVED_10_0_2_LAUNCH },
				}),
				pvp(q(62640)),				-- The Arena Calls
				pvp(petbattle(q(62639))),	-- The Very Best
				q(62631),					-- The World Awaits
			})),
			-- Auto-accepted in various situations, so no coords/provider
			-- #if AFTER SL
			-- #IF BEFORE DF
			n(QUESTS, sharedData({
				["isWeekly"] = true,
				["_drop"] = { "g" },	-- Drop Trash
			}, {
				pvp(q(47148)),			-- Something Different
			})),
			-- #ENDIF
			-- #ENDIF
		}),
	}),
})));
