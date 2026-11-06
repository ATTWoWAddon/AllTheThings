-- Options A and C. IDs and ordinary conditions come from the six source files in README.md.
-- 9 = original 40-player history; SoD difficulties are 198 (10) and 201 (20).
return {
    inst(228, {
        progressionKey = "brd.dungeon",
        groups = {
            e(369, {
                creatureID = 9018,
                groups = {
                    i(11140),
                    i(223539, {
                        flavors = { "sod" },
                        progressionKey = "brd.enthralled-sphere",
                        timeline = { "added 1.15.2.54029" },
                    }),
                },
            }),
            e(378, {
                creatureID = 9033,
                groups = {
                    i(11464),
                    i(227948, {
                        flavors = { "sod" },
                        progressionKey = "brd.angerforge-axe",
                        timeline = { "added 1.15.3.55515" },
                    }),
                },
            }),
            e(387, {
                creatureID = 9019,
                progressionKey = "brd.second-half",
                groups = { i(11934) },
            }),
        },
    }),
    inst(2784, {
        flavors = { "sod" },
        progressionKey = "dfc.dungeon",
        sourceQuest = 84384,
        provider = { "i", 228172 },
        lvl = 55,
        timeline = { "added 1.15.3.55515" },
        groups = {
            n(226923, {
                groups = {
                    i(228082),
                    i(235787, {
                        progressionKey = "dfc.ironwood-branch",
                        timeline = { "added 1.15.6.58844" },
                    }),
                },
            }),
            n(232632, {
                progressionKey = "dfc.azgaloth",
                timeline = { "added 1.15.4.56738" },
                groups = { i(231913), i(231912) },
            }),
        },
    }),
    inst(230, {
        progressionKey = "dire-maul.common",
        groups = {
            n(16097, {
                flavors = { "progression", "anniversary", "era", "sod" },
                progressionKey = "dire-maul.isalien",
                cost = { { "i", 22050, 1 } },
                provider = { "i", 22057 },
                timeline = { "removed 4.0.3.13287" },
                groups = { i(22315) },
            }),
            n(16097, {
                flavors = { "retail" },
                progressionKey = "dire-maul.isalien",
                sourceQuest = 8996,
                u_sqs = true,
                provider = { "i", 22057 },
                timeline = { "removed 4.0.3.13287" },
                groups = { i(22315) },
            }),
        },
    }),
    inst(742, {
        progressionKey = "raid.bwl.common",
        timeline = { "added 1.6.0.4500" },
        provider = { "o", 179879 },
        groups = {
            e(1536, {
                flavors = { "progression", "anniversary", "era" },
                progressionKey = "raid.bwl.original",
                crs = { 11583, 10162 },
                groups = { i(19003, { races = { 1, 3, 4, 7 } }), i(19364) },
            }),
            {
                flavors = { "progression", "anniversary", "era" },
                progressionKey = "raid.bwl.original",
                headerID = -56,
                groups = {
                    o(180667, {
                        progressionKey = "raid.bwl.draconic-for-dummies",
                        timeline = { "added 1.9.0.4937", "removed 4.0.3.13287" },
                        groups = { i(21109) },
                    }),
                },
            },
            e(1536, {
                flavors = { "retail" },
                progressionKey = "raid.bwl.original",
                crs = { 11583, 10162 },
                groups = {
                    i(19003, {
                        races = { 1, 3, 4, 7, 11, 22, 25, 29, 30, 32, 34, 37, 52, 85, 86 },
                    }),
                    i(19364),
                },
            }),
            {
                flavors = { "retail" },
                progressionKey = "raid.bwl.original",
                headerID = -56,
                groups = {
                    o(180667, {
                        progressionKey = "raid.bwl.draconic-for-dummies",
                        timeline = { "added 1.9.0.4937", "removed 4.0.3.13287" },
                        groups = { i(21109) },
                    }),
                },
            },
            d(9, {
                flavors = { "sod" },
                progressionKey = "raid.bwl.original",
                timeline = { "removed 1.15.4.56738" },
                groups = {
                    e(1536, {
                        crs = { 11583, 10162 },
                        groups = { i(19003, { races = { 1, 3, 4, 7 } }), i(19364) },
                    }),
                    {
                        headerID = -56,
                        groups = {
                            o(180667, {
                                progressionKey = "raid.bwl.draconic-for-dummies",
                                timeline = { "added 1.9.0.4937", "removed 4.0.3.13287" },
                                groups = { i(21109) },
                            }),
                        },
                    },
                },
            }),
            d(201, {
                flavors = { "sod" },
                progressionKey = "raid.bwl.sod20",
                timeline = { "added 1.15.4.56738" },
                groups = { e(1536, { crs = { 11583, 10162 }, groups = { i(19003), i(230818) } }) },
            }),
        },
    }),
    inst(744, {
        progressionKey = "aq40.common",
        groups = {
            e(1551, {
                flavors = { "retail", "progression", "anniversary", "era" },
                progressionKey = "aq40.original",
                creatureID = 15727,
                groups = { i(21221), i(21126) },
            }),
            d(9, {
                flavors = { "sod" },
                progressionKey = "aq40.original",
                timeline = { "removed 1.15.5.57638" },
                groups = { e(1551, { creatureID = 15727, groups = { i(21221), i(21126) } }) },
            }),
            d(201, {
                flavors = { "sod" },
                progressionKey = "aq40.reworked",
                timeline = { "added 1.15.5.57638" },
                groups = { e(1551, { creatureID = 15727, groups = { i(21221), i(233634) } }) },
            }),
        },
    }),
    inst(231, {
        groups = {
            e(418, {
                flavors = { "retail", "progression", "anniversary", "era" },
                progressionKey = "gnomeregan.dungeon",
                creatureID = 6229,
                groups = { i(9449) },
            }),
            d(1, {
                flavors = { "sod" },
                progressionKey = "gnomeregan.dungeon",
                timeline = { "removed 1.15.1.53181" },
                groups = { e(418, { creatureID = 6229, groups = { i(9449) } }) },
            }),
            d(198, {
                flavors = { "sod" },
                progressionKey = "gnomeregan.raid10",
                lvl = 40,
                timeline = { "added 1.15.1.53181" },
                groups = { n(218242, { groups = { i(213410) } }) },
            }),
        },
    }),
}
