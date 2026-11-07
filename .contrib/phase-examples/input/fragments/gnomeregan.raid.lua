-- Authoring input (B): Mechanical Menagerie in the separate level-40 SoD raid; edit only if choosing B.
-- P4: describes the source directly, after removing legacy phase writers and flavor guards.
return {
    progressionKey = "gnomeregan.raid10",  -- Separate SoD raid opening; not the normal dungeon route.
    groups = {  -- Inherit the envelope's scope without generating an extra parent.
        d(198, {  -- DIFFICULTY.SOD.PLAYER10
            lvl = 40,
            timeline = { "added 1.15.1.53181" },
            groups = {
                n(218242, {  -- Mechanical Menagerie (STX-04/BD)
                    groups = {
                        i(213410),  -- Glimmering Gizmoblade
                    },
                }),
            },
        }),
    },
}
