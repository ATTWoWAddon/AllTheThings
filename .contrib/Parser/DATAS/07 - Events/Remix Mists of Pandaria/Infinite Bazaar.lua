-----------------------------------------------------
--     W O R L D   E V E N T S   M O D U L E       --
-----------------------------------------------------
local BRONZE = 2778;
local BONES_OF_MANNOROTH = 224461;
INFINITE_BAZARR = createHeader({
	readable = "Infinite Bazaar",
	icon = 298656,
	text = {
		en = "Infinite Bazaar",
		tw = "無限市集",
	},
	description = {
		en = "The Infinite Bazaar has multiple locations.",
	},
});
root(ROOTS.WorldEvents, applyevent(EVENTS.REMIX_MOP, n(REMIX_MOP, bubbleDown({ ["timeline"] = { ADDED_10_2_7, REMOVED_MOP_REMIX_END } }, {
	n(INFINITE_BAZARR, {
		["coords"] = {
		--[[	-- Accurate, but its 100 Ensembles per Zone in the Minilist
			{ 42.8, 27.5, THE_JADE_FOREST },
			{ 69.6, 53.1, KUN_LAI_SUMMIT },
			{ 37.8, 64.0, TOWNLONG_STEPPES },
			{ 52.6, 51.6, VALLEY_OF_THE_FOUR_WINDS },
		--]]
			{ 26.0, 49.0, 391 },	-- Shrine of Two Moons
			{ 72.0, 47.2, 393 },	-- Shrine of Seven Stars
		},
		["g"] = {
			n(219031, {	-- Aeonicus <Raid Finder Apparel>
				clWithoutLock(DEATHKNIGHT, {
					iensemble(215320, { -- Ensemble: Plate of the Lost Catacomb (LFR)
						["cost"] = {{"c", BRONZE, 5000}},
					}),
					iensemble(215324, { -- Ensemble: Battleplate of the All-Consuming Maw (LFR)
						["cost"] = {{"c", BRONZE, 5000}},
					}),
					iensemble(215327, { -- Ensemble: Battleplate of Cyclopean Dread (LFR)
						["cost"] = {{"c", BRONZE, 5000}},
					}),
				}),
				clWithoutLock(DRUID, {
					iensemble(215241, { -- Ensemble: Vestments of the Eternal Blossom (LFR)
						["cost"] = {{"c", BRONZE, 5000}},
					}),
					iensemble(215245, { -- Ensemble: Vestments of the Haunted Forest (LFR)
						["cost"] = {{"c", BRONZE, 5000}},
					}),
					iensemble(215247, { -- Ensemble: Vestments of the Shattered Vale (LFR)
						["cost"] = {{"c", BRONZE, 5000}},
					}),
				}),
				clWithoutLock(HUNTER, {
					iensemble(215289, { -- Ensemble: Yaungol Slayer Battlegear (LFR)
						["cost"] = {{"c", BRONZE, 5000}},
					}),
					iensemble(215293, { -- Ensemble: Battlegear of the Saurok Stalker (LFR)
						["cost"] = {{"c", BRONZE, 5000}},
					}),
					iensemble(215295, { -- Ensemble: Battlegear of the Unblinking Vigil (LFR)
						["cost"] = {{"c", BRONZE, 5000}},
					}),
				}),
				clWithoutLock(MAGE, {
					iensemble(215189, { -- Ensemble: Regalia of the Burning Scroll (LFR)
						["cost"] = {{"c", BRONZE, 5000}},
					}),
					iensemble(215193, { -- Ensemble: Regalia of the Chromatic Hydra (LFR)
						["cost"] = {{"c", BRONZE, 5000}},
					}),
					iensemble(215196, { -- Ensemble: Chronomancer Regalia (LFR)
						["cost"] = {{"c", BRONZE, 5000}},
					}),
				}),
				clWithoutLock(MONK, {
					iensemble(215252, { -- Ensemble: Vestments of the Red Crane (LFR)
						["cost"] = {{"c", BRONZE, 5000}},
					}),
					iensemble(215255, { -- Ensemble: Fire-Charm Vestments (LFR)
						["cost"] = {{"c", BRONZE, 5000}},
					}),
					iensemble(215256, { -- Ensemble: Vestments of the Seven Sacred Seals (LFR)
						["cost"] = {{"c", BRONZE, 5000}},
					}),
				}),
				clWithoutLock(PALADIN, {
					iensemble(215330, { -- Ensemble: White Tiger Battlegear (LFR)
						["cost"] = {{"c", BRONZE, 5000}},
					}),
					iensemble(215334, { -- Ensemble: Battlegear of the Lightning Emperor (LFR)
						["cost"] = {{"c", BRONZE, 5000}},
					}),
					iensemble(215335, { -- Ensemble: Vestments of Winged Triumph (LFR)
						["cost"] = {{"c", BRONZE, 5000}},
					}),
				}),
				clWithoutLock(PRIEST, {
					iensemble(215199, { -- Ensemble: Guardian Serpent Regalia (LFR)
						["cost"] = {{"c", BRONZE, 5000}},
					}),
					iensemble(215201, { -- Ensemble: Regalia of the Exorcist (LFR)
						["cost"] = {{"c", BRONZE, 5000}},
					}),
					iensemble(215204, { -- Ensemble: Regalia of Ternion Glory (LFR)
						["cost"] = {{"c", BRONZE, 5000}},
					}),
				}),
				clWithoutLock(ROGUE, {
					iensemble(215261, { -- Ensemble: Battlegear of the Thousandfold Blades (LFR)
						["cost"] = {{"c", BRONZE, 5000}},
					}),
					iensemble(215264, { -- Ensemble: Nine-Tail Battlegear (LFR)
						["cost"] = {{"c", BRONZE, 5000}},
					}),
					iensemble(215267, { -- Ensemble: Barbed Assassin Battlegear (LFR)
						["cost"] = {{"c", BRONZE, 5000}},
					}),
				}),
				clWithoutLock(SHAMAN, {
					iensemble(215298, { -- Ensemble: Regalia of the Firebird (LFR)
						["cost"] = {{"c", BRONZE, 5000}},
					}),
					iensemble(215302, { -- Ensemble: Regalia of the Witch Doctor (LFR)
						["cost"] = {{"c", BRONZE, 5000}},
					}),
					iensemble(215304, { -- Ensemble: Regalia of Celestial Harmony (LFR)
						["cost"] = {{"c", BRONZE, 5000}},
					}),
				}),
				clWithoutLock(WARLOCK, {
					iensemble(215208, { -- Ensemble: Sha Skin Regalia (LFR)
						["cost"] = {{"c", BRONZE, 5000}},
					}),
					iensemble(215210, { -- Ensemble: Regalia of the Thousandfold Hells (LFR)
						["cost"] = {{"c", BRONZE, 5000}},
					}),
					iensemble(215214, { -- Ensemble: Regalia of the Horned Nightmare (LFR)
						["cost"] = {{"c", BRONZE, 5000}},
					}),
				}),
				clWithoutLock(WARRIOR, {
					iensemble(215339, { -- Ensemble: Battleplate of Resounding Rings (LFR)
						["cost"] = {{"c", BRONZE, 5000}},
					}),
					iensemble(215343, { -- Ensemble: Battleplate of the Last Mogu (LFR)
						["cost"] = {{"c", BRONZE, 5000}},
					}),
					iensemble(215346, { -- Ensemble: Battleplate of the Prehistoric Marauder (LFR)
						["cost"] = {{"c", BRONZE, 5000}},
					}),
				}),
			}),
			n(219030, {	-- Arturos <Dungeon Apparel>
				filter(CLOTH, {
					iensemble(215176, { -- Ensemble: Breezebinder's Vestments (Original)
						["cost"] = {{"c", BRONZE, 2500}},
					}),
					iensemble(215181, { -- Ensemble: Breezebinder's Vestments (Purple)
						["cost"] = {{"c", BRONZE, 2500}},
					}),
					iensemble(215182, { -- Ensemble: Breezebinder's Vestments (Red)
						["cost"] = {{"c", BRONZE, 2500}},
					}),
				}),
				filter(LEATHER, {
					iensemble(215221, { -- Ensemble: Mogubreaker Battlegear (Black)
						["cost"] = {{"c", BRONZE, 2500}},
					}),
					iensemble(215222, { -- Ensemble: Mogubreaker Battlegear (Original)
						["cost"] = {{"c", BRONZE, 2500}},
					}),
					iensemble(215223, { -- Ensemble: Mogubreaker Battlegear (Red)
						["cost"] = {{"c", BRONZE, 2500}},
					}),
					iensemble(215224, { -- Ensemble: Mogubreaker Battlegear (Yellow)
						["cost"] = {{"c", BRONZE, 2500}},
					}),
				}),
				filter(MAIL, {
					iensemble(215272, { -- Ensemble: Mogu Lord's Regalia (Black)
						["cost"] = {{"c", BRONZE, 2500}},
					}),
					iensemble(215273, { -- Ensemble: Mogu Lord's Regalia (Gold)
						["cost"] = {{"c", BRONZE, 2500}},
					}),
					iensemble(215274, { -- Ensemble: Mogu Lord's Regalia (Jade)
						["cost"] = {{"c", BRONZE, 2500}},
					}),
				}),
				filter(PLATE, {
					iensemble(215310, { -- Ensemble: Swarmbreaker's Battleplate (Dark)
						["cost"] = {{"c", BRONZE, 2500}},
					}),
					iensemble(215311, { -- Ensemble: Swarmbreaker's Battleplate (Light)
						["cost"] = {{"c", BRONZE, 2500}},
					}),
					iensemble(215312, { -- Ensemble: Swarmbreaker's Battleplate (Original)
						["cost"] = {{"c", BRONZE, 2500}},
					}),
				}),
			}),
			n(219028, {	-- Durus <Normal Raid Apparel>
				["crs"] = { 225269 }	-- Durus <Normal Raid Apparel>
			}),
			n(219028, {	-- Durus <Normal Raid Apparel>
				clWithoutLock(DEATHKNIGHT, {
					iensemble(215321, { -- Ensemble: Plate of the Lost Catacomb (Normal)
						["cost"] = {{"c", BRONZE, 5000}},
					}),
					iensemble(215325, { -- Ensemble: Battleplate of the All-Consuming Maw (Normal)
						["cost"] = {{"c", BRONZE, 5000}},
					}),
					iensemble(215326, { -- Ensemble: Battleplate of Cyclopean Dread (Normal)
						["cost"] = {{"c", BRONZE, 5000}},
					}),
				}),
				clWithoutLock(DRUID, {
					iensemble(215243, { -- Ensemble: Vestments of the Eternal Blossom (Normal)
						["cost"] = {{"c", BRONZE, 5000}},
					}),
					iensemble(215246, { -- Ensemble: Vestments of the Haunted Forest (Normal)
						["cost"] = {{"c", BRONZE, 5000}},
					}),
					iensemble(215249, { -- Ensemble: Vestments of the Shattered Vale (Normal)
						["cost"] = {{"c", BRONZE, 5000}},
					}),
				}),
				clWithoutLock(HUNTER, {
					iensemble(215288, { -- Ensemble: Yaungol Slayer Battlegear (Normal)
						["cost"] = {{"c", BRONZE, 5000}},
					}),
					iensemble(215292, { -- Ensemble: Battlegear of the Saurok Stalker (Normal)
						["cost"] = {{"c", BRONZE, 5000}},
					}),
					iensemble(215294, { -- Ensemble: Battlegear of the Unblinking Vigil (Normal)
						["cost"] = {{"c", BRONZE, 5000}},
					}),
				}),
				clWithoutLock(MAGE, {
					iensemble(215191, { -- Ensemble: Regalia of the Burning Scroll (Normal)
						["cost"] = {{"c", BRONZE, 5000}},
					}),
					iensemble(215194, { -- Ensemble: Regalia of the Chromatic Hydra (Normal)
						["cost"] = {{"c", BRONZE, 5000}},
					}),
					iensemble(215197, { -- Ensemble: Chronomancer Regalia (Normal)
						["cost"] = {{"c", BRONZE, 5000}},
					}),
				}),
				clWithoutLock(MONK, {
					iensemble(215251, { -- Ensemble: Vestments of the Red Crane (Normal)
						["cost"] = {{"c", BRONZE, 5000}},
					}),
					iensemble(215253, { -- Ensemble: Fire-Charm Vestments (Normal)
						["cost"] = {{"c", BRONZE, 5000}},
					}),
					iensemble(215258, { -- Ensemble: Vestments of the Seven Sacred Seals (Normal)
						["cost"] = {{"c", BRONZE, 5000}},
					}),
				}),
				clWithoutLock(PALADIN, {
					iensemble(215329, { -- Ensemble: White Tiger Battlegear (Normal)
						["cost"] = {{"c", BRONZE, 5000}},
					}),
					iensemble(215332, { -- Ensemble: Battlegear of the Lightning Emperor (Normal)
						["cost"] = {{"c", BRONZE, 5000}},
					}),
					iensemble(215337, { -- Ensemble: Vestments of Winged Triumph (Normal)
						["cost"] = {{"c", BRONZE, 5000}},
					}),
				}),
				clWithoutLock(PRIEST, {
					iensemble(215198, { -- Ensemble: Timeworn Malevolent Mooncloth Regalia (Normal)
						["cost"] = {{"c", BRONZE, 5000}},
					}),
					iensemble(215202, { -- Ensemble: Regalia of the Exorcist (Normal)
						["cost"] = {{"c", BRONZE, 5000}},
					}),
					iensemble(215206, { -- Ensemble: Regalia of Ternion Glory (Normal)
						["cost"] = {{"c", BRONZE, 5000}},
					}),
				}),
				clWithoutLock(ROGUE, {
					iensemble(215260, { -- Ensemble: Battlegear of the Thousandfold Blades (Normal)
						["cost"] = {{"c", BRONZE, 5000}},
					}),
					iensemble(215263, { -- Ensemble: Nine-Tail Battlegear (Normal)
						["cost"] = {{"c", BRONZE, 5000}},
					}),
					iensemble(215266, { -- Ensemble: Barbed Assassin Battlegear (Normal)
						["cost"] = {{"c", BRONZE, 5000}},
					}),
				}),
				clWithoutLock(SHAMAN, {
					iensemble(215297, { -- Ensemble: Regalia of the Firebird (Normal)
						["cost"] = {{"c", BRONZE, 5000}},
					}),
					iensemble(215300, { -- Ensemble: Regalia of the Witch Doctor (Normal)
						["cost"] = {{"c", BRONZE, 5000}},
					}),
					iensemble(215303, { -- Ensemble: Regalia of Celestial Harmony (Normal)
						["cost"] = {{"c", BRONZE, 5000}},
					}),
				}),
				clWithoutLock(WARLOCK, {
					iensemble(215209, { -- Ensemble: Sha Skin Regalia (Normal)
						["cost"] = {{"c", BRONZE, 5000}},
					}),
					iensemble(215212, { -- Ensemble: Regalia of the Thousandfold Hells (Normal)
						["cost"] = {{"c", BRONZE, 5000}},
					}),
					iensemble(215215, { -- Ensemble: Regalia of the Horned Nightmare (Normal)
						["cost"] = {{"c", BRONZE, 5000}},
					}),
				}),
				clWithoutLock(WARRIOR, {
					iensemble(215338, { -- Ensemble: Battleplate of Resounding Rings (Normal)
						["cost"] = {{"c", BRONZE, 5000}},
					}),
					iensemble(215341, { -- Ensemble: Battleplate of Resounding Rings (New Appearances)
						["cost"] = {{"c", BRONZE, 5000}},
					}),
					iensemble(215344, { -- Ensemble: Battleplate of the Last Mogu (Normal)
						["cost"] = {{"c", BRONZE, 5000}},
					}),
					iensemble(215347, { -- Ensemble: Battleplate of the Prehistoric Marauder (Normal)
						["cost"] = {{"c", BRONZE, 5000}},
					}),
				}),
			}),
			n(213661, {	-- Erus <Scrapper>
				["crs"] = { 217663 }	-- Durus <Normal Raid Apparel>
			}),
			n(213661, {	-- Erus <Scrapper>
				i(224076),	-- Timerunner's Bow
				i(224077),	-- Timerunner's Dagger
				i(224075),	-- Timerunner's Greatsword
				i(224079),	-- Timerunner's Mace
				i(224078),	-- Timerunner's Shield
				i(224081),	-- Timerunner's Staff
				i(224080),	-- Timerunner's Sword
			}),
			n(220895, {	-- Grandmaster Jakkus <Class Apparel>
				["crs"] = { 220618 },	-- Grandmaster Jakkus <Class Apparel>
			}),
			n(220895, {	-- Grandmaster Jakkus <Class Apparel>
				clWithoutLock(DEATHKNIGHT, {
					iensemble(217824, { -- Arsenal: Webbed Soulforged Weaponry
						["cost"] = {{"c", BRONZE, 3000}},
					}),
					iensemble(217837, { -- Ensemble: Webbed Soulforged Exoskeleton
						["cost"] = {{"c", BRONZE, 4000}},
					}),
				}),
				clWithoutLock(DEMONHUNTER, {
					iensemble(217828, { -- Arsenal: Aldrachi Blasphemer's Glaives
						["cost"] = {{"c", BRONZE, 3000}},
					}),
					iensemble(217842, { -- Ensemble: Aldrachi Blasphemer's Flames
						["cost"] = {{"c", BRONZE, 4000}},
					}),
				}),
				clWithoutLock(DRUID, {
					iensemble(217829, { -- Arsenal: Ela'lothen's Blessings of Rebirth
						["cost"] = {{"c", BRONZE, 3000}},
					}),
					iensemble(217843, { -- Ensemble: Ela'lothen's Vestment of Rebirth
						["cost"] = {{"c", BRONZE, 4000}},
					}),
				}),
				clWithoutLock(EVOKER, {
					iensemble(217821, { -- Arsenal: Treasure of the Gold Hoarder
						["cost"] = {{"c", BRONZE, 3000}},
					}),
					iensemble(217835, { -- Ensemble: Scales of the Gold Hoarder
						["cost"] = {{"c", BRONZE, 4000}},
					}),
				}),
				clWithoutLock(HUNTER, {
					iensemble(217820, { -- Arsenal: Dreadsquall Hunter's Preference
						["cost"] = {{"c", BRONZE, 3000}},
					}),
					iensemble(217834, {	--  Ensemble: Dreadsquall Hunter's Camouflage
						["cost"] = {{"c", BRONZE, 4000}},
					}),
				}),
				clWithoutLock(MAGE, {
					iensemble(217823, { -- Arsenal: Sin'dorei Magister's Enchantment
						["cost"] = {{"c", BRONZE, 3000}},
					}),
					iensemble(217836, { -- Ensemble: Sin'dorei Magister's Regalia
						["cost"] = {{"c", BRONZE, 4000}},
					}),
				}),
				clWithoutLock(MONK, {
					iensemble(217827, { -- Arsenal: Shado-Pan Watcher Arsenal
						["cost"] = {{"c", BRONZE, 3000}},
					}),
					iensemble(217841, { -- Ensemble: Shado-Pan Watcher Guise
						["cost"] = {{"c", BRONZE, 4000}},
					}),
				}),
				clWithoutLock(PALADIN, {
					iensemble(217832, { -- Arsenal: Armaments of the Holy Avenger
						["cost"] = {{"c", BRONZE, 3000}},
					}),
					iensemble(217846, { -- Ensemble: Plate of the Holy Avenger
						["cost"] = {{"c", BRONZE, 4000}},
					}),
				}),
				clWithoutLock(PRIEST, {
					iensemble(217831, { -- Arsenal: Secrets of the Abyssal Cult
						["cost"] = {{"c", BRONZE, 3000}},
					}),
					iensemble(217845, { -- Ensemble: Silks of the Abyssal Cult
						["cost"] = {{"c", BRONZE, 4000}},
					}),
				}),
				clWithoutLock(ROGUE, {
					iensemble(217830, { -- Arsenal: Igneous Onyx Blades
						["cost"] = {{"c", BRONZE, 3000}},
					}),
					iensemble(217844, { -- Ensemble: Igneous Onyx Uniform
						["cost"] = {{"c", BRONZE, 4000}},
					}),
				}),
				clWithoutLock(SHAMAN, {
					iensemble(217819, { -- Arsenal: Tools of Krag'wa's Disciple
						["cost"] = {{"c", BRONZE, 3000}},
					}),
					iensemble(217833, { -- Ensemble: Imminence of Krag'wa's Disciple
						["cost"] = {{"c", BRONZE, 4000}},
					}),
				}),
				clWithoutLock(WARLOCK, {
					iensemble(217826, { -- Arsenal: Instruments of Temptation's Call
						["cost"] = {{"c", BRONZE, 3000}},
					}),
					iensemble(217839, { -- Ensemble: Jewels of Temptation's Call
						["cost"] = {{"c", BRONZE, 4000}},
					}),
				}),
				clWithoutLock(WARRIOR, {
					iensemble(217825, { -- Arsenal: Fanatical Champion's Aggression
						["cost"] = {{"c", BRONZE, 3000}},
					}),
					iensemble(217838, { -- Ensemble: Fanatical Champion's Trophies
						["cost"] = {{"c", BRONZE, 4000}},
					}),
				}),
			}),
			n(219032, {	-- Hemet Nesingwary XVII <Beastmaster>
				["crs"] = { 219331 },	-- Hemet Nesingwary XVII <Beastmaster>
			}),
			n(219032, {	-- Hemet Nesingwary XVII <Beastmaster>
				i(218111, {	-- Amber Pterrordax (MOUNT!)
					["cost"] = {{"c", BRONZE, 4400}},
				}),
				i(87786, {	-- Black Riding Yak (MOUNT!)
					["cost"] = {{"c", BRONZE, 2200}},
				}),
				i(213623, {	-- Bloody Skyscreamer (MOUNT!)
					["cost"] = {{"c", BRONZE, 4400}},
				}),
				i(213624, {	-- Cobalt Juggernaut (MOUNT!)
					["cost"] = {{"c", BRONZE, 4400}},
				}),
				i(213598, {	-- Dashing Windsteed (MOUNT!)
					["cost"] = {{"c", BRONZE, 6600}},
				}),
				i(213596, {	-- Daystorm Windsteed (MOUNT!)
					["cost"] = {{"c", BRONZE, 6600}},
				}),
				i(213595, {	-- Feathered Windsurfer (MOUNT!)
					["cost"] = {{"c", BRONZE, 2200}},
				}),
				i(213625, {	-- Fel Iron Juggernaut (MOUNT!)
					["cost"] = {{"c", BRONZE, 4400}},
				}),
				i(213597, {	-- Forest Windsteed (MOUNT!)
					["cost"] = {{"c", BRONZE, 6600}},
				}),
				i(213602, {	-- Gilded Riding Crane (MOUNT!)
					["cost"] = {{"c", BRONZE, 2200}},
				}),
				i(213576, {	-- Golden Discus (MOUNT!)
					["cost"] = {{"c", BRONZE, 2200}},
				}),
				i(213601, {	-- Guardian Quilen (MOUNT!)
					["cost"] = {{"c", BRONZE, 6600}},
				}),
				i(213621, {	-- Jade Pterrordax (MOUNT!)
					["cost"] = {{"c", BRONZE, 4400}},
				}),
				i(87784, {	-- Jungle Riding Crane (MOUNT!)
					["cost"] = {{"c", BRONZE, 2200}},
				}),
				i(84753, {	-- Kafa Yak (MOUNT!)
					["cost"] = {{"c", BRONZE, 2200}},
				}),
				i(213609, {	-- Little Red Riding Goat (MOUNT!)
					["cost"] = {{"c", BRONZE, 2200}},
				}),
				i(213607, {	-- Luxurious Riding Crane (MOUNT!)
					["cost"] = {{"c", BRONZE, 2200}},
				}),
				i(213600, {	-- Marble Quilen (MOUNT!)
					["cost"] = {{"c", BRONZE, 6600}},
				}),
				i(87787, {	-- Modest Expedition Yak (MOUNT!)
					["cost"] = {{"c", BRONZE, 2200}},
				}),
				i(213584, {	-- Mogu Hazeblazer (MOUNT!)
					["cost"] = {{"c", BRONZE, 2200}},
				}),
				i(213622, {	-- Night Pterrorwing (MOUNT!)
					["cost"] = {{"c", BRONZE, 4400}},
				}),
				i(213603, {	-- Pale Riding Crane (MOUNT!)
					["cost"] = {{"c", BRONZE, 2200}},
				}),
				i(213627, {	-- Palehide Mushan Beast (MOUNT!)
					["cost"] = {{"c", BRONZE, 2200}},
				}),
				i(213626, {	-- Purple Shado-Pan Riding Tiger (MOUNT!)
					["cost"] = {{"c", BRONZE, 4400}},
				}),
				i(213628, {	-- Riverwalker Mushan (MOUNT!)
					["cost"] = {{"c", BRONZE, 2200}},
				}),
				i(213605, {	-- Rose Riding Crane (MOUNT!)
					["cost"] = {{"c", BRONZE, 2200}},
				}),
				i(213606, {	-- Silver Riding Crane (MOUNT!)
					["cost"] = {{"c", BRONZE, 2200}},
				}),
				i(213582, {	-- Sky Surfer (MOUNT!)
					["cost"] = {{"c", BRONZE, 2200}},
				}),
				i(213608, {	-- Snowy Riding Goat (MOUNT!)
					["cost"] = {{"c", BRONZE, 2200}},
				}),
				i(213604, {	-- Tropical Riding Crane (MOUNT!)
					["cost"] = {{"c", BRONZE, 2200}},
				}),

				------ Old Mounts ------
				i(94230, {	-- Amber Primordial Direhorn (MOUNT!)
					["cost"] = {{"c", BRONZE, 18700}},
				}),
				i(87777, {	-- Astral Cloud Serpent (MOUNT!)
					["cost"] = {{"c", BRONZE, 18700}},
				}),
				i(95059, {	-- Clutch of Ji-Kun (MOUNT!)
					["cost"] = {{"c", BRONZE, 38500}},
				}),
				i(94228, {	-- Cobalt Primordial Direhorn (MOUNT!)
					["cost"] = {{"c", BRONZE, 38500}},
				}),
				i(87771, {	-- Heavenly Onyx Cloud Serpent (MOUNT!)
					["cost"] = {{"c", BRONZE, 38500}},
				}),
				i(94231, {	-- Jade Primordial Direhorn (MOUNT!)
					["cost"] = {{"c", BRONZE, 18700}},
				}),
				i(104253, {	-- Kor'kron Juggernaut (MOUNT!)
					["cost"] = {{"c", BRONZE, 38500}},
				}),
				i(224374, {	-- Reins of the Thundering Ruby Cloud Serpent (MOUNT!)
					["cost"] = {{"c", BRONZE, 38500}},
				}),
				i(94229, {	-- Slate Primordial Direhorn (MOUNT!)
					["cost"] = {{"c", BRONZE, 18700}},
				}),
				i(89783, {	-- Son of Galleon (MOUNT!)
					["cost"] = {{"c", BRONZE, 38500}},
				}),
				i(93666, {	-- Spawn of Horridon (MOUNT!)
					["cost"] = {{"c", BRONZE, 38500}},
				}),
				i(95057, {	-- Thundering Cobalt Cloud Serpent (MOUNT!)
					["cost"] = {{"c", BRONZE, 38500}},
				}),
				i(104269, {	-- Thundering Onyx Cloud Serpent (MOUNT!)
					["cost"] = {{"c", BRONZE, 38500}},
				}),
			}),
			n(219013, {	-- Horos <Rare Collections>
				["crs"] = { 217051 },	-- Horos <Rare Collections>
			}),
			n(219013, {	-- Horos <Rare Collections>
				------ Unobtainables ------
				i(89205, {	-- Mini Mana Bomb Toy (TOY!)
					["cost"] = {{"c", BRONZE, 500}},
					["races"] = HORDE_ONLY,
				}),
				i(89196, {	-- Theramore Tabard
					["cost"] = {{"c", BRONZE, 500}},
					["races"] = ALLIANCE_ONLY,
				}),

				------ Still Obtainable ------
				i(86589, {	-- Ai-Li's Skymirror
					["cost"] = {{"c", BRONZE, 4950}},
				}),
				i(86582, {	-- Aqua Jewel
					["cost"] = {{"c", BRONZE, 7700}},
				}),
				i(86565, {	-- Battle Horn
					["cost"] = {{"c", BRONZE, 3850}},
				}),
				i(104302, {	-- Blackflame Daggers
					["cost"] = {{"c", BRONZE, 38500}},
				}),
				i(134023, {	-- Bottled Tornado
					["cost"] = {{"c", BRONZE, 3850}},
				}),
				i(86575, {	-- Chalice of Secrets
					["cost"] = {{"c", BRONZE, 3850}},
				}),
				i(86590, {	-- Essence of the Breeze
					["cost"] = {{"c", BRONZE, 3850}},
				}),
				i(104309, {	-- Eternal Kiln
					["cost"] = {{"c", BRONZE, 50000}},
				}),
				i(86578, {	-- Eternal Warrior's Sigil
					["cost"] = {{"c", BRONZE, 4950}},
				}),
				i(86581, {	-- Farwater Conch
					["cost"] = {{"c", BRONZE, 4950}},
				}),
				i(98136, {	-- Gastropod Shell
					["cost"] = {{"c", BRONZE, 50000}},
				}),
				i(86594, {	-- Helpful Wikky's Whistle
					["cost"] = {{"c", BRONZE, 3850}},
				}),
				i(86593, {	-- Hozen Beach Ball
					["cost"] = {{"c", BRONZE, 4950}},
				}),
				i(86571, {	-- Kang's Bindstone
					["cost"] = {{"c", BRONZE, 3850}},
				}),
				i(86568, {	-- Mr. Smite's Brass Compass
					["cost"] = {{"c", BRONZE, 7700}},
				}),
				i(104262, {	-- Odd Polished Stone
					["cost"] = {{"c", BRONZE, 2200}},
				}),
				i(86588, {	-- Pandaren Firework Launcher
					["cost"] = {{"c", BRONZE, 7700}},
				}),
				i(86586, {	-- Panflute of Pandaria
					["cost"] = {{"c", BRONZE, 4950}},
				}),
				i(86583, {	-- Salyin Battle Banner
					["cost"] = {{"c", BRONZE, 4950}},
				}),
				i(86573, {	-- Shard of Archstone
					["cost"] = {{"c", BRONZE, 4950}},
				}),
				i(104331, {	-- Warning Sign
					["cost"] = {{"c", BRONZE, 38500}},
				}),
			}),
			n(219025, {	-- Larah Treebender <World Apparel>
				iensemble(215219, { -- Ensemble: Guise of the Shado-Pan (Dark)
					["cost"] = {{"c", BRONZE, 2500}},
					["description"] = "All appearances are MoP: Remix exclusive.",
				}),
				iensemble(215220, { -- Ensemble: Guise of the Shado-Pan (Original)
					["cost"] = {{"c", BRONZE, 2500}},
				}),
				iensemble(215275, { -- Ensemble: Kor'kron Shaman Vestments (Cool)
					["cost"] = {{"c", BRONZE, 2500}},
					["description"] = "All appearances are MoP: Remix exclusive.",
				}),
				iensemble(215276, { -- Ensemble: Kor'kron Shaman Vestments (Warm)
					["cost"] = {{"c", BRONZE, 2500}},
					["description"] = "All appearances are MoP: Remix exclusive.",
				}),
				iensemble(215277, { -- Ensemble: Kor'kron Shaman Vestments (Yellow)
					["cost"] = {{"c", BRONZE, 2500}},
				}),
				iensemble(215352, { -- Ensemble: Robes of Quiet Reflection (Brown)
					["cost"] = {{"c", BRONZE, 1250}},
				}),
				iensemble(215353, { -- Ensemble: Robes of Quiet Reflection (Green)
					["cost"] = {{"c", BRONZE, 1250}},
				}),
				iensemble(215354, { -- Ensemble: Robes of Quiet Reflection (Red)
					["cost"] = {{"c", BRONZE, 1250}},
					["description"] = "All appearances are MoP: Remix exclusive.",
				}),
				iensemble(215355, { -- Ensemble: Robes of Quiet Reflection (Yellow)
					["cost"] = {{"c", BRONZE, 1250}},
				}),
				iensemble(215238, { -- Ensemble: Tian Monastery Clothing (Blue)
					["cost"] = {{"c", BRONZE, 1250}},
				}),
				iensemble(215239, { -- Ensemble: Tian Monastery Clothing (Red)
					["cost"] = {{"c", BRONZE, 1250}},
				}),
				iensemble(215240, { -- Ensemble: Tian Monastery Clothing (White)
					["cost"] = {{"c", BRONZE, 1250}},
				}),
				iensemble(215285, { -- Ensemble: Sun Pearl Clothing (Green)
					["cost"] = {{"c", BRONZE, 1250}},
				}),
				iensemble(215286, { -- Ensemble: Sun Pearl Clothing (Red)
					["cost"] = {{"c", BRONZE, 1250}},
				}),
				iensemble(215287, { -- Ensemble: Sun Pearl Clothing (Yellow)
					["cost"] = {{"c", BRONZE, 1250}},
				}),
				iensemble(215356, { -- Ensemble: Vestments of Serenity (Blue)
					["cost"] = {{"c", BRONZE, 1250}},
				}),
				iensemble(215357, { -- Ensemble: Vestments of Serenity (Green)
					["cost"] = {{"c", BRONZE, 1250}},
				}),
				iensemble(215358, { -- Ensemble: Vestments of Serenity (White)
					["cost"] = {{"c", BRONZE, 1250}},
				}),
				i(226127, {	-- Recruit's Shirt (White)
					["cost"] = {{"c", BRONZE, 5}},
				}),
				filter(CLOTH, {
					iensemble(215183, { -- Ensemble: Spirit-Waker's Vestments (Blue)
						["cost"] = {{"c", BRONZE, 750}},
					}),
					iensemble(215184, { -- Ensemble: Spirit-Waker's Vestments (Green)
						["cost"] = {{"c", BRONZE, 750}},
					}),
					iensemble(215185, { -- Ensemble: Spirit-Waker's Vestments (Red)
						["cost"] = {{"c", BRONZE, 750}},
					}),
					iensemble(215186, { -- Ensemble: Mistwalker's Vestments (Blue)
						["cost"] = {{"c", BRONZE, 750}},
					}),
					iensemble(215187, { -- Ensemble: Mistwalker's Vestments (Original)
						["cost"] = {{"c", BRONZE, 750}},
					}),
					iensemble(215188, { -- Ensemble: Mistwalker's Vestments (White)
						["cost"] = {{"c", BRONZE, 750}},
					}),
					iensemble(215216, { -- Ensemble: Vestments of the Eternal Dynasty (Black)
						["cost"] = {{"c", BRONZE, 2000}},
					}),
					iensemble(215217, { -- Ensemble: Vestments of the Eternal Dynasty (Blue)
						["cost"] = {{"c", BRONZE, 2000}},
					}),
					iensemble(215218, { -- Ensemble: Vestments of the Eternal Dynasty (Yellow)
						["cost"] = {{"c", BRONZE, 2000}},
					}),
				}),
				filter(LEATHER, {
					iensemble(215225, { -- Ensemble: Thunderpaw Battlegear (Dark)
						["cost"] = {{"c", BRONZE, 750}},
					}),
					iensemble(215226, { -- Ensemble: Thunderpaw Battlegear (Light)
						["cost"] = {{"c", BRONZE, 750}},
					}),
					iensemble(215227, { -- Ensemble: Thunderpaw Battlegear (Original)
						["cost"] = {{"c", BRONZE, 750}},
					}),
					iensemble(215228, { -- Ensemble: Thunderpaw Battlegear (Red)
						["cost"] = {{"c", BRONZE, 750}},
					}),
					iensemble(215229, { -- Ensemble: Mistveil Leathers (Black)
						["cost"] = {{"c", BRONZE, 750}},
					}),
					iensemble(215230, { -- Ensemble: Mistveil Leathers (Brown)
						["cost"] = {{"c", BRONZE, 750}},
					}),
					iensemble(215231, { -- Ensemble: Mistveil Leathers (Crimson)
						["cost"] = {{"c", BRONZE, 750}},
					}),
					iensemble(215232, { -- Ensemble: Mistveil Leathers (Indigo)
						["cost"] = {{"c", BRONZE, 750}},
					}),
					iensemble(215269, { -- Ensemble: Snowdrift Battlegear (Blue)
						["cost"] = {{"c", BRONZE, 2000}},
					}),
					iensemble(215270, { -- Ensemble: Snowdrift Battlegear (Brown)
						["cost"] = {{"c", BRONZE, 2000}},
					}),
					iensemble(215271, { -- Ensemble: Snowdrift Battlegear (Red)
						["cost"] = {{"c", BRONZE, 2000}},
					}),
				}),
				filter(MAIL, {
					iensemble(215282, { -- Ensemble: Dawnwatcher's Scale Armor (Blue)
						["cost"] = {{"c", BRONZE, 750}},
					}),
					iensemble(215283, { -- Ensemble: Dawnwatcher's Scale Armor (Purple)
						["cost"] = {{"c", BRONZE, 750}},
					}),
					iensemble(215284, { -- Ensemble: Dawnwatcher's Scale Armor (Red)
						["cost"] = {{"c", BRONZE, 750}},
					}),
					iensemble(215306, { -- Ensemble: Jade Guardian's Regalia (Blue)
						["cost"] = {{"c", BRONZE, 2000}},
					}),
					iensemble(215307, { -- Ensemble: Jade Guardian's Regalia (Brown)
						["cost"] = {{"c", BRONZE, 2000}},
					}),
					iensemble(215308, { -- Ensemble: Jade Guardian's Regalia (Red)
						["cost"] = {{"c", BRONZE, 2000}},
					}),
					iensemble(215309, { -- Ensemble: Jade Guardian's Regalia (Yellow)
						["cost"] = {{"c", BRONZE, 2000}},
					}),
					iensemble(215278, { -- Ensemble: Trailseeker's Laminar Armor (Black)
						["cost"] = {{"c", BRONZE, 750}},
					}),
					iensemble(215279, { -- Ensemble: Trailseeker's Laminar Armor (Gold)
						["cost"] = {{"c", BRONZE, 750}},
					}),
					iensemble(215280, { -- Ensemble: Trailseeker's Laminar Armor (Green)
						["cost"] = {{"c", BRONZE, 750}},
					}),
					iensemble(215281, { -- Ensemble: Trailseeker's Laminar Armor (White)
						["cost"] = {{"c", BRONZE, 750}},
						-- currently inaccurate in Wago, but hotfixed from Blizzard
						-- learning either 215279 or this ensemble seems to grant both 3407 & 3409
						["tmogSetID"] = 3409,
					}),
				}),
				filter(PLATE, {
					iensemble(215348, { -- Ensemble: Gatecrasher's Battleplate (Black)
						["cost"] = {{"c", BRONZE, 2000}},
					}),
					iensemble(215349, { -- Ensemble: Gatecrasher's Battleplate (Blue)
						["cost"] = {{"c", BRONZE, 2000}},
					}),
					iensemble(215350, { -- Ensemble: Gatecrasher's Battleplate (Green)
						["cost"] = {{"c", BRONZE, 2000}},
					}),
					iensemble(215351, { -- Ensemble: Gatecrasher's Battleplate (Red)
						["cost"] = {{"c", BRONZE, 2000}},
					}),
					iensemble(215316, { -- Ensemble: Shan'ze Warplate (Green)
						["cost"] = {{"c", BRONZE, 750}},
					}),
					iensemble(215317, { -- Ensemble: Shan'ze Warplate (Purple)
						["cost"] = {{"c", BRONZE, 750}},
					}),
					iensemble(215318, { -- Ensemble: Shan'ze Warplate (Red)
						["cost"] = {{"c", BRONZE, 750}},
					}),
					iensemble(215319, { -- Ensemble: Shan'ze Warplate (Yellow)
						["cost"] = {{"c", BRONZE, 750}},
					}),
					iensemble(215313, { -- Ensemble: Spiritguard's Warplate (Blue)
						["cost"] = {{"c", BRONZE, 750}},
					}),
					iensemble(215314, { -- Ensemble: Spiritguard's Warplate (Gold)
						["cost"] = {{"c", BRONZE, 750}},
					}),
					iensemble(215315, { -- Ensemble: Spiritguard's Warplate (Silver)
						["cost"] = {{"c", BRONZE, 750}},
					}),
				}),
			}),
			n(219024, {	-- Lidamorrutu <Gem Procurement>
				i(223904, {	-- Asynchronized Cogwheel Gem
					["cost"] = {{"c", BRONZE, 400}},
				}),
				i(223905, {	-- Asynchronized Meta Gem
					["cost"] = {{"c", BRONZE, 500}},
				}),
				i(223907, {	-- Asynchronized Prismatic Gem
					["cost"] = {{"c", BRONZE, 200}},
				}),
				i(223906, {	-- Asynchronized Tinker Gem
					["cost"] = {{"c", BRONZE, 300}},
				}),
			}),
			n(219033, {	-- Nostwin <Snacks and Scrolls>
				i(217925, {	-- Bottle of Bees
					["cost"] = {{"c", BRONZE, 20}},
				}),
				i(44922, {	-- Glyph of Stars
					["cost"] = {{"c", BRONZE, 5}},
				}),
				i(217930, {	-- Nostwin's Voucher
					["cost"] = {{"c", BRONZE, 20}},
				}),
				i(217901, {	-- Timeless Drums
					["cost"] = {{"c", BRONZE, 20}},
				}),
				i(217608, {	-- Timeless Scroll of Battle Shout
					["cost"] = {{"c", BRONZE, 10}},
				}),
				i(217730, {	-- Timeless Scroll of Chaos
					["cost"] = {{"c", BRONZE, 10}},
				}),
				i(217929, {	-- Timeless Scroll of Cleansing
					["cost"] = {{"c", BRONZE, 20}},
				}),
				i(217606, {	-- Timeless Scroll of Fortitude
					["cost"] = {{"c", BRONZE, 10}},
				}),
				i(217605, {	-- Timeless Scroll of Intellect
					["cost"] = {{"c", BRONZE, 10}},
				}),
				i(217731, {	-- Timeless Scroll of Mystic Power
					["cost"] = {{"c", BRONZE, 10}},
				}),
				i(217928, {	-- Timeless Scroll of Resurrection
					["cost"] = {{"c", BRONZE, 20}},
				}),
				i(217956, {	-- Timeless Scroll of Summoning
					["cost"] = {{"c", BRONZE, 20}},
				}),
				i(217607, {	-- Timeless Scroll of the Wild
					["cost"] = {{"c", BRONZE, 10}},
				}),
				i(211254, {	-- Timerunner's Bandage
					["cost"] = {{"c", BRONZE, 20}},
				}),
				i(217905, {	-- Timerunner's Draught of Health
					["cost"] = {{"c", BRONZE, 20}},
				}),
				i(217904, {	-- Timerunner's Draught of Power
					["cost"] = {{"c", BRONZE, 20}},
				}),
				i(217902, {	-- Timerunner's Vial
					["cost"] = {{"c", BRONZE, 20}},
				}),
			}),
			n(219027, {	-- Pythagorus <Heroic and Mythic Raid Apparel>
				-- Heirlooms
				i(104409, {	-- Hellscream's Barrier
					["cost"] = {
						{ "c", BRONZE, 8000 },
						{ "i", BONES_OF_MANNOROTH, 2 }
					},
				}),
				i(104404, {	-- Hellscream's Cleaver
					["cost"] = {
						{ "c", BRONZE, 8000 },
						{ "i", BONES_OF_MANNOROTH, 2 }
					},
				}),
				i(104405, {	-- Hellscream's Decapitator
					["cost"] = {
						{ "c", BRONZE, 8000 },
						{ "i", BONES_OF_MANNOROTH, 2 }
					},
				}),
				i(104401, {	-- Hellscream's Doomblade
					["cost"] = {
						{ "c", BRONZE, 8000 },
						{ "i", BONES_OF_MANNOROTH, 2 }
					},
				}),
				i(104403, {	-- Hellscream's Pig Sticker
					["cost"] = {
						{ "c", BRONZE, 8000 },
						{ "i", BONES_OF_MANNOROTH, 2 }
					},
				}),
				i(104400, {	-- Hellscream's Razor
					["cost"] = {
						{ "c", BRONZE, 8000 },
						{ "i", BONES_OF_MANNOROTH, 2 }
					},
				}),
				i(104407, {	-- Hellscream's Shield Wall
					["cost"] = {
						{ "c", BRONZE, 8000 },
						{ "i", BONES_OF_MANNOROTH, 2 }
					},
				}),
				i(104408, {	-- Hellscream's Tome of Destruction
					["cost"] = {
						{ "c", BRONZE, 8000 },
						{ "i", BONES_OF_MANNOROTH, 2 }
					},
				}),
				i(104406, {	-- Hellscream's War Staff
					["cost"] = {
						{ "c", BRONZE, 8000 },
						{ "i", BONES_OF_MANNOROTH, 2 }
					},
				}),
				i(104399, {	-- Hellscream's Warbow
					["cost"] = {
						{ "c", BRONZE, 8000 },
						{ "i", BONES_OF_MANNOROTH, 2 }
					},
				}),
				i(104402, {	-- Hellscream's Warmace
					["cost"] = {
						{ "c", BRONZE, 8000 },
						{ "i", BONES_OF_MANNOROTH, 2 }
					},
				}),
				-- Cosmetics
				i(224459, {	-- Tusks of Mannoroth
					["cost"] = {
						{ "c", BRONZE, 38500 },
						{ "i", BONES_OF_MANNOROTH, 20 }
					},
					["timeline"] = { "removed 10.2.7.55142" },
				}),
				iensemble(227550, {	-- Tusks of Mannoroth
					["cost"] = {
						{ "c", BRONZE, 38500 },
						{ "i", BONES_OF_MANNOROTH, 20 }
					},
					["timeline"] = { "added 10.2.7.55142", REMOVED_MOP_REMIX_END },
				}),
				-- Classes
				clWithoutLock(DEATHKNIGHT, {
					iensemble(215322, { -- Ensemble: Plate of the Lost Catacomb (Heroic)
						["cost"] = {{"c", BRONZE, 5000}},
					}),
					iensemble(215323, { -- Ensemble: Battleplate of the All-Consuming Maw (Heroic)
						["cost"] = {{"c", BRONZE, 5000}},
					}),
					iensemble(215328, { -- Ensemble: Battleplate of Cyclopean Dread (Mythic)
						["cost"] = {{"c", BRONZE, 5000}},
					}),
				}),
				clWithoutLock(DRUID, {
					iensemble(215242, { -- Ensemble: Vestments of the Eternal Blossom (Heroic)
						["cost"] = {{"c", BRONZE, 5000}},
					}),
					iensemble(215244, { -- Ensemble: Vestments of the Haunted Forest (Heroic)
						["cost"] = {{"c", BRONZE, 5000}},
					}),
					iensemble(215248, { -- Ensemble: Vestments of the Shattered Vale (Mythic)
						["cost"] = {{"c", BRONZE, 5000}},
					}),
				}),
				clWithoutLock(HUNTER, {
					iensemble(215290, { -- Ensemble: Yaungol Slayer Battlegear (Heroic)
						["cost"] = {{"c", BRONZE, 5000}},
					}),
					iensemble(215291, { -- Ensemble: Battlegear of the Saurok Stalker (Heroic)
						["cost"] = {{"c", BRONZE, 5000}},
					}),
					iensemble(215296, { -- Ensemble: Battlegear of the Unblinking Vigil (Mythic)
						["cost"] = {{"c", BRONZE, 5000}},
					}),
				}),
				clWithoutLock(MAGE, {
					iensemble(215190, { -- Ensemble: Regalia of the Burning Scroll (Heroic)
						["cost"] = {{"c", BRONZE, 5000}},
					}),
					iensemble(215192, { -- Ensemble: Regalia of the Chromatic Hydra (Heroic)
						["cost"] = {{"c", BRONZE, 5000}},
					}),
					iensemble(215195, { -- Ensemble: Chronomancer Regalia (Mythic)
						["cost"] = {{"c", BRONZE, 5000}},
					}),
				}),
				clWithoutLock(MONK, {
					iensemble(215250, { -- Ensemble: Vestments of the Red Crane (Heroic)
						["cost"] = {{"c", BRONZE, 5000}},
					}),
					iensemble(215254, { -- Ensemble: Fire-Charm Vestments (Heroic)
						["cost"] = {{"c", BRONZE, 5000}},
					}),
					iensemble(215259, { -- Ensemble: Vestments of the Seven Sacred Seals (Mythic)
						["cost"] = {{"c", BRONZE, 5000}},
					}),
				}),
				clWithoutLock(PALADIN, {
					iensemble(215331, { -- Ensemble: White Tiger Battlegear (Heroic)
						["cost"] = {{"c", BRONZE, 5000}},
					}),
					iensemble(215333, { -- Ensemble: Battlegear of the Lightning Emperor (Heroic)
						["cost"] = {{"c", BRONZE, 5000}},
					}),
					iensemble(215336, { -- Ensemble: Vestments of Winged Triumph (Mythic)
						["cost"] = {{"c", BRONZE, 5000}},
					}),
				}),
				clWithoutLock(PRIEST, {
					iensemble(215200, { -- Ensemble: Timeworn Dreadful Mooncloth Regalia (Heroic)
						["cost"] = {{"c", BRONZE, 5000}},
					}),
					iensemble(215203, { -- Ensemble: Regalia of the Exorcist (Heroic)
						["cost"] = {{"c", BRONZE, 5000}},
					}),
					iensemble(215205, { -- Ensemble: Regalia of Ternion Glory (Mythic)
						["cost"] = {{"c", BRONZE, 5000}},
					}),
				}),
				clWithoutLock(ROGUE, {
					iensemble(215262, { -- Ensemble: Battlegear of the Thousandfold Blades (Heroic)
						["cost"] = {{"c", BRONZE, 5000}},
					}),
					iensemble(215265, { -- Ensemble: Nine-Tail Battlegear (Heroic)
						["cost"] = {{"c", BRONZE, 5000}},
					}),
					iensemble(215268, { -- Ensemble: Barbed Assassin Battlegear (Mythic)
						["cost"] = {{"c", BRONZE, 5000}},
					}),
				}),
				clWithoutLock(SHAMAN, {
					iensemble(215299, { -- Ensemble: Regalia of the Firebird (Heroic)
						["cost"] = {{"c", BRONZE, 5000}},
					}),
					iensemble(215301, { -- Ensemble: Regalia of the Witch Doctor (Heroic)
						["cost"] = {{"c", BRONZE, 5000}},
					}),
					iensemble(215305, { -- Ensemble: Regalia of Celestial Harmony (Mythic)
						["cost"] = {{"c", BRONZE, 5000}},
					}),
				}),
				clWithoutLock(WARLOCK, {
					iensemble(215207, { -- Ensemble: Sha Skin Regalia (Heroic)
						["cost"] = {{"c", BRONZE, 5000}},
					}),
					iensemble(215211, { -- Ensemble: Regalia of the Thousandfold Hells (Heroic)
						["cost"] = {{"c", BRONZE, 5000}},
					}),
					iensemble(215213, { -- Ensemble: Regalia of the Horned Nightmare (Mythic)
						["cost"] = {{"c", BRONZE, 5000}},
					}),
				}),
				clWithoutLock(WARRIOR, {
					iensemble(215340, { -- Ensemble: Battleplate of Resounding Rings (Heroic)
						["cost"] = {{"c", BRONZE, 5000}},
					}),
					iensemble(215342, { -- Ensemble: Battleplate of the Last Mogu (Heroic)
						["cost"] = {{"c", BRONZE, 5000}},
					}),
					iensemble(215345, { -- Ensemble: Battleplate of the Prehistoric Marauder (Mythic)
						["cost"] = {{"c", BRONZE, 5000}},
					}),
				}),
			}),
			n(QUESTS, sharedData({
				["isDaily"] = true,
				["g"] = {
					i(223908),	-- Minor Bronze Cache
				},
			}, {
				q(80448, {	-- A Fresh Scene
					["provider"] = { "n", 219025 },	-- Larah Treebender <World Apparel>
				}),
				q(80446, {	-- Looking for Group
					["provider"] = { "n", 219030 },	-- Arturos <Dungeon Apparel>
				}),
				q(80447, {	-- Looking for More
					["provider"] = { "n", 219027 },	-- Pythagorus <Heroic and Mythic Raid Apparel>
				}),
			})),
		},
	}),
}))));