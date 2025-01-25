-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------

root(ROOTS.ExpansionFeatures, expansion(EXPANSION.SL, bubbleDown({ ["customCollect"] = "SL_COV_NEC" }, {
	n(NECROLORD, {
		n(SANCTUM_UPGRADES, {
			["icon"] = 3641396,
			["g"] = {
				n(COMMAND_TABLE, {
					n(TIER_ONE, {
						["icon"] = 3675495,
						["g"] = {
							n(FOLLOWERS, bubbleDownSelf({
								["collectible"] = false,
								["u"] = UNLEARNABLE,	-- Temporary troops
							}, {
								follower(1243),	-- Maldraxxus Plaguesinger
								follower(1314),	-- Maldraxxus Plaguesinger
								follower(1315),	-- Maldraxxus Plaguesinger
								follower(1324),	-- Maldraxxus Plaguesinger
								follower(1242),	-- Maldraxxus Shock Trooper
								follower(1312),	-- Maldraxxus Shock Trooper
								follower(1313),	-- Maldraxxus Shock Trooper
								follower(1321),	-- Maldraxxus Shock Trooper
							})),
							n(QUESTS, {
								q(64465, {	-- Adventurer: Enceladus
									["description"] = "Requires Renown 62.",
									["provider"] = { "n", 165321 },	-- Merick Feldscar
									["coord"] = { 38.8, 48.2, SEAT_OF_THE_PRIMUS },
									["g"] = {
										follower(1335),	-- Enceladus
									},
								}),
								q(64466, {	-- Adventurer: Deathfang
									["description"] = "Requires Renown 71.",
									["provider"] = { "n", 165321 },	-- Merick Feldscar
									["coord"] = { 38.8, 48.2, SEAT_OF_THE_PRIMUS },
									["g"] = {
										follower(1336),	-- Deathfang
									},
								}),
								q(62312, {	-- Adventurer: Gunn Gorgebone
									["description"] = "Requires Renown 12.",
									["provider"] = { "n", 165321 },	-- Merick Feldscar
									["coord"] = { 38.8, 48.2, SEAT_OF_THE_PRIMUS },
									["g"] = {
										follower(1301),	-- Gunn Gorgebone
									},
								}),
								q(62314, {	-- Adventurer: Khaliiq
									["description"] = "Requires Renown 27.",
									["provider"] = { "n", 165321 },	-- Merick Feldscar
									["coord"] = { 38.8, 48.2, SEAT_OF_THE_PRIMUS },
									["g"] = {
										follower(1303),	-- Khaliiq
									},
								}),
								q(64464, {	-- Adventurer: Lyra Hailstorm
									["description"] = "Requires Renown 44.",
									["provider"] = { "n", 165321 },	-- Merick Feldscar
									["coord"] = { 38.8, 48.2, SEAT_OF_THE_PRIMUS },
									["g"] = {
										follower(1334),	-- Lyra Hailstorm
									},
								}),
								q(62315, {	-- Adventurer: Plaguey
									["description"] = "Requires Renown 33.",
									["provider"] = { "n", 165321 },	-- Merick Feldscar
									["coord"] = { 38.8, 48.2, SEAT_OF_THE_PRIMUS },
									["g"] = {
										follower(1304),	-- Plaguey
									},
								}),
								q(62316, {	-- Adventurer: Rathan
									["description"] = "Requires Renown 38.",
									["provider"] = { "n", 165321 },	-- Merick Feldscar
									["coord"] = { 38.8, 48.2, SEAT_OF_THE_PRIMUS },
									["g"] = {
										follower(1305),	-- Rathan
									},
								}),
								q(62313, {	-- Adventurer: Rencissa the Dynamo
									["description"] = "Requires Renown 17.",
									["provider"] = { "n", 165321 },	-- Merick Feldscar
									["coord"] = { 38.8, 48.2, SEAT_OF_THE_PRIMUS },
									["g"] = {
										follower(1302),	-- Rencissa the Dynamo
									},
								}),
								q(62309, {	-- Adventurer: Secutor Mevix
									["sourceQuests"] = { 59603 },	-- In Shadowlands Service
									["description"] = "Requires Renown 4.",
									["provider"] = { "n", 165321 },	-- Merick Feldscar
									["coord"] = { 38.8, 48.2, SEAT_OF_THE_PRIMUS },
									["g"] = {
										follower(1300),	-- Secutor Mevix
									},
								}),
								q(59603, {	-- In Shadowlands Service
									["sourceQuests"] = { 63054 },	-- Strength in Numbers
									["provider"] = { "n", 165321 },	-- Merick Feldscar
									["coord"] = { 38.8, 48.2, SEAT_OF_THE_PRIMUS },
								}),
								q(63054, {	-- Strength in Numbers
									["provider"] = { "n", 161909 },	-- Arkadia Moa
									["coord"] = { 52.4, 38.4, SEAT_OF_THE_PRIMUS },
								}),
							}),
							n(REWARDS, {
								currency(1828),	-- Soul Ash
								i(183744),	-- Superior Parts
							}),
						},
					}),
				}),
			},
		}),
	}),
})));