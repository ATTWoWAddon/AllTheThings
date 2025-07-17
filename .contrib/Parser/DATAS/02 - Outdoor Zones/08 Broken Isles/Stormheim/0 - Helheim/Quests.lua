---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, {
	m(BROKEN_ISLES, {
		m(STORMHEIM, {
			m(HELHEIM, {
				n(QUESTS, {
					q(39837, {	-- An Unworthy Task
						["provider"] = { "n", 97319 },	-- Ashildir
						["coord"] = { 65.3, 46.9, HELHEIM },
						["sourceQuests"] = { 38818 },	-- The Final Judgment
					}),
					q(38324, {	-- Accessories of the Cursed
						["sourceQuests"] = { 39837 },	-- An Unworthy Task
						["coord"] = { 64.6, 43.8, HELHEIM },
						["provider"] = { "n", 91531 },	-- Colborn the Unworthy
						["groups"] = {
							i(129331),	-- Soulflayer Cord
							i(129332),	-- Belt of the Eternally Tortured
							i(129333),	-- Mistcaller Mail Belt
							i(129334),	-- Girdle of the Unworthy
							i(121563),	-- Soulflayer's Collar of Bones
						},
					}),
					q(38339, {	-- A Little Kelp From My Foes
						["sourceQuests"] = { 39837 },	-- An Unworthy Task
						["coord"] = { 64.6, 43.8, HELHEIM },
						["provider"] = { "n", 91531 },	-- Colborn the Unworthy
					}),
					q(38347, {	-- Stealth by Seaweed
						["sourceQuests"] = {
							38324,	-- Accessories of the Cursed
							38339,	-- A Little Kelp From My Foes
						},
						["coord"] = { 64.6, 43.8, HELHEIM },
						["provider"] = { "n", 91531 },	-- Colborn the Unworthy
					}),
					q(39848, {	-- A Desperate Bargain
						["sourceQuests"] = { 38347 },	-- Stealth by Seaweed
						["coord"] = { 47.2, 32.5, HELHEIM },
						["provider"] = { "n", 97419 },	-- Ashildir
					}),
					q(39857, {	-- The Eternal Nemesis
						["sourceQuests"] = { 39848 },	-- A Desperate Bargain
						["coord"] = { 34.2, 28.1, HELHEIM },
						["icon"] = 537227,
					}),
					q(39849, {	-- To Light the Way
						["sourceQuests"] = { 39857 },	-- The Eternal Nemesis
						["coord"] = { 46.6, 49.4, HELHEIM },
						["provider"] = { "n", 97480 },	-- Ashildir
						["groups"] = {
							i(129339),	-- Drape of the Undying Raider
							i(129239),	-- Bloodbeard's Seal
						},
					}),
					q(39850, {	-- Sundered
						["sourceQuests"] = { 39849 },	-- To Light the Way
						["coord"] = { 46.6, 49.4, HELHEIM },
						["provider"] = { "n", 97480 },	-- Ashildir
					}),
					q(39851, {	-- Allies in Death
						["sourceQuests"] = { 39849 },	-- To Light the Way
						["coord"] = { 46.6, 49.4, HELHEIM },
						["provider"] = { "n", 97480 },	-- Ashildir
					}),
					q(39853, {	-- Victory is Eternal
						["sourceQuests"] = {
							39851,	-- Allies in Death
							39850,	-- Sundered
						},
						["coord"] = { 46.6, 49.4, HELHEIM },
						["provider"] = { "n", 97480 },	-- Ashildir
					}),
					q(39855, {	-- Paid in Lifeblood
						["sourceQuests"] = { 39853 },	-- Victory is Eternal
						["coord"] = { 46.2, 60.6, HELHEIM },
						["provider"] = { "n", 97558 },	-- Ashildir
						["groups"] = {
							i(132832),	-- Bones of Geir
							i(132830),	-- Cursebinder Chains
							i(132826),	-- Cursed Kvaldir Blood
							i(132827),	-- Gaze of Helya
							i(132824),	-- Helheim Waylight
							i(132828),	-- Helhound Core
							i(132829),	-- Silver of Heost
							i(132825),	-- Val'kyra Boon
							i(132834),	-- Wailing Wings
							i(132831),	-- Worthy Soul
						},
					}),
					n(BONUS_OBJECTIVES, sharedData({
						-- #if BEFORE DF
						["lockCriteria"] = { 1, "lvl", 45 },
						-- #else
						["lockCriteria"] = { 1, "lvl", 60 },
						-- #endif
					},{
						q(38343),	-- Raze Hel
					})),
				}),
			}),
		}),
	}),
});
