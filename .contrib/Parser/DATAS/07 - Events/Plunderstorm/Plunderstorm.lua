-----------------------------------------------------
--     W O R L D   E V E N T S   M O D U L E       --
-----------------------------------------------------
PLUNDERSTORM = createHeader({
	readable = "Plunderstorm",
	-- #if AFTER 8.0.1
	icon = 2055032,
	-- #else
	icon = 133168,
	-- #endif
	eventID = EVENTS.PLUNDERSTORM,
	eventSchedule = {
		0, -- January 14 unknown end date
		2025, 01, 14,	-- 15/01/2025
		2025, 04, 30,	-- 30/04/2024
	},
	text = {
		en = [[~WOWLABS_GAMEMODE_HEADER]],
	},
	description = {
		en = "Get swept away in the Plunderstorm— a fun, new, limited-time, pirate-themed event of prodigious proportions lasting the next several weeks. Scour the map and try to be the last pirate standing while dashing across the Arathi Highlands to find abilities, upgrades, and loot to plunder just to survive!\n\nTo Play: Login to Retail WoW and select 'Plunderstorm' from the Game Mode on the top left of your Character Select screen.",
	},
});

PLUNDERSTORE = createHeader({
	readable = "Plunderstore",
	-- #if AFTER 11.0.7
	icon = 6255014,
	-- #else
	icon = 133785,
	-- #endif
	text = {
		en = "Plunderstore",
	},
	description = {
		en = "This ingame shop menu allows you to purchase new and returning rewards in exchange for Plunder earned during the event.",
	},
});
-- #if NOT ANYCLASSIC
root(ROOTS.WorldEvents, applyevent(EVENTS.PLUNDERSTORM, bubbleDown({ ["timeline"] = { ADDED_10_2_6, REMOVED_PLUNDERSTORM_END } }, {
	n(PLUNDERSTORM, {
		["maps"] = { 2257 },	-- Arathi Highlands
		["groups"] = {
			n(ACHIEVEMENTS, {
				ach(20509),	-- Plunderking
				ach(20508),	-- Plunder Wonder
			}),
			n(QUESTS, sharedData({
				["isWorldQuest"] = true,
			},{
				q(79246),	-- Captain's Orders: Coffer Collector
				q(80081),	-- Captain's Orders: Flood and Plunder
				q(79249),	-- Captain's Orders: Kill Haul
				q(79379),	-- Captain's Orders: No Prey, No Pay
				q(79382),	-- Captain's Orders: Plunderstudy
				q(79381),	-- Captain's Orders: X Marks the Spot
				q(79965),	-- Learn the Ropes or Walk the Plank
			})),
			n(VENDORS, {
				n(219760, {	-- Da'kash Grimledger <Quartermaster>
					["sourceQuests"] = { 80384 },	-- xx
					["coord"] = { 46.5, 45.1, VALDRAKKEN },
					["groups"] = {
						i(217411, {	-- Blackened Flightstone
							["cost"] = {{"i", 217397, 1}},	-- 1x Keg-Stamped Coin
						}),
						i(217412, {	-- Blackened Flightstone
							["cost"] = {{"i", 217397, 1}},	-- 1x Keg-Stamped Coin
						}),
						i(217419, {	-- Large Satchel of Drake's Dreaming Crests
							["cost"] = {{"i", 217397, 2}},	-- 2x Keg-Stamped Coin
						}),
						i(217420, {	-- Large Pouch of Whelpling's Awakened Crests
							["cost"] = {{"i", 217397, 2}},	-- 2x Keg-Stamped Coin
						}),
						i(217705, {	-- Pirate's Booty
							["cost"] = 18	-- 18c
						}),
					},
				}),
			}),
		},
	}),
	-- Renown Rewards
	n(PLUNDERSTORM, {
		n(FACTIONS, {
			faction(FACTION_KEG_LEGS_CREW),	-- Keg Leg's Crew
		}),
		n(RENOWN, bubbleDownRep(FACTION_KEG_LEGS_CREW, {
			{	-- RENOWN 1 --
				i(216775),	-- Deadly Dagger
				title(543, {	-- Deck Hand <Name>
					["collectible"] = false,
				}),
			},{ -- RENOWN 2 --
				i(216987),	-- Swabbie's Gloves
				title(542, {	-- Swabbie <Name>
					["collectible"] = false,
				}),
			},{ -- RENOWN 3 --
				i(216991),	-- Surefooted Boots
			},{ -- RENOWN 4 --
				i(216989),	-- Quilted Breeches
			},{ -- RENOWN 5 --
				i(216776),	-- Calcified Claymore
				q(80384, {	-- A Keg-Stamped Package (account wide quest!)
					-- pop asap as r5 is obtained with no providers
					["g"] = {
						i(217397),	-- Keg-Stamped Coin x15
					},
				}),
			},{ -- RENOWN 6 --
				-- #if BEFORE 11.0.7
				pet(4435),	-- Happy (PET!)
				-- #else
				i(233252),	-- Happy (PET!)
				-- #endif
				i(216988),	-- Spun Cotton Shirt
			},{ -- RENOWN 7 --
				i(216984),	-- Skulker's Cloak
			},{ -- RENOWN 8 --
				i(216779),	-- Copper Cannon
			},{ -- RENOWN 9 --
				i(216994),	-- Warm Woolen Cap
			},{ -- RENOWN 10 --
				-- #if BEFORE 11.0.7
				mount(300154),	-- Silver Tidestallion (MOUNT!)
				-- #else
				i(233243),	-- Silver Tidestallion (MOUNT!)
				-- #endif
				title(544, {	-- Swashbuckler <Name>
					["collectible"] = false,
				}),
			},{ -- RENOWN 11 --
				-- #if BEFORE 11.0.7
				pet(4426),	-- Bubbles (PET!)
				-- #else
				i(233251),	-- Bubbles (PET!)
				-- #endif
			},{ -- RENOWN 12 --
				i(216986),	-- Swindler's Cutouts
			},{ -- RENOWN 13 --
				i(216777),	-- Blacksteel Saber
			},{ -- RENOWN 14 --
				i(216992),	-- Silent Leathers
			},{ -- RENOWN 15 --
				i(216990),	-- Handwoven Trousers
			},{ -- RENOWN 16 --
				i(216780),	-- Marvelous Multi-Shot
				i(170197),	-- Swarthy Warning Sign (TOY!)
			},{ -- RENOWN 17 --
				i(213436),	-- Fine Crimson Doublet
			},{ -- RENOWN 18 --
				i(216778),	-- Bloody Iron Cleaver
			},{ -- RENOWN 19 --
				i(216985),	-- Weatherproven Drape
			},{ -- RENOWN 20 --
				-- #if BEFORE 11.0.7
				mount(254812),	-- Royal Seafeather (MOUNT!)
				-- #else
				i(233242),	-- Royal Seafeather (MOUNT!)
				-- #endif
				title(545, {	-- Buccaneer <Name>
					["collectible"] = false,
				}),
			},{ -- RENOWN 21 --
				i(216993),	-- Storm Captain's Hat
			},{ -- RENOWN 22 --
				i(216755),	-- Plunderlord's Gilded Sigil
			},{ -- RENOWN 23 --
				i(216731),	-- Plunderlord's Cuffs
			},{ -- RENOWN 24 --
				i(216907, {	-- A Tiny Plumed Tricorne
					["questID"] = 80093,
				}),
			},{ -- RENOWN 25 --
				i(216732),	-- Plunderlord's Golden Cinch
			},{ -- RENOWN 26 --
				i(216730),	-- Plunderlord's Pilferers
			},{ -- RENOWN 27 --
				i(216765),	-- Plunderlord's Neck-Severer
			},{ -- RENOWN 28 --
				i(216733),	-- Plunderlord's Muckscrapers
			},{ -- RENOWN 29 --
				i(216729),	-- Plunderlord's Fancy Trousers
			},{ -- RENOWN 30 --
				-- #if BEFORE 11.0.7
				pet(4425),	-- Glamrok (PET!)
				-- #else
				i(233248),	-- Glamrok (PET!)
				-- #endif
				title(546, {	-- First Mate <Name>
					["collectible"] = false,
				}),
			},{ -- RENOWN 31 --
				i(216756),	-- Plunderlord's Fine Rapier
			},{ -- RENOWN 32 --
				i(216774),	-- Plunderlord's Hand Cannon
			},{ -- RENOWN 33 --
			},{ -- RENOWN 34 --
				i(216735),	-- Plunderlord's Waistcoat
			},{ -- RENOWN 35 --
				i(216728),	-- Plunderlord's Drapery
			},{ -- RENOWN 36 --
				i(216763),	-- Plunderlord's Silver Cutlass
			},{ -- RENOWN 37 --
				i(216727),	-- Plunderlord's Tassled Spaulders
			},{ -- RENOWN 38 --
				i(219348),	-- Plunderlord's Monocle
				i(216734),	-- Plunderlord's Tricorne of Admiralty
			},{ -- RENOWN 39 --
				-- #if BEFORE 11.0.7
				mount(437162),	-- Polly Roger (MOUNT!)
				-- #else
				i(233240),	-- Polly Roger (MOUNT!)
				-- #endif
			},{ -- RENOWN 40 --
				title(541),	-- Plunderlord <Name>
				i(219349),	-- Plunderlord's Tabard
			},
		})),
	}),
})));
root(ROOTS.WorldEvents, applyevent(EVENTS.PLUNDERSTORM, bubbleDown({ ["timeline"] = { ADDED_11_0_7 } }, {
	n(PLUNDERSTORM, {
		n(ACHIEVEMENTS, {
			ach(20508),	-- Plunder Wonder (Win)
			-- INFO: Sorted in ascending order of plunder to collect, just makes more sense this way
			ach(41152, {	-- Lub and Plunder
				title(600),	-- Landlubber <Name>
			}),
			ach(41153, {	-- Swabbie Swag
				title(542),	-- Swabbie <Name>
			}),
			ach(41154, {	-- Decked Out
				title(543),	-- Deck Hand <Name>
			}),
			ach(41156, {	-- Buckled Up
				title(544),	-- Swashbuckler <Name>
			}),
			ach(41157, {	-- Plunder Siege
				title(545),	-- Buccaneer <Name>
			}),
			ach(41163, {	-- Lord of the Bling
				title(546),	-- First Mate <Name>
			}),
			ach(41160, {	-- It's a Plunderful Life
				title(601),	-- <Name> the Treasured
			}),
			ach(20509), 	-- Plunderkind
		}),
		filter(MISC, {
			i(234423),	-- Keg-Leg's Silver Spoils
			i(234424),	-- Keg-Leg's Bronze Spoils
		}),
		n(PLUNDERSTORE, {
			filter(BATTLE_PETS, {
				i(233251, {	-- Bubbles
					["cost"] = {{"c", PLUNDER, 500}},
				}),
				i(233248, {	-- Glamrok
					["cost"] = {{"c", PLUNDER, 1000}},
				}),
				i(233252, {	-- Happy
					["cost"] = {{"c", PLUNDER, 250}},
				}),
				i(235989, {	-- Parley
					["cost"] = {{"c", PLUNDER, 2000}},
				}),
				i(233247, {	-- Sparklesnap
					["cost"] = {{"c", PLUNDER, 2000}},
				}),
			}),
			filter(COSMETIC, {
				i(216777, {	-- Blacksteel Saber
					["cost"] = {{"c", PLUNDER, 250}},
				}),
				i(216778, {	-- Bloody Iron Cleaver
					["cost"] = {{"c", PLUNDER, 250}},
				}),
				i(216776, {	-- Calcified Claymore
					["cost"] = {{"c", PLUNDER, 250}},
				}),
				i(216779, {	-- Copper Cannon
					["cost"] = {{"c", PLUNDER, 250}},
				}),
				i(216775, {	-- Deadly Dagger
					["cost"] = {{"c", PLUNDER, 250}},
				}),
				i(213436, {	-- Fine Crimson Doublet
					["cost"] = {{"c", PLUNDER, 250}},
				}),
				i(232431, {	-- First Mate's Dashing Cap
					["cost"] = {{"c", PLUNDER, 1000}},
				}),
				i(232594, {	-- First Mate's Dashing Headgear
					["cost"] = {{"c", PLUNDER, 1000}},
				}),
				i(216990, {	-- Handwoven Trousers
					["cost"] = {{"c", PLUNDER, 250}},
				}),
				i(216780, {	-- Marvelous Multi-Shot
					["cost"] = {{"c", PLUNDER, 500}},
				}),
				i(216731, {	-- Plunderlord's Cuffs
					["cost"] = {{"c", PLUNDER, 250}},
				}),
				i(216728, {	-- Plunderlord's Drapery
					["cost"] = {{"c", PLUNDER, 1000}},
				}),
				i(216729, {	-- Plunderlord's Fancy Trousers
					["cost"] = {{"c", PLUNDER, 250}},
				}),
				i(216756, {	-- Plunderlord's Fine Rapier
					["cost"] = {{"c", PLUNDER, 1000}},
				}),
				i(216755, {	-- Plunderlord's Gilded Sigil
					["cost"] = {{"c", PLUNDER, 1000}},
				}),
				i(216732, {	-- Plunderlord's Golden Cinch
					["cost"] = {{"c", PLUNDER, 250}},
				}),
				i(216774, {	-- Plunderlord's Hand Cannon
					["cost"] = {{"c", PLUNDER, 1000}},
				}),
				i(219348, {	-- Plunderlord's Monocle
					["cost"] = {{"c", PLUNDER, 500}},
				}),
				i(216733, {	-- Plunderlord's Muckscrapers
					["cost"] = {{"c", PLUNDER, 250}},
				}),
				i(216765, {	-- Plunderlord's Neck-Severer
					["cost"] = {{"c", PLUNDER, 1000}},
				}),
				i(232585, {	-- Plunderlord's Old Eye Patch
					["cost"] = {{"c", PLUNDER, 2000}},
				}),
				i(232586, {	-- Plunderlord's Old Hat
					["cost"] = {{"c", PLUNDER, 2000}},
				}),
				i(216730, {	-- Plunderlord's Pilferers
					["cost"] = {{"c", PLUNDER, 250}},
				}),
				i(216763, {	-- Plunderlord's Silver Cutlass
					["cost"] = {{"c", PLUNDER, 1000}},
				}),
				i(232591, {	-- Plunderlord's Stormridden Cinch
					["cost"] = {{"c", PLUNDER, 250}},
				}),
				i(232590, {	-- Plunderlord's Stormridden Cuffs
					["cost"] = {{"c", PLUNDER, 250}},
				}),
				i(232581, {	-- Plunderlord's Stormridden Cutlass
					["cost"] = {{"c", PLUNDER, 1500}},
				}),
				i(232588, {	-- Plunderlord's Stormridden Drapery
					["cost"] = {{"c", PLUNDER, 1500}},
				}),
				i(232583, {	-- Plunderlord's Stormridden Hand Cannon
					["cost"] = {{"c", PLUNDER, 1500}},
				}),
				i(232593, {	-- Plunderlord's Stormridden Muckscrapers
					["cost"] = {{"c", PLUNDER, 250}},
				}),
				i(232579, {	-- Plunderlord's Stormridden Neck-Severer
					["cost"] = {{"c", PLUNDER, 1500}},
				}),
				i(232584, {	-- Plunderlord's Stormridden Pilferers
					["cost"] = {{"c", PLUNDER, 250}},
				}),
				i(232580, {	-- Plunderlord's Stormridden Rapier
					["cost"] = {{"c", PLUNDER, 1500}},
				}),
				i(232582, {	-- Plunderlord's Stormridden Sigil
					["cost"] = {{"c", PLUNDER, 1500}},
				}),
				i(232587, {	-- Plunderlord's Stormridden Spaulders
					["cost"] = {{"c", PLUNDER, 1000}},
				}),
				i(232430, {	-- Plunderlord's Stormridden Tricorne
					["cost"] = {{"c", PLUNDER, 1000}},
				}),
				i(232592, {	-- Plunderlord's Stormridden Trousers
					["cost"] = {{"c", PLUNDER, 500}},
				}),
				i(232589, {	-- Plunderlord's Stormridden Waistcoat
					["cost"] = {{"c", PLUNDER, 1000}},
				}),
				i(219349, {	-- Plunderlord's Tabard
					["cost"] = {{"c", PLUNDER, 5000}},
				}),
				i(216727, {	-- Plunderlord's Tassled Spaulders
					["cost"] = {{"c", PLUNDER, 250}},
				}),
				i(216734, {	-- Plunderlord's Tricorne of Admiralty
					["cost"] = {{"c", PLUNDER, 250}},
				}),
				i(216735, {	-- Plunderlord's Waistcoat
					["cost"] = {{"c", PLUNDER, 250}},
				}),
				i(216989, {	-- Quilted Breeches
					["cost"] = {{"c", PLUNDER, 250}},
				}),
				i(216992, {	-- Silent Leathers
					["cost"] = {{"c", PLUNDER, 250}},
				}),
				i(216984, {	-- Skulker's Cloak
					["cost"] = {{"c", PLUNDER, 250}},
				}),
				i(216988, {	-- Spun Cotton Shirt
					["cost"] = {{"c", PLUNDER, 250}},
				}),
				i(216993, {	-- Storm Captain's Hat
					["cost"] = {{"c", PLUNDER, 250}},
				}),
				i(216991, {	-- Surefooted Boots
					["cost"] = {{"c", PLUNDER, 250}},
				}),
				i(216987, {	-- Swabbie's Gloves
					["cost"] = {{"c", PLUNDER, 250}},
				}),
				i(232596, {	-- Swabbie's Oar
					["cost"] = {{"c", PLUNDER, 1000}},
					["g"] = { i(232597) },	-- Swabbie's Oar (Bonus)
				}),
				i(232595, {	-- Swabbie's Shovel
					["cost"] = {{"c", PLUNDER, 1000}},
					["g"] = { i(236180) },	-- Swabbie's Shovel (Bonus)
				}),
				i(216986, {	-- Swindler's Cutouts
					["cost"] = {{"c", PLUNDER, 250}},
				}),
				i(216994, {	-- Warm Woolen Cap
					["cost"] = {{"c", PLUNDER, 250}},
				}),
				i(216985, {	-- Weatherproven Drape
					["cost"] = {{"c", PLUNDER, 250}},
				}),
			}),
			filter(MOUNTS, {
				i(233241, {	-- Hooktalon
					["cost"] = {{"c", PLUNDER, 5000}},
				}),
				i(226042, {	-- Plunderlord's Midnight Crocolisk
					["cost"] = {{"c", PLUNDER, 5000}},
				}),
				i(233240, {	-- Polly Roger
					["cost"] = {{"c", PLUNDER, 5000}},
				}),
				i(233242, {	-- Royal Seafeather
					["cost"] = {{"c", PLUNDER, 5000}},
				}),
				i(233243, {	-- Silver Tidestallion
					["cost"] = {{"c", PLUNDER, 1500}},
				}),
			}),
			filter(TOYS, {
				i(216907, {	-- A Tiny Plumed Tricorne
					["questID"] = 80093,
					["cost"] = {{"c", PLUNDER, 500}},
				}),
				i(170197, {	-- Swarthy Warning Sign
					["cost"] = {{"c", PLUNDER, 500}},
				}),
			}),
		}),
		n(VENDORS, {
			n(219760, {	-- Da'kash Grimledger <Quartermaster>
				["coord"] = { 57.1, 61.6, DORNOGAL },
				["groups"] = {
					i(234450, {	-- Pirate's Booty
						["cost"] = { {"i", 234423, 1} },	-- 1x Keg-Leg's Silver Spoils
					}),
					i(234453, {	-- Swabbie's Lockbox
						["cost"] = { {"i", 234424, 1} },	-- 1x Keg-Leg's Bronze Spoils
					}),
				},
			}),
		}),
	}),
})));
-- #else
root(ROOTS.WorldEvents, applyevent(EVENTS.PLUNDERSTORM, applyclassicphase(WRATH_PHASE_FOUR_RUBYSANCTUM, bubbleDown({ ["timeline"] = { ADDED_3_4_3, REMOVED_4_0_1 } }, {
	n(PLUNDERSTORM, {
		pet(4532, {		-- Pinchy the Plunderer (PET!)
			["spellID"] = 446916,	-- Pinchy the Plunderer
			["petTypeID"] = 9,	-- Aquatic?
		}),
		mount(446902),	-- Polly Roger (MOUNT!)
	}),
}))));
-- #endif

root(ROOTS.HiddenQuestTriggers, {
	n(PLUNDERSTORM, bubbleDown({ ["timeline"] = { ADDED_10_2_6, REMOVED_PLUNDERSTORM_END } }, {
		q(80110),	-- First WQ of the Day
		q(80436),	-- Purchasing Pirate's Booty -- Once per account lockout
		q(80262),	-- Renown 6 - Shabby Swabbie outfit unlocked in Plunderstorm
		q(81657),	-- Renown 16 - Marveouls Multi-Shot unlocked in Plunderstorm
		q(80263),	-- Renown 17 - Snazzy Swabbie outfit unlocked in Plunderstorm
		q(80264),	-- Renown 37 - Strapping Swabbie outfit unlocked in Plunderstorm

		-- Hard or impossible to find out what exactly these HQTs are for
		q(81676),	-- Dieing
		q(81677),	-- Dieing
		q(81678),	-- ?
		q(81679),	-- Killed rare elite
		q(81680),	-- Killed rare elite
		q(81681),	-- Did a World Quest and killed 30 creatures

		-- Probably some rare elite kills (unconfirmed)
		--q(79254),	-- Everspout
		--q(79315),	-- Lord Harlbrand
		--q(79316),	-- Malfunctioning Harvester
		--q(79317),	-- Morkus Grimlock
		--q(79318),	-- Narla Thunderhoof
		--q(79319),	-- Frenzied Owlbeast
		--q(79320),	-- Gorthak Grimtusk

		-- Probably some renown HQTs (unconfirmed)
		--q(79462),	-- [DNT] Renown Reward 001
		--q(79464),	-- [DNT] Renown Reward 002
		--q(79465),	-- [DNT] Renown Reward 003
		--q(79466),	-- [DNT] Renown Reward 004
	})),
});

root(ROOTS.HiddenQuestTriggers, {
	n(PLUNDERSTORM, bubbleDown({ ["timeline"] = { ADDED_11_0_7 } }, {
		q(86212),	-- Purchased Swabbie's Shovel
		q(86213),	-- Purchased Swabbie's Oar
		q(86218),	-- Purchased Plunderlord's Stormridden Neck-Severer
		q(86219),	-- Purchased Plunderlord's Stormridden Rapier
		q(86220),	-- Purchased Plunderlord's Stormridden Cutlass
		q(86221),	-- Purchased Plunderlord's Stormridden Sigil
		q(86225),	-- Purchased Plunderlord's Hand Cannon
		q(86228),	-- Purchased First Mate's Dashing Cap
		q(86229),	-- Purchased First Mate's Dashing Headgear
		q(86231),	-- Purchased Plunderlord's Stormridden Tricorne
		q(86232),	-- Purchased Plunderlord's Old Eye Patch
		q(86236),	-- Purchased Plunderlord's Stormridden Spaulders
		q(86241),	-- Purchased Plunderlord's Stormridden Drapery
		q(86244),	-- Purchased Plunderlord's Stormridden Waistcoat
		q(86246),	-- Purchased Plunderlord's Stormridden Cuffs
		q(86250),	-- Purchased Plunderlord's Stormridden Pilferers
		q(86252),	-- Purchased Plunderlord's Stormridden Cinch
		q(86256),	-- Purchased Plunderlord's Stormridden Trousers
		q(86260),	-- Purchased Plunderlord's Stormridden Trousers
	})),
});