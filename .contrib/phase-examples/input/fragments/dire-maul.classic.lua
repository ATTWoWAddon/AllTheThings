-- Authoring input (B): Isalien with the Classic summoning cost; edit only if choosing B.
-- P4: describes the source directly, after removing legacy phase writers and flavor guards.
return {
    progressionKey = "dire-maul.isalien",  -- Same policy key; keep each variant's source conditions.
    groups = {  -- Inherit the envelope's scope without generating an extra parent.
        n(16097, {  -- Isalien
            cost = { { "i", 22050, 1 } },  -- Item cost: one Brazier of Beckoning [Isalien].
            provider = { "i", 22057 },  -- Brazier of Invocation; source provider, not a phase.
            timeline = { "removed 4.0.3.13287" },
            groups = {
                i(22315),  -- Hammer of Revitalization
            },
        }),
    },
}
