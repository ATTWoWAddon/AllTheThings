---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(MAP.MIDNIGHT.QUELTHALAS, {
	m(MAP.MIDNIGHT.THE_COILED_ISLE, {
		m(MAP.MIDNIGHT.VAULTS_OF_ATALUTEK, {
			n(RARES, {
				n(263015, {	-- Khu'tulak <Blade of Nek'zali>
					["coord"] = { 53.0, 22.7, MAP.MIDNIGHT.VAULTS_OF_ATALUTEK },
					["groups"] = {
						i(279345, {	-- Venom-Drenched Sack
							n(ARMOR, {
								filter(CLOAKS, {
									i(279223),	-- Venom-Cursed Bear's Greatcloak
									i(279222),	-- Venom-Cursed Dragonhawk's Mantle
									i(279217),	-- Venom-Cursed Eagle's Shroud
									i(279220),	-- Venom-Cursed Lynx's Mane
								}),
								filter(CLOTH, {
									i(277789),	-- Venom-Cursed Dragonhawk's Cinch
									i(277793),	-- Venom-Cursed Dragonhawk's Handwraps
									i(277791),	-- Venom-Cursed Dragonhawk's Leggings
									i(277792),	-- Venom-Cursed Dragonhawk's Plumage
									i(277795),	-- Venom-Cursed Dragonhawk's Robes
									i(277794),	-- Venom-Cursed Dragonhawk's Talons
									i(277790),	-- Venom-Cursed Dragonhawk's Wingspan
									i(277788),	-- Venom-Cursed Dragonhawk's Wristbands
								}),
								filter(LEATHER, {
									i(277780),	-- Venom-Cursed Lynx's Bracers
									i(277783),	-- Venom-Cursed Lynx's Breeches
									i(277781),	-- Venom-Cursed Lynx's Buckle
									i(277785),	-- Venom-Cursed Lynx's Claws
									i(277784),	-- Venom-Cursed Lynx's Gaze
									i(277787),	-- Venom-Cursed Lynx's Harness
									i(277786),	-- Venom-Cursed Lynx's Paws
									i(277782),	-- Venom-Cursed Lynx's Spaulders
								}),
								filter(MAIL, {
									i(277774),	-- Venom-Cursed Dragonhawk's Amice
									i(277779),	-- Venom-Cursed Dragonhawk's Crest
									i(277778),	-- Venom-Cursed Dragonhawk's Flight
									i(277777),	-- Venom-Cursed Dragonhawk's Grips
									i(277776),	-- Venom-Cursed Dragonhawk's Guise
									i(277775),	-- Venom-Cursed Dragonhawk's Legguards
									i(277772),	-- Venom-Cursed Dragonhawk's Scalebands
									i(277773),	-- Venom-Cursed Dragonhawk's Waistguard
								}),
								filter(PLATE, {
									i(277764),	-- Venom-Cursed Bear's Battle Bands
									i(277770),	-- Venom-Cursed Bear's Charge
									i(277771),	-- Venom-Cursed Bear's Chestguard
									i(277769),	-- Venom-Cursed Bear's Gauntlets
									i(277767),	-- Venom-Cursed Bear's Greaves
									i(277768),	-- Venom-Cursed Bear's Jaws
									i(277766),	-- Venom-Cursed Bear's Pauldrons
									i(277765),	-- Venom-Cursed Bear's Warbelt
								}),
								--filter(TRINKET_F, {
								-- Same as the Zone Rewards from The Coiled Isle
								--}),
							}),
							n(WEAPONS, {
								i(277810),	-- Venom-Cursed Aegis
								i(277801),	-- Venom-Cursed Boneglaive
								i(277809),	-- Venom-Cursed Claymore
								i(277799),	-- Venom-Cursed Cudgel
								i(277805),	-- Venom-Cursed Dirk
								i(277800),	-- Venom-Cursed Focus
								i(277808),	-- Venom-Cursed Gladius
								i(277802),	-- Venom-Cursed Guillotine
								i(277806),	-- Venom-Cursed Hidepiercer
								i(277804),	-- Venom-Cursed Longbow
								i(277807),	-- Venom-Cursed Ritual Staff
								i(277803),	-- Venom-Cursed Spellcarver
								i(277798),	-- Venom-Cursed Spellfang
							}),
						}),
					},
				}),
			}),
		}),
	}),
}));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.MID, {
	m(MAP.MIDNIGHT.QUELTHALAS, {
		m(MAP.MIDNIGHT.THE_COILED_ISLE, bubbleDownSelf({ ["timeline"] = { ADDED_12_1_0 } }, {
			m(MAP.MIDNIGHT.VAULTS_OF_ATALUTEK, {
				n(RARES, {
					q(97769, name(HEADERS.NPC, 263015, {isWeekly=true})),	-- first weekly kill of Khu'tulak <Blade of Nek'zali>
				}),
			}),
		})),
	}),
}));
