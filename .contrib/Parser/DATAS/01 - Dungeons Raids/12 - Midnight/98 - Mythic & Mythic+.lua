-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

root(ROOTS.Instances, expansion(EXPANSION.MID, {
	n(COMMON_BOSS_DROPS, bubbleDownSelf({ ["timeline"] = { ADDED_12_0_1_LAUNCH } }, {
		i(258839, {	-- Concealed Catalogue
			["description"] = "Drops from the last boss of Mythic Dungeons. It contains various dungeon dropped profession recipes.",
			--["sym"] = {{"select","itemID",

			--}},
		}),
	})),
	n(MYTHIC_PLUS, {
		header(HEADERS.Achievement, SEASON_UMBRAL, bubbleDownSelf({
			["timeline"] = { ADDED_12_0_1_SEASONSTART, REMOVED_12_1_0 },
		}, {
			ach(61254),	-- Midnight Keystone Explorer: Season One
			ach(61255, {	-- Midnight Keystone Conqueror: Season One
				title(655),	-- <Name> the Umbral
			}),
			ach(61256, {	-- Midnight Keystone Master: Season One
				i(262620),	-- Calamitous Carrion (MOUNT!)
			}),
			ach(61257),	-- Midnight Keystone Hero: Season One
			ach(61258, {	-- Midnight Keystone Legend: Season One
				i(262621),	-- Convalescent Carrion (MOUNT!)
			}),
			ach(63097, bubbleDownSelf({ ["timeline"] = { ADDED_12_0_5, REMOVED_12_1_0 } }, {	-- Midnight Keystone Myth: Season One
				title(773),	-- <Name> the Umbral Contender
			})),
			ach(63104,{	-- Umbral Champion: Midnight Season 1
				["timeline"] = { ADDED_12_1_0, REMOVED_12_1_0 },
				["groups"] = {
					i(277192),	-- Umbral Ashes (MOUNT!)
					--title(),	-- <Name> the Umbral Champion
				},
			}),
			ach(61259, {	-- Umbral Hero: Midnight Season One
				title(656),	-- <Name> the Umbral Hero
			}),
			ach(16643, {	-- Keystone Hero: Algeth'ar Academy
				spell(393273),	-- Path of the Draconic Diploma
			}),
			ach(61269, {	-- Keystone Hero: Maisara Caverns
				spell(1254559),	-- Path of Cavernous Depths
			}),
			ach(61268, {	-- Keystone Hero: Nexus-Point Xenas
				spell(1254563),	-- Path of the Fractured Core
			}),
			ach(61267, {	-- Keystone Hero: Magisters' Terrace
				spell(1254572),	-- Path of Devoted Magistry
			}),
			ach(61262, {	-- Keystone Hero: Windrunner Spire
				spell(1254400),	-- Path of the Windrunners
			}),
			ach(61270, {	-- Keystone Hero: Seat of the Triumvirate
				spell(1254551),	-- Path of Dark Dereliction
			}),
			ach(61271, {	-- Keystone Hero: Pit of Saron
				spell(1254555),	-- Path of Unyielding Blight
			}),
			ach(61272, {	-- Keystone Hero: Skyreach
				--NOT AWARDED spell(1254557),	-- Path of the Crowning Pinnacle
				spell(159898),	-- Path of the Skies
			}),
			ach(61591, {	-- Keystone Victor: Algeth'ar Academy
				title(682, {	-- <Name>, Top Student
					["collectible"] = false,	-- Only for 1 week
				}),
			}),
			ach(61587, {	-- Keystone Victor: Magisters' Terrace (Midnight)
				title(687, {	-- Terrace Terror <Name>
					["collectible"] = false,	-- Only for 1 week
				}),
			}),
			ach(61588, {	-- Keystone Victor: Maisara Caverns
				title(686, {	-- Maisaran Soultender <Name>
					["collectible"] = false,	-- Only for 1 week
				}),
			}),
			ach(61589, {	-- Keystone Victor: Nexus-Point Xenas
				title(685, {	-- <Name>, Nexus Navigator
					["collectible"] = false,	-- Only for 1 week
				}),
			}),
			ach(61592, {	-- Keystone Victor: Pit of Saron
				title(681, {	-- Scourgebane <Name>
					["collectible"] = false,	-- Only for 1 week
				}),
			}),
			ach(61593, {	-- Keystone Victor: Seat of the Triumvirate
				title(683, {	-- Despair Defier <Name>
					["collectible"] = false,	-- Only for 1 week
				}),
			}),
			ach(61594, {	-- Keystone Victor: Skyreach
				title(294, {	-- <Name>, Scion of Rukhmar
					["collectible"] = false,	-- Only for 1 week
				}),
			}),
			ach(61590, {	-- Keystone Victor: Windrunner Spire
				title(684, {	-- Windrunner Mediator <Name>
					["collectible"] = false,	-- Only for 1 week
				}),
			}),
			-- Using ["_noautomation"] for all to reduce numbers a bit.
			-- Have to see what Blizzard does with those kind of achievements	-- Goldenshacal October 2025
			ach(61233, {	-- Midnight Season 1: Resilient Keystone 12
				["_noautomation"] = true,
			}),
			ach(61235, {	-- Midnight Season 1: Resilient Keystone 13
				["_noautomation"] = true,
			}),
			ach(61236, {	-- Midnight Season 1: Resilient Keystone 14
				["_noautomation"] = true,
			}),
			ach(61237, {	-- Midnight Season 1: Resilient Keystone 15
				["_noautomation"] = true,
			}),
			ach(61239, {	-- Midnight Season 1: Resilient Keystone 16
				["_noautomation"] = true,
			}),
			ach(61240, {	-- Midnight Season 1: Resilient Keystone 17
				["_noautomation"] = true,
			}),
			ach(61241, {	-- Midnight Season 1: Resilient Keystone 18
				["_noautomation"] = true,
			}),
			ach(61242, {	-- Midnight Season 1: Resilient Keystone 19
				["_noautomation"] = true,
			}),
			ach(61243, {	-- Midnight Season 1: Resilient Keystone 20
				["_noautomation"] = true,
			}),
			ach(61244, {	-- Midnight Season 1: Resilient Keystone 21
				["_noautomation"] = true,
			}),
			ach(61245, {	-- Midnight Season 1: Resilient Keystone 22
				["_noautomation"] = true,
			}),
			ach(61246, {	-- Midnight Season 1: Resilient Keystone 23
				["_noautomation"] = true,
			}),
			ach(61247, {	-- Midnight Season 1: Resilient Keystone 24
				["_noautomation"] = true,
			}),
			ach(61248, {	-- Midnight Season 1: Resilient Keystone 25
				["_noautomation"] = true,
			}),
			ach(61249, {	-- Midnight Season 1: Resilient Keystone 26
				["_noautomation"] = true,
			}),
			ach(61250, {	-- Midnight Season 1: Resilient Keystone 27
				["_noautomation"] = true,
			}),
			ach(61251, {	-- Midnight Season 1: Resilient Keystone 28
				["_noautomation"] = true,
				["collectible"] = false,
			}),
			ach(61252, {	-- Midnight Season 1: Resilient Keystone 29
				["_noautomation"] = true,
				["collectible"] = false,
			}),
			ach(61253, {	-- Midnight Season 1: Resilient Keystone 30
				["_noautomation"] = true,
				["collectible"] = false,
			}),
		})),
		header(HEADERS.Achievement, SEASON_VENOMOUS, bubbleDownSelf({
			["timeline"] = { ADDED_12_1_0, REMOVED_12_2_0 },
		}, {
			ach(62441),	-- Keystone Hero: Altar of Fangs
			ach(62439),	-- Keystone Hero: Den of Nalorakk
			ach(62444),	-- Keystone Hero: Kings' Rest
			ach(62440),	-- Keystone Hero: Murder Row
			ach(62442),	-- Keystone Hero: Ruby Life Pools (Midnight Season 2)
			ach(62443),	-- Keystone Hero: Temple of Sethraliss
			ach(62437),	-- Keystone Hero: The Blinding Vale
			ach(62438),	-- Keystone Hero: Voidscar Arena
			ach(62445),	-- Midnight Keystone Explorer: Season 2
			ach(62446),	-- Midnight Keystone Conqueror: Season 2
			ach(62447),	-- Midnight Keystone Master: Season 2
			ach(62448),	-- Midnight Keystone Hero: Season 2
			ach(62449),	-- Midnight Keystone Legend: Season 2
			ach(62436),	-- Venomous Hero: Midnight Season 2
			-- Check the comment on previous season
			ach(62417, {	-- Midnight Season 2: Resilient Keystone 12
				["_noautomation"] = true,
				["collectible"] = false,
			}),
			ach(62418, {	-- Midnight Season 2: Resilient Keystone 13
				["_noautomation"] = true,
				["collectible"] = false,
			}),
			ach(62419, {	-- Midnight Season 2: Resilient Keystone 14
				["_noautomation"] = true,
				["collectible"] = false,
			}),
			ach(62420, {	-- Midnight Season 2: Resilient Keystone 15
				["_noautomation"] = true,
				["collectible"] = false,
			}),
			ach(62421, {	-- Midnight Season 2: Resilient Keystone 16
				["_noautomation"] = true,
				["collectible"] = false,
			}),
			ach(62422, {	-- Midnight Season 2: Resilient Keystone 17
				["_noautomation"] = true,
				["collectible"] = false,
			}),
			ach(62423, {	-- Midnight Season 2: Resilient Keystone 18
				["_noautomation"] = true,
				["collectible"] = false,
			}),
			ach(62424, {	-- Midnight Season 2: Resilient Keystone 19
				["_noautomation"] = true,
				["collectible"] = false,
			}),
			ach(62425, {	-- Midnight Season 2: Resilient Keystone 20
				["_noautomation"] = true,
				["collectible"] = false,
			}),
			ach(62426, {	-- Midnight Season 2: Resilient Keystone 21
				["_noautomation"] = true,
				["collectible"] = false,
			}),
			ach(62427, {	-- Midnight Season 2: Resilient Keystone 22
				["_noautomation"] = true,
				["collectible"] = false,
			}),
			ach(62428, {	-- Midnight Season 2: Resilient Keystone 23
				["_noautomation"] = true,
				["collectible"] = false,
			}),
			ach(62429, {	-- Midnight Season 2: Resilient Keystone 24
				["_noautomation"] = true,
				["collectible"] = false,
			}),
			ach(62430, {	-- Midnight Season 2: Resilient Keystone 25
				["_noautomation"] = true,
				["collectible"] = false,
			}),
			ach(62431, {	-- Midnight Season 2: Resilient Keystone 26
				["_noautomation"] = true,
				["collectible"] = false,
			}),
			ach(62432, {	-- Midnight Season 2: Resilient Keystone 27
				["_noautomation"] = true,
				["collectible"] = false,
			}),
			ach(62433, {	-- Midnight Season 2: Resilient Keystone 28
				["_noautomation"] = true,
				["collectible"] = false,
			}),
			ach(62434, {	-- Midnight Season 2: Resilient Keystone 29
				["_noautomation"] = true,
				["collectible"] = false,
			}),
			ach(62435, {	-- Midnight Season 2: Resilient Keystone 30
				["_noautomation"] = true,
				["collectible"] = false,
			}),
		})),
		n(QUESTS, bubbleDownSelf({
			["timeline"] = { ADDED_12_0_5, REMOVED_12_1_0 }
		}, {
			q(96936, {	-- Accolades for the Umbral Contender
				["sourceAchievement"] = 63097,	-- Midnight Keystone Myth: Season One
				["groups"] = { i(275436), }	-- Timelost Saddle
			}),
		})),
		n(REWARDS, bubbleDownSelf({
			["timeline"] = { ADDED_12_0_5, REMOVED_12_1_0 }
		}, {
			i(268650, {	-- Ascendant Voidshard
				i(268552),	-- Ascendant Voidcore
			}),
			i(268465),	-- Nebulous Voidcache: Algeth'ar Academy
			i(268466),	-- Nebulous Voidcache: Magisters' Terrace
			i(268473),	-- Nebulous Voidcache: Maisara Caverns
			i(268467),	-- Nebulous Voidcache: Nexus-Point Xenas
			i(268468),	-- Nebulous Voidcache: Pit of Saron
			i(268469),	-- Nebulous Voidcache: Seat of the Triumvirate
			i(268470),	-- Nebulous Voidcache: Skyreach
			i(268471),	-- Nebulous Voidcache: Windrunner Spire
		})),
	}),
}));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.MID, {
	n(MYTHIC_PLUS, {
		header(HEADERS.Achievement, SEASON_UMBRAL, bubbleDownSelf({
			["timeline"] = { ADDED_12_0_1_SEASONSTART, REMOVED_12_1_0 }
		}, {
			q(92491, {isWeekly=true}),	-- First M+ key of the week
			q(95375),	-- Using Nebulous Voidcore
		})),
	}),
}))
