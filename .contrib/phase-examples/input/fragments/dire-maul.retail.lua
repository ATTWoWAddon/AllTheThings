-- Authoring input (B): Isalien with the Retail quest-dependent unavailable handling; edit only if choosing B.
-- Ordinary Retail default (outside P1-P4), selected by B's P4 comparison layout.
return {
    progressionKey = "dire-maul.isalien",  -- Stripped in Retail; this context reads no phase policy.
    groups = {  -- Inherit the envelope's scope without generating an extra parent.
        n(16097, {  -- Isalien
            sourceQuest = 8996,  -- Return to Bodley; preserve the quest requirement.
            u_sqs = true,  -- Completing sourceQuest can clear the ordinary unavailable flag.
            provider = { "i", 22057 },  -- Brazier of Invocation; source provider, not a phase.
            timeline = { "removed 4.0.3.13287" },
            groups = {
                i(22315),  -- Hammer of Revitalization
            },
        }),
    },
}
