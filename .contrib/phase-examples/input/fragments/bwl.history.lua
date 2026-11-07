-- Authoring input (B): removed original Nefarian and book layout selected for SoD history; edit only if choosing B.
-- P4: describes the source directly, after removing legacy phase writers and flavor guards.
return {
    progressionKey = "raid.bwl.original",  -- Original route; SoD explicitly disables this scope.
    groups = {  -- Inherit the envelope's scope without generating an extra parent.
        d(9, {  -- Original 40-player history (SoD only)
            timeline = { "removed 1.15.4.56738" },
            groups = {
                e(1536, {  -- Nefarian
                    crs = { 11583, 10162 },  -- NPC sources for this Nefarian occurrence.
                    groups = {
                        i(19003, {  -- Head of Nefarian
                            races = { 1, 3, 4, 7 },  -- Original source race restriction.
                        }),
                        i(19364),  -- Ashkandi, Greatsword of the Brotherhood (original)
                    },
                }),
                {
                    headerID = -56,  -- Treasures
                    groups = {
                        o(180667, {  -- Draconic for Dummies
                            progressionKey = "raid.bwl.draconic-for-dummies",  -- Independent book timing, even under a disabled ancestor.
                            timeline = { "added 1.9.0.4937", "removed 4.0.3.13287" },
                            groups = {
                                i(21109),  -- Draconic for Dummies [Chapter VII]
                            },
                        }),
                    },
                },
            },
        }),
    },
}
