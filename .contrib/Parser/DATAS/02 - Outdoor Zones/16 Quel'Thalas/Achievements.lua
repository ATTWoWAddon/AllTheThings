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
			skyriding(ach(61584, {	-- Midnight Glyph Hunter
				-- Meta Achievement
				["sym"] = {{"meta_achievement",
					61576,	-- Eversong Woods Glyph Hunter
					61582,	-- Harandar Glyph Hunter
					61583,	-- Voidstorm Glyph Hunter
					61581,	-- Zul'Aman Glyph Hunter
				}},
				["groups"] = {
					i(257145),	-- Crimson Dragonhawk (MOUNT)
				}
			})),
			ach(62104),	-- Midnight Lore Hunter
			ach(61839),	-- Midnight Pathfinder
			ach(61091, {	-- Midnight Safari
				i(258189),	-- Do, child of Filo
			}),
			ach(62057),	-- Midnight: The Highest Peaks
			ach(61910),	-- Mrglgrgl of Grglmrgl
			ach(60891, {	-- The Crimson Rogue
				["timeline"] = { ADDED_12_0_X_LAUNCH },
			}),
			ach(61854, {	-- The Midnight Explorer
				-- Meta Achievement
				["sym"] = {{"meta_achievement",
					61855,	-- Explore Eversong Woods
					61520,	-- Explore Harandar
					61857,	-- Explore Voidstorm
					61856,	-- Explore Zul'Aman
				}},
			}),
			ach(42117),	-- The War of Light and Shadow
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
