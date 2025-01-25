-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------
local VAULT_OF_THE_INCARNATES = 2390;
local ABERRUS_THE_SHADOWED_CRUCIBLE = 2403;
local ADMIRDRASSIL_THE_DREAMS_HOPE = 2502;
local SymRaidVault = function(ClassID, DiffID)
	return {{"sub","instance_tier",1200,DiffID,ClassID}};
end
local SymRaidAberrus = function(ClassID, DiffID)
	return {{"sub","instance_tier",1208,DiffID,ClassID}};
end
local SymRaidAdmirdrassil = function(ClassID, DiffID)
	return {{"sub","instance_tier",1207,DiffID,ClassID}}
end
root(ROOTS.ExpansionFeatures, expansion(EXPANSION.DF, bubbleDown({ ["timeline"] = { ADDED_10_0_5 } }, {
	o(382621, {	-- Revival Catalyst Console
		["description"] = "Help us gather information of what is/isn't available via doing reports in ATT Discord. Especially the alternative sets and if the PvP transmog is available somewhere else.",
		["coord"] = { 60.6, 53.8, THALDRASZUS },
		["modelScale"] = 4,
		["sourceQuests"] = { 72360 },	-- Reviving the Machine
		["g"] = {
			-- #if BEFORE TWW
			header(HEADERS.LFGDungeon, VAULT_OF_THE_INCARNATES, {
				d(DIFFICULTY.RAID.LFR, {
					["description"] = "",
					["g"] = bubbleDown({ ["bonusID"] = 451 }, {
						cl(DEATHKNIGHT, {
							["sym"] = SymRaidVault(DEATHKNIGHT, DIFFICULTY.RAID.LFR),
							["g"] = {
								i(200413),	-- Drape of the Haunted Frostbrood
								i(200411),	-- Girdle of the Haunted Frostbrood
								i(200406),	-- Sabatons of the Haunted Frostbrood
								i(200412),	-- Vambraces of the Haunted Frostbrood
							},
						}),
						cl(DEMONHUNTER, {
							["sym"] = SymRaidVault(DEMONHUNTER, DIFFICULTY.RAID.LFR),
							["g"] = {
								i(200343),	-- Skybound Avenger's Boots
								i(200350),	-- Skybound Avenger's Cape
								i(200348),	-- Skybound Avenger's Waistwrap
								i(200349),	-- Skybound Avenger's Wristbands
							},
						}),
						cl(DRUID, {
							["sym"] = SymRaidVault(DRUID, DIFFICULTY.RAID.LFR),
							["g"] = {
								i(200358),	-- Lost Landcaller's Bindings
								i(200359),	-- Lost Landcaller's Laena
								i(200352),	-- Lost Landcaller's Moccasins
								i(200357),	-- Lost Landcaller's Sash
							},
						}),
						cl(EVOKER, {
							["sym"] = SymRaidVault(EVOKER, DIFFICULTY.RAID.LFR),
							["g"] = {
								i(200385),	-- Bracers of the Awakened
								i(200384),	-- Chain of the Awakened
								i(200386),	-- Shroud of the Awakened
								i(200379),	-- Treads of the Awakened
							},
						}),
						cl(HUNTER, {
							["sym"] = SymRaidVault(HUNTER, DIFFICULTY.RAID.LFR),
							["g"] = {
								i(200393),	-- Stormwing Harrier's Belt
								i(200395),	-- Stormwing Harrier's Plumage
								i(200388),	-- Stormwing Harrier's Sabatons
								i(200394),	-- Stormwing Harrier's Wristguards
							},
						}),
						cl(MAGE, {
							["sym"] = SymRaidVault(MAGE, DIFFICULTY.RAID.LFR),
							["g"] = {
								i(200323),	-- Crystal Scholar's Cape
								i(200321),	-- Crystal Scholar's Cinch
								i(200322),	-- Crystal Scholar's Cuffs
								i(200316),	-- Crystal Scholar's Footwraps
							},
						}),
						cl(MONK, {
							["sym"] = SymRaidVault(MONK, DIFFICULTY.RAID.LFR),
							["g"] = {
								i(200367),	-- Cuffs of the Waking Fist
								i(200368),	-- Drape of the Waking Fist
								i(200361),	-- Gaiters of the Waking Fist
								i(200366),	-- Girdle of the Waking Fist
							},
						}),
						cl(PALADIN, {
							["sym"] = SymRaidVault(PALADIN, DIFFICULTY.RAID.LFR),
							["g"] = {
								i(200421),	-- Virtuous Silver Bracers
								i(200422),	-- Virtuous Silver Cloak
								i(200420),	-- Virtuous Silver Faulds
								i(200415),	-- Virtuous Silver Greatboots
							},
						}),
						cl(PRIEST, {
							["sym"] = SymRaidVault(PRIEST, DIFFICULTY.RAID.LFR),
							["g"] = {
								i(200332),	-- Draconic Hierophant's Drape
								i(200330),	-- Draconic Hierophant's Sash
								i(200325),	-- Draconic Hierophant's Slippers
								i(200331),	-- Draconic Hierophant's Wristbands
							},
						}),
						cl(ROGUE, {
							["sym"] = SymRaidVault(ROGUE, DIFFICULTY.RAID.LFR),
							["g"] = {
								i(200377),	-- Vault Delver's Camouflage
								i(200370),	-- Vault Delver's Shinguards
								i(200376),	-- Vault Delver's Sweatbands
								i(200375),	-- Vault Delver's Utility Belt
							},
						}),
						cl(SHAMAN, {
							["sym"] = SymRaidVault(SHAMAN, DIFFICULTY.RAID.LFR),
							["g"] = {
								i(200403),	-- Cuffs of Infused Earth
								i(200402),	-- Faulds of Infused Earth
								i(200404),	-- Greatcloak of Infused Earth
								i(200397),	-- Treads of Infused Earth
							},
						}),
						cl(WARLOCK, {
							["sym"] = SymRaidVault(WARLOCK, DIFFICULTY.RAID.LFR),
							["g"] = {
								i(200339),	-- Scalesworn Cultist's Girdle
								i(200341),	-- Scalesworn Cultist's Runedrape
								i(200334),	-- Scalesworn Cultist's Sandals
								i(200340),	-- Scalesworn Cultist's Wristwraps
							},
						}),
						cl(WARRIOR, {
							["sym"] = SymRaidVault(WARRIOR, DIFFICULTY.RAID.LFR),
							["g"] = {
								i(200424),	-- Boots of the Walking Mountain
								i(200430),	-- Bracers of the Walking Mountain
								i(200429),	-- Core of the Walking Mountain
								i(200431),	-- Drape of the Walking Mountain
							},
						}),
					}),
				}),
				d(DIFFICULTY.RAID.NORMAL, {
					["description"] = "",
					["g"] = bubbleDown({ ["modID"] = 3 }, {
						cl(DEATHKNIGHT, {
							["sym"] = SymRaidVault(DEATHKNIGHT, DIFFICULTY.RAID.NORMAL),
							["g"] = {
								i(200413),	-- Drape of the Haunted Frostbrood
								i(200411),	-- Girdle of the Haunted Frostbrood
								i(200406),	-- Sabatons of the Haunted Frostbrood
								i(200412),	-- Vambraces of the Haunted Frostbrood
							},
						}),
						cl(DEMONHUNTER, {
							["sym"] = SymRaidVault(DEMONHUNTER, DIFFICULTY.RAID.NORMAL),
							["g"] = {
								i(200343),	-- Skybound Avenger's Boots
								i(200350),	-- Skybound Avenger's Cape
								i(200348),	-- Skybound Avenger's Waistwrap
								i(200349),	-- Skybound Avenger's Wristbands
							},
						}),
						cl(DRUID, {
							["sym"] = SymRaidVault(DRUID, DIFFICULTY.RAID.NORMAL),
							["g"] = {
								i(200358),	-- Lost Landcaller's Bindings
								i(200359),	-- Lost Landcaller's Laena
								i(200352),	-- Lost Landcaller's Moccasins
								i(200357),	-- Lost Landcaller's Sash
							},
						}),
						cl(EVOKER, {
							["sym"] = SymRaidVault(EVOKER, DIFFICULTY.RAID.NORMAL),
							["g"] = {
								i(200385),	-- Bracers of the Awakened
								i(200384),	-- Chain of the Awakened
								i(200386),	-- Shroud of the Awakened
								i(200379),	-- Treads of the Awakened
							},
						}),
						cl(HUNTER, {
							["sym"] = SymRaidVault(HUNTER, DIFFICULTY.RAID.NORMAL),
							["g"] = {
								i(200393),	-- Stormwing Harrier's Belt
								i(200395),	-- Stormwing Harrier's Plumage
								i(200388),	-- Stormwing Harrier's Sabatons
								i(200394),	-- Stormwing Harrier's Wristguards
							},
						}),
						cl(MAGE, {
							["sym"] = SymRaidVault(MAGE, DIFFICULTY.RAID.NORMAL),
							["g"] = {
								i(200323),	-- Crystal Scholar's Cape
								i(200321),	-- Crystal Scholar's Cinch
								i(200322),	-- Crystal Scholar's Cuffs
								i(200316),	-- Crystal Scholar's Footwraps
							},
						}),
						cl(MONK, {
							["sym"] = SymRaidVault(MONK, DIFFICULTY.RAID.NORMAL),
							["g"] = {
								i(200367),	-- Cuffs of the Waking Fist
								i(200368),	-- Drape of the Waking Fist
								i(200361),	-- Gaiters of the Waking Fist
								i(200366),	-- Girdle of the Waking Fist
							},
						}),
						cl(PALADIN, {
							["sym"] = SymRaidVault(PALADIN, DIFFICULTY.RAID.NORMAL),
							["g"] = {
								i(200421),	-- Virtuous Silver Bracers
								i(200422),	-- Virtuous Silver Cloak
								i(200420),	-- Virtuous Silver Faulds
								i(200415),	-- Virtuous Silver Greatboots
							},
						}),
						cl(PRIEST, {
							["sym"] = SymRaidVault(PRIEST, DIFFICULTY.RAID.NORMAL),
							["g"] = {
								i(200332),	-- Draconic Hierophant's Drape
								i(200330),	-- Draconic Hierophant's Sash
								i(200325),	-- Draconic Hierophant's Slippers
								i(200331),	-- Draconic Hierophant's Wristbands
							},
						}),
						cl(ROGUE, {
							["sym"] = SymRaidVault(ROGUE, DIFFICULTY.RAID.NORMAL),
							["g"] = {
								i(200377),	-- Vault Delver's Camouflage
								i(200370),	-- Vault Delver's Shinguards
								i(200376),	-- Vault Delver's Sweatbands
								i(200375),	-- Vault Delver's Utility Belt
							},
						}),
						cl(SHAMAN, {
							["sym"] = SymRaidVault(SHAMAN, DIFFICULTY.RAID.NORMAL),
							["g"] = {
								i(200403),	-- Cuffs of Infused Earth
								i(200402),	-- Faulds of Infused Earth
								i(200404),	-- Greatcloak of Infused Earth
								i(200397),	-- Treads of Infused Earth
							},
						}),
						cl(WARLOCK, {
							["sym"] = SymRaidVault(WARLOCK, DIFFICULTY.RAID.NORMAL),
							["g"] = {
								i(200339),	-- Scalesworn Cultist's Girdle
								i(200341),	-- Scalesworn Cultist's Runedrape
								i(200334),	-- Scalesworn Cultist's Sandals
								i(200340),	-- Scalesworn Cultist's Wristwraps
							},
						}),
						cl(WARRIOR, {
							["sym"] = SymRaidVault(WARRIOR, DIFFICULTY.RAID.NORMAL),
							["g"] = {
								i(200424),	-- Boots of the Walking Mountain
								i(200430),	-- Bracers of the Walking Mountain
								i(200429),	-- Core of the Walking Mountain
								i(200431),	-- Drape of the Walking Mountain
							},
						}),
					}),
				}),
				d(DIFFICULTY.RAID.HEROIC, {
					["description"] = "",
					["g"] = bubbleDown({ ["bonusID"] = 1 }, {
						cl(DEATHKNIGHT, {
							["sym"] = SymRaidVault(DEATHKNIGHT, DIFFICULTY.RAID.HEROIC),
							["g"] = {
								i(200413),	-- Drape of the Haunted Frostbrood
								i(200411),	-- Girdle of the Haunted Frostbrood
								i(200406),	-- Sabatons of the Haunted Frostbrood
								i(200412),	-- Vambraces of the Haunted Frostbrood
							},
						}),
						cl(DEMONHUNTER, {
							["sym"] = SymRaidVault(DEMONHUNTER, DIFFICULTY.RAID.HEROIC),
							["g"] = {
								i(200343),	-- Skybound Avenger's Boots
								i(200350),	-- Skybound Avenger's Cape
								i(200348),	-- Skybound Avenger's Waistwrap
								i(200349),	-- Skybound Avenger's Wristbands
							},
						}),
						cl(DRUID, {
							["sym"] = SymRaidVault(DRUID, DIFFICULTY.RAID.HEROIC),
							["g"] = {
								i(200358),	-- Lost Landcaller's Bindings
								i(200359),	-- Lost Landcaller's Laena
								i(200352),	-- Lost Landcaller's Moccasins
								i(200357),	-- Lost Landcaller's Sash
							},
						}),
						cl(EVOKER, {
							["sym"] = SymRaidVault(EVOKER, DIFFICULTY.RAID.HEROIC),
							["g"] = {
								i(200385),	-- Bracers of the Awakened
								i(200384),	-- Chain of the Awakened
								i(200386),	-- Shroud of the Awakened
								i(200379),	-- Treads of the Awakened
							},
						}),
						cl(HUNTER, {
							["sym"] = SymRaidVault(HUNTER, DIFFICULTY.RAID.HEROIC),
							["g"] = {
								i(200393),	-- Stormwing Harrier's Belt
								i(200395),	-- Stormwing Harrier's Plumage
								i(200388),	-- Stormwing Harrier's Sabatons
								i(200394),	-- Stormwing Harrier's Wristguards
							},
						}),
						cl(MAGE, {
							["sym"] = SymRaidVault(MAGE, DIFFICULTY.RAID.HEROIC),
							["g"] = {
								i(200323),	-- Crystal Scholar's Cape
								i(200321),	-- Crystal Scholar's Cinch
								i(200322),	-- Crystal Scholar's Cuffs
								i(200316),	-- Crystal Scholar's Footwraps
							},
						}),
						cl(MONK, {
							["sym"] = SymRaidVault(MONK, DIFFICULTY.RAID.HEROIC),
							["g"] = {
								i(200367),	-- Cuffs of the Waking Fist
								i(200368),	-- Drape of the Waking Fist
								i(200361),	-- Gaiters of the Waking Fist
								i(200366),	-- Girdle of the Waking Fist
							},
						}),
						cl(PALADIN, {
							["sym"] = SymRaidVault(PALADIN, DIFFICULTY.RAID.HEROIC),
							["g"] = {
								i(200421),	-- Virtuous Silver Bracers
								i(200422),	-- Virtuous Silver Cloak
								i(200420),	-- Virtuous Silver Faulds
								i(200415),	-- Virtuous Silver Greatboots
							},
						}),
						cl(PRIEST, {
							["sym"] = SymRaidVault(PRIEST, DIFFICULTY.RAID.HEROIC),
							["g"] = {
								i(200332),	-- Draconic Hierophant's Drape
								i(200330),	-- Draconic Hierophant's Sash
								i(200325),	-- Draconic Hierophant's Slippers
								i(200331),	-- Draconic Hierophant's Wristbands
							},
						}),
						cl(ROGUE, {
							["sym"] = SymRaidVault(ROGUE, DIFFICULTY.RAID.HEROIC),
							["g"] = {
								i(200377),	-- Vault Delver's Camouflage
								i(200370),	-- Vault Delver's Shinguards
								i(200376),	-- Vault Delver's Sweatbands
								i(200375),	-- Vault Delver's Utility Belt
							},
						}),
						cl(SHAMAN, {
							["sym"] = SymRaidVault(SHAMAN, DIFFICULTY.RAID.HEROIC),
							["g"] = {
								i(200403),	-- Cuffs of Infused Earth
								i(200402),	-- Faulds of Infused Earth
								i(200404),	-- Greatcloak of Infused Earth
								i(200397),	-- Treads of Infused Earth
							},
						}),
						cl(WARLOCK, {
							["sym"] = SymRaidVault(WARLOCK, DIFFICULTY.RAID.HEROIC),
							["g"] = {
								i(200339),	-- Scalesworn Cultist's Girdle
								i(200341),	-- Scalesworn Cultist's Runedrape
								i(200334),	-- Scalesworn Cultist's Sandals
								i(200340),	-- Scalesworn Cultist's Wristwraps
							},
						}),
						cl(WARRIOR, {
							["sym"] = SymRaidVault(WARRIOR, DIFFICULTY.RAID.HEROIC),
							["g"] = {
								i(200424),	-- Boots of the Walking Mountain
								i(200430),	-- Bracers of the Walking Mountain
								i(200429),	-- Core of the Walking Mountain
								i(200431),	-- Drape of the Walking Mountain
							},
						}),
					}),
				}),
				d(DIFFICULTY.RAID.MYTHIC, {
					["description"] = "",
					["g"] = bubbleDown({ ["bonusID"] = 450 }, {
						cl(DEATHKNIGHT, {
							["sym"] = SymRaidVault(DEATHKNIGHT, DIFFICULTY.RAID.MYTHIC),
							["g"] = {
								i(200413),	-- Drape of the Haunted Frostbrood
								i(200411),	-- Girdle of the Haunted Frostbrood
								i(200406),	-- Sabatons of the Haunted Frostbrood
								i(200412),	-- Vambraces of the Haunted Frostbrood
							},
						}),
						cl(DEMONHUNTER, {
							["sym"] = SymRaidVault(DEMONHUNTER, DIFFICULTY.RAID.MYTHIC),
							["g"] = {
								i(200343),	-- Skybound Avenger's Boots
								i(200350),	-- Skybound Avenger's Cape
								i(200348),	-- Skybound Avenger's Waistwrap
								i(200349),	-- Skybound Avenger's Wristbands
							},
						}),
						cl(DRUID, {
							["sym"] = SymRaidVault(DRUID, DIFFICULTY.RAID.MYTHIC),
							["g"] = {
								i(200358),	-- Lost Landcaller's Bindings
								i(200359),	-- Lost Landcaller's Laena
								i(200352),	-- Lost Landcaller's Moccasins
								i(200357),	-- Lost Landcaller's Sash
							},
						}),
						cl(EVOKER, {
							["sym"] = SymRaidVault(EVOKER, DIFFICULTY.RAID.MYTHIC),
							["g"] = {
								i(200385),	-- Bracers of the Awakened
								i(200384),	-- Chain of the Awakened
								i(200386),	-- Shroud of the Awakened
								i(200379),	-- Treads of the Awakened
							},
						}),
						cl(HUNTER, {
							["sym"] = SymRaidVault(HUNTER, DIFFICULTY.RAID.MYTHIC),
							["g"] = {
								i(200393),	-- Stormwing Harrier's Belt
								i(200395),	-- Stormwing Harrier's Plumage
								i(200388),	-- Stormwing Harrier's Sabatons
								i(200394),	-- Stormwing Harrier's Wristguards
							},
						}),
						cl(MAGE, {
							["sym"] = SymRaidVault(MAGE, DIFFICULTY.RAID.MYTHIC),
							["g"] = {
								i(200323),	-- Crystal Scholar's Cape
								i(200321),	-- Crystal Scholar's Cinch
								i(200322),	-- Crystal Scholar's Cuffs
								i(200316),	-- Crystal Scholar's Footwraps
							},
						}),
						cl(MONK, {
							["sym"] = SymRaidVault(MONK, DIFFICULTY.RAID.MYTHIC),
							["g"] = {
								i(200367),	-- Cuffs of the Waking Fist
								i(200368),	-- Drape of the Waking Fist
								i(200361),	-- Gaiters of the Waking Fist
								i(200366),	-- Girdle of the Waking Fist
							},
						}),
						cl(PALADIN, {
							["sym"] = SymRaidVault(PALADIN, DIFFICULTY.RAID.MYTHIC),
							["g"] = {
								i(200421),	-- Virtuous Silver Bracers
								i(200422),	-- Virtuous Silver Cloak
								i(200420),	-- Virtuous Silver Faulds
								i(200415),	-- Virtuous Silver Greatboots
							},
						}),
						cl(PRIEST, {
							["sym"] = SymRaidVault(PRIEST, DIFFICULTY.RAID.MYTHIC),
							["g"] = {
								i(200332),	-- Draconic Hierophant's Drape
								i(200330),	-- Draconic Hierophant's Sash
								i(200325),	-- Draconic Hierophant's Slippers
								i(200331),	-- Draconic Hierophant's Wristbands
							},
						}),
						cl(ROGUE, {
							["sym"] = SymRaidVault(ROGUE, DIFFICULTY.RAID.MYTHIC),
							["g"] = {
								i(200377),	-- Vault Delver's Camouflage
								i(200370),	-- Vault Delver's Shinguards
								i(200376),	-- Vault Delver's Sweatbands
								i(200375),	-- Vault Delver's Utility Belt
							},
						}),
						cl(SHAMAN, {
							["sym"] = SymRaidVault(SHAMAN, DIFFICULTY.RAID.MYTHIC),
							["g"] = {
								i(200403),	-- Cuffs of Infused Earth
								i(200402),	-- Faulds of Infused Earth
								i(200404),	-- Greatcloak of Infused Earth
								i(200397),	-- Treads of Infused Earth
							},
						}),
						cl(WARLOCK, {
							["sym"] = SymRaidVault(WARLOCK, DIFFICULTY.RAID.MYTHIC),
							["g"] = {
								i(200339),	-- Scalesworn Cultist's Girdle
								i(200341),	-- Scalesworn Cultist's Runedrape
								i(200334),	-- Scalesworn Cultist's Sandals
								i(200340),	-- Scalesworn Cultist's Wristwraps
							},
						}),
						cl(WARRIOR, {
							["sym"] = SymRaidVault(WARRIOR, DIFFICULTY.RAID.MYTHIC),
							["g"] = {
								i(200424),	-- Boots of the Walking Mountain
								i(200430),	-- Bracers of the Walking Mountain
								i(200429),	-- Core of the Walking Mountain
								i(200431),	-- Drape of the Walking Mountain
							},
						}),
					}),
				}),
			}),
			-- #endif
			-- #if BEFORE TWW
			header(HEADERS.LFGDungeon, ABERRUS_THE_SHADOWED_CRUCIBLE, bubbleDownSelf({ ["timeline"] = { ADDED_10_1_0 } }, {
				d(DIFFICULTY.RAID.LFR, {
					["description"] = "",
					["g"] = bubbleDown({ ["modID"] = 4 }, {
						cl(DEATHKNIGHT, {
							["sym"] = SymRaidAberrus(DEATHKNIGHT, DIFFICULTY.RAID.LFR),
							["g"] = {
								i(202458),	-- Lingering Phantom's Deathlink
								i(202456),	-- Lingering Phantom's Drape
								i(202463),	-- Lingering Phantom's Stompers
								i(202457),	-- Lingering Phantom's Vambraces
							},
						}),
						cl(DEMONHUNTER, {
							["sym"] = SymRaidAberrus(DEMONHUNTER, DIFFICULTY.RAID.LFR),
							["g"] = {
								i(202520),	-- Kinslayer's Bindings
								i(202526),	-- Kinslayer's Gaiters
								i(202521),	-- Kinslayer's Sash
								i(202519),	-- Kinslayer's Shawl
							},
						}),
						cl(DRUID, {
							["sym"] = SymRaidAberrus(DRUID, DIFFICULTY.RAID.LFR),
							["g"] = {
								i(202511),	-- Bands of the Autumn Blaze
								i(202510),	-- Foliage of the Autumn Blaze
								i(202512),	-- Garland of the Autumn Blaze
								i(202517),	-- Hooves of the Autumn Blaze
							},
						}),
						cl(EVOKER, {
							["sym"] = SymRaidAberrus(EVOKER, DIFFICULTY.RAID.LFR),
							["g"] = {
								i(202483),	-- Crest of Obsidian Secrets
								i(202490),	-- Greatboots of Obsidian Secrets
								i(202485),	-- Lasso of Obsidian Secrets
								i(202484),	-- Scalebands of Obsidian Secrets
							},
						}),
						cl(HUNTER, {
							["sym"] = SymRaidAberrus(HUNTER, DIFFICULTY.RAID.LFR),
							["g"] = {
								i(202481),	-- Ashen Predator's Chasers
								i(202474),	-- Ashen Predator's Cloak
								i(202475),	-- Ashen Predator's Skinwraps
								i(202476),	-- Ashen Predator's Strap
							},
						}),
						cl(MAGE, {
							["sym"] = SymRaidAberrus(MAGE, DIFFICULTY.RAID.LFR),
							["g"] = {
								i(202547),	-- Underlight Conjurer's Bracelets
								i(202546),	-- Underlight Conjurer's Cape -- TODO: Only One sourceID?!
								i(202548),	-- Underlight Conjurer's Charmbelt
								i(202553),	-- Underlight Conjurer's Treads
							},
						}),
						cl(MONK, {
							["sym"] = SymRaidAberrus(MONK, DIFFICULTY.RAID.LFR),
							["g"] = {
								i(202501),	-- Drape of the Vermillion Forge
								i(202503),	-- Blackbelt of the Vermillion Forge
								i(202502),	-- Coils of the Vermillion Forge
								i(202508),	-- Footpads of the Vermillion Forge
							},
						}),
						cl(PALADIN, {
							["sym"] = SymRaidAberrus(PALADIN, DIFFICULTY.RAID.LFR),
							["g"] = {
								i(202448),	-- Heartfire Sentinel's Blessed Bindings
								i(202454),	-- Heartfire Sentinel's Greatboots
								i(202447),	-- Heartfire Sentinel's Pelerine
								i(202449),	-- Heartfire Sentinel's Waistguard
							},
						}),
						cl(PRIEST, {
							["sym"] = SymRaidAberrus(PRIEST, DIFFICULTY.RAID.LFR),
							["g"] = {
								i(202538),	-- Cuffs of the Furnace Seraph
								i(202544),	-- Sabatons of the Furnace Seraph
								i(202539),	-- Sash of the Furnace Seraph
								i(202537),	-- Shroud of the Furnace Seraph
							},
						}),
						cl(ROGUE, {
							["sym"] = SymRaidAberrus(ROGUE, DIFFICULTY.RAID.LFR),
							["g"] = {
								i(202493),	-- Lurking Specter's Armwraps
								i(202492),	-- Lurking Specter's Capelet
								i(202494),	-- Lurking Specter's Edgeband
								i(202499),	-- Lurking Specter's Tabi
							},
						}),
						cl(SHAMAN, {
							["sym"] = SymRaidAberrus(SHAMAN, DIFFICULTY.RAID.LFR),
							["g"] = {
								i(202467),	-- Faulds of the Cinderwolf
								i(202465),	-- Pelisse of the Cinderwolf
								i(202466),	-- Runebraces of the Cinderwolf
								i(202472),	-- Sollerets of the Cinderwolf
							},
						}),
						cl(WARLOCK, {
							["sym"] = SymRaidAberrus(WARLOCK, DIFFICULTY.RAID.LFR),
							["g"] = {
								i(202535),	-- Sandals of the Sinister Savant
								i(202528),	-- Shawl of the Sinister Savant
								i(202530),	-- Skullstrap of the Sinister Savant
								i(202529),	-- Wristwraps of the Sinister Savant
							},
						}),
						cl(WARRIOR, {
							["sym"] = SymRaidAberrus(WARRIOR, DIFFICULTY.RAID.LFR),
							["g"] = {
								i(202440),	-- Insignia of the Onyx Crucible
								i(202445),	-- Ironstriders of the Onyx Crucible
								i(202438),	-- Manteau of the Onyx Crucible
								i(202439),	-- Warbands of the Onyx Crucible
							},
						}),
					}),
				}),
				d(DIFFICULTY.RAID.NORMAL, {
					["description"] = "",
					["g"] = {
						cl(DEATHKNIGHT, {
							["sym"] = SymRaidAberrus(DEATHKNIGHT, DIFFICULTY.RAID.NORMAL),
							["g"] = {
								i(202458),	-- Lingering Phantom's Deathlink
								i(202456),	-- Lingering Phantom's Drape
								i(202463),	-- Lingering Phantom's Stompers
								i(202457),	-- Lingering Phantom's Vambraces
							},
						}),
						cl(DEMONHUNTER, {
							["sym"] = SymRaidAberrus(DEMONHUNTER, DIFFICULTY.RAID.NORMAL),
							["g"] = {
								i(202520),	-- Kinslayer's Bindings
								i(202526),	-- Kinslayer's Gaiters
								i(202521),	-- Kinslayer's Sash
								i(202519),	-- Kinslayer's Shawl
							},
						}),
						cl(DRUID, {
							["sym"] = SymRaidAberrus(DRUID, DIFFICULTY.RAID.NORMAL),
							["g"] = {
								i(202511),	-- Bands of the Autumn Blaze
								i(202510),	-- Foliage of the Autumn Blaze
								i(202512),	-- Garland of the Autumn Blaze
								i(202517),	-- Hooves of the Autumn Blaze
							},
						}),
						cl(EVOKER, {
							["sym"] = SymRaidAberrus(EVOKER, DIFFICULTY.RAID.NORMAL),
							["g"] = {
								i(202483),	-- Crest of Obsidian Secrets
								i(202490),	-- Greatboots of Obsidian Secrets
								i(202485),	-- Lasso of Obsidian Secrets
								i(202484),	-- Scalebands of Obsidian Secrets
							},
						}),
						cl(HUNTER, {
							["sym"] = SymRaidAberrus(HUNTER, DIFFICULTY.RAID.NORMAL),
							["g"] = {
								i(202481),	-- Ashen Predator's Chasers
								i(202474),	-- Ashen Predator's Cloak
								i(202475),	-- Ashen Predator's Skinwraps
								i(202476),	-- Ashen Predator's Strap
							},
						}),
						cl(MAGE, {
							["sym"] = SymRaidAberrus(MAGE, DIFFICULTY.RAID.NORMAL),
							["g"] = {
								i(202547),	-- Underlight Conjurer's Bracelets
								i(202546),	-- Underlight Conjurer's Cape -- TODO: Only One sourceID?!
								i(202548),	-- Underlight Conjurer's Charmbelt
								i(202553),	-- Underlight Conjurer's Treads
							},
						}),
						cl(MONK, {
							["sym"] = SymRaidAberrus(MONK, DIFFICULTY.RAID.NORMAL),
							["g"] = {
								i(202501),	-- Drape of the Vermillion Forge
								i(202503),	-- Blackbelt of the Vermillion Forge
								i(202502),	-- Coils of the Vermillion Forge
								i(202508),	-- Footpads of the Vermillion Forge
							},
						}),
						cl(PALADIN, {
							["sym"] = SymRaidAberrus(PALADIN, DIFFICULTY.RAID.NORMAL),
							["g"] = {
								i(202448),	-- Heartfire Sentinel's Blessed Bindings
								i(202454),	-- Heartfire Sentinel's Greatboots
								i(202447),	-- Heartfire Sentinel's Pelerine
								i(202449),	-- Heartfire Sentinel's Waistguard
							},
						}),
						cl(PRIEST, {
							["sym"] = SymRaidAberrus(PRIEST, DIFFICULTY.RAID.NORMAL),
							["g"] = {
								i(202538),	-- Cuffs of the Furnace Seraph
								i(202544),	-- Sabatons of the Furnace Seraph
								i(202539),	-- Sash of the Furnace Seraph
								i(202537),	-- Shroud of the Furnace Seraph
							},
						}),
						cl(ROGUE, {
							["sym"] = SymRaidAberrus(ROGUE, DIFFICULTY.RAID.NORMAL),
							["g"] = {
								i(202493),	-- Lurking Specter's Armwraps
								i(202492),	-- Lurking Specter's Capelet
								i(202494),	-- Lurking Specter's Edgeband
								i(202499),	-- Lurking Specter's Tabi
							},
						}),
						cl(SHAMAN, {
							["sym"] = SymRaidAberrus(SHAMAN, DIFFICULTY.RAID.NORMAL),
							["g"] = {
								i(202467),	-- Faulds of the Cinderwolf
								i(202465),	-- Pelisse of the Cinderwolf
								i(202466),	-- Runebraces of the Cinderwolf
								i(202472),	-- Sollerets of the Cinderwolf
							},
						}),
						cl(WARLOCK, {
							["sym"] = SymRaidAberrus(WARLOCK, DIFFICULTY.RAID.NORMAL),
							["g"] = {
								i(202535),	-- Sandals of the Sinister Savant
								i(202528),	-- Shawl of the Sinister Savant
								i(202530),	-- Skullstrap of the Sinister Savant
								i(202529),	-- Wristwraps of the Sinister Savant
							},
						}),
						cl(WARRIOR, {
							["sym"] = SymRaidAberrus(WARRIOR, DIFFICULTY.RAID.NORMAL),
							["g"] = {
								i(202440),	-- Insignia of the Onyx Crucible
								i(202445),	-- Ironstriders of the Onyx Crucible
								i(202438),	-- Manteau of the Onyx Crucible
								i(202439),	-- Warbands of the Onyx Crucible
							},
						}),
					},
				}),
				d(DIFFICULTY.RAID.HEROIC, {
					["description"] = "",
					["g"] = bubbleDown({ ["modID"] = 5 }, {
						cl(DEATHKNIGHT, {
							["sym"] = SymRaidAberrus(DEATHKNIGHT, DIFFICULTY.RAID.HEROIC),
							["g"] = {
								i(202458),	-- Lingering Phantom's Deathlink
								i(202456),	-- Lingering Phantom's Drape
								i(202463),	-- Lingering Phantom's Stompers
								i(202457),	-- Lingering Phantom's Vambraces
							},
						}),
						cl(DEMONHUNTER, {
							["sym"] = SymRaidAberrus(DEMONHUNTER, DIFFICULTY.RAID.HEROIC),
							["g"] = {
								i(202520),	-- Kinslayer's Bindings
								i(202526),	-- Kinslayer's Gaiters
								i(202521),	-- Kinslayer's Sash
								i(202519),	-- Kinslayer's Shawl
							},
						}),
						cl(DRUID, {
							["sym"] = SymRaidAberrus(DRUID, DIFFICULTY.RAID.HEROIC),
							["g"] = {
								i(202511),	-- Bands of the Autumn Blaze
								i(202510),	-- Foliage of the Autumn Blaze
								i(202512),	-- Garland of the Autumn Blaze
								i(202517),	-- Hooves of the Autumn Blaze
							},
						}),
						cl(EVOKER, {
							["sym"] = SymRaidAberrus(EVOKER, DIFFICULTY.RAID.HEROIC),
							["g"] = {
								i(202483),	-- Crest of Obsidian Secrets
								i(202490),	-- Greatboots of Obsidian Secrets
								i(202485),	-- Lasso of Obsidian Secrets
								i(202484),	-- Scalebands of Obsidian Secrets
							},
						}),
						cl(HUNTER, {
							["sym"] = SymRaidAberrus(HUNTER, DIFFICULTY.RAID.HEROIC),
							["g"] = {
								i(202481),	-- Ashen Predator's Chasers
								i(202474),	-- Ashen Predator's Cloak
								i(202475),	-- Ashen Predator's Skinwraps
								i(202476),	-- Ashen Predator's Strap
							},
						}),
						cl(MAGE, {
							["sym"] = SymRaidAberrus(MAGE, DIFFICULTY.RAID.HEROIC),
							["g"] = {
								i(202547),	-- Underlight Conjurer's Bracelets
								i(202546),	-- Underlight Conjurer's Cape -- TODO: Only One sourceID?!
								i(202548),	-- Underlight Conjurer's Charmbelt
								i(202553),	-- Underlight Conjurer's Treads
							},
						}),
						cl(MONK, {
							["sym"] = SymRaidAberrus(MONK, DIFFICULTY.RAID.HEROIC),
							["g"] = {
								i(202501),	-- Drape of the Vermillion Forge
								i(202503),	-- Blackbelt of the Vermillion Forge
								i(202502),	-- Coils of the Vermillion Forge
								i(202508),	-- Footpads of the Vermillion Forge
							},
						}),
						cl(PALADIN, {
							["sym"] = SymRaidAberrus(PALADIN, DIFFICULTY.RAID.HEROIC),
							["g"] = {
								i(202448),	-- Heartfire Sentinel's Blessed Bindings
								i(202454),	-- Heartfire Sentinel's Greatboots
								i(202447),	-- Heartfire Sentinel's Pelerine
								i(202449),	-- Heartfire Sentinel's Waistguard
							},
						}),
						cl(PRIEST, {
							["sym"] = SymRaidAberrus(PRIEST, DIFFICULTY.RAID.HEROIC),
							["g"] = {
								i(202538),	-- Cuffs of the Furnace Seraph
								i(202544),	-- Sabatons of the Furnace Seraph
								i(202539),	-- Sash of the Furnace Seraph
								i(202537),	-- Shroud of the Furnace Seraph
							},
						}),
						cl(ROGUE, {
							["sym"] = SymRaidAberrus(ROGUE, DIFFICULTY.RAID.HEROIC),
							["g"] = {
								i(202493),	-- Lurking Specter's Armwraps
								i(202492),	-- Lurking Specter's Capelet
								i(202494),	-- Lurking Specter's Edgeband
								i(202499),	-- Lurking Specter's Tabi
							},
						}),
						cl(SHAMAN, {
							["sym"] = SymRaidAberrus(SHAMAN, DIFFICULTY.RAID.HEROIC),
							["g"] = {
								i(202467),	-- Faulds of the Cinderwolf
								i(202465),	-- Pelisse of the Cinderwolf
								i(202466),	-- Runebraces of the Cinderwolf
								i(202472),	-- Sollerets of the Cinderwolf
							},
						}),
						cl(WARLOCK, {
							["sym"] = SymRaidAberrus(WARLOCK, DIFFICULTY.RAID.HEROIC),
							["g"] = {
								i(202535),	-- Sandals of the Sinister Savant
								i(202528),	-- Shawl of the Sinister Savant
								i(202530),	-- Skullstrap of the Sinister Savant
								i(202529),	-- Wristwraps of the Sinister Savant
							},
						}),
						cl(WARRIOR, {
							["sym"] = SymRaidAberrus(WARRIOR, DIFFICULTY.RAID.HEROIC),
							["g"] = {
								i(202440),	-- Insignia of the Onyx Crucible
								i(202445),	-- Ironstriders of the Onyx Crucible
								i(202438),	-- Manteau of the Onyx Crucible
								i(202439),	-- Warbands of the Onyx Crucible
							},
						}),
					}),
				}),
				d(DIFFICULTY.RAID.MYTHIC, {
					["description"] = "",
					["g"] = bubbleDown({ ["modID"] = 6 }, {
						cl(DEATHKNIGHT, {
							["sym"] = SymRaidAberrus(DEATHKNIGHT, DIFFICULTY.RAID.MYTHIC),
							["g"] = {
								i(202458),	-- Lingering Phantom's Deathlink
								i(202456),	-- Lingering Phantom's Drape
								i(202463),	-- Lingering Phantom's Stompers
								i(202457),	-- Lingering Phantom's Vambraces
							},
						}),
						cl(DEMONHUNTER, {
							["sym"] = SymRaidAberrus(DEMONHUNTER, DIFFICULTY.RAID.MYTHIC),
							["g"] = {
								i(202520),	-- Kinslayer's Bindings
								i(202526),	-- Kinslayer's Gaiters
								i(202521),	-- Kinslayer's Sash
								i(202519),	-- Kinslayer's Shawl
							},
						}),
						cl(DRUID, {
							["sym"] = SymRaidAberrus(DRUID, DIFFICULTY.RAID.MYTHIC),
							["g"] = {
								i(202511),	-- Bands of the Autumn Blaze
								i(202510),	-- Foliage of the Autumn Blaze
								i(202512),	-- Garland of the Autumn Blaze
								i(202517),	-- Hooves of the Autumn Blaze
							},
						}),
						cl(EVOKER, {
							["sym"] = SymRaidAberrus(EVOKER, DIFFICULTY.RAID.MYTHIC),
							["g"] = {
								i(202483),	-- Crest of Obsidian Secrets
								i(202490),	-- Greatboots of Obsidian Secrets
								i(202485),	-- Lasso of Obsidian Secrets
								i(202484),	-- Scalebands of Obsidian Secrets
							},
						}),
						cl(HUNTER, {
							["sym"] = SymRaidAberrus(HUNTER, DIFFICULTY.RAID.MYTHIC),
							["g"] = {
								i(202481),	-- Ashen Predator's Chasers
								i(202474),	-- Ashen Predator's Cloak
								i(202475),	-- Ashen Predator's Skinwraps
								i(202476),	-- Ashen Predator's Strap
							},
						}),
						cl(MAGE, {
							["sym"] = SymRaidAberrus(MAGE, DIFFICULTY.RAID.MYTHIC),
							["g"] = {
								i(202547),	-- Underlight Conjurer's Bracelets
								i(202546),	-- Underlight Conjurer's Cape -- TODO: Only One sourceID?!
								i(202548),	-- Underlight Conjurer's Charmbelt
								i(202553),	-- Underlight Conjurer's Treads
							},
						}),
						cl(MONK, {
							["sym"] = SymRaidAberrus(MONK, DIFFICULTY.RAID.MYTHIC),
							["g"] = {
								i(202501),	-- Drape of the Vermillion Forge
								i(202503),	-- Blackbelt of the Vermillion Forge
								i(202502),	-- Coils of the Vermillion Forge
								i(202508),	-- Footpads of the Vermillion Forge
							},
						}),
						cl(PALADIN, {
							["sym"] = SymRaidAberrus(PALADIN, DIFFICULTY.RAID.MYTHIC),
							["g"] = {
								i(202448),	-- Heartfire Sentinel's Blessed Bindings
								i(202454),	-- Heartfire Sentinel's Greatboots
								i(202447),	-- Heartfire Sentinel's Pelerine
								i(202449),	-- Heartfire Sentinel's Waistguard
							},
						}),
						cl(PRIEST, {
							["sym"] = SymRaidAberrus(PRIEST, DIFFICULTY.RAID.MYTHIC),
							["g"] = {
								i(202538),	-- Cuffs of the Furnace Seraph
								i(202544),	-- Sabatons of the Furnace Seraph
								i(202539),	-- Sash of the Furnace Seraph
								i(202537),	-- Shroud of the Furnace Seraph
							},
						}),
						cl(ROGUE, {
							["sym"] = SymRaidAberrus(ROGUE, DIFFICULTY.RAID.MYTHIC),
							["g"] = {
								i(202493),	-- Lurking Specter's Armwraps
								i(202492),	-- Lurking Specter's Capelet
								i(202494),	-- Lurking Specter's Edgeband
								i(202499),	-- Lurking Specter's Tabi
							},
						}),
						cl(SHAMAN, {
							["sym"] = SymRaidAberrus(SHAMAN, DIFFICULTY.RAID.MYTHIC),
							["g"] = {
								i(202467),	-- Faulds of the Cinderwolf
								i(202465),	-- Pelisse of the Cinderwolf
								i(202466),	-- Runebraces of the Cinderwolf
								i(202472),	-- Sollerets of the Cinderwolf
							},
						}),
						cl(WARLOCK, {
							["sym"] = SymRaidAberrus(WARLOCK, DIFFICULTY.RAID.MYTHIC),
							["g"] = {
								i(202535),	-- Sandals of the Sinister Savant
								i(202528),	-- Shawl of the Sinister Savant
								i(202530),	-- Skullstrap of the Sinister Savant
								i(202529),	-- Wristwraps of the Sinister Savant
							},
						}),
						cl(WARRIOR, {
							["sym"] = SymRaidAberrus(WARRIOR, DIFFICULTY.RAID.MYTHIC),
							["g"] = {
								i(202440),	-- Insignia of the Onyx Crucible
								i(202445),	-- Ironstriders of the Onyx Crucible
								i(202438),	-- Manteau of the Onyx Crucible
								i(202439),	-- Warbands of the Onyx Crucible
							},
						}),
					}),
				}),
			})),
			-- #endif
			-- #if BEFORE TWW
			header(HEADERS.LFGDungeon, ADMIRDRASSIL_THE_DREAMS_HOPE, bubbleDownSelf({ ["timeline"] = { ADDED_10_2_0 } }, {
				d(DIFFICULTY.RAID.LFR, {
					["description"] = "",
					["g"] = bubbleDown({ ["modID"] = 4 }, {
						cl(DEATHKNIGHT, {
							["sym"] = SymRaidAdmirdrassil(DEATHKNIGHT, DIFFICULTY.RAID.LFR),
							["g"] = {
								i(207202),	-- Graveboots of the Risen Nightmare
								i(207197),	-- Seal of the Risen Nightmare
								i(207195),	-- Shroud of the Risen Nightmare
								i(207196),	-- Vambraces of the Risen Nightmare
							},
						}),
						cl(DEMONHUNTER, {
							["sym"] = SymRaidAdmirdrassil(DEMONHUNTER, DIFFICULTY.RAID.LFR),
							["g"] = {
								i(207259),	-- Screaming Torchfiend's Armlets
								i(207260),	-- Screaming Torchfiend's Clasp
								i(207265),	-- Screaming Torchfiend's Clutches
								i(207258),	-- Screaming Torchfiend's Shawl
							},
						}),
						cl(DRUID, {
							["sym"] = SymRaidAdmirdrassil(DRUID, DIFFICULTY.RAID.LFR),
							["g"] = {
								i(207249),	-- Benevolent Embersage's Featherdrape
								i(207256),	-- Benevolent Embersage's Lined Boots
								i(207251),	-- Benevolent Embersage's Sagacious Sash
								i(207250),	-- Benevolent Embersage's Wristwraps
							},
						}),
						cl(EVOKER, {
							["sym"] = SymRaidAdmirdrassil(EVOKER, DIFFICULTY.RAID.LFR),
							["g"] = {
								i(207224),	-- Weyrnkeeper's Timeless Adorned Sash
								i(207222),	-- Weyrnkeeper's Timeless Ornamented Cloak
								i(207229),	-- Weyrnkeeper's Timeless Treads
								i(207223),	-- Weyrnkeeper's Timeless Wristlets
							},
						}),
						cl(HUNTER, {
							["sym"] = SymRaidAdmirdrassil(HUNTER, DIFFICULTY.RAID.LFR),
							["g"] = {
								i(207214),	-- Blazing Dreamstalker's Bracers
								i(207215),	-- Blazing Dreamstalker's Spined Girdle
								i(207213),	-- Blazing Dreamstalker's Staghide
								i(207220),	-- Blazing Dreamstalker's Striders
							},
						}),
						cl(MAGE, {
							["sym"] = SymRaidAdmirdrassil(MAGE, DIFFICULTY.RAID.LFR),
							["g"] = {
								i(207286),	-- Wayward Chronomancer's Cuffs
								i(207285),	-- Wayward Chronomancer's Stole
								i(207292),	-- Wayward Chronomancer's Strapped Boots
								i(207287),	-- Wayward Chronomancer's Synchronous Belt
							},
						}),
						cl(MONK, {
							["sym"] = SymRaidAdmirdrassil(MONK, DIFFICULTY.RAID.LFR),
							["g"] = {
								i(207242),	-- Mystic Heron's Belt
								i(207240),	-- Mystic Heron's Feathered Mantle
								i(207241),	-- Mystic Heron's Fisticuffs
								i(207247),	-- Mystic Heron's Tabi
							},
						}),
						cl(PALADIN, {
							["sym"] = SymRaidAdmirdrassil(PALADIN, DIFFICULTY.RAID.LFR),
							["g"] = {
								i(207186),	-- Zealous Pyreknight's Banner
								i(207193),	-- Zealous Pyreknight's Dreamstompers
								i(207188),	-- Zealous Pyreknight's Emblem
								i(207187),	-- Zealous Pyreknight's Flameguards
							},
						}),
						cl(PRIEST, {
							["sym"] = SymRaidAdmirdrassil(PRIEST, DIFFICULTY.RAID.LFR),
							["g"] = {
								i(207278),	-- Cincture of Lunar Communion
								i(207276),	-- Cloak of Lunar Communion
								i(207283),	-- Poulaines of Lunar Communion
								i(207277),	-- Wristwraps of Lunar Communion
							},
						}),
						cl(ROGUE, {
							["sym"] = SymRaidAdmirdrassil(ROGUE, DIFFICULTY.RAID.LFR),
							["g"] = {
								i(207233),	-- Lucid Shadewalker's Baldric
								i(207232),	-- Lucid Shadewalker's Bracers
								i(207231),	-- Lucid Shadewalker's Cape
								i(207238),	-- Lucid Shadewalker's Sollerets
							},
						}),
						cl(SHAMAN, {
							["sym"] = SymRaidAdmirdrassil(SHAMAN, DIFFICULTY.RAID.LFR),
							["g"] = {
								i(207204),	-- Greatwolf Outcast's Chainweave
								i(207211),	-- Greatwolf Outcast's Footpads
								i(207206),	-- Greatwolf Outcast's Sigil Belt
								i(207205),	-- Greatwolf Outcast's Wristguards
							},
						}),
						cl(WARLOCK, {
							["sym"] = SymRaidAdmirdrassil(WARLOCK, DIFFICULTY.RAID.LFR),
							["g"] = {
								i(207268),	-- Devout Ashdevil's Bracelets
								i(207269),	-- Devout Ashdevil's Fanged Sash
								i(207267),	-- Devout Ashdevil's Fiendcloak
								i(207274),	-- Devout Ashdevil's Slippers
							},
						}),
						cl(WARRIOR, {
							["sym"] = SymRaidAdmirdrassil(WARRIOR, DIFFICULTY.RAID.LFR),
							["g"] = {
								i(207179),	-- Molten Vanguard's Chains
								i(207184),	-- Molten Vanguard's Greatboots
								i(207177),	-- Molten Vanguard's Manacles
								i(207176),	-- Molten Vanguard's Thermal Cape
							},
						}),
					}),
				}),
				d(DIFFICULTY.RAID.NORMAL, {
					["description"] = "",
					["g"] = {
						cl(DEATHKNIGHT, {
							["sym"] = SymRaidAdmirdrassil(DEATHKNIGHT, DIFFICULTY.RAID.NORMAL),
							["g"] = {
								i(207202),	-- Graveboots of the Risen Nightmare
								i(207197),	-- Seal of the Risen Nightmare
								i(207195),	-- Shroud of the Risen Nightmare
								i(207196),	-- Vambraces of the Risen Nightmare
							},
						}),
						cl(DEMONHUNTER, {
							["sym"] = SymRaidAdmirdrassil(DEMONHUNTER, DIFFICULTY.RAID.NORMAL),
							["g"] = {
								i(207259),	-- Screaming Torchfiend's Armlets
								i(207260),	-- Screaming Torchfiend's Clasp
								i(207265),	-- Screaming Torchfiend's Clutches
								i(207258),	-- Screaming Torchfiend's Shawl
							},
						}),
						cl(DRUID, {
							["sym"] = SymRaidAdmirdrassil(DRUID, DIFFICULTY.RAID.NORMAL),
							["g"] = {
								i(207249),	-- Benevolent Embersage's Featherdrape
								i(207256),	-- Benevolent Embersage's Lined Boots
								i(207251),	-- Benevolent Embersage's Sagacious Sash
								i(207250),	-- Benevolent Embersage's Wristwraps
							},
						}),
						cl(EVOKER, {
							["sym"] = SymRaidAdmirdrassil(EVOKER, DIFFICULTY.RAID.NORMAL),
							["g"] = {
								i(207224),	-- Weyrnkeeper's Timeless Adorned Sash
								i(207222),	-- Weyrnkeeper's Timeless Ornamented Cloak
								i(207229),	-- Weyrnkeeper's Timeless Treads
								i(207223),	-- Weyrnkeeper's Timeless Wristlets
							},
						}),
						cl(HUNTER, {
							["sym"] = SymRaidAdmirdrassil(HUNTER, DIFFICULTY.RAID.NORMAL),
							["g"] = {
								i(207214),	-- Blazing Dreamstalker's Bracers
								i(207215),	-- Blazing Dreamstalker's Spined Girdle
								i(207213),	-- Blazing Dreamstalker's Staghide
								i(207220),	-- Blazing Dreamstalker's Striders
							},
						}),
						cl(MAGE, {
							["sym"] = SymRaidAdmirdrassil(MAGE, DIFFICULTY.RAID.NORMAL),
							["g"] = {
								i(207286),	-- Wayward Chronomancer's Cuffs
								i(207285),	-- Wayward Chronomancer's Stole
								i(207292),	-- Wayward Chronomancer's Strapped Boots
								i(207287),	-- Wayward Chronomancer's Synchronous Belt
							},
						}),
						cl(MONK, {
							["sym"] = SymRaidAdmirdrassil(MONK, DIFFICULTY.RAID.NORMAL),
							["g"] = {
								i(207242),	-- Mystic Heron's Belt
								i(207240),	-- Mystic Heron's Feathered Mantle
								i(207241),	-- Mystic Heron's Fisticuffs
								i(207247),	-- Mystic Heron's Tabi
							},
						}),
						cl(PALADIN, {
							["sym"] = SymRaidAdmirdrassil(PALADIN, DIFFICULTY.RAID.NORMAL),
							["g"] = {
								i(207186),	-- Zealous Pyreknight's Banner
								i(207193),	-- Zealous Pyreknight's Dreamstompers
								i(207188),	-- Zealous Pyreknight's Emblem
								i(207187),	-- Zealous Pyreknight's Flameguards
							},
						}),
						cl(PRIEST, {
							["sym"] = SymRaidAdmirdrassil(PRIEST, DIFFICULTY.RAID.NORMAL),
							["g"] = {
								i(207278),	-- Cincture of Lunar Communion
								i(207276),	-- Cloak of Lunar Communion
								i(207283),	-- Poulaines of Lunar Communion
								i(207277),	-- Wristwraps of Lunar Communion
							},
						}),
						cl(ROGUE, {
							["sym"] = SymRaidAdmirdrassil(ROGUE, DIFFICULTY.RAID.NORMAL),
							["g"] = {
								i(207233),	-- Lucid Shadewalker's Baldric
								i(207232),	-- Lucid Shadewalker's Bracers
								i(207231),	-- Lucid Shadewalker's Cape
								i(207238),	-- Lucid Shadewalker's Sollerets
							},
						}),
						cl(SHAMAN, {
							["sym"] = SymRaidAdmirdrassil(SHAMAN, DIFFICULTY.RAID.NORMAL),
							["g"] = {
								i(207204),	-- Greatwolf Outcast's Chainweave
								i(207211),	-- Greatwolf Outcast's Footpads
								i(207206),	-- Greatwolf Outcast's Sigil Belt
								i(207205),	-- Greatwolf Outcast's Wristguards
							},
						}),
						cl(WARLOCK, {
							["sym"] = SymRaidAdmirdrassil(WARLOCK, DIFFICULTY.RAID.NORMAL),
							["g"] = {
								i(207268),	-- Devout Ashdevil's Bracelets
								i(207269),	-- Devout Ashdevil's Fanged Sash
								i(207267),	-- Devout Ashdevil's Fiendcloak
								i(207274),	-- Devout Ashdevil's Slippers
							},
						}),
						cl(WARRIOR, {
							["sym"] = SymRaidAdmirdrassil(WARRIOR, DIFFICULTY.RAID.NORMAL),
							["g"] = {
								i(207179),	-- Molten Vanguard's Chains
								i(207184),	-- Molten Vanguard's Greatboots
								i(207177),	-- Molten Vanguard's Manacles
								i(207176),	-- Molten Vanguard's Thermal Cape
							},
						}),
					},
				}),
				d(DIFFICULTY.RAID.HEROIC, {
					["description"] = "",
					["g"] = bubbleDown({ ["modID"] = 5 }, {
						cl(DEATHKNIGHT, {
							["sym"] = SymRaidAdmirdrassil(DEATHKNIGHT, DIFFICULTY.RAID.HEROIC),
							["g"] = {
								i(207202),	-- Graveboots of the Risen Nightmare
								i(207197),	-- Seal of the Risen Nightmare
								i(207195),	-- Shroud of the Risen Nightmare
								i(207196),	-- Vambraces of the Risen Nightmare
							},
						}),
						cl(DEMONHUNTER, {
							["sym"] = SymRaidAdmirdrassil(DEMONHUNTER, DIFFICULTY.RAID.HEROIC),
							["g"] = {
								i(207259),	-- Screaming Torchfiend's Armlets
								i(207260),	-- Screaming Torchfiend's Clasp
								i(207265),	-- Screaming Torchfiend's Clutches
								i(207258),	-- Screaming Torchfiend's Shawl
							},
						}),
						cl(DRUID, {
							["sym"] = SymRaidAdmirdrassil(DRUID, DIFFICULTY.RAID.HEROIC),
							["g"] = {
								i(207249),	-- Benevolent Embersage's Featherdrape
								i(207256),	-- Benevolent Embersage's Lined Boots
								i(207251),	-- Benevolent Embersage's Sagacious Sash
								i(207250),	-- Benevolent Embersage's Wristwraps
							},
						}),
						cl(EVOKER, {
							["sym"] = SymRaidAdmirdrassil(EVOKER, DIFFICULTY.RAID.HEROIC),
							["g"] = {
								i(207224),	-- Weyrnkeeper's Timeless Adorned Sash
								i(207222),	-- Weyrnkeeper's Timeless Ornamented Cloak
								i(207229),	-- Weyrnkeeper's Timeless Treads
								i(207223),	-- Weyrnkeeper's Timeless Wristlets
							},
						}),
						cl(HUNTER, {
							["sym"] = SymRaidAdmirdrassil(HUNTER, DIFFICULTY.RAID.HEROIC),
							["g"] = {
								i(207214),	-- Blazing Dreamstalker's Bracers
								i(207215),	-- Blazing Dreamstalker's Spined Girdle
								i(207213),	-- Blazing Dreamstalker's Staghide
								i(207220),	-- Blazing Dreamstalker's Striders
							},
						}),
						cl(MAGE, {
							["sym"] = SymRaidAdmirdrassil(MAGE, DIFFICULTY.RAID.HEROIC),
							["g"] = {
								i(207286),	-- Wayward Chronomancer's Cuffs
								i(207285),	-- Wayward Chronomancer's Stole
								i(207292),	-- Wayward Chronomancer's Strapped Boots
								i(207287),	-- Wayward Chronomancer's Synchronous Belt
							},
						}),
						cl(MONK, {
							["sym"] = SymRaidAdmirdrassil(MONK, DIFFICULTY.RAID.HEROIC),
							["g"] = {
								i(207242),	-- Mystic Heron's Belt
								i(207240),	-- Mystic Heron's Feathered Mantle
								i(207241),	-- Mystic Heron's Fisticuffs
								i(207247),	-- Mystic Heron's Tabi
							},
						}),
						cl(PALADIN, {
							["sym"] = SymRaidAdmirdrassil(PALADIN, DIFFICULTY.RAID.HEROIC),
							["g"] = {
								i(207186),	-- Zealous Pyreknight's Banner
								i(207193),	-- Zealous Pyreknight's Dreamstompers
								i(207188),	-- Zealous Pyreknight's Emblem
								i(207187),	-- Zealous Pyreknight's Flameguards
							},
						}),
						cl(PRIEST, {
							["sym"] = SymRaidAdmirdrassil(PRIEST, DIFFICULTY.RAID.HEROIC),
							["g"] = {
								i(207278),	-- Cincture of Lunar Communion
								i(207276),	-- Cloak of Lunar Communion
								i(207283),	-- Poulaines of Lunar Communion
								i(207277),	-- Wristwraps of Lunar Communion
							},
						}),
						cl(ROGUE, {
							["sym"] = SymRaidAdmirdrassil(ROGUE, DIFFICULTY.RAID.HEROIC),
							["g"] = {
								i(207233),	-- Lucid Shadewalker's Baldric
								i(207232),	-- Lucid Shadewalker's Bracers
								i(207231),	-- Lucid Shadewalker's Cape
								i(207238),	-- Lucid Shadewalker's Sollerets
							},
						}),
						cl(SHAMAN, {
							["sym"] = SymRaidAdmirdrassil(SHAMAN, DIFFICULTY.RAID.HEROIC),
							["g"] = {
								i(207204),	-- Greatwolf Outcast's Chainweave
								i(207211),	-- Greatwolf Outcast's Footpads
								i(207206),	-- Greatwolf Outcast's Sigil Belt
								i(207205),	-- Greatwolf Outcast's Wristguards
							},
						}),
						cl(WARLOCK, {
							["sym"] = SymRaidAdmirdrassil(WARLOCK, DIFFICULTY.RAID.HEROIC),
							["g"] = {
								i(207268),	-- Devout Ashdevil's Bracelets
								i(207269),	-- Devout Ashdevil's Fanged Sash
								i(207267),	-- Devout Ashdevil's Fiendcloak
								i(207274),	-- Devout Ashdevil's Slippers
							},
						}),
						cl(WARRIOR, {
							["sym"] = SymRaidAdmirdrassil(WARRIOR, DIFFICULTY.RAID.HEROIC),
							["g"] = {
								i(207179),	-- Molten Vanguard's Chains
								i(207184),	-- Molten Vanguard's Greatboots
								i(207177),	-- Molten Vanguard's Manacles
								i(207176),	-- Molten Vanguard's Thermal Cape
							},
						}),
					}),
				}),
				d(DIFFICULTY.RAID.MYTHIC, {
					["description"] = "",
					["g"] = bubbleDown({ ["modID"] = 6 }, {
						cl(DEATHKNIGHT, {
							["sym"] = SymRaidAdmirdrassil(DEATHKNIGHT, DIFFICULTY.RAID.MYTHIC),
							["g"] = {
								i(207202),	-- Graveboots of the Risen Nightmare
								i(207197),	-- Seal of the Risen Nightmare
								i(207195),	-- Shroud of the Risen Nightmare
								i(207196),	-- Vambraces of the Risen Nightmare
							},
						}),
						cl(DEMONHUNTER, {
							["sym"] = SymRaidAdmirdrassil(DEMONHUNTER, DIFFICULTY.RAID.MYTHIC),
							["g"] = {
								i(207259),	-- Screaming Torchfiend's Armlets
								i(207260),	-- Screaming Torchfiend's Clasp
								i(207265),	-- Screaming Torchfiend's Clutches
								i(207258),	-- Screaming Torchfiend's Shawl
							},
						}),
						cl(DRUID, {
							["sym"] = SymRaidAdmirdrassil(DRUID, DIFFICULTY.RAID.MYTHIC),
							["g"] = {
								i(207249),	-- Benevolent Embersage's Featherdrape
								i(207256),	-- Benevolent Embersage's Lined Boots
								i(207251),	-- Benevolent Embersage's Sagacious Sash
								i(207250),	-- Benevolent Embersage's Wristwraps
							},
						}),
						cl(EVOKER, {
							["sym"] = SymRaidAdmirdrassil(EVOKER, DIFFICULTY.RAID.MYTHIC),
							["g"] = {
								i(207224),	-- Weyrnkeeper's Timeless Adorned Sash
								i(207222),	-- Weyrnkeeper's Timeless Ornamented Cloak
								i(207229),	-- Weyrnkeeper's Timeless Treads
								i(207223),	-- Weyrnkeeper's Timeless Wristlets
							},
						}),
						cl(HUNTER, {
							["sym"] = SymRaidAdmirdrassil(HUNTER, DIFFICULTY.RAID.MYTHIC),
							["g"] = {
								i(207214),	-- Blazing Dreamstalker's Bracers
								i(207215),	-- Blazing Dreamstalker's Spined Girdle
								i(207213),	-- Blazing Dreamstalker's Staghide
								i(207220),	-- Blazing Dreamstalker's Striders
							},
						}),
						cl(MAGE, {
							["sym"] = SymRaidAdmirdrassil(MAGE, DIFFICULTY.RAID.MYTHIC),
							["g"] = {
								i(207286),	-- Wayward Chronomancer's Cuffs
								i(207285),	-- Wayward Chronomancer's Stole
								i(207292),	-- Wayward Chronomancer's Strapped Boots
								i(207287),	-- Wayward Chronomancer's Synchronous Belt
							},
						}),
						cl(MONK, {
							["sym"] = SymRaidAdmirdrassil(MONK, DIFFICULTY.RAID.MYTHIC),
							["g"] = {
								i(207242),	-- Mystic Heron's Belt
								i(207240),	-- Mystic Heron's Feathered Mantle
								i(207241),	-- Mystic Heron's Fisticuffs
								i(207247),	-- Mystic Heron's Tabi
							},
						}),
						cl(PALADIN, {
							["sym"] = SymRaidAdmirdrassil(PALADIN, DIFFICULTY.RAID.MYTHIC),
							["g"] = {
								i(207186),	-- Zealous Pyreknight's Banner
								i(207193),	-- Zealous Pyreknight's Dreamstompers
								i(207188),	-- Zealous Pyreknight's Emblem
								i(207187),	-- Zealous Pyreknight's Flameguards
							},
						}),
						cl(PRIEST, {
							["sym"] = SymRaidAdmirdrassil(PRIEST, DIFFICULTY.RAID.MYTHIC),
							["g"] = {
								i(207278),	-- Cincture of Lunar Communion
								i(207276),	-- Cloak of Lunar Communion
								i(207283),	-- Poulaines of Lunar Communion
								i(207277),	-- Wristwraps of Lunar Communion
							},
						}),
						cl(ROGUE, {
							["sym"] = SymRaidAdmirdrassil(ROGUE, DIFFICULTY.RAID.MYTHIC),
							["g"] = {
								i(207233),	-- Lucid Shadewalker's Baldric
								i(207232),	-- Lucid Shadewalker's Bracers
								i(207231),	-- Lucid Shadewalker's Cape
								i(207238),	-- Lucid Shadewalker's Sollerets
							},
						}),
						cl(SHAMAN, {
							["sym"] = SymRaidAdmirdrassil(SHAMAN, DIFFICULTY.RAID.MYTHIC),
							["g"] = {
								i(207204),	-- Greatwolf Outcast's Chainweave
								i(207211),	-- Greatwolf Outcast's Footpads
								i(207206),	-- Greatwolf Outcast's Sigil Belt
								i(207205),	-- Greatwolf Outcast's Wristguards
							},
						}),
						cl(WARLOCK, {
							["sym"] = SymRaidAdmirdrassil(WARLOCK, DIFFICULTY.RAID.MYTHIC),
							["g"] = {
								i(207268),	-- Devout Ashdevil's Bracelets
								i(207269),	-- Devout Ashdevil's Fanged Sash
								i(207267),	-- Devout Ashdevil's Fiendcloak
								i(207274),	-- Devout Ashdevil's Slippers
							},
						}),
						cl(WARRIOR, {
							["sym"] = SymRaidAdmirdrassil(WARRIOR, DIFFICULTY.RAID.MYTHIC),
							["g"] = {
								i(207179),	-- Molten Vanguard's Chains
								i(207184),	-- Molten Vanguard's Greatboots
								i(207177),	-- Molten Vanguard's Manacles
								i(207176),	-- Molten Vanguard's Thermal Cape
							},
						}),
					}),
				}),
			})),
			-- #endif
			-- #if BEFORE 11.0.2
			-- Temporary show in main list too when the season is active
			header(HEADERS.Achievement, SEASON_DRACONIC_PVE, bubbleDownSelf({ ["timeline"] = { ADDED_10_2_6_SEASON_FOUR, REMOVED_TWW_LAUNCH } }, {
				-- There are new IDs only for "Tier Slots" in season 4 - main source in raid from tokens
				-- "Off Slots" use old IDs of original items - main source in Catalyst of previous tiers/raids (new "Off Slot" IDs are NYI)
				d(DIFFICULTY.RAID.LFR, {
					["description"] = "",
					["g"] = bubbleDown({ ["modID"] = 4 }, {
						cl(DEATHKNIGHT, {
							-- "Tier Slots"
							i(217221),	-- Casket of the Risen Nightmare
							i(217224),	-- Greaves of the Risen Nightmare
							i(217223),	-- Piercing Gaze of the Risen Nightmare
							i(217225),	-- Skewers of the Risen Nightmare
							i(217222),	-- Thorns of the Risen Nightmare
							-- "Off Slots"
							i(207202),	-- Graveboots of the Risen Nightmare
							i(207197),	-- Seal of the Risen Nightmare
							i(207195),	-- Shroud of the Risen Nightmare
							i(207196),	-- Vambraces of the Risen Nightmare
						}),
						cl(DEMONHUNTER, {
							-- "Tier Slots"
							i(217226),	-- Screaming Torchfiend's Binding
							i(217229),	-- Screaming Torchfiend's Blazewraps
							i(217228),	-- Screaming Torchfiend's Burning Scowl
							i(217227),	-- Screaming Torchfiend's Grasp
							i(217230),	-- Screaming Torchfiend's Horned Memento
							-- "Off Slots"
							i(207259),	-- Screaming Torchfiend's Armlets
							i(207260),	-- Screaming Torchfiend's Clasp
							i(207265),	-- Screaming Torchfiend's Clutches
							i(207258),	-- Screaming Torchfiend's Shawl
						}),
						cl(DRUID, {
							-- "Tier Slots"
							i(217193),	-- Bough of the Autumn Blaze
							i(217191),	-- Chestroots of the Autumn Blaze
							i(217192),	-- Handguards of the Autumn Blaze
							i(217195),	-- Mantle of the Autumn Blaze
							i(217194),	-- Pants of the Autumn Blaze
							-- "Off Slots"
							i(202511),	-- Bands of the Autumn Blaze
							i(202510),	-- Foliage of the Autumn Blaze
							i(202512),	-- Garland of the Autumn Blaze
							i(202517),	-- Hooves of the Autumn Blaze
						}),
						cl(EVOKER, {
							-- "Tier Slots"
							i(217178),	-- Crown of the Awakened
							i(217177),	-- Gauntlets of the Awakened
							i(217176),	-- Hauberk of the Awakened
							i(217179),	-- Legguards of the Awakened
							i(217180),	-- Talons of the Awakened
							-- "Off Slots"
							i(200385, {["bonusID"] = 451}),	-- Bracers of the Awakened
							i(200384, {["bonusID"] = 451}),	-- Chain of the Awakened
							i(200386, {["bonusID"] = 451}),	-- Shroud of the Awakened
							i(200379, {["bonusID"] = 451}),	-- Treads of the Awakened
						}),
						cl(HUNTER, {
							-- "Tier Slots"
							i(217181),	-- Stormwing Harrier's Cuirass
							i(217184),	-- Stormwing Harrier's Greaves
							i(217182),	-- Stormwing Harrier's Handguards
							i(217185),	-- Stormwing Harrier's Pinions
							i(217183),	-- Stormwing Harrier's Skullmask
							-- "Off Slots"
							i(200393, {["bonusID"] = 451}),	-- Stormwing Harrier's Belt
							i(200395, {["bonusID"] = 451}),	-- Stormwing Harrier's Plumage
							i(200388, {["bonusID"] = 451}),	-- Stormwing Harrier's Sabatons
							i(200394, {["bonusID"] = 451}),	-- Stormwing Harrier's Wristguards
						}),
						cl(MAGE, {
							-- "Tier Slots"
							i(217232),	-- Wayward Chronomancer's Chronocap
							i(217231),	-- Wayward Chronomancer's Gloves
							i(217234),	-- Wayward Chronomancer's Metronomes
							i(217233),	-- Wayward Chronomancer's Pantaloons
							i(217235),	-- Wayward Chronomancer's Patchwork
							-- "Off Slots"
							i(207286),	-- Wayward Chronomancer's Cuffs
							i(207285),	-- Wayward Chronomancer's Stole
							i(207292),	-- Wayward Chronomancer's Strapped Boots
							i(207287),	-- Wayward Chronomancer's Synchronous Belt
						}),
						cl(MONK, {
							-- "Tier Slots"
							i(217186),	-- Chestwrap of the Waking Fist
							i(217188),	-- Gaze of the Waking Fist
							i(217189),	-- Legguards of the Waking Fist
							i(217190),	-- Mantle of the Waking Fist
							i(217187),	-- Palms of the Waking Fist
							-- "Off Slots"
							i(200367, {["bonusID"] = 451}),	-- Cuffs of the Waking Fist
							i(200368, {["bonusID"] = 451}),	-- Drape of the Waking Fist
							i(200361, {["bonusID"] = 451}),	-- Gaiters of the Waking Fist
							i(200366, {["bonusID"] = 451}),	-- Girdle of the Waking Fist
						}),
						cl(PALADIN, {
							-- "Tier Slots"
							i(217196),	-- Heartfire Sentinel's Brigandine
							i(217199),	-- Heartfire Sentinel's Faulds
							i(217198),	-- Heartfire Sentinel's Forgehelm
							i(217197),	-- Heartfire Sentinel's Protectors
							i(217200),	-- Heartfire Sentinel's Steelwings
							-- "Off Slots"
							i(202448),	-- Heartfire Sentinel's Blessed Bindings
							i(202454),	-- Heartfire Sentinel's Greatboots
							i(202447),	-- Heartfire Sentinel's Pelerine
							i(202449),	-- Heartfire Sentinel's Waistguard
						}),
						cl(PRIEST, {
							-- "Tier Slots"
							i(217203),	-- Breeches of the Furnace Seraph
							i(217205),	-- Command of the Furnace Seraph
							i(217204),	-- Devotion of the Furnace Seraph
							i(217201),	-- Grasp of the Furnace Seraph
							i(217202),	-- Mask of the Furnace Seraph
							-- "Off Slots"
							i(202538),	-- Cuffs of the Furnace Seraph
							i(202544),	-- Sabatons of the Furnace Seraph
							i(202539),	-- Sash of the Furnace Seraph
							i(202537),	-- Shroud of the Furnace Seraph
						}),
						cl(ROGUE, {
							-- "Tier Slots"
							i(217206),	-- Lurking Specter's Brigandine
							i(217207),	-- Lurking Specter's Handgrips
							i(217210),	-- Lurking Specter's Shoulderblades
							i(217209),	-- Lurking Specter's Tights
							i(217208),	-- Lurking Specter's Visage
							-- "Off Slots"
							i(202493),	-- Lurking Specter's Armwraps
							i(202492),	-- Lurking Specter's Capelet
							i(202494),	-- Lurking Specter's Edgeband
							i(202499),	-- Lurking Specter's Tabi
						}),
						cl(SHAMAN, {
							-- "Tier Slots"
							i(217240),	-- Greatwolf Outcast's Companions
							i(217239),	-- Greatwolf Outcast's Fur-Lined Kilt
							i(217237),	-- Greatwolf Outcast's Grips
							i(217236),	-- Greatwolf Outcast's Harness
							i(217238),	-- Greatwolf Outcast's Jaws
							-- "Off Slots"
							i(207204),	-- Greatwolf Outcast's Chainweave
							i(207211),	-- Greatwolf Outcast's Footpads
							i(207206),	-- Greatwolf Outcast's Sigil Belt
							i(207205),	-- Greatwolf Outcast's Wristguards
						}),
						cl(WARLOCK, {
							-- "Tier Slots"
							i(217214),	-- Amice of the Sinister Savant
							i(217215),	-- Cursed Robes of the Sinister Savant
							i(217212),	-- Grimhorns of the Sinister Savant
							i(217211),	-- Grips of the Sinister Savant
							i(217213),	-- Leggings of the Sinister Savant
							-- "Off Slots"
							i(202535),	-- Sandals of the Sinister Savant
							i(202528),	-- Shawl of the Sinister Savant
							i(202530),	-- Skullstrap of the Sinister Savant
							i(202529),	-- Wristwraps of the Sinister Savant
						}),
						cl(WARRIOR, {
							-- "Tier Slots"
							i(217216),	-- Battlechest of the Onyx Crucible
							i(217217),	-- Handguards of the Onyx Crucible
							i(217219),	-- Legplates of the Onyx Crucible
							i(217220),	-- Pauldrons of the Onyx Crucible
							i(217218),	-- Thraexhelm of the Onyx Crucible
							-- "Off Slots"
							i(202440),	-- Insignia of the Onyx Crucible
							i(202445),	-- Ironstriders of the Onyx Crucible
							i(202438),	-- Manteau of the Onyx Crucible
							i(202439),	-- Warbands of the Onyx Crucible
						}),
					}),
				}),
				d(DIFFICULTY.RAID.NORMAL, {
					["description"] = "",
					["g"] = bubbleDown({ ["modID"] = 3 }, {
						cl(DEATHKNIGHT, {
							-- "Tier Slots"
							i(217221),	-- Casket of the Risen Nightmare
							i(217224),	-- Greaves of the Risen Nightmare
							i(217223),	-- Piercing Gaze of the Risen Nightmare
							i(217225),	-- Skewers of the Risen Nightmare
							i(217222),	-- Thorns of the Risen Nightmare
							-- "Off Slots"
							i(207202),	-- Graveboots of the Risen Nightmare
							i(207197),	-- Seal of the Risen Nightmare
							i(207195),	-- Shroud of the Risen Nightmare
							i(207196),	-- Vambraces of the Risen Nightmare
						}),
						cl(DEMONHUNTER, {
							-- "Tier Slots"
							i(217226),	-- Screaming Torchfiend's Binding
							i(217229),	-- Screaming Torchfiend's Blazewraps
							i(217228),	-- Screaming Torchfiend's Burning Scowl
							i(217227),	-- Screaming Torchfiend's Grasp
							i(217230),	-- Screaming Torchfiend's Horned Memento
							-- "Off Slots"
							i(207259),	-- Screaming Torchfiend's Armlets
							i(207260),	-- Screaming Torchfiend's Clasp
							i(207265),	-- Screaming Torchfiend's Clutches
							i(207258),	-- Screaming Torchfiend's Shawl
						}),
						cl(DRUID, {
							-- "Tier Slots"
							i(217193),	-- Bough of the Autumn Blaze
							i(217191),	-- Chestroots of the Autumn Blaze
							i(217192),	-- Handguards of the Autumn Blaze
							i(217195),	-- Mantle of the Autumn Blaze
							i(217194),	-- Pants of the Autumn Blaze
							-- "Off Slots"
							i(202511),	-- Bands of the Autumn Blaze
							i(202510),	-- Foliage of the Autumn Blaze
							i(202512),	-- Garland of the Autumn Blaze
							i(202517),	-- Hooves of the Autumn Blaze
						}),
						cl(EVOKER, {
							-- "Tier Slots"
							i(217178),	-- Crown of the Awakened
							i(217177),	-- Gauntlets of the Awakened
							i(217176),	-- Hauberk of the Awakened
							i(217179),	-- Legguards of the Awakened
							i(217180),	-- Talons of the Awakened
							-- "Off Slots"
							i(200385),	-- Bracers of the Awakened
							i(200384),	-- Chain of the Awakened
							i(200386),	-- Shroud of the Awakened
							i(200379),	-- Treads of the Awakened
						}),
						cl(HUNTER, {
							-- "Tier Slots"
							i(217181),	-- Stormwing Harrier's Cuirass
							i(217184),	-- Stormwing Harrier's Greaves
							i(217182),	-- Stormwing Harrier's Handguards
							i(217185),	-- Stormwing Harrier's Pinions
							i(217183),	-- Stormwing Harrier's Skullmask
							-- "Off Slots"
							i(200393),	-- Stormwing Harrier's Belt
							i(200395),	-- Stormwing Harrier's Plumage
							i(200388),	-- Stormwing Harrier's Sabatons
							i(200394),	-- Stormwing Harrier's Wristguards
						}),
						cl(MAGE, {
							-- "Tier Slots"
							i(217232),	-- Wayward Chronomancer's Chronocap
							i(217231),	-- Wayward Chronomancer's Gloves
							i(217234),	-- Wayward Chronomancer's Metronomes
							i(217233),	-- Wayward Chronomancer's Pantaloons
							i(217235),	-- Wayward Chronomancer's Patchwork
							-- "Off Slots"
							i(207286),	-- Wayward Chronomancer's Cuffs
							i(207285),	-- Wayward Chronomancer's Stole
							i(207292),	-- Wayward Chronomancer's Strapped Boots
							i(207287),	-- Wayward Chronomancer's Synchronous Belt
						}),
						cl(MONK, {
							-- "Tier Slots"
							i(217186),	-- Chestwrap of the Waking Fist
							i(217188),	-- Gaze of the Waking Fist
							i(217189),	-- Legguards of the Waking Fist
							i(217190),	-- Mantle of the Waking Fist
							i(217187),	-- Palms of the Waking Fist
							-- "Off Slots"
							i(200367),	-- Cuffs of the Waking Fist
							i(200368),	-- Drape of the Waking Fist
							i(200361),	-- Gaiters of the Waking Fist
							i(200366),	-- Girdle of the Waking Fist
						}),
						cl(PALADIN, {
							-- "Tier Slots"
							i(217196),	-- Heartfire Sentinel's Brigandine
							i(217199),	-- Heartfire Sentinel's Faulds
							i(217198),	-- Heartfire Sentinel's Forgehelm
							i(217197),	-- Heartfire Sentinel's Protectors
							i(217200),	-- Heartfire Sentinel's Steelwings
							-- "Off Slots"
							i(202448),	-- Heartfire Sentinel's Blessed Bindings
							i(202454),	-- Heartfire Sentinel's Greatboots
							i(202447),	-- Heartfire Sentinel's Pelerine
							i(202449),	-- Heartfire Sentinel's Waistguard
						}),
						cl(PRIEST, {
							-- "Tier Slots"
							i(217203),	-- Breeches of the Furnace Seraph
							i(217205),	-- Command of the Furnace Seraph
							i(217204),	-- Devotion of the Furnace Seraph
							i(217201),	-- Grasp of the Furnace Seraph
							i(217202),	-- Mask of the Furnace Seraph
							-- "Off Slots"
							i(202538),	-- Cuffs of the Furnace Seraph
							i(202544),	-- Sabatons of the Furnace Seraph
							i(202539),	-- Sash of the Furnace Seraph
							i(202537),	-- Shroud of the Furnace Seraph
						}),
						cl(ROGUE, {
							-- "Tier Slots"
							i(217206),	-- Lurking Specter's Brigandine
							i(217207),	-- Lurking Specter's Handgrips
							i(217210),	-- Lurking Specter's Shoulderblades
							i(217209),	-- Lurking Specter's Tights
							i(217208),	-- Lurking Specter's Visage
							-- "Off Slots"
							i(202493),	-- Lurking Specter's Armwraps
							i(202492),	-- Lurking Specter's Capelet
							i(202494),	-- Lurking Specter's Edgeband
							i(202499),	-- Lurking Specter's Tabi
						}),
						cl(SHAMAN, {
							-- "Tier Slots"
							i(217240),	-- Greatwolf Outcast's Companions
							i(217239),	-- Greatwolf Outcast's Fur-Lined Kilt
							i(217237),	-- Greatwolf Outcast's Grips
							i(217236),	-- Greatwolf Outcast's Harness
							i(217238),	-- Greatwolf Outcast's Jaws
							-- "Off Slots"
							i(207204),	-- Greatwolf Outcast's Chainweave
							i(207211),	-- Greatwolf Outcast's Footpads
							i(207206),	-- Greatwolf Outcast's Sigil Belt
							i(207205),	-- Greatwolf Outcast's Wristguards
						}),
						cl(WARLOCK, {
							-- "Tier Slots"
							i(217214),	-- Amice of the Sinister Savant
							i(217215),	-- Cursed Robes of the Sinister Savant
							i(217212),	-- Grimhorns of the Sinister Savant
							i(217211),	-- Grips of the Sinister Savant
							i(217213),	-- Leggings of the Sinister Savant
							-- "Off Slots"
							i(202535),	-- Sandals of the Sinister Savant
							i(202528),	-- Shawl of the Sinister Savant
							i(202530),	-- Skullstrap of the Sinister Savant
							i(202529),	-- Wristwraps of the Sinister Savant
						}),
						cl(WARRIOR, {
							-- "Tier Slots"
							i(217216),	-- Battlechest of the Onyx Crucible
							i(217217),	-- Handguards of the Onyx Crucible
							i(217219),	-- Legplates of the Onyx Crucible
							i(217220),	-- Pauldrons of the Onyx Crucible
							i(217218),	-- Thraexhelm of the Onyx Crucible
							-- "Off Slots"
							i(202440),	-- Insignia of the Onyx Crucible
							i(202445),	-- Ironstriders of the Onyx Crucible
							i(202438),	-- Manteau of the Onyx Crucible
							i(202439),	-- Warbands of the Onyx Crucible
						}),
					}),
				}),
				d(DIFFICULTY.RAID.HEROIC, {
					["description"] = "",
					["g"] = bubbleDown({ ["modID"] = 5 }, {
						cl(DEATHKNIGHT, {
							-- "Tier Slots"
							i(217221),	-- Casket of the Risen Nightmare
							i(217224),	-- Greaves of the Risen Nightmare
							i(217223),	-- Piercing Gaze of the Risen Nightmare
							i(217225),	-- Skewers of the Risen Nightmare
							i(217222),	-- Thorns of the Risen Nightmare
							-- "Off Slots"
							i(207202),	-- Graveboots of the Risen Nightmare
							i(207197),	-- Seal of the Risen Nightmare
							i(207195),	-- Shroud of the Risen Nightmare
							i(207196),	-- Vambraces of the Risen Nightmare
						}),
						cl(DEMONHUNTER, {
							-- "Tier Slots"
							i(217226),	-- Screaming Torchfiend's Binding
							i(217229),	-- Screaming Torchfiend's Blazewraps
							i(217228),	-- Screaming Torchfiend's Burning Scowl
							i(217227),	-- Screaming Torchfiend's Grasp
							i(217230),	-- Screaming Torchfiend's Horned Memento
							-- "Off Slots"
							i(207259),	-- Screaming Torchfiend's Armlets
							i(207260),	-- Screaming Torchfiend's Clasp
							i(207265),	-- Screaming Torchfiend's Clutches
							i(207258),	-- Screaming Torchfiend's Shawl
						}),
						cl(DRUID, {
							-- "Tier Slots"
							i(217193),	-- Bough of the Autumn Blaze
							i(217191),	-- Chestroots of the Autumn Blaze
							i(217192),	-- Handguards of the Autumn Blaze
							i(217195),	-- Mantle of the Autumn Blaze
							i(217194),	-- Pants of the Autumn Blaze
							-- "Off Slots"
							i(202511),	-- Bands of the Autumn Blaze
							i(202510),	-- Foliage of the Autumn Blaze
							i(202512),	-- Garland of the Autumn Blaze
							i(202517),	-- Hooves of the Autumn Blaze
						}),
						cl(EVOKER, {
							-- "Tier Slots"
							i(217178),	-- Crown of the Awakened
							i(217177),	-- Gauntlets of the Awakened
							i(217176),	-- Hauberk of the Awakened
							i(217179),	-- Legguards of the Awakened
							i(217180),	-- Talons of the Awakened
							-- "Off Slots"
							i(200385, {["bonusID"] = 1}),	-- Bracers of the Awakened
							i(200384, {["bonusID"] = 1}),	-- Chain of the Awakened
							i(200386, {["bonusID"] = 1}),	-- Shroud of the Awakened
							i(200379, {["bonusID"] = 1}),	-- Treads of the Awakened
						}),
						cl(HUNTER, {
							-- "Tier Slots"
							i(217181),	-- Stormwing Harrier's Cuirass
							i(217184),	-- Stormwing Harrier's Greaves
							i(217182),	-- Stormwing Harrier's Handguards
							i(217185),	-- Stormwing Harrier's Pinions
							i(217183),	-- Stormwing Harrier's Skullmask
							-- "Off Slots"
							i(200393, {["bonusID"] = 1}),	-- Stormwing Harrier's Belt
							i(200395, {["bonusID"] = 1}),	-- Stormwing Harrier's Plumage
							i(200388, {["bonusID"] = 1}),	-- Stormwing Harrier's Sabatons
							i(200394, {["bonusID"] = 1}),	-- Stormwing Harrier's Wristguards
						}),
						cl(MAGE, {
							-- "Tier Slots"
							i(217232),	-- Wayward Chronomancer's Chronocap
							i(217231),	-- Wayward Chronomancer's Gloves
							i(217234),	-- Wayward Chronomancer's Metronomes
							i(217233),	-- Wayward Chronomancer's Pantaloons
							i(217235),	-- Wayward Chronomancer's Patchwork
							-- "Off Slots"
							i(207286),	-- Wayward Chronomancer's Cuffs
							i(207285),	-- Wayward Chronomancer's Stole
							i(207292),	-- Wayward Chronomancer's Strapped Boots
							i(207287),	-- Wayward Chronomancer's Synchronous Belt
						}),
						cl(MONK, {
							-- "Tier Slots"
							i(217186),	-- Chestwrap of the Waking Fist
							i(217188),	-- Gaze of the Waking Fist
							i(217189),	-- Legguards of the Waking Fist
							i(217190),	-- Mantle of the Waking Fist
							i(217187),	-- Palms of the Waking Fist
							-- "Off Slots"
							i(200367, {["bonusID"] = 1}),	-- Cuffs of the Waking Fist
							i(200368, {["bonusID"] = 1}),	-- Drape of the Waking Fist
							i(200361, {["bonusID"] = 1}),	-- Gaiters of the Waking Fist
							i(200366, {["bonusID"] = 1}),	-- Girdle of the Waking Fist
						}),
						cl(PALADIN, {
							-- "Tier Slots"
							i(217196),	-- Heartfire Sentinel's Brigandine
							i(217199),	-- Heartfire Sentinel's Faulds
							i(217198),	-- Heartfire Sentinel's Forgehelm
							i(217197),	-- Heartfire Sentinel's Protectors
							i(217200),	-- Heartfire Sentinel's Steelwings
							-- "Off Slots"
							i(202448),	-- Heartfire Sentinel's Blessed Bindings
							i(202454),	-- Heartfire Sentinel's Greatboots
							i(202447),	-- Heartfire Sentinel's Pelerine
							i(202449),	-- Heartfire Sentinel's Waistguard
						}),
						cl(PRIEST, {
							-- "Tier Slots"
							i(217203),	-- Breeches of the Furnace Seraph
							i(217205),	-- Command of the Furnace Seraph
							i(217204),	-- Devotion of the Furnace Seraph
							i(217201),	-- Grasp of the Furnace Seraph
							i(217202),	-- Mask of the Furnace Seraph
							-- "Off Slots"
							i(202538),	-- Cuffs of the Furnace Seraph
							i(202544),	-- Sabatons of the Furnace Seraph
							i(202539),	-- Sash of the Furnace Seraph
							i(202537),	-- Shroud of the Furnace Seraph
						}),
						cl(ROGUE, {
							-- "Tier Slots"
							i(217206),	-- Lurking Specter's Brigandine
							i(217207),	-- Lurking Specter's Handgrips
							i(217210),	-- Lurking Specter's Shoulderblades
							i(217209),	-- Lurking Specter's Tights
							i(217208),	-- Lurking Specter's Visage
							-- "Off Slots"
							i(202493),	-- Lurking Specter's Armwraps
							i(202492),	-- Lurking Specter's Capelet
							i(202494),	-- Lurking Specter's Edgeband
							i(202499),	-- Lurking Specter's Tabi
						}),
						cl(SHAMAN, {
							-- "Tier Slots"
							i(217240),	-- Greatwolf Outcast's Companions
							i(217239),	-- Greatwolf Outcast's Fur-Lined Kilt
							i(217237),	-- Greatwolf Outcast's Grips
							i(217236),	-- Greatwolf Outcast's Harness
							i(217238),	-- Greatwolf Outcast's Jaws
							-- "Off Slots"
							i(207204),	-- Greatwolf Outcast's Chainweave
							i(207211),	-- Greatwolf Outcast's Footpads
							i(207206),	-- Greatwolf Outcast's Sigil Belt
							i(207205),	-- Greatwolf Outcast's Wristguards
						}),
						cl(WARLOCK, {
							-- "Tier Slots"
							i(217214),	-- Amice of the Sinister Savant
							i(217215),	-- Cursed Robes of the Sinister Savant
							i(217212),	-- Grimhorns of the Sinister Savant
							i(217211),	-- Grips of the Sinister Savant
							i(217213),	-- Leggings of the Sinister Savant
							-- "Off Slots"
							i(202535),	-- Sandals of the Sinister Savant
							i(202528),	-- Shawl of the Sinister Savant
							i(202530),	-- Skullstrap of the Sinister Savant
							i(202529),	-- Wristwraps of the Sinister Savant
						}),
						cl(WARRIOR, {
							-- "Tier Slots"
							i(217216),	-- Battlechest of the Onyx Crucible
							i(217217),	-- Handguards of the Onyx Crucible
							i(217219),	-- Legplates of the Onyx Crucible
							i(217220),	-- Pauldrons of the Onyx Crucible
							i(217218),	-- Thraexhelm of the Onyx Crucible
							-- "Off Slots"
							i(202440),	-- Insignia of the Onyx Crucible
							i(202445),	-- Ironstriders of the Onyx Crucible
							i(202438),	-- Manteau of the Onyx Crucible
							i(202439),	-- Warbands of the Onyx Crucible
						}),
					}),
				}),
				d(DIFFICULTY.RAID.MYTHIC, {
					["description"] = "",
					["g"] = bubbleDown({ ["modID"] = 6 }, {
						cl(DEATHKNIGHT, {
							-- "Tier Slots"
							i(217221),	-- Casket of the Risen Nightmare
							i(217224),	-- Greaves of the Risen Nightmare
							i(217223),	-- Piercing Gaze of the Risen Nightmare
							i(217225),	-- Skewers of the Risen Nightmare
							i(217222),	-- Thorns of the Risen Nightmare
							-- "Off Slots"
							i(207202),	-- Graveboots of the Risen Nightmare
							i(207197),	-- Seal of the Risen Nightmare
							i(207195),	-- Shroud of the Risen Nightmare
							i(207196),	-- Vambraces of the Risen Nightmare
						}),
						cl(DEMONHUNTER, {
							-- "Tier Slots"
							i(217226),	-- Screaming Torchfiend's Binding
							i(217229),	-- Screaming Torchfiend's Blazewraps
							i(217228),	-- Screaming Torchfiend's Burning Scowl
							i(217227),	-- Screaming Torchfiend's Grasp
							i(217230),	-- Screaming Torchfiend's Horned Memento
							-- "Off Slots"
							i(207259),	-- Screaming Torchfiend's Armlets
							i(207260),	-- Screaming Torchfiend's Clasp
							i(207265),	-- Screaming Torchfiend's Clutches
							i(207258),	-- Screaming Torchfiend's Shawl
						}),
						cl(DRUID, {
							-- "Tier Slots"
							i(217193),	-- Bough of the Autumn Blaze
							i(217191),	-- Chestroots of the Autumn Blaze
							i(217192),	-- Handguards of the Autumn Blaze
							i(217195),	-- Mantle of the Autumn Blaze
							i(217194),	-- Pants of the Autumn Blaze
							-- "Off Slots"
							i(202511),	-- Bands of the Autumn Blaze
							i(202510),	-- Foliage of the Autumn Blaze
							i(202512),	-- Garland of the Autumn Blaze
							i(202517),	-- Hooves of the Autumn Blaze
						}),
						cl(EVOKER, {
							-- "Tier Slots"
							i(217178),	-- Crown of the Awakened
							i(217177),	-- Gauntlets of the Awakened
							i(217176),	-- Hauberk of the Awakened
							i(217179),	-- Legguards of the Awakened
							i(217180),	-- Talons of the Awakened
							-- "Off Slots"
							i(200385, {["bonusID"] = 450}),	-- Bracers of the Awakened
							i(200384, {["bonusID"] = 450}),	-- Chain of the Awakened
							i(200386, {["bonusID"] = 450}),	-- Shroud of the Awakened
							i(200379, {["bonusID"] = 450}),	-- Treads of the Awakened
						}),
						cl(HUNTER, {
							-- "Tier Slots"
							i(217181),	-- Stormwing Harrier's Cuirass
							i(217184),	-- Stormwing Harrier's Greaves
							i(217182),	-- Stormwing Harrier's Handguards
							i(217185),	-- Stormwing Harrier's Pinions
							i(217183),	-- Stormwing Harrier's Skullmask
							-- "Off Slots"
							i(200393, {["bonusID"] = 450}),	-- Stormwing Harrier's Belt
							i(200395, {["bonusID"] = 450}),	-- Stormwing Harrier's Plumage
							i(200388, {["bonusID"] = 450}),	-- Stormwing Harrier's Sabatons
							i(200394, {["bonusID"] = 450}),	-- Stormwing Harrier's Wristguards
						}),
						cl(MAGE, {
							-- "Tier Slots"
							i(217232),	-- Wayward Chronomancer's Chronocap
							i(217231),	-- Wayward Chronomancer's Gloves
							i(217234),	-- Wayward Chronomancer's Metronomes
							i(217233),	-- Wayward Chronomancer's Pantaloons
							i(217235),	-- Wayward Chronomancer's Patchwork
							-- "Off Slots"
							i(207286),	-- Wayward Chronomancer's Cuffs
							i(207285),	-- Wayward Chronomancer's Stole
							i(207292),	-- Wayward Chronomancer's Strapped Boots
							i(207287),	-- Wayward Chronomancer's Synchronous Belt
						}),
						cl(MONK, {
							-- "Tier Slots"
							i(217186),	-- Chestwrap of the Waking Fist
							i(217188),	-- Gaze of the Waking Fist
							i(217189),	-- Legguards of the Waking Fist
							i(217190),	-- Mantle of the Waking Fist
							i(217187),	-- Palms of the Waking Fist
							-- "Off Slots"
							i(200367, {["bonusID"] = 450}),	-- Cuffs of the Waking Fist
							i(200368, {["bonusID"] = 450}),	-- Drape of the Waking Fist
							i(200361, {["bonusID"] = 450}),	-- Gaiters of the Waking Fist
							i(200366, {["bonusID"] = 450}),	-- Girdle of the Waking Fist
						}),
						cl(PALADIN, {
							-- "Tier Slots"
							i(217196),	-- Heartfire Sentinel's Brigandine
							i(217199),	-- Heartfire Sentinel's Faulds
							i(217198),	-- Heartfire Sentinel's Forgehelm
							i(217197),	-- Heartfire Sentinel's Protectors
							i(217200),	-- Heartfire Sentinel's Steelwings
							-- "Off Slots"
							i(202448),	-- Heartfire Sentinel's Blessed Bindings
							i(202454),	-- Heartfire Sentinel's Greatboots
							i(202447),	-- Heartfire Sentinel's Pelerine
							i(202449),	-- Heartfire Sentinel's Waistguard
						}),
						cl(PRIEST, {
							-- "Tier Slots"
							i(217203),	-- Breeches of the Furnace Seraph
							i(217205),	-- Command of the Furnace Seraph
							i(217204),	-- Devotion of the Furnace Seraph
							i(217201),	-- Grasp of the Furnace Seraph
							i(217202),	-- Mask of the Furnace Seraph
							-- "Off Slots"
							i(202538),	-- Cuffs of the Furnace Seraph
							i(202544),	-- Sabatons of the Furnace Seraph
							i(202539),	-- Sash of the Furnace Seraph
							i(202537),	-- Shroud of the Furnace Seraph
						}),
						cl(ROGUE, {
							-- "Tier Slots"
							i(217206),	-- Lurking Specter's Brigandine
							i(217207),	-- Lurking Specter's Handgrips
							i(217210),	-- Lurking Specter's Shoulderblades
							i(217209),	-- Lurking Specter's Tights
							i(217208),	-- Lurking Specter's Visage
							-- "Off Slots"
							i(202493),	-- Lurking Specter's Armwraps
							i(202492),	-- Lurking Specter's Capelet
							i(202494),	-- Lurking Specter's Edgeband
							i(202499),	-- Lurking Specter's Tabi
						}),
						cl(SHAMAN, {
							-- "Tier Slots"
							i(217240),	-- Greatwolf Outcast's Companions
							i(217239),	-- Greatwolf Outcast's Fur-Lined Kilt
							i(217237),	-- Greatwolf Outcast's Grips
							i(217236),	-- Greatwolf Outcast's Harness
							i(217238),	-- Greatwolf Outcast's Jaws
							-- "Off Slots"
							i(207204),	-- Greatwolf Outcast's Chainweave
							i(207211),	-- Greatwolf Outcast's Footpads
							i(207206),	-- Greatwolf Outcast's Sigil Belt
							i(207205),	-- Greatwolf Outcast's Wristguards
						}),
						cl(WARLOCK, {
							-- "Tier Slots"
							i(217214),	-- Amice of the Sinister Savant
							i(217215),	-- Cursed Robes of the Sinister Savant
							i(217212),	-- Grimhorns of the Sinister Savant
							i(217211),	-- Grips of the Sinister Savant
							i(217213),	-- Leggings of the Sinister Savant
							-- "Off Slots"
							i(202535),	-- Sandals of the Sinister Savant
							i(202528),	-- Shawl of the Sinister Savant
							i(202530),	-- Skullstrap of the Sinister Savant
							i(202529),	-- Wristwraps of the Sinister Savant
						}),
						cl(WARRIOR, {
							-- "Tier Slots"
							i(217216),	-- Battlechest of the Onyx Crucible
							i(217217),	-- Handguards of the Onyx Crucible
							i(217219),	-- Legplates of the Onyx Crucible
							i(217220),	-- Pauldrons of the Onyx Crucible
							i(217218),	-- Thraexhelm of the Onyx Crucible
							-- "Off Slots"
							i(202440),	-- Insignia of the Onyx Crucible
							i(202445),	-- Ironstriders of the Onyx Crucible
							i(202438),	-- Manteau of the Onyx Crucible
							i(202439),	-- Warbands of the Onyx Crucible
						}),
					}),
				}),
			})),
			-- #else
			-- Hide in main list to reduce duplication (it's already sourced elsewhere)
			header(HEADERS.Achievement, SEASON_DRACONIC_PVE, bubbleDownSelf({ ["timeline"] = { ADDED_10_2_6_SEASON_FOUR } }, {
				-- There are new IDs only for "Tier Slots" in season 4 - main source in raid from tokens
				-- "Off Slots" use old IDs of original items - main source in Catalyst of previous tiers/raids (new "Off Slot" IDs are NYI)
				d(DIFFICULTY.RAID.LFR, bubbleDownSelf({ ["timeline"] = { ADDED_10_2_6_SEASON_FOUR, REMOVED_TWW_LAUNCH } }, {
					["description"] = "",
					["g"] = bubbleDown({ ["modID"] = 4 }, {
						cl(DEATHKNIGHT, {
							["sym"] = {{"select","modItemID",
								-- "Tier Slots"
								modItemId(217221,4),	-- Casket of the Risen Nightmare
								modItemId(217224,4),	-- Greaves of the Risen Nightmare
								modItemId(217223,4),	-- Piercing Gaze of the Risen Nightmare
								modItemId(217225,4),	-- Skewers of the Risen Nightmare
								modItemId(217222,4),	-- Thorns of the Risen Nightmare
								-- "Off Slots"
								modItemId(207202,4),	-- Graveboots of the Risen Nightmare
								modItemId(207197,4),	-- Seal of the Risen Nightmare
								modItemId(207195,4),	-- Shroud of the Risen Nightmare
								modItemId(207196,4),	-- Vambraces of the Risen Nightmare
							}},
						}),
						cl(DEMONHUNTER, {
							["sym"] = {{"select","modItemID",
								-- "Tier Slots"
								modItemId(217226,4),	-- Screaming Torchfiend's Binding
								modItemId(217229,4),	-- Screaming Torchfiend's Blazewraps
								modItemId(217228,4),	-- Screaming Torchfiend's Burning Scowl
								modItemId(217227,4),	-- Screaming Torchfiend's Grasp
								modItemId(217230,4),	-- Screaming Torchfiend's Horned Memento
								-- "Off Slots"
								modItemId(207259,4),	-- Screaming Torchfiend's Armlets
								modItemId(207260,4),	-- Screaming Torchfiend's Clasp
								modItemId(207265,4),	-- Screaming Torchfiend's Clutches
								modItemId(207258,4),	-- Screaming Torchfiend's Shawl
							}},
						}),
						cl(DRUID, {
							["sym"] = {{"select","modItemID",
								-- "Tier Slots"
								modItemId(217193,4),	-- Bough of the Autumn Blaze
								modItemId(217191,4),	-- Chestroots of the Autumn Blaze
								modItemId(217192,4),	-- Handguards of the Autumn Blaze
								modItemId(217195,4),	-- Mantle of the Autumn Blaze
								modItemId(217194,4),	-- Pants of the Autumn Blaze
								-- "Off Slots"
								modItemId(202511,4),	-- Bands of the Autumn Blaze
								modItemId(202510,4),	-- Foliage of the Autumn Blaze
								modItemId(202512,4),	-- Garland of the Autumn Blaze
								modItemId(202517,4),	-- Hooves of the Autumn Blaze
							}},
						}),
						cl(EVOKER, {
							["sym"] = {{"select","modItemID",
								-- "Tier Slots"
								modItemId(217178,4),	-- Crown of the Awakened
								modItemId(217177,4),	-- Gauntlets of the Awakened
								modItemId(217176,4),	-- Hauberk of the Awakened
								modItemId(217179,4),	-- Legguards of the Awakened
								modItemId(217180,4),	-- Talons of the Awakened
								-- "Off Slots"
								modItemId(200385,4,451),	-- Bracers of the Awakened
								modItemId(200384,4,451),	-- Chain of the Awakened
								modItemId(200386,4,451),	-- Shroud of the Awakened
								modItemId(200379,4,451),	-- Treads of the Awakened
							}},
						}),
						cl(HUNTER, {
							["sym"] = {{"select","modItemID",
								-- "Tier Slots"
								modItemId(217181,4),	-- Stormwing Harrier's Cuirass
								modItemId(217184,4),	-- Stormwing Harrier's Greaves
								modItemId(217182,4),	-- Stormwing Harrier's Handguards
								modItemId(217185,4),	-- Stormwing Harrier's Pinions
								modItemId(217183,4),	-- Stormwing Harrier's Skullmask
								-- "Off Slots"
								modItemId(200393,4,451),	-- Stormwing Harrier's Belt
								modItemId(200395,4,451),	-- Stormwing Harrier's Plumage
								modItemId(200388,4,451),	-- Stormwing Harrier's Sabatons
								modItemId(200394,4,451),	-- Stormwing Harrier's Wristguards
							}},
						}),
						cl(MAGE, {
							["sym"] = {{"select","modItemID",
								-- "Tier Slots"
								modItemId(217232,4),	-- Wayward Chronomancer's Chronocap
								modItemId(217231,4),	-- Wayward Chronomancer's Gloves
								modItemId(217234,4),	-- Wayward Chronomancer's Metronomes
								modItemId(217233,4),	-- Wayward Chronomancer's Pantaloons
								modItemId(217235,4),	-- Wayward Chronomancer's Patchwork
								-- "Off Slots"
								modItemId(207286,4),	-- Wayward Chronomancer's Cuffs
								modItemId(207285,4),	-- Wayward Chronomancer's Stole
								modItemId(207292,4),	-- Wayward Chronomancer's Strapped Boots
								modItemId(207287,4),	-- Wayward Chronomancer's Synchronous Belt
							}},
						}),
						cl(MONK, {
							["sym"] = {{"select","modItemID",
								-- "Tier Slots"
								modItemId(217186,4),	-- Chestwrap of the Waking Fist
								modItemId(217188,4),	-- Gaze of the Waking Fist
								modItemId(217189,4),	-- Legguards of the Waking Fist
								modItemId(217190,4),	-- Mantle of the Waking Fist
								modItemId(217187,4),	-- Palms of the Waking Fist
								-- "Off Slots"
								modItemId(200367,4,451),	-- Cuffs of the Waking Fist
								modItemId(200368,4,451),	-- Drape of the Waking Fist
								modItemId(200361,4,451),	-- Gaiters of the Waking Fist
								modItemId(200366,4,451),	-- Girdle of the Waking Fist
							}},
						}),
						cl(PALADIN, {
							["sym"] = {{"select","modItemID",
								-- "Tier Slots"
								modItemId(217196,4),	-- Heartfire Sentinel's Brigandine
								modItemId(217199,4),	-- Heartfire Sentinel's Faulds
								modItemId(217198,4),	-- Heartfire Sentinel's Forgehelm
								modItemId(217197,4),	-- Heartfire Sentinel's Protectors
								modItemId(217200,4),	-- Heartfire Sentinel's Steelwings
								-- "Off Slots"
								modItemId(202448,4),	-- Heartfire Sentinel's Blessed Bindings
								modItemId(202454,4),	-- Heartfire Sentinel's Greatboots
								modItemId(202447,4),	-- Heartfire Sentinel's Pelerine
								modItemId(202449,4),	-- Heartfire Sentinel's Waistguard
							}},
						}),
						cl(PRIEST, {
							["sym"] = {{"select","modItemID",
								-- "Tier Slots"
								modItemId(217203,4),	-- Breeches of the Furnace Seraph
								modItemId(217205,4),	-- Command of the Furnace Seraph
								modItemId(217204,4),	-- Devotion of the Furnace Seraph
								modItemId(217201,4),	-- Grasp of the Furnace Seraph
								modItemId(217202,4),	-- Mask of the Furnace Seraph
								-- "Off Slots"
								modItemId(202538,4),	-- Cuffs of the Furnace Seraph
								modItemId(202544,4),	-- Sabatons of the Furnace Seraph
								modItemId(202539,4),	-- Sash of the Furnace Seraph
								modItemId(202537,4),	-- Shroud of the Furnace Seraph
							}},
						}),
						cl(ROGUE, {
							["sym"] = {{"select","modItemID",
								-- "Tier Slots"
								modItemId(217206,4),	-- Lurking Specter's Brigandine
								modItemId(217207,4),	-- Lurking Specter's Handgrips
								modItemId(217210,4),	-- Lurking Specter's Shoulderblades
								modItemId(217209,4),	-- Lurking Specter's Tights
								modItemId(217208,4),	-- Lurking Specter's Visage
								-- "Off Slots"
								modItemId(202493,4),	-- Lurking Specter's Armwraps
								modItemId(202492,4),	-- Lurking Specter's Capelet
								modItemId(202494,4),	-- Lurking Specter's Edgeband
								modItemId(202499,4),	-- Lurking Specter's Tabi
							}},
						}),
						cl(SHAMAN, {
							["sym"] = {{"select","modItemID",
								-- "Tier Slots"
								modItemId(217240,4),	-- Greatwolf Outcast's Companions
								modItemId(217239,4),	-- Greatwolf Outcast's Fur-Lined Kilt
								modItemId(217237,4),	-- Greatwolf Outcast's Grips
								modItemId(217236,4),	-- Greatwolf Outcast's Harness
								modItemId(217238,4),	-- Greatwolf Outcast's Jaws
								-- "Off Slots"
								modItemId(207204,4),	-- Greatwolf Outcast's Chainweave
								modItemId(207211,4),	-- Greatwolf Outcast's Footpads
								modItemId(207206,4),	-- Greatwolf Outcast's Sigil Belt
								modItemId(207205,4),	-- Greatwolf Outcast's Wristguards
							}},
						}),
						cl(WARLOCK, {
							["sym"] = {{"select","modItemID",
								-- "Tier Slots"
								modItemId(217214,4),	-- Amice of the Sinister Savant
								modItemId(217215,4),	-- Cursed Robes of the Sinister Savant
								modItemId(217212,4),	-- Grimhorns of the Sinister Savant
								modItemId(217211,4),	-- Grips of the Sinister Savant
								modItemId(217213,4),	-- Leggings of the Sinister Savant
								-- "Off Slots"
								modItemId(202535,4),	-- Sandals of the Sinister Savant
								modItemId(202528,4),	-- Shawl of the Sinister Savant
								modItemId(202530,4),	-- Skullstrap of the Sinister Savant
								modItemId(202529,4),	-- Wristwraps of the Sinister Savant
							}},
						}),
						cl(WARRIOR, {
							["sym"] = {{"select","modItemID",
								-- "Tier Slots"
								modItemId(217216,4),	-- Battlechest of the Onyx Crucible
								modItemId(217217,4),	-- Handguards of the Onyx Crucible
								modItemId(217219,4),	-- Legplates of the Onyx Crucible
								modItemId(217220,4),	-- Pauldrons of the Onyx Crucible
								modItemId(217218,4),	-- Thraexhelm of the Onyx Crucible
								-- "Off Slots"
								modItemId(202440,4),	-- Insignia of the Onyx Crucible
								modItemId(202445,4),	-- Ironstriders of the Onyx Crucible
								modItemId(202438,4),	-- Manteau of the Onyx Crucible
								modItemId(202439,4),	-- Warbands of the Onyx Crucible
							}},
						}),
					}),
				})),
				-- #if BEFORE 11.0.2
				d(DIFFICULTY.RAID.NORMAL, {
					["description"] = "",
					["g"] = bubbleDown({ ["modID"] = 3 }, {
						cl(DEATHKNIGHT, {
							["sym"] = {{"select","modItemID",
								-- "Tier Slots"
								modItemId(217221,3),	-- Casket of the Risen Nightmare
								modItemId(217224,3),	-- Greaves of the Risen Nightmare
								modItemId(217223,3),	-- Piercing Gaze of the Risen Nightmare
								modItemId(217225,3),	-- Skewers of the Risen Nightmare
								modItemId(217222,3),	-- Thorns of the Risen Nightmare
								-- "Off Slots"
								modItemId(207202,3),	-- Graveboots of the Risen Nightmare
								modItemId(207197,3),	-- Seal of the Risen Nightmare
								modItemId(207195,3),	-- Shroud of the Risen Nightmare
								modItemId(207196,3),	-- Vambraces of the Risen Nightmare
							}},
						}),
						cl(DEMONHUNTER, {
							["sym"] = {{"select","modItemID",
								-- "Tier Slots"
								modItemId(217226,3),	-- Screaming Torchfiend's Binding
								modItemId(217229,3),	-- Screaming Torchfiend's Blazewraps
								modItemId(217228,3),	-- Screaming Torchfiend's Burning Scowl
								modItemId(217227,3),	-- Screaming Torchfiend's Grasp
								modItemId(217230,3),	-- Screaming Torchfiend's Horned Memento
								-- "Off Slots"
								modItemId(207259,3),	-- Screaming Torchfiend's Armlets
								modItemId(207260,3),	-- Screaming Torchfiend's Clasp
								modItemId(207265,3),	-- Screaming Torchfiend's Clutches
								modItemId(207258,3),	-- Screaming Torchfiend's Shawl
							}},
						}),
						cl(DRUID, {
							["sym"] = {{"select","modItemID",
								-- "Tier Slots"
								modItemId(217193,3),	-- Bough of the Autumn Blaze
								modItemId(217191,3),	-- Chestroots of the Autumn Blaze
								modItemId(217192,3),	-- Handguards of the Autumn Blaze
								modItemId(217195,3),	-- Mantle of the Autumn Blaze
								modItemId(217194,3),	-- Pants of the Autumn Blaze
								-- "Off Slots"
								modItemId(202511,3),	-- Bands of the Autumn Blaze
								modItemId(202510,3),	-- Foliage of the Autumn Blaze
								modItemId(202512,3),	-- Garland of the Autumn Blaze
								modItemId(202517,3),	-- Hooves of the Autumn Blaze
							}},
						}),
						cl(EVOKER, {
							["sym"] = {{"select","modItemID",
								-- "Tier Slots"
								modItemId(217178,3),	-- Crown of the Awakened
								modItemId(217177,3),	-- Gauntlets of the Awakened
								modItemId(217176,3),	-- Hauberk of the Awakened
								modItemId(217179,3),	-- Legguards of the Awakened
								modItemId(217180,3),	-- Talons of the Awakened
								-- "Off Slots"
								modItemId(200385,3),	-- Bracers of the Awakened
								modItemId(200384,3),	-- Chain of the Awakened
								modItemId(200386,3),	-- Shroud of the Awakened
								modItemId(200379,3),	-- Treads of the Awakened
							}},
						}),
						cl(HUNTER, {
							["sym"] = {{"select","modItemID",
								-- "Tier Slots"
								modItemId(217181,3),	-- Stormwing Harrier's Cuirass
								modItemId(217184,3),	-- Stormwing Harrier's Greaves
								modItemId(217182,3),	-- Stormwing Harrier's Handguards
								modItemId(217185,3),	-- Stormwing Harrier's Pinions
								modItemId(217183,3),	-- Stormwing Harrier's Skullmask
								-- "Off Slots"
								modItemId(200393,3),	-- Stormwing Harrier's Belt
								modItemId(200395,3),	-- Stormwing Harrier's Plumage
								modItemId(200388,3),	-- Stormwing Harrier's Sabatons
								modItemId(200394,3),	-- Stormwing Harrier's Wristguards
							}},
						}),
						cl(MAGE, {
							["sym"] = {{"select","modItemID",
								-- "Tier Slots"
								modItemId(217232,3),	-- Wayward Chronomancer's Chronocap
								modItemId(217231,3),	-- Wayward Chronomancer's Gloves
								modItemId(217234,3),	-- Wayward Chronomancer's Metronomes
								modItemId(217233,3),	-- Wayward Chronomancer's Pantaloons
								modItemId(217235,3),	-- Wayward Chronomancer's Patchwork
								-- "Off Slots"
								modItemId(207286,3),	-- Wayward Chronomancer's Cuffs
								modItemId(207285,3),	-- Wayward Chronomancer's Stole
								modItemId(207292,3),	-- Wayward Chronomancer's Strapped Boots
								modItemId(207287,3),	-- Wayward Chronomancer's Synchronous Belt
							}},
						}),
						cl(MONK, {
							["sym"] = {{"select","modItemID",
								-- "Tier Slots"
								modItemId(217186,3),	-- Chestwrap of the Waking Fist
								modItemId(217188,3),	-- Gaze of the Waking Fist
								modItemId(217189,3),	-- Legguards of the Waking Fist
								modItemId(217190,3),	-- Mantle of the Waking Fist
								modItemId(217187,3),	-- Palms of the Waking Fist
								-- "Off Slots"
								modItemId(200367,3),	-- Cuffs of the Waking Fist
								modItemId(200368,3),	-- Drape of the Waking Fist
								modItemId(200361,3),	-- Gaiters of the Waking Fist
								modItemId(200366,3),	-- Girdle of the Waking Fist
							}},
						}),
						cl(PALADIN, {
							["sym"] = {{"select","modItemID",
								-- "Tier Slots"
								modItemId(217196,3),	-- Heartfire Sentinel's Brigandine
								modItemId(217199,3),	-- Heartfire Sentinel's Faulds
								modItemId(217198,3),	-- Heartfire Sentinel's Forgehelm
								modItemId(217197,3),	-- Heartfire Sentinel's Protectors
								modItemId(217200,3),	-- Heartfire Sentinel's Steelwings
								-- "Off Slots"
								modItemId(202448,3),	-- Heartfire Sentinel's Blessed Bindings
								modItemId(202454,3),	-- Heartfire Sentinel's Greatboots
								modItemId(202447,3),	-- Heartfire Sentinel's Pelerine
								modItemId(202449,3),	-- Heartfire Sentinel's Waistguard
							}},
						}),
						cl(PRIEST, {
							["sym"] = {{"select","modItemID",
								-- "Tier Slots"
								modItemId(217203,3),	-- Breeches of the Furnace Seraph
								modItemId(217205,3),	-- Command of the Furnace Seraph
								modItemId(217204,3),	-- Devotion of the Furnace Seraph
								modItemId(217201,3),	-- Grasp of the Furnace Seraph
								modItemId(217202,3),	-- Mask of the Furnace Seraph
								-- "Off Slots"
								modItemId(202538,3),	-- Cuffs of the Furnace Seraph
								modItemId(202544,3),	-- Sabatons of the Furnace Seraph
								modItemId(202539,3),	-- Sash of the Furnace Seraph
								modItemId(202537,3),	-- Shroud of the Furnace Seraph
							}},
						}),
						cl(ROGUE, {
							["sym"] = {{"select","modItemID",
								-- "Tier Slots"
								modItemId(217206,3),	-- Lurking Specter's Brigandine
								modItemId(217207,3),	-- Lurking Specter's Handgrips
								modItemId(217210,3),	-- Lurking Specter's Shoulderblades
								modItemId(217209,3),	-- Lurking Specter's Tights
								modItemId(217208,3),	-- Lurking Specter's Visage
								-- "Off Slots"
								modItemId(202493,3),	-- Lurking Specter's Armwraps
								modItemId(202492,3),	-- Lurking Specter's Capelet
								modItemId(202494,3),	-- Lurking Specter's Edgeband
								modItemId(202499,3),	-- Lurking Specter's Tabi
							}},
						}),
						cl(SHAMAN, {
							["sym"] = {{"select","modItemID",
								-- "Tier Slots"
								modItemId(217240,3),	-- Greatwolf Outcast's Companions
								modItemId(217239,3),	-- Greatwolf Outcast's Fur-Lined Kilt
								modItemId(217237,3),	-- Greatwolf Outcast's Grips
								modItemId(217236,3),	-- Greatwolf Outcast's Harness
								modItemId(217238,3),	-- Greatwolf Outcast's Jaws
								-- "Off Slots"
								modItemId(207204,3),	-- Greatwolf Outcast's Chainweave
								modItemId(207211,3),	-- Greatwolf Outcast's Footpads
								modItemId(207206,3),	-- Greatwolf Outcast's Sigil Belt
								modItemId(207205,3),	-- Greatwolf Outcast's Wristguards
							}},
						}),
						cl(WARLOCK, {
							["sym"] = {{"select","modItemID",
								-- "Tier Slots"
								modItemId(217214,3),	-- Amice of the Sinister Savant
								modItemId(217215,3),	-- Cursed Robes of the Sinister Savant
								modItemId(217212,3),	-- Grimhorns of the Sinister Savant
								modItemId(217211,3),	-- Grips of the Sinister Savant
								modItemId(217213,3),	-- Leggings of the Sinister Savant
								-- "Off Slots"
								modItemId(202535,3),	-- Sandals of the Sinister Savant
								modItemId(202528,3),	-- Shawl of the Sinister Savant
								modItemId(202530,3),	-- Skullstrap of the Sinister Savant
								modItemId(202529,3),	-- Wristwraps of the Sinister Savant
							}},
						}),
						cl(WARRIOR, {
							["sym"] = {{"select","modItemID",
								-- "Tier Slots"
								modItemId(217216,3),	-- Battlechest of the Onyx Crucible
								modItemId(217217,3),	-- Handguards of the Onyx Crucible
								modItemId(217219,3),	-- Legplates of the Onyx Crucible
								modItemId(217220,3),	-- Pauldrons of the Onyx Crucible
								modItemId(217218,3),	-- Thraexhelm of the Onyx Crucible
								-- "Off Slots"
								modItemId(202440,3),	-- Insignia of the Onyx Crucible
								modItemId(202445,3),	-- Ironstriders of the Onyx Crucible
								modItemId(202438,3),	-- Manteau of the Onyx Crucible
								modItemId(202439,3),	-- Warbands of the Onyx Crucible
							}},
						}),
					}),
				}),
				-- #else
				-- Blizzard forgot to remove season 4 from dungeons, so all of these are possible to gain from Mythic difficulty
				d(DIFFICULTY.RAID.NORMAL, {
					["description"] = "These items are still obtainable by converting Dragonflight Mythic Dungeon items in the Catalyst",
					["g"] = bubbleDown({ ["modID"] = 3 }, {
						cl(DEATHKNIGHT, {
							-- "Tier Slots"
							i(217221),	-- Casket of the Risen Nightmare
							i(217224),	-- Greaves of the Risen Nightmare
							i(217223),	-- Piercing Gaze of the Risen Nightmare
							i(217225),	-- Skewers of the Risen Nightmare
							i(217222),	-- Thorns of the Risen Nightmare
						}),
						cl(DEMONHUNTER, {
							-- "Tier Slots"
							i(217226),	-- Screaming Torchfiend's Binding
							i(217229),	-- Screaming Torchfiend's Blazewraps
							i(217228),	-- Screaming Torchfiend's Burning Scowl
							i(217227),	-- Screaming Torchfiend's Grasp
							i(217230),	-- Screaming Torchfiend's Horned Memento
						}),
						cl(DRUID, {
							-- "Tier Slots"
							i(217193),	-- Bough of the Autumn Blaze
							i(217191),	-- Chestroots of the Autumn Blaze
							i(217192),	-- Handguards of the Autumn Blaze
							i(217195),	-- Mantle of the Autumn Blaze
							i(217194),	-- Pants of the Autumn Blaze
						}),
						cl(EVOKER, {
							-- "Tier Slots"
							i(217178),	-- Crown of the Awakened
							i(217177),	-- Gauntlets of the Awakened
							i(217176),	-- Hauberk of the Awakened
							i(217179),	-- Legguards of the Awakened
							i(217180),	-- Talons of the Awakened
						}),
						cl(HUNTER, {
							-- "Tier Slots"
							i(217181),	-- Stormwing Harrier's Cuirass
							i(217184),	-- Stormwing Harrier's Greaves
							i(217182),	-- Stormwing Harrier's Handguards
							i(217185),	-- Stormwing Harrier's Pinions
							i(217183),	-- Stormwing Harrier's Skullmask
						}),
						cl(MAGE, {
							-- "Tier Slots"
							i(217232),	-- Wayward Chronomancer's Chronocap
							i(217231),	-- Wayward Chronomancer's Gloves
							i(217234),	-- Wayward Chronomancer's Metronomes
							i(217233),	-- Wayward Chronomancer's Pantaloons
							i(217235),	-- Wayward Chronomancer's Patchwork
						}),
						cl(MONK, {
							-- "Tier Slots"
							i(217186),	-- Chestwrap of the Waking Fist
							i(217188),	-- Gaze of the Waking Fist
							i(217189),	-- Legguards of the Waking Fist
							i(217190),	-- Mantle of the Waking Fist
							i(217187),	-- Palms of the Waking Fist
						}),
						cl(PALADIN, {
							-- "Tier Slots"
							i(217196),	-- Heartfire Sentinel's Brigandine
							i(217199),	-- Heartfire Sentinel's Faulds
							i(217198),	-- Heartfire Sentinel's Forgehelm
							i(217197),	-- Heartfire Sentinel's Protectors
							i(217200),	-- Heartfire Sentinel's Steelwings
						}),
						cl(PRIEST, {
							-- "Tier Slots"
							i(217203),	-- Breeches of the Furnace Seraph
							i(217205),	-- Command of the Furnace Seraph
							i(217204),	-- Devotion of the Furnace Seraph
							i(217201),	-- Grasp of the Furnace Seraph
							i(217202),	-- Mask of the Furnace Seraph
						}),
						cl(ROGUE, {
							-- "Tier Slots"
							i(217206),	-- Lurking Specter's Brigandine
							i(217207),	-- Lurking Specter's Handgrips
							i(217210),	-- Lurking Specter's Shoulderblades
							i(217209),	-- Lurking Specter's Tights
							i(217208),	-- Lurking Specter's Visage
						}),
						cl(SHAMAN, {
							-- "Tier Slots"
							i(217240),	-- Greatwolf Outcast's Companions
							i(217239),	-- Greatwolf Outcast's Fur-Lined Kilt
							i(217237),	-- Greatwolf Outcast's Grips
							i(217236),	-- Greatwolf Outcast's Harness
							i(217238),	-- Greatwolf Outcast's Jaws
						}),
						cl(WARLOCK, {
							-- "Tier Slots"
							i(217214),	-- Amice of the Sinister Savant
							i(217215),	-- Cursed Robes of the Sinister Savant
							i(217212),	-- Grimhorns of the Sinister Savant
							i(217211),	-- Grips of the Sinister Savant
							i(217213),	-- Leggings of the Sinister Savant
						}),
						cl(WARRIOR, {
							-- "Tier Slots"
							i(217216),	-- Battlechest of the Onyx Crucible
							i(217217),	-- Handguards of the Onyx Crucible
							i(217219),	-- Legplates of the Onyx Crucible
							i(217220),	-- Pauldrons of the Onyx Crucible
							i(217218),	-- Thraexhelm of the Onyx Crucible
						}),
					}),
				}),
				-- #endif
				d(DIFFICULTY.RAID.HEROIC, bubbleDownSelf({ ["timeline"] = { ADDED_10_2_6_SEASON_FOUR, REMOVED_TWW_LAUNCH } }, {
					["description"] = "",
					["g"] = bubbleDown({ ["modID"] = 5 }, {
						cl(DEATHKNIGHT, {
							["sym"] = {{"select","modItemID",
								-- "Tier Slots"
								modItemId(217221,5),	-- Casket of the Risen Nightmare
								modItemId(217224,5),	-- Greaves of the Risen Nightmare
								modItemId(217223,5),	-- Piercing Gaze of the Risen Nightmare
								modItemId(217225,5),	-- Skewers of the Risen Nightmare
								modItemId(217222,5),	-- Thorns of the Risen Nightmare
								-- "Off Slots"
								modItemId(207202,5),	-- Graveboots of the Risen Nightmare
								modItemId(207197,5),	-- Seal of the Risen Nightmare
								modItemId(207195,5),	-- Shroud of the Risen Nightmare
								modItemId(207196,5),	-- Vambraces of the Risen Nightmare
							}},
						}),
						cl(DEMONHUNTER, {
							["sym"] = {{"select","modItemID",
								-- "Tier Slots"
								modItemId(217226,5),	-- Screaming Torchfiend's Binding
								modItemId(217229,5),	-- Screaming Torchfiend's Blazewraps
								modItemId(217228,5),	-- Screaming Torchfiend's Burning Scowl
								modItemId(217227,5),	-- Screaming Torchfiend's Grasp
								modItemId(217230,5),	-- Screaming Torchfiend's Horned Memento
								-- "Off Slots"
								modItemId(207259,5),	-- Screaming Torchfiend's Armlets
								modItemId(207260,5),	-- Screaming Torchfiend's Clasp
								modItemId(207265,5),	-- Screaming Torchfiend's Clutches
								modItemId(207258,5),	-- Screaming Torchfiend's Shawl
							}},
						}),
						cl(DRUID, {
							["sym"] = {{"select","modItemID",
								-- "Tier Slots"
								modItemId(217193,5),	-- Bough of the Autumn Blaze
								modItemId(217191,5),	-- Chestroots of the Autumn Blaze
								modItemId(217192,5),	-- Handguards of the Autumn Blaze
								modItemId(217195,5),	-- Mantle of the Autumn Blaze
								modItemId(217194,5),	-- Pants of the Autumn Blaze
								-- "Off Slots"
								modItemId(202511,5),	-- Bands of the Autumn Blaze
								modItemId(202510,5),	-- Foliage of the Autumn Blaze
								modItemId(202512,5),	-- Garland of the Autumn Blaze
								modItemId(202517,5),	-- Hooves of the Autumn Blaze
							}},
						}),
						cl(EVOKER, {
							["sym"] = {{"select","modItemID",
								-- "Tier Slots"
								modItemId(217178,5),	-- Crown of the Awakened
								modItemId(217177,5),	-- Gauntlets of the Awakened
								modItemId(217176,5),	-- Hauberk of the Awakened
								modItemId(217179,5),	-- Legguards of the Awakened
								modItemId(217180,5),	-- Talons of the Awakened
								-- "Off Slots"
								modItemId(200385,5,1),	-- Bracers of the Awakened
								modItemId(200384,5,1),	-- Chain of the Awakened
								modItemId(200386,5,1),	-- Shroud of the Awakened
								modItemId(200379,5,1),	-- Treads of the Awakened
							}},
						}),
						cl(HUNTER, {
							["sym"] = {{"select","modItemID",
								-- "Tier Slots"
								modItemId(217181,5),	-- Stormwing Harrier's Cuirass
								modItemId(217184,5),	-- Stormwing Harrier's Greaves
								modItemId(217182,5),	-- Stormwing Harrier's Handguards
								modItemId(217185,5),	-- Stormwing Harrier's Pinions
								modItemId(217183,5),	-- Stormwing Harrier's Skullmask
								-- "Off Slots"
								modItemId(200393,5,1),	-- Stormwing Harrier's Belt
								modItemId(200395,5,1),	-- Stormwing Harrier's Plumage
								modItemId(200388,5,1),	-- Stormwing Harrier's Sabatons
								modItemId(200394,5,1),	-- Stormwing Harrier's Wristguards
							}},
						}),
						cl(MAGE, {
							["sym"] = {{"select","modItemID",
								-- "Tier Slots"
								modItemId(217232,5),	-- Wayward Chronomancer's Chronocap
								modItemId(217231,5),	-- Wayward Chronomancer's Gloves
								modItemId(217234,5),	-- Wayward Chronomancer's Metronomes
								modItemId(217233,5),	-- Wayward Chronomancer's Pantaloons
								modItemId(217235,5),	-- Wayward Chronomancer's Patchwork
								-- "Off Slots"
								modItemId(207286,5),	-- Wayward Chronomancer's Cuffs
								modItemId(207285,5),	-- Wayward Chronomancer's Stole
								modItemId(207292,5),	-- Wayward Chronomancer's Strapped Boots
								modItemId(207287,5),	-- Wayward Chronomancer's Synchronous Belt
							}},
						}),
						cl(MONK, {
							["sym"] = {{"select","modItemID",
								-- "Tier Slots"
								modItemId(217186,5),	-- Chestwrap of the Waking Fist
								modItemId(217188,5),	-- Gaze of the Waking Fist
								modItemId(217189,5),	-- Legguards of the Waking Fist
								modItemId(217190,5),	-- Mantle of the Waking Fist
								modItemId(217187,5),	-- Palms of the Waking Fist
								-- "Off Slots"
								modItemId(200367,5,1),	-- Cuffs of the Waking Fist
								modItemId(200368,5,1),	-- Drape of the Waking Fist
								modItemId(200361,5,1),	-- Gaiters of the Waking Fist
								modItemId(200366,5,1),	-- Girdle of the Waking Fist
							}},
						}),
						cl(PALADIN, {
							["sym"] = {{"select","modItemID",
								-- "Tier Slots"
								modItemId(217196,5),	-- Heartfire Sentinel's Brigandine
								modItemId(217199,5),	-- Heartfire Sentinel's Faulds
								modItemId(217198,5),	-- Heartfire Sentinel's Forgehelm
								modItemId(217197,5),	-- Heartfire Sentinel's Protectors
								modItemId(217200,5),	-- Heartfire Sentinel's Steelwings
								-- "Off Slots"
								modItemId(202448,5),	-- Heartfire Sentinel's Blessed Bindings
								modItemId(202454,5),	-- Heartfire Sentinel's Greatboots
								modItemId(202447,5),	-- Heartfire Sentinel's Pelerine
								modItemId(202449,5),	-- Heartfire Sentinel's Waistguard
							}},
						}),
						cl(PRIEST, {
							["sym"] = {{"select","modItemID",
								-- "Tier Slots"
								modItemId(217203,5),	-- Breeches of the Furnace Seraph
								modItemId(217205,5),	-- Command of the Furnace Seraph
								modItemId(217204,5),	-- Devotion of the Furnace Seraph
								modItemId(217201,5),	-- Grasp of the Furnace Seraph
								modItemId(217202,5),	-- Mask of the Furnace Seraph
								-- "Off Slots"
								modItemId(202538,5),	-- Cuffs of the Furnace Seraph
								modItemId(202544,5),	-- Sabatons of the Furnace Seraph
								modItemId(202539,5),	-- Sash of the Furnace Seraph
								modItemId(202537,5),	-- Shroud of the Furnace Seraph
							}},
						}),
						cl(ROGUE, {
							["sym"] = {{"select","modItemID",
								-- "Tier Slots"
								modItemId(217206,5),	-- Lurking Specter's Brigandine
								modItemId(217207,5),	-- Lurking Specter's Handgrips
								modItemId(217210,5),	-- Lurking Specter's Shoulderblades
								modItemId(217209,5),	-- Lurking Specter's Tights
								modItemId(217208,5),	-- Lurking Specter's Visage
								-- "Off Slots"
								modItemId(202493,5),	-- Lurking Specter's Armwraps
								modItemId(202492,5),	-- Lurking Specter's Capelet
								modItemId(202494,5),	-- Lurking Specter's Edgeband
								modItemId(202499,5),	-- Lurking Specter's Tabi
							}},
						}),
						cl(SHAMAN, {
							["sym"] = {{"select","modItemID",
								-- "Tier Slots"
								modItemId(217240,5),	-- Greatwolf Outcast's Companions
								modItemId(217239,5),	-- Greatwolf Outcast's Fur-Lined Kilt
								modItemId(217237,5),	-- Greatwolf Outcast's Grips
								modItemId(217236,5),	-- Greatwolf Outcast's Harness
								modItemId(217238,5),	-- Greatwolf Outcast's Jaws
								-- "Off Slots"
								modItemId(207204,5),	-- Greatwolf Outcast's Chainweave
								modItemId(207211,5),	-- Greatwolf Outcast's Footpads
								modItemId(207206,5),	-- Greatwolf Outcast's Sigil Belt
								modItemId(207205,5),	-- Greatwolf Outcast's Wristguards
							}},
						}),
						cl(WARLOCK, {
							["sym"] = {{"select","modItemID",
								-- "Tier Slots"
								modItemId(217214,5),	-- Amice of the Sinister Savant
								modItemId(217215,5),	-- Cursed Robes of the Sinister Savant
								modItemId(217212,5),	-- Grimhorns of the Sinister Savant
								modItemId(217211,5),	-- Grips of the Sinister Savant
								modItemId(217213,5),	-- Leggings of the Sinister Savant
								-- "Off Slots"
								modItemId(202535,5),	-- Sandals of the Sinister Savant
								modItemId(202528,5),	-- Shawl of the Sinister Savant
								modItemId(202530,5),	-- Skullstrap of the Sinister Savant
								modItemId(202529,5),	-- Wristwraps of the Sinister Savant
							}},
						}),
						cl(WARRIOR, {
							["sym"] = {{"select","modItemID",
								-- "Tier Slots"
								modItemId(217216,5),	-- Battlechest of the Onyx Crucible
								modItemId(217217,5),	-- Handguards of the Onyx Crucible
								modItemId(217219,5),	-- Legplates of the Onyx Crucible
								modItemId(217220,5),	-- Pauldrons of the Onyx Crucible
								modItemId(217218,5),	-- Thraexhelm of the Onyx Crucible
								-- "Off Slots"
								modItemId(202440,5),	-- Insignia of the Onyx Crucible
								modItemId(202445,5),	-- Ironstriders of the Onyx Crucible
								modItemId(202438,5),	-- Manteau of the Onyx Crucible
								modItemId(202439,5),	-- Warbands of the Onyx Crucible
							}},
						}),
					}),
				})),
				d(DIFFICULTY.RAID.MYTHIC, bubbleDownSelf({ ["timeline"] = { ADDED_10_2_6_SEASON_FOUR, REMOVED_TWW_LAUNCH } }, {
					["description"] = "",
					["g"] = bubbleDown({ ["modID"] = 6 }, {
						cl(DEATHKNIGHT, {
							["sym"] = {{"select","modItemID",
								-- "Tier Slots"
								modItemId(217221,6),	-- Casket of the Risen Nightmare
								modItemId(217224,6),	-- Greaves of the Risen Nightmare
								modItemId(217223,6),	-- Piercing Gaze of the Risen Nightmare
								modItemId(217225,6),	-- Skewers of the Risen Nightmare
								modItemId(217222,6),	-- Thorns of the Risen Nightmare
								-- "Off Slots"
								modItemId(207202,6),	-- Graveboots of the Risen Nightmare
								modItemId(207197,6),	-- Seal of the Risen Nightmare
								modItemId(207195,6),	-- Shroud of the Risen Nightmare
								modItemId(207196,6),	-- Vambraces of the Risen Nightmare
							}},
						}),
						cl(DEMONHUNTER, {
							["sym"] = {{"select","modItemID",
								-- "Tier Slots"
								modItemId(217226,6),	-- Screaming Torchfiend's Binding
								modItemId(217229,6),	-- Screaming Torchfiend's Blazewraps
								modItemId(217228,6),	-- Screaming Torchfiend's Burning Scowl
								modItemId(217227,6),	-- Screaming Torchfiend's Grasp
								modItemId(217230,6),	-- Screaming Torchfiend's Horned Memento
								-- "Off Slots"
								modItemId(207259,6),	-- Screaming Torchfiend's Armlets
								modItemId(207260,6),	-- Screaming Torchfiend's Clasp
								modItemId(207265,6),	-- Screaming Torchfiend's Clutches
								modItemId(207258,6),	-- Screaming Torchfiend's Shawl
							}},
						}),
						cl(DRUID, {
							["sym"] = {{"select","modItemID",
								-- "Tier Slots"
								modItemId(217193,6),	-- Bough of the Autumn Blaze
								modItemId(217191,6),	-- Chestroots of the Autumn Blaze
								modItemId(217192,6),	-- Handguards of the Autumn Blaze
								modItemId(217195,6),	-- Mantle of the Autumn Blaze
								modItemId(217194,6),	-- Pants of the Autumn Blaze
								-- "Off Slots"
								modItemId(202511,6),	-- Bands of the Autumn Blaze
								modItemId(202510,6),	-- Foliage of the Autumn Blaze
								modItemId(202512,6),	-- Garland of the Autumn Blaze
								modItemId(202517,6),	-- Hooves of the Autumn Blaze
							}},
						}),
						cl(EVOKER, {
							["sym"] = {{"select","modItemID",
								-- "Tier Slots"
								modItemId(217178,6),	-- Crown of the Awakened
								modItemId(217177,6),	-- Gauntlets of the Awakened
								modItemId(217176,6),	-- Hauberk of the Awakened
								modItemId(217179,6),	-- Legguards of the Awakened
								modItemId(217180,6),	-- Talons of the Awakened
								-- "Off Slots"
								modItemId(200385,6,450),	-- Bracers of the Awakened
								modItemId(200384,6,450),	-- Chain of the Awakened
								modItemId(200386,6,450),	-- Shroud of the Awakened
								modItemId(200379,6,450),	-- Treads of the Awakened
							}},
						}),
						cl(HUNTER, {
							["sym"] = {{"select","modItemID",
								-- "Tier Slots"
								modItemId(217181,6),	-- Stormwing Harrier's Cuirass
								modItemId(217184,6),	-- Stormwing Harrier's Greaves
								modItemId(217182,6),	-- Stormwing Harrier's Handguards
								modItemId(217185,6),	-- Stormwing Harrier's Pinions
								modItemId(217183,6),	-- Stormwing Harrier's Skullmask
								-- "Off Slots"
								modItemId(200393,6,450),	-- Stormwing Harrier's Belt
								modItemId(200395,6,450),	-- Stormwing Harrier's Plumage
								modItemId(200388,6,450),	-- Stormwing Harrier's Sabatons
								modItemId(200394,6,450),	-- Stormwing Harrier's Wristguards
							}},
						}),
						cl(MAGE, {
							["sym"] = {{"select","modItemID",
								-- "Tier Slots"
								modItemId(217232,6),	-- Wayward Chronomancer's Chronocap
								modItemId(217231,6),	-- Wayward Chronomancer's Gloves
								modItemId(217234,6),	-- Wayward Chronomancer's Metronomes
								modItemId(217233,6),	-- Wayward Chronomancer's Pantaloons
								modItemId(217235,6),	-- Wayward Chronomancer's Patchwork
								-- "Off Slots"
								modItemId(207286,6),	-- Wayward Chronomancer's Cuffs
								modItemId(207285,6),	-- Wayward Chronomancer's Stole
								modItemId(207292,6),	-- Wayward Chronomancer's Strapped Boots
								modItemId(207287,6),	-- Wayward Chronomancer's Synchronous Belt
							}},
						}),
						cl(MONK, {
							["sym"] = {{"select","modItemID",
								-- "Tier Slots"
								modItemId(217186,6),	-- Chestwrap of the Waking Fist
								modItemId(217188,6),	-- Gaze of the Waking Fist
								modItemId(217189,6),	-- Legguards of the Waking Fist
								modItemId(217190,6),	-- Mantle of the Waking Fist
								modItemId(217187,6),	-- Palms of the Waking Fist
								-- "Off Slots"
								modItemId(200367,6,450),	-- Cuffs of the Waking Fist
								modItemId(200368,6,450),	-- Drape of the Waking Fist
								modItemId(200361,6,450),	-- Gaiters of the Waking Fist
								modItemId(200366,6,450),	-- Girdle of the Waking Fist
							}},
						}),
						cl(PALADIN, {
							["sym"] = {{"select","modItemID",
								-- "Tier Slots"
								modItemId(217196,6),	-- Heartfire Sentinel's Brigandine
								modItemId(217199,6),	-- Heartfire Sentinel's Faulds
								modItemId(217198,6),	-- Heartfire Sentinel's Forgehelm
								modItemId(217197,6),	-- Heartfire Sentinel's Protectors
								modItemId(217200,6),	-- Heartfire Sentinel's Steelwings
								-- "Off Slots"
								modItemId(202448,6),	-- Heartfire Sentinel's Blessed Bindings
								modItemId(202454,6),	-- Heartfire Sentinel's Greatboots
								modItemId(202447,6),	-- Heartfire Sentinel's Pelerine
								modItemId(202449,6),	-- Heartfire Sentinel's Waistguard
							}},
						}),
						cl(PRIEST, {
							["sym"] = {{"select","modItemID",
								-- "Tier Slots"
								modItemId(217203,6),	-- Breeches of the Furnace Seraph
								modItemId(217205,6),	-- Command of the Furnace Seraph
								modItemId(217204,6),	-- Devotion of the Furnace Seraph
								modItemId(217201,6),	-- Grasp of the Furnace Seraph
								modItemId(217202,6),	-- Mask of the Furnace Seraph
								-- "Off Slots"
								modItemId(202538,6),	-- Cuffs of the Furnace Seraph
								modItemId(202544,6),	-- Sabatons of the Furnace Seraph
								modItemId(202539,6),	-- Sash of the Furnace Seraph
								modItemId(202537,6),	-- Shroud of the Furnace Seraph
							}},
						}),
						cl(ROGUE, {
							["sym"] = {{"select","modItemID",
								-- "Tier Slots"
								modItemId(217206,6),	-- Lurking Specter's Brigandine
								modItemId(217207,6),	-- Lurking Specter's Handgrips
								modItemId(217210,6),	-- Lurking Specter's Shoulderblades
								modItemId(217209,6),	-- Lurking Specter's Tights
								modItemId(217208,6),	-- Lurking Specter's Visage
								-- "Off Slots"
								modItemId(202493,6),	-- Lurking Specter's Armwraps
								modItemId(202492,6),	-- Lurking Specter's Capelet
								modItemId(202494,6),	-- Lurking Specter's Edgeband
								modItemId(202499,6),	-- Lurking Specter's Tabi
							}},
						}),
						cl(SHAMAN, {
							["sym"] = {{"select","modItemID",
								-- "Tier Slots"
								modItemId(217240,6),	-- Greatwolf Outcast's Companions
								modItemId(217239,6),	-- Greatwolf Outcast's Fur-Lined Kilt
								modItemId(217237,6),	-- Greatwolf Outcast's Grips
								modItemId(217236,6),	-- Greatwolf Outcast's Harness
								modItemId(217238,6),	-- Greatwolf Outcast's Jaws
								-- "Off Slots"
								modItemId(207204,6),	-- Greatwolf Outcast's Chainweave
								modItemId(207211,6),	-- Greatwolf Outcast's Footpads
								modItemId(207206,6),	-- Greatwolf Outcast's Sigil Belt
								modItemId(207205,6),	-- Greatwolf Outcast's Wristguards
							}},
						}),
						cl(WARLOCK, {
							["sym"] = {{"select","modItemID",
								-- "Tier Slots"
								modItemId(217214,6),	-- Amice of the Sinister Savant
								modItemId(217215,6),	-- Cursed Robes of the Sinister Savant
								modItemId(217212,6),	-- Grimhorns of the Sinister Savant
								modItemId(217211,6),	-- Grips of the Sinister Savant
								modItemId(217213,6),	-- Leggings of the Sinister Savant
								-- "Off Slots"
								modItemId(202535,6),	-- Sandals of the Sinister Savant
								modItemId(202528,6),	-- Shawl of the Sinister Savant
								modItemId(202530,6),	-- Skullstrap of the Sinister Savant
								modItemId(202529,6),	-- Wristwraps of the Sinister Savant
							}},
						}),
						cl(WARRIOR, {
							["sym"] = {{"select","modItemID",
								-- "Tier Slots"
								modItemId(217216,6),	-- Battlechest of the Onyx Crucible
								modItemId(217217,6),	-- Handguards of the Onyx Crucible
								modItemId(217219,6),	-- Legplates of the Onyx Crucible
								modItemId(217220,6),	-- Pauldrons of the Onyx Crucible
								modItemId(217218,6),	-- Thraexhelm of the Onyx Crucible
								-- "Off Slots"
								modItemId(202440,6),	-- Insignia of the Onyx Crucible
								modItemId(202445,6),	-- Ironstriders of the Onyx Crucible
								modItemId(202438,6),	-- Manteau of the Onyx Crucible
								modItemId(202439,6),	-- Warbands of the Onyx Crucible
							}},
						}),
					}),
				})),
			})),
			-- #endif
			pvp(n(SEASON_OBSIDIAN, bubbleDownSelf({ ["timeline"] = { ADDED_10_1_0, REMOVED_10_2_0 } }, {
				n(PVP_GLADIATOR, bubbleDown({ ["modID"] = 8 }, {	-- "Tier Slots"
					cl(DEATHKNIGHT, {
						i(202461),	-- Lingering Phantom's Dreadhorns
						i(202462),	-- Lingering Phantom's Gauntlets
						i(202464),	-- Lingering Phantom's Plackart
						i(202460),	-- Lingering Phantom's Schynbalds
						i(202459),	-- Lingering Phantom's Shoulderplates
					}),
					cl(DEMONHUNTER, {
						i(202525),	-- Kinslayer's Bloodstained Grips
						i(202524),	-- Kinslayer's Hood
						i(202523),	-- Kinslayer's Legguards
						i(202522),	-- Kinslayer's Tainted Spaulders
						i(202527),	-- Kinslayer's Vest
					}),
					cl(DRUID, {
						i(202515),	-- Bough of the Autumn Blaze
						i(202518),	-- Chestroots of the Autumn Blaze
						i(202516),	-- Handguards of the Autumn Blaze
						i(202513),	-- Mantle of the Autumn Blaze
						i(202514),	-- Pants of the Autumn Blaze
					}),
					cl(EVOKER, {
						i(202487),	-- Chausses of Obsidian Secrets
						i(202489),	-- Claws of Obsidian Secrets
						i(202488),	-- Crown of Obsidian Secrets
						i(202491),	-- Hauberk of Obsidian Secrets
						i(202486),	-- Wingspan of Obsidian Secrets
					}),
					cl(HUNTER, {
						i(202479),	-- Ashen Predator's Faceguard
						i(202478),	-- Ashen Predator's Poleyns
						i(202480),	-- Ashen Predator's Skinners
						i(202482),	-- Ashen Predator's Sling Vest
						i(202477),	-- Ashen Predator's Trophy
					}),
					cl(MAGE, {
						i(202551),	-- Underlight Conjurer's Arcanocowl
						i(202549),	-- Underlight Conjurer's Aurora
						i(202552),	-- Underlight Conjurer's Gloves
						i(202550),	-- Underlight Conjurer's Trousers
						i(202554),	-- Underlight Conjurer's Vestment
					}),
					cl(MONK, {
						i(202506),	-- Cover of the Vermillion Forge
						i(202509),	-- Cuirass of the Vermillion Forge
						i(202507),	-- Fists of the Vermillion Forge
						i(202505),	-- Pantaloons of the Vermillion Forge
						i(202504),	-- Spines of the Vermillion Forge
					}),
					cl(PALADIN, {
						i(202455),	-- Heartfire Sentinel's Brigandine
						i(202451),	-- Heartfire Sentinel's Faulds
						i(202452),	-- Heartfire Sentinel's Forgehelm
						i(202453),	-- Heartfire Sentinel's Protectors
						i(202450),	-- Heartfire Sentinel's Steelwings
					}),
					cl(PRIEST, {
						i(202541),	-- Breeches of the Furnace Seraph
						i(202545),	-- Command of the Furnace Seraph
						i(202540),	-- Devotion of the Furnace Seraph
						i(202543),	-- Grasp of the Furnace Seraph
						i(202542),	-- Mask of the Furnace Seraph
					}),
					cl(ROGUE, {
						i(202500),	-- Lurking Specter's Brigandine
						i(202498),	-- Lurking Specter's Handgrips
						i(202495),	-- Lurking Specter's Shoulderblades
						i(202496),	-- Lurking Specter's Tights
						i(202497),	-- Lurking Specter's Visage
					}),
					cl(SHAMAN, {
						i(202473),	-- Adornments of the Cinderwolf
						i(202469),	-- Braies of the Cinderwolf
						i(202471),	-- Knuckles of the Cinderwolf
						i(202470),	-- Spangenhelm of the Cinderwolf
						i(202468),	-- Thunderpads of the Cinderwolf
					}),
					cl(WARLOCK, {
						i(202531),	-- Amice of the Sinister Savant
						i(202536),	-- Cursed Robes of the Sinister Savant
						i(202533),	-- Grimhorns of the Sinister Savant
						i(202534),	-- Grips of the Sinister Savant
						i(202532),	-- Leggings of the Sinister Savant
					}),
					cl(WARRIOR, {
						i(202446),	-- Battlechest of the Onyx Crucible
						i(202444),	-- Handguards of the Onyx Crucible
						i(202442),	-- Legplates of the Onyx Crucible
						i(202441),	-- Pauldrons of the Onyx Crucible
						i(202443),	-- Thraexhelm of the Onyx Crucible
					}),
				})),
				n(PVP_GLADIATOR, bubbleDown({ ["bonusID"] = 7479 }, {	-- "Off Slots"
					cl(DEATHKNIGHT, {
						i(202458),	-- Lingering Phantom's Deathlink
						i(202456),	-- Lingering Phantom's Drape
						i(202463),	-- Lingering Phantom's Stompers
						i(202457),	-- Lingering Phantom's Vambraces
					}),
					cl(DEMONHUNTER, {
						i(202520),	-- Kinslayer's Bindings
						i(202526),	-- Kinslayer's Gaiters
						i(202521),	-- Kinslayer's Sash
						i(202519),	-- Kinslayer's Shawl
					}),
					cl(DRUID, {
						i(202511),	-- Bands of the Autumn Blaze
						i(202510),	-- Foliage of the Autumn Blaze
						i(202512),	-- Garland of the Autumn Blaze
						i(202517),	-- Hooves of the Autumn Blaze
					}),
					cl(EVOKER, {
						i(202483),	-- Crest of Obsidian Secrets
						i(202490),	-- Greatboots of Obsidian Secrets
						i(202485),	-- Lasso of Obsidian Secrets
						i(202484),	-- Scalebands of Obsidian Secrets
					}),
					cl(HUNTER, {
						i(202481),	-- Ashen Predator's Chasers
						i(202474),	-- Ashen Predator's Cloak
						i(202475),	-- Ashen Predator's Skinwraps
						i(202476),	-- Ashen Predator's Strap
					}),
					cl(MAGE, {
						i(202547),	-- Underlight Conjurer's Bracelets
						i(202546),	-- Underlight Conjurer's Cape
						i(202548),	-- Underlight Conjurer's Charmbelt
						i(202553),	-- Underlight Conjurer's Treads
					}),
					cl(MONK, {
						i(202501),	-- Drape of the Vermillion Forge
						i(202503),	-- Blackbelt of the Vermillion Forge
						i(202502),	-- Coils of the Vermillion Forge
						i(202508),	-- Footpads of the Vermillion Forge
					}),
					cl(PALADIN, {
						i(202448),	-- Heartfire Sentinel's Blessed Bindings
						i(202454),	-- Heartfire Sentinel's Greatboots
						i(202447),	-- Heartfire Sentinel's Pelerine
						i(202449),	-- Heartfire Sentinel's Waistguard
					}),
					cl(PRIEST, {
						i(202538),	-- Cuffs of the Furnace Seraph
						i(202544),	-- Sabatons of the Furnace Seraph
						i(202539),	-- Sash of the Furnace Seraph
						i(202537),	-- Shroud of the Furnace Seraph
					}),
					cl(ROGUE, {
						i(202493),	-- Lurking Specter's Armwraps
						i(202492),	-- Lurking Specter's Capelet
						i(202494),	-- Lurking Specter's Edgeband
						i(202499),	-- Lurking Specter's Tabi
					}),
					cl(SHAMAN, {
						i(202467),	-- Faulds of the Cinderwolf
						i(202465),	-- Pelisse of the Cinderwolf
						i(202466),	-- Runebraces of the Cinderwolf
						i(202472),	-- Sollerets of the Cinderwolf
					}),
					cl(WARLOCK, {
						i(202535),	-- Sandals of the Sinister Savant
						i(202528),	-- Shawl of the Sinister Savant
						i(202530),	-- Skullstrap of the Sinister Savant
						i(202529),	-- Wristwraps of the Sinister Savant
					}),
					cl(WARRIOR, {
						i(202440),	-- Insignia of the Onyx Crucible
						i(202445),	-- Ironstriders of the Onyx Crucible
						i(202438),	-- Manteau of the Onyx Crucible
						i(202439),	-- Warbands of the Onyx Crucible
					}),
				})),
				n(PVP_ELITE, bubbleDown({ ["bonusID"] = 7532 }, {	-- "Tier Slots"
					["description"] = "These items are obtained by upgrading your Catalyst PvP Gear to 9/9 upgrades.\n|CFFFF0000Requires 2400 rating in any PvP Bracket.|r",
					["groups"] = {
						cl(DEATHKNIGHT, {
							i(202461),	-- Lingering Phantom's Dreadhorns
							i(202462),	-- Lingering Phantom's Gauntlets
							i(202464),	-- Lingering Phantom's Plackart
							i(202460),	-- Lingering Phantom's Schynbalds
							i(202459),	-- Lingering Phantom's Shoulderplates
						}),
						cl(DEMONHUNTER, {
							i(202525),	-- Kinslayer's Bloodstained Grips
							i(202524),	-- Kinslayer's Hood
							i(202523),	-- Kinslayer's Legguards
							i(202522),	-- Kinslayer's Tainted Spaulders
							i(202527),	-- Kinslayer's Vest
						}),
						cl(DRUID, {
							i(202515),	-- Bough of the Autumn Blaze
							i(202518),	-- Chestroots of the Autumn Blaze
							i(202516),	-- Handguards of the Autumn Blaze
							i(202513),	-- Mantle of the Autumn Blaze
							i(202514),	-- Pants of the Autumn Blaze
						}),
						cl(EVOKER, {
							i(202487),	-- Chausses of Obsidian Secrets
							i(202489),	-- Claws of Obsidian Secrets
							i(202488),	-- Crown of Obsidian Secrets
							i(202491),	-- Hauberk of Obsidian Secrets
							i(202486),	-- Wingspan of Obsidian Secrets
						}),
						cl(HUNTER, {
							i(202479),	-- Ashen Predator's Faceguard
							i(202478),	-- Ashen Predator's Poleyns
							i(202480),	-- Ashen Predator's Skinners
							i(202482),	-- Ashen Predator's Sling Vest
							i(202477),	-- Ashen Predator's Trophy
						}),
						cl(MAGE, {
							i(202551),	-- Underlight Conjurer's Arcanocowl
							i(202549),	-- Underlight Conjurer's Aurora
							i(202552),	-- Underlight Conjurer's Gloves
							i(202550),	-- Underlight Conjurer's Trousers
							i(202554),	-- Underlight Conjurer's Vestment
						}),
						cl(MONK, {
							i(202506),	-- Cover of the Vermillion Forge
							i(202509),	-- Cuirass of the Vermillion Forge
							i(202507),	-- Fists of the Vermillion Forge
							i(202505),	-- Pantaloons of the Vermillion Forge
							i(202504),	-- Spines of the Vermillion Forge
						}),
						cl(PALADIN, {
							i(202455),	-- Heartfire Sentinel's Brigandine
							i(202451),	-- Heartfire Sentinel's Faulds
							i(202452),	-- Heartfire Sentinel's Forgehelm
							i(202453),	-- Heartfire Sentinel's Protectors
							i(202450),	-- Heartfire Sentinel's Steelwings
						}),
						cl(PRIEST, {
							i(202541),	-- Breeches of the Furnace Seraph
							i(202545),	-- Command of the Furnace Seraph
							i(202540),	-- Devotion of the Furnace Seraph
							i(202543),	-- Grasp of the Furnace Seraph
							i(202542),	-- Mask of the Furnace Seraph
						}),
						cl(ROGUE, {
							i(202500),	-- Lurking Specter's Brigandine
							i(202498),	-- Lurking Specter's Handgrips
							i(202495),	-- Lurking Specter's Shoulderblades
							i(202496),	-- Lurking Specter's Tights
							i(202497),	-- Lurking Specter's Visage
						}),
						cl(SHAMAN, {
							i(202473),	-- Adornments of the Cinderwolf
							i(202469),	-- Braies of the Cinderwolf
							i(202471),	-- Knuckles of the Cinderwolf
							i(202470),	-- Spangenhelm of the Cinderwolf
							i(202468),	-- Thunderpads of the Cinderwolf
						}),
						cl(WARLOCK, {
							i(202531),	-- Amice of the Sinister Savant
							i(202536),	-- Cursed Robes of the Sinister Savant
							i(202533),	-- Grimhorns of the Sinister Savant
							i(202534),	-- Grips of the Sinister Savant
							i(202532),	-- Leggings of the Sinister Savant
						}),
						cl(WARRIOR, {
							i(202446),	-- Battlechest of the Onyx Crucible
							i(202444),	-- Handguards of the Onyx Crucible
							i(202442),	-- Legplates of the Onyx Crucible
							i(202441),	-- Pauldrons of the Onyx Crucible
							i(202443),	-- Thraexhelm of the Onyx Crucible
						}),
					},
				})),
				n(PVP_ELITE, bubbleDown({ ["bonusID"] = 7532 }, {	-- "Off Slots"
					["description"] = "These items are obtained by upgrading your Catalyst PvP Gear to 9/9 upgrades.\n|CFFFF0000Requires 2400 rating in any PvP Bracket.|r",
					["groups"] = {
						cl(DEATHKNIGHT, {
							i(202458),	-- Lingering Phantom's Deathlink
							i(202456),	-- Lingering Phantom's Drape
							i(202463),	-- Lingering Phantom's Stompers
							i(202457),	-- Lingering Phantom's Vambraces
						}),
						cl(DEMONHUNTER, {
							i(202520),	-- Kinslayer's Bindings
							i(202526),	-- Kinslayer's Gaiters
							i(202521),	-- Kinslayer's Sash
							i(202519),	-- Kinslayer's Shawl
						}),
						cl(DRUID, {
							i(202511),	-- Bands of the Autumn Blaze
							i(202510),	-- Foliage of the Autumn Blaze
							i(202512),	-- Garland of the Autumn Blaze
							i(202517),	-- Hooves of the Autumn Blaze
						}),
						cl(EVOKER, {
							i(202483),	-- Crest of Obsidian Secrets
							i(202490),	-- Greatboots of Obsidian Secrets
							i(202485),	-- Lasso of Obsidian Secrets
							i(202484),	-- Scalebands of Obsidian Secrets
						}),
						cl(HUNTER, {
							i(202481),	-- Ashen Predator's Chasers
							i(202474),	-- Ashen Predator's Cloak
							i(202475),	-- Ashen Predator's Skinwraps
							i(202476),	-- Ashen Predator's Strap
						}),
						cl(MAGE, {
							i(202547),	-- Underlight Conjurer's Bracelets
							i(202546),	-- Underlight Conjurer's Cape
							i(202548),	-- Underlight Conjurer's Charmbelt
							i(202553),	-- Underlight Conjurer's Treads
						}),
						cl(MONK, {
							i(202501),	-- Drape of the Vermillion Forge
							i(202503),	-- Blackbelt of the Vermillion Forge
							i(202502),	-- Coils of the Vermillion Forge
							i(202508),	-- Footpads of the Vermillion Forge
						}),
						cl(PALADIN, {
							i(202448),	-- Heartfire Sentinel's Blessed Bindings
							i(202454),	-- Heartfire Sentinel's Greatboots
							i(202447),	-- Heartfire Sentinel's Pelerine
							i(202449),	-- Heartfire Sentinel's Waistguard
						}),
						cl(PRIEST, {
							i(202538),	-- Cuffs of the Furnace Seraph
							i(202544),	-- Sabatons of the Furnace Seraph
							i(202539),	-- Sash of the Furnace Seraph
							i(202537),	-- Shroud of the Furnace Seraph
						}),
						cl(ROGUE, {
							i(202493),	-- Lurking Specter's Armwraps
							i(202492),	-- Lurking Specter's Capelet
							i(202494),	-- Lurking Specter's Edgeband
							i(202499),	-- Lurking Specter's Tabi
						}),
						cl(SHAMAN, {
							i(202467),	-- Faulds of the Cinderwolf
							i(202465),	-- Pelisse of the Cinderwolf
							i(202466),	-- Runebraces of the Cinderwolf
							i(202472),	-- Sollerets of the Cinderwolf
						}),
						cl(WARLOCK, {
							i(202535),	-- Sandals of the Sinister Savant
							i(202528),	-- Shawl of the Sinister Savant
							i(202530),	-- Skullstrap of the Sinister Savant
							i(202529),	-- Wristwraps of the Sinister Savant
						}),
						cl(WARRIOR, {
							i(202440),	-- Insignia of the Onyx Crucible
							i(202445),	-- Ironstriders of the Onyx Crucible
							i(202438),	-- Manteau of the Onyx Crucible
							i(202439),	-- Warbands of the Onyx Crucible
						}),
					},
				})),
			}))),
			pvp(n(SEASON_VERDANT, bubbleDownSelf({ ["timeline"] = { ADDED_10_2_0, REMOVED_10_2_6_SEASON_FOUR } }, {
				n(PVP_GLADIATOR, bubbleDown({ ["modID"] = 8 }, {	-- "Tier Slots"
					cl(DEATHKNIGHT, {
						i(207203),	-- Casket of the Risen Nightmare
						i(207199),	-- Greaves of the Risen Nightmare
						i(207200),	-- Piercing Gaze of the Risen Nightmare
						i(207198),	-- Skewers of the Risen Nightmare
						i(207201),	-- Thorns of the Risen Nightmare
					}),
					cl(DEMONHUNTER, {
						i(207266),	-- Screaming Torchfiend's Binding
						i(207262),	-- Screaming Torchfiend's Blazewraps
						i(207263),	-- Screaming Torchfiend's Burning Scowl
						i(207264),	-- Screaming Torchfiend's Grasp
						i(207261),	-- Screaming Torchfiend's Horned Memento
					}),
					cl(DRUID, {
						i(207254),	-- Benevolent Embersage's Casque
						i(207253),	-- Benevolent Embersage's Leggings
						i(207257),	-- Benevolent Embersage's Robe
						i(207255),	-- Benevolent Embersage's Talons
						i(207252),	-- Benevolent Embersage's Wisdom
					}),
					cl(EVOKER, {
						i(207226),	-- Weyrnkeeper's Timeless Breeches
						i(207228),	-- Weyrnkeeper's Timeless Clawguards
						i(207227),	-- Weyrnkeeper's Timeless Dracoif
						i(207230),	-- Weyrnkeeper's Timeless Raiment
						i(207225),	-- Weyrnkeeper's Timeless Sandbrace
					}),
					cl(HUNTER, {
						i(207216),	-- Blazing Dreamstalker's Finest Hunt
						i(207218),	-- Blazing Dreamstalker's Flamewaker Horns
						i(207221),	-- Blazing Dreamstalker's Scaled Hauberk
						i(207217),	-- Blazing Dreamstalker's Shellgreaves
						i(207219),	-- Blazing Dreamstalker's Skinners
					}),
					cl(MAGE, {
						i(207290),	-- Wayward Chronomancer's Chronocap
						i(207291),	-- Wayward Chronomancer's Gloves
						i(207288),	-- Wayward Chronomancer's Metronomes
						i(207289),	-- Wayward Chronomancer's Pantaloons
						i(207293),	-- Wayward Chronomancer's Patchwork
					}),
					cl(MONK, {
						i(207243),	-- Mystic Heron's Hopeful Effigy
						i(207244),	-- Mystic Heron's Waders
						i(207245),	-- Mystic Heron's Hatsuburi
						i(207246),	-- Mystic Heron's Glovebills
						i(207248),	-- Mystic Heron's Burdens
					}),
					cl(PALADIN, {
						i(207189),	-- Zealous Pyreknight's Ailettes
						i(207191),	-- Zealous Pyreknight's Barbute
						i(207190),	-- Zealous Pyreknight's Cuisses
						i(207192),	-- Zealous Pyreknight's Jeweled Gauntlets
						i(207194),	-- Zealous Pyreknight's Warplate
					}),
					cl(PRIEST, {
						i(207284),	-- Cassock of Lunar Communion
						i(207281),	-- Crest of Lunar Communion
						i(207280),	-- Leggings of Lunar Communion
						i(207282),	-- Touch of Lunar Communion
						i(207279),	-- Shoulderguardians of Lunar Communion
					}),
					cl(ROGUE, {
						i(207234),	-- Lucid Shadewalker's Bladed Spaulders
						i(207235),	-- Lucid Shadewalker's Chausses
						i(207237),	-- Lucid Shadewalker's Clawgrips
						i(207239),	-- Lucid Shadewalker's Cuirass
						i(207236),	-- Lucid Shadewalker's Deathmask
					}),
					cl(SHAMAN, {
						i(207207),	-- Greatwolf Outcast's Companions
						i(207208),	-- Greatwolf Outcast's Fur-Lined Kilt
						i(207210),	-- Greatwolf Outcast's Grips
						i(207212),	-- Greatwolf Outcast's Harness
						i(207209),	-- Greatwolf Outcast's Jaws
					}),
					cl(WARLOCK, {
						i(207273),	-- Devout Ashdevil's Claws
						i(207272),	-- Devout Ashdevil's Grimhorns
						i(207270),	-- Devout Ashdevil's Hatespikes
						i(207275),	-- Devout Ashdevil's Razorhide
						i(207271),	-- Devout Ashdevil's Tights
					}),
					cl(WARRIOR, {
						i(207183),	-- Molten Vanguard's Crushers
						i(207182),	-- Molten Vanguard's Domeplate
						i(207185),	-- Molten Vanguard's Plackart
						i(207180),	-- Molten Vanguard's Shouldervents
						i(207181),	-- Molten Vanguard's Steel Tassets
					}),
				})),
				n(PVP_GLADIATOR, bubbleDown({ ["modID"] = 8 }, {	-- "Off Slots"
					cl(DEATHKNIGHT, {
						i(207202),	-- Graveboots of the Risen Nightmare
						i(207197),	-- Seal of the Risen Nightmare
						i(207195),	-- Shroud of the Risen Nightmare
						i(207196),	-- Vambraces of the Risen Nightmare
					}),
					cl(DEMONHUNTER, {
						i(207259),	-- Screaming Torchfiend's Armlets
						i(207260),	-- Screaming Torchfiend's Clasp
						i(207265),	-- Screaming Torchfiend's Clutches
						i(207258),	-- Screaming Torchfiend's Shawl
					}),
					cl(DRUID, {
						i(207249),	-- Benevolent Embersage's Featherdrape
						i(207256),	-- Benevolent Embersage's Lined Boots
						i(207251),	-- Benevolent Embersage's Sagacious Sash
						i(207250),	-- Benevolent Embersage's Wristwraps
					}),
					cl(EVOKER, {
						i(207224),	-- Weyrnkeeper's Timeless Adorned Sash
						i(207222),	-- Weyrnkeeper's Timeless Ornamented Cloak
						i(207229),	-- Weyrnkeeper's Timeless Treads
						i(207223),	-- Weyrnkeeper's Timeless Wristlets
					}),
					cl(HUNTER, {
						i(207214),	-- Blazing Dreamstalker's Bracers
						i(207215),	-- Blazing Dreamstalker's Spined Girdle
						i(207213),	-- Blazing Dreamstalker's Staghide
						i(207220),	-- Blazing Dreamstalker's Striders
					}),
					cl(MAGE, {
						i(207286),	-- Wayward Chronomancer's Cuffs
						i(207285),	-- Wayward Chronomancer's Stole
						i(207292),	-- Wayward Chronomancer's Strapped Boots
						i(207287),	-- Wayward Chronomancer's Synchronous Belt
					}),
					cl(MONK, {
						i(207242),	-- Mystic Heron's Belt
						i(207240),	-- Mystic Heron's Feathered Mantle
						i(207241),	-- Mystic Heron's Fisticuffs
						i(207247),	-- Mystic Heron's Tabi
					}),
					cl(PALADIN, {
						i(207186),	-- Zealous Pyreknight's Banner
						i(207193),	-- Zealous Pyreknight's Dreamstompers
						i(207188),	-- Zealous Pyreknight's Emblem
						i(207187),	-- Zealous Pyreknight's Flameguards
					}),
					cl(PRIEST, {
						i(207278),	-- Cincture of Lunar Communion
						i(207276),	-- Cloak of Lunar Communion
						i(207283),	-- Poulaines of Lunar Communion
						i(207277),	-- Wristwraps of Lunar Communion
					}),
					cl(ROGUE, {
						i(207233),	-- Lucid Shadewalker's Baldric
						i(207232),	-- Lucid Shadewalker's Bracers
						i(207231),	-- Lucid Shadewalker's Cape
						i(207238),	-- Lucid Shadewalker's Sollerets
					}),
					cl(SHAMAN, {
						i(207204),	-- Greatwolf Outcast's Chainweave
						i(207211),	-- Greatwolf Outcast's Footpads
						i(207206),	-- Greatwolf Outcast's Sigil Belt
						i(207205),	-- Greatwolf Outcast's Wristguards
					}),
					cl(WARLOCK, {
						i(207268),	-- Devout Ashdevil's Bracelets
						i(207269),	-- Devout Ashdevil's Fanged Sash
						i(207267),	-- Devout Ashdevil's Fiendcloak
						i(207274),	-- Devout Ashdevil's Slippers
					}),
					cl(WARRIOR, {
						i(207179),	-- Molten Vanguard's Chains
						i(207184),	-- Molten Vanguard's Greatboots
						i(207177),	-- Molten Vanguard's Manacles
						i(207176),	-- Molten Vanguard's Thermal Cape
					}),
				})),
				n(PVP_ELITE, bubbleDown({ ["bonusID"] = 7532 }, {	-- "Tier Slots"
					["description"] = "These items are obtained by upgrading your Catalyst PvP Gear to 9/9 upgrades.\n|CFFFF0000Requires 2400 rating in any PvP Bracket.|r",
					["groups"] = {
						cl(DEATHKNIGHT, {
							i(207203),	-- Casket of the Risen Nightmare
							i(207199),	-- Greaves of the Risen Nightmare
							i(207200),	-- Piercing Gaze of the Risen Nightmare
							i(207198),	-- Skewers of the Risen Nightmare
							i(207201),	-- Thorns of the Risen Nightmare
						}),
						cl(DEMONHUNTER, {
							i(207266),	-- Screaming Torchfiend's Binding
							i(207262),	-- Screaming Torchfiend's Blazewraps
							i(207263),	-- Screaming Torchfiend's Burning Scowl
							i(207264),	-- Screaming Torchfiend's Grasp
							i(207261),	-- Screaming Torchfiend's Horned Memento
						}),
						cl(DRUID, {
							i(207254),	-- Benevolent Embersage's Casque
							i(207253),	-- Benevolent Embersage's Leggings
							i(207257),	-- Benevolent Embersage's Robe
							i(207255),	-- Benevolent Embersage's Talons
							i(207252),	-- Benevolent Embersage's Wisdom
						}),
						cl(EVOKER, {
							i(207226),	-- Weyrnkeeper's Timeless Breeches
							i(207228),	-- Weyrnkeeper's Timeless Clawguards
							i(207227),	-- Weyrnkeeper's Timeless Dracoif
							i(207230),	-- Weyrnkeeper's Timeless Raiment
							i(207225),	-- Weyrnkeeper's Timeless Sandbrace
						}),
						cl(HUNTER, {
							i(207216),	-- Blazing Dreamstalker's Finest Hunt
							i(207218),	-- Blazing Dreamstalker's Flamewaker Horns
							i(207221),	-- Blazing Dreamstalker's Scaled Hauberk
							i(207217),	-- Blazing Dreamstalker's Shellgreaves
							i(207219),	-- Blazing Dreamstalker's Skinners
						}),
						cl(MAGE, {
							i(207290),	-- Wayward Chronomancer's Chronocap
							i(207291),	-- Wayward Chronomancer's Gloves
							i(207288),	-- Wayward Chronomancer's Metronomes
							i(207289),	-- Wayward Chronomancer's Pantaloons
							i(207293),	-- Wayward Chronomancer's Patchwork
						}),
						cl(MONK, {
							i(207243),	-- Mystic Heron's Hopeful Effigy
							i(207244),	-- Mystic Heron's Waders
							i(207245),	-- Mystic Heron's Hatsuburi
							i(207246),	-- Mystic Heron's Glovebills
							i(207248),	-- Mystic Heron's Burdens
						}),
						cl(PALADIN, {
							i(207189),	-- Zealous Pyreknight's Ailettes
							i(207191),	-- Zealous Pyreknight's Barbute
							i(207190),	-- Zealous Pyreknight's Cuisses
							i(207192),	-- Zealous Pyreknight's Jeweled Gauntlets
							i(207194),	-- Zealous Pyreknight's Warplate
						}),
						cl(PRIEST, {
							i(207284),	-- Cassock of Lunar Communion
							i(207281),	-- Crest of Lunar Communion
							i(207280),	-- Leggings of Lunar Communion
							i(207282),	-- Touch of Lunar Communion
							i(207279),	-- Shoulderguardians of Lunar Communion
						}),
						cl(ROGUE, {
							i(207234),	-- Lucid Shadewalker's Bladed Spaulders
							i(207235),	-- Lucid Shadewalker's Chausses
							i(207237),	-- Lucid Shadewalker's Clawgrips
							i(207239),	-- Lucid Shadewalker's Cuirass
							i(207236),	-- Lucid Shadewalker's Deathmask
						}),
						cl(SHAMAN, {
							i(207207),	-- Greatwolf Outcast's Companions
							i(207208),	-- Greatwolf Outcast's Fur-Lined Kilt
							i(207210),	-- Greatwolf Outcast's Grips
							i(207212),	-- Greatwolf Outcast's Harness
							i(207209),	-- Greatwolf Outcast's Jaws
						}),
						cl(WARLOCK, {
							i(207273),	-- Devout Ashdevil's Claws
							i(207272),	-- Devout Ashdevil's Grimhorns
							i(207270),	-- Devout Ashdevil's Hatespikes
							i(207275),	-- Devout Ashdevil's Razorhide
							i(207271),	-- Devout Ashdevil's Tights
						}),
						cl(WARRIOR, {
							i(207183),	-- Molten Vanguard's Crushers
							i(207182),	-- Molten Vanguard's Domeplate
							i(207185),	-- Molten Vanguard's Plackart
							i(207180),	-- Molten Vanguard's Shouldervents
							i(207181),	-- Molten Vanguard's Steel Tassets
						}),
					},
				})),
				n(PVP_ELITE, bubbleDown({ ["bonusID"] = 7532 }, {	-- "Off Slots"
					["description"] = "These items are obtained by upgrading your Catalyst PvP Gear to 9/9 upgrades.\n|CFFFF0000Requires 2400 rating in any PvP Bracket.|r",
					["groups"] = {
						cl(DEATHKNIGHT, {
							i(207202),	-- Graveboots of the Risen Nightmare
							i(207197),	-- Seal of the Risen Nightmare
							i(207195),	-- Shroud of the Risen Nightmare
							i(207196),	-- Vambraces of the Risen Nightmare
						}),
						cl(DEMONHUNTER, {
							i(207259),	-- Screaming Torchfiend's Armlets
							i(207260),	-- Screaming Torchfiend's Clasp
							i(207265),	-- Screaming Torchfiend's Clutches
							i(207258),	-- Screaming Torchfiend's Shawl
						}),
						cl(DRUID, {
							i(207249),	-- Benevolent Embersage's Featherdrape
							i(207256),	-- Benevolent Embersage's Lined Boots
							i(207251),	-- Benevolent Embersage's Sagacious Sash
							i(207250),	-- Benevolent Embersage's Wristwraps
						}),
						cl(EVOKER, {
							i(207224),	-- Weyrnkeeper's Timeless Adorned Sash
							i(207222),	-- Weyrnkeeper's Timeless Ornamented Cloak
							i(207229),	-- Weyrnkeeper's Timeless Treads
							i(207223),	-- Weyrnkeeper's Timeless Wristlets
						}),
						cl(HUNTER, {
							i(207214),	-- Blazing Dreamstalker's Bracers
							i(207215),	-- Blazing Dreamstalker's Spined Girdle
							i(207213),	-- Blazing Dreamstalker's Staghide
							i(207220),	-- Blazing Dreamstalker's Striders
						}),
						cl(MAGE, {
							i(207286),	-- Wayward Chronomancer's Cuffs
							i(207285),	-- Wayward Chronomancer's Stole
							i(207292),	-- Wayward Chronomancer's Strapped Boots
							i(207287),	-- Wayward Chronomancer's Synchronous Belt
						}),
						cl(MONK, {
							i(207242),	-- Mystic Heron's Belt
							i(207240),	-- Mystic Heron's Feathered Mantle
							i(207241),	-- Mystic Heron's Fisticuffs
							i(207247),	-- Mystic Heron's Tabi
						}),
						cl(PALADIN, {
							i(207186),	-- Zealous Pyreknight's Banner
							i(207193),	-- Zealous Pyreknight's Dreamstompers
							i(207188),	-- Zealous Pyreknight's Emblem
							i(207187),	-- Zealous Pyreknight's Flameguards
						}),
						cl(PRIEST, {
							i(207278),	-- Cincture of Lunar Communion
							i(207276),	-- Cloak of Lunar Communion
							i(207283),	-- Poulaines of Lunar Communion
							i(207277),	-- Wristwraps of Lunar Communion
						}),
						cl(ROGUE, {
							i(207233),	-- Lucid Shadewalker's Baldric
							i(207232),	-- Lucid Shadewalker's Bracers
							i(207231),	-- Lucid Shadewalker's Cape
							i(207238),	-- Lucid Shadewalker's Sollerets
						}),
						cl(SHAMAN, {
							i(207204),	-- Greatwolf Outcast's Chainweave
							i(207211),	-- Greatwolf Outcast's Footpads
							i(207206),	-- Greatwolf Outcast's Sigil Belt
							i(207205),	-- Greatwolf Outcast's Wristguards
						}),
						cl(WARLOCK, {
							i(207268),	-- Devout Ashdevil's Bracelets
							i(207269),	-- Devout Ashdevil's Fanged Sash
							i(207267),	-- Devout Ashdevil's Fiendcloak
							i(207274),	-- Devout Ashdevil's Slippers
						}),
						cl(WARRIOR, {
							i(207179),	-- Molten Vanguard's Chains
							i(207184),	-- Molten Vanguard's Greatboots
							i(207177),	-- Molten Vanguard's Manacles
							i(207176),	-- Molten Vanguard's Thermal Cape
						}),
					},
				})),
			}))),
			pvp(n(SEASON_DRACONIC_PVP, bubbleDownSelf({ ["timeline"] = { ADDED_10_2_6_SEASON_FOUR, REMOVED_TWW_LAUNCH } }, {
				-- There are new IDs only for "Tier Slots" in season 4
				-- "Off Slots" use old IDs of original items but have a new bonusID & sourceID
				n(PVP_GLADIATOR, bubbleDown({ ["modID"] = 8 }, {	-- "Tier Slots"
					cl(DEATHKNIGHT, {
						i(217221),	-- Casket of the Risen Nightmare
						i(217224),	-- Greaves of the Risen Nightmare
						i(217223),	-- Piercing Gaze of the Risen Nightmare
						i(217225),	-- Skewers of the Risen Nightmare
						i(217222),	-- Thorns of the Risen Nightmare
					}),
					cl(DEMONHUNTER, {
						i(217226),	-- Screaming Torchfiend's Binding
						i(217229),	-- Screaming Torchfiend's Blazewraps
						i(217228),	-- Screaming Torchfiend's Burning Scowl
						i(217227),	-- Screaming Torchfiend's Grasp
						i(217230),	-- Screaming Torchfiend's Horned Memento
					}),
					cl(DRUID, {
						i(217193),	-- Bough of the Autumn Blaze
						i(217191),	-- Chestroots of the Autumn Blaze
						i(217192),	-- Handguards of the Autumn Blaze
						i(217195),	-- Mantle of the Autumn Blaze
						i(217194),	-- Pants of the Autumn Blaze
					}),
					cl(EVOKER, {
						i(217178),	-- Crown of the Awakened
						i(217177),	-- Gauntlets of the Awakened
						i(217176),	-- Hauberk of the Awakened
						i(217179),	-- Legguards of the Awakened
						i(217180),	-- Talons of the Awakened
					}),
					cl(HUNTER, {
						i(217181),	-- Stormwing Harrier's Cuirass
						i(217184),	-- Stormwing Harrier's Greaves
						i(217182),	-- Stormwing Harrier's Handguards
						i(217185),	-- Stormwing Harrier's Pinions
						i(217183),	-- Stormwing Harrier's Skullmask
					}),
					cl(MAGE, {
						i(217232),	-- Wayward Chronomancer's Chronocap
						i(217231),	-- Wayward Chronomancer's Gloves
						i(217234),	-- Wayward Chronomancer's Metronomes
						i(217233),	-- Wayward Chronomancer's Pantaloons
						i(217235),	-- Wayward Chronomancer's Patchwork
					}),
					cl(MONK, {
						i(217186),	-- Chestwrap of the Waking Fist
						i(217188),	-- Gaze of the Waking Fist
						i(217189),	-- Legguards of the Waking Fist
						i(217190),	-- Mantle of the Waking Fist
						i(217187),	-- Palms of the Waking Fist
					}),
					cl(PALADIN, {
						i(217196),	-- Heartfire Sentinel's Brigandine
						i(217199),	-- Heartfire Sentinel's Faulds
						i(217198),	-- Heartfire Sentinel's Forgehelm
						i(217197),	-- Heartfire Sentinel's Protectors
						i(217200),	-- Heartfire Sentinel's Steelwings
					}),
					cl(PRIEST, {
						i(217203),	-- Breeches of the Furnace Seraph
						i(217205),	-- Command of the Furnace Seraph
						i(217204),	-- Devotion of the Furnace Seraph
						i(217201),	-- Grasp of the Furnace Seraph
						i(217202),	-- Mask of the Furnace Seraph
					}),
					cl(ROGUE, {
						i(217206),	-- Lurking Specter's Brigandine
						i(217207),	-- Lurking Specter's Handgrips
						i(217210),	-- Lurking Specter's Shoulderblades
						i(217209),	-- Lurking Specter's Tights
						i(217208),	-- Lurking Specter's Visage
					}),
					cl(SHAMAN, {
						i(217240),	-- Greatwolf Outcast's Companions
						i(217239),	-- Greatwolf Outcast's Fur-Lined Kilt
						i(217237),	-- Greatwolf Outcast's Grips
						i(217236),	-- Greatwolf Outcast's Harness
						i(217238),	-- Greatwolf Outcast's Jaws
					}),
					cl(WARLOCK, {
						i(217214),	-- Amice of the Sinister Savant
						i(217215),	-- Cursed Robes of the Sinister Savant
						i(217212),	-- Grimhorns of the Sinister Savant
						i(217211),	-- Grips of the Sinister Savant
						i(217213),	-- Leggings of the Sinister Savant
					}),
					cl(WARRIOR, {
						i(217216),	-- Battlechest of the Onyx Crucible
						i(217217),	-- Handguards of the Onyx Crucible
						i(217219),	-- Legplates of the Onyx Crucible
						i(217220),	-- Pauldrons of the Onyx Crucible
						i(217218),	-- Thraexhelm of the Onyx Crucible
					}),
				})),
				n(PVP_GLADIATOR, {	-- "Off Slots"
					cl(DEATHKNIGHT, {
						i(207202, {["modID"] = 8}),	-- Graveboots of the Risen Nightmare
						i(207197, {["modID"] = 8}),	-- Seal of the Risen Nightmare
						i(207195, {["modID"] = 8}),	-- Shroud of the Risen Nightmare
						i(207196, {["modID"] = 8}),	-- Vambraces of the Risen Nightmare
					}),
					cl(DEMONHUNTER, {
						i(207259, {["modID"] = 8}),	-- Screaming Torchfiend's Armlets
						i(207260, {["modID"] = 8}),	-- Screaming Torchfiend's Clasp
						i(207265, {["modID"] = 8}),	-- Screaming Torchfiend's Clutches
						i(207258, {["modID"] = 8}),	-- Screaming Torchfiend's Shawl
					}),
					cl(DRUID, {
						i(202511, {["bonusID"] = 7479}),	-- Bands of the Autumn Blaze
						i(202510, {["bonusID"] = 7479}),	-- Foliage of the Autumn Blaze
						i(202512, {["bonusID"] = 7479}),	-- Garland of the Autumn Blaze
						i(202517, {["bonusID"] = 7479}),	-- Hooves of the Autumn Blaze
					}),
					cl(EVOKER, {
						i(200385, {["bonusID"] = 7479}),	-- Bracers of the Awakened
						i(200384, {["bonusID"] = 7479}),	-- Chain of the Awakened
						i(200386, {["bonusID"] = 7479}),	-- Shroud of the Awakened
						i(200379, {["bonusID"] = 7479}),	-- Treads of the Awakened
					}),
					cl(HUNTER, {
						i(200393, {["bonusID"] = 7479}),	-- Stormwing Harrier's Belt
						i(200395, {["bonusID"] = 7479}),	-- Stormwing Harrier's Plumage
						i(200388, {["bonusID"] = 7479}),	-- Stormwing Harrier's Sabatons
						i(200394, {["bonusID"] = 7479}),	-- Stormwing Harrier's Wristguards
					}),
					cl(MAGE, {
						i(207286, {["modID"] = 8}),	-- Wayward Chronomancer's Cuffs
						i(207285, {["modID"] = 8}),	-- Wayward Chronomancer's Stole
						i(207292, {["modID"] = 8}),	-- Wayward Chronomancer's Strapped Boots
						i(207287, {["modID"] = 8}),	-- Wayward Chronomancer's Synchronous Belt
					}),
					cl(MONK, {
						i(200367, {["bonusID"] = 7479}),	-- Cuffs of the Waking Fist
						i(200368, {["bonusID"] = 7479}),	-- Drape of the Waking Fist
						i(200361, {["bonusID"] = 7479}),	-- Gaiters of the Waking Fist
						i(200366, {["bonusID"] = 7479}),	-- Girdle of the Waking Fist
					}),
					cl(PALADIN, {
						i(202448, {["bonusID"] = 7479}),	-- Heartfire Sentinel's Blessed Bindings
						i(202454, {["bonusID"] = 7479}),	-- Heartfire Sentinel's Greatboots
						i(202447, {["bonusID"] = 7479}),	-- Heartfire Sentinel's Pelerine
						i(202449, {["bonusID"] = 7479}),	-- Heartfire Sentinel's Waistguard
					}),
					cl(PRIEST, {
						i(202538, {["bonusID"] = 7479}),	-- Cuffs of the Furnace Seraph
						i(202544, {["bonusID"] = 7479}),	-- Sabatons of the Furnace Seraph
						i(202539, {["bonusID"] = 7479}),	-- Sash of the Furnace Seraph
						i(202537, {["bonusID"] = 7479}),	-- Shroud of the Furnace Seraph
					}),
					cl(ROGUE, {
						i(202493, {["bonusID"] = 7479}),	-- Lurking Specter's Armwraps
						i(202492, {["bonusID"] = 7479}),	-- Lurking Specter's Capelet
						i(202494, {["bonusID"] = 7479}),	-- Lurking Specter's Edgeband
						i(202499, {["bonusID"] = 7479}),	-- Lurking Specter's Tabi
					}),
					cl(SHAMAN, {
						i(207204, {["modID"] = 8}),	-- Greatwolf Outcast's Chainweave
						i(207211, {["modID"] = 8}),	-- Greatwolf Outcast's Footpads
						i(207206, {["modID"] = 8}),	-- Greatwolf Outcast's Sigil Belt
						i(207205, {["modID"] = 8}),	-- Greatwolf Outcast's Wristguards
					}),
					cl(WARLOCK, {
						i(202535, {["bonusID"] = 7479}),	-- Sandals of the Sinister Savant
						i(202528, {["bonusID"] = 7479}),	-- Shawl of the Sinister Savant
						i(202530, {["bonusID"] = 7479}),	-- Skullstrap of the Sinister Savant
						i(202529, {["bonusID"] = 7479}),	-- Wristwraps of the Sinister Savant
					}),
					cl(WARRIOR, {
						i(202440, {["bonusID"] = 7479}),	-- Insignia of the Onyx Crucible
						i(202445, {["bonusID"] = 7479}),	-- Ironstriders of the Onyx Crucible
						i(202438, {["bonusID"] = 7479}),	-- Manteau of the Onyx Crucible
						i(202439, {["bonusID"] = 7479}),	-- Warbands of the Onyx Crucible
					}),
				}),
				n(PVP_ELITE, bubbleDown({ ["bonusID"] = 7532 }, {	-- "Tier Slots"
					["description"] = "These items are obtained by catalysing a PVP from the Great Vault after reaching 2400 in any bracket.\n|CFFFF0000Requires 2400 rating in any PvP Bracket.|r",
					["groups"] = {
						cl(DEATHKNIGHT, {
							i(217221),	-- Casket of the Risen Nightmare
							i(217224),	-- Greaves of the Risen Nightmare
							i(217223),	-- Piercing Gaze of the Risen Nightmare
							i(217225),	-- Skewers of the Risen Nightmare
							i(217222),	-- Thorns of the Risen Nightmare
						}),
						cl(DEMONHUNTER, {
							i(217226),	-- Screaming Torchfiend's Binding
							i(217229),	-- Screaming Torchfiend's Blazewraps
							i(217228),	-- Screaming Torchfiend's Burning Scowl
							i(217227),	-- Screaming Torchfiend's Grasp
							i(217230),	-- Screaming Torchfiend's Horned Memento
						}),
						cl(DRUID, {
							i(217193),	-- Bough of the Autumn Blaze
							i(217191),	-- Chestroots of the Autumn Blaze
							i(217192),	-- Handguards of the Autumn Blaze
							i(217195),	-- Mantle of the Autumn Blaze
							i(217194),	-- Pants of the Autumn Blaze
						}),
						cl(EVOKER, {
							i(217178),	-- Crown of the Awakened
							i(217177),	-- Gauntlets of the Awakened
							i(217176),	-- Hauberk of the Awakened
							i(217179),	-- Legguards of the Awakened
							i(217180),	-- Talons of the Awakened
						}),
						cl(HUNTER, {
							i(217181),	-- Stormwing Harrier's Cuirass
							i(217184),	-- Stormwing Harrier's Greaves
							i(217182),	-- Stormwing Harrier's Handguards
							i(217185),	-- Stormwing Harrier's Pinions
							i(217183),	-- Stormwing Harrier's Skullmask
						}),
						cl(MAGE, {
							i(217232),	-- Wayward Chronomancer's Chronocap
							i(217231),	-- Wayward Chronomancer's Gloves
							i(217234),	-- Wayward Chronomancer's Metronomes
							i(217233),	-- Wayward Chronomancer's Pantaloons
							i(217235),	-- Wayward Chronomancer's Patchwork
						}),
						cl(MONK, {
							i(217186),	-- Chestwrap of the Waking Fist
							i(217188),	-- Gaze of the Waking Fist
							i(217189),	-- Legguards of the Waking Fist
							i(217190),	-- Mantle of the Waking Fist
							i(217187),	-- Palms of the Waking Fist
						}),
						cl(PALADIN, {
							i(217196),	-- Heartfire Sentinel's Brigandine
							i(217199),	-- Heartfire Sentinel's Faulds
							i(217198),	-- Heartfire Sentinel's Forgehelm
							i(217197),	-- Heartfire Sentinel's Protectors
							i(217200),	-- Heartfire Sentinel's Steelwings
						}),
						cl(PRIEST, {
							i(217203),	-- Breeches of the Furnace Seraph
							i(217205),	-- Command of the Furnace Seraph
							i(217204),	-- Devotion of the Furnace Seraph
							i(217201),	-- Grasp of the Furnace Seraph
							i(217202),	-- Mask of the Furnace Seraph
						}),
						cl(ROGUE, {
							i(217206),	-- Lurking Specter's Brigandine
							i(217207),	-- Lurking Specter's Handgrips
							i(217210),	-- Lurking Specter's Shoulderblades
							i(217209),	-- Lurking Specter's Tights
							i(217208),	-- Lurking Specter's Visage
						}),
						cl(SHAMAN, {
							i(217240),	-- Greatwolf Outcast's Companions
							i(217239),	-- Greatwolf Outcast's Fur-Lined Kilt
							i(217237),	-- Greatwolf Outcast's Grips
							i(217236),	-- Greatwolf Outcast's Harness
							i(217238),	-- Greatwolf Outcast's Jaws
						}),
						cl(WARLOCK, {
							i(217214),	-- Amice of the Sinister Savant
							i(217215),	-- Cursed Robes of the Sinister Savant
							i(217212),	-- Grimhorns of the Sinister Savant
							i(217211),	-- Grips of the Sinister Savant
							i(217213),	-- Leggings of the Sinister Savant
						}),
						cl(WARRIOR, {
							i(217216),	-- Battlechest of the Onyx Crucible
							i(217217),	-- Handguards of the Onyx Crucible
							i(217219),	-- Legplates of the Onyx Crucible
							i(217220),	-- Pauldrons of the Onyx Crucible
							i(217218),	-- Thraexhelm of the Onyx Crucible
						}),
					},
				})),
				n(PVP_ELITE, bubbleDown({ ["bonusID"] = 7532 }, {	-- "Off Slots"
					["description"] = "These items are obtained by catalysing a PVP from the Great Vault after reaching 2400 in any bracket.\n|CFFFF0000Requires 2400 rating in any PvP Bracket.|r",
					["groups"] = {
						cl(DEATHKNIGHT, {
							i(207202),	-- Graveboots of the Risen Nightmare
							i(207197),	-- Seal of the Risen Nightmare
							i(207195),	-- Shroud of the Risen Nightmare
							i(207196),	-- Vambraces of the Risen Nightmare
						}),
						cl(DEMONHUNTER, {
							i(207259),	-- Screaming Torchfiend's Armlets
							i(207260),	-- Screaming Torchfiend's Clasp
							i(207265),	-- Screaming Torchfiend's Clutches
							i(207258),	-- Screaming Torchfiend's Shawl
						}),
						cl(DRUID, {
							i(202511),	-- Bands of the Autumn Blaze
							i(202510),	-- Foliage of the Autumn Blaze
							i(202512),	-- Garland of the Autumn Blaze
							i(202517),	-- Hooves of the Autumn Blaze
						}),
						cl(EVOKER, {
							i(200385),	-- Bracers of the Awakened
							i(200384),	-- Chain of the Awakened
							i(200386),	-- Shroud of the Awakened
							i(200379),	-- Treads of the Awakened
						}),
						cl(HUNTER, {
							i(200393),	-- Stormwing Harrier's Belt
							i(200395),	-- Stormwing Harrier's Plumage
							i(200388),	-- Stormwing Harrier's Sabatons
							i(200394),	-- Stormwing Harrier's Wristguards
						}),
						cl(MAGE, {
							i(207286),	-- Wayward Chronomancer's Cuffs
							i(207285),	-- Wayward Chronomancer's Stole
							i(207292),	-- Wayward Chronomancer's Strapped Boots
							i(207287),	-- Wayward Chronomancer's Synchronous Belt
						}),
						cl(MONK, {
							i(200367),	-- Cuffs of the Waking Fist
							i(200368),	-- Drape of the Waking Fist
							i(200361),	-- Gaiters of the Waking Fist
							i(200366),	-- Girdle of the Waking Fist
						}),
						cl(PALADIN, {
							i(202448),	-- Heartfire Sentinel's Blessed Bindings
							i(202454),	-- Heartfire Sentinel's Greatboots
							i(202447),	-- Heartfire Sentinel's Pelerine
							i(202449),	-- Heartfire Sentinel's Waistguard
						}),
						cl(PRIEST, {
							i(202538),	-- Cuffs of the Furnace Seraph
							i(202544),	-- Sabatons of the Furnace Seraph
							i(202539),	-- Sash of the Furnace Seraph
							i(202537),	-- Shroud of the Furnace Seraph
						}),
						cl(ROGUE, {
							i(202493),	-- Lurking Specter's Armwraps
							i(202492),	-- Lurking Specter's Capelet
							i(202494),	-- Lurking Specter's Edgeband
							i(202499),	-- Lurking Specter's Tabi
						}),
						cl(SHAMAN, {
							i(207204),	-- Greatwolf Outcast's Chainweave
							i(207211),	-- Greatwolf Outcast's Footpads
							i(207206),	-- Greatwolf Outcast's Sigil Belt
							i(207205),	-- Greatwolf Outcast's Wristguards
						}),
						cl(WARLOCK, {
							i(202535),	-- Sandals of the Sinister Savant
							i(202528),	-- Shawl of the Sinister Savant
							i(202530),	-- Skullstrap of the Sinister Savant
							i(202529),	-- Wristwraps of the Sinister Savant
						}),
						cl(WARRIOR, {
							i(202440),	-- Insignia of the Onyx Crucible
							i(202445),	-- Ironstriders of the Onyx Crucible
							i(202438),	-- Manteau of the Onyx Crucible
							i(202439),	-- Warbands of the Onyx Crucible
						}),
					},
				})),
			}))),
			n(QUESTS, {
				q(72360, {	-- Reviving the Machine
					["provider"] = { "n", 191369 },	-- Watcher Koranos
					["coord"] = { 54.6, 41.3, VALDRAKKEN },
					["timeline"] = { ADDED_10_0_5, REMOVED_10_1_0 },
				}),
				q(72528, {	-- Revival Catalyst
					["sourceQuests"] = { 72360 },	-- Reviving the Machine
					["providers"] = {
						{ "n", 198695 },	-- Antuka
						{ "n", 199373 },	-- Antuka
					},
					["coords"] = {
						{ 60.6, 53.8, THALDRASZUS },
						{ 58.5, 57.6, VALDRAKKEN },
					},
					["isWeekly"] = true,
					["timeline"] = { ADDED_10_0_5, REMOVED_10_1_0 },
					["g"] = {
						i(202002),	-- Enlightened Renascence (QI!)
						i(202000),	-- Minor Renascence (QI!)
						currency(2166),	-- Revival Catalyst Account-Wide Currency
					},
				}),
				q(75497, {	-- The Catalyst's Boon
					["provider"] = { "n", 196499 },	-- Therazal
					["coord"] = { 50.2, 55.8, VALDRAKKEN },
					["timeline"] = { ADDED_10_1_0, REMOVED_10_2_0 },
				}),
				q(79321, {	-- The Catalyst's Gift
					["provider"] = { "n", 213930 },	-- Koszaru
					["coord"] = { 48.0, 58.6, VALDRAKKEN },
					["timeline"] = { ADDED_10_2_0 },
				}),
			}),
		},
	}),
})));