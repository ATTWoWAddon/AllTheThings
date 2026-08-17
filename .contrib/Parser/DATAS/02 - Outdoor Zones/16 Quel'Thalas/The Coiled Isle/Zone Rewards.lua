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
					i(276034),	-- Entangling Brood Ring
					i(276036),	-- Ever-Constricting Band
					i(276035),	-- Soulcoiler's Signet
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
					i(276033),	-- Loa Watcher's Pendant
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
					i(280091),	-- Latent Purifier
					i(274496),	-- Ophidian Bone Whistle
					i(274495),	-- Pulse Seeker's Oculus
					i(274497),	-- Spirit-Rending Poison
					i(274498),	-- Spirit Ward
				}),
			}),
			n(WEAPONS, {
				i(276057),	-- Cryptbound Scepter
				i(276051),	-- Fangmouth Warspear
				i(276059),	-- Headhunter's Hacker
				i(276060),	-- Hexxer's Blastin' Rod
				i(276062),	-- Hydra Neckchopper
				i(276044),	-- Loa-Infused Battlestaff
				i(276058),	-- Ruinous Slitherslicer
				i(276054),	-- Serpentvine Machete
				i(276053),	-- Snakehunter's Warglaive
				i(276049),	-- Snakeslayer's Claymore
				i(276055),	-- Soulweaver's Curseblade
				i(276046),	-- Superclutch Smasher
				i(276047),	-- Swamp Whomper
				i(276042),	-- Templetusk Shield
				i(276045),	-- Trailblazing Soulblade
				i(276052),	-- Venomshot Greatbow
				i(276050),	-- Victorious Spiritstaff
				i(276043),	-- Vilefang Censer
				i(276048),	-- Vipersbane Dagger
				i(276061),	-- Witch Doctor's Bloodletter
			}),
			--
			i(271424, {	-- Diver's Key Fragment
				["cr"] = 263081,	-- Glittering Grouper Brinetail
				["coords"] = {
					{ 61.2, 14.0, MAP.MIDNIGHT.THE_COILED_ISLE },
					{ 63.6, 13.2, MAP.MIDNIGHT.THE_COILED_ISLE },
					{ 65.4, 5.6, MAP.MIDNIGHT.THE_COILED_ISLE },
					{ 67.2, 5.0, MAP.MIDNIGHT.THE_COILED_ISLE },
				},
			}),
			i(282183, {	-- Fabled Coiled Isle Veteran's Cache (Season 2)
				["timeline"] = { ADDED_12_1_0 },
				--["sym"] = SYM.MIDNIGHT.THE_COILED_ISLE_ZONE_REWARDS,
			}),
			i(275899),	-- Venom-Soaked Satchel (Rewarded for completing the Curse Surge by killing the "boss" of the event)
		}),
	}),
}));
