---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(SHADOWLANDS, bubbleDown({ ["timeline"] = { ADDED_9_0_2_LAUNCH } }, {
	m(BASTION, {
		n(QUESTS, {
			header(HEADERS.Achievement, 14281, {	-- The Path to Ascension
				------ Chapter 1 ------
				q(59774, {	-- Welcome to Eternity
					["sourceQuests"] = { 59773 },	-- Seek the Ascended
					["provider"] = { "n", 166227 },	-- Kleia
					["coord"] = { 37.3, 76.4, BASTION },
				}),
				q(57102, {	-- Pardon Our Dust
					["sourceQuests"] = { 59774 },	-- Welcome to Eternity
					["provider"] = { "n", 165107 },	-- Kleia
					["coord"] = { 41.8, 78.1, BASTION },
				}),
				q(57584, {	-- A Fate Most Noble
					["sourceQuests"] = { 57102 },	-- Pardon Our Dust
					["provider"] = { "n", 158281 },	-- Greeter Mnemis
					["coord"] = { 41.9, 78.0, BASTION },
				}),
				q(60735, {	-- Trouble in Paradise
					["sourceQuests"] = { 57584 },	-- A Fate Most Noble
					["provider"] = { "n", 165107 },	-- Kleia
					["coord"] = { 41.8, 78.1, BASTION },
				}),
				q(57261, {	-- Walk the Path, Aspirant
					["sourceQuests"] = { 60735 },	-- Trouble in Paradise
					["provider"] = { "n", 166306 },	-- Kalisthene
					["coord"] = { 42.2, 78.1, BASTION },
				}),
				q(57676, {	-- The Things That Haunt Us
					["sourceQuests"] = { 57261 },	-- Walk the Path, Aspirant
					["provider"] = { "n", 165107 },	-- Kleia
					["coord"] = { 48.3, 72.7, BASTION },
				}),
				q(57677, {	-- A Soulbind In Need
					["sourceQuests"] = { 57261 },	-- Walk the Path, Aspirant
					["provider"] = { "n", 165107 },	-- Kleia
					["coord"] = { 48.3, 72.7, BASTION },
					["groups"] = {
						i(175626),	-- Courageous Aspirant's Breeches
						i(175625),	-- Humble Aspirant's Leggings
						i(175623),	-- Judicious Aspirant's Legguards
						i(175624),	-- Pure Aspirant's Leggings
					},
				}),
				------ Chapter 2 ------
				q(57709, {	-- The Aspirant's Crucible
					["sourceQuests"] = {
						57677,	-- A Soulbind In Need
						57676,	-- The Things That Haunt Us
					},
					["provider"] = { "n", 165107 },	-- Kleia
					["coord"] = { 48.3, 72.7, BASTION },
				}),
				q(57710, {	-- A Life of Service
					["sourceQuests"] = { 57709 },	-- The Aspirant's Crucible
					["provider"] = { "n", 158807 },	-- Forgelite Sophone
					["coord"] = { 56.1, 81.7, BASTION },
					["groups"] = {
						i(173797),	-- Amulet of Heroic Accomplishment
						i(173344),	-- Band of Chronicled Deeds
					},
				}),
				q(57711, {	-- A Forge Gone Cold
					["sourceQuests"] = { 57710 },	-- A Life of Service
					["provider"] = { "n", 158807 },	-- Forgelite Sophone
					["coord"] = { 56.1, 81.7, BASTION },
				}),
				q(57265, {	-- The Cycle of Anima: Drought Conditions
					["sourceQuests"] = { 57711 },	-- A Forge Gone Cold
					["provider"] = { "n", 158807 },	-- Forgelite Sophone
					["coord"] = { 52.5, 82.7, BASTION },
					["groups"] = {
						i(177954),	-- Condensed Anima Mote (QI!)
					},
				}),
				q(57263, {	-- The Cycle of Anima: Etherwyrms
					["sourceQuests"] = { 57711 },	-- A Forge Gone Cold
					["provider"] = { "n", 166577 },	-- Sika
					["coord"] = { 52.7, 82.5, BASTION },
					["groups"] = {
						i(172516),	-- Glowing Viscera (QI!)
					},
				}),
				q(57267, {	-- The Cycle of Anima: Flower Power
					["sourceQuests"] = { 57711 },	-- A Forge Gone Cold
					["provider"] = { "n", 166577 },	-- Sika
					["coord"] = { 52.7, 82.5, BASTION },
					["groups"] = {
						i(172518),	-- Adrima's Lily (QI!)
					},
				}),
				q(59920, {	-- Light the Forge, Forgelite
					["sourceQuests"] = {
						57263,	-- The Cycle of Anima: Etherwyrms
						57267,	-- The Cycle of Anima: Flower Power
						57265,	-- The Cycle of Anima: Drought Conditions
					},
					["provider"] = { "n", 158807 },	-- Forgelite Sophone
					["coord"] = { 52.5, 82.7, BASTION },
				}),
				q(57713, {	-- The Work of One's Hands
					["sourceQuests"] = { 59920 },	-- Light the Forge, Forgelite
					["provider"] = { "n", 158807 },	-- Forgelite Sophone
					["coord"] = { 52.9, 83.4, BASTION },
					["groups"] = {
						i(173318),	-- Waylight Breastplate
						i(173319),	-- Waylight Chainmail
						i(173320),	-- Waylight Tunic
						i(173317),	-- Waylight Vestment
					},
				}),
				q(57908, {	-- The True Crucible Awaits
					["sourceQuests"] = { 57713 },	-- The Work of One's Hands
					["provider"] = { "n", 158807 },	-- Forgelite Sophone
					["coord"] = { 52.9, 83.4, BASTION },
				}),
				q(57909, {	-- Assessing Your Stamina
					["sourceQuests"] = { 57908 },	-- The True Crucible Awaits
					["provider"] = { "n", 158861 },	-- Pelagos
					["coord"] = { 51.7, 80.9, BASTION },
				}),
				q(57288, {	-- Assessing Your Strength
					["sourceQuests"] = { 57908 },	-- The True Crucible Awaits
					["provider"] = { "n", 158862 },	-- Kleia
					["coord"] = { 51.7, 81.0, BASTION },
				}),
				q(57714, {	-- Assessing Your Spirit
					["sourceQuests"] = {
						57909,	-- Assessing Your Stamina
						57288,	-- Assessing Your Strength
					},
					["provider"] = { "n", 158862 },	-- Kleia
					["coord"] = { 81.6, 80.9, BASTION },
					["groups"] = {
						i(173326),	-- Sparring Trainer's Gauntlets
						i(173328),	-- Sparring Trainer's Gloves
						i(173325),	-- Sparring Trainer's Grips
						i(173327),	-- Sparring Trainer's Handwraps
					},
				}),
				q(57291, {	-- The Chamber of First Reflection
					["sourceQuests"] = { 57714 },	-- Assessing Your Spirit
					["provider"] = { "n", 158807 },	-- Forgelite Sophone
					["coord"] = { 51.6, 80.9, BASTION },
				}),
				q(57266, {	-- The First Cleansing
					["sourceQuests"] = { 57291 },	-- The Chamber of First Reflectiont
					["provider"] = { "n", 159583 },	-- Kleia
					["coord"] = { 57.2, 86.5, BASTION },
					["groups"] = {
						i(173324),	-- Boots of Inner Calm
						i(173323),	-- Contemplative Striders
						i(173321),	-- Footguards of Self-Reflection
						i(173322),	-- Sandals of Soul's Clarity
					},
				}),
				q(57715, {	-- The Archon's Answer (Death Knight)
					["sourceQuests"] = { 57266 },	-- The First Cleansing
					["provider"] = { "n", 158862 },	-- Kleia
					["coord"] = { 55.6, 86.4, BASTION },
					["classes"] = { DEATHKNIGHT },
				}),
				q(60217, {	-- The Archon's Answer (Demon Hunter)
					["sourceQuests"] = { 57266 },	-- The First Cleansing
					["provider"] = { "n", 158862 },	-- Kleia
					["coord"] = { 55.6, 86.4, BASTION },
					["classes"] = { DEMONHUNTER },
				}),
				q(60218, {	-- The Archon's Answer (Druid)
					["sourceQuests"] = { 57266 },	-- The First Cleansing
					["provider"] = { "n", 158862 },	-- Kleia
					["coord"] = { 55.6, 86.4, BASTION },
					["classes"] = { DRUID },
				}),
				q(60219, {	-- The Archon's Answer (Hunter)
					["sourceQuests"] = { 57266 },	-- The First Cleansing
					["provider"] = { "n", 158862 },	-- Kleia
					["coord"] = { 55.6, 86.4, BASTION },
					["classes"] = { HUNTER },
				}),
				q(60220, {	-- The Archon's Answer (Mage)
					["sourceQuests"] = { 57266 },	-- The First Cleansing
					["provider"] = { "n", 158862 },	-- Kleia
					["coord"] = { 55.6, 86.4, BASTION },
					["classes"] = { MAGE },
				}),
				q(60221, {	-- The Archon's Answer (Monk)
					["sourceQuests"] = { 57266 },	-- The First Cleansing
					["provider"] = { "n", 158862 },	-- Kleia
					["coord"] = { 55.6, 86.4, BASTION },
					["classes"] = { MONK },
				}),
				q(60222, {	-- The Archon's Answer (Paladin)
					["sourceQuests"] = { 57266 },	-- The First Cleansing
					["provider"] = { "n", 158862 },	-- Kleia
					["coord"] = { 55.6, 86.4, BASTION },
					["classes"] = { PALADIN },
				}),
				q(60223, {	-- The Archon's Answer (Priest)
					["sourceQuests"] = { 57266 },	-- The First Cleansing
					["provider"] = { "n", 158862 },	-- Kleia
					["coord"] = { 55.6, 86.4, BASTION },
					["classes"] = { PRIEST },
				}),
				q(60224, {	-- The Archon's Answer (Rogue)
					["sourceQuests"] = { 57266 },	-- The First Cleansing
					["provider"] = { "n", 158862 },	-- Kleia
					["coord"] = { 55.6, 86.4, BASTION },
					["classes"] = { ROGUE },
				}),
				q(60225, {	-- The Archon's Answer (Shaman)
					["sourceQuests"] = { 57266 },	-- The First Cleansing
					["provider"] = { "n", 158862 },	-- Kleia
					["coord"] = { 55.6, 86.4, BASTION },
					["classes"] = { SHAMAN },
				}),
				q(60226, {	-- The Archon's Answer (Warlock)
					["sourceQuests"] = { 57266 },	-- The First Cleansing
					["provider"] = { "n", 158862 },	-- Kleia
					["coord"] = { 55.6, 86.4, BASTION },
					["classes"] = { WARLOCK },
				}),
				q(60229, {	-- The Archon's Answer (Warrior)
					["sourceQuests"] = { 57266 },	-- The First Cleansing
					["provider"] = { "n", 158862 },	-- Kleia
					["coord"] = { 55.6, 86.4, BASTION },
					["classes"] = { WARRIOR },
				}),
				q(58174, {	-- All An Aspirant Can Do
					["sourceQuests"] = {
						57715,	-- The Archon's Answer (Deathknight)
						60217,	-- The Archon's Answer (Demonhunter)
						60218,	-- The Archon's Answer (Druid)
						60219,	-- The Archon's Answer (Hunter)
						60220,	-- The Archon's Answer (Mage)
						60221,	-- The Archon's Answer (Monk)
						60222,	-- The Archon's Answer (Paladin)
						60223,	-- The Archon's Answer (Priest)
						60224,	-- The Archon's Answer (Rogue)
						60225,	-- The Archon's Answer (Shaman)
						60226,	-- The Archon's Answer (Warlock)
						60229,	-- The Archon's Answer (Warror)
					},
					["provider"] = { "n", 158862 },	-- Kleia
					["coord"] = { 53.5, 87.3, BASTION },
				}),
				------ Chapter 3 ------
				q(57270, {	-- The Temple of Purity
					["sourceQuests"] = { 58174 },	-- All An Aspirant Can Do
					["provider"] = { "n", 157673 },	-- Disciple Kosmas
					["coord"] = { 55.6, 86.4, BASTION },
				}),
				q(57977, {	-- A Temple in Need
					["sourceQuests"] = { 57270 },	-- The Temple of Purity
					["provider"] = { "n", 159762 },	-- Eridia
					["coord"] = { 54.1, 73.6, BASTION },
				}),
				q(57264, {	-- On The Edge of a Revelation
					["sourceQuests"] = { 57270 },	-- The Temple of Purity
					["provider"] = { "n", 157673 },	-- Disciple Kosmas
					["coord"] = { 56.7, 74.4, BASTION },
				}),
				q(57716, {	-- A Wayward Disciple?
					["sourceQuests"] = {
						57977,	-- A Temple in Need
						57264,	-- On The Edge of a Revelation
					},
					["provider"] = { "n", 159762 },	-- Eridia
					["coord"] = { 59.4, 78.0, BASTION },
					["groups"] = {
						i(173343),	-- Belt of Uncertain Devotion
						i(173342),	-- Cinch of Uncertain Devotion
						i(173340),	-- Cincture of Uncertain Devotion
						i(173341),	-- Cord of Uncertain Devotion
					},
				}),
				q(57717, {	-- Step Back From That Ledge, My Friend
					["sourceQuests"] = { 57716 },	-- A Wayward Disciple?
					["provider"] = { "n", 159762 },	-- Eridia
					["coord"] = { 54.1, 73.6, BASTION },
				}),
				q(57037, {	-- A Once Sweet Sound
					["sourceQuests"] = { 57717 },	-- Step Back From That Ledge, My Friend
					["provider"] = { "n", 159762 },	-- Eridia
					["coord"] = { 59.3, 77.0, BASTION },
					["groups"] = {
						i(176335),	-- Chime of Melodic Reflection
						i(176333),	-- Melody Defender's Bulwark
					},
				}),
				q(57719, {	-- Dangerous Discourse
					["sourceQuests"] = { 57717 },	-- Step Back From That Ledge, My Friend
					["altQuests"] = { 60292 },	-- Dangerous Discourse
					["provider"] = { "o", 344726  },	-- Dark Sermon
					["coord"] = { 57.2, 71.8, BASTION },
					["groups"] = {
						i(171215),	-- Dark Sermon (QI!)
					},
				}),
				q(60292, {	-- Dangerous Discourse
					["sourceQuests"] = { 57717 },	-- Step Back From That Ledge, My Friend
					["altQuests"] = { 57719 },	-- Dangerous Discourse
					["provider"] = { "n", 159762 },	-- Eridia
					["coord"] = { 61.2, 74.3, BASTION },
					["groups"] = {
						i(171215),	-- Dark Sermon (QI!)
					},
				}),
				q(59147, {	-- The Hand of Purification
					["sourceQuests"] = { 57717 },	-- Step Back From That Ledge, My Friend
					["provider"] = { "n", 159762 },	-- Eridia
					["coord"] = { 59.3, 77.0, BASTION },
				}),
				q(57446, {	-- The Enemy You Know
					["sourceQuests"] = {
						57037,	-- A Once Sweet Sound
						57719,	-- Dangerous Discourse
						60292,	-- Dangerous Discourse
						59147,	-- The Hand of Purification
					},
					["provider"] = { "n", 159762 },	-- Kleia
					["coord"] = { 61.3, 74.4, BASTION },
				}),
				q(57269, {	-- The Hand of Doubt
					["sourceQuests"] = { 57446 },	-- The Enemy You Know
					["provider"] = { "n", 157673 },	-- Disciple Kosmas
					["coord"] = { 64.2, 71.4, BASTION },
					["groups"] = {
						i(176337),	-- Skytone Quickblade
						i(176388),	-- Guidenote Dagger
						i(176390),	-- Silverchime Gavel
						i(176339),	-- Skytone Mallet
						i(176330),	-- Guidenote Crossbow
						i(176334),	-- Silverchime Longspear
						i(176338),	-- Skytone Greatsword
						i(176336),	-- Guidenote Grip
						i(176332),	-- Silverchime Warglaive
					},
				}),
				q(57447, {	-- Purity's Prerogative
					["sourceQuests"] = { 57269 },	-- The Hand of Doubt
					["provider"] = { "n", 157687 },	-- Vesiphone
					["coord"] = { 64.4, 71.0, BASTION },
				}),
				------ Chapter 4 ------
				q(58976, {	-- Chasing a Memory
					["sourceQuests"] = { 57447 },	-- Purity's Prerogative
					["provider"] = { "n", 156238 },	-- Kleia
					["coord"] = { 53.8, 73.6, BASTION },
				}),
				q(58771, {	-- Directions Not Included
					["sourceQuests"] = { 58976 },	-- Chasing a Memory
					["provider"] = { "n", 167034 },	-- Mikanikos
					["coord"] = { 54.7, 64.1, BASTION },
					["groups"] = {
						i(178092),	-- Battered Scroll (QI!)
						o_repeated({
							i(178046),	-- Locus Manual (QI!)
							o(350064),	-- Battered Scrollcase
							o(350065),	-- Creased Scroll
							o(350066),	-- Dusty Scroll Bundle
							o(350067),	-- Tattered Scroll
						}),
					},
				}),
				q(58799, {	-- The Prime's Directive
					["sourceQuests"] = { 58976 },	-- Chasing a Memory
					["provider"] = { "n", 167034 },	-- Mikanikos
					["coord"] = { 54.7, 64.1, BASTION },
					["groups"] = {
						i(178094),	-- Centurion Core (QI!)
					},
				}),
				q(58800, {	-- The Mnemonic Locus
					["sourceQuests"] = {
						58771,	-- Directions Not Included
						58799,	-- The Prime's Directive
					},
					["provider"] = { "n", 167034 },	-- Mikanikos
					["coord"] = { 57.1, 61.6, BASTION },
					["groups"] = {
						i(175704),	-- Reverberating Silver Band
					},
				}),
				q(58977, {	-- What's In a Memory?
					["sourceQuests"] = { 58800 },	-- The Mnemonic Locus
					["provider"] = { "n", 167034 },	-- Mikanikos
					["coord"] = { 57.5, 61.8, BASTION },
					["groups"] = {
						i(183802),	-- Memory of the Forsworn (QI!)
					},
				}),
				q(58978, {	-- Lysonia's Truth
					["sourceQuests"] = { 58977 },	-- What's In a Memory?
					["provider"] = { "n", 167038 },	-- Kleia
					["coord"] = { 57.5, 61.7, BASTION },
				}),
				q(58979, {	-- I MADE You!
					["sourceQuests"] = { 58978 },	-- Lysonia's Truth
					["provider"] = { "n", 167034 },	-- Mikanikos
					["coord"] = { 57.2, 55.3, BASTION },
					["groups"] = {
						i(173331),	-- Courageous Aspirant's Helm
						i(173330),	-- Humble Aspirant's Helm
						i(173315),	-- Judicious Aspirant's Helm
						i(173329),	-- Pure Aspirant's Hood
					},
				}),
				q(58980, {	-- Mnemis, At Your Service
					["sourceQuests"] = { 58979 },	-- I MADE You!
					["provider"] = { "n", 167035 },	-- Locus-Keeper Mnemis
					["coord"] = { 57.2, 55.2, BASTION },
					["groups"] = {
						o(350889, {	-- Cache of the Archon
							["coord"] = { 60.6, 61.9, BASTION },
							["groups"] = { i(178146) },	-- Carved Kyrian Idol (QI!)
						}),
						o(350888, {	-- Cache of the Paragons
							["coord"] = { 59.9, 58.2, BASTION },
							["groups"] = { i(178145) },	-- Ceremonial Offering (QI!)
						}),
					},
				}),
				q(58843, {	-- The Vault of the Archon
					["sourceQuests"] = { 58980 },	-- Mnemis, At Your Service
					["provider"] = { "n", 167035 },	-- Locus-Keeper Mnemis
					["coord"] = { 58.8, 65.2, BASTION },
				}),
				q(60180, {	-- A Paragon's Reflection
					["sourceQuests"] = { 58843 },	-- The Vault of the Archon
					["provider"] = { "n", 167504 },	-- Vault-Keeper Mnemis
					["coord"] = { 56.1, 67.6, BASTION },
				}),
				q(60013, {	-- Leave it to Mnemis
					["sourceQuests"] = { 60180 },	-- A Paragon's Reflection
					["provider"] = { "n", 167504 },	-- Vault-Keeper Mnemis
					["coord"] = { 56.1, 67.6, BASTION },
				}),
				------ Chapter 5 ------
				q(59196, {	-- Go in Service
					["sourceQuests"] = { 60013 },	-- Leave it to Mnemis
					["provider"] = { "n", 167038 },	-- Kleia
					["coord"] = { 54.4, 64.2, BASTION },
				}),
				q(59426, {	-- Your Personal Assistant
					["sourceQuests"] = {
						59196,	-- Go in Service
						62718,	-- Hero's Rest
					},
					["provider"] = { "n", 165045 },	-- Kalisthene
					["coord"] = { 52.8, 47.8, BASTION },
				}),
				------ Chapter 6 ------
				q(59197, {	-- Steward at Work
					["sourceQuests"] = { 59426 },	-- Your Personal Assistant
					["provider"] = { "n", 165045 },	-- Kalisthene
					["coord"] = { 52.8, 47.8, BASTION },
				}),
				q(59198, {	-- On Swift Wings
					["sourceQuests"] = { 59197 },	-- Steward at Work
					["provider"] = { "n", 165048 },	-- Polemarch Adrestes
					["coord"] = { 52.8, 45.6, BASTION },
					["groups"] = {
						i(175703),	-- Silverspire Signet
						i(173316),	-- Skyloom Cloak
					},
				}),
				q(59199, {	-- Kyrestia, the Firstborne
					["sourceQuests"] = { 59198 },	-- On Swift Wings
					["provider"] = { "n", 160037 },	-- Polemarch Adrestes
					["coord"] = { 55.5, 42.0, BASTION },
				}),
				q(59200, {	-- The Wards of Bastion
					["sourceQuests"] = { 59199 },	-- Kyrestia, the Firstborne
					["provider"] = { "n", 160037 },	-- Polemarch Adrestes
					["coord"] = { 55.5, 42.0, BASTION },
				}),
				q(60005, {	-- Imminent Danger
					["sourceQuests"] = { 59200 },	-- The Wards of Bastion
					["provider"] = { "n", 160037 },	-- Polemarch Adrestes
					["coord"] = { 55.5, 42.0, BASTION },
				}),
				q(60006, {	-- Now or Never
					["sourceQuests"] = { 60005 },	-- Imminent Danger
					["provider"] = { "n", 167873 },	-- Thanikos
					["coord"] = { 41.7, 55.1, BASTION },
				}),
				q(60009, {	-- Fight Another Day
					["sourceQuests"] = { 60006 },	-- Now or Never
					["provider"] = { "n", 167269 },	-- Disciple Apolon
					["coord"] = { 41.2, 54.2, BASTION },
					["groups"] = {
						i(175718),	-- Ascended Defender's Crest
					},
				}),
				q(60008, {	-- Rip and Tear
					["sourceQuests"] = { 60006 },	-- Now or Never
					["provider"] = { "n", 167134 },	-- Thanikos
					["coord"] = { 40.5, 55.2, BASTION },
				}),
				q(60007, {	-- Stay Scrappy
					["sourceQuests"] = { 60006 },	-- Now or Never
					["provider"] = { "n", 167135 },	-- Mikanikos
					["coord"] = { 40.7, 55.5, BASTION },
					["groups"] = {
						i(178043),	-- Anima Conflux (QI!)
						i(178041),	-- Archonic Resonator (QI!)
						i(178042),	-- Eternity Plating (QI!)
					},
				}),
				q(60053, {	-- Clear as Crystal
					["sourceQuests"] = {
						60009,	-- Fight Another Day
						60008,	-- Rip and Tear
						60007,	-- Stay Scrappy
					},
					["provider"] = { "n", 167135 },	-- Mikanikos
					["coord"] = { 40.7, 55.5, BASTION },
				}),
				q(60052, {	-- Double Tap
					["sourceQuests"] = {
						60009,	-- Fight Another Day
						60008,	-- Rip and Tear
						60007,	-- Stay Scrappy
					},
					["provider"] = { "n", 167164 },	-- Thanikos
					["groups"] = {
						i(178140),	-- Archonic Resonator (QI!)
					},
				}),
				q(60054, {	-- The Final Countdown
					["sourceQuests"] = {
						60052,	-- Double Tap
						60053,	-- Clear as Crystal
					},
					["provider"] = { "n", 167423 },	-- Thanikos
					["coord"] = { 39.4, 55.2, BASTION },
					["groups"] = {
						i(173338),	-- Waylight Shoulderpads
						i(173336),	-- Waylight Epaulets
						i(173339),	-- Waylight Shoulderguards
						i(173337),	-- Waylight Pauldrons
					},
				}),
				q(60055, {	-- A Time for Courage
					["sourceQuests"] = { 60054 },	-- The Final Countdown
					["provider"] = { "n", 167460 },	-- Thanikos
					["coord"] = { 38.9, 55.2, BASTION },
				}),
				------ Chapter 7 ------
				q(60056, {	-- Follow the Path
					["sourceQuests"] = { 60055 },	-- A Time for Courage
					["provider"] = { "n", 167583 },	-- Disciple Apolon
					["coord"] = { 40.9, 55.1, BASTION },
				}),
				q(61096, {	-- The Arbiter's Will
					["sourceQuests"] = { 60056 },	-- Follow the Path
					["provider"] = { "n", 159478 },	-- Tal-Inara
					["coord"] = { 38.9, 69.9, ORIBOS },
				}),
				q(61107, {	-- A Land of Strife
					["sourceQuests"] = { 61096 },	-- The Arbiter's Will
					["provider"] = { "n", 171338 },	-- Overseer Kah-Sher
					["coord"] = {61.1, 36.9, ORIBOS },
				}),
				------ Continues in Maldraxxus ------
			}),
			header(HEADERS.AchCriteria, 14801.01, {	-- In Agthia's Memory
				q(59554, {	-- A Fine Journey
					["sourceQuests"] = { 60735 },	-- Trouble in Paradise
					["provider"] = { "o", 348558 },	-- Notice
					["coord"] = { 51.9, 47.7, BASTION },
					["isBreadcrumb"] = true,
				}),
				q(57549, {	-- In Agthia's Memory
					["sourceQuests"] = { 59554 },	-- A Fine Journey
					["provider"] = { "n", 158078 },	-- Keeper Mnemis
					["coord"] = { 46.9, 63.4, BASTION },
				}),
				q(57551, {	-- Agthia's Path
					["sourceQuests"] = { 57549 },	-- In Agthia's Memory
					["provider"] = { "n", 158078 },	-- Keeper Mnemis
					["coord"] = { 46.9, 63.4, BASTION },
				}),
				q(57553, {	-- On Wounded Wings
					["sourceQuests"] = { 57551 },	-- Agthia's Path
					["provider"] = { "n", 158178 },	-- Agthian Defender
					["coord"] = { 46.4, 63.6, BASTION },
				}),
				q(57552, {	-- Warriors of the Void
					["sourceQuests"] = { 57551 },	-- Agthia's Path
					["provider"] = { "n", 158181 },	-- Agthia
					["coord"] = { 46.5, 63.4, BASTION },
				}),
				q(57554, {	-- Wicked Gateways
					["sourceQuests"] = { 57551 },	-- Agthia's Path
					["provider"] = { "n", 158181 },	-- Agthia
					["coord"] = { 46.5, 63.4, BASTION },
				}),
				q(57555, {	-- Shadow's Fall
					["sourceQuests"] = {
						57553,	-- On Wounded Wings
						57552,	-- Warriors of the Void
						57554,	-- Wicked Gateways
					},
					["provider"] = { "n", 158181 },	-- Agthia
					["coord"] = { 46.5, 63.4, BASTION },
					["groups"] = {
						i(175719),	-- Agitha's Void-Tinged Speartip
					},
				}),
			}),
			header(HEADERS.AchCriteria, 14801.02, {	-- Wings of Freedom
				q(59262, {	-- Broken Wings
					["sourceQuests"] = { 59773 },	-- Seek the Ascended
					["provider"] = { "n", 164640 },	-- Kowalskos
					["coord"] = { 42.8, 42.7, BASTION },
					["groups"] = {
						i(175791),	-- Ariella's Wing (QI!)
					},
				}),
				q(59263, {	-- Feathers of Flight
					["sourceQuests"] = { 59262 },	-- Broken Wings
					["provider"] = { "n", 164640 },	-- Kowalskos
					["coord"] = { 42.8, 42.7, BASTION },
					["groups"] = {
						i(175792),	-- Larion Flight Feather (QI!)
					},
				}),
				q(60660, {	-- Flight Test
					["sourceQuests"] = { 59263 },	-- Feathers of Flight
					["provider"] = { "n", 164640 },	-- Kowalskos
					["coord"] = { 42.8, 42.7, BASTION },
				}),
				q(59348, {	-- More Wings!
					["sourceQuests"] = { 60660 },	-- Flight Test
					["provider"] = { "n", 164640 },	-- Kowalskos
					["coord"] = { 42.8, 42.7, BASTION },
					["groups"] = {
						i(175968),	-- Animyllis Bloom (QI!)
					},
				}),
				q(59351, {	-- Strings and Things
					["sourceQuests"] = { 60660 },	-- Flight Test
					["provider"] = { "n", 164640 },	-- Kowalskos
					["coord"] = { 42.8, 42.7, BASTION },
					["groups"] = {
						i(175967),	-- Etherwyrm Filament (QI!)
					},
				}),
				q(59311, {	-- How to Catch a Glimmerfly
					["sourceQuests"] = {
						59348,	-- More Wings!
						59351,	-- Strings and Things
					},
					["provider"] = { "n", 164640 },	-- Kowalskos
					["coord"] = { 42.8, 42.7, BASTION },
					["groups"] = {
						i(176812),	-- Animyllis Bloom (QI!)
						i(180839),	-- Helpful Glimmerfly (PET!)
					},
				}),
				q(59865, {	-- Glimmerflight
					["sourceQuests"] = { 59311 },	-- How to Catch a Glimmerfly
					["provider"] = { "n", 164640 },	-- Kowalskos
					["coord"] = { 42.82, 42.73, BASTION },
					["groups"] = {
						i(177951),	-- Glimmerflies on Strings (TOY!)
					},
				}),
			}),
			header(HEADERS.AchCriteria, 14801.03, {	-- In the Garden of Respite
				q(57529, {	-- Garden in Turmoil
					["sourceQuests"] = { 60735 },	-- Trouble in Paradise
					["provider"] = { "n", 158005 },	-- Tamesis
					["coord"] = { 52.3, 61.3, BASTION },
					["isBreadcrumb"] = true,
				}),
				q(57545, {	-- Distractions for Kala
					["sourceQuests"] = { 57529 },	-- Garden in Turmoil
					["provider"] = { "n", 158004 },	-- Zosime
					["coord"] = { 51.3, 59.6, BASTION },
					["groups"] = {
						i(172039),	-- Comfy Comfort Pillow (QI!)
						i(172036),	-- Kala's Slobber Ball (QI!)
						i(172037),	-- Mister Mikanikos (QI!)
					},
				}),
				q(57538, {	-- Disturbing the Peace
					["sourceQuests"] = { 57529 },	-- Garden in Turmoil
					["provider"] = { "n", 158004 },	-- Zosime
					["coord"] = { 51.3, 59.6, BASTION },
				}),
				q(57547, {	-- A Test of Courage
					["sourceQuests"] = {
						57545,	-- Distractions for Kala
						57538,	-- Disturbing the Peace
					},
					["provider"] = { "n", 158004 },	-- Zosime
					["coord"] = { 51.3, 59.6, BASTION },
				}),
				q(57568, {	-- Tough Love
					["sourceQuests"] = { 57547 },	-- A Test of Courage
					["provider"] = { "n", 158004 },	-- Zosime
					["coord"] = { 51.2, 56.8, BASTION },
					["groups"] = {
						i(172141),	-- Korinna's Allaying Crook (QI!)
						i(175616),	-- Courageous Aspirant's Gloves
						i(175619),	-- Humble Aspirant's Gauntlets
						i(175617),	-- Judicious Aspirant's Gauntlets
						i(175618),	-- Pure Aspirant's Gloves
					},
				}),
			}),
			header(HEADERS.AchCriteria, 14801.04, {	-- The Spear of Kalliope
				q(57860, {	-- How to Become Forsworn
					["provider"] = { "n", 159248 },	-- Haetio
					["coord"] = { 36.6, 37.6, BASTION },
					["groups"] = {
						i(175277),	-- Forsworn Uniform Piece (QI!)
						i(173029),	-- Quartermaster's Insignia (QI!)
					},
				}),
				q(59207, {	-- Unshackled Knowledge
					["provider"] = { "n", 159248 },	-- Haetio
					["coord"] = { 36.6, 37.6, BASTION },
				}),
				q(57861, {	-- Just Act Natural
					["sourceQuests"] = {
						57860,	-- How to Become Forsworn
						59207,	-- Unshackled Knowledge
					},
					["provider"] = { "n", 159248 },
					["coord"] = { 36.6, 37.6, BASTION },
				}),
				q(57875, {	-- Mark of Humility
					["sourceQuests"] = { 57861 },	-- Just Act Natural
					["provider"] = { "n", 159272 },	-- Artificer Ligiea
					["coord"] = { 42.7, 39.3, BASTION },
					["groups"] = {
						i(175754),	-- Mark of Humility (QI!)
					},
				}),
				q(57914, {	-- Mark of Knowledge
					["sourceQuests"] = { 57861 },	-- Just Act Natural
					["provider"] = { "n", 159272 },	-- Artificer Ligiea
					["coord"] = { 42.7, 39.3, BASTION },
					["groups"] = {
						i(175755),	-- Mark of Knowledge (QI!)
					},
				}),
				q(57966, {	-- You Go First
					["sourceQuests"] = {
						57875,	-- Mark of Humility
						57914,	-- Mark of Knowledge
					},
					["provider"] = { "n", 159272 },	-- Artificer Ligiea
					["coord"] = { 43.1, 38.4, BASTION },
				}),
				q(57989, {	-- The Spear of Kalliope
					["sourceQuests"] = { 57966 },	-- You Go First
					["provider"] = { "n", 159272 },	-- Artificer Ligiea
					["coord"] = { 61.8, 50.3, 1714 },	-- Third Chamber of Kalliope
					["groups"] = {
						i(173354),	-- Spear of Kalliope (QI!)
					},
				}),
				q(60906, {	-- Rightful Resting Place [Non-Kyrian]
					["sourceQuests"] = { 57989 },	-- The Spear of Kalliope
					["provider"] = { "n", 159248 },	-- Haetio
					["coord"] = { 43.2, 38.5, BASTION },
					["groups"] = {
						i(180452),	-- Spear of Kalliope (QI!)
					},
				}),
				q(57967, {	-- Rightful Resting Place [Kyrian]
					["sourceQuests"] = { 57989 },	-- The Spear of Kalliope
					["provider"] = { "n", 159248 },	-- Haetio
					["coord"] = { 43.2, 38.5, BASTION },
					["customCollect"] = "SL_COV_KYR",
					["groups"] = {
						i(180452),	-- Spear of Kalliope (QI!)
					},
				}),
			}),
			header(HEADERS.AchCriteria, 14801.05, {	-- Pride or Unit
				q(59674, {	-- A Friendly Rivalry
					["sourceQuests"] = { 60735 },	-- Trouble in Paradise
					["altQuests"] = { 63068 },	-- Settling Disputes
					["provider"] = { "n", 158765 },	-- Pelodis
					["coord"] = { 57.4, 54.2, BASTION },
					["isBreadcrumb"] = true,
				}),
				-- Nemea
				q(58184, {	-- Antiquated Methodology
					["description"] = "Only available if you complete all of Pelodis's quests before any of Nemea's quests.",
					["sourceQuests"] = { 57937 },	-- Tactical Formation
					["altQuests"] = { 58185 },	-- Success Without Soul
					["provider"] = { "n", 158765 },	-- Pelodis
					["coord"] = { 54.7, 41.1, BASTION },
					["isBreadcrumb"] = true,
				}),
				q(58037, {	-- Part of the Pride
					["sourceQuests"] = {
						59674,	-- A Friendly Rivalry
						63068,	-- Settling Disputes [Kyrian Only]
						58184,	-- Antiquated Methodology
					},
					["provider"] = { "n", 157696 },	-- Nemea
					["coord"] = { 57.2, 39.2, BASTION },
				}),
				q(58038, {	-- All Natural Chews
					["sourceQuests"] = { 58037 },	-- Part of the Pride
					["provider"] = { "n", 157696 },	-- Nemea
					["coord"] = { 57.2, 39.2, BASTION },
					["groups"] = {
						i(173690),	-- Cloudstrider Antler (QI!)
					},
				}),
				q(58039, {	-- Larion at Large
					["sourceQuests"] = { 58037 },	-- Part of the Pride
					["provider"] = { "n", 157696 },	-- Nemea
					["coord"] = { 57.2, 39.2, BASTION },
				}),
				q(58040, {	-- With Lance and Larion
					["sourceQuests"] = {
						58038,	-- All Natural Chews
						58039,	-- Larion at Large
					},
					["provider"] = { "n", 157696 },	-- Nemea
					["coord"] = { 57.2, 39.2, BASTION },
					["groups"] = {
						i(173692),	-- Nemea's Javelin (QI!)
					},
				}),
				q(58041, {	-- Providing for the Pack
					["sourceQuests"] = {
						58038,	-- All Natural Chews
						58039,	-- Larion at Large
					},
					["provider"] = { "n", 157696 },	-- Nemea
					["coord"] = { 57.2, 39.2, BASTION },
					["groups"] = {
						i(173702),	-- Cloudfeather Essence (QI!)
					},
				}),
				q(58042, {	-- On Larion Wings
					["sourceQuests"] = {
						58040,	-- With Lance and Larion
						58041,	-- Providing for the Pack
					},
					["provider"] = { "n", 157696 },	-- Nemea
					["coord"] = { 57.2, 39.2, BASTION },
					["groups"] = {
						i(173335),	-- Courageous Aspirant's Breeches
						i(173334),	-- Humble Aspirant's Leggings
						i(173332),	-- Judicious Aspirant's Legguards
						i(173333),	-- Pure Aspirant's Leggings
					},
				}),
				-- Pelodis
				q(58185, {	-- Success Without Soul
					["description"] = "Only available if you complete all of Nemea's quests before any of Pelodis's quests.",
					["sourceQuests"] = { 58042 },	-- On Larion Wings
					["altQuests"] = { 58184 },	-- Antiquated Methodology
					["provider"] = { "n", 157696 },	-- Nemea
					["coord"] = { 57.2, 39.2, BASTION },
					["isBreadcrumb"] = true,
				}),
				q(57931, {	-- Phalynx Malfunction
					["sourceQuests"] = {
						59674,	-- A Friendly Rivalry
						63068,	-- Settling Disputes [Kyrian Only]
						58185,	-- Success Without Soul
					},
					["provider"] = { "n", 158765 },	-- Pelodis
					["coord"] = { 54.7, 41.1, BASTION },
				}),
				q(57932, {	-- Resource Drain
					["sourceQuests"] = {
						59674,	-- A Friendly Rivalry
						58185,	-- Success Without Soul
					},
					["provider"] = { "n", 159609 },	-- Hopo
					["coord"] = { 54.7, 41.2, BASTION },
					["groups"] = {
						i(173691),	-- Anima Drainer (QI!)
					},
				}),
				q(57933, {	-- We Can Rebuild Him
					["sourceQuests"] = {
						57931,	-- Phalynx Malfunction
						57932,	-- Resource Drain
					},
					["provider"] = { "n", 158765 },	-- Pelodis
					["coord"] = { 54.7, 41.1, BASTION },
					["groups"] = {
						i(173307),	-- Reinforced Armor (QI!)
					},
				}),
				q(57934, {	-- Combat Drills
					["sourceQuests"] = { 57933 },	-- We Can Rebuild Him
					["provider"] = { "n", 158765 },	-- Pelodis
					["coord"] = { 54.7, 41.1, BASTION },
				}),
				q(57935, {	-- Laser Location
					["sourceQuests"] = { 57933 },	-- We Can Rebuild Him
					["provider"] = { "n", 158765 },	-- Pelodis
					["coord"] = { 54.7, 41.1, BASTION },
					["groups"] = {
						i(173269),	-- Training Gem (QI!)
					},
				}),
				q(57936, {	-- Superior Programming
					["sourceQuests"] = { 57933 },	-- We Can Rebuild Him
					["provider"] = { "n", 159609 },	-- Hopo
					["coord"] = { 54.7, 41.2, BASTION },
					["groups"] = {
						i(175615),	-- Courageous Aspirant's Boots
						i(175638),	-- Courageous Aspirant's Wristwraps
						i(175614),	-- Humble Aspirant's Sabatons
						i(175637),	-- Humble Aspirant's Wristwraps
						i(175612),	-- Judicious Aspirant's Warboots
						i(175636),	-- Judicious Aspirant's Wristwraps
						i(175613),	-- Pure Aspirant's Treads
						i(175635),	-- Pure Aspirant's Wristwraps
					},
				}),
				q(57937, {	-- Tactical Formation
					["sourceQuests"] = {
						57934,	-- Combat Drills
						57935,	-- Laser Location
						57936,	-- Superior Programming
					},
					["provider"] = { "n", 158765 },	-- Pelodis
					["coord"] = { 54.7, 41.1, BASTION },
				}),
				q(60296, {	-- Pride or Unit (Nemea - Larion)
					["sourceQuests"] = {	-- requires completion of both chains. both quests are available, it's just which NPC you want to pick it up from/which one you're nearest
						58042,	-- On Larion Wings
						57937,	-- Tactical Formation
					},
					["provider"] = { "n", 157696 },	-- Nemea
					["coord"] = { 57.2, 39.2, BASTION },
				}),
				q(58103, {	-- Pride or Unit (Pelodis - Phalynx)
					["sourceQuests"] = {	-- requires completion of both chains. both quests are available, it's just which NPC you want to pick it up from/which one you're nearest
						58042,	-- On Larion Wings
						57937,	-- Tactical Formation
					},
					["provider"] = { "n", 158765 },	-- Pelodis
					["coord"] = { 54.7, 41.1, BASTION },
				}),
			}),
			------ Gift Storyline ------
			q(60466, {	-- The Old Ways
				["sourceQuests"] = {
					57677,	-- A Soulbind in Need
					57676,	-- The Things That Haunt Us
				},
				["provider"] = { "n", 160598 },	-- Klystere
				["coord"] = { 47.8, 73.2, BASTION },
				["groups"] = {
					i(178885),	-- Cloudstrider Pelt (QI!)
					i(178891),	-- Elysian Thread (QI!)
					i(178890),	-- Larion Plume (QI!)
				},
			}),
			q(62714, {	-- A Gift for An Acolyte
				["sourceQuests"] = { 60466 },	-- The Old Ways
				["provider"] = { "n", 160598 },	-- Klystere
				["coord"] = { 47.8, 73.2, BASTION },
				["groups"] = {
					i(183966),	-- Klystere's Gift (QI!)
				},
			}),
			q(62715, {	-- More Than A Gift
				["sourceQuests"] = { 62714 },	-- A Gift for An Acolyte
				["provider"] = { "n", 174900 },	-- Acolyte Amalthina
				["coord"] = { 47.8, 73.2, BASTION },
				["groups"] = {
					i(183967),	-- Cultivated Windblossom (QI!)
				},
			}),
			------ Miscellaneous ------
			q(57444, {	-- An Inspired Moral Inventory
				["sourceQuests"] = { 57717 },	-- Step Back From That Ledge, My Friend
				["provider"] = { "n", 160647 },	-- Acolyte Galistos
				["coord"] = { 61.1, 74.4, BASTION },
			}),
			q(62730, {	-- Fruit of the Gods
				["provider"] = { "n", 170284 },	-- Elios
				["coord"] = { 53.2, 46.4, BASTION },
			}),
			q(62200, {	-- Functioning Anima Core
				["provider"] = { "i", 182759 },	-- Functioning Anima Core
				["repeatable"] = true,
			}),
			q(62718, {	-- Hero's Rest
				["sourceQuests"] = { 57266 },	-- The First Cleansing
				["provider"] = { "o", 362489 },	-- Elysian Decree
				["coord"] = { 48.8, 73.3, BASTION },
				["isBreadcrumb"] = true,
			}),
			q(57712, {	-- Suggested Reading
				["sourceQuests"] = { 57711 },	-- A Forge Gone Cold
				["provider"] = { "n", 157138 },	-- Aspirant Akimos
				["coord"] = { 55.3, 83.4, BASTION },
				["groups"] = {
					i(173023),	-- Bear Witness: The Watcher's Code (QI!)
					i(173025),	-- The Infinite Treatises (QI!)
					i(173024),	-- Worlds Beyond Counting (QI!)
				},
			}),
			q(62733, {	-- The Sweetest Tribute
				["sourceQuests"] = { 62730 },	-- Fruit of the Gods
				["provider"] = { "n", 170284 },	-- Elios
				["coord"] = { 53.2, 46.4, BASTION },
			}),
			q(60316, {	-- WANTED: Altered Sentinel
				["sourceQuests"] = {
					57715,	-- The Archon's Answer (Deathknight)
					60217,	-- The Archon's Answer (Demonhunter)
					60218,	-- The Archon's Answer (Druid)
					60219,	-- The Archon's Answer (Hunter)
					60220,	-- The Archon's Answer (Mage)
					60221,	-- The Archon's Answer (Monk)
					60222,	-- The Archon's Answer (Paladin)
					60223,	-- The Archon's Answer (Priest)
					60224,	-- The Archon's Answer (Rogue)
					60225,	-- The Archon's Answer (Shaman)
					60226,	-- The Archon's Answer (Warlock)
					60229,	-- The Archon's Answer (Warror)
				},
				["provider"] = { "o", 352028 },	-- Wanted Scroll
				["coord"] = { 49.1, 72.8, BASTION },
				["groups"] = {
					i(173349),	-- Misfiring Centurion Controller
				},
			}),
			q(60366, {	-- WANTED: Darkwing
				["sourceQuests"] = { 60735 },	-- Trouble in Paradise
				["provider"] = { "o", 352027 },	-- Wanted Scroll
				["coord"] = { 53.2, 46.4, BASTION },
				["groups"] = {
					i(178791),	-- Carved Cloudfeather Call (QI!)
					i(178790),	-- Umbral Plume (QI!)
					i(175762),	-- Larion Tamer's Cloak
				},
			}),
			q(60315, {	-- WANTED: Gorgebeak
				["sourceQuests"] = { 60735 },	-- Trouble in Paradise
				["provider"] = { "o", 352027 },	-- Wanted Scroll
				["coord"] = { 53.2, 46.4, BASTION },
				["groups"] = {
					i(178683),	-- Gorgebeak's Bill (QI!)
					i(173345),	-- Cranefeather Bracers
					i(173346),	-- Beakblockers
					i(173347),	-- Down-Lined Wristguards
					i(173348),	-- Gluttonous Wristwraps
				},
			}),
			q(62170, {	-- You'll Never Walk Alone
				["provider"] = { "i", 182693 },	-- Lost Disciple's Notes
				["coord"] = { 59.3, 60.9, BASTION },
			}),
			q(62916, {	-- Your Next Best Friend
				["sourceQuests"] = { 59196 },	-- Go in Service
				["provider"] = { "n", 175426 },	-- Sika
				["coord"] = { 53.0, 47.6, BASTION },
				["isWeekly"] = true,
			}),
			n(BONUS_OBJECTIVES, {
				q(59015, {	-- Hostile Recollection
					["coord"] = { 56.9, 59.9, BASTION },
				}),
			}),
			n(BONUS_OBJECTIVES, sharedData({
				["customCollect"] = "SL_SKIP",	-- SL Skip Character
				["sourceQuests"] = { 62159 },	-- Aiding the Shadowlands
				["lockCriteria"] = { 1, "lvl", 60 },
			}, bubbleDown({
				["timeline"] = { ADDED_9_0_2_LAUNCH },
			}, {
				q(62737, {	-- Aspirant For a Day [Pre-60]
					["coord"] = { 54.1, 80.4, BASTION },
					["groups"] = {
						i(172518),	-- Adrima's Lily (QI!)
						i(181571),	-- Spiritmender's Handwraps
						i(181580),	-- Soulbearer's Gloves
						i(181596),	-- Forgehand's Handguards
						i(181608),	-- Shieldguard's Gauntlets
						i(184043),	-- Lost Scroll (QI!)
					},
				}),
				q(62735, {	-- Hostile Recollection [Pre-60]
					["coord"] = { 56.9, 59.9, BASTION },
					["groups"] = {
						i(181703),	-- Skychime Necklace
					},
				}),
				q(62732, {	-- Locus Focus [Pre-60]
					["coord"] = { 54.7, 64.1, BASTION },
					["groups"] = {
						i(181575),	-- Spiritmender's Cord
						i(181587),	-- Soulbearer's Belt
						i(181603),	-- Forgehand's Chain
						i(181612),	-- Shieldguard's Girdle
					},
				}),
				q(62736, {	-- Maldraxxi Eviction Notice [Pre-60]
					["coord"] = { 40.4, 53.6, BASTION },
					["groups"] = {
						i(181569),	-- Spiritmender's Robe
						i(181577),	-- Soulbearer's Vest
						i(181591),	-- Forgehand's Hauberk
						i(181605),	-- Shieldguard's Breastplate
					},
				}),
				q(62705, {	-- Scour the Temple [Pre-60]
					["coord"] = { 58.4, 75.2, BASTION },
					["groups"] = {
						i(181721),	-- Ascendent Valor Signet
					},
				}),
			}))),
		}),
	}),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.SL, bubbleDownSelf({ ["timeline"] = { ADDED_9_0_2_LAUNCH } }, {
	m(SHADOWLANDS, {
		m(BASTION, {
			n(QUESTS, {
				q(57574),	-- landing in Bastion for the first time during Seek the Ascended
				q(58117),	-- Triggered after turning in The Aspirant's Crucible (57709)
				q(60294),	-- Triggered after choosing Larion from Nemea during Pride Or Unit quest
				q(60293),	-- Triggered after choosing Phalynx from Pelodis during Pride Or Unit quest
				q(62734),	-- Triggered after opening Silver Strongbox during "The Sweetest Tribute" (questID 62733) (spellID 348442)
				q(60259),	-- Your Personal Assistant - choosing Akiris
				q(60260),	-- Your Personal Assistant - choosing Ipa — shares appearance with Dintos + Minta, so possible each steward has its own questID and you get credit for all the ones that share its appearance?
				q(60261),	-- Your Personal Assistant - this one has triggered when choosing Thima and Syla so far
				q(60262),	-- Your Personal Assistant - choosing Ipa/Akiris
				q(60263),	-- Your Personal Assistant - choosing Ipa/Akiris
				-- more steward info: https://imgur.com/0tLgE13
				-- if each one has its own questID but grants credit for all in the same shared appearances set, these are the sets that are missing:
				-- Bumos / Ilapos / Asellia / Syla / Zenza
				-- Abalus / Thima
				-- Bola / Pico / Ipadipos / Chaermi
				-- Gramilos / Apa / Dafi
				-- Haka
				-- Mupu / Deka / Laratis
				-- Kimos / Toulis / Korinthe
				-- Akiris / Isilios / Koukis / Tibo / Farra / Arathane
			}),
		}),
	}),
})));
