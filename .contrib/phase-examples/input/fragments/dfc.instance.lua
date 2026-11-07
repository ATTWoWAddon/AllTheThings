-- Authoring input (B): complete SoD-only Demon Fall Canyon root and its later child sources; edit only if choosing B.
-- P4: describes the source directly, after removing legacy phase writers and flavor guards.
return {
    progressionKey = "dfc.dungeon",  -- Parent opening; each later child must also pass its own scope.
    groups = {  -- Inherit the envelope's scope without generating an extra parent.
        inst(2784, {  -- Demon Fall Canyon
            sourceQuest = 84384,  -- Demonic Deceptions; keep the attunement requirement.
            provider = { "i", 228172 },  -- Shadowtooth Illusion Ward.
            lvl = 55,
            timeline = { "added 1.15.3.55515" },
            groups = {
                n(226923, {  -- Grimroot <The Mourning Guardian>
                    groups = {
                        i(228082),  -- Warsong Axe
                        i(235787, {  -- Ancient Ironwood Branch (quest item)
                            progressionKey = "dfc.ironwood-branch",  -- Later drop; Grimroot's other loot keeps its parent scope.
                            timeline = { "added 1.15.6.58844" },
                        }),
                    },
                }),
                n(232632, {  -- Azgaloth <Lord of the Pit>
                    progressionKey = "dfc.azgaloth",  -- New boss opening; both shown drops inherit it.
                    timeline = { "added 1.15.4.56738" },
                    groups = {
                        i(231913),  -- Eye of the Observer
                        i(231912),  -- Blade of the Pit
                    },
                }),
            },
        }),
    },
}
