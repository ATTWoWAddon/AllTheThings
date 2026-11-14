-- Authoring input (B): ordinary Crowd Pummeler directly under the instance; edit only if choosing B.
-- P4: describes the source directly, after removing legacy phase writers and flavor guards.
return {
    progressionKey = "gnomeregan.dungeon",  -- Original dungeon route; disabled history in SoD.
    groups = {  -- Inherit the envelope's scope without generating an extra parent.
        e(418, {  -- Crowd Pummeler 9-60
            creatureID = 6229,
            groups = {
                i(9449),  -- Manual Crowd Pummeler
            },
        }),
    },
}
