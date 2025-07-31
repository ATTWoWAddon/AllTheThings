-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------
root(ROOTS.ExpansionFeatures, expansion(EXPANSION.WOD, bubbleDown({ ["timeline"] = { ADDED_6_0_3_LAUNCH } }, {
	n(GARRISONS, sharedData({["maps"] = { LUNARFALL, FROSTWALL } },	{
		n(BUILDINGS, {
			garrisonBuilding(122, {	-- The Tannery (rank 1: 90, rank 2: 121, rank 3: 122)
				n(CRAFTABLES, {
					i(116993),	-- Archmage's Tent
					i(116997),	-- Blood Elven Tent
					i(116994),	-- Brute's Tent
					i(116996),	-- Crusader's Tent
					i(117000),	-- Deathweaver's Hovel
					i(117005),	-- Distressingly Furry Tent
					i(117002),	-- Elune's Retreat
					i(116991),	-- Enchanter's Tent
					i(116986),	-- Fine Blue and Gold Tent
					i(116988),	-- Fine Blue and Green Tent
					i(116987),	-- Fine Blue and Purple Tent
					i(116998),	-- High Elven Tent
					i(116989),	-- Ironskin Tent
					i(117009),	-- Nomad's Spiked Tent
					i(117003),	-- Orgrimmar's Reach
					i(117006),	-- Ornate Alliance Tent
					i(117007),	-- Ornate Horde Tent
					i(116990),	-- Outcast's Tent
					i(117001),	-- Patchwork Hut
					i(116992),	-- Savage Leather Tent
					i(117004),	-- Simple Tent
					i(116995),	-- Sturdy Tent
					i(117008),	-- Voodoo Doctor's Hovel
				}),
				n(QUESTS, {
					q(36642, {	-- Your First Leatherworking Work Order
						["provider"] = { "n", 77383 },	-- Anders Longstitch
						["races"] = ALLIANCE_ONLY,
					}),
					q(37574, {	-- Your First Leatherworking Work Order
						["provider"] = { "n", 79834 },	-- Murne Greenhoof
						["races"] = HORDE_ONLY,
					}),
				}),
				filter(RECIPES, {
					["crs"] = {
						88383,	-- Leatherworking Follower [A]
						88382,	-- Leatherworking Follower [H]
					},
					["groups"] = sharedData({ ["u"] = TRAINING }, {
						r(176408),	-- Archmage's Tent
						r(176413),	-- Blood Elven Tent
						r(176409),	-- Brute's Tent
						r(176412),	-- Crusader's Tent
						r(176415),	-- Deathweaver's Hovel
						r(176421),	-- Distressingly Furry Tent
						r(176417),	-- Elune's Retreat
						r(176404),	-- Enchanter's Tent
						r(176392),	-- Fine Blue and Gold Tent
						r(176399),	-- Fine Blue and Green Tent
						r(176397),	-- Fine Blue and Purple Tent
						r(176414),	-- High Elven Tent
						r(176401),	-- Ironskin Tent
						r(176426),	-- Nomad's Spiked Tent
						r(176418),	-- Orgrimmar's Reach
						r(176422),	-- Ornate Alliance Tent
						r(176424),	-- Ornate Horde Tent
						r(176402),	-- Outcast's Tent
						r(176416),	-- Patchwork Hut
						r(176405),	-- Savage Leather Tent
						r(176420),	-- Simple Tent
						r(176411),	-- Sturdy Tent
						r(176425),	-- Voodoo Doctor's Hovel
					}),
				}),
				n(VENDORS, {
					n(77383, {	-- Anders Longstitch <Leatherworker>
						["races"] = ALLIANCE_ONLY,
						["sym"] = {{"sub", "common_vendor", 87062}},	-- Leara Moonsilk <Leatherworking Patterns>
					}),
					n(79834, {	-- Murne Greenhoof <Leatherworker>
						["races"] = HORDE_ONLY,
						["sym"] = {{"sub", "common_vendor", 87549}},	-- Garm Gladestride <Leatherworking Patterns>
					}),
				}),
			}),
		}),
	})),
})));
