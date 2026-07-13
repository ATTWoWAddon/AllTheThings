---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(MAP.MIDNIGHT.QUELTHALAS, {
	m(MAP.MIDNIGHT.THE_COILED_ISLE, {
		n(ZONE_REWARDS, {
			filter(REAGENTS, {
				o(656135, {	-- Slumbering Starfish
					["description"] = "Can be found in waters, and around coastal areas of The Coiled Isle.",
					["groups"] = {
						i(274596),	-- Beached Asteroid
						i(274597),	-- Bulbous Benthos
					},
				}),
			}),
			n(ARMOR, {
				filter(BACK_F, {
					i(276038),	-- Flamebeak Cloak
					i(276040),	-- Shadowclaw Shroud
					i(276039),	-- Skytalon Drape
					i(276041),	-- Stonehide Cape
				}),
				filter(CLOTH, {
					i(276003),	-- Skytalon Bracers
					i(276031),	-- Skytalon Cord
					i(276019),	-- Skytalon Crown
					i(276011),	-- Skytalon Grips
					i(276027),	-- Skytalon Leggings
					i(276023),	-- Skytalon Mantle
					i(276015),	-- Skytalon Robes
					i(276007),	-- Skytalon Sandals
				}),
				filter(FINGER_F, {
					i(276037),	-- Counter-Curse Circlet
					i(276036),	-- Ever-Constricting Band
				}),
				filter(LEATHER, {
					i(276006),	-- Shadowclaw Footpads
					i(276010),	-- Shadowclaw Handguards
					i(276018),	-- Shadowclaw Headdress
					i(276014),	-- Shadowclaw Jerkin
					i(276026),	-- Shadowclaw Legguards
					i(276030),	-- Shadowclaw Sash
					i(276022),	-- Shadowclaw Shoulderpads
					i(276002),	-- Shadowclaw Wristguards
				}),
				filter(MAIL, {
					i(276001),	-- Flamebeak Armguards
					i(276029),	-- Flamebeak Belt
					i(276025),	-- Flamebeak Breeches
					i(276009),	-- Flamebeak Gloves
					i(276013),	-- Flamebeak Hauberk
					i(276017),	-- Flamebeak Helmet
					i(276021),	-- Flamebeak Spaulders
					i(276005),	-- Flamebeak Treads
				}),
				filter(NECK_F, {
					i(276032),	-- Bad Juju Necklace
				}),
				filter(PLATE, {
					i(276016),	-- Stonehide Casque
					i(276012),	-- Stonehide Chestguard
					i(276008),	-- Stonehide Gauntlets
					i(276028),	-- Stonehide Girdle
					i(276024),	-- Stonehide Greaves
					i(276020),	-- Stonehide Pauldrons
					i(276004),	-- Stonehide Sabatons
					i(276000),	-- Stonehide Vambraces
				}),
				filter(TRINKET_F, {
					i(274493),	-- Effigy of Ula'Tek's Faithful
					i(274496),	-- Ophidian Bone Whistle
				}),
			}),
			n(WEAPONS, {
				i(276059),	-- Headhunter's Hacker
				i(276045),	-- Trailblazing Soulblade
				i(276048),	-- Vipersbane Dagger
			}),
		}),
	}),
}));
