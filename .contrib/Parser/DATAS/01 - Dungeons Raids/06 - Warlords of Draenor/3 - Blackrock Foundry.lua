-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

------ Encounter Constants ------
local OREGORGER = 1202;
local GRUUL = 1161;
local BLAST_FURNACE = 1154;
local HANSGAR_AND_FRANZOK = 1155;
local FLAMEBENDER_KAGRAZ = 1123;
local KROMOG = 1162;
local BEASTLORD_DARMAC = 1122;
local OPERATOR_THOGAR = 1147;
local IRON_MAIDENS = 1203;
local BLACKHAND = 959;

------ EncounterToCRS ------
local EncounterToCRS = {
	[OREGORGER] = { 77182 },	-- Oregorger
	[GRUUL] = { 76877 },	-- Gruul
	[BLAST_FURNACE] = { 76806 },	-- The Blast Furnace
	[HANSGAR_AND_FRANZOK] = {
		76973,	-- Hans'gar
		76974,	-- Franzok
	},
	[FLAMEBENDER_KAGRAZ] = { 76814 },	-- Flamebender Ka'graz
	[KROMOG] = { 77692 },	-- Kromog
	[BEASTLORD_DARMAC] = { 76865 },	-- Beastlord Darmac
	[OPERATOR_THOGAR] = { 76906 },	-- Operator Thogar
	[IRON_MAIDENS] = {
		77557,	-- Admiral Gar'an
		77231,	-- Enforcer Sorka
		77477,	-- Marak the Blooded
	},
	[BLACKHAND] = { 77325 },	-- Blackhand
};

------ Common Symlinks -----
local SYM_CONQ_HELM =	{{"select","itemID",
						115568,	-- Helmet of Guiding Light
						115586,	-- Shadow Council's Hood
						115563,	-- Soul Priest's Hood
						},{"whereMyModID"}}
local SYM_CONQ_SHLDR =	{{"select","itemID",
						115565,	-- Pauldrons of Guiding Light
						115589,	-- Shadow Council's Mantle
						115561,	-- Soul Priest's Shoulderguards
						},{"whereMyModID"}}
local SYM_CONQ_GLOVE =	{{"select","itemID",
						115567,	-- Gauntlets of Guiding Light
						115585,	-- Shadow Council's Gloves
						115562,	-- Soul Priest's Gloves
						},{"whereMyModID"}}
local SYM_CONQ_CHEST =	{{"select","itemID",
						115566,	-- Battleplate of Guiding Light
						115588,	-- Shadow Council's Robes
						115560,	-- Soul Priest's Raiment
						},{"whereMyModID"}}
local SYM_CONQ_LEGS =	{{"select","itemID",
						115569,	-- Legplates of Guiding Light
						115587,	-- Shadow Council's Leggings
						115564,	-- Soul Priest's Leggings
						},{"whereMyModID"}}
local SYM_PROT_HELM =	{{"select","itemID",
						115584,	-- Blackhand's Faceguard
						115556,	-- Helm of the Somber Gaze
						115545,	-- Rylakstalker's Headguard
						115579,	-- Windspeaker's Faceguard
						},{"whereMyModID"}}
local SYM_PROT_SHLDR =	{{"select","itemID",
						115581,	-- Blackhand's Shoulderguards
						115559,	-- Mantle of the Somber Gaze
						115547,	-- Rylakstalker's Spaulders
						115576,	-- Windspeaker's Mantle
						},{"whereMyModID"}}
local SYM_PROT_GLOVE =	{{"select","itemID",
						115583,	-- Blackhand's Handguards
						115555,	-- Handwraps of the Somber Gaze
						115549,	-- Rylakstalker's Gloves
						115578,	-- Windspeaker's Handwraps
						},{"whereMyModID"}}
local SYM_PROT_CHEST =	{{"select","itemID",
						115582,	-- Blackhand's Chestguard
						115548,	-- Rylakstalker's Tunic
						115558,	-- Vest of the Somber Gaze
						115577,	-- Windspeaker's Tunic
						},{"whereMyModID"}}
local SYM_PROT_LEGS =	{{"select","itemID",
						115580,	-- Blackhand's Legguards
						115557,	-- Legwraps of the Somber Gaze
						115546,	-- Rylakstalker's Legguards
						115575,	-- Windspeaker's Legwraps
						},{"whereMyModID"}}
local SYM_VANQ_HELM =	{{"select","itemID",
						115553,	-- Arcanoshatter Hood
						115542,	-- Living Wood Headpiece
						115539,	-- Ogreskull Boneplate Greathelm
						115572,	-- Poisoner's Helmet
						},{"whereMyModID"}}
local SYM_VANQ_SHLDR =	{{"select","itemID",
						115551,	-- Arcanoshatter Mantle
						115544,	-- Living Wood Spaulders
						115536,	-- Ogreskull Boneplate Pauldrons
						115574,	-- Poisoner's Spaulders
						},{"whereMyModID"}}
local SYM_VANQ_GLOVE =	{{"select","itemID",
						115552,	-- Arcanoshatter Gloves
						115541,	-- Living Wood Grips
						115538,	-- Ogreskull Boneplate Gauntlets
						115571,	-- Poisoner's Gloves
						},{"whereMyModID"}}
local SYM_VANQ_CHEST =	{{"select","itemID",
						115550,	-- Arcanoshatter Robes
						115540,	-- Living Wood Raiment
						115537,	-- Ogreskull Boneplate Breastplate
						115570,	-- Poisoner's Tunic
						},{"whereMyModID"}}
local SYM_VANQ_LEGS =	{{"select","itemID",
						115554,	-- Arcanoshatter Leggings
						115543,	-- Living Wood Legguards
						115535,	-- Ogreskull Boneplate Greaves
						115573,	-- Poisoner's Legguards
						},{"whereMyModID"}}
local function SymModID(sym, modID)
	local symmodid = { sym[1],{"where","modID",modID}}
	return symmodid
end

------ EncounterToLoot ------
local EncounterToLoot = {
	[OREGORGER] = {
		i(119448),	-- Head-Lopper Skullscythe
		i(113874),	-- Oregorger's Acid-Etched Gutripper
		i(113879),	-- Caged Living Ooze
		i(113880),	-- Acidic Jaws
		i(113882),	-- Glutton's Kerchief
		i(113884),	-- Unstable Slag Shoulderplates
		i(113878),	-- Barrage Dodger Cloak
		i(113883),	-- Ravenous Greatcloak
		i(113881),	-- Chestplate of Rolling Fury
		i(113876),	-- Toothbreaker Grips
		i(113875),	-- Corrosion-Proof Legguards
		i(113877),	-- Unexploded Explosive Shard
		i(119194),	-- Goren Soul Repository
	},
	[GRUUL] = {
		i(113869),	-- Inferno-Flame Staff
		i(113862),	-- Taner's Terrible Spine
		i(113868),	-- Flare-Eyed Hood
		i(113863),	-- Gronn-Skin Crown
		i(113865),	-- Darklight Necklace
		i(113872),	-- Gruul's Lip Ring
		i(113867),	-- Spaulders of Reflected Stone
		i(113873),	-- Gronn-Stitched Greatcloak
		i(120078),	-- Runescribed Gronncloak
		i(113870),	-- Vest of Forceful Fury
		i(113871),	-- Bracers of Martial Perfection
		i(113864),	-- Cavedweller's Climbers
		i(113866),	-- Phosphorescent Seal
		i(118114),	-- Meaty Dragonspine Trophy
	},
	[BLAST_FURNACE] = {
		i(115569),	-- Legplates of Guiding Light
		i(115587),	-- Shadow Council's Leggings
		i(115564),	-- Soul Priest's Leggings
		i(115580),	-- Blackhand's Legguards
		i(115557),	-- Legwraps of the Somber Gaze
		i(115546),	-- Rylakstalker's Legguards
		i(115575),	-- Windspeaker's Legwraps
		i(115554),	-- Arcanoshatter Leggings
		i(115543),	-- Living Wood Legguards
		i(115535),	-- Ogreskull Boneplate Greaves
		i(115573),	-- Poisoner's Legguards
		i(113886),	-- Crescent of Living Magma
		i(113885),	-- Mouth of The Fury
		i(113891),	-- Blast-Proof Cowl
		i(113894),	-- Lava-Dipped Greathelm
		i(113892),	-- Engineer's Grounded Gorget
		i(113890),	-- Feldspar's Control Choker
		i(113887),	-- Bracers of Spattered Steel
		i(113896),	-- Fleshmelter Bracers
		i(113895),	-- Furnace Tender's Treads
		i(113888),	-- Slagstomper Treads
		i(113893),	-- Blast Furnace Door
		i(113889),	-- Elementalist's Shielding Talisman
		n(BONUS_ROLL, {
			i(119307, {	-- Leggings of the Iron Conqueror
				["sym"] = SYM_CONQ_LEGS,
			}),
			i(119320, {	-- Leggings of the Iron Protector
				["sym"] = SYM_PROT_LEGS,
			}),
			i(119313, {	-- Leggings of the Iron Vanquisher
				["sym"] = SYM_VANQ_LEGS,
			}),
		}),
	},
	[HANSGAR_AND_FRANZOK] = {
		i(113904),	-- Franzok's Headsmasher
		i(113897),	-- Hans'gar's Forgehammer
		i(113910),	-- Hardened Greathelm
		i(113900),	-- Vertebrae Protector
		i(113903),	-- Giant Pumpers
		i(113899),	-- Neckbreaker Shoulderguards
		i(113902),	-- Chestguard of Unending Roars
		i(113898),	-- Eye-Catching Gilded Robe
		i(113906),	-- Gauntlets of Dramatic Blows
		i(113907),	-- Girdle of Unconquered Glory
		i(113908),	-- Razoredge Blade Ring
		i(113901),	-- Six-Eyed Band
		i(113905),	-- Tablet of Turnbuckle Teamwork
	},
	[FLAMEBENDER_KAGRAZ] = {
		i(115566),	-- Battleplate of Guiding Light
		i(115588),	-- Shadow Council's Robes
		i(115560),	-- Soul Priest's Raiment
		i(115582),	-- Blackhand's Chestguard
		i(115548),	-- Rylakstalker's Tunic
		i(115558),	-- Vest of the Somber Gaze
		i(115577),	-- Windspeaker's Tunic
		i(115550),	-- Arcanoshatter Robes
		i(115540),	-- Living Wood Raiment
		i(115537),	-- Ogreskull Boneplate Breastplate
		i(115570),	-- Poisoner's Tunic
		i(113913),	-- Ka'graz's Burning Blade
		i(113920),	-- Dagger of Blazing Radiance
		i(113918),	-- Molten Edge Eviscerator
		i(120077),	-- Choker of Bloody Flame
		i(113923),	-- Fiery Links of Courage
		i(113924),	-- Flamebender's Shoulderguards
		i(113916),	-- Charbreath Firecloak
		i(113925),	-- Flamefury Gauntlets
		i(113915),	-- Grips of Rekindling
		i(113921),	-- Firestorm Legplates
		i(113914),	-- Leggings of the Molten Torrent
		i(113919),	-- Treads of Rekindled Flames
		i(113917),	-- Cinderwolf Signet
		i(113922),	-- Seal of Unquenchable Flame
		i(119193),	-- Horn of Screaming Spirits
		n(BONUS_ROLL, {
			i(119305, {	-- Chest of the Iron Conqueror
				["sym"] = SYM_CONQ_CHEST,
			}),
			i(119318, {	-- Chest of the Iron Protector
				["sym"] = SYM_PROT_CHEST,
			}),
			i(119315, {	-- Chest of the Iron Vanquisher
				["sym"] = SYM_VANQ_CHEST,
			}),
		}),
	},
	[KROMOG] = {
		i(115568),	-- Helmet of Guiding Light
		i(115586),	-- Shadow Council's Hood
		i(115563),	-- Soul Priest's Hood
		i(115584),	-- Blackhand's Faceguard
		i(115556),	-- Helm of the Somber Gaze
		i(115545),	-- Rylakstalker's Headguard
		i(115579),	-- Windspeaker's Faceguard
		i(115553),	-- Arcanoshatter Hood
		i(115542),	-- Living Wood Headpiece
		i(115539),	-- Ogreskull Boneplate Greathelm
		i(115572),	-- Poisoner's Helmet
		i(113934),	-- Fang of the Earth
		i(113927),	-- Kromog's Brutal Fist
		i(113926),	-- Kromog's Protecting Palm
		i(113932),	-- Talisman of the Fomor
		i(113928),	-- Earthripple Shoulderpads
		i(113929),	-- Cloak of Delving Secrets
		i(113937),	-- Runefrenzy Greatcloak
		i(113935),	-- Bracers of Shattered Stalactites
		i(113933),	-- Stonewarper Wraps
		i(113930),	-- Earthgrasp Girdle
		i(113936),	-- Sabatons of Fractal Earth
		i(113938),	-- Stonefist Band
		i(113931),	-- Beating Heart of the Mountain
		n(BONUS_ROLL, {
			i(119308, {	-- Helm of the Iron Conqueror
				["sym"] = SYM_CONQ_HELM,
			}),
			i(119321, {	-- Helm of the Iron Protector
				["sym"] = SYM_PROT_HELM,
			}),
			i(119312, {	-- Helm of the Iron Vanquisher
				["sym"] = SYM_VANQ_HELM,
			}),
		}),
	},
	[BEASTLORD_DARMAC] = {
		i(113939),	-- Tal'rak, Bloody Skull of the Thunderlords
		i(113946),	-- Heart of the Clefthoof
		i(113952),	-- Choker of Bestial Force
		i(113951),	-- Unrendable Wolfhide Robes
		i(113943),	-- Bracers of the Wolf's Cunning
		i(113949),	-- Cannonball Loader's Grips
		i(113950),	-- Ironcrusher's Collar
		i(113941),	-- Seeking Ember Girdle
		i(113944),	-- Legguards of the Stampede
		i(113942),	-- Inferno Breath Sandals
		i(113947),	-- Epicenter Loop
		i(113940),	-- Seal of the Savage Howl
		i(113948),	-- Darmac's Unstable Talisman
		i(119192),	-- Ironspike Chew Toy
	},
	[OPERATOR_THOGAR] = {
		i(115565),	-- Pauldrons of Guiding Light
		i(115589),	-- Shadow Council's Mantle
		i(115561),	-- Soul Priest's Shoulderguards
		i(115581),	-- Blackhand's Shoulderguards
		i(115559),	-- Mantle of the Somber Gaze
		i(115547),	-- Rylakstalker's Spaulders
		i(115576),	-- Windspeaker's Mantle
		i(115551),	-- Arcanoshatter Mantle
		i(115544),	-- Living Wood Spaulders
		i(115536),	-- Ogreskull Boneplate Pauldrons
		i(115574),	-- Poisoner's Spaulders
		i(113960),	-- Engine-Stoker's Lantern
		i(113953),	-- Thogar's Control Rod
		i(113959),	-- Thogar's Serrated Chain
		i(113958),	-- Woundsear Robes
		i(113956),	-- Bracers of Enkindled Power
		i(113962),	-- Squire's Electroplated Bracers
		i(113964),	-- Conductor's Multi-Pocket Girdle
		i(113955),	-- Grenadier's Belt
		i(113961),	-- Iron Bellow Sabatons
		i(113954),	-- Railwalker's Ratcheted Boots
		i(113957),	-- Firemender's Smoldering Signet
		i(113963),	-- Siege Bomber's Band
		n(BONUS_ROLL, {
			i(119309, {	-- Shoulders of the Iron Conqueror
				["sym"] = SYM_CONQ_SHLDR,
			}),
			i(119322, {	-- Shoulders of the Iron Protector
				["sym"] = SYM_PROT_SHLDR,
			}),
			i(119314, {	-- Shoulders of the Iron Vanquisher
				["sym"] = SYM_VANQ_SHLDR,
			}),
		}),
	},
	[IRON_MAIDENS] = {
		i(115567),	-- Gauntlets of Guiding Light
		i(115585),	-- Shadow Council's Gloves
		i(115562),	-- Soul Priest's Gloves
		i(115583),	-- Blackhand's Handguards
		i(115555),	-- Handwraps of the Somber Gaze
		i(115549),	-- Rylakstalker's Gloves
		i(115578),	-- Windspeaker's Handwraps
		i(115552),	-- Arcanoshatter Gloves
		i(115541),	-- Living Wood Grips
		i(115538),	-- Ogreskull Boneplate Gauntlets
		i(115571),	-- Poisoner's Gloves
		i(113966),	-- Gar'an's Brutal Spearlauncher
		i(113973),	-- Koloch Na, the Blood Feast
		i(113965),	-- Sorka's Chainfist
		i(113978),	-- Sorka's Nightshade Cowl
		i(113972),	-- Cloak of Sanguine Terror
		i(113971),	-- Drape of the Dark Hunt
		i(113977),	-- Bloodsoaked Heart Protector
		i(113968),	-- Bloodwhirl Bracers
		i(113967),	-- Deckhand's Rope Belt
		i(113976),	-- Uktar's Belt of Chiming Rings
		i(113970),	-- Turret Mechanic's Legwraps
		i(113974),	-- Treads of the Dark Hunt
		i(113975),	-- Uk'urogg's Corrupted Seal
		i(113969),	-- Vial of Convulsive Shadows
		n(BONUS_ROLL, {
			i(119306, {	-- Gauntlets of the Iron Conqueror
				["sym"] = SYM_CONQ_GLOVE,
			}),
			i(119319, {	-- Gauntlets of the Iron Protector
				["sym"] = SYM_PROT_GLOVE,
			}),
			i(119311, {	-- Gauntlets of the Iron Vanquisher
				["sym"] = SYM_VANQ_GLOVE,
			}),
		}),
	},
	[BLACKHAND] = {
		i(113988),	-- Blackhand Doomstaff
		i(113980),	-- Iron Soldier's Saber
		i(113981),	-- Slagbomber's Hood
		i(113990),	-- Overdriven Spaulders
		i(113982),	-- Chestguard of the Siegemaker
		i(113989),	-- Shattering Smash Leggings
		i(113986),	-- Auto-Repairing Autoclave
		i(113987),	-- Battering Talisman
		i(113984),	-- Blackiron Micro Crucible
		i(113983),	-- Forgemaster's Insignia
		i(113985),	-- Humming Blackiron Trigger
	},
};

------ Zone Drops ----------
local ZoneDropLoot = {
	i(119332),	-- Bracers of Darkened Skies
	i(119333),	-- Bracers of Shattered Limbs
	i(119331),	-- Bracers of Visceral Force
	i(119334),	-- Bracers of Callous Disregard
	i(119341),	-- Doomslag Greatboots
	i(119342),	-- Furnace Stoker's Footwraps
	i(119340),	-- Iron-Flecked Sandals
	i(119339),	-- Treads of the Veteran Smith
}

local InstanceHelper = CreateInstanceHelper(EncounterToCRS, EncounterToLoot, ZoneDropLoot)
local Boss, BossOnly, Difficulty, CommonBossDrops, ZoneDrops =
InstanceHelper.Boss, InstanceHelper.BossOnly, InstanceHelper.Difficulty, InstanceHelper.CommonBossDrops, InstanceHelper.ZoneDrops


root(ROOTS.Instances, expansion(EXPANSION.WOD, bubbleDown({ ["timeline"] = { ADDED_6_0_3_LAUNCH } }, {
	inst(457, {	-- Blackrock Foundry
		["mapID"] = 598,
		["maps"] = { 596, 597, 599, 600 },
		["coord"] = { 51.55, 27.23, GORGROND },
		["isRaid"] = true,
		["lvl"] = 100,
		["g"] = {
			n(ACHIEVEMENTS, {
				ach(11740, {["timeline"] = {ADDED_7_2_0}}),	-- Make it W-orc W-orc (Blackrock Foundry)
				ach(8989, {	-- Slagworks
					crit(25019, {	-- Gruul
						["_encounter"] = { 1161, DIFFICULTY.RAID.LFR },
					}),
					crit(25020, {	-- Oregorger
						["_encounter"] = { 1202, DIFFICULTY.RAID.LFR },
					}),
					crit(25021, {	-- The Blast Furnace
						["_encounter"] = { 1154, DIFFICULTY.RAID.LFR },
					}),
				}),
				ach(8990, {	-- Black Forge
					crit(25022, {	-- Hans'gar and Franzok
						["_encounter"] = { 1155, DIFFICULTY.RAID.LFR },
					}),
					crit(25023, {	-- Flamebender Ka'graz
						["_encounter"] = { 1123, DIFFICULTY.RAID.LFR },
					}),
					crit(25024, {	-- Kromog
						["_encounter"] = { 1162, DIFFICULTY.RAID.LFR },
					}),
				}),
				ach(8991, {	-- Iron Assembly
					crit(25025, {	-- Beastlord Darmac
						["_encounter"] = { 1122, DIFFICULTY.RAID.LFR },
					}),
					crit(25026, {	-- Operator Thogar
						["_encounter"] = { 1147, DIFFICULTY.RAID.LFR },
					}),
					crit(25027, {	-- The Iron Maidens
						["_encounter"] = { 1203, DIFFICULTY.RAID.LFR },
					}),
				}),
				ach(8992, {	-- Blackhand's Crucible
					crit(24982, {	-- Blackhand
						["_encounter"] = { 959, DIFFICULTY.RAID.LFR },
					}),
				}),
				ach(9417),	-- Blackrock Foundry Guild Run
			}),
			CommonBossDrops({
				un(REMOVED_FROM_GAME, i(115510, {	-- Elemental Rune
					un(REMOVED_FROM_GAME, i(115509)),	-- Elemental Tablet
				})),
			}),
			Difficulty(DIFFICULTY.RAID.MULTI.ALL).AddGroups({
				BossOnly(BLAST_FURNACE, {	-- The Blast Furnace
					un(REMOVED_FROM_GAME, i(115479)),	-- Heart of the Fury
				}),
				BossOnly(FLAMEBENDER_KAGRAZ, {	-- Flamebender Ka'graz
					un(REMOVED_FROM_GAME, i(115493)),	-- Flamebender's Tome
				}),
				BossOnly(IRON_MAIDENS, {	-- The Iron Maidens
					["crs"] = {
						77557,	-- Admiral Gar'an
						77231,	-- Enforcer Sorka
						77477,	-- Marak the Blooded
					},
					["g"] = {
						un(REMOVED_FROM_GAME, i(115494)),	-- Draenic Thaumaturgical Orb
					},
				}),
				BossOnly(BLACKHAND, {	-- Blackhand
					un(REMOVED_FROM_GAME, i(115523)),	-- Blackhand's Severed Arm
				}),
			}),
			Difficulty(DIFFICULTY.RAID.LFR, {	-- Queue NPC
				["crs"] = { 94870 },	-- Seer Kazal <Shadowmoon Exile>
			}),
			-- LFR has unique items for whatever reason
			Difficulty(DIFFICULTY.RAID.LFR).AddGroups({
				header(HEADERS.Achievement, 8989, {	-- Slagworks
					BossOnly(OREGORGER, {
						i(116381),	-- Oregorger's Blackrock Shanker
						i(116380),	-- Oregorger's Venomous Canine
						i(116257),	-- Acid-Munched Greathelm
						i(116310),	-- Slag-Coated Cabochon
						i(116308),	-- Greatcloak of Insatiable Hunger
						i(116007),	-- Bracers of Unending Consumption
						i(116046),	-- Bracers of Satiation
						i(116033),	-- Roilgut Gauntlets
						i(116215),	-- Barrage Blaster Belt
						i(116240),	-- Waistplate of Caustic Spittle
						i(116021),	-- Chasmwalker Sandals
					}),
					BossOnly(GRUUL, {
						i(116229),	-- Gaze of the Gronn Killer
						i(116307),	-- Cloak of Unfulfilled Potential
						i(116045),	-- Spelunker's Chestguard
						i(116242),	-- Gruul's Smallest Shackles
						i(116216),	-- Grips of Shackled Power
						i(116039),	-- Delver's Belt
						i(116009),	-- Rockfall Girdle
						i(116018),	-- Cave Smasher Leggings
						i(116299),	-- Eye of the Gronn
					}),
					BossOnly(BLAST_FURNACE, {
						i(116382),	-- Spire of Pyroclastic Flame
						i(116379),	-- Flickering Lantern Wisp
						i(116004),	-- Pyroclastic Hood
						i(116228),	-- Spaulders of Tempered Fury
						i(116037),	-- Chest of Heaving Bellows
						i(116015),	-- Bracers of Searing Heat
						i(116241),	-- Gauntlets of Electrocution
						i(116041),	-- Grips of the Ruptured Furnace
						i(120385),	-- Ashlink Legguards
						i(120391),	-- Blacksteel Legplates
						i(120377),	-- Ebonflame Leggings
						i(116214),	-- Raging Pyroclasm Leggings
						i(120379),	-- Sootfur Legwraps
						i(116303),	-- Firecaller's Scorched Seal
						i(116315),	-- Furyheart Talisman
					}),
				}),
				header(HEADERS.Achievement, 8990, {	-- Black Forge
					BossOnly(HANSGAR_AND_FRANZOK, {
						i(116012),	-- Fresh-Face Hood
						i(116311),	-- Choker of Infinite Durability
						i(116256),	-- Elbow Drop Spaulders
						i(116305),	-- Scorchburn Cloak
						i(116227),	-- Blood-Binder Chestguard
						i(116217),	-- Brawler Brother's Bracers
						i(116034),	-- Drop Kickers
						i(116238),	-- Heel Protectors
					}),
					BossOnly(FLAMEBENDER_KAGRAZ, {
						i(116385),	-- Magma Monsoon Mace
						i(116384),	-- Steelbringer's Polished Shield
						i(116245),	-- Maw of Charring Breath
						i(116313),	-- Choker of Oozing Wounds
						i(120389),	-- Ashlink Hauberk
						i(120393),	-- Blacksteel Chestplate
						i(120375),	-- Ebonflame Robes
						i(120380),	-- Sootfur Harness
						i(116226),	-- Scorched Gauntlet Liners
						i(116253),	-- Lava-Crushing Grips
						i(116264),	-- Cinderhide Belt
						i(116047),	-- Bloodsteel Warbelt
						i(116040),	-- Magma-Mauled Leggings
						i(116011),	-- Fixated Treads
						i(116316),	-- Captured Flickerspark
					}),
					BossOnly(KROMOG, {
						i(116387),	-- Axe of the Stone Geyser
						i(116386),	-- Earthbound Shield
						i(116035),	-- Rockbreaker Warcap
						i(116044),	-- Erupting Mantle-
						i(116218),	-- Chestguard of Allegorical Shadows
						i(116243),	-- Chestplate of Runed Earth
						i(116008),	-- Robes of Living Earth
						i(116254),	-- Reverberating Bracers
						i(116006),	-- Thundersmash Gloves
						i(120387),	-- Ashlink Treads
						i(120394),	-- Blacksteel Greatboots
						i(120378),	-- Ebonflame Sandals
						i(116222),	-- Slam Jammers
						i(120383),	-- Sootfur Stompers
						i(116300),	-- Ring of Shattered Faults
						i(116318),	-- Stoneheart Idol
					}),
				}),
				header(HEADERS.Achievement, 8991, {	-- Iron Assembly
					BossOnly(BEASTLORD_DARMAC, {
						i(116306),	-- Dreaded Wing
						i(116255),	-- Heartsmasher Chestplate
						i(116016),	-- Robes of Brutal Tantrums
						i(116038),	-- Beastmaster's Iron Bracers
						i(116262),	-- Waistplate of Soothed Beasts
						i(116223),	-- Legguards of the Unstoppable Charge
						i(116048),	-- Rylakk-Rider's Legguards
						i(116213),	-- Black Iron Spurs
						i(116019),	-- Treads of the Flaming Maw
						i(116302),	-- Thunderlord Trainer's Insignia
					}),
					BossOnly(OPERATOR_THOGAR, {
						i(116388),	-- Crack-Shot Longrifle
						i(116389),	-- Thogar's Imperialistic Spire
						i(120388),	-- Ashlink Pauldrons
						i(120395),	-- Blacksteel Shoulderplates
						i(120376),	-- Ebonflame Spaulders
						i(120381),	-- Sootfur Shoulderguards
						i(116013),	-- Spaulders of Soothing Flame
						i(116304),	-- Deadshot Longcloak
						i(116014),	-- Grips of Cauterization
						i(116049),	-- Raider's Spikeholder Belt
						i(116265),	-- Sniper's Ammo Belt
						i(116252),	-- Waistplate of Obliteration
						i(116239),	-- Gunnery Sergeant's Legplates
						i(116301),	-- Lava Shock Seal
					}),
					BossOnly(IRON_MAIDENS, {
						i(116390),	-- Battle Medic's Wand
						i(116220),	-- Grapeshot Hood
						i(116263),	-- Vortex Plate Helm
						i(116050),	-- Bombardeer's Targeting Helm
						i(116312),	-- Sorka's Ear Collection
						i(120386),	-- Ashlink Gloves
						i(120392),	-- Blacksteel Gauntlets
						i(120374),	-- Ebonflame Grips
						i(120384),	-- Sootfur Gauntlets
						i(116225),	-- Gauntlets of Flickering Blades
						i(116017),	-- Deckhand's Cord
						i(116051),	-- Rogg's Earthen Legguards
						i(116010),	-- Incendiary Leggings
						i(116250),	-- Impaler's Greatboots
						i(116314),	-- Blackheart Enforcer's Medallion
					}),
				}),
				header(HEADERS.Achievement, 8992, {	-- Blackhand's Crucible
					BossOnly(BLACKHAND, {
						i(116391),	-- Blackhand Forgehammer
						i(116393),	-- Dagger of the Shattered Crucible
						i(120390),	-- Ashlink Coif
						i(120396),	-- Blacksteel Casque
						i(120373),	-- Ebonflame Hood
						i(120382),	-- Sootfur Cap
						i(116309),	-- Spiked Foundry Collar
						i(116036),	-- Deathmark Shoulderguards
						i(116005),	-- Forgestoker's Shoulderpads
						i(116219),	-- Spaulders of Erupting Iron
						i(116244),	-- Spaulders of the Iron Crucible
						i(116022),	-- Flamestoker Wraps
						i(116224),	-- Bomb-Carrier's Harness
						i(116251),	-- Ironshatter Legplates
						i(116042),	-- Ram-Carrier's Treads
						i(116317),	-- Storage House Key
						i(138809, {	-- Illusion: Mark of Blackrock (ILLUSION!)
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(122200, {	-- Music Roll: A Siege of Worlds
							["timeline"] = { ADDED_6_1_0 },
						}),
					}),
				}),
			}),
			Difficulty(DIFFICULTY.RAID.MULTI.NORMAL_PLUS).AddGroups({
				BossOnly(OREGORGER, {	-- Oregorger
					ach(8979),	-- He Shoots, He Ores
				}),
				BossOnly(GRUUL, {	-- Gruul
					ach(8978),	-- The Iron Price
				}),
				BossOnly(BLAST_FURNACE, {	-- The Blast Furnace
					ach(8930, {	-- Ya, We've Got Time...
						["crs"] = { 76815 },	-- Primal Elementalist
					}),
				}),
				BossOnly(HANSGAR_AND_FRANZOK, {	-- Hans'gar and Franzok
					ach(8980),	-- Stamp Stamp Revolution
				}),
				BossOnly(FLAMEBENDER_KAGRAZ, {	-- Flamebender Ka'graz
					ach(8929, {	-- The Steel Has Been Brought
						["crs"] = { 77337 },	-- Aknor Steelbringer
						["groups"] = {
							follower(225),	-- Aknor Steelbringer
						},
					}),
				}),
				BossOnly(KROMOG, {	-- Kromog <Legend of the Mountain>
					ach(8983, {	-- Would You Give Me a Hand?
						["crs"] = { 77893 },	-- Grasping Earth
					}),
				}),
				BossOnly(BEASTLORD_DARMAC, {	-- Beastlord Darmac
					ach(8981, {	-- Fain Would Lie Down
						crit(24675, {	-- Dreadwing Mounted First
							["provider"] = { "n", 76874 },	-- Dreadwing
						}),
						crit(24676, {	-- Ironcrusher Mounted First
							["provider"] = { "n", 76945 },	-- Ironcrusher
						}),
						crit(24677, {	-- Cruelfang Mounted First
							["provider"] = { "n", 76884 },	-- Cruelfang
						}),
					}),
				}),
				BossOnly(OPERATOR_THOGAR, {	-- Operator Thogar
					ach(8982, {	-- There's Always a Bigger Train
						["providers"] = {
							{ "n", 81071 },	-- Exulting Wind-Up Train Wrecker
							{ "i", 45057 },	-- Wind-Up Train Wrecker
							{ "i", 44606 },	-- Toy Train Set
						},
					}),
				}),
				BossOnly(IRON_MAIDENS, {	-- The Iron Maidens
					ach(8984),	-- Be Quick or Be Dead
				}),
				BossOnly(BLACKHAND, {	-- Blackhand
					ach(8952),	-- Ashes, Ashes...
					i(138809, {	-- Illusion: Mark of Blackrock (ILLUSION!)
						["timeline"] = { ADDED_7_0_3 },
					}),
					i(122200, {	-- Music Roll: A Siege of Worlds
						["timeline"] = { ADDED_6_1_0 },
					}),
				}),
			}),
			Difficulty(DIFFICULTY.RAID.NORMAL).AddGroups({
				n(QUESTS, {
					q(37029, {	-- Sigil of the Black Hand
						["provider"] = { "n", 87225 },	-- Goraluk Anvilcrack
						["description"] = "The questgiver is hidden behind a load of boxes and crates to the right of the Iron Maidens.\n\nFinishing this quest will grant you immediate access to Blackhand on Normal difficulty each week.\n\n|cfffd1818This quest becomes unobtainable if you complete the Heroic or Mythic version first.|r",
						["altQuests"] = {
							37030,	-- Sigil of the Black Hand (Heroic)
							37031,	-- Sigil of the Black Hand (Mythic)
						},
						["g"] = {
							i(118382),	-- Ember of the Mountain (QI!)
							i(118383),	-- Heart of Stone (QI!)
							i(118384),	-- Sliver of Iron (QI!)
						},
					}),
					q(37553, {	-- Essence of the Iron Conqueror
						["provider"] = { "i", 120277 },	-- Essence of the Iron Conqueror
						["_drop"] = { "g" },	-- API lists all 3 token types
						["races"] = ALLIANCE_ONLY,
						["repeatable"] = true,
						["g"] = {
							i(120215, {	-- Helm of the Iron Conqueror
								["sym"] = SymModID(SYM_CONQ_HELM, 3),
							}),
							i(120216, {	-- Shoulders of the Iron Conqueror
								["sym"] = SymModID(SYM_CONQ_SHLDR, 3),
							}),
							i(120212, {	-- Chest of the Iron Conqueror
								["sym"] = SymModID(SYM_CONQ_CHEST, 3),
							}),
							i(120213, {	-- Gauntlets of the Iron Conqueror
								["sym"] = SymModID(SYM_CONQ_GLOVE, 3),
							}),
							i(120214, {	-- Leggings of the Iron Conqueror
								["sym"] = SymModID(SYM_CONQ_LEGS, 3),
							}),
						},
					}),
					q(37540, {	-- Essence of the Iron Conqueror
						["provider"] = { "i", 119310 },	-- ITEM
						["_drop"] = { "g" },	-- API lists all 3 token types
						["races"] = HORDE_ONLY,
						["repeatable"] = true,
						["g"] = {
							i(120215, {	-- Helm of the Iron Conqueror
								["sym"] = SymModID(SYM_CONQ_HELM, 3),
							}),
							i(120216, {	-- Shoulders of the Iron Conqueror
								["sym"] = SymModID(SYM_CONQ_SHLDR, 3),
							}),
							i(120212, {	-- Chest of the Iron Conqueror
								["sym"] = SymModID(SYM_CONQ_CHEST, 3),
							}),
							i(120213, {	-- Gauntlets of the Iron Conqueror
								["sym"] = SymModID(SYM_CONQ_GLOVE, 3),
							}),
							i(120214, {	-- Leggings of the Iron Conqueror
								["sym"] = SymModID(SYM_CONQ_LEGS, 3),
							}),
						},
					}),
					q(37555, {	-- Essence of the Iron Protector
						["provider"] = { "i", 120279 },	-- Essence of the Iron Protector
						["races"] = ALLIANCE_ONLY,
						["repeatable"] = true,
						["_drop"] = { "g" },	-- API lists all 3 token types
						["g"] = {
							i(120225, {	-- Helm of the Iron Protector
								["sym"] = SymModID(SYM_PROT_HELM, 3),
							}),
							i(120226, {	-- Shoulders of the Iron Protector
								["sym"] = SymModID(SYM_PROT_SHLDR, 3),
							}),
							i(120222, {	-- Chest of the Iron Protector
								["sym"] = SymModID(SYM_PROT_CHEST, 3),
							}),
							i(120223, {	-- Gauntlets of the Iron Protector
								["sym"] = SymModID(SYM_PROT_GLOVE, 3),
							}),
							i(120224, {	-- Leggings of the Iron Protector
								["sym"] = SymModID(SYM_PROT_LEGS, 3),
							}),
						},
					}),
					q(37543, {	-- Essence of the Iron Protector
						["provider"] = { "i", 119323 },	-- Essence of the Iron Protector
						["races"] = HORDE_ONLY,
						["repeatable"] = true,
						["_drop"] = { "g" },	-- API lists all 3 token types
						["g"] = {
							i(120225, {	-- Helm of the Iron Protector
								["sym"] = SymModID(SYM_PROT_HELM, 3),
							}),
							i(120226, {	-- Shoulders of the Iron Protector
								["sym"] = SymModID(SYM_PROT_SHLDR, 3),
							}),
							i(120222, {	-- Chest of the Iron Protector
								["sym"] = SymModID(SYM_PROT_CHEST, 3),
							}),
							i(120223, {	-- Gauntlets of the Iron Protector
								["sym"] = SymModID(SYM_PROT_GLOVE, 3),
							}),
							i(120224, {	-- Leggings of the Iron Protector
								["sym"] = SymModID(SYM_PROT_LEGS, 3),
							}),
						},
					}),
					q(37554, {	-- Essence of the Iron Vanquisher
						["provider"] = { "i", 120278 },	-- Essence of the Iron Vanquisher
						["races"] = ALLIANCE_ONLY,
						["repeatable"] = true,
						["_drop"] = { "g" },	-- API lists all 3 token types
						["g"] = {
							i(120218, {	-- Helm of the Iron Vanquisher
								["sym"] = SymModID(SYM_VANQ_HELM, 3),
							}),
							i(120220, {	-- Shoulders of the Iron Vanquisher
								["sym"] = SymModID(SYM_VANQ_SHLDR, 3),
							}),
							i(120221, {	-- Chest of the Iron Vanquisher
								["sym"] = SymModID(SYM_VANQ_CHEST, 3),
							}),
							i(120217, {	-- Gauntlets of the Iron Vanquisher
								["sym"] = SymModID(SYM_VANQ_GLOVE, 3),
							}),
							i(120219, {	-- Leggings of the Iron Vanquisher
								["sym"] = SymModID(SYM_VANQ_LEGS, 3),
							}),
						},
					}),
					q(37541, {	-- Essence of the Iron Vanquisher
						["provider"] = { "i", 119316 },	-- Essence of the Iron Vanquisher
						["races"] = HORDE_ONLY,
						["repeatable"] = true,
						["_drop"] = { "g" },	-- API lists all 3 token types
						["g"] = {
							i(120218, {	-- Helm of the Iron Vanquisher
								["sym"] = SymModID(SYM_VANQ_HELM, 3),
							}),
							i(120220, {	-- Shoulders of the Iron Vanquisher
								["sym"] = SymModID(SYM_VANQ_SHLDR, 3),
							}),
							i(120221, {	-- Chest of the Iron Vanquisher
								["sym"] = SymModID(SYM_VANQ_CHEST, 3),
							}),
							i(120217, {	-- Gauntlets of the Iron Vanquisher
								["sym"] = SymModID(SYM_VANQ_GLOVE, 3),
							}),
							i(120219, {	-- Leggings of the Iron Vanquisher
								["sym"] = SymModID(SYM_VANQ_LEGS, 3),
							}),
						},
					}),
				}),
				ZoneDrops(),
				Boss(OREGORGER),
				Boss(GRUUL),
				Boss(BLAST_FURNACE),
				Boss(HANSGAR_AND_FRANZOK),
				Boss(FLAMEBENDER_KAGRAZ),
				Boss(KROMOG),
				Boss(BEASTLORD_DARMAC, {
					i(113945, { ["ItemAppearanceModifierID"] = 0 }),	-- Flame Infusion Drape
				}),
				Boss(OPERATOR_THOGAR),
				Boss(IRON_MAIDENS),
				Boss(BLACKHAND, {
					i(113979, { ["ItemAppearanceModifierID"] = 0 }),	-- The Black Hand
				}),
				Boss(BLACKHAND, sharedData({
					["ignoreBonus"] = true,	-- in-game this drops with no modID
				},{
					i(120277, {	-- Essence of the Iron Conqueror
						["races"] = ALLIANCE_ONLY,
					}),
					i(119310, {	-- Essence of the Iron Conqueror
						["races"] = HORDE_ONLY,
					}),
					i(120279, {	-- Essence of the Iron Protector
						["races"] = ALLIANCE_ONLY,
					}),
					i(119323, {	-- Essence of the Iron Protector
						["races"] = HORDE_ONLY,
					}),
					i(120278, {	-- Essence of the Iron Vanquisher
						["races"] = ALLIANCE_ONLY,
					}),
					i(119316, {	-- Essence of the Iron Vanquisher
						["races"] = HORDE_ONLY,
					}),
				})),
			}),
			Difficulty(DIFFICULTY.RAID.HEROIC).AddGroups({
				n(QUESTS, {
					q(37030, {	-- Sigil of the Black Hand (Heroic)
						["description"] = "The questgiver is hidden behind a load of boxes and crates to the right of the Iron Maidens.\n\nFinishing this quest will grant you immediate access to Blackhand on Heroic difficulty each week.\n\n|cfffd1818This quest becomes unobtainable if you complete the Mythic version first.|r\n",
						["altQuests"] = { 37031 },	-- Sigil of the Black Hand (Mythic)
						["provider"] = { "n", 87225 },	-- Goraluk Anvilcrack
						["g"] = {
							i(118387),	-- Ember of the Mountain (QI!)
							i(118386),	-- Heart of Stone (QI!)
							i(118385),	-- Sliver of Iron (QI!)
						},
					}),
					q(37557, {	-- Essence of the Iron Conqueror
						["provider"] = { "i", 120280 },	-- Essence of the Iron Conqueror
						["races"] = ALLIANCE_ONLY,
						["repeatable"] = true,
						["_drop"] = { "g" },	-- API lists all 3 token types
						["g"] = {
							i(120230, {	-- Helm of the Iron Conqueror
								["sym"] = SymModID(SYM_CONQ_HELM, 5),
							}),
							i(120231, {	-- Shoulders of the Iron Conqueror
								["sym"] = SymModID(SYM_CONQ_SHLDR, 5),
							}),
							i(120227, {	-- Chest of the Iron Conqueror
								["sym"] = SymModID(SYM_CONQ_CHEST, 5),
							}),
							i(120228, {	-- Gauntlets of the Iron Conqueror
								["sym"] = SymModID(SYM_CONQ_GLOVE, 5),
							}),
							i(120229, {	-- Leggings of the Iron Conqueror
								["sym"] = SymModID(SYM_CONQ_LEGS, 5),
							}),
						},
					}),
					q(37551, {	-- Essence of the Iron Conqueror
						["provider"] = { "i", 120206 },	-- Essence of the Iron Conqueror
						["races"] = HORDE_ONLY,
						["repeatable"] = true,
						["_drop"] = { "g" },	-- API lists all 3 token types
						["g"] = {
							i(120230, {	-- Helm of the Iron Conqueror
								["sym"] = SymModID(SYM_CONQ_HELM, 5),
							}),
							i(120231, {	-- Shoulders of the Iron Conqueror
								["sym"] = SymModID(SYM_CONQ_SHLDR, 5),
							}),
							i(120227, {	-- Chest of the Iron Conqueror
								["sym"] = SymModID(SYM_CONQ_CHEST, 5),
							}),
							i(120228, {	-- Gauntlets of the Iron Conqueror
								["sym"] = SymModID(SYM_CONQ_GLOVE, 5),
							}),
							i(120229, {	-- Leggings of the Iron Conqueror
								["sym"] = SymModID(SYM_CONQ_LEGS, 5),
							}),
						},
					}),
					q(37559, {	-- Essence of the Iron Protector
						["provider"] = { "i", 120281 },	-- Essence of the Iron Protector
						["races"] = ALLIANCE_ONLY,
						["repeatable"] = true,
						["_drop"] = { "g" },	-- API lists all 3 token types
						["g"] = {
							i(120240, {	-- Helm of the Iron Protector
								["sym"] = SymModID(SYM_PROT_HELM, 5),
							}),
							i(120241, {	-- Shoulders of the Iron Protector
								["sym"] = SymModID(SYM_PROT_SHLDR, 5),
							}),
							i(120237, {	-- Chest of the Iron Protector
								["sym"] = SymModID(SYM_PROT_CHEST, 5),
							}),
							i(120238, {	-- Gauntlets of the Iron Protector
								["sym"] = SymModID(SYM_PROT_GLOVE, 5),
							}),
							i(120239, {	-- Leggings of the Iron Protector
								["sym"] = SymModID(SYM_PROT_LEGS, 5),
							}),
						},
					}),
					q(37547, {	-- Essence of the Iron Protector
						["provider"] = { "i", 120207 },	-- Essence of the Iron Protector
						["races"] = HORDE_ONLY,
						["repeatable"] = true,
						["_drop"] = { "g" },	-- API lists all 3 token types
						["g"] = {
							i(120240, {	-- Helm of the Iron Protector
								["sym"] = SymModID(SYM_PROT_HELM, 5),
							}),
							i(120241, {	-- Shoulders of the Iron Protector
								["sym"] = SymModID(SYM_PROT_SHLDR, 5),
							}),
							i(120237, {	-- Chest of the Iron Protector
								["sym"] = SymModID(SYM_PROT_CHEST, 5),
							}),
							i(120238, {	-- Gauntlets of the Iron Protector
								["sym"] = SymModID(SYM_PROT_GLOVE, 5),
							}),
							i(120239, {	-- Leggings of the Iron Protector
								["sym"] = SymModID(SYM_PROT_LEGS, 5),
							}),
						},
					}),
					q(37558, {	-- Essence of the Iron Vanquisher
						["provider"] = { "i", 120282 },	-- Essence of the Iron Vanquisher
						["races"] = ALLIANCE_ONLY,
						["repeatable"] = true,
						["_drop"] = { "g" },	-- API lists all 3 token types
						["g"] = {
							i(120233, {	-- Helm of the Iron Vanquisher
								["sym"] = SymModID(SYM_VANQ_HELM, 5),
							}),
							i(120235, {	-- Shoulders of the Iron Vanquisher
								["sym"] = SymModID(SYM_VANQ_SHLDR, 5),
							}),
							i(120236, {	-- Chest of the Iron Vanquisher
								["sym"] = SymModID(SYM_VANQ_CHEST, 5),
							}),
							i(120232, {	-- Gauntlets of the Iron Vanquisher
								["sym"] = SymModID(SYM_VANQ_GLOVE, 5),
							}),
							i(120234, {	-- Leggings of the Iron Vanquisher
								["sym"] = SymModID(SYM_VANQ_LEGS, 5),
							}),
						},
					}),
					q(37549, {	-- Essence of the Iron Vanquisher
						["provider"] = { "i", 120208 },	-- Essence of the Iron Vanquisher
						["races"] = HORDE_ONLY,
						["repeatable"] = true,
						["_drop"] = { "g" },	-- API lists all 3 token types
						["g"] = {
							i(120233, {	-- Helm of the Iron Vanquisher
								["sym"] = SymModID(SYM_VANQ_HELM, 5),
							}),
							i(120235, {	-- Shoulders of the Iron Vanquisher
								["sym"] = SymModID(SYM_VANQ_SHLDR, 5),
							}),
							i(120236, {	-- Chest of the Iron Vanquisher
								["sym"] = SymModID(SYM_VANQ_CHEST, 5),
							}),
							i(120232, {	-- Gauntlets of the Iron Vanquisher
								["sym"] = SymModID(SYM_VANQ_GLOVE, 5),
							}),
							i(120234, {	-- Leggings of the Iron Vanquisher
								["sym"] = SymModID(SYM_VANQ_LEGS, 5),
							}),
						},
					}),
				}),
				ZoneDrops(),
				Boss(OREGORGER),
				Boss(GRUUL),
				Boss(BLAST_FURNACE),
				Boss(HANSGAR_AND_FRANZOK),
				Boss(FLAMEBENDER_KAGRAZ),
				Boss(KROMOG),
				Boss(BEASTLORD_DARMAC, {
					i(113945, { ["ItemAppearanceModifierID"] = 0 }),	-- Flame Infusion Drape
				}),
				Boss(OPERATOR_THOGAR),
				Boss(IRON_MAIDENS),
				Boss(BLACKHAND, {	-- Blackhand
					ach(9444, {	-- Ahead of the Curve: Blackhand's Crucible
						["u"] = REMOVED_FROM_GAME,
					}),
				}),
				Boss(BLACKHAND, {
					i(113979, { ["ItemAppearanceModifierID"] = 1 }),	-- The Black Hand
				}),
				Boss(BLACKHAND, sharedData({
					["ignoreBonus"] = true,	-- in-game this drops with no modID
				},{
					i(120280, {	-- Essence of the Iron Conqueror
						["races"] = ALLIANCE_ONLY,
					}),
					i(120206, {	-- Essence of the Iron Conqueror
						["races"] = HORDE_ONLY,
					}),
					i(120281, {	-- Essence of the Iron Protector
						["races"] = ALLIANCE_ONLY,
					}),
					i(120207, {	-- Essence of the Iron Protector
						["races"] = HORDE_ONLY,
					}),
					i(120282, {	-- Essence of the Iron Vanquisher
						["races"] = ALLIANCE_ONLY,
					}),
					i(120208, {	-- Essence of the Iron Vanquisher
						["races"] = HORDE_ONLY,
					}),
				})),
			}),
			Difficulty(DIFFICULTY.RAID.MYTHIC).AddGroups({
				n(QUESTS, {
					q(37031, {	-- Sigil of the Black Hand (Mythic)
						["provider"] = { "n", 87225 },	-- Goraluk Anvilcrack
						["description"] = "The questgiver is hidden behind a load of boxes and crates to the right of the Iron Maidens.\n\nFinishing this quest will grant you immediate access to Blackhand on Mythic difficulty each week.",
						["g"] = {
							i(118390),	-- Ember of the Mountain (QI!)
							i(118389),	-- Heart of Stone (QI!)
							i(118388),	-- Sliver of Iron (QI!)
						},
					}),
					q(37560, {	-- Essence of the Iron Conqueror
						["provider"] = { "i", 120283 },	-- Essence of the Iron Conqueror
						["races"] = ALLIANCE_ONLY,
						["repeatable"] = true,
						["_drop"] = { "g" },	-- API lists all 3 token types
						["g"] = {
							i(120245, {	-- Helm of the Iron Conqueror
								["sym"] = SymModID(SYM_CONQ_HELM, 6),
							}),
							i(120246, {	-- Shoulders of the Iron Conqueror
								["sym"] = SymModID(SYM_CONQ_SHLDR, 6),
							}),
							i(120242, {	-- Chest of the Iron Conqueror
								["sym"] = SymModID(SYM_CONQ_CHEST, 6),
							}),
							i(120243, {	-- Gauntlets of the Iron Conqueror
								["sym"] = SymModID(SYM_CONQ_GLOVE, 6),
							}),
							i(120244, {	-- Leggings of the Iron Conqueror
								["sym"] = SymModID(SYM_CONQ_LEGS, 6),
							}),
						},
					}),
					q(37552, {	-- Essence of the Iron Conqueror
						["provider"] = { "i", 120209 },	-- Essence of the Iron Conqueror
						["races"] = HORDE_ONLY,
						["repeatable"] = true,
						["_drop"] = { "g" },	-- API lists all 3 token types
						["g"] = {
							i(120245, {	-- Helm of the Iron Conqueror
								["sym"] = SymModID(SYM_CONQ_HELM, 6),
							}),
							i(120246, {	-- Shoulders of the Iron Conqueror
								["sym"] = SymModID(SYM_CONQ_SHLDR, 6),
							}),
							i(120242, {	-- Chest of the Iron Conqueror
								["sym"] = SymModID(SYM_CONQ_CHEST, 6),
							}),
							i(120243, {	-- Gauntlets of the Iron Conqueror
								["sym"] = SymModID(SYM_CONQ_GLOVE, 6),
							}),
							i(120244, {	-- Leggings of the Iron Conqueror
								["sym"] = SymModID(SYM_CONQ_LEGS, 6),
							}),
						},
					}),
                    q(37562, {	-- Essence of the Iron Protector
						["provider"] = { "i", 120284 },	-- Essence of the Iron Protector
						["races"] = ALLIANCE_ONLY,
						["repeatable"] = true,
						["_drop"] = { "g" },	-- API lists all 3 token types
						["g"] = {
							i(120255, {	-- Helm of the Iron Protector
								["sym"] = SymModID(SYM_PROT_HELM, 6),
							}),
							i(120256, {	-- Shoulders of the Iron Protector
								["sym"] = SymModID(SYM_PROT_SHLDR, 6),
							}),
							i(120252, {	-- Chest of the Iron Protector
								["sym"] = SymModID(SYM_PROT_CHEST, 6),
							}),
							i(120253, {	-- Gauntlets of the Iron Protector
								["sym"] = SymModID(SYM_PROT_GLOVE, 6),
							}),
							i(120254, {	-- Leggings of the Iron Protector
								["sym"] = SymModID(SYM_PROT_LEGS, 6),
							}),
						},
					}),
					q(37548, {	-- Essence of the Iron Protector
						["provider"] = { "i", 120210 },	-- Essence of the Iron Protector
						["races"] = HORDE_ONLY,
						["repeatable"] = true,
						["_drop"] = { "g" },	-- API lists all 3 token types
						["g"] = {
							i(120255, {	-- Helm of the Iron Protector
								["sym"] = SymModID(SYM_PROT_HELM, 6),
							}),
							i(120256, {	-- Shoulders of the Iron Protector
								["sym"] = SymModID(SYM_PROT_SHLDR, 6),
							}),
							i(120252, {	-- Chest of the Iron Protector
								["sym"] = SymModID(SYM_PROT_CHEST, 6),
							}),
							i(120253, {	-- Gauntlets of the Iron Protector
								["sym"] = SymModID(SYM_PROT_GLOVE, 6),
							}),
							i(120254, {	-- Leggings of the Iron Protector
								["sym"] = SymModID(SYM_PROT_LEGS, 6),
							}),
						},
					}),
					q(37561, {	-- Essence of the Iron Vanquisher
						["provider"] = { "i", 120285 },	-- Essence of the Iron Vanquisher
						["races"] = ALLIANCE_ONLY,
						["repeatable"] = true,
						["_drop"] = { "g" },	-- API lists all 3 token types
						["g"] = {
							i(120248, {	-- Helm of the Iron Vanquisher
								["sym"] = SymModID(SYM_VANQ_HELM, 6),
							}),
							i(120250, {	-- Shoulders of the Iron Vanquisher
								["sym"] = SymModID(SYM_VANQ_SHLDR, 6),
							}),
							i(120251, {	-- Chest of the Iron Vanquisher
								["sym"] = SymModID(SYM_VANQ_CHEST, 6),
							}),
							i(120247, {	-- Gauntlets of the Iron Vanquisher
								["sym"] = SymModID(SYM_VANQ_GLOVE, 6),
							}),
							i(120249, {	-- Leggings of the Iron Vanquisher
								["sym"] = SymModID(SYM_VANQ_LEGS, 6),
							}),
						},
					}),
					q(37550, {	-- Essence of the Iron Vanquisher
						["provider"] = { "i", 120211 },	-- Essence of the Iron Vanquisher
						["races"] = HORDE_ONLY,
						["repeatable"] = true,
						["_drop"] = { "g" },	-- API lists all 3 token types
						["g"] = {
							i(120248, {	-- Helm of the Iron Vanquisher
								["sym"] = SymModID(SYM_VANQ_HELM, 6),
							}),
							i(120250, {	-- Shoulders of the Iron Vanquisher
								["sym"] = SymModID(SYM_VANQ_SHLDR, 6),
							}),
							i(120251, {	-- Chest of the Iron Vanquisher
								["sym"] = SymModID(SYM_VANQ_CHEST, 6),
							}),
							i(120247, {	-- Gauntlets of the Iron Vanquisher
								["sym"] = SymModID(SYM_VANQ_GLOVE, 6),
							}),
							i(120249, {	-- Leggings of the Iron Vanquisher
								["sym"] = SymModID(SYM_VANQ_LEGS, 6),
							}),
						},
					}),
				}),
				ZoneDrops(),
				Boss(OREGORGER, {
					ach(8967),	-- Mythic: Oregorger
				}),
				Boss(GRUUL, {
					ach(8966),	-- Mythic: Gruul
				}),
				Boss(BLAST_FURNACE, {
					ach(8970),	-- Mythic: Blast Furnace
				}),
				Boss(HANSGAR_AND_FRANZOK, {
						ach(8968),	-- Mythic: Hans'gar and Franzok
				}),
				Boss(FLAMEBENDER_KAGRAZ, {
					ach(8932),	-- Mythic: Flamebender Ka'graz
				}),
				Boss(KROMOG, {
					ach(8971),	-- Mythic: Kromog
				}),
				Boss(BEASTLORD_DARMAC, {
					ach(8956),	-- Mythic: Beastlord Darmac
					i(113945, { ["ItemAppearanceModifierID"] = 3 }),	-- Flame Infusion Drape
				}),
				Boss(OPERATOR_THOGAR, {
					ach(8969),	-- Mythic: Operator Thogar
				}),
				Boss(IRON_MAIDENS, {
					ach(8972),	-- Mythic: Iron Maidens
				}),
				Boss(BLACKHAND, {	-- Blackhand
					ach(9444, {	-- Ahead of the Curve: Blackhand's Crucible
						["u"] = REMOVED_FROM_GAME,
					}),
					ach(9443, {	-- Cutting Edge: Blackhand's Crucible
						["u"] = REMOVED_FROM_GAME,
					}),
					ach(9399, {	-- Realm First! Warlord Blackhand
						["u"] = REMOVED_FROM_GAME,
					}),
					ach(8973, {	-- Mythic: Blackhand's Crucible
						title(301),	-- Ironbane
					}),
					ach(9421),	-- Mythic: Warlord Blackhand Guild Run
					i(116660),	-- Ironhoof Destroyer (MOUNT!)
				}),
				Boss(BLACKHAND, {
					i(113979, { ["ItemAppearanceModifierID"] = 0 }),	-- The Black Hand
				}),
				Boss(BLACKHAND, sharedData({
					["ignoreBonus"] = true,	-- in-game this drops with no modID
				},{
					i(120283, {	-- Essence of the Iron Conqueror
						["races"] = ALLIANCE_ONLY,
					}),
					i(120209, {	-- Essence of the Iron Conqueror
						["races"] = HORDE_ONLY,
					}),
                    i(120284, {	-- Essence of the Iron Protector
						["races"] = ALLIANCE_ONLY,
					}),
					i(120210, {	-- Essence of the Iron Protector
						["races"] = HORDE_ONLY,
					}),
					i(120285, {	-- Essence of the Iron Vanquisher
						["races"] = ALLIANCE_ONLY,
					}),
					i(120211, {	-- Essence of the Iron Vanquisher
						["races"] = HORDE_ONLY,
					}),
				})),
			}),
			n(TREASURES, {
				o(237452, {	-- Iron Horde Chest
					["coord"] = { 51.8, 44.9, 599 },	-- Iron Assembly
					["questID"] = 34405,
					["isWeekly"] = true,
				}),
			}),
		},
	}),
})));

-- root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.WOD, bubbleDownSelf({ ["timeline"] = { ADDED_6_0_2 } }, {
-- 	inst(457, {
--		q(34405),	-- DEPRECATED - REUSE - triggers after looting Blackrock Ore chest after Operator Thogar in LFR Blackrock Foundry
--	}),
-- })));