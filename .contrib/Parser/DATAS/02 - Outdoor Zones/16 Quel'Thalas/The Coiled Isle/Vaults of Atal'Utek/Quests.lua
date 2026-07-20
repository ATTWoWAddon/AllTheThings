---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(MAP.MIDNIGHT.QUELTHALAS, {
	m(MAP.MIDNIGHT.THE_COILED_ISLE, {
		m(MAP.MIDNIGHT.VAULTS_OF_ATALUTEK, {
			n(QUESTS, {
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
				-- Altar of Corrosion
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
