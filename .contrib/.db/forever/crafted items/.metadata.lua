---------------------------------------------
--    C R A F T A B L E S   M O D U L E    --
---------------------------------------------
root(ROOTS.Craftables, {
	prof(ALCHEMY),
	prof(BLACKSMITHING, {
		prof(ARMORSMITH, {
			["description"] = "These items can only be crafted by Blacksmiths who have completed the Art of the Armorsmith quest chain.",
		}),
		prof(WEAPONSMITH, {
			["description"] = "These items can only be crafted by Blacksmiths who have completed the Way of the Weaponsmith quest chain.",
			["groups"] = {
				prof(MASTER_AXESMITH, {
					["description"] = "These items can only be crafted by Master Axesmith specialized Weaponsmiths.",
				}),
				prof(MASTER_HAMMERSMITH, {
					["description"] = "These items can only be crafted by Master Hammersmith specialized Weaponsmiths.",
				}),
				prof(MASTER_SWORDSMITH, {
					["description"] = "These items can only be crafted by Master Swordsmith specialized Weaponsmiths.",
				}),
				n(WEAPONS, {
					["description"] = "These can be crafted by any Weaponsmith.",
				}),
			},
		}),
	}),
	prof(COOKING),
	prof(ENCHANTING),
	prof(ENGINEERING, {
		prof(GNOMISH_ENGINEERING, {
			["description"] = "These items can only be crafted by Engineers who have completed the Gnomish Engineering quest chain.",
		}),
		prof(GOBLIN_ENGINEERING, {
			["description"] = "These items can only be crafted by Engineers who have completed the Goblin Engineering quest chain.",
		}),
	}),
	prof(FIRST_AID),
	prof(FISHING, {
		["description"] = "If you struggle to catch an open water fish in a given zone, try a different spot or a different body of water. There might be local variations of which fish you can reliably catch from a given spot.",
	}),
	prof(HERBALISM, {
		["description"] = "It is beneficial to gather all herbs in the area even if you only need specific herbs because the node spawns are often connected.",
	}),
	prof(LEATHERWORKING, {
		prof(10656, {	-- Dragonscale Leatherworking
			["description"] = "These items can only be crafted by Leatherworkers who have completed the associated quest.",
		}),
		prof(10658, {	-- Elemental Leatherworking
			["description"] = "These items can only be crafted by Leatherworkers who have completed the associated quest.",
		}),
		prof(10660, {	-- Tribal Leatherworking
			["description"] = "These items can only be crafted by Leatherworkers who have completed the associated quest.",
		}),
	}),
	prof(MINING, {
		["description"] = "Mining veins are usually found on uneven terrain and mountainsides as well as inside caves. It is beneficial to mine all veins in the area even if you only need specific ore because the node spawns are often connected.",
	}),
	prof(POISONS, {
		["classes"] = { ROGUE },
	}),
	prof(SKINNING, {
		["description"] = "The following items can be gathered by skinning creatures out in the world.",
	}),
	prof(TAILORING),
});
