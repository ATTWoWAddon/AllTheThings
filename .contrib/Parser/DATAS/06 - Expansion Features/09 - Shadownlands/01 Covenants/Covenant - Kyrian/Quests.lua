-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------
local CONDUIT_GROUP = {
	-- DK
	i(182113),	-- Fleeting Wind
	i(182133),	-- Insatiable Appetite
	-- DH
	i(182317),	-- Shattered Restoration
	i(182324),	-- Felfire Haste
	-- Druid
	i(183466),	-- Innate Resolve
	i(183467),	-- Tireless Pursuit
	-- Hunter
	i(182584),	-- Cheetah's Vigor
	i(182469),	-- Rejuvenating Wind
	-- Mage
	i(181707),	-- Diverted Energy
	i(181467),	-- Flow of Time
	-- Monk
	i(181512),	-- Dizzying Tumble
	i(181373),	-- Harm Denial
	-- Paladin
	i(182336),	-- Golden Path
	i(182448),	-- Light's Barding
	-- Priest
	i(181840),	-- Light's Inspiration
	i(181962),	-- Mental Recovery
	-- Rogue
	i(183500),	-- Fade to Nothing
	i(183496),	-- Nimble Fingers
	-- Shaman
	i(182106),	-- Refreshing Waters
	i(182108),	-- Thunderous Paws
	-- Warlock
	i(182460),	-- Accrued Vitality
	i(182466),	-- Shade of Terror
	-- Warrior
	i(181469),	-- Indelible Victory
	i(180847),	-- Inspiring Presence
};
local LFR_WEAPON_GROUP = {
	i(183893, {["modID"] = 4, }),	-- Abominable Anima Spherule
	i(183892, {["modID"] = 4, }),	-- Mystic Anima Spherule
	i(183891, {["modID"] = 4, }),	-- Venerated Anima Spherule
	i(183890, {["modID"] = 4, }),	-- Zenith Anima Spherule
	i(183888, {["modID"] = 4, }),	-- Apogee Anima Bead
	i(183889, {["modID"] = 4, }),	-- Thaumaturgic Anima Bead
};
root(ROOTS.ExpansionFeatures, expansion(EXPANSION.SL, bubbleDown({ ["timeline"] = { ADDED_9_0_2_LAUNCH }, ["customCollect"] = "SL_COV_KYR" }, {
	n(KYRIAN, {
		n(QUESTS, {
			q(63211, {	-- Report to Adrestes
				["sourceQuests"] = {
					-- TODO: confirm
					57878,	-- Choosing Your Purpose [Story]
					62000,	-- Choosing Your Purpose [Skip]
				},
				["sourceQuestNumRequired"] = 1,
				["isBreadcrumb"] = true,
				["provider"] = { "n", 159478 },	-- Tal-Inara
				["coord"] = { 39.2, 69.7, ORIBOS },
			}),
			q(60491, {	-- Among the Kyrian
				["sourceQuests"] = {
					57878,	-- Choosing Your Purpose [Story]
					62000,	-- Choosing Your Purpose [Skip]
					63211,	-- Report to Adrestes [Skip]
				},
				["sourceQuestNumRequired"] = 1,
				["provider"] = { "n", 171787 },	-- Polemarch Adrestes
				["coord"] = { 36.1, 64.1, ORIBOS },
			}),
			q(58997, {	-- A Bittersweet Prize
				["sourceQuests"] = { 58995 },	-- I Dreamed A Dream
				["provider"] = { "n", 163328 },	-- Pelagos
				["coord"] = { 45.2, 65.4, ARDENWEALD },
			}),
			q(62698, {	-- A Call to Service
				["sourceQuests"] = { 62790 },	-- The Path Provides
				["provider"] = { "n", 176100 },	-- Iona Skyblade
				["coord"] = { 42.7, 69.8, ARCHONS_RISE },
			}),
			q(62795, {	-- A Conduit for Good
				["sourceQuests"] = { 60504 },	-- Strengthen the Bond
				["provider"] = { "n", 160212 },	-- Soulguide Daelia
				["coord"] = { 59.5, 34.2, SANCTUM_OF_BINDING },
			}),
			q(58791, {	-- A Day in the Life
				["sourceQuests"] = { 58790 },
				["provider"] = { "n", 162558 },	-- Alithea
				["coord"] = { 32.5, 39.7, REDRIDGE_MOUNTAINS },
			}),
			q(61697, {	-- A New Age
				["sourceQuests"] = { 61135 },	-- Heart of the Crest
				["provider"] = { "n", 174177 },	-- Polemarch Adrestes
				["coord"] = { 43.7, 66.6, ARCHONS_RISE },
				["g"] = {
					i(180766),	-- Eternal Phalynx of Courage (MOUNT!)
					i(180633),	-- Grubby (PET!)
					i(181295),	-- Selfless Wings of the Ascended
				},
			}),
			q(58178, {	-- A Partner for Eternity
				["sourceQuests"] = { 58180 },	-- Phaestus, Genesis of Aeons
				["provider"] = { "n", 160280 },	-- Mikanikos
				["coord"] = { 50.1, 20.5, BASTION },
			}),
			q(61767, {	-- A Perilous Journey
				["sourceQuests"] = { 61785 },	-- An Expected Visitor
				["provider"] = { "n", 154627 },	-- Xandria
				["coord"] = { 61.8, 37.5, ARCHONS_RISE },
			}),
			q(60492, {	-- A Proper Reception
				["sourceQuests"] = { 60491 },	-- Among the Kyrian
				["provider"] = { "n", 168742 },	-- Polemarch Adrestes
				["coord"] = { 56.8, 31.4, BASTION },
			}),
			q(57122, {	-- A Step Too Far
				["sourceQuests"] = { 57121 },	-- The Power of the Maw
				["provider"] = { "n", 170375 },	-- Kleia
				["coord"] = { 33.8, 55.7, THE_MAW },
			}),
			q(62555, {	-- A Touch of Humility
				["sourceQuests"] = { 57125 },	-- Time to Reflect
				["provider"] = { "n", 160037 },	-- Polemarch Adrestes
				["coord"] = { 55.6, 42.0, ARCHONS_RISE },
			}),
			q(57905, {	-- A Unique Opportunity
				["sourceQuests"] = { 62792 },	-- Into the Reservoir
				["provider"] = { "n", 167745 },	-- Haephus
				["coord"] = { 42.6, 53.1, ARCHONS_RISE },
			}),
			q(58566, {	-- Actions Speak Louder than Words
				["sourceQuests"] = { 58565 },	-- Land of Light
				["provider"] = { "n", 161553 },	-- Mindscorched Alwin
				["coord"] = { 31.9, 47.5, REVENDRETH },
			}),
			q(61778, {	-- Aerial Advantage
				["sourceQuests"] = { 61776 },	-- Trouble on the Western Front
				["provider"] = { "n", 167810 },	-- Emeni
				["coord"] = { 28.5, 37.5, MALDRAXXUS },
				["g"] = {
					i(180899),	-- Riding Hook (QI!)
				},
			}),
			q(57114, {	-- Aerial Reconnaissance
				["sourceQuests"] = { 57113 },	-- Lysonia's Trail
				["provider"] = { "n", 156361 },	-- Kleia
				["coord"] = { 61.8, 43.6, BASTION },
			}),
			q(61775, {	-- An Early End
				["sourceQuests"] = {
					61770,	-- The Butchers of Bastion
					61771,	-- Justice from Above
					61772,	-- Dark Developments
				},
				["provider"] = { "n", 168743 },	-- Apolon
				["coord"] = { 35.3, 25.9, MALDRAXXUS },
			}),
			q(59919, {	-- An Earned Bond
				["sourceQuests"] = { 58847 },	-- Kyrestia's Grace
				["provider"] = { "n", 160037 },	-- Polemarch Adrestes
				["coord"] = { 55.6, 42.0, ARCHONS_RISE },
				["lockCriteria"] = { 1, "questID", 65147 },	-- No Ordinary Steward
				["g"] = {
					follower(1258),	-- Mikanikos
				},
			}),
			q(61785, {	-- An Expected Visitor
				["description"] = "Requires Renown 11.",
				["sourceQuests"] = { 58181 },	-- Building the Base
				["provider"] = { "n", 160037 },	-- Polemarch Adrestes
				["coord"] = { 55.6, 42.2, ARCHONS_RISE },
			}),
			q(58795, {	-- Ascended
				["sourceQuests"] = { 58793 },	-- Faith Through the Darkness
				["provider"] = { "n", 160037 },	-- Polemarch Adrestes
				["coord"] = { 47.8, 53.6, ARCHONS_RISE },
				["g"] = {
					i(178157),	-- Selfless Watcher's Legguards
					i(177054),	-- Selfless Bearer's Legs
					i(179944),	-- Selfless Forgelite's Breeches
					i(174293),	-- Selfless Collector's Legguards
				},
			}),
			q(58557, {	-- Assistance from Sinfall
				["sourceQuests"] = { 61878 },	-- Creat of Greatness
				["description"] = "Requires Renown 13.",
				["provider"] = { "n", 160037 },	-- Polemarch Adrestes
				["coord"] = { 45.0, 56.9, ARCHONS_RISE },
			}),
			q(58844, {	-- Before the Dawn
				["sourceQuests"] = { 58854 },	-- Convene the Paragons
				["provider"] = { "n", 160037 },	-- Polemarch Adrestes
				["coord"] = { 55.6, 42.0, ARCHONS_RISE },
			}),
			q(58181, {	-- Building the Base
				["sourceQuests"] = { 58183 },	-- Friend to the Forgelite
				["provider"] = { "n", 160280 },	-- Mikanikos
				["coord"] = { 45.2, 56.7, ARCHONS_RISE },
				["g"] = {
					i(180763),	-- Phalynx of Courage (MOUNT!)
				},
			}),
			q(61774, {	-- Burn Before Reading
				["sourceQuests"] = {
					61770,	-- The Butchers of Bastion
					61771,	-- Justice from Above
					61772,	-- Dark Developments
				},
				["provider"] = { "n", 168744 },	-- Artemede
				["coord"] = { 35.1, 26.8, MALDRAXXUS },
				["g"] = {
					i(180845),	-- Stitchflesh Design (QI!)
				},
			}),
			q(58788, {	-- Censers of Guidance
				["sourceQuests"] = { 58787 },	-- Trial of Ascension
				["provider"] = { "n", 162542 },	-- Kleia
				["coord"] = { 33.2, 26.1, BASTION },
				["g"] = {
					i(174821),	-- Incense of Guidance (QI!)
				},
			}),
			q(61777, {	-- Charging The Blade
				["sourceQuests"] = { 61776 },	-- Trouble on the Western Front
				["provider"] = { "n", 166211 },	-- Alexandros Mograine
				["coord"] = { 28.8, 38.1, MALDRAXXUS },
			}),
			q(58562, {	-- Collecting Dust
				["sourceQuests"] = {
					58558,	-- Overhead Intelligence
					58559,	-- Eyes of the Master
					58560,	-- Gothic Fashion
				},
				["provider"] = { "n", 161544 },	-- The Curator
				["coord"] = { 56.3, 41.4, REVENDRETH },
			}),
			q(57120, {	-- Compassion, Blade of Humility
				["sourceQuests"] = { 57114 },	-- Aerial Reconnaissance
				["provider"] = { "o", 353472 },	-- Radiant Sword
				["coord"] = { 64.7, 45.6, BASTION },
			}),
			q(58854, {	-- Convene the Paragons
				["description"] = "Requires Renown 22.",
				["sourceQuests"] = { 62555 },	-- A Touch of Humility
				["provider"] = { "n", 160037 },	-- Polemarch Adrestes
				["coord"] = { 55.6, 42.0, ARCHONS_RISE },
			}),
			q(61878, {	-- Crest of Greatness
				["sourceQuests"] = { 61877 },	-- Return to the Hold
				["provider"] = { "n", 173313 },	-- Xandria
				["coord"] = { 38.9, 59.8, ARCHONS_RISE },
				["g"] = {
					i(182341),	-- Fleshshaper's Heart (QI!)
				},
			}),
			q(57897, {	-- Dangerous to Go Alone
				["sourceQuests"] = { 62794 },	-- Enhancing the Hold
				["provider"] = { "n", 167745 },	-- Haephus
				["coord"] = { 42.6, 53.1, ARCHONS_RISE },
			}),
			q(63002, {	-- Dangerous to Go Alone
			--	TODO: verify coordinates and SQs for this version (possibly when you bypass the 'tour' of Elysian Hold and say you already know your way around?)
			--	["sourceQuests"] = {  },	--
				["provider"] = { "n", 160037 },	-- Polemarch Adrestes
				["coord"] = { 55.6, 42.0, ARCHONS_RISE },
			}),
			q(61772, {	-- Dark Developments
				["sourceQuests"] = { 61769 },	-- Fight and Flight
				["provider"] = { "o", 357246 },	-- Tattered Scroll
				["coord"] = { 33.5, 24.1, MALDRAXXUS },
				["g"] = {
					i(181285),	-- Abhorrent Design (QI!)
				},
			}),
			q(61773, {	-- Descended
				["sourceQuests"] = {
					61770,	-- The Butchers of Bastion
					61771,	-- Justice from Above
					61772,	-- Dark Developments
				},
				["provider"] = { "n", 166333 },	-- Xandria
				["coord"] = { 35.5, 26.4, MALDRAXXUS },
				["g"] = {
					i(177056),	-- Selfless Bearer's Waist
					i(174295),	-- Selfless Collector's Girdle
					i(179946),	-- Selfless Forgelite's Belt
					i(178159),	-- Selfless Watcher's Girdle
				},
			}),
			q(58182, {	-- Dismantling the Opposition
				["sourceQuests"] = { 58178 },	-- A Partner for Eternity
				["provider"] = { "n", 160280 },	-- Mikanikos
				["coord"] = { 50.1, 20.5, BASTION },
			}),
			q(57118, {	-- Distorted by the Maw
				["sourceQuests"] = {
					57115,	-- Sacred Scrolls of Humility
					57116,	-- Succumbing to Pride
					57120,	-- Compassion, Blade of Humility
				},
				["provider"] = { "n", 156327 },	-- Voitha
				["coord"] = { 66.0, 47.0, BASTION },
			}),
			q(57895, {	-- Elysian Hold
				["sourceQuests"] = { 60492 },	-- A Proper Reception
				["provider"] = { "n", 168906 },	-- Polemarch Adrestes
				["coord"] = { 58.4, 28.9, BASTION },
			}),
			q(62794, {	-- Enhancing the Hold
				-- TODO: verify SQ.  should be this, or It's All Coming Together
				-- does not rely on 62796 [Return to Adrestes]
				-- Specific requirement unknown, available immediately after returning from the maw
				["sourceQuests"] = { 62837 },	-- Hopeful News
				["provider"] = { "n", 167745 },    -- Haephus
				["coord"] = { 42.6, 53.1, ARCHONS_RISE },
				["g"] = {
					i(177053),	-- Selfless Bearer's Hands
					i(174292),	-- Selfless Collector's Gauntlets
					i(179942),	-- Selfless Forgelite's Gloves
					i(178156),	-- Selfless Watcher's Gauntlets
				},
			}),
			q(58937, {	-- Evil Grubbies
				["sourceQuests"] = { 58905 },	-- Picking Up Pelagos
				["providers"] = {
					{ "n", 162392 },	-- Willowblossom
					{ "n", 163060 },	-- Willowblossom
				},
				["coord"] = { 50.5, 68.9, ARDENWEALD },
				["g"] = {
					i(174938),	-- Devourer Essence (QI!)
					i(179941),	-- Selfless Forgelite's Boots
					i(178155),	-- Selfless Watcher's Warboots
					i(174291),	-- Selfless Collector's Warboots
					i(177052),	-- Selfless Bearer's Feet
				},
			}),
			q(58559, {	-- Eyes of the Master
				["sourceQuests"] = { 58557 },	-- Assistance from Sinfall
				["provider"] = { "n", 161540 },	-- Kleia
				["coord"] = { 60.2, 60.8, REVENDRETH },
			}),
			q(58793, {	-- Faith Through the Darkness
				["sourceQuests"] = { 58792 },	-- Where a Soul Belongs
				["provider"] = { "n", 162542 },	-- Kleia
				["coord"] = { 43.6, 51.6, 1671 },	-- Oribos
			}),
			q(57117, {	-- Fallen to Their Vices
				["sourceQuests"] = {
					57115,	-- Sacred Scrolls of Humility
					57116,	-- Succumbing to Pride
					57120,	-- Compassion, Blade of Humility
				},
				["provider"] = { "n", 156327 },	-- Voitha
				["coord"] = { 66.0, 47.0, BASTION },
				["g"] = {
					i(181291),	-- Selfless Sigil of the Archon
				},
			}),
			q(61769, {	-- Fight and Flight
				["sourceQuests"] = { 61768 },	-- Stronger Together
				["provider"] = { "n", 171483 },	-- Baroness Draka
				["coord"] = { 36.3, 36.6, MALDRAXXUS },
			}),
			q(58948, {	-- Food on the Table
				["sourceQuests"] = { 58791 },	-- A Day in the Life
				["provider"] = { "n", 162953 },	-- Sarah Howell
				["coord"] = { 21.6, 42.0, REDRIDGE_MOUNTAINS },
				["g"] = {
					i(174935),	-- Rabbit Meat (QI!)
				},
			}),
			q(58797, {	-- Forged by Trial
				["sourceQuests"] = { 58796 },	-- The Forsworn Onslaught
				["provider"] = { "n", 163650 },	-- Kleia
				["coord"] = { 51.6, 47.7, ARCHONS_RISE },
				["lockCriteria"] = { 1, "questID", 65168 },	-- My Wings Are Yours
				["g"] = {
					follower(1260),	-- Kleia
				},
			}),
			q(58183, {	-- Friend to the Forgelite
				["sourceQuests"] = { 58182 },	-- Dismantling the Opposition
				["provider"] = { "n", 160280 },	-- Mikanikos
				["coord"] = { 50.1, 20.5, BASTION },
			}),
			q(62832, {	-- Friends in Dark Places
				["sourceQuests"] = { 57905 },	-- A Unique Opportunity
				["provider"] = { "n", 160212 },	-- Soulguide Daelia
				["coord"] = { 59.5, 34.2, SANCTUM_OF_BINDING },
			}),
			q(58816, {	-- Getting Backstage
				["sourceQuests"] = {
					58856,	-- Who Are You Fooling?
					58832,	-- Trinkle Trinkle Little Twerp
				},
				["provider"] = { "n", 162679 },	-- Willowblossom
				["g"] = {
					i(174845),	-- Wreath of Night's Veil Flowers (QI!)
				},
			}),
			q(58938, {	-- Gorm Ruin Everything
				["sourceQuests"] = { 58905 },	-- Picking Up Pelagos
				["providers"] = {
					{ "n", 162392 },	-- Willowblossom
					{ "n", 163060 },	-- Willowblossom
				},
				["coord"] = { 50.5, 68.9, ARDENWEALD },
			}),
			q(58560, {	-- Gothic Fashion
				["sourceQuests"] = { 58557 },	-- Assistance from Sinfall
				["provider"] = { "n", 165011 },	-- Pelagos
				["coord"] = { 50.6, 52.1, REVENDRETH },
				["g"] = {
					i(174336),	-- Crimson Cravat (QI!)
					i(176052),	-- Iron Skull Belt Buckle (QI!)
					i(176055),	-- Lace-Up Bracers (QI!)
					i(176053),	-- Pleated Cape (QI!)
					i(176054),	-- Thigh High Boots (QI!)
				},
			}),
			q(61779, {	-- Grave Intent
				["sourceQuests"] = { 61776 },	-- Trouble on the Western Front
				["provider"] = { "n", 167173 },	-- Baroness Vashj
				["coord"] = { 28.6, 37.6, MALDRAXXUS },
			}),
			q(61135, {	-- Heart of the Crest
				["sourceQuests"] = { 58997 },	-- A Bittersweet Prize
				["provider"] = { "n", 160037 },	-- Polemarch Adrestes
				["coord"] = { 55.6, 42.0, ARCHONS_RISE },
				["_drop"] = { "g" },	-- fix Grubby showing up as a reward when it is not a reward for this quest
				["g"] = {
					i(180778),	-- Vessel of Ardenweald (QI!)
				},
			}),
			q(57124, {	-- Her Will, Inflicted
				["sourceQuests"] = {
					57122,	-- A Step Too Far
					57123,	-- Kyrian No More
				},
				["provider"] = { "n", 170375 },	-- Kleia
				["coord"] = { 33.5, 56.4, THE_MAW },
				["g"] = {
					i(177051),	-- Selfless Bearer's Chest
					i(174290),	-- Selfless Collector's Chestplate
					i(179940),	-- Selfless Forgelite's Vest
					i(178154),	-- Selfless Watcher's Chestplate
				},
			}),
			q(58995, {	-- I Dreamed A Dream
				["sourceQuests"] = { 58857 },	-- Seeds Away!
				["provider"] = { "n", 163328 },	-- Pelagos
				["coord"] = { 45.2, 65.4, ARDENWEALD },
				["g"] = {
					i(175153),	-- Vessel of Ardenweald (QI!)
				},
			}),
			q(62792, {	-- Into the Reservoir
				["sourceQuests"] = { 62791 },	-- Our Most Precious Resource
				["provider"] = { "n", 167745 },	-- Haephus
				["coord"] = { 42.6, 53.1, ARCHONS_RISE },
			}),
			q(58179, {	-- Instruments of Perfection
				["sourceQuests"] = { 58175 },	-- The Eternal Forge
				["provider"] = { "n", 160648 },	-- Sika
				["coord"] = { 50.1, 20.6, BASTION },
				["g"] = {
					i(173910),	-- Gracepetal Incense Burner (QI!)
					i(173882),	-- Soulsteel Clamps (QI!)
					i(173909),	-- Sparkling Driftglobe Core (QI!)
				},
			}),
			q(62793, {	-- It's All Coming Together
				["sourceQuests"] = { 62796 },	-- Return to Adrestes
				["provider"] = { "n", 160037 },	-- Polemarch Adrestes
				["coord"] = { 55.6, 42.0, ARCHONS_RISE },
				["_drop"] = { "g" },	-- make items stop showing up that are not actually rewarded by this quest
			}),
			q(61771, {	-- Justice from Above
				["sourceQuests"] = { 61769 },	-- Fight and Flight
				["provider"] = { "n", 166333 },	-- Xandria
				["coord"] = { 35.5, 26.4, MALDRAXXUS },
			}),
			q(57123, {	-- Kyrian No More
				["sourceQuests"] = { 57121 },	-- The Power of the Maw
				["provider"] = { "n", 170375 },	-- Kleia
				["coord"] = { 33.8, 55.7, THE_MAW },
			}),
			q(63345, {	-- Kyrian Tactician
				["description"] = "Requires Renown 22.",
				["provider"] = { "n", 176100 },	-- Iona Skyblade
				["coord"] = { 42.7, 70.3, ARCHONS_RISE },
				["timeline"] = { ADDED_9_0_2_LAUNCH, REMOVED_9_1_0 },
			}),
			q(64086, {	-- Kyrian Tactician #2
				["description"] = "Requires Renown 59.",
				["provider"] = { "n", 176100 },	-- Iona Skyblade
				["coord"] = { 42.7, 70.3, ARCHONS_RISE },
			}),
			q(63344, {	-- Kyrian Veteran
				["description"] = "Requires Renown 7.",
				["provider"] = { "n", 176100 },	-- Iona Skyblade
				["coord"] = { 42.7, 70.3, ARCHONS_RISE },
				["timeline"] = { ADDED_9_0_2_LAUNCH, REMOVED_9_1_0 },
			}),
			q(64323, {	-- Kyrian Veteran #2
				["description"] = "Requires Renown 43.",
				["provider"] = { "n", 176100 },	-- Iona Skyblade
				["coord"] = { 42.7, 70.3, ARCHONS_RISE },
			}),
			q(58847, {	-- Kyrestia's Grace
				["sourceQuests"] = { 58846 },	-- The Greater Good
				["provider"] = { "n", 166693 },	-- Polemarch Adrestes
				["coord"] = { 67.4, 15.2, BASTION },
				["_drop"] = { "g" },	-- make a bunch of vendor items stop showing up that are not actually rewarded by this quest
				["g"] = LFR_WEAPON_GROUP,
			}),
			q(58951, {	-- Lakeshire's Last Stand
				["sourceQuests"] = { 58950 },	-- Lumber for Lakeshire
				["provider"] = { "n", 163111 },	-- Magistrate Solomon
				["coord"] = { 28.9, 41.1, REDRIDGE_MOUNTAINS },
			}),
			q(58565, {	-- Land of Light
				["sourceQuests"] = { 58564 },	-- Sins of the Past
				["provider"] = { "n", 161544 },	-- The Curator
				["coord"] = { 58.1, 27.5, REVENDRETH },
			}),
			q(58568, {	-- Light Respite
				["sourceQuests"] = { 58565 },	-- Land of Light
				["provider"] = { "n", 161540 },	-- Kleia
				["coord"] = { 31.9, 47.7, REVENDRETH },
				["g"] = {
					i(174497),	-- Brushberry (QI!)
				},
			}),
			q(58950, {	-- Lumber for Lakeshire
				["sourceQuests"] = {
					58948,	-- Food on the Table
					58949,	-- Millie's Garden
				},
				["provider"] = { "n", 162953 },	-- Sarah Howell
				["coord"] = { 21.6, 42.0, REDRIDGE_MOUNTAINS },
				["g"] = {
					i(174997),	-- Bundle of Lumber (QI!)
				},
			}),
			q(57207, {	-- Lysonia's Plan
				["sourceQuests"] = {
					57118,	-- Distorted by the Maw
					57117,	-- Fallen to Their Vices
				},
				["provider"] = { "n", 156361 },	-- Kleia
				["coord"] = { 68.3, 41.6, BASTION },
			}),
			q(57113, {	-- Lysonia's Trail
				["sourceQuests"] = { 61697 },	-- A New Age
				["description"] = "Requires Renown 20.",
				["provider"] = { "n", 160037 },	-- Polemarch Adrestes
				["coord"] = { 55.6, 42.0, ARCHONS_RISE },
			}),
			q(58775, {	-- Meet the Queen
				["sourceQuests"] = { 58571 },	-- The Seal of Contrition
				["description"] = "Requires Renown 17.",
				["provider"] = { "n", 160037 },	-- Polemarch Adrestes
				["coord"] = { 55.6, 42.0, ARCHONS_RISE },
			}),
			q(58949, {	-- Millie's Garden
				["sourceQuests"] = { 58791 },	-- A Day in the Life
				["provider"] = { "n", 162953 },	-- Sarah Howell
				["coord"] = { 21.6, 42.0, REDRIDGE_MOUNTAINS },
			}),
			q(58789, {	-- Misguiding Mentors
				["sourceQuests"] = { 58787 },	-- Trial of Ascension
				["provider"] = { "n", 162544 },	-- Achillon
				["coord"] = { 33.2, 26.2, BASTION },
				["g"] = {
					i(177058),	-- Selfless Bearer's Cloak
					i(174297),	-- Selfless Collector's Greatcloak
					i(179948),	-- Selfless Forgelite's Drape
					i(178161),	-- Selfless Watcher's Cloak
				},
			}),
			q(65168, {	-- My Wings Are Yours
				["sourceQuests"] = { 62795 },	-- A Conduit for Good
				["provider"] = { "n", 183278 },	-- Kleia
				["coord"] = { 58.7, 36.2, SANCTUM_OF_BINDING },
				["timeline"] = { ADDED_9_1_5 },
				["lockCriteria"] = { 1, "questID", 58797 },	-- Forged by Trial
				["g"] = {
					follower(1260),	-- Kleia
				},
			}),
			q(62237, {	-- Mysterious Soul Mirror
				["sourceQuests"] = { 57904 },	-- Our Eternal Charge
				["provider"] = { "i", 183054 },	-- Mysterious Soul Mirror
			}),
			q(65147, {	-- No Ordinary Steward
				["sourceQuests"] = { 62795 },	-- A Conduit for Good
				["provider"] = { "n", 183192 },	-- Mikanikos
				["coord"] = { 59.5, 37.4, SANCTUM_OF_BINDING },
				["timeline"] = { ADDED_9_1_5 },
				["lockCriteria"] = { 1, "questID", 59919 },	-- An Earned Bond
				["g"] = {
					follower(1258),	-- Mikanikos
				},
			}),
			q(62789, {	-- Of Great Renown
				["sourceQuests"] = { 57895 },	-- Elysian Hold
				["provider"] = { "n", 160037 },	-- Polemarch Adrestes
				["coord"] = { 55.5, 42.1, ARCHONS_RISE },
			}),
			q(57904, {	-- Our Eternal Charge
				["sourceQuests"] = { 62795 },	-- A Conduit for Good
				["provider"] = { "n", 160212 },	-- Soulguide Daelia
				["coord"] = { 59.5, 34.2, SANCTUM_OF_BINDING },
			}),
			q(62791, {	-- Our Most Precious Resource
				["description"] = "Becomes available after you complete your first Calling quest.",
				["provider"] = { "n", 160387 },	-- Hermestes
				["coord"] = { 40.9, 40.9, ARCHONS_RISE },
			}),
			q(62557, {	-- Our Realm Reclaimed
				["sourceQuests"] = { 59919 },	-- An Earned Bond
				["provider"] = { "n", 160037 },	-- Polemarch Adrestes
				["coord"] = { 55.6, 42.0, ARCHONS_RISE },
			}),
			q(58558, {	-- Overhead Intelligence
				["sourceQuests"] = { 58557 },	-- Assistance from Sinfall
				["provider"] = { "n", 161544 },	-- The Curator
				["coord"] = { 60.3, 60.8, REVENDRETH },
				["g"] = {
					i(176083),	-- A Personal Affront (QI!)
					i(176082),	-- Inane Drabblings (QI!)
					i(176084),	-- List of Demands (QI!)
					i(174333),	-- Rumors of Favor (QI!)
				},
			}),
			q(58570, {	-- Parting Words
				["sourceQuests"] = { 58569 },	-- The Folly of Envy
				["provider"] = { "n", 161540 },	-- Kleia
				["coord"] = { 39.9, 59.0, REVENDRETH },
			}),
			q(58180, {	-- Phaestus, Genesis of Aeons
				["sourceQuests"] = {
					58179,	-- Instruments of Perfection
					58177,	-- Refining Ego
					58176,	-- Stewards of a Feather
				},
				["provider"] = { "n", 160280 },	-- Mikanikos
				["coord"] = { 50.1, 20.5, BASTION },
				["g"] = {
					i(174061),	-- Phaestus, Genesis of Aeons (QI!)
					i(177057),	-- Selfless Bearer's Wrists
					i(174296),	-- Selfless Collector's Wristguards
					i(179947),	-- Selfless Forgelite's Wristwraps
					i(178160),	-- Selfless Watcher's Wristwraps
				},
			}),
			q(58905, {	-- Picking Up Pelagos
				["sourceQuests"] = { 58816 },	-- Getting Backstage
				["provider"] = { "n", 162679 },	-- Willowblossom
				-- no coords, is your 'pet'
			}),
			q(61780, {	-- Power of the Chosen
				["sourceQuests"] = {
					61778,	-- Aerial Advantage
					61777,	-- Charging The Blade
					61779,	-- Grave Intent
				},
				["provider"] = { "n", 166211 },	-- Alexandros Mograine
				["coord"] = { 28.7, 38.1, MALDRAXXUS },
			}),
			q(61782, {	-- Pursuit of Justice
				["sourceQuests"] = { 61781 },	-- The End is Now
				["provider"] = { "n", 172002 },	-- Xandria
				["coord"] = { 31.7, 30.3, MALDRAXXUS },
				["g"] = {
					i(177055),	-- Selfless Bearer's Shoulders
					i(174294),	-- Selfless Collector's Spaulders
					i(179945),	-- Selfless Forgelite's Spaulders
					i(178158),	-- Selfless Watcher's Shoulders
				},
			}),
			q(58177, {	-- Refining Ego
				["sourceQuests"] = { 58175 },	-- The Eternal Forge
				["provider"] = { "n", 160280 },	-- Mikanikos
				["coord"] = { 50.1, 20.5, BASTION },
				["g"] = {
					i(173880),	-- Purified Metal (QI!)
					i(173879),	-- Tainted Centurion Component (QI!)
				},
			}),
			q(61982, {	-- Replenish the Reservoir
				["sourceQuests"] = { 57904 },	-- Our Eternal Charge
				["provider"] = { "n", 167745 },	-- Haephus
				["isWeekly"] = true,
				["coord"] = { 42.6, 53.1, ARCHONS_RISE },
			}),
			q(61332, {	-- Return Lost Souls (5 Souls)
				["provider"] = { "n", 160212 },	-- Soulguide Daelia
				["isWeekly"] = true,
				["coord"] = { 59.5, 34.2, SANCTUM_OF_BINDING },
				["timeline"] = { ADDED_9_0_2_LAUNCH, REMOVED_9_1_5 },
			}),
			q(62861, {	-- Return Lost Souls (10 Souls)
				["description"] = "Requires Renown 15.",
				["provider"] = { "n", 160212 },	-- Soulguide Daelia
				["isWeekly"] = true,
				["coord"] = { 59.5, 34.2, SANCTUM_OF_BINDING },
				["timeline"] = { ADDED_9_0_2_LAUNCH, REMOVED_9_1_5 },
			}),
			q(62862, {	-- Return Lost Souls (15 Souls)
				["description"] = "Requires Renown 24.",
				["provider"] = { "n", 160212 },	-- Soulguide Daelia
				["isWeekly"] = true,
				["coord"] = { 59.5, 34.2, SANCTUM_OF_BINDING },
				["timeline"] = { ADDED_9_0_2_LAUNCH, REMOVED_9_1_5 },
			}),
			q(62863, {	-- Return Lost Souls (20 Souls)
				["description"] = "Requires Renown 32.",
				["provider"] = { "n", 160212 },	-- Soulguide Daelia
				["isWeekly"] = true,
				["coord"] = { 59.5, 34.2, SANCTUM_OF_BINDING },
			}),
			q(65103, {	-- Return More Lost Souls
				["sourceQuests"] = { 62863 },	-- Return Lost Souls
				["provider"] = { "n", 160212 },	-- Soulguide Daelia
				["repeatable"] = true,
				["coord"] = { 59.5, 34.2, SANCTUM_OF_BINDING },
			}),
			q(62796, {	-- Return to Adrestes
				["sourceQuests"] = { 62837 },	-- Hopeful News
				["provider"] = { "n", 164079 },	-- Highlord Bolvar Fordragon
				["coord"] = { 39.9, 68.6, ORIBOS },
			}),
			q(61877, {	-- Return to the Hold
				["sourceQuests"] = { 61876 },	-- Take Heart
				["provider"] = { "n", 173193 },	-- Xandria
				["coord"] = { 31.0, 29.1, MALDRAXXUS },
			}),
			q(57115, {	-- Sacred Scrolls of Humility
				["sourceQuests"] = { 57114 },	-- Aerial Reconnaissance
				["provider"] = { "n", 156327 },	-- Voitha
				["coord"] = { 66.0, 47.0, BASTION },
				["g"] = {
					i(170550),	-- Sacred Scroll (QI!)
				},
			}),
			q(58857, {	-- Seeds Away!
				["sourceQuests"] = { 58939 },	-- The Blue Seed
				["provider"] = { "n", 162392 },	-- Willowblossom
				["coord"] = { 50.8, 77.4, ARDENWEALD },
			}),
			q(58561, {	-- Shards of the Countess
				["sourceQuests"] = {
					58559,	-- Eyes of the Master
					58560,	-- Gothic Fashion
					58558,	-- Overhead Intelligence
				},
				["provider"] = { "n", 161540 },	-- Kleia
				["coord"] = { 56.3, 41.4, REVENDRETH },
				["g"] = {
					i(174359),	-- Shard of the Countess (QI!)
					i(174374),	-- Shard of the Countess (QI!)
					i(174375),	-- Shard of the Countess (QI!)
				},
			}),
			q(58564, {	-- Sins of the Past
				["sourceQuests"] = { 58563 },	-- Through Glass
				["provider"] = { "n", 161544 },	-- The Curator
				["coord"] = { 77.8, 39.6, REVENDRETH },
				["g"] = {
					i(174454),	-- The Countess's Sinstone (QI!)
				},
			}),
			q(58567, {	-- Skulking in the Darkness
				["sourceQuests"] = { 58565 },	-- Land of Light
				["provider"] = { "n", 161540 },	-- Kleia
				["coord"] = { 31.9, 47.7, REVENDRETH },
			}),
			q(62238, {	-- Soul Led Astray
				["sourceQuests"] = { 62237 },    -- Mysterious Soul Mirror
				["provider"] = { "n", 173771 },    -- Thenios
				["coord"] = { 40.4, 19.9, BASTION },
			}),
			q(57898, {	-- Soul Meets Body
				["sourceQuests"] = { 57897 },	-- Dangerous to Go Alone
				["provider"] = { "n", 160212 },	-- Soulguide Daelia
				["coord"] = { 59.5, 34.2, SANCTUM_OF_BINDING },
			}),
			q(58176, {	-- Stewards of a Feather
				["sourceQuests"] = { 58175 },	-- The Eternal Forge
				["provider"] = { "n", 160648 },	-- Sika
				["coord"] = { 50.1, 20.6, BASTION },
			}),
			q(60504, {	-- Strengthen the Bond
				["sourceQuests"] = { 57898 },	-- Soul Meets Body
				["provider"] = { "n", 160212 },	-- Soulguide Daelia
				["coord"] = { 59.5, 34.2, SANCTUM_OF_BINDING },
				["g"] = appendGroups(CONDUIT_GROUP, {
					i(181974),	-- Courageous Ascension
					i(182321),	-- Enfeebled Mark
					i(182345),	-- Elysian Dirge
					i(181600),	-- Ire of the Ascended
					i(182295),	-- Proliferation
					i(183471),	-- Deep Allegiance
					i(182440),	-- Piercing Verdict
					i(182646),	-- Repeat Decree
					i(183492),	-- Reverberation
					i(182778),	-- Ringing Clarity
					i(182960),	-- Soul Tithe
					i(181759),	-- Strike with Clarity
				}),
			}),
			q(61768, {	-- Stronger Together
				["sourceQuests"] = { 61767 },	-- A Perilous Journey
				["provider"] = { "n", 173222 },	-- Xandria
				["coord"] = { 37.7, 29.4, MALDRAXXUS },
			}),
			q(57116, {	-- Succumbing to Pride
				["sourceQuests"] = { 57114 },	-- Aerial Reconnaissance
				["provider"] = { "n", 156361 },	-- Kleia
				["coord"] = { 65.8, 46.9, BASTION },
			}),
			q(61876, {	-- Take Heart
				["sourceQuests"] = { 61782 },	-- Pursuit of Justice
				["provider"] = { "n", 173193 },	-- Xandria
				["coord"] = { 31.0, 29.1, MALDRAXXUS },
				["g"] = {
					i(182334),	-- Fleshshaper's Heart (QI!)
				},
			}),
			q(58939, {	-- The Blue Seed
				["sourceQuests"] = {
					58938,	-- Gorm Ruin Everything
					58937,	-- Evil Grubbies
				},
				["provider"] = { "n", 165110 },	-- Pelagos
				-- no coords, is your 'pet'
				["g"] = {
					i(176446),	-- Ripened Anima Seed (QI!)
				},
			}),
			q(61770, {	-- The Butchers of Bastion
				["sourceQuests"] = { 61769 },	-- Fight and Flight
				["provider"] = { "n", 168743 },	-- Apolon
				["coord"] = { 35.3, 25.9, MALDRAXXUS },
			}),
			q(61781, {	-- The End is Now
				["sourceQuests"] = { 61780 },	-- Power of the Chosen
				["provider"] = { "n", 166211 },	-- Alexandros Mograine
				["coord"] = { 28.8, 38.1, MALDRAXXUS },
			}),
			q(58175, {	-- The Eternal Forge
				-- Requires Kyrian, Renown 8
				["sourceQuests"] = { 58798 },	-- The Spires of Ascension
				["provider"] = { "n", 160037 },	-- Polemarch Adrestes
				["coord"] = { 55.5, 42.0, ARCHONS_RISE },
			}),
			q(58569, {	-- The Folly of Envy
				["sourceQuests"] = {
					58566,	-- Actions Speak Louder than Words
					58568,	-- Light Respite
					58567,	-- Skulking in the Darkness
				},
				["provider"] = { "n", 161553 },	-- Mindscorched Alwin
				["coord"] = { 39.9, 59.0, REVENDRETH },
				["g"] = {
					i(174498),	-- Seal of Contrition (QI!)
				},
			}),
			q(58796, {	-- The Forsworn Onslaught
				["sourceQuests"] = { 58795 },	-- Ascended
				["provider"] = { "n", 163650 },	-- Kleia
				["coord"] = { 51.6, 47.7, ARCHONS_RISE },
			}),
			q(58846, {	-- The Greater Good
				["sourceQuests"] = { 58844 },	-- Before the Dawn
				["provider"] = { "n", 164473 },	-- Polemarch Adrestes
				["coord"] = { 31.4, 23.4, BASTION },
			}),
			q(63029, {	-- The Highlord Calls
				["sourceQuests"] = { 57904 },	-- Our Eternal Charge
				["provider"] = { "n", 160037 },	-- Polemarch Adrestes
				["coord"] = { 55.6, 42.0, ARCHONS_RISE },
			}),
			q(62790, {	-- The Path Provides
				["sourceQuests"] = { 62789 },	-- Of Great Renown
				["provider"] = { "n", 176100 },	-- Iona Skyblade
				["coord"] = { 42.7, 69.8, ARCHONS_RISE },
			}),
			q(57121, {	-- The Power of the Maw
				["sourceQuests"] = { 57207 },	-- Lysonia's Plan
				["provider"] = { "n", 156474 },	-- Chyrus
				["coord"] = { 69.0, 40.7, BASTION },
			}),
			q(58571, {	-- The Seal of Contrition
				["sourceQuests"] = { 58570 },	-- Parting Words
				["provider"] = { "n", 162149 },	-- Mikanikos
				["coord"] = { 45.7, 56.5, ARCHONS_RISE },
				["g"] = {
					i(174498),	-- Seal of Contrition (QI!)
					i(177050),	-- Selfless Bearer's Head
					i(174289),	-- Selfless Collector's GreatHelm
					i(179943),	-- Selfless Forgelite's Helm
					i(178153),	-- Selfless Watcher's Helm
				}
			}),
			q(58798, {	-- The Spires of Ascension
				["sourceQuests"] = { 58797 },	-- Forged by Trial
				["providers"] = {
					{ "n", 163650 },	-- Kleia
					{ "n", 160390 },	-- Kleia
				},
				["coords"] = {
					{ 38.6, 43.3, ARCHONS_RISE },
					{ 59.9, 36.2, SANCTUM_OF_BINDING },
				},
				["_drop"] = { "g" },	-- drop anima trash
			}),
			q(58563, {	-- Through Glass
				["sourceQuests"] = {
					58561,	-- Shards of the Countess
					58562,	-- Collecting Dust
				},
				["provider"] = { "n", 161544 },	-- The Curator
				["coord"] = { 55.2, 34.7, REVENDRETH },
				["g"] = {
					i(174382),	-- Death Lotus Powder (QI!)
					i(174454),	-- The Countess's Sinstone (QI!)
					i(181286),	-- Halo of the Selfless
				},
			}),
			q(57125, {	-- Time to Reflect
				["sourceQuests"] = { 57124 },	-- Her Will, Inflicted
				["provider"] = { "n", 169850 },	-- Uther
				["coord"] = { 25.6, 65.1, THE_MAW },
			}),
			q(58790, {	-- To Cross the Veil
				["sourceQuests"] = {
					58788,	-- Censers of Guidance
					58789,	-- Misguiding Mentors
				},
				["provider"] = { "n", 162542 },	-- Kleia
				["coord"] = { 32.1, 21.2, BASTION },
			}),
			q(58787, {	-- Trial of Ascension
				["description"] = "Requires Renown 5.",
				["provider"] = { "n", 160037 },	-- Polemarch Adrestes
				["coord"] = { 55.6, 42.0, ARCHONS_RISE },
			}),
			q(58832, {	-- Trinkle Trinkle Little Twerp
				["sourceQuests"] = { 58775 },	-- Meet the Queen
				["description"] = "Drops from Sicklethorns while doing quest 'Who Are You Fooling?'",
				["provider"] = { "i", 175982 },	-- Sicklethorn To-Do List
				["coord"] = { 40.4, 54.7, ARDENWEALD },
				["crs"] = {
					161878, -- Sicklethorn Slicer
					163363,	-- Sicklethorn Zapper
				},
				["g"] = {
					i(175982),	-- Sicklethorn To-Do List (QI!)
				},
			}),
			q(61776, {	-- Trouble on the Western Front
				["sourceQuests"] = {
					61775,	-- An Early End
					61774,	-- Burn Before Reading
					61773,	-- Descended
				},
				["provider"] = { "n", 168743 },	-- Apolon
				["coord"] = { 35.4, 26.4, MALDRAXXUS },
			}),
			q(58792, {	-- Where a Soul Belongs
				["sourceQuests"] = { 58951 },	-- Lakeshire's Last Stand
				["provider"] = { "n", 162558 },	-- Alithea
				["coord"] = { 32.5, 39.7, REDRIDGE_MOUNTAINS },
				["g"] = {
					i(175011),	-- Vesper of Veilflight (QI!)
				},
			}),
			q(58856, {	-- Who Are You Fooling?
				["sourceQuests"] = { 58775 },	-- Meet the Queen
				["provider"] = { "n", 162392 },	-- Willowblossom
				["coord"] = { 44.0, 51.8, ARDENWEALD },
				["g"] = {
					i(174843),	-- Sicklethorn Trickster Powder (QI!)
				},
			}),
		}),
	}),
})));

for _,g in ipairs({CONDUIT_GROUP,LFR_WEAPON_GROUP}) do
	for	_,t in ipairs(g) do
		t.customCollect = nil;
	end
end

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.SL, bubbleDown({ ["timeline"] = { ADDED_9_0_2_LAUNCH } }, {
	n(KYRIAN, {
		n(QUESTS, {
			q(59727),	-- Triggered when adding purple petals to Moonberry's soap during quest 58816 'Getting Backstage'
			q(59728),	-- Triggered when adding red petals to Moonberry's soap during quest 58816 'Getting Backstage'
			q(59729),	-- Triggered when adding green petals to Moonberry's soap during quest 58816 'Getting Backstage'
			q(63216),	-- triggers when turning in #57897, "Dangerous to Go Alone"
			q(62755),	-- triggers when turning in #57904, "Our Eternal Charge"
			q(61589),	-- triggered when turning in #57903, "Power in the Sky," possibly connected to channeling anima to Purity's Pinnacle
			q(63451),	-- triggers when turning in "Return Lost Souls" (spellID 345276 & 345277 & 345278 & 348836)
		}),
	}),
})));