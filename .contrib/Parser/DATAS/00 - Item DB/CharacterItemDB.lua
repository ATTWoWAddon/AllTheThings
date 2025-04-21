-- This file will combine itemIDs for customization and questIDs so they dont have to be in the source files

--[[
=== Uses ===
-- CharacterUnlock Types
iq() - This is an Item which triggers a QuestID and provides a tangible change to the player experience via being used
Example: One-time consumables that change available in-game functionality/options
is() - This is an Item which triggers/learns a SpellID and provides a tangible change to the player experience via being used
Example: Spells which change available in-game functionality/options
-- Item Types
ihqt() - This is simply an Item which triggers a QuestID, but no noticeable difference to the player experience occurs
- Example: One-time consumables that grant a currency/etc.
--]]

local Items = ItemDBConditional;
-- #IF ANYCLASSIC
local Spells = RecipeDB;
-- #ELSE
local Spells = SpellDB;
-- #ENDIF
local iq = function(itemID, questID, classID, raceID)
	if not itemID or itemID < 1 then
		error("'characterUnlockQuestID' without a valid itemID is not currently supported")
	end
	local item = {
		type = "characterUnlockQuestID",
		questID = questID and questID > 0 and questID or nil,
	}
	if classID then
		item.classes = { classID };
	end
	if raceID then
		item.races = { raceID };
	end
	Items[itemID] = item;
end
local is = function(itemID, spellID, classID, raceID)
	local item = {
		spellID = spellID and spellID > 0 and spellID or nil,
		type = "characterUnlockSpellID",
	}
	if classID then
		item.classes = { classID };
	end
	if raceID then
		item.races = { raceID };
	end
	if itemID and itemID > 0 then
		Items[itemID] = item;
	elseif spellID and spellID > 0 then
		Spells[spellID] = item;
	else
		error("'characterUnlockSpellID' requires itemID or spellID to be parsed (itemID only will simply apply the data to the respective Item)")
	end
end
local ihqt = function(itemID, questID, classID, raceID)
	if not itemID or itemID < 1 then
		error("'ihqt()' without a valid itemID is not supported")
	end
	local item = {
		questID = questID and questID > 0 and questID or nil,
		type = "ihqt",
	}
	if classID then
		item.classes = { classID };
	end
	if raceID then
		item.races = { raceID };
	end
	Items[itemID] = item;
end
-----------------
--   CLASSIC   --
-----------------
--- NYI ---
is(4144, 28270, MAGE);				-- Tome of Polymorph: Cow

-----------------
-- PATCH 1.7.0 --
-----------------
is(22739, 28271, MAGE);				-- Tome of Polymorph: Turtle

-----------------
-- PATCH 3.0.3 --
-----------------
is(44714, 61316, MAGE);				-- Tome of Dalaran Brilliance [REMOVED]
is(44602, 61024, MAGE);				-- Tome of Dalaran Intellect [REMOVED]
is(44709, 61305, MAGE);				-- Tome of Polymorph: Black Cat
-- NYI --
is(44600, 61025, MAGE);				-- Tome of Polymorph: Serpent

-----------------
-- PATCH 3.1.0 --
-----------------
is(44793, 61721, MAGE);				-- Tome of Polymorph: Rabbit

-----------------
-- PATCH 3.3.5 --
-----------------
-- NYI --
is(44811, 61780, MAGE);				-- Tome of Polymorph: Turkey

-----------------
-- PATCH 5.0.4 --
-----------------
is(82470, 120146, MAGE);			-- Ancient Tome of Portal: Dalaran
is(82469, 120145, MAGE);			-- Ancient Tome of Teleport: Dalaran
-- iq(86125, 31304);					-- Kafa Press
-- iq(86529, 31432);					-- Manipulator's Talisman
is(0, 131204);						-- Path of the Jade Serpent

-----------------
-- PATCH 5.2.0 --
-----------------
is(94232, 138430, HUNTER);			-- Ancient Tome of Dinomancy
is(0, 101508, WARLOCK);				-- The Codex of Xerrath

-----------------
-- PATCH 6.0.1 --
-----------------
is(0, 159899);						-- Path of the Crescent Moon
is(0, 159900);						-- Path of the Dark Rail
is(0, 159896);						-- Path of the Iron Prow
is(0, 159901);						-- Path of the Verdant

-----------------
-- PATCH 6.0.2 --
-----------------
is(120138, 161354, MAGE);			-- Tome of Polymorph: Monkey
is(120139, 161355, MAGE);			-- Tome of Polymorph: Penguin
is(120137, 161353, MAGE);			-- Tome of Polymorph: Polar Bear Cub
is(120140, 126819, MAGE);			-- Tome of Polymorph: Porcupine
iq(139003, 43016);					-- Broken Pet Portal
iq(118730, 36466);					-- Talador Treasure Map
iq(118731, 36467);					-- Spires of Arak Treasure Map
iq(118732, 36468);					-- Nagrand Treasure Map
iq(118729, 36465);					-- Gorgrond Treasure Map
iq(118727, 34557);					-- Frostfire Treasure Map
iq(118728, 36464);					-- Shadowmoon Valley Treasure Map

-----------------
-- PATCH 6.2.0 --
-----------------
iq(128474, 39463);					-- Treasure Map: Tanaan Jungle
iq(128294, 37485);					-- Trade Agreement: Arakkoa Outcasts
iq(128250, 39358);					-- Equipment Blueprint: Unsinkable
iq(128444, 39561);					-- Blueprint: Oil Rig
iq(113212, 39463);					-- Treasure Map: Tanaan Jungle
iq(128251, 39359);					-- Equipment Blueprint: Tuskarr Fishing Net
iq(128490, 39561);					-- Blueprint: Oil Rig
iq(128446, 39564);					-- Saberstalker Teachings: Trailblazer

-----------------
-- PATCH 7.0.3 --
-----------------
is(136796, 127344, DEATHKNIGHT);	-- Necrophile Tome: Corpse Exploder
is(136795, 127757, DRUID);			-- Tome of the Wilds: Charm Woodland Creature
is(136794, 164862, DRUID);			-- Tome of the Wilds: Flap
is(136789, 210053, DRUID);			-- Tome of the Wilds: Mount Form
is(136790, 210065, DRUID);			-- Tome of the Wilds: Track Beasts
is(136787, 114282, DRUID);			-- Tome of the Wilds: Treant Form
is(136782, 127933, HUNTER);			-- Fireworks Instruction Manual
is(134125, 205154, HUNTER);			-- Mecha-Bond Imprint Matrix
is(136781, 125050, HUNTER);			-- Pet Training Manual: Fetch
is(136780, 209997, HUNTER);			-- Pet Training Manual: Play Dead
is(136783, 61648, HUNTER);			-- The Art of Concealment
is(136797, 210086, MAGE);			-- Mystical Tome: Arcane Linguist
is(136799, 131784, MAGE);			-- Mystical Tome: Illusion
is(136800, 125883, MONK);			-- Meditation Manual: Zen Flight
is(136801, 121183, PALADIN);		-- Divine Tome: Contemplation
is(136803, 210108, ROGUE);			-- Dirty Tricks, Vol 1: Detection
is(136972, 211015, SHAMAN);			-- Tome of Hex: Cockroach
is(136938, 210873, SHAMAN);			-- Tome of Hex: Compy
is(136969, 211004, SHAMAN);			-- Tome of Hex: Spider
iq(140327, 43987);					-- Kyrtos's Research Notes
iq(140326, 43986);					-- Enchanted Burial Urn
iq(140329, 43989);					-- Infinite Stone
iq(140328, 43988);					-- Volatile Leyline Crystal
iq(136269, 42842);					-- Kel'danath's Manaflask
iq(132528, 40734);					-- Reaves Module: Fireworks Display Mode
iq(132526, 40733);					-- Reaves Module: Failure Detection Mode
iq(132529, 40735);					-- Reaves Module: Snack Distribution Mode
iq(132525, 40732);					-- Reaves Module: Repair Mode
iq(132531, 40737);					-- Reaves Module: Piloted Combat Mode
iq(132530, 40736);					-- Reaves Module: Bling Mode
iq(132524, 40738);					-- Reaves Module: Wormhole Generator Mode
-- NYI
is(136971, 211010, SHAMAN);			-- Tome of Hex: Snake

-----------------
-- PATCH 7.2.0 --
-----------------
is(147580, 242155, HUNTER);			-- Tome of the Hybrid Beast
-- NYI --
is(147770, nil, HUNTER);			-- Tome of the PTR Beast

-----------------
-- PATCH 7.3.0 --
-----------------
iq(152964, 49006);					-- Krokul Flute

-----------------
-- PATCH 8.0.1 --
-----------------
is(162626, 277792, MAGE);			-- Tome of Polymorph: Bumblebee
is(162625, 277787, MAGE);			-- Tome of Polymorph: Direhorn
is(159841, 269352, SHAMAN);			-- Tome of Hex: Skeletal Hatchling
is(162624, 277784, SHAMAN);			-- Tome of Hex: Wicker Mongrel
is(162623, 277778, SHAMAN);			-- Tome of Hex: Zandalari Tendonripper

-----------------
-- PATCH 8.1.0 --
-----------------
iq(166502, 54753, HUNTER);			-- Blood-Soaked Tome of Dark Whispers
iq(166749, 54859);					-- Lyrics: Song of the Sea

-----------------
-- PATCH 8.2.0 --
-----------------

-----------------
-- PATCH 8.2.5 --
-----------------
is(172405, 309328, SHAMAN);			-- Tome of Hex: Living Honey

-----------------
-- PATCH 8.3.0 --
-----------------
iq(175158, 59029, nil, VULPERA);	-- Flames of Fury
iq(175160, 59035, nil, VULPERA);	-- Holy Relic
iq(175159, 59032, nil, VULPERA);	-- Sinister Shadows

-----------------
-- PATCH 9.0.1 --
-----------------
iq(89868, 62677, DRUID);			-- Mark of the Cheetah
iq(140630, 62678, DRUID);			-- Mark of the Doe
iq(162022, 62674, DRUID);			-- Mark of the Dolphin
iq(162029, 62676, DRUID);			-- Mark of the Humble Flyer
-- #if AFTER 9.0.1
-- CRIEVE NOTE: This was appearing in Classic... Ya'll gotta be more careful.
iq(40919, 62673, DRUID);			-- Mark of the Orca
-- #endif
iq(129021, 62675, DRUID);			-- Mark of the Sentinel
iq(162027, 62672, DRUID);			-- Mark of the Tideskipper
iq(183123, 62254, HUNTER);			-- How to School Your Serpent
iq(165840, 54264);					-- Shattered Pet Portal

-----------------
-- PATCH 9.0.2 --
-----------------
iq(183124, 62255, HUNTER);			-- Simple Tome of Bone-Binding
iq(180705, 61160, HUNTER);			-- Gargon Training Manual
iq(184219, 62821);					-- Treatise on Sinstone Fragment Acquisition
iq(184222, 62822);					-- Lemet's Requisition Orders
iq(184220, 62821);					-- Encyclopedia of Sinstone Fragment Recovery
iq(183517, 62372);					-- Page 76 of the Necronom-i-nom
iq(187923, 65039);					-- Aurelid Lure
--- NYI ---
iq(181443, 61459);					-- The Party Herald's Party Hat
iq(183957, 62657);					-- Invitation: Grandmaster Vole
iq(183956, 62656);					-- Invitation: Choofa

-----------------
-- PATCH 9.0.5 --
-----------------
ihqt(185473, 63667);				-- Soulforger's Tools
ihqt(185632, 63668);				-- Intact Rune Codex
ihqt(185351, 63641);				-- Rune Codex Page: Forging
ihqt(185352, 63642);				-- Rune Codex Page: Souls
ihqt(185353, 63643);				-- Rune Codex Page: Binding

-----------------
-- PATCH 9.1.0 --
-----------------
iq(186453, 64061);					-- Vault Anima Tracker
iq(186722, 64027);					-- Treatise: The Study of Anima and Harnessing Every Drop
iq(186721, 64366);					-- Treatise: Relics Abound in the Shadowlands
iq(187145, 64307);					-- Treatise: Recognizing Stygia and its Uses
iq(187706, 64828);					-- Treatise: Bonds of Stygia in Mortals
iq(187138, 64303);					-- Research Report: First Alloys
iq(187136, 64367);					-- Research Report: Relic Examination Techniques
iq(186716, 64348);					-- Research Report: Ancient Shrines
iq(186714, 64339);					-- Research Report: All-Seeing Crystal
iq(186717, 64300);					-- Research Report: Adaptive Alloys
iq(185965, 63893);					-- Memories of Sunless Skies
iq(181442, 61458);					-- Visions of Sire Denathrius
is(0, 354466);						-- Path of the Ascendant
is(0, 354462);						-- Path of the Courageous
is(0, 354464);						-- Path of the Misty Forest
is(0, 354463);						-- Path of the Plagued
is(0, 354468);						-- Path of the Scheming Loa
is(0, 354465);						-- Path of the Sinful Soul
is(0, 354469);						-- Path of the Stone Warden
is(0, 354467);						-- Path of the Undefeated

-----------------
-- PATCH 9.1.5 --
-----------------
iq(187933, 65058, DRUID);			-- Mark of the Duskwing Raven
iq(187887, 65048, DRUID);			-- Mark of the Gloomstalker Dredbat
iq(187934, 65061, DRUID);			-- Mark of the Midnight Runestag
iq(187931, 65059, DRUID);			-- Mark of the Regal Dredbat
iq(187936, 65062, DRUID);			-- Mark of the Sable Ardenmoth
iq(187888, 64987, DRUID);			-- Mark of the Shimmering Ardenmoth
iq(187884, 64986, DRUID);			-- Mark of the Twilight Runestag
iq(190184, 65623);					-- Incense of Infinity

-----------------
-- PATCH 9.2.0 --
-----------------
iq(190640, 65694);					-- Font of Ephemeral Power
iq(190956, 70705);					-- Decanter of Untapped Potential
iq(190234, 65617);					-- Enlightened Portal Research
iq(188793, 65282);					-- Improvised Cypher Analysis Tool
is(0, 367416);						-- Path of the Streetwise Merchant

-----------------
-- PATCH 9.2.5 --
-----------------
is(0, 373262);						-- Path of the Fallen Guardian
is(0, 373274);						-- Path of the Scrappy Prince
is(0, 373192);						-- Path of the First Ones
is(0, 373190);						-- Path of the Sire
is(0, 373191);						-- Path of the Tormented Soul

------------------
-- PATCH 10.0.0 --
------------------
is(0, 393279);						-- Path of Arcane Secrets
is(0, 393764);						-- Path of Proven Worth
is(0, 393256);						-- Path of the Clutch Defender
is(0, 393273);						-- Path of the Draconic Diploma
is(0, 393766);						-- Path of the Grand Magistrix
is(0, 393276);						-- Path of the Obsidian Hoard
is(0, 393267);						-- Path of the Rotting Woods
is(0, 393283);						-- Path of the Titanic Reservoir
is(0, 393222);						-- Path of the Watcher's Legacy
is(0, 393262);						-- Path of the Windswept Plains

------------------
-- PATCH 10.0.2 --
------------------
iq(201791, 72094, HUNTER);			-- How to Train a Dragonkin
is(0, 390631, HUNTER);				-- Ottuk Taming
is(200205 ,391622, MAGE);			-- Tome of Polymorph: Duck
iq(205954, 76017);					-- Three-Dimensional Compass
iq(198854, 70409);					-- Archeologist Artifact Notes
iq(199069, 70538);					-- Yennu's Map
iq(195453, 67718);					-- Ludo's Stash Map
ihqt(201282, 71925);				-- Ancient Tailor's Diagrams
ihqt(201289, 71924);				-- Ancient Skinner's Notes
ihqt(201280, 71920);				-- Ancient Scribe's Runic Drawings
ihqt(201288, 71923);				-- Ancient Miner's Notes
ihqt(201286, 71922);				-- Ancient Leatherworker's Diagrams
ihqt(201285, 71921);				-- Ancient Jeweler's Illustrations
ihqt(201287, 71919);				-- Ancient Herbalist's Notes
ihqt(201284, 71918);				-- Ancient Engineer's Scribblings
ihqt(201283, 71917);				-- Ancient Enchanter's Research
ihqt(201279, 71916);				-- Ancient Blacksmith's Diagrams
ihqt(201281, 71915);				-- Ancient Alchemist's Research
ihqt(201271, 71914);				-- Rare Tailor's Diagrams
ihqt(201278, 71913);				-- Rare Skinner's Notes
ihqt(201269, 71909);				-- Rare Scribe's Runic Drawings
ihqt(201277, 71912);				-- Rare Miner's Notes
ihqt(201275, 71911);				-- Rare Leatherworker's Diagrams
ihqt(201274, 71910);				-- Rare Jeweler's Illustrations
ihqt(201276, 71908);				-- Rare Herbalist's Notes
ihqt(201273, 71907);				-- Rare Engineer's Scribblings
ihqt(201272, 71906);				-- Rare Enchanter's Research
ihqt(201268, 71905);				-- Rare Blacksmith's Diagrams
ihqt(201270, 71904);				-- Rare Alchemist's Research
ihqt(200975, 71903);				-- Dusty Tailor's Diagrams
ihqt(200982, 71902);				-- Dusty Skinner's Notes
ihqt(200973, 71898);				-- Dusty Scribe's Runic Drawings
ihqt(200981, 71901);				-- Dusty Miner's Notes
ihqt(200979, 71900);				-- Dusty Leatherworker's Diagrams
ihqt(200978, 71899);				-- Dusty Jeweler's Illustrations
ihqt(200980, 71897);				-- Dusty Herbalist's Notes
ihqt(200977, 71896);				-- Dusty Engineer's Scribblings
ihqt(200976, 71895);				-- Dusty Enchanter's Research
ihqt(200972, 71894);				-- Dusty Blacksmith's Diagrams
ihqt(200974, 71893);				-- Dusty Alchemist's Research
iq(200738, 72021);					-- Onyx Gem Cluster Map
iq(198083, 69996);					-- Expedition Supply Kit
iq(199068, 70537);					-- Time-Lost Memo
iq(199065, 70534);					-- Sorrowful Letter
iq(199062, 70528);					-- Ruby Gem Cluster Map
iq(199067, 70536);					-- Precious Plans
iq(194540, 67046);					-- Nokhud Armorer's Notes
iq(199066, 70535);					-- Letter of Caution
iq(198843, 70392);					-- Emerald Gardens Explorer's Notes
iq(198852, 70407);					-- Bear Termination Orders
iq(199061, 70527);					-- A Guide to Rare Fish
iq(194095, 71052);					-- Ohuna Companion Color: Sepia
iq(194088, 71049);					-- Ohuna Companion Color: Dark
iq(194087, 71051);					-- Ohuna Companion Color: Red
iq(193205, 71050);					-- Ohuna Companion Color: Brown
iq(194090, 71047);					-- Bakar Companion Color: White
iq(194089, 71046);					-- Bakar Companion Color: Orange
iq(194091, 71048);					-- Bakar Companion Color: Golden Brown
iq(194093, 71045);					-- Bakar Companion Color: Brown
iq(194094, 71044);					-- Bakar Companion Color: Black
iq(199844, 70796);					-- Serevite Harpoon Head
iq(199846, 70798);					-- Seavine Harpoon Rope
iq(199697, 67140);					-- Polished Basalt Bracelet
iq(199696, 67141);					-- Iskaaran Ice Axe
iq(199698, 70794);					-- Irontree Harpoon Handle
iq(199850, 70802);					-- Imbu Knot
iq(199694, 75642);					-- Flying Fish Bone Charm
iq(199848, 70800);					-- Draconium Net Weights

------------------
-- PATCH 10.1.0 --
------------------
ihqt(205355, 75757);				-- Niffen Notebook of Tailoring Knowledge
ihqt(205357, 75760);				-- Niffen Notebook of Skinning Knowledge
ihqt(205356, 75758);				-- Niffen Notebook of Mining Knowledge
ihqt(205350, 75751);				-- Niffen Notebook of Leatherworking Knowledge
ihqt(205348, 75754);				-- Niffen Notebook of Jewelcrafting Knowledge
ihqt(205354, 75761);				-- Niffen Notebook of Inscription Knowledge
ihqt(205358, 75753);				-- Niffen Notebook of Herbalism Knowledge
ihqt(205349, 75759);				-- Niffen Notebook of Engineering Knowledge
ihqt(205351, 75752);				-- Niffen Notebook of Enchanting Knowledge
ihqt(205352, 75755);				-- Niffen Notebook of Blacksmithing Knowledge
ihqt(205353, 75756);				-- Niffen Notebook of Alchemy Knowledge
ihqt(205431, 75837);				-- Bartered Tailoring Notes
ihqt(205433, 75838);				-- Bartered Skinning Notes
ihqt(205432, 75839);				-- Bartered Mining Notes
ihqt(205426, 75840);				-- Bartered Leatherworking Notes
ihqt(205424, 75841);				-- Bartered Jewelcrafting Notes
ihqt(205430, 75842);				-- Bartered Inscription Notes
ihqt(205434, 75843);				-- Bartered Herbalism Notes
ihqt(205425, 75844);				-- Bartered Engineering Notes
ihqt(205427, 75845);				-- Bartered Enchanting Notes
ihqt(205428, 75846);				-- Bartered Blacksmithing Notes
ihqt(205429, 75847);				-- Bartered Alchemy Notes
ihqt(205442, 75858);				-- Bartered Tailoring Journal
ihqt(205444, 75857);				-- Bartered Skinning Journal
ihqt(205443, 75856);				-- Bartered Mining Journal
ihqt(205437, 75855);				-- Bartered Leatherworking Journal
ihqt(205435, 75854);				-- Bartered Jewelcrafting Journal
ihqt(205441, 75853);				-- Bartered Inscription Journal
ihqt(205445, 75852);				-- Bartered Herbalism Journal
ihqt(205436, 75851);				-- Bartered Engineering Journal
ihqt(205438, 75850);				-- Bartered Enchanting Journal
ihqt(205439, 75849);				-- Bartered Blacksmithing Journal
ihqt(205440, 75848);				-- Bartered Alchemy Journal
iq(205451, 75866);					-- Flawless Crystal Scale
is(0, 410074);						-- Path of Festering Rot
is(0, 410071);						-- Path of the Freebooter
is(0, 410078);						-- Path of the Earth-Warder
is(0, 410080);						-- Path of Wind's Domain

------------------
-- PATCH 10.1.5 --
------------------
-- #IF AFTER 10.1.5
iq(206473, 76307);					-- Makeshift Grappling Hook
-- #ENDIF
--- Imp ---
iq(207178, 76743, WARLOCK);			-- Grimoire of the Darkfire Imp
iq(207295, 76744, WARLOCK);			-- Grimoire of the Dreadfire Imp
iq(129018, 76369, WARLOCK);			-- Grimoire of the Fel Imp
iq(207297, 76746, WARLOCK);			-- Grimoire of the Felblaze Imp
iq(207294, 76747, WARLOCK);			-- Grimoire of the Felfrost Imp
iq(207114, 76742, WARLOCK);			-- Grimoire of the Fiendish Imp
iq(207111, 76737, WARLOCK);			-- Grimoire of the Hellfire Fel Imp
iq(207296, 76745, WARLOCK);			-- Grimoire of the Netherbound Imp
iq(207113, 76741, WARLOCK);			-- Grimoire of the Trickster Fel Imp
iq(207112, 76740, WARLOCK);			-- Grimoire of the Void-Touched Fel Imp
--- Voidwalker ---
iq(139311, 76375, WARLOCK);			-- Grimoire of the Voidlord
--- Succubus ---
iq(147117, 76377, WARLOCK);			-- Orb of the Fel Temptress
iq(147119, 76372, WARLOCK);			-- Grimoire of the Shadow Succubus
iq(139310, 76373, WARLOCK);			-- Grimoire of the Shivarra
--- Felhunter ---
iq(208051, 77180, WARLOCK);			-- Grimoire of the Antoran Felhunter
iq(208052, 77181, WARLOCK);			-- Grimoire of the Voracious Felmaw
iq(208050, 77183, WARLOCK);			-- Grimoire of the Xorothian Felhunter
iq(208048, 77182, WARLOCK);			-- Ritual of the Voidmaw Felhunter
--- Felguard ---
iq(139315, 76376, WARLOCK);			-- Grimoire of the Wrathguard
--- Infernal ---
iq(139314, 76370, WARLOCK);			-- Grimoire of the Abyssal
-- 77184 Probably Normal Felhunter
--- NYI ---
iq(139313, nil, WARLOCK);			-- Grimoire of the Terrorguard

------------------
-- PATCH 10.2.0 --
------------------
iq(210645, 78479, DRUID);			-- Feather of Friends
iq(210754, 78527, DRUID);			-- Feather of the Blazing Somnowl
iq(211280, 78525, DRUID);			-- Feather of the Smoke Red Moon
iq(210735, 78523, DRUID);			-- Mark of the Auric Dreamstag
iq(211081, 78514, DRUID);			-- Mark of the Auroral Dreamtalon
iq(211080, 78512, DRUID);			-- Mark of the Boreal Dreamtalon
iq(210683, 78513, DRUID);			-- Mark of the Dreamtalon Matriarch
iq(210669, 78507, DRUID);			-- Mark of the Evergreen Dreamsaber
iq(210751, 78528, DRUID);			-- Mark of the Hibernating Runebear
iq(210650, 78503, DRUID);			-- Mark of the Keen-Eyed Dreamsaber
iq(210738, 78519, DRUID);			-- Mark of the Loamy Umbraclaw
iq(210731, 78522, DRUID);			-- Mark of the Lush Dreamstag
iq(210674, 78511, DRUID);			-- Mark of the Sable Dreamtalon
iq(210535, 78448, DRUID);			-- Mark of the Slumbering Somnowl
iq(210736, 78524, DRUID);			-- Mark of the Smoldering Dreamstag
iq(210739, 78520, DRUID);			-- Mark of the Snowy Umbraclaw
iq(210684, 78515, DRUID);			-- Mark of the Thriving Dreamtalon
iq(210647, 78481, DRUID);			-- Mark of the Umbramane
iq(210729, 78517, DRUID);			-- Mark of the Verdant Bristlebruin
iq(210728, 78521, DRUID);			-- Moon-Blessed Claw
iq(210727, 78518, DRUID);			-- Pollenfused Bristlebruin Fur Sample
iq(210753, 78516, DRUID);			-- Scale of the Prismatic Whiskerfish
iq(211314, 78842, HUNTER);			-- Cinder of Companionship
is(0, 424153);						-- Path of Ancient Horrors
is(0, 424167);						-- Path of Heart's Bane
is(0, 424187);						-- Path of the Golden Tomb
is(0, 424163);						-- Path of the Nightmare Lord
is(0, 424142);						-- Path of the Tidehunter
is(0, 424197);						-- Path of Twisted Time

------------------
-- PATCH 10.2.5 --
------------------
iq(213016, 79457, WARLOCK);			-- Grimoire of the Abyssal Darkglare
iq(212750, 79359, WARLOCK);			-- Grimoire of the Ancient Observer
iq(212983, 79443, WARLOCK);			-- Grimoire of the Blasted Observer
iq(212779, 79374, WARLOCK);			-- Grimoire of the Bloodrage Tyrant
iq(212991, 79447, WARLOCK);			-- Grimoire of the Dire Observer
iq(213015, 79456, WARLOCK);			-- Grimoire of the Eredathian Darkglare
iq(212780, 79375, WARLOCK);			-- Grimoire of the Felbrute Tyrant
iq(212989, 79446, WARLOCK);			-- Grimoire of the Mana-Gorged Observer
iq(212783, 79376, WARLOCK);			-- Grimoire of the Netherwalk Tyrant
iq(212993, 79449, WARLOCK);			-- Grimoire of the Plagued Observer
iq(213017, 79458, WARLOCK);			-- Grimoire of the Riftsmolder Darkglare
iq(212778, 79373, WARLOCK);			-- Grimoire of the Vile Tyrant
iq(212995, 79450, WARLOCK);			-- Grimoire of the Whispering Observer
iq(213014, 79455, WARLOCK);			-- Grimoire of the Xorothian Darkglare
iq(212984, 79444, WARLOCK);			-- Grimoire of the Zealous Observer

------------------
-- PATCH 10.2.6 --
------------------
iq(216907, 80093);					-- A Tiny Plumed Tricorne
iq(216890, 80083);					-- Black Duck Disguise
iq(216897, 80084);					-- Brown Duck Disguise
iq(216898, 80085);					-- Mallard Duck Disguise
iq(216900, 80087);					-- Pink Duck Disguise
iq(216901, 80088);					-- White Duck Disguise
iq(216902, 80089);					-- Yellow Duck Disguise
is(0, 432257);						-- Path of the Bitter Legacy
is(0, 432254);						-- Path of the Primal Prison
is(0, 432258);						-- Path of the Scorching Dream

------------------
-- PATCH 11.0.0 --
------------------
is(0, 445416);						-- Path of Nerubian Ascension
is(0, 445414);						-- Path of the Arathi Flagship
is(0, 445418);						-- Path of the Besieged Harbor [A]
is(0, 464256);						-- Path of the Besieged Harbor [H]
is(0, 445269);						-- Path of the Corrupted Foundry
is(0, 445443);						-- Path of the Fallen Stormriders
is(0, 445440);						-- Path of the Flaming Brewery
is(0, 445444);						-- Path of the Light's Reverence
is(0, 445417);						-- Path of the Ruined City
is(0, 445424);						-- Path of the Twilight Fortress
is(0, 445441);						-- Path of the Warding Candles

------------------
-- PATCH 11.0.2 --
------------------
ihqt(224055, 82614);				-- A Rocky Start
ihqt(224036, 82634);				-- And That's A Web-Wrap!
iq(224553, 82998);					-- Beledar's Attunement
ihqt(224052, 82632);				-- Clocks, Gears, Sprockets, and Legs
iq(228944, 84690);					-- Crypt Lord's Severed Thread
ihqt(225237, 83254);				-- Echoing Fragment: Azj-Kahet
ihqt(225218, 83249);				-- Echoing Fragment: Hallowfall
ihqt(225236, 83252);				-- Echoing Fragment: Isle of Dorn
ihqt(225219, 83251);				-- Echoing Fragment: The Ringing Deeps
ihqt(224053, 82636);				-- Eight Views on Defense against Hostile Runes
ihqt(224054, 82637);				-- Emergent Crystals of the Surface-Dwellers
ihqt(227420, 81147);				-- Exceptional Alchemist's Research
ihqt(227418, 84227);				-- Exceptional Blacksmith's Diagrams
ihqt(227422, 81077);				-- Exceptional Enchanter's Research
ihqt(227423, 84230);				-- Exceptional Engineer's Scribblings
ihqt(227426, 81423);				-- Exceptional Herbalist's Notes
ihqt(227424, 81260);				-- Exceptional Jeweler's Illustrations
ihqt(227425, 80979);				-- Exceptional Leatherworker's Diagrams
ihqt(227427, 81391);				-- Exceptional Miner's Notes
ihqt(227419, 80750);				-- Exceptional Scribe's Runic Drawings
ihqt(227428, 84233);				-- Exceptional Skinner's Notes
ihqt(227421, 80872);				-- Exceptional Tailor's Diagrams
iq(228945, 84691);					-- Executor's Severed Thread
ihqt(227409, 81146);				-- Faded Alchemist's Research
ihqt(227407, 84226);				-- Faded Blacksmith's Diagrams
ihqt(227411, 81076);				-- Faded Enchanter's Research
ihqt(227412, 84229);				-- Faded Engineer's Scribblings
ihqt(227415, 81422);				-- Faded Herbalist's Notes
ihqt(227413, 81259);				-- Faded Jeweler's Illustrations
ihqt(227414, 80978);				-- Faded Leatherworker's Diagrams
ihqt(227416, 81390);				-- Faded Miner's Notes
ihqt(227408, 80749);				-- Faded Scribe's Runic Drawings
ihqt(227417, 84232);				-- Faded Skinner's Notes
ihqt(227410, 80871);				-- Faded Tailor's Diagrams
iq(210826, 76996);					-- Harvestbot Repair Kit
ihqt(224023, 82630);				-- Herbal Embalming Techniques
ihqt(224645, 83058);				-- Jewel-Etched Alchemy Notes
ihqt(224647, 83059);				-- Jewel-Etched Blacksmithing Notes
ihqt(224652, 83060);				-- Jewel-Etched Enchanting Notes
ihqt(224648, 83061);				-- Jewel-Etched Tailoring Notes
ihqt(224653, 83063);				-- Machine-Learned Engineering Notes
ihqt(224654, 83064);				-- Machine-Learned Inscription Notes
ihqt(224651, 83062);				-- Machine-Learned Mining Notes
ihqt(227431, 81148);				-- Pristine Alchemist's Research
ihqt(227429, 84228);				-- Pristine Blacksmith's Diagrams
ihqt(227433, 81078);				-- Pristine Enchanter's Research
ihqt(227434, 84231);				-- Pristine Engineer's Scribblings
ihqt(227437, 81424);				-- Pristine Herbalist's Notes
ihqt(227435, 81261);				-- Pristine Jeweler's Illustrations
ihqt(227436, 80980);				-- Pristine Leatherworker's Diagrams
ihqt(227438, 81392);				-- Pristine Miner's Notes
ihqt(227430, 80751);				-- Pristine Scribe's Runic Drawings
ihqt(227439, 84234);				-- Pristine Skinner's Notes
ihqt(227432, 80873);				-- Pristine Tailor's Diagrams
iq(229195, 84006);					-- Queen's Pheromone (8.8 Thousand)
ihqt(224038, 82631);				-- Smithing After Saronite
iq(228943, 84689);					-- Spymaster's Severed Thread
ihqt(224024, 82633);				-- Theories of Bodily Transmutation, Chapter 8
is(227710, 460392, MAGE);			-- Tome of Polymorph: Mosswool
ihqt(224056, 82626);				-- Uses for Leftover Husks (After You Take Them Apart)
ihqt(224007, 82596);				-- Uses for Leftover Husks (How to Take Them Apart)
ihqt(224656, 83066);				-- Void-Lit Herbalism Notes
ihqt(224655, 83065);				-- Void-Lit Jewelcrafting Notes
ihqt(224658, 83068);				-- Void-Lit Leatherworking Notes
ihqt(224657, 83067);				-- Void-Lit Skinning Notes
iq(228946, 84693);					-- Weaver's Lair Profession Table
ihqt(224050, 82635);				-- Web Sparkles: Pretty and Powerful

-- Curio
-- No longer considering these collectible in any way since the tracking was wonky and unreliable and they have related Achievements anyway
-- is(modItemId(225903, nil, 11265), 446835);	-- Amorphous Relic [Rank 1]
-- is(modItemId(225903, nil, 11266), 459052);	-- Amorphous Relic [Rank 2]
-- is(modItemId(225903, nil, 11267), 459056);	-- Amorphous Relic [Rank 3]
-- is(modItemId(225903, nil, 11268), 459061);	-- Amorphous Relic [Rank 4]
-- is(modItemId(225897, nil, 11235), 456498);	-- Brute Force Idol [Rank 1]
-- is(modItemId(225897, nil, 11236), 458464);	-- Brute Force Idol [Rank 2]
-- is(modItemId(225897, nil, 11237), 458469);	-- Brute Force Idol [Rank 3]
-- is(modItemId(225897, nil, 11238), 458474);	-- Brute Force Idol [Rank 4]
-- is(modItemId(225902, nil, 11260), 432842);	-- Idol of Final Will [Rank 1]
-- is(modItemId(225902, nil, 11261), 459029);	-- Idol of Final Will [Rank 2]
-- is(modItemId(225902, nil, 11262), 459034);	-- Idol of Final Will [Rank 3]
-- is(modItemId(225902, nil, 11263), 459039);	-- Idol of Final Will [Rank 4]
-- is(modItemId(225898, nil, 11240), 439668);	-- Idol of the Earthmother [Rank 1]
-- is(modItemId(225898, nil, 11241), 458919);	-- Idol of the Earthmother [Rank 2]
-- is(modItemId(225898, nil, 11242), 458924);	-- Idol of the Earthmother [Rank 3]
-- is(modItemId(225898, nil, 11243), 458928);	-- Idol of the Earthmother [Rank 4]
-- is(modItemId(225906, nil, 11280), 455512);	-- Lifeless Necrotic Relic [Rank 1]
-- is(modItemId(225906, nil, 11281), 459096);	-- Lifeless Necrotic Relic [Rank 2]
-- is(modItemId(225906, nil, 11282), 459101);	-- Lifeless Necrotic Relic [Rank 3]
-- is(modItemId(225906, nil, 11283), 459106);	-- Lifeless Necrotic Relic [Rank 4]
-- is(modItemId(225900, nil, 11250), 439674);	-- Light-Touched Idol [Rank 1]
-- is(modItemId(225900, nil, 11251), 458968);	-- Light-Touched Idol [Rank 2]
-- is(modItemId(225900, nil, 11252), 458971);	-- Light-Touched Idol [Rank 3]
-- is(modItemId(225900, nil, 11253), 458974);	-- Light-Touched Idol [Rank 4]
-- is(modItemId(225905, nil, 11275), 439690);	-- Olden Seeker Relic [Rank 1]
-- is(modItemId(225905, nil, 11276), 459087);	-- Olden Seeker Relic [Rank 2]
-- is(modItemId(225905, nil, 11277), 459089);	-- Olden Seeker Relic [Rank 3]
-- is(modItemId(225905, nil, 11278), 459091);	-- Olden Seeker Relic [Rank 4]
-- is(modItemId(218129, nil, 11230), 445260);	-- Porcelain Arrowhead Idol [Rank 1]
-- is(modItemId(218129, nil, 11231), 458443);	-- Porcelain Arrowhead Idol [Rank 2]
-- is(modItemId(218129, nil, 11232), 458447);	-- Porcelain Arrowhead Idol [Rank 3]
-- is(modItemId(218129, nil, 11233), 458450);	-- Porcelain Arrowhead Idol [Rank 4]
-- is(modItemId(229353, nil, 12008), 464662);	-- Rage-Filled Idol [Rank 1]
-- is(modItemId(229353, nil, 12009), 464693);	-- Rage-Filled Idol [Rank 2]
-- is(modItemId(229353, nil, 12010), 464694);	-- Rage-Filled Idol [Rank 3]
-- is(modItemId(229353, nil, 12011), 464695);	-- Rage-Filled Idol [Rank 4]
-- is(modItemId(225907, nil, 11285), 455602);	-- Relic of Sentience [Rank 1]
-- is(modItemId(225907, nil, 11286), 459108);	-- Relic of Sentience [Rank 2]
-- is(modItemId(225907, nil, 11287), 459112);	-- Relic of Sentience [Rank 3]
-- is(modItemId(225907, nil, 11288), 459116);	-- Relic of Sentience [Rank 4]
-- is(modItemId(225908, nil, 11290), 455601);	-- Relicblood of Zekvir [Rank 1]
-- is(modItemId(225908, nil, 11291), 459138);	-- Relicblood of Zekvir [Rank 2]
-- is(modItemId(225908, nil, 11292), 459144);	-- Relicblood of Zekvir [Rank 3]
-- is(modItemId(225908, nil, 11293), 459150);	-- Relicblood of Zekvir [Rank 4]
-- is(modItemId(225901, nil, 11255), 439688);	-- Streamlined Relic [Rank 1]
-- is(modItemId(225901, nil, 11256), 459124);	-- Streamlined Relic [Rank 2]
-- is(modItemId(225901, nil, 11257), 459128);	-- Streamlined Relic [Rank 3]
-- is(modItemId(225901, nil, 11258), 459132);	-- Streamlined Relic [Rank 4]
-- is(modItemId(225904, nil, 11270), 455597);	-- Time Lost Relic [Rank 1]
-- is(modItemId(225904, nil, 11271), 459068);	-- Time Lost Relic [Rank 2]
-- is(modItemId(225904, nil, 11272), 459072);	-- Time Lost Relic [Rank 3]
-- is(modItemId(225904, nil, 11273), 459076);	-- Time Lost Relic [Rank 4]
-- is(modItemId(225899, nil, 11245), 439669);	-- Unbreakable Iron Idol [Rank 1]
-- is(modItemId(225899, nil, 11246), 458943);	-- Unbreakable Iron Idol [Rank 2]
-- is(modItemId(225899, nil, 11247), 458949);	-- Unbreakable Iron Idol [Rank 3]
-- is(modItemId(225899, nil, 11248), 458955);	-- Unbreakable Iron Idol [Rank 4]

------------------
-- PATCH 11.0.5 --
------------------
iq(230264, 85224);	-- Bronze Celebration Titles: Broken Isles Enthusiast
iq(230261, 85221);	-- Bronze Celebration Titles: Cataclysm Enthusiast
iq(230258, 85218);	-- Bronze Celebration Titles: Classic Enthusiast
iq(230263, 85223);	-- Bronze Celebration Titles: Draenor Enthusiast
iq(230268, 85228);	-- Bronze Celebration Titles: Dragon Isles Enthusiast
iq(229826, 85015);	-- Bronze Celebration Titles: Grizzly Hills Hiker
iq(231833, 85517);	-- Bronze Celebration Titles: Karazhan Graduate
iq(230266, 85226);	-- Bronze Celebration Titles: Kul Tiras Enthusiast
iq(231832, 85516);	-- Bronze Celebration Titles: Molten Core Prospector
iq(230260, 85220);	-- Bronze Celebration Titles: Northrend Enthusiast
iq(230259, 85219);	-- Bronze Celebration Titles: Outland Enthusiast
iq(230262, 85222);	-- Bronze Celebration Titles: Pandaria Enthusiast
iq(229827, 85014);	-- Bronze Celebration Titles: Plaguelands Survivor
iq(230267, 85227);	-- Bronze Celebration Titles: Shadowlands Enthusiast
iq(230265, 85225);	-- Bronze Celebration Titles: Zuldazar Enthusiast

------------------
-- PATCH 11.0.7 --
------------------
iq(233500, 86379);	-- Crimson Snapdragon Treat
iq(233495, 86375);	-- Inky Snapdragon Treat
iq(233497, 86376);	-- Kaja'Cola-braised Snapdragon Treat
iq(233494, 86374);	-- Muddy Snapdragon Treat
iq(233499, 86378);	-- Royal Snapdragon Treat
iq(233501, 86380);	-- Sandy Snapdragon Treat
iq(233498, 86377);	-- Storminfused Snapdragon Treat
iq(219291, 81619);	-- Puntable Baby Greench
iq(219286, 81617);	-- Puntable Globe Yeti
iq(234127, 86423);	-- Puntable Grumpling
iq(219255, 81616);	-- Puntable Rotten Little Helper
iq(219289, 81618);	-- Puntable Tiny Snowman

------------------
-- PATCH 11.1.0 --
------------------
ihqt(234745, 86598);	-- Bilgewater's Trove (Honored)
ihqt(235258, 86748);	-- Bilgewater's Trove (Revered)
--ihqt(235259, XXX);	-- Bilgewater's Trove (Exalted)
ihqt(234744, 86750);	-- Blackwater's Trove (Honored)
ihqt(235260, 86751);	-- Blackwater's Trove (Revered)
--ihqt(235261, 86752?);	-- Blackwater's Trove (Exalted)
iq(235037, 86630);		-- Crumpled Schematic: Wormhole Generator: Undermine
is(0, 467553);			-- Path of the Azerite Refinery [A]
is(0, 467555);			-- Path of the Azerite Refinery [H]
is(0, 1216786);			-- Path of the Circuit Breaker
ihqt(235262, 86753);	-- Steamwheedle's Trove (Honored)
--ihqt(234743, XXX);	-- Steamwheedle's Trove (Revered)
--ihqt(235263, 86596);	-- Steamwheedle's Trove (Exalted)
ihqt(232499, 85734);	-- Undermine Treatise on Alchemy
ihqt(232500, 85735);	-- Undermine Treatise on Blacksmithing
ihqt(232501, 85736);	-- Undermine Treatise on Enchanting
ihqt(232507, 85737);	-- Undermine Treatise on Engineering
ihqt(232503, 85738);	-- Undermine Treatise on Herbalism
ihqt(232508, 85739);	-- Undermine Treatise on Inscription
ihqt(232504, 85740);	-- Undermine Treatise on Jewelcrafting
ihqt(232505, 85741);	-- Undermine Treatise on Leatherworking
ihqt(232509, 85742);	-- Undermine Treatise on Mining
ihqt(232506, 85744);	-- Undermine Treatise on Skinning
ihqt(232502, 85745);	-- Undermine Treatise on Tailoring
ihqt(234746, 86755);	-- Venture Co.'s Trove (Honored)
ihqt(235264, 86756);	-- Venture Co.'s Trove (Revered)
--ihqt(235265, 86757?);	-- Venture Co.'s Trove (Exalted)