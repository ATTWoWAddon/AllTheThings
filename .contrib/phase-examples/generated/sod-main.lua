return {
    ["context"] = "sod:main",
    ["milestones"] = { "vanilla.1", "vanilla.2", "vanilla.3", "vanilla.4", "vanilla.4.raids", "vanilla.5", "vanilla.6.scepter", "vanilla.6.war-effort", "vanilla.6.war-effort-end", "vanilla.6.war", "vanilla.6.raids", "vanilla.7" },
    ["policies"] = {
        ["sod:main:aq40.common"] = {
            ["windows"] = {
                {
                    ["from"] = "vanilla.6.raids"
                }
            }
        },
        ["sod:main:aq40.original"] = {
            ["status"] = "disabled",
            ["windows"] = {}
        },
        ["sod:main:aq40.reworked"] = {
            ["windows"] = {
                {
                    ["from"] = "vanilla.6.raids"
                }
            }
        },
        ["sod:main:brd.angerforge-axe"] = {
            ["windows"] = {
                {
                    ["from"] = "vanilla.4"
                }
            }
        },
        ["sod:main:brd.dungeon"] = {
            ["windows"] = {
                {
                    ["from"] = "vanilla.3"
                }
            }
        },
        ["sod:main:brd.enthralled-sphere"] = {
            ["windows"] = {
                {
                    ["from"] = "vanilla.3"
                }
            }
        },
        ["sod:main:brd.second-half"] = {
            ["windows"] = {
                {
                    ["from"] = "vanilla.4"
                }
            }
        },
        ["sod:main:dfc.azgaloth"] = {
            ["windows"] = {
                {
                    ["from"] = "vanilla.5"
                }
            }
        },
        ["sod:main:dfc.dungeon"] = {
            ["status"] = "unknown",
            ["windows"] = {}
        },
        ["sod:main:dfc.ironwood-branch"] = {
            ["windows"] = {
                {
                    ["from"] = "vanilla.7"
                }
            }
        },
        ["sod:main:dire-maul.common"] = {
            ["windows"] = {
                {
                    ["from"] = "vanilla.4"
                }
            }
        },
        ["sod:main:dire-maul.isalien"] = {
            ["status"] = "unknown",
            ["windows"] = {}
        },
        ["sod:main:gnomeregan.dungeon"] = {
            ["status"] = "disabled",
            ["windows"] = {}
        },
        ["sod:main:gnomeregan.raid10"] = {
            ["windows"] = {
                {
                    ["from"] = "vanilla.2"
                }
            }
        },
        ["sod:main:raid.bwl.common"] = {
            ["windows"] = {
                {
                    ["from"] = "vanilla.5"
                }
            }
        },
        ["sod:main:raid.bwl.draconic-for-dummies"] = {
            ["status"] = "unknown",
            ["windows"] = {}
        },
        ["sod:main:raid.bwl.original"] = {
            ["status"] = "disabled",
            ["windows"] = {}
        },
        ["sod:main:raid.bwl.sod20"] = {
            ["windows"] = {
                {
                    ["from"] = "vanilla.5"
                }
            }
        }
    },
    ["groups"] = {
        {
            ["instanceID"] = 228,
            ["progressionScopes"] = { "sod:main:brd.dungeon" },
            ["groups"] = {
                {
                    ["encounterID"] = 369,
                    ["creatureID"] = 9018,
                    ["progressionScopes"] = { "sod:main:brd.dungeon" },
                    ["groups"] = {
                        {
                            ["itemID"] = 11140,
                            ["progressionScopes"] = { "sod:main:brd.dungeon" }
                        },
                        {
                            ["itemID"] = 223539,
                            ["progressionScopes"] = { "sod:main:brd.dungeon", "sod:main:brd.enthralled-sphere" },
                            ["timeline"] = { "added 1.15.2.54029" }
                        }
                    }
                },
                {
                    ["encounterID"] = 378,
                    ["creatureID"] = 9033,
                    ["progressionScopes"] = { "sod:main:brd.dungeon" },
                    ["groups"] = {
                        {
                            ["itemID"] = 11464,
                            ["progressionScopes"] = { "sod:main:brd.dungeon" }
                        },
                        {
                            ["itemID"] = 227948,
                            ["progressionScopes"] = { "sod:main:brd.dungeon", "sod:main:brd.angerforge-axe" },
                            ["timeline"] = { "added 1.15.3.55515" }
                        }
                    }
                },
                {
                    ["encounterID"] = 387,
                    ["creatureID"] = 9019,
                    ["progressionScopes"] = { "sod:main:brd.dungeon", "sod:main:brd.second-half" },
                    ["groups"] = {
                        {
                            ["itemID"] = 11934,
                            ["progressionScopes"] = { "sod:main:brd.dungeon", "sod:main:brd.second-half" }
                        }
                    }
                }
            }
        },
        {
            ["instanceID"] = 2784,
            ["progressionScopes"] = { "sod:main:dfc.dungeon" },
            ["lvl"] = 55,
            ["provider"] = { "i", 228172 },
            ["sourceQuest"] = 84384,
            ["timeline"] = { "added 1.15.3.55515" },
            ["groups"] = {
                {
                    ["npcID"] = 226923,
                    ["progressionScopes"] = { "sod:main:dfc.dungeon" },
                    ["groups"] = {
                        {
                            ["itemID"] = 228082,
                            ["progressionScopes"] = { "sod:main:dfc.dungeon" }
                        },
                        {
                            ["itemID"] = 235787,
                            ["progressionScopes"] = { "sod:main:dfc.dungeon", "sod:main:dfc.ironwood-branch" },
                            ["timeline"] = { "added 1.15.6.58844" }
                        }
                    }
                },
                {
                    ["npcID"] = 232632,
                    ["progressionScopes"] = { "sod:main:dfc.dungeon", "sod:main:dfc.azgaloth" },
                    ["timeline"] = { "added 1.15.4.56738" },
                    ["groups"] = {
                        {
                            ["itemID"] = 231913,
                            ["progressionScopes"] = { "sod:main:dfc.dungeon", "sod:main:dfc.azgaloth" }
                        },
                        {
                            ["itemID"] = 231912,
                            ["progressionScopes"] = { "sod:main:dfc.dungeon", "sod:main:dfc.azgaloth" }
                        }
                    }
                }
            }
        },
        {
            ["instanceID"] = 230,
            ["progressionScopes"] = { "sod:main:dire-maul.common" },
            ["groups"] = {
                {
                    ["npcID"] = 16097,
                    ["progressionScopes"] = { "sod:main:dire-maul.common", "sod:main:dire-maul.isalien" },
                    ["cost"] = {
                        { "i", 22050, 1 }
                    },
                    ["provider"] = { "i", 22057 },
                    ["timeline"] = { "removed 4.0.3.13287" },
                    ["groups"] = {
                        {
                            ["itemID"] = 22315,
                            ["progressionScopes"] = { "sod:main:dire-maul.common", "sod:main:dire-maul.isalien" }
                        }
                    }
                }
            }
        },
        {
            ["instanceID"] = 742,
            ["progressionScopes"] = { "sod:main:raid.bwl.common" },
            ["provider"] = { "o", 179879 },
            ["timeline"] = { "added 1.6.0.4500" },
            ["groups"] = {
                {
                    ["difficultyID"] = 9,
                    ["progressionScopes"] = { "sod:main:raid.bwl.common", "sod:main:raid.bwl.original" },
                    ["timeline"] = { "removed 1.15.4.56738" },
                    ["groups"] = {
                        {
                            ["encounterID"] = 1536,
                            ["progressionScopes"] = { "sod:main:raid.bwl.common", "sod:main:raid.bwl.original" },
                            ["crs"] = { 11583, 10162 },
                            ["groups"] = {
                                {
                                    ["itemID"] = 19003,
                                    ["progressionScopes"] = { "sod:main:raid.bwl.common", "sod:main:raid.bwl.original" },
                                    ["races"] = { 1, 3, 4, 7 }
                                },
                                {
                                    ["itemID"] = 19364,
                                    ["progressionScopes"] = { "sod:main:raid.bwl.common", "sod:main:raid.bwl.original" }
                                }
                            }
                        },
                        {
                            ["progressionScopes"] = { "sod:main:raid.bwl.common", "sod:main:raid.bwl.original" },
                            ["headerID"] = -56,
                            ["groups"] = {
                                {
                                    ["objectID"] = 180667,
                                    ["progressionScopes"] = { "sod:main:raid.bwl.common", "sod:main:raid.bwl.original", "sod:main:raid.bwl.draconic-for-dummies" },
                                    ["timeline"] = { "added 1.9.0.4937", "removed 4.0.3.13287" },
                                    ["groups"] = {
                                        {
                                            ["itemID"] = 21109,
                                            ["progressionScopes"] = { "sod:main:raid.bwl.common", "sod:main:raid.bwl.original", "sod:main:raid.bwl.draconic-for-dummies" }
                                        }
                                    }
                                }
                            }
                        }
                    }
                },
                {
                    ["difficultyID"] = 201,
                    ["progressionScopes"] = { "sod:main:raid.bwl.common", "sod:main:raid.bwl.sod20" },
                    ["timeline"] = { "added 1.15.4.56738" },
                    ["groups"] = {
                        {
                            ["encounterID"] = 1536,
                            ["progressionScopes"] = { "sod:main:raid.bwl.common", "sod:main:raid.bwl.sod20" },
                            ["crs"] = { 11583, 10162 },
                            ["groups"] = {
                                {
                                    ["itemID"] = 19003,
                                    ["progressionScopes"] = { "sod:main:raid.bwl.common", "sod:main:raid.bwl.sod20" }
                                },
                                {
                                    ["itemID"] = 230818,
                                    ["progressionScopes"] = { "sod:main:raid.bwl.common", "sod:main:raid.bwl.sod20" }
                                }
                            }
                        }
                    }
                }
            }
        },
        {
            ["instanceID"] = 744,
            ["progressionScopes"] = { "sod:main:aq40.common" },
            ["groups"] = {
                {
                    ["difficultyID"] = 9,
                    ["progressionScopes"] = { "sod:main:aq40.common", "sod:main:aq40.original" },
                    ["timeline"] = { "removed 1.15.5.57638" },
                    ["groups"] = {
                        {
                            ["encounterID"] = 1551,
                            ["creatureID"] = 15727,
                            ["progressionScopes"] = { "sod:main:aq40.common", "sod:main:aq40.original" },
                            ["groups"] = {
                                {
                                    ["itemID"] = 21221,
                                    ["progressionScopes"] = { "sod:main:aq40.common", "sod:main:aq40.original" }
                                },
                                {
                                    ["itemID"] = 21126,
                                    ["progressionScopes"] = { "sod:main:aq40.common", "sod:main:aq40.original" }
                                }
                            }
                        }
                    }
                },
                {
                    ["difficultyID"] = 201,
                    ["progressionScopes"] = { "sod:main:aq40.common", "sod:main:aq40.reworked" },
                    ["timeline"] = { "added 1.15.5.57638" },
                    ["groups"] = {
                        {
                            ["encounterID"] = 1551,
                            ["creatureID"] = 15727,
                            ["progressionScopes"] = { "sod:main:aq40.common", "sod:main:aq40.reworked" },
                            ["groups"] = {
                                {
                                    ["itemID"] = 21221,
                                    ["progressionScopes"] = { "sod:main:aq40.common", "sod:main:aq40.reworked" }
                                },
                                {
                                    ["itemID"] = 233634,
                                    ["progressionScopes"] = { "sod:main:aq40.common", "sod:main:aq40.reworked" }
                                }
                            }
                        }
                    }
                }
            }
        },
        {
            ["instanceID"] = 231,
            ["groups"] = {
                {
                    ["difficultyID"] = 1,
                    ["progressionScopes"] = { "sod:main:gnomeregan.dungeon" },
                    ["timeline"] = { "removed 1.15.1.53181" },
                    ["groups"] = {
                        {
                            ["encounterID"] = 418,
                            ["creatureID"] = 6229,
                            ["progressionScopes"] = { "sod:main:gnomeregan.dungeon" },
                            ["groups"] = {
                                {
                                    ["itemID"] = 9449,
                                    ["progressionScopes"] = { "sod:main:gnomeregan.dungeon" }
                                }
                            }
                        }
                    }
                },
                {
                    ["difficultyID"] = 198,
                    ["progressionScopes"] = { "sod:main:gnomeregan.raid10" },
                    ["lvl"] = 40,
                    ["timeline"] = { "added 1.15.1.53181" },
                    ["groups"] = {
                        {
                            ["npcID"] = 218242,
                            ["progressionScopes"] = { "sod:main:gnomeregan.raid10" },
                            ["groups"] = {
                                {
                                    ["itemID"] = 213410,
                                    ["progressionScopes"] = { "sod:main:gnomeregan.raid10" }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}
