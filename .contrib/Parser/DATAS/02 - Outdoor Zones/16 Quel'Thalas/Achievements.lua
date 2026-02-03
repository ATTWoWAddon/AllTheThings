---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(MAP.MIDNIGHT.QUELTHALAS, {
	["timeline"] = { ADDED_12_0_0 },
	["groups"] = {
		n(ACHIEVEMENTS, {
			ach(41805, {	-- Arator's Journey
				["timeline"] = { ADDED_12_0_X_LAUNCH },
			}),
			ach(62188), 	-- More Than Just Their Roots (automated) -- TODO idk where else to put this
			ach(62386, {	-- Light Up the Night
				i(252011),	-- Brilliant Petalwing (MOUNT)
			}),
			ach(62110, {	-- Loremaster of Midnight
				i(FINERY_FUNDS),
			}),
			ach(42045),	-- Midnight
			ach(62192, {	-- Midnight Diplomat
				i(FINERY_FUNDS),
			}),
			ach(61859),	-- Midnight Flight Master
			ach(62104),	-- Midnight Lore Hunter
			ach(61839),	-- Midnight Pathfinder
			ach(62057),	-- Midnight: The Highest Peaks
			ach(61910),	-- Mrglgrgl of Grglmrgl
			ach(60891, {	-- The Crimson Rogue
				["timeline"] = { ADDED_12_0_X_LAUNCH },
			}),
			ach(42117),	-- The War of Light and Shadow
			-- EXO NOTE: Abundance Achievements. Dunno what it is yet but they happen across all zones from what I can see. Dunno if a new Header for the event is warranted or just use [maps]. Or both...
			ach(61941),	-- Abundance: Acolyte of a Glorious Entity
			ach(62341),	-- Abundance: Ain't Dun Till It's Dun
			ach(62266),	-- Abundance: An Acolyte no Longer
			ach(62338),	-- Abundance: Artisan
			ach(61939),	-- Abundance: Artisan of Floaret	// Note: Harandar
			ach(61938),	-- Abundance: Artisan of Loaknit	// Note: Zul'Aman
			ach(61940),	-- Abundance: Artisan of Loanite	// Note: Voidstorm
			ach(61937),	-- Abundance: Artisan of Mausoloa	// Note: Eversong Woods
			ach(42283),	-- Abundance: Azeroth Runs on Dundun
			ach(62336),	-- Abundance: Contributer
			ach(62331),	-- Abundance: Drops of Prosperity
			ach(62332),	-- Abundance: Dundun's Favored
			ach(62339),	-- Abundance: Gambler
			ach(62326),	-- Abundance: Golden Opportunities
			ach(62333),	-- Abundance: Harvester
			ach(62340),	-- Abundance: Investor
			ach(62324),	-- Abundance: Loa of all Trades
			ach(62330),	-- Abundance: One Bite at a Time
			ach(62337),	-- Abundance: Professional
			ach(62268),	-- Abundance: Professionals Only
			ach(61943),	-- Abundance: Prosperous Plentitude!	// Note: Eversong Woods, Zul'Aman, Harandar, Voidstorm
			ach(62329),	-- Abundance: Squash the Competition
			ach(62325),	-- Abundance: Treasures Aplenty
			ach(61681),	-- Abundance: You Should See Him in a Crown
		}),
		n(SPECIAL, { -- TODO idk where else to put this without making new 'special.lua' files in 2 zones to source one npc each
			n(245103, {	-- Chonon
				["coord"] = { 58.4, 30.0, MOUNT_HYJAL },
			}),
			n(245107, {	-- Fuunid
				["coord"] = { 34.2, 52.6, AMIRDRASSIL },
			}),
			n(251936, {	-- Kawayn
				["coord"] = { 50.8, 42.6, GRIZZLY_HILLS },
			}),
			n(245105, {	-- Or'jan
				["coord"] = { 33.2, 66.8, DARKSHORE },
			}),
			n(245106, {	-- Zhakir
				["coord"] = { 46.6, 35.6, VALSHARAH },
			}),
		})
	},
}));
