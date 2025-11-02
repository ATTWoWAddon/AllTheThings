---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(ARATHI_HIGHLANDS_CATCHUP, {
	["icon"] = 236712,
	["maps"] = {
		2451,	-- Arathi Highlands (Catch Up Experience)
		-- Exo note: Add a "Lore" or "Description"? WARNING: If you try to leave the area, the whole "experience" resets back to the first quest.
		-- The only place you can escape through, is flying away behind Stromgarde Keep. The rest of the area is covered with invisible walls.
		-- 1st Playthrough completed on an Alliance (Human) Paladin. Needs to be checked on Horde for possible quest differences.
		-- Exo rant. Can be removed, don't care.
		-- Personally? This thing sucks. Story is... Dumb? Has nothing to do with ANY current Storyline/Lore. Gnolls and Ogres joined forces to attack Stromgarde? HA!
		-- "Catch Up" is recommended on characters that are WAY past iLVL of gear rewarded here.
		-- The only value of this is obtaining missing Gear Update/Conversion gear that you don't have and you are lazy to wait for Gear Update to kick in for your alts you don't play.
	},
	["timeline"] = { ADDED_11_2_7 },
	["groups"] = {
		n(QUESTS, {
			q(90882, {	-- Gnoll Way
				["qgs"] = {
					244643,	-- Lady Jaina Proudmoore [A]
					244642, -- Thrall [H]
				},
				["coords"] = {
					{ 70.0, 40.7, ARATHI_HIGHLANDS_CATCHUP },	-- Jaina
					{ 69.8, 40.8, ARATHI_HIGHLANDS_CATCHUP },	-- Thrall
				},
				["groups"] = {	-- Needs to be tested on ALL Classes, gives Gear Update/Conversion class weapons. Probably use sym?
					-- Paladin
					i(153892),	-- Sunsoul Bulwark
					i(153889),	-- Sunsoul Scepter
					i(153891),	-- Sunsoul Sword
					i(153893),	-- Sunsoul Warmaul
					-- Hunter
					i(153814),	-- Trailseeker Spear
					i(231839),	-- Trailseeker Longbow
				},
			}),
			q(90883, {	-- To Go'shek Farm
				["sourceQuest"] = 90882,	-- Gnoll Way
				["qgs"] = {
					244643,	-- Lady Jaina Proudmoore [A]
					244642, -- Thrall [H]
				},
				["coords"] = {
					{ 70.0, 40.7, ARATHI_HIGHLANDS_CATCHUP },	-- Jaina
					{ 69.8, 40.8, ARATHI_HIGHLANDS_CATCHUP },	-- Thrall
				},
				["groups"] = {	-- Bags
					i(249773),	-- Large Black Bag
					i(249771),	-- Large Blue Bag
					i(188213),	-- Large Green Bag
					i(249772),	-- Large Red Bag
				},
			}),
			q(90885, {	-- My Beautiful Pumpkins
				["sourceQuest"] = 90883,	-- To Go'shek Farm
				["qg"] = 244729, -- Farmer Bruvk
				["coord"] = { 56.4, 59.6, ARATHI_HIGHLANDS_CATCHUP },
				["groups"] = {	-- Rings
					-- Paladin
					i(153909),	-- Sunsoul Band of Stoicism
					i(153908),	-- Sunsoul Ring of Stoicism
					-- Hunter
					i(153802),	-- Trailseeker Band of Onslaught
					i(153803),	-- Trailseeker Ring of Onslaught
				},
			}),
			q(90886, {	-- Best Laid Plans of Kobolds and Ogres
				["sourceQuest"] = 90883,	-- To Go'shek Farm
				["qg"] = 244656, -- Thrall
				["coord"] = { 56.3, 59.6, ARATHI_HIGHLANDS_CATCHUP },
				["groups"] = {	-- Boots and Gloves
					-- Paladin
					i(153902),	-- Sunsoul Greaves
					i(153903),	-- Sunsoul Handguards
					-- Hunter
					i(153807),	-- Trailseeker Gauntlets
					i(153806),	-- Trailseeker Greaves
					--
					i(243573),	-- Poorly Written Plans (QI!)
				},
			}),
			q(90887, {	-- Farmer's Nemesis
				["sourceQuest"] = 90883,	-- To Go'shek Farm
				["qg"] = 244655, -- Lady Jaina Proudmoore
				["coord"] = { 56.5, 59.7, ARATHI_HIGHLANDS_CATCHUP },
				["groups"] = {	-- Cloak and Chest
					-- Paladin
					i(153867),	-- Sunsoul Battleplate
					i(153901),	-- Sunsoul Cloak of Stoicism
					-- Hunter
					i(153799),	-- Trailseeker Cloak of Rage
					i(153805),	-- Trailseeker Vest
				},
			}),
			q(90888, {	-- Saving Stromgarde Keep
				["sourceQuests"] = {
					90885,	-- My Beautiful Pumpkins
					90886,	-- Best Laid Plans of Kobolds and Ogres
					90887,	-- Farmer's Nemesis
				},
				["qg"] = 244655, -- Lady Jaina Proudmoore
				["coord"] = { 56.5, 59.7, ARATHI_HIGHLANDS_CATCHUP },
				["groups"] = {	-- Trinkets
					-- Paladin
					i(153907),	-- Sunsoul Defender Idol
					i(153910),	-- Sunsoul Defender Stone
					-- Hunter
					i(153801),	-- Trailseeker Idol of Rage
					i(153804),	-- Trailseeker Stone of Rage
				},
			}),
			q(92028, {	-- Pardon the Interruption
				["sourceQuests"] = {
					90885,	-- My Beautiful Pumpkins
					90886,	-- Best Laid Plans of Kobolds and Ogres
					90887,	-- Farmer's Nemesis
				},
				["qg"] = 249423, -- Sergeant Colvin
				["coord"] = { 19.6, 57.5, ARATHI_HIGHLANDS_CATCHUP },
				-- Activate Fightbot 11.2.7, then interrupt its abilities... Creative much?
			}),
			q(90888, {	-- Catapult Bombardment [A]
				["sourceQuest"] = 90888,	-- Saving Stromgarde Keep
				["qg"] = 244658, -- Lady Jaina Proudmoore
				["coord"] = { 19.5, 57.4, ARATHI_HIGHLANDS_CATCHUP },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {	-- Pants and Necklace
					-- Paladin
					i(153906),	-- Sunsoul Amulet
					i(153905),	-- Sunsoul Legguards
					-- Hunter
					i(153800),	-- Trailseeker Choker
					i(153809),	-- Trailseeker Legguards
				},
			}),
			q(90895, {	-- Catapult Bombardment [H]
				["sourceQuest"] = 90888,	-- Saving Stromgarde Keep
				["qg"] = 244658, -- Lady Jaina Proudmoore
				["coord"] = { 19.5, 57.4, ARATHI_HIGHLANDS_CATCHUP },
				["races"] = HORDE_ONLY,
				["groups"] = {	-- Pants and Necklace
					-- Paladin
					i(153906),	-- Sunsoul Amulet
					i(153905),	-- Sunsoul Legguards
					-- Hunter
					i(153800),	-- Trailseeker Choker
					i(153809),	-- Trailseeker Legguards
				},
			}),
			q(90893, {	-- Repelling the Siege
				["sourceQuest"] = 90888,	-- Saving Stromgarde Keep
				["qg"] = 244657, -- Thrall
				["coord"] = { 19.4, 57.4, ARATHI_HIGHLANDS_CATCHUP },
				["groups"] = {	-- Waist and Wrist
					-- Paladin
					i(153913),	-- Sunsoul Armguards
					i(153912),	-- Sunsoul Waistband
					-- Hunter
					i(153811),	-- Trailseeker Belt
					i(153812),	-- Trailseeker Bracers
				},
			}),
			q(90896, {	-- One Last Ogre
				["sourceQuests"] = {
					90888,	-- Catapult Bombardment
					90893,	-- Repelling the Siege
				},
				["qg"] = 244666, -- Thrall
				["coord"] = { 24.6, 37.1, ARATHI_HIGHLANDS_CATCHUP },
				["groups"] = {	-- Head & Shoulders... TM
					-- Paladin
					i(153904),	-- Sunsoul Faceguard
					i(153911),	-- Sunsoul Shoulderguards
					-- Hunter
					i(153808),	-- Trailseeker Helm
					i(153810),	-- Trailseeker Spaulders
				},
			}),
			q(90897, {	-- Back to Stromgarde
				["sourceQuest"] = 90896,	-- One Last Ogre
				["qg"] = 244667, -- Lady Jaina Proudmoore
				["races"] = ALLIANCE_ONLY,
				["coord"] = { 24.7, 37.1, ARATHI_HIGHLANDS_CATCHUP },
			}),
			q(90898, {	-- Back to Hammerfall
				["sourceQuest"] = 90896,	-- One Last Ogre
				["qg"] = 244666,	-- Thrall
				["races"] = HORDE_ONLY,
				["coord"] = { 24.6, 37.1, ARATHI_HIGHLANDS_CATCHUP },
			}),
			-- Exo Note: While flying back to Stromgarde to turn in 90897, following was triggered
			-- ATT [Quest completed Pardon the Interruption (93382) (Not in ATT [Git])]
			-- lq:90896<90893<90895<92028<90888
			-- Delayed Alt-Quest completion for 92028?
			q(90911, {	-- Your Next Adventure
				["sourceQuests"] = {
					90897,	-- Back to Stromgarde
					90898,	-- Back to Hammerfall
				},
				["sourceQuestNumRequired"] = 1,
				["qgs"] = {
					244714, -- Lady Jaina Proudmoore
					244715, -- Thrall
				},
				["coords"] = {
					{ 19.5, 61.6, ARATHI_HIGHLANDS_CATCHUP },	-- Jaina
					{ 69.2, 34.6, ARATHI_HIGHLANDS_CATCHUP },	-- Thrall
				},
			}),
		}),
	},
}));
