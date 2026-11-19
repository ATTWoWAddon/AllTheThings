---------------------------------------------------------------
--     N E V E R    I M P L E M E N T E D    M O D U L E     --
---------------------------------------------------------------
-- The original Grand Marshal and High Warlord weapons are still in the client's Item table,
-- but the WoW Forever weapon quartermasters only sell the Premier versions.
root(ROOTS.NeverImplemented, {
	n(FACTION_HEADER_ALLIANCE, {
		races = ALLIANCE_ONLY,
		groups = {
			n(WEAPONS, {
				i(18825),	-- Grand Marshal's Aegis
				i(18867),	-- Grand Marshal's Battle Hammer
				i(18833),	-- Grand Marshal's Bullseye
				i(18876),	-- Grand Marshal's Claymore
				i(23455),	-- Grand Marshal's Demolisher
				i(18838),	-- Grand Marshal's Dirk
				i(18869),	-- Grand Marshal's Glaive
				i(18855),	-- Grand Marshal's Hand Cannon
				i(18827),	-- Grand Marshal's Handaxe
				i(12584),	-- Grand Marshal's Longsword
				i(23451),	-- Grand Marshal's Mageblade
				i(18865),	-- Grand Marshal's Punisher
				i(18847),	-- Grand Marshal's Left Hand Blade
				i(18836),	-- Grand Marshal's Repeater
				i(18843),	-- Grand Marshal's Right Hand Blade
				i(18873),	-- Grand Marshal's Stave
				i(18830),	-- Grand Marshal's Sunderer
				i(23456),	-- Grand Marshal's Swiftblade
				i(23452),	-- Grand Marshal's Tome of Power
				i(23453),	-- Grand Marshal's Tome of Restoration
				i(23454),	-- Grand Marshal's Warhammer
			}),
		},
	}),
	n(FACTION_HEADER_HORDE, {
		races = HORDE_ONLY,
		groups = {
			n(WEAPONS, {
				i(18831),	-- High Warlord's Battle Axe
				i(23464),	-- High Warlord's Battle Mace
				i(16345),	-- High Warlord's Blade
				i(18866),	-- High Warlord's Bludgeon
				i(18828),	-- High Warlord's Cleaver
				i(18837),	-- High Warlord's Crossbow
				i(23465),	-- High Warlord's Destroyer
				i(18877),	-- High Warlord's Greatsword
				i(18871),	-- High Warlord's Pig Sticker
				i(18868),	-- High Warlord's Pulverizer
				i(23467),	-- High Warlord's Quickblade
				i(18835),	-- High Warlord's Recurve
				i(18840),	-- High Warlord's Razor
				i(18848),	-- High Warlord's Left Claw
				i(18844),	-- High Warlord's Right Claw
				i(18826),	-- High Warlord's Shield Wall
				i(23466),	-- High Warlord's Spellblade
				i(18860),	-- High Warlord's Street Sweeper
				i(23468),	-- High Warlord's Tome of Destruction
				i(23469),	-- High Warlord's Tome of Mending
				i(18874),	-- High Warlord's War Staff
			}),
		},
	}),
});
