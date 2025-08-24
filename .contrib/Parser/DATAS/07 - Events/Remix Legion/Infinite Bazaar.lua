-----------------------------------------------------
--     W O R L D   E V E N T S   M O D U L E       --
-----------------------------------------------------
local BRONZE = 3252;

root(ROOTS.WorldEvents, applyevent(EVENTS.REMIX_LEGION, n(REMIX_LEGION, bubbleDown({ ["timeline"] = { ADDED_11_2_5, REMOVED_LEGION_REMIX_END } }, {
	n(INFINITE_BAZAAR, {
		["coord"] = { 45.7, 68.1, BROKEN_ISLES },
		["groups"] = {
			n(241145, {	-- Aeonicus <Raid Finder Apparel>
				clWithoutLock(DEATHKNIGHT, {
					
				}),
				clWithoutLock(DRUID, {
					
				}),
				clWithoutLock(HUNTER, {
					
				}),
				clWithoutLock(MAGE, {
					
				}),
				clWithoutLock(MONK, {
					
				}),
				clWithoutLock(PALADIN, {
					
				}),
				clWithoutLock(PRIEST, {
					
				}),
				clWithoutLock(ROGUE, {
					
				}),
				clWithoutLock(SHAMAN, {
					
				}),
				clWithoutLock(WARLOCK, {
					
				}),
				clWithoutLock(WARRIOR, {
					
				}),
			}),
			n(241184, {	-- Agos the Silent <Lost and Found Apparel>
				clWithoutLock(DEATHKNIGHT, {
					
				}),
				clWithoutLock(DRUID, {
					
				}),
				clWithoutLock(HUNTER, {
					
				}),
				clWithoutLock(MAGE, {
					
				}),
				clWithoutLock(MONK, {
					
				}),
				clWithoutLock(PALADIN, {
					
				}),
				clWithoutLock(PRIEST, {
					
				}),
				clWithoutLock(ROGUE, {
					
				}),
				clWithoutLock(SHAMAN, {
					
				}),
				clWithoutLock(WARLOCK, {
					
				}),
				clWithoutLock(WARRIOR, {
					
				}),
			}),
			n(241147, {	-- Arturos <Dungeon Apparel>
				filter(CLOTH, {
					
				}),
				filter(LEATHER, {
					
				}),
				filter(MAIL, {
					
				}),
				filter(PLATE, {
					
				}),
			}),
			--n(251042, { }),	-- Domelius <Housing Vendor> (Stripped of his title and no vendor 'option' in build 62687 but is still present.)
			n(241143, {	-- Durus <Normal Raid Apparel>
				clWithoutLock(DEATHKNIGHT, {
					
				}),
				clWithoutLock(DRUID, {
					
				}),
				clWithoutLock(HUNTER, {
					
				}),
				clWithoutLock(MAGE, {
					
				}),
				clWithoutLock(MONK, {
					
				}),
				clWithoutLock(PALADIN, {
					
				}),
				clWithoutLock(PRIEST, {
					
				}),
				clWithoutLock(ROGUE, {
					
				}),
				clWithoutLock(SHAMAN, {
					
				}),
				clWithoutLock(WARLOCK, {
					
				}),
				clWithoutLock(WARRIOR, {
					
				}),
			}),
			n(246030, {	-- Freddie Threads <Discount Cloak Dealer>
				
			}),
			n(241186, {	-- Grandmaster Jakkus <Class Mounts>
				["groups"] = sharedData({
					["cost"] = {{ "c", BRONZE, 10000 }},
				}, {
					i(252954),	-- Felscorned Reins of the Vilebrood Vanquisher (MOUNT!)
					i(253013),	-- Slayer's Reins of the Felscorned Shrieker (MOUNT!)
					i(253024),	-- Feldruid's Scornwing Idol (MOUNT!)
					i(253025),	-- Reins of the Felscorned Wolfhawk (MOUNT!)
					i(253026),	-- Archmage's Felscorned Disc (MOUNT!)
					i(253027),	-- Felscorned Grandmaster's Bell (MOUNT!)
					i(253028),	-- Reins of the Highlord's Felscorned Charger (MOUNT!)
					i(253029),	-- Felscorned Seeker's Whistle (MOUNT!)
					i(253030),	-- Shadowblade's Reins of Felscorned Portent (MOUNT!)
					i(253031),	-- Felscorned Tempest Totem (MOUNT!)
					i(253032),	-- Felscorned Reins of the Netherlord's Dreadsteed (MOUNT!)
					i(253033),	-- Iron Reins of the Felscorned War Wrym (MOUNT!)
				}),
			}),
			n(241182, {	-- Hemet Nesingwary XVII <Beastmaster>
				------ NEW MOUNTS ------
				i(239667, {	-- Reins of the Ashplague Fel Bat
					["cost"] = {{ "c", BRONZE, 10000 }},
				}),
				i(250426, {	-- Reins of the Aquamarine Basilisk
					["cost"] = {{ "c", BRONZE, 10000 }},
				}),
				i(239665, {	-- Reins of the Bloodhunter Fel Bat
					["cost"] = {{ "c", BRONZE, 10000 }},
				}),
				i(251795, {	-- Reins of the Brimstone Courser
					["cost"] = {{ "c", BRONZE, 10000 }},
				}),
				i(251796, {	-- Reins of the Chestnut Courser
					["cost"] = {{ "c", BRONZE, 10000 }},
				}),
				i(250425, {	-- Reins of the Felslate Basilisk
					["cost"] = {{ "c", BRONZE, 10000 }},
				}),
				i(250757, {	-- Reins of the Gloomdark Nightmare
					["cost"] = {{ "c", BRONZE, 10000 }},
				}),
				i(250752, {	-- Reins of the Golden Sunrunner
					["cost"] = {{ "c", BRONZE, 10000 }},
				}),
				i(250429, {	-- Reins of the Highland Elderhorn
					["cost"] = {{ "c", BRONZE, 10000 }},
				}),
				i(250427, {	-- Reins of the Illidari Blightstalker
					["cost"] = {{ "c", BRONZE, 10000 }},
				}),
				i(250428, {	-- Reins of the Illidari Dreadstalker
					["cost"] = {{ "c", BRONZE, 10000 }},
				}),
				i(250424, {	-- Reins of the Leystone Basilisk
					["cost"] = {{ "c", BRONZE, 10000 }},
				}),
				i(250423, {	-- Reins of the Slag Basilisk
					["cost"] = {{ "c", BRONZE, 10000 }},
				}),
				i(250721, {	-- Reins of the Snowy Highmountain Eagle
					["cost"] = {{ "c", BRONZE, 10000 }},
				}),
				i(250723, {	-- Reins of the Treetop Highmountain Eagle
					["cost"] = {{ "c", BRONZE, 10000 }},
				}),
				i(250756, {	-- Reins of the Turquoise Courser
					["cost"] = {{ "c", BRONZE, 10000 }},
				}),
				i(250751, {	-- Reins of the Twilight Courser
					["cost"] = {{ "c", BRONZE, 10000 }},
				}),
				i(239687, {	-- Reins of the Wretched Fel Bat
					["cost"] = {{ "c", BRONZE, 10000 }},
				}),
				------ Locked behind: Rise of the Nightfallen ------
				i(250728, {	-- Reins of the Arcberry Manasaber
					["cost"] = {{ "c", BRONZE, 10000 }},
				}),
				i(250760, {	-- Reins of the Bonesteed of Bloodshed
					["cost"] = {{ "c", BRONZE, 10000 }},
				}),
				i(250758, {	-- Reins of the Bonesteed of Oblivion
					["cost"] = {{ "c", BRONZE, 10000 }},
				}),
				i(250759, {	-- Reins of the Bonesteed of Plague
					["cost"] = {{ "c", BRONZE, 10000 }},
				}),
				i(250761, {	-- Reins of the Bonesteed of Triumph
					["cost"] = {{ "c", BRONZE, 10000 }},
				}),
				------ Locked behind: Argus Eternal ------
				i(250803, {	-- Garnet Ruinstrider
					["cost"] = {{ "c", BRONZE, 10000 }},
				}),
				i(250804, {	-- Longhorned Bleakhoof Talbuk
					["cost"] = {{ "c", BRONZE, 10000 }},
				}),
				i(250192, {	-- Reins of the Ghastly Ur'zul
					["cost"] = {{ "c", BRONZE, 10000 }},
				}),
				i(250747, {	-- Reins of the Albino Mana Ray
					["cost"] = {{ "c", BRONZE, 10000 }},
				}),
				i(250746, {	-- Reins of the Bloodtooth Mana Ray
					["cost"] = {{ "c", BRONZE, 10000 }},
				}),
				i(250745, {	-- Reins of the Fel-scarred Mana Ray
					["cost"] = {{ "c", BRONZE, 10000 }},
				}),
				i(250805, {	-- Reins of the Longhorned Argussian Talbuk
					["cost"] = {{ "c", BRONZE, 10000 }},
				}),
				i(250806, {	-- Reins of the Longhorned Beryl Talbuk
					["cost"] = {{ "c", BRONZE, 10000 }},
				}),
				i(250802, {	-- Reins of the Longhorned Sable Talbuk
					["cost"] = {{ "c", BRONZE, 10000 }},
				}),
				i(250748, {	-- Reins of the Luminous Mana Ray
					["cost"] = {{ "c", BRONZE, 10000 }},
				}),

				------ OLD MOUNTS ------
				i(141713, {	-- Arcadian War Turtle
					["cost"] = {{ "c", BRONZE, 100000 }},
				}),
				i(138201, {	-- Fathom Dweller
					["cost"] = {{ "c", BRONZE, 20000 }},
				}),
				i(138258, {	-- Reins of the Long-Forgotten Hippogryph
					["cost"] = {{ "c", BRONZE, 20000 }},
				}),
				i(131734, {	-- Spirit of Eche'ro
					["cost"] = {{ "c", BRONZE, 40000 }},
				}),
				------ Locked behind: Rise of the Nightfallen ------
				i(137575, {	-- Fiendish Hellfire Core
					["cost"] = {{ "c", BRONZE, 100000 }},
				}),
				i(137574, {	-- Living Infernal Core
					["cost"] = {{ "c", BRONZE, 100000 }},
				}),
				i(142236, {	-- Midnight's Eternal Reins
					["cost"] = {{ "c", BRONZE, 100000 }},
				}),
				------ Locked behind: Legionfall ------
				i(143643, {	-- Abyss Worm
					["cost"] = {{ "c", BRONZE, 100000 }},
				}),
				i(147806, {	-- Cloudwing Hippogryph
					["cost"] = {{ "c", BRONZE, 20000 }},
				}),
				i(147807, {	-- Highmountain Elderhorn
					["cost"] = {{ "c", BRONZE, 20000 }},
				}),
				i(143764, {	-- Leywoven Flying Carpet
					["cost"] = {{ "c", BRONZE, 20000 }},
				}),
				i(147805, {	-- Valajar Stormwing
					["cost"] = {{ "c", BRONZE, 20000 }},
				}),
				i(147804, {	-- Wild Dreamrunner
					["cost"] = {{ "c", BRONZE, 20000 }},
				}),
				------ Locked behind: Argus Eternal ------
				i(152904, {	-- Acid Belcher
					["cost"] = {{ "c", BRONZE, 40000 }},
				}),
				i(153044, {	-- Avenging Felcrusher
					["cost"] = {{ "c", BRONZE, 20000 }},
				}),
				i(153043, {	-- Blessed Felcrusher
					["cost"] = {{ "c", BRONZE, 20000 }},
				}),
				i(153042, {	-- Glorious Felcrusher
					["cost"] = {{ "c", BRONZE, 20000 }},
				}),
				i(152816, {	-- Antoran Charhound
					["cost"] = {{ "c", BRONZE, 100000 }},
				}),
				i(152903, {	-- Biletooth Gnasher
					["cost"] = {{ "c", BRONZE, 40000 }},
				}),
				i(152905, {	-- Crimson Slavermaw
					["cost"] = {{ "c", BRONZE, 40000 }},
				}),
				i(152843, {	-- Darkspore Mana Ray
					["cost"] = {{ "c", BRONZE, 40000 }},
				}),
				i(152841, {	-- Felglow Mana Ray
					["cost"] = {{ "c", BRONZE, 40000 }},
				}),
				i(152844, {	-- Lambent Mana Ray
					["cost"] = {{ "c", BRONZE, 40000 }},
				}),
				i(152814, {	-- Maddened Chaosrunner
					["cost"] = {{ "c", BRONZE, 40000 }},
				}),
				i(152840, {	-- Scintillating Mana Ray
					["cost"] = {{ "c", BRONZE, 40000 }},
				}),
				i(152789, {	-- Shackled Ur'zul
					["cost"] = {{ "c", BRONZE, 100000 }},
				}),
				i(152842, {	-- Vibrant Mana Ray
					["cost"] = {{ "c", BRONZE, 40000 }},
				}),
				i(152790, {	-- Vile Fiend
					["cost"] = {{ "c", BRONZE, 40000 }},
				}),
			}),
			n(241167, {	-- Horos <Rare Collections>
				filter(BATTLE_PETS, {
					------ NEW PETS ------
					i(239705, {	-- Morsel (PET!)
						["cost"] = {{ "c", BRONZE, 5000 }},
					}),
					i(239699, {	-- Tidbit (PET!)
						["cost"] = {{ "c", BRONZE, 5000 }},
					}),
					i(129108, {	-- Son of Goredome (PET!)
						["cost"] = {{ "c", BRONZE, 5000 }},
					}),
					------ OLD PETS ------
					i(140320, {	-- Corgnelius (PET!)
						["cost"] = {{ "c", BRONZE, 10000 }},
					}),
					i(136901, {	-- Eye of Inquisition (PET!)
						["cost"] = {{ "c", BRONZE, 100000 }},
					}),
					i(140316, {	-- Firebat Pup (PET!)
						["cost"] = {{ "c", BRONZE, 10000 }},
					}),
					i(136900, {	-- Hateful Eye (PET!)
						["cost"] = {{ "c", BRONZE, 35000 }},
					}),
					i(140261, {	-- Hungering Claw (PET!)
						["cost"] = {{ "c", BRONZE, 10000 }},
					}),
					i(136903, {	-- Nightmare Whelpling (PET!)
						["cost"] = {{ "c", BRONZE, 80000 }},
					}),
					i(153252, {	-- Rebellious Imp (PET!)
						["cost"] = {{ "c", BRONZE, 35000 }},
					}),
					i(141349, {	-- Strange Humming Crystal (QS!) / Wondrous Wisdomball (PET!)
						["cost"] = {{ "c", BRONZE, 100000 }},
					}),
					i(130167, {	-- Thistleleaf Adventurer (PET!)
						["cost"] = {{ "c", BRONZE, 100000 }},
					}),
					i(136922, {	-- Wyrmy Tunkins (PET!)
						["cost"] = {{ "c", BRONZE, 10000 }},
					}),
					------ Locked behind: Rise of the Nightfallen ------
					i(144394, {	-- Tylarr Gronnden (PET!)
						["cost"] = {{ "c", BRONZE, 35000 }},
					}),
					------ Locked behind: Legionfall ------
					i(151828, {	-- Ageless Bronze Drake (PET!)
						["cost"] = {{ "c", BRONZE, 80000 }},
					}),
					i(151829, {	-- Bronze Proto-Whelp (PET!)
						["cost"] = {{ "c", BRONZE, 80000 }},
					}),
					i(146953, {	-- Scraps (PET!)
						["cost"] = {{ "c", BRONZE, 80000 }},
					}),
					i(147841, {	-- Orphaned Felbat (PET!)
						["cost"] = {{ "c", BRONZE, 35000 }},
					}),
					------ Locked behind: Argus Eternal ------
					i(153026, {	-- Cross Gazer (PET!)
						["cost"] = {{ "c", BRONZE, 10000 }},
					}),
					i(153054, {	-- Docile Skyfin (PET!)
						["cost"] = {{ "c", BRONZE, 20000 }},
					}),
					i(153055, {	-- Fel-Afflicted Skyfin (PET!)
						["cost"] = {{ "c", BRONZE, 20000 }},
					}),
					i(153056, {	-- Grasping Manifestation (PET!)
						["cost"] = {{ "c", BRONZE, 20000 }},
					}),
					i(153195, {	-- Uuna's Doll (PET!)
						["cost"] = {{ "c", BRONZE, 10000 }},
					}),
				}),
				filter(TOYS, {
					i(129165, {	-- Barnacle-Encrusted Gem (TOY!)
						["cost"] = {{ "c", BRONZE, 10000 }},
					}),
					i(131724, {	-- Crystalline Eye of Undravius (TOY!)
						["cost"] = {{ "c", BRONZE, 10000 }},
					}),
					i(141862, {	-- Mote of Light (TOY!)
						["cost"] = {{ "c", BRONZE, 25000 }},
					}),
					i(140363, {	-- Pocket Fel Spreader (TOY!)
						["cost"] = {{ "c", BRONZE, 20000 }},
					}),
					i(131717, {	-- Starlight Beacon (TOY!)
						["cost"] = {{ "c", BRONZE, 10000 }},
					}),
					i(140160, {	-- Stormforged Vrykul Horn
						["cost"] = {{ "c", BRONZE, 80000 }},
					}),
					i(130169, {	-- Tournament Favor (TOY!)
						["cost"] = {{ "c", BRONZE, 10000 }},
					}),
					------ Locked behind: Rise of the Nightfallen ------
					i(142265, {	-- Big Red Raygun (TOY!)
						["cost"] = {{ "c", BRONZE, 35000 }},
					}),
					i(142528, {	-- Crate of Bobbers: Can of Worms (TOY!)
						["cost"] = {{ "c", BRONZE, 10000 }},
					}),
					i(142529, {	-- Crate of Bobbers: Cat Head (TOY!)
						["cost"] = {{ "c", BRONZE, 10000 }},
					}),
					i(142530, {	-- Crate of Bobbers: Tugboat (TOY!)
						["cost"] = {{ "c", BRONZE, 10000 }},
					}),
					i(143662, {	-- Crate of Bobbers: Wooden Pepe (TOY!)
						["cost"] = {{ "c", BRONZE, 10000 }},
					}),
					i(119211, {	-- Golden Hearthstone Card: Lord Jaraxxus (TOY!)
						["cost"] = {{ "c", BRONZE, 100000 }},
					}),
					i(143544, {	-- Skull of Corruption (TOY!)
						["cost"] = {{ "c", BRONZE, 100000 }},
					}),
					------ Locked behind: Legionfall ------
					i(147867, {	-- Pilfered Sweeper (TOY!)
						["cost"] = {{ "c", BRONZE, 35000 }},
					}),
					i(147843, {	-- Sira's Extra Cloak (TOY!)
						["cost"] = {{ "c", BRONZE, 35000 }},
					}),
					------ Locked behind: Argus Eternal ------
					i(153204, {	-- All-Seer's Eye (TOY!)
						["cost"] = {{ "c", BRONZE, 10000 }},
					}),
					i(153193, {	-- Baarut the Brisk (TOY!)
						["cost"] = {{ "c", BRONZE, 10000 }},
					}),
					i(153183, {	-- Barrier Generator (TOY!)
						["cost"] = {{ "c", BRONZE, 80000 }},
					}),
					i(153179, {	-- Blue Conservatory Scroll (TOY!)
						["cost"] = {{ "c", BRONZE, 25000 }},
					}),
					i(153182, {	-- Holy Lightsphere (TOY!)
						["cost"] = {{ "c", BRONZE, 25000 }},
					}),
					i(153194, {	-- Legion Communication Orb (TOY!)
						["cost"] = {{ "c", BRONZE, 25000 }},
					}),
					i(153126, {	-- Micro-Artillery Controller (TOY!)
						["cost"] = {{ "c", BRONZE, 25000 }},
					}),
					i(153181, {	-- Red Conservatory Scroll (TOY!)
						["cost"] = {{ "c", BRONZE, 25000 }},
					}),
					i(153253, {	-- S.F.E. Interceptor (TOY!)
						["cost"] = {{ "c", BRONZE, 25000 }},
					}),
					i(153293, {	-- Sightless Eye (TOY!)
						["cost"] = {{ "c", BRONZE, 25000 }},
					}),
					i(153124, {	-- Spire of Spite (TOY!)
						["cost"] = {{ "c", BRONZE, 35000 }},
					}),
					i(153004, {	-- Unstable Portal Emitter (TOY!)
						["cost"] = {{ "c", BRONZE, 100000 }},
					}),
					i(152982, {	-- Vixx's Chest of Tricks (TOY!)
						["cost"] = {{ "c", BRONZE, 80000 }},
					}),
					i(153180, {	-- Yellow Conservatory Scroll (TOY!)
						["cost"] = {{ "c", BRONZE, 25000 }},
					}),
				}),
			}),
			n(241191, {	-- Larah Treebender <World Apparel>
				i(226127, {	-- Recruit's Shirt (White)
					["cost"] = {{ "c", BRONZE, 5 }},
				}),
				filter(CLOTH, {
					
				}),
				filter(LEATHER, {
					
				}),
				filter(MAIL, {
					
				}),
				filter(PLATE, {
					
				}),
			}),
			n(241142, {	-- Momentus
				["groups"] = sharedData({
					["cost"] = {{ "c", BRONZE, 5 }},
				}, {
					i(243369),	-- Timerunner's Bow
					i(243368),	-- Timerunner's Dagger
					i(243370),	-- Timerunner's Greatsword
					i(243372),	-- Timerunner's Mace
					i(243367),	-- Timerunner's Shield
					i(243366),	-- Timerunner's Staff
					i(243371),	-- Timerunner's Sword
				}),
			}),
			n(241179, {	-- Nostwin <Snacks and Stuff>
				["groups"] = sharedData({
					["cost"] = {{ "c", BRONZE, 5 }},
				}, {
					i(254320),	-- Elixir of Remembered Sight
					i(250316),	-- Everlasting Nosh
					i(188152),	-- Gateway Control Shard
					i(226037),	-- Timeless Neural Silencer
				}),
			}),
			n(241168, {	-- Pythagorus <Mythic Raid Apparel>
				clWithoutLock(DEATHKNIGHT, {
					
				}),
				clWithoutLock(DRUID, {
					
				}),
				clWithoutLock(HUNTER, {
					
				}),
				clWithoutLock(MAGE, {
					
				}),
				clWithoutLock(MONK, {
					
				}),
				clWithoutLock(PALADIN, {
					
				}),
				clWithoutLock(PRIEST, {
					
				}),
				clWithoutLock(ROGUE, {
					
				}),
				clWithoutLock(SHAMAN, {
					
				}),
				clWithoutLock(WARLOCK, {
					
				}),
				clWithoutLock(WARRIOR, {
					
				}),
				filter(COSMETIC, {
					iensemble(253273, {	-- Scythe of the Unmaker (ENSEMBLE!)
						["cost"] = {
							{ "i", 253304, 20 },	-- Cosmic Soulsliver
							{ "c", BRONZE, 30000 },
						},
					}),
					i(152094, {	-- Taeshalach (COSMETIC!)
						["cost"] = {
							{ "i", 242370, 20 },	-- Horns of the First Satyr
							{ "c", BRONZE, 30000 },
						},
					}),
					i(242368, {	-- The First Satyr's Spaulders (COSMETIC!)
						["cost"] = {
							{ "i", 253306, 20 },	-- Everflame of Hatred
							{ "c", BRONZE, 30000 },
						},
					}),
				}),
			}),
			n(246028, {	-- Sacerdormu <Heroic Raid Apparel>
				clWithoutLock(DEATHKNIGHT, {
					
				}),
				clWithoutLock(DRUID, {
					
				}),
				clWithoutLock(HUNTER, {
					
				}),
				clWithoutLock(MAGE, {
					
				}),
				clWithoutLock(MONK, {
					
				}),
				clWithoutLock(PALADIN, {
					
				}),
				clWithoutLock(PRIEST, {
					
				}),
				clWithoutLock(ROGUE, {
					
				}),
				clWithoutLock(SHAMAN, {
					
				}),
				clWithoutLock(WARLOCK, {
					
				}),
				clWithoutLock(WARRIOR, {
					
				}),
			}),
			n(246026, {	-- Unicus <Exclusive Ensembles>
				iensemble(253382, {	-- Arsenal: Arms of the Felforged Knight
					["cost"] = {{ "c", BRONZE, 7500 }},
				}),
				iensemble(253556, {	-- Arsenal: Bone Scythes
					["cost"] = {{ "c", BRONZE, 2500 }},
				}),
				iensemble(253569, {	-- Arsenal: Gems of the Lightforged Draenei
					["cost"] = {{ "c", BRONZE, 2500 }},
				}),
				iensemble(253561, {	-- Arsenal: Immortal Maces
					["cost"] = {{ "c", BRONZE, 2500 }},
				}),
				iensemble(253565, {	-- Arsenal: Mo'arg Hornmaces
					["cost"] = {{ "c", BRONZE, 2500 }},
				}),
				iensemble(253551, {	-- Arsenal: Mo'arg Swords
					["cost"] = {{ "c", BRONZE, 2500 }},
				}),
				iensemble(241389, {	-- Ensemble: Antoran Guard's Golden Battleplate
					["cost"] = {{ "c", BRONZE, 7500 }},
				}),
				iensemble(241392, {	-- Ensemble: Argussian Demonsbane Armor
					["cost"] = {{ "c", BRONZE, 7500 }},
				}),
				--iensemble(241357, {	-- Ensemble: Barkbinds of the Archdruid's Nightmare (Breaks the Parser)
				--	["cost"] = {{ "c", BRONZE, 7500 }},
				--}),
				iensemble(241416, {	-- Ensemble: Blazing Dreamscribed Robes
					["cost"] = {{ "c", BRONZE, 7500 }},
				}),
				iensemble(241358, {	-- Ensemble: Dream Defender's Emerald Guardplate
					["cost"] = {{ "c", BRONZE, 7500 }},
				}),
				iensemble(241414, {	-- Ensemble: Dreamseeker Vestments
					["cost"] = {{ "c", BRONZE, 7500 }},
				}),
				iensemble(241415, {	-- Ensemble: Dreamwatcher Vestments
					["cost"] = {{ "c", BRONZE, 7500 }},
				}),
				iensemble(241399, {	-- Ensemble: Dreamweald Dragonscale
					["cost"] = {{ "c", BRONZE, 7500 }},
				}),
				iensemble(241412, {	-- Ensemble: Earthrune Robes
					["cost"] = {{ "c", BRONZE, 7500 }},
				}),
				iensemble(241408, {	-- Ensemble: Fel-Bloodied Battlegear
					["cost"] = {{ "c", BRONZE, 7500 }},
				}),
				iensemble(241356, {	-- Ensemble: Ensemble: Fel-Marked Scales
					["cost"] = {{ "c", BRONZE, 7500 }},
				}),
				iensemble(241397, {	-- Ensemble: Firewurm Dragonscale
					["cost"] = {{ "c", BRONZE, 7500 }},
				}),
				iensemble(241406, {	-- Ensemble: Gladeraider's Battlegarb
					["cost"] = {{ "c", BRONZE, 7500 }},
				}),
				iensemble(241387, {	-- Ensemble: Heritage of the Lightforged - Hologemmed
					["cost"] = {{ "c", BRONZE, 7500 }},
				}),
				iensemble(241388, {	-- Ensemble: Heritage of the Lightforged - Holy Gold
					["cost"] = {{ "c", BRONZE, 7500 }},
				}),
				iensemble(241386, {	-- Ensemble: Heritage of the Lightforged - Crimson Vengeance
					["cost"] = {{ "c", BRONZE, 7500 }},
				}),
				iensemble(241385, {	-- Ensemble: Heritage of the Shal'dorei - Vineyard Red
					["cost"] = {{ "c", BRONZE, 7500 }},
				}),
				iensemble(241400, {	-- Ensemble: Highpeak Dragonscale
					["cost"] = {{ "c", BRONZE, 7500 }},
				}),
				iensemble(241396, {	-- Ensemble: Jarl's Battlehorns
					["cost"] = {{ "c", BRONZE, 7500 }},
				}),
				iensemble(241403, {	-- Ensemble: Jarl's Battlescales
					["cost"] = {{ "c", BRONZE, 7500 }},
				}),
				iensemble(253385, {	-- Ensemble: Mantles of the Nightwell
					["cost"] = {{ "c", BRONZE, 2500 }},
				}),
				iensemble(241413, {	-- Ensemble: Nightrune Robes
					["cost"] = {{ "c", BRONZE, 7500 }},
				}),
				iensemble(241402, {	-- Ensemble: Ruby Drake Hunter's Kit
					["cost"] = {{ "c", BRONZE, 7500 }},
				}),
				iensemble(241407, {	-- Ensemble: Searaider's Battlegarb
					["cost"] = {{ "c", BRONZE, 7500 }},
				}),
				iensemble(241411, {	-- Ensemble: Skyrune Robes
					["cost"] = {{ "c", BRONZE, 7500 }},
				}),
				iensemble(241410, {	-- Ensemble: Slayer's Golden Scarguards
					["cost"] = {{ "c", BRONZE, 7500 }},
				}),
				iensemble(241409, {	-- Ensemble: Slayer's Silver Scarguards
					["cost"] = {{ "c", BRONZE, 7500 }},
				}),
				iensemble(241395, {	-- Ensemble: Storm Champion's Warharness
					["cost"] = {{ "c", BRONZE, 7500 }},
				}),
				iensemble(241360, {	-- Ensemble: Stygian Silks
					["cost"] = {{ "c", BRONZE, 7500 }},
				}),
				iensemble(253358, {	-- Ensemble: Tideskorn Hunter's Munitions
					["cost"] = {{ "c", BRONZE, 2500 }},
				}),
				iensemble(251271, {	-- Ensemble: Tidesoaked Battlegear
					["cost"] = {{ "c", BRONZE, 7500 }},
				}),
				iensemble(241355, {	-- Ensemble: Verdant Dreamscribed Robes
					["cost"] = {{ "c", BRONZE, 7500 }},
				}),
				iensemble(241390, {	-- Ensemble: Vestments of Eredathian Sacrifice
					["cost"] = {{ "c", BRONZE, 7500 }},
				}),
				iensemble(253379, {	-- Ensemble: Windrunner Quivers
					["cost"] = {{ "c", BRONZE, 7500 }},
				}),
			}),
			n(QUESTS, sharedData({
				["isDaily"] = true,
				["groups"] = {
					i(251821),	-- Cache of Infinite Power
					i(239224),	-- Cache of Infinite Treasure
				},
			}, {
				q(90102, {	-- Infinite Research: Champion of the Broken Isles
					["qgs"] = {
						241748,	-- Eternus
						249256,	-- Pile of Chronoqueries
					},
				}),
				q(90109, {	-- Infinite Research: Clear the Skies
					["qgs"] = {
						241748,	-- Eternus
						249256,	-- Pile of Chronoqueries
					},
				}),
				q(89464, {	-- Infinite Research: Combat Studies, Comprehensive
					["qgs"] = {
						241748,	-- Eternus
						249256,	-- Pile of Chronoqueries
					},
				}),
				q(90112, {	-- Infinite Research: Combat Studies, Elite
					["qgs"] = {
						241748,	-- Eternus
						249256,	-- Pile of Chronoqueries
					},
				}),
				q(90099, {	-- Infinite Research: Combat Studies, Rare
					["qgs"] = {
						241748,	-- Eternus
						249256,	-- Pile of Chronoqueries
					},
				}),
				q(90100, {	-- Infinite Research: Combat Studies, Rare Elites
					["qgs"] = {
						241748,	-- Eternus
						249256,	-- Pile of Chronoqueries
					},
				}),
				q(89521, {	-- Infinite Research: Court of Stars, Heroic
					["qgs"] = {
						241748,	-- Eternus
						249256,	-- Pile of Chronoqueries
					},
				}),
				q(89469, {	-- Infinite Research: Dungeoneers Wanted, Heroic
					["qgs"] = {
						241748,	-- Eternus
						249256,	-- Pile of Chronoqueries
					},
				}),
				q(89468, {	-- Infinite Research: Dungeoneers Wanted, Normal
					["qgs"] = {
						241748,	-- Eternus
						249256,	-- Pile of Chronoqueries
					},
					["groups"] = {
						i(246936),	-- Resonant Epoch Memento
					},
				}),
				q(90110, {	-- Infinite Research: Gather Timewarped Samples
					["qgs"] = {
						241748,	-- Eternus
						249256,	-- Pile of Chronoqueries
					},
				}),
				q(89524, {	-- Infinite Research: Maw of Souls, Normal
					["qgs"] = {
						241748,	-- Eternus
						249256,	-- Pile of Chronoqueries
					},
				}),
				q(89465, {	-- Infinite Research: No Task Too Small
					["qgs"] = {
						241748,	-- Eternus
						249256,	-- Pile of Chronoqueries
					},
				}),
				q(89679, {	-- Infinite Research: The Emerald Nightmare, Heroic
					["qgs"] = {
						241748,	-- Eternus
						249256,	-- Pile of Chronoqueries
					},
				}),
				q(89676, {	-- Infinite Research: Time to Raid, Rift of Aln
					["qgs"] = {
						241748,	-- Eternus
						249256,	-- Pile of Chronoqueries
					},
				}),
			})),
		},
	}),
}))));
