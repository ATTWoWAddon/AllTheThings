-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------
local function GenerateRewardsSymlinkForModID(factionHeader, modID, ...)
	local sym = {
		{"select", "headerID", WAR_EFFORT },	-- Find the War Effort Header
		{"find", "mapID", ARATHI_HIGHLANDS },	-- Find Arathi Highlands
		{"find", "headerID", COMMON_BOSS_DROPS},	-- Find the Common Boss Drop Header.
		{"find", "headerID", factionHeader},	-- Select the Faction Header.
		-- potential to select only specific sub-headers
		{"extract","sourceID"},	-- Extract Sources
		{"modID", modID},	-- Apply specific modID
	};
	if select("#",...) > 0 then
		table.insert(sym, 5, {"pop"})
		table.insert(sym, 6, {"whereany","headerID",...})
	end
	return sym
end
local function GenerateSharedRewardsSymlinkForModID(modID, ...)
	local sym = {
		{"select", "headerID", WAR_EFFORT },	-- Find the War Effort Header
		{"find", "mapID", ARATHI_HIGHLANDS },	-- Find Arathi Highlands
		{"find", "headerID", COMMON_BOSS_DROPS},	-- Find the Common Boss Drop Header.
		{"pop"},	-- Pop the CBD header.
		{"pop"},	-- Pop both Faction Headers.
		-- potential to select only specific sub-headers
		{"extract","sourceID"},	-- Extract Sources
		{"modID", modID},	-- Apply specific modID
	};
	if select("#",...) > 0 then
		table.insert(sym, 6, {"whereany","headerID",...})
	end
	return sym
end
local ALLIANCE_WARFRONT_BACKS = {
	i(163355, {	-- 7th Legionnaire's Bloody Drape
		["classes"] = PLATE_CLASSES,
	}),
	i(163351, {	-- 7th Legionnaire's Chain Drape
		["classes"] = MAIL_CLASSES,
	}),
	i(163347, {	-- 7th Legionnaire's Long Cloak
		["classes"] = LEATHER_CLASSES,
	}),
	i(163246, {	-- 7th Legionnaire's Silk Cloak
		["classes"] = CLOTH_CLASSES,
	}),
}
local ALLIANCE_WARFRONT_ARMOR = {
	i(163339),	-- 7th Legionnaire's Hood
	i(163337),	-- 7th Legionnaire's Amice
	i(163248),	-- 7th Legionnaire's Robes
	i(163275),	-- 7th Legionnaire's Cuffs
	i(163341),	-- 7th Legionnaire's Handwraps
	i(163342),	-- 7th Legionnaire's Cord
	i(163264),	-- 7th Legionnaire's Legwraps
	i(163253),	-- 7th Legionnaire's Slippers
	i(163380),	-- 7th Legionnaire's Visage
	i(163377),	-- 7th Legionnaire's Leather Mantle
	i(163251),	-- 7th Legionnaire's Vest
	i(163278),	-- 7th Legionnaire's Bracers
	i(163256),	-- 7th Legionnaire's Gloves
	i(163384),	-- 7th Legionnaire's Buckle
	i(163266),	-- 7th Legionnaire's Britches
	i(163383),	-- 7th Legionnaire's Boots
	i(163394),	-- 7th Legionnaire's Helm
	i(163389),	-- 7th Legionnaire's Monnion
	i(163398),	-- 7th Legionnaire's Chainmail
	i(163277),	-- 7th Legionnaire's Bindings
	i(163397),	-- 7th Legionnaire's Handguards
	i(163401),	-- 7th Legionnaire's Cincture
	i(163265),	-- 7th Legionnaire's Leggings
	i(163400),	-- 7th Legionnaire's Sabatons
	i(163410),	-- 7th Legionnaire's Headpiece
	i(163405),	-- 7th Legionnaire's Shoulderplates
	i(163418),	-- 7th Legionnaire's Chestguard
	i(163403),	-- 7th Legionnaire's Armguards
	i(163414),	-- 7th Legionnaire's Gauntlets
	i(163422),	-- 7th Legionnaire's Greatbelt
	i(163409),	-- 7th Legionnaire's Legguards
	i(163421),	-- 7th Legionnaire's Greaves
}
local ALLIANCE_WARFRONT_WEAPONS = {
	i(163891),	-- 7th Legionnaire's Aegis
	i(163884),	-- 7th Legionnaire's Battle Hammer
	i(163892),	-- 7th Legionnaire's Censer
	i(163890),	-- 7th Legionnaire's Claymore
	i(163882),	-- 7th Legionnaire's Dagger
	i(163885),	-- 7th Legionnaire's Halberd
	i(163889),	-- 7th Legionnaire's Hand Cannon
	i(163881),	-- 7th Legionnaire's Longbow
	i(163887),	-- 7th Legionnaire's Longsword
	i(163895),	-- 7th Legionnaire's Shield
	i(166336),	-- 7th Legionnaire's Skullcleaver
	i(163894),	-- 7th Legionnaire's Spellhammer
	i(163886),	-- 7th Legionnaire's Stave
	i(163888),	-- 7th Legionnaire's Wand
	i(163893),	-- 7th Legionnaire's Warglaive
	i(163883),	-- 7th Legionnaire's Warhammer
}
local HORDE_WARFRONT_BACKS = {
	i(163357, {	-- Honorbound Artificer's Cloak
		["classes"] = CLOTH_CLASSES,
	}),
	i(163368, {	-- Honorbound Centurion's Long Cloak
		["classes"] = PLATE_CLASSES,
	}),
	i(163360, {	-- Honorbound Outrider's Drape
		["classes"] = LEATHER_CLASSES,
	}),
	i(163366, {	-- Honorbound Vanguard's Cloak
		["classes"] = MAIL_CLASSES,
	}),
}
local HORDE_WARFRONT_ARMOR = {
	i(163426),	-- Honorbound Artificer's Guise
	i(163424),	-- Honorbound Artificer's Amice
	i(163280),	-- Honorbound Artificer's Robes
	i(163306),	-- Honorbound Artificer's Cuffs
	i(163428),	-- Honorbound Artificer's Mitts
	i(163430),	-- Honorbound Artificer's Cord
	i(163296),	-- Honorbound Artificer's Legwraps
	i(163285),	-- Honorbound Artificer's Sandals
	i(163435),	-- Honorbound Outrider's Headpiece
	i(163432),	-- Honorbound Outrider's Shoulderguards
	i(163283),	-- Honorbound Outrider's Tunic
	i(163309),	-- Honorbound Outrider's Bracers
	i(163437),	-- Honorbound Outrider's Gloves
	i(163439),	-- Honorbound Outrider's Buckle
	i(163298),	-- Honorbound Outrider's Pants
	i(163438),	-- Honorbound Outrider's Boots
	i(163446),	-- Honorbound Vanguard's Skullguard
	i(163441),	-- Honorbound Vanguard's Shoulderguards
	i(163282),	-- Honorbound Vanguard's Chainmail
	i(163308),	-- Honorbound Vanguard's Bindings
	i(163448),	-- Honorbound Vanguard's Handguards
	i(163451),	-- Honorbound Vanguard's Clasp
	i(163445),	-- Honorbound Vanguard's Leggings
	i(163449),	-- Honorbound Vanguard's Sabatons
	i(163456),	-- Honorbound Centurion's Greathelm
	i(163453),	-- Honorbound Centurion's Shoulderplates
	i(163459),	-- Honorbound Centurion's Breastplate
	i(163307),	-- Honorbound Centurion's Vambraces
	i(163458),	-- Honorbound Centurion's Gauntlets
	i(163461),	-- Honorbound Centurion's Greatbelt
	i(163455),	-- Honorbound Centurion's Legplates
	i(163460),	-- Honorbound Centurion's Greaves
}
local HORDE_WARFRONT_WEAPONS = {
	i(163878),	-- Honorbound Barrier
	i(163870),	-- Honorbound Bonebreaker
	i(163868),	-- Honorbound Dagger
	i(163874),	-- Honorbound Decapitator
	i(163876),	-- Honorbound Focus
	i(163880),	-- Honorbound Gladius
	i(163867),	-- Honorbound Longbow
	i(163871),	-- Honorbound Pigsticker
	i(163879),	-- Honorbound Portable Cannon
	i(163875),	-- Honorbound Protectorate
	i(163866),	-- Honorbound Skullcleaver
	i(163869),	-- Honorbound Skullcrusher
	i(163873),	-- Honorbound Wand
	i(163872),	-- Honorbound War Staff
	i(163877),	-- Honorbound Warglaive
	i(166337),	-- Honorbound Warhammer
}
root(ROOTS.ExpansionFeatures,
	expansion(EXPANSION.BFA, {
		n(WAR_EFFORT, {
			m(ARATHI_HIGHLANDS, {	-- Outdoor Warfront-Phased Content
				-- This redirects the mini list to use this header instead when this quest is NOT active and the original mapID is the map that is is currently active
				["zone-artIDs"] = {
					1137,	-- Alliance and during an Alliance Controlled day
				},
				["icon"] = 236712,
				["timeline"] = { ADDED_8_0_1_LAUNCH },
				["crs"] = {
					141649,	-- Zidormi
				},
				["groups"] = {
					n(WORLD_BOSSES, {
						["isRaid"] = true,
						["modID"] = 3,	-- This will inherently apply to all items within.
						["groups"] = {
							e(2213, {	-- Doom's Howl [Warfront]
								["creatureID"] = 138122,	-- Doom's Howl
								["questID"] = 52847,	-- Doom's Howl (WQ)
								["coord"] = { 37.8, 40.2, ARATHI_HIGHLANDS },
								["races"] = ALLIANCE_ONLY,
								["isWeekly"] = true,
								["isRaid"] = true,
								["g"] = {
									i(163195),	-- Schematic: Makeshift Azerite Detector (RECIPE!)
									i(163828),	-- Toy Siege Tower (TOY!)
									i(161464),	-- Alliance Bowman's Coif
									i(161466),	-- Battlemage's Collar
									i(161468),	-- Gilded-Wing Shoulderguards
									i(161471),	-- Lion's Roar Pauldrons
									i(161465),	-- Warcaster's Arcane Mantle
									i(161470),	-- Polished Shieldbearer's Breastplate
									i(161469),	-- Sharpshooter's Chainmail Hauberk
									i(161467),	-- Vest of the Veiled Gryphon
									i(161472),	-- Lion's Grace
									i(161473),	-- Lion's Guile
									i(161474),	-- Lion's Strength
								},
							}),
							e(2212, {	-- The Lion's Roar [Warfront]
								["creatureID"] = 137374,	-- The Lion's Roar
								["questID"] = 52848,	-- The Lion's Roar (WQ)
								["coord"] = { 35.5, 38.9, ARATHI_HIGHLANDS },
								["races"] = HORDE_ONLY,
								["isWeekly"] = true,
								["isRaid"] = true,
								["g"] = {
									i(163195),	-- Schematic: Makeshift Azerite Detector (RECIPE!)
									i(163829),	-- Toy War Machine (TOY!)
									i(161455),	-- Battlemage's Collar
									i(161453),	-- Warscout's Horned Helm
									i(161457),	-- Dire-Tooth Spaulders
									i(161460),	-- Spiked Dreadshield Pauldrons
									i(161454),	-- Warcaster's Doom Mantle
									i(161456),	-- Doom's Howl Vest
									i(161459),	-- Molded War Machine Grill
									i(161458),	-- Scalemail Battle Harness
									i(161463),	-- Doom's Fury
									i(161461),	-- Doom's Hatred
									i(161462),	-- Doom's Wake
								},
							}),
						},
					}),
					n(COMMON_BOSS_DROPS, {
						["description"] = "These items can drop off any rare.",
						["modID"] = 5,	-- This will inherently apply to all items within.
						["crs"] = {
							142709,	-- Beastrider Kama
							142508,	-- Branchlord Aldrus
							141615,	-- Burning Goliath
							141618,	-- Cresting Goliath
							142688,	-- Darbel Montrose
							142741,	-- Doomrider Helgrim
							141668,	-- Echo of Myzrael
							142686,	-- Foulbelly
							142433,	-- Fozruk
							142662,	-- Geomancer Flintdagger
							142725,	-- Horrific Apparition
							142739,	-- Knight-Captaian Aldrin
							142112,	-- Kor'gresh Coldrage
							142684,	-- Kovork
							142716,	-- Man-Hunter Rog
							141942,	-- Molok the Crusher
							142692,	-- Nimar the Slayer
							142423,	-- Overseer Krix
							142435,	-- Plaguefeather
							142436,	-- Ragebeak
							141620,	-- Rumbling Goliatah
							142683,	-- Ruul Onestone
							142690,	-- Singer
							142437,	-- Skullripper
							141616,	-- Thundering Goliath
							142438,	-- Venomarus
							142440,	-- Yogursa
							142682,	-- Zalas Witherbark <Warband Leader>
						},
						["g"] = {
							-- Alliance
							n(FACTION_HEADER_ALLIANCE, { n(BACK, clone(ALLIANCE_WARFRONT_BACKS))}),
							n(FACTION_HEADER_ALLIANCE, { n(ARMOR, clone(ALLIANCE_WARFRONT_ARMOR))}),
							n(FACTION_HEADER_ALLIANCE, { n(WEAPONS, clone(ALLIANCE_WARFRONT_WEAPONS))}),
							-- Horde
							n(FACTION_HEADER_HORDE, { n(BACK, clone(HORDE_WARFRONT_BACKS))}),
							n(FACTION_HEADER_HORDE, { n(ARMOR, clone(HORDE_WARFRONT_ARMOR))}),
							n(FACTION_HEADER_HORDE, { n(WEAPONS, clone(HORDE_WARFRONT_WEAPONS))}),
						},
					}),
					n(RARES, {
						n(142709, {	-- Beastrider Kama
							["allianceQuestID"] = 53083,	-- Beastrider Kama [Alliance]
							["hordeQuestID"] = 53504,	-- Beastrider Kama [Horde]
							["isWeekly"] = true,
							["coord"] = { 65.3, 70.6, ARATHI_HIGHLANDS },
							["g"] = {
								i(163644),	-- Swift Albino Raptor (MOUNT!)
							},
						}),
						n(142508, {	-- Branchlord Aldrus
							["allianceQuestID"] = 53013,	-- Branchlord Aldrus [Alliance]
							["hordeQuestID"] = 53505,	-- Branchlord Aldrus [Horde]
							["isWeekly"] = true,
							["coord"] = { 22.9, 22.2, ARATHI_HIGHLANDS },
							["g"] = {
								i(163650),	-- Aldrusian Sproutling (PET!)
							},
						}),
						n(141615, {	-- Burning Goliath
							["allianceQuestID"] = 53017,	-- Burning Goliath [Alliance]
							["hordeQuestID"] = 53506,	-- Burning Goliath [Horde]
							["isWeekly"] = true,
							["coord"] = { 30.6, 44.7, ARATHI_HIGHLANDS },
							["g"] = {
								i(163691),	-- Burning Essence
							},
						}),
						n(141618, {	-- Cresting Goliath
							["allianceQuestID"] = 53018,	-- Cresting Goliath [Alliance]
							["hordeQuestID"] = 53531,	-- Cresting Goliath [Horde]
							["isWeekly"] = true,
							["coord"] = { 61.8, 31.2, ARATHI_HIGHLANDS },
							["g"] = {
								i(163700),	-- Cresting Essence
							},
						}),
						n(142688, {	-- Darbel Montrose
							["allianceQuestID"] = 53084,	-- Darbel Montrose [Alliance]
							["hordeQuestID"] = 53507,	-- Darbel Montrose [Horde]
							["description"] = "Spawns at the northern point when Alliance-controlled and the southern point when Horde-controlled.",
							["isWeekly"] = true,
							["coords"] = {
								{ 50.4, 61.2, ARATHI_HIGHLANDS },	-- Horde-controlled
								{ 50.7, 36.5, ARATHI_HIGHLANDS },	-- Alliance-controlled
							},
							["g"] = {
								i(163652),	-- Voidwiggler (PET!)
							},
						}),
						n(142741, {	-- Doomrider Helgrim (Alliance-only)
							["questID"] = 53085,	-- Doomrider Helgrim
							["races"] = ALLIANCE_ONLY,
							["isWeekly"] = true,
							["coord"] = { 53.8, 58.2, ARATHI_HIGHLANDS },
							["description"] = "Only shows up when Alliance-controlled.",
							["g"] = {
								i(163579),	-- Highland Mustang (MOUNT!)
							},
						}),
						n(141668, {	-- Echo of Myzrael
							["allianceQuestID"] = 53059,	-- Echo of Myzrael [Alliance]
							["hordeQuestID"] = 53508,	-- Echo of Myzrael [Horde]
							["isWeekly"] = true,
							["coord"] = { 57.0, 34.6, ARATHI_HIGHLANDS },
							["g"] = {
								i(163677),	-- Teeny Titan Orb (PET!)
							},
						}),
						n(142686, {	-- Foulbelly
							["allianceQuestID"] = 53086,	-- Foulbelly [Alliance]
							["hordeQuestID"] = 53509,	-- Foulbelly [Horde]
							["description"] = "Spawns at the back of the cave.",
							["isWeekly"] = true,
							["coord"] = { 28.6, 45.6, ARATHI_HIGHLANDS },	-- Cave Entrance
							["g"] = {
								i(163735),	-- Foulbelly (TOY!)
							},
						}),
						n(142433, {	-- Fozruk
							["allianceQuestID"] = 53019,	-- Fozruk [Alliance]
							["hordeQuestID"] = 53510,	-- Fozruk [Horde]
							["isWeekly"] = true,
							["coords"] = {
								{ 59.4, 27.5, ARATHI_HIGHLANDS },	-- Top
								{ 54.0, 55.4, ARATHI_HIGHLANDS },	-- Bottom
							},
							["g"] = {
								i(163711),	-- Fozling (PET!)
							},
						}),
						n(142662, {	-- Geomancer Flintdagger
							["allianceQuestID"] = 53060,	-- Geomancer Flintdagger [Alliance]
							["hordeQuestID"] = 53511,	-- Geomancer Flintdagger [Horde]
							["description"] = "Spawns at the back of the cave.",
							["isWeekly"] = true,
							["coord"] = { 78.1, 36.7, ARATHI_HIGHLANDS },
							["g"] = {
								i(163713),	-- Brazier Cap (TOY!)
							},
						}),
						n(142725, {	-- Horrific Apparition
							["allianceQuestID"] = 53087,	-- Horrific Apparition [Alliance]
							["hordeQuestID"] = 53512,	-- Horrific Apparition [Horde]
							["description"] = "Spawns at the northern point when Alliance-controlled and the southern point when Horde-controlled.",
							["isWeekly"] = true,
							["coords"] = {
								{ 19.5, 60.9, ARATHI_HIGHLANDS },	-- Horde-controlled
								{ 26.7, 32.6, ARATHI_HIGHLANDS },	-- Alliance-controlled
							},
							["g"] = {
								i(163736),	-- Spectral Visage (TOY!)
							},
						}),
						n(142739, {	-- Knight-Captaian Aldrin
							["questID"] = 53088,	-- Knight-Captaian Aldrin
							["isWeekly"] = true,
							["coord"] = { 49.0, 40.0, ARATHI_HIGHLANDS },
							["races"] = HORDE_ONLY,
							["description"] = "Only shows up when Horde-controlled.",
							["g"] = {
								i(163578),	-- Broken Highland Mustang (MOUNT!)
							},
						}),
						n(142112, {	-- Kor'gresh Coldrage
							["allianceQuestID"] = 53058,	-- Kor'gresh Coldrage [Alliance]
							["hordeQuestID"] = 53513,	-- Kor'gresh Coldrage [Horde]
							["description"] = "Spawns at the back of the cave.",
							["isWeekly"] = true,
							["coord"] = { 48.2, 79.8, ARATHI_HIGHLANDS },
							["g"] = {
								i(163744),	-- Coldrage's Cooler (TOY!)
							},
						}),
						n(142684, {	-- Kovork
							["allianceQuestID"] = 53089,	-- Kovork [Alliance]
							["hordeQuestID"] = 53514,	-- Kovork [Horde]
							["description"] = "Spawns at the front of the cave.",
							["isWeekly"] = true,
							["coord"] = { 28.6, 45.6, ARATHI_HIGHLANDS },	-- Cave Entrance
							["g"] = {
								i(163750),	-- Kovork Kostume (TOY!)
							},
						}),
						n(142716, {	-- Man-Hunter Rog
							["allianceQuestID"] = 53090,	-- Man-Hunter Rog [Alliance]
							["hordeQuestID"] = 53515,	-- Man-Hunter Rog [Horde]
							["isWeekly"] = true,
							["crs"] = { 142717 },	-- SQUAAWK!
							["coord"] = { 51.8, 75.1, ARATHI_HIGHLANDS },
							["g"] = {
								i(163712),	-- Squawkling (PET!)
							},
						}),
						n(141942, {	-- Molok the Crusher
							["allianceQuestID"] = 53057,	-- Molok the Crusher [Alliance]
							["hordeQuestID"] = 53516,	-- Molok the Crusher [Horde]
							["isWeekly"] = true,
							["coord"] = { 47.6, 77.9, ARATHI_HIGHLANDS },
							["g"] = {
								i(163775),	-- Molok Morion (TOY!)
							},
						}),
						n(142692, {	-- Nimar the Slayer
							["allianceQuestID"] = 53091,	-- Nimar the Slayer [Alliance]
							["hordeQuestID"] = 53517,	-- Nimar the Slayer [Horde]
							["isWeekly"] = true,
							["coord"] = { 67.5, 61.0, ARATHI_HIGHLANDS },
							["g"] = {
								i(163706),	-- Witherbark Direwing (MOUNT!)
							},
						}),
						n(142423, {	-- Overseer Krix
							["allianceQuestID"] = 53014,	-- Overseer Krix [Alliance]
							["hordeQuestID"] = 53518,	-- Overseer Krix [Horde]
							["description"] = "Spawns at the back of the northern cave for Alliance and the southern cave for Horde.",
							["isWeekly"] = true,
							["coords"] = {
								{ 33.7, 36.7, ARATHI_HIGHLANDS },	-- Horde-controlled
								{ 27.4, 55.8, ARATHI_HIGHLANDS },	-- Alliance-controlled
							},
							["g"] = {
								i(163646),	-- Lil' Donkey (MOUNT!)
							},
						}),
						n(142435, {	-- Plaguefeather
							["allianceQuestID"] = 53020,	-- Plaguefeather [Alliance]
							["hordeQuestID"] = 53519,	-- Plaguefeather [Horde]
							["isWeekly"] = true,
							["coord"] = { 36.4, 62.8, ARATHI_HIGHLANDS },
							["g"] = {
								i(163690),	-- Foulfeather (PET!)
							},
						}),
						n(142436, {	-- Ragebeak
							["allianceQuestID"] = 53016,	-- Ragebeak [Alliance]
							["hordeQuestID"] = 53522,	-- Ragebeak [Horde]
							["description"] = "Spawns at the northern point when Alliance-controlled and the southern point when Horde-controlled.",
							["isWeekly"] = true,
							["coords"] = {
								{ 11.9, 52.1, ARATHI_HIGHLANDS },	-- Horde-controlled
								{ 18.5, 27.8, ARATHI_HIGHLANDS },	-- Alliance-controlled
							},
							["g"] = {
								i(163689),	-- Ragepeep (PET!)
							},
						}),
						n(141620, {	-- Rumbling Goliath
							["allianceQuestID"] = 53021,	-- Rumbling Goliath [Alliance]
							["hordeQuestID"] = 53523,	-- Rumbling Goliath [Horde]
							["isWeekly"] = true,
							["coord"] = { 29.7, 60.0, ARATHI_HIGHLANDS },
							["g"] = {
								i(163701),	-- Rumbling Essence
							},
						}),
						n(142683, {	-- Ruul Onestone
							["allianceQuestID"] = 53092,	-- Ruul Onestone [Alliance]
							["hordeQuestID"] = 53524,	-- Ruul Onestone [Horde]
							["isWeekly"] = true,
							["coord"] = { 42.8, 56.4, ARATHI_HIGHLANDS },
							["g"] = {
								i(163741),	-- Magic Fun Rock (TOY!)
							},
						}),
						n(142690, {	-- Singer
							["allianceQuestID"] = 53093,	-- Singer [Alliance]
							["hordeQuestID"] = 53525,	-- Singer [Horde]
							["description"] = "Spawns at the northern point when Alliance-controlled and the southern point when Horde-controlled.",
							["isWeekly"] = true,
							["coords"] = {
								{ 50.4, 57.6, ARATHI_HIGHLANDS },	-- Horde-controlled
								{ 51.1, 39.9, ARATHI_HIGHLANDS },	-- Alliance-controlled
							},
							["g"] = {
								i(163738),	-- Syndicate Mask (TOY!)
							},
						}),
						n(142437, {	-- Skullripper
							["allianceQuestID"] = 53022,	-- Skullripper [Alliance]
							["hordeQuestID"] = 53526,	-- Skullripper [Horde]
							["isWeekly"] = true,
							["coord"] = { 56.8, 45.1, ARATHI_HIGHLANDS },
							["g"] = {
								i(163645),	-- Skullripper (MOUNT!)
							},
						}),
						n(141616, {	-- Thundering Goliath
							["allianceQuestID"] = 53023,	-- Thundering Goliath [Alliance]
							["hordeQuestID"] = 53527,	-- Thundering Goliath [Horde]
							["isWeekly"] = true,
							["coord"] = { 46.3, 52.0, ARATHI_HIGHLANDS },
							["g"] = {
								i(163698),	-- Thundering Essence
							},
						}),
						n(142438, {	-- Venomarus
							["allianceQuestID"] = 53024,	-- Venomarus [Alliance]
							["hordeQuestID"] = 53528,	-- Venomarus [Horde]
							["isWeekly"] = true,
							["coord"] = { 56.7, 54.1, ARATHI_HIGHLANDS },
							["g"] = {
								i(163648),	-- Fuzzy Creepling (PET!)
							},
						}),
						n(142440, {	-- Yogursa
							["allianceQuestID"] = 53015,	-- Yogursa [Alliance]
							["hordeQuestID"] = 53529,	-- Yogursa [Horde]
							["isWeekly"] = true,
							["coord"] = { 14.0, 36.9, ARATHI_HIGHLANDS },
							["g"] = {
								i(163684),	-- Scabby (PET!)
							},
						}),
						n(142682, {	-- Zalas Witherbark <Warband Leader>
							["allianceQuestID"] = 53094,	-- Zalas Witherbark <Warband Leader> [Alliance]
							["hordeQuestID"] = 53530,	-- Zalas Witherbark <Warband Leader> [Horde]
							["description"] = "Spawns in the middle of the cave.",
							["isWeekly"] = true,
							["coord"] = { 63.2, 77.6, ARATHI_HIGHLANDS },
							["g"] = {
								i(163745),	-- Witherbark Gong (TOY!)
							},
						}),
					}),
					n(WORLD_QUESTS, bubbleDown({ isWorldQuest = true }, {
						q(54573, {	-- Beastrider Kama (A)
							["races"] = ALLIANCE_ONLY,
						}),
						q(54544, {	-- Beastrider Kama (H)
							["races"] = HORDE_ONLY,
						}),
						q(54623, {	-- Boulderfist Beatdown (A)
							["races"] = ALLIANCE_ONLY,
						}),
						q(54616, {	-- Boulderfist Beatdown (H)
							["races"] = HORDE_ONLY,
						}),
						q(54578, {	-- Branchlord Aldrus (A)
							["races"] = ALLIANCE_ONLY,
						}),
						q(54568, {	-- Branchlord Aldrus (H)
							["races"] = HORDE_ONLY,
						}),
						q(54608, {	-- Burning Goliath (A)
							["races"] = ALLIANCE_ONLY,
						}),
						q(54583, {	-- Burning Goliath (H)
							["races"] = HORDE_ONLY,
						}),
						q(54607, {	-- Cresting Goliath (A)
							["races"] = ALLIANCE_ONLY,
						}),
						q(54584, {	-- Cresting Goliath (H)
							["races"] = HORDE_ONLY,
						}),
						q(54572, {	-- Darbel Montrose (A)
							["races"] = ALLIANCE_ONLY,
						}),
						q(54547, {	-- Darbel Montrose (H)
							["races"] = HORDE_ONLY,
						}),
						q(54620, {	-- Death to The Defilers (A)
							["races"] = ALLIANCE_ONLY,
						}),
						q(54540, {	-- Doomrider Helgrim (A)
							["races"] = ALLIANCE_ONLY,
						}),
						q(54606, {	-- Echo of Myzrael (A)
							["races"] = ALLIANCE_ONLY,
						}),
						q(54585, {	-- Echo of Myzrael (H)
							["races"] = HORDE_ONLY,
						}),
						q(54622, {	-- Executing Exorcisms (A)
							["races"] = ALLIANCE_ONLY,
						}),
						q(54614, {	-- Executing Exorcisms (H)
							["races"] = HORDE_ONLY,
						}),
						q(54571, {	-- Foulbelly (A)
							["races"] = ALLIANCE_ONLY,
						}),
						q(54548, {	-- Foulbelly (H)
							["races"] = HORDE_ONLY,
						}),
						q(54605, {	-- Fozruk (A)
							["races"] = ALLIANCE_ONLY,
						}),
						q(54586, {	-- Fozruk (H)
							["races"] = HORDE_ONLY,
						}),
						q(54570, {	-- Geomancer Flintdagger (A)
							["races"] = ALLIANCE_ONLY,
						}),
						q(54552, {	-- Geomancer Flintdagger (H)
							["races"] = HORDE_ONLY,
						}),
						q(54569, {	-- Horrific Apparition(A)
							["races"] = ALLIANCE_ONLY,
						}),
						q(54542, {	-- Horrific Apparition (H)
							["races"] = HORDE_ONLY,
						}),
						q(54541, {	-- Knight-Captain Aldrin (H)
							["races"] = HORDE_ONLY,
						}),
						q(54567, {	-- Kor'gresh Coldrage(A)
							["races"] = ALLIANCE_ONLY,
						}),
						q(54553, {	-- Kor'gresh Coldrage (H)
							["races"] = HORDE_ONLY,
						}),
						q(54566, {	-- Kovork (A)
							["races"] = ALLIANCE_ONLY,
						}),
						q(54549, {	-- Kovork (H)
							["races"] = HORDE_ONLY,
						}),
						q(54565, {	-- Man-Hunter Rog (A)
							["races"] = ALLIANCE_ONLY,
						}),
						q(54543, {	-- Man-Hunter Rog (H)
							["races"] = HORDE_ONLY,
						}),
						q(54604, {	-- Molok the Crusher (A)
							["races"] = ALLIANCE_ONLY,
						}),
						q(54587, {	-- Molok the Crusher (H)
							["races"] = HORDE_ONLY,
						}),
						q(54564, {	-- Nimar the Slayer (A)
							["races"] = ALLIANCE_ONLY,
						}),
						q(54545, {	-- Nimar the Slayer (H)
							["races"] = HORDE_ONLY,
						}),
						q(54603, {	-- Overseer krix (A)
							["races"] = ALLIANCE_ONLY,
						}),
						q(54588, {	-- Overseer Krix (H)
							["races"] = HORDE_ONLY,
						}),
						q(54602, {	-- Plaguefeather (A)
							["races"] = ALLIANCE_ONLY,
						}),
						q(54589, {	-- Plaguefeather (H)
							["races"] = HORDE_ONLY,
						}),
						q(54601, {	-- Ragebeak (A)
							["races"] = ALLIANCE_ONLY,
						}),
						q(54590, {	-- Ragebeak (H)
							["races"] = HORDE_ONLY,
						}),
						q(54600, {	-- Rumbling Goliath (A)
							["races"] = ALLIANCE_ONLY,
						}),
						q(54591, {	-- Rumbling Goliath (H)
							["races"] = HORDE_ONLY,
						}),
						q(54563, {	-- Ruul Onestone (A)
							["races"] = ALLIANCE_ONLY,
						}),
						q(54550, {	-- Ruul Onestone (H)
							["races"] = HORDE_ONLY,
						}),
						q(54562, {	-- Singer (A)
							["races"] = ALLIANCE_ONLY,
						}),
						q(54546, {	-- Singer (H)
							["races"] = HORDE_ONLY,
						}),
						q(54624, {	-- Sins of the Syndicate (A)
							["races"] = ALLIANCE_ONLY,
						}),
						q(54617, {	-- Sins of the Syndicate (H)
							["races"] = HORDE_ONLY,
						}),
						q(54599, {	-- Skullripper (A)
							["races"] = ALLIANCE_ONLY,
						}),
						q(54592, {	-- Skullripper (H)
							["races"] = HORDE_ONLY,
						}),
						q(54615, {	-- The League Will Lose (H)
							["races"] = HORDE_ONLY,
						}),
						q(54598, {	-- Thundering Goliath (A)
							["races"] = ALLIANCE_ONLY,
						}),
						q(54593, {	-- Thundering Goliath (H)
							["races"] = HORDE_ONLY,
						}),
						q(54621, {	-- Twice-Exiled (A)
							["races"] = ALLIANCE_ONLY,
						}),
						q(54613, {	-- Twice-Exiled (H)
							["races"] = HORDE_ONLY,
						}),
						q(54597, {	-- Venomarus (A)
							["races"] = ALLIANCE_ONLY,
						}),
						q(54594, {	-- Venomarus (H)
							["races"] = HORDE_ONLY,
						}),
						q(54625, {	-- Wiping Out the Witherbark (A)
							["races"] = ALLIANCE_ONLY,
						}),
						q(54619, {	-- Wiping Out the Witherbark (H)
							["races"] = HORDE_ONLY,
						}),
						q(54596, {	-- Yogursa (A)
							["races"] = ALLIANCE_ONLY,
						}),
						q(54595, {	-- Yogursa (H)
							["races"] = HORDE_ONLY,
						}),
						q(54561, {	-- Zalas Witherbark (A)
							["races"] = ALLIANCE_ONLY,
						}),
						q(54551, {	-- Zalas Witherbark (H)
							["races"] = HORDE_ONLY,
						}),
					})),
					n(WARFRONT_BATTLE_FOR_STROMGARDE, {	-- Completely separate, distinct Warfont scenario
						["lore"] = "Located in the Arathi Highlands, Stromgarde is one of the key locations in the struggle for controlling of the Eastern Kingdoms. For the Alliance, Stromgarde sits in a critical defensive position. Following the battle for Lordaeron, the Horde threat still looms over the continent and holding Stromgarde will be key if you hope to keep the Horde's aggression at bay.\n\nFor the Horde, securing Stromgarde would set the stage for an assault on the heart of the Eastern Kingdoms and serve as a launching point for a campaign against the worgen of the kingdom of Gilneas. This location is also key in the defense of the blood elven capital, Silvermoon City, in the north.",
						["timeline"] = { ADDED_8_0_1_LAUNCH },
						["maps"] = {
							906, -- ???
							943, -- Actual Scenario [Horde]
							1044, -- Actual Scenario [Alliance]
							-- 1158, -- ???
							-- 1244, -- ???
						},
						["crs"] = {
							140552,	-- War Table (Alliance)
							131752,	-- War Table (Horde)
						},
						["lvl"] = {
							-- #if AFTER SHADOWLANDS
							50,
							-- #else
							120,
							-- #endif
						},
						["groups"] = {
							n(ACHIEVEMENTS, {	-- Achievements
								ach(12874, {	-- An Eventful Battle
									crit(42128),	-- Fozruk
									crit(42129),	-- Hostage Rescue
									crit(42130),	-- Lost Caravan
									crit(41364),	-- The Branchlord
									crit(42131),	-- Rumbling Goliath
									crit(42123),	-- Yogursa
									crit(42132),	-- Thundering Goliath
									crit(42124),	-- Plaguefeather
									crit(42125),	-- Ragebeak
									crit(42126),	-- Skullripper
									crit(42127),	-- Venomarus
									crit(42133),	-- Cresting Goliath
								}),
								ach(12993),	-- Don't Warfront Me
								ach(13739, {	-- Heroic: Tour of War (A)
									["races"] = ALLIANCE_ONLY,
									["g"] = {
										crit(45806),	-- Eitrigg
										crit(45813),	-- Lady Liadrin
										crit(45814),	-- Rokhan
									},
								}),
								ach(13738, {	-- Heroic: Tour of War (H)
									["races"] = HORDE_ONLY,
									["g"] = {
										crit(45802),	-- Danath Trollbane
										crit(45803),	-- Turalyon
										crit(45804),	-- Muradin
									},
								}),
								ach(13737, {	-- Heroic: War is Hell (A)
									["races"] = ALLIANCE_ONLY,
								}),
								ach(13735, {	-- Heroic: War is Hell (H)
									["races"] = HORDE_ONLY,
								}),
								ach(12884, {	-- Leader of Troops (A)
									["description"] = "You must personally create each troop.  Siege Engines are limited to 3 active at a time.",
									["races"] = ALLIANCE_ONLY,
									["g"] = {
										crit(41124),	-- Footmen
										crit(41125),	-- Riflemen
										crit(41126),	-- Priests
										crit(41127),	-- Knights
										crit(42138),	-- Siege Engine
									},
								}),
								ach(12878, {	-- Leader of Troops (H)
									["description"] = "You must personally create each troop.  Demolishers are limited to 3 active at a time.",
									["races"] = HORDE_ONLY,
									["g"] = {
										crit(41120),	-- Grunts
										crit(41121),	-- Axe Throwers
										crit(41122),	-- Shaman
										crit(41123),	-- Raiders
										crit(43403),	-- Demolishers
									},
								}),
								ach(12889, {	-- Strike Fast (A)
									["description"] = "You must personally capture each flag.",
									["races"] = ALLIANCE_ONLY,
									["g"] = {
										ach(12888, {	-- Strike Hard
											["races"] = ALLIANCE_ONLY,
										}),
										crit(41130),	-- Galson's Lode
										crit(41131),	-- Highlands Mill
										crit(41132),	-- Valorcall Pass
										crit(41133),	-- High Perch
										crit(41134),	-- Newstead
										crit(41135),	-- Circle of Elements
										crit(41136),	-- Northfold Crossing
									},
								}),
								ach(12876, {	-- Strike Fast (H)
									["description"] = "You must personally capture each flag.",
									["races"] = HORDE_ONLY,
									["g"] = {
										ach(12877, {	-- Strike Hard
											["races"] = HORDE_ONLY,
										}),
										crit(41111),	-- Circle of Elements
										crit(41113),	-- Hatchet Ridge
										crit(41114),	-- High Perch
										crit(41115),	-- Northfold Crossing
										crit(41116),	-- Newstead
										crit(41117),	-- Valorcall Pass
										crit(41118),	-- Drywhisker Mine
									},
								}),
								ach(12886, {	-- Tour of War (A)
									["description"] = "Only one commander is up per warfront cycle.",
									["races"] = ALLIANCE_ONLY,
									["g"] = {
										crit(43480),	-- Eitrigg
										crit(42134),	-- Lady Liadrin
										crit(42135),	-- Rokhan
									},
								}),
								ach(12879, {	-- Tour of War (H)
									["description"] = "Only one commander is up per warfront cycle.",
									["races"] = HORDE_ONLY,
									["g"] = {
										crit(43479),	-- Danath Trollbane
										crit(42136),	-- Turalyon
										crit(42137),	-- Muradin
									},
								}),
								ach(12881, {	-- War is Hell (A)
									["races"] = ALLIANCE_ONLY,
								}),
								ach(12873, {	-- War is Hell (H)
									["races"] = HORDE_ONLY,
								}),
							}),
							n(QUESTS, {
								q(53195, {	-- Arathi Donations: Akunda's Bite
									["provider"] = { "n", 142993 },	-- Chelsea Strand
									["coord"] = { 66.7, 23.5, BORALUS },
									["races"] = ALLIANCE_ONLY,
									["isWeekly"] = true,
								}),
								q(53228, {	-- Arathi Donations: Battle Flag: Phalanx Defense
									["provider"] = { "n", 142998 },	-- Faella
									["coord"] = { 67.1, 27.9, BORALUS },
									["races"] = ALLIANCE_ONLY,
									["isWeekly"] = true,
								}),
								q(53366, {	-- Arathi Donations: Battle Flag: Rallying Swiftness
									["provider"] = { "n", 142998 },	-- Faella
									["coord"] = { 67.1, 27.9, BORALUS },
									["races"] = ALLIANCE_ONLY,
									["isWeekly"] = true,
								}),
								q(53227, {	-- Arathi Donations: Battle Flag: Spirit of Freedom
									["provider"] = { "n", 142998 },	-- Faella
									["coord"] = { 67.1, 27.9, BORALUS },
									["races"] = ALLIANCE_ONLY,
									["isWeekly"] = true,
								}),
								q(53159, {	-- Arathi Donations: Coarse Leather
									["provider"] = { "n", 142995 },	-- Charlane
									["coord"] = { 67.2, 29.2, BORALUS },
									["races"] = ALLIANCE_ONLY,
									["isWeekly"] = true,
								}),
								q(53217, {	-- Arathi Donations: Coarse Leather Barding
									["provider"] = { "n", 142995 },	-- Charlane
									["coord"] = { 67.2, 29.2, BORALUS },
									["races"] = ALLIANCE_ONLY,
									["isWeekly"] = true,
								}),
								q(53211, {	-- Arathi Donations: Coastal Healing Potion
									["provider"] = { "n", 142993 },	-- Chelsea Strand
									["coord"] = { 66.7, 23.5, BORALUS },
									["races"] = ALLIANCE_ONLY,
									["isWeekly"] = true,
								}),
								q(53213, {	-- Arathi Donations: Coastal Mana Potion
									["provider"] = { "n", 142993 },	-- Chelsea Strand
									["coord"] = { 66.7, 23.5, BORALUS },
									["races"] = ALLIANCE_ONLY,
									["isWeekly"] = true,
								}),
								q(53240, {	-- Arathi Donations: Deadly Solstone
									["provider"] = { "n", 143004 },	-- Larold Kyne
									["coord"] = { 67.6, 24.1, BORALUS },
									["races"] = ALLIANCE_ONLY,
									["isWeekly"] = true,
								}),
								q(53363, {	-- Arathi Donations: Drums of the Maelstrom
									["provider"] = { "n", 142995 },	-- Charlane
									["coord"] = { 67.2, 29.2, BORALUS },
									["races"] = ALLIANCE_ONLY,
									["isWeekly"] = true,
								}),
								q(53229, {	-- Arathi Donations: Enchant Ring - Seal of Critical Strike
									["provider"] = { "n", 143007 },	-- Mae Wagglewand
									["coord"] = { 66.3, 25.1, BORALUS },
									["races"] = ALLIANCE_ONLY,
									["isWeekly"] = true,
								}),
								q(53230, {	-- Arathi Donations: Enchant Ring - Seal of Versatility
									["provider"] = { "n", 143007 },	-- Mae Wagglewand
									["coord"] = { 66.3, 25.1, BORALUS },
									["races"] = ALLIANCE_ONLY,
									["isWeekly"] = true,
								}),
								q(53234, {	-- Arathi Donations: F.R.I.E.D.
									["provider"] = { "n", 143008 },	-- Norber Togglesprocket
									["coord"] = { 66.3, 25.5, BORALUS },
									["races"] = ALLIANCE_ONLY,
									["isWeekly"] = true,
								}),
								q(53233, {	-- Arathi Donations: Frost-Laced Ammunition
									["provider"] = { "n", 143008 },	-- Norber Togglesprocket
									["coord"] = { 66.3, 25.5, BORALUS },
									["races"] = ALLIANCE_ONLY,
									["isWeekly"] = true,
								}),
								q(53231, {	-- Arathi Donations: Gloom Dust
									["provider"] = { "n", 143007 },	-- Mae Wagglewand
									["coord"] = { 66.3, 25.1, BORALUS },
									["races"] = ALLIANCE_ONLY,
									["isWeekly"] = true,
								}),
								q(53265, {	-- Arathi Donations: Gold
									["provider"] = { "n", 142685 },	-- Paymaster Vauldren
									["coord"] = { 66.2, 27.6, BORALUS },
									["races"] = ALLIANCE_ONLY,
									["isWeekly"] = true,
								}),
								q(53225, {	-- Arathi Donations: Great Sea Catfish
									["provider"] = { "n", 142997 },	-- Senedras
									["coord"] = { 67.0, 27.2, BORALUS },
									["races"] = ALLIANCE_ONLY,
									["isWeekly"] = true,
								}),
								q(53223, {	-- Arathi Donations: Grilled Catfish
									["provider"] = { "n", 142997 },	-- Senedras
									["coord"] = { 67.0, 27.2, BORALUS },
									["races"] = ALLIANCE_ONLY,
									["isWeekly"] = true,
								}),
								q(53232, {	-- Arathi Donations: Incendiary Ammunition
									["provider"] = { "n", 143008 },	-- Norber Togglesprocket
									["coord"] = { 66.3, 25.5, BORALUS },
									["races"] = ALLIANCE_ONLY,
									["isWeekly"] = true,
								}),
								q(53361, {	-- Arathi Donations: Meaty Haunch
									["provider"] = { "n", 142997 },	-- Senedras
									["coord"] = { 67.0, 27.2, BORALUS },
									["races"] = ALLIANCE_ONLY,
									["isWeekly"] = true,
								}),
								q(53218, {	-- Arathi Donations: Monel-Hardened Hoofplates
									["provider"] = { "n", 142994 },	-- Brandal Darkbeard
									["coord"] = { 66.0, 28.5, BORALUS },
									["races"] = ALLIANCE_ONLY,
									["isWeekly"] = true,
								}),
								q(53219, {	-- Arathi Donations: Monel-Hardened Stirrups
									["provider"] = { "n", 142994 },	-- Brandal Darkbeard
									["coord"] = { 66.0, 28.5, BORALUS },
									["races"] = ALLIANCE_ONLY,
									["isWeekly"] = true,
								}),
								q(53205, {	-- Arathi Donations: Monelite Ore
									["provider"] = { "n", 142994 },	-- Brandal Darkbeard
									["coord"] = { 66.0, 28.5, BORALUS },
									["races"] = ALLIANCE_ONLY,
									["isWeekly"] = true,
								}),
								q(53368, {	-- Arathi Donations: Organic Discombobulation Grenade
									["provider"] = { "n", 143008 },	-- Norber Togglesprocket
									["coord"] = { 66.3, 25.5, BORALUS },
									["races"] = ALLIANCE_ONLY,
									["isWeekly"] = true,
								}),
								q(53224, {	-- Arathi Donations: Seasoned Loins
									["provider"] = { "n", 142997 },	-- Senedras
									["coord"] = { 67.0, 27.2, BORALUS },
									["races"] = ALLIANCE_ONLY,
									["isWeekly"] = true,
								}),
								q(53216, {	-- Arathi Donations: Shimmerscale
									["provider"] = { "n", 142995 },	-- Charlane
									["coord"] = { 67.2, 29.2, BORALUS },
									["races"] = ALLIANCE_ONLY,
									["isWeekly"] = true,
								}),
								q(53360, {	-- Arathi Donations: Steelskin Potion
									["provider"] = { "n", 142993 },	-- Chelsea Strand
									["coord"] = { 66.7, 23.5, BORALUS },
									["races"] = ALLIANCE_ONLY,
									["isWeekly"] = true,
								}),
								q(53239, {	-- Arathi Donations: Straddling Viridium
									["provider"] = { "n", 143004 },	-- Larold Kyne
									["coord"] = { 67.6, 24.1, BORALUS },
									["races"] = ALLIANCE_ONLY,
									["isWeekly"] = true,
								}),
								q(53226, {	-- Arathi Donations: Tidespray Linen
									["provider"] = { "n", 142998 },	-- Faella
									["coord"] = { 67.1, 27.9, BORALUS },
									["races"] = ALLIANCE_ONLY,
									["isWeekly"] = true,
								}),
								q(53238, {	-- Arathi Donations: Versatile Kyanite
									["provider"] = { "n", 143004 },	-- Larold Kyne
									["coord"] = { 67.6, 24.1, BORALUS },
									["races"] = ALLIANCE_ONLY,
									["isWeekly"] = true,
								}),
								q(53334, {	-- Arathi Donations: War Resources
									["provider"] = { "n", 142700 },	-- Quartermaster Peregrin
									["coord"] = { 66.1, 27.2, BORALUS },
									["races"] = ALLIANCE_ONLY,
									["isWeekly"] = true,
								}),
								q(53237, {	-- Arathi Donations: War-Scroll of Battle Shout
									["provider"] = { "n", 143005 },	-- Liao
									["coord"] = { 67.5, 23.8, BORALUS },
									["races"] = ALLIANCE_ONLY,
									["isWeekly"] = true,
								}),
								q(53236, {	-- Arathi Donations: War-Scroll of Fortitude
									["provider"] = { "n", 143005 },	-- Liao
									["coord"] = { 67.5, 23.8, BORALUS },
									["races"] = ALLIANCE_ONLY,
									["isWeekly"] = true,
								}),
								q(53235, {	-- Arathi Donations: War-Scroll of Intellect
									["provider"] = { "n", 143005 },	-- Liao
									["coord"] = { 67.5, 23.8, BORALUS },
									["races"] = ALLIANCE_ONLY,
									["isWeekly"] = true,
								}),

								q(56136, {	-- Heroic Warfront: The Battle For Stromgarde [Tier 3]
									["provider"] = { "n", 142721 },	-- Ralston Karn <Recruitment Officer>
									["coord"] = { 66.01, 26.01, BORALUS },
									["races"] = ALLIANCE_ONLY,
									["isWeekly"] = true,
									["_drop"] = { "g" }, -- bnet api has horde box
									["g"] = {
										i(169197, {	-- Warfronts Equipment Cache
											n(BACK, {
												["sym"] = GenerateRewardsSymlinkForModID(FACTION_HEADER_ALLIANCE, 23, BACK),
											}),
											n(ARMOR, {
												["sym"] = GenerateRewardsSymlinkForModID(FACTION_HEADER_ALLIANCE, 23, ARMOR),
											}),
											n(WEAPONS, {
												["sym"] = GenerateRewardsSymlinkForModID(FACTION_HEADER_ALLIANCE, 23, WEAPONS),
											}),
										}),
									},
								}),
								q(53175, {	-- The Warfront Looms
									["races"] = ALLIANCE_ONLY,
									["isBreadcrumb"] = true,
									["lockCriteria"] = {1,"questID", 53206},	-- Battle for Stromgarde unlock flag (A)
									["DisablePartySync"] = true,
								}),
								q(53194, {	-- To The Front
									["provider"] = { "n", 142721 },		-- Ralston Karn
									["coord"] = { 65.89, 26.03, BORALUS },
									["lockCriteria"] = {1,"questID", 53206},	-- Battle for Stromgarde unlock flag (A)
									["sourceQuest"] = 53175,	-- The Warfront Looms
								}),
								q(53414, {	-- Warfront: The Battle For Stromgarde [Tier 3]
									["provider"] = { "n", 142721 },	-- Ralston Karn <Recruitment Officer>
									["coord"] = { 66.01, 26.01, BORALUS },
									["races"] = ALLIANCE_ONLY,
									["isWeekly"] = true,
									["_drop"] = { "g" }, -- bnet api has horde box
									["g"] = {
										i(164578, {	-- Warfronts Equipment Cache
											["modID"] = 6,
											["g"] = {
												n(BACK, clone(ALLIANCE_WARFRONT_BACKS)),
												n(ARMOR, clone(ALLIANCE_WARFRONT_ARMOR)),
												n(WEAPONS, {
													["sym"] = GenerateRewardsSymlinkForModID(FACTION_HEADER_ALLIANCE, 6, WEAPONS),
												}),
											},
										}),
									},
								}),
								q(53185, {	-- Warfront Contribution
									["provider"] = { "n", 142721 },	-- Ralston Karn
									["sourceQuest"] = 53194,	-- To The Front
									["coord"] = { 66.0, 26.0, BORALUS },
									["races"] = ALLIANCE_ONLY,
								}),


								-- Horde Contribution Quests
								q(52792, {	-- Arathi Donations: Akunda's Bite
									["provider"] = { "n", 142159 },	-- Zen'kin
									["coord"] = { 51.2, 95.5, DAZARALOR },
									["races"] = HORDE_ONLY,
									["isWeekly"] = true,
								}),
								q(53248, {	-- Arathi Donations: Battle Flag: Phalanx Defense
									["provider"] = { "n", 142975 },	-- Seamstress Vessa
									["coord"] = { 52.5, 93.3, DAZARALOR },
									["races"] = HORDE_ONLY,
									["isWeekly"] = true,
								}),
								q(53365, {	-- Arathi Donations: Battle Flag: Rallying Swiftness
									["provider"] = { "n", 142975 },	-- Seamstress Vessa
									["coord"] = { 52.5, 93.3, DAZARALOR },
									["races"] = HORDE_ONLY,
									["isWeekly"] = true,
								}),
								q(53247, {	-- Arathi Donations: Battle Flag: Spirit of Freedom
									["provider"] = { "n", 142975 },	-- Seamstress Vessa
									["coord"] = { 52.5, 93.3, DAZARALOR },
									["races"] = HORDE_ONLY,
									["isWeekly"] = true,
								}),
								q(52928, {	-- Arathi Donations: Coarse Leather
									["provider"] = { "n", 142970 },	-- Kuma Longhoof
									["coord"] = { 53.4, 92.6, DAZARALOR },
									["races"] = HORDE_ONLY,
									["isWeekly"] = true,
								}),
								q(53243, {	-- Arathi Donations: Coarse Leather Barding
									["provider"] = { "n", 142970 },	-- Kuma Longhoof
									["coord"] = { 53.4, 92.6, DAZARALOR },
									["races"] = HORDE_ONLY,
									["isWeekly"] = true,
								}),
								q(53242, {	-- Arathi Donations: Coastal Healing Potion
									["provider"] = { "n", 142159 },	-- Zen'kin
									["coord"] = { 51.2, 95.5, DAZARALOR },
									["races"] = HORDE_ONLY,
									["isWeekly"] = true,
								}),
								q(53241, {	-- Arathi Donations: Coastal Mana Potion
									["provider"] = { "n", 142159 },	-- Zen'kin
									["coord"] = { 51.2, 95.5, DAZARALOR },
									["races"] = HORDE_ONLY,
									["isWeekly"] = true,
								}),
								q(53256, {	-- Arathi Donations: Deadly Solstone
									["provider"] = { "n", 142977 },	-- Meredith Swane
									["coord"] = { 51.9, 93.1, DAZARALOR },
									["races"] = HORDE_ONLY,
									["isWeekly"] = true,
								}),
								q(53364, {	-- Arathi Donations: Drums of the Maelstrom
									["provider"] = { "n", 142970 },	-- Kuma Longhoof
									["coord"] = { 53.4, 92.6, DAZARALOR },
									["races"] = HORDE_ONLY,
									["isWeekly"] = true,
								}),
								q(53254, {	-- Arathi Donations: Enchant Ring - Seal of Critical Strike
									["provider"] = { "n", 142992 },	-- Uma'wi
									["coord"] = { 52.7, 93.3, DAZARALOR },
									["races"] = HORDE_ONLY,
									["isWeekly"] = true,
								}),
								q(53253, {	-- Arathi Donations: Enchant Ring - Seal of Versatility
									["provider"] = { "n", 142992 },	-- Uma'wi
									["coord"] = { 52.7, 93.3, DAZARALOR },
									["races"] = HORDE_ONLY,
									["isWeekly"] = true,
								}),
								q(53259, {	-- Arathi Donations: F.R.I.E.D.
									["provider"] = { "n", 142983 },	-- Swizzle Fizzcrank
									["coord"] = { 53.0, 94.8, DAZARALOR },
									["races"] = HORDE_ONLY,
									["isWeekly"] = true,
								}),
								q(53261, {	-- Arathi Donations: Frost-Laced Ammunition
									["provider"] = { "n", 142983 },	-- Swizzle Fizzcrank
									["coord"] = { 53.0, 94.8, DAZARALOR },
									["races"] = HORDE_ONLY,
									["isWeekly"] = true,
								}),
								q(53255, {	-- Arathi Donations: Gloom Dust
									["provider"] = { "n", 142992 },	-- Uma'wi
									["coord"] = { 52.7, 93.3, DAZARALOR },
									["races"] = HORDE_ONLY,
									["isWeekly"] = true,
								}),
								q(52930, {	-- Arathi Donations: Gold
									["provider"] = { "n", 142157 },	-- Paymaster Grintooth
									["coord"] = { 51.7, 95.4, DAZARALOR },
									["races"] = HORDE_ONLY,
									["isWeekly"] = true,
								}),
								q(53264, {	-- Arathi Donations: Great Sea Catfish
									["provider"] = { "n", 142973 },	-- Mai-Lu
									["coord"] = { 53.8, 94.4, DAZARALOR },
									["races"] = HORDE_ONLY,
									["isWeekly"] = true,
								}),
								q(53263, {	-- Arathi Donations: Grilled Catfish
									["provider"] = { "n", 142973 },	-- Mai-Lu
									["coord"] = { 53.8, 94.4, DAZARALOR },
									["races"] = HORDE_ONLY,
									["isWeekly"] = true,
								}),
								q(53260, {	-- Arathi Donations: Incendiary Ammunition
									["provider"] = { "n", 142983 },	-- Swizzle Fizzcrank
									["coord"] = { 53.0, 94.8, DAZARALOR },
									["races"] = HORDE_ONLY,
									["isWeekly"] = true,
								}),
								q(53362, {	-- Arathi Donations: Meaty Haunch
									["provider"] = { "n", 142973 },	-- Mai-Lu
									["coord"] = { 53.8, 94.4, DAZARALOR },
									["races"] = HORDE_ONLY,
									["isWeekly"] = true,
								}),
								q(53245, {	-- Arathi Donations: Monel-Hardened Hoofplates
									["provider"] = { "n", 142969 },	-- Logarr
									["coord"] = { 52.6, 94.8, DAZARALOR },
									["races"] = HORDE_ONLY,
									["isWeekly"] = true,
								}),
								q(53246, {	-- Arathi Donations: Monel-Hardened Stirrups
									["provider"] = { "n", 142969 },	-- Logarr
									["coord"] = { 52.6, 94.8, DAZARALOR },
									["races"] = HORDE_ONLY,
									["isWeekly"] = true,
								}),
								q(52929, {	-- Arathi Donations: Monelite Ore
									["provider"] = { "n", 142969 },	-- Logarr
									["coord"] = { 52.6, 94.8, DAZARALOR },
									["races"] = HORDE_ONLY,
									["isWeekly"] = true,
								}),
								q(53367, {	-- Arathi Donations: Organic Discombobulation Grenade
									["provider"] = { "n", 142983 },	-- Swizzle Fizzcrank
									["coord"] = { 53.0, 94.8, DAZARALOR },
									["races"] = HORDE_ONLY,
									["isWeekly"] = true,
								}),
								q(53262, {	-- Arathi Donations: Seasoned Loins
									["provider"] = { "n", 142973 },	-- Mai-Lu
									["coord"] = { 53.8, 94.4, DAZARALOR },
									["races"] = HORDE_ONLY,
									["isWeekly"] = true,
								}),
								q(53244, {	-- Arathi Donations: Shimmerscale
									["provider"] = { "n", 142970 },	-- Kuma Longhoof
									["coord"] = { 53.4, 92.6, DAZARALOR },
									["races"] = HORDE_ONLY,
									["isWeekly"] = true,
								}),
								q(53359, {	-- Arathi Donations: Steelskin Potion
									["provider"] = { "n", 142159 },	-- Zen'kin
									["coord"] = { 51.2, 95.5, DAZARALOR },
									["races"] = HORDE_ONLY,
									["isWeekly"] = true,
								}),
								q(53258, {	-- Arathi Donations: Straddling Viridium
									["provider"] = { "n", 142977 },	-- Meredith Swane
									["coord"] = { 51.9, 93.1, DAZARALOR },
									["races"] = HORDE_ONLY,
									["isWeekly"] = true,
								}),
								q(53249, {	-- Arathi Donations: Tidespray Linen
									["provider"] = { "n", 142975 },	-- Seamstress Vessa
									["coord"] = { 52.5, 93.3, DAZARALOR },
									["races"] = HORDE_ONLY,
									["isWeekly"] = true,
								}),
								q(53257, {	-- Arathi Donations: Versatile Kyanite
									["provider"] = { "n", 142977 },	-- Meredith Swane
									["coord"] = { 51.9, 93.1, DAZARALOR },
									["races"] = HORDE_ONLY,
									["isWeekly"] = true,
								}),
								q(53335, {	-- Arathi Donations: War Resources
									["provider"] = { "n", 142158 },	-- Quartermaster Rauka
									["coord"] = { 51.7, 95.1, DAZARALOR },
									["races"] = HORDE_ONLY,
									["isWeekly"] = true,
								}),
								q(53251, {	-- Arathi Donations: War-Scroll of Battle Shout
									["provider"] = { "n", 142981 },	-- Merill Redgrave
									["coord"] = { 53.6, 92.1, DAZARALOR },
									["races"] = HORDE_ONLY,
									["isWeekly"] = true,
								}),
								q(53250, {	-- Arathi Donations: War-Scroll of Fortitude
									["provider"] = { "n", 142981 },	-- Merill Redgrave
									["coord"] = { 53.6, 92.1, DAZARALOR },
									["races"] = HORDE_ONLY,
									["isWeekly"] = true,
								}),
								q(53252, {	-- Arathi Donations: War-Scroll of Intellect
									["provider"] = { "n", 142981 },	-- Merill Redgrave
									["coord"] = { 53.6, 92.1, DAZARALOR },
									["races"] = HORDE_ONLY,
									["isWeekly"] = true,
								}),
								q(56137, {	-- Heroic Warfront: The Battle For Stromgarde [Tier 3]
									["provider"] = { "n", 138949 },	-- Throk <Recruitment Officer>
									["sourceQuests"] = { 53212 },	-- Back to Zuldazar
									["coord"] = { 52.9, 94.3, DAZARALOR },
									["races"] = HORDE_ONLY,
									["isWeekly"] = true,
									["g"] = {
										i(169196, {	-- Warfronts Equipment Cache
											n(BACK, {
												["sym"] = GenerateRewardsSymlinkForModID(FACTION_HEADER_HORDE, 23, BACK),
											}),
											n(ARMOR, {
												["sym"] = GenerateRewardsSymlinkForModID(FACTION_HEADER_HORDE, 23, ARMOR),
											}),
											n(WEAPONS, {
												["sym"] = GenerateRewardsSymlinkForModID(FACTION_HEADER_HORDE, 23, WEAPONS),
											}),
										}),
									},
								}),
								q(53207, {	-- The Warfront Looms
									["provider"] = { "n", 138949 },	-- Throk <Recruitment Officer>
									["coord"] = { 52.97, 94.35, DAZARALOR },
									["sourceQuests"] = { 52451 },	-- Uniting Zandalar
									["isBreadcrumb"] = true,
									["lockCriteria"] = {1,"questID", 53220},	-- Battle for Stromgarde unlock flag
									["DisablePartySync"] = true,
									["description"] = "Automatically granted upon completing Uniting Zandalar to unlock World Quests.  If it doesn't pop up, relog.  I had to relog twice to receive this quest.",
									["races"] = HORDE_ONLY,
								}),
								q(53208, {	-- To The Front
									["provider"] = { "n", 138949 },	-- Throk <Recruitment Officer>
									["lockCriteria"] = {1,"questID", 53220},	-- Battle for Stromgarde unlock flag
									["sourceQuest"] = 53207,	-- The Warfront Looms
									["coord"] = { 52.9, 94.4, DAZARALOR },
									["races"] = HORDE_ONLY,
								}),
								q(53416, {	-- Warfront: The Battle For Stromgarde [Tier 3]
									["provider"] = { "n", 138949 },	-- Throk <Recruitment Officer>
									["sourceQuest"] = 53212,	-- Back to Zuldazar
									["coord"] = { 52.97, 94.35, DAZARALOR },
									["isWeekly"] = true,
									["races"] = HORDE_ONLY,
									["g"] = {
										i(164577, {	-- Warfronts Equipment Cache
											["modID"] = 6,
											["g"] = {
												n(BACK, clone(HORDE_WARFRONT_BACKS)),
												n(ARMOR, clone(HORDE_WARFRONT_ARMOR)),
												n(WEAPONS, {
													["sym"] = GenerateRewardsSymlinkForModID(FACTION_HEADER_HORDE, 6, WEAPONS),
												}),
											},
										}),
									},
								}),
								q(53209, {	-- Warfront Contribution
									["provider"] = { "n", 138949 },	-- Throk <Recruitment Officer>
									["coord"] = { 53.0, 94.3, DAZARALOR },
									["races"] = HORDE_ONLY,
								}),
								-- INCURSIONS INFO STARTS HERE
								i(165872, {	-- 7th Legion Equipment Cache (awarded for all incursions)
									["description"] = "This cache is awarded for completing any incursion on an Alliance character.",
									["sym"] = GenerateRewardsSymlinkForModID(FACTION_HEADER_ALLIANCE, 5),	-- iLvl 340
								}),
								i(165871, {	-- Honorbound Equipment Cache (awarded for all incursions)
									["description"] = "This cache is awarded for completing any incursion on a Horde character.",
									["sym"] = GenerateRewardsSymlinkForModID(FACTION_HEADER_HORDE, 5),	-- iLvl 340
								}),

								q(53198, {	-- Back to Boralus
									["provider"] = { "n", 143018 },	-- Captain Roderick Brewston
									["lockCriteria"] = {1,"questID", 53206},	-- Battle for Stromgarde unlock flag (A)
									["sourceQuest"] = 53197,	-- Touring the Front
									["coord"] = { 19.26, 61.77, ARATHI_HIGHLANDS },
									["races"] = ALLIANCE_ONLY,
									["isBreadcrumb"] = true,
								}),
								q(53212, {	-- Back to Zuldazar
									["provider"] = { "n", 143019 },	-- Wistel Sliversnitch
									["lockCriteria"] = {1,"questID", 53220},	-- Battle for Stromgarde unlock flag
									["sourceQuest"] = 53210,	-- Touring the Front
									["coord"] = { 26.11, 35.59, ARATHI_HIGHLANDS },
									["races"] = HORDE_ONLY,
									["isBreadcrumb"] = true,
								}),
								q(53153, {	-- Death to the Defilers
									["providers"] = {
										{ "n", 143172 },	-- Yvera Dawnwing [Arathi Highlands Location]
										{ "n", 143380 },	-- Yvera Dawnwing [Boralus Location]
									},
									["sourceQuest"] = 53198,	-- Back to Boralus
									["coord"] = { 21.71, 64.88, ARATHI_HIGHLANDS },
									["races"] = ALLIANCE_ONLY,
									["repeatable"] = true,
									["u"] = REMOVED_FROM_GAME,
									["_drop"] = { "g" }, -- bnet api has horde box
									["g"] = {
										-- #IF BEFORE SHADOWLANDS
										-- this is distorting actual live rewards
										i(164578, {	-- Warfronts Equipment Cache (A)
											["sym"] = GenerateRewardsSymlinkForModID(FACTION_HEADER_ALLIANCE, 5),	-- iLvl 340
										}),
										-- #ELSE
										i(164578),	-- Warfronts Equipment Cache (A)
										-- #ENDIF
									},
								}),
								q(53197, {	-- Touring the Front (A)
									["provider"] = { "n", 143018 },		-- Captain Roderick Brewston
									["lockCriteria"] = {1,"questID", 53206},	-- Battle for Stromgarde unlock flag (A)
									["sourceQuest"] = 53194,	-- To The Front
									["coord"] = { 19.26, 61.77, ARATHI_HIGHLANDS },
									["races"] = ALLIANCE_ONLY,
								}),
								q(53210, {	-- Touring the Front (H)
									["provider"] = { "n", 143019 },	-- Wistel Sliversnitch
									["lockCriteria"] = {1,"questID", 53220},	-- Battle for Stromgarde unlock flag
									["sourceQuest"] = 53208,	-- To The Front
									["coord"] = { 26.1, 35.5, ARATHI_HIGHLANDS },
									["races"] = HORDE_ONLY,
								}),
								q(53154, {	-- The League Will Lose [Horde]
									["u"] = REMOVED_FROM_GAME,
									["races"] = HORDE_ONLY,
									["repeatable"] = true,
									["g"] = {
										-- #IF BEFORE SHADOWLANDS
										-- this is distorting actual live rewards
										i(164577, {	-- Warfronts Equipment Cache (H)
											["sym"] = GenerateRewardsSymlinkForModID(FACTION_HEADER_HORDE, 5),	-- iLvl 340
										}),
										-- #ELSE
										i(164577),	-- Warfronts Equipment Cache (H)
										-- #ENDIF
									},
								}),

								-- Warfront Quests
								q(53673, {	-- Armor Up!
									["races"] = ALLIANCE_ONLY,
								}),
								q(53666, {	-- Armor Up!
									["races"] = HORDE_ONLY,
								}),
								q(53677, {	-- Beasts of Newstead
									["races"] = ALLIANCE_ONLY,
								}),
								q(53670, {	-- Beasts of Newstead
									["races"] = HORDE_ONLY,
								}),
								q(47283, {	-- Chop, Chop
									["races"] = HORDE_ONLY,
									["g"] = {
										i(156531),	-- Freshly-Chopped Wood (QI!)
										i(156514),	-- Sturdy Axe (QI!)
									},
								}),
								q(52118, {	-- Cutting Out the Competition
									["races"] = ALLIANCE_ONLY,
									["g"] = {
										i(156531),	-- Freshly-Chopped Wood (QI!)
										i(161130),	-- Sturdy Axe (QI!)
									},
								}),
								q(53678, {	-- Establishing a Connection
									["races"] = ALLIANCE_ONLY,
								}),
								q(53668, {	-- Flightgineer's Network
									["races"] = HORDE_ONLY,
									["g"] = {
										i(164598),	-- Krazzle's Scribbled Note (QI!)
									},
								}),
								q(52439, {	-- Iron Stores
									["races"] = ALLIANCE_ONLY,
									["g"] = {
										i(159728),	-- Heavy Iron Key (QI!)
									},
								}),
								q(51082, {	-- Iron Stores
									["races"] = HORDE_ONLY,
									["g"] = {
										i(159728),	-- Heavy Iron Key (QI!)
									},
								}),
								q(53672, {	-- Ready for Battle
									["races"] = ALLIANCE_ONLY,
								}),
								q(53665, {	-- Ready for Battle
									["races"] = HORDE_ONLY,
								}),
								q(53674, {	-- The Altar's Power
									["races"] = ALLIANCE_ONLY,
								}),
								q(53669, {	-- The Altar's Power
									["races"] = HORDE_ONLY,
								}),
								q(53671, {	-- The Circle's Power
									["races"] = HORDE_ONLY,
								}),
								q(53676, {	-- The Circle's Power
									["races"] = ALLIANCE_ONLY,
								}),
								q(53675, {	-- Welcome to the Workshop
									["races"] = ALLIANCE_ONLY,
								}),
								q(53667, {	-- Welcome to the Workshop
									["races"] = HORDE_ONLY,
								}),
							}),
							n(SCENARIO_COMPLETION, {
								-- 1 SourceIDs: Weapons
								-- 3 SourceIDs: Cloaks, Armor (3) (5) (6/23)
								-- 2 VisualIDs: Armor (3/5) (6/23)
								-- 3 VisualIDs: Cloaks (3) (5) (6/23)

								-- Sources:
								-- Normal Warfront Victory (3)
								-- Honorbound/7th Legion Equipment Cache (5)
								-- Incursion Equipment Box (5)
								-- Rares/Treasures (5)
								-- Normal Quest (6)
								-- Heroic Quest (23)

								-- Ideal Sources:
								-- [x] Normal Warfront Victory (3) [Cloaks/Armor]
								-- [x] Rares/Treasures (5) [Cloaks/Armor/Weapons]
								-- [x] Normal Quest (6) [Cloaks/Armor]

								-- Symlink/Additional Sources:
								-- [x] Normal Warfront Victory (3) [Weapons]
								-- [x] Honorbound/7th Legion Equipment Cache (5) [Cloaks/Armor/Weapons]
								-- [x] Incursion Equipment Box (5) [Cloaks/Armor/Weapons]
								-- [x] Normal Quest (6) [Weapons]
								-- [x] Heroic Quest (23) [Cloaks/Armor/Weapons]

								["description"] = "These are obtained by winning the warfront and can be awarded multiple times a week.",
								["groups"] = {
									i(164578, {	-- Warfronts Equipment Cache [A]
										["modID"] = 3,
										["g"] = {
											n(BACK, clone(ALLIANCE_WARFRONT_BACKS)),
											n(ARMOR, clone(ALLIANCE_WARFRONT_ARMOR)),
											n(WEAPONS, {
												["sym"] = GenerateRewardsSymlinkForModID(FACTION_HEADER_ALLIANCE, 6, WEAPONS),
											}),
										},
									}),
									i(164577, {	-- Warfronts Equipment Cache [H]
										["modID"] = 3,
										["g"] = {
											n(BACK, clone(HORDE_WARFRONT_BACKS)),
											n(ARMOR, clone(HORDE_WARFRONT_ARMOR)),
											n(WEAPONS, {
												["sym"] = GenerateRewardsSymlinkForModID(FACTION_HEADER_HORDE, 6, WEAPONS),
											}),
										},
									}),
								},
							}),
						},
					}),
				},
			}),
		}),
	})
);

root(ROOTS.HiddenQuestTriggers, {
	expansion(EXPANSION.BFA, {
		n(WAR_EFFORT, {
			n(WARFRONT_BATTLE_FOR_STROMGARDE, {
				q(51342, {["repeatable"]=true}),	-- completion of Normal warfront
			}),
		}),
	}),
});