-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
root(ROOTS.Instances, expansion(EXPANSION.SL, bubbleDown({ ["timeline"] = { ADDED_9_0_2_LAUNCH } }, {
	inst(1186, {	-- Spires of Ascension
		["coord"] = { 58.5, 28.5, BASTION },
		["maps"] = {
			1692,	-- Honor's Ascent
			1693,	-- Gardens of Repose
			1694,	-- Font of Fealty
			1695,	-- Seat of the Archon
		},
		["groups"] = {
			n(ACHIEVEMENTS, {
				header(HEADERS.Achievement, 14339, {	-- Shard Labor
					["description"] = "Quest tracking must be enabled to see the location of each shard in the list.\n\nShards are collected account-wide. There are shards to collect in Bastion, Necrotic Wake, and Spires of Ascension.\n\nBeing part of the |cFFfe040fVenthyr Covenant|r is not required, but the |cFFfe040fDoor of Shadows|r ability does trivialize a few of the more annoying shards!",
					["groups"] = sharedData({ ["name"] = "Anima Crystal Shard", ["icon"] = 3528288 }, {
						q(61298, {	-- Anima Crystal Shard
							["description"] = "After Kin-Tara, behind a lounge chair on the left side of the fountain.",
						}),
						q(61299, {	-- Anima Crystal Shard
							["description"] = "After Ventunax, behind the left-hand torch next to the Winged Guardian that will take you to the Font of Fealty.",
						}),
						q(61300, {	-- Anima Crystal Shard
							["description"] = "Can be collected before or after Oryphrion. There is a heart-shaped whirlpool in the middle of the room. The shard is at the top of the heart in the middle. After the boss, there will be two Winged Guardians on either side of it.",
						}),
					}),
				}),
			}),
			n(ZONE_DROPS, {
				i(174021, {	-- Age-Worn Shortblade
					["crs"] = {
						168420,	-- Forsworn Champion
						163501,	-- Forsworn Skirmisher
						168418,	-- Forsworn Inquisitor
						163458,	-- Forsworn Castigator
						168681,	-- Forsworn Helion
						163520,	-- Forsworn Squad-Leader
					},
				}),
			}),
			d(DIFFICULTY.DUNGEON.MULTI.NORMAL_PLUS, {
				e(2399, {	-- Kin-Tara
					["crs"] = {
						163077,	-- Azules
						162059,	-- Kin-Tara
					},
					["groups"] = {
						-- Legendaries
						i(183231),	-- Memory of a Cat-eye Curio
						-- Conduits
						i(183483),	-- Carnivorous Instinct
						i(182610),	-- Ferocious Appetite
						i(182468),	-- Mortal Combo
						i(182144),	-- Nature's Reach
						i(183513),	-- Stiletto Staccato
						-- Items
						i(180115),	-- Azure-Venom Choker
						i(180100),	-- Forsworn Stalker's Hauberk
						i(180109),	-- Kin-Tara's Baleful Cord
						i(180097),	-- Quarterstaff of Discordant Ethic
						i(180101),	-- Warboots of Ruthless Conviction
						i(180103),	-- Winged Hunters' Gloves
					},
				}),
				e(2416, {	-- Ventunax
					["crs"] = { 162058 },	-- Ventunax
					["groups"] = {
						-- Legendaries
						i(183338),	-- Memory of Celerity
						i(183365),	-- Memory of the Consuming Wrath
						-- Conduits
						i(183508),	-- Ambidexterity
						i(181435),	-- Calculated Strikes
						i(182478),	-- Corrupting Leer
						i(182462),	-- Expurgation
						i(181389),	-- Shivering Core
						-- Items
						i(180102),	-- Dark Stride Footwraps
						i(180110),	-- Dark Praetorian's Clasp
						i(180104),	-- Distorted Construct's Gauntlets
						i(180116),	-- Overcharged Anima Battery
						i(180095),	-- Penitent Edge
						i(180111),	-- Shadowhirl Waistwrap
					},
				}),
				e(2414, {	-- Oryphrion
					["crs"] = { 162060 },	-- Oryphrion
					["groups"] = {
						-- Legendaries
						i(183313),	-- Memory of the Lightbringer's Tempest
						i(183392),	-- Memory of the Thunderlord
						-- Conduits
						i(182187),	-- Meat Shield
						i(180944),	-- Merciless Bonegrinder
						i(182753),	-- Royal Decree
						i(182471),	-- Soul Furnace
						-- Items
						i(180105),	-- Absonant Construct's Handguards
						i(180118),	-- Anima Field Emitter
						i(180117),	-- Empyreal Ordnance
						i(180107),	-- Purge Protocol Legwraps
						i(180112),	-- The Philosopher
						i(180113),	-- Thunderous Echo Vambraces
						i(180106),	-- Vicious Surge Faceguard
					},
				}),
				e(2412, {	-- Devos, Paragon of Doubt
					["crs"] = { 162061 },	--	Devos, Paragon of Doubt
					["groups"] = {
						ach(14326),	-- Spires of Ascension
						-- Legendaries
						i(183354),	-- Memory of the Doom Winds
						i(183257),	-- Memory of the Rylakstalker's Fangs
						i(183290),	-- Memory of Ancient Teachings
						-- Conduits
						i(182649),	-- Brutal Projectiles
						i(182667),	-- Focused Light
						i(182135),	-- Focused Lightning
						i(182141),	-- Holy Oration
						i(183488),	-- Unstoppable Growth
						i(181465),	-- Xuen's Bond
						-- Items
						i(180108),	-- Abyssal Disharmony Breeches
						i(180119),	-- Boon of the Archon
						i(180099),	-- Breastplate of Brutal Dissonance
						i(180096),	-- Devos' Cacophonous Poleaxe
						i(180123),	-- Drape of Twisted Loyalties
						i(180114),	-- Fallen Paragon's Armguards
						i(183054),	-- Mysterious Soul Mirror
						i(180098),	-- Sinister Requiem Vestments
					},
				}),
			}),
			d(DIFFICULTY.DUNGEON.MULTI.HEROIC_PLUS, {
				e(2412, {	-- Devos, Paragon of Doubt
					["crs"] = { 162061 },	--	Devos, Paragon of Doubt
					["groups"] = {
						ach(14324),	-- Heroic: Spires of Ascension
					},
				}),
			}),
			d(DIFFICULTY.DUNGEON.MYTHIC, {
				n(ACHIEVEMENTS, {
					ach(14327),	-- I Can See My House From Here
				}),
				e(2414, {	-- Oryphrion
					["crs"] = { 162060 },	-- Oryphrion
					["groups"] = {
						ach(14331),	-- Goliath Offline
					},
				}),
				e(2412, {	-- Devos, Paragon of Doubt
					["crs"] = { 162061 },	--	Devos, Paragon of Doubt
					["groups"] = {
						ach(14325),	-- Mythic: Spires of Ascension
						ach(14384),	-- Mythic: Spires of Ascension Guild Run
						ach(14323),	-- ExSPEARiential
					},
				}),
			}),
		},
	}),
})));
