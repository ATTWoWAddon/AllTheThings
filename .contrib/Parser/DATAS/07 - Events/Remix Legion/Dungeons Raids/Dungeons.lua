-----------------------------------------------------
--     W O R L D   E V E N T S   M O D U L E       --
-----------------------------------------------------
local MAPS = {
	732,	-- Assault of Violet Hold (Legion)

	751,	-- Black Rook Hold
	752,	-- Black Rook Hold
	753,	-- Black Rook Hold
	754,	-- Black Rook Hold
	755,	-- Black Rook Hold
	756,	-- Black Rook Hold

	845,	-- Cathedral of Eternal Night
	846,	-- Cathedral of Eternal Night
	847,	-- Cathedral of Eternal Night
	848,	-- Cathedral of Eternal Night
	849,	-- Cathedral of Eternal Night

	761,	-- Court of Stars
	762,	-- Court of Stars
	763,	-- Court of Stars

	733,	-- Darkheart Thicket

	713,	-- Eye of Azshara

	703,	-- Halls of Valor
	704,	-- Halls of Valor
	705,	-- Halls of Valor

	706,	-- Maw of Souls
	707,	-- Maw of Souls
	708,	-- Maw of Souls

	731,	-- Neltharion's Lair

	809,	-- Return to Karazhan
	810,	-- Return to Karazhan
	811,	-- Return to Karazhan
	812,	-- Return to Karazhan
	813,	-- Return to Karazhan
	814,	-- Return to Karazhan
	815,	-- Return to Karazhan
	816,	-- Return to Karazhan
	817,	-- Return to Karazhan
	818,	-- Return to Karazhan
	819,	-- Return to Karazhan
	820,	-- Return to Karazhan
	821,	-- Return to Karazhan
	822,	-- Return to Karazhan

	903,	-- Seat of the Triumvirate

	749,	-- The Arcway

	710,	-- Vault of the Wardens
	711,	-- Vault of the Wardens
	712,	-- Vault of the Wardens
}
local mapped = function(t)
	t.maps = MAPS
	return t
end

root(ROOTS.WorldEvents, applyevent(EVENTS.REMIX_LEGION, n(REMIX_LEGION, {
	n(DUNGEONS, {
		n(ACHIEVEMENTS, {
			ach(42692, {	-- Broken Isles Dungeoneer
				-- Meta Achievement
				["sym"] = {{"meta_achievement",
					60846,	-- Assault on Violet Hold
					60834,	-- Black Rook Hold
					60843,	-- Court of Stars
					60837,	-- Darkheart Thicket
					60819,	-- Eye of Azshara
					60831,	-- Halls of Valor
					60828,	-- Maw of Souls
					60825,	-- Neltharion's Lair
					60840,	-- The Arcway
					60822,	-- Vault of the Wardens
				}},
				["groups"] = {
					i(250403, {	-- Legion’s Holo-Communicator (DECOR!)
						["timeline"] = { ADDED_11_2_7 },
					}),
				},
			}),
			ach(61115, {	-- Legion Dungeons: Might of the Legion
				-- Meta Achievement
				["sym"] = {{"meta_achievement",
					60846,	-- Assault of Violet Hold
					60834,	-- Black Rook Hold
					60822,	-- Vault of the Wardens
				}},
			}),
			ach(61114, {	-- Legion Dungeons: Power of the Ancients
				-- Meta Achievement
				["sym"] = {{"meta_achievement",
					60843,	-- Court of Stars
					60819,	-- Eye of Azshara
					60840,	-- The Arcway
				}},
			}),
			ach(61113, {	-- Legion Dungeons: Threats of the Isle
				-- Meta Achievement
				["sym"] = {{"meta_achievement",
					60837,	-- Darkheart Thicket
					60831,	-- Halls of Valor
					60828,	-- Maw of Souls
					60825,	-- Neltharion's Lair
				}},
			}),
			ach(42320, {	-- Legion Remix Dungeoneer
				-- Meta Achievement
				["sym"] = {{"meta_achievement",
					60846,	-- Assault on Violet Hold
					60834,	-- Black Rook Hold
					60849,	-- Cathedral of Eternal Night
					60843,	-- Court of Stars
					60837,	-- Darkheart Thicket
					60819,	-- Eye of Azshara
					60831,	-- Halls of Valor
					60854,	-- Heroic: Return to Karazhan
					60852,	-- Heroic: Seat of the Triumvirate
					60828,	-- Maw of Souls
					60825,	-- Neltharion's Lair
					60840,	-- The Arcway
					60822,	-- Vault of the Wardens
				}},
			}),
			ach(61073, {	-- Heroic Legion Remix Dungeoneer
				-- Meta Achievement
				["sym"] = {{"meta_achievement",
					60847,	-- Heroic: Assault on Violet Hold
					60835,	-- Heroic: Black Rook Hold
					60850,	-- Heroic: Cathedral of Eternal Night
					60844,	-- Heroic: Court of Stars
					60838,	-- Heroic: Darkheart Thicket
					60820,	-- Heroic: Eye of Azshara
					60832,	-- Heroic: Halls of Valor
					60829,	-- Heroic: Maw of Souls
					60826,	-- Heroic: Neltharion's Lair
					60854,	-- Heroic: Return to Karazhan
					60852,	-- Heroic: Seat of the Triumvirate
					60841,	-- Heroic: The Arcway
					60823,	-- Heroic: Vault of the Wardens
				}},
			}),
			ach(61074, {	-- Mythic Legion Remix Dungeoneer
				-- Meta Achievement
				["sym"] = {{"meta_achievement",
					60848,	-- Mythic: Assault on Violet Hold
					60836,	-- Mythic: Black Rook Hold
					60851,	-- Mythic: Cathedral of Eternal Night
					60845,	-- Mythic: Court of Stars
					60839,	-- Mythic: Darkheart Thicket
					60821,	-- Mythic: Eye of Azshara
					60833,	-- Mythic: Halls of Valor
					60830,	-- Mythic: Maw of Souls
					60827,	-- Mythic: Neltharion's Lair
					60855,	-- Mythic: Return to Karazhan
					60853,	-- Mythic: Seat of the Triumvirate
					60842,	-- Mythic: The Arcway
					60824,	-- Mythic: Vault of the Wardens
				}},
			}),
			mapped(ach(42615)),	-- Timeworn Keystone Apprentice (L2)
			mapped(ach(42688)),	-- Timeworn Keystone Adept (L7)
			mapped(ach(42689, {	-- Timeworn Keystone Master (L15)
				i(251779, {	-- Fel Fountain (DECOR!)
					["timeline"] = { ADDED_11_2_7 },
				}),
			})),
			mapped(ach(42690, {	-- Timeworn Keystone Hero (L30)
				iensemble(257105),	-- Ensemble: Sargerei Commander's Hellforged Regalia
			})),
			mapped(ach(42691, {	-- Timeworn Keystone Hero (L40)
				title(658),	-- %s the Infernal (TITLE!)
			})),
		}),
		d(DIFFICULTY.DUNGEON.MULTI.NORMAL_PLUS, {
			mapped(n(ARMOR, {
				filter(CLOAKS, {
					i(240270),	-- Cape of Hungering Flesh
					i(240258),	-- Drape of Hungering Flesh
					i(240266),	-- Shroud of Hungering Flesh
					i(240261),	-- Wrap of Hungering Flesh
				}),
				filter(CLOTH, {
					i(240366),	-- Armbands of Borrowed Souls
					i(240369),	-- Cinch of Borrowed Souls
					i(240373),	-- Cover of Borrowed Souls
					i(240365),	-- Gloves of Borrowed Souls
					i(240368),	-- Pants of Borrowed Souls
					i(240371),	-- Raiment of Borrowed Souls
					i(240370),	-- Robe of Borrowed Souls
					i(240372),	-- Shawl of Borrowed Souls
					i(240367),	-- Slippers of Borrowed Souls
				}),
				filter(LEATHER, {
					i(240346),	-- Cap of Hungering Flesh
					i(240343),	-- Cinch of Hungering Flesh
					i(240340),	-- Cuffs of Hungering Flesh
					i(240339),	-- Gloves of Hungering Flesh
					i(240344),	-- Jerkin of Hungering Flesh
					i(240342),	-- Legwraps of Hungering Flesh
					i(240345),	-- Shoulderguard of Hungering Flesh
					i(240341),	-- Striders of Hungering Flesh
				}),
				filter(MAIL, {
					i(240317),	-- Boots of Skyfather's Chosen
					i(240316),	-- Bracers of Skyfather's Chosen
					i(240320),	-- Chestguard of Skyfather's Chosen
					i(240319),	-- Cinch of Skyfather's Chosen
					i(240322),	-- Faceguard of Skyfather's Chosen
					i(240315),	-- Grips of Skyfather's Chosen
					i(240318),	-- Leggings of Skyfather's Chosen
					i(240321),	-- Pinions of Skyfather's Chosen
				}),
				filter(PLATE, {
					i(240291),	-- Honorforged Gauntlets
					i(240292),	-- Honorforged Vambraces
					i(240293),	-- Honorforged Stompers
					i(240294),	-- Honorforged Wargreaves
					i(240295),	-- Honorforged Greatbelt
					i(240296),	-- Honorforged Chestpiece
					i(240297),	-- Honorforged Mantle
					i(240298),	-- Honorforged Greathelm
				}),
			})),
		}),
		n(REWARDS, {
			i(239247),	-- Bonus Experience
		}),
		inst(777, {	-- Assault of Violet Hold (Legion)
			["coord"] = { 66.2, 68.3, LEGION_DALARAN },
			["maps"] = { 732 },
			["groups"] = {
				d(DIFFICULTY.DUNGEON.NORMAL, {
					e(1697, {	-- Sael'orn
						["cr"] = 102387,	-- Sael'orn
						["groups"] = {
							ach(60846),	-- Assault on Violet Hold
						},
					}),
					e(1711, {	-- Fel Lord Betrug
						["cr"] = 102446,	-- Fel Lord Betrug
						["groups"] = {
							ach(60846),	-- Assault on Violet Hold
						},
					}),
				}),
				d(DIFFICULTY.DUNGEON.HEROIC, {
					e(1697, {	-- Sael'orn
						["cr"] = 102387,	-- Sael'orn
						["groups"] = {
							ach(60847),	-- Heroic: Assault on Violet Hold
						},
					}),
					e(1711, {	-- Fel Lord Betrug
						["cr"] = 102446,	-- Fel Lord Betrug
						["groups"] = {
							ach(60847),	-- Heroic: Assault on Violet Hold
						},
					}),
				}),
				d(DIFFICULTY.DUNGEON.MYTHIC, {
					e(1697, {	-- Sael'orn
						["cr"] = 102387,	-- Sael'orn
						["groups"] = {
							ach(60848),	-- Mythic: Assault on Violet Hold
						},
					}),
					e(1711, {	-- Fel Lord Betrug
						["cr"] = 102446,	-- Fel Lord Betrug
						["groups"] = {
							ach(60848),	-- Mythic: Assault on Violet Hold
						},
					}),
				}),
			},
		}),
		inst(740, {	-- Black Rook Hold
			["coord"] = { 38.4, 50.8, VALSHARAH },
			["maps"] = { 751, 752, 753, 754, 755, 756 },
			["groups"] = {
				d(DIFFICULTY.DUNGEON.NORMAL, {
					e(1672, {	-- Lord Kur'talos Ravencrest
						["crs"] = {
							98970,	-- Dantalionax
							98965,	-- Kur'talos Ravencrest
						},
						["groups"] = {
							ach(60834),	-- Black Rook Hold
						},
					}),
				}),
				d(DIFFICULTY.DUNGEON.HEROIC, {
					e(1672, {	-- Lord Kur'talos Ravencrest
						["crs"] = {
							98970,	-- Dantalionax
							98965,	-- Kur'talos Ravencrest
						},
						["groups"] = {
							ach(60835),	-- Heroic: Black Rook Hold
						},
					}),
				}),
				d(DIFFICULTY.DUNGEON.MYTHIC, {
					e(1672, {	-- Lord Kur'talos Ravencrest
						["crs"] = {
							98970,	-- Dantalionax
							98965,	-- Kur'talos Ravencrest
						},
						["groups"] = {
							ach(60836),	-- Mythic: Black Rook Hold
						},
					}),
				}),
			},
		}),
		inst(900, {	-- Cathedral of Eternal Night
			["coord"] = { 64.7, 16.6, BROKEN_SHORE },
			["maps"] = { 845, 846, 847, 848, 849 },
			["groups"] = {
				d(DIFFICULTY.DUNGEON.NORMAL, {
					e(1878, {	-- Mephistroth
						["cr"] = 120793,	-- Mephistroth
						["groups"] = {
							ach(60849),	-- Cathedral of Eternal Night
						},
					}),
				}),
				d(DIFFICULTY.DUNGEON.HEROIC, {
					e(1878, {	-- Mephistroth
						["cr"] = 120793,	-- Mephistroth
						["groups"] = {
							ach(60850),	-- Heroic: Cathedral of Eternal Night
						},
					}),
				}),
				d(DIFFICULTY.DUNGEON.MYTHIC, {
					e(1878, {	-- Mephistroth
						["cr"] = 120793,	-- Mephistroth
						["groups"] = {
							ach(60851),	-- Mythic: Cathedral of Eternal Night
						},
					}),
				}),
			},
		}),
		inst(800, {	-- Court of Stars
			["coord"] = { 51.0, 65.6, SURAMAR },
			["maps"] = { 761, 762, 763 },
			["groups"] = {
				d(DIFFICULTY.DUNGEON.NORMAL, {
					e(1720, {	-- Advisor Melandrus
						["cr"] = 104218,	-- Advisor Melandrus
						["groups"] = {
							ach(60843),	-- Court of Stars
						},
					}),
				}),
				d(DIFFICULTY.DUNGEON.HEROIC, {
					e(1720, {	-- Advisor Melandrus
						["cr"] = 104218,	-- Advisor Melandrus
						["groups"] = {
							ach(60844),	-- Heroic: Court of Stars
						},
					}),
				}),
				d(DIFFICULTY.DUNGEON.MYTHIC, {
					e(1720, {	-- Advisor Melandrus
						["cr"] = 104218,	-- Advisor Melandrus
						["groups"] = {
							ach(60845),	-- Mythic: Court of Stars
						},
					}),
				}),
			},
		}),
		inst(762, {	-- Darkheart Thicket
			["coord"] = { 59.0, 31.3, VALSHARAH },
			["maps"] = { 733 },
			["groups"] = {
				d(DIFFICULTY.DUNGEON.NORMAL, {
					e(1657, {	-- Shade of Xavius
						["cr"] = 99192,	-- Shade of Xavius
						["groups"] = {
							ach(60837),	-- Darkheart Thicket
						},
					}),
				}),
				d(DIFFICULTY.DUNGEON.HEROIC, {
					e(1657, {	-- Shade of Xavius
						["cr"] = 99192,	-- Shade of Xavius
						["groups"] = {
							ach(60838),	-- Heroic: Darkheart Thicket
						},
					}),
				}),
				d(DIFFICULTY.DUNGEON.MYTHIC, {
					e(1657, {	-- Shade of Xavius
						["cr"] = 99192,	-- Shade of Xavius
						["groups"] = {
							ach(60839),	-- Mythic: Darkheart Thicket
						},
					}),
				}),
			},
		}),
		inst(716, {	-- Eye of Azshara
			["coord"] = { 61.2, 41.1, AZSUNA },
			["maps"] = { 713 },
			["groups"] = {
				d(DIFFICULTY.DUNGEON.NORMAL, {
					e(1492, {	-- Wrath of Azshara
						["cr"] = 96028,	-- Wrath of Azshara
						["groups"] = {
							ach(60819),	-- Eye of Azshara
						},
					}),
				}),
				d(DIFFICULTY.DUNGEON.HEROIC, {
					e(1492, {	-- Wrath of Azshara
						["cr"] = 96028,	-- Wrath of Azshara
						["groups"] = {
							ach(60820),	-- Heroic: Eye of Azshara
						},
					}),
				}),
				d(DIFFICULTY.DUNGEON.MYTHIC, {
					e(1492, {	-- Wrath of Azshara
						["cr"] = 96028,	-- Wrath of Azshara
						["groups"] = {
							ach(60821),	-- Mythic: Eye of Azshara
						},
					}),
				}),
			},
		}),
		inst(721, {	-- Halls of Valor
			["coord"] = { 70.4, 69.4, STORMHEIM },
			["maps"] = { 703, 704, 705 },
			["groups"] = {
				d(DIFFICULTY.DUNGEON.NORMAL, {
					e(1489, {	-- Odyn
						["creatureID"] = 95676,	-- Odyn
						["groups"] = {
							ach(60831),	-- Halls of Valor
						},
					}),
				}),
				d(DIFFICULTY.DUNGEON.HEROIC, {
					e(1489, {	-- Odyn
						["creatureID"] = 95676,	-- Odyn
						["groups"] = {
							ach(60832),	-- Heroic: Halls of Valor
						},
					}),
				}),
				d(DIFFICULTY.DUNGEON.MYTHIC, {
					e(1489, {	-- Odyn
						["creatureID"] = 95676,	-- Odyn
						["groups"] = {
							ach(60833),	-- Mythic: Halls of Valor
						},
					}),
				}),
			},
		}),
		inst(727, {	-- Maw of Souls
			["coord"] = { 52.5, 45.3, STORMHEIM },
			["maps"] = { 706, 707, 708 },
			["groups"] = {
				d(DIFFICULTY.DUNGEON.NORMAL, {
					e(1663, {	-- Helya
						["cr"] = 96759,	-- Helya
						["groups"] = {
							ach(60828),	-- Maw of Souls
						},
					}),
				}),
				d(DIFFICULTY.DUNGEON.HEROIC, {
					e(1663, {	-- Helya
						["cr"] = 96759,	-- Helya
						["groups"] = {
							ach(60829),	-- Heroic: Maw of Souls
						},
					}),
				}),
				d(DIFFICULTY.DUNGEON.MYTHIC, {
					e(1663, {	-- Helya
						["cr"] = 96759,	-- Helya
						["groups"] = {
							ach(60830),	-- Mythic: Maw of Souls
						},
					}),
				}),
			},
		}),
		inst(767, {	-- Neltharion's Lair
			["coord"] = { 49.5, 68.5, HIGHMOUNTAIN },
			["maps"] = { 731 },
			["groups"] = {
				d(DIFFICULTY.DUNGEON.NORMAL, {
					e(1687, {	-- Dargrul
						["cr"] = 91007,	-- Dargrul
						["groups"] = {
							ach(60825),	-- Neltharion's Lair
						},
					}),
				}),
				d(DIFFICULTY.DUNGEON.HEROIC, {
					e(1687, {	-- Dargrul
						["cr"] = 91007,	-- Dargrul
						["groups"] = {
							ach(60826),	-- Heroic: Neltharion's Lair
						},
					}),
				}),
				d(DIFFICULTY.DUNGEON.MYTHIC, {
					e(1687, {	-- Dargrul
						["cr"] = 91007,	-- Dargrul
						["groups"] = {
							ach(60827),	-- Mythic: Neltharion's Lair
						},
					}),
				}),
			},
		}),
		inst(860, {	-- Return to Karazhan
			["coord"] = { 46.7, 70.1, DEADWIND_PASS },
			["maps"] = {
				815, 816, 817, 818, 819, 820, 821, 822,	-- Upper
				809, 810, 811, 812, 813, 814,	-- Lower
			},
			["groups"] = {
				d(DIFFICULTY.DUNGEON.HEROIC, {
					e(1838, {	-- Viz'aduum the Watcher
						["cr"] = 114790,	-- Viz'aduum the Watcher
						["groups"] = {
							ach(60854),	-- Heroic: Return to Karazhan
						},
					}),
				}),
				d(DIFFICULTY.DUNGEON.MYTHIC, {
					e(1838, {	-- Viz'aduum the Watcher
						["cr"] = 114790,	-- Viz'aduum the Watcher
						["groups"] = {
							ach(60855),	-- Mythic: Return to Karazhan
						},
					}),
				}),
			},
		}),
		inst(945, {	-- Seat of the Triumvirate
			["coord"] = { 22.2, 55.9, EREDATH },
			["maps"] = { 903 },
			["groups"] = {
				d(DIFFICULTY.DUNGEON.HEROIC, {
					e(1982, {	-- L'ura
						["cr"] = 124729,	-- L'ura
						["groups"] = {
							ach(60852),	-- Heroic: Seat of the Triumvirate
						},
					}),
				}),
				d(DIFFICULTY.DUNGEON.MYTHIC, {
					e(1982, {	-- L'ura
						["cr"] = 122314,	-- L'ura
						["groups"] = {
							ach(60853),	-- Mythic: Seat of the Triumvirate
						},
					}),
				}),
			},
		}),
		inst(726, {	-- The Arcway
			["coord"] = { 49.5, 68.5, HIGHMOUNTAIN },
			["maps"] = { 749 },
			["groups"] = {
				d(DIFFICULTY.DUNGEON.NORMAL, {
					e(1501, {	-- Advisor Vandros
						["cr"] = 98208,	-- Advisor Vandros
						["groups"] = {
							ach(60840),	-- The Arcway
						},
					}),
				}),
				d(DIFFICULTY.DUNGEON.HEROIC, {
					e(1501, {	-- Advisor Vandros
						["cr"] = 98208,	-- Advisor Vandros
						["groups"] = {
							ach(60841),	-- Heroic: The Arcway
						},
					}),
				}),
				d(DIFFICULTY.DUNGEON.MYTHIC, {
					e(1501, {	-- Advisor Vandros
						["cr"] = 98208,	-- Advisor Vandros
						["groups"] = {
							ach(60842),	-- Mythic: The Arcway
						},
					}),
				}),
			},
		}),
		inst(707, {	-- Vault of the Wardens
			["coord"] = { 48.0, 82.1, AZSUNA },
			["maps"] = { 710, 711, 712 },
			["groups"] = {
				d(DIFFICULTY.DUNGEON.NORMAL, {
					e(1470, {	-- Cordana Felsong
						["cr"] = 95888,	-- Cordana Felsong
						["groups"] = {
							ach(60822),	-- Vault of the Wardens
						},
					}),
				}),
				d(DIFFICULTY.DUNGEON.HEROIC, {
					e(1470, {	-- Cordana Felsong
						["cr"] = 95888,	-- Cordana Felsong
						["groups"] = {
							ach(60823),	-- Heroic: Vault of the Wardens
						},
					}),
				}),
				d(DIFFICULTY.DUNGEON.MYTHIC, {
					e(1470, {	-- Cordana Felsong
						["cr"] = 95888,	-- Cordana Felsong
						["groups"] = {
							ach(60824),	-- Mythic: Vault of the Wardens
						},
					}),
				}),
			},
		}),
	}),
})));
