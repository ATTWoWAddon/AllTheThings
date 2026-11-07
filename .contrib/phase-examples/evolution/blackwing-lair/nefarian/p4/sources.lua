-- Comparison excerpt (P4 / Option A): direct BWL records for the same sampled head and weapons.
-- The four phased contexts use JSON scopes; the ordinary Retail default reads no phase JSON.
-- This slice omits the same unrelated metadata/prerequisites, rewards and caches as P1/P2.1.
-- Literal race lists and timeline strings resolve the pinned constants for each selected context.
return {
    inst(742, { -- Blackwing Lair
        progressionKey = "raid.bwl.common",
        provider = { "o", 179879 }, -- Orb of Command
        timeline = { "added 1.6.0.4500" },
        groups = {
            e(1536, { -- Original Nefarian: ordinary Classic-compatible layout
                flavors = { "progression", "anniversary", "era" },
                progressionKey = "raid.bwl.original",
                crs = { 11583, 10162 }, -- Nefarian / Lord Victor Nefarius
                groups = {
                    i(19003, { -- Head of Nefarian
                        races = { 1, 3, 4, 7 },
                    }),
                    i(19364), -- Ashkandi, Greatsword of the Brotherhood (original)
                },
            }),
            e(1536, { -- Original Nefarian: ordinary Retail layout and race restriction
                flavors = { "retail" },
                progressionKey = "raid.bwl.original",
                crs = { 11583, 10162 },
                groups = {
                    i(19003, { -- Head of Nefarian
                        races = { 1, 3, 4, 7, 11, 22, 25, 29, 30, 32, 34, 37, 52, 85, 86 },
                    }),
                    i(19364), -- Ashkandi, Greatsword of the Brotherhood (original)
                },
            }),
            d(9, { -- Original 40-player history, retained only in SoD
                flavors = { "sod" },
                progressionKey = "raid.bwl.original", -- Explicitly disabled in SoD's policy
                timeline = { "removed 1.15.4.56738" },
                groups = {
                    e(1536, { -- Original Nefarian; keep the history ancestry
                        crs = { 11583, 10162 },
                        groups = {
                            i(19003, { -- Head of Nefarian
                                races = { 1, 3, 4, 7 },
                            }),
                            i(19364), -- Ashkandi, Greatsword of the Brotherhood (original)
                        },
                    }),
                },
            }),
            d(201, { -- DIFFICULTY.SOD.PLAYER20: separate reworked acquisition route
                flavors = { "sod" },
                progressionKey = "raid.bwl.sod20",
                timeline = { "added 1.15.4.56738" },
                groups = {
                    e(1536, { -- Reworked Nefarian
                        crs = { 11583, 10162 },
                        groups = {
                            i(19003), -- Head of Nefarian; no invented race restriction
                            i(230818), -- Ashkandi, Greatsword of the Brotherhood (SoD)
                        },
                    }),
                },
            }),
        },
    }),
}
