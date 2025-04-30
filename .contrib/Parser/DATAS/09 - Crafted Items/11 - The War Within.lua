---------------------------------------------
--    C R A F T A B L E S   M O D U L E    --
---------------------------------------------
-- Simple function for First Craft HQTs
-- ex. FirstCraft(QUESTID, RECIPEID);	-- RECIPE_NAME
local function FirstCraft(questID, recipeID, added, removed)
	local t = hqt(questID, name(HEADERS.Spell, recipeID))
	t.provider = { "s", recipeID };
	if added then
		t.timeline = { added };
	end
	if removed then
		if not added then
			error("Cannot have removed FirstCraft without added")
		end
		t.timeline[#t.timeline + 1] = removed
	end
	return t;
end
local function FirstSkin(questID, creatureID, added, group)
	local t = hqt(questID, name(HEADERS.NPC, creatureID))
	t.provider = { "n", creatureID };
	t.isWeekly = true;
	if added then
		t.timeline = { added };
	end
	if group then
		t.group = { group };
	end
	return t;
end

root(ROOTS.Craftables, expansion(EXPANSION.TWW, bubbleDownSelf({ ["timeline"] = { ADDED_11_0_2 } }, {
	i(ARTISANS_ACUITY),
	i(228338),	-- Soul Sigil I
	i(228339),	-- Soul Sigil II
	i(211296, {	-- Spark of Omens
		["cost"] = {{"i", 211297, 2}},	-- Fractured Spark of Omens
	}),
	i(230906, {	-- Spark of Fortunes
		["cost"] = {{"i", 230905, 2}},	-- Fractured Spark of Fortunes
		["timeline"] = { ADDED_11_1_0 },
	}),
	prof(ALCHEMY, {
		n(DISCOVERY, {
			spell(430345, {	-- Meticulous Experimentation
				i(211958, {	-- Meticulous Experimentation
					r(430595),	-- Draught of Shocking Revelations
					r(430594),	-- Draught of Silent Footfalls
					r(430605),	-- Flask of Alchemical Chaos
					r(430612),	-- Flask of Saving Graces
					r(430601),	-- Flask of Tempered Aggression
					r(430604),	-- Flask of Tempered Mastery
					r(430602),	-- Flask of Tempered Swiftness
					r(430603),	-- Flask of Tempered Versatility
					r(430598),	-- Frontline Potion
					r(430596),	-- Grotesque Vial
					r(430617),	-- Phial of Bountiful Seasons
					r(430614),	-- Phial of Concentrated Ingenuity
					r(430616),	-- Phial of Enhanced Ambidexterity
					r(430615),	-- Phial of Truesight
					r(430600),	-- Potion of the Reborn Cheetah
					r(430597),	-- Potion of Unwavering Focus
					r(430599),	-- Tempered Potion
				}),
			}),
			spell(430315, {	-- Thaumaturgy
				i(211796, {	-- Thaumaturgy
					i(223487),	-- Writhing Transmutagen (PET!)
					r(430618),	-- Mercurial Blessings
					r(449571),	-- Mercurial Herbs
					r(430619),	-- Mercurial Storms
					r(430622),	-- Ominous Call
					r(430623),	-- Ominous Gloom
					r(449572),	-- Ominous Herbs
					r(430621),	-- Volatile Stone
					r(430620),	-- Volatile Weaving
				}),
			}),
			spell(427174, {	-- Wild Experimentation
				i(210813,{	-- Wild Experimentation
					r(430591),	-- Algari Mana Potion
					r(430592),	-- Cavedweller's Delight
					r(430345),	-- Meticulous Experimentation
					r(430593),	-- Slumbering Soul Serum
				}),
			}),
		}),
		filter(CONSUMABLES, {
			i(212719, {	-- Algari Flask Cauldron+
				i(212739),	-- Fleeting Flask of Alchemical Chaos+
				i(212745),	-- Fleeting Flask of Saving Graces+
				i(212725),	-- Fleeting Flask of Tempered Aggression+
				i(212735),	-- Fleeting Flask of Tempered Mastery+
				i(212729),	-- Fleeting Flask of Tempered Swiftness+
				i(212732),	-- Fleeting Flask of Tempered Versatility+
			}),
			i(212720, {	-- Algari Flask Cauldron++
				i(212740),	-- Fleeting Flask of Alchemical Chaos++
				i(212746),	-- Fleeting Flask of Saving Graces++
				i(212727),	-- Fleeting Flask of Tempered Aggression++
				i(212736),	-- Fleeting Flask of Tempered Mastery++
				i(212730),	-- Fleeting Flask of Tempered Swiftness++
				i(212733),	-- Fleeting Flask of Tempered Versatility++
			}),
			i(212721, {	-- Algari Flask Cauldron+++
				i(212741),	-- Fleeting Flask of Alchemical Chaos+++
				i(212747),	-- Fleeting Flask of Saving Graces+++
				i(212728),	-- Fleeting Flask of Tempered Aggression+++
				i(212738),	-- Fleeting Flask of Tempered Mastery+++
				i(212731),	-- Fleeting Flask of Tempered Swiftness+++
				i(212734),	-- Fleeting Flask of Tempered Versatility+++
			}),
			i(212239),	-- Algari Mana Potion+
			i(212240),	-- Algari Mana Potion++
			i(212241),	-- Algari Mana Potion+++
			i(212751, {	-- Algari Potion Cauldron+
				i(212942),	-- Fleeting Algari Healing Potion+
				i(212945),	-- Fleeting Algari Mana Potion+
				i(212948),	-- Fleeting Cavedweller's Delight+
				i(212957),	-- Fleeting Draught of Shocking Revelations+
				i(212954),	-- Fleeting Draught of Silent Footfalls+
				i(212960),	-- Fleeting Grotesque Vial+
				i(212966),	-- Fleeting Frontline Potion+
				i(212972),	-- Fleeting Potion of the Reborn Cheetah+
				i(212963),	-- Fleeting Potion of Unwavering Focus+
				i(212951),	-- Fleeting Slumbering Soul Serum+
				i(212969),	-- Fleeting Tempered Potion+
			}),
			i(212752, {	-- Algari Potion Cauldron++
				i(212943),	-- Fleeting Algari Healing Potion++
				i(212946),	-- Fleeting Algari Mana Potion++
				i(212949),	-- Fleeting Cavedweller's Delight++
				i(212958),	-- Fleeting Draught of Shocking Revelations++
				i(212955),	-- Fleeting Draught of Silent Footfalls++
				i(212961),	-- Fleeting Grotesque Vial++
				i(212967),	-- Fleeting Frontline Potion++
				i(212973),	-- Fleeting Potion of the Reborn Cheetah++
				i(212964),	-- Fleeting Potion of Unwavering Focus++
				i(212952),	-- Fleeting Slumbering Soul Serum++
				i(212970),	-- Fleeting Tempered Potion++
			}),
			i(212753, {	-- Algari Potion Cauldron+++
				i(212944),	-- Fleeting Algari Healing Potion+++
				i(212947),	-- Fleeting Algari Mana Potion+++
				i(212950),	-- Fleeting Cavedweller's Delight+++
				i(212959),	-- Fleeting Draught of Shocking Revelations+++
				i(212956),	-- Fleeting Draught of Silent Footfalls+++
				i(212962),	-- Fleeting Grotesque Vial+++
				i(212968),	-- Fleeting Frontline Potion+++
				i(212974),	-- Fleeting Potion of the Reborn Cheetah+++
				i(212965),	-- Fleeting Potion of Unwavering Focus+++
				i(212953),	-- Fleeting Slumbering Soul Serum+++
				i(212971),	-- Fleeting Tempered Potion+++
			}),
			i(211878),	-- Algari Healing Potion+
			i(211879),	-- Algari Healing Potion++
			i(211880),	-- Algari Healing Potion+++
			i(212242),	-- Cavedweller's Delight+
			i(212243),	-- Cavedweller's Delight++
			i(212244),	-- Cavedweller's Delight+++
			i(212251),	-- Draught of Shocking Revelations+
			i(212252),	-- Draught of Shocking Revelations++
			i(212253),	-- Draught of Shocking Revelations+++
			i(212248),	-- Draught of Silent Footfalls+
			i(212249),	-- Draught of Silent Footfalls++
			i(212250),	-- Draught of Silent Footfalls+++
			i(212281),	-- Flask of Alchemical Chaos+
			i(212282),	-- Flask of Alchemical Chaos+
			i(212283),	-- Flask of Alchemical Chaos+++
			i(212299),	-- Flask of Saving Graces+
			i(212300),	-- Flask of Saving Graces++
			i(212301),	-- Flask of Saving Graces+++
			i(212269),	-- Flask of Tempered Aggression+
			i(212270),	-- Flask of Tempered Aggression++
			i(212271),	-- Flask of Tempered Aggression+++
			i(212278),	-- Flask of Tempered Mastery+
			i(212279),	-- Flask of Tempered Mastery++
			i(212280),	-- Flask of Tempered Mastery+++
			i(212272),	-- Flask of Tempered Swiftness+
			i(212273),	-- Flask of Tempered Swiftness++
			i(212274),	-- Flask of Tempered Swiftness+++
			i(212275),	-- Flask of Tempered Versatility+
			i(212276),	-- Flask of Tempered Versatility++
			i(212277),	-- Flask of Tempered Versatility+++
			i(212260),	-- Frontline Potion+
			i(212261),	-- Frontline Potion++
			i(212262),	-- Frontline Potion+++
			i(212254),	-- Grotesque Vial+
			i(212255),	-- Grotesque Vial++
			i(212256),	-- Grotesque Vial+++
			i(212314),	-- Phial of Bountiful Seasons+
			i(212315),	-- Phial of Bountiful Seasons++
			i(212316),	-- Phial of Bountiful Seasons+++
			i(212305),	-- Phial of Concentrated Ingenuity+
			i(212306),	-- Phial of Concentrated Ingenuity++
			i(212307),	-- Phial of Concentrated Ingenuity+++
			i(212311),	-- Phial of Enhanced Ambidexterity+
			i(212312),	-- Phial of Enhanced Ambidexterity++
			i(212313),	-- Phial of Enhanced Ambidexterity+++
			i(212308),	-- Phial of Truesight+
			i(212309),	-- Phial of Truesight++
			i(212310),	-- Phial of Truesight+++
			i(212266),	-- Potion of the Reborn Cheetah+
			i(212267),	-- Potion of the Reborn Cheetah++
			i(212268),	-- Potion of the Reborn Cheetah+++
			i(212257),	-- Potion of Unwavering Focus+
			i(212258),	-- Potion of Unwavering Focus++
			i(212259),	-- Potion of Unwavering Focus+++
			i(212245),	-- Slumbering Soul Serum+
			i(212246),	-- Slumbering Soul Serum++
			i(212247),	-- Slumbering Soul Serum+++
			i(212263),	-- Tempered Potion+
			i(212264),	-- Tempered Potion++
			i(212265),	-- Tempered Potion+++
			i(212289),	-- Vicious Flask of Classical Spirits
			i(212292),	-- Vicious Flask of Honor
			i(212298),	-- Vicious Flask of the Wrecking Ball
		}),
		n(FIRST_CRAFTS_HEADER, sharedData({
			["requireSkill"] = ALCHEMY,
		},{
			-- Alchemy Essentials
			FirstCraft(81132, 433087);	-- Formulated Courage
			FirstCraft(81090, 430315);	-- Thaumaturgy
			FirstCraft(78604, 427174);	-- Wild Experimentation
			-- Reagents
			FirstCraft(84492, 462121);	-- Bubbling Mycobloom Culture
			FirstCraft(81129, 432204);	-- Harmonious Horticulture
			FirstCraft(84493, 462122);	-- Petal Powder
			-- Basic Concoctions
			FirstCraft(81095, 430590);	-- Algari Healing Potion
			FirstCraft(81096, 430591);	-- Algari Mana Potion
			FirstCraft(81097, 430592);	-- Cavedweller's Delight
			FirstCraft(81098, 430593);	-- Slumbering Soul Serum
			-- Potions
			FirstCraft(81100, 430595);	-- Draught of Shocking Revelations
			FirstCraft(81099, 430594);	-- Draught of Silent Footfalls
			FirstCraft(81103, 430598);	-- Frontline Potion
			FirstCraft(81101, 430596);	-- Grotesque Vial
			FirstCraft(81105, 430600);	-- Potion of the Reborn Cheetah
			FirstCraft(81102, 430597);	-- Potion of Unwavering Focus
			FirstCraft(81104, 430599);	-- Tempered Potion
			-- Flasks
			FirstCraft(81110, 430605);	-- Flask of Alchemical Chaos
			FirstCraft(81116, 430612);	-- Flask of Saving Graces
			FirstCraft(81109, 430604);	-- Flask of Tempered Mastery
			FirstCraft(81108, 430603);	-- Flask of Tempered Versatility
			FirstCraft(81106, 430601);	-- Flask of Tempered Aggression
			FirstCraft(81107, 430602);	-- Flask of Tempered Swiftness
			-- Vicious Flasks
			FirstCraft(81112, 430607);	-- Vicious Flask of Classical Spirits
			FirstCraft(81113, 430608);	-- Vicious Flask of Honor
			FirstCraft(81115, 430611);	-- Vicious Flask of Wrecking Ball
			-- Phials
			FirstCraft(81121, 430617);	-- Phial of Bountiful Seasons
			FirstCraft(81118, 430614);	-- Phial of Concentrated Ingenuity
			FirstCraft(81120, 430616);	-- Phial of Enhanced Ambidexterity
			FirstCraft(81119, 430615);	-- Phial of Truesight
			-- Transmutations
			FirstCraft(81145, 449938);	-- Gleaming Chaos
			FirstCraft(81128, 430624);	-- Gleaming Glory (Blasphemite)
			FirstCraft(81142, 449573);	-- Mercurial Coalescence
			FirstCraft(81143, 449574);	-- Ominous Coalescence
			FirstCraft(81144, 449575);	-- Volatile Coalescence
			FirstCraft(81122, 430618);	-- Mercurial Blessings
			FirstCraft(81140, 449571);	-- Mercurial Herbs
			FirstCraft(81123, 430619);	-- Mercurial Storms
			FirstCraft(81126, 430622);	-- Ominous Call
			FirstCraft(81127, 430623);	-- Ominous Gloom
			FirstCraft(81141, 449572);	-- Ominous Herbs
			FirstCraft(81125, 430621);	-- Volatile Stone
			FirstCraft(81124, 430620);	-- Volatile Weaving
			-- Alchemist Stones
			FirstCraft(81092, 427185);	-- Algari Alchemist Stone
			-- Cuauldrons
			FirstCraft(81130, 432962);	-- Algari Flask Cauldron
			FirstCraft(81131, 432963);	-- Algari Potion Cauldron
		})),
		filter(MISC, {
			i(212781),	-- Formulated Courage
		}),
		filter(REAGENTS, {
			i(212514),	-- Blasphemite
			i(228401),	-- Bubbling Mycobloom Culture+
			i(228402),	-- Bubbling Mycobloom Culture++
			i(228403),	-- Bubbling Mycobloom Culture+++
			i(210815),	-- Coreway Catalyst
			i(211805),	-- Gleaming Transmutagen
			i(212563),	-- Harmonious Horticulture+
			i(212564),	-- Harmonious Horticulture++
			i(212565),	-- Harmonious Horticulture+++
			i(211803),	-- Mercurial Transmutagen
			i(211802),	-- Ominous Transmutagen
			i(228404),	-- Petal Powder+
			i(228405),	-- Petal Powder++
			i(228406),	-- Petal Powder+++
			i(211804),	-- Volatile Transmutagen
		}),
		filter(TRINKET_F, {
			i(210816),	-- Algari Alchemist Stone
		}),
	}),
	prof(BLACKSMITHING, {
		n(ARMOR, {
			i(217150),	-- Algari Competitor's Plate Armguards
			i(217143),	-- Algari Competitor's Plate Breatplate
			i(217145),	-- Algari Competitor's Plate Gauntlets
			i(217147),	-- Algari Competitor's Plate Greaves
			i(217146),	-- Algari Competitor's Plate Helm
			i(217148),	-- Algari Competitor's Plate Pauldrons
			i(217144),	-- Algari Competitor's Plate Sabatons
			i(217149),	-- Algari Competitor's Plate Waistguard
			i(222472),	-- Dredger's Developed Breastplate
			i(222474),	-- Dredger's Developed Defender
			i(222479),	-- Dredger's Developed Gauntlets
			i(222473),	-- Dredger's Developed Greatbelt
			i(222475),	-- Dredger's Developed Helm
			i(222476),	-- Dredger's Developed Legplates
			i(222478),	-- Dredger's Developed Pauldrons
			i(222471),	-- Dredger's Developed Sabatons
			i(222477),	-- Dredger's Developed Vambraces
			i(222430),	-- Everforged Breastplate
			i(222437),	-- Everforged Gauntlets
			i(222431),	-- Everforged Greatbelt
			i(222433),	-- Everforged Helm
			i(222434),	-- Everforged Legplates
			i(222436),	-- Everforged Pauldrons
			i(222429),	-- Everforged Sabatons
			i(222435),	-- Everforged Vambraces
			i(222458),	-- Sanctified Steps
		}),
		n(FIRST_CRAFTS_HEADER, sharedData({
			["requireSkill"] = BLACKSMITHING,
		},{
			-- Smelting
			FirstCraft(80492, 450216);	-- Core Alloy
			FirstCraft(80595, 450217);	-- Charged Alloy
			FirstCraft(80596, 450218);	-- Sanctified Alloy
			FirstCraft(80597, 450219);	-- Ironclaw Alloy
			-- Armor
			FirstCraft(80598, 450220);	-- Everforged Sabatons
			FirstCraft(80599, 450221);	-- Everforged Breastplate
			FirstCraft(80600, 450222);	-- Everforged Greatbelt
			FirstCraft(80601, 450223);	-- Everforged Defender
			FirstCraft(80602, 450224);	-- Everforged Helm
			FirstCraft(80603, 450225);	-- Everforged Legplates
			FirstCraft(80604, 450226);	-- Everforged Vambraces
			FirstCraft(80605, 450227);	-- Everforged Pauldrons
			FirstCraft(80606, 450228);	-- Everforged Gauntlets
			FirstCraft(80628, 450250);	-- Siphoning Stiletto
			FirstCraft(80623, 450245);	-- Sanctified Steps
			FirstCraft(80624, 450246);	-- Beledar's Bulwark
			FirstCraft(80636, 450258);	-- Dredger's Plate Sabatons
			FirstCraft(80637, 450259);	-- Dredger's Plate Breastplate
			FirstCraft(80638, 450260);	-- Dredger's Developed Greatbelt
			FirstCraft(80639, 450261);	-- Dredger's Developed Defender
			FirstCraft(80640, 450262);	-- Dredger's Developed Helm
			FirstCraft(80641, 450263);	-- Dredger's Developed Legplates
			FirstCraft(80642, 450264);	-- Dredger's Plate Vambraces
			FirstCraft(80643, 450265);	-- Dredger's Developed Pauldrons
			FirstCraft(80644, 450266);	-- Dredger's Developed Gauntlets
			-- Weapons
			FirstCraft(80607, 450229);	-- Everforged Stabber
			FirstCraft(80608, 450230);	-- Everforged Dagger
			FirstCraft(80609, 450231);	-- Everforged Longsword
			FirstCraft(80611, 450233);	-- Everforged Mace
			FirstCraft(80612, 450234);	-- Everforged Greataxe
			FirstCraft(80610, 450232);	-- Everforged Warglaive
			FirstCraft(80616, 450238);	-- Charged Claymore
			FirstCraft(80620, 450242);	-- Charged Slicers
			FirstCraft(80614, 450236);	-- Charged Runeaxe
			FirstCraft(80615, 450237);	-- Charged Facesmasher
			FirstCraft(80618, 450240);	-- Charged Crusher
			FirstCraft(80613, 450235);	-- Charged Hexsword
			FirstCraft(80617, 450239);	-- Charged Halberd
			FirstCraft(80619, 450241);	-- Charged Invoker
			FirstCraft(80629, 450251);	-- Ironclaw Stiletto
			FirstCraft(80630, 450252);	-- Ironclaw Dirk
			FirstCraft(80631, 450253);	-- Ironclaw Sword
			FirstCraft(80632, 450254);	-- Ironclaw Knuckles
			FirstCraft(80633, 450255);	-- Ironclaw Great Mace
			FirstCraft(80634, 450256);	-- Ironclaw Axe
			FirstCraft(80635, 450257);	-- Ironclaw Great Axe
			-- PVP
			FirstCraft(83296, 455003);	-- Algari Competitor's Greatsword
			FirstCraft(83297, 455004);	-- Algari Competitor's Sword
			FirstCraft(83295, 455002);	-- Algari Competitor's Skewer
			FirstCraft(83293, 455000);	-- Algari Competitor's Shield
			FirstCraft(83292, 454999);	-- Algari Competitor's Scepter
			FirstCraft(83291, 454998);	-- Algari Competitor's Dagger
			FirstCraft(83294, 455001);	-- Algari Competitor's Axe
			FirstCraft(83290, 454997);	-- Algari Competitor's Pickaxe
			FirstCraft(80625, 438914);	-- Algari Competitor's Plate Breastplate
			FirstCraft(80668, 438920);	-- Algari Competitor's Plate Waistguard
			FirstCraft(80626, 438915);	-- Algari Competitor's Plate Sabatons
			FirstCraft(80627, 438916);	-- Algari Competitor's Plate Gauntlets
			FirstCraft(84695, 438917);	-- Algari Competitor's Plate Helm
			FirstCraft(84697, 438919);	-- Algari Competitor's Plate Pauldrons
			FirstCraft(80669, 438921);	-- Algari Competitor's Plate Armguards
			FirstCraft(84696, 438918);	-- Algari Competitor's Plate Greaves
			-- Profession Equipment
			FirstCraft(80645, 450267);	-- Proficient Sickle
			FirstCraft(80646, 450268);	-- Proficient Pickaxe
			FirstCraft(80647, 450269);	-- Proficient Skinning Knife
			FirstCraft(80648, 450270);	-- Proficient Needle Set
			FirstCraft(80649, 450271);	-- Proficient Leatherworker's Knife
			FirstCraft(80650, 450272);	-- Proficient Leatherworker's Toolset
			FirstCraft(80651, 450273);	-- Proficient Blacksmith's Hammer
			FirstCraft(80652, 450274);	-- Proficient Blacksmith's Toolbox
			FirstCraft(80659, 450281);	-- Artisan Blacksmith's Hammer
			FirstCraft(80660, 450282);	-- Artisan Blacksmith's Toolbox
			FirstCraft(80655, 450277);  -- Artisan Skinning Knife
			FirstCraft(80654, 450276);  -- Artisan Pickaxe
			FirstCraft(80653, 450275);  -- Artisan Sickle
			FirstCraft(80657, 450279);  -- Artisan Leatherworker's Knife
			FirstCraft(80656, 450278);  -- Artisan Needle Set
			FirstCraft(80658, 450280);  -- Artisan Leatherworker's Toolset
			FirstCraft(80661, 450283);	-- Earthen Master's Hammer
			-- Stonework
			FirstCraft(80663, 450285);	-- Ironclaw Whetstone
			FirstCraft(80664, 450286);	-- Ironclaw Razorstone
			FirstCraft(80665, 450287);	-- Ironclaw Weightstone
			-- Frameworks
			FirstCraft(80662, 450284);	-- Forged Framework
			FirstCraft(80666, 450288);	-- Adjustable Framework
			FirstCraft(80667, 450289);	-- Tempered Framework
			-- Other
			FirstCraft(83398, 450291);	-- Coreforged Repair Hammer
			FirstCraft(83399, 450292);	-- Coreforged Skeleton Key
		})),
		filter(MISC, {
			i(222520),	-- Coreforged Repair Hammer+
			i(222522),	-- Coreforged Repair Hammer++
			i(222521),	-- Coreforged Repair Hammer+++
			i(222523),	-- Coreforged Skeleton Key
			i(225660),	-- Earthen Master's Hammer
			i(224765),	-- Everburning Ignition
			i(222505),	-- Ironclaw Razorstone+
			i(222506),	-- Ironclaw Razorstone++
			i(222507),	-- Ironclaw Razorstone+++
			i(222508),	-- Ironclaw Weightstone+
			i(222509),	-- Ironclaw Weightstone++
			i(222510),	-- Ironclaw Weightstone+++
			i(222502),	-- Ironclaw Whetstone+
			i(222503),	-- Ironclaw Whetstone++
			i(222504),	-- Ironclaw Whetstone+++
		}),
		filter(PROFESSION_EQUIPMENT, {
			i(222494, {["requireSkill"] = BLACKSMITHING}),	-- Artisan Blacksmith's Hammer
			i(222495, {["requireSkill"] = BLACKSMITHING}),	-- Artisan Blacksmith's Toolbox
			i(222492, {["requireSkill"] = LEATHERWORKING}),	-- Artisan Leatherworker's Knife
			i(222493, {["requireSkill"] = LEATHERWORKING, ["collectible"] = false, }),	-- Artisan Leatherworker's Toolset
			i(222491, {["requireSkill"] = TAILORING}),	-- Artisan Needle Set
			i(222489, {["requireSkill"] = MINING}),	-- Artisan Pickaxe
			i(222488, {["requireSkill"] = HERBALISM}),	-- Artisan Sickle
			i(222490, {["requireSkill"] = SKINNING}),	-- Artisan Skinning Knife
			i(222486, {["requireSkill"] = BLACKSMITHING}),	-- Proficient Blacksmith's Hammer
			i(222487, {["requireSkill"] = BLACKSMITHING}),	-- Proficient Blacksmith's Toolbox
			i(222484, {["requireSkill"] = LEATHERWORKING}),	-- Proficient Leatherworker's Knife
			i(222485, {["requireSkill"] = LEATHERWORKING}),	-- Proficient Leatherworker's Toolset
			i(222483, {["requireSkill"] = TAILORING}),	-- Proficient Needle Set
			i(222481, {["requireSkill"] = MINING}),	-- Proficient Pickaxe
			i(222480, {["requireSkill"] = HERBALISM}),	-- Proficient Sickle
			i(222482, {["requireSkill"] = SKINNING}),	-- Proficient Skinning Knife
		}),
		filter(REAGENTS, {
			i(222511),	-- Adjustable Framework+
			i(222512),	-- Adjustable Framework++
			i(222513),	-- Adjustable Framework+++
			i(222420),	-- Charged Alloy+
			i(222421),	-- Charged Alloy++
			i(222422),	-- Charged Alloy+++
			i(222417),	-- Core Alloy+
			i(222418),	-- Core Alloy++
			i(222419),	-- Core Alloy+++
			i(222499),	-- Forged Framework+
			i(222500),	-- Forged Framework++
			i(222501),	-- Forged Framework+++
			i(222426),	-- Ironclaw Alloy+
			i(222427),	-- Ironclaw Alloy++
			i(222428),	-- Ironclaw Alloy+++
			i(222423),	-- Sanctified Alloy+
			i(222424),	-- Sanctified Alloy++
			i(222425),	-- Sanctified Alloy+++
			i(222514),	-- Tempered Framework+
			i(222515),	-- Tempered Framework++
			i(222516),	-- Tempered Framework+++
		}),
		n(WEAPONS, {
			i(225374),	-- Algari Competitor's Axe
			i(225367),	-- Algari Competitor's Dagger
			i(225376),	-- Algari Competitor's Greatsword
			i(225366),	-- Algari Competitor's Pickaxe
			i(225371),	-- Algari Competitor's Scepter
			i(225373),	-- Algari Competitor's Shield
			i(225375),	-- Algari Competitor's Skewer
			i(225377),	-- Algari Competitor's Sword
			i(222459),	-- Beledar's Bulwark
			i(222447),	-- Charged Claymore
			i(222449),	-- Charged Crusher
			i(222439),	-- Charged Dagger
			i(222446),	-- Charged Facesmaher
			i(222446),	-- Charged Facesmasher
			i(222443),	-- Charged Greataxe
			i(222448),	-- Charged Halberd
			i(222444),	-- Charged Hexsword
			i(222450),	-- Charged Invoker
			i(222440),	-- Charged Longsword
			i(222442),	-- Charged Mace
			i(222445),	-- Charged Runeaxe
			i(222451),	-- Charged Slicer
			i(222441),	-- Charged Warglaive
			i(222439),	-- Everforged Dagger
			i(222432),	-- Everforged Defender
			i(222443),	-- Everforged Greataxe
			i(222440),	-- Everforged Longsword
			i(222442),	-- Everforged Mace
			i(222438),	-- Everforged Stabber
			i(222441),	-- Everforged Warglaive
			i(222469),	-- Ironclaw Axe
			i(222465),	-- Ironclaw Dirk
			i(222470),	-- Ironclaw Great Axe
			i(222468),	-- Ironclaw Great Mace
			i(222467),	-- Ironclaw Knuckles
			i(222464),	-- Ironclaw Stiletto
			i(222466),	-- Ironclaw Sword
			i(222463),	-- Siphoning Stiletto
		}),
	}),
	prof(COOKING, {
		n(DISCOVERY, {
			spell(447869, {	-- Fine Egg Powders
				r(447873),	-- Secret Sauce
			}),
		}),
		i(222727),	-- Angler's Delight
		i(235805, {["timeline"] = {ADDED_11_1_0}}),	-- Authentic Undermine Clam Chowder
		i(223971),	-- Azj-Kahet Special
		i(222728),	-- Beledar's Bounty
		i(222736),	-- Chippy Tea
		i(222744),	-- Cinder Nectar
		i(223977),	-- Coagulated Yolk
		i(222708),	-- Coreway Kabob
		i(222718),	-- Deepfin Patty
		i(222729),	-- Empress' Farewell
		i(223966),	-- Everything-on-a-Stick
		i(222735),	-- Everything Stew
		i(225592),	-- Exquisitely Eviscerated Muscle
		i(222732),	-- Feast of the Divine Day
		i(222733),	-- Feast of the Midnight Masquerade
		i(222715),	-- Fiery Fish Sticks
		i(225876),	-- Fine Egg Powder
		i(222721),	-- Fish and Chips
		i(222709),	-- Flashfire Fillet
		i(225855),	-- Ghoulfish Delight
		i(222716),	-- Ginger-Glazed Fillet
		i(222707),	-- Hallowfall Chili
		i(235853, {["timeline"] = {ADDED_11_1_0}}),	-- Hearty Authentic Undermine Clam Chowder
		i(222776),	-- Hearty Beledar's Bounty
		i(222775),	-- Hearty Angler's Delight
		i(222784),	-- Hearty Chippy Tea
		i(222756),	-- Hearty Coreway Kabob
		i(222766),	-- Hearty Deepfin Patty
		i(222777),	-- Hearty Empress' Farewell
		i(222783),	-- Hearty Everything Stew
		i(222780),	-- Hearty Feast of the Divine Day
		i(222781),	-- Hearty Feast of the Midnight Masquerade
		i(222763),	-- Hearty Fiery Fish Sticks
		i(222769),	-- Hearty Fish and Chips
		i(222757),	-- Hearty Flashfire Fillet
		i(222764),	-- Hearty Ginger-Glazed Fillet
		i(222755),	-- Hearty Hallowfall Chili
		i(222778),	-- Hearty Jester's Board
		i(222771),	-- Hearty Marinated Tenderloins
		i(222758),	-- Hearty Meat and Potatoes
		i(222773),	-- Hearty Mycobloom Risotto
		i(222779),	-- Hearty Outsider's Provisions
		i(222754),	-- Hearty Pan-Seared Mycobloom
		i(222759),	-- Hearty Rib Stickers
		i(222753),	-- Hearty Roasted Mycobloom
		i(222770),	-- Hearty Salt Baked Seafood
		i(222765),	-- Hearty Salty Dog
		i(222751),	-- Hearty Simple Stew
		i(222772),	-- Hearty Sizzling Honey Roast
		i(222750),	-- Hearty Skewered Fillet
		i(222774),	-- Hearty Stuffed Cave Peppers
		i(222768),	-- Hearty Sushi Special
		i(222760),	-- Hearty Sweet and Sour Meatballs
		i(222767),	-- Hearty Sweet and Spicy Soup
		i(222761),	-- Hearty Tender Twilight Jerky
		i(222752),	-- Hearty Unseasoned Field Steak
		i(222762),	-- Hearty Zesty Nibblers
		i(222730),	-- Jester's Board
		i(223970),	-- Little Buddy Biscuits
		i(222723),	-- Marinated Tenderloins
		i(222710),	-- Meat and Potatoes
		i(222749),	-- Melted Candlebar
		i(222725),	-- Mycobloom Risotto
		i(222731),	-- Outsider's Provisions
		i(222706),	-- Pan-Seared Mycobloom
		i(222745),	-- Pep-In-Your-Step
		i(225883),	-- Prepared Ghoulfish
		i(223967),	-- Protein Slurp
		i(222711),	-- Rib Stickers
		i(222705),	-- Roasted Mycobloom
		i(222747),	-- Rockslide Shake
		i(222722),	-- Salt Baked Seafood
		i(222717),	-- Salty Dog
		i(223969),	-- Secret Sauce
		i(222703),	-- Simple Stew
		i(222724),	-- Sizzling Honey Roast
		i(222702),	-- Skewered Fillet
		i(223968),	-- Spongey Scramble
		i(222748),	-- Sticky Sweet Treat
		i(222726),	-- Stuffed Cave Peppers
		i(222712),	-- Sweet and Sour Meatballs
		i(222719),	-- Sweet and Spicy Soup
		i(222713),	-- Tender Twilight Jerky
		i(222720),	-- The Sushi Special
		i(222704),	-- Unseasoned Field Steak
		i(222714),	-- Zesty Nibblers
		filter(REAGENTS, {
			i(222737),	-- Chopped Mycobloom
			i(222741),	-- Fresh Fillet
			i(222738),	-- Portioned Steak
			i(222739),	-- Spiced Meat Stock
		}),
	}),
	prof(ENCHANTING, {
		spell(455970, {	-- Disenchant
			i(219949),	-- Gleaming Shard+
			i(219950),	-- Gleaming Shard++
			i(219951),	-- Gleaming Shard+++
			i(227661),	-- Gleaming Telluric Crystal
			i(227659),	-- Fleeting Arcane Manifestation
			i(219952),	-- Refulgent Crystal+
			i(219954),	-- Refulgent Crystal++
			i(219955),	-- Refulgent Crystal+++
			i(227662),	-- Shimmering Dust	//Allegedly only rewarded as catchup KP, no quest attached?
			i(219946),	-- Storm Dust+
			i(219947),	-- Storm Dust++
			i(219948),	-- Storm Dust+++
		}),
		spell(445466, {	-- Shatter Essence
			i(220381),	-- Shatter Essence
		}),
		n(ARMOR_ENCHANTMENTS, {
			i(223618),	-- Enchant Boots - Cavalry's March+
			i(223649),	-- Enchant Boots - Cavalry's March++
			i(223650),	-- Enchant Boots - Cavalry's March+++
			i(223654),	-- Enchant Boots - Defender's March+
			i(223655),	-- Enchant Boots - Defender's March++
			i(223656),	-- Enchant Boots - Defender's March+++
			i(223651),	-- Enchant Boots - Scout's March+
			i(223652),	-- Enchant Boots - Scout's March++
			i(223653),	-- Enchant Boots - Scout's March+++
			i(223711),	-- Enchant Bracer - Chant of Armored Avoidance+
			i(223712),	-- Enchant Bracer - Chant of Armored Avoidance++
			i(223713),	-- Enchant Bracer - Chant of Armored Avoidance+++
			i(223717),	-- Enchant Bracer - Chant of Armored Leech+
			i(223718),	-- Enchant Bracer - Chant of Armored Leech++
			i(223719),	-- Enchant Bracer - Chant of Armored Leech+++
			i(223723),	-- Enchant Bracer - Chant of Armored Speed+
			i(223724),	-- Enchant Bracer - Chant of Armored Speed++
			i(223725),	-- Enchant Bracer - Chant of Armored Speed+++
			i(223708),	-- Enchant Bracer - Whisper of Armored Avoidance+
			i(223709),	-- Enchant Bracer - Whisper of Armored Avoidance++
			i(223710),	-- Enchant Bracer - Whisper of Armored Avoidance+++
			i(223714),	-- Enchant Bracer - Whisper of Armored Leech+
			i(223715),	-- Enchant Bracer - Whisper of Armored Leech++
			i(223716),	-- Enchant Bracer - Whisper of Armored Leech+++
			i(223720),	-- Enchant Bracer - Whisper of Armored Speed+
			i(223721),	-- Enchant Bracer - Whisper of Armored Speed++
			i(223722),	-- Enchant Bracer - Whisper of Armored Speed+++
			i(223684),	-- Enchant Chest - Council's Intellect+
			i(223685),	-- Enchant Chest - Council's Intellect++
			i(223686),	-- Enchant Chest - Council's Intellect+++
			i(223690),	-- Enchant Chest - Crystalline Radiance+
			i(223691),	-- Enchant Chest - Crystalline Radiance++
			i(223692),	-- Enchant Chest - Crystalline Radiance+++
			i(223687),	-- Enchant Chest - Oathsworn's Strength+
			i(223688),	-- Enchant Chest - Oathsworn's Strength++
			i(223689),	-- Enchant Chest - Oathsworn's Strength+++
			i(223681),	-- Enchant Chest - Stormrider's Agility+
			i(223682),	-- Enchant Chest - Stormrider's Agility++
			i(223683),	-- Enchant Chest - Stormrider's Agility+++
			i(223798),	-- Enchant Cloak - Chant of Burrowing Rapidity+
			i(223799),	-- Enchant Cloak - Chant of Burrowing Rapidity++
			i(223800),	-- Enchant Cloak - Chant of Burrowing Rapidity+++
			i(223735),	-- Enchant Cloak - Chant of Leeching Fangs+
			i(223736),	-- Enchant Cloak - Chant of Leeching Fangs++
			i(223737),	-- Enchant Cloak - Chant of Leeching Fangs+++
			i(223729),	-- Enchant Cloak - Chant of Winged Grace+
			i(223730),	-- Enchant Cloak - Chant of Winged Grace++
			i(223731),	-- Enchant Cloak - Chant of Winged Grace+++
			i(223726),	-- Enchant Cloak - Whisper of Silken Avoidance+
			i(223727),	-- Enchant Cloak - Whisper of Silken Avoidance++
			i(223728),	-- Enchant Cloak - Whisper of Silken Avoidance+++
			i(223732),	-- Enchant Cloak - Whisper of Silken Leech+
			i(223733),	-- Enchant Cloak - Whisper of Silken Leech++
			i(223734),	-- Enchant Cloak - Whisper of Silken Leech+++
			i(223738),	-- Enchant Cloak - Whisper of Silken Speed+
			i(223739),	-- Enchant Cloak - Whisper of Silken Speed++
			i(223740),	-- Enchant Cloak - Whisper of Silken Speed+++
			i(223785),	-- Enchant Ring - Cursed Critical Strike+
			i(223786),	-- Enchant Ring - Cursed Critical Strike++
			i(223787),	-- Enchant Ring - Cursed Critical Strike+++
			i(223788),	-- Enchant Ring - Cursed Haste+
			i(223789),	-- Enchant Ring - Cursed Haste++
			i(223790),	-- Enchant Ring - Cursed Haste+++
			i(223791),	-- Enchant Ring - Cursed Mastery+
			i(223792),	-- Enchant Ring - Cursed Mastery++
			i(223793),	-- Enchant Ring - Cursed Mastery+++
			i(223794),	-- Enchant Ring - Cursed Versatility+
			i(223795),	-- Enchant Ring - Cursed Versatility++
			i(223796),	-- Enchant Ring - Cursed Versatility+++
			i(223657),	-- Enchant Ring - Glimmering Critical Strike+
			i(223658),	-- Enchant Ring - Glimmering Critical Strike++
			i(223659),	-- Enchant Ring - Glimmering Critical Strike+++
			i(223663),	-- Enchant Ring - Glimmering Haste+
			i(223664),	-- Enchant Ring - Glimmering Haste++
			i(223665),	-- Enchant Ring - Glimmering Haste+++
			i(223666),	-- Enchant Ring - Glimmering Mastery+
			i(223667),	-- Enchant Ring - Glimmering Mastery++
			i(223668),	-- Enchant Ring - Glimmering Mastery+++
			i(223669),	-- Enchant Ring - Glimmering Versatility+
			i(223670),	-- Enchant Ring - Glimmering Versatility++
			i(223671),	-- Enchant Ring - Glimmering Versatility+++
			i(223660),	-- Enchant Ring - Radiant Critical Strike+
			i(223661),	-- Enchant Ring - Radiant Critical Strike++
			i(223662),	-- Enchant Ring - Radiant Critical Strike+++
			i(223672),	-- Enchant Ring - Radiant Haste+
			i(223673),	-- Enchant Ring - Radiant Haste++
			i(223674),	-- Enchant Ring - Radiant Haste+++
			i(223675),	-- Enchant Ring - Radiant Mastery+
			i(223676),	-- Enchant Ring - Radiant Mastery++
			i(223677),	-- Enchant Ring - Radiant Mastery+++
			i(223678),	-- Enchant Ring - Radiant Versatility+
			i(223679),	-- Enchant Ring - Radiant Versatility++
			i(223680),	-- Enchant Ring - Radiant Versatility+++
		}),
		n(FIRST_CRAFTS_HEADER, sharedData({
			["requireSkill"] = ENCHANTING,
		},{
			-- Algari Illusions
			FirstCraft(81040, 445367);	-- Gleeful Glamour - Blood Elf
			FirstCraft(81072, 445400);	-- Gleeful Glamour - Dark Iron Dwarf
			FirstCraft(81063, 445391);	-- Gleeful Glamour - Draenei
			FirstCraft(81074, 445402);	-- Gleeful Glamour - Dwarf
			FirstCraft(81054, 445382);	-- Gleeful Glamour - Earthen
			FirstCraft(81035, 445362);	-- Gleeful Glamour - Gnome
			FirstCraft(81005, 445332);	-- Gleeful Glamour - Goblin
			FirstCraft(81049, 445377);	-- Gleeful Glamour - Highmountain Tauren
			FirstCraft(81025, 445352);	-- Gleeful Glamour - Human
			FirstCraft(81015, 445342);	-- Gleeful Glamour - Kul Tiran
			FirstCraft(81016, 445343);	-- Gleeful Glamour - Lightforged Draenei
			FirstCraft(81042, 445370);	-- Gleeful Glamour - Mag'har Orc
			FirstCraft(81030, 445357);	-- Gleeful Glamour - Mechagnome
			FirstCraft(81036, 445363);	-- Gleeful Glamour - Night Elf
			FirstCraft(81062, 445390);	-- Gleeful Glamour - Nightborne
			FirstCraft(80992, 445319);	-- Gleeful Glamour - Orc
			FirstCraft(81038, 445365);	-- Gleeful Glamour - Pandaren
			FirstCraft(81039, 445366);	-- Gleeful Glamour - Tauren
			FirstCraft(80999, 445326);	-- Gleeful Glamour - Troll
			FirstCraft(81023, 445350);	-- Gleeful Glamour - Undead
			FirstCraft(81029, 445356);	-- Gleeful Glamour - Void Elf
			FirstCraft(81002, 445329);	-- Gleeful Glamour - Vulpera
			FirstCraft(81069, 445397);	-- Gleeful Glamour - Worgen
			FirstCraft(81018, 445345);	-- Gleeful Glamour - Zandalari Troll
			FirstCraft(81033, 445360);	-- Illusory Adornment: Runes
			FirstCraft(81000, 445327);	-- Illusory Adornment: Crystal
			FirstCraft(81073, 445401);	-- Illusory Adornment: Radiance
			FirstCraft(81010, 445337);	-- Illusory Adornment: Shadow
			-- Arathor Enchantments
			FirstCraft(81004, 445331);	-- Authority of Air
			FirstCraft(81012, 445339);	-- Authority of Radiant Power
			FirstCraft(81075, 445403);	-- Authority of Fiery Resolve
			FirstCraft(81008, 445335);	-- Cavalry's March
			FirstCraft(81068, 445396);	-- Defender's March
			FirstCraft(81031, 445358);	-- Glimmering Critical Strike
			FirstCraft(81056, 445384);	-- Glimmering Haste
			FirstCraft(81053, 445381);	-- Glimmering Mastery
			FirstCraft(81013, 445340);	-- Glimmering Versatility
			FirstCraft(81059, 445387);	-- Radiant Critical Strike
			FirstCraft(80993, 445320);	-- Radiant Haste
			FirstCraft(81047, 445375);	-- Radiant Mastery
			FirstCraft(81022, 445349);	-- Radiant Versatility
			FirstCraft(81041, 445368);	-- Scout's March
			-- Earthen Enchantments
			FirstCraft(81037, 445364);	-- Algari Deftness
			FirstCraft(81001, 445328);	-- Algari Finesse
			FirstCraft(81050, 445378);	-- Algari Ingenuity
			FirstCraft(81052, 445380);	-- Algari Perception
			FirstCraft(81070, 445398);	-- Algari Resourcefulness
			FirstCraft(81009, 445336);	-- Authority of Storms
			FirstCraft(81051, 445379);	-- Council's Guile
			FirstCraft(80995, 445322);	-- Council's Intellect
			FirstCraft(81006, 445333);	-- Crystalline Radiance
			FirstCraft(81024, 445351);	-- Oathsworn's Tenacity
			FirstCraft(80994, 445321);	-- Oathsworn's Strength
			FirstCraft(81057, 445385);	-- Stonebound Artistry
			FirstCraft(81026, 445353);	-- Stormrider's Agility
			FirstCraft(80990, 445317);	-- Stormrider's Fury
			-- Mana Oils
			FirstCraft(81011, 445338);	-- Algari Mana Oil
			FirstCraft(80991, 445318);	-- Oil of Beledar's Grace
			FirstCraft(81019, 445346);	-- Oil of Deep Toxins
			-- Nerubian Enchantments
			FirstCraft(81014, 445341);	-- Authority of the Depths
			FirstCraft(81007, 445334);	-- Chant of Armored Avoidance
			FirstCraft(80998, 445325);	-- Chant of Armored Leech
			FirstCraft(81003, 445330);	-- Chant of Armored Speed
			FirstCraft(81061, 445389);	-- Chant of Burrowing Rapidity
			FirstCraft(81065, 445393);	-- Chant of Leeching Fangs
			FirstCraft(81058, 445386);	-- Chant of Winged Grace
			FirstCraft(81066, 445394);	-- Cursed Critical Strike
			FirstCraft(81060, 445388);	-- Cursed Haste
			FirstCraft(81032, 445359);	-- Cursed Mastery
			FirstCraft(81055, 445383);	-- Cursed Versatility
			FirstCraft(81064, 445392);	-- Whisper of Armored Avoidance
			FirstCraft(81046, 445374);	-- Whisper of Armored Leech
			FirstCraft(81048, 445376);	-- Whisper of Armored Speed
			FirstCraft(81017, 445344);	-- Whisper of Silken Avoidance
			FirstCraft(81021, 445348);	-- Whisper of Silken Leech
			FirstCraft(81045, 445373);	-- Whisper of Silken Speed
			-- Reagents
			FirstCraft(81067, 445395);	-- Concentration Concentrate
			FirstCraft(81027, 445354, ADDED_11_0_2, REMOVED_11_1_0_SEASONSTART);	-- Enchanted Gilded Harbinger Crest
			FirstCraft(81020, 445347, ADDED_11_0_2, REMOVED_11_1_0_SEASONSTART);	-- Enchanted Runed Harbinger Crest
			FirstCraft(81071, 445399, ADDED_11_0_2, REMOVED_11_1_0_SEASONSTART);	-- Enchanted Weathered Harbinger Crest
			FirstCraft(81043, 445371);	-- Mirror Powder
			-- Rods and Wants
			FirstCraft(80997, 445324);	-- Enchanted Spearwood Wand
			FirstCraft(81034, 445361);	-- Runed Bismuth Rod
			FirstCraft(81044, 445372);	-- Runed Ironclaw Rod
			FirstCraft(80996, 445323);	-- Runed Null Stone Rod
			FirstCraft(81028, 445355);	-- Scepter of Radiant Magics
		})),
		filter(ILLUSIONS, {
		}),
		filter(MISC, {
			i(224105),	-- Algari Mana Oil+
			i(224106),	-- Algari Mana Oil++
			i(224107),	-- Algari Mana Oil+++
			i(227208),	-- Bismuth Rod
			i(224300),	-- Gleeful Glamour - Blood Elf+
			i(224324),	-- Gleeful Glamour - Blood Elf++
			i(224348),	-- Gleeful Glamour - Blood Elf+++
			i(224301),	-- Gleeful Glamour - Dark Iron Dwarf+
			i(224325),	-- Gleeful Glamour - Dark Iron Dwarf++
			i(224349),	-- Gleeful Glamour - Dark Iron Dwarf+++
			i(224302),	-- Gleeful Glamour - Draenei+
			i(224326),	-- Gleeful Glamour - Draenei++
			i(224350),	-- Gleeful Glamour - Draenei+++
			i(224303),	-- Gleeful Glamour - Dwarf+
			i(224327),	-- Gleeful Glamour - Dwarf++
			i(224351),	-- Gleeful Glamour - Dwarf+++
			i(224304),	-- Gleeful Glamour - Earthen+
			i(224328),	-- Gleeful Glamour - Earthen++
			i(224352),	-- Gleeful Glamour - Earthen+++
			i(224305),	-- Gleeful Glamour - Gnome+
			i(224329),	-- Gleeful Glamour - Gnome++
			i(224353),	-- Gleeful Glamour - Gnome+++
			i(224306),	-- Gleeful Glamour - Goblin+
			i(224330),	-- Gleeful Glamour - Goblin++
			i(224354),	-- Gleeful Glamour - Goblin+++
			i(224307),	-- Gleeful Glamour - Highmountain Tauren+
			i(224331),	-- Gleeful Glamour - Highmountain Tauren++
			i(224355),	-- Gleeful Glamour - Highmountain Tauren+++
			i(224308),	-- Gleeful Glamour - Human+
			i(224332),	-- Gleeful Glamour - Human++
			i(224356),	-- Gleeful Glamour - Human+++
			i(224309),	-- Gleeful Glamour - Kul Tiran+
			i(224333),	-- Gleeful Glamour - Kul Tiran++
			i(224357),	-- Gleeful Glamour - Kul Tiran+++
			i(224310),	-- Gleeful Glamour - Lightforged Draenei+
			i(224334),	-- Gleeful Glamour - Lightforged Draenei++
			i(224358),	-- Gleeful Glamour - Lightforged Draenei+++
			i(224311),	-- Gleeful Glamour - Mag'har Orc+
			i(224335),	-- Gleeful Glamour - Mag'har Orc++
			i(224359),	-- Gleeful Glamour - Mag'har Orc+++
			i(224312),	-- Gleeful Glamour - Mechagnome+
			i(224336),	-- Gleeful Glamour - Mechagnome++
			i(224360),	-- Gleeful Glamour - Mechagnome+++
			i(224313),	-- Gleeful Glamour - Night Elf+
			i(224337),	-- Gleeful Glamour - Night Elf++
			i(224361),	-- Gleeful Glamour - Night Elf+++
			i(224314),	-- Gleeful Glamour - Nightborne+
			i(224338),	-- Gleeful Glamour - Nightborne++
			i(224362),	-- Gleeful Glamour - Nightborne+++
			i(224315),	-- Gleeful Glamour - Orc+
			i(224339),	-- Gleeful Glamour - Orc++
			i(224363),	-- Gleeful Glamour - Orc+++
			i(224316),	-- Gleeful Glamour - Pandaren+
			i(224340),	-- Gleeful Glamour - Pandaren++
			i(224364),	-- Gleeful Glamour - Pandaren+++
			i(224317),	-- Gleeful Glamour - Tauren+
			i(224341),	-- Gleeful Glamour - Tauren++
			i(224365),	-- Gleeful Glamour - Tauren+++
			i(224318),	-- Gleeful Glamour - Troll+
			i(224342),	-- Gleeful Glamour - Troll++
			i(224366),	-- Gleeful Glamour - Troll+++
			i(224319),	-- Gleeful Glamour - Undead+
			i(224343),	-- Gleeful Glamour - Undead++
			i(224367),	-- Gleeful Glamour - Undead+++
			i(224320),	-- Gleeful Glamour - Void Elf+
			i(224344),	-- Gleeful Glamour - Void Elf++
			i(224368),	-- Gleeful Glamour - Void Elf+++
			i(224321),	-- Gleeful Glamour - Vulpera+
			i(224345),	-- Gleeful Glamour - Vulpera++
			i(224369),	-- Gleeful Glamour - Vulpera+++
			i(224322),	-- Gleeful Glamour - Worgen+
			i(224346),	-- Gleeful Glamour - Worgen++
			i(224370),	-- Gleeful Glamour - Worgen+++
			i(224323),	-- Gleeful Glamour - Zandalari Troll+
			i(224347),	-- Gleeful Glamour - Zandalari Troll++
			i(224371),	-- Gleeful Glamour - Zandalari Troll+++
			i(223746),	-- Illusory Adornment: Crystal+
			i(223745),	-- Illusory Adornment: Crystal++
			i(223747),	-- Illusory Adornment: Crystal+++
			i(223748),	-- Illusory Adornment: Radiance+
			i(223749),	-- Illusory Adornment: Radiance++
			i(223750),	-- Illusory Adornment: Radiance+++
			i(223751),	-- Illusory Adornment: Runes+
			i(223752),	-- Illusory Adornment: Runes++
			i(223753),	-- Illusory Adornment: Runes+++
			i(223754),	-- Illusory Adornment: Shadow+
			i(223755),	-- Illusory Adornment: Shadow++
			i(223756),	-- Illusory Adornment: Shadow+++
			i(224108),	-- Oil of Beledar's Grace+
			i(224109),	-- Oil of Beledar's Grace++
			i(224110),	-- Oil of Beledar's Grace+++
			i(224111),	-- Oil of Deep Toxins+
			i(224112),	-- Oil of Deep Toxins++
			i(224113),	-- Oil of Deep Toxins+++
		}),
		filter(PROFESSION_EQUIPMENT, {
			i(224114),	-- Runed Bismuth Rod
			i(224115),	-- Runed Ironclaw Rod
			i(224116),	-- Runed Null Stone Rod
		}),
		filter(REAGENTS, {
			i(224173),	-- Concentration Concentrate+
			i(224174),	-- Concentration Concentrate++
			i(224175),	-- Concentration Concentrate+++
			i(224073),	-- Enchanted Gilded Harbinger Crest
			i(224072),	-- Enchanted Runed Harbinger Crest
			i(224069),	-- Enchanted Weathered Harbinger Crest
			i(224177),	-- Mirror Powder+
			i(224178),	-- Mirror Powder++
			i(224176),	-- Mirror Powder+++
		}),
		n(WEAPON_ENCHANTMENTS, {
			i(223693),	-- Enchant Tool - Algari Deftness+
			i(223694),	-- Enchant Tool - Algari Deftness++
			i(223695),	-- Enchant Tool - Algari Deftness+++
			i(223696),	-- Enchant Tool - Algari Finesse+
			i(223697),	-- Enchant Tool - Algari Finesse++
			i(223698),	-- Enchant Tool - Algari Finesse+++
			i(223699),	-- Enchant Tool - Algari Ingenuity+
			i(223700),	-- Enchant Tool - Algari Ingenuity++
			i(223701),	-- Enchant Tool - Algari Ingenuity+++
			i(223702),	-- Enchant Tool - Algari Perception+
			i(223703),	-- Enchant Tool - Algari Perception++
			i(223704),	-- Enchant Tool - Algari Perception+++
			i(223705),	-- Enchant Tool - Algari Resourcefulness+
			i(223706),	-- Enchant Tool - Algari Resourcefulness++
			i(223707),	-- Enchant Tool - Algari Resourcefulness+++
			i(223773),	-- Enchant Weapon - Authority of Air+
			i(223774),	-- Enchant Weapon - Authority of Air++
			i(223775),	-- Enchant Weapon - Authority of Air+++
			i(223776),	-- Enchant Weapon - Authority of Fiery Resolve+
			i(223777),	-- Enchant Weapon - Authority of Fiery Resolve++
			i(223778),	-- Enchant Weapon - Authority of Fiery Resolve+++
			i(223779),	-- Enchant Weapon - Authority of Radiant Power+
			i(223780),	-- Enchant Weapon - Authority of Radiant Power++
			i(223781),	-- Enchant Weapon - Authority of Radiant Power+++
			i(223770),	-- Enchant Weapon - Authority of Storms+
			i(223771),	-- Enchant Weapon - Authority of Storms++
			i(223772),	-- Enchant Weapon - Authority of Storms+++
			i(223782),	-- Enchant Weapon - Authority of the Depths+
			i(223783),	-- Enchant Weapon - Authority of the Depths++
			i(223784),	-- Enchant Weapon - Authority of the Depths+++
			i(223757),	-- Enchant Weapon - Council's Guile+
			i(223758),	-- Enchant Weapon - Council's Guile++
			i(223759),	-- Enchant Weapon - Council's Guile+++
			i(223766),	-- Enchant Weapon - Oathsworn's Tenacity+
			i(223767),	-- Enchant Weapon - Oathsworn's Tenacity++
			i(223768),	-- Enchant Weapon - Oathsworn's Tenacity+++
			i(223763),	-- Enchant Weapon - Stonebound Artistry+
			i(223764),	-- Enchant Weapon - Stonebound Artistry++
			i(223765),	-- Enchant Weapon - Stonebound Artistry+++
			i(223760),	-- Enchant Weapon - Stormrider's Fury+
			i(223761),	-- Enchant Weapon - Stormrider's Fury++
			i(223762),	-- Enchant Weapon - Stormrider's Fury+++
		}),
		n(WEAPONS, {
			i(224404),	-- Enchanted Spearwood Wand
			i(224405),	-- Scepter of Radiant Magics
		}),
	}),
	prof(ENGINEERING, {
		n(DISCOVERY, {
			spell(447312, {	-- Invent
				i(224640, {	-- Invent
					r(447373),	-- Crowd Pummeler 2-30
				}),
			}),
			TempForceMisc(i(219192, {	-- Comprehensibly Organized Ideas
				["description"] = "NOTE: Some of these require a specific specialization to discover.",
				["g"] = {
					r(447325, {	-- Aqirite Brainwave Projector
						["description"] = "Requires specialization - Profession Gear to discover",
					}),
					r(447327, {	-- Aqirite Fisherfriend
						["description"] = "Requires specialization - Profession Gear to discover",
					}),
					r(447331, { -- Aqirite Miner's Headgear
						["description"] = "Requires specialization - Profession Gear to discover",
					}),
					r(447324),	-- Bismuth Brainwave Projector
					r(447326),	-- Bismuth Fisherfriend
					r(447332),	-- Bismuth Fueled Samophlange
					r(447330),	-- Bismuth Miner's Headgear
					r(447358),	-- Blame Redirection Device
					r(447318, {	-- Blasting Bracers
						["description"] = "Requires specialization - Bracers to discover",
					}),
					r(459299),	-- Bottled Brilliance
					r(447321, {	-- Clanking Cuffs
						["description"] = "Requires specialization - Bracers to discover",
					}),
					r(447360),	-- Complicated Fuse Box
					r(447362),	-- Concealed Chaos Module
					r(447317, {	-- Dangerous Distraction Inhibitor
						["description"] = "Requires specialization - Goggles to discover",
					}),
					r(447363),	-- Energy Redistribution Beacon
					r(447329, {	-- Lapidary's Aqirite Clamps
						["description"] = "Requires specialization - Profession Gear to discover",
					}),
					r(447328),	-- Lapidary's Bismuth Clamps
					r(447335, {	-- Miner's Aqirite Hoard
						["description"] = "Requires specialization - Profession Gear to discover",
					}),
					r(447334),	-- Miner's Bismuth Hoard
					r(447315, {	-- Overclocked Idea Generator
						["description"] = "Requires specialization - Goggles to discover",
					}),
					r(447361),	-- Pouch of Pocket Grenades
					r(447357),	-- Recalibrated Safety Switch
					r(447323, {	-- Spring-Loaded Aqirite Fabric Cutters
						["description"] = "Requires specialization - Profession Gear to discover",
					}),
					r(447322),	-- Spring-Loaded Bismuth Fabric Cutters
					r(447314, { -- Studious Brilliance Expeditor
						["description"] = "Requires specialization - Goggles to discover",
					}),
					r(447316, {	-- Supercharged Thought Enhancer
						["description"] = "Requires specialization - Goggles to discover",
					}),
					r(447319, {	-- Venting Vambraces
						["description"] = "Requires specialization - Bracers to discover",
					}),
					r(447320, {	-- Whirring Wristwraps
						["description"] = "Requires specialization - Bracers to discover",
					}),
				},
			})),
			spell(447310, {	-- Scour Through Scrap
				i(224822, {	-- Scour Through Scrap
					r(447340),	-- Chaos Circuit
					r(447313),	-- Disassemble Invention
					r(447341),	-- Entropy Enhancer
					r(447338),	-- Gyrating Gear
					r(447336),	-- Handful of Bismuth Bolts
					r(447312),	-- Invent
					r(447339),	-- Safety Switch
					r(447337),	-- Whimsical Wiring
					i(227890, { -- Unrecognizable Prototype
					i(221956, { -- Prototype: Algari Repair Bot 11O
						r(447367),	-- Algari Repair Bot 11O
					}),
					i(221960, { -- Prototype: Barrel of Fireworks
						r(447369),	-- Barrel of Fireworks
					}),
					i(221952, { -- Prototype: Convincingly Realistic Jumper Cables
						r(447366),	-- Convincingly Realistic Jumper Cables
					}),
					i(221961, { -- Prototype: Defective Escape Pod
						r(447370),	-- Defective Escape Pod
					}),
					i(221963, { -- Prototype: Filmless Camera
						r(447371),	-- Filmless Camera
					}),
					i(221965, { -- Prototype: Wormhole Generator: Khaz Algar
						r(447372),	-- Wormhole Generator: Khaz Algar
					}),
					i(221958, { -- Prototype: Summon Portable Profession Possibility Projector
						r(447368),	-- Portable Profession Possibility Projector
					}),
					i(221875, { -- Prototype: Potion Bomb of Recovery
						r(447343),	-- Potion Bomb of Recovery
					}),
					i(221948, { -- Prototype: Pausing Pylon
						r(447365),	-- Pausing Pylon
					}),
					i(221879, { -- Prototype: Potion Bomb of Power
						r(447344),	-- Potion Bomb of Power
					}),
					i(221871, { -- Prototype: Potion Bomb of Speed
						r(447342),	-- Potion Bomb of Speed
					}),
					i(221944, { -- Prototype: Irresistible Red Button
						r(447364),	-- Irresistible Red Button
					}),
					i(221903, { -- Prototype: Earthen Delivery Drill
						r(447350),	-- Tinker: Earthen Delivery Drill
					}),
					i(221907, { -- Prototype: Heartseeking Health Injector
						r(447351),	-- Tinker: Heartseeking Health Injector
					}),
					}),
				}),
			}),
			-- because parser is still 'guessing' Recipe Items based on SpellID and RequireSkill, this is turning into
			-- Recipe 448280 (Rearrange Notes) which is harvested in ReagentDB as using Hastily Scrawled Notes as a Reagent
			-- Thus due to some newer Recipe nesting tech for popouts of Reagents directly, this is nesting itself inside itself
			-- and then filling it again, which repeats forever.
			-- Eventually the Profession DBs will be done (right?) and Parser won't be magically turning Items into Recipes unless
			-- we say so
			TempForceMisc(i(219191)),	-- Hastily Scrawled Notes
			TempForceMisc(i(221968)),	-- Legibly Scribbled Notes
		}),
		spell(447311, {	-- Pilfer Through Parts
			i(227769),	-- Bountiful Bolts
		}),
		n(ARMOR, {
			i(225642),	-- Acolyte's Goggles
			i(217155),	-- Algari Competitor's Cloth Bracers
			i(217151),	-- Algari Competitor's Cloth Goggles
			i(217156),	-- Algari Competitor's Leather Bracers
			i(217152),	-- Algari Competitor's Leather Goggles
			i(217157),	-- Algari Competitor's Mail Bracers
			i(217153),	-- Algari Competitor's Mail Goggles
			i(217158),	-- Algari Competitor's Plate Bracers
			i(217154),	-- Algari Competitor's Plate Goggles
			i(221805),	-- Blasting Bracers
			i(221808),	-- Clanking Cuffs
			i(221804),	-- Dangerous Distraction Inhibitor
			i(225645),	-- Dredger's Goggles
			i(221802),	-- Overclocked Idea Generator
			i(225643),	-- Spelunker's Goggles
			i(221801),	-- Studious Brilliance Expeditor
			i(221803),	-- Supercharged Thought Enhancer
			i(225644),	-- Tracker's Goggles
			i(221806),	-- Venting Vambraces
			i(221807),	-- Whirring Wristwraps
			-- Tinker
			i(225241),	-- Refurbished Tinker: Alarm-O-Turret
			i(225242),	-- Refurbished Tinker: Plane Displacer
		}),
		filter(CONSUMABLES, {
			i(221880),	-- Potion Bomb of Power+
			i(221881),	-- Potion Bomb of Power++
			i(221882),	-- Potion Bomb of Power+++
			i(221876),	-- Potion Bomb of Recovery+
			i(221877),	-- Potion Bomb of Recovery++
			i(221878),	-- Potion Bomb of Recovery+++
			i(221872),	-- Potion Bomb of Speed+
			i(221873),	-- Potion Bomb of Speed++
			i(221874),	-- Potion Bomb of Speed+++
		}),
		n(FIRST_CRAFTS_HEADER, sharedData({
			["requireSkill"] = ENGINEERING,
		},{
			-- Miscellaneous
			FirstCraft(86460, 1213620, ADDED_11_1_0),	-- 22H Slicks
			FirstCraft(81356, 447367),	-- Algari Repair Bot 11O
			FirstCraft(81347, 447358),	-- Blame Redirection Device
			FirstCraft(81363, 447374),	-- Box o' Booms
			FirstCraft(81349, 447360),	-- Complicated Fuse Box
			FirstCraft(81351, 447362),	-- Concealed Chaos Module
			FirstCraft(81355, 447366),	-- Convincingly Realistic Jumper Cables
			FirstCraft(81352, 447363),	-- Energy Redistribution Beacon
			FirstCraft(81301, 447312),	-- Invent
			FirstCraft(81353, 447364),	-- Irresistible Red Button
			FirstCraft(81354, 447365),	-- Pausing Pylon
			FirstCraft(81333, 447344),	-- Potion Bomb of Power
			FirstCraft(81332, 447343),	-- Potion Bomb of Recovery
			FirstCraft(81331, 447342),	-- Potion Bomb of Speed
			FirstCraft(81350, 447361),	-- Pouch of Pocket Grenades
			FirstCraft(81346, 447357),	-- Recalibrated Safety Switch
			FirstCraft(81357, 447368),	-- Portable Profession Possibility Projector
			FirstCraft(81339, 447350),	-- Tinker: Earthen Delivery Drill
			FirstCraft(81340, 447351),	-- Tinker: Heartseeking Health Injector
			-- Reagents
			FirstCraft(84019, 459299),	-- Bottled Brilliance
			FirstCraft(81329, 447340),	-- Chaos Circuit
			FirstCraft(81330, 447341),	-- Entropy Enhancer
			FirstCraft(81327, 447338),	-- Gyrating Gear
			FirstCraft(81325, 447336),	-- Handful of Bismuth Bolts
			FirstCraft(81328, 447339),	-- Safety Switch
			FirstCraft(81326, 447337),	-- Whimsical Wiring
			-- Toys
			FirstCraft(81382, 447369),	-- Barrel of Fireworks
			FirstCraft(81358, 447370),	-- Defective Escape Pod
			FirstCraft(81359, 447371),	-- Filmless Camera
			FirstCraft(81298, 443570),	-- Stonebound Lantern
			FirstCraft(81360, 447372),	-- Wormhole Generator: Khaz Algar
			-- Mounts
			FirstCraft(81361, 447373),	-- Crowd Pummeler 2-30
			-- Cogwheels
			FirstCraft(81345, 447356),	-- Adjustable Cogwheel
			FirstCraft(81344, 447355),	-- Impeccable Cogwheel
			FirstCraft(81343, 447354),	-- Overclocked Cogwheel
			FirstCraft(81342, 447353),	-- Serrated Cogwheel
			-- Armor
			FirstCraft(81364, 447375),	-- Acolyte's Goggles
			FirstCraft(81294, 438926),	-- Algari Competitor's Cloth Bracers
			FirstCraft(81290, 438922),	-- Algari Competitor's Cloth Goggles
			FirstCraft(81295, 438927),	-- Algari Competitor's Leather Bracers
			FirstCraft(81291, 438923),	-- Algari Competitor's Leather Goggles
			FirstCraft(81296, 438928),	-- Algari Competitor's Mail Bracers
			FirstCraft(81292, 438924),	-- Algari Competitor's Mail Goggles
			FirstCraft(81297, 438929),	-- Algari Competitor's Plate Bracers
			FirstCraft(81293, 438925),	-- Algari Competitor's Plate Goggles
			FirstCraft(81307, 447318),	-- Blasting Bracers
			FirstCraft(81310, 447321),	-- Clanking Cuffs
			FirstCraft(81306, 447317),	-- Dangerous Distraction Inhibitor
			FirstCraft(81387, 447378),	-- Dredger's Goggles
			FirstCraft(81304, 447315),	-- Overclocked Idea Generator
			FirstCraft(81365, 447376),	-- Spelunker's Goggles
			FirstCraft(81303, 447314),	-- Studious Brilliance Expeditor
			FirstCraft(81305, 447316),	-- Supercharged Thought Enhancer
			FirstCraft(81366, 447377),	-- Tracker's Goggles
			FirstCraft(81308, 447319),	-- Venting Vambraces
			FirstCraft(81309, 447320),	-- Whirring Wristwraps
			-- Weapons
			FirstCraft(81388, 447379),	-- 4UT0-41M3R
			FirstCraft(81386, 455005),	-- Algari Competitor's Rifle
			FirstCraft(81341, 447352),	-- P.0.W. x2
			-- Profession Equipment
			FirstCraft(81314, 447325),	-- Aqirite Brainwave Projector
			FirstCraft(81316, 447327),	-- Aqirite Fisherfriend
			FirstCraft(81322, 447333),	-- Aqirite Fueled Samophlange
			FirstCraft(81320, 447331),	-- Aqirite Miner's Headgear
			FirstCraft(81313, 447324),	-- Bismuth Brainwave Projector
			FirstCraft(81315, 447326),	-- Bismuth Fisherfriend
			FirstCraft(81321, 447332),	-- Bismuth Fueled Samophlange
			FirstCraft(81319, 447330),	-- Bismuth Miner's Headgear
			FirstCraft(81318, 447329),	-- Lapidary's Aqirite Clamps
			FirstCraft(81317, 447328),	-- Lapidary's Bismuth Clamps
			FirstCraft(81324, 447335),	-- Miner's Aqirite Hoard
			FirstCraft(81323, 447334),	-- Miner's Bismuth Hoard
			FirstCraft(81312, 447323),	-- Spring-Loaded Aqirite Fabric Cutters
			FirstCraft(81311, 447322),	-- Spring-Loaded Bismuth Fabric Cutters
		})),
		filter(GEMS, {
			i(221904),	-- Tinker: Earthen Delivery Drill+
			i(221905),	-- Tinker: Earthen Delivery Drill++
			i(221906),	-- Tinker: Earthen Delivery Drill+++
			i(221908),	-- Tinker: Heartseeking Health Injector+
			i(221909),	-- Tinker: Heartseeking Health Injector++
			i(221910),	-- Tinker: Heartseeking Health Injector+++
		}),
		filter(MISC, {
			i(232985, {["timeline"] = {ADDED_11_1_0}}),	-- 22H Slicks
			i(221920),	-- Adjustable Cogwheel+
			i(221921),	-- Adjustable Cogwheel++
			i(221922),	-- Adjustable Cogwheel+++
			i(221957),	-- Algari Repair Bot 11O
			i(225987),	-- Bottled Brilliance+
			i(225988),	-- Bottled Brilliance++
			i(225989),	-- Bottled Brilliance+++
			i(224586),	-- Box o' Booms+
			i(224587),	-- Box o' Booms++
			i(224588),	-- Box o' Booms+++
			i(221926),	-- Blame Redirection Device+
			i(221927),	-- Blame Redirection Device++
			i(221928),	-- Blame Redirection Device+++
			i(221932),	-- Complicated Fuse Box+
			i(221933),	-- Complicated Fuse Box++
			i(221934),	-- Complicated Fuse Box+++
			i(221938),	-- Concealed Chaos Module+
			i(221939),	-- Concealed Chaos Module++
			i(221940),	-- Concealed Chaos Module+++
			i(221953),	-- Convincingly Realistic Jumper Cables+
			i(221954),	-- Convincingly Realistic Jumper Cables++
			i(221955),	-- Convincingly Realistic Jumper Cables+++
			i(221941),	-- Energy Redistribution Beacon+
			i(221942),	-- Energy Redistribution Beacon++
			i(221943),	-- Energy Redistribution Beacon+++
			i(221917),	-- Impeccable Cogwheel+
			i(221918),	-- Impeccable Cogwheel++
			i(221919),	-- Impeccable Cogwheel+++
			i(221945),	-- Irresistible Red Button
			i(221914),	-- Overclocked Cogwheel+
			i(221915),	-- Overclocked Cogwheel++
			i(221916),	-- Overclocked Cogwheel+++
			i(221949),	-- Pausing Pylon
			i(221935),	-- Pouch of Pocket Grenades+
			i(221936),	-- Pouch of Pocket Grenades++
			i(221937),	-- Pouch of Pocket Grenades+++
			i(221923),	-- Recalibrated Safety Switch+
			i(221924),	-- Recalibrated Safety Switch++
			i(221925),	-- Recalibrated Safety Switch+++
			i(221911),	-- Serrated Cogwheel+
			i(221912),	-- Serrated Cogwheel++
			i(221913),	-- Serrated Cogwheel+++
			i(221959),	-- Summon Portable Profession Possibility Projector
		}),
		filter(PROFESSION_EQUIPMENT, {
			i(221789),	-- Aqirite Brainwave Projector
			i(221791),	-- Aqirite Fisherfriend
			i(221798),	-- Aqirite Fueled Samophlange
			i(221796),	-- Aqirite Miner's Headgear
			i(221788),	-- Bismuth Brainwave Projector
			i(221790),	-- Bismuth Fisherfriend
			i(221797),	-- Bismuth-Fueled Samophlange
			i(221795),	-- Bismuth Miner's Headgear
			i(221793),	-- Lapidary's Aqirite Clamps
			i(221792),	-- Lapidary's Bismuth Clamps
			i(221800),	-- Miner's Aqirite Hoard
			i(221799),	-- Miner's Bismuth Hoard
			i(221787),	-- Spring-Loaded Aqirite Fabric Cutters
			i(221786),	-- Spring-Loaded Bismuth Fabric Cutters
		}),
		filter(MOUNTS, {
			i(221967),	-- Crowd Pummeler 2-30 (MOUNT!)
		}),
		filter(REAGENTS, {
			i(221865),	-- Chaos Circuit+
			i(221866),	-- Chaos Circuit++
			i(221867),	-- Chaos Circuit+++
			i(221868),	-- Entropy Enhancer+
			i(221869),	-- Entropy Enhancer++
			i(221870),	-- Entropy Enhancer+++
			i(221859),	-- Gyrating Gear+
			i(221860),	-- Gyrating Gear++
			i(221861),	-- Gyrating Gear+++
			i(221853),	-- Handful of Bismuth Bolts+
			i(221854),	-- Handful of Bismuth Bolts++
			i(221855),	-- Handful of Bismuth Bolts+++
			i(221862),	-- Safety Switch+
			i(221863),	-- Safety Switch++
			i(221864),	-- Safety Switch+++
			i(221856),	-- Whimsical Wiring+
			i(221857),	-- Whimsical Wiring++
			i(221858),	-- Whimsical Wiring+++
		}),
		filter(TOYS, {
			i(219387),	-- Barrel of Fireworks (TOY!)
			i(221962),	-- Defective Escape Pod (TOY!)
			i(221964),	-- Filmless Camera (TOY!)
			i(219403),	-- Stonebound Lantern (TOY!)
			i(221966),	-- Wormhole Generator: Khaz Algar (TOY!)
		}),
		n(WEAPONS, {
			i(225370),	-- Algari Competitor's Rifle
			i(225646),	-- 4UT0-41M3R
			i(221969),	-- P.0.W. x2
		}),
	}),
	prof(FISHING, {
		n(DISCOVERY, {
			r(471359, {["timeline"] = {ADDED_11_1_0}}),	-- "Gold" Fish
			r(456154),	-- Anglerthread
			r(444795),	-- Arathor Hammerfish
			r(444803),	-- Awoken Coelacanth
			r(456591),	-- Azj-Kahet
			r(444787),	-- Bismuth Bitterling
			r(444785),	-- Bloody Perch
			r(444786),	-- Crystalline Sturgeon
			r(444802),	-- Cursed Ghoulfish
			r(444792),	-- Dilly-Dally Dace
			r(444793),	-- Dornish Pike
			r(454442),	-- Fishing Skill and You
			r(444790),	-- Goldengill Trout
			r(456590),	-- Hallowfall
			r(444797),	-- Kaheti Slum Shark
			r(456180),	-- Mereldar Fishing Derby
			r(444788),	-- Nibbling Minnow
			r(444798),	-- Pale Huskfish
			r(444801),	-- Queen's Lurefish
			r(454443),	-- Quiet River Bass
			r(444796),	-- Regal Dottyback
			r(444794),	-- Roaring Anglerseeker
			r(444799),	-- Sanguine Dogfish
			r(456152),	-- Seekerthread
			r(444791),	-- Specular Rainbowfish
			r(444800),	-- Spiked Sea Raven
			r(456589),	-- The Ringing Deeps
			r(444789),	-- Whispering Stargazer
		}),
		n(FIRST_CRAFTS_HEADER, sharedData({
			["requireSkill"] = FISHING,
		},{
			FirstCraft(85857, 471359, ADDED_11_1_0),	-- "Gold" Fish
			FirstCraft(82907, 444795),	-- Arathor Hammerfish
			FirstCraft(82915, 444803),	-- Awoken Coelacanth
			FirstCraft(82899, 444787),	-- Bismuth Bitterling
			FirstCraft(82897, 444785),	-- Bloody Perch
			FirstCraft(82898, 444786),	-- Crystalline Sturgeon
			FirstCraft(82914, 444802),	-- Cursed Ghoulfish
			FirstCraft(82896, 444792),	-- Dilly-Dally Dace
			FirstCraft(82905, 444793),	-- Dornish Pike
			FirstCraft(82902, 444790),	-- Goldengill Trout
			FirstCraft(82909, 444797),	-- Kaheti Slum Shark
			FirstCraft(82900, 444788),	-- Nibbling Minnow
			FirstCraft(82910, 444798),	-- Pale Huskfish
			FirstCraft(82913, 444801),	-- Queen's Lurefish
			FirstCraft(82904, 454443),	-- Quiet River Bass
			FirstCraft(82908, 444796),	-- Regal Dottyback
			FirstCraft(82906, 444794),	-- Roaring Anglerseeker
			FirstCraft(82911, 444799),	-- Sanguine Dogfish
			FirstCraft(82903, 444791),	-- Specular Rainbowfish
			FirstCraft(82912, 444800),	-- Spiked Sea Raven
			FirstCraft(82901, 444789),	-- Whispering Stargazer
		})),
		i(227673, {["timeline"] = {ADDED_11_1_0}}),	-- "Gold" Fish
		i(225770),	-- Algari Anglerthread
		i(225771),	-- Algari Seekerthread
		i(220145),	-- Arathor Hammerfish
		i(220153),	-- Awoken Coelacanth
		i(220137),	-- Bismuth Bitterling
		i(220135),	-- Bloody Perch
		i(220136),	-- Crystalline Sturgeon
		i(220152),	-- Cursed Ghoulfish
		i(220134),	-- Dilly-Dally Dace
		i(220143),	-- Dornish Pike
		i(222533),	-- Goldengill Trout
		i(220147),	-- Kaheti Slum Shark
		i(220138),	-- Nibbling Minnow
		i(220148),	-- Pale Huskfish
		i(220151),	-- Queen's Lurefish
		i(220142),	-- Quiet River Bass
		i(220146),	-- Regal Dottyback
		i(220144),	-- Roaring Anglerseeker
		i(220149),	-- Sanguine Dogfish
		i(211474),	-- Shadowblind Grouper
		i(224752),	-- Soaked Journal Entry
		i(220141),	-- Specular Rainbowfish
		i(220150),	-- Spiked Sea Raven
		i(235846, {["timeline"] = {ADDED_11_1_0}}),	-- Undermine Clam
		i(235845, {["timeline"] = {ADDED_11_1_0}}),	-- Undermine Clam Meat
		i(220139),	-- Whispering Stargazer
	}),
	prof(HERBALISM, {
		spell(2366, {	-- Herb Gathering
			i(210808),	-- Arathor's Spear+
			i(210809),	-- Arathor's Spear++
			i(210810),	-- Arathor's Spear+++
			i(210805),	-- Blessing Blossom+
			i(210806),	-- Blessing Blossom++
			i(210807),	-- Blessing Blossom+++
			i(213610),	-- Crystalline Powder
			i(214605),	-- Crystallized Verdant Seed
			i(224264),	-- Deepgrove Petal
			i(224835),	-- Deepgrove Roots
			i(224265),	-- Deepgrove Rose
			i(219196),	-- Empowered Mulch
			i(219195),	-- Imbued Mulch
			i(214597),	-- Irradiated Verdant Seed
			i(213613),	-- Leyline Residue
			i(210799),	-- Luredrop+
			i(210800),	-- Luredrop++
			i(210801),	-- Luredrop+++
			i(219194),	-- Magical Mulch
			i(210796),	-- Mycobloom+
			i(210797),	-- Mycobloom++
			i(210798),	-- Mycobloom+++
			i(213197),	-- Null Lotus
			i(210802),	-- Orbinid+
			i(210803),	-- Orbinid++
			i(210804),	-- Orbinid+++
			i(214595),	-- Sporefused Verdant Seed
			i(214561),	-- Verdant Seed
			i(213612),	-- Viridescent Spores
			i(213611),	-- Writhing Sample
		}),
		n(DISCOVERY, {
			r(435858),	-- Altered Luredrop
			r(435840),	-- Altered Mycobloom
			r(435864),	-- Altered Orbinid
			r(435826),	-- Arathor's Spear
			r(435823),	-- Blessing Blossom
			r(435879),	-- Camouflaged Arathor's Spear
			r(435872),	-- Camouflaged Blessing Blossom
			r(435860),	-- Camouflaged Luredrop
			r(435851),	-- Camouflaged Mycobloom
			r(435866),	-- Camouflaged Orbinid
			r(435877),	-- Crystallized Arathor's Spear
			r(435870),	-- Crystallized Blessing Blossom
			r(435857),	-- Crystallized Luredrop
			r(435838),	-- Crystallized Mycobloom
			r(435862),	-- Crystallized Orbinid
			r(439871),	-- Green Thumb
			r(435878),	-- Irradiated Arathor's Spear
			r(435871),	-- Irradiated Blessing Blossom
			r(435859),	-- Irradiated Luredrop
			r(435843),	-- Irradiated Mycobloom
			r(435865),	-- Irradiated Orbinid
			r(435821),	-- Luredrop
			r(435836),	-- Lush Arathor's Spear
			r(435834),	-- Lush Blessing Blossom
			r(435829),	-- Lush Luredrop
			r(435812),	-- Lush Mycobloom
			r(435830),	-- Lush Orbinid
			r(435822),	-- Orbinid
			r(438953),	-- Overload Altered Herb
			r(438952),	-- Overload Crystallized Herb
			r(423395),	-- Overload Empowered Herb
			r(438955),	-- Overload Irradiated Herb
			r(438961),	-- Overload Sporefused Herb
			r(435880),	-- Sporefused Arathor's Spear
			r(435873),	-- Sporefused Blessing Blossom
			r(435861),	-- Sporefused Luredrop
			r(435850),	-- Sporefused Mycobloom
			r(435867),	-- Sporefused Orbinid
		}),
		n(FIRST_CRAFTS_HEADER, sharedData({
			["requireSkill"] = HERBALISM,
		},{
			-- Arathor's Spear
			FirstCraft(79933, 435826);	-- Arathor's Spear
			FirstCraft(79937, 435879);	-- Camouflaged Arathor's Spear
			FirstCraft(79935, 435877);	-- Crystallized Arathor's Spear
			FirstCraft(79936, 435878);	-- Irradiated Arathor's Spear
			FirstCraft(79934, 435836);	-- Lush Arathor's Spear
			FirstCraft(79938, 435880);	-- Sporefused Arathor's Spear
			-- Blessing Blossom
			FirstCraft(79927, 435823);	-- Blessing Blossom
			FirstCraft(79931, 435872);	-- Camouflaged Blessing Blossom
			FirstCraft(79929, 435870);	-- Crystallized Blessing Blossom
			FirstCraft(79930, 435871);	-- Irradiated Blessing Blossom
			FirstCraft(79928, 435834);	-- Lush Blessing Blossom
			FirstCraft(79932, 435873);	-- Sporefused Blessing Blossom
			-- Luredrop
			FirstCraft(79913, 435821);	-- Luredrop
			FirstCraft(79916, 435858);	-- Altered Luredrop
			FirstCraft(79918, 435860);	-- Camouflaged Luredrop
			FirstCraft(79915, 435857);	-- Crystallized Luredrop
			FirstCraft(79917, 435859);	-- Irradiated Luredrop
			FirstCraft(79914, 435829);	-- Lush Luredrop
			FirstCraft(79919, 435861);	-- Sporefused Luredrop
			-- Mycobloom
			FirstCraft(79906, 435811);	-- Mycobloom
			FirstCraft(79909, 435840);	-- Altered Mycobloom
			FirstCraft(79911, 435851);	-- Camouflaged Mycobloom
			FirstCraft(79908, 435838);	-- Crystallized Mycobloom
			FirstCraft(79910, 435843);	-- Irradiated Mycobloom
			FirstCraft(79907, 435812);	-- Lush Mycobloom
			FirstCraft(79912, 435850);	-- Sporefused Mycobloom
			-- Orbinid
			FirstCraft(79920, 435822);	-- Orbinid
			FirstCraft(79923, 435864);	-- Altered Orbinid
			FirstCraft(79925, 435866);	-- Camouflaged Orbinid
			FirstCraft(79922, 435862);	-- Crystallized Orbinid
			FirstCraft(79924, 435865);	-- Irradiated Orbinid
			FirstCraft(79921, 435830);	-- Lush Orbinid
			FirstCraft(79926, 435867);	-- Sporefused Orbinid
		})),
	}),
	prof(INSCRIPTION, {
		spell(444181, {	-- Khaz Algar Milling
			i(224805),	-- Blossom Pigment+
			i(224804),	-- Blossom Pigment++
			i(224803),	-- Blossom Pigment+++
			i(222612),	-- Luredrop Pigment+
			i(222613),	-- Luredrop Pigment++
			i(222614),	-- Luredrop Pigment+++
			i(222618),	-- Nacreous Pigment+
			i(222619),	-- Nacreous Pigment++
			i(222620),	-- Nacreous Pigment+++
			i(224802),	-- Orbinid Pigment+
			i(224801),	-- Orbinid Pigment++
			i(224800),	-- Orbinid Pigment+++
		}),
		n(DISCOVERY, {
			spell(447868, {	-- Algari Treatise on Inscription
				r(444187),	-- Algari Treatise on Alchemy
				r(444184),	-- Algari Treatise on Blacksmithing
				r(444188),	-- Algari Treatise on Enchanting
				r(444223),	-- Algari Treatise on Engineering
				r(444182),	-- Algari Treatise on Herbalism
				r(444189),	-- Algari Treatise on Jewelcrafting
				r(444185),	-- Algari Treatise on Leatherworking
				r(444183),	-- Algari Treatise on Mining
				r(444236),	-- Algari Treatise on Skinning
				r(444186),	-- Algari Treatise on Tailoring
			}),
		}),
		n(FIRST_CRAFTS_HEADER, sharedData({
			["requireSkill"] = INSCRIPTION,
		},{
			-- Competitor's Crafts (PvP)
			FirstCraft(80748, 444338); -- Algari Competitor's Emblem
			FirstCraft(80747, 444337); -- Algari Competitor's Insignia of Alacrity
			FirstCraft(80743, 455006); -- Algari Competitor's Lamp
			FirstCraft(80746, 444336); -- Algari Competitor's Medallion
			FirstCraft(80744, 455007); -- Algari Competitor's Pillar
			FirstCraft(80745, 455008); -- Algari Competitor's Staff
			-- Combat Stats
			FirstCraft(80719, 444210); -- Algari Missive of the Aurora
			FirstCraft(80720, 444211); -- Algari Missive of the Feverflare
			FirstCraft(80721, 444212); -- Algari Missive of the Fireflash
			FirstCraft(80722, 444213); -- Algari Missive of the Harmonious
			FirstCraft(80723, 444214); -- Algari Missive of the Peerless
			FirstCraft(80724, 444215); -- Algari Missive of the Quickblade
			-- Contracts
			FirstCraft(80725, 444217); -- Contract: Assembly of the Deeps
			FirstCraft(85796, 471132, ADDED_11_1_0);	-- Contract: The Cartels of Undermine
			FirstCraft(80728, 444220); -- Contract: Council of Dornogal
			FirstCraft(80726, 444218); -- Contract: Hallowfall Arathi
			FirstCraft(80727, 444219); -- Contract: The Severed Threads
			-- Embellishments
			FirstCraft(80704, 444195); -- Darkmoon Sigil: Vivacity
			FirstCraft(80701, 444192); -- Darkmoon Sigil: Ascension
			FirstCraft(80703, 444194); -- Darkmoon Sigil: Symbiosis
			FirstCraft(80702, 444193); -- Darkmoon Sigil: Radiance
			-- Glyphs
			FirstCraft(86453, 1213583); -- Glyph of the Admiral's Pistol Shot
			FirstCraft(86451, 1213561); -- Glyph of the Ashvane Pistol Shot
			FirstCraft(86454, 1213582); -- Glyph of the Gilded Pistol Shot
			FirstCraft(86455, 1213581); -- Glyph of the Twilight Pistol Shot
			-- Inks
			FirstCraft(80730, 444222);	-- Apricate Ink
			FirstCraft(80729, 444221);	-- Shadow Ink
			-- Reagents
			FirstCraft(80699, 444190); -- Codified Greenwood
			FirstCraft(80700, 444191); -- Boundless Cipher
			-- Runes
			FirstCraft(80712, 444203); -- Vantus Rune: Nerub-ar Palace
			FirstCraft(86205, 472951, ADDED_11_1_0); -- Vantus Rune: Liberation of Undermine
			-- Profession Stats
			FirstCraft(80735, 444232); -- Algari Missive of Crafting Speed
			FirstCraft(80738, 444235); -- Algari Missive of Deftness
			FirstCraft(80736, 444233); -- Algari Missive of Finesse
			FirstCraft(80732, 444229); -- Algari Missive of Ingenuity
			FirstCraft(80734, 444231); -- Algari Missive of Multicraft
			FirstCraft(80737, 444234); -- Algari Missive of Perception
			FirstCraft(80733, 444230); -- Algari Missive of Resourcefulness
			-- Profession Treatises
			FirstCraft(80690, 444187);	-- Algari Treatise on Alchemy
			FirstCraft(80698, 444184);	-- Algari Treatise on Blacksmithing
			FirstCraft(80694, 444188);	-- Algari Treatise on Enchanting
			FirstCraft(80731, 444223);	-- Algari Treatise on Engineering
			FirstCraft(80696, 444182);	-- Algari Treatise on Herbalism
			FirstCraft(80692, 447868);	-- Algari Treatise on Inscription
			FirstCraft(80695, 444189);	-- Algari Treatise on Jewelcrafting
			FirstCraft(80693, 444185);	-- Algari Treatise on Leatherworking
			FirstCraft(80697, 444183);	-- Algari Treatise on Mining
			FirstCraft(80739, 444236);	-- Algari Treatise on Skinning
			FirstCraft(80691, 444186);	-- Algari Treatise on Tailoring
			-- Profession Equipment
			FirstCraft(80718, 444209); -- Inscribed Rolling Pin
			FirstCraft(80714, 444205); -- Silver Tongue's Quill
			FirstCraft(80716, 444207); -- Patient Alchemist's Mixing Rod
			FirstCraft(80715, 444206); -- Hasty Alchemist's Mixing Rod
			FirstCraft(80713, 444204); -- Lightweight Scribe's Quill
			FirstCraft(80717, 444208); -- Burnt Rolling Pin
			-- Weapons
			FirstCraft(80708, 444199); -- Vagabond's Bounding Baton
			FirstCraft(80707, 444198); -- Vagabond's Careful Crutch
			FirstCraft(80706, 444197); -- Vagabond's Torch
			FirstCraft(80710, 444201); -- Inquisitor's Baton
			FirstCraft(80709, 444200); -- Inquisitor's Crutch
			FirstCraft(80705, 444196); -- Inquisitor's Torch
		})),
		filter(GLYPHS, {
			i(234246),	-- Glyph of the Admiral's Pistol Shot
			i(234245),	-- Glyph of the Ashvane Pistol Shot
			i(234247),	-- Glyph of the Gilded Pistol Shot
			i(234248),	-- Glyph of the Twilight Pistol Shot
		}),
		filter(MISC, {
			i(222635),	-- Algari Missive of Crafting Speed+
			i(222636),	-- Algari Missive of Crafting Speed++
			i(222637),	-- Algari Missive of Crafting Speed+++
			i(222644),	-- Algari Missive of Deftness+
			i(222645),	-- Algari Missive of Deftness++
			i(222646),	-- Algari Missive of Deftness+++
			i(222638),	-- Algari Missive of Finesse+
			i(222639),	-- Algari Missive of Finesse++
			i(222640),	-- Algari Missive of Finesse+++
			i(222626),	-- Algari Missive of Ingenuity+
			i(222627),	-- Algari Missive of Ingenuity++
			i(222628),	-- Algari Missive of Ingenuity+++
			i(222632),	-- Algari Missive of Multicraft+
			i(222633),	-- Algari Missive of Multicraft++
			i(222634),	-- Algari Missive of Multicraft+++
			i(222641),	-- Algari Missive of Perception+
			i(222642),	-- Algari Missive of Perception++
			i(222643),	-- Algari Missive of Perception+++
			i(222629),	-- Algari Missive of Resourcefulness+
			i(222630),	-- Algari Missive of Resourcefulness++
			i(222631),	-- Algari Missive of Resourcefulness+++
			i(222579),	-- Algari Missive of the Aurora+
			i(222580),	-- Algari Missive of the Aurora++
			i(222581),	-- Algari Missive of the Aurora+++
			i(222582),	-- Algari Missive of the Feverflare+
			i(222583),	-- Algari Missive of the Feverflare++
			i(222584),	-- Algari Missive of the Feverflare+++
			i(222585),	-- Algari Missive of the Fireflash+
			i(222586),	-- Algari Missive of the Fireflash++
			i(222587),	-- Algari Missive of the Fireflash+++
			i(222588),	-- Algari Missive of the Harmonious+
			i(222589),	-- Algari Missive of the Harmonious++
			i(222590),	-- Algari Missive of the Harmonious+++
			i(222591),	-- Algari Missive of the Peerless+
			i(222592),	-- Algari Missive of the Peerless++
			i(222593),	-- Algari Missive of the Peerless+++
			i(222594),	-- Algari Missive of the Quickblade+
			i(222595),	-- Algari Missive of the Quickblade++
			i(222596),	-- Algari Missive of the Quickblade+++
			i(222546),	-- Algari Treatise on Alchemy
			i(222554),	-- Algari Treatise on Blacksmithing
			i(222550),	-- Algari Treatise on Enchanting
			TempForceMisc(i(222621)),	-- Algari Treatise on Engineering
			i(222552),	-- Algari Treatise on Herbalism
			i(222548),	-- Algari Treatise on Inscription
			i(222551),	-- Algari Treatise on Jewelcrafting
			i(222549),	-- Algari Treatise on Leatherworking
			i(222553),	-- Algari Treatise on Mining
			i(222649),	-- Algari Treatise on Skinning
			i(222547),	-- Algari Treatise on Tailoring
			i(222600),	-- Contract: Assembly of the Deeps+
			i(222601),	-- Contract: Assembly of the Deeps++
			i(222602),	-- Contract: Assembly of the Deeps+++
			i(232532, {["timeline"] = {ADDED_11_1_0}}),	-- Contract: The Cartels of Undermine+
			i(232533, {["timeline"] = {ADDED_11_1_0}}),	-- Contract: The Cartels of Undermine++
			i(232534, {["timeline"] = {ADDED_11_1_0}}),	-- Contract: The Cartels of Undermine+++
			i(222597),	-- Contract: Council of Dornogal+
			i(222598),	-- Contract: Council of Dornogal++
			i(222599),	-- Contract: Council of Dornogal+++
			i(222603),	-- Contract: Hallowfall Arathi+
			i(222604),	-- Contract: Hallowfall Arathi++
			i(222605),	-- Contract: Hallowfall Arathi+++
			i(222606),	-- Contract: The Severed Threads+
			i(222607),	-- Contract: The Severed Threads++
			i(222608),	-- Contract: The Severed Threads+++
			i(226022),	-- Darkmoon Sigil: Ascension+
			i(226023),	-- Darkmoon Sigil: Ascension++
			i(226024),	-- Darkmoon Sigil: Ascension+++
			i(226025),	-- Darkmoon Sigil: Radiance+
			i(226026),	-- Darkmoon Sigil: Radiance++
			i(226027),	-- Darkmoon Sigil: Radiance+++
			i(226028),	-- Darkmoon Sigil: Symbiosis+
			i(226029),	-- Darkmoon Sigil: Symbiosis++
			i(226030),	-- Darkmoon Sigil: Symbiosis+++
			i(226031),	-- Darkmoon Sigil: Vivacity+
			i(226032),	-- Darkmoon Sigil: Vivacity++
			i(226033),	-- Darkmoon Sigil: Vivacity+++
			i(226034),	-- Vantus Rune: Nerub-ar Palace+
			i(226035),	-- Vantus Rune: Nerub-ar Palace++
			i(226036),	-- Vantus Rune: Nerub-ar Palace+++
			i(232936, {["timeline"] = {ADDED_11_1_0}}),	-- Vantus Rune: Liberation of Undermine+
			i(232935, {["timeline"] = {ADDED_11_1_0}}),	-- Vantus Rune: Liberation of Undermine++
			i(232937, {["timeline"] = {ADDED_11_1_0}}),	-- Vantus Rune: Liberation of Undermine+++
		}),
		filter(PROFESSION_EQUIPMENT, {
			i(222577),	-- Burnt Rolling Pin
			i(222575),	-- Hasty Alchemist's Mixing Rod
			i(222578),	-- Inscribed Rolling Pin
			i(222573),	-- Lightweight Scribe's Quill
			i(222576),	-- Patient Alchemist's Mixing Rod
			i(222574),	-- Silver Tongue's Quill
		}),
		filter(REAGENTS, {
			i(222615),	-- Apricate Ink+
			i(222616),	-- Apricate Ink++
			i(222617),	-- Apricate Ink+++
			i(222558),	-- Boundless Cipher+
			i(222559),	-- Boundless Cipher++
			i(222560),	-- Boundless Cipher+++
			i(222555),	-- Codified Greenwood+
			i(222556),	-- Codified Greenwood++
			i(222557),	-- Codified Greenwood+++
			i(222609),	-- Shadow Ink+
			i(222610),	-- Shadow Ink++
			i(222611),	-- Shadow Ink+++
		}),
		spell(444224, {	-- Transcribe: Ascension
			i(222681),	-- Ace of Ascension
			i(222682),	-- Two of Ascension
			i(222683),	-- Three of Ascension
			i(222684),	-- Four of Ascension
			i(222685),	-- Five of Ascension
			i(222686),	-- Six of Ascension
			i(222687),	-- Seven of Ascension
			i(222688),	-- Eight of Ascension
		}),
		spell(444227, {	-- Transcribe: Radiance
			i(222663),	-- Ace of Radiance
			i(222664),	-- Two of Radiance
			i(222665),	-- Three of Radiance
			i(222666),	-- Four of Radiance
			i(222667),	-- Five of Radiance
			i(222668),	-- Six of Radiance
			i(222669),	-- Seven of Radiance
			i(222670),	-- Eight of Radiance
		}),
		spell(444226, {	-- Transcribe: Symbiosis
			i(222654),	-- Ace of Symbiosis
			i(222655),	-- Two of Symbiosis
			i(222656),	-- Three of Symbiosis
			i(222657),	-- Four of Symbiosis
			i(222658),	-- Five of Symbiosis
			i(222659),	-- Six of Symbiosis
			i(222660),	-- Seven of Symbiosis
			i(222661),	-- Eight of Symbiosis
		}),
		spell(444225, {	-- Transcribe: Vivacity
			i(222672),	-- Ace of Vivacity
			i(222673),	-- Two of Vivacity
			i(222674),	-- Three of Vivacity
			i(222675),	-- Four of Vivacity
			i(222676),	-- Five of Vivacity
			i(222677),	-- Six of Vivacity
			i(222678),	-- Seven of Vivacity
			i(222679),	-- Eight of Vivacity
		}),
		filter(TRINKET_F, {
			i(219933),	-- Algari Competitor's Emblem
			i(219932),	-- Algari Competitor's Insignia of Alacrity
			i(219931),	-- Algari Competitor's Medallion
			i(222680),	-- Darkmoon Deck: Ascension
			i(219672),	-- Darkmoon Deck: Radiance
			i(222653),	-- Darkmoon Deck: Symbiosis
			i(222671),	-- Darkmoon Deck: Vivacity
		}),
		n(WEAPONS, {
			i(225372),	-- Algari Competitor's Lamp
			i(225368),	-- Algari Competitor's Pillar
			i(225369),	-- Algari Competitor's Staff
			i(222570),	-- Inquisitor's Baton
			i(222569),	-- Inquisitor's Crutch
			i(222565),	-- Inquisitor's Torch
			i(222568),	-- Vagabond's Bounding Baton
			i(222567),	-- Vagabond's Careful Crutch
			i(222566),	-- Vagabond's Torch
		}),
	}),
	prof(JEWELCRAFTING, {
		n(DISCOVERY, {
			r(434020),	-- Algari Crushing
		}),
		spell(434018, {	-- Algari Prospecting
			i(212498),	-- Ambivalent Amber
			i(212505),	-- Extravagant Emerald
			i(213399),	-- Glittering Glass
			i(213398),	-- Handful of Pebbles
			i(212511),	-- Ostentatious Onyx
			i(212495),	-- Radiant Ruby
		}),
		spell(434020, {	-- Algari Crushing
			i(213219),	-- Crushed Gemstones+
			i(213220),	-- Crushed Gemstones++
			i(213221),	-- Crushed Gemstones+++
		}),
		n(ARMOR, {
			i(215144),	-- Algari Competitor's Amulet
			i(215137),	-- Algari Competitor's Signet
			i(215136),	-- Amulet of Earthen Craftsmanship
			i(215133),	-- Binding of Binding
			i(215134),	-- Fractured Gemstone Locket
			i(215130),	-- Malleable Band
			i(215131),	-- Malleable Pendant
			i(215132),	-- Marvelous Mood Ring
			i(215135),	-- Ring of Earthen Craftsmanship
		}),
		n(FIRST_CRAFTS_HEADER, sharedData({
			["requireSkill"] = JEWELCRAFTING,
		},{
			-- Prisms
			FirstCraft(81232, 435337);	-- Algari Amber Prism
			FirstCraft(81233, 435338);	-- Algari Emerald Prism
			FirstCraft(81235, 435369);	-- Algari Onyx Prism
			FirstCraft(81234, 435339);	-- Algari Ruby Prism
			FirstCraft(81236, 435370);	-- Algari Sapphire Prism
			-- Basic Reagents
			FirstCraft(81221, 435325);	-- Decorative Lens
			FirstCraft(81220, 435324);	-- Engraved Gemcutter
			FirstCraft(81219, 435323);	-- Gilded Vial
			FirstCraft(81223, 435327);	-- Inverted Prism
			FirstCraft(81222, 435326);	-- Marbled Stone
			-- Radiant Rubies
			FirstCraft(81205, 434549);	-- Deadly Ruby
			FirstCraft(81207, 434551);	-- Masterful Ruby
			FirstCraft(81206, 434550);	-- Quick Ruby
			FirstCraft(81208, 434552);	-- Versatile Ruby
			-- Ambivalent Amber
			FirstCraft(81192, 434537);	-- Deadly Amber
			FirstCraft(81195, 434539);	-- Masterful Amber
			FirstCraft(81194, 434538);	-- Quick Amber
			FirstCraft(81193, 434536);	-- Solid Amber
			FirstCraft(81196, 434540);	-- Versatile Amber
			-- Ostentatious Onyxes
			FirstCraft(81201, 434545);	-- Deadly Onyx
			FirstCraft(81203, 434547);	-- Masterful Onyx
			FirstCraft(81202, 434546);	-- Quick Onyx
			FirstCraft(81204, 434548);	-- Versatile Onyx
			-- Extravagant Emeralds
			FirstCraft(81197, 434541);	-- Deadly Emerald
			FirstCraft(81199, 434543);	-- Masterful Emerald
			FirstCraft(81198, 434542);	-- Quick Emerald
			FirstCraft(81200, 434544);	-- Versatile Emerald
			-- Stunning Sapphires
			FirstCraft(81209, 434553);	-- Deadly Sapphire
			FirstCraft(81211, 434555);	-- Masterful Sapphire
			FirstCraft(81210, 434554);	-- Quick Sapphire
			FirstCraft(81212, 434563);	-- Versatile Sapphire
			-- Jewelry
			FirstCraft(81251, 435385);	-- Amulet of Earthen Craftsmanship
			FirstCraft(81248, 435382);	-- Binding of Binding
			FirstCraft(81245, 435379);	-- Malleable Band
			FirstCraft(81249, 435383);	-- Fractured Gemstone Locket
			FirstCraft(81246, 435380);	-- Malleable Pendant
			FirstCraft(81250, 435384);	-- Ring of Earthen Craftsmanship
			-- Profession Equipment
			FirstCraft(81240, 435374);	-- Enchanter's Crystal
			FirstCraft(81238, 435372);	-- Extravagant Loupes
			FirstCraft(81242, 435376);	-- Forger's Font Inspector
			FirstCraft(81239, 435373);	-- Incanter's Shard
			FirstCraft(81244, 435378);	-- Novelist's Specs
			FirstCraft(81237, 435371);	-- Radiant Loupes
			FirstCraft(81241, 435375);	-- Right-Handed Magnifying Glass
			FirstCraft(81243, 435377);	-- Storyteller's Glasses
			-- Jewelcrafting Essentials
			FirstCraft(81229, 435334);	-- Magnificent Jeweler's Setting
			-- Optional Embellishments
			FirstCraft(81228, 435333);	-- Captured Starlight
			FirstCraft(81226, 435331);	-- Elemental Focusing Lens
			FirstCraft(81227, 435332);	-- Prismatic Null Stone
			-- Finishing Reagents
			FirstCraft(81225, 435330);	-- Ominous Energy Crystal
			FirstCraft(81224, 435329);	-- Sifted Cave Sand
			-- Benevolent Blasphemite
			FirstCraft(81258, 435392);	-- Cubic Blasphemia
			FirstCraft(81214, 435318);	-- Culminating Blasphemite
			FirstCraft(81215, 435319);	-- Elusive Blasphemite
			FirstCraft(81213, 435230);	-- Insightful Blasphemite
			-- Competitor's Crafts (PVP)
			FirstCraft(81253, 435387);	-- Algari Competitor's Amulet
			FirstCraft(81252, 435386);	-- Algari Competitor's Signet
			FirstCraft(81217, 435321);	-- Cognitive Bloodstone
			FirstCraft(81218, 435322);	-- Determined Bloodstone
			FirstCraft(81216, 435320);	-- Enduring Bloodstone
			-- Lavish Luxuries
			FirstCraft(81257, 435391);	-- Beautification Iris
			FirstCraft(81255, 435389);	-- Remembrance Stone
			-- Mounts
			--FirstCraft(XXXXX, 1226650, ADDED_11_1_5);	-- Void-Crystal Panther
		})),
		filter(GEMS, {
			i(213748),	-- Cognitive Bloodstone
			i(217113),	-- Cubic Blasphemia+
			i(217114),	-- Cubic Blasphemia++
			i(217115),	-- Cubic Blasphemia+++
			i(213741),	-- Culminating Blasphemite+
			i(213742),	-- Culminating Blasphemite++
			i(213743),	-- Culminating Blasphemite+++
			i(213501),	-- Deadly Amber+
			i(213502),	-- Deadly Amber++
			i(213503),	-- Deadly Amber+++
			i(213477),	-- Deadly Emerald+
			i(213478),	-- Deadly Emerald++
			i(213479),	-- Deadly Emerald+++
			i(213489),	-- Deadly Onyx+
			i(213490),	-- Deadly Onyx++
			i(213491),	-- Deadly Onyx+++
			i(213462),	-- Deadly Ruby+
			i(213463),	-- Deadly Ruby++
			i(213464),	-- Deadly Ruby+++
			i(213465),	-- Deadly Sapphire+
			i(213466),	-- Deadly Sapphire++
			i(213467),	-- Deadly Sapphire+++
			i(213749),	-- Determined Bloodstone
			i(213744),	-- Elusive Blasphemite+
			i(213745),	-- Elusive Blasphemite++
			i(213746),	-- Elusive Blasphemite+++
			i(213747),	-- Enduring Bloodstone
			i(213738),	-- Insightful Blasphemite+
			i(213739),	-- Insightful Blasphemite++
			i(213740),	-- Insightful Blasphemite+++
			i(213507),	-- Masterful Amber+
			i(213508),	-- Masterful Amber++
			i(213509),	-- Masterful Amber+++
			i(213480),	-- Masterful Emerald+
			i(213481),	-- Masterful Emerald++
			i(213482),	-- Masterful Emerald+++
			i(213498),	-- Masterful Onyx+
			i(213499),	-- Masterful Onyx++
			i(213500),	-- Masterful Onyx+++
			i(213456),	-- Masterful Ruby+
			i(213457),	-- Masterful Ruby++
			i(213458),	-- Masterful Ruby+++
			i(213471),	-- Masterful Sapphire+
			i(213472),	-- Masterful Sapphire++
			i(213473),	-- Masterful Sapphire+++
			i(213504),	-- Quick Amber+
			i(213505),	-- Quick Amber++
			i(213506),	-- Quick Amber+++
			i(213486),	-- Quick Emerald+
			i(213487),	-- Quick Emerald++
			i(213488),	-- Quick Emerald+++
			i(213492),	-- Quick Onyx+
			i(213493),	-- Quick Onyx++
			i(213494),	-- Quick Onyx+++
			i(213453),	-- Quick Ruby+
			i(213454),	-- Quick Ruby++
			i(213455),	-- Quick Ruby+++
			i(213468),	-- Quick Sapphire+
			i(213469),	-- Quick Sapphire++
			i(213470),	-- Quick Sapphire+++
			i(213515),	-- Solid Amber+
			i(213516),	-- Solid Amber++
			i(213517),	-- Solid Amber+++
			i(212508),	-- Stunning Sapphire
			i(213510),	-- Versatile Amber+
			i(213511),	-- Versatile Amber++
			i(213512),	-- Versatile Amber+++
			i(213483),	-- Versatile Emerald+
			i(213484),	-- Versatile Emerald++
			i(213485),	-- Versatile Emerald+++
			i(213495),	-- Versatile Onyx+
			i(213496),	-- Versatile Onyx++
			i(213497),	-- Versatile Onyx+++
			i(213459),	-- Versatile Ruby+
			i(213460),	-- Versatile Ruby++
			i(213461),	-- Versatile Ruby+++
			i(213474),	-- Versatile Sapphire+
			i(213475),	-- Versatile Sapphire++
			i(213476),	-- Versatile Sapphire+++
		}),
		filter(MISC, {
			i(213779),	-- Algari Amber Prism+
			i(213780),	-- Algari Amber Prism++
			i(213781),	-- Algari Amber Prism+++
			i(213782),	-- Algari Emerald Prism+
			i(213783),	-- Algari Emerald Prism++
			i(213784),	-- Algari Emerald Prism+++
			i(213785),	-- Algari Ruby Prism+
			i(213786),	-- Algari Ruby Prism++
			i(213787),	-- Algari Ruby Prism+++
			i(213788),	-- Algari Onyx Prism+
			i(213789),	-- Algari Onyx Prism++
			i(213790),	-- Algari Onyx Prism+++
			i(213791),	-- Algari Sapphire Prism+
			i(213792),	-- Algari Sapphire Prism++
			i(213793),	-- Algari Sapphire Prism+++
			i(213774),	-- Captured Starlight+
			i(213775),	-- Captured Starlight++
			i(213776),	-- Captured Starlight+++
			i(213768),	-- Elemental Focusing Lens+
			i(213769),	-- Elemental Focusing Lens++
			i(213770),	-- Elemental Focusing Lens+++
			i(214043),	-- Glittering Gemdust
			i(213777),	-- Magnificent Jeweler's Setting
			i(213765),	-- Ominous Energy Crystal+
			i(213766),	-- Ominous Energy Crystal++
			i(213767),	-- Ominous Energy Crystal+++
			i(213771),	-- Prismatic Null Stone+
			i(213772),	-- Prismatic Null Stone++
			i(213773),	-- Prismatic Null Stone+++
			i(213762),	-- Sifted Cave Sand+
			i(213763),	-- Sifted Cave Sand++
			i(213764),	-- Sifted Cave Sand+++
		}),
		filter(MOUNTS, {
			i(235712, {["timeline"] = {ADDED_11_1_5}}),	-- Void-Crystal Panther (MOUNT!)
		}),
		filter(PROFESSION_EQUIPMENT, {
			i(215125, {["requireSkill"] = ENCHANTING}),		-- Enchanter's Crystal
			i(215124, {["requireSkill"] = JEWELCRAFTING}),	-- Extravagant Loupes
			i(215123, {["requireSkill"] = INSCRIPTION}),	-- Forger's Font Inspector
			i(215121, {["requireSkill"] = ENCHANTING}),		-- Incanter's Shard
			i(215122, {["requireSkill"] = INSCRIPTION}),	-- Novelist's Specs
			i(215120, {["requireSkill"] = JEWELCRAFTING}),	-- Radiant Loupes
			i(215119, {["requireSkill"] = INSCRIPTION}),	-- Right-Handed Magnifying Glass
			i(215117, {["requireSkill"] = INSCRIPTION}),	-- Storyteller's Glasses
		}),
		filter(REAGENTS, {
			i(213753),	-- Decorative Lens+
			i(213754),	-- Decorative Lens++
			i(213755),	-- Decorative Lens+++
			i(213750),	-- Engraved Gemcutter+
			i(213751),	-- Engraved Gemcutter++
			i(213752),	-- Engraved Gemcutter+++
			i(211806),	-- Gilded Vial+
			i(211807),	-- Gilded Vial++
			i(211808),	-- Gilded Vial+++
			i(213759),	-- Inverted Prism+
			i(213760),	-- Inverted Prism++
			i(213761),	-- Inverted Prism+++
			i(213756),	-- Marbled Stone+
			i(213757),	-- Marbled Stone++
			i(213758),	-- Marbled Stone+++
		}),
		filter(TOYS, {
			i(215147),	-- Beautification Iris (TOY!)
			i(215145),	-- Remembrance Stone (TOY!)
		}),
	}),
	prof(LEATHERWORKING, {
		n(ARMOR, {
			filter(LEATHER, {
				i(219502),	-- Adrenal Surge Clasp
				i(217130),	-- Algari Competitor's Leather Belt
				i(217126),	-- Algari Competitor's Leather Boots
				i(217127),	-- Algari Competitor's Leather Chestpiece
				i(217132),	-- Algari Competitor's Leather Gloves
				i(217128),	-- Algari Competitor's Leather Mask
				i(217129),	-- Algari Competitor's Leather Shoulderpads
				i(217131),	-- Algari Competitor's Leather Trousers
				i(217133),	-- Algari Competitor's Leather Wristwraps
				i(219513),	-- Roiling Thunderstrike Talons
				i(219511),	-- Rook Feather Wristwraps
				i(219334),	-- Rune-Branded Armbands
				i(219333),	-- Rune-Branded Grasps
				i(219329),	-- Rune-Branded Hood
				i(219327),	-- Rune-Branded Kickers
				i(219332),	-- Rune-Branded Legwraps
				i(219330),	-- Rune-Branded Mantle
				i(219328),	-- Rune-Branded Tunic
				i(219331),	-- Rune-Branded Waistband
				i(219471),	-- Spelunker's Leather Bands
				i(219470),	-- Spelunker's Leather Footpads
				i(219472),	-- Spelunker's Leather Jerkin
				i(219479),	-- Spelunker's Practiced Britches
				i(219476),	-- Spelunker's Practiced Hat
				i(219478),	-- Spelunker's Practiced Mitts
				i(219480),	-- Spelunker's Practiced Sash
				i(219477),	-- Spelunker's Practiced Shoulders
				i(219489),	-- Waders of the Unifying Flame
				i(219512),	-- Weathered Stormfront Vest
			}),
			filter(MAIL, {
				i(217135),	-- Algari Competitor's Chain Chainmail
				i(217136),	-- Algari Competitor's Chain Cowl
				i(217141),	-- Algari Competitor's Chain Cuffs
				i(217137),	-- Algari Competitor's Chain Epaulets
				i(217140),	-- Algari Competitor's Chain Gauntlets
				i(217138),	-- Algari Competitor's Chain Girdle
				i(217139),	-- Algari Competitor's Chain Leggings
				i(217134),	-- Algari Competitor's Chain Treads
				i(219509),	-- Busy Bee's Buckle
				i(219339),	-- Glyph-Etched Binding
				i(219336),	-- Glyph-Etched Breastplate
				i(219340),	-- Glyph-Etched Cuisses
				i(219338),	-- Glyph-Etched Epaulets
				i(219341),	-- Glyph-Etched Gauntlets
				i(219337),	-- Glyph-Etched Guise
				i(219335),	-- Glyph-Etched Stompers
				i(219342),	-- Glyph-Etched Vambraces
				i(219508),	-- Reinforced Setae Flyers
				i(219492),	-- Sanctified Torchbearer's Grips
				i(219507),	-- Smoldering Pollen Hauberk
				i(219474),	-- Tracker's Chitin Cuffs
				i(219473),	-- Tracker's Chitin Galoshes
				i(219475),	-- Tracker's Chitin Hauberk
				i(219485),	-- Tracker's Toughened Girdle
				i(219483),	-- Tracker's Toughened Handguards
				i(219481),	-- Tracker's Toughened Headgear
				i(219484),	-- Tracker's Toughened Links
				i(219482),	-- Tracker's Toughened Shoulderguards
				i(219501),	-- Vambraces of Deepening Darkness
			}),
		}),
		n(FIRST_CRAFTS_HEADER, sharedData({
			["requireSkill"] = LEATHERWORKING,
		},{
			-- Arathorian Patterns
			FirstCraft(80922, 441460);	-- Blessed Weapon Grip
			FirstCraft(80927, 444073);	-- Sanctified Torchbearer's Grips
			FirstCraft(80926, 444071);	-- Waders of the Unifying Flame
			-- Bestial Patterns
			FirstCraft(80961, 443958);	-- Busy Bee's Buckle
			FirstCraft(80960, 443960);	-- Reinforced Setae Flyers
			FirstCraft(80956, 443950);	-- Roiling Thunderstrike Talons
			FirstCraft(80958, 443949);	-- Rook Feather Wristwraps
			FirstCraft(80959, 443961);	-- Smoldering Pollen Hauberk
			FirstCraft(80957, 443951);	-- Weathered Stormfront Vest
			-- Competitor's Leather (PvP)
			FirstCraft(80968, 438902);	-- Algari Competitor's Leather Belt
			FirstCraft(80962, 438898);	-- Algari Competitor's Leather Boots
			FirstCraft(80963, 438899);	-- Algari Competitor's Leather Chestpiece
			FirstCraft(80964, 438904);	-- Algari Competitor's Leather Gloves
			FirstCraft(80965, 438900);	-- Algari Competitor's Leather Mask
			FirstCraft(80967, 438901);	-- Algari Competitor's Leather Shoulderpads
			FirstCraft(80966, 438903);	-- Algari Competitor's Leather Trousers
			FirstCraft(80969, 438905);	-- Algari Competitor's Leather Wristwraps
			-- Competitor's Mail (PvP)
			FirstCraft(80971, 438907);	-- Algari Competitor's Chain Chainmail
			FirstCraft(80973, 438908);	-- Algari Competitor's Chain Cowl
			FirstCraft(80977, 438913);	-- Algari Competitor's Chain Cuffs
			FirstCraft(80975, 438909);	-- Algari Competitor's Chain Epaulets
			FirstCraft(80972, 438912);	-- Algari Competitor's Chain Gauntlets
			FirstCraft(80976, 438910);	-- Algari Competitor's Chain Girdle
			FirstCraft(80974, 438911);	-- Algari Competitor's Chain Leggings
			FirstCraft(80970, 438906);	-- Algari Competitor's Chain Treads
			-- Consumables
			FirstCraft(86778, 1216520, ADDED_11_1_0);	-- Charged Armor Kit
			FirstCraft(80953, 444103);	-- Defender's Armor Kit
			FirstCraft(80955, 444104);	-- Dual Layered Armor Kit
			FirstCraft(80954, 444102);	-- Stormbound Armor Kit
			FirstCraft(80952, 444122);	-- Thunderous Drums
			-- Leather Armor
			FirstCraft(80897, 441058);	-- Rune-Branded Armbands
			FirstCraft(80892, 441053);	-- Rune-Branded Grasps
			FirstCraft(80893, 441054);	-- Rune-Branded Hood
			FirstCraft(80890, 441052);	-- Rune-Branded Kickers
			FirstCraft(80894, 441055);	-- Rune-Branded Legwraps
			FirstCraft(80895, 441056);	-- Rune-Branded Mantle
			FirstCraft(80891, 441051);	-- Rune-Branded Tunic
			FirstCraft(80896, 441057);	-- Rune-Branded Waistband
			FirstCraft(80913, 443702);	-- Spelunker's Leather Bands
			FirstCraft(80907, 443696);	-- Spelunker's Leather Footpads
			FirstCraft(80906, 443695);	-- Spelunker's Leather Jerkin
			FirstCraft(80910, 443699);	-- Spelunker's Practiced Britches
			FirstCraft(80909, 443698);	-- Spelunker's Practiced Hat
			FirstCraft(80908, 443697);	-- Spelunker's Practiced Mitts
			FirstCraft(80912, 443701);	-- Spelunker's Practiced Sash
			FirstCraft(80911, 443700);	-- Spelunker's Practiced Shoulders
			-- Mail Armor
			FirstCraft(80904, 441065);	-- Glyph-Etched Binding
			FirstCraft(80899, 441059);	-- Glyph-Etched Breastplate
			FirstCraft(80902, 441063);	-- Glyph-Etched Cuisses
			FirstCraft(80903, 441064);	-- Glyph-Etched Epaulets
			FirstCraft(80900, 441061);	-- Glyph-Etched Gauntlets
			FirstCraft(80901, 441062);	-- Glyph-Etched Guise
			FirstCraft(80898, 441060);	-- Glyph-Etched Stompers
			FirstCraft(80905, 441066);	-- Glyph-Etched Vambraces
			FirstCraft(80921, 443710);	-- Tracker's Chitin Cuffs
			FirstCraft(80915, 443704);	-- Tracker's Chitin Galoshes
			FirstCraft(80914, 443703);	-- Tracker's Chitin Hauberk
			FirstCraft(80920, 443709);	-- Tracker's Toughened Girdle
			FirstCraft(80916, 443705);	-- Tracker's Toughened Handguards
			FirstCraft(80917, 443706);	-- Tracker's Toughened Headgear
			FirstCraft(80918, 443707);	-- Tracker's Toughened Links
			FirstCraft(80919, 443708);	-- Tracker's Toughened Shoulderguards
			-- Nerubian Patterns
			FirstCraft(80925, 444070);	-- Adrenal Surge Clasp
			FirstCraft(80924, 444068);	-- Vambraces of Deepening Darkness
			FirstCraft(80923, 441461);	-- Writhing Armor Banding
			-- Profession Equiepment
			FirstCraft(80928, 444105);	-- Apothecary's Cap
			FirstCraft(80939, 444117);	-- Arathi Leatherworker's Smock
			FirstCraft(80933, 444111);	-- Charged Scrapmaster's Gauntlets
			FirstCraft(80943, 444121);	-- Deep Tracker's Cap
			FirstCraft(80941, 444119);	-- Deep Tracker's Pack
			FirstCraft(80931, 444108);	-- Earthen Forgemaster's Apron
			FirstCraft(80937, 444115);	-- Earthen Jeweler's Cover
			FirstCraft(80934, 444112);	-- Gardener's Basket
			FirstCraft(80936, 444114);	-- Gemcutter's Apron
			FirstCraft(80942, 444120);	-- Hideseeker's Hat
			FirstCraft(80940, 444118);	-- Hideseeker's Pack
			FirstCraft(80938, 444116);	-- Hideshaper's Cover
			FirstCraft(80929, 444106);	-- Nerubian Alchemist's Hat
			FirstCraft(80932, 444110);	-- Scrapsmith's Gloves
			FirstCraft(80930, 444107);	-- Steelsmith's Apron
			FirstCraft(80935, 444113);	-- Stonebound Herbalist's Pack
			-- Reagents
			FirstCraft(80945, 444075);	-- Carapace-Backed Hide
			FirstCraft(80944, 444086);	-- Chitin Armor Banding
			FirstCraft(80946, 444076);	-- Crystalfused Hide
			FirstCraft(80949, 444079);	-- Leyfused Hide
			FirstCraft(80948, 444078);	-- Sporecoated Hide
			FirstCraft(80951, 444087);	-- Storm-Touched Weapon Wrap
			FirstCraft(80947, 444077);	-- Writhing Hide
		})),
		filter(MISC, {
			i(219495),	-- Blessed Weapon Grip+
			i(219496),	-- Blessed Weapon Grip++
			i(219497),	-- Blessed Weapon Grip+++
			i(235335, {["timeline"] = {ADDED_11_1_0}}),	-- Charged Armor Kit+
			i(235337, {["timeline"] = {ADDED_11_1_0}}),	-- Charged Armor Kit++
			i(235336, {["timeline"] = {ADDED_11_1_0}}),	-- Charged Armor Kit+++
			i(219906),	-- Defender's Armor Kit+
			i(219907),	-- Defender's Armor Kit++
			i(219908),	-- Defender's Armor Kit+++
			i(219912),	-- Dual Layered Armor Kit+
			i(219913),	-- Dual Layered Armor Kit++
			i(219914),	-- Dual Layered Armor Kit+++
			i(219909),	-- Stormbound Armor Kit+
			i(219910),	-- Stormbound Armor Kit++
			i(219911),	-- Stormbound Armor Kit+++
			i(219905),	-- Thunderous Drums
			i(219504),	-- Writhing Armor Banding+
			i(219505),	-- Writhing Armor Banding++
			i(219506),	-- Writhing Armor Banding+++
		}),
		filter(PROFESSION_EQUIPMENT, {
			i(219866),	-- Apothecary's Cap
			i(219871),	-- Arathi Leatherworker's Smock
			i(219870),	-- Charged Scrapmaster's Gauntlets
			i(219869),	-- Deep Tracker's Cap
			i(219868),	-- Deep Tracker's Pack
			i(219874),	-- Earthen Forgemaster's Apron
			i(219876),	-- Earthen Jeweler's Cover
			i(219861),	-- Gardener's Basket
			i(219875),	-- Gemcutter's Apron
			i(219863),	-- Hideseeker's Hat
			i(219862),	-- Hideseeker's Pack
			i(219865),	-- Hideshaper's Cover
			i(219872),	-- Nerubian Alchemist's Hat
			i(219864),	-- Scrapsmith's Gloves
			i(219873),	-- Steelsmith's Apron
			i(219867),	-- Stonebound Herbalist's Pack
		}),
		filter(REAGENTS, {
			i(219880),	-- Carapace-Backed Hide+
			i(219881),	-- Carapace-Backed Hide++
			i(219882),	-- Carapace-Backed Hide+++
			i(219898),	-- Chitin Armor Banding+
			i(219899),	-- Chitin Armor Banding++
			i(219900),	-- Chitin Armor Banding+++
			i(219883),	-- Crystalfused Hide+
			i(219884),	-- Crystalfused Hide++
			i(219885),	-- Crystalfused Hide+++
			i(219892),	-- Leyfused Hide+
			i(219893),	-- Leyfused Hide++
			i(219894),	-- Leyfused Hide+++
			i(219889),	-- Sporecoated Hide+
			i(219890),	-- Sporecoated Hide++
			i(219891),	-- Sporecoated Hide+++
			i(219901),	-- Storm-Touched Weapon Wrap+
			i(219902),	-- Storm-Touched Weapon Wrap++
			i(219903),	-- Storm-Touched Weapon Wrap+++
			i(219886),	-- Writhing Hide+
			i(219887),	-- Writhing Hide++
			i(219888),	-- Writhing Hide+++
		}),
		n(WEAPONS, {
		}),
	}),
	prof(MINING, {
		spell(2575, {	-- Mining
			i(210933),	-- Aqirite+
			i(210934),	-- Aqirite++
			i(210935),	-- Aqirite+++
			i(210930),	-- Bismuth+
			i(210931),	-- Bismuth++
			i(210932),	-- Bismuth+++
			i(213610),	-- Crystalline Powder
			i(217707),	-- Imperfect Null Stone
			i(210936),	-- Ironclaw Ore+
			i(210937),	-- Ironclaw Ore++
			i(210938),	-- Ironclaw Ore+++
			i(224838),	-- Null Sliver
			i(210939),	-- Null Stone
			i(224583),	-- Slab of Slate
			i(224584),	-- Erosion Polished Slate
			i(213611),	-- Writhing Sample
		}),
		n(DISCOVERY, {
			r(439713, {	-- Aqirite Seam
				["description"] = "Best farmed in 'The Underkeep' Delve during a story that allows ores to spawn. The first room on the right can an Aqirite Seam.\n\nCan also be found very very rarely in Caves in Hallowfall & Ajzkahet as well as in the Sinkhole, Skittering Breach and Underkeep Delve",
				["maps"] = { HALLOWFALL, AZJ_KAHET, THE_SINKHOLE, SKITTERING_BREACH, THE_UNDERKEEP,}
			}),
			r(439707),	-- Aqirite
			r(439712),	-- Bismuth Seam
			r(439725),	-- Camouflaged Aqirite
			r(439724),	-- Camouflaged Bismuth
			r(439726),	-- Camouflaged Ironclaw
			r(439716),	-- Crystallized Aqirite
			r(439715),	-- Crystallized Bismuth
			r(439717),	-- Crystallized Ironclaw
			r(439722),	-- EZ-Mine Aqirite
			r(439721),	-- EZ-Mine Bismuth
			r(439723),	-- EZ-Mine Ironclaw
			r(439708),	-- Ironclaw
			r(439714),	-- Ironclaw Seam
			r(439742),	-- Overload Crystallized
			r(423394),	-- Overload Empowered Deposit
			r(439744),	-- Overload Explosives
			r(439747),	-- Overload Webbed Deposits
			r(439743),	-- Overload Weeping
			r(439710),	-- Rich Aqirite
			r(439709),	-- Rich Bismuth
			r(439711),	-- Rich Ironclaw
			r(439728),	-- Webbed Aqirite
			r(439727),	-- Webbed Bismuth
			r(439729),	-- Webbed Ironclaw
			r(439719),	-- Weeping Aqirite
			r(439718),	-- Weeping Bismuth
			r(439720),	-- Weeping Ironclaw
		}),
		n(FIRST_CRAFTS_HEADER, sharedData({
			["requireSkill"] = MINING,
		},{
			-- Aqirite
			--FirstCraft(XXXXX, 439707);	-- Aqirite //??how do we not have this yet?
			FirstCraft(80357, 439713);	-- Aqirite Seam
			FirstCraft(80369, 439725);	-- Camouflaged Aqirite
			FirstCraft(80360, 439716);	-- Crystallized Aqirite
			FirstCraft(80366, 439722);	-- EZ-Mine Aqirite
			FirstCraft(80354, 439710);	-- Rich Aqirite
			FirstCraft(80372, 439728);	-- Webbed Aqirite
			FirstCraft(80363, 439719);	-- Weeping Aqirite
			-- Bismuth
			FirstCraft(80350, 439705);	-- Bismuth
			FirstCraft(80356, 439712);	-- Bismuth Seam
			FirstCraft(80368, 439724);	-- Camouflaged Bismuth
			FirstCraft(80359, 439715);	-- Crystallized Bismuth
			FirstCraft(80365, 439721);	-- EZ-Mine Bismuth
			FirstCraft(80353, 439709);	-- Rich Bismuth
			FirstCraft(80371, 439727);	-- Webbed Bismuth
			FirstCraft(80362, 439718);	-- Weeping Bismuth
			-- Ironclaw
			FirstCraft(80352, 439708);	-- Ironclaw
			FirstCraft(80358, 439714);	-- Ironclaw Seam
			FirstCraft(80370, 439726);	-- Camouflaged Ironclaw
			FirstCraft(80361, 439717);	-- Crystallized Ironclaw
			FirstCraft(80367, 439723);	-- EZ-Mine Ironclaw
			FirstCraft(80355, 439711);	-- Rich Ironclaw
			FirstCraft(80373, 439729);	-- Webbed Ironclaw
			FirstCraft(80364, 439720);	-- Weeping Ironclaw
		})),
	}),
	prof(SKINNING, {
		n(FIRST_CRAFTS_HEADER, sharedData({
			["requireSkill"] = SKINNING,
		},{
			FirstSkin(83410, 216031),	-- Skinning Abyssal Devourer
			FirstSkin(83411, 214151),	-- Skinning Ahg'zagall
			FirstSkin(81450, 219264),	-- Skinning Bloodmaw
			FirstSkin(83414, 216042),	-- Skinning Cha'tak
			FirstSkin(85549, 214757),	-- Skinning Croakit
			FirstSkin(83408, 220286),	-- Skinning Deepflayer Broodmother
			FirstSkin(83404, 218393),	-- Skinning Disturbed Earthgorger
			FirstSkin(81446, 224924),	-- Skinning Elusive Gargantuan Stormscale
			FirstSkin(81445, 224515),	-- Skinning Elusive Ironhide Maelstrom Wolf
			FirstSkin(81447, 224963),	-- Skinning Elusive Kaheti Battle Tank
			FirstSkin(81448, 226232),	-- Skinning Elusive Razormouth Steelhide
			FirstSkin(81451, 219265),	-- Skinning Emperor Pitfang
			FirstSkin(85548, 220492),	-- Skinning Finclaw Bloodtide
			FirstSkin(86795, 228601, ADDED_11_0_7),	-- Skinning Ghostmaker
			FirstSkin(87592, 230935, ADDED_11_1_0),	-- Skinning Grease
			FirstSkin(87593, 230936, ADDED_11_1_0),	-- Skinning Grime
			FirstSkin(87590, 231017, ADDED_11_1_0),	-- Skinning Grimewick
			FirstSkin(83402, 221668),	-- Skinning Horror of the Shallows
			FirstSkin(83413, 221327),	-- Skinning Kaheti Silk Hauler
			FirstSkin(81455, 220275),	-- Skinning King Splash
			FirstSkin(83409, 220285),	-- Skinning Lurker of the Deeps
			FirstSkin(83400, 221534),	-- Skinning Lytfang the Lost
			FirstSkin(83416, 216044),	-- Skinning Maddened Siegebomber
			FirstSkin(83406, 220890),	-- Skinning Matriarch Charfuria
			FirstSkin(81458, 218452),	-- Skinning Murkshade
			FirstSkin(87589, 230995, ADDED_11_1_0),	-- Skinning Nitro
			FirstSkin(81452, 219267),	-- Skinning Plaguehart
			FirstSkin(83403, 221786),	-- Skinning Pride of Beledar
			FirstSkin(87591, 230934, ADDED_11_1_0),	-- Skinning Ratspit
			FirstSkin(85547, 207826),	-- Skinning Ravageant
			FirstSkin(87594, 230931, ADDED_11_1_0),	-- Skinning Scrapbeak
			FirstSkin(87596, 233471, ADDED_11_1_0),	-- Skinning Scrapchewer
			FirstSkin(85550, 219278),	-- Skinning Shallowshell the Clacker
			FirstSkin(84259, 228439),	-- Skinning Slatefang
			FirstSkin(83405, 221217),	-- Skinning Spore-infused Shalewing
			FirstSkin(85551, 221690),	-- Skinning Strength of Beledar
			FirstSkin(83407, 221126),	-- Skinning Tephratennae
			FirstSkin(81456, 220271),	-- Skinning Terror of the Forge
			FirstSkin(83401, 221648),	-- Skinning The Perchfather
			FirstSkin(81453, 219271),	-- Skinning Twice-Stinger the Wretched
			FirstSkin(83415, 216037),	-- Skinning Vilewing
			FirstSkin(87595, 233472, ADDED_11_1_0),	-- Skinning Volstrike the Charged
			FirstSkin(81449, 219263),	-- Skinning Warphorn
			FirstSkin(83412, 216039),	-- Skinning Xishorr
			FirstSkin(81457, 220270),	-- Skinning Zilthara
		})),
		spell(423342, {	-- Khaz Algar Skinning
			i(224781),	-- Abyssal Fur
			i(218338),	-- Bottled Storm
			i(218339),	-- Burning Cinderbee Setae
			i(212667),	-- Gloom Chitin+
			i(212668),	-- Gloom Chitin++
			i(212669),	-- Gloom Chitin+++
			i(218337),	-- Honed Bone Shards
			i(218336),	-- Kaheti Swarm Chitin
			i(217840),	-- Refine Algari Chitin
			i(217818),	-- Refine Algari Hides
			i(217822),	-- Refine Algari Leather
			i(212664),	-- Stormcharged Leather+
			i(212665),	-- Stormcharged Leather++
			i(212666),	-- Stormcharged Leather+++
			i(212674),	-- Sunless Carapace+
			i(212675),	-- Sunless Carapace++
			i(212676),	-- Sunless Carapace+++
			i(219013),	-- Superb Beast Fang
			i(212670),	-- Thunderous Hide+
			i(212672),	-- Thunderous Hide++
			i(212673),	-- Thunderous Hide+++
			i(224780),	-- Toughened Thunderous Hide
		}),
		i(219005),	-- Arathor Hammerfish Lure
		i(219019),	-- Beast Lure Scent
		i(218738),	-- Bizarrely Shaped Stomach
		i(219009),	-- Crystalline Creature Lure
		i(219004),	-- Dornish Pike Lure
		i(219007),	-- Elusive Creature Lure
		i(228959),	-- Pile of Unidentified Meat
		i(219003),	-- Quiet River Bass Lure
		i(219006),	-- Roaring Anglerseeker Lure
		i(219002),	-- Specular Rainbowfish Lure
		i(219011),	-- Sporefused Creature Lure
		i(219008),	-- Supreme Beast Lure
		i(219010),	-- Writhing Creature Lure
		--
		i(224782),	-- Razor Talon
	}),
	prof(TAILORING, {
		n(ARMOR, {
			i(217120),	-- Algari Competitor's Cloth Bands
			i(217125),	-- Algari Competitor's Cloth Cloak
			i(217122),	-- Algari Competitor's Cloth Gloves
			i(217121),	-- Algari Competitor's Cloth Hood
			i(217117),	-- Algari Competitor's Cloth Leggings
			i(217124),	-- Algari Competitor's Cloth Sash
			i(217118),	-- Algari Competitor's Cloth Shoulderpads
			i(217119),	-- Algari Competitor's Cloth Treads
			i(217123),	-- Algari Competitor's Cloth Tunic
			i(222817),	-- Consecrated Cloak
			i(222816),	-- Consecrated Cord
			i(222815),	-- Consecrated Cuffs
			i(222822),	-- Consecrated Gloves
			i(222818),	-- Consecrated Hood
			i(222820),	-- Consecrated Leggings
			i(222821),	-- Consecrated Mantle
			i(222819),	-- Consecrated Robe
			i(222814),	-- Consecrated Slippers
			i(222812),	-- Cool Sunset Bracers
			i(222809),	-- Gloves of the Woven Dusk
			i(222807),	-- Grips of the Woven Dawn
			i(222833),	-- Pioneer's Cloth Cuffs
			i(222837),	-- Pioneer's Cloth Robe
			i(222832),	-- Pioneer's Cloth Slippers
			i(222835),	-- Pioneer's Cloth Cloak
			i(222834),	-- Pioneer's Cloth Cord
			i(222840),	-- Pioneer's Perfected Gloves
			i(222836),	-- Pioneer's Cloth Hood
			i(222838),	-- Pioneer's Perfected Leggings
			i(222839),	-- Pioneer's Perfected Mantle
			i(222810),	-- Slippers of the Woven Dusk
			i(222808),	-- Treads of the Woven Dawn
			i(222811),	-- Warm Sunrise Bracers
		}),
		filter(BAGS, {
			i(222859),	-- Concoctor's Clutch
			i(222864),	-- Darkmoon Duffle
			i(222854),	-- Dawnweave Reagent Bag
			i(222856),	-- Duskweave Bag
			i(222866),	-- Excavator's Haversack
			i(222865),	-- Gardener's Seed Satchel
			i(225936),	-- Hideseeker's Tote
			i(222861),	-- Hideshaper's Workbag
			i(222860),	-- Ignition Satchel
			i(222867),	-- Jeweler's Purse
			i(222862),	-- Magically "Infinite" Messenger
			i(222863),	-- Prodigy's Toolbox
			i(224852),	-- The Severed Satchel
			i(222853),	-- Weavercloth Bag
			i(222855),	-- Weavercloth Reagent Bag
		}),
		filter(MISC, {
			i(225729),	-- Algari Weaverline
			i(222879),	-- Bright Polishing Cloth+
			i(222880),	-- Bright Polishing Cloth++
			i(222881),	-- Bright Polishing Cloth+++
			i(222868),	-- Dawnthread Lining+
			i(222869),	-- Dawnthread Lining++
			i(222870),	-- Dawnthread Lining+++
			i(222894),	-- Daybreak Spellthread+
			i(222895),	-- Daybreak Spellthread++
			i(222896),	-- Daybreak Spellthread+++
			i(222871),	-- Duskthread Lining+
			i(222872),	-- Duskthread Lining++
			i(222873),	-- Duskthread Lining+++
			i(222788),	-- Khaz Algar Unraveling
			i(222876),	-- Gritty Polishing Cloth+
			i(222877),	-- Gritty Polishing Cloth++
			i(222878),	-- Gritty Polishing Cloth+++
			i(222885),	-- Preserving Embroidery Thread+
			i(222886),	-- Preserving Embroidery Thread++
			i(222887),	-- Preserving Embroidery Thread+++
			i(222891),	-- Sunset Spellthread+
			i(222892),	-- Sunset Spellthread++
			i(222893),	-- Sunset Spellthread+++
			i(224440),	-- Weavercloth Bandage+
			i(224441),	-- Weavercloth Bandage++
			i(224442),	-- Weavercloth Bandage+++
			i(222882),	-- Weavercloth Embroidery Thread+
			i(222883),	-- Weavercloth Embroidery Thread++
			i(222884),	-- Weavercloth Embroidery Thread+++
			i(222888),	-- Weavercloth Spellthread+
			i(222889),	-- Weavercloth Spellthread++
			i(222890),	-- Weavercloth Spellthread+++
		}),
		filter(PROFESSION_EQUIPMENT, {
			i(222850),	-- Artisan Alchemist's Robe
			i(222851),	-- Artisan Chef's Hat
			i(222849),	-- Artisan Enchanter's Hat
			i(222848),	-- Artisan Fishing Cap
			i(222847),	-- Artisan Gardening Hat
			i(222852),	-- Artisan Tailor's Coat
			i(222845),	-- Weavercloth Alchemist's Robe
			i(222846),	-- Weavercloth Chef's Hat
			i(222843),	-- Weavercloth Enchanter's Hat
			i(222842),	-- Weavercloth Fishing Cap
			i(222841),	-- Weavercloth Gardening Hat
			i(222844),	-- Weavercloth Tailor's Coat
		}),
		filter(REAGENTS, {
			i(228930),	-- Adorning Ribbon
			i(222801),	-- Dawnweave Bolt+
			i(222802),	-- Dawnweave Bolt++
			i(222803),	-- Dawnweave Bolt+++
			i(222798),	-- Duskweave Bolt+
			i(222799),	-- Duskweave Bolt++
			i(222800),	-- Duskweave Bolt+++
			i(224832),	-- Exquisite Weavercloth Bolt+
			i(224833),	-- Exquisite Weavercloth Bolt++
			i(224834),	-- Exquisite Weavercloth Bolt+++
			i(224764),	-- Mosswool Thread
			i(222792),	-- Spool of Dawnthread+
			i(222793),	-- Spool of Dawnthread++
			i(222794),	-- Spool of Dawnthread+++
			i(222789),	-- Spool of Duskthread+
			i(222790),	-- Spool of Duskthread++
			i(222791),	-- Spool of Duskthread+++
			i(222795),	-- Spool of Weaverthread+
			i(222796),	-- Spool of Weaverthread++
			i(222797),	-- Spool of Weaverthread+++
			i(222804),	-- Weavercloth Bolt+
			i(222805),	-- Weavercloth Bolt++
			i(222806),	-- Weavercloth Bolt+++
		}),
		n(FIRST_CRAFTS_HEADER, sharedData({
			["requireSkill"] = TAILORING,
		},{
			FirstCraft(80794, 438892);	-- Algari Competitor's Cloth Bands
			FirstCraft(80799, 438897);	-- Algari Competitor's Cloth Cloak
			FirstCraft(80796, 438894);	-- Algari Competitor's Cloth Gloves
			FirstCraft(80795, 438893);	-- Algari Competitor's Cloth Hood
			FirstCraft(80791, 438889);	-- Algari Competitor's Cloth Leggings
			FirstCraft(80798, 438896);	-- Algari Competitor's Cloth Sash
			FirstCraft(80792, 438890);	-- Algari Competitor's Cloth Shoulderpads
			FirstCraft(80793, 438891);	-- Algari Competitor's Cloth Treads
			FirstCraft(80797, 438895);	-- Algari Competitor's Cloth Tunic
			FirstCraft(80869, 456706);	-- Algari Weaverline
			FirstCraft(80837, 446973);	-- Artisan Alchemist's Robe
			FirstCraft(80838, 446974);	-- Artisan Chef's Hat
			FirstCraft(80836, 446972);	-- Artisan Enchanter's Hat
			FirstCraft(80835, 446971);	-- Artisan Fishing Cap
			FirstCraft(80834, 446970);	-- Artisan Gardening Hat
			FirstCraft(80839, 446975);	-- Artisan Tailor's Coat
			FirstCraft(80860, 446996);	-- Bright Polishing Cloth
			FirstCraft(80846, 446982);	-- Concoctor's Clutch
			FirstCraft(80813, 446940);	-- Consecrated Cloak
			FirstCraft(80812, 446939);	-- Consecrated Cord
			FirstCraft(80811, 446938);	-- Consecrated Cuffs
			FirstCraft(80818, 446945);	-- Consecrated Gloves
			FirstCraft(80814, 446941);	-- Consecrated Hood
			FirstCraft(80816, 446943);	-- Consecrated Leggings
			FirstCraft(80817, 446944);	-- Consecrated Mantle
			FirstCraft(80815, 446942);	-- Consecrated Robe
			FirstCraft(80810, 446937);	-- Consecrated Slippers
			FirstCraft(80808, 446935);	-- Cool Sunset Bracers
			FirstCraft(80851, 446987);	-- Darkmoon Duffle
			FirstCraft(80855, 446991);	-- Dawnthread Lining
			FirstCraft(80801, 446928);	-- Dawnweave Bolt
			FirstCraft(80841, 446977);	-- Dawnweave Reagent Bag
			FirstCraft(80865, 447001);	-- Daybreak Spellthread
			FirstCraft(80856, 446992);	-- Duskthread Lining
			FirstCraft(80843, 446979);	-- Duskweave Bag
			FirstCraft(80800, 446927);	-- Duskweave Bolt
			FirstCraft(80853, 446989);	-- Excavator's Haversack
			FirstCraft(80867, 454397);	-- Exquisite Weavercloth Bolt
			FirstCraft(80852, 446988);	-- Gardener's Seed Satchel
			FirstCraft(80805, 446932);	-- Gloves of the Woven Dusk
			FirstCraft(80803, 446930);	-- Grips of the Woven Dawn
			FirstCraft(80862, 446998);	-- Gritty Polishing Cloth
			FirstCraft(80870, 447888);	-- Hideseeker's Tote
			FirstCraft(80848, 446984);	-- Hideshaper's Workbag
			FirstCraft(80847, 446983);	-- Ignition Satchel
			FirstCraft(80854, 446990);	-- Jeweler's Purse
			FirstCraft(80849, 446985);	-- Magically "Infinite" Messenger
			FirstCraft(80822, 446958);	-- Pioneer's Cloth Cloak
			FirstCraft(80821, 446957);	-- Pioneer's Cloth Cord
			FirstCraft(80820, 446956);	-- Pioneer's Cloth Cuffs
			FirstCraft(80823, 446959);	-- Pioneer's Cloth Hood
			FirstCraft(80824, 446960);	-- Pioneer's Cloth Robe
			FirstCraft(80819, 446955);	-- Pioneer's Cloth Slippers
			FirstCraft(80827, 446963);	-- Pioneer's Perfected Gloves
			FirstCraft(80825, 446961);	-- Pioneer's Perfected Leggings
			FirstCraft(80826, 446962);	-- Pioneer's Perfected Mantle
			FirstCraft(80859, 446995);	-- Preserving Embroidery Thread
			FirstCraft(80850, 446986);	-- Prodigy's Toolbox
			FirstCraft(80806, 446933);	-- Slippers of the Woven Dusk
			FirstCraft(80864, 447000);	-- Sunset Spellthread
			FirstCraft(80868, 454431);	-- The Severed Satchel
			FirstCraft(80804, 446931);	-- Treads of the Woven Dawn
			FirstCraft(80807, 446934);	-- Warm Sunrise Bracers
			FirstCraft(80832, 446968);	-- Weavercloth Alchemist's Robe
			FirstCraft(80840, 446976);	-- Weavercloth Bag
			FirstCraft(80866, 447002);	-- Weavercloth Bandage
			FirstCraft(80802, 446929);	-- Weavercloth Bolt
			FirstCraft(80833, 446969);	-- Weavercloth Chef's Hat
			FirstCraft(80830, 446966);	-- Weavercloth Enchanter's Hat
			FirstCraft(80829, 446965);	-- Weavercloth Fishing Cap
			FirstCraft(80828, 446964);	-- Weavercloth Gardening Hat
			FirstCraft(80842, 446978);	-- Weavercloth Reagent Bag
			FirstCraft(80863, 446999);	-- Weavercloth Spellthread
			FirstCraft(80831, 446967);	-- Weavercloth Tailor's Coat
			FirstCraft(80861, 446997);	-- Weavercloth Embroidery Thread
		})),
	}),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.TWW, bubbleDownSelf({ ["timeline"] = { ADDED_11_0_2 } }, {
	n(PROFESSIONS, {
		prof(ALCHEMY, {
			q(82473),	-- Transmutation 15/30
			q(82474),	-- Transmutation 30/30
			q(82388),	-- Together with First Craft of Algari Mana Potion or Algari Healing Potion
			-- Unsure what are these

			q(81898),	-- On proc of bonus flask

			--q(78604),	-- Randomly when crafting Wild Experimentation
						-- When learning Algari Mana Potion (first use of Mycobloom in Wild Experimentation)
						-- "was doing DF experiments in dornigal"
						-- "Alchemy learning [Algarischer Manatrank] (430591)"


			--q(81090),	-- Randomly when crafting Wild Experimentation
						-- Randomly when crafting Thaumaturgy
		}),
		prof(BLACKSMITHING, {
			q(83111),	-- 10/40 Everburning Forge
			q(83112),	-- 20/40 Everburning Forge
			q(83131),	-- 30/40 Everburning Forge
			q(83132),	-- 40/40 Everburning Forge
		}),
		prof(FISHING, {
			q(82767),	-- Extra HQT for Bloody Perch
		}),
		prof(HERBALISM, {
			q(81415),	-- 40/40 Overloading the Underground
		}),
		prof(MINING, {
			q(82317),	-- 45/45 Mastering the Mysterious
		}),
		prof(SKINNING, {
			q(81440),	-- 20/40 Tanning
			q(81441),	-- 40/40 Tanning
			q(81442),	-- 10/40 Meat Carver
			q(81443),	-- 30/40 Meat Carver
			q(81444),	-- 40/40 Meat Carver
		}),
		prof(TAILORING, {
			q(84591),	-- 0/20 Dawnweaving
			q(84592),	-- 20/20 Dawnweaving
			q(84593),	-- 0/20 Duskweaving
			q(84594),	-- 30/30 Less is More
		}),
		n(PROFESSIONS, {	-- double header on purpose - Darkal
			-- Using Contracts (automated)
			-- q(84484),	-- Contract: Assembly of the Deeps [Rank 1] (spellID 454934)
			-- q(84483),	-- Contract: Assembly of the Deeps [Rank 2] (spellID 454935)
			-- q(84482),	-- Contract: Assembly of the Deeps [Rank 3] (spellID 454936)
			-- q(84473),	-- Contract: Council of Dornogal [Rank 1] (spellID 454931)
			-- q(84474),	-- Contract: Council of Dornogal [Rank 2] (spellID 454932)
			-- q(84475),	-- Contract: Council of Dornogal [Rank 3] (spellID 454933)
			-- q(84479),	-- Contract: Hallowfall Arathi [Rank 1] (spellID 454937)
			-- q(84480),	-- Contract: Hallowfall Arathi [Rank 2] (spellID 454938)
			-- q(84481),	-- Contract: Hallowfall Arathi [Rank 3] (spellID 454939)
			-- q(84478),	-- Contract: The Severed Threads [Rank 1] (spellID 454940)
			-- q(84477),	-- Contract: The Severed Threads [Rank 2] (spellID 454941)
			-- q(84476),	-- Contract: The Severed Threads [Rank 3] (spellID 454942)
			-- Craftable / Sparks
			q(82039),	-- first Fractured Spark of Omens
			q(85395, {["timeline"]={ADDED_11_1_0_SEASONSTART}}),	-- Fractured Spark of Fortunes
			q(90664, {["timeline"]={ADDED_11_1_0_SEASONSTART}}),	-- Triggers wtih 90660 A Golden Circumstance
		}),
	}),
})));