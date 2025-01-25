---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.ExpansionFeatures, expansion(EXPANSION.SL, bubbleDown({ ["timeline"] = { ADDED_9_0_2_LAUNCH } }, {
	m(TORGHAST, {
		n(QUESTS, {
			header(HEADERS.Achievement, 14754, {	-- The Forgotten One
				q(60267, {	-- Prison of the Forgotten
					["sourceQuests"] = { 61099 },	-- The Search For Baine
					["provider"] = { "i", 178585 },	-- The Forgotten Key
					["crs"] = { 175123 },	-- Warden Arkoban
				}),
				q(62967, {	-- Prison of the Forgotten
					["description"] = "Only available if you delete the quest item",
					["sourceQuests"] = { 61099 },	-- The Search For Baine
					["provider"] = { "n", 162804 },	-- Ve'nari
					["coord"] = { 46.9, 41.7, THE_MAW },
				}),
				q(60268, {	-- Deep Within
					["sourceQuests"] = {
						60267,	-- Prison of the Forgotten
						62967,	-- Prison of the Forgotten
					},
					["provider"] = { "n", 164937 },	-- Runecarver
					["coord"] = { 50.6, 57.2, 1912 },
				}),
				q(60269, {	-- Reawakening
					["sourceQuests"] = { 60268 },	-- Deep Within
					["provider"] = { "n", 164937 },	-- Runecarver
					["coord"] = { 50.6, 57.2, 1912 },
					["g"] = {
						i(178561),	-- Runecarver's Memory (QI!)
					},
				}),
				q(60270, {	-- A Damned Pact
					["sourceQuests"] = { 60269 },	-- Reawakening
					["provider"] = { "n", 164937 },	-- Runecarver
					["coord"] = { 50.6, 57.2, 1912 },
				}),
				q(60271, {	-- A Grave Chance
					["sourceQuests"] = { 60270 },	-- A Damned Pact
					["provider"] = { "n", 162804 },	-- Ve'nari
					["coord"] = { 46.9, 41.7, THE_MAW },
					["g"] = {
						i(181324),	-- Anima Supricifer (QI!)
						i(178562),	-- Molten Anima (QI!)
					},
				}),
				q(60272, {	-- The Weak Link
					["sourceQuests"] = { 60271 },	-- A Grave Chance
					["provider"] = { "n", 162804 },	-- Ve'nari
					["coord"] = { 46.9, 41.7, THE_MAW },
				}),
			}),
			q(62700, {	-- Ashes of the Tower
				["sourceQuests"] = { 60272 },	-- The Weak Link
				["provider"] = { "n", 164937 },	-- Runecarver
				["coord"] = { 50.6, 57.2, 1912 },
			}),
			q(64210, {	-- The Box of Many Things
				["sourceQuests"] = { 64557 },	-- In Darkness, Found
				["provider"] = { "n", 179598 },	-- Ve'nish
				["coord"] = { 42.9, 68.2, 1967 },	-- TG106_Floor (scenario)
				["maps"] = {
					1968,	-- TG107_Floor
				},
				["g"] = {
					i(186732),	-- The Box of Many Things (QI!)
				},
			}),
			q(62719, {	-- The Final Pieces
				["sourceQuests"] = { 60272 },    -- The Weak Link
				["qgs"] = {
					164937,	-- Runecarver
					180509,	-- Runecarver [Alternate Version?]
				},
				["coord"] = { 50.4, 53.8, 1912 },    -- The Runecarver's Oubliette
			}),
			q(62800, {	-- The Vessels of Jewels
				["sourceQuests"] = { 60272 },    -- The Weak Link
				["requireSkill"] = JEWELCRAFTING,
				["description"] = "Unlocks the capability of learning the base item crafts for Shadowlands Legendary items made by Jewelcrafting",
				["provider"] = { "n", 164937 },	-- Runecarver
				["coord"] = { 50.6, 57.2, 1912 },
			}),
			q(62798, {	-- The Vessels of Leather and Bone
				["sourceQuests"] = { 60272 },    -- The Weak Link
				["requireSkill"] = LEATHERWORKING,
				["description"] = "Unlocks the capability of learning the base item crafts for Shadowlands Legendary items made by Leatherworking",
				["provider"] = { "n", 164937 },	-- Runecarver
				["coord"] = { 50.6, 57.2, 1912 },
			}),
			q(62797, {	-- The Vessels of Metal
				["sourceQuests"] = { 60272 },    -- The Weak Link
				["requireSkill"] = BLACKSMITHING,
				["description"] = "Unlocks the capability of learning the base item crafts for Shadowlands Legendary items made by Blacksmithing",
				["provider"] = { "n", 164937 },	-- Runecarver
				["coord"] = { 50.6, 57.2, 1912 },
			}),
			q(62799, {	-- The Vessels of the Thread
				["sourceQuests"] = { 60272 },    -- The Weak Link
				["requireSkill"] = TAILORING,
				["description"] = "Unlocks the capability of learning the base item crafts for Shadowlands Legendary items made by Tailoring",
				["provider"] = { "n", 164937 },	-- Runecarver
				["coord"] = { 50.6, 57.2, 1912 },
			}),
			q(64216, {	-- Tower Knowledge
				["sourceQuests"] = { 64210 },	-- The Box of Many Things
				["provider"] = { "n", 164937 },	-- Runecarver
				["coord"] = { 50.3, 60.4, 1912 },	-- The Runecarver's Oubliette
				["timeline"] = { ADDED_9_1_0 },
				["g"] = {
					i(186732),	-- The Box of Many Things (QI!)
				},
			}),

		--	Champion Unlocks
			q(61957, {	-- Champion: Ashraka [Necrolord]
				["customCollect"] = "SL_COV_NEC",	-- Necrolord
				["sourceQuests"] = { 62229 },	-- Ashraka's Intelligence
				["provider"] = { "n", 173395 },	-- Ashraka
				["g"] = {
					follower(1311),	-- Ashraka
				},
			}),
			q(61223, {	-- Champion: Ayeleth the Deprived [Venthyr]
				["customCollect"] = "SL_COV_VEN",	-- Venthyr
				["sourceQuests"] = { 61259 },	-- Ayeleth's Hunger
				["provider"] = { "n", 171918 },	-- Ayeleth
				["g"] = {
					follower(1220),	-- Ayeleth
				},
			}),
			q(61421, {	-- Champion: Blisswing [Night Fae]
				["customCollect"] = "SL_COV_NFA",	-- Night Fae
				["sourceQuests"] = { 61427 },	-- Blisswing's Rescue
				["provider"] = { "n", 172275 },	-- Blisswing
				["g"] = {
					follower(1277),	-- Blisswing
				},
			}),
			q(61424, {	-- Champion: Chalkyth [Night Fae]
				["customCollect"] = "SL_COV_NFA",	-- Night Fae
				["sourceQuests"] = { 61430 },	-- Chalkyth's Saber
				["provider"] = { "n", 172240 },	-- Chalkyth
				["g"] = {
					follower(1280),	-- Chalkyth
				},
			}),
			q(62999, {	-- Champion: Croman
				["sourceQuests"] = { 62993 },	-- The Riddle of Death
				["provider"] = { "n", 175649 },	-- Croman
				["g"] = {
					follower(1325),	-- Croman
				},
			}),
			q(61218, {	-- Champion: Dug Gravewell [Venthyr]
				["customCollect"] = "SL_COV_VEN",	-- Venthyr
				["sourceQuests"] = { 61228 },	-- Dug's Missing Shovel
				["provider"] = { "n", 171869 },	-- Dug Gravewell
				["g"] = {
					follower(1214),	-- Dug Gravewell
				},
			}),
			q(61422, {	-- Champion: Duskleaf [Night Fae]
				-- found in Twisting Corridors
				["customCollect"] = "SL_COV_NFA",	-- Night Fae
				["sourceQuests"] = { 61428 },	-- Duskleaf's Revenge
				["provider"] = { "n", 172238 },	-- Duskleaf
				["g"] = {
					follower(1278)	-- Duskleaf
				},
			}),
			q(64170, {	-- Champion: ELGU - 007 [Kyrian]
				["customCollect"] = "SL_COV_KYR",	-- Kyrian
				["sourceQuests"] = { 64186 },	-- ELGU - 007's Missing Power Core
				["provider"] = { "n", 179666 },	-- ELGU - 007
				["timeline"] = { ADDED_9_1_0 },
				["g"] = {
					follower(1328),	-- ELGU - 007
				},
			}),
			q(64169, {	-- Champion: Ella [Night Fae]
				["customCollect"] = "SL_COV_NFA",	-- Night Fae
				["sourceQuests"] = { 64185 },	-- Assist Ella With ?
				["provider"] = { "n", 179672 },	-- Ella
				["timeline"] = { ADDED_9_1_0 },
				["g"] = {
					follower(1327),	-- Ella
				},
			}),
			q(61958, {	-- Champion: Gorgelimb [Necrolord]
				["customCollect"] = "SL_COV_NEC",	-- Necrolord
				-- ["sourceQuests"] = { },	-- TODO
				["provider"] = { "n", 173397 },	-- Gorgelimb
				["g"] = {
					follower(1306),	-- Gorgelimb
				},
			}),
			q(61319, {	-- Champion: Hala [Kyrian]
				["customCollect"] = "SL_COV_KYR",	-- Kyrian
				["sourceQuests"] = { 61348 },	-- Hala's Sword
				["provider"] = { "n", 172037 },	-- Hala
				["g"] = {
					follower(1267),	-- Hala
				},
			}),
			q(61321, {	-- Champion: Ispiron [Kyrian]
				["customCollect"] = "SL_COV_KYR",	-- Kyrian
				["sourceQuests"] = { 61395 },	-- Spare Parts
				["provider"] = { "n", 172154 },	-- Ispiron
				["g"] = {
					follower(1269),	-- Ispiron
				},
			}),
			q(61222, {	-- Champion: Kaletar the Mender [Venthyr]
				["customCollect"] = "SL_COV_VEN",	-- Venthyr
				["sourceQuests"] = { 61248 },	-- Kaletar's Freedom
				["provider"] = { "n", 171898 },	-- Kaletar <Mender>
				["g"] = {
					follower(1217),	-- Kaletar the Mender
				},
				-- Skoldus Hall, Layer 3
			}),
			q(61423, {	-- Champion: Karynmwylyann [Night Fae]
				["customCollect"] = "SL_COV_NFA",	-- Night Fae
				["sourceQuests"] = { 61429 },	-- Karynmwylyann's Roots
				["provider"] = { "n", 172239 },	-- Karynmwylyann
				["g"] = {
					follower(1279),	-- Karynmwylyann
				},
			}),
			q(64171, {	-- Champion: Kiaranyka [Kyrian]
				["customCollect"] = "SL_COV_KYR",	-- Kyrian
				["sourceQuests"] = { 64187 },	-- Kiaranyka's Search
				["provider"] = { "n", 179667 },	-- Kiaranyka
				["g"] = {
					follower(1329),	-- Kiaranyka
				},
			}),
			q(64173, {	-- Champion: Kinessa the Absorbent
				["customCollect"] = "SL_COV_NEC",	-- Necrolord
				["sourceQuests"] = { 64189 },	-- Kinessa's Support
				["provider"] = { "n", 179678 },	-- Kinessa the Absorbent
				["timeline"] = { ADDED_9_1_0 },
				["g"] = {
					follower(1331),	-- Kinessa the Absorbent
				},
			}),
			q(61313, {	-- Champion: Kythekios [Kyrian]
				["customCollect"] = "SL_COV_KYR",	-- Kyrian
				["sourceQuests"] = { 61322 },	-- Kythekios' Memory Stone
				["provider"] = { "n", 171995 },	-- Kythekios
				["g"] = {
					follower(1222),	-- Kythekios
				},
			}),
			q(64175, {	-- Champion: Lassik Spinebender [Venthyr]
				["customCollect"] = "SL_COV_VEN",	-- Venthyr
				["sourceQuests"] = { 64191 },	-- Lassik's Gear
				["provider"] = { "n", 179682 },	-- Lassik Spinebender
				["timeline"] = { ADDED_9_1_0 },
				["g"] = {
					follower(1333),	-- Lassik Spinebender
				},
			}),
			q(61425, {	-- Champion: Lloth'wellyn [Night Fae]
				["customCollect"] = "SL_COV_NFA",	-- Night Fae
				["sourceQuests"] = { 61431 },	-- Lloth'wellyn's Breakthrough
				["provider"] = { "n", 172241 },	-- Lloth'wellyn
				["g"] = {
					follower(1281),	-- Lloth'wellyn
				},
			}),
			q(60651, {	-- Champion: Meatball [ALL]
				["sourceQuests"] = { 60573 },	-- Meatball's Revenge
				["provider"] = { "n", 169842 },	-- Meatball
				["g"] = {
					follower(1257),	-- Meatball
				},
			}),
			q(61320, {	-- Champion: Molako [Kyrian]
				["customCollect"] = "SL_COV_KYR",	-- Kyrian
				["sourceQuests"] = { 61347 },	-- Molako's Freedom
				["provider"] = { "n", 172032 },	-- Molako
				["g"] = {
					follower(1268),	-- Molako
				},
			}),
			q(61219, {	-- Champion: Nerith Darkwing [Venthyr]
				["customCollect"] = "SL_COV_VEN",	-- Venthyr
				["sourceQuests"] = { 61262 },	-- Nerith's Vengeance
				["provider"] = { "n", 171927 },	-- Nerith Darkwing
				["g"] = {
					follower(1215),	-- Nerith Darkwing
				},
			}),
			q(61961, {	-- Champion: Rattlebag [Necrolord]
				["customCollect"] = "SL_COV_NEC",	-- Necrolord
				["sourceQuests"] = { 62236 },	-- Rattlebag's Lost Armor
				["provider"] = { "n", 173398 },	-- Rattlebag
				["g"] = {
					follower(1310),	-- Rattlebag
				},
			}),
			q(64172, {	-- Champion: Ryuja Shockfist
				["customCollect"] = "SL_COV_NEC",	-- Necrolord
				["sourceQuests"] = { 64188 },	-- Ryuja's Supplies
				["provider"] = { "n", 179676 },	-- Ryuja Shockfist
				["timeline"] = { ADDED_9_1_0 },
				["g"] = {
					follower(1330),	-- Ryuja Shockfist
				},
			}),
			q(64168, {	-- Champion: Spore of Marasmius [Night Fae]
				["customCollect"] = "SL_COV_NFA",	-- Night Fae
				["sourceQuests"] = { 64184 },	-- Missing Friend
				["provider"] = { "n", 179670 },	-- Spore of Marasmius
				["timeline"] = { ADDED_9_1_0 },
				["g"] = {
					follower(1326),	-- Spore of Marasmius
				},
			}),
			q(64174, {	-- Champion: Steadyhands [Venthyr]
				["customCollect"] = "SL_COV_VEN",	-- Venthyr
				["sourceQuests"] = { 64190 },	-- Steadyhands' Platter
				["provider"] = { "n", 179680 },	-- Steadyhands
				["timeline"] = { ADDED_9_1_0 },
				["g"] = {
					follower(1332),	-- Steadyhands
				},
			}),
			q(61221, {	-- Champion: Stonehuck [Venthyr]
				["customCollect"] = "SL_COV_VEN",	-- Venthyr
				["sourceQuests"] = { 61234 },	-- Stonehuck's Sinstone
				["provider"] = { "n", 171878 },	-- Stonehuck
				["g"] = {
					follower(1216),	-- Stonehuck
				},
			}),
			q(61959, {	-- Champion: Talethi [Necrolord]
				["customCollect"] = "SL_COV_NEC",	-- Necrolord
				["sourceQuests"] = { 62226 },	-- Talethi's Desire
				["provider"] = { "n", 173399 },	-- Talethi
				["g"] = {
					follower(1307),	-- Talethi
				},
			}),
			q(61318, {	-- Champion: Telethakas [Kyrian]
				["customCollect"] = "SL_COV_KYR",	-- Kyrian
				["sourceQuests"] = { 61340 },	-- Telethakas' Revenge
				["provider"] = { "n", 172022 },	-- Telethakas
				["g"] = {
					follower(1223),	-- Telethakas
				},
			}),
			q(61317, {	-- Champion: Teliah [Kyrian]
				["customCollect"] = "SL_COV_KYR",	-- Kyrian
				["sourceQuests"] = { 61330 },	-- Teliah's Stolen Spear
				["provider"] = { "n", 172006 },	-- Teliah
				["g"] = {
					follower(1221),	-- Teliah
				},
			}),
			q(61217, {	-- Champion: Thela Soulsipper [Venthyr]
				["customCollect"] = "SL_COV_VEN",	-- Venthyr
				["sourceQuests"] = { 61243 },	-- Thela's Memory Stone
				["provider"] = { "n", 171893 },	-- Thela Soulsipper
				["g"] = {
					follower(1213),	-- Thela Soulsipper
				},
			}),
			q(61962, {	-- Champion: Velkein [Necrolord]
				["customCollect"] = "SL_COV_NEC",	-- Necrolord
				["sourceQuests"] = { 62231 },	-- Velkein's Blade
				["provider"] = { "n", 173400 },	-- Velkein
				["g"] = {
					follower(1308),	-- Velkein
				},
			}),
			q(61960, {	-- Champion: Xertora [Necrolord]
				["customCollect"] = "SL_COV_NEC",	-- Necrolord
				["sourceQuests"] = { 62227 },	-- Xertora's Construct
				["provider"] = { "n", 173401 },	-- Assembler Xertora
				["g"] = {
					follower(1309),	-- Assembler Xertora
				},
			}),
			q(61426, {	-- Champion: Yira'lya [Night Fae]
				["customCollect"] = "SL_COV_NFA",	-- Night Fae
				-- ["sourceQuests"] = { },	-- TODO
				["provider"] = { "n", 172243 },	-- Yira'lya
				["g"] = {
					follower(1282)	-- Yira'lya
				},
			}),
		}),
		--	Bonus Quests
		n(QUESTS, sharedData({
			["repeatable"] = true,
			["lvl"] = { 48 },
		},{
			q(62229, {	-- Ashraka's Intelligence
				["provider"] = { "n", 173750 },	-- Ashraka
			}),
			q(64185, {	-- Assist Ella With ?
				["provider"] = { "n", 179671 },	-- Ella
				["timeline"] = { ADDED_9_1_0 },
			}),
			q(61259, {	-- Ayeleth's Hunger
				["provider"] = { "n", 171920 },	-- Ayeleth
			}),
			q(61427, {	-- Blisswing's Rescue
				["provider"] = { "n", 172244 },	-- Blisswing
			}),
			q(61430, {	-- Chalkyth's Saber
				["provider"] = { "n", 172240 },	-- Chalkyth
			}),
			q(61228, {	-- Dug's Missing Shovel
				["provider"] = { "n", 171867 },	-- Dug Gravewell
			}),
			q(61428, {	-- Duskleaf's Revenge
				["provider"] = { "n", 172259 },	-- Duskleaf
			}),
			q(64186, {	-- ELGU - 007's Missing Power Core [Double check]
				["provider"] = { "n", 179665 },	-- ELGU - 007
				["timeline"] = { ADDED_9_1_0 },
			}),
			q(59340, {	-- Gallath's Bell
				["provider"] = { "n", 152418 },	-- Gallath
			}),
			q(61348, {	-- Hala's Sword
				["provider"] = { "n", 172039 },	-- Hala
			}),
			q(59777, {	-- Help Calix find Amethia
				["provider"] = { "n", 166147 },	-- Calix
			}),
			q(59775, {	-- Help Indigo find Penthia
				["provider"] = { "n", 166123 },	-- Indigo
			}),
			q(59779, {	-- Help Moriaz find Buttons
				["provider"] = { "n", 166151 },	-- Moriaz the Red
			}),
			q(59778, {	-- Help Sawn find Varrik
				["provider"] = { "n", 166148 },	-- Sawn
				["groups"] = {
					i(171211),	-- Venthyr's Coin Purse
				},
			}),
			q(59346, {	-- Indri's Flute
				["provider"] = { "n", 157426 },	-- Indri the Treesinger
				["groups"] = {
					i(171210),	-- Satchel of Nature's Bounty
				},
			}),
			q(61248, {	-- Kaletar's Freedom
				["provider"] = { "n", 171898 },	-- Kaletar
			}),
			q(61429, {	-- Karynmwylyann's Roots
				["provider"] = { "n", 172260 },	-- Karynmwylyann
				-- Fracture Chambers 4 / 2
			}),
			q(64187, {	-- Kiaranyka's Search
				["timeline"] = { ADDED_9_1_0 },
				--["provider"] = { "n", },	-- Kiaranyka (multiple npcid)
			}),
			q(64189, {	-- Kinessa's Support
				["provider"] = { "n", 179677 },	-- Kinessa the Absorbent
				["timeline"] = { ADDED_9_1_0 },
			}),
			q(61322, {	-- Kythekios' Memory Stone
				["provider"] = { "n", 171996 },	-- Kythekios
			}),
			q(64191, {	-- Lassik's Gear
				["provider"] = { "n", 179681 },	-- Lassik Spinebender
				["timeline"] = { ADDED_9_1_0 },
			}),
			q(61431, {	-- Lloth'wellyn's Breakthrough
				["provider"] = { "n", 172263 },	-- Lloth'wellyn
			}),
			q(60573, {	-- Meatball's Revenge
				["provider"] = { "n", 168979 },	-- Meatball
			}),
			q(64184, {	-- Missing Friend [Double check]
				["provider"] = { "n", 179762 },	-- Friend? [Might be Spore of Marasmius]
				["timeline"] = { ADDED_9_1_0 },
			}),
			q(61347, {	-- Molako's Freedom
				["provider"] = { "n", 172031 },	-- Molako
			}),
			q(64190, {	-- Steadyhands' Platter
				["provider"] = { "n", 179679 },	-- Steadyhands
				["timeline"] = { ADDED_9_1_0 },
			}),
			q(61340, {	-- Telethakas' Revenge
				["provider"] = { "n", 172024 },	-- Telethakas
			}),
			q(61243, {	-- Thela's Memory Stone
				["provider"] = { "n", 171895 },	-- Thela Soulsipper
			}),
			q(61262, {	-- Nerith's Vengeance
				["provider"] = { "n", 171928 },	-- Nerith Darkwing
			}),
			q(59345, {	-- Phantoriax's Warsword
				["provider"] = { "n", 157432 },	-- Indigo
			}),
			q(62236, {	-- Rattlebag's Lost Armor
				["provider"] = { "n", 173404 },	-- Lost Armor
			}),
			q(59344, {	-- Renavyth's Medallion
				["provider"] = { "n", 157406 },	-- Renavyth
			}),
			q(64188, {	-- Ryuja's Supplies
				["provider"] = { "n", 179673 },	-- Ryuja Shockfist
				["timeline"] = { ADDED_9_1_0 },
			}),
			q(61395, {	-- Spare Parts
				["provider"] = { "n", 172157 },	-- Ispiron
			}),
			q(61234, {	-- Stonehuck's Sinstone
				["provider"] = { "n", 171879 },	-- Stonehuck
			}),
			q(62226, {	-- Talethi's Desire
				["provider"] = { "n", 173748 },	-- Talethi
			}),
			q(61330, {	-- Teliah's Stolen Spear
				["provider"] = { "n", 172007 },	-- Teliah
			}),
			q(62993, {	-- The Riddle of Death
				["provider"] = { "n", 175648 },	-- Croman
			}),
			q(62227, {	-- Xertora's Construct
				-- ["provider"] = { "n", ??? },	-- TODO: ???
			}),
			q(63987, {	-- Ve'lor's Lost Parcel
				["provider"] = { "n", 178932 },	-- Ve'lor the Messenger
			}),
			q(62231, {	-- Velkein's Blade
				["provider"] = { "n", 173753 },	-- Velkein
				-- Coldheart 8 / 5
			}),
		})),

			--------------
			-- Lockouts --
			--------------
		n(QUESTS, sharedData({
			["isWeekly"] = true,
		},{
		--	Coldheart
			q(58198, {	-- Coldheart Interstitia, Layer 1
				["name"] = "Coldheart Interstitia, Layer 1",
			}),
			q(58199, {	-- Coldheart Interstitia, Layer 2
				["name"] = "Coldheart Interstitia, Layer 2",
			}),
			q(58200, {	-- Coldheart Interstitia, Layer 3
				["name"] = "Coldheart Interstitia, Layer 3",
			}),
			q(58201, {	-- Coldheart Interstitia, Layer 4
				["name"] = "Coldheart Interstitia, Layer 4",
			}),
			q(58202, {	-- Coldheart Interstitia, Layer 5
				["name"] = "Coldheart Interstitia, Layer 5",
			}),
			q(58203, {	-- Coldheart Interstitia, Layer 6
				["name"] = "Coldheart Interstitia, Layer 6",
			}),
			q(61975, {	-- Coldheart Interstitia, Layer 7
				["name"] = "Coldheart Interstitia, Layer 7",
			}),
			q(61976, {	-- Coldheart Interstitia, Layer 8
				["name"] = "Coldheart Interstitia, Layer 8",
			}),
			q(63880, {	-- Coldheart Interstitia, Layer 9
				["name"] = "Coldheart Interstitia, Layer 9",
			}),
			q(63881, {	-- Coldheart Interstitia, Layer 10
				["name"] = "Coldheart Interstitia, Layer 10",
			}),
			q(63882, {	-- Coldheart Interstitia, Layer 11
				["name"] = "Coldheart Interstitia, Layer 11",
			}),
			q(63883, {	-- Coldheart Interstitia, Layer 12
				["name"] = "Coldheart Interstitia, Layer 12",
			}),
		--	Fracture Chambers
			q(58186, {	-- Fracture Chambers, Layer 1
				["name"] = "Fracture Chambers, Layer 1",
			}),
			q(58187, {	-- Fracture Chambers, Layer 2
				["name"] = "Fracture Chambers, Layer 2",
			}),
			q(58188, {	-- Fracture Chambers, Layer 3
				["name"] = "Fracture Chambers, Layer 3",
			}),
			q(58189, {	-- Fracture Chambers, Layer 4
				["name"] = "Fracture Chambers, Layer 4",
			}),
			q(58190, {	-- Fracture Chambers, Layer 5
				["name"] = "Fracture Chambers, Layer 5",
			}),
			q(58191, {	-- Fracture Chambers, Layer 6
				["name"] = "Fracture Chambers, Layer 6",
			}),
			q(61971, {	-- Fracture Chambers, Layer 7
				["name"] = "Fracture Chambers, Layer 7",
			}),
			q(61972, {	-- Fracture Chambers, Layer 8
				["name"] = "Fracture Chambers, Layer 8",
			}),
			q(63872, {	-- Fracture Chambers, Layer 9
				["name"] = "Fracture Chambers, Layer 9",
			}),
			q(63873, {	-- Fracture Chambers, Layer 10
				["name"] = "Fracture Chambers, Layer 10",
			}),
			q(63874, {	-- Fracture Chambers, Layer 11
				["name"] = "Fracture Chambers, Layer 11",
			}),
			q(63875, {	-- Fracture Chambers, Layer 12
				["name"] = "Fracture Chambers, Layer 12",
			}),
		--	Mort'regar
			q(58204, {	-- Mort'regar, Layer 1
				["name"] = "Mort'regar, Layer 1",
			}),
			q(58205, {	-- Mort'regar, Layer 2
				["name"] = "Mort'regar, Layer 2",
			}),
			q(59326, {	-- Mort'regar, Layer 3
				["name"] = "Mort'regar, Layer 3",
			}),
			q(59334, {	-- Mort'regar, Layer 4
				["name"] = "Mort'regar, Layer 4",
			}),
			q(59335, {	-- Mort'regar, Layer 5
				["name"] = "Mort'regar, Layer 5",
			}),
			q(59336, {	-- Mort'regar, Layer 6
				["name"] = "Mort'regar, Layer 6",
			}),
			q(61977, {	-- Mort'regar, Layer 7
				["name"] = "Mort'regar, Layer 7",
			}),
			q(61978, {	-- Mort'regar, Layer 8
				["name"] = "Mort'regar, Layer 8",
			}),
			q(63884, {	-- Mort'regar, Layer 9
				["name"] = "Mort'regar, Layer 9",
			}),
			q(63885, {	-- Mort'regar, Layer 10
				["name"] = "Mort'regar, Layer 10",
			}),
			q(63886, {	-- Mort'regar, Layer 11
				["name"] = "Mort'regar, Layer 11",
			}),
			q(63887, {	-- Mort'regar, Layer 12
				["name"] = "Mort'regar, Layer 12",
			}),
		--	Skoldus Hall
			q(59328, {	-- Skoldus Hall, Layer 1
				["name"] = "Skoldus Hall, Layer 1",
			}),
			q(59329, {	-- Skoldus Hall, Layer 2
				["name"] = "Skoldus Hall, Layer 2",
			}),
			q(59330, {	-- Skoldus Hall, Layer 3
				["name"] = "Skoldus Hall, Layer 3",
			}),
			q(59331, {	-- Skoldus Hall, Layer 4
				["name"] = "Skoldus Hall, Layer 4",
			}),
			q(59332, {	-- Skoldus Hall, Layer 5
				["name"] = "Skoldus Hall, Layer 5",
			}),
			q(59333, {	-- Skoldus Hall, Layer 6
				["name"] = "Skoldus Hall, Layer 6",
			}),
			q(61969, {	-- Skoldus Hall, Layer 7
				["name"] = "Skoldus Hall, Layer 7",
			}),
			q(61970, {	-- Skoldus Hall, Layer 8
				["name"] = "Skoldus Hall, Layer 8",
			}),
			q(63868, {	-- Skoldus Hall, Layer 9
				["name"] = "Skoldus Hall, Layer 9",
			}),
			q(63869, {	-- Skoldus Hall, Layer 10
				["name"] = "Skoldus Hall, Layer 10",
			}),
			q(63870, {	-- Skoldus Hall, Layer 11
				["name"] = "Skoldus Hall, Layer 11",
			}),
			q(63871, {	-- Skoldus Hall, Layer 12
				["name"] = "Skoldus Hall, Layer 12",
			}),
		--	Soulforges
			q(58192, {	-- Soulforges, Layer 1
				["name"] = "Soulforges, Layer 1",
			}),
			q(58193, {	-- Soulforges, Layer 2
				["name"] = "Soulforges, Layer 2",
			}),
			q(58194, {	-- Soulforges, Layer 3
				["name"] = "Soulforges, Layer 3",
			}),
			q(58195, {	-- Soulforges, Layer 4
				["name"] = "Soulforges, Layer 4",
			}),
			q(58196, {	-- Soulforges, Layer 5
				["name"] = "Soulforges, Layer 5",
			}),
			q(58197, {	-- Soulforges, Layer 6
				["name"] = "Soulforges, Layer 6",
			}),
			q(61973, {	-- Soulforges, Layer 7
				["name"] = "Soulforges, Layer 7",
			}),
			q(61974, {	-- Soulforges, Layer 8
				["name"] = "Soulforges, Layer 8",
			}),
			q(63876, {	-- Soulforges, Layer 9
				["name"] = "Soulforges, Layer 9",
			}),
			q(63877, {	-- Soulforges, Layer 10
				["name"] = "Soulforges, Layer 10",
			}),
			q(63878, {	-- Soulforges, Layer 11
				["name"] = "Soulforges, Layer 11",
			}),
			q(63879, {	-- Soulforges, Layer 12
				["name"] = "Soulforges, Layer 12",
			}),
		--	Upper Reaches
			q(59337, {	-- Upper Reaches, Layer 1
				["name"] = "Upper Reaches, Layer 1",
			}),
			q(61101, {	-- Upper Reaches, Layer 2
				["name"] = "Upper Reaches, Layer 2",
			}),
			q(61131, {	-- Upper Reaches, Layer 3
				["name"] = "Upper Reaches, Layer 3",
			}),
			q(61132, {	-- Upper Reaches, Layer 4
				["name"] = "Upper Reaches, Layer 4",
			}),
			q(61133, {	-- Upper Reaches, Layer 5
				["name"] = "Upper Reaches, Layer 5",
			}),
			q(61134, {	-- Upper Reaches, Layer 6
				["name"] = "Upper Reaches, Layer 6",
			}),
			q(61979, {	-- Upper Reaches, Layer 7
				["name"] = "Upper Reaches, Layer 7",
			}),
			q(61980, {	-- Upper Reaches, Layer 8
				["name"] = "Upper Reaches, Layer 8",
			}),
			q(63888, {	-- Upper Reaches, Layer 9
				["name"] = "Upper Reaches, Layer 9",
			}),
			q(63889, {	-- Upper Reaches, Layer 10
				["name"] = "Upper Reaches, Layer 10",
			}),
			q(63890, {	-- Upper Reaches, Layer 11
				["name"] = "Upper Reaches, Layer 11",
			}),
			q(63891, {	-- Upper Reaches, Layer 12
				["name"] = "Upper Reaches, Layer 12",
			}),
		})),
	}),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.SL, {
	m(1627, {	-- Torghast
	-- Various Triggers
		q(59987),	-- Tracking Quest (Finished Mort'regar Layer 1)
		q(59988),	-- Tracking Quest (Finished The Soulforges Layer 1)
		q(59989),	-- Tracking Quest (Finished Coldheart Interstitia Layer 1)
		q(59990),	-- Tracking Quest (Finished The Upper Reaches Layer 1)
		q(59991),	-- Tracking Quest (Finished The Soulforges Layer 1)
		q(59992),	-- Tracking Quest (Finished The Upper Reaches Layer 1)
		q(59993),	-- Tracking Quest (Finished The Fracture Chambers Layer 1)
		q(59995),	-- Tracking Quest (Finished The Fracture Chambers Layer 1)
		q(59996),	-- Tracking Quest (Finished Skoldus Hall Layer 1)
		q(59997),	-- Tracking Quest (Finished The Upper Reaches Layer 1)
		q(62885),	-- Triggered when learning legendary memory that triggered a cutscene w/Runecarver (spellID 345039)
		q(62977),	-- Twisting Corridors, Layer 2 (it looks like TC quests don't reset weekly like the others/are used to mark account TC progress or something)
		q(62978),	-- Twisting Corridors, Layer 4
		q(62979),	-- Twisting Corridors, Layer 6
		q(62980),	-- Twisting Corridors, Layer 8
		q(64347, {	-- Adamant Vaults
			["timeline"] = { ADDED_9_1_0 },
		}),

	-- Follower Access Triggers
		q(61951),	-- Triggered when completing 61958 (Champion: Gorgelimb)
		q(61305),	-- triggered when completing #61313, "Champion: Kythekios"
		q(61420),	-- Triggered when freeing Yira'lya
		q(61956),	-- triggered when completing #62229, "Ashraka's Intelligence"
		q(61215),	-- triggered when completing Champion: Kaletar
		q(61417),	-- triggered when completing Karynmwylyann's Roots (61429)
		q(61211),	-- triggered when completing Thela's Memory Stone (61243)
		q(60555),	-- triggered when completing Champion: Meatball (Venthyr)
		q(61212),	-- triggered when completing Champion: Dug Gravewell [Venthyr] (61218)
		q(61415),	-- Triggered when completing #61427, "Blisswing's Rescue"
		q(61416),	-- Triggered when completing #61428, "Duskleaf's Revenge"
		q(61418),	-- Triggered when completing #61430, "Chalkyth's Saber"
		q(61419),	-- Triggered when completing #TODO, "TODO" (for Lloth'wellyn)
		q(61308),	-- Unlocking access to pickup follower 'Hala' by completing #61348 "Hala's Sword"
		q(61310),	-- Unlocking access to pickup follower 'Ispiron' by completing #61395, "Spare Parts"
		q(61216),	-- triggered when completing #61259, "Ayeleth's Hunger" (was on a venthyr and picked up the champ quest right after)
		q(64183),	-- triggered when completing #64191, "Lassik's Gear"
		q(61309),	-- triggered when completing #61347, "Molako's Freedom"
		q(61213),	-- triggered when completing #61262, "Nerith's Vengeance"
		q(61952),	-- triggered when completing #62226, "Talethi's Desire"
		q(61307),	-- triggered when completing #61340, "Telethakas's Revenge"
		q(61306),	-- triggered when completing #61330, "Teliah's Stolen Spear"
		q(61214),	-- triggered when completing #61234, "Stonehuck's Sinstone"
		q(61955),	-- triggered when completing #62236, "Rattlebag's Lost Armor"
		q(62991),	-- triggered when completing #62993, "The Riddle of Death"
		q(61953),	-- triggered when completing #62231, "Velkein's Blade"
		q(61954),	-- triggered when completing #62227, "Xertora's Construct"

		-- 9.1.0
		q(64176),	-- New Night Fae Follower triggered when completing 64184, "Missing Friend".
		q(64178),	-- New Kyrian Follower Triggered when completing 64186, "ELGU - 007's Missing Power Core"
		q(64180),	-- triggered when completing #64188, "Ryuja's Supplies"
		q(64181),	-- triggered when completing #64189, "Kinessa's Support"
		q(64182),	-- triggered when completing #64174, "Champion: Steadyhands"
		q(64179),	-- Triggered when completing 64187 Kiaranyka's Search / 64171 Champion: Kiaranyka
		q(64177),	-- Triggered when completing 64185 Assist Ella With ?/64169 Champion: Ella

		-- 9.1.5
		--q(64848), Enter Torghast as lvl 56 NF Druid
		q(65308), -- Leveling in Torghast / Maw Jump to Torghast (spellID 359581)

		-- 9.2
		-- Jailers Gauntlet
		q(65275),	-- Layer 2 (Weird) PET?

		--q(64347),	-- Layer 3 (Already in AV probably because it ended in AV) /Might be Death-Bound Shard

		q(65276),	-- Layer 4 (Weird) Toy?

		q(65277),	-- Layer 6 (Werid) Title?

		q(65278),	-- Layer 8 (Weird) Mount?

		q(65298),	-- Unlocking Layer 5-8

		q(65681),	-- Unlocking 'Unity' Legendary power (spellID 367716)
	}),
}));