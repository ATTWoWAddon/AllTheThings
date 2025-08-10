-----------------------------------------------------
--        P R O M O T I O N S   M O D U L E        --
-----------------------------------------------------
HEARTHSTONE = createHeader({
	readable = "Hearthstone",
	icon = 134414,
	text = {
		en = "Hearthstone",
		cn = "炉石传说",
		tw = "爐石戰記",
	},
	description = {
		en = "Win 3 games in Hearthstone to qualify for these rewards.\n\nThe game is free, go get it!\n\nNOTE: You can thank IceQ1337 for this!",
	},
});
HEARTHSTONE_MERCENARIES_MODE = createHeader({
	readable = "Hearthstone Mercenaries",
	icon = 134414,
	text = {
		en = "Hearthstone Mercenaries",
		es = "Hearthstone Mercenarios",
		de = "Hearthstone Söldner",
		fr = "Hearthstone Mercenaires",
		it = "Hearthstone Mercenari",
		mx = "Hearthstone Mercenarios",
		pt = "Hearthstone Mercenários",
		ru = "Hearthstone Наемники",
		cn = "炉石传说佣兵战纪",
		tw = "《爐石戰記》傭兵戰隊",
	},
	description = {
		en = "Complete the Mercenaries Mode tutorial in Hearthstone and send your party on a mission in order to receive this reward.",
	},
});
HEARTHSTONE_10TH_ANNIVERSARY = createHeader({
	readable = "Hearthstone's 10th Anniversary",
	icon = 134414,
	text = {
		en = "Hearthstone's 10th Anniversary",
		es = "10.º aniversario de Hearthstone",
		de = "10. Jubiläum von Hearthstone",
		fr = "10e anniversaire de Hearthstone",
		it = "10° anniversario di Hearthstone",
		mx = "10.º aniversario de Hearthstone",
		pt = "10º Aniversário de Hearthstone",
		ru = "10-я годовщина Hearthstone",
		cn = "《炉石传说》10周年",
		tw = "《爐石戰記》10週年"
	},
});
root(ROOTS.Promotions, {
	n(HEARTHSTONE, bubbleDown({ ["u"] = REAL_MONEY }, {
		["timeline"] = {
			-- #if ANYCLASSIC
			CREATED_5_3_0,
			-- #else
			ADDED_5_3_0,
			-- #endif
		},
		["groups"] = {
			ach(8345),	-- Hearthstoned
			i(98618),	-- Hearthsteed (MOUNT!)
		},
	})),
	n(HEARTHSTONE_MERCENARIES_MODE, bubbleDown({ ["u"] = REAL_MONEY }, {
		["timeline"] = { ADDED_9_1_0 },
		["groups"] = {
			mount(356488),	-- Sarge's Tale (MOUNT!)
			ach(15323),	-- Sarge's Tale
		},
	})),
	n(HEARTHSTONE_10TH_ANNIVERSARY, {
		["maps"] = {
			DUROTAR,
			STORMWIND_CITY,
			VALDRAKKEN,
		},
		["timeline"] = { ADDED_10_2_5 },
		["groups"] = {
			n(ACHIEVEMENTS, {
				ach(19866,	{	-- Hearthstoned: Fiery Edition
					["provider"] = { "i", 163186 },	-- Fiery Hearthsteed (MOUNT!)
					["u"] = REMOVED_FROM_GAME,	-- May 14, 2024
				}),
				ach(20033, {	-- Hearthstone Beginner
					i(211946, {	-- Hearthstone Game Table (TOY!)
						i(212924),	-- Stolen Hearthstone Card
					}),
				}),
				ach(19724),		-- Hearthstone Card Collection
			}),
			n(MAILBOX, bubbleDown({ ["timeline"] = { REMOVED_10_2_6 } }, {
				i(212154),	-- Hearthstone Invitation Letter (QI!)
			})),
			n(QUESTS, bubbleDown({ ["timeline"] = { REMOVED_10_2_6 } }, {
				q(79184, {	-- It's Hearthstone's Anniversary!
					["provider"] = { "i", 212154 },	-- Hearthstone Invitation Letter (QI!)
					["groups"] = {
						i(212157),	-- An Invitation
					},
				}),
				q(79178, {	-- Play Hearthstone!
					["sourceQuests"] = { 79184 },	-- It's Hearthstone's Anniversary!
					["provider"] = { "n", 215409 },	-- MC Farala
					["coord"] = { 61.6, 31.1, VALDRAKKEN },
					["groups"] = {
						i(211965),	-- Hearthstone Wild Card
						i(212979),	-- Hearthstone Starter Pack
					},
				}),
				q(79693, {	-- Play Hearthstone!
					["sourceQuests"] = { 79184 },	-- It's Hearthstone's Anniversary!
					["coord"] = { 61.6, 31.1, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(211965),	-- Hearthstone Wild Card
						i(212979),	-- Hearthstone Starter Pack
					},
				}),
				q(79694, {	-- Play Hearthstone!
					["sourceQuests"] = { 79184 },	-- It's Hearthstone's Anniversary!
					["coord"] = { 61.6, 31.1, ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(211965),	-- Hearthstone Wild Card
						i(212979),	-- Hearthstone Starter Pack
					},
				}),
			})),
			n(215146, {	-- Dr. Boom <"Dr. 7">
				["coords"] = {
					{ 53.10, 16.17, DUROTAR },
					{ 33.99, 20.52, STORMWIND_CITY },
					{ 62.24, 66.97, VALDRAKKEN },
				},
				["provider"] = { "n", 214985 },	-- Ominous Portal
				["timeline"] = { REMOVED_10_2_6 },
				["groups"] = {
					i(212335),	-- Collector's Carryall (BAG)
					i(212337),	-- Stone of the Hearth (TOY!)
					i(212522),	-- Compass Rose (MOUNT!)
					i(212606),	-- Sarge (PET!)
					i(212607),	-- Reno's Lucky Hat (COSMETIC!)
					i(212644),	-- Taverner's Belt (COSMETIC!)
					i(212336),	-- The Tavern's Tabard (COSMETIC!)
					i(211965),	-- Hearthstone Wild Card
					i(212924, {	-- Stolen Hearthstone Card
						i(212925),	-- Hearthstone Card: Abomination (CI!)
						i(212922),	-- Hearthstone Card: Alley Cat (CI!)
						i(212927),	-- Hearthstone Card: Ancient of Lore (CI!)
						i(212932),	-- Hearthstone Card: Arcane Explosion (CI!)
						i(212926),	-- Hearthstone Card: Arcane Golem (CI!)
						i(212933),	-- Hearthstone Card: Arcane Shot (CI!)
						i(212929),	-- Hearthstone Card: Baron Geddon (CI!)
						i(212930),	-- Hearthstone Card: Blessing of Kings (CI!)
						i(213019),	-- Hearthstone Card: Cairne Bloodhoof (CI!)
						i(212938),	-- Hearthstone Card: Charged Devilsaur (CI!)
						i(212921),	-- Hearthstone Card: Chillwind Yeti (CI!)
						i(212931),	-- Hearthstone Card: Forbidden Words (CI!)
						i(212923),	-- Hearthstone Card: Grove Tender (CI!)
						i(213224),	-- Hearthstone Card: Hand of Protection (CI!)
						i(212928),	-- Hearthstone Card: Hogger (CI!)
						i(212939),	-- Hearthstone Card: Jive, Insect! (CI!)
						i(212937),	-- Hearthstone Card: Preparation (CI!)
						i(212934),	-- Hearthstone Card: Pyroblast (CI!)
						i(212936),	-- Hearthstone Card: Righteousness (CI!)
						i(212871),	-- Hearthstone Card: Scarlet Crusader (CI!)
						i(212872),	-- Hearthstone Card: Shadow Word: Ruin (CI!)
					}),
				},
			}),
			i(163186, {	-- Fiery Hearthsteed (MOUNT!)
				["description"] = "Granted to Players who logged in to Hearthstone between March 11th 2024 and May 14th 2024.",
				["u"] = REMOVED_FROM_GAME,
			}),
			n(VENDORS, {
				n(215385, {	-- Shady Dealer
					["coord"] = { 60.6, 59.3, VALDRAKKEN },
					["timeline"] = { REMOVED_10_2_6 },
					["groups"] = {
						i(211965),	-- Hearthstone Wild Card
					},
				}),
			}),
		},
	}),
});

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.DF, bubbleDownSelf({ ["timeline"] = { ADDED_10_2_5 } }, {
	n(HEARTHSTONE, {
		q(79451),	-- After first daily kill of Dr. Boom (maybe bag loot trigger?)
		q(79452),	-- After first daily kill of Dr. Boom (maybe something else trigger?)
		-- q(79441),	-- Looted Sarge (itemID 212606) (automated)
		q(79186),	-- Completing 'Hearthstone's Anniversary!' (questID 79184)
		q(79189),	-- Completing 'Hearthstone's Anniversary!' (questID 79184)
		-- Account lockout from getting the same card again
		-- Quest
		q(79409),	-- Hearthstone Starter Pack card during 'Play Hearthstone!' (questID 79178)
		q(79416),	-- Hearthstone Starter Pack card during 'Play Hearthstone!' (questID 79178)
		q(79419),	-- Hearthstone Starter Pack card during 'Play Hearthstone!' (questID 79178)
		q(79420),	-- Hearthstone Starter Pack card during 'Play Hearthstone!' (questID 79178)
		q(79422),	-- Hearthstone Starter Pack card during 'Play Hearthstone!' (questID 79178)
		q(79425),	-- Hearthstone Starter Pack card during 'Play Hearthstone!' (questID 79178)
		q(79428),	-- Hearthstone Starter Pack card during 'Play Hearthstone!' (questID 79178)
		q(79583),	-- Hearthstone Starter Pack card during 'Play Hearthstone!' (questID 79178)
		-- Loot
		q(79407),	-- Stolen Hearthstone Card will contain 'Arcane Explosion' card
		q(79408),	-- Stolen Hearthstone Card will contain 'Pyroblast' card
		q(79410),	-- Stolen Hearthstone Card will contain 'Preparation' card
		q(79417),	-- Stolen Hearthstone Card will contain 'Righteousness' card
		q(79421),	-- Stolen Hearthstone Card will contain 'Chillwind Yeti' card
		q(79423),	-- Stolen Hearthstone Card will contain 'Grove Tender' card
		q(79424),	-- Stolen Hearthstone Card will contain 'Abomination' card
		q(79426),	-- Stolen Hearthstone Card will contain 'Ancient of Lore' card
		q(79427),	-- Stolen Hearthstone Card will contain 'Hogger' card
		q(79429),	-- Stolen Hearthstone Card will contain 'Blessing of Kings' card
		q(79430),	-- Stolen Hearthstone Card will contain 'Forbidden Words' card
		q(79431),	-- Stolen Hearthstone Card will contain 'Scarlet Crusader' card
		q(79459),	-- Stolen Hearthstone Card will contain 'Cairne Bloodhoof' card
	}),
})));
