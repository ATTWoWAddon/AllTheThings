-------------------------------------------------------------------
--	  E X P A N S I O N   F E A T U R E S	M O D U L E	   --
-------------------------------------------------------------------
root(ROOTS.ExpansionFeatures, expansion(EXPANSION.TWW, bubbleDownSelf({ ["timeline"] = { ADDED_11_0_2 } }, {
	n(ACHIEVEMENTS, {
		ach(40107, {	-- Harbinger of the Weatherd
            -- INFO: The 4 harbinger achievements (which are feats of strength) were added at the start of 11.0.2 but didn't fire and showed a TODO in the name. They were corrected before 11.0.5. They could be timelined to the exact build if prefered but this is good enough.
			["timeline"] = { ADDED_11_0_2, REMOVED_11_1_0 },
		}),
		ach(40115, {	-- Harbinger of the Carved
			["timeline"] = { ADDED_11_0_2, REMOVED_11_1_0 },
		}),
		ach(40118, {	-- Harbinger of the Runed
			["timeline"] = { ADDED_11_0_2, REMOVED_11_1_0 },
		}),
		ach(40939, {	-- Harbinger of the Gilded
			["timeline"] = { ADDED_11_0_2, REMOVED_11_1_0 },
		}),
        -- TODO: Unfun fact: Blizzard isn't currently showing these criteria ingame, and manually adding them doesn't properly fetch their names, I'm just gonna leave them here for reference for when they fix this. It can be either automated, or written out in full.
		ach(40591, {	-- Khaz Algar Diplomat
            -- crit(68907),    -- Council of Dornogal
            -- crit(68908),    -- The Assembly of the Deeps
            -- crit(68909),    -- Hallowfall Arathi
            -- crit(68910),    -- The Severed Threads
			iensemble(219110),	-- Vermillion Patron's Elegance
		}),
        -- INFO: Verified 2024-10-04, only shows one criteria without achraw
		achraw(40660, bubbleDownSelf({ ["timeline"] = { REMOVED_11_1_0 }, }, {	-- The War Within Season 1: Spelunker Supreme
			crit(67375), -- Attained 1600+ Rated PVP rating
			crit(66890), -- Attained 2000+ Mythic Plus rating
			crit(67597), -- Defeated Queen Ansurek on Heroic or Mythic difficulty
			i(226206),	-- Mark of the Spelunker Supreme
		})),
		ach(40723, {	-- Web-Wrapped in the Finest Silks (automated)
			["timeline"] = { REMOVED_11_1_0 },
			["g"] = {
				i(226224, {	-- Luminous Nerubian Catalyst Stone
					d(DIFFICULTY.RAID.LFR, bubbleDown({ ["bonusID"] = 6894, ["modID"] = 0, }, {
						cl(DEATHKNIGHT, {
							i(211997),	-- Exhumed Centurion's Drape
							i(211998),	-- Exhumed Centurion's Manacles
							i(211999),	-- Exhumed Centurion's Baltea
							i(212000),	-- Exhumed Centurion's Spikes
							i(212001),	-- Exhumed Centurion's Chausses
							i(212002),	-- Exhumed Centurion's Galea
							i(212003),	-- Exhumed Centurion's Gauntlets
							i(212004),	-- Exhumed Centurion's Sollerets
							i(212005),	-- Exhumed Centurion's Breastplate
						}),
						cl(DEMONHUNTER, {
							i(212060),	-- Drape of the Hypogeal Nemesis
							i(212061),	-- Armguards of the Hypogeal Nemesis
							i(212062),	-- Waistguard of the Hypogeal Nemesis
							i(212063),	-- War-Mantle of the Hypogeal Nemesis
							i(212064),	-- Pantaloons of the Hypogeal Nemesis
							i(212065),	-- Impalers of the Hypogeal Nemesis
							i(212066),	-- Claws of the Hypogeal Nemesis
							i(212067),	-- Talons of the Hypogeal Nemesis
							i(212068),	-- Chestguard of the Hypogeal Nemesis
						}),
						cl(DRUID, {
							i(212051),	-- Cloak of the Greatlynx
							i(212052),	-- Great Links of the Greatlynx
							i(212053),	-- Faulds of the Greatlynx
							i(212054),	-- Maw of the Greatlynx
							i(212055),	-- Leggings of the Greatlynx
							i(212056),	-- Mask of the Greatlynx
							i(212057),	-- Eviscerators of the Greatlynx
							i(212058),	-- Treads of the Greatlynx
							i(212059),	-- Hide of the Greatlynx
						}),
						cl(EVOKER, {
							i(212024),	-- Cape of the Destroyer
							i(212025),	-- Wristblades of the Destroyer
							i(212026),	-- Core of the Destroyer
							i(212027),	-- Fumaroles of the Destroyer
							i(212028),	-- Legguards of the Destroyer
							i(212029),	-- Horns of the Destroyer
							i(212030),	-- Rippers of the Destroyer
							i(212031),	-- Talons of the Destroyer
							i(212032),	-- Scales of the Destroyer
						}),
						cl(HUNTER, {
							i(212015),	-- Lightless Scavenger's Hide
							i(212016),	-- Lightless Scavenger's Wristguards
							i(212017),	-- Lightless Scavenger's Bonegirdle
							i(212018),	-- Lightless Scavenger's Taxidermy
							i(212019),	-- Lightless Scavenger's Stalkings
							i(212020),	-- Lightless Scavenger's Skull
							i(212021),	-- Lightless Scavenger's Mitts
							i(212022),	-- Lightless Scavenger's Footpads
							i(212023),	-- Lightless Scavenger's Tunic
						}),
						cl(MAGE, {
							i(212087),	-- Ward of Violet Rebirth
							i(212088),	-- Bracelets of Violet Rebirth
							i(212089),	-- Sigil of Violet Rebirth
							i(212090),	-- Beacons of Violet Rebirth
							i(212091),	-- Coattails of Violet Rebirth
							i(212092),	-- Hood of Violet Rebirth
							i(212093),	-- Jeweled Gauntlets of Violet Rebirth
							i(212094),	-- Slippers of Violet Rebirth
							i(212095),	-- Runecoat of Violet Rebirth
						}),
						cl(MONK, {
							i(212042),	-- Gatecrasher's Mantle
							i(212043),	-- Gatecrasher's Armguards
							i(212044),	-- Gatecrasher's Cord
							i(212045),	-- Gatecrasher's Enduring Effigy
							i(212046),	-- Gatecrasher's Kilt
							i(212047),	-- Gatecrasher's Horns
							i(212048),	-- Gatecrasher's Protectors
							i(212049),	-- Gatecrasher's Tabi
							i(212050),	-- Gatecrasher's Gi
						}),
						cl(PALADIN, {
							i(211988),	-- Entombed Seraph's Greatcloak
							i(211989),	-- Entombed Seraph's Shackles
							i(211990),	-- Entombed Seraph's Waistguard
							i(211991),	-- Entombed Seraph's Plumes
							i(211992),	-- Entombed Seraph's Greaves
							i(211993),	-- Entombed Seraph's Casque
							i(211994),	-- Entombed Seraph's Castigation
							i(211995),	-- Entombed Seraph's Sabatons
							i(211996),	-- Entombed Seraph's Breastplate
						}),
						cl(PRIEST, {
							i(212078),	-- Living Luster's Glow
							i(212079),	-- Living Luster's Crystbands
							i(212080),	-- Living Luster's Lightbelt
							i(212081),	-- Living Luster's Dominion
							i(212082),	-- Living Luster's Trousers
							i(212083),	-- Living Luster's Semblance
							i(212084),	-- Living Luster's Touch
							i(212085),	-- Living Luster's Boots
							i(212086),	-- Living Luster's Raiment
						}),
						cl(ROGUE, {
							i(212033),	-- K'areshi Phantom's Breeze
							i(212034),	-- K'areshi Phantom's Cuffs
							i(212035),	-- K'areshi Phantom's Belt
							i(212036),	-- K'areshi Phantom's Shoulderpads
							i(212037),	-- K'areshi Phantom's Leggings
							i(212038),	-- K'areshi Phantom's Emptiness
							i(212039),	-- K'areshi Phantom's Grips
							i(212040),	-- K'areshi Phantom's Netherwalkers
							i(212041),	-- K'areshi Phantom's Nexus Wraps
						}),
						cl(SHAMAN, {
							i(212006),	-- Mist of the Forgotten Reservoir
							i(212007),	-- Embrace of the Forgotten Reservoir
							i(212008),	-- Wrappings of the Forgotten Reservoir
							i(212009),	-- Concourse of the Forgotten Reservoir
							--i(212010),	-- Sarong of the Forgotten Reservoir [does not exist]
							i(212011),	-- Noetic of the Forgotten Reservoir
							i(212012),	-- Covenant of the Forgotten Reservoir
							i(212013),	-- Shoes of the Forgotten Reservoir
							--i(212014),	-- Vestments of the Forgotten Reservoir [does not exist]
						}),
						cl(WARLOCK, {
							i(212069),	-- Hexflame Coven's Shawl
							i(212070),	-- Hexflame Coven's Wristlace
							i(212071),	-- Hexflame Coven's Dormant Eye
							i(212072),	-- Hexflame Coven's Altar
							i(212073),	-- Hexflame Coven's Leggings
							i(212074),	-- Hexflame Coven's All-Seeing Eye
							i(212075),	-- Hexflame Coven's Sleeves
							i(212076),	-- Hexflame Coven's Treads
							i(212077),	-- Hexflame Coven's Ritual Harness
						}),
						cl(WARRIOR, {
							i(211979),	-- Warsculptor's Cloak
							i(211980),	-- Warsculptor's Armguards
							i(211981),	-- Warsculptor's Buckle
							i(211982),	-- Warsculptor's Horned Spaulders
							i(211983),	-- Warsculptor's Cuisses
							i(211984),	-- Warsculptor's Barbute
							i(211985),	-- Warsculptor's Crushers
							i(211986),	-- Warsculptor's Carved Boots
							i(211987),	-- Warsculptor's Furred Plastron
						}),
					})),
					d(DIFFICULTY.RAID.NORMAL, bubbleDown({ ["bonusID"] = 6895, ["modID"] = 0, }, {
						cl(DEATHKNIGHT, {
							i(211997),	-- Exhumed Centurion's Drape
							i(211998),	-- Exhumed Centurion's Manacles
							i(211999),	-- Exhumed Centurion's Baltea
							i(212000),	-- Exhumed Centurion's Spikes
							i(212001),	-- Exhumed Centurion's Chausses
							i(212002),	-- Exhumed Centurion's Galea
							i(212003),	-- Exhumed Centurion's Gauntlets
							i(212004),	-- Exhumed Centurion's Sollerets
							i(212005),	-- Exhumed Centurion's Breastplate
						}),
						cl(DEMONHUNTER, {
							i(212060),	-- Drape of the Hypogeal Nemesis
							i(212061),	-- Armguards of the Hypogeal Nemesis
							i(212062),	-- Waistguard of the Hypogeal Nemesis
							i(212063),	-- War-Mantle of the Hypogeal Nemesis
							i(212064),	-- Pantaloons of the Hypogeal Nemesis
							i(212065),	-- Impalers of the Hypogeal Nemesis
							i(212066),	-- Claws of the Hypogeal Nemesis
							i(212067),	-- Talons of the Hypogeal Nemesis
							i(212068),	-- Chestguard of the Hypogeal Nemesis
						}),
						cl(DRUID, {
							i(212051),	-- Cloak of the Greatlynx
							i(212052),	-- Great Links of the Greatlynx
							i(212053),	-- Faulds of the Greatlynx
							i(212054),	-- Maw of the Greatlynx
							i(212055),	-- Leggings of the Greatlynx
							i(212056),	-- Mask of the Greatlynx
							i(212057),	-- Eviscerators of the Greatlynx
							i(212058),	-- Treads of the Greatlynx
							i(212059),	-- Hide of the Greatlynx
						}),
						cl(EVOKER, {
							i(212024),	-- Cape of the Destroyer
							i(212025),	-- Wristblades of the Destroyer
							i(212026),	-- Core of the Destroyer
							i(212027),	-- Fumaroles of the Destroyer
							i(212028),	-- Legguards of the Destroyer
							i(212029),	-- Horns of the Destroyer
							i(212030),	-- Rippers of the Destroyer
							i(212031),	-- Talons of the Destroyer
							i(212032),	-- Scales of the Destroyer
						}),
						cl(HUNTER, {
							i(212015),	-- Lightless Scavenger's Hide
							i(212016),	-- Lightless Scavenger's Wristguards
							i(212017),	-- Lightless Scavenger's Bonegirdle
							i(212018),	-- Lightless Scavenger's Taxidermy
							i(212019),	-- Lightless Scavenger's Stalkings
							i(212020),	-- Lightless Scavenger's Skull
							i(212021),	-- Lightless Scavenger's Mitts
							i(212022),	-- Lightless Scavenger's Footpads
							i(212023),	-- Lightless Scavenger's Tunic
						}),
						cl(MAGE, {
							i(212087),	-- Ward of Violet Rebirth
							i(212088),	-- Bracelets of Violet Rebirth
							i(212089),	-- Sigil of Violet Rebirth
							i(212090),	-- Beacons of Violet Rebirth
							i(212091),	-- Coattails of Violet Rebirth
							i(212092),	-- Hood of Violet Rebirth
							i(212093),	-- Jeweled Gauntlets of Violet Rebirth
							i(212094),	-- Slippers of Violet Rebirth
							i(212095),	-- Runecoat of Violet Rebirth
						}),
						cl(MONK, {
							i(212042),	-- Gatecrasher's Mantle
							i(212043),	-- Gatecrasher's Armguards
							i(212044),	-- Gatecrasher's Cord
							i(212045),	-- Gatecrasher's Enduring Effigy
							i(212046),	-- Gatecrasher's Kilt
							i(212047),	-- Gatecrasher's Horns
							i(212048),	-- Gatecrasher's Protectors
							i(212049),	-- Gatecrasher's Tabi
							i(212050),	-- Gatecrasher's Gi
						}),
						cl(PALADIN, {
							i(211988),	-- Entombed Seraph's Greatcloak
							i(211989),	-- Entombed Seraph's Shackles
							i(211990),	-- Entombed Seraph's Waistguard
							i(211991),	-- Entombed Seraph's Plumes
							i(211992),	-- Entombed Seraph's Greaves
							i(211993),	-- Entombed Seraph's Casque
							i(211994),	-- Entombed Seraph's Castigation
							i(211995),	-- Entombed Seraph's Sabatons
							i(211996),	-- Entombed Seraph's Breastplate
						}),
						cl(PRIEST, {
							i(212078),	-- Living Luster's Glow
							i(212079),	-- Living Luster's Crystbands
							i(212080),	-- Living Luster's Lightbelt
							i(212081),	-- Living Luster's Dominion
							i(212082),	-- Living Luster's Trousers
							i(212083),	-- Living Luster's Semblance
							i(212084),	-- Living Luster's Touch
							i(212085),	-- Living Luster's Boots
							i(212086),	-- Living Luster's Raiment
						}),
						cl(ROGUE, {
							i(212033),	-- K'areshi Phantom's Breeze
							i(212034),	-- K'areshi Phantom's Cuffs
							i(212035),	-- K'areshi Phantom's Belt
							i(212036),	-- K'areshi Phantom's Shoulderpads
							i(212037),	-- K'areshi Phantom's Leggings
							i(212038),	-- K'areshi Phantom's Emptiness
							i(212039),	-- K'areshi Phantom's Grips
							i(212040),	-- K'areshi Phantom's Netherwalkers
							i(212041),	-- K'areshi Phantom's Nexus Wraps
						}),
						cl(SHAMAN, {
							i(212006),	-- Mist of the Forgotten Reservoir
							i(212007),	-- Embrace of the Forgotten Reservoir
							i(212008),	-- Wrappings of the Forgotten Reservoir
							i(212009),	-- Concourse of the Forgotten Reservoir
							--i(212010),	-- Sarong of the Forgotten Reservoir [does not exist]
							i(212011),	-- Noetic of the Forgotten Reservoir
							i(212012),	-- Covenant of the Forgotten Reservoir
							i(212013),	-- Shoes of the Forgotten Reservoir
							--i(212014),	-- Vestments of the Forgotten Reservoir [does not exist]
						}),
						cl(WARLOCK, {
							i(212069),	-- Hexflame Coven's Shawl
							i(212070),	-- Hexflame Coven's Wristlace
							i(212071),	-- Hexflame Coven's Dormant Eye
							i(212072),	-- Hexflame Coven's Altar
							i(212073),	-- Hexflame Coven's Leggings
							i(212074),	-- Hexflame Coven's All-Seeing Eye
							i(212075),	-- Hexflame Coven's Sleeves
							i(212076),	-- Hexflame Coven's Treads
							i(212077),	-- Hexflame Coven's Ritual Harness
						}),
						cl(WARRIOR, {
							i(211979),	-- Warsculptor's Cloak
							i(211980),	-- Warsculptor's Armguards
							i(211981),	-- Warsculptor's Buckle
							i(211982),	-- Warsculptor's Horned Spaulders
							i(211983),	-- Warsculptor's Cuisses
							i(211984),	-- Warsculptor's Barbute
							i(211985),	-- Warsculptor's Crushers
							i(211986),	-- Warsculptor's Carved Boots
							i(211987),	-- Warsculptor's Furred Plastron
						}),
					})),
					d(DIFFICULTY.RAID.HEROIC, bubbleDown({ ["bonusID"] = 6896, ["modID"] = 0, }, {
						cl(DEATHKNIGHT, {
							i(211997),	-- Exhumed Centurion's Drape
							i(211998),	-- Exhumed Centurion's Manacles
							i(211999),	-- Exhumed Centurion's Baltea
							i(212000),	-- Exhumed Centurion's Spikes
							i(212001),	-- Exhumed Centurion's Chausses
							i(212002),	-- Exhumed Centurion's Galea
							i(212003),	-- Exhumed Centurion's Gauntlets
							i(212004),	-- Exhumed Centurion's Sollerets
							i(212005),	-- Exhumed Centurion's Breastplate
						}),
						cl(DEMONHUNTER, {
							i(212060),	-- Drape of the Hypogeal Nemesis
							i(212061),	-- Armguards of the Hypogeal Nemesis
							i(212062),	-- Waistguard of the Hypogeal Nemesis
							i(212063),	-- War-Mantle of the Hypogeal Nemesis
							i(212064),	-- Pantaloons of the Hypogeal Nemesis
							i(212065),	-- Impalers of the Hypogeal Nemesis
							i(212066),	-- Claws of the Hypogeal Nemesis
							i(212067),	-- Talons of the Hypogeal Nemesis
							i(212068),	-- Chestguard of the Hypogeal Nemesis
						}),
						cl(DRUID, {
							i(212051),	-- Cloak of the Greatlynx
							i(212052),	-- Great Links of the Greatlynx
							i(212053),	-- Faulds of the Greatlynx
							i(212054),	-- Maw of the Greatlynx
							i(212055),	-- Leggings of the Greatlynx
							i(212056),	-- Mask of the Greatlynx
							i(212057),	-- Eviscerators of the Greatlynx
							i(212058),	-- Treads of the Greatlynx
							i(212059),	-- Hide of the Greatlynx
						}),
						cl(EVOKER, {
							i(212024),	-- Cape of the Destroyer
							i(212025),	-- Wristblades of the Destroyer
							i(212026),	-- Core of the Destroyer
							i(212027),	-- Fumaroles of the Destroyer
							i(212028),	-- Legguards of the Destroyer
							i(212029),	-- Horns of the Destroyer
							i(212030),	-- Rippers of the Destroyer
							i(212031),	-- Talons of the Destroyer
							i(212032),	-- Scales of the Destroyer
						}),
						cl(HUNTER, {
							i(212015),	-- Lightless Scavenger's Hide
							i(212016),	-- Lightless Scavenger's Wristguards
							i(212017),	-- Lightless Scavenger's Bonegirdle
							i(212018),	-- Lightless Scavenger's Taxidermy
							i(212019),	-- Lightless Scavenger's Stalkings
							i(212020),	-- Lightless Scavenger's Skull
							i(212021),	-- Lightless Scavenger's Mitts
							i(212022),	-- Lightless Scavenger's Footpads
							i(212023),	-- Lightless Scavenger's Tunic
						}),
						cl(MAGE, {
							i(212087),	-- Ward of Violet Rebirth
							i(212088),	-- Bracelets of Violet Rebirth
							i(212089),	-- Sigil of Violet Rebirth
							i(212090),	-- Beacons of Violet Rebirth
							i(212091),	-- Coattails of Violet Rebirth
							i(212092),	-- Hood of Violet Rebirth
							i(212093),	-- Jeweled Gauntlets of Violet Rebirth
							i(212094),	-- Slippers of Violet Rebirth
							i(212095),	-- Runecoat of Violet Rebirth
						}),
						cl(MONK, {
							i(212042),	-- Gatecrasher's Mantle
							i(212043),	-- Gatecrasher's Armguards
							i(212044),	-- Gatecrasher's Cord
							i(212045),	-- Gatecrasher's Enduring Effigy
							i(212046),	-- Gatecrasher's Kilt
							i(212047),	-- Gatecrasher's Horns
							i(212048),	-- Gatecrasher's Protectors
							i(212049),	-- Gatecrasher's Tabi
							i(212050),	-- Gatecrasher's Gi
						}),
						cl(PALADIN, {
							i(211988),	-- Entombed Seraph's Greatcloak
							i(211989),	-- Entombed Seraph's Shackles
							i(211990),	-- Entombed Seraph's Waistguard
							i(211991),	-- Entombed Seraph's Plumes
							i(211992),	-- Entombed Seraph's Greaves
							i(211993),	-- Entombed Seraph's Casque
							i(211994),	-- Entombed Seraph's Castigation
							i(211995),	-- Entombed Seraph's Sabatons
							i(211996),	-- Entombed Seraph's Breastplate
						}),
						cl(PRIEST, {
							i(212078),	-- Living Luster's Glow
							i(212079),	-- Living Luster's Crystbands
							i(212080),	-- Living Luster's Lightbelt
							i(212081),	-- Living Luster's Dominion
							i(212082),	-- Living Luster's Trousers
							i(212083),	-- Living Luster's Semblance
							i(212084),	-- Living Luster's Touch
							i(212085),	-- Living Luster's Boots
							i(212086),	-- Living Luster's Raiment
						}),
						cl(ROGUE, {
							i(212033),	-- K'areshi Phantom's Breeze
							i(212034),	-- K'areshi Phantom's Cuffs
							i(212035),	-- K'areshi Phantom's Belt
							i(212036),	-- K'areshi Phantom's Shoulderpads
							i(212037),	-- K'areshi Phantom's Leggings
							i(212038),	-- K'areshi Phantom's Emptiness
							i(212039),	-- K'areshi Phantom's Grips
							i(212040),	-- K'areshi Phantom's Netherwalkers
							i(212041),	-- K'areshi Phantom's Nexus Wraps
						}),
						cl(SHAMAN, {
							i(212006),	-- Mist of the Forgotten Reservoir
							i(212007),	-- Embrace of the Forgotten Reservoir
							i(212008),	-- Wrappings of the Forgotten Reservoir
							i(212009),	-- Concourse of the Forgotten Reservoir
							--i(212010),	-- Sarong of the Forgotten Reservoir [does not exist]
							i(212011),	-- Noetic of the Forgotten Reservoir
							i(212012),	-- Covenant of the Forgotten Reservoir
							i(212013),	-- Shoes of the Forgotten Reservoir
							--i(212014),	-- Vestments of the Forgotten Reservoir [does not exist]
						}),
						cl(WARLOCK, {
							i(212069),	-- Hexflame Coven's Shawl
							i(212070),	-- Hexflame Coven's Wristlace
							i(212071),	-- Hexflame Coven's Dormant Eye
							i(212072),	-- Hexflame Coven's Altar
							i(212073),	-- Hexflame Coven's Leggings
							i(212074),	-- Hexflame Coven's All-Seeing Eye
							i(212075),	-- Hexflame Coven's Sleeves
							i(212076),	-- Hexflame Coven's Treads
							i(212077),	-- Hexflame Coven's Ritual Harness
						}),
						cl(WARRIOR, {
							i(211979),	-- Warsculptor's Cloak
							i(211980),	-- Warsculptor's Armguards
							i(211981),	-- Warsculptor's Buckle
							i(211982),	-- Warsculptor's Horned Spaulders
							i(211983),	-- Warsculptor's Cuisses
							i(211984),	-- Warsculptor's Barbute
							i(211985),	-- Warsculptor's Crushers
							i(211986),	-- Warsculptor's Carved Boots
							i(211987),	-- Warsculptor's Furred Plastron
						}),
					})),
					d(DIFFICULTY.RAID.MYTHIC, bubbleDown({ ["bonusID"] = 6897, ["modID"] = 0, }, {
						cl(DEATHKNIGHT, {
							i(211997),	-- Exhumed Centurion's Drape
							i(211998),	-- Exhumed Centurion's Manacles
							i(211999),	-- Exhumed Centurion's Baltea
							i(212000),	-- Exhumed Centurion's Spikes
							i(212001),	-- Exhumed Centurion's Chausses
							i(212002),	-- Exhumed Centurion's Galea
							i(212003),	-- Exhumed Centurion's Gauntlets
							i(212004),	-- Exhumed Centurion's Sollerets
							i(212005),	-- Exhumed Centurion's Breastplate
						}),
						cl(DEMONHUNTER, {
							i(212060),	-- Drape of the Hypogeal Nemesis
							i(212061),	-- Armguards of the Hypogeal Nemesis
							i(212062),	-- Waistguard of the Hypogeal Nemesis
							i(212063),	-- War-Mantle of the Hypogeal Nemesis
							i(212064),	-- Pantaloons of the Hypogeal Nemesis
							i(212065),	-- Impalers of the Hypogeal Nemesis
							i(212066),	-- Claws of the Hypogeal Nemesis
							i(212067),	-- Talons of the Hypogeal Nemesis
							i(212068),	-- Chestguard of the Hypogeal Nemesis
						}),
						cl(DRUID, {
							i(212051),	-- Cloak of the Greatlynx
							i(212052),	-- Great Links of the Greatlynx
							i(212053),	-- Faulds of the Greatlynx
							i(212054),	-- Maw of the Greatlynx
							i(212055),	-- Leggings of the Greatlynx
							i(212056),	-- Mask of the Greatlynx
							i(212057),	-- Eviscerators of the Greatlynx
							i(212058),	-- Treads of the Greatlynx
							i(212059),	-- Hide of the Greatlynx
						}),
						cl(EVOKER, {
							i(212024),	-- Cape of the Destroyer
							i(212025),	-- Wristblades of the Destroyer
							i(212026),	-- Core of the Destroyer
							i(212027),	-- Fumaroles of the Destroyer
							i(212028),	-- Legguards of the Destroyer
							i(212029),	-- Horns of the Destroyer
							i(212030),	-- Rippers of the Destroyer
							i(212031),	-- Talons of the Destroyer
							i(212032),	-- Scales of the Destroyer
						}),
						cl(HUNTER, {
							i(212015),	-- Lightless Scavenger's Hide
							i(212016),	-- Lightless Scavenger's Wristguards
							i(212017),	-- Lightless Scavenger's Bonegirdle
							i(212018),	-- Lightless Scavenger's Taxidermy
							i(212019),	-- Lightless Scavenger's Stalkings
							i(212020),	-- Lightless Scavenger's Skull
							i(212021),	-- Lightless Scavenger's Mitts
							i(212022),	-- Lightless Scavenger's Footpads
							i(212023),	-- Lightless Scavenger's Tunic
						}),
						cl(MAGE, {
							i(212087),	-- Ward of Violet Rebirth
							i(212088),	-- Bracelets of Violet Rebirth
							i(212089),	-- Sigil of Violet Rebirth
							i(212090),	-- Beacons of Violet Rebirth
							i(212091),	-- Coattails of Violet Rebirth
							i(212092),	-- Hood of Violet Rebirth
							i(212093),	-- Jeweled Gauntlets of Violet Rebirth
							i(212094),	-- Slippers of Violet Rebirth
							i(212095),	-- Runecoat of Violet Rebirth
						}),
						cl(MONK, {
							i(212042),	-- Gatecrasher's Mantle
							i(212043),	-- Gatecrasher's Armguards
							i(212044),	-- Gatecrasher's Cord
							i(212045),	-- Gatecrasher's Enduring Effigy
							i(212046),	-- Gatecrasher's Kilt
							i(212047),	-- Gatecrasher's Horns
							i(212048),	-- Gatecrasher's Protectors
							i(212049),	-- Gatecrasher's Tabi
							i(212050),	-- Gatecrasher's Gi
						}),
						cl(PALADIN, {
							i(211988),	-- Entombed Seraph's Greatcloak
							i(211989),	-- Entombed Seraph's Shackles
							i(211990),	-- Entombed Seraph's Waistguard
							i(211991),	-- Entombed Seraph's Plumes
							i(211992),	-- Entombed Seraph's Greaves
							i(211993),	-- Entombed Seraph's Casque
							i(211994),	-- Entombed Seraph's Castigation
							i(211995),	-- Entombed Seraph's Sabatons
							i(211996),	-- Entombed Seraph's Breastplate
						}),
						cl(PRIEST, {
							i(212078),	-- Living Luster's Glow
							i(212079),	-- Living Luster's Crystbands
							i(212080),	-- Living Luster's Lightbelt
							i(212081),	-- Living Luster's Dominion
							i(212082),	-- Living Luster's Trousers
							i(212083),	-- Living Luster's Semblance
							i(212084),	-- Living Luster's Touch
							i(212085),	-- Living Luster's Boots
							i(212086),	-- Living Luster's Raiment
						}),
						cl(ROGUE, {
							i(212033),	-- K'areshi Phantom's Breeze
							i(212034),	-- K'areshi Phantom's Cuffs
							i(212035),	-- K'areshi Phantom's Belt
							i(212036),	-- K'areshi Phantom's Shoulderpads
							i(212037),	-- K'areshi Phantom's Leggings
							i(212038),	-- K'areshi Phantom's Emptiness
							i(212039),	-- K'areshi Phantom's Grips
							i(212040),	-- K'areshi Phantom's Netherwalkers
							i(212041),	-- K'areshi Phantom's Nexus Wraps
						}),
						cl(SHAMAN, {
							i(212006),	-- Mist of the Forgotten Reservoir
							i(212007),	-- Embrace of the Forgotten Reservoir
							i(212008),	-- Wrappings of the Forgotten Reservoir
							i(212009),	-- Concourse of the Forgotten Reservoir
							--i(212010),	-- Sarong of the Forgotten Reservoir [does not exist]
							i(212011),	-- Noetic of the Forgotten Reservoir
							i(212012),	-- Covenant of the Forgotten Reservoir
							i(212013),	-- Shoes of the Forgotten Reservoir
							--i(212014),	-- Vestments of the Forgotten Reservoir [does not exist]
						}),
						cl(WARLOCK, {
							i(212069),	-- Hexflame Coven's Shawl
							i(212070),	-- Hexflame Coven's Wristlace
							i(212071),	-- Hexflame Coven's Dormant Eye
							i(212072),	-- Hexflame Coven's Altar
							i(212073),	-- Hexflame Coven's Leggings
							i(212074),	-- Hexflame Coven's All-Seeing Eye
							i(212075),	-- Hexflame Coven's Sleeves
							i(212076),	-- Hexflame Coven's Treads
							i(212077),	-- Hexflame Coven's Ritual Harness
						}),
						cl(WARRIOR, {
							i(211979),	-- Warsculptor's Cloak
							i(211980),	-- Warsculptor's Armguards
							i(211981),	-- Warsculptor's Buckle
							i(211982),	-- Warsculptor's Horned Spaulders
							i(211983),	-- Warsculptor's Cuisses
							i(211984),	-- Warsculptor's Barbute
							i(211985),	-- Warsculptor's Crushers
							i(211986),	-- Warsculptor's Carved Boots
							i(211987),	-- Warsculptor's Furred Plastron
						}),
					})),
					n(PVP_GLADIATOR, bubbleDown({ ["bonusID"] = 6898 }, {
						cl(DEATHKNIGHT, {
							i(211997),	-- Exhumed Centurion's Drape
							i(211998),	-- Exhumed Centurion's Manacles
							i(211999),	-- Exhumed Centurion's Baltea
							i(212000),	-- Exhumed Centurion's Spikes
							i(212001),	-- Exhumed Centurion's Chausses
							i(212002),	-- Exhumed Centurion's Galea
							i(212003),	-- Exhumed Centurion's Gauntlets
							i(212004),	-- Exhumed Centurion's Sollerets
							i(212005),	-- Exhumed Centurion's Breastplate
						}),
						cl(DEMONHUNTER, {
							i(212060),	-- Drape of the Hypogeal Nemesis
							i(212061),	-- Armguards of the Hypogeal Nemesis
							i(212062),	-- Waistguard of the Hypogeal Nemesis
							i(212063),	-- War-Mantle of the Hypogeal Nemesis
							i(212064),	-- Pantaloons of the Hypogeal Nemesis
							i(212065),	-- Impalers of the Hypogeal Nemesis
							i(212066),	-- Claws of the Hypogeal Nemesis
							i(212067),	-- Talons of the Hypogeal Nemesis
							i(212068),	-- Chestguard of the Hypogeal Nemesis
						}),
						cl(DRUID, {
							i(212051),	-- Cloak of the Greatlynx
							i(212052),	-- Great Links of the Greatlynx
							i(212053),	-- Faulds of the Greatlynx
							i(212054),	-- Maw of the Greatlynx
							i(212055),	-- Leggings of the Greatlynx
							i(212056),	-- Mask of the Greatlynx
							i(212057),	-- Eviscerators of the Greatlynx
							i(212058),	-- Treads of the Greatlynx
							i(212059),	-- Hide of the Greatlynx
						}),
						cl(EVOKER, {
							i(212024),	-- Cape of the Destroyer
							i(212025),	-- Wristblades of the Destroyer
							i(212026),	-- Core of the Destroyer
							i(212027),	-- Fumaroles of the Destroyer
							i(212028),	-- Legguards of the Destroyer
							i(212029),	-- Horns of the Destroyer
							i(212030),	-- Rippers of the Destroyer
							i(212031),	-- Talons of the Destroyer
							i(212032),	-- Scales of the Destroyer
						}),
						cl(HUNTER, {
							i(212015),	-- Lightless Scavenger's Hide
							i(212016),	-- Lightless Scavenger's Wristguards
							i(212017),	-- Lightless Scavenger's Bonegirdle
							i(212018),	-- Lightless Scavenger's Taxidermy
							i(212019),	-- Lightless Scavenger's Stalkings
							i(212020),	-- Lightless Scavenger's Skull
							i(212021),	-- Lightless Scavenger's Mitts
							i(212022),	-- Lightless Scavenger's Footpads
							i(212023),	-- Lightless Scavenger's Tunic
						}),
						cl(MAGE, {
							i(212087),	-- Ward of Violet Rebirth
							i(212088),	-- Bracelets of Violet Rebirth
							i(212089),	-- Sigil of Violet Rebirth
							i(212090),	-- Beacons of Violet Rebirth
							i(212091),	-- Coattails of Violet Rebirth
							i(212092),	-- Hood of Violet Rebirth
							i(212093),	-- Jeweled Gauntlets of Violet Rebirth
							i(212094),	-- Slippers of Violet Rebirth
							i(212095),	-- Runecoat of Violet Rebirth
						}),
						cl(MONK, {
							i(212042),	-- Gatecrasher's Mantle
							i(212043),	-- Gatecrasher's Armguards
							i(212044),	-- Gatecrasher's Cord
							i(212045),	-- Gatecrasher's Enduring Effigy
							i(212046),	-- Gatecrasher's Kilt
							i(212047),	-- Gatecrasher's Horns
							i(212048),	-- Gatecrasher's Protectors
							i(212049),	-- Gatecrasher's Tabi
							i(212050),	-- Gatecrasher's Gi
						}),
						cl(PALADIN, {
							i(211988),	-- Entombed Seraph's Greatcloak
							i(211989),	-- Entombed Seraph's Shackles
							i(211990),	-- Entombed Seraph's Waistguard
							i(211991),	-- Entombed Seraph's Plumes
							i(211992),	-- Entombed Seraph's Greaves
							i(211993),	-- Entombed Seraph's Casque
							i(211994),	-- Entombed Seraph's Castigation
							i(211995),	-- Entombed Seraph's Sabatons
							i(211996),	-- Entombed Seraph's Breastplate
						}),
						cl(PRIEST, {
							i(212078),	-- Living Luster's Glow
							i(212079),	-- Living Luster's Crystbands
							i(212080),	-- Living Luster's Lightbelt
							i(212081),	-- Living Luster's Dominion
							i(212082),	-- Living Luster's Trousers
							i(212083),	-- Living Luster's Semblance
							i(212084),	-- Living Luster's Touch
							i(212085),	-- Living Luster's Boots
							i(212086),	-- Living Luster's Raiment
						}),
						cl(ROGUE, {
							i(212033),	-- K'areshi Phantom's Breeze
							i(212034),	-- K'areshi Phantom's Cuffs
							i(212035),	-- K'areshi Phantom's Belt
							i(212036),	-- K'areshi Phantom's Shoulderpads
							i(212037),	-- K'areshi Phantom's Leggings
							i(212038),	-- K'areshi Phantom's Emptiness
							i(212039),	-- K'areshi Phantom's Grips
							i(212040),	-- K'areshi Phantom's Netherwalkers
							i(212041),	-- K'areshi Phantom's Nexus Wraps
						}),
						cl(SHAMAN, {
							i(212006),	-- Mist of the Forgotten Reservoir
							i(212007),	-- Embrace of the Forgotten Reservoir
							i(212008),	-- Wrappings of the Forgotten Reservoir
							i(212009),	-- Concourse of the Forgotten Reservoir
							--i(212010),	-- Sarong of the Forgotten Reservoir [does not exist]
							i(212011),	-- Noetic of the Forgotten Reservoir
							i(212012),	-- Covenant of the Forgotten Reservoir
							i(212013),	-- Shoes of the Forgotten Reservoir
							--i(212014),	-- Vestments of the Forgotten Reservoir [does not exist]
						}),
						cl(WARLOCK, {
							i(212069),	-- Hexflame Coven's Shawl
							i(212070),	-- Hexflame Coven's Wristlace
							i(212071),	-- Hexflame Coven's Dormant Eye
							i(212072),	-- Hexflame Coven's Altar
							i(212073),	-- Hexflame Coven's Leggings
							i(212074),	-- Hexflame Coven's All-Seeing Eye
							i(212075),	-- Hexflame Coven's Sleeves
							i(212076),	-- Hexflame Coven's Treads
							i(212077),	-- Hexflame Coven's Ritual Harness
						}),
						cl(WARRIOR, {
							i(211979),	-- Warsculptor's Cloak
							i(211980),	-- Warsculptor's Armguards
							i(211981),	-- Warsculptor's Buckle
							i(211982),	-- Warsculptor's Horned Spaulders
							i(211983),	-- Warsculptor's Cuisses
							i(211984),	-- Warsculptor's Barbute
							i(211985),	-- Warsculptor's Crushers
							i(211986),	-- Warsculptor's Carved Boots
							i(211987),	-- Warsculptor's Furred Plastron
						}),
					})),
					n(PVP_ELITE, bubbleDown({ ["bonusID"] = 8107 }, {
						cl(DEATHKNIGHT, {
							i(211997),	-- Exhumed Centurion's Drape
							i(211998),	-- Exhumed Centurion's Manacles
							i(211999),	-- Exhumed Centurion's Baltea
							i(212000),	-- Exhumed Centurion's Spikes
							i(212001),	-- Exhumed Centurion's Chausses
							i(212002),	-- Exhumed Centurion's Galea
							i(212003),	-- Exhumed Centurion's Gauntlets
							i(212004),	-- Exhumed Centurion's Sollerets
							i(212005),	-- Exhumed Centurion's Breastplate
						}),
						cl(DEMONHUNTER, {
							i(212060),	-- Drape of the Hypogeal Nemesis
							i(212061),	-- Armguards of the Hypogeal Nemesis
							i(212062),	-- Waistguard of the Hypogeal Nemesis
							i(212063),	-- War-Mantle of the Hypogeal Nemesis
							i(212064),	-- Pantaloons of the Hypogeal Nemesis
							i(212065),	-- Impalers of the Hypogeal Nemesis
							i(212066),	-- Claws of the Hypogeal Nemesis
							i(212067),	-- Talons of the Hypogeal Nemesis
							i(212068),	-- Chestguard of the Hypogeal Nemesis
						}),
						cl(DRUID, {
							i(212051),	-- Cloak of the Greatlynx
							i(212052),	-- Great Links of the Greatlynx
							i(212053),	-- Faulds of the Greatlynx
							i(212054),	-- Maw of the Greatlynx
							i(212055),	-- Leggings of the Greatlynx
							i(212056),	-- Mask of the Greatlynx
							i(212057),	-- Eviscerators of the Greatlynx
							i(212058),	-- Treads of the Greatlynx
							i(212059),	-- Hide of the Greatlynx
						}),
						cl(EVOKER, {
							i(212024),	-- Cape of the Destroyer
							i(212025),	-- Wristblades of the Destroyer
							i(212026),	-- Core of the Destroyer
							i(212027),	-- Fumaroles of the Destroyer
							i(212028),	-- Legguards of the Destroyer
							i(212029),	-- Horns of the Destroyer
							i(212030),	-- Rippers of the Destroyer
							i(212031),	-- Talons of the Destroyer
							i(212032),	-- Scales of the Destroyer
						}),
						cl(HUNTER, {
							i(212015),	-- Lightless Scavenger's Hide
							i(212016),	-- Lightless Scavenger's Wristguards
							i(212017),	-- Lightless Scavenger's Bonegirdle
							i(212018),	-- Lightless Scavenger's Taxidermy
							i(212019),	-- Lightless Scavenger's Stalkings
							i(212020),	-- Lightless Scavenger's Skull
							i(212021),	-- Lightless Scavenger's Mitts
							i(212022),	-- Lightless Scavenger's Footpads
							i(212023),	-- Lightless Scavenger's Tunic
						}),
						cl(MAGE, {
							i(212087),	-- Ward of Violet Rebirth
							i(212088),	-- Bracelets of Violet Rebirth
							i(212089),	-- Sigil of Violet Rebirth
							i(212090),	-- Beacons of Violet Rebirth
							i(212091),	-- Coattails of Violet Rebirth
							i(212092),	-- Hood of Violet Rebirth
							i(212093),	-- Jeweled Gauntlets of Violet Rebirth
							i(212094),	-- Slippers of Violet Rebirth
							i(212095),	-- Runecoat of Violet Rebirth
						}),
						cl(MONK, {
							i(212042),	-- Gatecrasher's Mantle
							i(212043),	-- Gatecrasher's Armguards
							i(212044),	-- Gatecrasher's Cord
							i(212045),	-- Gatecrasher's Enduring Effigy
							i(212046),	-- Gatecrasher's Kilt
							i(212047),	-- Gatecrasher's Horns
							i(212048),	-- Gatecrasher's Protectors
							i(212049),	-- Gatecrasher's Tabi
							i(212050),	-- Gatecrasher's Gi
						}),
						cl(PALADIN, {
							i(211988),	-- Entombed Seraph's Greatcloak
							i(211989),	-- Entombed Seraph's Shackles
							i(211990),	-- Entombed Seraph's Waistguard
							i(211991),	-- Entombed Seraph's Plumes
							i(211992),	-- Entombed Seraph's Greaves
							i(211993),	-- Entombed Seraph's Casque
							i(211994),	-- Entombed Seraph's Castigation
							i(211995),	-- Entombed Seraph's Sabatons
							i(211996),	-- Entombed Seraph's Breastplate
						}),
						cl(PRIEST, {
							i(212078),	-- Living Luster's Glow
							i(212079),	-- Living Luster's Crystbands
							i(212080),	-- Living Luster's Lightbelt
							i(212081),	-- Living Luster's Dominion
							i(212082),	-- Living Luster's Trousers
							i(212083),	-- Living Luster's Semblance
							i(212084),	-- Living Luster's Touch
							i(212085),	-- Living Luster's Boots
							i(212086),	-- Living Luster's Raiment
						}),
						cl(ROGUE, {
							i(212033),	-- K'areshi Phantom's Breeze
							i(212034),	-- K'areshi Phantom's Cuffs
							i(212035),	-- K'areshi Phantom's Belt
							i(212036),	-- K'areshi Phantom's Shoulderpads
							i(212037),	-- K'areshi Phantom's Leggings
							i(212038),	-- K'areshi Phantom's Emptiness
							i(212039),	-- K'areshi Phantom's Grips
							i(212040),	-- K'areshi Phantom's Netherwalkers
							i(212041),	-- K'areshi Phantom's Nexus Wraps
						}),
						cl(SHAMAN, {
							i(212006),	-- Mist of the Forgotten Reservoir
							i(212007),	-- Embrace of the Forgotten Reservoir
							i(212008),	-- Wrappings of the Forgotten Reservoir
							i(212009),	-- Concourse of the Forgotten Reservoir
							--i(212010),	-- Sarong of the Forgotten Reservoir [does not exist]
							i(212011),	-- Noetic of the Forgotten Reservoir
							i(212012),	-- Covenant of the Forgotten Reservoir
							i(212013),	-- Shoes of the Forgotten Reservoir
							--i(212014),	-- Vestments of the Forgotten Reservoir [does not exist]
						}),
						cl(WARLOCK, {
							i(212069),	-- Hexflame Coven's Shawl
							i(212070),	-- Hexflame Coven's Wristlace
							i(212071),	-- Hexflame Coven's Dormant Eye
							i(212072),	-- Hexflame Coven's Altar
							i(212073),	-- Hexflame Coven's Leggings
							i(212074),	-- Hexflame Coven's All-Seeing Eye
							i(212075),	-- Hexflame Coven's Sleeves
							i(212076),	-- Hexflame Coven's Treads
							i(212077),	-- Hexflame Coven's Ritual Harness
						}),
						cl(WARRIOR, {
							i(211979),	-- Warsculptor's Cloak
							i(211980),	-- Warsculptor's Armguards
							i(211981),	-- Warsculptor's Buckle
							i(211982),	-- Warsculptor's Horned Spaulders
							i(211983),	-- Warsculptor's Cuisses
							i(211984),	-- Warsculptor's Barbute
							i(211985),	-- Warsculptor's Crushers
							i(211986),	-- Warsculptor's Carved Boots
							i(211987),	-- Warsculptor's Furred Plastron
						}),
					})),
				}),
			},
		}),
        --[[ TODO: (!) New achievements not sourced yet
		ach(20501, bubbleDownSelf({	-- You Xal Not Pass
			["timeline"] = { ADDED_11_0_7 },
		},{
			-- Meta Achievement
			["sym"] = {{"meta_achievement",
				41189,	-- Azj the World Turns (!)
                41188,  -- Crystal Chronicled  (!)
                41133,  -- Isle Remember You (!)
                41187,  -- Rage Aside the Machine (!)
                41186,  -- Slate of the Union (!)
			}},
			["groups"] = {
				i(223313),	-- Shadow of Doubt (MOUNT!)
			},
		})),
		]]--
	}),
})));
root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.TWW, bubbleDown({ ["timeline"] = { ADDED_11_0_2 } }, {
	n(ACHIEVEMENTS, {
		q(83826),	-- Triggered when using 'Luminous Nerubian Catalyst Stone' (itemID 226224) (spellID 458517)
	}),
})));