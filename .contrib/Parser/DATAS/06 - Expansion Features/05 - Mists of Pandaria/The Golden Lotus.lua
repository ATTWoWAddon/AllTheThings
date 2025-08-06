-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------
-- #if MOP
-- TODO: https://wowpedia.fandom.com/wiki/The_Ruins_of_Guo-Lai_(daily)
-- Look at the Golden Lotus daileis table at the "Progression" section at the bottom.
local VALE_SOO_ONUPDATE = [[function(t)
	if _.Settings:GetUnobtainableFilter(]] .. MOP_PHASE_SIEGE_OF_ORGRIMMAR .. [[) then
		t.u = ]] .. REMOVED_FROM_GAME .. [[;
	else
		t.u = ]] .. MOP_PHASE_ONE .. [[;
		t.description = "This will become unavailable when the Siege of Orgrimmar phase begins."
	end
end]];
-- #endif
root(ROOTS.ExpansionFeatures, applyclassicphase(MOP_PHASE_ONE, expansion(EXPANSION.MOP, bubbleDown({ ["timeline"] = { ADDED_5_0_4 } }, {
	header(HEADERS.Faction, FACTION_GOLDEN_LOTUS, {
		["description"] = "The Golden Lotus are a mysterious society of pandaren who are guardians of the Vale of Eternal Blossoms. Members of the Golden Lotus are handpicked by the August Celestials to help them keep an eye on the vale, and the pandaren see it as a huge honor to be chosen as a member of the sacred order.",
		["maps"] = {
			VALE_OF_ETERNAL_BLOSSOMS,
			VALE_OF_ETERNAL_BLOSSOMS_GUO_LAI_HALLS
		},
		["icon"] = 645218,
		["lvl"] = lvlsquish(85, 85, 10),
		["groups"] = {
			n(ACHIEVEMENTS, {
				ach(7323, {	-- Collateral Damage
					["providers"] = {
						{ "n", 63447 },	-- Mogu Statue
						{ "n", 65170 },	-- Jade Warrior
					},
					["coord"] = { 24.4, 28.0, VALE_OF_ETERNAL_BLOSSOMS },
					-- #if MOP
					["description"] = "You need to be on or near someone on the quest That's Not a Rock! in order to activate the mogu statues so that they'll engage you and use their special ability.",
					-- #endif
				}),
				ach(7320, {	-- Dog Pile
					["provider"] = { "n", 58992 },	-- Shado-Pan Trainee
					["coord"] = { 19.6, 74.2, VALE_OF_ETERNAL_BLOSSOMS },
					["_drop"] = { "providers" },	-- "Battle Ring Trainee Defeated Credit"
				}),
				ach(7315, {	-- Eternally in the Vale
					["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
					-- #if MOP
					["OnUpdate"] = VALE_SOO_ONUPDATE;
					-- #endif
				}),
				ach(7317, {	-- One Many Army
					crit(20521, {	-- Aetha
						["_npcs"] = { 58778 },	-- Aetha
					}),
					crit(20522, {	-- Quid
						["_npcs"] = { 58771 },	-- Quid
					}),
				}),
				ach(7324),	-- One Step at a Time
				ach(7319),	-- Ready for Raiding III
				ach(7322),	-- Roll Club
				ach(6546),	-- The Golden Lotus
			}),
			n(FACTIONS, {
				faction(FACTION_GOLDEN_LOTUS, {	-- Golden Lotus
					["icon"] = 643910,
				}),
			}),
			n(QUESTS, sharedData({ ["isDaily"] = true, ["maxReputation"] = { FACTION_GOLDEN_LOTUS, EXALTED }, }, {	-- Daily Quests
				q(30284, {	-- A Thousand Pointy Teeth
					["qg"] = 59343,	-- Ren Firetongue
					--["coord"] = { ???, ???, VALE_OF_ETERNAL_BLOSSOMS },	-- TODO
					["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
					-- #if MOP
					["OnUpdate"] = VALE_SOO_ONUPDATE;
					-- #endif
				}),
				q(30338, {	-- A Weighty Task
					["qg"] = 59343,	-- Ren Firetongue
					--["coord"] = { ???, ???, VALE_OF_ETERNAL_BLOSSOMS },	-- TODO
					["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
					-- #if MOP
					["OnUpdate"] = VALE_SOO_ONUPDATE;
					-- #endif
				}),
				q(31755, {	-- Acts of Cruelty
					["qg"] = 58468,	-- Sun Tenderheart
					["coord"] = { 56.6, 43.6, VALE_OF_ETERNAL_BLOSSOMS },
					["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
					-- #if MOP
					["OnUpdate"] = VALE_SOO_ONUPDATE;
					-- #endif
				}),
				q(30236, {	-- Aetha
					["qg"] = 59338,	-- Che Wildwalker
					--["coord"] = { ???, ???, VALE_OF_ETERNAL_BLOSSOMS },	-- TODO
					["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
					-- #if MOP
					["OnUpdate"] = VALE_SOO_ONUPDATE;
					-- #endif
				}),
				q(30244, {	-- Along the Serpent's Spine
					["qg"] = 58920,	-- Kun Autumnlight
					["coord"] = { 21.3, 71.4, VALE_OF_ETERNAL_BLOSSOMS },
					["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
					-- #if MOP
					["OnUpdate"] = VALE_SOO_ONUPDATE;
					-- #endif
				}),
				q(31243, {	-- Attack on Mistfall Village
					["qg"] = 58408,	-- Leven Dawnblade
					["coord"] = { 56.6, 43.6, VALE_OF_ETERNAL_BLOSSOMS },
					["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
					-- #if MOP
					["OnUpdate"] = VALE_SOO_ONUPDATE;
					-- #endif
				}),
				q(31246, {	-- Attack on Mistfall Village
					["qg"] = 59343,	-- Ren Firetongue
					--["coord"] = { ???, ???, VALE_OF_ETERNAL_BLOSSOMS },	-- TODO
					["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
					-- #if MOP
					["OnUpdate"] = VALE_SOO_ONUPDATE;
					-- #endif
				}),
				q(30286, {	-- Backed Into a Corner
					["qg"] = 59337,	-- Sun Tenderheart
					--["coord"] = { ???, ???, VALE_OF_ETERNAL_BLOSSOMS },	-- TODO
					["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
					-- #if MOP
					["OnUpdate"] = VALE_SOO_ONUPDATE;
					-- #endif
				}),
				q(30297, {	-- Baolai the Immolator
					["qg"] = 58911,	-- Rook Stonetoe
					--["coord"] = { ???, ???, VALE_OF_ETERNAL_BLOSSOMS },	-- TODO
					["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
					-- #if MOP
					["OnUpdate"] = VALE_SOO_ONUPDATE;
					-- #endif
				}),
				q(31136, {	-- Behind Our Lines
					["qg"] = 58408,	-- Leven Dawnblade
					["coord"] = { 56.6, 43.6, VALE_OF_ETERNAL_BLOSSOMS },
					["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
					-- #if MOP
					["OnUpdate"] = VALE_SOO_ONUPDATE;
					-- #endif
				}),
				q(30226, {	-- Blood on the Rise
					["qg"] = 58503,	-- Anji Autumnlight
					--["coord"] = { ???, ???, VALE_OF_ETERNAL_BLOSSOMS },	-- TODO
					["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
					-- #if MOP
					["OnUpdate"] = VALE_SOO_ONUPDATE;
					-- #endif
				}),
				q(30266, {	-- Bloodied Skies
					["qg"] = 58920,	-- Kun Autumnlight
					["coord"] = { 21.3, 71.4, VALE_OF_ETERNAL_BLOSSOMS },
					-- Wouter TODO: qg was originally Leven Dawnblade according to Wowwiki, verify this
				}),
				q(30195, {	-- Blooming Blossoms
					["qg"] = 58820,	-- Merchant Benny
					["coord"] = { 33.8, 69.8, VALE_OF_ETERNAL_BLOSSOMS },
					["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
					-- #if MOP
					["OnUpdate"] = VALE_SOO_ONUPDATE;
					-- #endif
				}),
				q(30282, {	-- Burning Away the Filth
					["qg"] = 58503,	-- Anji Autumnlight
					--["coord"] = { ???, ???, VALE_OF_ETERNAL_BLOSSOMS },	-- TODO
					["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
					-- #if MOP
					["OnUpdate"] = VALE_SOO_ONUPDATE;
					-- #endif
				}),
				q(31754, {	-- Cannonfire
					["qg"] = 58471,	-- Kun Autumnlight
					["coord"] = { 56.6, 43.6, VALE_OF_ETERNAL_BLOSSOMS },
					["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
					-- #if MOP
					["OnUpdate"] = VALE_SOO_ONUPDATE;
					-- #endif
				}),
				q(30481, {	-- Carved in Stone
					["qg"] = 59333,	-- Rook Stonetoe
					--["coord"] = { ???, ???, VALE_OF_ETERNAL_BLOSSOMS },	-- TODO
					["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
					-- #if MOP
					["OnUpdate"] = VALE_SOO_ONUPDATE;
					-- #endif
				}),
				q(30263, {	-- Clearing in the Forest
					["qg"] = 59338,	-- Che Wildwalker
					--["coord"] = { ???, ???, VALE_OF_ETERNAL_BLOSSOMS },	-- TODO
					["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
					-- #if MOP
					["OnUpdate"] = VALE_SOO_ONUPDATE;
					-- #endif
				}),
				q(30233, {	-- Cracklefang
					["qg"] = 59343,	-- Ren Firetongue
					--["coord"] = { ???, ???, VALE_OF_ETERNAL_BLOSSOMS },	-- TODO
					["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
					-- #if MOP
					["OnUpdate"] = VALE_SOO_ONUPDATE;
					-- #endif
				}),
				q(31762, {	-- Crumbling Behemoth
					["qg"] = 58465,	-- Anji Autumnlight
					["coord"] = { 56.6, 43.6, VALE_OF_ETERNAL_BLOSSOMS },
					["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
					-- #if MOP
					["OnUpdate"] = VALE_SOO_ONUPDATE;
					-- #endif
				}),
				q(30194, {	-- Encroaching Storm
					["qg"] = 59338,	-- Che Wildwalker
					--["coord"] = { ???, ???, VALE_OF_ETERNAL_BLOSSOMS },	-- TODO
					["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
					-- #if MOP
					["OnUpdate"] = VALE_SOO_ONUPDATE;
					-- #endif
				}),
				q(30264, {	-- Enemy at the Gates
					["qg"] = 58503,	-- Anji Autumnlight
					--["coord"] = { ???, ???, VALE_OF_ETERNAL_BLOSSOMS },	-- TODO
					["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
					-- #if MOP
					["OnUpdate"] = VALE_SOO_ONUPDATE;
					-- #endif
				}),
				q(30342, {	-- Fiery Tongue, Fragile Feet
					["qg"] = 59343,	-- Ren Firetongue
					--["coord"] = { ???, ???, VALE_OF_ETERNAL_BLOSSOMS },	-- TODO
					["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
					-- #if MOP
					["OnUpdate"] = VALE_SOO_ONUPDATE;
					-- #endif
				}),
				q(30320, {	-- Free Spirits
					["qg"] = 58468,	-- Sun Tenderheart
					["coord"] = { 56.6, 43.6, VALE_OF_ETERNAL_BLOSSOMS },
					["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
					-- #if MOP
					["OnUpdate"] = VALE_SOO_ONUPDATE;
					-- #endif
					["groups"] = {
						i(89297),	-- Shao-Tien Spirit Dagger (QI!)
					},
				}),
				q(30289, {	-- Freeing Mind and Body
					["qg"] = 58911,	-- Rook Stonetoe
					--["coord"] = { ???, ???, VALE_OF_ETERNAL_BLOSSOMS },	-- TODO
					["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
					-- #if MOP
					["OnUpdate"] = VALE_SOO_ONUPDATE;
					-- #endif
				}),
				q(30296, {	-- Gaohun the Soul-Severer
					["qg"] = 58911,	-- Rook Stonetoe
					--["coord"] = { ???, ???, VALE_OF_ETERNAL_BLOSSOMS },	-- TODO
					["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
					-- #if MOP
					["OnUpdate"] = VALE_SOO_ONUPDATE;
					-- #endif
				}),
				q(30312, {	-- Given a Second Chance
					["qg"] = 58468,	-- Sun Tenderheart
					["coord"] = { 56.6, 43.6, VALE_OF_ETERNAL_BLOSSOMS },
					["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
					-- #if MOP
					["OnUpdate"] = VALE_SOO_ONUPDATE;
					-- #endif
				}),
				q(31244, {	-- Guo-Lai Encampment
					["qg"] = 59343,	-- Ren Firetongue
					--["coord"] = { ???, ???, VALE_OF_ETERNAL_BLOSSOMS },	-- TODO
					["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
					-- #if MOP
					["OnUpdate"] = VALE_SOO_ONUPDATE;
					-- #endif
				}),
				q(31240, {	-- Guo-Lai Infestation
					["qg"] = 59343,	-- Ren Firetongue
					--["coord"] = { ???, ???, VALE_OF_ETERNAL_BLOSSOMS },	-- TODO
					["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
					-- #if MOP
					["OnUpdate"] = VALE_SOO_ONUPDATE;
					-- #endif
				}),
				q(30304, {	-- Hard as a Rock
					["qg"] = 58504,	-- Kun Autumnlight
					["coord"] = { 34.0, 38.2, VALE_OF_ETERNAL_BLOSSOMS },
					["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
					-- #if MOP
					["OnUpdate"] = VALE_SOO_ONUPDATE;
					-- #endif
				}),
				q(30305, {	-- He Knows What He's Doing
					["qg"] = 59333,	-- Rook Stonetoe
					--["coord"] = { ???, ???, VALE_OF_ETERNAL_BLOSSOMS },	-- TODO
					["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
					-- #if MOP
					["OnUpdate"] = VALE_SOO_ONUPDATE;
					-- #endif
				}),
				q(31756, {	-- High Chance of Rain
					["qg"] = 58471,	-- Kun Autumnlight
					["coord"] = { 56.6, 43.6, VALE_OF_ETERNAL_BLOSSOMS },
					["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
					-- #if MOP
					["OnUpdate"] = VALE_SOO_ONUPDATE;
					-- #endif
				}),
				q(30200, {	-- In Ashen Webs
					["qg"] = 58503,	-- Anji Autumnlight
					--["coord"] = { ???, ???, VALE_OF_ETERNAL_BLOSSOMS },	-- TODO
					["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
					-- #if MOP
					["OnUpdate"] = VALE_SOO_ONUPDATE;
					-- #endif
				}),
				q(30293, {	-- In Enemy Hands
					["qg"] = 58471,	-- Kun Autumnlight
					["coord"] = { 56.6, 43.6, VALE_OF_ETERNAL_BLOSSOMS },
					["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
					-- #if MOP
					["OnUpdate"] = VALE_SOO_ONUPDATE;
					-- #endif
				}),
				q(31758, {	-- Laosy Scouting
					["qg"] = 58471,	-- Kun Autumnlight
					["coord"] = { 56.6, 43.6, VALE_OF_ETERNAL_BLOSSOMS },
					["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
					-- #if MOP
					["OnUpdate"] = VALE_SOO_ONUPDATE;
					-- #endif
				}),
				q(30239, {	-- Lao-Fe the Slavebinder
					["qg"] = 59338,	-- Che Wildwalker
					--["coord"] = { ???, ???, VALE_OF_ETERNAL_BLOSSOMS },	-- TODO
					["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
					-- #if MOP
					["OnUpdate"] = VALE_SOO_ONUPDATE;
					-- #endif
				}),
				q(30245, {	-- Lost Scouts
					["qg"] = 58920,	-- Kun Autumnlight
					["coord"] = { 21.3, 71.4, VALE_OF_ETERNAL_BLOSSOMS },
					["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
					-- #if MOP
					["OnUpdate"] = VALE_SOO_ONUPDATE;
					-- #endif
				}),
				q(30196, {	-- Lushroom Rush
					["qg"] = 58818,	-- Cook Tope
					["coord"] = { 33.8, 70.2, VALE_OF_ETERNAL_BLOSSOMS },
					["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
					-- #if MOP
					["OnUpdate"] = VALE_SOO_ONUPDATE;
					-- #endif
				}),
				q(30243, {	-- Mantid Under Fire
					["qg"] = 58920,	-- Kun Autumnlight
					["coord"] = { 21.3, 71.4, VALE_OF_ETERNAL_BLOSSOMS },
				}),
				q(30193, {	-- Meating Expectations
					["qg"] = 58818,	-- Cook Tope
					["coord"] = { 33.8, 70.2, VALE_OF_ETERNAL_BLOSSOMS },
					["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
					-- #if MOP
					["OnUpdate"] = VALE_SOO_ONUPDATE;
					-- #endif
				}),
				q(31242, {	-- Mistfall Village
					["qg"] = 58408,	-- Leven Dawnblade
					["coord"] = { 56.6, 43.6, VALE_OF_ETERNAL_BLOSSOMS },
					["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
					-- #if MOP
					["OnUpdate"] = VALE_SOO_ONUPDATE;
					-- #endif
				}),
				q(31245, {	-- Mistfall Village
					["qg"] = 59343,	-- Ren Firetongue
					--["coord"] = { ???, ???, VALE_OF_ETERNAL_BLOSSOMS },	-- TODO
					["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
					-- #if MOP
					["OnUpdate"] = VALE_SOO_ONUPDATE;
					-- #endif
				}),
				q(31249, {	-- Mistfall Village
					["qg"] = 58408,	-- Leven Dawnblade
					["coord"] = { 56.6, 43.6, VALE_OF_ETERNAL_BLOSSOMS },
					["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
					-- #if MOP
					["OnUpdate"] = VALE_SOO_ONUPDATE;
					-- #endif
				}),
				q(30287, {	-- Mogu Make Poor House Guests
					["qg"] = 58911,	-- Rook Stonetoe
					--["coord"] = { ???, ???, VALE_OF_ETERNAL_BLOSSOMS },	-- TODO
					["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
					-- #if MOP
					["OnUpdate"] = VALE_SOO_ONUPDATE;
					-- #endif
				}),
				q(31293, {	-- Mogu Make Poor House Guests
					["qg"] = 58911,	-- Rook Stonetoe
					--["coord"] = { ???, ???, VALE_OF_ETERNAL_BLOSSOMS },	-- TODO
					["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
					-- #if MOP
					["OnUpdate"] = VALE_SOO_ONUPDATE;
					-- #endif
				}),
				q(31295, {	-- Mogu within the Ruins of Guo-Lai
					["qg"] = 59338,	-- Che Wildwalker
					--["coord"] = { ???, ???, VALE_OF_ETERNAL_BLOSSOMS },	-- TODO
					["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
					-- #if MOP
					["OnUpdate"] = VALE_SOO_ONUPDATE;
					-- #endif
				}),
				q(30192, {	-- My Town, It's on Fire
					["qg"] = 58819,	-- Mayor Shiyo
					["coord"] = { 21.3, 71.4, VALE_OF_ETERNAL_BLOSSOMS },
					["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
					-- #if MOP
					["OnUpdate"] = VALE_SOO_ONUPDATE;
					-- #endif
				}),
				q(30288, {	-- My Town, It's On Fire Again
					["qg"] = 59336,	-- Mayor Shiyo
					--["coord"] = { ???, ???, VALE_OF_ETERNAL_BLOSSOMS },	-- TODO
					["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
					-- #if MOP
					["OnUpdate"] = VALE_SOO_ONUPDATE;
					-- #endif
				}),
				q(30444, {	-- No Reprieve
					["qg"] = 58919,	-- Anji Autumnlight
					["coord"] = { 21.4, 71.5, VALE_OF_ETERNAL_BLOSSOMS },
					["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
					-- #if MOP
					["OnUpdate"] = VALE_SOO_ONUPDATE;
					-- #endif
				}),
				q(30299, {	-- No Stone Unturned
					["qg"] = 59334,	-- Sun Tenderheart
					--["coord"] = { ???, ???, VALE_OF_ETERNAL_BLOSSOMS },	-- TODO
					["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
					-- #if MOP
					["OnUpdate"] = VALE_SOO_ONUPDATE;
					-- #endif
				}),
				q(30301, {	-- Offering a Warm Welcome
					["qg"] = 59332,	-- Leven Dawnblade
					--["coord"] = { ???, ???, VALE_OF_ETERNAL_BLOSSOMS },	-- TODO
					["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
					-- #if MOP
					["OnUpdate"] = VALE_SOO_ONUPDATE;
					-- #endif
				}),
				q(30298, {	-- Painting the Ruins Red
					["qg"] = 59332,	-- Leven Dawnblade
					--["coord"] = { ???, ???, VALE_OF_ETERNAL_BLOSSOMS },	-- TODO
					["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
					-- #if MOP
					["OnUpdate"] = VALE_SOO_ONUPDATE;
					-- #endif
				}),
				q(30231, {	-- Pomfruit Pickup
					["qg"] = 58818,	-- Cook Tope
					["coord"] = { 33.8, 70.2, VALE_OF_ETERNAL_BLOSSOMS },
					["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
					-- #if MOP
					["OnUpdate"] = VALE_SOO_ONUPDATE;
					-- #endif
				}),
				q(30235, {	-- Quid Pro Quo
					["qg"] = 59338,	-- Che Wildwalker
					--["coord"] = { ???, ???, VALE_OF_ETERNAL_BLOSSOMS },	-- TODO
					["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
					-- #if MOP
					["OnUpdate"] = VALE_SOO_ONUPDATE;
					-- #endif
					["groups"] = { i(87807) },	-- Stone of the Water Strider (QI!)
				}),
				q(30238, {	-- Return to Rest
					["qg"] = 59338,	-- Che Wildwalker
					--["coord"] = { ???, ???, VALE_OF_ETERNAL_BLOSSOMS },	-- TODO
					["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
					-- #if MOP
					["OnUpdate"] = VALE_SOO_ONUPDATE;
					-- #endif
				}),
				q(30261, {	-- Roll Club: Serpent's Spine
					["qg"] = 58704,	-- Kelari Featherfoot
					["coord"] = { 18.1, 63.5, VALE_OF_ETERNAL_BLOSSOMS },
				}),
				q(30292, {	-- Rude Awakenings
					["qg"] = 58471,	-- Kun Autumnlight
					["coord"] = { 56.6, 43.6, VALE_OF_ETERNAL_BLOSSOMS },
					["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
					-- #if MOP
					["OnUpdate"] = VALE_SOO_ONUPDATE;
					-- #endif
				}),
				q(30232, {	-- Ruffling Some Feathers
					["qg"] = 59338,	-- Che Wildwalker
					--["coord"] = { ???, ???, VALE_OF_ETERNAL_BLOSSOMS },	-- TODO
					["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
					-- #if MOP
					["OnUpdate"] = VALE_SOO_ONUPDATE;
					-- #endif
				}),
				q(30205, {	-- Runelocked
					["qg"] = 63266,	-- Sinan the Dreamer
					["coord"] = { 33.6, 40.6, VALE_OF_ETERNAL_BLOSSOMS },
					["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
					-- #if MOP
					["OnUpdate"] = VALE_SOO_ONUPDATE;
					-- #endif
				}),
				q(30206, {	-- Runes in the Ruins
					["qg"] = 63266,	-- Sinan the Dreamer
					["coord"] = { 33.6, 40.6, VALE_OF_ETERNAL_BLOSSOMS },
					["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
					-- #if MOP
					["OnUpdate"] = VALE_SOO_ONUPDATE;
					-- #endif
				}),
				q(30309, {	-- Set in Stone
					["qg"] = 58465,	-- Anji Autumnlight
					["coord"] = { 56.6, 43.6, VALE_OF_ETERNAL_BLOSSOMS },
					["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
					-- #if MOP
					["OnUpdate"] = VALE_SOO_ONUPDATE;
					-- #endif
				}),
				q(30385, {	-- Setting Sun Garrison
					["qg"] = 59338,	-- Che Wildwalker
					--["coord"] = { ???, ???, VALE_OF_ETERNAL_BLOSSOMS },	-- TODO
					["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
					-- #if MOP
					["OnUpdate"] = VALE_SOO_ONUPDATE;
					-- #endif
				}),
				q(31247, {	-- Setting Sun Garrison
					["qg"] = 59343,	-- Ren Firetongue
					--["coord"] = { ???, ???, VALE_OF_ETERNAL_BLOSSOMS },	-- TODO
					["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
					-- #if MOP
					["OnUpdate"] = VALE_SOO_ONUPDATE;
					-- #endif
				}),
				q(31250, {	-- Setting Sun Garrison
					["qg"] = 58408,	-- Leven Dawnblade
					["coord"] = { 56.6, 43.6, VALE_OF_ETERNAL_BLOSSOMS },
					["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
					-- #if MOP
					["OnUpdate"] = VALE_SOO_ONUPDATE;
					-- #endif
				}),
				q(31297, {	-- Setting Sun Garrison
					["qg"] = 59337,	-- Sun Tenderheart
					--["coord"] = { ???, ???, VALE_OF_ETERNAL_BLOSSOMS },	-- TODO
					["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
					-- #if MOP
					["OnUpdate"] = VALE_SOO_ONUPDATE;
					-- #endif
				}),
				q(30265, {	-- Sparkle in the Eye
					["qg"] = 59343,	-- Ren Firetongue
					--["coord"] = { ???, ???, VALE_OF_ETERNAL_BLOSSOMS },	-- TODO
					["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
					-- #if MOP
					["OnUpdate"] = VALE_SOO_ONUPDATE;
					-- #endif
				}),
				q(30190, {	-- Sprite Plight
					["qg"] = 58819,	-- Mayor Shiyo
					["coord"] = { 21.3, 71.4, VALE_OF_ETERNAL_BLOSSOMS },
					["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
					-- #if MOP
					["OnUpdate"] = VALE_SOO_ONUPDATE;
					-- #endif
				}),
				q(30191, {	-- Steer Clear of the Beer Here
					["qg"] = 58819,	-- Mayor Shiyo
					["coord"] = { 21.3, 71.4, VALE_OF_ETERNAL_BLOSSOMS },
					["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
					-- #if MOP
					["OnUpdate"] = VALE_SOO_ONUPDATE;
					-- #endif
				}),
				q(30308, {	-- Stone Hard Quilen
					["qg"] = 58465,	-- Anji Autumnlight
					["coord"] = { 56.6, 43.6, VALE_OF_ETERNAL_BLOSSOMS },
					["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
					-- #if MOP
					["OnUpdate"] = VALE_SOO_ONUPDATE;
					-- #endif
				}),
				q(30290, {	-- Stonebound Killers
					["qg"] = 58911,	-- Rook Stonetoe
					--["coord"] = { ???, ???, VALE_OF_ETERNAL_BLOSSOMS },	-- TODO
					["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
					-- #if MOP
					["OnUpdate"] = VALE_SOO_ONUPDATE;
					-- #endifss
				}),
				q(31760, {	-- Striking First
					["qg"] = 58465,	-- Anji Autumnlight
					["coord"] = { 56.6, 43.6, VALE_OF_ETERNAL_BLOSSOMS },
					["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
					-- #if MOP
					["OnUpdate"] = VALE_SOO_ONUPDATE;
					-- #endif
				}),
				q(30291, {	-- Stunning Display
					["qg"] = 59343,	-- Ren Firetongue
					--["coord"] = { ???, ???, VALE_OF_ETERNAL_BLOSSOMS },	-- TODO
					["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
					-- #if MOP
					["OnUpdate"] = VALE_SOO_ONUPDATE;
					-- #endif
				}),
				q(30242, {	-- Survival Ring: Blades
					["qg"] = 58743,	-- Yumi Goldenpaw
					["coord"] = { 18.4, 71.5, VALE_OF_ETERNAL_BLOSSOMS },
				}),
				q(30240, {	-- Survival Ring: Flame
					["qg"] = 58743,	-- Yumi Goldenpaw
					["coord"] = { 18.4, 71.5, VALE_OF_ETERNAL_BLOSSOMS },
				}),
				q(30204, {	-- That's Not a Rock!
					["qg"] = 58504,	-- Kun Autumnlight
					["coord"] = { 34.0, 38.2, VALE_OF_ETERNAL_BLOSSOMS },
					["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
					-- #if MOP
					["OnUpdate"] = VALE_SOO_ONUPDATE;
					-- #endif
				}),
				q(30225, {	-- The Ashweb Matriarch
					["qg"] = 58503,	-- Anji Autumnlight
					--["coord"] = { ???, ???, VALE_OF_ETERNAL_BLOSSOMS },	-- TODO
					["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
					-- #if MOP
					["OnUpdate"] = VALE_SOO_ONUPDATE;
					-- #endif
				}),
				q(30306, {	-- The Battle Ring
					["qg"] = 58962,	-- Hai-Me Heavyhands
					["coord"] = { 19.0, 75.4, VALE_OF_ETERNAL_BLOSSOMS },
					-- Wouter TODO: supposedly moved from Anji Autumnlight in 5.4.0
				}),
				q(30248, {	-- The Butcher
					["qg"] = 58920,	-- Kun Autumnlight
					["coord"] = { 21.3, 71.4, VALE_OF_ETERNAL_BLOSSOMS },
					["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
					-- #if MOP
					["OnUpdate"] = VALE_SOO_ONUPDATE;
					-- #endif
				}),
				q(30277, {	-- The Crumbling Hall
					["qg"] = 58919,	-- Anji Autumnlight
					["coord"] = { 21.4, 71.5, VALE_OF_ETERNAL_BLOSSOMS },
					["groups"] = {
						i(87790),	-- Ancient Guo-Lai Artifact (QI!)
					},
				}),
				q(30314, {	-- The Displaced Paleblade
					["qg"] = 59342,	-- He Softfoot
					--["coord"] = { ???, ???, VALE_OF_ETERNAL_BLOSSOMS },	-- TODO
					["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
					-- #if MOP
					["OnUpdate"] = VALE_SOO_ONUPDATE;
					-- #endif
				}),
				q(30307, {	-- The Eternal Vigil
					["qg"] = 58408,	-- Leven Dawnblade
					["coord"] = { 56.6, 43.6, VALE_OF_ETERNAL_BLOSSOMS },
					["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
					-- #if MOP
					["OnUpdate"] = VALE_SOO_ONUPDATE;
					-- #endif
				}),
				q(30302, {	-- The Imperion Threat
					["qg"] = 59332,	-- Leven Dawnblade
					--["coord"] = { ???, ???, VALE_OF_ETERNAL_BLOSSOMS },	-- TODO
					["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
					-- #if MOP
					["OnUpdate"] = VALE_SOO_ONUPDATE;
					-- #endif
				}),
				q(30300, {	-- The Key to Success
					["qg"] = 59334,	-- Sun Tenderheart
					--["coord"] = { ???, ???, VALE_OF_ETERNAL_BLOSSOMS },	-- TODO
					["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
					-- #if MOP
					["OnUpdate"] = VALE_SOO_ONUPDATE;
					-- #endif
				}),
				q(30313, {	-- The Moving Mists
					["qg"] = 59342,	-- He Softfoot
					--["coord"] = { ???, ???, VALE_OF_ETERNAL_BLOSSOMS },	-- TODO
					["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
					-- #if MOP
					["OnUpdate"] = VALE_SOO_ONUPDATE;
					-- #endif
				}),
				q(30237, {	-- The Pandaren Uprising Relived
					["qg"] = 59338,	-- Che Wildwalker
					--["coord"] = { ???, ???, VALE_OF_ETERNAL_BLOSSOMS },	-- TODO
					["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
					-- #if MOP
					["OnUpdate"] = VALE_SOO_ONUPDATE;
					-- #endif
				}),
				q(31248, {	-- The Ruins of Guo-Lai
					["qg"] = 58408,	-- Leven Dawnblade
					["coord"] = { 56.6, 43.6, VALE_OF_ETERNAL_BLOSSOMS },
					["minReputation"] = { FACTION_GOLDEN_LOTUS, HONORED },	-- CRIEVE NOTE: This opened at Honored for me.
					["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
					-- #if MOP
					["OnUpdate"] = VALE_SOO_ONUPDATE;
					-- #endif
				}),
				q(31294, {	-- The Ruins of Guo-Lai
					["qg"] = 59338,	-- Che Wildwalker
					--["coord"] = { ???, ???, VALE_OF_ETERNAL_BLOSSOMS },	-- TODO
					["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
					-- #if MOP
					["OnUpdate"] = VALE_SOO_ONUPDATE;
					-- #endif
				}),
				q(31296, {	-- The Ruins of Guo-Lai
					["qg"] = 59337,	-- Sun Tenderheart
					--["coord"] = { ???, ???, VALE_OF_ETERNAL_BLOSSOMS },	-- TODO
					["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
					-- #if MOP
					["OnUpdate"] = VALE_SOO_ONUPDATE;
					-- #endif
				}),
				q(30280, {	-- The Thunder Below
					["qg"] = 58919,	-- Anji Autumnlight
					["coord"] = { 21.4, 71.5, VALE_OF_ETERNAL_BLOSSOMS },
				}),
				q(30310, {	-- Thundering Skies
					["qg"] = 58465,	-- Anji Autumnlight
					["coord"] = { 56.6, 43.6, VALE_OF_ETERNAL_BLOSSOMS },
					["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
					-- #if MOP
					["OnUpdate"] = VALE_SOO_ONUPDATE;
					-- #endif
				}),
				q(30228, {	-- Troubling the Troublemakers
					["qg"] = 58503,	-- Anji Autumnlight
					--["coord"] = { ???, ???, VALE_OF_ETERNAL_BLOSSOMS },	-- TODO
					["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
					-- #if MOP
					["OnUpdate"] = VALE_SOO_ONUPDATE;
					-- #endif
				}),
				q(30249, {	-- Under the Setting Sun
					["qg"] = 58920,	-- Kun Autumnlight
					["coord"] = { 21.3, 71.4, VALE_OF_ETERNAL_BLOSSOMS },
					["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
					-- #if MOP
					["OnUpdate"] = VALE_SOO_ONUPDATE;
					-- #endif
				}),
				q(30341, {	-- Under Watchful Eyes
					["qg"] = 59342,	-- He Softfoot
					--["coord"] = { ???, ???, VALE_OF_ETERNAL_BLOSSOMS },	-- TODO
					["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
					-- #if MOP
					["OnUpdate"] = VALE_SOO_ONUPDATE;
					-- #endif
				}),
				q(31757, {	-- Unleashed Spirits
					["qg"] = 58465,	-- Anji Autumnlight
					["coord"] = { 56.6, 43.6, VALE_OF_ETERNAL_BLOSSOMS },
					["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
					-- #if MOP
					["OnUpdate"] = VALE_SOO_ONUPDATE;
					-- #endif
				}),
				q(30246, {	-- Upon the Ramparts
					["qg"] = 58503,	-- Anji Autumnlight
					--["coord"] = { ???, ???, VALE_OF_ETERNAL_BLOSSOMS },	-- TODO
					["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
					-- #if MOP
					["OnUpdate"] = VALE_SOO_ONUPDATE;
					-- #endif
				}),
				q(30234, {	-- Vicejaw
					["qg"] = 59343,	-- Ren Firetongue
					--["coord"] = { ???, ???, VALE_OF_ETERNAL_BLOSSOMS },	-- TODO
					["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
					-- #if MOP
					["OnUpdate"] = VALE_SOO_ONUPDATE;
					-- #endif
				}),
				q(30251, {	-- Vyraxxis, the Krik'thik Swarm-Lord
					["qg"] = 58503,	-- Anji Autumnlight
					--["coord"] = { ???, ???, VALE_OF_ETERNAL_BLOSSOMS },	-- TODO
					["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
					-- #if MOP
					["OnUpdate"] = VALE_SOO_ONUPDATE;
					-- #endif
				}),
				q(31131, {	-- Whitepetal Lake
					["qg"] = 58408,	-- Leven Dawnblade
					["coord"] = { 56.6, 43.6, VALE_OF_ETERNAL_BLOSSOMS },
					["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
					-- #if MOP
					["OnUpdate"] = VALE_SOO_ONUPDATE;
					-- #endif
				}),
				q(30285, {	-- Wu Kao Scouting Reports
					["qg"] = 59337,	-- Sun Tenderheart
					--["coord"] = { ???, ???, VALE_OF_ETERNAL_BLOSSOMS },	-- TODO
					["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
					-- #if MOP
					["OnUpdate"] = VALE_SOO_ONUPDATE;
					-- #endif
				}),
				q(30227, {	-- Wulon, the Granite Sentinel
					["qg"] = 58503,	-- Anji Autumnlight
					--["coord"] = { ???, ???, VALE_OF_ETERNAL_BLOSSOMS },	-- TODO
					["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
					-- #if MOP
					["OnUpdate"] = VALE_SOO_ONUPDATE;
					-- #endif
				}),
			})),
			n(QUESTS, {
				q(32011, {	-- A Celestial Task (A)
					["qg"] = 64032,	-- Sage Whiteheart
					["coord"] = { 84.6, 63.6, VALE_OF_ETERNAL_BLOSSOMS },
					["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					-- #if MOP
					["OnUpdate"] = VALE_SOO_ONUPDATE;
					-- #endif
				}),
				q(32010, {	-- A Celestial Task (H)
					["qg"] = 64001,	-- Sage Lotusbloom
					["coord"] = { 62.7, 23.3, VALE_OF_ETERNAL_BLOSSOMS },
					["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					-- #if MOP
					["OnUpdate"] = VALE_SOO_ONUPDATE;
					-- #endif
				}),
				q(31384, {	-- The Golden Lotus (A)
					["qg"] = 64031,	-- Xari the Kind
					["coord"] = { 84.2, 62.4, VALE_OF_ETERNAL_BLOSSOMS },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
				}),
				q(31385, {	-- The Golden Lotus (H)
					["qg"] = 64007,	-- Weng the Merciful
					["coord"] = { 63.0, 22.2, VALE_OF_ETERNAL_BLOSSOMS },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
				}),
				q(31387, {	-- Understanding The Shado-Pan (A)
					["qg"] = 64030,	-- Lao Lang
					["coord"] = { 84.4, 61.6, VALE_OF_ETERNAL_BLOSSOMS },
					["timeline"] = { ADDED_5_0_4, REMOVED_5_1_0 },	-- CRIEVE NOTE: Check this at Revered
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
				}),
				q(31389, {	-- Understanding The Shado-Pan (H)
					["qg"] = 64002,	-- Sang-Bo
					["coord"] = { 63.0, 21.2, VALE_OF_ETERNAL_BLOSSOMS },
					["timeline"] = { ADDED_5_0_4, REMOVED_5_1_0 },	-- CRIEVE NOTE: Check this at Revered
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
				}),
			}),
			n(RARES, {
				["description"] = "These aren't really rares, they're elite quest mobs that are only available on certain days when their respective quest chain is active.",
				["groups"] = {
					n(58778, {	-- Aetha <Spirit of the Golden Winds>
						["coord"] = { 35.0, 89.9, VALE_OF_ETERNAL_BLOSSOMS },
						-- #if ANYCLASSIC
						["crs"] = { 244975 },	-- Aetha <Spirit of the Golden Winds>
						-- #endif
					}),
					n(58949, {	-- Bai-Jin the Butcher <Shao-Tien Imperion>
						["coords"] = {
							{ 17.0, 48.7, VALE_OF_ETERNAL_BLOSSOMS },
							-- #if ANYCLASSIC
							{ 15.36, 25.10, VALE_OF_ETERNAL_BLOSSOMS },
							-- #endif
						},
						-- #if ANYCLASSIC
						["crs"] = { 246386 },	-- Bai-Jin the Butcher <Shao-Tien Imperion>
						-- #endif
					}),
					n(63695, {	-- Baolai the Immolator <Shao-Tien Imperion>
						["coord"] = { 28.7, 43.3, VALE_OF_ETERNAL_BLOSSOMS },
						-- #if ANYCLASSIC
						["crs"] = { 245163 },	-- Baolai the Immolator <Shao-Tien Imperion>
						-- #endif
					}),
					n(58474, {	-- Bloodtip <Ashweb Matriarch>
						["coord"] = { 75.8, 47.5, VALE_OF_ETERNAL_BLOSSOMS_GUO_LAI_HALLS },
						-- #if ANYCLASSIC
						["crs"] = { 245926 },	-- Bloodtip <Ashweb Matriarch>
						-- #endif
					}),
					n(58768, {	-- Cracklefang
						["coord"] = { 46.4, 59.3, VALE_OF_ETERNAL_BLOSSOMS },
						-- #if ANYCLASSIC
						["crs"] = { 246178 },	-- Cracklefang
						-- #endif
					}),
					n(62881, {	-- Gaohun the Soul-Severer <Shao-Tien Imperion>
						["coord"] = { 53.1, 59.3, VALE_OF_ETERNAL_BLOSSOMS_GUO_LAI_HALLS },
						-- #if ANYCLASSIC
						["crs"] = { 245153 },	-- Gaohun the Soul-Severer <Shao-Tien Imperion>
						-- #endif
					}),
					n(63101, {	-- General Temuja <The Soul-Slaver>
						["coords"] = {
							{ 26.3, 51.1, VALE_OF_ETERNAL_BLOSSOMS },
							{ 28.9, 56.3, VALE_OF_ETERNAL_BLOSSOMS },
						},
						-- #if ANYCLASSIC
						["crs"] = { 246242 },	-- General Temuja <The Soul-Slaver>
						-- #endif
					}),
					n(62880, {	-- Gochao the Ironfist <Shao-Tien Imperion>
						["coord"] = { 26.86, 13.08, VALE_OF_ETERNAL_BLOSSOMS },
						-- #if ANYCLASSIC
						["crs"] = { 246031 },	-- Gochao the Ironfist <Shao-Tien Imperion>
						-- #endif
					}),
					n(63691, {	-- Huo-Shuang <Shao-Tien Imperion>
						["coords"] = {
							{ 63.92, 19.07, VALE_OF_ETERNAL_BLOSSOMS_GUO_LAI_HALLS },
							{ 63.98, 19.19, VALE_OF_ETERNAL_BLOSSOMS_GUO_LAI_HALLS },
						},
						-- #if ANYCLASSIC
						["crs"] = { 246032 },	-- Huo-Shuang <Shao-Tien Imperion>
						-- #endif
					}),
					n(63978, {	-- Kri'chon <The Corpse-Reaver>
						["coord"] = { 6.27, 58.5, VALE_OF_ETERNAL_BLOSSOMS },
						-- #if ANYCLASSIC
						["crs"] = { 246383 },	-- Kri'chon <The Corpse-Reaver>
						-- #endif
					}),
					n(58771, {	-- Quid <Spirit of the Misty Falls>
						["coord"] = { 66.4, 39.3, VALE_OF_ETERNAL_BLOSSOMS },
						-- #if ANYCLASSIC
						["crs"] = { 244995 },	-- Quid <Spirit of the Misty Falls>
						-- #endif
					}),
					n(63240, {	-- Shadowmaster Sydow <The Soul-Gatherer>
						["coord"] = { 30.5, 78.4, VALE_OF_ETERNAL_BLOSSOMS },
						-- #if ANYCLASSIC
						["crs"] = { 246246 },	-- Shadowmaster Sydow <The Soul-Gatherer>
						-- #endif
					}),
					n(58817, {	-- Spirit of Lao-Fe <The Slavebinder>
						["coord"] = { 47.4, 65.6, VALE_OF_ETERNAL_BLOSSOMS },
						-- #if ANYCLASSIC
						["crs"] = { 246479 },	-- Spirit of Lao-Fe <The Slavebinder>
						-- #endif
					}),
					n(58769, {	-- Vicejaw
						["coord"] = { 37.4, 50.9, VALE_OF_ETERNAL_BLOSSOMS },
						-- #if ANYCLASSIC
						["crs"] = { 246176 },	-- Vicejaw
						-- #endif
					}),
					n(63977, {	-- Vyraxxis <Krik'thik Swarm-Lord>
						["coord"] = { 7.92, 33.8, VALE_OF_ETERNAL_BLOSSOMS },
						-- #if ANYCLASSIC
						["crs"] = { 246384 },	-- Vyraxxis <Krik'thik Swarm-Lord>
						-- #endif
					}),
					n(63510, {	-- Wulon <The Granite Sentinel>
						["coords"] = {
							{ 45.3, 76.3, VALE_OF_ETERNAL_BLOSSOMS },
							{ 40.2, 77.1, VALE_OF_ETERNAL_BLOSSOMS },
							-- #if ANYCLASSIC
							{ 76.8, 72.0, VALE_OF_ETERNAL_BLOSSOMS_GUO_LAI_HALLS },
							-- #endif
						},
						["crs"] = {
							63509,	-- Wulon <The Granite Sentinel>
							64669,	-- Wulon <The Granite Sentinel>
							64671,	-- Wulon <The Granite Sentinel>
							64670,	-- Wulon <The Granite Sentinel>
						},
					}),
				},
			}),
			n(VENDORS, {
				n(59908, {	-- Jaluu the Generous <The Golden Lotus Quartermaster>
					["coords"] = {
						{ 84.2, 62.7, VALE_OF_ETERNAL_BLOSSOMS },	-- Alliance
						{ 63.2, 22.0, VALE_OF_ETERNAL_BLOSSOMS },	-- Horde
					},
					["groups"] = bubbleDownClassicRep(FACTION_GOLDEN_LOTUS, {
						{		-- Neutral
							i(89071),	-- Alani's Inflexible Ring
							i(89527),	-- Amulet of Swirling Mists
							i(89070),	-- Anji's Keepsake
							i(89423),	-- Battleguard of Guo-Lai
							i(89642),	-- Bracers of Eternal Resolve
							i(89648),	-- Bracers of Inner Light
							i(89430),	-- Breastplate of the Golden Pagoda
							i(89421),	-- Cuirass of the Twin Monoliths
							i(89420),	-- Dawnblade's Chestguard
							i(89531),	-- Gorget of Usurped Kings
							i(89341),	-- Imperion Spaulders
							i(89663),	-- Leggings of Twisted Vines
							i(89073),	-- Leven's Circle of Hope
							i(89340),	-- Mantle of the Golden Sun
							i(89343),	-- Mindbender Shoulders
							i(89432, {	-- Mistfall Robes
								["cost"] = 5019100,	-- 501g 91s
							}),
							i(89232),	-- Mogu Rune of Paralysis
							i(89528),	-- Necklace of Jade Pearls
							i(89347),	-- Paleblade Shoulderguards
							i(89529),	-- Pendant of Endless Inquisition
							i(89069),	-- Ring of the Golden Stair
							i(89434),	-- Robe of the Five Sisters
							i(89429),	-- Robes of the Setting Sun
							i(89649),	-- Serrated Forearm Guards
							i(89346),	-- Shoulders of Autumnlight
							i(89072),	-- Simple Harmonious Ring
							i(89662),	-- Snowpack Waders
							i(89431, {	-- Softfoot Silentwrap
								["cost"] = 5001400,	-- 500g 14s
							}),
							i(89345),	-- Stonetoe Spaulders
							i(89653),	-- Surehand Grips
							i(89339),	-- Tenderheart Shoulders
							i(89643),	-- Tranquility Bindings
							i(89530),	-- Triumphant Conqueror's Chain
							i(89433),	-- Vestments of Thundering Skies
							i(89652),	-- Wandering Friar's Gloves
							i(89342),	-- Whitepetal Shouldergarb
							i(89344),	-- Windwalker Spaulders
						}, {	-- Friendly
						}, {	-- Honored
							i(86235),	-- Pattern: Angerhide Leg Armor (RECIPE!)
							i(86237),	-- Pattern: Chestguard of Earthen Harmony (RECIPE!)
							i(86371),	-- Pattern: Gloves of Creation (RECIPE!)
							i(86273),	-- Pattern: Gloves of Earthen Harmony (RECIPE!)
							i(86376),	-- Pattern: Greater Cerulean Spellthread (RECIPE!)
							i(86375),	-- Pattern: Greater Pearlescent Spellthread (RECIPE!)
							i(86274),	-- Pattern: Greyshadow Chestguard (RECIPE!)
							i(86275),	-- Pattern: Greyshadow Gloves (RECIPE!)
							i(86276),	-- Pattern: Ironscale Leg Armor (RECIPE!)
							i(86277),	-- Pattern: Lifekeeper's Gloves (RECIPE!)
							i(86278),	-- Pattern: Lifekeeper's Robe (RECIPE!)
							i(86370),	-- Pattern: Robes of Creation (RECIPE!)
							i(86295),	-- Pattern: Shadowleather Leg Armor (RECIPE!)
							i(86369),	-- Pattern: Spelltwister's Gloves (RECIPE!)
							i(86368),	-- Pattern: Spelltwister's Grand Robe (RECIPE!)
							i(86308),	-- Pattern: Wildblood Gloves (RECIPE!)
							i(86309),	-- Pattern: Wildblood Vest (RECIPE!)
						}, {	-- Revered
							i(93215),	-- Grand Commendation of the Golden Lotus
						}, {	-- Exalted
							i(89797),	-- Golden Lotus Tabard
							i(87781, {	-- Reins of the Azure Riding Crane (MOUNT!)
								["cost"] = 5000000,	-- 500g
							}),
							i(87782, {	-- Reins of the Golden Riding Crane (MOUNT!)
								["cost"] = 25000000,	-- 2,500g
							}),
							i(87783, {	-- Reins of the Regal Riding Crane (MOUNT!)
								["cost"] = 15000000,	-- 1,500g
							}),
						},
					}),
				}),
			}),
			n(ZONE_DROPS, {
				applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(103624, {	-- Treasures of the Vale
					["description"] = "Contains a number of Pandarian crafting reagents, herbs, and ore.",
					["timeline"] = { ADDED_5_4_0 },
					["crs"] = {
						58778,	-- Aetha
						58949,	-- Bai-Jin the Butcher
						63695,	-- Baolai the Immolator
						58474,	-- Bloodtip
						58768,	-- Cracklefang
						62881,	-- Gaohun the Soul-Severer
						63101,	-- General Temuja
						62880,	-- Gochao the Ironfist
						63691,	-- Huo-Shuang
						63978,	-- Kri'chon
						58771,	-- Quid
						63240,	-- Shadowmaster Sydow
						58817,	-- Spirit of Lao-Fe
						58769,	-- Vicejaw
						63977,	-- Vyraxxis
						63509,	-- Wulon
					},
				})),
			}),
		},
	}),
}))));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.MOP, bubbleDownSelf({ ["timeline"] = { ADDED_5_0_4 } }, {
	header(HEADERS.Faction, FACTION_GOLDEN_LOTUS, {
		n(QUESTS, {
			q(31652),	-- Roll Club: Serpent's Spine Tracking Quest
		}),
	}),
})));
