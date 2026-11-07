-- Authoring input (B): reworked C'Thun raid route selected only for SoD; edit only if choosing B.
-- P4: describes the source directly, after removing legacy phase writers and flavor guards.
return {
    progressionKey = "aq40.reworked",  -- Reworked C'Thun opening, AND the raid-entry scope.
    groups = {  -- Inherit the envelope's scope without generating an extra parent.
        d(201, {  -- DIFFICULTY.SOD.PLAYER20
            timeline = { "added 1.15.5.57638" },
            groups = {
                e(1551, {  -- C'Thun
                    creatureID = 15727,
                    groups = {
                        i(21221),  -- Eye of C'Thun
                        i(233634),  -- Death's Sting (SoD)
                    },
                }),
            },
        }),
    },
}
