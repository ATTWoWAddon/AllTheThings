---------------------------------------------------------------
--     N E V E R    I M P L E M E N T E D    M O D U L E     --
---------------------------------------------------------------
root(ROOTS.NeverImplemented, {
	n(WEAPONS, {
		filter(BOWS, {
			expansion(EXPANSION.CLASSIC, {
				i(19490),	-- 2800 Test Bow 63 Blue
				i(20313),	-- 63 Green Rogue Bow
				i(20278),	-- 90 Epic Rogue Bow
				i(20299),	-- 90 Green Rogue Bow
				i(20368),	-- Bland Bow of Steadiness
				i(19868),	-- Mandokir's Sting DEPRECATED
				i(19966),	-- Thrice Strung Longbow DEPRECATED
				i(20488),	-- Rhok'delar, Longbow of the Ancient Keepers DEP
				i(5290),	-- Monster - Bow, Black Bow White Grip
				i(21550),	-- Monster - Bow, Kaldorei
			}),
			expansion(EXPANSION.DF, {
				expansion(EXPANSION.DF, patch(0,01), {
					i(189689),	-- 10.0 Dungeon Template - Bows - Ranged
					i(189127),	-- 10.0 QRP Template <Descriptor> Longbow
					i(189346),	-- 10.0 Zone Uncommon Template <Descriptor> Longbow
				}),
			}),
		}),
		filter(CROSSBOWS, {
			expansion(EXPANSION.DF, {
				expansion(EXPANSION.DF, patch(0,01), {
					i(189690),	-- 10.0 Dungeon Template - Crossbow - RangedRight
					i(189128),	-- 10.0 QRP Template <Descriptor> Crossbow
					i(189347),	-- 10.0 Zone Uncommon Template <Descriptor> Crossbow
				}),
			}),
		}),
		filter(DAGGERS, {
			expansion(EXPANSION.CLASSIC, {
				i(24071),	-- Bland Dagger
				i(17142),	-- Shard of the Defiler
				i(21122),	-- Monster - Dagger, Korean A01 Black
				i(21551),	-- Monster - Dagger, Alliance PvP
				i(22215),	-- Monster - Dagger, Bonescraper
				i(23369),	-- Monster - Dagger, Claw of Chromaggus
			}),
			expansion(EXPANSION.DF, {
				expansion(EXPANSION.DF, patch(0,01), {
					i(189680),	-- 10.0 Dungeon Template - Dagger - Agi - Weapon
					i(189679),	-- 10.0 Dungeon Template - Dagger - Int - Weapon
					i(189043),	-- 10.0 End Game Template <Descriptor> Kris
					i(189045),	-- 10.0 End Game Template <Descriptor> Shank
					i(189111),	-- 10.0 QRP Template <Descriptor> Dagger
					i(189112),	-- 10.0 QRP Template <Descriptor> Dagger
					i(189341),	-- 10.0 Zone Uncommon Template <Descriptor> Dagger
					i(189342),	-- 10.0 Zone Uncommon Template <Descriptor> Dagger
					i(201235),	-- Awakened Pick
					i(201236),	-- Bonefed Emerald Shiv
					i(200130),	-- Corpse Ripper
				}),
			}),
		}),
		filter(PROFESSION_EQUIPMENT, {
			expansion(EXPANSION.DF, {
				expansion(EXPANSION.DF, patch(0,01), {
					i(199898),	-- Iskaara Fishing Pole
				}),
			}),
		}),
		filter(FIST_WEAPONS, {
			expansion(EXPANSION.CLASSIC, {
				i(19226),	-- Fast Test Fist
				i(22210),	-- Monster - Knuckle, B01 Red
			}),
			expansion(EXPANSION.DF, {
				expansion(EXPANSION.DF, patch(0,01), {
					i(189699),	-- 10.0 Dungeon Template - FistWeapon - Weapon
					i(189137),	-- 10.0 QRP Template <Descriptor> Fist
					i(189356),	-- 10.0 Zone Uncommon Template <Descriptor> Fist
					i(198411),	-- Claw of Preparedness
				}),
			}),
		}),
		filter(GUNS, {
			expansion(EXPANSION.CLASSIC, {
				i(21554),	-- Monster - Gun, PvP Horde
				i(21564),	-- Monster - Gun, Kaldorei PVP Alliance
			}),
			expansion(EXPANSION.DF, {
				expansion(EXPANSION.DF, patch(0,01), {
					i(189675),	-- 10.0 Dungeon Template - Guns - RangedRight
					i(189042),	-- 10.0 End Game Template <Descriptor> Gun
					i(189107),	-- 10.0 QRP Template <Descriptor> Gun
					i(189337),	-- 10.0 Zone Uncommon Template <Descriptor> Gun
					i(201232),	-- Bonedust Spreader
					i(200176),	-- Missingway Hand Canno
				}),
			}),
		}),
		filter(HELD_IN_OFF_HAND, {
			expansion(EXPANSION.CLASSIC, {
				i(19989),	-- Tome of Devouring Shadows
				i(20337),	-- Gnome Head on a Stick
				i(22211),	-- Monster - Knuckle, B01 Red Offhand
			}),
			expansion(EXPANSION.DF, {
				expansion(EXPANSION.DF, patch(0,01), {
					i(189672),	-- 10.0 Dungeon Template - Generic - Holdable
					i(189040),	-- 10.0 End Game Template <Descriptor> Offhand
					i(189104),	-- 10.0 QRP Template <Descriptor> Offhand
					i(189334),	-- 10.0 Zone Uncommon Template <Descriptor> Offhand
					i(201249),	-- Dreamfire Imbued Drakehorn
				}),

				-- 10.0.7
				expansion(EXPANSION.DF, patch(0,7), bubbleDown({ ["timeline"] = { CREATED_10_0_7 } }, {
					i(203798),	-- Copy Jin'do's Bag of Whammies
				})),
			}),
		}),
		filter(ONE_HANDED_AXES, {
			expansion(EXPANSION.CLASSIC, {
				i(21129),	-- Monster - Axe, Doctor Weavil
				i(21465),	-- Monster - Axe, Insano
				i(23582),	-- Monster - Lady Blameux
			}),
			expansion(EXPANSION.DF, {
				expansion(EXPANSION.DF, patch(0,01), {
					i(189348),	-- 10.0 Zone Uncommon Template <Descriptor> Axe
					i(189349),	-- 10.0 Zone Uncommon Template <Descriptor> Axe
					i(189350),	-- 10.0 Zone Uncommon Template <Descriptor> Axe
				}),
			}),
			expansion(EXPANSION.WRATH, {
				n(P3xx, {
					i(50251),	-- Shadow's Edge One-Hander
				}),
			}),
			expansion(EXPANSION.LEGION, {
				expansion(EXPANSION.LEGION, patch(1,5), {
					i(144217),	-- Inelava, Spirit of Inebriation
				}),
			}),
			expansion(EXPANSION.DF, {
				expansion(EXPANSION.DF, patch(0,01), {
					i(189692),	-- 10.0 Dungeon Template - Axe1H - Agi - Weapon
					i(189693),	-- 10.0 Dungeon Template - Axe1H - Int - Weapon
					i(189691),	-- 10.0 Dungeon Template - Axe1H - Str - Weapon
					i(189129),	-- 10.0 QRP Template <Descriptor> Axe
					i(189130),	-- 10.0 QRP Template <Descriptor> Axe
					i(189131),	-- 10.0 QRP Template <Descriptor> Axe
					i(201241),	-- Green Dragonskull Crescent
					i(201239),	-- Verdant Drakefire Cleaver
					i(201240),	-- Viridescent Stalked Reaver
				}),
			}),
		}),
		filter(ONE_HANDED_MACES, {
			expansion(EXPANSION.CLASSIC, {
				i(17733),	-- Fist of Stone
				i(16792),	-- Giant Club
				i(20738),	-- Monster - Mace, Scepter of the Shifting Sands
				i(22213),	-- Monster - Mace, Hand of Edward the Odd
				i(22341),	-- Monster - Mace, Horde A04 Pale - Bone Wrench
				i(22724),	-- Monster - Mace1H, Korth'azz
				i(23583),	-- Monster - Sir Zeliek
				-- #if SEASON_OF_DISCOVERY
				i(215444),	-- Monster - Mace - Broken Pipes
				i(217336),	-- Monster - Incubus Whip Mace1H
				i(227802),	-- Monster - Torch
				-- #endif
			}),
			expansion(EXPANSION.DF, {
				expansion(EXPANSION.DF, patch(0,01), {
					i(189688),	-- 10.0 Dungeon Template - Mace1H - Agi - Weapon
					i(189694),	-- 10.0 Dungeon Template - Mace1H - Int - Weapon
					i(189696),	-- 10.0 Dungeon Template - Mace1H - Str - Weapon
					i(189051),	-- 10.0 End Game Template <Descriptor> Cudgel
					i(189052),	-- 10.0 End Game Template <Descriptor> Cudgel
					i(189121),	-- 10.0 QRP Template <Descriptor> Mace
					i(189132),	-- 10.0 QRP Template <Descriptor> Mace
					i(189134),	-- 10.0 QRP Template <Descriptor> Mace
					i(189345),	-- 10.0 Zone Uncommon Template <Descriptor> Mace
					i(189351),	-- 10.0 Zone Uncommon Template <Descriptor> Mace
					i(189353),	-- 10.0 Zone Uncommon Template <Descriptor> Mace
					i(201243),	-- Drakebone Tenderizer
					i(201242),	-- Growth Evoking Furnace
					i(201238),	-- Vision Enforcing Bludgeon
				}),
			}),
		}),
		filter(ONE_HANDED_SWORDS, {
			expansion(EXPANSION.CLASSIC, {
				i(9380),	-- Jang'thraze the Protector
				i(22805),	-- Naxxramas Sword 1H 1 PH
				i(17802),	-- Thunderfury, Blessed Blade of the Windseeker DEPRECATED
				i(18582),	-- The Twin Blades of Azzinoth
				i(18583),	-- Warglaive of Azzinoth (Right)
				i(18584),	-- Warglaive of Azzinoth (Left)
				i(21573),	-- Monster - Sword, 1H Alliance PvP
				i(22738),	-- Monster - Sword, 1H Uber Demon Blade
				i(23743),	-- Monster - Sword 1H - Widow's Remorse
			}),
			expansion(EXPANSION.SL, {
				expansion(EXPANSION.SL, patch(1,5), {
					i(187568),	-- Duskwatch Arcblade
				}),
			}),
			expansion(EXPANSION.DF, {
				expansion(EXPANSION.DF, patch(0,01), {
					i(189681),	-- 10.0 Dungeon Template - Sword1H - Agi - Weapon
					i(189695),	-- 10.0 Dungeon Template - Sword1H - Int - Weapon
					i(189677),	-- 10.0 Dungeon Template - Sword1H - Str -Weapon
					i(189047),	-- 10.0 End Game Template <Descriptor> Blade
					i(189046),	-- 10.0 End Game Template <Descriptor> Sword
					i(189109),	-- 10.0 QRP Template <Descriptor> Sword
					i(189113),	-- 10.0 QRP Template <Descriptor> Sword
					i(189133),	-- 10.0 QRP Template <Descriptor> Sword
					i(189339),	-- 10.0 Zone Uncommon Template <Descriptor> Sword
					i(189343),	-- 10.0 Zone Uncommon Template <Descriptor> Sword
					i(189352),	-- 10.0 Zone Uncommon Template <Descriptor> Sword
					i(200995),	-- Obsidian Soldier's Cutlass
				}),
			}),
		}),
		filter(POLEARMS, {
			expansion(EXPANSION.CLASSIC, {
				i(12986),	-- Monster - Spear, Broad Notched
				-- #if SEASON_OF_DISCOVERY
				i(204910),	-- Monster - Trident, Naga (Gold)
				-- #endif
			}),
			expansion(EXPANSION.DF, {
				expansion(EXPANSION.DF, patch(0,01), {
					i(189703),	-- 10.0 Dungeon Template - Polearms - Agi - 2 Hand
					i(189678),	-- 10.0 Dungeon Template - Polearms - Int - 2 Hand
					i(189054),	-- 10.0 End Game Template <Descriptor> Halberd
					i(189041),	-- 10.0 End Game Template <Descriptor> Polearm
					i(189110),	-- 10.0 QRP Template <Descriptor> Staff
					i(189141),	-- 10.0 QRP Template <Descriptor> Staff
					i(189340),	-- 10.0 Zone Uncommon Template <Descriptor> Staff
					i(189360),	-- 10.0 Zone Uncommon Template <Descriptor> Staff
					i(201234),	-- Draketooth Harpoon
					i(201247),	-- Whaler's Fang
				}),
			}),
		}),
		filter(SHIELDS, {
			expansion(EXPANSION.CLASSIC, {
				i(7748),	-- Forcestone Buckler
				i(20502),	-- Ironbark Shield [NPC Shield]
				i(18342),	-- Quel'dorei Guard [NPC Shield I believe]
				i(21549),	-- Monster - Shield, Shieldguard
				i(21572),	-- Monster - Shield, Alliance PVP
				i(23356),	-- Monster - Shield, Skullflame
			}),
			expansion(EXPANSION.DF, {
				expansion(EXPANSION.DF, patch(0,01), {
					i(189671),	-- 10.0 Dungeon Template - Shield - Shield
					i(189039),	-- 10.0 End Game Template <Descriptor> Shield
					i(189103),	-- 10.0 QRP Template <Descriptor> Shield
					i(189333),	-- 10.0 Zone Uncommon Template <Descriptor> Shield
					i(201248),	-- Dreamfused Scaled Protector
				}),
			}),
		}),
		filter(STAVES, {
			expansion(EXPANSION.CLASSIC, {
				i(3738),	-- Brewing Rod
				i(20522),	-- Feral Staff
				i(20718),	-- Monster - Staff, Jeweled Yellow Staff w/Low Purple Glow
				i(20719),	-- Monster - Staff, Jeweled D01/B02 Yellow w/Low Red Flame
				i(21795),	-- Monster - Staff, Ahn'Qiraj
			}),
			expansion(EXPANSION.DF, {
				expansion(EXPANSION.DF, patch(0,01), {
					i(189674),	-- 10.0 Dungeon Template - Staff - Agi - 2 Hand
					i(189687),	-- 10.0 Dungeon Template - Staff - Int - 2 Hand
					i(189056),	-- 10.0 End Game Template <Descriptor> Staff
					i(189053),	-- 10.0 End Game Template <Descriptor> Stave
					i(189106),	-- 10.0 QRP Template <Descriptor> Staff
					i(189120),	-- 10.0 QRP Template <Descriptor> Staff
					i(197806),	-- 10.0 Rare Reward TBD - Staff_2H_Titan_C_01 - Staff - Int
					i(189336),	-- 10.0 Zone Uncommon Template <Descriptor> Staff
					i(189344),	-- 10.0 Zone Uncommon Template <Descriptor> Staff
					i(201231),	-- Bident of Hallucinations
					i(201237),	-- Dreamer's Creator
				}),
			}),
		}),
		filter(THROWN, {
			expansion(EXPANSION.CLASSIC, {
				i(21135),	-- Broken Assassin's Throwing Axe
			}),
		}),
		filter(TWO_HANDED_AXES, {
			expansion(EXPANSION.CLASSIC, {
				i(21192),	-- Monster - Axe, 2H UBER Blackwing
				i(21286),	-- Monster - Axe, 2H Large Double Bladed, Gold
				i(21580),	-- Monster - 2H Axe, Horde PvP
				i(22199),	-- Monster - Axe, 2H Arcanite Reaper
			}),
			expansion(EXPANSION.DF, {
				expansion(EXPANSION.DF, patch(0,01), {
					i(189697),	-- 10.0 Dungeon Template - Axe2H - Str - 2 Hand
					i(189135),	-- 10.0 QRP Template <Descriptor> Axe
					i(189354),	-- 10.0 Zone Uncommon Template <Descriptor> Axe
				}),
			}),
		}),
		filter(TWO_HANDED_MACES, {
			expansion(EXPANSION.CLASSIC, {
				i(21555),	-- Monster - Mace2H, Alliance PvP
				i(22346),	-- Monster - Mace2H, Unstoppable Force
				-- #if SEASON_OF_DISCOVERY
				i(228214),	-- Monster - Mace2H, Unstoppable Force
				-- #endif
			}),
			expansion(EXPANSION.DF, {
				expansion(EXPANSION.DF, patch(0,01), {
					i(189700),	-- 10.0 Dungeon Template - Mace2H - Int - 2 Hand
					i(189673),	-- 10.0 Dungeon Template - Mace2H - Str - 2 Hand
					i(189048),	-- 10.0 End Game Template <Descriptor> Great Mace
					i(189044),	-- 10.0 End Game Template <Descriptor> Mace
					i(189138),	-- 10.0 QRP Template <Descriptor> Greatmace
					i(189105),	-- 10.0 QRP Template <Descriptor> Mace
					i(197796),	-- 10.0 Rare Reward TBD - Mace2H - Str - 2 Hand
					i(189357),	-- 10.0 Zone Uncommon Template <Descriptor> Greatmace
					i(189335),	-- 10.0 Zone Uncommon Template <Descriptor> Mace
				}),
			}),
		}),
		filter(TWO_HANDED_SWORDS, {
			expansion(EXPANSION.CLASSIC, {
				i(13262),	-- Ashbringer
				i(913),		-- Huge Ogre Sword
				i(12469),	-- Mutilator
				i(21553),	-- Monster - Sword2H, Alliance PvP
				i(21794),	-- Monster - Sword2H, Ahn'Qiraj
				i(22596),	-- Monster - Sword2H, Horde A02
				i(22709),	-- Monster - Sword2H, Corrupted Ashbringer
				i(23328),	-- Monster - Sword2H, Instructor Razuvious
				-- #if SEASON_OF_DISCOVERY
				i(209526),	-- TEST Darkwater Talwar
				i(215235),	-- 2hander Animation as 1hander test copy
				i(228607),	-- Monster - Sword2H, Basic
				-- #endif
			}),
			expansion(EXPANSION.DF, {
				expansion(EXPANSION.DF, patch(0,01), {
					i(189355),	-- 10.0 Zone Uncommon Template <Descriptor> Greatsword
					i(189358),	-- 10.0 Zone Uncommon Template <Descriptor> Greatsword
				}),
			}),
			expansion(EXPANSION.DF, {
				expansion(EXPANSION.DF, patch(0,01), {
					i(189701),	-- 10.0 Dungeon Template - Sword2H - Int - 2 Hand
					i(189698),	-- 10.0 Dungeon Template - Sword2H - Str - 2 Hand
					i(189136),	-- 10.0 QRP Template <Descriptor> Greatsword
					i(189139),	-- 10.0 QRP Template <Descriptor> Greatsword
					i(201244),	-- Dreamfire-Infused Broadsword
					i(201245),	-- Emerald Blessed Greatsword
				}),
			}),
		}),
		filter(WANDS, {
			expansion(EXPANSION.DF, {
				expansion(EXPANSION.DF, patch(0,01), {
					i(189702),	-- 10.0 Dungeon Template - Wand - RangedRight
					i(199932),	-- 10.0 Enchanting - Weapon - Wand 1
					i(199933),	-- 10.0 Enchanting - Weapon - Wand 2
					i(189140),	-- 10.0 QRP Template <Descriptor> Wand
					i(189359),	-- 10.0 Zone Uncommon Template <Descriptor> Wand
					i(201246),	-- Coiled Green Draketail
					i(201775),	-- Crimson Aspirant's Wand
				}),
			}),
		}),
		filter(WARGLAIVES, {
			expansion(EXPANSION.DF, {
				expansion(EXPANSION.DF, patch(0,01), {
					i(189676),	-- 10.0 Dungeon Template - Warglaives - Weapon
					i(189057),	-- 10.0 End Game Template <Descriptor> Warglaive
					i(189108),	-- 10.0 QRP Template <Descriptor> Glaive
					i(189338),	-- 10.0 Zone Uncommon Template <Descriptor> Glaive
					i(201233),	-- Verdant Drakespine Glaive
				}),
			}),
		}),
	}),
	n(WEAPONS, {
		-- 9.0.1
		i(179501),	-- Ardenweald Dagger
		i(179606),	-- Ardenweald Quest Shield
		i(172461),	-- Eternal Twilight Wand
		i(178028),	-- Gormwrought Shield
		i(178026),	-- Gormwrought Staff
		i(175991),	-- Grove Defender's Focus
		i(180492),	-- Nethrezim Spire
		i(178401),	-- UNUSED - Rated - Weapon - 1H Mace Caster
		i(176011),	-- UNUSED - Rated - Weapon - 1H Mace Caster
		i(176001),	-- UNUSED - Rated - Weapon - 1H Mace Melee
		i(178391),	-- UNUSED - Rated - Weapon - 1H Mace Melee
		i(176005),	-- UNUSED - Rated - Weapon - 2H Axe Melee
		i(178395),	-- UNUSED - Rated - Weapon - 2H Axe Melee
		i(176006),	-- UNUSED - Rated - Weapon - 2H Sword Melee
		i(178396),	-- UNUSED - Rated - Weapon - 2H Sword Melee
		i(178400),	-- UNUSED - Rated - Weapon - Dagger Caster
		i(176010),	-- UNUSED - Rated - Weapon - Dagger Caster
		i(178666),	-- UNUSED - Unrated - Weapon - 1H Mace Melee
		i(178667),	-- UNUSED - Unrated - Weapon - 2H Mace STR
		i(178669),	-- UNUSED - Unrated - Weapon - Staff AGI
		i(173044),	-- Wreathed Fishing Pole
		i(178449),	-- zzzRated - Weapon - 1H Axe Melee
		i(178462),	-- zzzRated - Weapon - 1H Mace Caster
		i(178452),	-- zzzRated - Weapon - 1H Mace Melee
		i(178455),	-- zzzRated - Weapon - 1H Sword Melee
		i(178456),	-- zzzRated - Weapon - 2H Axe Melee
		i(178457),	-- zzzRated - Weapon - 2H Sword Melee
		i(178450),	-- zzzRated - Weapon - Bow
		i(178451),	-- zzzRated - Weapon - Dagger Agi
		i(178461),	-- zzzRated - Weapon - Dagger Caster
		i(178459),	-- zzzRated - Weapon - Offhand
		i(178453),	-- zzzRated - Weapon - Polearm Agi
		i(178458),	-- zzzRated - Weapon - Shield
		i(178454),	-- zzzRated - Weapon - Staff Caster
		i(178460),	-- zzzRated - Weapon - Warglaive
		-- 9.2.0
		i(190392),	-- Pocopoc Shield
		i(184231),	-- 9.0 Covenant - Bastion - Weapon - Warglaive AGI - Blue
		i(184232),	-- 9.0 Covenant - Bastion - Weapon - Warglaive AGI - Copper
		i(184233),	-- 9.0 Covenant - Bastion - Weapon - Warglaive AGI - Dark
		i(184234),	-- 9.0 Covenant - Bastion - Weapon - Warglaive AGI - Gold
		i(184235),	-- 9.0 Covenant - Bastion - Weapon - Warglaive AGI - Pink
		i(188095),	-- [PH] Copy Korthian Anima Slicer
		i(188094),	-- [PH] Copy Korthian Attendant's Blade
		i(188101),	-- [PH] Copy Korthian Attendant's Cane
		i(188100),	-- [PH] Copy Korthian Attendant's Scepter
		i(188093),	-- [PH] Copy Korthian Energy Bow
		i(188091),	-- [PH] Copy Korthian Keeper's Buckler
		i(188097),	-- [PH] Copy Korthian Protector's Warhammer
		i(188096),	-- [PH] Copy Vault Guardian's Decapitator
		i(188102),	-- [PH] Copy Vault Guardian's Warglaive
		i(188098),	-- [PH] Copy Vault Patroller's Mace
		i(188104),	-- [PH] Copy Vault Patroller's Slicer
		i(188099),	-- [PH] Copy Vault Patroller's Staff
		-- 9.2.5
		i(168895),	-- Mel'nalore, Javelin of Suramar (Readded back now? Suppose to be drop in Eternal Palace? /Queen Azshara)
		i(192441),	-- Rhapsodic Pulverizer
		--
		i(25497),	-- Broken Balanced Stone Dirk
		i(28261),	-- Video Invis Broken Fitz's Throwing Axe
		i(25641),	-- Broken Fitz's Throwing Axe
		i(178480),	-- Sinful Aspirant's Keris
		i(178665),	-- Sinful Aspirant's Fang
		i(183434),	-- Sinful Aspirant's Spellmace
		i(183431),	-- Sinful Aspirant's Magestaff
		i(178488),	-- Sinful Aspirant's Weapon - Offhand
		i(178489),	-- Sinful Aspirant's Weapon - Offhand
		i(178673),	-- Sinful Aspirant's Weapon - Offhand
		filter(BOWS, {
			-- Load In Game
			i(165266, {["sourceID"] = 101572 }),	-- Fallback Weapon - Bow
			i(167144, {["sourceID"] = 103291 }),	-- QA Combat Test Hunter Bow
			i(182563, { ["ItemAppearanceModifierID"] = 153 }),	-- NPE Weapon Bow
			i(182563, {	-- NPE Weapon Bow
				["bonusID"] = 6895,
			}),
			-- ItemID/Retrieving
			i(108783),	-- 7.0 PH Weapon - Bow Agi
			i(109283),	-- 6.0 QA Combat Test Hunter Bow
			i(111783),	-- Irontree Bow (Cata version 55306 is in game but this version doesn't seem to have ever existed)
		}),
		filter(CROSSBOWS, {
			-- Load In Game
			i(165267, {["sourceID"] = 101573 }),	-- Fallback Weapon - Crossbow
			-- ItemID/Retrieving
			i(108784),	-- 7.0 PH Weapon - Crossbow Agi
		}),
		filter(DAGGERS, {
			-- Load In Game
			i(62329),	-- Dire Slasher (never added)
			i(115446),	-- Brianium Dagger
			i(182564, { ["ItemAppearanceModifierID"] = 153 }),	-- NPE Weapon Dagger AGI
			i(182573, { ["ItemAppearanceModifierID"] = 153 }),	-- NPE Weapon Dagger AGI 2
			-- ItemID/Retrieving
			i(23422),	-- Engraved Dagger
			i(38247),	-- Entrail Render
			i(108785),	-- 7.0 PH Weapon - 1H Dagger Agi
			i(108786),	-- 7.0 PH Weapon - 1H Dagger Int
			i(109269),	-- QA Combat Test Agility Dagger 2
			i(109292),	-- QA Combat Test Agility Dagger 3
			i(109309),	-- QA Combat Test Agility Dagger 1
			i(109387),	-- QA Combat Test Caster Dagger 2
			i(109482),	-- QA Combat Test Caster Dagger 1
			i(159534),	-- 8.0 PH - Weapon - Dagger
			i(165268),	-- Fallback Weapon - 1H Dagger
			i(167148),	-- QA Combat Test Dagger 1
			i(180863),	-- Silent Lady's Kiss
		}),
		filter(FIST_WEAPONS, {
			-- Load In Game
			i(81320),	-- Right-Handed Invis Knuckles
			i(85588),	-- Reflex Edges [This version never implemented]
			i(115797),	-- test fist weapon
			-- ItemID/Retrieving
			i(20003),	-- Devilsaur Claws
			i(20005),	-- Devilsaur Claws
			i(38243),	-- Ravaging Steelfist
			i(108787),	-- 7.0 PH Weapon - 1H Fist Int
			i(171191),	-- Owen Test (Season 8 Elite? Added 8.2.5)
			i(171192),	-- Owen Test (Season 8 Elite? Added 8.2.5)
			i(108788),	-- 7.0 PH Weapon - 1H Fist Str
			i(108789),	-- 7.0 PH Weapon - 1H Fist Agi
			i(109361),	-- 6.0 QA Combat Test Agility Fist Weapon (MH)
			i(109535),	-- 6.0 QA Combat Test Agility Fist Weapon (MH) 3
			i(109534),	-- 6.0 QA Combat Test Agility Fist Weapon (MH) 2
			i(165269),	-- Fallback Weapon - Fist
		}),
		filter(GUNS, {
			-- Load In Game
			i(165270, {["sourceID"] = 101575 }),	-- Fallback Weapon - Gun
			-- ItemID/Retrieving
			i(38246),	-- Skull-Forged Blunderbuss
			i(49455),	-- Blunderbuss of Deforestation
			i(108790),	-- 7.0 PH Weapon - Gun Agi
			i(109491),	-- 6.0 QA Combat Test Hunter Gun
			i(109529),	-- 6.0 QA Combat Test Hunter Gun No Variance
		}),
		filter(HELD_IN_OFF_HAND, {
			-- ItemID/Retrieving
			i(108810),	-- 7.0 PH Offhand - Offhand Int
			i(109273),	-- QA Combat Test Caster Offhand 1
			i(109301),	-- QA Combat Test Caster Offhand 2
			i(109311),	-- QA Combat Test Caster Offhand 3
			i(109380),	-- QA Combat Test Caster Offhand 4
			i(165277),	-- Fallback Weapon - Offhand
			i(167146),	-- QA Combat Test Caster Offhand 1
		}),
		filter(ONE_HANDED_AXES, {
			-- Load In Game
			i(80983),	-- Extravagant Tree Chopper (Never made it to Live, yet into our Appearances Tab)
			i(117010),	-- Forester's Axe	(Never added in Game)
			i(164967, {["sourceID"] = 101181 }),	-- Steelforged Axe (CREATURE USE - TIER 2 VISUAL ONLY)
			i(165264, {["sourceID"] = 101570 }),	-- Fallback Weapon - 1H Axe
			i(182562, { ["ItemAppearanceModifierID"] = 153 }),	-- NPE Weapon 1H Axe AGI
			i(182577, { ["ItemAppearanceModifierID"] = 153 }),	-- NPE Weapon 1H Axe AGI 2
			-- ItemID/Retrieving
			i(49456),	-- Will of the Earth
			i(108779),	-- 7.0 PH Weapon - 1H Axe Agi
			i(108780),	-- 7.0 PH Weapon - 1H Axe Str
			i(108781),	-- 7.0 PH Weapon - 1H Axe Int
			i(109319),	-- 6.0 QA Combat Test Agility 1h Axe 2
			i(109502),	-- 6.0 QA Combat Test Agility 1h Axe
			i(109536),	-- 6.0 QA Combat Test Offhand Agility Axe 2
			i(159483),	-- 8.0 PH - Weapon - 1H Axe
			i(159484),	-- 8.0 PH - Weapon - 1H Axe
		}),
		filter(ONE_HANDED_MACES, {
			-- Load In Game
			i(182578, { ["ItemAppearanceModifierID"] = 153 }),	-- NPE Weapon 1H Mace AGI
			-- ItemID/Retrieving
			i(38468),	-- Kalu'ak Peacebringer
			i(108791),	-- 7.0 PH Weapon - 1H Mace Agi
			i(108792),	-- 7.0 PH Weapon - 1H Mace Str
			i(108793),	-- 7.0 PH Weapon - 1H Mace Int
			i(109279),	-- 7.0 QA Combat Test Caster 1H Mace 2
			i(109383),	-- 6.0 QA Combat Test Agility 1h Mace
			i(109404),	-- 6.0 QA Combat Test Strength 1h Mace 2
			i(109438),	-- 7.0 QA Combat Test Caster 1h Mace 1
			i(109470),	-- 6.0 QA Combat Test Strength 1h Mace
			i(109533),	-- 7.0 QA Combat Test Caster 1H Mace 3
			i(159550),	-- 8.0 PH - Weapon - 1H Mace
			i(165262),	-- Fallback Weapon - 1H Mace
			i(167141),	-- QA Combat Test 1h Mace
		}),
		filter(ONE_HANDED_SWORDS, {
			-- Load In Game
			i(137225),	-- Thunderfury, Blessed Blade of the Windseeker (mog testing)
			i(162447),	-- Marrow Render
			i(165273, {["sourceID"] = 101578 }),	-- Fallback Weapon - 1H Sword
			i(167143, {["sourceID"] = 103290 }),	-- QA Combat Test 1h Sword
			i(182567, { ["ItemAppearanceModifierID"] = 153 }),	-- NPE Weapon 1H Sword AGI
			i(182574, { ["ItemAppearanceModifierID"] = 153 }),	-- NPE Weapon 1H Sword AGI 2
			i(182575, { ["ItemAppearanceModifierID"] = 153 }),	-- NPE Weapon 1H Sword AGI 3
			-- ItemID/Retrieving
			i(43922),	-- Honed Lightblade
			i(47846),	-- Cruel Barb (Glow, Purple - Low)
			i(108803),	-- 7.0 PH Weapon - 1H Sword Agi
			i(108804),	-- 7.0 PH Weapon - 1H Sword Str
			i(108805),	-- 7.0 PH Weapon - 1H Sword Int
			i(109320),	-- 6.0 QA Combat Test Strength 1h Sword 2
			i(109377),	-- 6.0 QA Combat Test Strength 1H Sword 3
			i(109445),	-- 6.0 QA Combat Test Strength 1h Sword
			i(109448),	-- 7.0 QA Combat Test Caster DPS Sword
			i(109458),	-- 6.0 QA Combat Test Agility 1h Sword
			i(124079),	-- Bloodthirsty Blade
			i(124084),	-- Bloodslaked Blade
			i(127852),	-- Armaments of the Black Wyrm [TEMP]
			i(134067),	-- Blackswell Scalemender's Mace
			i(171401),	-- Phaeweald Rapier
		}),
		filter(POLEARMS, {
			-- Load In Game
			i(165271, {["sourceID"] = 101576 }),	-- Fallback Weapon - Polearm
			-- ItemID/Retrieving
			i(54965),	-- Stormwind Spear
			i(108797),	-- 7.0 PH Weapon - 2H Polearm Agi
			i(108798),	-- 7.0 PH Weapon - 2H Polearm Str
			i(108799),	-- 7.0 PH Weapon - 2H Polearm Int
			i(109456),	-- 6.0 QA Combat Test Agility Polearm
			i(176904),	-- Bonegrafted Spear
		}),
		n(RELICS, {
			-- Load In Game
			i(132252),	-- Owen Test Relic
			i(136988),	-- QA Combat Test Relic Holy 1
			i(136989),	-- QA Combat Test Relic Arcane 1
			i(136990),	-- QA Combat Test Relic Blood 1
			i(136991),	-- QA Combat Test Relic Fel 1
			i(136992),	-- QA Combat Test Relic Fire 1
			i(136993),	-- QA Combat Test Relic Frost 1
			i(136994),	-- QA Combat Test Relic Iron 1
			i(136995),	-- QA Combat Test Relic Life 1
			i(136996),	-- QA Combat Test Relic Shadow 1
			i(136998),	-- QA Combat Test Relic Wind 1
			i(136999),	-- QA Combat Test Relic Holy 2
			i(137000),	-- QA Combat Test Relic Arcane 2
			i(137001),	-- QA Combat Test Relic Blood 2
			i(137002),	-- QA Combat Test Relic Fel 2
			i(137003),	-- QA Combat Test Relic Fire 2
			i(137004),	-- QA Combat Test Relic Frost 2
			i(137005),	-- QA Combat Test Relic Iron 2
			i(137006),	-- QA Combat Test Relic Life 2
			i(137007),	-- QA Combat Test Relic Shadow 2
			i(137009),	-- QA Combat Test Relic Wind 2
			i(140411),	-- Clarity of Conviction
			i(140412),	-- Reactive Intuition <-- BGs????
			i(140416),	-- Conscience of the Victorious
			i(140420),	-- Battering Tempest
			i(144446),	-- 7.2 QA Functionality Test Relic - Not For Playtesting - Bronze 1 +3
			i(144447),	-- 7.2 QA Functionality Test Relic - Not For Playtesting - Bronze 2 +3
			i(144448),	-- 7.2 QA Functionality Test Relic - Not For Playtesting - Bronze 3 +3
			i(144449),	-- 7.2 QA Functionality Test Relic - Not For Playtesting - Bronze 4 +3
			i(144450),	-- 7.2 QA Functionality Test Relic - Not For Playtesting - Bronze 5 +3
			i(144451),	-- 7.2 QA Functionality Test Relic - Not For Playtesting - Bronze 6 +3
			i(144452),	-- 7.2 QA Functionality Test Relic - Not For Playtesting - Bronze 7 +3
			i(144453),	-- 7.2 QA Functionality Test Relic - Not For Playtesting - Bronze 8 +3
			i(144454),	-- 7.2 QA Functionality Test Relic - Not For Playtesting - Bronze 9 +3
			i(146735),	-- 7.2 QA Combat Test Relic Arcane 1
			i(146739),	-- 7.2 QA Combat Test Relic Frost 1
			i(146740),	-- 7.2 QA Combat Test Relic Iron 1
			i(146741),	-- 7.2 QA Combat Test Relic Life 1
			i(146742),	-- 7.2 QA Combat Test Relic Shadow 1
			i(146743),	-- 7.2 QA Combat Test Relic Wind 1
			i(146734),	-- 7.2 QA Combat Test Relic Holy 1
			i(146736),	-- 7.2 QA Combat Test Relic Blood 1
			i(146737),	-- 7.2 QA Combat Test Relic Fel 1
			i(146738),	-- 7.2 QA Combat Test Relic Fire 1
			-- ItemID/Retrieving
			i(140070),	-- Deep Cave Ice Crystal (ptr only)
		}),
		filter(SHIELDS, {
			-- Load In Game
			i(165276, {["sourceID"] = 101581 }),	-- Fallback Weapon - Shield
			i(167140, {["sourceID"] = 103287 }),	-- QA Combat Test  Shield 1
			i(182570, { ["ItemAppearanceModifierID"] = 153 }),	-- NPE Weapon Shield
			i(182576, { ["ItemAppearanceModifierID"] = 153 }),	-- NPE Weapon Shield 2
			-- ItemID/Retrieving
			i(34415),	-- Crystaline Shard Shield
			i(60220),	-- Theodore's Heirloom Buckler
			i(108808),	-- 7.0 PH Shield - Shield Str
			i(108809),	-- 7.0 PH Shield - Shield Int
			i(109288),	-- 7.0 QA Combat Test Shield 1
			i(109312),	-- 7.0 QA Combat Test Shield 2
			i(109476),	-- 7.0 QA Combat Test Shield 3
			i(109550),	-- 7.0 QA Combat Test Shield 4
			i(159814),	-- 8.0 PH - Shield
			i(159815),	-- 8.0 PH - Shield
		}),
		filter(STAVES, {
			-- Load In Game
			i(182566, { ["ItemAppearanceModifierID"] = 153 }),	-- NPE Weapon Staff AGI
			i(182572, { ["ItemAppearanceModifierID"] = 153 }),	-- NPE Weapon Staff INT
			i(180491),	-- Wingdancer's Spire
			-- ItemID/Retrieving

			i(38245),	-- Crystalline Providence
			i(38248),	-- Torch of the Fallen Souls
			i(49458),	-- Insight of the Water
			i(108800),	-- 7.0 PH Weapon - 2H Staff Agi
			i(108801),	-- 7.0 PH Weapon - 2H Staff Str
			i(108802),	-- 7.0 PH Weapon - 2H Staff Int
			i(109291),	-- QA Combat Test Agility Staff 1
			i(109374),	-- QA Combat Test Agility Staff 2
			i(109406),	-- QA Combat Test Caster Staff 1
			i(109429),	-- QA Combat Test Caster Staff 2
			i(109507),	-- QA Combat Test Caster Staff 3
			i(109531),	-- QA Combat Test Agility Staff 3
			i(109532),	-- QA Combat Test Caster Staff 4
			i(134066),	-- Blackswell Staff
			i(134068),	-- Blackswell Obliterator's Staff
			i(159579),	-- 8.0 PH - Weapon - Staff
			i(159580),	-- 8.0 PH - Weapon - Staff
			i(159581),	-- 8.0 PH - Weapon - Staff
			i(159582),	-- 8.0 PH - Weapon - Staff
			i(159583),	-- 8.0 PH - Weapon - Staff
			i(165272),	-- Fallback Weapon - Staff
			i(167145),	-- QA Combat Test Caster Staff 1
			i(167147),	-- QA Combat Test Staff 1
		}),
		filter(TWO_HANDED_AXES, {
			-- Load In Game
			i(69916),	-- Trollbane (Daakara)
			i(80980),	-- Axe of Aborted Deforestation (Never made it to Live, yet into our Appearances Tab)
			i(80984),	-- Expropriator's Greataxe
			i(165265, {["sourceID"] = 101571 }),	-- Fallback Weapon - 2H Axe
			i(167142, {["sourceID"] = 103289 }),	-- QA Combat Test 2H Axe
			i(182568, { ["ItemAppearanceModifierID"] = 153 }),	-- NPE Weapon 2H Axe STR
			-- ItemID/Retrieving
			i(23420),	-- Engraved Axe
			i(38244),	-- Valorous Exterminator (Never added)
			i(108782),	-- 7.0 PH Weapon - 2H Axe Str
			i(109519),	-- 6.0 QA Combat Test Strength 2H Axe
			i(134563),	-- Death's Smile
			i(151377),	-- Arne Test Heirloom - Bloodied Arcanite Reaper
		}),
		filter(TWO_HANDED_MACES, {
			-- Load In Game
			i(165263, {["sourceID"] = 101569 }),	-- Fallback Weapon - 2H Mace
			i(169818),	-- Quilboar Club
			i(182565, { ["ItemAppearanceModifierID"] = 153 }),	-- NPE Weapon 2H Mace STR
			i(182569, { ["ItemAppearanceModifierID"] = 153 }),	-- NPE Weapon 2H Sword STR
			i(182579, { ["ItemAppearanceModifierID"] = 153 }),	-- NPE Weapon 2H Sword STR 2
			-- ItemID/Retrieving
			i(108794),	-- 7.0 PH Weapon - 2H Mace Agi
			i(108795),	-- 7.0 PH Weapon - 2H Mace Str
			i(108796),	-- 7.0 PH Weapon - 2H Mace Int
			i(109401),	-- 6.0 QA Combat Test Strength 2H Mace
			i(159555),	-- 8.0 PH - Weapon - 2H Mace
		}),
		filter(TWO_HANDED_SWORDS, {
			-- Load In Game
			i(33475),	-- Frostmourne
			i(56702),	-- Saw Blade (never made it to live)
			i(81703),	-- Glorenzelg, High-Blade of the Silver Hand, added in 5.0.1 ??
			i(165274, {["sourceID"] = 101579 }),	-- Fallback Weapon - 2H Sword
			i(182337),	-- Unholy Weapon
			-- ItemID/Retrieving
			i(23432),	-- Engraved Greatsword
			i(49457),	-- Fury of the Flame
			i(108806),	-- 7.0 PH Weapon - 2H Sword Str
			i(109373),	-- 6.0 QA Combat Test Strength 2h Sword
			--
			i(49547),	-- Unknown
		}),
		filter(WANDS, {
			-- ItemID/Retrieving
			i(32482),	-- Touch of Victory
			i(34144),	-- Branch of Destruction
			i(34146),	-- Red Death
			i(34145),	-- Rod of Devastation
			i(34147),	-- Silverstave
			i(34148),	-- Purified Silverstave
			i(34149),	-- Lightstave
			i(58505),	-- ObsoleteQA Combat Test Caster DPS Wand 2
			i(108807),	-- 7.0 PH Weapon - 1H Wand Int
			i(109384),	-- 6.0 QA Combat Test Caster DPS Wand
			i(165275),	-- Fallback Weapon - Wand
			--
			i(165883),	-- Unknown
		}),
		filter(WARGLAIVES, {
			-- Load In Game
			i(151138),	-- Warglaive of Azzinoth [This version not implemented; was testing for transmog]
			i(182571, { ["ItemAppearanceModifierID"] = 153 }),	-- NPE Weapon Warglaive AGI
			-- ItemID/Retrieving
			i(165682),	-- Fallback Weapon - Warglaives
		}),
		expansion(EXPANSION.SL, {
			expansion(EXPANSION.SL, patch(2,0), {
				i(188133),	-- Owen Test
			}),
		}),
	}),
	n(WEAPONS, {
		-- 10.1.0
		expansion(EXPANSION.DF, patch(1,0), bubbleDown({ ["timeline"] = { CREATED_10_1_0 } }, {
			i(204638),	-- Sunder Wing
		})),

		-- 10.1.5
		expansion(EXPANSION.DF, patch(1,5), bubbleDown({ ["timeline"] = { CREATED_10_1_5 } }, {
			i(208003),	-- 10.1.5 Time Rifts - Bronze Weapons - Capture Media
			i(208002),	-- 10.1.5 Time Rifts - Infinite Weapons - Capture Media
			i(207044),	-- <DNT> Lo'Gosh Offhand Weapon
			i(207045),	-- <DNT> Lo'Gosh Mainhand Weapon
			i(207984),	-- Chroniton Wand
			i(208001),	-- Timewalker's Cudgel
			i(206931),	-- Truesilver Champion
		})),

		-- 10.1.7
		expansion(EXPANSION.DF, patch(1,7), bubbleDown({ ["timeline"] = { CREATED_10_1_7 } }, {
			i(208987),	-- The Horseman's Sinister Slicer [Hallow's End]
			i(209022),	-- The Horseman's Sinister Slicer [Hallow's End]
		})),

		-- 10.2.0
		expansion(EXPANSION.DF, patch(2,0), bubbleDown({ ["timeline"] = { CREATED_10_2_0 } }, {
			i(207025),	-- <Placeholder> Fyrakk Axe - Shadowflame
			i(210005),	-- 10.2 Monster - Weapon - Staff - 10.1.5 Weapon Staff - Staff_2H_Druid_C_02_Color1
			i(211260),	-- Crimson Gladiator's Spear
		})),

		-- 10.2.5
		expansion(EXPANSION.DF, patch(2,5), bubbleDown({ ["timeline"] = { CREATED_10_2_5 } }, {
			i(211162),	-- Klaxxi Longsword
			i(210533),	-- Timerunning Staff
		})),

		-- 10.2.7
		expansion(EXPANSION.DF, patch(2,7), bubbleDown({ ["timeline"] = { CREATED_10_2_7 } }, {
			i(215699),	-- Grand Imperial Rifle
			i(215566),	-- Jinyu Blade
			i(215568),	-- Jinyu Dagger
			i(215567),	-- Jinyu Poker
			i(215565),	-- Jinyu Slasher
			i(215902),	-- Klaxxi Scimitar
			i(215904),	-- Klaxxi Shortsword
			i(215903),	-- Klaxxi Sword
			i(216452),	-- Longstaff of the Monkey King
			i(215569),	-- Norushen's Dagger
			i(216478),	-- Pandaren Flamberge
			i(216454),	-- Pandaren Longstaff
			i(216455),	-- Pandaren Spire
			i(216456),	-- Pandaren Staff
			i(216457),	-- Pandaren Standard
			i(216451),	-- Quarterstaff of the Monkey King
			i(215508),	-- Shin'ka, the Tyrant's Greataxe
			i(216450),	-- Staff of the Monkey King
			i(216453),	-- Stick of the Monkey King
			i(215810),	-- Warspear of Xuen
		})),

		-- 11.0.0
		expansion(EXPANSION.TWW, patch(0,01), bubbleDownSelf({ ["timeline"] = { CREATED_11_0_0 } }, {
			-- Reported in Discord
			moh(10, i(225862)),	-- Forged Gladiator's Greatstaff
			-- Leave this for Darkal //Braghe
			i(219780),	-- 11.0 Leveling Quest Template - Axe2H - Str
			i(219781),	-- 11.0 Leveling Quest Template - FistWeapon - Agi
			i(219782),	-- 11.0 Leveling Quest Template - Sword1H - Int
			i(219791),	-- 11.0 Leveling Quest Template - Mace1H - Int
			i(219793),	-- 11.0 Leveling Quest Template - Axe 1H - Agi
			i(211042),	-- Delver's Wand
			i(211043),	-- Delver's Polearm
			i(211044),	-- Delver's Rifle
			i(211045),	-- Delver's Spellblade [1h Sword]
			i(211049),	-- Delver's Blade [1h Sword]
			i(211050),	-- Delver's Greatsword [2h Sword]
			i(211053),	-- Delver's Hacker [1h axe]
			i(211054),	-- Delver's Cleaver [1h axe]
			i(211055),	-- Delver's Censer [1h mace]
			i(211056),	-- Delver's Mallet [1h mace]
			i(211057),	-- Delver's Cudgel [1h mace]
			i(211058),	-- Delver's Halberd [Polearm]
			i(211060),	-- Delver's Warglaive
			i(212390),	-- 11.0 Raid Template - Guns - RangedRight
			i(212393),	-- 11.0 Raid Template - Polearms - Int - 2 Hand
			i(212396),	-- Monster Weapon - 1H Sword \\ 11.0 Raid Template - Sword1H - Agi - Weapon
			i(212402),	-- 11.0 Raid Template - Axe1H - Agi - Weapon
			i(212403),	-- 11.0 Raid Template - Axe1H - Int - Weapon
			i(212406),	-- 11.0 Raid Template - Mace1H - Str - Weapon
			i(212408),	-- 11.0 Raid Template - Sword2H - Str - 2 Hand
			i(212410),	-- 11.0 Raid Template - Mace2H - Int - 2 Hand
			i(212411),	-- 11.0 Raid Template - Sword2H - Int - 2 Hand
			i(212457),	-- 11.0 Raid Template - INT - Trinket
			i(211652),	-- 11.0 Dungeon Template - Shield - Shield
			i(211653),	-- 11.0 Dungeon Template - Generic - Holdable
			i(211654),	-- 11.0 Dungeon Template - Mace2H - Str - 2 Hand
			i(211655),	-- 11.0 Dungeon Template - Staff - Agi - 2 Hand
			i(211656),	-- 11.0 Dungeon Template - Guns - RangedRight
			i(211657),	-- 11.0 Dungeon Template - Warglaives - Weapon
			i(211658),	-- 11.0 Dungeon Template - Sword1H - Str -Weapon
			i(211659),	-- 11.0 Dungeon Template - Polearms - Int - 2 Hand
			i(211660),	-- 11.0 Dungeon Template - Dagger - Int - Weapon
			i(211661),	-- 11.0 Dungeon Template - Dagger - Agi - Weapon
			i(211662),	-- 11.0 Dungeon Template - Sword1H - Agi - Weapon
			i(211667),	-- 11.0 Dungeon Template - Staff - Int - 2 Hand
			i(211668),	-- 11.0 Dungeon Template - Mace1H - Agi - Weapon
			i(211669),	-- 11.0 Dungeon Template - Bows - Ranged
			i(211670),	-- 11.0 Dungeon Template - Crossbow - RangedRight
			i(211671),	-- 11.0 Dungeon Template - Axe1H - Str - Weapon
			i(211672),	-- 11.0 Dungeon Template - Axe1H - Agi - Weapon
			i(211673),	-- 11.0 Dungeon Template - Axe1H - Int - Weapon
			i(211674),	-- 11.0 Dungeon Template - Mace1H - Int - Weapon
			i(211675),	-- 11.0 Dungeon Template - Sword1H - Int - Weapon
			i(211676),	-- 11.0 Dungeon Template - Mace1H - Str - Weapon
			i(211677),	-- 11.0 Dungeon Template - Axe2H - Str - 2 Hand
			i(211678),	-- 11.0 Dungeon Template - Sword2H - Str - 2 Hand
			i(211679),	-- 11.0 Dungeon Template - FistWeapon - Weapon
			i(211680),	-- 11.0 Dungeon Template - Mace2H - Int - 2 Hand
			i(211681),	-- 11.0 Dungeon Template - Sword2H - Int - 2 Hand
			i(211682),	-- 11.0 Dungeon Template - Wand - RangedRight
			i(211683),	-- 11.0 Dungeon Template - Polearms - Agi - 2 Hand
			i(212130),	-- 11.0 End Game Template <Descriptor> Shield
			i(212131),	-- 11.0 End Game Template <Descriptor> Offhand
			i(212132),	-- 11.0 End Game Template <Descriptor> Polearm
			i(212133),	-- 11.0 End Game Template <Descriptor> Gun
			i(212134),	-- 11.0 End Game Template <Descriptor> Kris
			i(212135),	-- 11.0 End Game Template <Descriptor> Mace
			i(212136),	-- 11.0 End Game Template <Descriptor> Shank
			i(212137),	-- 11.0 End Game Template <Descriptor> Sword
			i(212138),	-- 11.0 End Game Template <Descriptor> Blade
			i(212139),	-- 11.0 End Game Template <Descriptor> Great Mace
			i(212142),	-- 11.0 End Game Template <Descriptor> Cudgel
			i(212143),	-- 11.0 End Game Template <Descriptor> Cudgel
			i(212144),	-- 11.0 End Game Template <Descriptor> Stave
			i(212145),	-- 11.0 End Game Template <Descriptor> Halberd
			i(212146),	-- 11.0 End Game Template <Descriptor> Staff
			i(212147),	-- 11.0 End Game Template <Descriptor> Warglaive
			i(218164),	-- 11.0 Zone Uncommon Template - Shield
			i(218165),	-- 11.0 Zone Uncommon Template - Offhand
			i(218166),	-- 11.0 Zone Uncommon Template - Polearm
			i(218167),	-- 11.0 Zone Uncommon Template - Gun
			i(218168),	-- 11.0 Zone Uncommon Template - Kris
			i(218169),	-- 11.0 Zone Uncommon Template - Mace
			i(218170),	-- 11.0 Zone Uncommon Template - Shank
			i(218171),	-- 11.0 Zone Uncommon Template - Sword
			i(218172),	-- 11.0 Zone Uncommon Template - Blade
			i(218173),	-- 11.0 Zone Uncommon Template - Great Mace
			i(218176),	-- 11.0 Zone Uncommon Template - Cudgel
			i(218177),	-- 11.0 Zone Uncommon Template - Cudgel
			i(218178),	-- 11.0 Zone Uncommon Template - Stave
			i(218179),	-- 11.0 Zone Uncommon Template - Halberd
			i(218180),	-- 11.0 Zone Uncommon Template - Staff
			i(218181),	-- 11.0 Zone Uncommon Template - Warglaive
			i(218221),	-- 11.0 Leveling Quest Template - Shield - Shield
			i(218222),	-- 11.0 Leveling Quest Template - Generic - Holdable
			i(218223),	-- 11.0 Leveling Quest Template - Polearms - Agi
			i(218224),	-- 11.0 Leveling Quest Template - Guns - Agi
			i(218225),	-- 11.0 Leveling Quest Template - Dagger - Int
			i(218226),	-- 11.0 Leveling Quest Template - Mace2H - Int
			i(218227),	-- 11.0 Leveling Quest Template - Dagger - Agi
			i(218228),	-- 11.0 Leveling Quest Template - Sword1H - Str
			i(218229),	-- 11.0 Leveling Quest Template - Sword1H - Agi
			i(218230),	-- 11.0 Leveling Quest Template - Mace2H - Str
			i(218233),	-- 11.0 Leveling Quest Template - Mace1H - Str
			i(218234),	-- 11.0 Leveling Quest Template - Mace1H - Agi
			i(218235),	-- 11.0 Leveling Quest Template - Staff - Agi
			i(218236),	-- 11.0 Leveling Quest Template - Polearms - Str
			i(218237),	-- 11.0 Leveling Quest Template - Staff - Int
			i(218238),	-- 11.0 Leveling Quest Template - Warglaive - Agi
			i(224467),	-- Forgotten Axe [2h axe]
			i(225873),	-- Forged Gladiator's Sword

			--- Fist
			i(223585),	-- Algari Bladefist

			-- Two hand
			i(216905),	-- Brann Bronzebeard's Axe
			-- Gun
			i(216906),	-- Ol' Faithful
		})),

		-- 11.0.2
		expansion(EXPANSION.TWW, patch(0,02), bubbleDownSelf({ ["timeline"] = { CREATED_11_0_2 } }, {
			i(222905),	-- Faerin's Shield
		})),

		-- 11.0.5
		expansion(EXPANSION.TWW, patch(0,5), bubbleDownSelf({ ["timeline"] = { ADDED_11_0_5 } }, {
			i(225667),	-- Ambassador Flamelash's Trident
			i(231490),	-- Arbiter's Blade
			i(232474),	-- Defias Cuirass
			i(232475),	-- Defias Cuirass
			i(225666),	-- General Angerforge's Axe
			i(225664),	-- Golem Lord Argelmach's Gun
			i(225665),	-- Golem Lord Argelmach's Wrench
			i(229414),	-- Moira Thaurissan's Hammer
			i(226067),	-- Timely Tourist's Glaive
		})),

		-- 11.0.7
		expansion(EXPANSION.TWW, patch(0,7), bubbleDownSelf({ ["timeline"] = { ADDED_11_0_7 } }, {
			i(232946),	-- Verus
		})),

		-- 11.1.0
		expansion(EXPANSION.TWW, patch(1,0), bubbleDownSelf({ ["timeline"] = { ADDED_11_1_0 } }, {
			i(230796),	-- [11.1 PVP] Gladiator's Placeholder <TEMPLATE> (bow)
			i(230797),	-- [11.1 PVP] Gladiator's Placeholder <TEMPLATE> (2h axe)
			i(230798),	-- [11.1 PVP] Gladiator's Placeholder <TEMPLATE> (2h mace)
			i(230799),	-- [11.1 PVP] Gladiator's Placeholder <TEMPLATE> (1h sword)
			i(230791),	-- [11.1 PVP] Gladiator's Wither-Blade <TEMPLATE> (1h sword)
			i(232440),	-- [PH] Boreal Crossbow
			i(233063),	-- Brann's Boomstick
			i(232932),	-- Brann Bronzebeard's Mace
			i(232987),	-- Brann Bronzebeard's Shield
		})),
	}),
	n(WEAPONS, {
		expansion(EXPANSION.TBC, {
			-- 2.x.x
			n(P2xx, {
				i(32187),	-- Chancellor's Heavy Crossbow
				i(32188),	-- Chancellor's Fleshslicer
				i(32189),	-- Chancellor's Ripper
				i(32191),	-- Chancellor's Battletome
				i(32185),	-- Chancellor's War Staff
				i(32178),	-- Chancellor's Shanker
				i(32184),	-- Chancellor's Painsaw
				i(32181),	-- Chancellor's Bonegrinder
				i(32174),	-- Chancellor's Cleaver
				i(32182),	-- Chancellor's Decapitator
				i(32177),	-- Chancellor's Quickblade
				i(32180),	-- Chancellor's Slicer
				i(32192),	-- Chancellor's Barricade
				i(32175),	-- Chancellor's Hacker
				i(32190),	-- Chancellor's Spellblade
				i(32183),	-- Chancellor's Maul
				i(32186),	-- Chancellor's Warblade
				i(32173),	-- Chancellor's Bonecracker
				i(32176),	-- Chancellor's Pummeler
				i(32179),	-- Chancellor's Shiv
				i(23458),	-- High Warlord's Spellblade
				i(23462),	-- High Warlord's Tome of Destruction
				i(23463),	-- High Warlord's Tome of Mending
				i(23457),	-- High Warlord's Destroyer
				i(23461),	-- High Warlord's Quickblade
				i(23459),	-- High Warlord's Battle Mace
			}),

			-- 2.0.1
			expansion(EXPANSION.TBC, patch(0,1), bubbleDown({ ["timeline"] = { CREATED_2_0_1 } }, {
				-- #if BEFORE 4.0.1
				i(30491),	-- General's Plate Sabatons / General's Plate Greaves Tier 2 [TBC]
				-- #endif
			})),

			-- 2.4.2
			expansion(EXPANSION.TBC, patch(4,2), bubbleDown({ ["timeline"] = { CREATED_2_4_2 } }, {
				-- #if BEFORE 3.0.2
				i(38579),	-- Venomous Tome
				-- #endif
			})),
		}),
		expansion(EXPANSION.WRATH, {
			n(SEASON_DEADLY, {
				i(42523),	-- Savage Gladiator's Endgame
				i(42529),	-- Savage Gladiator's Reprieve
				i(42535),	-- Savage Gladiator's Grimoire
				-- #if NOT ANYCLASSIC
				i(42574),	-- Savage Gladiator's Idol of Resolve
				i(42575),	-- Savage Gladiator's Idol of Steadfastness
				i(42576),	-- Savage Gladiator's Idol of Tenacity
				i(42611),	-- Savage Gladiator's Libram of Fortitude
				i(42612),	-- Savage Gladiator's Libram of Justice
				i(42618),	-- Savage Gladiator's Sigil of Strife
				i(42593),	-- Savage Gladiator's Totem of Indomitability
				i(42594),	-- Savage Gladiator's Totem of Survival
				i(42595),	-- Savage Gladiator's Totem of the Third Wind
				-- #endif
			}),

			-- 3.0.2
			expansion(EXPANSION.WRATH, patch(0,2), bubbleDown({ ["timeline"] = { CREATED_3_0_2 } }, {
				-- #if BEFORE 6.2.0
				i(44191),	-- Ice-Rimed Chopper
				-- #endif
			})),
		}),
		expansion(EXPANSION.CATA, {
			-- 4.x.x
			n(P4xx, {
				i(77559),	-- Replica Grand Marshal's left Hand Blade
				i(77583),	-- Replica High Warlords Left Claw
				i(77588),	-- Replica High Warlord's Quickblade
				i(77586),	-- Replica High Warlord's Spellblade
				i(77570),	-- Replica High Warlord's Battle Mace
				i(77587),	-- Replica High Warlord's Destroyer
			}),
			n(SEASON_VICIOUS, {
				i(64693),	-- Bloodthirsty Gladiator's Barrier
				i(64694),	-- Bloodthirsty Gladiator's Baton of Light
				i(64695),	-- Bloodthirsty Gladiator's Battle Staff (Epic BG Item, never made it out of beta)
				i(64700),	-- Bloodthirsty Gladiator's Bonecracker (Epic BG Item, never made it out of beta)
				i(64701),	-- Bloodthirsty Gladiator's Bonegrinder (Epic BG Item, never made it out of beta)
				i(64717),	-- Bloodthirsty Gladiator's Cleaver (Epic BG Item, never made it out of beta)
				i(64726),	-- Bloodthirsty Gladiator's Decapitator (Epic BG item never made it out of beta)
				i(64743),	-- Bloodthirsty Gladiator's Endgame
				i(64744),	-- Bloodthirsty Gladiator's Energy Staff (Epic BG Item, never made it out of beta)
				i(64775),	-- Bloodthirsty Gladiator's Fleshslicer (Epic BG item never made it out of beta)
				i(64755),	-- Bloodthirsty Gladiator's Greatsword (Epic BG item never made it out of beta)
				i(64752),	-- Bloodthirsty Gladiator's Gravel (Epic BG Item, never made it out of beta)
				i(64758),	-- Bloodthirsty Gladiator's Hacker (Epic BG Item, never made it out of beta)
				i(64760),	-- Bloodthirsty Gladiator's Heavy Crossbow (Epic BG item never made it out of beta)
				i(64783),	-- Bloodthirsty Gladiator's Longbow (Epic BG item never made it out of beta)
				i(64810),	-- Bloodthirsty Gladiator's Pike (Epic BG item never made it out of beta)
				i(64816),	-- Bloodthirsty Gladiator's Pummeler (Epic BG Item, never made it out of beta)
				i(64817),	-- Bloodthirsty Gladiator's Quickblade (Epic BG Item, never made it out of beta)
				i(64818),	-- Bloodthirsty Gladiator's Redoubt
				i(64823),	-- Bloodthirsty Gladiator's Reprieve
				i(64824),	-- Bloodthirsty Gladiator's Rifle (Epic BG item never made it out of beta)
				i(64825),	-- Bloodthirsty Gladiator's Right Render (Epic BG item never made it out of beta)
				i(64826),	-- Bloodthirsty Gladiator's Ripper (Epic BG Item, never made it out of beta)
				i(64848),	-- Bloodthirsty Gladiator's Shanker (Epic BG Item, never made it out of beta)
				i(64849),	-- Bloodthirsty Gladiator's Shield Wall
				i(64850),	-- Bloodthirsty Gladiator's Shiv
				i(64774),	-- Bloodthirsty Gladiator's Slasher (Epic BG item never made it out of beta)
				i(64858),	-- Bloodthirsty Gladiator's Slicer (Epic BG Item, never made it out of beta)
				i(64859),	-- Bloodthirsty Gladiator's Spellblade (Epic BG Item, never made it out of beta)
				i(64860),	-- Bloodthirsty Gladiator's Staff (Epic BG Item, never made it out of beta)
				i(64861),	-- Bloodthirsty Gladiator's Touch of Defeat
			}),
			i(65878),	-- Charbelching Wand
			i(52969),	-- Heartache Dagger
			--
			i(54554),	-- Bejeweled Ship's Wheel
			i(54553),	-- Kliklak's Fearsome Greatsword
		}),
		expansion(EXPANSION.MOP, {
			n(SEASON_PRIDEFUL, {
				i(102611),	-- Prideful Gladiator's Bonegrinder
				i(102613),	-- Prideful Gladiator's Heavy Crossbow
				i(102595),	-- Prideful Gladiator's Staff
				i(103337),	-- Prideful Gladiator's Bonegrinder
				i(103375),	-- Prideful Gladiator's Heavy Crossbow
				i(103394),	-- Prideful Gladiator's Staff
				i(102985),	-- Prideful Gladiator's Bonegrinder
				i(103003),	-- Prideful Gladiator's Heavy Crossbow
				i(103021),	-- Prideful Gladiator's Staff
				i(105955),	-- Wrathful Gladiator's Razor (Elite, added in 5.4 ????)??
				i(105956),	-- Wrathful Gladiator's Razor [Not implemented, other version was instead]
			}),
			n(SEASON_GRIEVOUS, {
				i(100185),	-- Grievous Gladiator's Bonegrinder
				i(100241),	-- Grievous Gladiator's Heavy Crossbow
				i(100278),	-- Grievous Gladiator's Staff
				i(100554),	-- Grievous Gladiator's Bonegrinder
				i(103178),	-- Grievous Gladiator's Heavy Crossbow
				i(103197),	-- Grievous Gladiator's
				i(103140),	-- Grievous Gladiator's Bonegrinder
				i(100556),	-- Grievous Gladiator's Heavy Crossbow
				i(100537),	-- Grievous Gladiator's Staff
				i(102808),	-- Grievous Gladiator's Bonegrinder
				i(102810),	-- Grievous Gladiator's Heavy Crossbow
				i(102792),	-- Grievous Gladiator's Staff
				i(100186),	-- Grievous Gladiator's Bonegrinder
				i(100242),	-- Grievous Gladiator's Heavy Crossbow
				i(100279),	-- Grievous Gladiator's Staff
				i(100535),	-- Grievous Gladiator's Touch of Defeat
				i(100536),	-- Grievous Gladiator's Spellblade
			}),
			n(SEASON_TYRANNICAL, {
				i(91089),	-- Tyrannical Gladiator's Bonegrinder
				i(91394),	-- Tyrannical Gladiator's Fleshslicer
				i(91107),	-- Tyrannical Gladiator's Longbow
				i(91307),	-- Tyrannical Gladiator's Pike
				i(91201),	-- Tyrannical Gladiator's Rifle
				i(99833),	-- Tyrannical Gladiator's Shiv
				i(99939),	-- Tyrannical Gladiator's Baton of Light
				i(99767),	-- Tyrannical Gladiator's Bonegrinder
				i(99934),	-- Tyrannical Gladiator's Fleshslicer
				i(99780),	-- Tyrannical Gladiator's Longbow
				i(99892),	-- Tyrannical Gladiator's Pike
				i(99834),	-- Tyrannical Gladiator's Rifle
				i(99804),	-- Tyrannical Gladiator's Touch of Deafeat
				i(94324),	-- Tyrannical Gladiator's Bonegrinder
				i(94314),	-- Tyrannical Gladiator's Fleshslicer
				i(94303),	-- Tyrannical Gladiator's Longbow
				i(94319),	-- Tyrannical Gladiator's Pike
				i(94309),	-- Tyrannical Gladiator's Rifle
				i(99962),	-- Tyrannical Gladiator's Shiv
				i(99969),	-- Tyrannical Gladiator's Baton of Light
				i(99985),	-- Tyrannical Gladiator's Bonegrinder
				i(99975),	-- Tyrannical Gladiator's Fleshslicer
				i(99964),	-- Tyrannical Gladiator's Longbow
				i(99980),	-- Tyrannical Gladiator's Pike
				i(99970),	-- Tyrannical Gladiator's Rifle
				i(99966),	-- Tyrannical Gladiator's Touch of Deafeat
				i(91200),	-- Tyrannical Gladiator's Shiv
			}),
			n(SEASON_MALEVOLENT, {
				i(84714),	-- Dreadful Gladiator's Barrier
				i(84704),	-- Dreadful Gladiator's Baton of Light
				i(84723),	-- Dreadful Gladiator's Battle Staff
				i(84719),	-- Dreadful Gladiator's Bonecracker
				i(84721),	-- Dreadful Gladiator's Bonegrinder
				i(84701),	-- Dreadful Gladiator's Cleaver
				i(84707),	-- Dreadful Gladiator's Decapitator
				i(84711),	-- Dreadful Gladiator's Endgame
				i(84724),	-- Dreadful Gladiator's Energy Staff
				i(84697),	-- Dreadful Gladiator's Fleshslicer
				i(84720),	-- Dreadful Gladiator's Gavel
				i(84717),	-- Dreadful Gladiator's Greatsword
				i(84702),	-- Dreadful Gladiator's Hacker
				i(84718),	-- Dreadful Gladiator's Heavy Crossbow
				i(84705),	-- Dreadful Gladiator's Longbow
				i(84722),	-- Dreadful Gladiator's Pike
				i(84700),	-- Dreadful Gladiator's Pummeler
				i(84716),	-- Dreadful Gladiator's Quickblade
				i(84715),	-- Dreadful Gladiator's Redoubt
				i(84699),	-- Dreadful Gladiator's Render
				i(84712),	-- Dreadful Gladiator's Reprieve
				i(84706),	-- Dreadful Gladiator's Rifle
				i(84696),	-- Dreadful Gladiator's Ripper
				i(84708),	-- Dreadful Gladiator's Shanker
				i(84713),	-- Dreadful Gladiator's Shield Wall
				i(84709),	-- Dreadful Gladiator's Shiv
				i(84698),	-- Dreadful Gladiator's Slasher
				i(84710),	-- Dreadful Gladiator's Slicer
				i(84695),	-- Dreadful Gladiator's Spellblade
				i(84725),	-- Dreadful Gladiator's Staff
				i(84703),	-- Dreadful Gladiator's Touch of Defeat
				i(84899),	-- Malevolent Gladiator's Baton of Light
				i(84897),	-- Malevolent Gladiator's Heavy Crossbow
				i(85118),	-- Malevolent Gladiator's Shiv
				i(84895),	-- Malevolent Gladiator's Shiv
				i(97846),	-- Malevolent Gladiator's Spellblade
				i(84898),	-- Malevolent Gladiator's Touch of Defeat
				i(91747),	-- Malevolent Gladiator's Fleshslicer
				i(91751),	-- Malevolent Gladiator's Slasher
				i(84893),	-- Malevolent Gladiator's Fleshslicer
				i(94899),	-- Malevolent Gladiator's Baton of Light
				i(94898),	-- Malevolent Gladiator's Touch of Death
				--i(91498),	-- Malevolent Gladiator's Heavy Crossbow	-- in NYI Sourceless
			}),
			--
			i(84085),	-- Dreadwaste Meditation Staff
			i(84086),	-- Dreadwaste Diviner's Rod
			i(84527),	-- Hidden Pass Meditation Staff
			i(80982),	-- Scavenger's Shield
			i(80985),	-- Scavenger's Barrier
			i(80981),	-- Scavenged Rotor Blade
		}),
		expansion(EXPANSION.WOD, {
			-- 6.0.2
			expansion(EXPANSION.WOD, patch(0,2), bubbleDown({ ["timeline"] = { CREATED_6_0_2 } }, {
				i(120272),	-- High Warlord's Razor
				i(120273),	-- High Warlord's Razor
			})),
			n(SEASON_PRIMAL, {
				i(180460),	-- Primal Combatant's Decapitator
				i(111076),	-- Primal Gladiator's Staff (H), none elite
				i(115603),	-- Primal Gladiator's Staff (A), none elite
				i(115854),	-- Primal Gladiator's Staff
				i(111073),	-- Primal Gladiator's Heavy Crossbow
				i(115600),	-- Primal Gladiator's Heavy Crossbow
			}),
			--
			i(114946),	-- Admiral Taylor's Spellguard
			i(119408),	-- Foereaver Polearm
			i(117994),	-- RENAME Karabor Honor Guard Axe
			i(117993),	-- RENAME Rangari Boot Knife
		}),
		expansion(EXPANSION.LEGION, {
			n(ARTIFACTS, {
				["ItemAppearanceModifierID"] = 9,
				["groups"] = {
					i(137661),	-- Truthguard
					i(136593),	-- Doomhammer Offhand Appearance Record (referenced by actual item)
					i(134562),	-- Odyns Fury
					i(139439),	-- The Highkeeper's Ward
					i(132474),	-- Scythe of Elune
					i(132475),	-- Scythe of Elune
					i(132476),	-- Scythe of Elune
					i(132477),	-- Scythe of Elune
					i(132478),	-- Scythe of Elune
					i(132479),	-- G'Hanir, the Mother Tree
					i(132480),	-- G'Hanir, the Mother Tree
					i(132481),	-- G'Hanir, the Mother Tree
					i(132482),	-- G'Hanir, the Mother Tree
					i(132483),	-- G'Hanir, the Mother Tree
					i(118180),	-- Aluneth
					i(129752),	-- Aluneth
					i(129753),	-- Aluneth
					i(129754),	-- Aluneth
					i(129755),	-- Aluneth
					i(129967),	-- Sheilun
					i(129968),	-- Sheilun
					i(129969),	-- Sheilun
					i(129970),	-- Sheilun
					i(136858),	-- Darkened T'uure
					i(139275),	-- Aluneth
					i(139891),	-- Aluneth
					i(137660),	-- The Silver Hand
					i(137581),	-- Test Artifact 1
					i(139621),	-- The Watcher's Hammer. Used for Lost Edicts of the Watcher Paladin Appearance, actual appearance is gained via a different item
					i(137582),	-- Ashbringer
					i(131738),	-- Ashbringer
					i(131739),	-- Ashbringer
					i(131741),	-- Ashbringer
					i(131742),	-- Ashbringer
					i(122747),	-- Ashbringer
					i(129738),	-- Verus
					i(129735),	-- Verus
					i(129736),	-- Verus
					i(129737),	-- Verus
					i(129899),	-- The Eagle Spear
					i(128824),	-- Tome of the Silver Hand
				},
			}),
			i(150611),	-- Guardian's Oaken Spear
			i(150584),	-- Pike of Feral Rage
			i(150613),	-- Survivalist's Hunting Spear
			i(146304),	-- Fel Titan Hammer
			i(147374, {	-- Wooden Toy Shield [Alliance]
				["timeline"] = { CREATED_7_3_0 },
			}),
			i(147377, {	-- Wooden Toy Shield [Horde]
				["timeline"] = { CREATED_7_3_0 },
			}),
		}),
		expansion(EXPANSION.BFA, {
			n(SEASON_DREAD, {
				i(159923),	-- Honorable Combatant's Salutary Scepter
				i(161929),	-- Honorable Combatant's Salutary Scepter
			}),
			n(SEASON_SINISTER, {
				i(165036),	-- Sinister Gladiator's Halberd (A)
				i(165201),	-- Sinister Aspirant's Halberd (A)
			}),
			n(SEASON_NOTORIOUS, {
				i(167522),	-- Notorious Aspirant's Shield Wall (A)
				i(167521),	-- Notorious Aspirant's Shield Wall (H)
			}),
			n(WAR_EFFORT, {
				n(WEAPONS, {
					i(165617),	-- UNUSED - PH Horde Warfront Protectorate
					i(177114),	-- Honorbound Longbow
					i(177128),	-- 7th Legionnaire's Longbow
					i(177118),	-- Honorbound Pigsticker
					i(177132),	-- 7th Legionnaire's Halberd
					i(177113),	-- Honorbound Skullcleaver
					i(177143),	-- 7th Legionnaire's Skullcleaver
					i(177115),	-- Honorbound Dagger
					i(177129),	-- 7th Legionnaire's Dagger
					i(177116),	-- Honorbound Skullcrusher
					i(177130),	-- 7th Legionnaire's Warhammer
					i(177141),	-- 7th Legionnaire's Spellhammer
					i(177144),	-- Honorbound Warhammer
					i(177117),	-- Honorbound Bonebreaker
					i(177131),	-- 7th Legionnaire's Battle Hammer
					i(177119),	-- Honorbound War Staff
					i(177133),	-- 7th Legionnaire's Stave
					i(177120),	-- Honorbound Wand
					i(177135),	-- 7th Legionnaire's Wand
					i(177122),	-- Honorbound Protectorate
					i(177125),	-- Honorbound Barrier
					i(177138),	-- 7th Legionnaire's Aegis
					i(177142),	-- 7th Legionnaire's Shield
					i(177123),	-- Honorbound Focus
					i(177139),	-- 7th Legionnaire's Censer
					i(177124),	-- Honorbound Warglaive
					i(177140),	-- 7th Legionnaire's Warglaive
					i(177126),	-- Honorbound Portable Cannon
					i(177136),	-- 7th Legionnaire's Hand Cannon
					i(177127),	-- Honorbound Gladius
					i(177134),	-- 7th Legionnaire's Longsword
					i(177137),	-- 7th Legionnaire's Claymore
					i(177121),	-- Honorbound Decapitator
				}),
			}),
			i(167998, {	-- Dark Iron Tankard
				["timeline"] = { CREATED_8_1_5 },
			}),
			i(159538),	-- Coldscale Cudgel
			i(159498),	-- Coldscale Pistol
			i(159586),	-- Coralshell Blade
			i(159559),	-- Coralshell Halberd
			i(159513),	-- Deepwarden Fangs
			i(159603),	-- Deepwarden Spark
			i(159541),	-- Dockyard Mace
			i(159500),	-- Dockyard Sidearm
			i(159591),	-- Gnarlwood Cutlass
			i(159553),	-- Gnarlwood Hammer
			i(159567),	-- Gnarlwood Staff
			i(159512),	-- Gol Osigr Handblade
			i(159801),	-- Gol Osigr Targe
			i(159817),	-- Gol Osigr Torch
			i(159499),	-- Ironcrest Longrifle
			i(159552),	-- Shipwrecker Maul
			i(159588),	-- Stagheart Falchion
			i(159542),	-- Stagheart Gavel
			i(159472),	-- Stagheart Hatchet
			i(159561),	-- Stagheart Poleaxe
			i(159562),	-- Tideguard Pike
			i(159503),	-- Tideguard Slicers
			i(159565),	-- Tideguard Spire
			i(159495),	-- Wavecaller Speargun
			i(159526),	-- Wintersail Dirk
			i(159554),	-- Wintersail Hammer
			i(159592),	-- Wintersail Sabre
			i(159510),	-- Wintersail Strikers
		}),
		expansion(EXPANSION.SL, {
			n(SEASON_SINFUL, {
				i(183432),	-- Sinful Aspirant's Reaver
				i(178469),	-- Sinful Aspirant's Bow
				i(178671),	-- Sinful Aspirant's Broadsword
				i(178672),	-- Sinful Aspirant's Bulwark
				i(178674),	-- Sinful Aspirant's Glaive
				i(178477),	-- Sinful Aspirant's Shield
				i(178491),	-- Sinful Aspirant's Warshield
				i(178397),	-- Sinful Gladiator's Aegis
				i(175998),	-- Sinful Gladiator's Axe
				i(183403),	-- Sinful Gladiator's Battlehammer
				i(176000),	-- Sinful Gladiator's Blade
				i(178390),	-- Sinful Gladiator's Dagger
				i(176008),	-- Sinful Gladiator's Focus
				i(178398),	-- Sinful Gladiator's Goblet
				i(175999),	-- Sinful Gladiator's Greatbow
				i(183406),	-- Sinful Gladiator's Greatmaul
				i(178392),	-- Sinful Gladiator's Halberd
				i(178388),	-- Sinful Gladiator's Handaxe
				i(183405),	-- Sinful Gladiator's Mageblade
				i(176002),	-- Sinful Gladiator's Polearm
				i(178389),	-- Sinful Gladiator's Recurve
				i(178394),	-- Sinful Gladiator's Saber
				i(176007),	-- Sinful Gladiator's Shield
				i(178399),	-- Sinful Gladiator's Slicer
				i(183404),	-- Sinful Gladiator's Spellblade
				i(176003),	-- Sinful Gladiator's Spellstaff
				i(178393),	-- Sinful Gladiator's Spire
				i(176004),	-- Sinful Gladiator's Sword
				i(176009),	-- Sinful Gladiator's Warglaive
			}),
			inst(1193, {	-- Sanctum of Domination
				i(181374),	-- Sylvanas Shadowlands Bow
			}),
			i(182350),	-- Ardenweald Raid Mace STR
			i(180152),	-- Drust 2H Axe
			--
			i(189780),	-- <DNT> 9.2 Raid - Sepulcher of the First Ones - Boss 01 - Solitary Guardian - Shield
			--
			i(176017),	-- Ardenweald Quest 2H Mace
			i(176018),	-- Ardenweald Quest 2H Mace
			i(176019),	-- Ardenweald Quest 2H Mace
			i(176020),	-- Ardenweald Quest 2H Mace
			i(176021),	-- Ardenweald Quest 2H Mace
			i(176047),	-- Ardenweald Quest Warglaives
			i(176048),	-- Ardenweald Quest Warglaives
			i(176049),	-- Ardenweald Quest Warglaives
			i(176050),	-- Ardenweald Quest Warglaives
			i(176051),	-- Ardenweald Quest Warglaives
			i(176037),	-- Ardenweald Quest Shield
			i(176038),	-- Ardenweald Quest Shield
			i(176039),	-- Ardenweald Quest Shield
			i(176040),	-- Ardenweald Quest Shield
			i(176041),	-- Ardenweald Quest Shield
			i(176027),	-- Ardenweald Quest Polearm
			i(176028),	-- Ardenweald Quest Polearm
			i(176029),	-- Ardenweald Quest Polearm
			i(176030),	-- Ardenweald Quest Polearm
			i(176031),	-- Ardenweald Quest Polearm
			i(176022),	-- Ardenweald Quest Bow
			i(176023),	-- Ardenweald Quest Bow
			i(176024),	-- Ardenweald Quest Bow
			i(176025),	-- Ardenweald Quest Bow
			i(176026),	-- Ardenweald Quest Bow
			i(176032),	-- Ardenweald Quest Sword
			i(176033),	-- Ardenweald Quest Sword
			i(176034),	-- Ardenweald Quest Sword
			i(176035),	-- Ardenweald Quest Sword
			i(176036),	-- Ardenweald Quest Sword
			i(176012),	-- Ardenweald Quest Mace
			i(176013),	-- Ardenweald Quest Mace
			i(176014),	-- Ardenweald Quest Mace
			i(176015),	-- Ardenweald Quest Mace
			i(176016),	-- Ardenweald Quest Mace
			i(179503),	-- Ardenweald Quest Dagger
			i(179504),	-- Ardenweald Quest Dagger
			i(179505),	-- Ardenweald Quest Dagger
			i(179506),	-- Ardenweald Quest Dagger
			i(179507),	-- Ardenweald Quest Dagger
			i(176042),	-- Ardenweald Quest Offhand
			i(176043),	-- Ardenweald Quest Offhand
			i(176044),	-- Ardenweald Quest Offhand
			i(176045),	-- Ardenweald Quest Offhand
			i(176046),	-- Ardenweald Quest Offhand
			i(176841),	-- Ardenweald Quest Staff
			i(176842),	-- Ardenweald Quest Staff
			i(176843),	-- Ardenweald Quest Staff
			i(176844),	-- Ardenweald Quest Staff
			i(178117),	-- Ardenweald NPC Staff
			i(178118),	-- Ardenweald NPC Staff
			--
			i(184471),	-- Guidenote Dagger
			i(184529),	-- Elysian Ceremonial Dagger
			i(184532),	-- Silver-Edged Elysian Dirk
			i(184528),	-- Elysian Guillotine Claws
			i(184531),	-- Elysian Battle Hammer
			i(184533),	-- Elysian Forgelite's Hammer
			i(184527),	-- Elysian Watcher's Bell
			i(184524),	-- Elysian Twinbladed Glaive
			i(184525),	-- Elysian Pointed Hoplon
			i(184526),	-- Elysian Phalanx Dory
			i(179735),	-- 9.0 Monster - Bastion - Weapon - Polearm AGI (But is a sword)
			i(184530),	-- Greatsword of the Elysian Guard
			i(184523),	-- Elysian Ironbolt Gastraphetes
			i(179007),	-- 9.0 Monster - Bastion - Weapon - Dark
			--
			i(183086),	-- Battle Tested Warglaive
			i(183077),	-- Battle Tested Shank
			i(183088),	-- Battle Tested Dagger
			i(183078),	-- Battle Tested Basher
			i(183079),	-- Battle Tested Stave
			i(183090),	-- Battle Tested Staff
			i(183080),	-- Battle Tested Shortsword
			i(183087),	-- Battle Tested Longsword
			i(183089),	-- Battle Tested Spellblade
			i(183081),	-- Battle Tested Crossbow
			i(183082),	-- Battle Tested Wand
			i(183083),	-- Battle Tested Greatsword
			i(183084),	-- Battle Tested Bulwark
			i(183085),	-- Battle Tested Tome
			--
			i(184325),	-- Sinfall Quickblade
			i(184514),	-- Sinfall Spellbinder's Kris
			i(184330),	-- Sinfall Enchanted Elixir Bottle
			i(184327),	-- Sinfall Redeemer's Morningstar
			i(184323),	-- Sinfall Wing-Glaive
			i(184329),	-- Sinfall Kite Shield
			i(184321),	-- Sinfall Skirmisher's Poleaxe
			i(184328),	-- Sinfall Defender's Halberd
			i(184324),	-- Sinfall Fencer's Rapier
			i(184322),	-- Sinfall Blunderbus
		}),
	}),
});