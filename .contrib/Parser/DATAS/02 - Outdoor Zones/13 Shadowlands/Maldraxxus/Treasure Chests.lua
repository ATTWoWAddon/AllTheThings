---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(SHADOWLANDS, bubbleDown({ ["timeline"] = { ADDED_9_0_2_LAUNCH } }, {
	m(MALDRAXXUS, {
		n(TREASURES, {
			o(353627, {		-- Battlefront Rations
				["description"] = "To unlock it, you must obtain |cFF0070ddBattlefront Ration Key|r from Thalrix the Slicer or one of the Supply Officer mobs in the area nearby.",
				["crs"] = {
					157037,	-- Grabber Ga'shock <Supply Officer>
					157036,	-- Pilfer Bur'tok <Supply Officer>
					157028,	-- Thalrix the Slicer
				},
				["coord"] = { 37.8, 45.6, MALDRAXXUS },
				["questID"] = 60772,
				["isDaily"] = true,
				["cost"] = { { "i", 180277, 1 } },	-- 1x Battlefront Ration Key
			}),
			o(352086, {		-- Blackhound Cache
				["description"] = "Requires |cFF40bf40Necrolord Covenant|r using Visectus to open. Interactible Toys, Soulshape, etc. no longer work, as you get teleported out.\n\nIf the door is already open, a character from any covenant may walk in and loot the treasure.",
				["questID"] = 60368,
				["isDaily"] = true,
				["coord"] = { 44.0, 39.8, MALDRAXXUS },
				["g"] = {
					i(184318),	-- Battlecry of Krexus (TOY!)
					i(183827),	-- Blacksteel Backplate
					i(183824, {	-- Cache of Spare Weapons
						["customCollect"] = "SL_COV_NEC",	-- Necrolord
					}),
					i(183619),	-- Everlasting Boneforged Greataxe
					i(181800, {	-- Standard of the Blackhound Warband
						["customCollect"] = "SL_COV_NEC",	-- Necrolord
					}),
				},
			}),
			n(171337, {		-- Bloated Lootfly
				["description"] = "This is a critter that flies around.  Find it, kill it, and loot it to collect the treasure.",
				["coords"] = {
					{ 49.0, 24.6, MALDRAXXUS },
					{ 49.8, 21.8, MALDRAXXUS },
					{ 50.2, 19.0, MALDRAXXUS },
					{ 50.8, 22.0, MALDRAXXUS },
					{ 51.6, 35.2, MALDRAXXUS },
					{ 51.8, 18.4, MALDRAXXUS },
					{ 52.6, 20.0, MALDRAXXUS },
					{ 54.2, 37.2, MALDRAXXUS },
					{ 54.8, 33.4, MALDRAXXUS },
					{ 54.8, 40.2, MALDRAXXUS },
				},
				["questID"] = 61111,
				["isDaily"] = true,
			}),
			o(353231, {		-- Bonebound Chest
				["coords"] = {
					{ 30.4, 77.7, MALDRAXXUS },
					{ 33.3, 81.6, MALDRAXXUS },
					{ 33.8, 76.4, MALDRAXXUS },
					{ 36.2, 81.6, MALDRAXXUS },
				},
				["questID"] = 60662,	-- same quest triggers for both versions of chest
				["isDaily"] = true,
			}),
			o(352433, {		-- Cache of Eyes
				["description"] = "Coordinates are to the entrance of Sightless Hold.  The cache spawns in numerous locations within the cave.  The pet is not a 100% drop and the chest is not always up, but there is no cooldown or lockout for opening the chest.",
				["coord"] = { 54.0, 12.3, MALDRAXXUS },
				["g"] = {
					i(181171),	-- Luminous Webspinner (PET!)
				},
			}),
			o(345456, {		-- Chest of Eyes
				["description"] = "The path to the treasure starts at |cFFFFFFFF51.6, 13.7|r.  Climb up the side of the crumbled building until you get close to the treasure, then turn right and walk up the cliff to it.",
				["questID"] = 59244,
				["coord"] = { 48.3, 16.3, MALDRAXXUS },
				["g"] = {
					i(183696),	-- Sp-eye-glass
				},
			}),
			o(345455, {		-- Construct Supply Chest
				["description"] = "To unlock it, you must obtain |cFF0070ddConstruct Supply Key|r from Thalrix the Slicer or one of the Supply Officer mobs in the area nearby.",
				["crs"] = {
					157037,	-- Grabber Ga'shock <Supply Officer>
					157036,	-- Pilfer Bur'tok <Supply Officer>
					157028,	-- Thalrix the Slicer
				},
				["coord"] = { 38.8, 41.9, MALDRAXXUS },
				["questID"] = 59243,
				["isDaily"] = true,
				["cost"] = { { "i", 175757, 1 } },	-- Construct Supply Key
			}),
			o(358855, {		-- Damaged Safe Fall Pack
				["coord"] = { 60.0, 44.6, MALDRAXXUS },
				["g"] = {
					i(183831),	-- Safe Fall Kit
				},
			}),
			o(364483, {		-- Empty Nightcap Cask
				["description"] = "Requires |cFF40bf40Necrolord Covenant|r with Abomination Factory Rank 3. Coordinates are to the entrance of Molten Forge. The cask is found at 50.3, 17.4 once you enter the Molten Forge.",
				["coords"] = {
					{ 37.9, 76.3, MALDRAXXUS },
					{ 50.3, 17.4, 1651 },	-- Molten Forge
				},
				["g"] = {
					i(183752),	-- Empty Nightcap Cask
				},
			}),
			o(341424, {		-- Forgotten Mementos
				["description"] = "Unlock the gate to the treasure by clicking the chain at |cFFFFFFFF25.8, 53.9|r.\n\nThe treasure will respawn about 5 minutes after being looted by another player.",
				["provider"] = { "o", 341416 },	-- Vault Portcullis Chain
				["coords"] = {
					{ 22.5, 30.5, MALDRAXXUS },
					{ 25.8, 53.8, MALDRAXXUS },	-- Chain
				},
				["questID"] = 58710,
			}),
			o(358531, {		-- Giant Cache of Epic Treasure
				["coord"] = { 41.4, 19.7, MALDRAXXUS },
				["questID"] = 62602,
				["g"] = {
					p(3047),	-- Spinebug
				},
			}),
			o(355947, {		-- Glutharn's Stash
				["description"] = "In a cave behind the slime waterfall.",
				["coord"] = { 72.1, 52.7, MALDRAXXUS },
				["questID"] = 61484,
			}),
			o(353380, {		-- Halis's Lunch Pail
				["coord"] = { 30.7, 28.7, MALDRAXXUS },
				["questID"] = 60730,
			}),
			n(169664, {		-- Kyrian Corpse
				["coord"] = { 32.7, 21.2, MALDRAXXUS },
				["g"] = {
					i(180085, {	-- Kyrian Keepsake
						["questID"] = 60587,	-- quest pops for opening the keepsake, not looting it
						["g"] = {
							i(175708),	-- Reconstructed Family Locket
						},
					}),
				},
			}),
			o(353626, {		-- Locked Toolbox
				["description"] = "To unlock it, you must obtain |cFF0070ddLocked Toolbox Key|r from Thalrix the Slicer or one of the Supply Officer mobs in the area nearby.",
				["crs"] = {
					157037,	-- Grabber Ga'shock <Supply Officer>
					157036,	-- Pilfer Bur'tok <Supply Officer>
					157028,	-- Thalrix the Slicer
				},
				["coord"] = { 38.1, 42.6, MALDRAXXUS },
				["questID"] = 60771,
				["isDaily"] = true,
				["cost"] = { { "i", 180276, 1 } },	-- Locked Toolbox Key
			}),
			o(351980, {		-- Misplaced Supplies
				["description"] = "On top of the mushroom.",
				["questID"] = 60311,
				["coord"] = { 62.4, 59.9, MALDRAXXUS },
			}),
			o(335655, {		-- Oonar's Arm
				["description"] = "Requires 1xStrength of Blood, 1xPotion of Unusual Strength, 2xBattle Hardened(WQ:A Few Bumps Along the Way), 4xEdible Redcap",
				["coord"] = { 51.9, 48.2, MALDRAXXUS },
				["cost"] = {
					{ "i", 182163, 1 },	-- 1x Strength of Blood
					{ "i", 180771, 1 },	-- 1x Potion of Unusual Strength
				},
				["g"] = {
					ach(14626),	-- Harvester of Sorrow
					i(181164),	-- Oonar's Arm (PET!)
					i(180273),	-- Sorrowbane
				},
			}),
			o(347444, {		-- Ornate Bone Shield
				["coord"] = { 47.2, 62.1, MALDRAXXUS },
				["questID"] = 59358,
				["g"] = {
					i(180749),	-- Hauk's Battle-Scarred Bulwark
				},
			}),
			o(355886, {		-- Plaguefallen Chest
				["description"] = "To access this chest, you need the |cFFFFFFFFPlaguefallen|r debuff.  You can either pick up a Plaguefallen Potion from |cFFFFFFFF58.4, 73.3|r in Plague Watch, or stand in green slime until you have 10 stacks of |cFFFFFFFFConcentrated Plague|r (living through the stacks requires significant self-healing, but picking up the potion far away from the cave gives you very little time to get there).\n\nWith the debuff, you have 2 minutes to make it to the cave at |cFFFFFFFF62.3, 76.6|r (behind Scunner's platform) and use the pipe at the back of the cave to teleport to the chest.\n\nYou MUST still have the debuff to loot the chest, so don't alt-tab after you get teleported!",
				["coord"] = { 62.4, 76.5, MALDRAXXUS },
				["questID"] = 61474,
				["g"] = {
					i(183515),	-- Iridescent Ooze (PET!)
				},
			}),
			o(345458, {		-- Prize Bag
				["description"] = "Spawns periodically around the arena.",
				["coord"] = { 50.3, 47.1, MALDRAXXUS },
				["g"] = {
					i(180854),	-- Competitor's Medallion
					i(180855),	-- Competitor's Signet
				},
			}),
			o(355980, {		-- Ritualist's Cache
				["description"] = "Loot the |cFFFFFFFFRitual Pages|r from the front-right corner of the room.  Take them to the back-right corner and use the |cFFFFFFFFBook of Binding Rituals|r, and then you can loot the chest.",
				["coord"] = { 62.4, 76.5, MALDRAXXUS },
				["questID"] = 61514,
				["g"] = {
					i(183517),	-- Page 76 of the Necronom-i-nom (CI!)
				},
			}),
			o(355037, {		-- Runebound Coffer
				["description"] = "To unlock it, you must find 3 nearby |cFFFFFFFFRunes of Constructs|r and click them to deactivate the corresponding runes on the chest.",
				["coords"] = {
					{ 32.2, 37.1, MALDRAXXUS },
					{ 34.9, 30.9, MALDRAXXUS },
				},
				["questID"] = 61115,
				["isDaily"] = true,
				["g"] = {
					o_repeated({
						["coords"] = {
							{ 24.4, 34.8, MALDRAXXUS },
							{ 26.0, 48.0, MALDRAXXUS },
							{ 26.6, 38.3, MALDRAXXUS },
							{ 26.7, 31.4, MALDRAXXUS },
							{ 26.8, 46.4, MALDRAXXUS },
							{ 26.8, 46.5, MALDRAXXUS },
							{ 27.5, 50.2, MALDRAXXUS },
							{ 29.0, 28.3, MALDRAXXUS },
							{ 30.5, 31.3, MALDRAXXUS },
							{ 31.8, 22.7, MALDRAXXUS },
							{ 32.4, 29.0, MALDRAXXUS },
							{ 33.6, 22.3, MALDRAXXUS },
							{ 34.0, 30.3, MALDRAXXUS },
							{ 35.3, 23.1, MALDRAXXUS },
							{ 35.4, 27.9, MALDRAXXUS },
							{ 35.5, 30.2, MALDRAXXUS },
						},
						["g"] = {
							o(355194, {	-- Rune of Constructs
								["questID"] = 61120,
								["isDaily"] = true,
							}),
							o(355195, {	-- Rune of Constructs
								["questID"] = 61121,
								["isDaily"] = true,
							}),
							o(355196, {	-- Rune of Constructs
								["questID"] = 61122,
								["isDaily"] = true,
							}),
						},
					}),
				},
			}),
			o(355038, {		-- Runebound Coffer
				["description"] = "To unlock it, you must find 3 nearby |cFFFFFFFFRunes of Rituals|r and click them to deactivate the corresponding runes on the chest.",
				["coords"] = {
					{ 69.0, 27.6, MALDRAXXUS },
					{ 69.6, 33.5, MALDRAXXUS },
				},
				["questID"] = 61116,
				["isDaily"] = true,
				["g"] = {
					o_repeated({
						["coords"] = {
							{ 63.8, 33.2, MALDRAXXUS },
							{ 64.8, 35.8, MALDRAXXUS },
							{ 65.5, 28.6, MALDRAXXUS },
							{ 65.7, 34.6, MALDRAXXUS },
							{ 66.7, 29.0, MALDRAXXUS },
							{ 68.6, 32.0, MALDRAXXUS },
							{ 69.6, 28.5, MALDRAXXUS },
							{ 70.1, 31.3, MALDRAXXUS },
							{ 71.6, 35.2, MALDRAXXUS },
						},
						["g"] = {
							o(355040, {	-- Rune of Rituals
								["questID"] = 61117,
								["isDaily"] = true,
							}),
							o(355048, {	-- Rune of Rituals
								["questID"] = 61118,
								["isDaily"] = true,
							}),
							o(355049, {	-- Rune of Rituals
								["questID"] = 61119,
								["isDaily"] = true,
							}),
						},
					}),
				},
			}),
			o(356535, {		-- Runespeaker's Trove
				["description"] = "You need |cFFFFFFFFPhaeton's Key|r from Runespeaker Phaeton at |cFFFFFFFF37.8, 70.1|r to open the chest. ",
				["crs"] = { 170563 },	-- Runespeaker Phaeton
				["coord"] = { 31.7, 70.0, MALDRAXXUS },	-- Treasure
				["questID"] = 61491,
				["cost"] = { { "i", 181777, 1 } },	-- Phaeton's Key
				["g"] = {
					i(183516),	-- Stained Bonefused Mantle
				},
			}),
			o(358315, {		-- Skeletal Hand Fragments
				["coord"] = { 47.4, 62.1, MALDRAXXUS },
				["questID"] = 62318,
				["cost"] = {
					{"i",183111,1},	-- Animated Ulna
					{"i",183112,1},	-- Animated Radius
				},
				["g"] = {
					i(183113),	-- Flexing Phalanges
				},
			}),
			o(354856, {		-- Slime-Coated Crate
				["coords"] = {
					{ 65.0, 82.1, MALDRAXXUS },
					{ 65.8, 76.0, MALDRAXXUS },
					{ 65.8, 88.3, MALDRAXXUS },
					{ 68.4, 85.9, MALDRAXXUS },
					{ 68.5, 79.6, MALDRAXXUS },
					{ 70.4, 75.3, MALDRAXXUS },
					{ 72.1, 88.8, MALDRAXXUS },
				},
				["questID"] = 61093,
				["isDaily"] = true,
				["g"] = {
					i(181262),	-- Bubbling Pustule (PET!)
					i(184447);	-- Kevin's Party Supplies (TOY!)
				},
			}),
			o_repeated({	-- Sprouting Growth
			-- Rewards
				i(181173),	-- Skittering Venomspitter (PET!)
			-- Objects
				o(354853, {	-- Sprouting Growth
					["coords"] = {
						{ 45.0, 35.5, MALDRAXXUS },
						{ 46.8, 31.7, MALDRAXXUS },
						{ 40.3, 31.7, MALDRAXXUS },
					},
					["questID"] = 61089,
					["isDaily"] = true,
				}),
				o(354852, {	-- Sprouting Growth
					["coords"] = {
						{ 73.5, 49.7, MALDRAXXUS },
						{ 75.6, 45.5, MALDRAXXUS },
						{ 76.0, 49.4, MALDRAXXUS },
						{ 68.8, 47.2, MALDRAXXUS },
					},
					["questID"] = 61090,
					["isDaily"] = true,
				}),
				o(352596, {	-- Sprouting Growth
					["coords"] = {
						{ 34.8, 55.0, MALDRAXXUS },
						{ 36.5, 49.9, MALDRAXXUS },
						{ 38.6, 47.0, MALDRAXXUS },
						{ 40.0, 43.9, MALDRAXXUS },
						{ 40.9, 47.1, MALDRAXXUS },
						{ 36.7, 42.5, MALDRAXXUS },
					},
					["questID"] = 60556,
					["isDaily"] = true,
				}),
			}),
			o(355872, {		-- Stolen Jar
				["description"] = "There are two caves - the treasure is in the lower one.",
				["coord"] = { 65.6, 50.8, MALDRAXXUS },
				["questID"] = 61451,
				["g"] = {
					i(182618),	-- Reclaimed Vessel (QS!)
				},
			}),
			o(348521, {		-- Strange Growth
				["crs"] = { 165037 },	-- Strange Growth
				["coord"] = { 55.9, 38.9, MALDRAXXUS },
				["questID"] = 59428,	-- 59429 also triggered simultaneously; adding it to HQT for now
				["g"] = {
					i(182607, {	-- Hairy Egg
						i(182606),	-- Bloodlouse Larva (PET!)
					}),
				},
			}),
			o(355880, {		-- The Necronom-i-nom
				["sourceQuests"] = {
					59917,	-- Kill Them, Of Course
					58620,	-- Slaylines
				},
				["coord"] = { 42.3, 23.3, MALDRAXXUS },
				["questID"] = 61470,
				["g"] = {
					i(182732),	-- The Necronom-i-nom (TOY!)
					i(183120),	-- Partially Digested Encyclopedia (maybe drops when Toy is known?)
				},
			}),
			o(355865, {		-- Vat of Conspicuous Slime
				["description"] = "Pick up the |cFFFFFFFFEmpty Plague Bottle|r from the table next to the vat.",
				["coord"] = { 59.8, 79.0, MALDRAXXUS },
				["questID"] = 61444,
				["g"] = {
					i(181825),	-- Phial of Ravenous Slime (TOY!)
				},
			}),
			o(350802, {		-- Web Sealed Chest
				["coord"] = { 54.9, 26.1, MALDRAXXUS },
				["questID"] = 60109,
				["isDaily"] = true,
				["g"] = {
					i(183602),	-- Sticky Webbing
				},
			}),
		}),
	}),
})));
root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.SL, bubbleDownSelf({ ["timeline"] = { ADDED_9_0_2_LAUNCH } }, {
	m(SHADOWLANDS, {
		m(MALDRAXXUS, {
			n(TREASURES, {
				--	Treasures of Maldraxxus achievement
				q(58709),	-- Forgotten Mementos - clicking the chain
				q(59245),	-- Misplaced Supplies (daily trigger)
				-- q(62582),	-- Using Cache of Spare Weapons
				--
				q(62248),	-- interacting with the Box of Torments
				q(61127),	-- Triggered after getting Oonar's Arm
				q(61128),	-- Triggered after getting Sorrowbane
			}),
		}),
	}),
})));
