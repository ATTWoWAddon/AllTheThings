---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(DRAGON_ISLES, bubbleDown({ ["timeline"] = { ADDED_10_0_2_LAUNCH } }, {
	m(THE_AZURE_SPAN, {
		n(WORLD_QUESTS, {
			["sourceQuests"] = {
				71232,	-- Renown of the Dragon Isles
				DF_ACCOUNT_CAMPAIGN_QUEST,
			},
			["groups"] = sharedData({ ["isWorldQuest"] = true, }, {
				--[[
				q(QUEST, {	-- NAME
					["coord"] = { XX, YY, THE_AZURE_SPAN },
				}),
				]]--
				petbattle(q(74836, {	-- A New Vocation
					["coord"] = { 19.52, 24.61, THE_AZURE_SPAN },
					["timeline"] = { ADDED_10_0_7 },
				})),
				q(70629, {	-- Assaulting the Shore
					["coord"] = { 9.6, 42.4, THE_AZURE_SPAN },
				}),
				q(71212, {	-- Attackin' the Brackenhide
					["coord"] = { 12.0, 33.4, THE_AZURE_SPAN },
				}),
				q(70639, {	-- Azure Banners
					["coord"] = { 70.3, 22.7, THE_AZURE_SPAN },
				}),
				q(69942, {	-- Brackenhide Mysteries
					["coord"] = { 18.4, 36.4, THE_AZURE_SPAN },
				}),
				q(70529, {	-- Bring Them Home
					["coord"] = { 33.8, 46.7, THE_AZURE_SPAN },
				}),
				q(70016, {	-- Calming the Land
					["coord"] = { 72.5, 54.0, THE_AZURE_SPAN },
				}),
				q(70720, {	-- Can't Have These
					["coord"] = { 12.4, 42.4, THE_AZURE_SPAN },
					["groups"] = {
						i(199704),	-- Artifact Fragment (QI!)
						i(199692),	-- Artifact Locator (QI!)
					},
				}),
				q(70787, {	-- Caught In a Dusk Storm
					["coord"] = { 27.3, 45.7, THE_AZURE_SPAN },
					["groups"] = {
						i(199917),	-- Dragon Bone Fragment (QI!)
					},
				}),
				q(70631, {	-- Clearing the Skies
					["coord"] = { 53.1, 32.8, THE_AZURE_SPAN },
				}),
				q(70068, {	-- Cobalt Catastrophe
					["coord"] = { 49.3, 23.5, THE_AZURE_SPAN },
				}),
				q(70440, {	-- Dead Eyes
					["coord"] = { 33.6, 44.4, THE_AZURE_SPAN },
				}),
				q(70015, {	-- Decay Cleanup
					["coord"] = { 19.9, 36.3, THE_AZURE_SPAN },
				}),
				petbattle(q(74835, {	-- Enok the Stinky
					["coord"] = { 23.41, 53.56, THE_AZURE_SPAN },
					["timeline"] = { ADDED_10_0_7 },
				})),
				q(70612, {	-- Feed Three-Falls
					["coord"] = { 17.8, 27.6, THE_AZURE_SPAN },
					["groups"] = {
						i(194030),	-- Moose Flank (QI!)
						i(193219),	-- Vorquin Meat (QI!)
					},
				}),
				q(70152, {	-- Fishing Frenzy!
					["coord"] = { 70.8, 35.3, THE_AZURE_SPAN },
					["groups"] = {
						i(200530),	-- Sweet Steamed Meat (QI!)
					},
				}),
				q(72022, {	-- Fishing Frenzy!
					["coord"] = { 58.7, 34.5, THE_AZURE_SPAN },
					["groups"] = {
						i(200756),	-- Frozen Steak (QI!)
					},
				}),
				q(70064, {	-- For Imbu!
					["coord"] = { 58.4, 66.4, THE_AZURE_SPAN },
					["groups"] = {
						i(199646),	-- Imbu Tuskarr Bandages (QI!)
					},
				}),
				q(69941, {	-- Frozen Victims
					["coord"] = { 50.9, 60.5, THE_AZURE_SPAN },
				}),
				q(70112, {	-- Furbolg Threat
					["coord"] = { 60.2, 52.8, THE_AZURE_SPAN }
				}),
				q(70011, {	-- Furry Friends
					["coord"] = { 58.2, 52.7, THE_AZURE_SPAN },
				}),
				q(70071, {	-- Gathering the Magic
					["coord"] = { 37.6, 61.0, THE_AZURE_SPAN },
				}),
				q(70047, {	-- Icy Prisons
					["coord"] = { 58.6, 43.7, THE_AZURE_SPAN }
				}),
				q(70622, {	-- Resupply Three-Falls
					["coord"] = { 20.1, 27.8, THE_AZURE_SPAN },
					["groups"] = {
						i(199178),	-- Bronze Horn Flower (QI!)
						i(199176),	-- Thick Bear Fur (QI!)
						i(199180),	-- Dragon's Blood Berry (QI!)
						i(199179),	-- Dragon Foil (QI!)
					},
				}),
				q(70035, {	-- Ruriq's River Rapids Ride
					["coord"] = { 44.55, 54.7, THE_AZURE_SPAN }
				}),
				q(70625, {	-- Spellforged Creations
					["coord"] = { 49.1, 18.6, THE_AZURE_SPAN },
				}),
				petbattle(q(71202, {	-- Mini Manafiend Melee
					["coord"] = { 40.6, 59.1, THE_AZURE_SPAN }
				})),
				petbattle(q(71145, {	-- The Grand Master
					["coord"] = { 13.5, 50.0, THE_AZURE_SPAN },
				})),
				q(70037, {	-- Unpowered Tools [Cobalt]
					["coord"] = { 47.4, 24.6, THE_AZURE_SPAN },
				}),
				pvp(q(72019, {	-- Seeing through the Enemy: Nezascar
					["coord"] = { 29.7, 29.8, THE_AZURE_SPAN },
				})),
				pvp(q(70439, {	-- Wild Arcana [Cobalt]
					["coord"] = { 51.3, 24.6, THE_AZURE_SPAN },
				})),
			}),
		}),
	}),
})));
