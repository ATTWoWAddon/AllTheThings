---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(KHAZ_ALGAR, bubbleDown({ ["timeline"] = { ADDED_11_2_0 } }, {
	m(KARESH, {
		n(RARES, {
			n(232098, {	-- "Chowdar" <Escaped Auction Parcel #8675308>
				["coords"] = {	-- Runs between the coordinates
					{ 81.9, 75.6, TAZAVESH },
					{ 76.5, 76.8, TAZAVESH },
					{ 72.8, 84.2, TAZAVESH },
				},
				["questID"] = 90587,
				["g"] = {
					i(242323),	-- Chowdar's Favorite Ribbon (TOY!)
					i(239477),	-- Reshii Brute's Epaulettes
				},
			}),
			n(241956, {	-- Arcana-Monger So'zer
				--["coord"] = { x, y, KARESH },
				--["questID"] = ,
			}),
			n(238540, {	-- Grubber
				["coord"] = { 71.1, 57.2, TAZAVESH },
				["questID"] = 90698,
			}),
			n(245998, {	-- Heka'tamos <the Elemental Disjunction>
				["description"] = "You need to interract with Spectral Lantern, Dewminder, Earthy Succulent, and Windcatcher inside The Oasis.\nOnce you have obtained the buffs, you can summon Heka'tamos at the Brazier of Elemental Union near his spawn point.",
				["coord"] = { 75.2, 31.0, KARESH },
				["questID"] = 91276,
				["g"] = {
					i(245272),	-- Heka'Tarnos, Bringer of Discord (PET!)
				},
			}),
			n(232128, {	-- Ixthar the Unblinking
				["description"] = "You need to Phasedive in order to see Ixthar.",
				["coord"] = { 64.0, 43.6, KARESH },
				["questID"] = 90596,
			}),
			n(232077, {	-- Korgorath the Ravager
				["coord"] = { 64.7, 43.6, KARESH },
				["questID"] = 90586,
			}),
			n(245997, {	-- Malek'ta <The Jaws of Oblivion>
				["description"] = "Malek'ta is burrowed under the ground. Jump around to lure it out.",
				["coord"] = { 54.1, 58.8, KARESH },
				["questID"] = 91275,
				["g"] = {
					i(245214),	-- Palek'ti, the Mouth of Nothingness (PET!)
					i(240169),	-- Reshii Magi's Amulet
					i(240168),	-- Reshii Magi's Seal
				},
			}),
			n(231981, {	-- Maw of the Sands
				--["coord"] = { x, y, KARESH },
				--["questID"] = ,
			}),
			n(232108, {	-- Morgil the Netherspawn
				--["coord"] = { x, y, KARESH },
				--["questID"] = ,
			}),
			n(232127, {	-- Orith the Dreadful
				["description"] = "You need to Phasedive in order to see Orith.",
				["coord"] = { 58.9, 20.8, KARESH },
				["questID"] = 90595,
			}),
			n(235422, {	-- Phase-Thief Tezra
				--["coord"] = { x, y, KARESH },
				--["questID"] = ,
			}),
			n(232182, {	-- Prototype Mk-V
				["coord"] = { 45.8, 24.2, KARESH },
				["questID"] = 90590,
				["g"] = {
					i(239478),	-- Reshii Brute's Greatbelt
				},
			}),
			n(241920, {	-- Purple Peat
				["coord"] = { 42.5, 57.5, KARESH },
				--["questID"] = ,
			}),
			n(232189, {	-- Revenant of the Wasteland
				["coord"] = { 50.5, 64.6, KARESH },
				["questID"] = 90591,
			}),
			n(232006, {	-- Sha'ryth the Cursed
				["coord"] = { 72.3, 55.8, KARESH },
				["questID"] = 90585,
				["g"] = {
					i(239453),	-- Reshii Magi's Spines
				},
			}),
			n(232129, {	-- Shadowhowl
				--["coord"] = { x, y, KARESH },
				--["questID"] = ,
			}),
			n(232193, {	-- Stalker of the Wastes
				--["coord"] = { x, y, KARESH },
				--["questID"] = ,
			}),
			n(234845, {	-- Sthaarbs <the Mindroiler>
				--["coord"] = { x, y, KARESH },
				--["questID"] = ,
			}),
			n(232111, {	-- The Nightreaver
				["coord"] = { 52.7, 56.5, KARESH },
				["questID"] = 90589,
			}),
			n(232195, {	-- Urmag <The Terror Below>
				["coord"] = { 70.2, 49.7, KARESH },
				["questID"] = 90593,
			}),
			n(232199, {	-- Xarran the Binder
				["coord"] = { 65.1, 50.0, KARESH },
				["questID"] = 90584,
				["g"] = {
					i(239451),	-- Reshii Magi's Crown
				},
			}),
		}),
	}),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.TWW, bubbleDownSelf({ ["timeline"] = { ADDED_11_2_0 } }, {
	m(KHAZ_ALGAR, {
		m(KARESH, {
			n(RARES, {
				q(90676, {	-- Weekly reputation: "Chowdar"
					["name"] = "Chowdar weekly reputation obtained.",
				}),
				q(90699, {	-- Weekly reputation: Grubber
					["name"] = "Grubber weekly reputation obtained.",
				}),
				q(91422, {	-- Weekly reputation: Heka'tamos
					["name"] = "Heka'tamos weekly reputation obtained.",
				}),
				q(90685, {	-- Weekly reputation: Ixthar the Unblinking
					["name"] = "Ixthar the Unblinking weekly reputation obtained.",
				}),
				q(90675, {	-- Weekly reputation: Korgorath the Ravager
					["name"] = "Korgorath the Ravager weekly reputation obtained.",
				}),
				q(91421, {	-- Weekly reputation: Malek'ta
					["name"] = "Malek'ta weekly reputation obtained.",
				}),
				q(90684, {	-- Weekly reputation: Orith the Dreadful
					["name"] = "Orith the Dreadful weekly reputation obtained.",
				}),
				q(90679, {	-- Weekly reputation: Prototype Mk-V
					["name"] = "Prototype Mk-V weekly reputation obtained.",
				}),
				q(90680, {	-- Weekly reputation: Revenant of the Wasteland
					["name"] = "Revenant of the Wasteland weekly reputation obtained.",
				}),
				q(90673, {	-- Weekly reputation: Sha'ryth the Cursed
					["name"] = "Sha'ryth the Cursed weekly reputation obtained.",
				}),
				q(90678, {	-- Weekly reputation: The Nightreaver
					["name"] = "The Nightreaver weekly reputation obtained.",
				}),
				q(90682, {	-- Weekly reputation: Urmag
					["name"] = "Urmag weekly reputation obtained.",
				}),
				q(90672, {	-- Weekly reputation: Xarran the Binder
					["name"] = "Xarran the Binder weekly reputation obtained.",
				}),
			}),
		}),
	}),
})));