-- Authoring input (B): flat original Nefarian and book routes with Retail source restrictions; edit only if choosing B.
-- Ordinary Retail default (outside P1-P4), selected by B's P4 comparison layout.
return {
    progressionKey = "raid.bwl.original",  -- Stripped in Retail; this context reads no phase policy.
    groups = {  -- Inherit the envelope's scope without generating an extra parent.
        e(1536, {  -- Nefarian
            crs = { 11583, 10162 },  -- NPC sources for this Nefarian occurrence.
            groups = {
                i(19003, {  -- Head of Nefarian
                    races = { 1, 3, 4, 7, 11, 22, 25, 29, 30, 32, 34, 37, 52, 85, 86 },  -- Original source race restriction.
                }),
                i(19364),  -- Ashkandi, Greatsword of the Brotherhood (original)
            },
        }),
        {
            headerID = -56,  -- Treasures
            groups = {
                o(180667, {  -- Draconic for Dummies
                    progressionKey = "raid.bwl.draconic-for-dummies",  -- Stripped in Retail; this context reads no phase policy.
                    timeline = { "added 1.9.0.4937", "removed 4.0.3.13287" },
                    groups = {
                        i(21109),  -- Draconic for Dummies [Chapter VII]
                    },
                }),
            },
        },
    },
}
