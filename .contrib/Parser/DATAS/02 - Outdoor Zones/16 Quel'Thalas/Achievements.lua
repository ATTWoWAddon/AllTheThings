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
			ach(62188, {	-- More Than Just Their Roots
				-- TODO idk where else to put this
				["groups"] = {
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
				},
			}),
			ach(61916),	-- Rage of the Ren'dorei
			ach(60891, {	-- The Crimson Rogue
				["timeline"] = { ADDED_12_0_X_LAUNCH },
			}),
		}),
	},
}));
