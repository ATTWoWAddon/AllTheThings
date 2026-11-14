-- Authoring input (B): shared layout and named source slots; edit only if choosing B.
-- P4: describes the source directly, after removing legacy phase writers and flavor guards.
-- selection.json binds each group(slot) to a fragment path or null before that input is read.
-- Each envelope key applies to its groups; ordinary source conditions and timelines remain independent.
-- Retail uses the ordinary selected records, strips scope annotations, and reads no phase JSON.
return {
    inst(228, {  -- Blackrock Depths
        progressionKey = "brd.dungeon",  -- Parent opening inherited by the BRD routes below.
        groups = {  -- Ordinary records and selected slot contents share this parent scope.
            e(369, {  -- High Interrogator Gerstahn
                creatureID = 9018,
                groups = {
                    i(11140),  -- Prison Cell Key
                    group("brd.gerstahn-sod"),  -- Add only the selected SoD reward to this existing boss.
                },
            }),
            e(378, {  -- General Angerforge
                creatureID = 9033,
                groups = {
                    i(11464),  -- Marshal Windsor's Lost Information
                    group("brd.angerforge-sod"),  -- Add only the selected SoD reward to this existing boss.
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
    group("dfc.instance"),  -- Whole root slot: null contributes no dungeon or empty shell.
    inst(230, {  -- Dire Maul
        progressionKey = "dire-maul.common",  -- Shared dungeon opening, AND the summoned-source scope.
        groups = {
            group("dire-maul.classic"),  -- Classic-compatible summon conditions.
            group("dire-maul.retail"),  -- Retail-specific quest conditions.
        },
    }),
    inst(742, {  -- Blackwing Lair
        progressionKey = "raid.bwl.common",  -- Parent opening does not enable the disabled original route.
        timeline = { "added 1.6.0.4500" },
        provider = { "o", 179879 },  -- Orb of Command.
        groups = {
            group("bwl.classic-original"),  -- Flat ordinary Classic-compatible route.
            group("bwl.retail"),  -- Flat ordinary Retail-compatible route.
            group("bwl.history"),  -- SoD only: preserve the removed original layout.
            group("bwl.rework"),  -- SoD only: distinct reworked loot.
        },
    }),
    inst(744, {  -- Temple of Ahn'Qiraj
        progressionKey = "aq40.common",  -- Raid-entry opening; preparation milestones do not open it.
        groups = {
            group("aq40.original"),  -- Ordinary original route.
            group("aq40.history"),  -- SoD only: removed original route.
            group("aq40.rework"),  -- SoD only: reworked raid route.
        },
    }),
    inst(231, {  -- Gnomeregan
        groups = {
            group("gnomeregan.normal"),  -- Ordinary encounter stays directly under inst(231).
            group("gnomeregan.history"),  -- SoD only: retain the normal-difficulty history parent.
            group("gnomeregan.raid"),  -- SoD only: raid difficulty and new Menagerie loot.
        },
    }),
}
