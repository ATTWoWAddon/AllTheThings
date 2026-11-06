-- Authoring input (B): reworked Nefarian and his separate SoD loot; edit only if choosing B.
-- P4: describes the source directly, after removing legacy phase writers and flavor guards.
return {
    progressionKey = "raid.bwl.sod20",  -- Separate reworked route; never union the two loot lists.
    groups = {  -- Inherit the envelope's scope without generating an extra parent.
        d(201, {  -- DIFFICULTY.SOD.PLAYER20
            timeline = { "added 1.15.4.56738" },
            groups = {
                e(1536, {  -- Nefarian
                    crs = { 11583, 10162 },  -- NPC sources for this Nefarian occurrence.
                    groups = {
                        i(19003),  -- Head of Nefarian
                        i(230818),  -- Ashkandi, Greatsword of the Brotherhood (SoD)
                    },
                }),
            },
        }),
    },
}
