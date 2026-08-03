---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(MAP.MIDNIGHT.QUELTHALAS, {
	m(MAP.MIDNIGHT.THE_COILED_ISLE, {
		m(MAP.MIDNIGHT.VAULTS_OF_ATALUTEK, {
			n(QUESTS, {
				header(HEADERS.NPC, 269485, {	-- Altar of Corrosion
					q(97640, {	-- Vaults of Atal'Utek: One Coin Too Many
						["qg"] = 272024,	-- Sack of Coins
						["coord"] = { 42.3, 14.5, MAP.MIDNIGHT.VAULTS_OF_ATALUTEK },
					}),
					q(98428, {	-- Vaults of Atal'Utek: The Altar of Corrosion
						["sourceQuest"] = 97640,	-- Vaults of Atal'Utek: One Coin Too Many
						["qg"] = 262880,	-- Er'inye
						["coord"] = { 51.2, 62.8, MAP.MIDNIGHT.VAULTS_OF_ATALUTEK },
					}),
					q(96644, {	-- Essence of Malice
						["sourceQuest"] = 98388,	-- Vaults of Atal'Utek: Certain Doom
						["qg"] = 262880,	-- Er'inye
						["coord"] = { 51.2, 62.8, MAP.MIDNIGHT.VAULTS_OF_ATALUTEK },
						["isWeekly"] = true,	-- Assumption
						["groups"] = { i(278470) },	-- Malefic Venom (QI!)
					}),
					q(96640, {	-- Bounty of the Cursed
						["qg"] = 262880,	-- Er'inye
						["coord"] = { 51.2, 62.8, MAP.MIDNIGHT.VAULTS_OF_ATALUTEK },
						["isWeekly"] = true,	-- Assumption
						["groups"] = { i(275060) },	-- Forgotten Relic (QI!)
					}),
				}),
				q(98388, {	-- Vaults of Atal'Utek: Certain Doom
					["qgs"] = {
						262798,	-- Warleader Abdumati
						271885,	-- Mok'sa the Stone
					},
					["coords"] = {
						{ 47.2, 60.8, MAP.MIDNIGHT.VAULTS_OF_ATALUTEK },	-- Warleader Abdumati @ Amani Foothold
						{ 53.9, 39.5, MAP.MIDNIGHT.VAULTS_OF_ATALUTEK },	-- Mok'sa the Stone @ Eastern Amani Outpost
					},
				}),
				q(98515, {	-- Vaults of Atal'Utek: A Toxic Tour
					["sourceQuest"] = 98388,	-- Vaults of Atal'Utek: Certain Doom
					["qg"] = 262798,	-- Warleader Abdumati
					["coord"] = { 47.2, 60.8, MAP.MIDNIGHT.VAULTS_OF_ATALUTEK },
				}),
				-- Zone Repeatables
				q(95520, {	-- Purging the Vaults
					["qgs"] = {
						262798,	-- Warleader Abdumati
						267635,	-- Talon Commander Zela
					},
					["coords"] = {
						{ 47.2, 60.8, MAP.MIDNIGHT.VAULTS_OF_ATALUTEK },	-- Warleader Abdumati
						{ 58.7, 45.8, MAP.MIDNIGHT.THE_COILED_ISLE },		-- Talon Commander Zela
					},
					["isWeekly"] = true,	-- Assumption
				}),
				q(98419, {	-- Shoulder to Shoulder
					["sourceQuest"] = 98388,	-- Vaults of Atal'Utek: Certain Doom
					["qg"] = 262798,	-- Warleader Abdumati
					["coord"] = { 47.2, 60.8, MAP.MIDNIGHT.VAULTS_OF_ATALUTEK },
					["isWeekly"] = true,	-- Assumption
				}),
				q(96639, {	-- Patrolling the Temple
					["qg"] = 272109,	-- Hawkeye Socho (mobileNPC)
					["coord"] = { 47.2, 65.1, MAP.MIDNIGHT.VAULTS_OF_ATALUTEK },	-- Moves to the troops left and right of this point
				}),
				q(96642, {	-- Decisive Incursions
					["qg"] = 272109,	-- Hawkeye Socho (mobileNPC)
					["coord"] = { 47.2, 65.1, MAP.MIDNIGHT.VAULTS_OF_ATALUTEK },	-- Moves to the troops left and right of this point
				}),
				n(REWARDS, {
					i(273000),	-- Corrosive Soul
					i(274374),	-- Trovehunter's Bounty
					i(279382),	-- Venom-Cursed Fragment
				}),
			}),
		}),
	}),
}));
