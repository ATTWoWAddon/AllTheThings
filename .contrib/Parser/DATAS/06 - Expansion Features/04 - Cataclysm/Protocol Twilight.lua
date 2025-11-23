---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
-- #if ANYCLASSIC
local OBSIDIAN_FRAGMENT = 3281;	-- Obsidian Fragment
local frags = function(cost, item)
	return applycost(item, { "c", OBSIDIAN_FRAGMENT, cost });
end
local OBSIDIAN_FRAGMENT_EXCHANGE_VENDOR = createHeader({
	readable = "Obsidian Fragment Exchange",
	icon = 135241,
	text = {
		en = "Obsidian Fragment Exchange",
	},
});
local PROTOCOL_MAPS = {
	DEADMINES, 292,	-- Deadmines
	SHADOWFANG_KEEP,
	SHADOWFANG_KEEP_LEVEL2,
	SHADOWFANG_KEEP_LEVEL3,
	SHADOWFANG_KEEP_LEVEL4,
	SHADOWFANG_KEEP_LEVEL5,
	SHADOWFANG_KEEP_LEVEL6,
	SHADOWFANG_KEEP_LEVEL7,
	283, 284,	-- Blackrock Caverns
	293,	-- Grim Batol
	297, 298, 299,	-- Halls of Origination
	277,	-- Lost City of the Tol'vir
	324,	-- The Stonecore
	322, 323,	-- Throne of the Tides
	325,	-- The Vortex Pinnacle
	401, 402, 403, 404, 405, 406,	-- End Time
	399, 400,	-- Hour of Twilight
	398,	-- Well of Eternity
}
local PROTOCOL_BOSSES = {
	-- Blackrock Caverns
	39665,	-- Rom'ogg Bonecrusher
	39679,	-- Corla, Herald of Twilight
	39698,	-- Karsh Steelbender
	39700,	-- Beauty
	39705,	-- Ascendent Lord Obsidius
	-- Deadmines
	47162,	-- Glubtok
	47296,	-- Helix Gearbreaker
	43778,	-- Foe Reaper 5000
	47626,	-- Admiral Ripsnarl
	47739,	-- "Captain" Cookie
	49541,	-- Vanessa VanCleef
	-- Grim Batol
	39625,	-- General Umbriss
	40177,	-- Forgemaster Throngus
	40319,	-- Drahga Shadowburner
	40484,	-- Erudax
	-- Halls of Origination
	39425,	-- Temple Guardian Anhuur
	39428,	-- Earthrager Ptah
	39788,	-- Anraphet
	39587,	-- Isiset, Construct of Magic
	39731,	-- Ammunae, Construct of Life
	39732,	-- Setesh, Construct of Destruction
	39378,	-- Rajh, Construct of Sun
	-- Lost City of the Tol'vir
	44577,	-- General Husam
	43614,	-- Lockmaw
	49045,	-- Augh
	43612,	-- High Prophet Barim
	44819,	-- Siamat
	-- Shadowfang Keep
	46962,	-- Baron Ashbury
	3887,	-- Baron Silverlaine
	4278,	-- Commander Springvale
	46963,	-- Lord Walden
	46964,	-- Lord Godfrey
	-- The Stonecore
	43438,	-- Corborus
	43214,	-- Slabhide
	42188,	-- Ozruk
	42333,	-- High Priestess Azil
	-- The Vortex Pinnacle
	43878,	-- Grand Vizier Ertan
	43873,	-- Altairus
	43875,	-- Asaad, Caliph of Zephyrs
	-- Throne of the Tides
	40586,	-- Lady Naz'jar
	40765,	-- Commander Ulthok
	40788,	-- Mindbender Ghur'sha
	44566,	-- Ozumat
	-- End Time
	54431,	-- Echo of Baine
	54445,	-- Echo of Jaina
	54123,	-- Echo of Sylvannas
	54544,	-- Echo of Tyrande
	54432,	-- Murozond
	-- Hour of Twilight
	54590,	-- Arcurion
	54968,	-- Asira Dawnslayer
	54938,	-- Archbishop Benedictus
	-- Well of Eternity
	55085,	-- Peroth'arn
	54853,	-- Queen Azshara
	54969,	-- Mannoroth
}
local PROTOCOL_LAST_BOSSES = {
	-- Blackrock Caverns
	39705,	-- Ascendent Lord Obsidius
	-- Deadmines
	49541,	-- Vanessa VanCleef
	-- Grim Batol
	40484,	-- Erudax
	-- Halls of Origination
	39378,	-- Rajh, Construct of Sun
	-- Lost City of the Tol'vir
	44819,	-- Siamat
	-- Shadowfang Keep
	46964,	-- Lord Godfrey
	-- The Stonecore
	42333,	-- High Priestess Azil
	-- The Vortex Pinnacle
	43875,	-- Asaad, Caliph of Zephyrs
	-- Throne of the Tides
	44566,	-- Ozumat
	-- End Time
	54432,	-- Murozond
	-- Hour of Twilight
	54938,	-- Archbishop Benedictus
	-- Well of Eternity
	54969,	-- Mannoroth
}
local HOUR_OF_TWILIGHT_DUNGEON_MAPS = {
	401, 402, 403, 404, 405, 406,	-- End Time
	399, 400,	-- Hour of Twilight
	398,	-- Well of Eternity
}
local HOUR_OF_TWILIGHT_DUNGEON_LAST_BOSSES = {
	-- End Time
	54432,	-- Murozond
	-- Hour of Twilight
	54938,	-- Archbishop Benedictus
	-- Well of Eternity
	54969,	-- Mannoroth
}
root(ROOTS.ExpansionFeatures, expansion(EXPANSION.CATA, applyclassicphase(CATA_PHASE_HOUR_OF_TWILIGHT, {
	n(PROTOCOL_TWILIGHT, bubbleDownSelf({ ["timeline"] = { ADDED_4_3_0 } }, {
		["lvl"] = 85,
		["groups"] = {
			n(COMMON_BOSS_DROPS, {
				["OnInit"] = FUNCTION_TEMPLATES.OnInit.GenerateShouldExcludeFromTooltipForBuffs(
					1224923	-- Twilight's Madness
				),
				["description"] = "The following can drop from the final boss of any heroic dungeon on Protocol Twilight difficulty.",
				["maps"] = PROTOCOL_MAPS,
				["crs"] = PROTOCOL_LAST_BOSSES,
				["groups"] = {
					i(78869),	-- Crown of the Corrupted Conqueror
					i(78870),	-- Crown of the Corrupted Protector
					i(78868),	-- Crown of the Corrupted Vanquisher
					i(78875),	-- Shoulders of the Corrupted Conqueror
					i(78876),	-- Shoulders of the Corrupted Protector
					i(78874),	-- Shoulders of the Corrupted Vanquisher
					i(78863),	-- Chest of the Corrupted Conqueror
					i(78864),	-- Chest of the Corrupted Protector
					i(78862),	-- Chest of the Corrupted Vanquisher
					i(78866),	-- Gauntlets of the Corrupted Conqueror
					i(78867),	-- Gauntlets of the Corrupted Protector
					i(78865),	-- Gauntlets of the Corrupted Vanquisher
					i(78872),	-- Leggings of the Corrupted Conqueror
					i(78873),	-- Leggings of the Corrupted Protector
					i(78871),	-- Leggings of the Corrupted Vanquisher
				},
			}),
			n(DROPS, {
				["OnInit"] = FUNCTION_TEMPLATES.OnInit.GenerateShouldExcludeFromTooltipForBuffs(
					1224923	-- Twilight's Madness
				),
				["description"] = "The following can drop from specific final bosses in heroic dungeons on Protocol Twilight difficulty or from the new End Time, Hour of Twilight, or Well of Eternity heroic dungeons.",
				["maps"] = HOUR_OF_TWILIGHT_DUNGEON_MAPS,	-- End Time, Hour of Twilight, Well of Eternity
				["crs"] = HOUR_OF_TWILIGHT_DUNGEON_LAST_BOSSES,
				["groups"] = {
					-- Weapons
					i(78482, {	-- Kiril, Fury of Beasts
						["maps"] = { 283, 284 },	-- Blackrock Caverns
						["crs"] = { 39705 },	-- Ascendent Lord Obsidius
					}),
					i(78487, {	-- Gurthalak, Voice of the Deeps
						["maps"] = { 324 },	-- The Stonecore
						["crs"] = { 42333 },	-- High Priestess Azil
					}),
					i(78486, {	-- Ti'tahk, the Steps of Time
						["maps"] = { 322, 323 },	-- Throne of the Tides
						["crs"] = { 44566 },	-- Ozumat
					}),
					i(78480, {	-- Vishanka, Jaws of the Earth
						["maps"] = { 297, 298, 299 },	-- Halls of Origination
						["crs"] = { 39378 },	-- Rajh, Construct of Sun
					}),
					i(78485, {	-- Maw of the Dragonlord
						["maps"] = { 325 },	-- The Vortex Pinnacle
						["crs"] = { 43875 },	-- Asaad, Caliph of Zephyrs
					}),
					i(78484, {	-- Rathrak, the Poisonous Mind
						["maps"] = { 293 },	-- Grim Batol
						["crs"] = { 40484 },	-- Erudax
					}),
					i(78483, {	-- Blade of the Unmaker
						["maps"] = { DEADMINES, 292 },	-- Deadmines
						["crs"] = { 49541 },	-- Vanessa VanCleef
					}),
					i(78481, {	-- No'Kaled, the Elements of Death
						["maps"] = { 277 },	-- Lost City of the Tol'vir
						["crs"] = { 44819 },	-- Siamat
					}),
					i(78488, {	-- Souldrinker
						["maps"] = {	-- Shadowfang Keep
							SHADOWFANG_KEEP,
							SHADOWFANG_KEEP_LEVEL2,
							SHADOWFANG_KEEP_LEVEL3,
							SHADOWFANG_KEEP_LEVEL4,
							SHADOWFANG_KEEP_LEVEL5,
							SHADOWFANG_KEEP_LEVEL6,
							SHADOWFANG_KEEP_LEVEL7,
						},
						["crs"] = { 46964 },	-- Lord Godfrey
					}),
					-- Necks
					i(78382, {	-- Petrified Fungal Heart
						["maps"] = { 277 },	-- Lost City of the Tol'vir
						["crs"] = { 44819 },	-- Siamat
					}),
					-- Rings
					i(78440, {	-- Curled Twilight Claw
						["maps"] = { DEADMINES, 292 },	-- Deadmines
						["crs"] = { 49541 },	-- Vanessa VanCleef
					}),
					i(78427, {	-- Ring of the Raven
						["maps"] = { 324 },	-- The Stonecore
						["crs"] = { 42333 },	-- High Priestess Azil
					}),
					i(78421, {	-- Signet of Grasping Mouths
						["maps"] = {	-- Shadowfang Keep
							SHADOWFANG_KEEP,
							SHADOWFANG_KEEP_LEVEL2,
							SHADOWFANG_KEEP_LEVEL3,
							SHADOWFANG_KEEP_LEVEL4,
							SHADOWFANG_KEEP_LEVEL5,
							SHADOWFANG_KEEP_LEVEL6,
							SHADOWFANG_KEEP_LEVEL7,
						},
						["crs"] = { 46964 },	-- Lord Godfrey
					}),
					-- Trinkets
					i(77977, {	-- Eye of Unmaking
						["maps"] = { 322, 323 },	-- Throne of the Tides
						["crs"] = { 44566 },	-- Ozumat
					}),
					i(77976, {	-- Heart of Unliving
						["maps"] = { 297, 298, 299 },	-- Halls of Origination
						["crs"] = { 39378 },	-- Rajh, Construct of Sun
					}),
					i(77978, {	-- Resolve of Undying
						["maps"] = { 293 },	-- Grim Batol
						["crs"] = { 40484 },	-- Erudax
					}),
					i(77975, {	-- Will of Unbinding
						["maps"] = { 283, 284 },	-- Blackrock Caverns
						["crs"] = { 39705 },	-- Ascendent Lord Obsidius
					}),
					i(77974, {	-- Wrath of Unchaining
						["maps"] = { 325 },	-- The Vortex Pinnacle
						["crs"] = { 43875 },	-- Asaad, Caliph of Zephyrs
					}),
				},
			}),
			n(REWARDS, {
				currency(OBSIDIAN_FRAGMENT, {
					["OnInit"] = FUNCTION_TEMPLATES.OnInit.GenerateShouldExcludeFromTooltipForBuffs(
						1224923	-- Twilight's Madness
					),
					["description"] = "Two Obsidian Fragments drop per boss in Protocol Twilight and the final boss of each dungeon will drop an extra three Obsidian Fragments if players have defeated all of the other bosses in the dungeon.",
					["maps"] = PROTOCOL_MAPS,
					["crs"] = PROTOCOL_BOSSES,
				}),
			}),
			n(VENDORS, {
				n(OBSIDIAN_FRAGMENT_EXCHANGE_VENDOR, {	-- Zarstrasza <Obsidian Fragment Exchange>
					["aqd"] = {
						["qg"] = 241468,	-- Zarstrasza <Obsidian Fragment Exchange>
						["coord"] = { 79.4, 71.6, STORMWIND_CITY },
					},
					["hqd"] = {
						["qg"] = 241467,	-- Sylstrasza <Obsidian Fragment Exchange>
						["coord"] = { 47.2, 70.1, ORGRIMMAR },
					},
					["groups"] = {
						-- Dragon Soul LFR Gear
						-- Tier Tokens
						frags(55, i(78869)),	-- Crown of the Corrupted Conqueror
						frags(55, i(78870)),	-- Crown of the Corrupted Protector
						frags(55, i(78868)),	-- Crown of the Corrupted Vanquisher
						frags(45, i(78875)),	-- Shoulders of the Corrupted Conqueror
						frags(45, i(78876)),	-- Shoulders of the Corrupted Protector
						frags(45, i(78874)),	-- Shoulders of the Corrupted Vanquisher
						frags(55, i(78863)),	-- Chest of the Corrupted Conqueror
						frags(55, i(78864)),	-- Chest of the Corrupted Protector
						frags(55, i(78862)),	-- Chest of the Corrupted Vanquisher
						frags(45, i(78866)),	-- Gauntlets of the Corrupted Conqueror
						frags(45, i(78867)),	-- Gauntlets of the Corrupted Protector
						frags(45, i(78865)),	-- Gauntlets of the Corrupted Vanquisher
						frags(55, i(78872)),	-- Leggings of the Corrupted Conqueror
						frags(55, i(78873)),	-- Leggings of the Corrupted Protector
						frags(55, i(78871)),	-- Leggings of the Corrupted Vanquisher
						-- Weapons
						frags(100, i(78482)),	-- Kiril, Fury of Beasts
						frags(100, i(78487)),	-- Gurthalak, Voice of the Deeps
						frags(100, i(78486)),	-- Ti'tahk, the Steps of Time
						frags(100, i(78480)),	-- Vishanka, Jaws of the Earth
						frags(75, i(78485)),	-- Maw of the Dragonlord
						frags(75, i(78484)),	-- Rathrak, the Poisonous Mind
						frags(70, i(78483)),	-- Blade of the Unmaker
						frags(70, i(78481)),	-- No'Kaled, the Elements of Death
						frags(70, i(78488)),	-- Souldrinker
						--[[
						-- CRIEVE NOTE: The following weapons whose ilvl is not 390 are missing (and likely unobtainable in Cata Classic)
						i(78379),	-- Hand of Morchok
						i(78383),	-- Vagaries of Time
						i(78453),	-- Ataraxis, Cudgel of the Warmaster
						i(78459),	-- Visage of the Destroyer
						i(78394),	-- Horrifying Horn Arbalest
						i(78437),	-- Morningstar of Heroic Will
						i(78409),	-- Experimental Specimen Slicer
						i(78407),	-- Spire of Coagulated Globules
						i(78410),	-- Scalpel of Unrelenting Agony
						i(78426),	-- Lightning Rod
						]]--
						-- Daggers / Shield / Offhands / Wands / Thrown
						frags(45, i(78422)),	-- Electrowing Dagger
						frags(25, i(78441)),	-- Ledger of Revolting Rituals
						frags(45, i(78456)),	-- Blackhorn's Mighty Bulwark
						frags(45, i(78458)),	-- Timepiece of the Bronze Flight
						frags(70, i(78399)),	-- Finger of Zon'ozz
						frags(25, i(78374, {	-- Razor Saronite Chip
							["timeline"] = { ADDED_4_3_0, REMOVED_5_0_4 },
						})),
						-- Plate
						frags(45, i(78470)),	-- Backbreaker Spaulders
						frags(30, i(78378)),	-- Brackenshell Shoulderplates
						frags(30, i(78412)),	-- Heartblood Wristplates
						frags(30, i(78397)),	-- Graveheart Bracers
						frags(30, i(78377)),	-- Rockhide Bracers
						frags(45, i(78469)),	-- Gauntlets of the Golden Thorn
						frags(45, i(78444)),	-- Dragonfracture Belt
						frags(45, i(78460)),	-- Goriona's Collar
						frags(45, i(78424)),	-- Runescriven Demon Collar
						frags(45, i(78386)),	-- Pillarfoot Greaves
						frags(45, i(78439)),	-- Stillheart Warboots
						frags(45, i(78396)),	-- Treads of Crushed Flesh
						-- Mail
						frags(30, i(78443)),	-- Imperfect Specimens 27 and 28
						frags(30, i(78438)),	-- Bracers of Looming Darkness
						frags(30, i(78400)),	-- Grotesquely Writhing Bracers
						frags(30, i(78376)),	-- Sporebeard Gauntlets
						frags(65, i(78468)),	-- Belt of Shattered Elementium
						frags(45, i(78455)),	-- Belt of the Beloved Companion
						frags(45, i(78385)),	-- Girdle of Shattered Stone
						frags(45, i(78411)),	-- Mindstrainer Treads
						-- Leather
						frags(30, i(78375)),	-- Underdweller's Spaulders
						frags(30, i(78384)),	-- Mycosynth Wristguards
						frags(30, i(78454)),	-- Shadow Wing Armbands
						frags(30, i(78395)),	-- Belt of Flayed Skin
						frags(45, i(78428)),	-- Girdle of the Grotesque
						frags(45, i(78408)),	-- Interrogator's Bloody Footpads
						frags(65, i(78467)),	-- Molten Blood Footpads
						frags(45, i(78423)),	-- Treads of Dormant Dreams
						frags(45, i(78442)),	-- Treads of Sordid Screams
						-- Cloth
						frags(30, i(78381)),	-- Mosswrought Shoulderguards
						frags(40, i(78380)),	-- Robe of Glowing Stone
						frags(30, i(78425)),	-- Bracers of the Banished
						frags(45, i(78466)),	-- Gloves of Liquid Smoke
						frags(45, i(78398)),	-- Cord of the Slain Champion
						frags(45, i(78457)),	-- Janglespur Jackboots
						-- Necks
						frags(30, i(78382)),	-- Petrified Fungal Heart
						-- Rings
						frags(30, i(78497)),	-- Breathstealer Band
						frags(30, i(78440)),	-- Curled Twilight Claw
						frags(30, i(78498)),	-- Hardheart Ring
						frags(30, i(78495)),	-- Infinite Loop
						frags(30, i(78427)),	-- Ring of the Raven
						frags(30, i(78494)),	-- Seal of Primordial Shadow
						frags(30, i(78421)),	-- Signet of Grasping Mouths
						frags(30, i(78496)),	-- Signet of Suturing
						-- Trinkets
						frags(65, i(77977)),	-- Eye of Unmaking
						frags(65, i(77976)),	-- Heart of Unliving
						frags(65, i(77978)),	-- Resolve of Undying
						frags(65, i(77975)),	-- Will of Unbinding
						frags(65, i(77974)),	-- Wrath of Unchaining
						frags(45, i(77982)),	-- Bone-Link Fetish
						frags(45, i(77972)),	-- Creche of the Final Dragon
						frags(45, i(77980)),	-- Cunning of the Cruel
						frags(45, i(77983)),	-- Indomitable Pride
						frags(45, i(77971)),	-- Insignia of the Corrupted Mind
						frags(45, i(77969)),	-- Seal of the Seven Signs
						frags(45, i(77970)),	-- Soulshifter Vortex
						frags(45, i(77973)),	-- Starcatcher Compass
						frags(45, i(77981)),	-- Windward Heart
						frags(45, i(77979)),	-- Vial of Shadows
						
						-- Mounts
						-- CRIEVE NOTE: This mount doesn't appear to be on the vendor directly.
						-- frags(250, i(69224)),	-- Pureblood Fire Hawk (MOUNT!) [Smoldering Egg of Millagazor]
						
						-- All BoP random statted items (aka Flickering gear) from Heroic Firelands.
						-- 	This gear will be purchased via a satchel, and the item stats will be generated once the item is removed from the bag.
						-- 	The satchel also contains a chance to drop one the following mounts:
						-- 		Flametalon of Alysrazor
						filter(MOUNTS, {
							["providers"] = {
								{ "i", 239111 },	-- Satchel of the Flickering Cowl (Cloth)
								{ "i", 239220 },	-- Satchel of the Flickering Shoulderpads (Leather)
								{ "i", 239112 },	-- Satchel of the Flickering Shoulders (Mail)
								{ "i", 239113 },	-- Satchel of the Flickering Wristbands (Leather)
								{ "i", 239114 },	-- Satchel of the Flickering Handguards (Plate)
							},
							description = "The randomized satchels whose loot originates from Heroic Firelands all have a chance to contain one of the following mounts.",
							["groups"] = {
								i(71665),	-- Flametalon of Alysrazor (MOUNT!)
								-- CRIEVE NOTE: Since the Pureblood Fire Hawk isn't on the vendor directly, it's been speculated to appear from this satchel instead.
								i(69224),	-- Pureblood Fire Hawk (MOUNT!) [Smoldering Egg of Millagazor]
							},
						}),
						frags(30, i(239111, {	-- Satchel of the Flickering Cowl
							i(71421),	-- Flickering Cowl (Cloth)
						})),
						frags(25, i(239220, {	-- Satchel of the Flickering Shoulderpads
							i(71450),	-- Flickering Shoulderpads (Leather)
						})),
						frags(25, i(239112, {	-- Satchel of the Flickering Shoulders
							i(71403),	-- Flickering Shoulders (Mail)
						})),
						frags(25, i(239113, {	-- Satchel of the Flickering Wristbands
							i(71428),	-- Flickering Wristbands (Leather)
						})),
						frags(25, i(239114, {	-- Satchel of the Flickering Handguards
							i(71458),	-- Flickering Handguards (Plate)
						})),
						-- Normal Tier 12 Helm Tokens
						frags(30, i(71675)),	-- Helm of the Fiery Conqueror
						frags(30, i(71682)),	-- Helm of the Fiery Protector
						frags(30, i(71668)),	-- Helm of the Fiery Vanquisher
						-- Normal Tier 12 Shoulder Tokens
						frags(30, i(71681)),	-- Mantle of the Fiery Conqueror
						frags(30, i(71688)),	-- Mantle of the Fiery Protector
						frags(30, i(71674)),	-- Mantle of the Fiery Vanquisher
						-- Heroic Trinkets
						frags(80, i(69150)),	-- Matrix Restabilizer [Heroic]
						frags(80, i(69110)),	-- Variable Pulse Lightning Capacitor [Heroic]
						frags(80, i(69167)),	-- Vessel of Acceleration [Heroic]
						frags(70, i(69111)),	-- Jaws of Defeat [Heroic]
						frags(70, i(69112)),	-- The Hungerer [Heroic]
						frags(70, i(69149)),	-- Eye of Blazing Power [Heroic]
						frags(70, i(69138)),	-- Spidersilk Spindle [Heroic]
						frags(70, i(69109)),	-- Scales of Life [Heroic]
						-- Normal Difficulty Ragnaros loot
						frags(70, i(71353)),	-- Arathar, the Eye of Flame
						--[[
						-- CRIEVE NOTE: They didn't seem to include this on the vendor.
						frags(50, i(71356)),	-- Crown of Flame
						frags(50, i(71354)),	-- Choker of the Vanquished Lord
						frags(50, i(70921)),	-- Pauldrons of Roaring Flame
						frags(50, i(71358)),	-- Fingers of Incineration
						frags(50, i(71357)),	-- Majordomo's Chain of Office
						]]--
						-- All Normal Difficulty Firelands Weapons (ilvl 378 and 384)
						frags(70, i(71798)),	-- Sho'ravon, Greatstaff of Annihilation [384]
						frags(70, i(71352)),	-- Sulfuras, the Extinguished Hand [384]
						frags(50, i(71355)),	-- Ko'gun, Hammer of the Firelord [384]
						frags(45, i(69897)),	-- Fandral's Flamescythe
						frags(45, i(71347)),	-- Stinger of the Flaming Scorpion
						frags(30, i(71312)),	-- Gatecrasher
						frags(30, i(70915)),	-- Shard of Torment
						frags(15, i(71323)),	-- Molten Scream
						frags(45, i(71014)),	-- Skullstealer Greataxe
						frags(30, i(71013)),	-- Feeding Frenzy
						frags(30, i(70733)),	-- Alysra's Razor
						frags(45, i(71039)),	-- Funeral Pyre
						frags(30, i(70922)),	-- Mandible of Beth'tilac
						frags(30, i(71779)),	-- Avool's Incendiary Shanker
						frags(30, i(71787)),	-- Entrail Disgorger
						frags(35, i(71776)),	-- Eye of Purification
						frags(35, i(71785)),	-- Firethorn Mindslicer
						frags(30, i(71782)),	-- Shatterskull Bonecrusher
						frags(45, i(71775)),	-- Smoldering Censer of Purity
						frags(45, i(71780)),	-- Zoid's Firelit Greatsword
						frags(60, i(71617)),	-- Crystallized Firestone
						frags(1, currency(3148)),	-- Fissure Stone Fragment
						frags(1, i(239110, {	-- Commendation of Service
							currency(395),	-- Justice Points
						})),
					},
				}),
			}),
		},
	})),
})));
-- #endif
