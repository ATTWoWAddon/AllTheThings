-----------------------------------------------------
--     W O R L D   E V E N T S   M O D U L E       --
-----------------------------------------------------

root(ROOTS.WorldEvents, applyevent(EVENTS.REMIX_LEGION, n(REMIX_LEGION, bubbleDown({ ["timeline"] = { ADDED_11_2_5, REMOVED_LEGION_REMIX_END } }, {
	n(REWARDS, {
		------ Item Caches ------
		i(248247),	-- Cache of Infinite Power
		i(237812),	-- Cache of Infinite Treasure

		------ Bronze Caches ------
		i(246814),	-- Bronze Cache
		i(246815),	-- Lesser Bronze Cache
		i(246812),	-- Minor Bronze Cache

		------ Weapon Empowerement ------
		i(245925),	-- Artifactium Sand

		------ Common Memento ------
		i(242513),	-- Memento of Epoch Collections
		i(242512),	-- Memento of Epoch Creatures
		i(242509),	-- Memento of Epoch Curiosity
		i(242514),	-- Memento of Epoch Fun
		i(242510),	-- Memento of Epoch Kindness
		i(242511),	-- Memento of Epoch Nostalgia
		i(242515),	-- Memento of Epoch Strategies

		------ Uncommon Memento ------
		i(242505),	-- Memento of Epoch Hope
		i(242501),	-- Memento of Epoch Knowledge
		i(242504),	-- Memento of Epoch Truth

		------ Rare Memento ------
		i(242507),	-- Memento of Epoch Power
		i(242506),	-- Memento of Epoch Rituals
		i(242503),	-- Memento of Epoch Stories

		------ Epic Memento ------
		i(242502),	-- Memento of Epoch History
		i(242508),	-- Memento of Epoch Potential

		------ Legendary Memento ------
		i(242516),	-- Memento of Epoch Legends

		------ Reputation Insignias ------
		i(253621, {	-- Champion's Insignia
			["description"] = "Turns into a Reputation Insignia for a Faction of the zone you are in.",
		}),
		i(249788),	-- Argussian Reach Champion's Insignia
		i(249780),	-- Army of the Light Champion's Insignia
		i(249787),	-- Court of Farondis Champion's Insignia
		i(249786),	-- Dreamweaver Champion's Insignia
		i(249785),	-- Highmountain Tribe Champion's Insignia
		i(253756),	-- Insignia of the Broken Isles
		i(249784),	-- Legionfall Champion's Insignia
		i(249783),	-- Nightfallen Champion's Insignia
		i(249782),	-- Valarjar Champion's Insignia
		i(249781),	-- Wardens Champion's Insignia

		------ Misc ------
		i(251562),	-- Tome of Combat Training

		filter(CONSUMABLES, {
			i(238726),	-- Drake Treat
			i(238727),	-- Nostwin's Voucher

			------ Timeless Scrolls ------
			i(217901),	-- Timeless Drums
			i(217608),	-- Timeless Scroll of Battle Shout
			i(217730),	-- Timeless Scroll of Chaos
			i(217929),	-- Timeless Scroll of Cleansing
			i(217606),	-- Timeless Scroll of Fortitude
			i(217605),	-- Timeless Scroll of Intellect
			i(217731),	-- Timeless Scroll of Mystic Power
			i(217928),	-- Timeless Scroll of Resurrection
			i(217956),	-- Timeless Scroll of Summoning
			i(217607),	-- Timeless Scroll of the Wild
		}),
		filter(FINGER_F, {
			i(246199),	-- Band of Callous Dominance
			i(246200),	-- Band of Twister Bark
			i(246202),	-- Grasping Tentacle Loop
			i(246198),	-- Jeweled Signet of Melandrus
			i(245998),	-- Ring of Mind Shielding
			i(245997),	-- Seal of the Nazjatar Empire
			i(246201),	-- Signet of the Highborne Magi
			i(246197),	-- Woe-Bearer's Band
		}),
		filter(NECK_F, {
			i(246194),	-- Chain of Scorched Bones
			i(246191),	-- Chain of the Underking
			i(245996),	-- Chaos-Forged Necklace
			i(246196),	-- Erratically Ticking Talisman
			i(246190),	-- Pendant of the Watchful Eye
			i(246193),	-- Strand of the Stars
			i(246192),	-- Understone Gorget
			i(246195),	-- Wolfstride Pendant
		}),
		filter(TRINKET_F, {
			i(246206),	-- Aethas's Orbs of Warding
			i(246204),	-- Arcane Medal of Protection
			i(246203),	-- Chattering Soulmark
			i(246207),	-- Glimmering Soulbloom
			i(246000),	-- Lure of the Unknown Depths
			i(246208),	-- Mote of Obscure Magics
			i(246205),	-- Stormwalker's Icon
			i(245999),	-- Volatile Chaos Talisman
		}),
	}),
}))));
