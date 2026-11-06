-- Authoring input (B): removed original C'Thun route selected for SoD history; edit only if choosing B.
-- P4: describes the source directly, after removing legacy phase writers and flavor guards.
return {
    progressionKey = "aq40.original",  -- Original C'Thun route; disabled history in SoD.
    groups = {  -- Inherit the envelope's scope without generating an extra parent.
        d(9, {  -- Original 40-player history (SoD only)
            timeline = { "removed 1.15.5.57638" },
            groups = {
                e(1551, {  -- C'Thun
                    creatureID = 15727,
                    groups = {
                        i(21221),  -- Eye of C'Thun
                        i(21126),  -- Death's Sting (original)
                    },
                }),
            },
        }),
    },
}
