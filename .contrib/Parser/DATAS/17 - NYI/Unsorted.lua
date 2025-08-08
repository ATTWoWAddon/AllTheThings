-----------------------------------
--     NOT SORTED YET MODULE     --
-----------------------------------
-- Everything in this file hasn't been sorted yet.
root(ROOTS.Unsorted, {
	expansion(EXPANSION.TWW, {
		expansion(EXPANSION.TWW, patch(2,0), bubbleDownSelf({ ["timeline"] = { ADDED_11_2_0 } }, {
			n(ARMOR, {
				-- Unknown (PvP Appearance?)
				i(237997),	-- Ethereal Handchopper
				i(237998),	-- Void Assassin's Ritual Blade
				i(237999),	-- Battered Matter Destabilizer
				i(238000),	-- Mana Manipulator
				i(238001),	-- Rod of the Unwoven
				i(238002),	-- Wanderer's Projectile Accelerator
				i(238003),	-- Wyrmhunter's Skewer
				i(238004),	-- Exile's Beacon
				i(238005),	-- Void-Steeped Falchion
				i(238006),	-- Soulbearer's Censer
				i(238008),	-- Wastelander's Folly

				-- Epic wep
				i(246071),	-- Mana-Seamster's Arcane-Needle
				-- Delve Armor?
				i(246940),	-- Manaforged Aethercell
				i(246941),	-- Symbiotic Ethergauze
				i(246947),	-- Twisted Mana Sprite
				-- Mechagon Junkyard?
				i(241239),	-- Epaulets of Arcing Power
				i(241240),	-- Type II Bomber Jacket
			}),
			filter(BATTLE_PETS, {
				i(245256),	-- Sao'rhon
				i(246337),	-- Rustyroot Fel Snooter
				i(246339),	-- Duskytooth Fel Snooter
				i(246342),	-- Mustyfur Fel Snooter
				i(246343),	-- Scruffyhorn Fel Snooter
				i(246723),	-- Unfazed Diver
			}),
			filter(COSMETIC, {
				-- Brewfest?
				i(241232),	-- Brewer's Basic Shoulder Cape
				i(241266),	-- Brewer's Black Shoulder Cape
				i(241341),	-- Brewer's Blue Shoulder Cape
				i(241342),	-- Brewer's Green Shoulder Cape
				i(241343),	-- Brewer's Basic Beret
				i(241344),	-- Brewer's Black Beret
				i(241345),	-- Brewer's Blue Beret
				i(241346),	-- Brewer's Green Beret
				i(241347),	-- Brewer's Basic Kilt
				i(241348),	-- Brewer's Black Kilt
				i(241350),	-- Brewer's Blue Kilt
				i(241351),	-- Brewer's Green Kilt

				-- Cosmetic from karesh with grey replacements
				-- Greys if you already looted cosmetic?
				i(246293),	-- Buckler of the Last Stand
				i(246294),	-- Shattered Buckler of the Last Stand
				-- Reputation Cosmetic
				i(248780),	-- Consortium Brute's Cape
				i(248781),	-- Consortium Skirmisher's Cloak
				i(248782),	-- Consortium Scout's Serape
				i(248783),	-- Consortium Magi's Shawl
				i(248784),	-- Ensemble: Void-Scarred Captain's Plate
				i(248785),	-- Ensemble: Void-Scarred Striker's Battlegear
				i(248786),	-- Ensemble: Void-Scarred Blade's Attire
				i(248787),	-- Ensemble: Void-Scarred Seer's Wrappings
				i(246319),	-- Festering Scythe
				i(246915),	-- Arsenal: Ethereal Weaponry
				i(245523),	-- Shadowguard Credentials
				i(245526),	-- Bloodmarked Phasebound Visor
				i(245528),	-- Wastlander's Phasebound Visor
				i(244806),	-- Renowned Explorer's Versatile Vest

				-- Trading Post?
				i(245947),	-- Barrel Helm
				i(245948),	-- Bronzebeard's Portable Forge
				i(245949),	-- The Speaker's Portable Forge
				i(245950),	-- Dark Iron Portable Forge
				i(245951),	-- Wildhammer's Portable Forge
				i(245952),	-- Bronzbeard's Ceremonial Mace
				i(245953),	-- The Speaker's Ceremonial Mace
				i(245954),	-- Wildhammer's Ceremonial Mace
				i(245955),	-- Dark Iron's Ceremonial Mace
				i(245956),	-- Bronzebeard's Crystal Ward
				i(245957),	-- The Speaker's Crystal Ward
				i(245958),	-- Wildhammer's Crystal Ward
				i(245959),	-- Dark Iron's Crystal Ward
				i(246781),	-- Bronzbeard's Ancient Crusher
				i(246782),	-- The Speaker's Ancient Crusher
				i(246783),	-- Wildhammer's Ancient Crusher
				i(246784),	-- Dark Iron's Ancient Crusher
				i(246785),	-- Coldsnap Felblade
				i(246786),	-- Sinister Felblade
				i(246787),	-- Hellfire Felblade
				i(246788),	-- Netherstorm Felblade
				i(246790),	-- Coldsnap Feldirk
				i(246791),	-- Hellfire Feldirk
				i(246792),	-- Netherstorm Feldirk
				i(246793),	-- Sinister Feldirk
				i(246798),	-- Bronzebeard's Mighty Crossbow
				i(246799),	-- The Speaker's Mighty Crossbow
				i(246800),	-- Wildhammer's Mighty Crossbow
				i(246801),	-- Dark Iron's Mighty Crossbow
				i(246949),	-- Felreaver's Azure Treads
				i(246950),	-- Felreaver's Azure Helm
				i(246952),	-- Felreaver's Azure Shoulderguards
				i(246956),	-- Felreaver's Azure Jacket
				i(246962),	-- Felreaver's Azure Belt
				i(246963),	-- Felreaver's Azure Legguards
				i(246964),	-- Felreaver's Azure Gauntlets
				i(246965),	-- Ensemble: Felreaver's Azure Attire
				i(246966),	-- Felreaver's Legion Gauntlets
				i(246967),	-- Felreaver's Legion Legguards
				i(246968),	-- Felreaver's Legion Belt
				i(246969),	-- Felreaver's Legion Jacket
				i(246970),	-- Felreaver's Legion Shoulderguards
				i(246971),	-- Felreaver's Legion Helm
				i(246972),	-- Felreaver's Legion Treads
				i(246973),	-- Ensemble: Felreaver's Legion Attire
				i(246974),	-- Felreaver's Hellfire Gauntlets
				i(246975),	-- Felreaver's Hellfire Legguards
				i(246976),	-- Felreaver's Hellfire Belt
				i(246977),	-- Felreaver's Hellfire Jacket
				i(246978),	-- Felreaver's Hellfire Shoulderguards
				i(246979),	-- Felreaver's Hellfire Helm
				i(246980),	-- Felreaver's Hellfire Treads
				i(246981),	-- Ensemble: Felreaver's Hellfire Attire
				i(246982),	-- Felreaver's Arcane Gauntlets
				i(246983),	-- Felreaver's Arcane Legguards
				i(246984),	-- Felreaver's Arcane Belt
				i(246985),	-- Felreaver's Arcane Jacket
				i(246986),	-- Felreaver's Arcane Shoulderguards
				i(246987),	-- Felreaver's Arcane Helm
				i(246988),	-- Felreaver's Arcane Treads
				i(246989),	-- Ensemble: Felreaver's Arcane Attire
				i(246990),	-- Felreaver's Azure Staff
				i(246991),	-- Felreaver's Legion Staff
				i(246992),	-- Felreaver's Arcane Staff
				i(246994),	-- Felreaver's Hellfire Staff
				i(246996),	-- Felreaver's Azure Wand
				i(246997),	-- Felreaver's Legion Wand
				i(246998),	-- Felreaver's Hellfire Wand
				i(246999),	-- Felreaver's Arcane Wand
				i(247705),	-- The Horseman's Chilling Blade
				i(247706),	-- The Horseman's Ghoulish Blade
				i(247707),	-- The Horseman's Burning Blade
				i(247708),	-- The Horseman's Ghostly Blade
				i(247709),	-- The Horseman's Chilling Great Blade
				i(247710),	-- The Horseman's Ghoulish Great Blade
				i(247711),	-- The Horseman's Burning Great Blade
				i(247712),	-- The Horseman's Ghostly Great Blade
				i(247714),	-- The Horseman's Chilling Bulwark
				i(247715),	-- The Horseman's Ghoulish Bulwark
				i(247716),	-- The Horseman's Burning Bulwark
				i(247717),	-- The Horseman's Ghostly Bulwark
				i(247897),	-- The Horseman's Chilling Helm
				i(247898),	-- The Horseman's Chilling Mantle
				i(247899),	-- The Horseman's Chilling Breastplate
				i(247900),	-- The Horseman's Chilling Cinch
				i(247901),	-- The Horseman's Chilling Greaves
				i(247903),	-- The Horseman's Chilling Treads
				i(247904),	-- The Horseman's Chilling Grips
				i(247905),	-- The Horseman's Chilling Cloak
				i(247906),	-- Ensemble: The Horseman's Chilling Collection
				i(247964),	-- The Horseman's Ghoulish Helm
				i(247965),	-- The Horseman's Ghoulish Mantle
				i(247966),	-- The Horseman's Ghoulish Breastplate
				i(247967),	-- The Horseman's Ghoulish Cinch
				i(247968),	-- The Horseman's Ghoulish Greaves
				i(247969),	-- The Horseman's Ghoulish Treads
				i(247971),	-- The Horseman's Ghoulish Grips
				i(247972),	-- The Horseman's Ghoulish Cloak
				i(247973),	-- Ensemble: The Horseman's Ghoulish Collection
				i(247974),	-- The Horseman's Burning Helm
				i(247975),	-- The Horseman's Burning Mantle
				i(247976),	-- The Horseman's Burning Breastplate
				i(247977),	-- The Horseman's Burning Cinch
				i(247978),	-- The Horseman's Burning Greaves
				i(247979),	-- The Horseman's Burning Treads
				i(247980),	-- The Horseman's Burning Grips
				i(247981),	-- The Horseman's Burning Cloak
				i(247982),	-- Ensemble: The Horseman's Burning Collection
				i(247983),	-- The Horseman's Ghostly Helm
				i(247984),	-- The Horseman's Ghostly Mantle
				i(247985),	-- The Horseman's Ghostly Breastplate
				i(247986),	-- The Horseman's Ghostly Cinch
				i(247987),	-- The Horseman's Ghostly Greaves
				i(247988),	-- The Horseman's Ghostly Treads
				i(247989),	-- The Horseman's Ghostly Grips
				i(247990),	-- The Horseman's Ghostly Cloak
				i(247991),	-- Ensemble: The Horseman's Ghostly Collection
				i(248291),	-- Bronzbeard's Ceremonial Crown
				i(248292),	-- Bronzbeard's Ceremonial Mantle
				i(248293),	-- Bronzbeard's Ceremonial Chestplate
				i(248294),	-- Bronzbeard's Ceremonial Belt
				i(248295),	-- Bronzbeard's Ceremonial Boots
				i(248296),	-- Bronzbeard's Ceremonial Legguards
				i(248297),	-- Bronzbeard's Ceremonial Gauntlets
				i(248298),	-- Bronzbeard's Ceremonial Cloak
				i(248299),	-- Ensemble: Bronzebeard's Ceremonial Collection
				i(248301),	-- The Speaker's Ceremonial Crown
				i(248302),	-- The Speaker's Ceremonial Mantle
				i(248303),	-- The Speaker's Ceremonial Chestplate
				i(248304),	-- The Speaker's Ceremonial Belt
				i(248305),	-- The Speaker's Ceremonial Boots
				i(248306),	-- The Speaker's Ceremonial Legguards
				i(248307),	-- The Speaker's Ceremonial Gauntlets
				i(248308),	-- The Speaker's Ceremonial Cloak
				i(248309),	-- Ensemble: The Speaker's Ceremonial Collection
				i(248310),	-- Wildhammer's Ceremonial Crown
				i(248311),	-- Wildhammer's Ceremonial Mantle
				i(248312),	-- Wildhammer's Ceremonial Chestplate
				i(248313),	-- Wildhammer's Ceremonial Belt
				i(248314),	-- Wildhammer's Ceremonial Boots
				i(248315),	-- Wildhammer's Ceremonial Legguards
				i(248316),	-- Wildhammer's Ceremonial Gauntlets
				i(248317),	-- Wildhammer's Ceremonial Cloak
				i(248318),	-- Ensemble: Wildhammer's Ceremonial Collection
				i(248319),	-- Dark Iron's Ceremonial Crown
				i(248320),	-- Dark Iron's Draping Mantle
				i(248321),	-- Dark Iron's Ceremonial Chestplate
				i(248322),	-- Dark Iron's Ceremonial Belt
				i(248323),	-- Dark Iron's Ceremonial Boots
				i(248324),	-- Dark Iron's Ceremonial Legguards
				i(248325),	-- Dark Iron's Ceremonial Gauntlets
				i(248326),	-- Dark Iron's Ceremonial Cloak
				i(248327),	-- Ensemble: Dark Iron's Ceremonial Collection
				i(248394),	-- Dark Iron's Crystal Mantle
				i(248395),	-- Wildhammer's Ritualistic Mantle
				i(248396),	-- The Speaker's Ritualistic Mantle
				i(248397),	-- Bronzbeard's Ritualistic Mantle
			}),
			header(HEADERS.LFGDungeon, 2805, {	-- Manaforge Omega
				i(238029),	-- 11.2 Raid - Cloth - Waist
				i(238036),	-- Entropy
				--[[
				n(CLASSES, {
					-- Save Tier Sets if Darkal Needs them
					-- Cloak
					-- Wrist
					-- Belt
					-- Shoulder
					-- Legs
					-- Head
					-- Hands
					-- Feet
					-- Chest
					cl(DEATHKNIGHT, {
						i(237623),	-- Hollow Sentinel's Wingdrape (Contained inside an Ensemble sold by Ba'choso)
						i(237624),	-- Hollow Sentinel's Stonecuffs
						i(237625),	-- Hollow Sentinel's Greatbelt
						i(237626),	-- Hollow Senintel's Perches
						i(237627),	-- Hollow Sentinel's Stonekilt
						i(237628),	-- Hollow Sentinel's Stonemask
						i(237629),	-- Hollow Sentinel's Gauntlets
						i(237630),	-- Hollow Sentinel's Greatboots
						i(237631),	-- Hollow Sentinel's Breastplate
					}),
					cl(DEMONHUNTER, {
						i(237686),	-- Charhound's Vicious Felcover (Contained inside an Ensemble sold by Ba'choso)
						i(237687),	-- Charhound's Vicious Restraints
						i(237688),	-- Charhound's Vicious Huntbelt
						i(237689),	-- Charhound's Vicious Hornguards
						i(237690),	-- Charhound's Vicious Hidecoat
						i(237691),	-- Charhound's Vicious Scalp
						i(237692),	-- Charhound's Vicious Felclaws
						i(237693),	-- Charhound's Vicious Flametabi
						i(237694),	-- Charhound's Vicious Bindings
					}),
					cl(DRUID, {
						i(237677),	-- Plumage of the Mother Eagle (Contained inside an Ensemble sold by Ba'choso)
						i(237678),	-- Bands of the Mother Eagle
						i(237679),	-- Dreamsash of the Mother Eagle
						i(237680),	-- Ritual Pauldrons of the Mother Eagle
						i(237681),	-- Breeches of the Mother Eagle
						i(237682),	-- Skymane of the Mother Eagle
						i(237683),	-- Wings of the Mother Eagle
						i(237684),	-- Feathered Boots of the Mother Eagle
						i(237685),	-- Vest of the Mother Eagle
					}),
					cl(EVOKER, {
						i(237650),	-- Spellweaver's Immaculate Runecloak (Contained inside an Ensemble sold by Ba'choso)
						i(237651),	-- Spellweaver's Immaculate Cuffs
						i(237652),	-- Spellweaver's Immaculate Crystal Cord
						i(237653),	-- Spellweaver's Immaculate Pauldrons
						i(237654),	-- Spellweaver's Immaculate Runeslacks
						i(237655),	-- Spellweaver's Immaculate Focus
						i(237656),	-- Spellweaver's Immaculate Scaleguards
						i(237657),	-- Spellweaver's Immaculate Talons
						i(237658),	-- Spellweaver's Immaculate Crestward
					}),
					cl(HUNTER, {
						i(237641),	-- Midnight Herald's Shroud (Contained inside an Ensemble sold by Ba'choso)
						i(237642),	-- Midnight Herald's Wristguards
						i(237643),	-- Midnight Herald's Clasp
						i(237644),	-- Midnight Herald's Shadowguards
						i(237645),	-- Midnight Herald's Petticoat
						i(237646),	-- Midnight Herald's Cowl
						i(237647),	-- Midnight Herald's Gloves
						i(237648),	-- Midnight Herald's Jackboots
						i(237649),	-- Midnight Herald's Hauberk
					}),
					cl(MAGE, {
						i(237713),	-- Augur's Ephemeral Brilliance (Contained inside an Ensemble sold by Ba'choso)
						i(237714),	-- Augur's Ephemeral Bindings
						i(237715),	-- Augur's Ephemeral Quillsash
						i(237716),	-- Augur's Ephemeral Orbs of Power
						i(237717),	-- Augur's Ephemeral Trousers
						i(237718),	-- Augur's Ephemeral Wide-Brim
						i(237719),	-- Augur's Ephemeral Mitts
						i(237720),	-- Augur's Ephemeral Slippers
						i(237721),	-- Augur's Ephemeral Habiliments
					}),
					cl(MONK, {
						i(237668),	-- Breeze of Fallen Storms (Contained inside an Ensemble sold by Ba'choso)
						i(237669),	-- Demigaunts of Fallen Storms
						i(237670),	-- Thunderbund of Fallen Storms
						i(237671),	-- Glyphs of Fallen Storms
						i(237672),	-- Legwraps of Fallen Storms
						i(237673),	-- Half-Mask of Fallen Storms
						i(237674),	-- Grasp of Fallen Storms
						i(237675),	-- Footpads of Fallen Storms
						i(237676),	-- Gi of Fallen Storms
					}),
					cl(PALADIN, {
						i(237614),	-- Gilded Cloak of the Lucent Battalion (Contained inside an Ensemble sold by Ba'choso)
						i(237615),	-- Vambraces of the Lucent Battalion
						i(237616),	-- Seal of the Lucent Battalion
						i(237617),	-- Chargers of the Lucent Battalion
						i(237618),	-- Cuisses of the Lucent Battalion
						i(237619),	-- Lightmane of the Lucent Battalion
						i(237620),	-- Protectors of the Lucent Battalion
						i(237621),	-- Stompers of the Lucent Battalion
						i(237622),	-- Cuirass of the Lucent Battalion
					}),
					cl(PRIEST, {
						i(237704),	-- Dying Star's Memory (Contained inside an Ensemble sold by Ba'choso)
						i(237705),	-- Dying Star's Bangles
						i(237706),	-- Dying Star's Waistlight
						i(237707),	-- Dying Star's Pyrelights
						i(237708),	-- Dying Star's Leggings
						i(237709),	-- Dying Star's Veil
						i(237710),	-- Dying Star's Caress
						i(237711),	-- Dying Star's Soles
						i(237712),	-- Dying Star's Cassock
					}),
					cl(ROGUE, {
						i(237659),	-- Cape of the Sudden Eclipse (Contained inside an Ensemble sold by Ba'choso)
						i(237660),	-- Armbands of the Sudden Eclipse
						i(237661),	-- Strap of the Sudden Eclipse
						i(237662),	-- Smokemantle of the Sudden Eclipse
						i(237663),	-- Pants of the Sudden Eclipse
						i(237664),	-- Hood of the Sudden Eclipse
						i(237665),	-- Deathgrips of the Sudden Eclipse
						i(237666),	-- Bladed Boots of the Sudden Eclipse
						i(237667),	-- Tactical Vest of the Sudden Eclipse
					}),
					cl(SHAMAN, {
						i(237632),	-- Shawl of Channeled Fury (Contained inside an Ensemble sold by Ba'choso)
						i(237633),	-- Bracers of Channeled Fury
						i(237634),	-- Fauld of Channeled Fury
						i(237635),	-- Fangs of Channeled Fury
						i(237636),	-- Tassets of Channeled Fury
						i(237637),	-- Aspect of Channeled Fury
						i(237638),	-- Claws of Channeled Fury
						i(237639),	-- Boots of Channeled Fury
						i(237640),	-- Furs of Channeled Fury
					}),
					cl(WARLOCK, {
						i(237695),	-- Inquisitor's All-Seeing Madness (Contained inside an Ensemble sold by Ba'choso)
						i(237696),	-- Inquisitor's Bracelets of Madness
						i(237697),	-- Inquisitor's Tome of Madness
						i(237698),	-- Inquisitor's Gaze of Madness
						i(237699),	-- Inquisitor's Leggings of Madness
						i(237700),	-- Inquisitor's Portal to Madness
						i(237701),	-- Inquisitor's Clutches of Madness
						i(237702),	-- Inquisitor's Treads of Madness
						i(237703),	-- Inquisitor's Robes of Madness
					}),
					cl(WARRIOR, {
						i(237605),	-- Living Weapon's Cape (Contained inside an Ensemble sold by Ba'choso)
						i(237606),	-- Living Weapon's Manacles
						i(237607),	-- Living Weapon's Chain
						i(237608),	-- Living Weapon's Ramparts
						i(237609),	-- Living Weapon's Legguards
						i(237610),	-- Living Weapon's Faceshield
						i(237611),	-- Living Weapon's Crushers
						i(237612),	-- Living Weapon's Sabatons
						i(237613),	-- Living Weapon's Bulwark
					}),
				}),
				--]]
			}),
			filter(MISC, {
				i(238851),	-- Fractured Dragon Scale
				i(238853),	-- Netherbound Heart
				i(238856),	-- Nightpiercer Feather
				i(238879),	-- Cracked Void Carapace
				i(238888),	-- Essence of Ephemeral Knowledge
				i(239109),	-- [NYI] Outdoor Voidforged Container - Ruins of Yaathron
				i(239129),	-- Questionable Tentacle
				i(241220),	-- Loose Parts
				i(242380),	-- Black Blood Blower
				i(243152),	-- NEW ITem
				i(243235),	-- Adventurer's Footlocker
				i(243246),	-- Funny Candle
				i(243580),	-- Etheric Pylon
				i(244141),	-- Barley Soup
				i(244142),	-- Brew Keg
				i(244421),	-- Set Keystone Map: Eco-Dome Al'dani
				i(246492),	-- Soulgorged Augment Rune
				i(246837),	-- Mysterious Notebook
				i(246839),	-- Multiversal Energy Dynamics and the Murmuration Paradox
				i(246840),	-- Ba'key's Aromatic Broker Cookies Recipes
				i(246841),	-- From Vengeance to Void
				i(246842),	-- The Facets of K'aresh
				i(246843),	-- Coins: An Oath We Exchange
				i(246844),	-- I Have Become Void!
				i(246904),	-- Unseen Path of the Phase Stalker
				i(246906),	-- Locus Console
				i(247926),	-- Muted Mana-Stone
				i(247927),	-- Humming Mana-Stone
				-- Box/Weekly Box
				i(230032),	-- Overflowing K'aresh Trust Trove
				i(238921),	-- Containment Canister
				i(239204),	-- (DNT NEEDS CRESTS) Overflowing K'aresh Trove
				i(244300),	-- Phase-Sealed Box
				i(244354),	-- Ethereal Equipment Chest
				-- Delve
				i(245885),	-- Lil Wheel of Cheese=
				i(248126),	-- Delver's Starter Kit
				i(248142),	-- Delver's Bounty
				-- Curios
				i(239580),	-- Nether Overlay Matrix

				-- Valorstone
				i(239594),	-- Crimson Valorstone
				i(240175),	-- Crystallized Ethereal Voidsplinter
				i(240207),	-- Golden Valorstone
				i(240208),	-- Void-Touched Valorstone
				i(240209),	-- Golden Valorstone
				i(240210),	-- Crimson Valorstone
				i(240211),	-- Void-Touched Valorstone


				-- Crests
				i(240929),	-- Glorious Cluster of Gilded Ethereal Crests
				i(240932),	-- Pack of Runed Undermine Crests
				i(240933),	-- Satchel of Carved Undermine Crests
				i(240934),	-- Pouch of Weathered Undermine Crests
				i(240935),	-- Glorious Cluster of Gilded Undermine Crests
				i(240937),	-- Celebratory Pack of Runed Undermine Crests
				i(240938),	-- Triumphant Satchel of Carved Undermine Crests

				-- Brewfest
				i(243291),	-- Bag of Brewfest Merchandise
				i(243292),	-- Bag of Brewfest Merchandise
				i(243293),	-- Bag of Brewfest Merchandise
				i(243344),	-- Chef's Hat
				i(243347),	-- Keg of Curiosities
				i(243479),	-- Bag of Brewfest Ingredients
			}),
			filter(MOUNTS, {
				i(186639),	-- Xy Trustee's Gearglider
				i(242713),	-- Resplendent K'arroc
				i(246159),	-- Translocated Gorger
				i(246698),	-- Sunwarmed Furline
				i(246917),	-- Thunder-ridged Elekk
				i(246919),	-- Cinder-seared Elekk
				i(246920),	-- Void-Razed Elekk
				i(246921),	-- Legion Forged Elekk
				i(247720),	-- The Headless Horseman's Chilling Charger
				i(247721),	-- The Headless Horseman's Ghoulish Charger
				i(247722),	-- The Headless Horseman's Burning Charger
				i(247723),	-- The Headless Horseman's Ghostly Charger
				i(247791),	-- Windmaster's Battlesworn
				i(247792),	-- Akil'darah Windscarred
				i(247793),	-- Ohn'ahran Windborne
				i(247794),	-- Darkfeather Eclipse
				i(247795),	-- Ornery Breezestrider
				i(248761),	-- Brewfest Barrel Bomber


				-- Mount Mods
				i(238182),	-- Delver's Mana-Skimmer Schematic: Hyperdrive
			}),
			n(PROFESSIONS, {
				i(231770),	-- Formula: Enchanted Gilded Ethereal Crest
				i(231771),	-- Formula: Enchanted Runed Ethereal Crest
				i(231772),	-- Formula: Enchanted Weathered Ethereal Crest
				i(231774),	-- Nascent Weathered Ethereal Crest
				i(231775),	-- Nascent Gilded Ethereal Crest
				i(231776),	-- Nascent Runed Ethereal Crest
				i(246816),	-- A Steamy Romance Novel: Nightborne of the Living Dead
				i(246817),	-- A Steamy Romance Novel: Of Elven Bondage
				i(246818),	-- A Steamy Romance Novel: Waves of Desire
				i(246820),	-- A Steamy Romance Novel: Stormy Seas
				i(246821),	-- A Steamy Romance Novel: The Lusty Draconian Mage
				i(246822),	-- A Steamy Romance Novel: Devouring Love
				i(246823),	-- A Steamy Romance Novel: Got Milk?

			}),
			n(PVP, {
				i(232600),	-- Astral Gladiator's Weapon Token
				i(232616),	-- Astral Gladiator's Coin Pouch
				i(230722),	-- Astral Equipment Chest
				i(230814),	-- [11.2 PVP] Gladiator's Axe <TEMPLATE>
				i(230815),	-- [11.2 PVP] Gladiator's Dagger <TEMPLATE>
				i(230816),	-- [11.2 PVP] Gladiator's Gun <TEMPLATE>
				i(230817),	-- [11.2 PVP] Gladiator's Warglaive <TEMPLATE>
				i(230819),	-- [11.2 PVP] Gladiator's Spear <TEMPLATE>
				i(230820),	-- [11.2 PVP] Gladiator's Staff <TEMPLATE>
				i(230821),	-- [11.2 PVP] Gladiator's Greatsword <TEMPLATE>
				i(230822),	-- [11.2 PVP] Gladiator's Battlestaff <TEMPLATE>
				i(230823),	-- [11.2 PVP] Gladiator's Crossbow <TEMPLATE>
				i(230824),	-- [11.2 PVP] Gladiator's Scepter <TEMPLATE>
				i(230825),	-- [11.2 PVP] Gladiator's Focus <TEMPLATE>
				i(230826),	-- [11.2 PVP] Gladiator's Shield <TEMPLATE>
				i(230827),	-- [11.2 PVP] Gladiator's Bulwark <TEMPLATE>
				i(230828),	-- [11.2 PVP] Gladiator's Claws <TEMPLATE>
				i(230829),	-- [11.2 PVP] Gladiator's Bow <TEMPLATE>
				i(230830),	-- [11.2 PVP] Gladiator's Greataxe <TEMPLATE>
				i(230831),	-- [11.2 PVP] Gladiator's Pulverizer <TEMPLATE>
				i(230832),	-- [11.2 PVP] Gladiator's Wither-Blade <TEMPLATE>
				i(230833),	-- [11.2 PVP] Gladiator's Placeholder <TEMPLATE>
				i(230834),	-- [11.2 PVP] Gladiator's Placeholder <TEMPLATE>
				i(230835),	-- [11.2 PVP] Gladiator's Placeholder <TEMPLATE>
				i(230836),	-- [11.2 PVP] Gladiator's Placeholder <TEMPLATE>
				i(231629),	-- zzOld
				i(231636),	-- zzOld
				i(248342),	-- Astral Gladiator's Axe
				i(248344),	-- Astral Gladiator's Gun
				i(248354),	-- Astral Gladiator's Bulwark
				-- Ensembles/Arsenals
				i(232808),	-- Ensemble: Astral Aspirant's Cloth Armor
				i(232809),	-- Ensemble: Astral Aspirant's Leather Armor
				i(232810),	-- Ensemble: Astral Aspirant's Mail Armor
				i(232811),	-- Ensemble: Astral Aspirant's Plate Armor
				i(232812),	-- Ensemble: Astral Gladiator's Death Knight Armor
				i(232813),	-- Ensemble: Astral Gladiator's Demon Hunter Armor
				i(232814),	-- Ensemble: Astral Gladiator's Druid Armor
				i(232815),	-- Ensemble: Astral Gladiator's Evoker Armor
				i(232816),	-- Ensemble: Astral Gladiator's Hunter Armor
				i(232817),	-- Ensemble: Astral Gladiator's Mage Armor
				i(232818),	-- Ensemble: Astral Gladiator's Monk Armor
				i(232819),	-- Ensemble: Astral Gladiator's Paladin Armor
				i(232820),	-- Ensemble: Astral Gladiator's Priest Armor
				i(232821),	-- Ensemble: Astral Gladiator's Rogue Armor
				i(232822),	-- Ensemble: Astral Gladiator's Shaman Armor
				i(232823),	-- Ensemble: Astral Gladiator's Warlock Armor
				i(232824),	-- Ensemble: Astral Gladiator's Warrior Armor
				i(232825),	-- Ensemble: Elite Astral Gladiator's Death Knight Armor
				i(232826),	-- Ensemble: Elite Astral Gladiator's Demon Hunter Armor
				i(232827),	-- Ensemble: Elite Astral Gladiator's Druid Armor
				i(232828),	-- Ensemble: Elite Astral Gladiator's Evoker Armor
				i(232829),	-- Ensemble: Elite Astral Gladiator's Hunter Armor
				i(232830),	-- Ensemble: Elite Astral Gladiator's Mage Armor
				i(232831),	-- Ensemble: Elite Astral Gladiator's Monk Armor
				i(232832),	-- Ensemble: Elite Astral Gladiator's Paladin Armor
				i(232833),	-- Ensemble: Elite Astral Gladiator's Priest Armor
				i(232834),	-- Ensemble: Elite Astral Gladiator's Rogue Armor
				i(232835),	-- Ensemble: Elite Astral Gladiator's Shaman Armor
				i(232836),	-- Ensemble: Elite Astral Gladiator's Warlock Armor
				i(232837),	-- Ensemble: Elite Astral Gladiator's Warrior Armor
				i(232870),	-- Arsenal: Astral Aspirant's Weapons
				i(232871),	-- Arsenal: Astral Gladiator's Weapons
				i(232872),	-- Arsenal: Elite Astral Gladiator's Weapons
			}),
			filter(QUEST_ITEMS, {
				i(229166),	-- Void Stuffs
				i(229398),	-- Sabeel's Tuning Key
				i(229399),	-- Patram's Tuning Key
				i(229400),	-- Xaheen's Tuning Key
				i(229402),	-- Serving Tray
				i(229403),	-- Toy Boat
				i(229404),	-- Carved Toy
				i(229405),	-- Entropic Core
				i(229406),	-- Codex of The Exchange
				i(229898),	-- Capture Device
				i(231094),	-- Unused - Tranquilizing Dart [DNT]
				i(231790),	-- Small Stone Tablet
				i(231801),	-- Well-Worn Coin
				i(231804),	-- Game Piece
				i(231805),	-- [DNT]Well-worn Coin
				i(232280),	-- Cracked Pendant
				i(232281),	-- Small Fossil
				i(232426),	-- Game Board
				i(232516),	-- Fading Essence
				i(232522),	-- High Priest's Record[DNT]
				i(232553),	-- Temple Keystone[DNT]
				i(232554),	-- Waning Essence[DNT]
				i(232568),	-- Priest's Remains[DNT]
				i(232630),	-- Xy Imports Ledger
				i(233005),	-- Om'taha's Toolkit[DNT]
				i(233012),	-- Flamethrower
				i(233287),	-- Barrel of Swirling Energy
				i(235983),	-- Warrant: Shatterpulse
				i(238296),	-- Phase Disruptor
				i(238903),	-- Appropriated Azerothian Camera
				i(238906),	-- Appropriated Azerothian Camera
				i(238907),	-- Anima Orb
				i(238910),	-- Lasso
				i(238913),	-- Condenser Disc
				i(238914),	-- Hemet's Soothin' Flute
				i(238933),	-- Appropriated S.E.L.F.I.E. Camera
				i(239566),	-- Arcane Runed Signet
				i(241353),	-- Hydrobite
				i(242547),	-- Cracked Keystone
				i(242654),	-- Shadowtrade Overstock
				i(244064),	-- Pretzel
				i(245743),	-- A Curious Crystalline Fragment
				i(246041),	-- Brew Keg
				i(246042),	-- Pretzel
				i(246044),	-- Bag of Brewfest Ingredients
				i(246052),	-- Barley Soup
				i(246446),	-- Mark of the Twilight Oath
				i(246592),	-- Shadowguard Credentials
				i(246593),	-- Shadowguard Credentials
			}),
			filter(TOYS, {
				-- PvP
				i(242636),	-- Astral Legend's Pennant
				-- Brewfest
				i(245946),	-- Brewer's Balloon
			}),
			i(248916),	-- Untethered Seer's Capelet
			i(249028),	-- Perfectly Preserved Kaja'Classic Original Taste
			i(249030),	-- Omega Oyster Outbreak
			i(249235),	-- Bottomless Bag of Entropy
			i(249560),	-- Skymaster's Silver Mantle
			i(249561),	-- Skymaster's Silver Cloak
			i(249562),	-- Skymaster's Silver Tabard
			i(249563),	-- Skymaster's Sapphire Crown
			i(249564),	-- Skymaster's Sapphire Shoulderguards
			i(249565),	-- Skymaster's Sapphire Epaulets
			i(249699),	-- Shadowguard Translocator


			i(249710),	-- Cartel Zo Cypher
			i(249711),	-- Cartel Ba Cypher
			i(249712),	-- Cartel Om Cypher
			i(249713),	-- Cartel Transmorpher
			i(249857),	-- Brewer's Blue Belt
			i(249858),	-- Brewer's Basic Belt
			i(249859),	-- Brewer's Green Belt
			i(249860),	-- Brewer's Black Belt
			i(250082),	-- T'uure, Remnant of the Naaru
			i(250706),	-- The Horseman's Hallowed Cowl
			i(250707),	-- The Horseman's Burning Cowl
			i(250708),	-- The Horseman's Ghoulish Cowl
			i(250709),	-- The Horseman's Chilling Cowl
			i(250975),	-- Hellcaller Chest
			i(242534),	-- Azure Sea Skiff
			i(244228),	-- Sash of the Tipsy Sage
			i(244229),	-- Angler's Mantle
			i(244230),	-- Strawhat of Frosted Currents
			i(244231),	-- Ensemble: Stillwater Fisher Attire
			i(244352),	-- Cloak of the Veiled Paws
			i(251543),	-- Cracked Keystone
		})),
		expansion(EXPANSION.TWW, patch(1,0), bubbleDownSelf({ ["timeline"] = { ADDED_11_1_0 } }, {
			-- Left Remaining To Darkal --
			n(ARMOR, {
				-- Darkal Check Later
				i(238243),	-- Hidden Boots
			}),
		})),
		expansion(EXPANSION.TWW, patch(0,5), bubbleDownSelf({ ["timeline"] = { ADDED_11_0_5 } }, {
			-- Left Remaining To Darkal --
			race(DRACTHYR_HORDE, {	-- New Dracthyr Starting Gear
				i(232033),	-- Creche-Binder's Cord
				i(232265),	-- Creche-Guard's Chopper
				i(232266),	-- Creche-Guard's Bulwark
				i(232267),	-- Creche-Guard's Axe
				i(232269),	-- Creche-Guard's Girdle
				i(232270),	-- Creche-Guard's Pauldrons
				i(232278),	-- Creche-Scout's Longspear
				i(232282),	-- Creche-Scout's Belt
				i(232283),	-- Creche-Scout's Spaulders
				i(232290),	-- Creche-Talon's Blade
				i(232293),	-- Creche-Talon's Clasp
				i(232331),	-- Creche-Weaver's Sash
				i(232338),	-- Creche-Magus's Cinch
			}),
		})),
		expansion(EXPANSION.TWW, patch(0,2), bubbleDownSelf({ ["timeline"] = { ADDED_11_0_2 } }, {
			-- Left Remaining To Darkal --
			explorationHeader({
				exploration(15667),	-- Delves
				exploration(15552),	-- The Undersea
			}),
			-- Have QuestID attached
			i(228947),	-- Weaver's Lair Profession Table
		})),
		expansion(EXPANSION.TWW, patch(0,0,1), bubbleDownSelf({ ["timeline"] = { ADDED_11_0_0 } }, {
			-- Left Remaining To Darkal --
			explorationHeader({
				exploration(14484),	-- 10.2 Devland
				exploration(14523),	-- 11 Zone3
				exploration(14517),	-- 11Test1
				exploration(14615),	-- 11Test2
				exploration(14658),	-- 11Test3
				exploration(14661),	-- 11Test4
				exploration(14662),	-- 11Test5
				exploration(14723),	-- 11Test6
				exploration(14855),	-- 11Test7
				exploration(14908),	-- 11.0 - Underground Test
				exploration(15180),	-- 11.0 warband camp
				exploration(15027),	-- 2510 Coreway
				exploration(14730),	-- Abandoned Creche
				exploration(15377),	-- Analysis Interface
				exploration(15144),	-- Annihilation Interface
				exploration(15093),	-- Ara-Kara, City of Echoes
				exploration(15133),	-- Awakening The Machine
				exploration(15141),	-- Awakening Machine
				exploration(15380),	-- Awakening Machine
				exploration(14752),	-- Azj-Kahet
				exploration(15547),	-- Beledar's Bounty
				exploration(15372),	-- Brood Pens
				exploration(15378),	-- Bulwark of Authorization
				exploration(15051),	-- Chamber of Heart
				exploration(15103),	-- Cinderbrew Meadery
				exploration(14753),	-- City of Threads
				exploration(14979),	-- City of Threads
				exploration(15172),	-- Councilward's Rise
				exploration(15376),	-- Crown of Shadows
				exploration(15177),	-- Dalaran
				exploration(14818),	-- Darkflame Cleft Exterior
				exploration(14882),	-- Darkflame Cleft
				exploration(15052),	-- Darkflame Cleft
				exploration(14616),	-- Darkglow Hollows
				exploration(15549),	-- Dayspring Fields
				exploration(15171),	-- Deepforge Manufacturing Bay
				exploration(14990),	-- Deephaul Ravine
				exploration(14903),	-- Deepstrike Point
				exploration(15329),	-- Delver's Headquarters
				exploration(15108),	-- Dev Map - Exile's Reach - Tower
				exploration(14999),	-- Earthcrawl Mines
				exploration(15155),	-- Echoing Overlook
				exploration(15047),	-- Fallside Outpost
				exploration(15142),	-- Firewall of Negation
				exploration(14957),	-- Fungal Folly
				exploration(15361),	-- Gemvein Tunnels
				exploration(15140),	-- Gloomcrag Bower
				exploration(15373),	-- Gossamer Gallery
				exploration(15363),	-- Grand Rampart
				exploration(15022),	-- Hall of the Candle King
				exploration(15048),	-- Hall of Awakening
				exploration(15342),	-- Hall of Awakening
				exploration(15374),	-- Hall of Whispers
				exploration(14838),	-- Hallowfall
				exploration(14971),	-- Hallowfall
				exploration(15145),	-- Hallowfall
				exploration(15019),	-- Hewn Passage
				exploration(14717),	-- Isle of Dorn
				exploration(15101),	-- Junction
				exploration(14665),	-- Khaz Algar
				exploration(14748),	-- Khaz Algar
				exploration(15368),	-- Kili-zar Arena
				exploration(15000),	-- Kriegval's Rest
				exploration(15343),	-- KVigue Test
				exploration(15470),	-- Laboratory of the Grand Splicer
				exploration(15023),	-- Lightless Depths
				exploration(15149),	-- Mereldar
				exploration(15545),	-- Mereldar
				exploration(14998),	-- Mycomancer Cavern
				exploration(15362),	-- Nerub-ar Gatehouse
				exploration(15005),	-- Nightfall Sanctum
				exploration(15513),	-- Pocket Dimension
				exploration(14954),	-- Priory of the Sacred Flame
				exploration(15150),	-- Priory of the Sacred Flame
				exploration(15379),	-- Procedural Forum
				exploration(15143),	-- Processing Unit
				exploration(14512),	-- RebornTree
				exploration(15169),	-- Shadowvein Power Station
				exploration(15170),	-- Shadowvein Mine
				exploration(15375),	-- Silken Court
				exploration(15004),	-- Skittering Breach
				exploration(15371),	-- Skittering Cavern
				exploration(15020),	-- Sprawling Trackyard
				exploration(15550),	-- Stagnant Mire
				exploration(15359),	-- Sundered's Crucible
				exploration(15008),	-- Tak-Rethan Abyss
				exploration(15327),	-- Tak-Rethan Abyss
				exploration(15544),	-- Tenir's Ascent
				exploration(15367),	-- Terrace of Majesty
				exploration(14853),	-- Test Dungeon
				exploration(14795),	-- The Ringing Deeps
				exploration(14798),	-- The Waterworks
				exploration(14807),	-- The Glittering Shelf
				exploration(14850),	-- The Whirring Field
				exploration(14883),	-- The Stonevault
				exploration(14920),	-- The Basin
				exploration(14938),	-- The Rookery
				exploration(15002),	-- The Waterworks
				exploration(15003),	-- The Dread Pit
				exploration(15006),	-- The Sinkhole
				exploration(15007),	-- The Spiral Weave
				exploration(15009),	-- The Underkeep
				exploration(15021),	-- The Waxatory
				exploration(15100),	-- The Earthenworks
				exploration(15146),	-- The Undersea
				exploration(15154),	-- The Shredded Strands
				exploration(15156),	-- The Undercache
				exploration(15157),	-- The Meadyard
				exploration(15175),	-- The Sinkhole
				exploration(15328),	-- The Rookery Landing
				exploration(15338),	-- The Flaming Taps
				exploration(15339),	-- The Stills
				exploration(15340),	-- The Buzz Barns
				exploration(15341),	-- The BEE.E.O. Suite
				exploration(15364),	-- The Pulsing Pit
				exploration(15365),	-- The Congealing Pool
				exploration(15366),	-- The Ascending Reach
				exploration(15369),	-- The Swaying Span
				exploration(15370),	-- The Narthex
				exploration(15525),	-- The Great Sea
				exploration(15548),	-- The Hungering Pool
				exploration(15551),	-- The Fangs
				exploration(15148),	-- Velhan's Claim
				exploration(15147),	-- Veneration Grounds
				exploration(15546),	-- Veneration Grounds
				exploration(15387),	-- Warband Camp
				exploration(15001),	-- Zekvir's Lair
				exploration(14747),	-- Zone 4 Dev Land
				exploration(15055),	-- zzoldPriory of the Sacred Flame
				exploration(14823),	-- <Unnamed POI 007>
				exploration(14824),	-- <Unnamed POI 008>
				exploration(14825),	-- <Unnamed POI 009>
				exploration(14826),	-- <Unnamed POI 010>
				exploration(14827),	-- <Unnamed POI 011>
				exploration(14828),	-- <Unnamed POI 012>
				exploration(14829),	-- <Unnamed POI 013>
				exploration(14830),	-- <Unnamed POI 014>
				exploration(14831),	-- <Unnamed POI 015>
				exploration(14832),	-- <Unnamed POI 016>
				exploration(14833),	-- <Unnamed POI 017>
				exploration(14834),	-- <Unnamed POI 018>
				exploration(14835),	-- <Unnamed POI 019>
				exploration(14836),	-- <Unnamed POI 020>
			}),
			i(220445),	-- Illusionary Charm
		})),
	}),
	expansion(EXPANSION.DF, {
		expansion(EXPANSION.DF, patch(2,7), bubbleDownSelf({ ["timeline"] = { ADDED_10_2_7 } }, {
			-- Left Remaining To Darkal --
			n(PVP, {
				-- This is all broken as of 10.2.7. Currently added a placeholder data to the SL PvP vendor.
				i(223769),	-- Eternal Aspirant's Cape
			}),
		})),
	}),
	expansion(EXPANSION.BFA, {
		-- 8.0.1
		expansion(EXPANSION.BFA, patch(0,1), bubbleDownSelf({ ["timeline"] = { ADDED_8_0_1 } }, {
			n(ARMOR, {	-- Armor/Wep
				i(154158),	-- Skeletal Composite Bow \\ Pearl-Handled Bow \\ Bow - Level-up (NEEDS NAME)
				i(153398),	-- Sea Sapphire Band
				i(153417),	-- Beaten Copper Loop
				i(154872),	-- Marrten's Canvas Mantle \\ Heartsbane Amice \\ PH Cloth Shoulder
				i(154969),	-- Sea Sapphire Band
				i(154987),	-- Beaten Copper Loop
				i(155056),	-- 8.0 PH - Unused - 2H Bow \\ 8.0 PH Weapon - Bow
				i(155060),	-- 8.0 PH - Unused - 1H Fist \\ 8.0 PH Weapon - 1H Fist Int
				i(155061),	-- 8.0 PH - Unused - 1H Fist \\ 8.0 PH Weapon - 1H Fist Str
				i(155067),	-- 8.0 PH - Unused - 2H Mace \\ 8.0 PH Weapon - 2H Mace Agi
				i(155069),	-- 8.0 PH - Unused - 2H Mace \\ 8.0 PH Weapon - 2H Mace Int
				i(155078),	-- 8.0 PH - Unused - 1H Sword \\ 8.0 PH Weapon - 1H Sword Int
				i(155084),	-- 8.0 PH Neck
				i(155087),	-- 8.0 PH Neck
				i(155088),	-- 8.0 PH Neck
				i(155125),	-- 8.0 PH - Weapon - 1H Axe
				i(155129),	-- 8.0 PH - Weapon - Bow
				i(155132),	-- 8.0 PH - Weapon - Dagger
				i(155133),	-- 8.0 PH - Weapon - Fist
				i(155135),	-- 8.0 PH - Unused - 1H Fist \\ 8.0 PH - Weapon - 1H Fist \\ PH Acolyte's Spiked Glove \\ Acolyte's Spiked Glove
				i(155137),	-- 8.0 PH - Weapon - 1H Mace
				i(155140),	-- 8.0 PH - Weapon - 2H Mace
				i(155145),	-- 8.0 PH - Weapon - Polearm
				i(155147),	-- 8.0 PH - Weapon - Staff
				i(155149),	-- 8.0 PH - Weapon - 1H Sword
				i(155154),	-- 8.0 PH - Unused - Shield \\ PH Str Shield A \\ Waycrest Squire's Shield
				i(155165),	-- 8.0 PH - Cloak
				i(155201),	-- 8.0 PH Weapon - 2H Axe Str
				i(155202),	-- 8.0 PH Weapon - Bow
				i(155206),	-- 8.0 PH Weapon - 1H Fist Int
				i(155207),	-- 8.0 PH Weapon - 1H Fist Str
				i(155213),	-- 8.0 PH Weapon - 2H Mace Agi
				i(155215),	-- 8.0 PH Weapon - 2H Mace Int
				i(155220),	-- 8.0 PH Weapon - 2H Staff Str
				i(155222),	-- Fungmourne \\ 8.0 PH Weapon - 1H Sword Agi
				i(155230),	-- 8.0 PH Neck
				i(155233),	-- 8.0 PH Neck
				i(155234),	-- 8.0 PH Neck
				i(155238),	-- 8.0 PH Cloak
				i(155274),	-- 8.0 PH Weapon - 2H Axe Str
				i(155275),	-- 8.0 PH Weapon - Bow
				i(155276),	-- 8.0 PH Weapon - Crossbow
				i(155277),	-- 8.0 PH Weapon - 1H Dagger Agi
				i(155279),	-- 8.0 PH Weapon - 1H Fist Int
				i(155280),	-- 8.0 PH Weapon - 1H Fist Str
				i(155281),	-- 8.0 PH Weapon - 1H Fist Agi
				i(155282),	-- 8.0 PH Weapon - Gun
				i(155283),	-- 8.0 PH Weapon - 1H Mace Agi
				i(155285),	-- 8.0 PH Weapon - 1H Mace Int
				i(155286),	-- 8.0 PH Weapon - 2H Mace Agi
				i(155288),	-- 8.0 PH Weapon - 2H Mace Int
				i(155289),	-- 8.0 PH Weapon - 2H Polearm Agi
				i(155290),	-- 8.0 PH Weapon - 2H Polearm Str
				i(155291),	-- 8.0 PH Weapon - 2H Polearm Int
				i(155292),	-- 8.0 PH Weapon - 2H Staff Agi
				i(155293),	-- 8.0 PH Weapon - 2H Staff Str
				i(155294),	-- 8.0 PH Weapon - 2H Staff Int
				i(155295),	-- 8.0 PH Weapon - 1H Sword Agi
				i(155296),	-- 8.0 PH Weapon - 1H Sword Str
				i(155297),	-- 8.0 PH Weapon - 1H Sword Int
				i(155298),	-- 8.0 PH Weapon - 2H Sword Str
				i(155301),	-- 8.0 PH Shield
				i(155303),	-- 8.0 PH Neck
				i(155306),	-- 8.0 PH Neck
				i(155307),	-- 8.0 PH Neck
				i(155331),	-- 8.0 PH - Cloth Robe
				i(155345),	-- 8.0 PH Weapon - 1H Axe Str
				i(155349),	-- 8.0 PH - Weapon - Crossbow
				i(155352),	-- 8.0 PH Weapon - 1H Fist Int
				i(155353),	-- 8.0 PH Weapon - 1H Fist Str
				i(155354),	-- 8.0 PH Weapon - 1H Fist Agi
				i(155355),	-- 8.0 PH Weapon - Gun
				i(155356),	-- 8.0 PH Weapon - 1H Mace Agi
				i(155357),	-- 8.0 PH Weapon - 1H Mace Str
				i(155358),	-- 8.0 PH Weapon - 1H Mace Int
				i(155359),	-- 8.0 PH Weapon - 2H Mace Agi
				i(155360),	-- 8.0 PH Weapon - 2H Mace Str
				i(155361),	-- 8.0 PH Weapon - 2H Mace Int
				i(155363),	-- 8.0 PH Weapon - 2H Polearm STR
				i(155364),	-- 8.0 PH Weapon - 2H Polearm Int
				i(155366),	-- 8.0 PH Weapon - 2H Staff Str
				i(155367),	-- 8.0 PH Weapon - 2H Staff Int
				i(155368),	-- 8.0 PH Weapon - 1H Sword Agi
				i(155370),	-- 8.0 PH Weapon - 1H Sword Int
				i(155371),	-- 8.0 PH Weapon - 2H Sword Str
				i(155372),	-- 8.0 PH - Weapon - Wand
				i(155376),	-- 8.0 PH Neck
				i(155379),	-- 8.0 PH - Neck
				i(155380),	-- 8.0 PH Neck
				i(155426),	-- 8.0 PH Weapon - 1H Fist Str
				i(155428),	-- 8.0 PH Weapon - Gun
				i(155435),	-- 8.0 PH Weapon - 2H Polearm Agi
				i(155436),	-- 8.0 PH Weapon - 2H Polearm Str
				i(155437),	-- 8.0 PH Weapon - 2H Polearm Int
				i(155439),	-- 8.0 PH Weapon - 2H Staff Str
				i(155446),	-- 8.0 PH Shield
				i(155447),	-- 8.0 PH Shield
				i(155449),	-- 8.0 PH Neck
				i(155452),	-- 8.0 PH Neck
				i(155453),	-- 8.0 PH Neck
				i(155491),	-- 8.0 PH - Plate Chestplate
				i(155492),	-- 8.0 PH - Mail Vest
				i(155493),	-- 8.0 PH - Leather Vest
				i(155494),	-- 8.0 PH - Plate Warboots
				i(155495),	-- 8.0 PH - Cloth Treads
				i(155496),	-- 8.0 PH - Mail Sabatons
				i(155497),	-- 8.0 PH - Leather Boots
				i(155498),	-- 8.0 PH - Leather Gloves
				i(155499),	-- 8.0 PH - Plate Gauntlets
				i(155500),	-- 8.0 PH - Cloth Gloves
				i(155501),	-- 8.0 PH - Mail Gauntlets
				i(155502),	-- 8.0 PH Plate Helm \\ Nazmani War Crown
				i(155503),	-- 8.0 PH - Cloth Hood
				i(155504),	-- 8.0 PH - Mail Helm
				i(155505),	-- 8.0 PH - Leather Helm
				i(155506),	-- 8.0 PH - Plate Legguards
				i(155507),	-- 8.0 PH - Cloth Leggings
				i(155508),	-- 8.0 PH - Mail Leggings
				i(155509),	-- 8.0 PH - Leather Breeches
				i(155511),	-- 8.0 PH - Leather Spaulders
				i(155512),	-- 8.0 PH - Plate Shoulders
				i(155513),	-- 8.0 PH - Cloth Mantle
				i(155514),	-- 8.0 PH - Mail Monnion
				i(155515),	-- 8.0 PH - Plate Girdle
				i(155516),	-- 8.0 PH - Cloth Cord
				i(155517),	-- 8.0 PH - Mail Belt
				i(155518),	-- 8.0 PH - Leather Belt
				i(155523),	-- 8.0 PH Weapon - 1H Axe Agi
				i(155525),	-- 8.0 PH Weapon - 1H Axe Int
				i(155526),	-- 8.0 PH - Weapon - 2H Axe
				i(155527),	-- 8.0 PH Weapon - Bow
				i(155528),	-- 8.0 PH Weapon - Crossbow
				i(155529),	-- 8.0 PH Weapon - 1H Dagger Agi
				i(155530),	-- 8.0 PH Weapon - 1H Dagger Int
				i(155531),	-- 8.0 PH Weapon - 1H Fist Int
				i(155532),	-- 8.0 PH Weapon - 1H Fist Str
				i(155533),	-- 8.0 PH Weapon - 1H Fist Agi
				i(155534),	-- 8.0 PH - Weapon - Gun
				i(155535),	-- 8.0 PH Weapon - 1H Mace Agi
				i(155536),	-- 8.0 PH Weapon - 1H Mace Str
				i(155537),	-- 8.0 PH Weapon - 1H Mace Int
				i(155538),	-- 8.0 PH Weapon - 2H Mace Agi
				i(155539),	-- 8.0 PH Weapon - 2H Mace Str
				i(155540),	-- 8.0 PH Weapon - 2H Mace Int
				i(155541),	-- 8.0 PH Weapon - 2H Polearm Agi
				i(155542),	-- 8.0 PH Weapon - 2H Polearm Str
				i(155544),	-- 8.0 PH Weapon - 2H Staff Agi
				i(155546),	-- 8.0 PH Weapon - 2H Staff Int
				i(155547),	-- 8.0 PH Weapon - 1H Sword Agi
				i(155548),	-- 8.0 PH - Weapon - 2H Sword
				i(155549),	-- 8.0 PH Weapon - 1H Sword Int
				i(155550),	-- 8.0 PH Weapon - 2H Sword Str
				i(155552),	-- 8.0 PH Shield
				i(155553),	-- 8.0 PH - Shield
				i(155554),	-- 8.0 PH - Offhand
				i(155555),	-- 8.0 PH Neck
				i(155557),	-- 8.0 PH Cloak
				i(155558),	-- 8.0 PH Neck
				i(155559),	-- 8.0 PH Neck
				i(155561),	-- 8.0 PH - Ring
				i(155562),	-- 8.0 PH Cloak
				i(155563),	-- 8.0 PH Cloak
				i(155566),	-- 8.0 PH - Unused - Trinket \\ PH Unused \\ Aaron's Crest
				i(155575),	-- Sanguine Lich's Fetish
				i(155576),	-- Zardax's Cracked Phylactery
				i(155577),	-- Bone Lich Bijou
				i(155578),	-- Death Defier's Fetish
				i(155579),	-- Crimson Lich Bijou
				i(155580),	-- Kel'vax's Splintered Phylactery
				i(157769),	-- Sword of the Lone Victor
				i(157809),	-- 8.0 PH - Cloth Wristwraps
				i(157810),	-- 8.0 PH - Plate Wristwraps
				i(157811),	-- 8.0 PH - Mail Wristwraps
				i(157812),	-- 8.0 PH - Leather Wristwraps
				i(157813),	-- 8.0 PH - Trinket
				i(157818),	-- 8.0 PH - Weapon - Warglaive
				i(158080),	-- 8.0 PH Weapon - 1H Axe Str
				i(158081),	-- 8.0 PH Weapon - 1H Axe Int
				i(158082),	-- 8.0 PH Weapon - 2H Axe Str
				i(158083),	-- 8.0 PH Weapon - Bow
				i(158113),	-- 8.0 PH Weapon - Crossbow
				i(158119),	-- 8.0 PH Weapon - Gun
				i(158156),	-- 8.0 PH Trinket
				i(158157),	-- 8.0 PH Trinket
				i(158158),	-- 8.0 PH Trinket
				i(158165),	-- 8.0 PH Trinket
				i(158166),	-- 8.0 PH Trinket
				i(158167),	-- 8.0 PH Trinket
				i(158194),	-- Helm of the Sands
				i(158214),	-- 8.0 PH - Unused - Trinket \\ 8.0 PH - Trinket
				i(158217),	-- 8.0 PH - Unused - Trinket \\ 8.0 PH - Trinket
				i(158221),	-- 8.0 PH - Unused - Trinket \\ 8.0 PH - Trinket
				i(158222),	-- 8.0 PH - Unused - Trinket \\ 8.0 PH - Trinket
				i(158223),	-- 8.0 PH - Unused - Trinket \\ 8.0 PH - Trinket
				i(158310),	-- Soulspun Carapace \\ 8.0 - PH Dungeon - Plate CHEST
				i(158312),	-- Girdle of the Everlasting Guardian \\ 8.0 - PH Dungeon - Plate WAIST
				i(158316),	-- 8.0 - PH Dungeon - Leather HEAD
				i(158331),	-- 8.0 PH - Unused - Shield \\ 8.0 PH Shield Int
				i(158333),	-- Fleet Captain's Buffcoat \\ 8.0 - PH Dungeon - Leather CHEST
				i(158334),	-- 8.0 - PH Dungeon - Plate FEET
				i(158335),	-- 8.0 - PH Dungeon - Leather FEET
				i(158336),	-- Venerated Raptorhide Gloves \\ 8.0 - PH Dungeon - Leather HAND
				i(158337),	-- 8.0 - PH Dungeon - Plate HAND
				i(158339),	-- 8.0 - PH Dungeon - Plate HEAD
				i(158340),	-- 8.0 - PH Dungeon - Mail HEAD
				i(158342),	-- 8.0 - PH Dungeon - Leather LEGS
				i(158343),	-- 8.0 - PH Dungeon - Plate SHOULDER
				i(158352),	-- Pummeler Mechanic's Spaulders \\ 8.0 - PH Dungeon - Leather SHOULDER
				i(158354),	-- Crow's Nest Safety Cord \\ 8.0 - PH Dungeon - Leather WAIST
				i(158358),	-- Furnace-Fire Breastplate \\ 8.0 - PH Dungeon - Plate CHEST
				i(158365),	-- 8.0 - PH Dungeon - Mail HAND
				i(158372),	-- 8.0 PH - Unused - Shield \\ 8.0 PH Shield Str
				i(158384),	-- Rastari Breastplate \\ Rastari Chestguard \\ 8.0 PH Plate Chestplate
				i(158385),	-- Torcalin Chainmail \\ Torcalin Chestguard \\ 8.0 PH Mail Vest
				i(158386),	-- Jambani Jerkin \\ 8.0 PH Leather Vest
				i(158395),	-- Rastari Helm \\ Rastari Helmet \\ 8.0 PH Plate Helm
				i(158396),	-- Zanchuli Cowl \\ Zanchuli Headdress \\ 8.0 PH Cloth Hood
				i(158397),	-- Torcalin Coif \\ Torcalin Helm \\ 8.0 PH Mail Helm
				i(158398),	-- Jambani Hood \\ Jambani Helm \\ 8.0 PH Leather Helm
				i(158403),	-- Zanchuli Raiment \\ Zanchuli Wraps \\ 8.0 PH Cloth Robe
				i(158404),	-- Jambani Shoulderpads \\ Jambani Spaulders \\ 8.0 PH Leather Spaulders
				i(158405),	-- Rastari Pauldrons \\ Rastari Shoulderplates \\ 8.0 PH Plate Shoulders
				i(158406),	-- Zanchuli Mantle \\ 8.0 PH Cloth Mantle
				i(158407),	-- Torcalin Spaulders \\ Torcalin Shoulderguards \\ 8.0 PH Mail Monnion
				i(158416),	-- Rastari Breastplate \\ 8.0 PH Plate Chestplate
				i(158417),	-- Torcalin Chainmail \\ 8.0 PH Mail Vest
				i(158418),	-- Jambani Jerkin \\ 8.0 PH Leather Vest
				i(158427),	-- Rastari Helm \\ 8.0 PH Plate Helm
				i(158428),	-- Zanchuli Cowl \\ 8.0 PH Cloth Hood
				i(158429),	-- Torcalin Coif \\ 8.0 PH Mail Helm
				i(158430),	-- Jambani Hood \\ 8.0 PH Leather Helm
				i(158435),	-- Zanchuli Raiment \\ 8.0 PH Cloth Robe
				i(158436),	-- Jambani Shoulderpads \\ 8.0 PH Leather Spaulders
				i(158437),	-- Rastari Pauldrons \\ 8.0 PH Plate Shoulders
				i(158438),	-- Zanchuli Mantle \\ 8.0 PH Cloth Mantle
				i(158439),	-- Torcalin Spaulders \\ 8.0 PH Mail Monnion
				i(158448),	-- 8.0 PH - Trinket
				i(158449),	-- 8.0 PH - Trinket
				i(158450),	-- 8.0 PH - Trinket
				i(158451),	-- 8.0 PH - Trinket
				i(158452),	-- 8.0 PH - Trinket
				i(158453),	-- 8.0 PH - Trinket
				i(158454),	-- 8.0 PH - Trinket
				i(158455),	-- 8.0 PH - Trinket
				i(158456),	-- 8.0 PH - Trinket
				i(158457),	-- 8.0 PH - Trinket
				i(158458),	-- 8.0 PH - Trinket
				i(158459),	-- 8.0 PH - Trinket
				i(158559),	-- 8.0 PH - Unused - Trinket \\ PH Unused \\ PH Trinket Str D
				i(158560),	-- 8.0 PH - Unused - Trinket \\ PH Unused \\ Assassin's Orders \\ PH Trinket Agi D
				i(158596),	-- 8.0 PH - Unused - Shield \\ PH Str Shield B
				i(158637),	-- 8.0 PH - Unused - Polearm \\ 8.0 PH - Weapon - Polearm
				i(158638),	-- 8.0 PH - Unused - 1H Fist \\ 8.0 PH - Weapon - Fist
				i(158940),	-- Nazmani Warplate Chestplate \\ Nazmani Warplate Breastplate \\ 8.0 PH Plate Chestplate
				i(158941),	-- Death-Pledged Chestguard \\ Death-Pledged Hauberk \\ 8.0 PH Mail Vest
				i(158942),	-- Ritual Flayer's Vest \\ Ritual Flayer's Tunic \\ 8.0 PH Leather Vest
				i(158951),	-- Nazmani Warplate Faceguard \\ Nazmani Warplate Helmet \\ 8.0 PH Plate Helm
				i(158952),	-- Loa Speaker's Hood \\ Loa Speaker's Headdress \\ 8.0 PH Cloth Hood
				i(158953),	-- Death-Pledged Helm \\ Death Pledged Helm \\ Death-Pledged Coif \\ 8.0 PH Mail Helm
				i(158954),	-- Ritual Flayer's Mask \\ Ritual Flayer's Helm \\ 8.0 PH Leather Helm
				i(158959),	-- Loa Speaker's Robes \\ Loa Speaker's Vestments \\ 8.0 PH Cloth Robe
				i(158960),	-- Ritual Flayer's Spaulders \\ Ritual Flayer's Mantle \\ 8.0 PH Leather Spaulders
				i(158961),	-- Nazmani Warplate Spaulders \\ Nazmani Warplate Shoulders \\ 8.0 PH Plate Shoulders
				i(158962),	-- Loa Speaker's Epaulets \\ 8.0 PH Cloth Mantle
				i(158963),	-- Death-Pledged Shoulderguards \\ 8.0 PH Mail Monnion
				i(158976),	-- Nazmani Warplate Chestplate \\ Nazmani Warplate Cuirass \\ 8.0 PH Plate Chestplate
				i(158977),	-- Death-Pledged Chestguard \\ Death-Pledged Chainmail \\ 8.0 PH Mail Vest
				i(158978),	-- Ritual Flayer's Vest \\ Ritual Flayer's Wraps \\ 8.0 PH Leather Vest
				i(158987),	-- Nazmani Warplate Faceguard \\ 8.0 PH Plate Helm
				i(158988),	-- Loa Speaker's Hood \\ Loa Speaker's Cowl \\ 8.0 PH Cloth Hood
				i(158989),	-- Death-Pledged Helm \\ Death Pledged Helm \\ Death-Pledged Headguard \\ 8.0 PH Mail Helm
				i(158990),	-- Ritual Flayer's Mask \\ 8.0 PH Leather Helm
				i(158995),	-- Loa Speaker's Robes \\ Loa Speaker's Raiment \\ 8.0 PH Cloth Robe
				i(158996),	-- Ritual Flayer's Spaulders \\ Ritual Flayer's Shoulderpads \\ 8.0 PH Leather Spaulders
				i(158997),	-- Nazmani Warplate Spaulders \\ Nazmani Warplate Pauldrons \\ 8.0 PH Plate Shoulders
				i(158998),	-- Loa Speaker's Epaulets \\ Loa Speaker's Shoulderpads \\ 8.0 PH Cloth Mantle
				i(158999),	-- Death-Pledged Shoulderguards \\ Death-Pledged Spaulders \\ 8.0 PH Mail Monnion
				i(159004),	-- 8.0 PH Cloth Wristwraps
				i(159005),	-- 8.0 PH Plate Wristwraps
				i(159006),	-- 8.0 PH Mail Wristwraps
				i(159007),	-- 8.0 PH Leather Wristwraps
				i(159059),	-- 8.0 PH Mail Leggings
				i(159113),	-- 8.0 PH 1H Axe
				i(159209),	-- Eventide Bracers \\ PH Mail Wrist
				i(159225),	-- Silverleaf Sabatons \\ 8.0 - PH Dungeon - Plate FEET
				i(159246),	-- Cuffs of Drowned Resolve \\ 8.0 - PH Dungeon - Cloth WRIST
				i(159248),	-- Cordage-Knot Mantle \\ Cordage-Knotted Mantle \\ 8.0 - PH Dungeon - Cloth SHOULDER
				i(159249),	-- Gambeson of the City Watch \\ 8.0 - PH Dungeon - Cloth CHEST
				i(159258),	-- Leggings of Oscillating Polarity \\ 8.0 - PH Dungeon - Cloth LEGS
				i(159261),	-- Crown of Fluorescent Flora \\ 8.0 - PH Dungeon - Cloth HEAD
				i(159271),	-- Cap of the Wild Pyromancer \\ 8.0 - PH Dungeon - Cloth HEAD
				i(159276),	-- Vestments of Deteriorating Grace \\ 8.0 - PH Dungeon - Cloth CHEST
				i(159281),	-- 8.0 - PH Dungeon - Cloth WAIST
				i(159286),	-- 8.0 - PH Dungeon - MC Cloak
				i(159290),	-- Cloak of the Maritime Guard \\ 8.0 - PH Dungeon - MC Cloak
				i(159291),	-- Shroud of the Ophidian \\ 8.0 - PH Dungeon - MC Cloak
				i(159296),	-- 8.0 - PH Dungeon - Leather HAND
				i(159315),	-- Spaulders of the Lightning Storm \\ 8.0 - PH Dungeon - Leather SHOULDER
				i(159316),	-- Lookout's Steadying Bracers \\ 8.0 - PH Dungeon - Leather WRIST
				i(159319),	-- Desert Queen's Molting \\ Desert Queen Molting \\ 8.0 - PH Dungeon - Leather CHEST
				i(159326),	-- Blood Elder's Veil \\ 8.0 - PH Dungeon - Leather HEAD
				i(159342),	-- Hood of Dreadful Maladies \\ 8.0 - PH Dungeon - Leather HEAD
				i(159348),	-- Deranged Alchemist's Headgear \\ 8.0 - PH Dungeon - Mail HEAD
				i(159351),	-- Blacktooth Chainmail Britches \\ 8.0 - PH Dungeon - Mail LEGS
				i(159355),	-- Heavy Pivot-Assisters \\ 8.0 - PH Dungeon - Mail FEET
				i(159365),	-- Mindwarped Crown \\ 8.0 - PH Dungeon - Mail HEAD
				i(159373),	-- Wreathing Constrictor Grips \\ Sucker Grips \\ 8.0 - PH Dungeon - Mail HAND
				i(159378),	-- Hauberk of Sanguine Fervor \\ 8.0 - PH Dungeon - Mail CHEST
				i(159387),	-- Marine's Chain Buffcoat \\ 8.0 - PH Dungeon - Mail CHEST
				i(159394),	-- Cincture of Coruscating Energy \\ 8.0 - PH Dungeon - Mail WAIST
				i(159401),	-- Nettlebite Mantle \\ 8.0 - PH Dungeon - Mail SHOULDER
				i(159405),	-- 8.0 - PH Dungeon - Plate HAND
				i(159406),	-- 8.0 - PH Dungeon - Plate HEAD
				i(159417),	-- Bracers of Corrupted Waters \\ 8.0 - PH Dungeon - Plate WRIST
				i(159438),	-- Bellows-Face Helm \\ Bellows Faced Helm \\ 8.0 - PH Dungeon - Plate HEAD
				i(159447),	-- Krolusk Plate Spaulders \\ 8.0 - PH Dungeon - Plate SHOULDER
				i(159453),	-- Dark Reaper's Gauntlets \\ 8.0 - PH Dungeon - Plate HAND
				i(159454),	-- Stained-Steel Pot Helm \\ 8.0 - PH Dungeon - Plate HEAD
				i(159613),	-- 8.0 - PH Dungeon - AGI Trinket
				i(159629),	-- Token of Ironside Blessing \\ 8.0 - PH Dungeon - Str Trinket
				i(159766),	-- 8.0 PH Trinket
				i(159935),	-- 8.0 PH Trinket
				i(159944),	-- Lastwind Robes \\ 8.0 PH Cloth Robe
				i(159945),	-- Scorching Sands Wraps \\ Scorching Sands Jerkin \\ 8.0 PH Leather Vest
				i(159946),	-- Resilient Outcast's Hauberk \\ Resilient Outcast's Chestguard \\ 8.0 PH Mail Vest
				i(159947),	-- Exiled Veteran's Cuirass \\ 8.0 PH Plate Chestplate
				i(159948),	-- Resilient Outcast's Shoulderguards \\ Resilient Outcast's Spaulders \\ 8.0 PH Mail Monnion
				i(159949),	-- Lastwind Mantle \\ Lastwind Epaulets \\ 8.0 PH Cloth Mantle
				i(159950),	-- Exiled Veteran's Pauldrons \\ 8.0 PH Plate Shoulders
				i(159951),	-- Scorching Sands Shoulderguards \\ Scorching Sands Spaulders \\ 8.0 PH Leather Spaulders
				i(159952),	-- Scorching Sands Mask \\ 8.0 PH Leather Helm
				i(159953),	-- Resilient Outcast's Coif \\ Resilient Outcast's Headguard \\ 8.0 PH Mail Helm
				i(159954),	-- Lastwind Hood \\ 8.0 PH Cloth Hood
				i(159955),	-- Exiled Veteran's Helm \\ 8.0 PH Plate Helm
				i(160060),	-- Death Bearer's Shroud \\ Drust Commander's Drape
				i(160217),	-- Gloves of the Sacred Hall \\ PH Name
				i(160264),	-- 8.0 PH - Unused - Trinket \\ PH Unused \\ PH Trinket Str E
				i(155863),	-- Gilded-Claw Gloves \\ Fang-Fingered Glove
				i(155865),	-- Handwraps of Jagged Incisions \\ 8.0 - PH Dungeon - Cloth HAND \\ Shadesilk Gloves
				i(155867),	-- Coif of Invigorating Tethers \\ Coif of Entwined Fates
				i(155870),	-- Pauldrons of the Ruinous Herald \\ Pauldrons of the Ruinious Herald
				i(155871),	-- Devilsaur Worshiper's Mantle \\ 8.0 - PH Dungeon - Cloth SHOULDER \\ Mantle of the Tyrant Loa
				i(155872),	-- Pauldrons of Fanatical Consumption \\ Pauldrons of Alchemical Transfusion \\ Pauldrons of Hallowed Ossein
				i(155873),	-- Cord of Spiritual Direction \\ 8.0 - PH Dungeon - Cloth WAIST \\ Zealot's Shadow Sash \\ Zealot's Gilded Sash
				i(155874),	-- Belt of Transmufusion \\ Belt of Enforced Continuance
				i(155875),	-- Thrice-Stitched Wristguards
				i(160756),	-- Dread Corsair Breastplate \\ Dread Corsair Breasplate
				i(160757),	-- Stormchaser Chainmail
				i(160758),	-- Darkwater Tunic
				i(160759),	-- Dread Corsair Greathelm
				i(160760),	-- Tidespeaker Circlet
				i(160761),	-- Stormchaser Coif
				i(160762),	-- Darkwater Hood
				i(160763),	-- Tidespeaker Vestments
				i(160764),	-- Darkwater Shoulderpads
				i(160765),	-- Dread Corsair Shoulderplates
				i(160766),	-- Tidespeaker Mantle
				i(160767),	-- Stormchaser Pauldrons
				i(160768),	-- Dread Corsair Breastplate \\ Dread Corsair Breasplate
				i(160769),	-- Stormchaser Chainmail
				i(160770),	-- Darkwater Tunic
				i(160771),	-- Dread Corsair Greathelm
				i(160772),	-- Tidespeaker Circlet
				i(160773),	-- Stormchaser Coif
				i(160774),	-- Darkwater Hood
				i(160775),	-- Tidespeaker Vestments
				i(160776),	-- Darkwater Shoulderpads
				i(160777),	-- Dread Corsair Shoulderplates
				i(160778),	-- Tidespeaker Mantle
				i(160779),	-- Stormchaser Pauldrons
				i(160780),	-- Waycrest Militia Breastplate
				i(160781),	-- Crone-Seeker's Breastplate
				i(160782),	-- Banisher Tunic
				i(160783),	-- Waycrest Militia Helmet
				i(160784),	-- Wickerwoven Crown
				i(160785),	-- Crone-Seeker's Helm
				i(160786),	-- Banisher Cowl
				i(160787),	-- Wickerwoven Robe
				i(160788),	-- Banisher Shoulderpads
				i(160789),	-- Waycrest Militia Spaulders
				i(160790),	-- Wickerwoven Amice
				i(160791),	-- Crone-Seeker's Shoulderguards
				i(160792),	-- Waycrest Militia Breastplate
				i(160793),	-- Crone-Seeker's Breastplate
				i(160794),	-- Banisher Tunic
				i(160795),	-- Waycrest Militia Helmet
				i(160796),	-- Wickerwoven Crown
				i(160797),	-- Crone-Seeker's Helm
				i(160798),	-- Banisher Cowl
				i(160799),	-- Wickerwoven Robe
				i(160800),	-- Banisher Shoulderpads
				i(160801),	-- Waycrest Militia Spaulders
				i(160802),	-- Wickerwoven Amice
				i(160803),	-- Crone-Seeker's Shoulderguards
				i(160805),	-- Sea Raider's Breastplate \\ Sea Raider's Breasplate
				i(160806),	-- Outrigger Chainmail
				i(160807),	-- Freebooter Tunic
				i(160808),	-- Sea Raider's Greathelm
				i(160809),	-- Navigator's Circlet
				i(160810),	-- Outrigger Helm
				i(160811),	-- Freebooter Cowl
				i(160812),	-- Navigator's Robes
				i(160813),	-- Freebooter Shoulderpads
				i(160814),	-- Sea Raider's Spaulders
				i(160815),	-- Navigator's Mantle
				i(160816),	-- Outrigger Pauldrons
				i(160817),	-- Sea Raider's Breastplate \\ Sea Raider's Breasplate
				i(160818),	-- Outrigger Chainmail
				i(160819),	-- Freebooter Tunic
				i(160820),	-- Sea Raider's Greathelm
				i(160821),	-- Navigator's Circlet
				i(160822),	-- Outrigger Helm
				i(160823),	-- Freebooter Cowl
				i(160824),	-- Navigator's Robes
				i(160825),	-- Freebooter Shoulderpads
				i(160826),	-- Sea Raider's Spaulders
				i(160827),	-- Navigator's Mantle
				i(160828),	-- Outrigger Pauldrons
				i(160834),	-- Lastwind Robes
				i(160835),	-- Scorching Sands Wraps
				i(160836),	-- Resilient Outcast's Hauberk
				i(160837),	-- Exiled Veteran's Cuirass
				i(160838),	-- Lastwind Hood
				i(160839),	-- Scorching Sands Mask
				i(160840),	-- Resilient Outcast's Coif
				i(160841),	-- Exiled Veteran's Helm
				i(160842),	-- Lastwind Mantle
				i(160843),	-- Scorching Sands Shoulderguards
				i(160844),	-- Resilient Outcast's Shoulderguards
				i(160845),	-- Exiled Veteran's Pauldrons
				i(160981),	-- 8.0 PH Weapon - 1H Warglaive Agi
				i(161306),	-- Ashvane Captain's Longsword \\ Ashvane-Captain's Longsword
				i(161307),	-- Ashvane Captain's Scimitar \\ Ashvane-Captain's Scimitar
				i(161410),	-- Spaulders of the Devouring Wastes \\ 8.0 Raid - World - Boss 3 - Plate SHOULDER 2 - Horde
				i(161490),	-- Copy Devilsaur Worshiper's Mantle
				i(161491),	-- Copy Cap of the Dashing Bilge Rat
				i(161495),	-- Copy Secret Spinner's Miter
				i(161496),	-- Copy Padded Shellpads
				i(161499),	-- Copy Standard Issue Mastermind Robes
				i(161504),	-- Copy Embellished Burial Shroud
				i(161505),	-- Copy Wrap of Gleaming Determination
				i(161508),	-- Copy Sea Dog Cover
				i(161510),	-- Copy Mantle of Fastidious Machinations
				i(161513),	-- Copy Fleet Captain's Buffcoat
				i(161515),	-- Copy Pummeler Mechanic's Spaulders
				i(161518),	-- Copy High Altitude Turban
				i(161522),	-- Copy Pauldrons of Alchemical Transfusion
				i(161523),	-- Copy Sweete's Jeweled Headgear
				i(161525),	-- Copy Spike-Stitched Hauberk
				i(161530),	-- Copy Loa-Blessed Chestguard
				i(161533),	-- Copy Deranged Alchemist's Headgear
				i(161535),	-- Copy Gaping Maw Shoulderguard
				i(161539),	-- Copy Loa-Ruiner's Casque
				i(161540),	-- Copy Pauldrons of the Ruinous Herald
				i(161541),	-- Copy Sea-Brawler's Greathelm
				i(161543),	-- Copy Soulspun Carapace
				i(161547),	-- Copy Furnace-Fire Breastplate
				i(161552),	-- Copy Lockjaw Shoulderplate
				i(161554),	-- Copy Devilsaur Worshiper's Mantle
				i(161556),	-- Copy Standard Issue Mastermind Robes
				i(161558),	-- Copy Sea Dog Cover
				i(161559),	-- Copy Mantle of Fastidious Machinations
				i(161561),	-- Copy Sweete's Jeweled Headgear
				i(161562),	-- Copy Spike-Stitched Hauberk
				i(161564),	-- Copy Pauldrons of the Ruinous Herald
				i(161565),	-- Copy Soulspun Carapace
				i(161670),	-- Dread Combatant's Cloak \\ PH Combatant's Cloak
				i(161673),	-- Dread Combatant's Ring \\ PH Combatant's Ring
				i(161776),	-- Dread Combatant's Barrier \\ PH Combatant's Barrier
				i(161777),	-- Dread Combatant's Reprieve \\ PH Combatant's Reprieve
				i(161778),	-- Dread Combatant's Cleaver \\ PH Combatant's Cleaver
				i(161779),	-- Dread Combatant's Longbow \\ PH Combatant's Longbow
				i(161780),	-- Dread Combatant's Spellblade \\ PH Combatant's Spellblade
				i(161781),	-- Dread Combatant's Gavel \\ PH Combatant's Gavel
				i(161782),	-- Dread Combatant's Bonegrinder \\ PH Combatant's Bonegrinder
				i(161783),	-- Dread Combatant's Pike \\ PH Combatant's Pike
				i(161784),	-- Dread Combatant's Staff \\ PH Combatant's Staff
				i(161785),	-- Dread Combatant's Slicer \\ PH Combatant's Slicer
				i(161786),	-- Dread Combatant's Wand \\ PH Combatant's Wand
				i(161787),	-- Dread Combatant's Decapitator \\ PH Combatant's Decapitator
				i(161788),	-- Dread Combatant's Rifle \\ PH Combatant's Rifle
				i(161789),	-- Dread Combatant's Greatsword \\ PH Combatant's Greatsword
				i(161790),	-- Dread Combatant's Warglaive \\ PH Combatant's Warglaive
				i(161791),	-- Dread Combatant's Warglaive \\ PH Combatant's Warglaive
				i(161792),	-- Dread Combatant's Shield Wall \\ PH Combatant's Shield Wall
				i(161793),	-- Dread Combatant's Reprieve \\ PH Combatant's Reprieve
				i(161795),	-- Dread Combatant's Shield Wall \\ PH Combatant's Shield Wall
				i(161796),	-- Dread Combatant's Barrier \\ PH Combatant's Barrier
				i(161797),	-- Dread Combatant's Staff \\ PH Combatant's Staff
				i(161798),	-- Dread Combatant's Pike \\ PH Combatant's Pike
				i(161799),	-- Dread Combatant's Rifle \\ PH Combatant's Rifle
				i(161800),	-- Dread Combatant's Longbow \\ PH Combatant's Longbow
				i(161801),	-- Dread Combatant's Bonegrinder \\ PH Combatant's Bonegrinder
				i(161802),	-- Dread Combatant's Wand \\ PH Combatant's Wand
				i(161803),	-- Dread Combatant's Slicer \\ PH Combatant's Slicer
				i(161804),	-- Dread Combatant's Gavel \\ PH Combatant's Gavel
				i(161805),	-- Dread Combatant's Spellblade \\ PH Combatant's Spellblade
				i(161809),	-- Dread Combatant's Greatcloak \\ PH Combatant's Greatcloak
				i(161810),	-- Dread Combatant's Band \\ PH Combatant's Band
				i(161811),	-- Dread Combatant's Medallion \\ PH Combatant's Medallion
				i(161812),	-- Dread Combatant's Emblem \\ PH Combatant's Emblem
				i(161813),	-- Dread Combatant's Insignia \\ PH Combatant's Insignia
				i(161815),	-- Dread Combatant's Silk Robe \\ PH Combatant's Silk Robe
				i(161816),	-- Dread Combatant's Plate Chestpiece \\ PH Combatant's Plate Chestpiece
				i(161817),	-- Dread Combatant's Chain Armor \\ PH Combatant's Mail Armor
				i(161818),	-- Dread Combatant's Leather Tunic \\ PH Combatant's Leather Tunic
				i(161819),	-- Dread Combatant's Plate Warboots \\ PH Combatant's Plate Warboots
				i(161820),	-- Dread Combatant's Silk Treads \\ PH Combatant's Silk Treads
				i(161821),	-- Dread Combatant's Chain Sabatons \\ PH Combatant's Mail Sabatons
				i(161822),	-- Dread Combatant's Leather Boots \\ PH Combatant's Leather Boots
				i(161823),	-- Dread Combatant's Leather Gloves \\ PH Combatant's Leather Gloves
				i(161824),	-- Dread Combatant's Plate Gauntlets \\ PH Combatant's Plate Gauntlets
				i(161825),	-- Dread Combatant's Silk Gloves \\ PH Combatant's Silk Gloves
				i(161826),	-- Dread Combatant's Chain Gauntlets \\ PH Combatant's Mail Gauntlets
				i(161827),	-- Dread Combatant's Silk Hood \\ PH Combatant's Silk Hood
				i(161828),	-- Dread Combatant's Chain Helm \\ PH Combatant's Mail Helm
				i(161829),	-- Dread Combatant's Leather Helm \\ PH Combatant's Leather Helm
				i(161830),	-- Dread Combatant's Plate Legguards \\ PH Combatant's Plate Legguards
				i(161831),	-- Dread Combatant's Silk Leggings \\ PH Combatant's Silk Leggings
				i(161832),	-- Dread Combatant's Chain Leggings \\ PH Combatant's Mail Leggings
				i(161833),	-- Dread Combatant's Leather Legguards \\ PH Combatant's Leather Legguards
				i(161834),	-- Dread Combatant's Leather Spaulders \\ PH Combatant's Leather Spaulders
				i(161835),	-- Dread Combatant's Plate Pauldrons \\ PH Combatant's Plate Pauldrons
				i(161836),	-- Dread Combatant's Silk Mantle \\ PH Combatant's Silk Mantle
				i(161837),	-- Dread Combatant's Chain Spaulders \\ PH Combatant's Mail Spaulders
				i(161838),	-- Dread Combatant's Plate Girdle \\ PH Combatant's Plate Girdle
				i(161839),	-- Dread Combatant's Silk Cord \\ PH Combatant's Silk Cord
				i(161840),	-- Dread Combatant's Chain Waistguard \\ PH Combatant's Mail Waistguard
				i(161841),	-- Dread Combatant's Leather Belt \\ PH Combatant's Leather Belt
				i(161842),	-- Dread Combatant's Silk Cuffs \\ PH Combatant's Silk Cuffs
				i(161843),	-- Dread Combatant's Plate Armguards \\ PH Combatant's Plate Armguards
				i(161844),	-- Dread Combatant's Chain Armbands \\ PH Combatant's Mail Armbands
				i(161845),	-- Dread Combatant's Leather Bindings \\ PH Combatant's Leather Bindings
				i(161847),	-- Dread Combatant's Silk Robe \\ PH Combatant's Silk Robe
				i(161848),	-- Dread Combatant's Plate Chestpiece \\ PH Combatant's Plate Chestpiece
				i(161849),	-- Dread Combatant's Chain Armor \\ PH Combatant's Mail Armor
				i(161850),	-- Dread Combatant's Leather Tunic \\ PH Combatant's Leather Tunic
				i(161851),	-- Dread Combatant's Plate Warboots \\ PH Combatant's Plate Warboots
				i(161852),	-- Dread Combatant's Silk Treads \\ PH Combatant's Silk Treads
				i(161853),	-- Dread Combatant's Chain Sabatons \\ PH Combatant's Mail Sabatons
				i(161854),	-- Dread Combatant's Leather Boots \\ PH Combatant's Leather Boots
				i(161855),	-- Dread Combatant's Leather Gloves \\ PH Combatant's Leather Gloves
				i(161856),	-- Dread Combatant's Plate Gauntlets \\ PH Combatant's Plate Gauntlets
				i(161857),	-- Dread Combatant's Silk Gloves \\ PH Combatant's Silk Gloves
				i(161858),	-- Dread Combatant's Chain Gauntlets \\ PH Combatant's Mail Gauntlets
				i(161859),	-- Dread Combatant's Silk Hood \\ PH Combatant's Silk Hood
				i(161860),	-- Dread Combatant's Chain Helm \\ PH Combatant's Mail Helm
				i(161861),	-- Dread Combatant's Leather Helm \\ PH Combatant's Leather Helm
				i(161862),	-- Dread Combatant's Plate Legguards \\ PH Combatant's Plate Legguards
				i(161863),	-- Dread Combatant's Silk Leggings \\ PH Combatant's Silk Leggings
				i(161864),	-- Dread Combatant's Chain Leggings \\ PH Combatant's Mail Leggings
				i(161865),	-- Dread Combatant's Leather Legguards \\ PH Combatant's Leather Legguards
				i(161866),	-- Dread Combatant's Leather Spaulders \\ PH Combatant's Leather Spaulders
				i(161867),	-- Dread Combatant's Plate Pauldrons \\ PH Combatant's Plate Pauldrons
				i(161868),	-- Dread Combatant's Silk Mantle \\ PH Combatant's Silk Mantle
				i(161869),	-- Dread Combatant's Chain Spaulders \\ PH Combatant's Mail Spaulders
				i(161870),	-- Dread Combatant's Plate Girdle \\ PH Combatant's Plate Girdle
				i(161871),	-- Dread Combatant's Chain Waistguard \\ PH Combatant's Mail Waistguard
				i(161872),	-- Dread Combatant's Leather Belt \\ PH Combatant's Leather Belt
				i(161873),	-- Dread Combatant's Silk Cuffs \\ PH Combatant's Silk Cuffs
				i(161874),	-- Dread Combatant's Plate Armguards \\ PH Combatant's Plate Armguards
				i(161875),	-- Dread Combatant's Chain Armbands \\ PH Combatant's Mail Armbands
				i(161876),	-- Dread Combatant's Leather Bindings \\ PH Combatant's Leather Bindings
				i(161877),	-- Dread Combatant's Silk Cord \\ PH Combatant's Silk Cord
				i(161900),	-- Dread Combatant's Signet \\ PH Combatant's Signet
				i(161901),	-- Dread Combatant's Seal \\ PH Combatant's Seal
				i(161903),	-- Dread Combatant's Badge \\ PH Combatant's Badge
				i(161904),	-- Dread Combatant's Drape \\ PH Combatant's Drape
				i(161905),	-- Dread Combatant's Cape \\ PH Combatant's Cape
				i(161989),	-- RESUE ME (DNT) \\ Embroidered Deep Sea Cloak of the Feather
				i(161992),	-- RESUE ME (DNT) \\ Embroidered Deep Sea Cloak of Resilience
				i(162003),	-- Dread Combatant's Pummeler \\ PH Combatant's Pummeler
				i(162014),	-- PH Gladiator's Reprieve
				i(162015),	-- PH Gladiator's Reprieve
				i(162018),	-- Dread Combatant's Shanker \\ PH Combatant's Shanker
				i(162019),	-- Dread Combatant's Shanker \\ PH Combatant's Shanker
				i(162034),	-- Dread Gladiator's Silk Vestments \\ PH Gladiator's Silk Vestments
				i(162035),	-- Dread Gladiator's Breastplate \\ PH Gladiator's Breastplate
				i(162036),	-- Dread Gladiator's Chain Hauberk \\ PH Gladiator's Chain Hauberk
				i(162037),	-- Dread Gladiator's Leather Jerkin \\ PH Gladiator's Leather Jerkin
				i(162038),	-- Dread Gladiator's Silk Helm \\ PH Gladiator's Silk Helm
				i(162039),	-- Dread Gladiator's Chain Coif \\ PH Gladiator's Chain Coif
				i(162040),	-- Dread Gladiator's Leather Cap \\ PH Gladiator's Leather Cap
				i(162041),	-- Dread Gladiator's Leather Shoulderguards \\ PH Gladiator's Leather Shoulderguards
				i(162042),	-- Dread Gladiator's Plate Spaulders \\ PH Gladiator's Plate Spaulders
				i(162043),	-- Dread Gladiator's Silk Epaulets \\ PH Gladiator's Silk Epaulets
				i(162044),	-- Dread Gladiator's Chain Pauldrons \\ PH Gladiator's Chain Pauldrons
				i(162046),	-- Dread Gladiator's Silk Vestments \\ PH Gladiator's Silk Vestments
				i(162047),	-- Dread Gladiator's Breastplate \\ PH Gladiator's Breastplate
				i(162048),	-- Dread Gladiator's Chain Hauberk \\ PH Gladiator's Chain Hauberk
				i(162049),	-- Dread Gladiator's Leather Jerkin \\ PH Gladiator's Leather Jerkin
				i(162050),	-- Dread Gladiator's Silk Helm \\ PH Gladiator's Silk Helm
				i(162051),	-- Dread Gladiator's Chain Coif \\ PH Gladiator's Chain Coif
				i(162052),	-- Dread Gladiator's Leather Cap \\ PH Gladiator's Leather Cap
				i(162053),	-- Dread Gladiator's Leather Shoulderguards \\ PH Gladiator's Leather Shoulderguards
				i(162054),	-- Dread Gladiator's Plate Spaulders \\ PH Gladiator's Plate Spaulders
				i(162055),	-- Dread Gladiator's Silk Epaulets \\ PH Gladiator's Silk Epaulets
				i(162056),	-- Dread Gladiator's Chain Pauldrons \\ PH Gladiator's Chain Pauldrons
				i(162058),	-- Dread Gladiator's Silk Chestwrap \\ PH Gladiator's Silk Chestwrap
				i(162059),	-- Dread Gladiator's Chestplate \\ PH Gladiator's Chestplate
				i(162060),	-- Dread Gladiator's Chainmail \\ PH Gladiator's Chainmail
				i(162061),	-- Dread Gladiator's Leather Chestguard \\ PH Gladiator's Leather Chestguard
				i(162062),	-- Dread Gladiator's Silk Cover \\ PH Gladiator's Silk Cover
				i(162063),	-- Dread Gladiator's Chain Headgear \\ PH Gladiator's Chain Headgear
				i(162064),	-- Dread Gladiator's Leather Skullguard \\ PH Gladiator's Leather Skullguard
				i(162065),	-- Dread Gladiator's Leather Pauldrons \\ PH Gladiator's Leather Pauldrons
				i(162066),	-- Dread Gladiator's Plate Shoulderguards \\ PH Gladiator's Plate Shoulderguards
				i(162067),	-- Dread Gladiator's Silk Shoulderpads \\ PH Gladiator's Silk Shoulderpads
				i(162068),	-- Dread Gladiator's Chain Mantle \\ PH Gladiator's Chain Mantle
				i(162070),	-- Dread Gladiator's Silk Chestwrap \\ PH Gladiator's Silk Chestwrap
				i(162071),	-- Dread Gladiator's Chestplate \\ PH Gladiator's Chestplate
				i(162072),	-- Dread Gladiator's Chainmail \\ PH Gladiator's Chainmail
				i(162073),	-- Dread Gladiator's Leather Chestguard \\ PH Gladiator's Leather Chestguard
				i(162074),	-- Dread Gladiator's Silk Cover \\ PH Gladiator's Silk Cover
				i(162075),	-- Dread Gladiator's Chain Headgear \\ PH Gladiator's Chain Headgear
				i(162076),	-- Dread Gladiator's Leather Skullguard \\ PH Gladiator's Leather Skullguard
				i(162077),	-- Dread Gladiator's Leather Pauldrons \\ PH Gladiator's Leather Pauldrons
				i(162078),	-- Dread Gladiator's Plate Shoulderguards \\ PH Gladiator's Plate Shoulderguards
				i(162079),	-- Dread Gladiator's Silk Shoulderpads \\ PH Gladiator's Silk Shoulderpads
				i(162080),	-- Dread Gladiator's Chain Mantle \\ PH Gladiator's Chain Mantle
				i(162083),	-- Dread Gladiator's Silk Armor \\ PH Gladiator's Silk Armor
				i(162084),	-- Dread Gladiator's Plate Armor \\ PH Gladiator's Plate Armor
				i(162085),	-- Dread Gladiator's Chain Vest \\ PH Gladiator's Chain Vest
				i(162086),	-- Dread Gladiator's Leather Harness \\ PH Gladiator's Leather Harness
				i(162087),	-- Dread Gladiator's Silk Cap \\ PH Gladiator's Silk Cap
				i(162088),	-- Dread Gladiator's Chain Skullcover \\ PH Gladiator's Chain Skullcover
				i(162089),	-- Dread Gladiator's Leather Headpiece \\ PH Gladiator's Leather Headpiece
				i(162090),	-- Dread Gladiator's Leather Shoulderpads \\ PH Gladiator's Leather Shoulderpads
				i(162091),	-- Dread Gladiator's Shoulderplates \\ PH Gladiator's Shoulderplates
				i(162092),	-- Dread Gladiator's Silk Shoulderguards \\ PH Gladiator's Silk Shoulderguards
				i(162093),	-- Dread Gladiator's Chain Epaulets \\ PH Gladiator's Chain Epaulets
				i(162095),	-- Dread Gladiator's Silk Regalia \\ PH Gladiator's Silk Regalia
				i(162096),	-- Dread Gladiator's Plate Armor \\ PH Gladiator's Plate Armor
				i(162097),	-- Dread Gladiator's Chain Vest \\ PH Gladiator's Chain Vest
				i(162098),	-- Dread Gladiator's Leather Harness \\ PH Gladiator's Leather Harness
				i(162099),	-- Dread Gladiator's Silk Cap \\ PH Gladiator's Silk Cap
				i(162100),	-- Dread Gladiator's Chain Skullcover \\ PH Gladiator's Chain Skullcover
				i(162101),	-- Dread Gladiator's Leather Headpiece \\ PH Gladiator's Leather Headpiece
				i(162102),	-- Dread Gladiator's Leather Shoulderpads \\ PH Gladiator's Leather Shoulderpads
				i(162103),	-- Dread Gladiator's Shoulderplates \\ PH Gladiator's Shoulderplates
				i(162104),	-- Dread Gladiator's Silk Shoulderguards \\ PH Gladiator's Silk Shoulderguards
				i(162105),	-- Dread Gladiator's Chain Epaulets \\ PH Gladiator's Chain Epaulets
				i(163725),	-- Dread Aspirant's Ring
				i(163726),	-- Dread Aspirant's Band
				i(163727),	-- Dread Aspirant's Signet
				i(163728),	-- Dread Aspirant's Seal
				i(162033),	-- Dread Gladiator's Plate Warhelm
				i(162045),	-- Dread Gladiator's Plate Warhelm
				i(162057),	-- Dread Gladiator's Plate Greathelm
				i(162069),	-- Dread Gladiator's Plate Greathelm
				i(162082),	-- Dread Gladiator's Plate Skullguard
				i(162094),	-- Dread Gladiator's Plate Skullguard
			}),
			filter(CONSUMABLES, {
				i(153602),	-- Ritual Scorpid Blood
				i(154131),	-- Florkin' Juju-juice
				i(154132),	-- Wikket Weaksauce
				i(154133),	-- Lorkin' Ikkin' Ooked Tik-Flipper
				i(155592),	-- Stolen Candy
				i(156872),	-- Loa Sweat
				i(156873),	-- Boozy Boot
				i(158466),	-- Fort Victory Sausage
				i(158926),	-- Fried Turtle Bits
				i(159867),	-- Rockskip Mineral Water
				i(159868),	-- Free-Range Goat's Milk
				i(159869),	-- Goldfield Sweet Yams
				i(159870),	-- Spiced Drustvar Rutabaga
				i(159871),	-- Buttered Turnip Porridge
				i(159872),	-- Braised Red Cabbage
				i(159873),	-- Hatherford Brunost
				i(159874),	-- Tiragarde Sharp
				i(159875),	-- Sour Vanilla Skyr
				i(159876),	-- Boralus Bleu
				i(159878),	-- Snowberry Custard \\ PH Tasty Dessert \\ Ravenberry Tart
				i(159879),	-- Glenbrook Pudding
				i(159897),	-- Crimsonwood Crabapple
				i(159898),	-- Sour Stormberries
				i(159899),	-- Cinnamon Raisin Pretzel
				i(159900),	-- Caraway Rye Loaf
				i(159919),	-- Salted Tideway Cod
				i(159920),	-- Fermented Greatshark
				i(160092),	-- Pineapple Pizza
				i(160483),	-- Steamed Clams
				i(160518),	-- Great Turtle Soup
				i(160554),	-- Stormsong Sourdough
				i(160611),	-- Woven Bacon \\ Slab of Smoked Bacon
				i(160942),	-- Abandoned Brew
				i(160989),	-- Dried Grape and Potato Salad
				i(161126),	-- Slab of Cream Cheese
				i(161127),	-- Unsalted Pine Nuts
				i(161314),	-- Tweets' Flavorful Flan
				i(161321),	-- Dark Smores
				i(161346),	-- Saurid Sticks
				i(161347),	-- Riverbeast Stew
				i(161348),	-- Carnivorous Chili Poppers \\ Carniverous Chili Poppers
				i(161373),	-- Seared Simmerfin
				i(161383),	-- Jancunda Nigiri
				i(161384),	-- Farraki Fritters
				i(162117),	-- Marie's Famous Cookies
				i(159750),	-- Tangy Haw'liday Cider
				i(162546),	-- Boiled Mire Whelk
				i(162547),	-- Raw Nazmani Mineral Water
				i(162550),	-- Brutoburger
				i(162555),	-- Zocalo Cheddar
				i(162556),	-- Zeb'ahari Kiwi \\ Zeb'Ahri Kiwi
				i(162557),	-- Salted Frog Legs
				i(162558),	-- Broiled Crocolisk
				i(162559),	-- Hearty Swamp Gumbo
				i(162561),	-- Glowfly Wedge Salad
				i(162562),	-- Crunchy Direbat Skewer
				i(162563),	-- Succulent Dunemelon
				i(162564),	-- Whistlebloom Pomegranate
				i(162565),	-- Dustmane Jerky
				i(162566),	-- Sun-Turned Curds
				i(162567),	-- Aged Alpaca Ricotta
				i(162568),	-- Desert Dry Rub P'terrorwings
				i(162569),	-- Sun-Parched Waterskin
				i(162570),	-- Pricklevine Juice
				i(162582),	-- Jungle Heat P'terrorwings
				i(162583),	-- Swamp Spice P'terrorwings
				i(163049),	-- Dark Bean Hash
				i(163050),	-- Sea-Bone Soup
				i(163051),	-- Seafarer's Biscuit
				i(163052),	-- Dry Goat Strips
				i(163053),	-- Southsea Breadfruit
				i(163054),	-- Stranglethorn Prickly Pear
				i(163056),	-- Greatstag Flank Steak
				i(163057),	-- Honey and Sausage Mash
				i(163058),	-- Jellied Deepsea Eel
				i(163060),	-- Fried Sweetbread
				i(163061),	-- Roasted Lasher Seeds
				i(163075),	-- Stormshore Haddock
				i(163076),	-- Murkfathom Herring
				i(163077),	-- Glacier Bay Halibut
				i(163081),	-- Spicy Barbecued Buzzard Wing
				i(163083),	-- Col. Tenders Spiced Chicken
				i(163100),	-- Kul Tiran Meatballs
				i(163101),	-- Drustvar Dark Roast
				i(163102),	-- Starhook Special Blend
				i(163104),	-- Sailor's Choice Coffee
				i(163105),	-- Peppered Trout Jerky
				i(163106),	-- Seasoned Stag Jerky
				i(163107),	-- Deep-Fried Butter Cookies
				i(163108),	-- Ravasaur Empanadas
				i(163109),	-- Frosted Umbernut Cake
				i(163114),	-- Leek Boiled Escargot
				i(163115),	-- Curried Axebeak Skewer
				i(163116),	-- Riversprout Samosa
				i(163117),	-- Zandalari Kingsteak
				i(163118),	-- Brutosaur Tikka
				i(163133),	-- Jungle Sunfruit
				i(163134),	-- No Morel Truffle
				i(163135),	-- Battersnoosh's Toadstool
				i(163137),	-- Oyster Shot
				i(163138),	-- Snorkle Dropper
				i(163140),	-- Viscous Ooze
				i(163143),	-- The Burning Black Beverage
				i(163145),	-- Throatkiller
				i(163147),	-- Rum Fatigue
				i(163149),	-- Anchor Drop
				i(163150),	-- Oil Drum
				i(163151),	-- Salvaged Flagon
				i(163152),	-- Te'kill'u
				i(163153),	-- Debby Drowner
				i(163154),	-- The Dark Below
				i(163155),	-- Cannon Shot
				i(163156),	-- Grapeshot
				i(163157),	-- Musket Muddler
				i(163158),	-- White Tortollan
				i(163159),	-- Golden Sunrise
				i(163160),	-- The Tempest
				i(163165),	-- Tiki Tumbler
				i(163181),	-- Firelord P'terrorwings
				i(163187),	-- Abyssal Bitters
				i(163192),	-- Leviathan Tears \\ Naga Sake
				i(163202),	-- Shark Bite
				i(163207),	-- Gral's Growler
				i(163208),	-- Uncle Sezahjin's Fried Chicken
				i(163387),	-- Toil and Trouble
				i(163388),	-- Shellini
				i(163391),	-- Anchormaker
				i(163395),	-- Sunken Pylon
				i(163399),	-- Sludge Fizz
				i(163407),	-- Drustvine
				i(163411),	-- Briartini
				i(163417),	-- Journey's End
				i(163637),	-- Old Ironforge
				i(163640),	-- Huangtze Pure Malt
				i(163641),	-- Brunnhildar Rime
				i(163642),	-- The Aerie 8 Year, Hinterlands Malt
				i(163643),	-- Haustvald 25 Year, Runewood Cask
				i(163709),	-- Crankchug's Brew
				i(164376),	-- Perfectly Ripe Banana
			}),
			filter(MISC, {
				i(144430),	-- Siege Engine Controller \\ REUSE \\ Pearlescent Clam
				i(147886),	-- Battle Token
				i(147887),	-- War Rally
				i(147888),	-- Portal: Forward Command
				i(147903),	-- REUSE \\ Sticky Starfish
				i(150734),	-- Air Stike
				i(150736),	-- Air Drop
				i(150760),	-- Town Hall Upgrade Token
				i(150955),	-- Slippery Peel
				i(151114),	-- Engineered Spyglass \\ REUSE \\ Heavy Shell
				i(151272),	-- Signet of Stormwind \\ Too Ripe Banana
				i(151848),	-- Iron Ore
				i(151870),	-- Scroll of Grall
				i(153416),	-- Soggy Groggy
				i(153418),	-- Broken Bottle
				i(153543),	-- Iron Ore
				i(153545),	-- Wood
				i(155006),	-- Rare - Kul Tiras Project A (NEEDS NAME)
				i(155007),	-- Rare - Kul Tiras Project B (NEEDS NAME)
				i(155008),	-- Rare - Kul Tiras Project C (NEEDS NAME)
				i(155585),	-- 8.0 PH Treasure Reward
				i(155659),	-- Scroll of Absolute Handsomeness
				i(155810),	-- Tirasreli Gourmet Chocolate \\ The Loken
				i(155823),	-- Icy Snowball
				i(156508),	-- Blessed Bandage
				i(156635),	-- Honey-Stained Notebook
				i(156640),	-- Vol'jin's Invulnerability Totem
				i(156641),	-- Zul's Saurid Ward
				i(156642),	-- Rastakhan's Eternal Flame Totem
				i(156643),	-- Talanji's Whispering Wisps Totem
				i(156646),	-- Bottled Azerite
				i(156661),	-- REUSE ME \\ HERB (PH)
				i(156737),	-- Forsaken Memento
				i(156924),	-- Silver Shrapnel
				i(156971),	-- Boots of Speed
				i(156972),	-- Scroll of Healing
				i(156988),	-- Rusted Longsword
				i(157032),	-- Cellar Key
				i(157542),	-- Portal Scroll of Specificity
				i(157776),	-- Dire Missive
				i(157777),	-- Report from Zuldazar
				i(157792),	-- Gilded Riverbeast Tusk
				i(157798),	-- Bilewing "Honey"
				i(157843),	-- PH Flavor - Unused \\ Verdant Breath
				i(157862),	-- Skycaller Gem Matrix
				i(158072),	-- Azerite-Dusted Blade
				i(158137),	-- 8.0 PH Reputation - Nazmir
				i(158138),	-- 8.0 PH Reputation - Zuldazar
				i(158140),	-- 8.0 PH Reputation - Vol'dun
				i(158141),	-- 8.0 PH Reputation - Tiragarde
				i(158142),	-- 8.0 PH Reputation - Drustvar
				i(158143),	-- 8.0 PH Reputation - Stormsong
				i(158144),	-- Mysterious Scroll \\ Dinomancy: Direhorn
				i(158145),	-- 8.0 PH Reputation - Tortollan
				i(158146),	-- 8.0 PH Reputation - Magni
				i(158147),	-- 8.0 PH Reputation - War Effort - Horde
				i(158148),	-- 8.0 PH Reputation - War Effort - Alliance
				i(158178),	-- Mangled Tortollan Scroll
				i(158209),	-- PH Prisoner C
				i(158227),	-- Shiny Metal \\ Scrap Metal
				i(158720),	-- Staff of the Frosty Cavedweller
				i(158877),	-- Bloodstained Message \\ Tattered Message
				i(158897),	-- Improved Flight Master's Whistle
				i(159145),	-- Empty Grog Bottle \\ Plundered Supplies
				i(159224),	-- Zuldazar Hearthstone
				i(159678),	-- Century Sauce
				i(159740),	-- Add Keystone Affix: Skittish
				i(159741),	-- Add Keystone Affix: Teeming
				i(159783),	-- Kane's Coin Purse
				i(159791),	-- Tidespray Linen Net \\ Sun-Bleached Linen Net
				i(159792),	-- Hooked Deep Sea Net
				i(159843),	-- Recruit Alliance Troop
				i(159844),	-- Recruit Horde Troop
				i(159961),	-- Set Keystone Map: Neltharion's Lair
				i(159962),	-- Set Keystone: Time Trial 3
				i(159963),	-- Set Keystone: Time Trial 2
				i(159964),	-- Set Keystone: Time Trial 1
				i(160102),	-- Lightprism
				i(160103),	-- Sanctified Scroll
				i(160104),	-- Links of Faith
				i(160105),	-- Trick Vest
				i(160106),	-- Hidden Cannon
				i(160111),	-- Sun Stone
				i(160112),	-- Bloom Shroom
				i(160113),	-- Root Ball
				i(160114),	-- Thornberry
				i(160218),	-- Portal Scroll of Specificity
				i(160268),	-- Bag of Armor (DNT)
				i(160322),	-- Pile of Ore
				i(160407),	-- Bot Buster Bombs
				i(160830),	-- [PH] Island Victory Item
				i(160438),	-- Seafarer's Dubloon
				i(160445),	-- Myra's Storm Silver Bucket \\ Blessed Storm Silver Ingot
				i(160446),	-- Ferry Pass
				i(160517),	-- Saurid Sticks \\ Sauridsticks
				i(160575),	-- PVP Reward 1
				i(160576),	-- PVP Reward 2
				i(160659),	-- Hunting Rifle
				i(162127),	-- River Clam Pearl
				i(162513),	-- Zenbaro's Empty Canteen
				i(162514),	-- Zenbaro's Canteen
				i(162518),	-- Mystical Flask
				i(162538),	-- Embellished Tusk Band \\ Gilded Tusk Ring of the First King
				i(162600),	-- Matching Tusk Rings
				i(162601),	-- Timeworn Pressed Flower
				i(162611),	-- Carefully Stashed Cache
				i(162631),	-- Souvenir Tiki Tumbler
				i(162644),	-- Winter Veil Gift
				i(162689),	-- Scroll of Town Portal
				i(162773),	-- REUSE ME
				i(162974),	-- Gently Shaken Gift
				i(162982),	-- A Steamy Romance Novel: Stormy Seas
				i(163017),	-- Pitch-Soaked Torch
				i(163029),	-- Misplaced Funereal Offering
				i(163031),	-- Crate of Unstable Dynamite
				i(163035),	-- Orders From Sylvanas
				i(163040),	-- Storm Glider
				i(163059),	-- Spoils of Jani
				i(163062),	-- Crude Saurid Effigy
				i(163064),	-- Silver Monkey Statue \\ Three Piece Silver Monkey Statue
				i(163065),	-- Tusk Wax
				i(163066),	-- Calcified Mosquito
				i(163067),	-- Jacunda Tooth
				i(163068),	-- Axebeak Feather
				i(163069),	-- Cursed Coin
				i(163070),	-- Rumpled Hat
				i(163071),	-- Stinkbomb Casing
				i(163074),	-- Hard White Pellet \\ Pile of Hard White Pellets
				i(163079),	-- Chipped Trophy Tusk
				i(163080),	-- Partially Eaten Sunfruit
				i(163084),	-- Solid Gold Cutlass \\ Gold-Plated Cutlass
				i(163085),	-- Onion Garland
				i(163086),	-- Crimsonwood Dentures
				i(163088),	-- Perfectly Ordinary Broomstick
				i(163089),	-- Long-Stemmed Pipe
				i(163090),	-- Cured Billow-Weed
				i(163093),	-- Witch's Ritual Chalk
				i(163095),	-- Golden Troll Berserker \\ Finely Crafted Tin Soldier
				i(163096),	-- Lead-Glass Hand Mirror
				i(163097),	-- Carved Rabbit Effigy
				i(163111),	-- Blackstone Cat Statue
				i(163112),	-- Imp's Tongue Charm
				i(163113),	-- Corroded Copper Kettle \\ Copper Tea Kettle
				i(163171),	-- De Gral Kantik
				i(163172),	-- Green Glowing Puffer
				i(163322),	-- Ian's Empty Bottle
				i(163324),	-- Brian's Broken Compass
				i(163325),	-- Ofer's Bound Journal
				i(163326),	-- Skye's Pet Rock
				i(163327),	-- Julien's Left Boot
				i(163328),	-- Navarro's Flask
				i(163329),	-- Zach's Canteen
				i(163372),	-- Damarcus' Backpack
				i(163373),	-- Rachel's Flute \\ Rachel's Tambourine
				i(163374),	-- Josh's Fang Necklace \\ Josh's Lucky Ferret's Foot
				i(163516),	-- Blue Glowing Puffer
				i(163517),	-- Red Glowing Puffer
				i(163518),	-- Purple Glowing Puffer
				i(163520),	-- Orange Glowing Puffer
				i(163521),	-- Yellow Glowing Puffer
				i(163535),	-- Outpost Upgrade
				i(163544),	-- Scroll of Agile Swimming
				i(163545),	-- Scroll of Ocean Ferocity
				i(163546),	-- Scroll of the Forked Tongue
				i(163591),	-- Golden Fleet Sea Charts
				i(163606),	-- Note From Leo
				i(163632),	-- Pristine Strings of Pearls
				i(163649),	-- Kul Tiran Harpoon
				i(163685),	-- Used Treasure Map
				i(163686),	-- A Double Eyepatch
				i(163687),	-- Poorly Written Sea Shanty
				i(163688),	-- A Peg Hand
				i(163692),	-- Scroll of Subsistence
				i(163694),	-- Scroll of Luxurious Recall
				i(163695),	-- Scroll of Inner Truth
				i(163707),	-- Scroll of Torga's Swiftness
				i(163734),	-- Bulging Coin Purse
				i(163751),	-- Demolisher Controller
				i(163752),	-- Signet of Orgrimmar
				i(163753),	-- Deepforged Plating
				i(163754),	-- Burstforce Explosive
				i(163755),	-- Forge Hammer
				i(163756),	-- A.T.O.M.I.K. Target Painter
				i(163757),	-- GG-118 Micro-Jetpack
				i(163758),	-- Miniaturizer
				i(163759),	-- Rabbit's Charm
				i(163760),	-- Unluckydo
				i(163761),	-- Ratwhisker Luckydo
				i(163762),	-- Netherwind Wand
				i(163763),	-- Arcane Mirror
				i(163764),	-- Phasing Stone
				i(163765),	-- Flashfire Brew
				i(163766),	-- Brainsmasher Brew
				i(163767),	-- Soulbinding Mist
				i(163768),	-- Spear-Mint Gum
				i(163769),	-- Springstep Cola
				i(163770),	-- "Healthy" Chips
				i(163771),	-- Clashgrain Bar
				i(163772),	-- Void Wand
				i(163773),	-- Dark Mirror
				i(163774),	-- Blackrock Plating
				i(163830),	-- Gale Rider
				i(163929),	-- Aether of the Abyss
				i(164253),	-- Steel Strongbox
				i(164254),	-- Steel Strongbox
				i(164263),	-- Steel Strongbox
				i(164264),	-- Steel Strongbox
				i(150546),	-- Dreadtick Larva
				i(153574),	-- Plain Hat Box
				i(155013),	-- REUSE ME (DNT)
				i(155014),	-- REUSE ME (DNT)
				i(155015),	-- REUSE ME (DNT)
				i(155016),	-- REUSE ME (DNT)
				i(155017),	-- REUSE ME (DNT)
				i(155018),	-- REUSE ME (DNT)
				i(156832),	-- Immaculate Quilboar Quill
				i(158325),	-- Soul Fragment
				i(159880),	-- Vale Flutterby
				i(160658),	-- Blob Deployer (DNT)
				i(163139),	-- Carefully Wrapped Hat Box
				i(163141),	-- Spooky Hat Box
				i(163142),	-- Ironbound Hat Box
				i(163144),	-- Striped Hat Box
				i(163146),	-- Fancy Hat Box
				i(163148),	-- Luxurious Hat Box
				i(164370),	-- Highmaul Ambassador's Garb
				i(158923),	-- Mythic Keystone
				i(161017),	-- Secott's Storm Silver Bucket
				i(161084),	-- Recovered Stormsong Produce
				i(161324),	-- Zeth'jir Tidespear
				i(161345),	-- Abhorrent Essence of the Abyss
				i(161878),	-- Tiny Coin Purse
			}),
			filter(MISC, {	-- Grey
				i(150755),	-- Bone Dust
				i(150756),	-- Woven Feathered Necklace
				i(151032),	-- Mummified Claw
				i(151033),	-- Juju Totem
				i(151034),	-- Ancient I.O.U.
				i(151035),	-- Soggy Voodoo Doll
				i(151038),	-- Alabaster Figurine
				i(152867),	-- Hefty Mudfish
				i(155595),	-- PH Flavor - Unused \\ Vicious Spike
				i(155596),	-- PH Flavor - Unused \\ Ivory Tusk
				i(155597),	-- PH Flavor - Unused \\ Dire Horn
				i(155599),	-- PH Flavor - Unused \\ Vibrant Feather
				i(155602),	-- PH Flavor - Unused \\ Tarnished Pelt
				i(155604),	-- PH Flavor - Unused \\ Diamond Flake
				i(155606),	-- PH Flavor - Unused \\ Intricate Ossicles
				i(155611),	-- PH Flavor - Unused \\ Lustruous Black Feather
				i(155612),	-- PH Flavor - Unused \\ Unblighted Wicker
				i(155613),	-- PH Flavor - Unused \\ Frothing Vapor
				i(155614),	-- PH Flavor - Unused \\ Resonant Powder
				i(155616),	-- PH Flavor - Unused \\ Lifeless Clay
				i(155619),	-- PH Flavor - Unused \\ Chitin Shell
				i(155621),	-- PH Flavor - Unused \\ Runed Ice Shard
				i(155623),	-- PH Flavor - Unused \\ Ghastly Ichor
				i(155624),	-- PH Flavor - Unused \\ Disquiet Earth
				i(155625),	-- PH Flavor - Unused \\ Vial of Venom
				i(155626),	-- PH Flavor - Unused \\ Hardy Hoof
				i(155627),	-- PH Flavor - Unused \\ Forked Mandibles
				i(155628),	-- PH Flavor - Unused \\ Cracked Mask
				i(155630),	-- PH Flavor - Unused \\ Trueflight Fletching
				i(155632),	-- PH Flavor - Unused \\ Viscous Webbing
				i(155633),	-- Matted Felt
				i(155634),	-- PH Flavor - Unused \\ Sleek Quills
				i(155637),	-- PH Flavor - Unused \\ Shattered Bindings
				i(155638),	-- PH Flavor - Unused \\ Jar of Truffles
				i(155639),	-- PH Flavor - Unused \\ Giant Frog Leg
				i(155640),	-- PH Flavor - Unused \\ Wicked Arched Claw
				i(155641),	-- PH Flavor - Unused \\ Keeled Breastbone
				i(155642),	-- PH Flavor - Unused \\ Armored Crab Claw
				i(155643),	-- PH Flavor - Unused \\ Flawless Fang
				i(155644),	-- PH Flavor - Unused \\ Silken White Feather
				i(155645),	-- PH Flavor - Unused \\ Flaky Scales
				i(155646),	-- PH Flavor - Unused \\ Sinewy Wing
				i(155647),	-- PH Flavor - Unused \\ Grim Skull Fetish
				i(155902),	-- Inert Stone
				i(158737),	-- PH Flavor - Unused \\ PH Flavor - Wicker Golem / Wicker Man - Drust
				i(158738),	-- PH Flavor - Unused \\ PH Flavor - Tiki Mask - Zandalari
				i(158739),	-- PH Flavor - Unused \\ PH Flavor - Brutosaur - Dinosaur
				i(158741),	-- PH Flavor - Unused \\ PH Flavor - Bloodfeaster - Insect
				i(158742),	-- PH Flavor - Unused \\ PH Flavor - Lion Seal
				i(158748),	-- PH Pet Reward \\ PH Flavor - Faceless
				i(158753),	-- PH Flavor - Unused \\ PH Flavor - Leviathan / Merciless One / Tentacle
				i(158755),	-- PH Flavor - Unused \\ PH Flavor - Devilsaur - Dinosaur
				i(158761),	-- PH Flavor - Unused \\ PH Flavor - Tiger
				i(158762),	-- PH Flavor - Unused \\ PH Flavor - Direhorn - Dinosaur
				i(158763),	-- PH Flavor - Unused \\ PH Flavor - Crab
				i(158764),	-- PH Flavor - Unused \\ PH Flavor - Flesh Beast - Void
				i(158766),	-- PH Flavor - Unused \\ PH Flavor - Diemetradon - Dinosaur
				i(158767),	-- PH Flavor - Unused \\ PH Flavor - Gorilla
				i(158768),	-- PH Flavor - Unused \\ PH Flavor - Carrion Bird - Bird
				i(158769),	-- Monkey's Paw
				i(158772),	-- PH Flavor - Unused \\ PH Flavor - Slime / Spore
				i(158774),	-- PH Flavor - Unused \\ PH Flavor - Kraken
				i(158776),	-- PH Flavor - Unused \\ PH Flavor - Hydra - Reptile
				i(158780),	-- PH Flavor - Unused \\ PH Flavor - Hornet / Wasp - Insect
				i(158784),	-- PH Flavor - Unused \\ PH Flavor - Bat
				i(158785),	-- PH Flavor - Unused \\ PH Flavor - Albatross / Sea Gull - Bird
				i(158786),	-- PH Flavor - Unused \\ PH Flavor - Slime - Blood Troll
				i(158787),	-- PH Flavor - Unused \\ PH Flavor - Air Elemental
				i(158791),	-- PH Flavor - Unused \\ PH Flavor - Crawg - Blood Troll
				i(158793),	-- PH Flavor - Unused \\ PH Flavor - Frog
				i(158798),	-- PH Flavor - Unused \\ PH Flavor - Abyssal Eel - Fish
				i(158799),	-- PH Flavor - Unused \\ PH Flavor - Wicker Beast - Drust
				i(158800),	-- PH Flavor - Unused \\ PH Flavor - Camel
				i(158802),	-- PH Flavor - Unused \\ PH Flavor - Boar
				i(158803),	-- PH Flavor - Unused \\ PH Flavor - Parrot / Axebeak - Bird \\ PH Flavor - Parrot - Bird
				i(158804),	-- Castor Gland \\ PH Flavor - Horde
				i(158805),	-- Soft Turtle Shell \\ PH Flavor - Beast  - Raven - Bird
				i(158807),	-- PH Flavor - Unused \\ PH Flavor - Doe / Gazelle
				i(158809),	-- PH Flavor - Unused \\ PH Flavor - Flesh Beast
				i(158812),	-- Glowfly Abdomen \\ PH Flavor - Ettin
				i(158813),	-- Sausage Casing \\ PH Flavor - Lightning Elemental
				i(158814),	-- Bulging Coin Purse \\ PH Flavor - Unused \\ PH Flavor - Swamp Plant
				i(158815),	-- Stonebreaker Scale \\ PH Flavor - Raptor - Dinosaur
				i(158816),	-- PH Flavor - Unused \\ PH Flavor - Dog
				i(158817),	-- Razorpetal \\ PH Flavor - Snake - Reptile
				i(158819),	-- Rat Tail \\ PH Flavor - Spider - Insect
				i(158822),	-- Lustrous Black Feather \\ PH Flavor - Wind Serpent
				i(158824),	-- PH Flavor - Unused \\ PH Flavor - Firefly - Insect
				i(158825),	-- PH Flavor - Unused \\ PH Flavor - K'thir
				i(158826),	-- Hardy Hoof \\ PH Flavor - Honey Elemental \\ PH Flavor
				i(158827),	-- PH Flavor - Unused \\ PH Flavor - Fish - Generic
				i(158829),	-- PH Flavor - Unused \\ PH Flavor - Cockroach - Insect
				i(158832),	-- Bushy Tail \\ PH Flavor - Kul Tiran
				i(158833),	-- PH Flavor - Unused \\ PH Flavor - Tiki Mask - Blood Troll
				i(158835),	-- PH Flavor - Unused \\ PH Flavor - Krolusk
				i(158836),	-- Barbed Stinger \\ PH Flavor - Pirate
				i(158837),	-- PH Flavor - Unused \\ PH Flavor - Hyena
				i(158842),	-- Nibbled Crystal \\ PH Flavor - Thunder Lizard - Reptile
				i(158843),	-- PH Flavor - Unused \\ PH Flavor - Bee - Insect
				i(158844),	-- Shimmerdust \\ PH Flavor - Saurolisk - Reptile
				i(158845),	-- PH Flavor - Unused \\ PH Flavor - Bear
				i(158846),	-- PH Flavor - Unused \\ PH Flavor - Basilisk
				i(158847),	-- PH Flavor - Unused \\ PH Flavor - Bog Plant
				i(158850),	-- Vibrant Plumage \\ PH Flavor - Pig
				i(158852),	-- PH Flavor - Unused \\ PH Flavor - Fox
				i(158854),	-- PH Flavor - Unused \\ PH Flavor - Goat
				i(158867),	-- Needlepoint Bill \\ PH Flavor - Ranishu
				i(158873),	-- Crystalline Honeymead \\ PH Flavor - Dire Troll Female - Blood Troll
				i(158727),	-- Decayed Equipment
				i(161198),	-- Old Sailor's Almanac
				i(161202),	-- Polished Brass Sextant
				i(161204),	-- Oily Glass Eyeball \\ Glass Eyeball
				i(161205),	-- Wooden Horse Carving
				i(161207),	-- Admiral's Black Rum \\ Admiral's Spiced Black Rum
				i(161209),	-- Coven Dream Catcher
				i(161210),	-- Homemade Child's Doll
				i(161211),	-- Ship-in-a-Bottle
				i(161212),	-- Wavespeaker's Star Chart
				i(161213),	-- Sagehold Hymnal
				i(158736),	-- Trophy Antlers
				i(158797),	-- Jar of Truffles
				i(158858),	-- Adder's Fork
				i(163847),	-- Silver Monkey Torso
				i(163849),	-- Bad Troll Love Poem
				i(163850),	-- Bloody Gamekeeper's Arm
				i(163854),	-- Weighty Bag of Sand
				i(163855),	-- Duplicate Pilgrimage Scroll
				i(163896),	-- Salty Pocket Lint
				i(163897),	-- Personal Spice Stash
				i(163898),	-- Tiny Loa Effigy
				i(163899),	-- Bone Sail Needle
				i(163900),	-- Handbook of Knot Tying
				i(163901),	-- Waterproof Flintbox
				i(163902),	-- Treasure Map Fragment
				i(163903),	-- Half-Eaten Sausage
				i(163904),	-- Leaky Grog Flask
				i(163905),	-- Corkscrew Dagger
				i(163906),	-- Counterfeit Kul Tiran Coins
				i(163907),	-- Wooden Dentures
				i(163908),	-- Loaded Deck of Cards
				i(163909),	-- Pirate Casino Chits
				i(163910),	-- Peg Leg Repair Kit
				i(163911),	-- Fake Eye Patch
				i(163912),	-- Scale Oil
				i(163913),	-- Flask of Expressed Poison
				i(163915),	-- Discontinued Zandalari Coins
				i(163916),	-- Dinosaur Training Treats
				i(163917),	-- Tusk File
				i(163919),	-- String of Broken Tusks
				i(163920),	-- Bracelet of Teeth
				i(163921),	-- Tiny Wicker Effigy
				i(160551),	-- Partially Digested Mystery Meat
				i(160560),	-- Piece of Wreckage
				i(160579),	-- Digested Krolusk Chitin
				i(160581),	-- Vulture Egg Shell
				i(160582),	-- Broken Lizard Bones
				i(160583),	-- Broken Sethrak Blade
				i(162664),	-- Dented Cuirass
				i(162666),	-- Ripped Satchel
				i(162667),	-- Farraki Funeral Urn
				i(162683),	-- Archaic Dinomancy Carvings
			}),
			filter(MISC, {	-- War Effort
				i(161121),	-- The Wolf's Den
				i(161385),	-- Stonefist Watch
				i(161449),	-- Swiftwind Post \\ Fairwind Post
				i(162119),	-- Hillcrest Pasture
				i(162543),	-- Veiled Grotto
				i(162576),	-- Mugamba Overlook
				i(162603),	-- Verdant Hollow
				i(162645),	-- Mistvine Ledge
				i(162975),	-- Grimwatt's Crash
				i(163038),	-- Vulture's Nest
				i(163193),	-- Outpost Upgrade
				i(163507),	-- Outpost Upgrade
				i(163570),	-- Outpost Upgrade
				i(163571),	-- Outpost Upgrade
				i(163594),	-- Outpost Upgrade
				i(163600),	-- Outpost Upgrade
				i(163610),	-- Outpost Upgrade
			}),
			n(PROFESSIONS, {
				i(152578),	-- Sack of Herbs
				i(152580),	-- Pile of Cloth
				i(152581),	-- Bag of Jewels
				i(152582),	-- Stack of Skins
				i(152633),	-- Alchemist Tincture - Caster(NEEDS NAME)
				i(152635),	-- Alchemist Tincture - Caster(NEEDS NAME)
				i(152822),	-- Monel-Hardened Hatchet \\ Mariner's Hatchet
				i(152823),	-- Monel-Hardened Battleaxe \\ Mariner's Battleaxe
				i(152882),	-- REUSE ME \\ Runed Norgal Rod
				i(153477),	-- REUSE ME (DNT) \\ Enchant Weapon - Threat Reduction (NEEDS NAME)
				i(153590),	-- REUSE ME (DNT) \\ Belt Enchant - Grapple (NEEDS NAME)
				i(153649),	-- Glyph of (NEEDS NAME)
				i(153650),	-- Glyph of (NEEDS NAME)
				i(153651),	-- Glyph of (NEEDS NAME)
				i(153652),	-- Glyph of (NEEDS NAME)
				i(153653),	-- Glyph of (NEEDS NAME)
				i(153654),	-- Glyph of (NEEDS NAME)
				i(153655),	-- Glyph of (NEEDS NAME)
				i(153656),	-- Glyph of (NEEDS NAME)
				i(153657),	-- Glyph of (NEEDS NAME)
				i(153658),	-- Glyph of (NEEDS NAME)
				i(153659),	-- Glyph of (NEEDS NAME)
				i(153660),	-- Glyph of (NEEDS NAME)
				i(154170),	-- RE-USE ME \\ Mallet of Thunderous Skins \\ Curved Diamond Awl Blade \\ Leatherworking Tool (NEEDS NAME)
				i(154699),	-- RESUE ME (DNT) \\ Embroidered Deep Sea Cloak of the Feather \\ Cloth Cloak - Fall Damage Reduction (NEEDS NAME)
				i(154702),	-- RESUE ME (DNT) \\ Embroidered Deep Sea Cloak of Resilience \\ Cloth Cloak - Camoflage (NEEDS NAME)
				i(154709),	-- RE-USE \\ Needle (NEEDS NAME)(DNT) \\ Needle (NEEDS NAME)
				i(156632),	-- Silas' Stone of Transportation \\ Silus' Stone of Transportation
				i(156633),	-- Silas' Potion of Prosperity \\ Silas' Potion of Luck \\ Silus' Potion of Luck
				i(156634),	-- Silas' Vial of Continuous Curing \\ Silas' Phial of Perpetual Potential \\ Silus' Phial of Perpetual Potential
				i(158292),	-- PH Cooking Reward \\ Mostly Intact Shell - PH Turtle Rare
				i(158381),	-- Tidespray Linen Bandage \\ Sun-Bleached Linen Bandage
				i(158382),	-- Deep Sea Bandage
				i(158383),	-- Tidespray Pet Bandage \\ Sun-Bleached Pet Bandage
				i(160059),	-- Amber Tanning Oil
				i(160398),	-- Choral Honey
				i(160399),	-- Wild Flour
				i(160400),	-- Foosaka
				i(160705),	-- Major's Frothy Coffee
				i(160709),	-- Fresh Potato
				i(160710),	-- Wild Berries
				i(160712),	-- Powdered Sugar
				i(162113),	-- Potion of Herb Tracking
				i(162115),	-- Magnetic Mining Pick
				i(162116),	-- Tempest Hide Pouch
				i(162120),	-- Platinum Whetstone
				i(162122),	-- Amber Rallying Horn
				i(162307),	-- REUSE ME \\ Recipe: Talanji's Salutary Scepter
				i(162310),	-- REUSE ME (DNT) \\ Recipe: Honorable Combatant's Salutary Scepter
				i(162311),	-- REUSE ME (DNT) \\ Recipe: Honorable Combatant's Salutary Scepter
				i(162348),	-- Schematic: Honorable Combatant's Discombobulator
				i(162349),	-- Schematic: Honorable Combatant's Discombobulator
				i(162350),	-- Schematic: Honorable Stormsteel Destroyer
				i(162351),	-- Schematic: Honorable Stormsteel Destroyer
				i(162365),	-- Recipe: Contract: Zandalari Empire
				i(162367),	-- Recipe: Contract: Talanji's Expedition
				i(162369),	-- Recipe: Contract: Voldunai
				i(162386),	-- Design: Honorable Combatant's Staff of Intuition
				i(162387),	-- Design: Honorable Combatant's Staff of Intuition
				i(162516),	-- Rasboralus
				i(162517),	-- U'taka
				i(163203),	-- Hypersensitive Azeritometer Sensor
				i(163783),	-- Mount Mugamba Spring Water \\ Mount Mugaba Spring Water
				i(163784),	-- Seafoam Coconut Water
				i(163785),	-- Canteen of Rivermarsh Rainwater
				i(163786),	-- Filtered Gloomwater
				i(163834),	-- Forgotten Techniques of Kul Tiras
				i(163835),	-- Forgotten Techniques of Zandalar
				i(163836),	-- Forgotten Techniques of Kul Tiras
				i(163837),	-- Forgotten Techniques of Zandalar
				i(163838),	-- Forgotten Techniques of Kul Tiras
				i(163839),	-- Forgotten Techniques of Zandalar
			}),
			filter(QUEST_ITEMS, {
				i(144031),	-- Hardened Shovel
				i(144040),	-- Great Sea Mackerel
				i(150273),	-- Fake Fossils
				i(150322),	-- Partially Digested Carrion
				i(150371),	-- Snagwood Spice
				i(150430),	-- Viscous Entrails
				i(150431),	-- Spotless Scarab Eye
				i(150432),	-- Full Venom Sac
				i(150433),	-- Unchipped Fang
				i(150738),	-- Overgrowth Lumber
				i(150751),	-- Prickly Fruit
				i(150757),	-- Mallet of Gee'dae
				i(150758),	-- Mallet of Mambu
				i(150932),	-- Akunda's Offering
				i(150937),	-- Blazing Torch
				i(151025),	-- Pristine Saurid Skin
				i(151039),	-- Teachings of Kimbul
				i(151057),	-- Signal Flare
				i(151089),	-- Cagney's Pocketwatch
				i(151091),	-- Kupa's Head
				i(151092),	-- Spirit Torch
				i(151111),	-- Fetish of Captivity
				i(151139),	-- Cannonball
				i(151140),	-- Alliance Weaponry
				i(151142),	-- Shipping Manifest
				i(151170),	-- Thick Aloe
				i(151183),	-- Mysterious Extract
				i(151185),	-- Ridgethorn
				i(151186),	-- Shrub Stalk
				i(151187),	-- Mysterious Crystal Powder
				i(151211),	-- Drained Battery
				i(151212),	-- Cracked Engine Block
				i(151236),	-- Experimental Salve
				i(151261),	-- Renford's Letter
				i(151342),	-- Warden's Key
				i(151364),	-- Hand-Painted War Mask
				i(151371),	-- Fistful of Razor Quills
				i(151372),	-- Royal Mojo
				i(151373),	-- Blood of Rezan
				i(151376),	-- Unusual Bone Fragment
				i(151419),	-- Cora's Rocket Pack
				i(151525),	-- Stolen Artifact
				i(151527),	-- Block Warden's Key
				i(151612),	-- Pure Ooze Sample
				i(151613),	-- Mire Terror Eye
				i(151616),	-- Driftwood
				i(151630),	-- Cracked Compass
				i(151648),	-- Engorged Raptor Parts
				i(151701),	-- Extraction Suit
				i(151723),	-- Idol of Kimbul
				i(151751),	-- Salty Coconut
				i(151752),	-- Calhoun's Key
				i(151762),	-- Ashvane Uniform
				i(151776),	-- Crate of Pork Product
				i(151778),	-- Shoak's Artifact
				i(151816),	-- Horde Banner
				i(151855),	-- Artifact of Gral
				i(151936),	-- Captive Bloodfly
				i(152100),	-- Scattered Grimiore Page
				i(152278),	-- Cracked Wand
				i(152279),	-- Chilled Shard
				i(152329),	-- Empowered Staff
				i(152390),	-- Fossilized Tooth
				i(152391),	-- Fossilized Claw
				i(152392),	-- Fossilized Egg Fragment
				i(152395),	-- Counter Spell Charm
				i(152404),	-- Mysterious Letter
				i(152405),	-- Corrupted Staff
				i(152406),	-- Mindnumbing Earworm
				i(152420),	-- Unintelligible Message
				i(152436),	-- Scroll of Illusion: Scamp
				i(152460),	-- Ancient Xibalan Tablet
				i(152471),	-- Animate Sphere
				i(152484),	-- Chadwick Paxton's Legs
				i(152584),	-- The Last Pearl
				i(152588),	-- Loa Offerings
				i(152599),	-- Skyterror Egg
				i(152613),	-- Sar'jun's Torch
				i(152655),	-- Restored Eye of Obsidian
				i(152656),	-- Eye of Obsidian Fragment
				i(152661),	-- Thistlevine Seeds
				i(152662),	-- Blood Troll Outfit
				i(152663),	-- Blood Troll Decorative Bands
				i(152664),	-- Blood Troll Bone Piercing
				i(152665),	-- Blood Troll Body Paint
				i(152672),	-- Half-Eaten Supplies
				i(152673),	-- Heiro's Lucky Tamborine
				i(152674),	-- Empty Canteen
				i(152724),	-- Child-sized Backpack
				i(152728),	-- Living Water Essence
				i(152729),	-- Redrock Slab
				i(152730),	-- Sumber's Totem
				i(152798),	-- Herald of Thun'ka's Shackles
				i(152801),	-- Grizzly Pelt
				i(152846),	-- Gnomish Telebomb
				i(152893),	-- Cloaking Device
				i(152896),	-- Grukmire's Head
				i(152898),	-- Saliva-Covered Rocks
				i(152899),	-- Ancient Pottery
				i(152911),	-- Thornspine Scales
				i(152924),	-- Thistled Rockfruit
				i(152925),	-- Chunks of Troll Flesh
				i(152926),	-- Gnawed Wood Logs
				i(152950),	-- Xumanu's Corrupted Totem
				i(152951),	-- Broken Tusk Fragment
				i(152952),	-- Plateau Lumber
				i(152983),	-- Bundle of Ranishu "Food"
				i(152985),	-- Head of Ra-Ra
				i(152987),	-- Canvas Scraps
				i(152990),	-- Kruga's Cage Key
				i(152994),	-- Stolen Tortollan Relic
				i(152997),	-- Torch
				i(153011),	-- Meiwatha's Locket
				i(153017),	-- Rough Forktongue Hide
				i(153030),	-- Flask of Vile Mojo
				i(153038),	-- Kruga's Poisoned Claw
				i(153112),	-- Scroll of Purging
				i(153356),	-- Blood-Corrupted Dagger
				i(153358),	-- Zem'lan's Ritual Book
				i(153359),	-- Captain Gulnaku's Treasure Map
				i(153360),	-- Pending's Personal Arcanometer
				i(153361),	-- Soggy Groggy
				i(153429),	-- Hand Grenade
				i(153481),	-- Shark Fin
				i(153496),	-- Tasty Treats
				i(153499),	-- Ferriny's Rocket Pack
				i(153508),	-- Tidepearl of the Storms
				i(153509),	-- Irontide Hat
				i(153515),	-- Naga Speartip
				i(153516),	-- Tidepearl Channeling Scroll
				i(153517),	-- Koloa's Monocle
				i(153520),	-- Primordium Shard
				i(153521),	-- Crystallized Heart
				i(153536),	-- Zothix's Head
				i(153537),	-- Animate Sphere
				i(153538),	-- Storm Essence
				i(153546),	-- Sethrak Relic
				i(153553),	-- Vision Stone
				i(153554),	-- Heart of Sethraliss
				i(153557),	-- Binding Totem
				i(153558),	-- Crystallized Heart
				i(153565),	-- Shackles
				i(153576),	-- Koba's Toy Train
				i(153577),	-- Stuffed Gonk
				i(153578),	-- Stuffed Elekk
				i(153579),	-- Heart of Sethraliss
				i(153580),	-- Tidepearl of the Winds
				i(153581),	-- Tidepearl of the Currents
				i(153675),	-- Scroll of Capsizing
				i(153677),	-- Pair of Bongos
				i(153696),	-- Zandalari Soul Fragment
				i(154112),	-- Jam'jen's Oath
				i(154113),	-- Mugabu's Oath
				i(154710),	-- Box of Koba's Toys
				i(154711),	-- Ahn'keg Food
				i(154712),	-- Lucille's Sewing Kit
				i(154714),	-- Kenzou's Dagger
				i(154723),	-- Emergency Bucket
				i(154733),	-- Sethrak Cache Key
				i(154890),	-- Partially Digested Horde Missive
				i(154895),	-- Lightning Catcher
				i(154900),	-- Lightning Bomb
				i(154920),	-- Pile of Lightning Bombs
				i(155591),	-- Mourning Glory
				i(155693),	-- Scouting Report
				i(155694),	-- Primordium Dust
				i(155808),	-- Positive Crystal Shard
				i(155809),	-- Negative Crystal Shard
				i(155833),	-- Primordium Crystal Key
				i(155834),	-- Alchemical Notes
				i(155835),	-- Small Keg of Beer
				i(155836),	-- Improvised Bandages
				i(155883),	-- Water Bucket
				i(155903),	-- Ritual Incantation \\ Drust Runestone
				i(155908),	-- Confiscated Gear
				i(155914),	-- Prison Cart Key
				i(156476),	-- Dock Whistle
				i(156485),	-- Bottle of Mojo
				i(156513),	-- Crude Hatchet
				i(156517),	-- Hastily Drawn Map
				i(156529),	-- Blood Orb
				i(156530),	-- Grapeshot Grenade
				i(156536),	-- Meaty Offering
				i(156538),	-- Songstone
				i(156542),	-- Void Disruptor
				i(156543),	-- Albatross Feather
				i(156544),	-- Bucket O' Bait
				i(156545),	-- Harold's Fishing Pole
				i(156548),	-- Meaty Offering
				i(156565),	-- Keeper Milov's Core
				i(156570),	-- Vulpera Fireflask
				i(156581),	-- Dirty Pocketwatch
				i(156599),	-- Marine Identification Badge
				i(156602),	-- Glob of Honey Slime
				i(156608),	-- SI:7 Intelligence Report
				i(156622),	-- Iridescent Pearl
				i(156626),	-- Mossfang Gland
				i(156627),	-- M.O.J.O.
				i(156660),	-- Shrubbery Bubble \\ Glimmer Globe
				i(156662),	-- Fast-Grow Potion
				i(156708),	-- Sticky Research Notes
				i(156719),	-- Bee Pheromones
				i(156736),	-- Sealed Assassin's Orders
				i(156799),	-- Royal Sundrop
				i(156807),	-- Loose Notes
				i(156826),	-- Empty Vial
				i(156835),	-- Delicious Honey
				i(156848),	-- Idol of Rezan
				i(156856),	-- Traitorous Zandalari Head
				i(156857),	-- Un-'vooded'-ed Aggression Formula
				i(156860),	-- Aggression Formula
				i(156870),	-- Samantha's Sword
				i(156878),	-- Freshwater Crab Meat
				i(156939),	-- Wand of Embers
				i(157535),	-- Keen Skinning Knife
				i(157537),	-- Deer Hide
				i(157538),	-- Pristine Skyhunter Feather \\ Pristine Skyraptor Feather
				i(157544),	-- Dire Missive
				i(157552),	-- Misplaced Flask
				i(157553),	-- Crystallized Honey
				i(157762),	-- Pilfered Cloth
				i(157767),	-- Base of the Anvil
				i(157768),	-- Body of the Anvil
				i(157774),	-- Horse Documentation
				i(157785),	-- Wand of Polymorph
				i(157786),	-- Freshly Plucked Feather
				i(157803),	-- Vial of Acid
				i(157849),	-- Foul-Smelling Flask
				i(157853),	-- Quilljet Ink
				i(157854),	-- Scroll of Ink Siphoning
				i(157860),	-- Dark Fur Braid
				i(158170),	-- Scroll of Recording
				i(158173),	-- Orders from the Emperor
				i(158177),	-- Pterrordax Salivary Gland
				i(158182),	-- Overcharged Skycaller's Staff
				i(158195),	-- Frothing Vial
				i(158206),	-- Charged Crystal
				i(158207),	-- Insulated Hammer
				i(158213),	-- Mysterious Box
				i(158293),	-- Failed Explosive Charge
				i(158460),	-- Neglected Memento
				i(158676),	-- Salvaged Flying Machine Parts \\ Salvaged Gyrocopter Parts
				i(158726),	-- Salvaged Equipment
				i(158728),	-- Roarke's Skullcracker
				i(158732),	-- Makeshift Cage Key
				i(158733),	-- Azerite-Infused Rock \\ Azerite Infused Rock \\ Azerite Infused Mud
				i(158889),	-- Makeshift Cuffs
				i(158899),	-- UNUSUED \\ Scrap metal
				i(158906),	-- Shimmerfin Flesh
				i(158907),	-- Moonstone Pendant
				i(158908),	-- Moonstone Weapon
				i(158925),	-- Moonwell Essence
				i(158933),	-- Depleted Soul Shard
				i(158934),	-- Empowered Soul Shard
				i(158935),	-- Depleted Soul Shard
				i(159142),	-- Tacha's Mystery Stew
				i(159680),	-- Smuggled Goods
				i(159710),	-- Goblin Mining Pick
				i(159716),	-- Heart of Azeroth
				i(159748),	-- Rune-Etched Bone
				i(159754),	-- Heart of Azeroth
				i(159760),	-- Sandfishing Pole
				i(159774),	-- Undying Torch
				i(159775),	-- Harv's Locket
				i(159778),	-- First Mate Jamboya's Medallion
				i(159780),	-- Burning Torch
				i(159832),	-- Gulch Beetle
				i(159943),	-- Inconspicuous Seaforium Bomb
				i(160027),	-- Ashenwood Relic
				i(160037),	-- Sethrak Weapon
				i(160038),	-- Owlseye Lens
				i(160040),	-- Highly Explosive Telescoping Fluid
				i(160041),	-- Jangly Bits
				i(160042),	-- Smoke Filter
				i(160043),	-- Standard Goblin Telescope
				i(160045),	-- Antidote Salve
				i(160056),	-- Dead Ringer
				i(160245),	-- R.A.D.A.R.
				i(160316),	-- Dark Iron Curiosity
				i(160444),	-- Pile of Storm Silver Ingots
				i(160516),	-- Pristine Quillrat Quill
				i(160584),	-- Greater Control Charm
				i(160586),	-- Blasting Stick
				i(160594),	-- Saw Dust \\ Metal Casing
				i(160596),	-- Taskmaster's Key
				i(160603),	-- Cracked Mine Sweeper \\ Mine Sweeper
				i(160706),	-- Enriched Coal
				i(160707),	-- Reinforced Shells
				i(160730),	-- Bubbling Totem
				i(160735),	-- Ashvane Garb
				i(160738),	-- Bundle of Dynamite
				i(160739),	-- Goblin Rocket Launcher
				i(160752),	-- Voodoo'ed Aggression Formula
				i(160754),	-- Void Essence
				i(160895),	-- Irontide Key
				i(160897),	-- Grizz's Lunchbox
				i(160986),	-- [NOT USED] Wolf's Den Report \\ Wolf's Den Report
				i(160991),	-- Rexxar's Report
				i(161343),	-- Azerite Crystal
				i(161436),	-- Elemental Pitch
				i(162001),	-- Heavy Iron Key
				i(162118),	-- Ayame's Head
				i(162347),	-- Kelsey's Water Walking Boots
				i(162602),	-- Everburning Torch
				i(162648),	-- Pristine Kodiak Pelt
				i(162687),	-- Apple Sack
				i(163182),	-- Genny's Wire Cutters
				i(163209),	-- Disco Jellyfish
				i(163214),	-- Neutralized Explosive Sample
				i(163386),	-- Bloodied Sentinel's Glaive
				i(163547),	-- Mission Report
				i(163562),	-- Blightcaller's Easy Death
				i(163622),	-- Mission Report
				i(163647),	-- Azerite Shard
				i(163856),	-- Ancient Pilgrimage Scrollcasing
				i(151611),	-- Dreadtick Mandible
				i(153571),	-- Poisoned Blow Dart
				i(155676),	-- Ancient Journal
				i(156686),	-- Elric's Shears
				i(156800),	-- Rough Map
				i(158882),	-- Charming Flute
				i(160977),	-- The Eyes of Sethraliss
				i(161424),	-- Ivory Handled Dagger
				i(161431),	-- Ancient Skinning Knife
				i(163681),	-- Focus
				i(164382),	-- Azerite Crystal
				i(164622),	-- Grayson's Note
			}),
			-- Projectile?
			i(151215),	-- Zandalari Blowgun Dart
			i(151216),	-- Blood Troll Blowgun Dart
			-- unclear
			i(159711),	-- Stormsong Pike
			i(159712),	-- Hunting Rifle
			i(159714),	-- Steel Sword
			i(159715),	-- Crossbow
			-- unclear armor/quest?
			i(159966),	-- Blouse of the Roving Scalawag
			i(159967),	-- Raider's Sailcloth
			i(159970),	-- Hull-Plate Half Helm
			i(159971),	-- Token of Ironside Blessing
			-- Somehow has sourceID attached
			i(162651),	-- Rusted Chains
			i(162654),	-- REUSE ME (DNT)
			i(162659),	-- Worn Mace
			i(162660),	-- Burnished Shield
			i(162661),	-- Battered Skull
			i(162662),	-- Etched Mask
			i(162663),	-- Broken Spearhead
			i(162671),	-- Broken Crossbow
			i(162674),	-- Cracked Helmet
			i(162676),	-- Ragged Furs
			i(162677),	-- Dull Throwing Knives
			i(162678),	-- Crimson Flail
			i(162679),	-- Misfired Pistol
			i(162680),	-- Ruined Collar
			i(162682),	-- Tarnished Longsword
		})),
		-- 8.1.0
		expansion(EXPANSION.BFA, patch(1,0), bubbleDownSelf({ ["timeline"] = { ADDED_8_1_0 } }, {
			i(164641),	-- Pile of Weapons
			i(164735),	-- Fallen Defender's Blade
			i(164745),	-- Pile of Weapons
			i(164912),	-- Azerite Ordnance
			i(164930),	-- Ranger's Arrow
			i(164946),	-- Fragments of Shattered Armor
			i(164991),	-- Evenshade's Note
			i(165229),	-- Dwarven Stout
			i(165351),	-- 8.1 Warfronts - Darkshore - Kaldorei Archer Arrow
			i(165358),	-- Stonefist Watch
			i(165359),	-- Windfall Cavern
			i(165360),	-- Stonetusk Watch
			i(165361),	-- Hillcrest Pasture
			i(165363),	-- Mudfisher Cove
			i(165364),	-- Vulture's Nest
			i(165365),	-- Grimwatt's Crash
			i(165366),	-- Verdant Hollow
			i(165367),	-- Veiled Grotto
			i(165368),	-- Mugamba Overlook
			i(165369),	-- Mistvine Ledge
			i(165430),	-- S.O.S. Relief Flare
			i(165510),	-- Copy Mutagenic Protofluid Handwraps
			i(165511),	-- Copy Cord of Animated Contagion
			i(165529),	-- Copy Bloodstorm Buckle
			i(165530),	-- Copy Pathogenic Legwraps
			i(165539),	-- 8.1 Raid - Zuldazar - Mail - Hand \\ Copy Gloves of Involuntary Amputation
			i(165544),	-- Copy Legguards of Coalescing Plasma
			i(165553),	-- Copy Greaves of Unending Vigil
			i(165554),	-- Copy Warboots of Absolute Eradication
			i(165575),	-- Copy Twitching Tentacle of Xalzaix
			i(165606),	-- Player Experience
			i(165609),	-- PH Horde Assault Longbow \\ Horde Assault Longbow
			i(165612),	-- PH Horde Assault Bonebreaker \\ Horde Assault Bonebreaker
			i(165615),	-- PH Horde Assault Wand \\ Horde Assault Wand
			i(165616),	-- PH Horde Assault Decapitator \\ Horde Assault Decapitator
			i(165618),	-- PH Horde Assault Focus \\ Horde Assault Focus
			i(165626),	-- PH Alliance Assault Battle Hammer \\ Alliance Assault Battle Hammer
			i(165630),	-- PH Alliance Assault Wand \\ Alliance Assault Wand
			i(165631),	-- PH Alliance Assault Hand Cannon \\ Alliance Assault Hand Cannon
			i(165633),	-- PH Alliance Assault Aegis \\ Alliance Assault Aegis
			i(165634),	-- PH Alliance Assault Censer \\ Alliance Assault Censer
			i(165658),	-- Chest of Useful Equipment
			i(165684),	-- Gurubashi Empire Greatcloak
			i(165685),	-- House of Nobles Cape
			i(165704),	-- Heritage of the Bronzebeard \\ Bulwark of the Mountain King
			i(165712),	-- Silver Strongbox
			i(165713),	-- Bronze Strongbox
			i(165715),	-- Silver Strongbox
			i(165716),	-- Bronze Strongbox
			i(165723),	-- Embiggifier Core
			i(165726),	-- Mission Report
			i(165727),	-- Outpost Upgrade
			i(165751),	-- Outpost Upgrade
			i(165752),	-- Mission Report
			i(165760),	-- War-Torn Cache
			i(165761),	-- Glittering War-Torn Cache
			i(165762),	-- Embiggifier Core
			i(165763),	-- 8.1 Raid - Zuldazar - Cloth - Wrist \\ Copy Void-Lashed Wristband
			i(165766),	-- 8.1 Raid - Zuldazar - Leather - Hand \\ Copy Gloves of Descending Madness
			i(165767),	-- Copy Bloodstorm Buckle
			i(165768),	-- 8.1 Raid - Zuldazar - Leather - Legs \\ Copy Pathogenic Legwraps
			i(165769),	-- 8.1 Raid - Zuldazar - Mail - Feet \\ Copy Fused Monstrosity Stompers
			i(165770),	-- Copy Rubywrought Sparkguards
			i(165771),	-- 8.1 Raid - Zuldazar - Plate - Waist \\ Copy Decontaminator's Greatbelt
			i(165772),	-- Copy Warboots of Absolute Eradication
			i(165773),	-- 8.1 Raid - Zuldazar - Healer - Trinket \\ Copy Inoculating Extract
			i(165774),	-- 8.1 Raid - Zuldazar - Shield \\ Copy Vector Deflector
			i(165775),	-- 8.1 Raid - Zuldazar - Str - Sword2H \\ Copy Voror, Gleaming Blade of the Stalwart
			i(165776),	-- 8.1 Raid - Zuldazar - Cloth - Head \\ Copy Horrific Amalgam's Hood
			i(165778),	-- Copy Quarantine Protocol Treads
			i(165779),	-- Copy Legguards of Coalescing Plasma
			i(165780),	-- 8.1 Raid - Zuldazar - Plate - Hand \\ Copy Waste Disposal Crushers
			i(165781),	-- Copy Greaves of Unending Vigil
			i(165782),	-- 8.1 Raid - Zuldazar - Ring \\ Copy Rot-Scour Ring
			i(165783),	-- 8.1 Raid - Zuldazar - Agi DPS - Trinket \\ Copy Frenetic Corpuscle
			i(165784),	-- 8.1 Raid - Zuldazar - Int - Staff \\ Copy Heptavium, Staff of Torturous Knowledge
			i(165790),	-- Pirate Boots
			i(165803),	-- Mission Report
			i(165805),	-- Outpost Upgrade
			i(165826),	-- Copy Horrific Amalgam's Hood
			i(165827),	-- Copy Flame-Sterilized Spaulders
			i(165828),	-- Copy Horrific Amalgam's Hood
			i(165829),	-- Copy Flame-Sterilized Spaulders
			i(165837),	-- Outpost Upgrade
			i(165838),	-- Mission Report
			i(165842),	-- Bot Scrambler
			i(165850),	-- Kvaldir Anchor Line
			i(165874),	-- Outpost Upgrade
			i(165875),	-- Mission Report
			i(165879),	-- Briny Salt \\ Alkalescent Salt
			i(165881),	-- Outpost Upgrade
			i(165882),	-- Mission Report
			i(165945),	-- Investigation Results
			i(166231),	-- Player Experience
			i(166243),	-- Investigation Results
			i(166246),	-- Highborne Relic
			i(166252),	-- Looted Titan Relic
			i(166253),	-- Mana Crystal
			i(166281),	-- Page of Dark Magic
			i(166382),	-- Add Keystone Affix: Infested
			i(166383),	-- Set Keystone Map: Atal'dazar
			i(166390),	-- Set Keystone Map: Freehold
			i(166391),	-- Set Keystone Map: Kings' Rest
			i(166392),	-- Set Keystone Map: Shrine of the Storm
			i(166393),	-- Set Keystone Map: Siege of Boralus
			i(166394),	-- Set Keystone Map: Temple of Sethraliss
			i(166395),	-- Set Keystone Map: The MOTHERLODE!!
			i(166396),	-- Set Keystone Map: The Underrot
			i(166397),	-- Set Keystone Map: Tol Dagor
			i(166398),	-- Set Keystone Map: Waycrest Manor
			i(166399),	-- Add Keystone Affix: Infested
			i(166419),	-- Kelp'thar Bubble Tea
			i(166420),	-- Xibala Kombucha \\ Xibala Kombacha
			i(166421),	-- PH Alliance Warfront Skullcleaver
			i(166423),	-- PH Horde Warfront Claymore
			i(166424),	-- PH Horde Warfront Warhammer
			i(166460),	-- Fresh Ravasaur Bits \\ Viable Remains
			i(166505),	-- Relinquished Azerite Spaulders \\ Relinquished Azerite Shoulder
			i(166508),	-- Relinquished Azerite Spaulders \\ Relinquished Azerite Shoulder
			i(166509),	-- Relinquished Azerite Spaulders \\ Relinquished Azerite Shoulder
			i(166510),	-- Relinquished Azerite Helm
			i(166511),	-- Relinquished Azerite Helm
			i(166512),	-- Relinquished Azerite Helm
			i(166513),	-- Relinquished Azerite Chestpiece
			i(166514),	-- Relinquished Azerite Chestpiece
			i(166515),	-- Relinquished Azerite Chestpiece
			i(166516),	-- Jani's First Offering
			i(166529),	-- Relinquished Azerite Spaulders \\ Relinquished Azerite Shoulder
			i(166530),	-- Relinquished Azerite Spaulders \\ Relinquished Azerite Shoulder
			i(166531),	-- Relinquished Azerite Spaulders \\ Relinquished Azerite Shoulder
			i(166532),	-- Relinquished Azerite Helm
			i(166533),	-- Relinquished Azerite Helm
			i(166534),	-- Relinquished Azerite Helm
			i(166535),	-- Relinquished Azerite Chestpiece
			i(166536),	-- Relinquished Azerite Chestpiece
			i(166537),	-- Relinquished Azerite Chestpiece
			i(166545),	-- Befuddlin' Brew
			i(166728),	-- Carefully Removed Spleen
			i(166741),	-- Nomi's Grocery Tote
			i(166742),	-- Blue-Ribbon Pandaren Chili
			i(166771),	-- Jury-Rigged Hand Cannon
			i(166792),	-- Taste of Victory
			i(166853),	-- Gilded Egg of Pa'ku
			i(166855),	-- Obsidian Statue of Kith'ix
			i(166857),	-- Bethekk's Emerald Eyes
			i(166863),	-- Farrakki Star Rubies
			i(166864),	-- Engraved Amani Spearpoints
			i(166871),	-- Jeweled Pyrium Goblet
			i(166876),	-- Scrimshaw Ivory Direhorn
			i(166896),	-- Heritage of the Sin'dorei
		})),

		-- 8.1.5
		expansion(EXPANSION.BFA, patch(1,5), bubbleDownSelf({ ["timeline"] = { ADDED_8_1_0 } }, {
			i(164638),	-- Challenge Card: Phillip Carter Tracey \\ Challenge Card: Philip Carter Tracey
			i(164639),	-- Challenge Card: Farmer Xiang-Su
			i(164640),	-- Challenge Card: Tidemistress Shellbreaker
			i(164645),	-- Challenge Card: Zaxx Dreadslice
			i(164647),	-- Challenge Card: Marcus
			i(164721),	-- Challenge Card: Robe-Robber Robert
			i(164733),	-- Synchronous Thread
			i(164772),	-- Kul Tiran Orphan Whistle
			i(164934),	-- Super Soul Splinter
			i(164939),	-- Overstuffed Silkweave Purse
			i(164949),	-- Brawler's Guild Invitation
			i(165709),	-- Challenge Card: Mama Stormstout
			i(165786),	-- Skulls of the Honored Dead
			i(165787),	-- Ceremonial Liquor
			i(165788),	-- Gilded Ritual Mask
			i(165789),	-- Zandalari Riches
			i(166581),	-- Dorian's Note
			i(166589),	-- Elderstone Ore
			i(166809),	-- Challenge Card: Thog Hammerspace
			i(166810),	-- Challenge Card: Antaen
			i(166890),	-- The Traitor King
			i(166891),	-- The Cursed Old Wolf
			i(166892),	-- The Would-Be Queen
			i(166893),	-- The Last Menethil
			i(167022),	-- Challenge Card: Hyper Mega-Mecha Seagull x9000
			i(167024),	-- Challenge Card: Spymaster
			i(167029),	-- Challenge Card: Ouroboros
			i(167045),	-- Grappling Hook
			i(167083),	-- Common Gray Shirt
			i(167084),	-- Common Brown Shirt
			i(167085),	-- Common White Shirt
			i(167086),	-- Ebon Filigreed Doublet
			i(167097),	-- Mudfish Innards
			i(167101),	-- Horde Champion's Cache
			i(167547),	-- Deep Diving Helmet
			i(167551),	-- Twiceswindle's Chest Key
			i(167553),	-- Squeaky Raptor
			i(167552),	-- Luminescent Research Notes
			i(167737),	-- Thrice-Folded Letter
			i(167742),	-- Silas' Decanter of Disguise
			i(167743),	-- Silas' Potion of Prosperity
			i(167797),	-- Jolt Jerky
			i(167798),	-- Rubber Ball
			i(167799),	-- Ironspine Protocol
			i(167800),	-- Charged Sparkstone
			i(167801),	-- Voltweave Fez
			i(167849),	-- Plundered Chestpiece
			i(167852),	-- Plundered Headgear
			i(167854),	-- Plundered Shoulderpads
			i(167856),	-- Plundered Ring
			i(167857),	-- Plundered Necklace
			i(167859),	-- Plundered Trinket
			i(167861),	-- Alliance Glider Kit
			i(167862),	-- Horde Glider Kit
			i(167917),	-- Brawler's Coastal Healing Potion
			i(167918),	-- Brawler's Battle Potion of Strength
			i(167919),	-- Brawler's Battle Potion of Agility
			i(167920),	-- Brawler's Battle Potion of Intellect
			i(167933),	-- Rubber Scraps
			i(168015),	-- Taster of Rebirth \\ Fel-Tainted Vessel \\ Fel-tainted Vessel
			i(168019),	-- Obsidian Sigilstone
			i(168098),	-- Hati Wipe
			i(168134),	-- Fine Azerite Powder
			i(168135),	-- Titan's Blood
			i(168137),	-- Precision Blessing Tools
			i(168141),	-- Ice-Encased Ancient Blood Pigment
			i(168147),	-- Just a Stone
			i(168148),	-- A "Just Right" Stone
			i(168149),	-- A Small Pebble
			i(168150),	-- More Like the "Right" Stone
			i(168151),	-- "Not Quite Right" Stone
			i(168162),	-- Chronal Cache of Cloth
			i(168195),	-- Time Trial Keystone
			i(168196),	-- Time Trial Keystone
			i(168197),	-- Time Trial Keystone
		})),

		-- 8.2.0
		expansion(EXPANSION.BFA, patch(2,0), bubbleDownSelf({ ["timeline"] = { ADDED_8_2_0 } }, {
			i(166666),	-- Twisted Kodo Runt Bone
			i(166845),	-- Glinting Amethyst
			i(166885),	-- Mark of Azshara
			i(167013),	-- Fiery Brinestone Shard
			i(167014),	-- Amber Brinestone Shard
			i(167016),	-- Jade Brinestone Shard
			i(167017),	-- Brinestone Shard
			i(167018),	-- Azure Brinestone Shard
			i(167019),	-- Violet Brinestone Shard
			i(167040),	-- Gnomeregan Wrench
			i(167043),	-- Naga Tears
			i(167060),	-- Chum
			i(167066),	-- Shimmering Eel Skin
			i(167067),	-- Golden Eel Eye
			i(167068),	-- Glowing Eel Eggs
			i(167090),	-- Creature Study - Part 1
			i(167091),	-- Maedin's Scroll
			i(167092),	-- Tiger Kelp
			i(167093),	-- Junkyard Blueprints Binder
			i(167094),	-- Mechanical Husk
			i(167158),	-- Pascal-K1N6's Proprietary Gizmo-matic
			i(167159),	-- Scintillating Vial
			i(167161),	-- Rock Blossom
			i(167162),	-- Serpent's Kiss
			i(167163),	-- King's Bloom
			i(167164),	-- Mud Root
			i(167165),	-- Sea Leaf
			i(167166),	-- Tide Flower
			i(167203),	-- Rusty Scrap
			i(167204),	-- Used Energy Cell
			i(167548),	-- Kelpberry Wine
			i(167674),	-- Stone Statue
			i(167675),	-- Stone Statue
			i(167696),	-- Build-a-Computer Kit
			i(167739),	-- Fathom Ray Roe
			i(167746),	-- Mist Blossom
			i(168021),	-- Nullifier Transport Relay
			i(168187),	-- Highborne Relic
			i(168188),	-- Sage Agate
			i(168232),	-- Murloco's "Fish" Tacos
			i(168237),	-- Coral Root Chunk
			i(168242),	-- Angel Scale Starfish
			i(168245),	-- Forgotten Memento
			i(168255),	-- Bundle of Corroded Parts
			i(168258),	-- Bundle of Recyclable Parts
			i(168263),	-- Mundane Recycling Requisition
			i(168356),	-- PH - Nazjatar - Mail HEAD 3
			i(168392),	-- Skate Sushi \\ Jinyu Sushi
			i(168393),	-- Holographic Combat Entity Data
			i(168409),	-- Supple Hides
			i(168481),	-- Ancient Accelerant
			i(168485),	-- Chris TBD3
			i(168488),	-- Seafarer's Lost Coin Pouch
			i(168524),	-- [DNT] Ub3r-Spanner
			i(168543),	-- Add Keystone Affix: Reaping
			i(168594),	-- REUSE ME [MTMM] \\ Spellweaver's Desperation
			i(168595),	-- REUSE ME [MTMM] \\ Scoundrel's Vigor
			i(168597),	-- REUSE ME [MTMM] \\ Vanguard's Bulwark
			i(168607),	-- Bottle of Voidwine
			i(168630),	-- Chitterspine Meat
			i(168635),	-- Leviathan's Eye
			i(168655),	-- Greater Mystical Flask
			i(168662),	-- Maroon Pigment
			i(168755),	-- Unpublished Research
			i(168786),	-- Rotten Food
			i(168788),	-- Toy Soldier Weapons
			i(168789),	-- Perpetual Motion Device
			i(168790),	-- Sack of Fish Bones
			i(168791),	-- Shiny Rocks
			i(168792),	-- Kobold's Candle
			i(168793),	-- Bottle of Homemade Wine
			i(168794),	-- Last Year's Brewfest Flyer
			i(168795),	-- Old Boot
			i(168796),	-- Recycled Scroll
			i(168797),	-- Stack of Undeliverable Mail
			i(168812),	-- Air Freshner
			i(168815),	-- Kelpberry Cask
			i(168834),	-- De-Synced Vibro Blade
			i(168835),	-- De-Synced Vibro Blade
			i(168867),	-- Queen's Orders \\ The Queen's Orders
			i(168914),	-- Grime-Coated Disc
			i(169010),	-- Corroded Evaporator Coil
			i(169107),	-- T.A.R.G.E.T. Device
			i(169115),	-- Preserved Nutrient Bar
			i(169116),	-- Dehydrated Nourishment Packet
			i(169117),	-- Improbable Mechano-Chicken Wings
			i(169118),	-- Hydro-Stasis Plant Matter
			i(169119),	-- Enhanced Water
			i(169120),	-- Enhancement-Free Water
			i(169122),	-- Gibraltian Monkey Wrench
			i(169125),	-- Sonic Drive Screw
			i(169126),	-- Supercharged Graphics Cog
			i(169143),	-- Seized Sparksaw
			i(169146),	-- Brittle Thrust Booster
			i(169190),	-- Blueprint: Mega-Sized Spare Parts \\ Blueprint: TK45
			i(169193),	-- Nazjatar Ring A
			i(169219),	-- Alcohol-Free Brewfest Sampler
			i(169291),	-- Petrified Ebony Scale
			i(169330),	-- PH - Nazjatar - Trinket
			i(169331),	-- Mardivas's Arcane Coffer
			i(169335),	-- Relinquished Azerite Spaulders
			i(169336),	-- Relinquished Azerite Spaulders
			i(169337),	-- Relinquished Azerite Spaulders
			i(169338),	-- Relinquished Azerite Helm
			i(169339),	-- Relinquished Azerite Helm
			i(169340),	-- Relinquished Azerite Helm
			i(169341),	-- Relinquished Azerite Chestpiece
			i(169342),	-- Relinquished Azerite Chestpiece
			i(169343),	-- Relinquished Azerite Chestpiece
			i(169386),	-- Elune's Favor
			i(169397),	-- Admiralty Ale
			i(169436),	-- Fireblood Stout
			i(169439),	-- Dark Iron Ale
			i(169441),	-- Azuremyst Mead
			i(169442),	-- Exodar Martini
			i(169443),	-- Shadowmoon Schnapps
			i(169446),	-- Water Filled Bladder
			i(169447),	-- Air Filled Bladder \\ Air Filled Bladder - NYI
			i(169456),	-- Seabreeze Saddle Blanket
			i(169458),	-- Vol'dunshine
			i(169459),	-- Saurid Sipper
			i(169460),	-- Really Really Really Old Fashioned
			i(169462),	-- Boxed Nightwine
			i(169463),	-- Nightwine Cooler
			i(169464),	-- Sparkling Suramar Spritz
			i(169466),	-- Everbloom IPA
			i(169467),	-- Doomlager
			i(169468),	-- Ancestral Ale
			i(169469),	-- Mag'helada
			i(169521),	-- Butterhoof Milk Stout
			i(169527),	-- Thunder Stumbler
			i(169590),	-- Burgeoning Battlefield Furor \\ Azeroth's Undying Gift
			i(169615),	-- Small Skull
			i(169616),	-- Rusty Tube
			i(169617),	-- Flashing Siren
			i(169618),	-- Mechanical Egg Sac
			i(169619),	-- Can of Critter Spray
			i(169620),	-- Cluckbox
			i(169621),	-- Broken Unit 6
			i(169622),	-- Mechanical Eye
			i(169650),	-- Blue Paint Bladder - NYI
			i(169660),	-- Resistance Roller
			i(169661),	-- Scrap Heap
			i(169662),	-- Constellation Drop
			i(169663),	-- Muddy Chassis
			i(169669),	-- Rustbolt Rootbeer
			i(169672),	-- Heart of Azeroth
			i(169680),	-- Coalescing Blood of the Vanquished \\ Battlefield Distinction - PH
			i(169728),	-- Notorious Gladiator's Cutter
			i(169729),	-- Notorious Gladiator's Cutter
			i(169767),	-- Deteriorating Cragscales
			i(169772),	-- Shriveled Leather Hide
			i(169775),	-- Shriveled Leather Hide
			i(169779),	-- Deteriorating Cragscales
			i(169785),	-- Doomsday Motivator
			i(169786),	-- Chronicles of the Court
			i(169788),	-- Azshara's Champions \\ Chronicles of the Court
			i(169789),	-- A Neatly Folded Letter \\ Chronicles of the Court
			i(169825),	-- Sludge-Covered Minicollider
			i(169826),	-- Anti-Spectrum Goggles
			i(169827),	-- External Meditation Module
			i(169828),	-- Experimental Transverter
			i(169829),	-- Partial Spinal Column
			i(169830),	-- Extremely Hazardous Waste
			i(169831),	-- Fire Resistance Bolts
			i(169833),	-- Crate of Semiconductors
			i(169834),	-- Sonar Transmitter
			i(169835),	-- Beam Splitter
			i(169836),	-- Amplified Photodetector
			i(169837),	-- Miniaturized Steam Turbine
			i(169871),	-- Orange Snapfin
			i(169877),	-- Unstable Isotopes
			i(169880),	-- Decayed Isotopes
			i(169881),	-- Heart of Azeroth
			i(169883),	-- Animate Grease
			i(169895),	-- Azeroth Mini: Beastbot
			i(169896),	-- Azeroth Mini: Pascal-K1N6
			i(169941),	-- Ceremonial Ankoan Scabbard
			i(169946),	-- Saltwater Taffy
			i(169947),	-- Candied Zin-Azshari Sea Grapes
			i(169948),	-- Filtered Zanj'ir Water
			i(169949),	-- Bioluminescent Ocean Punch
			i(169950),	-- Shattered Timequartz
			i(169951),	-- Broken Hourglass
			i(169952),	-- Sea Salt Java
			i(169953),	-- Bent Timedial
			i(169954),	-- Steeped Kelp Tea
			i(169955),	-- Stopped Watch
			i(169956),	-- Crunchy Seaweed Chips
			i(169962),	-- Frayed Fetish
			i(169963),	-- Cracked Containment Unit
			i(169964),	-- Flakes of Blood
			i(169973),	-- Overheated Mechanism
			i(169974),	-- Nullified Dust
			i(169975),	-- Broken Visualizer
			i(169980),	-- Split Sphere
			i(169984),	-- Shattered Dragonscale
			i(169985),	-- Fading Dragonscale
			i(169986),	-- Cracked Dragonscale
			i(169987),	-- Inert Dragonscale
			i(169988),	-- Inert Mineral Dust
			i(170000),	-- Battered Bastion
			i(170001),	-- Seized Engine
			i(170002),	-- Split Differential
			i(170003),	-- Grinding Gearbox
			i(170004),	-- Cracked Turbo
			i(170009),	-- Fading Memento
			i(170010),	-- Crumbling Memento
			i(170011),	-- Cracked Memento
			i(170012),	-- Tarnished Memento
			i(170015),	-- Inert Rock
			i(170016),	-- Dark Craggy Rock
			i(170017),	-- Cracked Titan Disc
			i(170025),	-- Burst Seed Pod
			i(170026),	-- Seed Husks
			i(170027),	-- Withering Seed
			i(170028),	-- Fading Seed Bud
			i(170032),	-- Crumbling Vellum
			i(170033),	-- Decharged Battery
			i(170034),	-- Overloaded Capacitor
			i(170035),	-- Corroded Gauge
			i(170036),	-- Cracked Display
			i(170039),	-- Shredded Grid
			i(170040),	-- Unraveling Web
			i(170041),	-- Cracked Skull
			i(170042),	-- Scattered Bones
			i(170043),	-- Split Bone
			i(170044),	-- Pitted Finger-Bone
			i(170054),	-- Decrypted Message 001-316
			i(170055),	-- Decrypted Message 001-322
			i(170056),	-- Decrypted Message 001-346
			i(170057),	-- Decrypted Message 001-372
			i(170058),	-- Decrypted Message 001-398
			i(170059),	-- Decrypted Message 002-001
			i(170060),	-- Encrypted Message
			i(170064),	-- Highmountain Totem
			i(170078),	-- Gleaming Ashmaul Strongbox
			i(170100),	-- Hungry Herald's Tentacle Taco
			i(170113),	-- Deeptide Scroll
			i(170202),	-- Shwayderbrau
			i(170250),	-- Honorbound Weapons Cache
			i(170251),	-- 7th Legion Weapons Cache
			i(170260),	-- Funeral Prayer Beads
			i(170261),	-- Tome of Natural Balance
			i(170262),	-- Totem of the Annual Cull
			i(170263),	-- Watertight Kafa-Flask
			i(170264),	-- Seasbane Spyglass
			i(170265),	-- Enhanced Mining Drill
			i(170266),	-- Fight-or-Flight Amplifier
			i(170267),	-- Bloodscent Muscle Infuser
			i(170268),	-- Primal Lightstone
			i(170269),	-- Elemental Chargestone
			i(170272),	-- War-Torn Memento
			i(170379),	-- Sunwarmed Sand
			i(168632),	-- Slipstream Generator
			i(168633),	-- Supplemental Oxygenation Device
			i(168648),	-- Emergency Anti-Gravity Device
			i(168785),	-- Subroutine: Defragmentation
			i(168800),	-- Subroutine: Recalibration
			i(168913),	-- Regenerative Capacitors
			i(170252),	-- Pouch of Gangrenous Spores
			i(170253),	-- Poisoned Whetstone
			i(170255),	-- Pandaran Herbalist's Kit \\ Panderan Herbalist's Kit
			i(170256),	-- Shado-Pan Mercenary Kit
			i(170257),	-- Mirror of Spell Turning
			i(170258),	-- Rod of Magical Fervor
			i(170259),	-- Tome of Last Rites
			i(170507),	-- Omnipurpose Logic Board
			i(170508),	-- Optimized Logic Board
			i(170509),	-- Performant Logic Board
			i(170510),	-- Forceful Logic Board
			i(164732),	-- Ub3r-Construct: Short-Fused Boom Bots
			i(164734),	-- Ub3r-Construct: Ub3r-Improved Target Dummy
			i(164738),	-- Ub3r-Construct:  Ub3r S3ntry Mk. X8.0
			i(167001),	-- Trashed Equations
			i(167002),	-- Schematic: Undertuned Corgi Goggles
			i(167003),	-- Schematic: True Iron Oven Mitts
			i(167004),	-- Schematic: Ultra Time Enhancer MK 2
			i(167540),	-- Ink Sac
			i(167554),	-- Juicy Mango
			i(167869),	-- Basket of Fruit
			i(167896),	-- Slimy Naga Eyeball
			i(167902),	-- Particularly Dense Rock
			i(167904),	-- Smelly Pile of Gloop
			i(167905),	-- Curious Murloc Horn
			i(167906),	-- Flatulent Fish
			i(167907),	-- Extra-Slimy Snail
			i(167908),	-- Sea Giant Foot Dust
			i(167909),	-- Ghost Food
			i(167910),	-- Bag of Who-Knows-What
			i(167911),	-- Just Regular Butter
			i(167912),	-- Unidentified Mass
			i(167913),	-- Healthy Murloc Lunch
			i(167914),	-- Jar of Fish Faces
			i(167916),	-- Dirty Murloc Sock
			i(167923),	-- Clean Murloc Sock
			i(168013),	-- Roo'li's Remains
			i(168099),	-- Deepcoral Pod
			i(168213),	-- Tensile Driveshaft
			i(168949),	-- Tensile Driveshaft
			i(168950),	-- Machined Gear Assembly
			i(168951),	-- Tempered Plating
			i(168952),	-- Hardened Spring
			i(169780),	-- Pulsating Blood Stone
			i(169781),	-- Overwhelmingly-Alluring Idol
			i(169782),	-- Beckoner's Rosetta Stone
			i(170156),	-- Wavebeaten Armor Kit
			i(169976),	-- Disintegrating Leaf \\ Touch of the Everlasting Empty Item
			i(169977),	-- Crumbling Bark \\ Touch of the Everlasting Empty Item
			i(169978),	-- Cracked Branch \\ Touch of the Everlasting Empty Item
			i(169979),	-- Shriveled Roots \\ Touch of the Everlasting Empty Item
		})),
	}),
});
