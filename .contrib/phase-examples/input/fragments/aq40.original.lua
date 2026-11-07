-- Authoring input (B): ordinary original C'Thun route selected outside SoD; edit only if choosing B.
-- P4: describes the source directly, after removing legacy phase writers and flavor guards.
return {
    progressionKey = "aq40.original",  -- Original C'Thun route; disabled history in SoD.
    groups = {  -- Inherit the envelope's scope without generating an extra parent.
        e(1551, {  -- C'Thun
            creatureID = 15727,
            groups = {
                i(21221),  -- Eye of C'Thun
                i(21126),  -- Death's Sting (original)
            },
        }),
    },
}
