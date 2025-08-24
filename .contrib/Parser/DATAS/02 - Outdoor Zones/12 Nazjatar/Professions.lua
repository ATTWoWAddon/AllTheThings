---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(NAZJATAR, bubbleDownSelf({ ["timeline"] = { ADDED_8_2_0 } }, {
	n(PROFESSIONS, {
		prof(ALCHEMY, {
			["crs"] = {
				153811, -- Instructor Okanu <Profession Trainer> [A]
				154393, -- Narv <Profession Trainer> [H]
			},
			["coords"] = {
				{ 38.0, 53.2, NAZJATAR },
				{ 49.2, 61.6, NAZJATAR },
			},
			["groups"] = NAZJATAR_ALCHEMY,
		}),
		prof(BLACKSMITHING, {
			["crs"] = {
				153817, -- Instructor Alikana <Profession Trainer> [A]
				154321, -- Jada <Profession Trainer> [H]
			},
			["coords"] = {
				{ 38.0, 53.6, NAZJATAR },
				{ 49.0, 61.6, NAZJATAR },
			},
			["groups"] = NAZJATAR_BLACKSMITHING,
		}),
		prof(COOKING, {
			["crs"] = {
				154257, -- Instructor Ulooaka <Profession Trainer> [A]
				154408, -- Rolm <Profession Trainer> [H]
			},
			["coords"] = {
				{ 38.0, 53.0, NAZJATAR },
				{ 49.2, 61.8, NAZJATAR },
			},
			["groups"] = NAZJATAR_COOKING,
		}),
		prof(ENCHANTING, {
			["crs"] = {
				153811, -- Instructor Okanu <Profession Trainer> [A]
				154393, -- Narv <Profession Trainer> [H]
			},
			["coords"] = {
				{ 38.0, 53.2, NAZJATAR },
				{ 49.2, 61.6, NAZJATAR },
			},
			["groups"] = NAZJATAR_ENCHANTING,
		}),
		prof(ENGINEERING, {
			["crs"] = {
				153817, -- Instructor Alikana <Profession Trainer> [A]
				154321, -- Jada <Profession Trainer> [H]
			},
			["coords"] = {
				{ 38.0, 53.6, NAZJATAR },
				{ 49.0, 61.6, NAZJATAR },
			},
			["groups"] = NAZJATAR_ENGINEERING,
		}),
		prof(HERBALISM, {
			["crs"] = {
				154257, -- Instructor Ulooaka <Profession Trainer> [A]
				154408, -- Rolm <Profession Trainer> [H]
			},
			["coords"] = {
				{ 38.0, 53.0, NAZJATAR },
				{ 49.2, 61.8, NAZJATAR },
			},
			["groups"] = NAZJATAR_HERBALISM,
		}),
		prof(INSCRIPTION, {
			["crs"] = {
				153811, -- Instructor Okanu <Profession Trainer> [A]
				154393, -- Narv <Profession Trainer> [H]
			},
			["coords"] = {
				{ 38.0, 53.2, NAZJATAR },
				{ 49.2, 61.6, NAZJATAR },
			},
			["groups"] = NAZJATAR_INSCRIPTION,
		}),
		prof(JEWELCRAFTING, {
			["crs"] = {
				153811, -- Instructor Okanu <Profession Trainer> [A]
				154393, -- Narv <Profession Trainer> [H]
			},
			["coords"] = {
				{ 38.0, 53.2, NAZJATAR },
				{ 49.2, 61.6, NAZJATAR },
			},
			["groups"] = NAZJATAR_JEWELCRAFTING,
		}),
		prof(LEATHERWORKING, {
			["crs"] = {
				153817, -- Instructor Alikana <Profession Trainer> [A]
				154321, -- Jada <Profession Trainer> [H]
			},
			["coords"] = {
				{ 38.0, 53.6, NAZJATAR },
				{ 49.0, 61.6, NAZJATAR },
			},
			["groups"] = NAZJATAR_LEATHERWORKING,
		}),
		prof(MINING, {
			["crs"] = {
				154257, -- Instructor Ulooaka <Profession Trainer> [A]
				154408, -- Rolm <Profession Trainer> [H]
			},
			["coords"] = {
				{ 38.0, 53.0, NAZJATAR },
				{ 49.2, 61.8, NAZJATAR },
			},
			["groups"] = NAZJATAR_MINING,
		}),
		prof(SKINNING, {
			q(56565, {	-- Hanging by a Thread [A]
				["provider"] = { "i", 169767 },	-- Deteriorating Cragscales
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					recipe(302016),	-- Skinning Technique: Cragscale (Rank 3)
				},
			}),
			q(56566, {	-- Hanging by a Thread [H]
				["provider"] = { "i", 169779 },	-- Deteriorating Cragscales
				["races"] = HORDE_ONLY,
				["groups"] = {
					recipe(302016),	-- Skinning Technique: Cragscale (Rank 3)
				},
			}),
			q(56562, {	-- The Problem with Shrinkage [A]
				["provider"] = { "i", 169775 },	-- Shriveled Leather Hide
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					recipe(302011),	-- Skinning Technique: Dredged Leather (Rank 3)
				},
			}),
			q(56563, {	-- The Problem with Shrinkage [H]
				["provider"] = { "i", 169772 },	-- Shriveled Leather Hide
				["races"] = HORDE_ONLY,
				["groups"] = {
					recipe(302011),	-- Skinning Technique: Dredged Leather (Rank 3)
				},
			}),
		}),
		prof(TAILORING, {
			["crs"] = {
				153817, -- Instructor Alikana <Profession Trainer> [A]
				154321, -- Jada <Profession Trainer> [H]
			},
			["coords"] = {
				{ 38.0, 53.6, NAZJATAR },
				{ 49.0, 61.6, NAZJATAR },
			},
			["groups"] = NAZJATAR_TAILORING,
		}),
	}),
})));
