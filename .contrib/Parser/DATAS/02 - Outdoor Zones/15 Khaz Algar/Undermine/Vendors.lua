---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(KHAZ_ALGAR, bubbleDown({ ["timeline"] = { ADDED_11_1_0 } }, {
	m(UNDERMINE, {
		n(VENDORS, {
			n(231824, {	-- Kari Bridgeblaster
				["coord"] = { 44.0, 49.8, UNDERMINE },
				["g"] = {
					-- tier set vendor
					-- curio - 228819 Excessively Bejeweled Curio
				},
			}),
			n(237784, {	-- Alchemist Pestlezugg
				["coord"] = { 28.0, 73.9, UNDERMINE },
				["g"] = {
					i(235703),	-- Noggenfogger Select DOWN
					i(235710, {	-- Noggenfogger Select FRESH
						["races"] = { GOBLIN },	-- TODO: I don't have any goblin
					}),
					i(235704),	-- Noggenfogger Select UP
				},
			}),
			n(239112, {	-- Bombin' Bert
				["coord"] = { 50.9, 31.8, UNDERMINE },
				["g"] = {
					i(237762),	-- "Harmless" Sniper Dislodger XL
					i(237306),	-- NEW Goblin Hot Potato
				},
			}),
			n(239150, {	-- Brix the Bloody
				--TODO: idk rp or whatever purpose it is
				["coord"] = { 28.2, 27.1, UNDERMINE },
				["g"] = {
					i(237315),	-- Fighting Guide: Armed Combat
					i(237320),	-- Fighting Guide: Grappling Combat
					i(237319),	-- Fighting Guide: Magical Combat
					i(237314),	-- Fighting Guide: Unarmed Combat
					i(237318),	-- Injury Guide: Knockdown
					i(237317),	-- Injury Guide: Play Dead
					i(237316),	-- Injury Guide: Stunned
					i(237323),	-- Scoring Guide: Add Point
					i(237322),	-- Scoring Guide: Remove Point
					i(237321),	-- Scoring Guide: Start Counter
				},
			}),
			n(231405, {	-- Boatswain Hardee <Blackwater Quartermaster>
				["coord"] = { 63.4, 16.7, UNDERMINE },
				["g"] = bubbleDownClassicRep(FACTION_TWW_BLACKWATER_CARTEL, {
					{		-- Neutral
					}, {	-- Friendly
						i(236763),	-- Finder's Fee
					}, {	-- Honored
						i(236671, {	-- The Buzzer (MM!)
							["cost"] = {{ "c", RESONANCE_CRYSTALS, 975 }},
						}),
						i(235671, {	-- Blackwater Cartel Banner (TOY!)
							["cost"] = {{ "c", RESONANCE_CRYSTALS, 5000 }},
						}),
					}, {	-- Revered
						i(232839, {	-- Wavebreaker Mechasaur (PET!)
							["cost"] = {{ "c", RESONANCE_CRYSTALS, 6500 }},
						}),
						i(235801, {	-- Personal Fishing Barge (TOY!)
							["cost"] = {{ "c", RESONANCE_CRYSTALS, 5000 }},
						}),
					}, {	-- Exalted
						i(229948, {	-- Blackwater Shredder Deluxe Mk 2 (MOUNT!)
							["cost"] = {{ "c", RESONANCE_CRYSTALS, 8125 }},
						}),
						i(231528, {	-- Blackwater Undermine Tabard (COSMETIC!)
							["cost"] = {{ "c", RESONANCE_CRYSTALS, 1625 }},
						}),
						i(235390, {	-- Paint: Body Roll Blue (MM!)
							["cost"] = {{ "c", RESONANCE_CRYSTALS, 1350 }},
						}),
					},
				}),
			}),
			n(239523, {	-- Brondo Packrat
				["coord"] = { 29.0, 53.8, UNDERMINE },
				["g"] = {
					-- TODO: move into uncollectible?
					i(237333),	-- Undermine Crate
				},
			}),
			n(236411, {	-- Ditty Fuzeboy
				["coord"] = { 35.4, 41.4, UNDERMINE },
				["g"] = {
					i(232850, {	-- Blackwater Kegmover (PET!)
						["cost"] = {{ "i", 234741, 5 }},	-- Miscellaneous Mechanica
					}),
					i(232842, {	-- Crimson Mechasaur (PET!)
						["cost"] = {{ "i", 234741, 10 }},	-- Miscellaneous Mechanica
					}),
					i(232840, {	-- Mechagopher (PET!)
						["cost"] = {{ "i", 234741, 5 }},	-- Miscellaneous Mechanica
					}),
					i(232841, {	-- Professor Punch (PET!)
						["cost"] = {{ "i", 234741, 8 }},	-- Miscellaneous Mechanica
					}),
					i(232846, {	-- Steamwheedle Flunkie (PET!)
						["cost"] = {{ "i", 234741, 5 }},	-- Miscellaneous Mechanica
					}),
					i(232849, {	-- Venture Companyman (PET!)
						["cost"] = {{ "i", 234741, 5 }},	-- Miscellaneous Mechanica
					}),
				},
			}),
			n(239166, {	-- Geeves
				["coord"] = { 29.2, 25.8, UNDERMINE },
				["g"] = {
					-- TODO: move in uncollectible if there won't be any purpose or shared in zone
					i(236647),	-- Coin and Kaja
					i(236649),	-- Few Screws Loose
					i(236646),	-- Gallagio Especial
					i(236681),	-- Liquid Gold
					i(236648),	-- Liquid Nitro
					i(236633),	-- Low-Town Fizz
					i(236650),	-- Paincracker
				},
			}),
			n(236849, {	-- Greexit Coarsebub
				["coord"] = { 24.5, 63.3, UNDERMINE },
				["g"] = {
					--locked out per week with hqt?
					-- Bilgewater Cartel
					i(231736),	-- Bilgewater Bruiser's Tabard
					i(231748),	-- Bilgewater Bruiser's Spaulders
					i(231742),	-- Bilgewater Bruiser's Helm
					-- Blackwater Cartel
					i(231734),	-- Blackwater Bruiser's Tabard
					i(231746),	-- Blackwater Bruiser's Spaulders
					i(231741),	-- Blackwater Bruiser's Helm
					-- Steamwheedle Cartel
					i(231735),	-- Steamwheedle Bruiser's Tabard
					i(231747),	-- Steamwheedle Bruiser's Spaulders
					i(231740),	-- Steamwheedle Bruiser's Helm
					-- Venture Co.
					i(231738),	-- Venture Co. Bruiser's Tabard
					i(231750),	-- Venture Co. Bruiser's Spaulders
					i(231744),	-- Venture Co. Bruiser's Helm
				},
			}),
			n(231408, {	-- Lab Assistant Laszly <Steamwheedle Quartermaster>
				["coord"] = { 27.5, 72.8, UNDERMINE },
				["g"] = bubbleDownClassicRep(FACTION_TWW_STEAMWHEEDLE_CARTEL, {
					{		-- Neutral
					}, {	-- Friendly
						i(236689),	-- Finder's Fee
					}, {	-- Honored
						i(236670, {	-- Maniacal Melodies (MM!)
							["cost"] = {{ "c", RESONANCE_CRYSTALS, 975 }},
						}),
						i(235669, {	-- Steamwheedle Cartel Banner (TOY!)
							["cost"] = {{ "c", RESONANCE_CRYSTALS, 5000 }},
						}),
					}, {	-- Revered
						i(232853, {	-- Eepy (PET!)
							["cost"] = {{ "c", RESONANCE_CRYSTALS, 6500 }},
						}),
						i(226373, {	-- Everlasting Noggenfogger Elixir (TOY!)
							["cost"] = {{ "c", RESONANCE_CRYSTALS, 5000 }},
						}),
					}, {	-- Exalted
						i(229956, {	-- Mean Green Flying Machine (MOUNT!)
							["cost"] = {{ "c", RESONANCE_CRYSTALS, 11375 }},
						}),
						i(231527, {	-- Steamwheedle Undermine Tabard (COSMETIC!)
							["cost"] = {{ "c", RESONANCE_CRYSTALS, 1625 }},
						}),
						i(235389, {	-- Paint: Goblin Green (MM!)
							["cost"] = {{ "c", RESONANCE_CRYSTALS, 1350 }},
						}),
					},
				}),
			}),
			n(231406, {	-- Rocco Razzboom <Bilgewater Quartermaster>
				["coord"] = { 39.2, 22.2, UNDERMINE },
				["g"] = bubbleDownClassicRep(FACTION_TWW_BILGEWATER_CARTEL, {
					{		-- Neutral
					}, {	-- Friendly
						i(236764),	-- Finder's Fee
					}, {	-- Honored
						i(236672, {	-- The Ol' Low-and-Slow (MM!)
							["cost"] = {{ "c", RESONANCE_CRYSTALS, 975 }},
						}),
						i(235670, {	-- Bilgewater Cartel Banner (TOY!)
							["cost"] = {{ "c", RESONANCE_CRYSTALS, 5000 }},
						}),
					}, {	-- Revered
						i(232845, {	-- Bilgewater Junkhauler (PET!)
							["cost"] = {{ "c", RESONANCE_CRYSTALS, 6500 }},
						}),
						i(235807, {	-- Storefront-in-a-Box (TOY!)
							["cost"] = {{ "c", RESONANCE_CRYSTALS, 5000 }},
						}),
					}, {	-- Exalted
						i(229935, {	-- Crimson Armored Growler (MOUNT!)
							["cost"] = {{ "c", RESONANCE_CRYSTALS, 8125 }},
						}),
						i(231526, {	-- Bilgewater Undermine Tabard (COSMETIC!)
							["cost"] = {{ "c", RESONANCE_CRYSTALS, 1625 }},
						}),
						i(235388, {	-- Paint: Redlining Red (MM!)
							["cost"] = {{ "c", RESONANCE_CRYSTALS, 1350 }},
						}),
					},
				}),
			}),
			n(231407, {	-- Shredz the Scrapper <Venture Quartermaster>
				["coord"] = { 53.3, 72.7, UNDERMINE },
				["g"] = bubbleDownClassicRep(FACTION_TWW_VENTURE_CO, {
					{		-- Neutral
					}, {	-- Friendly
						i(236765),	-- Finder's Fee
					}, {	-- Honored
						i(236669, {	-- The Whole Brass Band (MM!)
							["cost"] = {{ "c", RESONANCE_CRYSTALS, 975 }},
						}),
						i(235672, {	-- Venture Co. Banner (TOY!)
							["cost"] = {{ "c", RESONANCE_CRYSTALS, 5000 }},
						}),
					}, {	-- Revered
						i(232851, {	-- Rocketfist (PET!)
							["cost"] = {{ "c", RESONANCE_CRYSTALS, 6500 }},
						}),
						i(235799, {	-- Throwin' Sawblade (TOY!)
							["cost"] = {{ "c", RESONANCE_CRYSTALS, 5000 }},
						}),
					}, {	-- Exalted
						i(229946, {	-- Ocher Delivery Rocket (MOUNT!)
							["cost"] = {{ "c", RESONANCE_CRYSTALS, 11375 }},
						}),
						i(231542, {	-- Venture Co. Undermine Tabard (COSMETIC!)
							["cost"] = {{ "c", RESONANCE_CRYSTALS, 1625 }},
						}),
						i(235391, {	-- Paint: Yellow Cake Yellow (MM!)
							["cost"] = {{ "c", RESONANCE_CRYSTALS, 1350 }},
						}),
					},
				}),
			}),
			n(228286, {	-- Skedgit Cinderbangs <Entrepreneur Inc.>
				["coord"] = { 43.0, 82.8, UNDERMINE },
				["g"] = {
					i(229952, {	-- Asset Advocator (MOUNT!)
						["cost"] = {{ "i", 234741, 25 }},	-- Miscellaneous Mechanica
					}),
					i(229941, {	-- Innovation Investigator (MOUNT!)
						["cost"] = {{ "i", 234741, 25 }},	-- Miscellaneous Mechanica
					}),
					i(229954, {	-- Margin Manipulator (MOUNT!)
						["cost"] = {{ "i", 234741, 25 }},	-- Miscellaneous Mechanica
					}),
				},
			}),
			n(231396, {	-- Sitch Lowdown <Darkfuse Solutions Quartermaster>
				["description"] = "Conditions to make this npc spawn are not yet known.",
				["coord"] = { 30.8, 38.2, UNDERMINE },
				["g"] = bubbleDownClassicRep(FACTION_DARKFUSE_SOLUTIONS, {
					{		-- Neutral
						i(235558, {	-- Box of Darkfuse Miscellany
							["cost"] = {{ "c", 3226, 100 }},	-- 100x Market Research
						}),
						i(235532, {	-- Experimental Goblin-FUEL Supplement
							["cost"] = {{ "c", RESONANCE_CRYSTALS, 100 }},
						}),
						i(237276),	-- Refurbished Rocket Glider
					}, {	-- Friendly
						i(229823, {	-- Canister of Darkfuse Solution
							["cost"] = {{ "c", RESONANCE_CRYSTALS, 100 }},
						}),
						i(235533, {	-- Prototype Auto-Advertiser
							["cost"] = {{ "c", RESONANCE_CRYSTALS, 100 }},
						}),
					}, {	-- Honored
						i(234950, {	-- Atomic Regoblinator
							["cost"] = {{ "c", RESONANCE_CRYSTALS, 5000 }},
						}),
						i(235534, {	-- Electropuncture Test Model
							["cost"] = {{ "c", RESONANCE_CRYSTALS, 100 }},
						}),
					}, {	-- Revered
						i(229950, {	-- Darkfuse Demolisher (MOUNT!)
							["cost"] = {{ "c", RESONANCE_CRYSTALS, 11375 }},
						}),
					}, {	-- Exalted
						i(231550, {	-- Darkfuse Lowdown Coat
							["cost"] = {{ "c", RESONANCE_CRYSTALS, 3250 }},
						}),
					},
				}),
			}),
		}),
	}),
})));