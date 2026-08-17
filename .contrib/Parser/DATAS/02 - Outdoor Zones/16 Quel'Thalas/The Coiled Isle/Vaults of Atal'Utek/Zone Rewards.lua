---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(MAP.MIDNIGHT.QUELTHALAS, {
	m(MAP.MIDNIGHT.THE_COILED_ISLE, {
		m(MAP.MIDNIGHT.VAULTS_OF_ATALUTEK, {
			n(ZONE_REWARDS, {
				currency(3448),	-- Corrosive Coin
				i(279345, {	-- Venom-Drenched Sack
					["groups"] = {
						n(ARMOR, {
							n(BACK, {
								i(279217),	-- Venom-Cursed Dragonhawk's Shroud
								i(279220),	-- Venom-Cursed Lynx's Mane
								i(279222),	-- Venom-Cursed Eagle's Mantle
								i(279223),	-- Venom-Cursed Bear's Greatcloak
							}),
							filter(CLOTH, {
								i(277792),	-- Venom-Cursed Dragonhawk's Plumage
								i(277790),	-- Venom-Cursed Dragonhawk's Wingspan
								i(277795),	-- Venom-Cursed Dragonhawk's Robes
								i(277789),	-- Venom-Cursed Dragonhawk's Cinch
								i(277791),	-- Venom-Cursed Dragonhawk's Leggings
								i(277794),	-- Venom-Cursed Dragonhawk's Talons
								i(277788),	-- Venom-Cursed Dragonhawk's Wristbands
								i(277793),	-- Venom-Cursed Dragonhawk's Handwraps
							}),
							filter(LEATHER, {
								i(277784),	-- Venom-Cursed Lynx's Gaze
								i(277782),	-- Venom-Cursed Lynx's Spaulders
								i(277787),	-- Venom-Cursed Lynx's Harness
								i(277781),	-- Venom-Cursed Lynx's Buckle
								i(277783),	-- Venom-Cursed Lynx's Breeches
								i(277786),	-- Venom-Cursed Lynx's Paws
								i(277780),	-- Venom-Cursed Lynx's Bracers
								i(277785),	-- Venom-Cursed Lynx's Claws
							}),
							filter(MAIL, {
								i(277776),	-- Venom-Cursed Eagle's Guise
								i(277774),	-- Venom-Cursed Eagle's Amice
								i(277779),	-- Venom-Cursed Eagle's Crest
								i(277773),	-- Venom-Cursed Eagle's Waistguard
								i(277775),	-- Venom-Cursed Eagle's Legguards
								i(277778),	-- Venom-Cursed Eagle's Flight
								i(277772),	-- Venom-Cursed Eagle's Scalebands
								i(277777),	-- Venom-Cursed Eagle's Grips
							}),
							filter(PLATE, {
								i(277768),	-- Venom-Cursed Bear's Paws
								i(277766),	-- Venom-Cursed Bear's Pauldrons
								i(277771),	-- Venom-Cursed Bear's Chestguard
								i(277765),	-- Venom-Cursed Bear's Warbelt
								i(277767),	-- Venom-Cursed Bear's Greaves
								i(277770),	-- Venom-Cursed Bear's Charge
								i(277764),	-- Venom-Cursed Bear's Battle Bands
								i(277769),	-- Venom-Cursed Bear's Gauntlets
							})
						}),
						n(WEAPONS, {
							i(277798),	-- Venom-Cursed Spellfang
							i(277799),	-- Venom-Cursed Cudgel
							i(277800),	-- Venom-Cursed Focus
							i(277801),	-- Venom-Cursed Boneglaive
							i(277802),	-- Venom-Cursed Guillotine
							i(277803),	-- Venom-Cursed Spellcarver
							i(277804),	-- Venom-Cursed Longbow
							i(277805),	-- Venom-Cursed Dirk
							i(277806),	-- Venom-Cursed Hidepiercer
							i(277807),	-- Venom-Cursed Ritual Staff
							i(277808),	-- Venom-Cursed Gladius
							i(277809),	-- Venom-Cursed Claymore
							i(277810),	-- Venom-Cursed Aegis
						})
					}
				}),
				i(279287, {	-- Corroded Pouch
					["description"] = "Rarely drops a Venom-Cursed item from the Venom-Drenched Sack (/att i:279345)",
					["sym"] = {{"select","itemID",279345},{"pop"}}
				}),
				i(279288),	-- Corroded Satchel
				i(280004, {	-- Corroded Key
					["description"] = "Received as a reward for doing a Temple Strike."
				}),
				i(280003, {	-- Excising Knife
					["description"] = "Received as a reward for doing a Temple Incursion."
				}),
				i(280006),	-- Spirit Loupe
			}),
		}),
	}),
}));
