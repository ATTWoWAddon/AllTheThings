-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------
root(ROOTS.ExpansionFeatures, expansion(EXPANSION.DF, bubbleDown({ ["timeline"] = { ADDED_10_0_2_LAUNCH } }, {
	n(ACHIEVEMENTS, {
		ach(19458, bubbleDownSelf({ ["timeline"] = { ADDED_10_2_6 } }, {	-- A World Awoken
			-- Meta Achievement
			["sym"] = {{"meta_achievement",
				18160,	-- Aberrus, the Shadowed Crucible
				19486,	-- Across the Isles
				19331,	-- Amirdrassil, the Dream's Hope
				19307,	-- Dragon Isles Pathfinder
				19463,	-- Dragon Quests
				19318,	-- Dream On
				16808,	-- Friend of the Dragon Isles
				16585,	-- Loremaster of the Dragon Isles
				16339,	-- Myths of the Dragonflight Dungeons
				19478,	-- Now THIS is Dragon Racing!
				19466,	-- Oh My God, They Were Clutchmates
				17785,	-- Que Zara(lek), Zara(lek)
				16343,	-- Vault of the Incarnates
				17543,	-- You Know How to Reach Me
			}},
			["g"] = {
				i(210142),	-- Taivan (MOUNT!)
			},
		})),
		ach(19486, bubbleDownSelf({ ["timeline"] = { ADDED_10_2_6 } }, {	-- Across the Isles
			-- Meta Achievement
			["sym"] = {{"meta_achievement",
				19482,	-- Army of the Fed
				19481,	-- Centaur of Attention
				19485,	-- Closing Time
				19008,	-- Dream Shaper
				19483,	-- Flight Club
				16492,	-- Into the Storm
				18209,	-- Nothing Stops the Research
				18867,	-- Through the Ashes and Flames
				19479,	-- Wake Me Up
			}},
			["g"] = {
				i(192751),	-- Stormtouched Bruffalon (MOUNT!)
			},
		})),
		ach(17119, {	-- Deep Cuts From the Vault
			-- Meta Achievement
			["sym"] = {{"meta_achievement",
				16353,	-- Mythic: Raszageth the Storm-Eater
				16650,	-- Dragonflight Keystone Hero: Season One
				15984,	-- Elite: Dragonflight Season 1
			}},
			["groups"] = {
				i(202047, {	-- Gleaming Incarnate Thunderstone (CI!)
					d(DIFFICULTY.RAID.LFR, bubbleDown({ ["bonusID"] = 6894 }, {
						cl(DEATHKNIGHT, {
							i(200408),	-- Maw of the Haunted Frostbrood
							i(200410),	-- Jaws of the Haunted Frostbrood
						}),
						cl(DEMONHUNTER, {
							i(200345),	-- Skybound Avenger's Visor
							i(200347),	-- Skybound Avenger's Ailerons
						}),
						cl(DRUID, {
							i(200354),	-- Lost Landcaller's Antlers
							i(200356),	-- Lost Landcaller's Mantle
						}),
						cl(EVOKER, {
							i(200381),	-- Crown of the Awakened
							i(200383),	-- Talons of the Awakened
						}),
						cl(HUNTER, {
							i(200390),	-- Stormwing Harrier's Skullmask
							i(200392),	-- Stormwing Harrier's Pinions
						}),
						cl(MAGE, {
							i(200318),	-- Crystal Scholar's Cowl
							i(200320),	-- Crystal Scholar's Beacons
						}),
						cl(MONK, {
							i(200365),	-- Mantle of the Waking Fist
						}),
						cl(PALADIN, {
							i(200414),	-- Virtuous Silver Breastplate
							i(200419),	-- Virtuous Silver Pauldrons
						}),
						cl(PRIEST, {
							i(200327),	-- Draconic Hierophant's Archcowl
							i(200329),	-- Draconic Hierophant's Wisdom
						}),
						cl(ROGUE, {
							i(200372),	-- Vault Delver's Vizard
							i(200374),	-- Vault Delver's Epaulets
						}),
						cl(SHAMAN, {
							i(200399),	-- Faceguard of Insued Earth
							i(200401),	-- Calderas of Insued Earth
						}),
						cl(WARLOCK, {
							i(200336),	-- Scalesworn Cultist's Scorn
							i(200338),	-- Scalesworn Cultist's Effigy
						}),
						cl(WARRIOR, {
							i(200426),	-- Casque of the Walking Mountain
							i(200428),	-- Peaks of the Walking Mountain
						}),
					})),
					d(DIFFICULTY.RAID.NORMAL, bubbleDown({ ["bonusID"] = 6895 }, {
						cl(DEATHKNIGHT, {
							i(200408),	-- Maw of the Haunted Frostbrood
							i(200410),	-- Jaws of the Haunted Frostbrood
						}),
						cl(DEMONHUNTER, {
							i(200345),	-- Skybound Avenger's Visor
							i(200347),	-- Skybound Avenger's Ailerons
						}),
						cl(DRUID, {
							i(200354),	-- Lost Landcaller's Antlers
							i(200356),	-- Lost Landcaller's Mantle
						}),
						cl(EVOKER, {
							i(200381),	-- Crown of the Awakened
							i(200383),	-- Talons of the Awakened
						}),
						cl(HUNTER, {
							i(200390),	-- Stormwing Harrier's Skullmask
							i(200392),	-- Stormwing Harrier's Pinions
						}),
						cl(MAGE, {
							i(200318),	-- Crystal Scholar's Cowl
							i(200320),	-- Crystal Scholar's Beacons
						}),
						cl(MONK, {
							i(200365),	-- Mantle of the Waking Fist
						}),
						cl(PALADIN, {
							i(200414),	-- Virtuous Silver Breastplate
							i(200419),	-- Virtuous Silver Pauldrons
						}),
						cl(PRIEST, {
							i(200327),	-- Draconic Hierophant's Archcowl
							i(200329),	-- Draconic Hierophant's Wisdom
						}),
						cl(ROGUE, {
							i(200372),	-- Vault Delver's Vizard
							i(200374),	-- Vault Delver's Epaulets
						}),
						cl(SHAMAN, {
							i(200399),	-- Faceguard of Insued Earth
							i(200401),	-- Calderas of Insued Earth
						}),
						cl(WARLOCK, {
							i(200336),	-- Scalesworn Cultist's Scorn
							i(200338),	-- Scalesworn Cultist's Effigy
						}),
						cl(WARRIOR, {
							i(200426),	-- Casque of the Walking Mountain
							i(200428),	-- Peaks of the Walking Mountain
						}),
					})),
					d(DIFFICULTY.RAID.HEROIC, bubbleDown({ ["bonusID"] = 6896 }, {
						cl(DEATHKNIGHT, {
							i(200408),	-- Maw of the Haunted Frostbrood
							i(200410),	-- Jaws of the Haunted Frostbrood
						}),
						cl(DEMONHUNTER, {
							i(200345),	-- Skybound Avenger's Visor
							i(200347),	-- Skybound Avenger's Ailerons
						}),
						cl(DRUID, {
							i(200354),	-- Lost Landcaller's Antlers
							i(200356),	-- Lost Landcaller's Mantle
						}),
						cl(EVOKER, {
							i(200381),	-- Crown of the Awakened
							i(200383),	-- Talons of the Awakened
						}),
						cl(HUNTER, {
							i(200390),	-- Stormwing Harrier's Skullmask
							i(200392),	-- Stormwing Harrier's Pinions
						}),
						cl(MAGE, {
							i(200318),	-- Crystal Scholar's Cowl
							i(200320),	-- Crystal Scholar's Beacons
						}),
						cl(MONK, {
							i(200365),	-- Mantle of the Waking Fist
						}),
						cl(PALADIN, {
							i(200414),	-- Virtuous Silver Breastplate
							i(200419),	-- Virtuous Silver Pauldrons
						}),
						cl(PRIEST, {
							i(200327),	-- Draconic Hierophant's Archcowl
							i(200329),	-- Draconic Hierophant's Wisdom
						}),
						cl(ROGUE, {
							i(200372),	-- Vault Delver's Vizard
							i(200374),	-- Vault Delver's Epaulets
						}),
						cl(SHAMAN, {
							i(200399),	-- Faceguard of Insued Earth
							i(200401),	-- Calderas of Insued Earth
						}),
						cl(WARLOCK, {
							i(200336),	-- Scalesworn Cultist's Scorn
							i(200338),	-- Scalesworn Cultist's Effigy
						}),
						cl(WARRIOR, {
							i(200426),	-- Casque of the Walking Mountain
							i(200428),	-- Peaks of the Walking Mountain
						}),
					})),
					d(DIFFICULTY.RAID.MYTHIC, bubbleDown({ ["bonusID"] = 6897 }, {
						cl(DEATHKNIGHT, {
							i(200408),	-- Maw of the Haunted Frostbrood
							i(200410),	-- Jaws of the Haunted Frostbrood
						}),
						cl(DEMONHUNTER, {
							i(200345),	-- Skybound Avenger's Visor
							i(200347),	-- Skybound Avenger's Ailerons
						}),
						cl(DRUID, {
							i(200354),	-- Lost Landcaller's Antlers
							i(200356),	-- Lost Landcaller's Mantle
						}),
						cl(EVOKER, {
							i(200381),	-- Crown of the Awakened
							i(200383),	-- Talons of the Awakened
						}),
						cl(HUNTER, {
							i(200390),	-- Stormwing Harrier's Skullmask
							i(200392),	-- Stormwing Harrier's Pinions
						}),
						cl(MAGE, {
							i(200318),	-- Crystal Scholar's Cowl
							i(200320),	-- Crystal Scholar's Beacons
						}),
						cl(MONK, {
							i(200365),	-- Mantle of the Waking Fist
						}),
						cl(PALADIN, {
							i(200414),	-- Virtuous Silver Breastplate
							i(200419),	-- Virtuous Silver Pauldrons
						}),
						cl(PRIEST, {
							i(200327),	-- Draconic Hierophant's Archcowl
							i(200329),	-- Draconic Hierophant's Wisdom
						}),
						cl(ROGUE, {
							i(200372),	-- Vault Delver's Vizard
							i(200374),	-- Vault Delver's Epaulets
						}),
						cl(SHAMAN, {
							i(200399),	-- Faceguard of Insued Earth
							i(200401),	-- Calderas of Insued Earth
						}),
						cl(WARLOCK, {
							i(200336),	-- Scalesworn Cultist's Scorn
							i(200338),	-- Scalesworn Cultist's Effigy
						}),
						cl(WARRIOR, {
							i(200426),	-- Casque of the Walking Mountain
							i(200428),	-- Peaks of the Walking Mountain
						}),
					})),
					n(PVP_GLADIATOR, bubbleDown({ ["bonusID"] = 6898 }, {
						cl(DEATHKNIGHT, {
							i(200408),	-- Maw of the Haunted Frostbrood
							i(200410),	-- Jaws of the Haunted Frostbrood
						}),
						cl(DEMONHUNTER, {
							i(200345),	-- Skybound Avenger's Visor
							i(200347),	-- Skybound Avenger's Ailerons
						}),
						cl(DRUID, {
							i(200354),	-- Lost Landcaller's Antlers
							i(200356),	-- Lost Landcaller's Mantle
						}),
						cl(EVOKER, {
							i(200381),	-- Crown of the Awakened
							i(200383),	-- Talons of the Awakened
						}),
						cl(HUNTER, {
							i(200390),	-- Stormwing Harrier's Skullmask
							i(200392),	-- Stormwing Harrier's Pinions
						}),
						cl(MAGE, {
							i(200318),	-- Crystal Scholar's Cowl
							i(200320),	-- Crystal Scholar's Beacons
						}),
						cl(MONK, {
							i(200365),	-- Mantle of the Waking Fist
						}),
						cl(PALADIN, {
							i(200414),	-- Virtuous Silver Breastplate
							i(200419),	-- Virtuous Silver Pauldrons
						}),
						cl(PRIEST, {
							i(200327),	-- Draconic Hierophant's Archcowl
							i(200329),	-- Draconic Hierophant's Wisdom
						}),
						cl(ROGUE, {
							i(200372),	-- Vault Delver's Vizard
							i(200374),	-- Vault Delver's Epaulets
						}),
						cl(SHAMAN, {
							i(200399),	-- Faceguard of Insued Earth
							i(200401),	-- Calderas of Insued Earth
						}),
						cl(WARLOCK, {
							i(200336),	-- Scalesworn Cultist's Scorn
							i(200338),	-- Scalesworn Cultist's Effigy
						}),
						cl(WARRIOR, {
							i(200426),	-- Casque of the Walking Mountain
							i(200428),	-- Peaks of the Walking Mountain
						}),
					})),
					n(PVP_ELITE, bubbleDown({ ["bonusID"] = 8107 }, {
						cl(DEATHKNIGHT, {
							i(200408),	-- Maw of the Haunted Frostbrood
							i(200410),	-- Jaws of the Haunted Frostbrood
						}),
						cl(DEMONHUNTER, {
							i(200345),	-- Skybound Avenger's Visor
							i(200347),	-- Skybound Avenger's Ailerons
						}),
						cl(DRUID, {
							i(200354),	-- Lost Landcaller's Antlers
							i(200356),	-- Lost Landcaller's Mantle
						}),
						cl(EVOKER, {
							i(200381),	-- Crown of the Awakened
							i(200383),	-- Talons of the Awakened
						}),
						cl(HUNTER, {
							i(200390),	-- Stormwing Harrier's Skullmask
							i(200392),	-- Stormwing Harrier's Pinions
						}),
						cl(MAGE, {
							i(200318),	-- Crystal Scholar's Cowl
							i(200320),	-- Crystal Scholar's Beacons
						}),
						cl(MONK, {
							i(200365),	-- Mantle of the Waking Fist
						}),
						cl(PALADIN, {
							i(200414),	-- Virtuous Silver Breastplate
							i(200419),	-- Virtuous Silver Pauldrons
						}),
						cl(PRIEST, {
							i(200327),	-- Draconic Hierophant's Archcowl
							i(200329),	-- Draconic Hierophant's Wisdom
						}),
						cl(ROGUE, {
							i(200372),	-- Vault Delver's Vizard
							i(200374),	-- Vault Delver's Epaulets
						}),
						cl(SHAMAN, {
							i(200399),	-- Faceguard of Insued Earth
							i(200401),	-- Calderas of Insued Earth
						}),
						cl(WARLOCK, {
							i(200336),	-- Scalesworn Cultist's Scorn
							i(200338),	-- Scalesworn Cultist's Effigy
						}),
						cl(WARRIOR, {
							i(200426),	-- Casque of the Walking Mountain
							i(200428),	-- Peaks of the Walking Mountain
						}),
					})),
				}),
			},
		}),
		ach(18027, bubbleDownSelf({ ["timeline"] = { ADDED_10_1_0, REMOVED_11_0_0 } }, {	-- Dragonflight Season 2 Master
			-- Meta Achievement
			["sym"] = {{"meta_achievement",
				18161,	-- Heroic: Aberrus, the Shadowed Crucible
				17844,	-- Dragonflight Keystone Master: Season Two
				17798,	-- Challenger II: Dragonflight Season 2
			}},
			["g"] = {
				i(204843),	-- Draconic Mark of Mastery
			},
		})),
		ach(18380, bubbleDownSelf({ ["timeline"] = { ADDED_10_1_0 } }, {	-- Dragonflight Season 2 Hero
			-- Meta Achievement
			["sym"] = {{"meta_achievement",
				18159,	-- Mythic: Scalecommander Sarkareth
				17845,	-- Dragonflight Keystone Hero: Season Two
				17831,	-- Elite: Dragonflight Season 2
			}},
			["g"] = {
				i(205878, {	-- Obsidian Aspectral Earthstone (CI!)
					d(DIFFICULTY.RAID.LFR, bubbleDown({ ["bonusID"] = 6894, ["modID"] = 0, }, {
						cl(DEATHKNIGHT, {
							i(202461),	-- Lingering Phantom's Dreadhorns
							i(202459),	-- Lingering Phantom's Shoulderplates
						}),
						cl(DEMONHUNTER, {
							i(202524),	-- Kinslayer's Hood
							i(202522),	-- Kinslayer's Tainted Spaulders
						}),
						cl(DRUID, {
							i(202515),	-- Bough of the Autumn Blaze
							i(202512),	-- Garland of the Autumn Blaze
							i(202513),	-- Mantle of the Autumn Blaze
						}),
						cl(EVOKER, {
							i(202488),	-- Crown of Obsidian Secrets
							i(202485),	-- Lasso of Obsidian Secrets
							i(202486),	-- Wingspan of Obsidian Secrets
						}),
						cl(HUNTER, {
							i(202479),	-- Ashen Predator's Faceguard
							i(202477),	-- Ashen Predator's Trophy
						}),
						cl(MAGE, {
							i(202549),	-- Underlight Conjurer's Aurora
						}),
						cl(MONK, {
							i(202506),	-- Cover of the Vermillion Forge
							i(202504),	-- Spines of the Vermillion Forge
						}),
						cl(PALADIN, {
							i(202452),	-- Heartfire Sentinel's Forgehelm
							i(202450),	-- Heartfire Sentinel's Steelwings
						}),
						cl(PRIEST, {
							i(202542),	-- Mask of the Furnace Seraph
						}),
						cl(ROGUE, {
							i(202495),	-- Lurking Specter's Shoulderblades
						}),
						cl(SHAMAN, {
							i(202470),	-- Spangenhelm of the Cinderwolf
							i(202468),	-- Thunderpads of the Cinderwolf
						}),
						cl(WARLOCK, {
							i(202531),	-- Amice of the Sinister Savant
							i(202533),	-- Grimhorns of the Sinister Savant
						}),
						cl(WARRIOR, {
							i(202441),	-- Pauldrons of the Onyx Crucible
							i(202443),	-- Thraexhelm of the Onyx Crucible
						}),
					})),
					d(DIFFICULTY.RAID.NORMAL, bubbleDown({ ["bonusID"] = 6895, ["modID"] = 0, }, {
						cl(DEATHKNIGHT, {
							i(202461),	-- Lingering Phantom's Dreadhorns
							i(202459),	-- Lingering Phantom's Shoulderplates
						}),
						cl(DEMONHUNTER, {
							i(202524),	-- Kinslayer's Hood
							i(202522),	-- Kinslayer's Tainted Spaulders
						}),
						cl(DRUID, {
							i(202515),	-- Bough of the Autumn Blaze
							i(202512),	-- Garland of the Autumn Blaze
							i(202513),	-- Mantle of the Autumn Blaze
						}),
						cl(EVOKER, {
							i(202488),	-- Crown of Obsidian Secrets
							i(202485),	-- Lasso of Obsidian Secrets
							i(202486),	-- Wingspan of Obsidian Secrets
						}),
						cl(HUNTER, {
							i(202479),	-- Ashen Predator's Faceguard
							i(202477),	-- Ashen Predator's Trophy
						}),
						cl(MAGE, {
							i(202549),	-- Underlight Conjurer's Aurora
						}),
						cl(MONK, {
							i(202506),	-- Cover of the Vermillion Forge
							i(202504),	-- Spines of the Vermillion Forge
						}),
						cl(PALADIN, {
							i(202452),	-- Heartfire Sentinel's Forgehelm
							i(202450),	-- Heartfire Sentinel's Steelwings
						}),
						cl(PRIEST, {
							i(202542),	-- Mask of the Furnace Seraph
						}),
						cl(ROGUE, {
							i(202495),	-- Lurking Specter's Shoulderblades
						}),
						cl(SHAMAN, {
							i(202470),	-- Spangenhelm of the Cinderwolf
							i(202468),	-- Thunderpads of the Cinderwolf
						}),
						cl(WARLOCK, {
							i(202531),	-- Amice of the Sinister Savant
							i(202533),	-- Grimhorns of the Sinister Savant
						}),
						cl(WARRIOR, {
							i(202441),	-- Pauldrons of the Onyx Crucible
							i(202443),	-- Thraexhelm of the Onyx Crucible
						}),
					})),
					d(DIFFICULTY.RAID.HEROIC, bubbleDown({ ["bonusID"] = 6896, ["modID"] = 0, }, {
						cl(DEATHKNIGHT, {
							i(202461),	-- Lingering Phantom's Dreadhorns
							i(202459),	-- Lingering Phantom's Shoulderplates
						}),
						cl(DEMONHUNTER, {
							i(202524),	-- Kinslayer's Hood
							i(202522),	-- Kinslayer's Tainted Spaulders
						}),
						cl(DRUID, {
							i(202515),	-- Bough of the Autumn Blaze
							i(202512),	-- Garland of the Autumn Blaze
							i(202513),	-- Mantle of the Autumn Blaze
						}),
						cl(EVOKER, {
							i(202488),	-- Crown of Obsidian Secrets
							i(202485),	-- Lasso of Obsidian Secrets
							i(202486),	-- Wingspan of Obsidian Secrets
						}),
						cl(HUNTER, {
							i(202479),	-- Ashen Predator's Faceguard
							i(202477),	-- Ashen Predator's Trophy
						}),
						cl(MAGE, {
							i(202549),	-- Underlight Conjurer's Aurora
						}),
						cl(MONK, {
							i(202506),	-- Cover of the Vermillion Forge
							i(202504),	-- Spines of the Vermillion Forge
						}),
						cl(PALADIN, {
							i(202452),	-- Heartfire Sentinel's Forgehelm
							i(202450),	-- Heartfire Sentinel's Steelwings
						}),
						cl(PRIEST, {
							i(202542),	-- Mask of the Furnace Seraph
						}),
						cl(ROGUE, {
							i(202495),	-- Lurking Specter's Shoulderblades
						}),
						cl(SHAMAN, {
							i(202470),	-- Spangenhelm of the Cinderwolf
							i(202468),	-- Thunderpads of the Cinderwolf
						}),
						cl(WARLOCK, {
							i(202531),	-- Amice of the Sinister Savant
							i(202533),	-- Grimhorns of the Sinister Savant
						}),
						cl(WARRIOR, {
							i(202441),	-- Pauldrons of the Onyx Crucible
							i(202443),	-- Thraexhelm of the Onyx Crucible
						}),
					})),
					d(DIFFICULTY.RAID.MYTHIC, bubbleDown({ ["bonusID"] = 6897, ["modID"] = 0, }, {
						cl(DEATHKNIGHT, {
							i(202461),	-- Lingering Phantom's Dreadhorns
							i(202459),	-- Lingering Phantom's Shoulderplates
						}),
						cl(DEMONHUNTER, {
							i(202524),	-- Kinslayer's Hood
							i(202522),	-- Kinslayer's Tainted Spaulders
						}),
						cl(DRUID, {
							i(202515),	-- Bough of the Autumn Blaze
							i(202512),	-- Garland of the Autumn Blaze
							i(202513),	-- Mantle of the Autumn Blaze
						}),
						cl(EVOKER, {
							i(202488),	-- Crown of Obsidian Secrets
							i(202485),	-- Lasso of Obsidian Secrets
							i(202486),	-- Wingspan of Obsidian Secrets
						}),
						cl(HUNTER, {
							i(202479),	-- Ashen Predator's Faceguard
							i(202477),	-- Ashen Predator's Trophy
						}),
						cl(MAGE, {
							i(202549),	-- Underlight Conjurer's Aurora
						}),
						cl(MONK, {
							i(202506),	-- Cover of the Vermillion Forge
							i(202504),	-- Spines of the Vermillion Forge
						}),
						cl(PALADIN, {
							i(202452),	-- Heartfire Sentinel's Forgehelm
							i(202450),	-- Heartfire Sentinel's Steelwings
						}),
						cl(PRIEST, {
							i(202542),	-- Mask of the Furnace Seraph
						}),
						cl(ROGUE, {
							i(202495),	-- Lurking Specter's Shoulderblades
						}),
						cl(SHAMAN, {
							i(202470),	-- Spangenhelm of the Cinderwolf
							i(202468),	-- Thunderpads of the Cinderwolf
						}),
						cl(WARLOCK, {
							i(202531),	-- Amice of the Sinister Savant
							i(202533),	-- Grimhorns of the Sinister Savant
						}),
						cl(WARRIOR, {
							i(202441),	-- Pauldrons of the Onyx Crucible
							i(202443),	-- Thraexhelm of the Onyx Crucible
						}),
					})),
					n(PVP_GLADIATOR, bubbleDown({ ["bonusID"] = 6898 }, {
						cl(DEATHKNIGHT, {
							i(202461),	-- Lingering Phantom's Dreadhorns
							i(202459),	-- Lingering Phantom's Shoulderplates
						}),
						cl(DEMONHUNTER, {
							i(202524),	-- Kinslayer's Hood
							i(202522),	-- Kinslayer's Tainted Spaulders
						}),
						cl(DRUID, {
							i(202515),	-- Bough of the Autumn Blaze
							i(202512),	-- Garland of the Autumn Blaze
							i(202513),	-- Mantle of the Autumn Blaze
						}),
						cl(EVOKER, {
							i(202488),	-- Crown of Obsidian Secrets
							i(202485),	-- Lasso of Obsidian Secrets
							i(202486),	-- Wingspan of Obsidian Secrets
						}),
						cl(HUNTER, {
							i(202479),	-- Ashen Predator's Faceguard
							i(202477),	-- Ashen Predator's Trophy
						}),
						cl(MAGE, {
							i(202549),	-- Underlight Conjurer's Aurora
						}),
						cl(MONK, {
							i(202506),	-- Cover of the Vermillion Forge
							i(202504),	-- Spines of the Vermillion Forge
						}),
						cl(PALADIN, {
							i(202452),	-- Heartfire Sentinel's Forgehelm
							i(202450),	-- Heartfire Sentinel's Steelwings
						}),
						cl(PRIEST, {
							i(202542),	-- Mask of the Furnace Seraph
						}),
						cl(ROGUE, {
							i(202495),	-- Lurking Specter's Shoulderblades
						}),
						cl(SHAMAN, {
							i(202470),	-- Spangenhelm of the Cinderwolf
							i(202468),	-- Thunderpads of the Cinderwolf
						}),
						cl(WARLOCK, {
							i(202531),	-- Amice of the Sinister Savant
							i(202533),	-- Grimhorns of the Sinister Savant
						}),
						cl(WARRIOR, {
							i(202441),	-- Pauldrons of the Onyx Crucible
							i(202443),	-- Thraexhelm of the Onyx Crucible
						}),
					})),
					n(PVP_ELITE, bubbleDown({ ["bonusID"] = 8107 }, {
						cl(DEATHKNIGHT, {
							i(202461),	-- Lingering Phantom's Dreadhorns
							i(202459),	-- Lingering Phantom's Shoulderplates
						}),
						cl(DEMONHUNTER, {
							i(202524),	-- Kinslayer's Hood
							i(202522),	-- Kinslayer's Tainted Spaulders
						}),
						cl(DRUID, {
							i(202515),	-- Bough of the Autumn Blaze
							i(202512),	-- Garland of the Autumn Blaze
							i(202513),	-- Mantle of the Autumn Blaze
						}),
						cl(EVOKER, {
							i(202488),	-- Crown of Obsidian Secrets
							i(202485),	-- Lasso of Obsidian Secrets
							i(202486),	-- Wingspan of Obsidian Secrets
						}),
						cl(HUNTER, {
							i(202479),	-- Ashen Predator's Faceguard
							i(202477),	-- Ashen Predator's Trophy
						}),
						cl(MAGE, {
							i(202549),	-- Underlight Conjurer's Aurora
						}),
						cl(MONK, {
							i(202506),	-- Cover of the Vermillion Forge
							i(202504),	-- Spines of the Vermillion Forge
						}),
						cl(PALADIN, {
							i(202452),	-- Heartfire Sentinel's Forgehelm
							i(202450),	-- Heartfire Sentinel's Steelwings
						}),
						cl(PRIEST, {
							i(202542),	-- Mask of the Furnace Seraph
						}),
						cl(ROGUE, {
							i(202495),	-- Lurking Specter's Shoulderblades
						}),
						cl(SHAMAN, {
							i(202470),	-- Spangenhelm of the Cinderwolf
							i(202468),	-- Thunderpads of the Cinderwolf
						}),
						cl(WARLOCK, {
							i(202531),	-- Amice of the Sinister Savant
							i(202533),	-- Grimhorns of the Sinister Savant
						}),
						cl(WARRIOR, {
							i(202441),	-- Pauldrons of the Onyx Crucible
							i(202443),	-- Thraexhelm of the Onyx Crucible
						}),
					})),
				}),
			},
		})),
		ach(19396, bubbleDownSelf({ ["timeline"] = { ADDED_10_2_0, REMOVED_11_0_0 } }, {	-- Dragonflight Season 3 Master
			-- Meta Achievement
			["sym"] = {{"meta_achievement",
				19333,	-- Heroic: Amirdrassil, the Dream's Hope
				19011,	-- Dragonflight Keystone Master: Season Three
				19160,	-- Challenger II: Dragonflight Season 3
			}},
			["g"] = {
				i(210944),	-- Emerald Mark of Mastery
			},
		})),
		ach(19420, bubbleDownSelf({ ["timeline"] = { ADDED_10_2_0 } }, {	-- Dragonflight Season 3 Hero
			-- Meta Achievement
			["sym"] = {{"meta_achievement",
				19343,	-- Mythic: Fyrakk the Blazing
				19012,	-- Dragonflight Keystone Hero: Season Three
				19090,	-- Elite: Dragonflight Season 3
			}},
			["g"] = {
				i(210468, {	-- Emerald Blossom Dreamstone (CI!)
					d(DIFFICULTY.RAID.LFR, bubbleDown({ ["bonusID"] = 6896, ["modID"] = 0, }, {
						cl(DEATHKNIGHT, {	-- HEAD, SHOULDERS
							i(207200),	-- Piercing Gaze of the Risen Nightmare
							i(207198),	-- Skewers of the Risen Nightmare
						}),
						cl(DEMONHUNTER, {	-- SHOULDERS
							i(207261),	-- Screaming Torchfiend's Horned Memento
						}),
						cl(DRUID, {		-- SHOULDERS
							i(207252),	-- Benevolent Embersage's Wisdom
						}),
						cl(EVOKER, {	-- HEAD
							i(207227),	-- Weyrnkeeper's Timeless Dracoif
						}),
						cl(HUNTER, {	-- SHOULDERS
							i(207216),	-- Blazing Dreamstalker's Finest Hunt
						}),
						cl(MAGE, {		-- HEAD, SHOULDERS, WAIST
							i(207290),	-- Wayward Chronomancer's Chronocap
							i(207288),	-- Wayward Chronomancer's Metronomes
							i(207287),	-- Wayward Chronomancer's Synchronous Belt
						}),
						cl(MONK, {		-- SHOULDERS
							i(207243),	-- Mystic Heron's Hopeful Effigy
						}),
						cl(PALADIN, {	-- SHOULDERS
							i(207189),	-- Zealous Pyreknight's Ailettes
						}),
						cl(PRIEST, {	-- HEAD, SHOULDERS
							i(207281),	-- Crest of Lunar Communion
							i(207279),	-- Shoulderguardians of Lunar Communion
						}),
						cl(ROGUE, {		-- HEAD, SHOULDERS
							i(207234),	-- Lucid Shadewalker's Bladed Spaulders
							i(207236),	-- Lucid Shadewalker's Deathmask
						}),
						cl(SHAMAN, {	-- HEAD, SHOULDERS
							i(207207),	-- Greatwolf Outcast's Companions
							i(207209),	-- Greatwolf Outcast's Jaws
						}),
						cl(WARLOCK, {	-- HEAD, SHOULDERS
							i(207272),	-- Devout Ashdevil's Grimhorns
							i(207270),	-- Devout Ashdevil's Hatespikes
						}),
						cl(WARRIOR, {	-- HEAD, SHOULDERS, CHEST, WAIST
							i(207179),	-- Molten Vanguard's Chains
							i(207182),	-- Molten Vanguard's Domeplate
							i(207185),	-- Molten Vanguard's Plackart
							i(207180),	-- Molten Vanguard's Shouldervents
						}),
					})),
					d(DIFFICULTY.RAID.NORMAL, bubbleDown({ ["bonusID"] = 6894, ["modID"] = 0, }, {
						cl(DEATHKNIGHT, {	-- HEAD, SHOULDERS
							i(207200),	-- Piercing Gaze of the Risen Nightmare
							i(207198),	-- Skewers of the Risen Nightmare
						}),
						cl(DEMONHUNTER, {	-- SHOULDERS
							i(207261),	-- Screaming Torchfiend's Horned Memento
						}),
						cl(DRUID, {		-- SHOULDERS
							i(207252),	-- Benevolent Embersage's Wisdom
						}),
						cl(EVOKER, {	-- HEAD
							i(207227),	-- Weyrnkeeper's Timeless Dracoif
						}),
						cl(HUNTER, {	-- SHOULDERS
							i(207216),	-- Blazing Dreamstalker's Finest Hunt
						}),
						cl(MAGE, {		-- HEAD, SHOULDERS, WAIST
							i(207290),	-- Wayward Chronomancer's Chronocap
							i(207288),	-- Wayward Chronomancer's Metronomes
							i(207287),	-- Wayward Chronomancer's Synchronous Belt
						}),
						cl(MONK, {		-- SHOULDERS
							i(207243),	-- Mystic Heron's Hopeful Effigy
						}),
						cl(PALADIN, {	-- SHOULDERS
							i(207189),	-- Zealous Pyreknight's Ailettes
						}),
						cl(PRIEST, {	-- HEAD, SHOULDERS
							i(207281),	-- Crest of Lunar Communion
							i(207279),	-- Shoulderguardians of Lunar Communion
						}),
						cl(ROGUE, {		-- HEAD, SHOULDERS
							i(207234),	-- Lucid Shadewalker's Bladed Spaulders
							i(207236),	-- Lucid Shadewalker's Deathmask
						}),
						cl(SHAMAN, {	-- HEAD, SHOULDERS
							i(207207),	-- Greatwolf Outcast's Companions
							i(207209),	-- Greatwolf Outcast's Jaws
						}),
						cl(WARLOCK, {	-- HEAD, SHOULDERS
							i(207272),	-- Devout Ashdevil's Grimhorns
							i(207270),	-- Devout Ashdevil's Hatespikes
						}),
						cl(WARRIOR, {	-- HEAD, SHOULDERS, CHEST, WAIST
							i(207179),	-- Molten Vanguard's Chains
							i(207182),	-- Molten Vanguard's Domeplate
							i(207185),	-- Molten Vanguard's Plackart
							i(207180),	-- Molten Vanguard's Shouldervents
						}),
					})),
					d(DIFFICULTY.RAID.HEROIC, bubbleDown({ ["bonusID"] = 6897, ["modID"] = 0, }, {
						cl(DEATHKNIGHT, {	-- HEAD, SHOULDERS
							i(207200),	-- Piercing Gaze of the Risen Nightmare
							i(207198),	-- Skewers of the Risen Nightmare
						}),
						cl(DEMONHUNTER, {	-- SHOULDERS
							i(207261),	-- Screaming Torchfiend's Horned Memento
						}),
						cl(DRUID, {		-- SHOULDERS
							i(207252),	-- Benevolent Embersage's Wisdom
						}),
						cl(EVOKER, {	-- HEAD
							i(207227),	-- Weyrnkeeper's Timeless Dracoif
						}),
						cl(HUNTER, {	-- SHOULDERS
							i(207216),	-- Blazing Dreamstalker's Finest Hunt
						}),
						cl(MAGE, {		-- HEAD, SHOULDERS, WAIST
							i(207290),	-- Wayward Chronomancer's Chronocap
							i(207288),	-- Wayward Chronomancer's Metronomes
							i(207287),	-- Wayward Chronomancer's Synchronous Belt
						}),
						cl(MONK, {		-- SHOULDERS
							i(207243),	-- Mystic Heron's Hopeful Effigy
						}),
						cl(PALADIN, {	-- SHOULDERS
							i(207189),	-- Zealous Pyreknight's Ailettes
						}),
						cl(PRIEST, {	-- HEAD, SHOULDERS
							i(207281),	-- Crest of Lunar Communion
							i(207279),	-- Shoulderguardians of Lunar Communion
						}),
						cl(ROGUE, {		-- HEAD, SHOULDERS
							i(207234),	-- Lucid Shadewalker's Bladed Spaulders
							i(207236),	-- Lucid Shadewalker's Deathmask
						}),
						cl(SHAMAN, {	-- HEAD, SHOULDERS
							i(207207),	-- Greatwolf Outcast's Companions
							i(207209),	-- Greatwolf Outcast's Jaws
						}),
						cl(WARLOCK, {	-- HEAD, SHOULDERS
							i(207272),	-- Devout Ashdevil's Grimhorns
							i(207270),	-- Devout Ashdevil's Hatespikes
						}),
						cl(WARRIOR, {	-- HEAD, SHOULDERS, CHEST, WAIST
							i(207179),	-- Molten Vanguard's Chains
							i(207182),	-- Molten Vanguard's Domeplate
							i(207185),	-- Molten Vanguard's Plackart
							i(207180),	-- Molten Vanguard's Shouldervents
						}),
					})),
					d(DIFFICULTY.RAID.MYTHIC, bubbleDown({ ["bonusID"] = 6895, ["modID"] = 0, }, {
						cl(DEATHKNIGHT, {	-- HEAD, SHOULDERS
							i(207200),	-- Piercing Gaze of the Risen Nightmare
							i(207198),	-- Skewers of the Risen Nightmare
						}),
						cl(DEMONHUNTER, {	-- SHOULDERS
							i(207261),	-- Screaming Torchfiend's Horned Memento
						}),
						cl(DRUID, {		-- SHOULDERS
							i(207252),	-- Benevolent Embersage's Wisdom
						}),
						cl(EVOKER, {	-- HEAD
							i(207227),	-- Weyrnkeeper's Timeless Dracoif
						}),
						cl(HUNTER, {	-- SHOULDERS
							i(207216),	-- Blazing Dreamstalker's Finest Hunt
						}),
						cl(MAGE, {		-- HEAD, SHOULDERS, WAIST
							i(207290),	-- Wayward Chronomancer's Chronocap
							i(207288),	-- Wayward Chronomancer's Metronomes
							i(207287),	-- Wayward Chronomancer's Synchronous Belt
						}),
						cl(MONK, {		-- SHOULDERS
							i(207243),	-- Mystic Heron's Hopeful Effigy
						}),
						cl(PALADIN, {	-- SHOULDERS
							i(207189),	-- Zealous Pyreknight's Ailettes
						}),
						cl(PRIEST, {	-- HEAD, SHOULDERS
							i(207281),	-- Crest of Lunar Communion
							i(207279),	-- Shoulderguardians of Lunar Communion
						}),
						cl(ROGUE, {		-- HEAD, SHOULDERS
							i(207234),	-- Lucid Shadewalker's Bladed Spaulders
							i(207236),	-- Lucid Shadewalker's Deathmask
						}),
						cl(SHAMAN, {	-- HEAD, SHOULDERS
							i(207207),	-- Greatwolf Outcast's Companions
							i(207209),	-- Greatwolf Outcast's Jaws
						}),
						cl(WARLOCK, {	-- HEAD, SHOULDERS
							i(207272),	-- Devout Ashdevil's Grimhorns
							i(207270),	-- Devout Ashdevil's Hatespikes
						}),
						cl(WARRIOR, {	-- HEAD, SHOULDERS, CHEST, WAIST
							i(207179),	-- Molten Vanguard's Chains
							i(207182),	-- Molten Vanguard's Domeplate
							i(207185),	-- Molten Vanguard's Plackart
							i(207180),	-- Molten Vanguard's Shouldervents
						}),
					})),
					n(PVP_GLADIATOR, bubbleDown({ ["bonusID"] = 6898 }, {
						cl(DEATHKNIGHT, {	-- HEAD, SHOULDERS
							i(207200),	-- Piercing Gaze of the Risen Nightmare
							i(207198),	-- Skewers of the Risen Nightmare
						}),
						cl(DEMONHUNTER, {	-- SHOULDERS
							i(207261),	-- Screaming Torchfiend's Horned Memento
						}),
						cl(DRUID, {		-- SHOULDERS
							i(207252),	-- Benevolent Embersage's Wisdom
						}),
						cl(EVOKER, {	-- HEAD
							i(207227),	-- Weyrnkeeper's Timeless Dracoif
						}),
						cl(HUNTER, {	-- SHOULDERS
							i(207216),	-- Blazing Dreamstalker's Finest Hunt
						}),
						cl(MAGE, {		-- HEAD, SHOULDERS, WAIST
							i(207290),	-- Wayward Chronomancer's Chronocap
							i(207288),	-- Wayward Chronomancer's Metronomes
							i(207287),	-- Wayward Chronomancer's Synchronous Belt
						}),
						cl(MONK, {		-- SHOULDERS
							i(207243),	-- Mystic Heron's Hopeful Effigy
						}),
						cl(PALADIN, {	-- SHOULDERS
							i(207189),	-- Zealous Pyreknight's Ailettes
						}),
						cl(PRIEST, {	-- HEAD, SHOULDERS
							i(207281),	-- Crest of Lunar Communion
							i(207279),	-- Shoulderguardians of Lunar Communion
						}),
						cl(ROGUE, {		-- HEAD, SHOULDERS
							i(207234),	-- Lucid Shadewalker's Bladed Spaulders
							i(207236),	-- Lucid Shadewalker's Deathmask
						}),
						cl(SHAMAN, {	-- HEAD, SHOULDERS
							i(207207),	-- Greatwolf Outcast's Companions
							i(207209),	-- Greatwolf Outcast's Jaws
						}),
						cl(WARLOCK, {	-- HEAD, SHOULDERS
							i(207272),	-- Devout Ashdevil's Grimhorns
							i(207270),	-- Devout Ashdevil's Hatespikes
						}),
						cl(WARRIOR, {	-- HEAD, SHOULDERS, CHEST, WAIST
							i(207179),	-- Molten Vanguard's Chains
							i(207182),	-- Molten Vanguard's Domeplate
							i(207185),	-- Molten Vanguard's Plackart
							i(207180),	-- Molten Vanguard's Shouldervents
						}),
					})),
					n(PVP_ELITE, bubbleDown({ ["bonusID"] = 8107 }, {
						cl(DEATHKNIGHT, {	-- HEAD, SHOULDERS
							i(207200),	-- Piercing Gaze of the Risen Nightmare
							i(207198),	-- Skewers of the Risen Nightmare
						}),
						cl(DEMONHUNTER, {	-- SHOULDERS
							i(207261),	-- Screaming Torchfiend's Horned Memento
						}),
						cl(DRUID, {		-- SHOULDERS
							i(207252),	-- Benevolent Embersage's Wisdom
						}),
						cl(EVOKER, {	-- HEAD
							i(207227),	-- Weyrnkeeper's Timeless Dracoif
						}),
						cl(HUNTER, {	-- SHOULDERS
							i(207216),	-- Blazing Dreamstalker's Finest Hunt
						}),
						cl(MAGE, {		-- HEAD, SHOULDERS, WAIST
							i(207290),	-- Wayward Chronomancer's Chronocap
							i(207288),	-- Wayward Chronomancer's Metronomes
							i(207287),	-- Wayward Chronomancer's Synchronous Belt
						}),
						cl(MONK, {		-- SHOULDERS
							i(207243),	-- Mystic Heron's Hopeful Effigy
						}),
						cl(PALADIN, {	-- SHOULDERS
							i(207189),	-- Zealous Pyreknight's Ailettes
						}),
						cl(PRIEST, {	-- HEAD, SHOULDERS
							i(207281),	-- Crest of Lunar Communion
							i(207279),	-- Shoulderguardians of Lunar Communion
						}),
						cl(ROGUE, {		-- HEAD, SHOULDERS
							i(207234),	-- Lucid Shadewalker's Bladed Spaulders
							i(207236),	-- Lucid Shadewalker's Deathmask
						}),
						cl(SHAMAN, {	-- HEAD, SHOULDERS
							i(207207),	-- Greatwolf Outcast's Companions
							i(207209),	-- Greatwolf Outcast's Jaws
						}),
						cl(WARLOCK, {	-- HEAD, SHOULDERS
							i(207272),	-- Devout Ashdevil's Grimhorns
							i(207270),	-- Devout Ashdevil's Hatespikes
						}),
						cl(WARRIOR, {	-- HEAD, SHOULDERS, CHEST, WAIST
							i(207179),	-- Molten Vanguard's Chains
							i(207182),	-- Molten Vanguard's Domeplate
							i(207185),	-- Molten Vanguard's Plackart
							i(207180),	-- Molten Vanguard's Shouldervents
						}),
					})),
				}),
			},
		})),
		ach(20481, bubbleDownSelf({ ["timeline"] = { ADDED_10_2_6_SEASON_FOUR, REMOVED_TWW_LAUNCH } }, {	-- Dragonflight Season 4 Master
			-- Meta Achievement
			["sym"] = {{"meta_achievement",
				19499,	-- Challenger II: Dragonflight Season 4
				19782,	-- Dragonflight Keystone Master: Season Four
				19571,	-- Heroic: Awakened Flames
				19568,	-- Heroic: Awakened Shadows
				19565,	-- Heroic: Awakened Storms
			}},
			["g"] = {
				i(217410),	-- Awakened Mark of Mastery
			},
		})),
		ach(19326, {	-- Dreaming of Drakes
			["timeline"] = { ADDED_10_2_0, REMOVED_10_2_6_SEASON_FOUR },
		}),
		ach(19397, {	-- Dreaming of Wyrms
			["timeline"] = { ADDED_10_2_0, REMOVED_10_2_6_SEASON_FOUR },
		}),
		ach(19398, {	-- Dreaming of the Aspects
			["timeline"] = { ADDED_10_2_0, REMOVED_10_2_6_SEASON_FOUR },
		}),
		ach(16808, {	-- Friend of the Dragon Isles
			crit(57032, {	-- A Mystery, Sealed
				["_quests"] = { 66128 },	-- Next Steps
			}),
			crit(57033, {	-- In the Halls of Titans
				["_quests"] = { 66547 },	-- It Belongs in a Museum... Eventually
			}),
			crit(57035, {	-- Garden of Secrets
				["_quests"] = { 66191 },	-- And Yet So Far
			}),
			crit(57036, {	-- The Dreamer
				["_quests"] = { 66402 },	-- Like Mother, Like Daughter
			}),
			crit(57034, {	-- The Chieftain's Duty
				["_quests"] = { 66444 },	-- While the Iron Is Hot
			}),
			crit(57037, {	-- The Silver Purpose
				["_quests"] = { 67084 },	-- The Silver Purpose
			}),
		}),
		ach(18804, bubbleDownSelf({ ["timeline"] = { ADDED_10_1_7 } }, {	-- Neltharion's Legacy
			-- Meta Achievement
			["sym"] = {{"meta_achievement",
				17773,	-- A Blue Dawn
				18160,	-- Aberrus, the Shadowed Crucible
				18703,	-- Dawn of the Infinite: Galakrond's Fall
				18704,	-- Dawn of the Infinite: Murozond's Rise
				19008,	-- Dream Shaper
				18615,	-- Legend of the Multiverse
				18209,	-- Nothing Stops the Research
				17785,	-- Que Zara(lek), Zara(lek)
				18867,	-- Through the Ashes and Flames
			}},
			["groups"] = {
				i(208551, {	-- Ambrosial Sporestone (CI!)
					filter(CLOTH, {
						i(207927,{["bonusID"] = 6894,}),	-- Crown of the Infinite Lord
						i(204786,{["bonusID"] = 6895,}),	-- Suffused Cowl
						i(205061,{["bonusID"] = 6896,}),	-- Zaralek Surveyor's Cowl
						i(207598,{["bonusID"] = 6897,}),	-- Anachronistic Hood
						i(204923,{["bonusID"] = 6898,}),	-- Moonless Hood
						i(204584,{["bonusID"] = 8107,}),	-- Endowed Hood
						i(208503,{["bonusID"] = 6894,}),	-- Infinite Zealot's Mantle
						i(204758,{["bonusID"] = 6895,}),	-- Suffused Shoulderpads
						i(205089,{["bonusID"] = 6896,}),	-- Zaralek Surveyor's Shoulderpads
						i(207600,{["bonusID"] = 6897,}),	-- Anachronistic Mantle
						i(204925,{["bonusID"] = 6898,}),	-- Moonless Shoulderpads
						i(204586,{["bonusID"] = 8107,}),	-- Endowed Mantle
					}),
					filter(LEATHER, {
						i(207936,{["bonusID"] = 6894,}),	-- Hood of Perpetual Conflict
						i(204780,{["bonusID"] = 6895,}),	-- Suffused Helm
						i(205067,{["bonusID"] = 6896,}),	-- Zaralek Surveyor's Helm
						i(207606,{["bonusID"] = 6897,}),	-- Mask of Discontinuity
						i(204931,{["bonusID"] = 6898,}),	-- Sunless Cowl
						i(204592,{["bonusID"] = 8107,}),	-- Inherited Mask
						-- no shoulders for leather
					}),
					filter(MAIL, {
						i(208521,{["bonusID"] = 6894,}),	-- Infinite Soldier's Cowl
						i(204773,{["bonusID"] = 6895,}),	-- Suffused Coif
						i(205074,{["bonusID"] = 6896,}),	-- Zaralek Surveyor's Coif
						i(207614,{["bonusID"] = 6897,}),	-- Paradoxical Cowl
						i(204940,{["bonusID"] = 6898,}),	-- Skyless Coif
						i(204600,{["bonusID"] = 8107,}),	-- Bequeathed Cowl
						i(207945,{["bonusID"] = 6894,}),	-- Chrono-Lord's Wingspan
						i(204771,{["bonusID"] = 6895,}),	-- Suffused Shoulderguards
						i(205076,{["bonusID"] = 6896,}),	-- Zaralek Surveyor's Shoulderguards
						i(207616,{["bonusID"] = 6897,}),	-- Paradoxical Spaulders
						i(204942,{["bonusID"] = 6898,}),	-- Skyless Epaulets
						i(204602,{["bonusID"] = 8107,}),	-- Bequeathed Spaulders
					}),
					filter(PLATE, {
						i(208529,{["bonusID"] = 6894,}),	-- Infinite Vanguard's Greathelm
						i(204768,{["bonusID"] = 6895,}),	-- Suffused Helm
						i(205079,{["bonusID"] = 6896,}),	-- Zaralek Surveyor's Helm
						i(207622,{["bonusID"] = 6897,}),	-- Anomalous Greathelm
						i(204948,{["bonusID"] = 6898,}),	-- Starless Fullhelm
						i(204608,{["bonusID"] = 8107,}),	-- Bestowed Greathelm
						i(208531,{["bonusID"] = 6894,}),	-- Infinite Vanguard's Pauldrons
						i(204763,{["bonusID"] = 6895,}),	-- Suffused Mantle
						i(205084,{["bonusID"] = 6896,}),	-- Zaralek Surveyor's Mantle
						i(207624,{["bonusID"] = 6897,}),	-- Anomalous Pauldrons
						i(204950,{["bonusID"] = 6898,}),	-- Starless Mantle
						i(204610,{["bonusID"] = 8107,}),	-- Bestowed Pauldrons
					}),
				}),
			},
		})),
		ach(19466, {	-- Oh My God, They Were Clutchmates
			["timeline"] = { ADDED_10_2_6 },
			-- Meta Achievement
			-- #if BEFORE 11.0.7
			["sym"] = {{"meta_achievement",
				16522,	-- A True Explorer
				16530,	-- Ally of the Flights
				16539,	-- In High Esteem
				16529,	-- Joining the Community
				16528,	-- Joining the Khansguard
				18615,	-- Legend of the Multiverse
				16494,	-- Loyalty to the Prince
				16537,	-- Maximum Power!
				16760,	-- The Obsidian Bloodline
				17763,	-- There's No Place Like Loamm
				19235,	-- Warden of the Dream
				17427,	-- Winterpelt Conversationalist
			}},
			-- #else
			["sym"] = {{"meta_achievement",
				41174,	-- A True Explorer
				41174,	-- Ally of the Flights
				16539,	-- In High Esteem
				41181,	-- Joining the Community
				41180,	-- Joining the Khansguard
				18615,	-- Legend of the Multiverse
				16494,	-- Loyalty to the Prince
				16537,	-- Maximum Power!
				16760,	-- The Obsidian Bloodline
				41183,	-- There's No Place Like Loamm
				41177,	-- Warden of the Dream
				17427,	-- Winterpelt Conversationalist
			}},
			-- #endif
		}),
		ach(16549, {	-- Popular Around the Isles
			-- Meta Achievement
			["sym"] = {{"meta_achievement",
				16522,	-- A True Explorer
				16530,	-- Ally of the Flights
				16529,	-- Joining the Community
				16528,	-- Joining the Khansguard
			}},
			["timeline"] = { REMOVED_11_0_7 }
		}),
		ach(41179, {	-- Popular Around the Isles
			-- Meta Achievement
			["sym"] = {{"meta_achievement",
				41174,	-- A True Explorer
				41182,	-- Ally of the Flights
				41181,	-- Joining the Community
				41180,	-- Joining the Khansguard
			}},
			["timeline"] = { ADDED_11_0_7 }
		}),
		ach(17978, { ["timeline"] = { REMOVED_TWW_LAUNCH } }),	-- Stones Can Fly!
		ach(17977, { ["timeline"] = { REMOVED_TWW_LAUNCH } }),	-- Stones Can Try To Fly!
		ach(17830, {	-- Stones Can't Fly!
			["timeline"] = { REMOVED_TWW_LAUNCH },
			["g"] = {
				i(204195, {	-- Drake's Shadowflame Crest
					["timeline"] = { ADDED_10_1_0, REMOVED_10_2_0 },
				}),
				i(210770, {	-- Satchel of Drake's Dreaming Crests
					["timeline"] = { ADDED_10_2_0, REMOVED_10_2_6_SEASON_FOUR },
				}),
				i(211952, {	-- Satchel of Drake's Awakened Crests
					["timeline"] = { ADDED_10_2_6_SEASON_FOUR, REMOVED_TWW_LAUNCH },
				}),
			},
		}),
	}),
})));