---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(KHAZ_ALGAR, {
	m(THE_RINGING_DEEPS, {
		n(RARES, sharedData({ ["isDaily"] = true }, {
			n(220265, {	-- Automaxor
				["coord"] = { 52.6, 19.9, THE_RINGING_DEEPS },
				["questID"] = 81674,
				["groups"] = {
					i(221238),	-- Pillar of Constructs
					i(221218),	-- Reinforced Construct's Greaves
				},
			}),
			n(220267, {	-- Charmonger
				["coord"] = { 41.3, 16.9, THE_RINGING_DEEPS },	-- old coord: 61.5, 26.8 or more than one spawn now?
				["questID"] = 81562,
				["groups"] = {
					i(221209),	-- Flame Trader's Gloves
					i(221249),	-- Kobold Rodent Squasher
				},
			}),
			n(220266, {	-- Coalesced Monstrosity
				["coord"] = { 57.9, 38.2, THE_RINGING_DEEPS },
				["questID"] = 81511,
				["groups"] = {
					i(223006),	-- Signet of Dark Horizons
					i(221226),	-- Voidtouched Waistguard
				},
			}),
			n(220269, {	-- Cragmund <Guardian of the River>
				["coord"] = { 51.0, 46.4, THE_RINGING_DEEPS },
				["questID"] = 80560,
				["groups"] = {
					i(221254),	-- Earthshatter Lance
					i(221205),	-- Vest of the River
				},
			}),
			n(220286, {	-- Deepflayer Broodmother
				["description"] = "Flying around entire Earthenworks location.",
				["coords"] = {
					{ 53.1, 21.7, THE_RINGING_DEEPS },
					{ 55.6, 12.6, THE_RINGING_DEEPS },
					{ 49.6, 9.6, THE_RINGING_DEEPS },
					{ 44.1, 9.4, THE_RINGING_DEEPS },
					{ 46.3, 17.9, THE_RINGING_DEEPS },
				},
				["questID"] = 80536,
				["groups"] = {
					i(221507),	-- Earth Golem's Wrap
					i(225999),	-- Earthen Adventurer's Tabard
					i(221254),	-- Earthshatter Lance
				},
			}),
			n(218393, {	-- Disturbed Earthgorger
				["coord"] = { 67.1, 52.6, THE_RINGING_DEEPS },
				["questID"] = 80003,
				["groups"] = {
					i(223943),	-- Cord of the Earthbreaker
					i(223926),	-- Earthgorger's Chain Bib
					i(221237),	-- Lamentable Vagrant's Lantern
				},
			}),
			n(221199, {	-- Hungerer of the Deeps
				["coord"] = { 66.3, 49.5, THE_RINGING_DEEPS },
				["questID"] = 81648,
				["groups"] = {
					i(223949),	-- Dark Depth Stompers
				},
			}),
			n(220287, {	-- Kelpmire
				["coord"] = { 46.8, 46.8, THE_RINGING_DEEPS },
				["questID"] = 81485,
				["groups"] = {
					i(221250),	-- Creeping Lasher Machete
					i(221253),	-- Cultivator's Plant Puncher
					i(221264),	-- Fungarian Mystic's Cluster
					i(221204),	-- Spore Giant's Stompers
					i(223005),	-- String of Fungal Fruits
				},
			}),
			n(220285, {	-- Lurker of the Deeps <Displaced Sea Horror>
				["description"] = "Interact with 5 levers located across the zone within 10 seconds to summon this rare.",
				["coords"] = {
					{ 60.8, 76.6, THE_RINGING_DEEPS },	-- Lurker of the Deeps
					{ 49.5, 8.8, THE_RINGING_DEEPS },	-- Lever 1
					{ 53.9, 25.3, THE_RINGING_DEEPS },	-- Lever 2
					{ 57.6, 23.6, THE_RINGING_DEEPS },	-- Lever 3
					{ 62.8, 44.7, THE_RINGING_DEEPS },	-- Lever 4
					{ 59.1, 92.3, THE_RINGING_DEEPS },	-- Lever 5
				},
				["questID"] = 81633,
				["groups"] = {
					i(221248),	-- Deep Terror Carver
					i(221233),	-- Deephunter's Bloody Hook
					i(223501),	-- Ol' Mole Rufus (MOUNT!)
					i(221255),	-- Sharpened Scalepiercer
					i(221234),	-- Tidal Pendant
				},
			}),
			n(221217, {	-- Spore-Infused Shalewing
				["description"] = "Flying around",
				["coords"] = {
					{ 67.5, 45.9, THE_RINGING_DEEPS },
					{ 65.7, 46.6, THE_RINGING_DEEPS },
					{ 67.9, 52.3, THE_RINGING_DEEPS },
					{ 66.5, 49.8, THE_RINGING_DEEPS },
				},
				["questID"] = 81652,
				["groups"] = {
					i(223919),	-- Abducted Lawman's Gavel
					i(223918),	-- Specter Stalker's Shotgun
					i(223942),	-- Spore-Encrusted Ribbon
				},
			}),
			n(220271, {	-- Terror of the Forge
				["coord"] = { 46.0, 12.0, THE_RINGING_DEEPS },
				["questID"] = 80507,
				["groups"] = {
					i(221242),	-- Forgeborn Helm
					i(221255),	-- Sharpened Scalepiercer
				},
			}),
			n(220268, {	-- Trungal
				["description"] = "Kill roots of Trungal on way to him to make him jump out of terrain.",
				["coord"] = { 71.8, 46.3, THE_RINGING_DEEPS },
				["questID"] = 80574,
				["groups"] = {
					i(221250),	-- Creeping Lasher Machete
					i(221253),	-- Cultivator's Plant Puncher
					i(221228),	-- Infested Fungal Wristwraps
					i(223005),	-- String of Fungal Fruits
				},
			}),
			n(220270, {	-- Zilthara <The Deepflayer Devourer>
				["coord"] = { 52.0, 26.4, THE_RINGING_DEEPS },
				["questID"] = 80506,
				["groups"] = {
					i(221220),	-- Basilisk Scale Pauldrons
					i(221247),	-- Cavernous Critter Shooter
				},
			}),
		})),
		n(RARES, {
			n(220274, {	-- Aquelion
				["coord"] = { 49.5, 66.2, THE_RINGING_DEEPS },	-- old coord: 55.0, 70.5?
				["questID"] = 80557,
				["groups"] = {
					i(223340),	-- Footguards of Shallow Waters
					i(223372),	-- Sabatons of Shallow Waters
					i(223371),	-- Slippers of Shallow Waters
					i(223373),	-- Treads of Shallow Waters
				},
			}),
			n(220276, {	-- Candleflyer Captain
				["description"] = "Flying around pretty high.",
				["coord"] = { 66.5, 29.9, THE_RINGING_DEEPS },
				["questID"] = 80505,
				["groups"] = {
					i(223360),	-- Flying Kobold's Seatbelt [Plate]
					i(223361),	-- Flying Kobold's Seatbelt [Cloth]
					i(223362),	-- Flying Kobold's Seatbelt [Mail]
					i(223363),	-- Flying Kobold's Seatbelt [Leather]
				},
			}),
			n(220272, {	-- Deathbound Husk
				["coord"] = { 66.7, 68.8, THE_RINGING_DEEPS },
				["questID"] = 81566,
				["groups"] = {
					i(223368),	-- Twisted Earthen Signet
				},
			}),
			n(220275, {	-- King Splash
				["coord"] = { 42.8, 35.1, THE_RINGING_DEEPS },
				["questID"] = 80547,
				["groups"] = {
					i(223354),	-- Waterskipper's Chain Leggings
					i(223355),	-- Waterskipper's Leggings
					i(223352),	-- Waterskipper's Legplates
					i(223353),	-- Waterskipper's Trousers
				},
			}),
			n(220273, {	-- Rampaging Skardyn
				["coord"] = { 57.0, 54.7, THE_RINGING_DEEPS },
				["questID"] = 81563,
				["groups"] = {
					i(223403),	-- Corrupted Earthen Binds
					i(223404),	-- Corrupted Earthen Cuffs
					i(223402),	-- Corrupted Earthen Wristguards
					i(223401),	-- Corrupted Earthen Wristwraps
				},
			}),
		}),
	}),
}));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.TWW, {
	m(KHAZ_ALGAR, {
		m(THE_RINGING_DEEPS, {
			n(RARES, {
				q(84046, {	-- Weekly reputation: Automaxor
					["name"] = "Automaxor weekly reputation obtained.",
				}),
				q(84044, {	-- Weekly reputation: Charmonger
					["name"] = "Charmonger weekly reputation obtained.",
				}),
				q(84045, {	-- Weekly reputation: Coalesced Monstrosity
					["name"] = "Coalesced Monstrosity weekly reputation obtained.",
				}),
				q(84042, {	-- Weekly reputation: Cragmund
					["name"] = "Cragmund weekly reputation obtained.",
				}),
				q(85162, {	-- Weekly reputation: Deepflayer Broodmother
					["name"] = "Deepflayer Broodmother weekly reputation obtained.",
				}),
				q(84050, {	-- Weekly reputation: Disturbed Earthgorger
					["name"] = "Disturbed Earthgorger weekly reputation obtained.",
				}),
				q(84048, {	-- Weekly reputation: Hungerer of the Deeps
					["name"] = "Hungerer of the Deeps weekly reputation obtained.",
				}),
				q(84047, {	-- Weekly reputation: Kelpmire
					["name"] = "Kelpmire weekly reputation obtained.",
				}),
				q(85163, {	-- Weekly reputation: Lurker of the Deeps
					["name"] = "Lurker of the Deeps weekly reputation obtained.",
				}),
				q(84049, {	-- Weekly reputation: Spore-Infused Shalewing
					["name"] = "Spore-Infused Shalewing weekly reputation obtained.",
				}),
				q(84040, {	-- Weekly reputation: Terror of Forge
					["name"] = "Terror of Forge weekly reputation obtained.",
				}),
				q(84043, {	-- Weekly reputation: Trungal
					["name"] = "Trungal weekly reputation obtained.",
				}),
				q(84041, {	-- Weekly reputation: Zilthara
					["name"] = "Zilthara weekly reputation obtained.",
				}),
			}),
		}),
	}),
}));
