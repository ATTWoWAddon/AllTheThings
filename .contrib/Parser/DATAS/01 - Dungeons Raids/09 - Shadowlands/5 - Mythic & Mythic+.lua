-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
root(ROOTS.Instances, expansion(EXPANSION.SL, bubbleDown({ ["timeline"] = { ADDED_9_0_2_LAUNCH } }, {
	d(DIFFICULTY.DUNGEON.MYTHIC, bubbleDownSelf({ ["timeline"] = { ADDED_10_0_2_LAUNCH } }, {
		ig(182173),	-- Hyena Soul
	})),
	n(MYTHIC_PLUS, {
		ig(182173, {	-- Hyena Soul
			["timeline"] = { ADDED_9_0_2, REMOVED_10_0_2_LAUNCH },
		}),
		header(HEADERS.Achievement, SEASON_PROUD, bubbleDownSelf({
			["timeline"] = { ADDED_9_0_2, REMOVED_9_1_0 },
		},{
			ach(14662,	{	-- Realm First! Shadowlands Keystone Master
				["u"] = REMOVED_FROM_GAME,
			}),
			ach(14938, {	-- Shadowlands Keystone Explorer: Season One
				["timeline"] = { ADDED_9_0_5, REMOVED_9_1_0 },
			}),
			ach(14531, {	-- Shadowlands Keystone Conqueror: Season One
				title(431),	-- <Name> the Proud (TITLE!)
			}),
			ach(14532, {	-- Shadowlands Keystone Master: Season One
				i(182717),	-- Sintouched Deathwalker (MOUNT!)
			}),
		})),
		header(HEADERS.Achievement, SEASON_TORMENTED, bubbleDownSelf({
			["timeline"] = { ADDED_9_1_0, REMOVED_9_2_0 },
		},{
			ach(15073),		-- Shadowlands Keystone Explorer: Season Two
			ach(15077, {	-- Shadowlands Keystone Conqueror: Season Two
				title(446),	-- <Name> the Tormented (TITLE!)
			}),
			ach(15078, {	-- Shadowlands Keystone Master: Season Two
				i(187525),	-- Soultwisted Deathwalker (MOUNT!)
			}),
			ach(15327, {	-- Tormented Hero: Shadowlands Season 2
				title(451),	-- <Name> the Tormented Hero (TITLE!)
			}),
			-- Keystone Hero
			ach(15051, {	-- Keystone Hero: De Other Side
				spell(354468),	-- Path of the Scheming Loa
			}),
			ach(15048, {	-- Keystone Hero: Halls of Atonement
				spell(354465),	-- Path of the Sinful Soul
			}),
			ach(15047, {	-- Keystone Hero: Mists of Tirna Scithe
				spell(354464),	-- Path of the Misty Forest
			}),
			ach(15046, {	-- Keystone Hero: Plaguefall
				spell(354463),	-- Path of the Plagued
			}),
			ach(15052, {	-- Keystone Hero: Sanguine Depths
				spell(354469),	-- Path of the Stone Warden
			}),
			ach(15049, {	-- Keystone Hero: Spires of Ascension
				spell(354466),	-- Path of the Ascendant
			}),
			ach(15045, {	-- Keystone Hero: The Necrotic Wake
				spell(354462),	-- Path of the Courageous
			}),
			ach(15050, {	-- Keystone Hero: Theater of Pain
				spell(354467),	-- Path of the Undefeated
			}),
		})),
		header(HEADERS.Achievement, SEASON_CRYPTIC, bubbleDownSelf({
			["timeline"] = { ADDED_9_2_0, REMOVED_9_2_5 },
		},{
			ach(15496),		-- Shadowlands Keystone Explorer: Season Three
			ach(15498, {	-- Shadowlands Keystone Conqueror: Season Three
				title(457),	-- <Name> the Cryptic (TITLE!)
			}),
			ach(15499, {	-- Shadowlands Keystone Master: Season Three
				i(187682),	-- Wastewarped Deathwalker (MOUNT!)
			}),
			ach(15506),		-- Shadowlands Keystone Hero: Season Three
			ach(15691, {	-- Cryptic Hero: Shadowlands Season 3
				title(458),	-- <Name> the Cryptic Hero (TITLE!)
			}),
			-- Keystone Hero
			ach(15051, {	-- Keystone Hero: De Other Side
				spell(354468),	-- Path of the Scheming Loa
			}),
			ach(15048, {	-- Keystone Hero: Halls of Atonement
				spell(354465),	-- Path of the Sinful Soul
			}),
			ach(15047, {	-- Keystone Hero: Mists of Tirna Scithe
				spell(354464),	-- Path of the Misty Forest
			}),
			ach(15046, {	-- Keystone Hero: Plaguefall
				spell(354463),	-- Path of the Plagued
			}),
			ach(15052, {	-- Keystone Hero: Sanguine Depths
				spell(354469),	-- Path of the Stone Warden
			}),
			ach(15049, {	-- Keystone Hero: Spires of Ascension
				spell(354466),	-- Path of the Ascendant
			}),
			ach(15500, {	-- Keystone Hero: Tazavesh, the Veiled Market
				spell(367416),	-- Path of the Streetwise Merchant
				crit(53264),	-- Tazavesh: Streets of Wonder
				crit(53266),	-- Tazavesh: So'leah's Gambit
			}),
			ach(15045, {	-- Keystone Hero: The Necrotic Wake
				spell(354462),	-- Path of the Courageous
			}),
			ach(15050, {	-- Keystone Hero: Theater of Pain
				spell(354467),	-- Path of the Undefeated
			}),
		})),
		header(HEADERS.Achievement, SEASON_SHROUDED, bubbleDownSelf({
			["timeline"] = { ADDED_9_2_5, REMOVED_10_0_0 },
		},{
			ach(15688),		-- Shadowlands Keystone Explorer: Season Four
			ach(15689, {	-- Shadowlands Keystone Conqueror: Season Four
				title(465),	-- <Name> the Shrouded (TITLE!)
			}),
			ach(15690, {	-- Shadowlands Keystone Master: Season Four
				i(192557),	-- Restoration Deathwalker (MOUNT!)
			}),
			ach(15756, {	-- Shrouded Hero: Shadowlands Season 4
				title(466),	-- <Name> the Shrouded Hero (TITLE!)
			}),
			-- Keystone Hero
			ach(15695, {	-- Keystone Hero: Grimrail Depot
				spell(159900),	-- Path of the Dark Rail
			}),
			ach(15694, {	-- Keystone Hero: Iron Docks
				spell(159896),	-- Path of the Iron Prow
			}),
			ach(15693, {	-- Keystone Hero: Operation: Mechagon
				spell(373274),	-- Path of the Scrappy Prince
				crit(53624),	-- Operation: Mechagon - Junkyard
				crit(53625),	-- Operation: Mechagon - Workshop
			}),
			ach(15692, {	-- Keystone Hero: Return to Karazhan
				["timeline"] = { ADDED_9_2_5, REMOVED_10_0_0, ADDED_LEGION_REMIX, REMOVED_LEGION_REMIX_END },
				["maps"] = { 809 },	-- Return to Karazhan
				["groups"] = {
					spell(373262),	-- Path of the Fallen Guardian
					crit(53622),	-- Return to Karazhan: Lower
					crit(53623),	-- Return to Karazhan: Upper
				},
			}),
			ach(15500, {	-- Keystone Hero: Tazavesh, the Veiled Market
				spell(367416),	-- Path of the Streetwise Merchant
				crit(53264),	-- Tazavesh: Streets of Wonder
				crit(53266),	-- Tazavesh: So'leah's Gambit
			}),
		})),
	}),
})));
