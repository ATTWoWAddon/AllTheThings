-- Option B. A context selects each named source fragment before it is read.
return {
    inst(228, {
        progressionKey = "brd.dungeon",
        groups = {
            e(369, { creatureID = 9018, groups = { i(11140), group("brd.gerstahn-sod") } }),
            e(378, { creatureID = 9033, groups = { i(11464), group("brd.angerforge-sod") } }),
            e(387, {
                creatureID = 9019,
                progressionKey = "brd.second-half",
                groups = { i(11934) },
            }),
        },
    }),
    group("dfc.instance"),
    inst(230, {
        progressionKey = "dire-maul.common",
        groups = { group("dire-maul.classic"), group("dire-maul.retail") },
    }),
    inst(742, {
        progressionKey = "raid.bwl.common",
        timeline = { "added 1.6.0.4500" },
        provider = { "o", 179879 },
        groups = {
            group("bwl.classic-original"),
            group("bwl.retail"),
            group("bwl.history"),
            group("bwl.rework"),
        },
    }),
    inst(744, {
        progressionKey = "aq40.common",
        groups = { group("aq40.original"), group("aq40.history"), group("aq40.rework") },
    }),
    inst(231, {
        groups = {
            group("gnomeregan.normal"),
            group("gnomeregan.history"),
            group("gnomeregan.raid"),
        },
    }),
}
