--------------------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

root(ROOTS.Instances, expansion(EXPANSION.CATA, bubbleDown({ ["timeline"] = ADDED_4_3_0 }, {
	applyclassicphase(CATA_PHASE_HOUR_OF_TWILIGHT, inst(185, {	-- Well of Eternity
		["mapID"] = 398,
		["coords"] = {
			{ 22.9, 64.4, CAVERNS_OF_TIME },	-- dungeon entrance
			{ 64.7, 49.9, TANARIS },	-- entrance to CoT
		},
		["groups"] = {
			n(QUESTS, {
				q(30104, {	-- Documenting the Timeways
					["sourceQuests"] = {
						30097,	-- Archival Purposes
						30096,	-- Murozond
					},
					["qg"] = 57864,	-- Alurmi
					["groups"] = {
						i(72880),	-- Alurmi's Ring
						i(72881),	-- Treads of the Past
						i(72882),	-- Chronicler's Chestguard
						i(72883),	-- Historian's Sash
					},
				}),
				q(30099, {	-- In Unending Numbers
					["sourceQuest"] = 30098,	-- The Well of Eternity
					["qg"] = 55624,	-- Nozdormu
				}),
				q(30102, {	-- The Hour of Twilight
					["sourceQuest"] = 30101,	-- The Path of the Dragon Soul
					["qg"] = 57913,	-- Chromie
					["isBreadcrumb"] = true,
				}),
				q(30101, {	-- The Path of the Dragon Soul
					["sourceQuest"] = 30100,	-- The Vainglorious
					["qg"] = 55624,	-- Nozdormu
					["groups"] = {
						i(72876),	-- Ironfeather Longbow
						i(72877),	-- Chain of the Demon Hunter
						i(72878),	-- Demonic Skull
						i(72879),	-- Boots of the Treacherous Path
					},
				}),
				q(30100, {	-- The Vainglorious
					["sourceQuest"] = 30099,	-- In Unending Numbers
					["qg"] = 55624,	-- Nozdormu
				}),
			}),
			n(ZONE_DROPS, {
				i(76158, {	-- Courtier's Slippers
					["crs"] = {
						55654,	-- Corrupted Arcanist
						55656,	-- Dreadlord Defender
						56579,	-- Enchanted Highmistress
						54589,	-- Enchanted Highmistress
						54612,	-- Eternal Champion
						54747,	-- Eye of the Legion
						55426,	-- Highguard Elite
						55503,	-- Legion Demon
						54645,	-- Royal Handmaiden
						55453,	-- Shadowbat
					},
				}),
				i(76157, {	-- Waterworn Handguards
					["crs"] = {
						55654,	-- Corrupted Arcanist
						55656,	-- Dreadlord Defender
						56579,	-- Enchanted Highmistress
						54589,	-- Enchanted Highmistress
						54612,	-- Eternal Champion
						54747,	-- Eye of the Legion
						55426,	-- Highguard Elite
						55503,	-- Legion Demon
						54645,	-- Royal Handmaiden
						55453,	-- Shadowbat
					},
				}),
				i(76159, {	-- Legion Bindings
					["crs"] = {
						55654,	-- Corrupted Arcanist
						55656,	-- Dreadlord Defender
						56579,	-- Enchanted Highmistress
						54589,	-- Enchanted Highmistress
						54612,	-- Eternal Champion
						54747,	-- Eye of the Legion
						55426,	-- Highguard Elite
						55503,	-- Legion Demon
						54645,	-- Royal Handmaiden
						55453,	-- Shadowbat
					},
				}),
			}),
			d(DIFFICULTY.DUNGEON.HEROIC, sharedData({ ["modID"] = 0, }, {
				e(290, {	-- Peroth'arn
					["crs"] = { 55085 },	-- Peroth'arn
					["groups"] = {
						ach(6127),	-- Lazy Eye
						i(72827),	-- Gavel of Peroth'arn
						i(72832),	-- Girdle of the Queen's Champion
						i(72831),	-- Horned Band
						i(72829),	-- Orb of the First Satyrs
						i(72830),	-- Peroth'arn's Belt
						i(72828),	-- Trickster's Edge
					},
				}),
				e(291, {	-- Queen Azshara
					["crs"] = { 54853 },	-- Queen Azshara
					["groups"] = {
						i(72834),	-- Breastplate of the Queen's Guard
						i(72838),	-- Cloak of the Royal Protector
						i(72835),	-- Puppeteer's Pantaloons
						i(72837),	-- Queen's Boon
						i(72833),	-- Scepter of Azshara
						i(72836),	-- Slippers of Wizardry
					},
				}),
				e(292, {	-- Mannoroth
					["crs"] = { 54969 },	-- Mannoroth
					["groups"] = {
						ach(6070),	-- That's Not Canon!
						ach(6118),	-- Heroic: Well of Eternity
						ach(6121),	-- Heroic: Well of Eternity Guild Run
						i(72842),	-- Annihilan Helm
						i(72839),	-- Cowl of Highborne Sorcerers
						i(72841),	-- Demonsbane Chestguard
						i(72898),	-- Foul Gift of the Demon Lord
						i(72843),	-- Helm of Power
						i(72847),	-- Helm of Thorns
						i(72848),	-- Leggings of the Legion
						i(72845),	-- Mannoroth's Signet
						i(72844),	-- Pit Lord's Destroyer
						i(72840),	-- Spaulders of Eternity
						i(72846),	-- Thornwood Staff
						i(72899),	-- Varo'then's Brooch
					},
				}),
			})),
			n(55500, {	-- Illidan Stormrage
				["sharedDescription"] = "|CFFFF0000Listen to Illidan, these mobs do have lethal abilities!|r",
				["groups"] = {
					n(54927),	-- Guardian Demon
					n(54500),	-- Legion Demon
				},
			}),
		},
	})),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.WOD, bubbleDownSelf({ ["timeline"] = { ADDED_6_0_2 } }, {
	inst(185, {
		q(35435),	-- Well of Eternity Reward Quest - Heroic completion
	}),
})));
