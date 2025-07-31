---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(SHADOWLANDS, bubbleDown({ ["timeline"] = { ADDED_9_2_0 } }, {
	m(ZERETH_MORTIS, {
		n(ZONE_REWARDS, {
			currency(1979),	-- Cyphers of the First Ones
			currency(2009),	-- Cosmic Flux
			i(190189),	-- Sandworn Relic
			i(190336, {	-- Thrumming Powerstone
				["description"] = "Disenchant might give lattices.",
				["requireSkill"] = ENCHANTING,
				["groups"] = {
					i(189153),	-- Unformed Lattice	-- no comments on Wowhead about any other Type dropped specifically?
				},
			}),
			filter(CLOAKS, {
				i(190605),	-- Impossibly Ancient Cloak
			}),
			filter(CLOTH, {
				i(190344),	-- Orcaular Hood
				i(190346),	-- Oracular Mantle
				i(190343),	-- Oracular Mitts
				i(190345),	-- Oracular Pantaloons
				i(190347),	-- Oracular Sash
				i(190342),	-- Oracular Slippers
				i(190341),	-- Oracular Smock
				i(190348),	-- Oracular Wrists
			}),
			filter(FINGER_F, {
				i(188053),	-- Abandoned Automa Loop
				i(190633),	-- Cypher-Etched Band
				i(190632),	-- Cypher-Etched Ring
				i(188044),	-- Discarded Cartel Al Signet
				i(188055),	-- Impossibly Ancient Band
				i(188045),	-- Salvaged Viperid Band
			}),
			filter(LEATHER, {
				i(190355),	-- Cryptic Cinch
				i(190351),	-- Cryptic Grips
				i(190352),	-- Cryptic Mask
				i(190354),	-- Cryptic Shoulderpads
				i(190350),	-- Cryptic Treads
				i(190353),	-- Cryptic Trousers
				i(190349),	-- Cryptic Vest
				i(190356),	-- Cryptic Wristbands
			}),
			filter(MAIL, {
				i(190364),	-- Enigmatic Binds
				i(190363),	-- Enigmatic Chain
				i(190357),	-- Enigmatic Chainmail
				i(190360),	-- Enigmatic Cowl
				i(190362),	-- Enigmatic Epaulets
				i(190358),	-- Enigmatic Footguards
				i(190359),	-- Enigmatic Gauntlets
				i(190361),	-- Enigmatic Legguards
			}),
			filter(NECK_F, {
				i(190635),	-- Cypher-Etched Lavaliere
				i(190634),	-- Cypher-Etched Torque
				i(188106),	-- Unfathomable Pendant
			}),
			filter(PLATE, {
				i(190365),	-- Numerus Breastplate
				i(190368),	-- Numerus Crown
				i(190372),	-- Numerus Cuffs
				i(190371),	-- Numerus Girdle
				i(190369),	-- Numerus Greaves
				i(190367),	-- Numerus Handguards
				i(190366),	-- Numerus Sabatons
				i(190370),	-- Numerus Shoulderplates
			}),
			filter(TRINKET_F, {
				i(190389),	-- Broker's Lucky Coin
				i(190726),	-- Extract of Prodigious Sands
			}),
			n(WEAPONS, sharedData({ ["timeline"] = { ADDED_9_2_5 } }, {
				i(192428),	-- Ballad Shield
				i(192450),	-- Choral Staff
				i(192422),	-- Harmonium Lantern
				i(192451),	-- Lamenting Blade
				i(192425),	-- Legato Hammer
				i(192430),	-- Meno Sword
				i(192449),	-- Overture's Shiv
				i(192424),	-- Rhapsodic Cleaver
				i(192429),	-- Scepter of Requiem
				i(192427),	-- Senza Spellblade
				i(192423),	-- Serenading Arbalest
				i(192440),	-- Tempo Smasher
				i(192426),	-- Waltzing Glaive
			})),
		}),
	}),
})));
