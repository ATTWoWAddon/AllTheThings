-- Authoring input (A/C): direct acquisition records for the six examples; edit only if choosing A or C.
-- P4: describes the source directly, after removing legacy phase writers and flavor guards.
-- In phased contexts, progressionKey binds to JSON; descendants inherit ancestor scopes and conditions (AND).
-- flavors selects source applicability; timeline/quest/level/cost fields remain independent requirements.
return {
    inst(228, {  -- Blackrock Depths
        progressionKey = "brd.dungeon",  -- Parent opening inherited by the BRD routes below.
        groups = {  -- Children inherit this scope; local keys add further restrictions.
            e(369, {  -- High Interrogator Gerstahn
                creatureID = 9018,
                groups = {
                    i(11140),  -- Prison Cell Key
                    i(223539, {  -- Enthralled Sphere
                        flavors = { "sod" },
                        progressionKey = "brd.enthralled-sphere",  -- Independent reward opening; not the whole boss.
                        timeline = { "added 1.15.2.54029" },
                    }),
                },
            }),
            e(378, {  -- General Angerforge
                creatureID = 9033,
                groups = {
                    i(11464),  -- Marshal Windsor's Lost Information
                    i(227948, {  -- Angerforge's Battle Axe
                        flavors = { "sod" },
                        progressionKey = "brd.angerforge-axe",  -- Independent reward opening; not the whole boss.
                        timeline = { "added 1.15.3.55515" },
                    }),
                },
            }),
            e(387, {  -- Emperor Dagran Thaurissan
                creatureID = 9019,
                progressionKey = "brd.second-half",  -- Later encounter opening; Emperor's Seal inherits it.
                groups = {
                    i(11934),  -- Emperor's Seal
                },
            }),
        },
    }),
    inst(2784, {  -- Demon Fall Canyon
        flavors = { "sod" },
        progressionKey = "dfc.dungeon",  -- Parent opening; each later child must also pass its own scope.
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
    inst(230, {  -- Dire Maul
        progressionKey = "dire-maul.common",  -- Shared dungeon opening, AND the summoned-source scope.
        groups = {
            n(16097, {  -- Isalien
                flavors = { "progression", "anniversary", "era", "sod" },
                progressionKey = "dire-maul.isalien",  -- Same policy key; keep each variant's source conditions.
                cost = { { "i", 22050, 1 } },  -- Item cost: one Brazier of Beckoning [Isalien].
                provider = { "i", 22057 },  -- Brazier of Invocation; source provider, not a phase.
                timeline = { "removed 4.0.3.13287" },
                groups = {
                    i(22315),  -- Hammer of Revitalization
                },
            }),
            n(16097, {  -- Isalien
                flavors = { "retail" },
                progressionKey = "dire-maul.isalien",  -- Same policy key; keep each variant's source conditions.
                sourceQuest = 8996,  -- Return to Bodley; preserve the quest requirement.
                u_sqs = true,  -- Completing sourceQuest can clear the ordinary unavailable flag.
                provider = { "i", 22057 },  -- Brazier of Invocation; source provider, not a phase.
                timeline = { "removed 4.0.3.13287" },
                groups = {
                    i(22315),  -- Hammer of Revitalization
                },
            }),
        },
    }),
    inst(742, {  -- Blackwing Lair
        progressionKey = "raid.bwl.common",  -- Parent opening does not enable the disabled original route.
        timeline = { "added 1.6.0.4500" },
        provider = { "o", 179879 },  -- Orb of Command.
        groups = {
            e(1536, {  -- Nefarian
                flavors = { "progression", "anniversary", "era" },
                progressionKey = "raid.bwl.original",  -- Original route; SoD explicitly disables this scope.
                crs = { 11583, 10162 },  -- NPC sources for this Nefarian occurrence.
                groups = {
                    i(19003, {  -- Head of Nefarian
                        races = { 1, 3, 4, 7 },  -- Original source race restriction.
                    }),
                    i(19364),  -- Ashkandi, Greatsword of the Brotherhood (original)
                },
            }),
            {
                flavors = { "progression", "anniversary", "era" },
                progressionKey = "raid.bwl.original",  -- Original route; SoD explicitly disables this scope.
                headerID = -56,  -- Treasures
                groups = {
                    o(180667, {  -- Draconic for Dummies
                        progressionKey = "raid.bwl.draconic-for-dummies",  -- Independent book timing, even under a disabled ancestor.
                        timeline = { "added 1.9.0.4937", "removed 4.0.3.13287" },
                        groups = {
                            i(21109),  -- Draconic for Dummies [Chapter VII]
                        },
                    }),
                },
            },
            e(1536, {  -- Nefarian
                flavors = { "retail" },
                progressionKey = "raid.bwl.original",  -- Original route; SoD explicitly disables this scope.
                crs = { 11583, 10162 },  -- NPC sources for this Nefarian occurrence.
                groups = {
                    i(19003, {  -- Head of Nefarian
                        races = { 1, 3, 4, 7, 11, 22, 25, 29, 30, 32, 34, 37, 52, 85, 86 },  -- Original source race restriction.
                    }),
                    i(19364),  -- Ashkandi, Greatsword of the Brotherhood (original)
                },
            }),
            {
                flavors = { "retail" },
                progressionKey = "raid.bwl.original",  -- Original route; SoD explicitly disables this scope.
                headerID = -56,  -- Treasures
                groups = {
                    o(180667, {  -- Draconic for Dummies
                        progressionKey = "raid.bwl.draconic-for-dummies",  -- Independent book timing, even under a disabled ancestor.
                        timeline = { "added 1.9.0.4937", "removed 4.0.3.13287" },
                        groups = {
                            i(21109),  -- Draconic for Dummies [Chapter VII]
                        },
                    }),
                },
            },
            d(9, {  -- Original 40-player history (SoD only)
                flavors = { "sod" },
                progressionKey = "raid.bwl.original",  -- Original route; SoD explicitly disables this scope.
                timeline = { "removed 1.15.4.56738" },
                groups = {
                    e(1536, {  -- Nefarian
                        crs = { 11583, 10162 },  -- NPC sources for this Nefarian occurrence.
                        groups = {
                            i(19003, {  -- Head of Nefarian
                                races = { 1, 3, 4, 7 },  -- Original source race restriction.
                            }),
                            i(19364),  -- Ashkandi, Greatsword of the Brotherhood (original)
                        },
                    }),
                    {
                        headerID = -56,  -- Treasures
                        groups = {
                            o(180667, {  -- Draconic for Dummies
                                progressionKey = "raid.bwl.draconic-for-dummies",  -- Independent book timing, even under a disabled ancestor.
                                timeline = { "added 1.9.0.4937", "removed 4.0.3.13287" },
                                groups = {
                                    i(21109),  -- Draconic for Dummies [Chapter VII]
                                },
                            }),
                        },
                    },
                },
            }),
            d(201, {  -- DIFFICULTY.SOD.PLAYER20
                flavors = { "sod" },
                progressionKey = "raid.bwl.sod20",  -- Separate reworked route; never union the two loot lists.
                timeline = { "added 1.15.4.56738" },
                groups = {
                    e(1536, {  -- Nefarian
                        crs = { 11583, 10162 },  -- NPC sources for this Nefarian occurrence.
                        groups = {
                            i(19003),  -- Head of Nefarian
                            i(230818),  -- Ashkandi, Greatsword of the Brotherhood (SoD)
                        },
                    }),
                },
            }),
        },
    }),
    inst(744, {  -- Temple of Ahn'Qiraj
        progressionKey = "aq40.common",  -- Raid-entry opening; preparation milestones do not open it.
        groups = {
            e(1551, {  -- C'Thun
                flavors = { "retail", "progression", "anniversary", "era" },
                progressionKey = "aq40.original",  -- Original C'Thun route; disabled history in SoD.
                creatureID = 15727,
                groups = {
                    i(21221),  -- Eye of C'Thun
                    i(21126),  -- Death's Sting (original)
                },
            }),
            d(9, {  -- Original 40-player history (SoD only)
                flavors = { "sod" },
                progressionKey = "aq40.original",  -- Original C'Thun route; disabled history in SoD.
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
            d(201, {  -- DIFFICULTY.SOD.PLAYER20
                flavors = { "sod" },
                progressionKey = "aq40.reworked",  -- Reworked C'Thun opening, AND the raid-entry scope.
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
    }),
    inst(231, {  -- Gnomeregan
        groups = {
            e(418, {  -- Crowd Pummeler 9-60
                flavors = { "retail", "progression", "anniversary", "era" },
                progressionKey = "gnomeregan.dungeon",  -- Original dungeon route; disabled history in SoD.
                creatureID = 6229,
                groups = {
                    i(9449),  -- Manual Crowd Pummeler
                },
            }),
            d(1, {  -- Normal dungeon retained as SoD history
                flavors = { "sod" },
                progressionKey = "gnomeregan.dungeon",  -- Original dungeon route; disabled history in SoD.
                timeline = { "removed 1.15.1.53181" },
                groups = {
                    e(418, {  -- Crowd Pummeler 9-60
                        creatureID = 6229,
                        groups = {
                            i(9449),  -- Manual Crowd Pummeler
                        },
                    }),
                },
            }),
            d(198, {  -- DIFFICULTY.SOD.PLAYER10
                flavors = { "sod" },
                progressionKey = "gnomeregan.raid10",  -- Separate SoD raid opening; not the normal dungeon route.
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
    }),
}
