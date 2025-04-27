local oi = GetRecipeHelperForProfession(TAILORING);
local i = function(argument0, ...)
	if type(argument0) == "number" then
		oi(argument0, ...);
	else
		-- Ignore the first argument if it's the name of the item.
		-- CRIEVE NOTE: Added this because I'm a lazy bastard that didn't want to senselessly copy+paste all the names into comments. :)
		-- Someone with excel can probably easily convert it into the "proper" data format for these files.
		oi(...);
	end
end
local MOONCLOTH = 26798;
local SHADOWEAVE = 26801;
local SPELLFIRE = 26797;

-----------------
--   CLASSIC   --
-----------------
-- Crieve added this stuff.
i("Red Linen Robe", 2598, 2389);
i("Gray Woolen Robe", 2601, 2403);
i("Green Woolen Bag", 4292, 3758);
i("Red Woolen Boots", 4345, 3847);
i("Heavy Woolen Cloak", 4346, 3844);
i("Reinforced Woolen Shoulders", 4347, 3849);
i("Phoenix Gloves", 4348, 3868);
i("Phoenix Pants", 4349, 3851);
i("Spider Silk Slippers", 4350, 3856);
i("Shadow Hood", 4351, 3858);
i("Boots of the Enchanter", 4352, 3860);
i("Spider Belt", 4353, 3863);
i("Rich Purple Silk Shirt", 4354, 3872);
i("Icy Cloak", 4355, 3862);
i("Star Belt", 4356, 3864);
i("Red Linen Bag", 5771, 6686);
i("Red Woolen Bag", 5772, 6688);
i("Robes of Arcana", 5773, 6692);
i("Green Silk Pack", 5774, 6693);
i("Black Silk Pack", 5775, 6695);
i("Blue Linen Vest", 6270, 7630);
i("Red Linen Vest", 6271, 7629);
i("Blue Linen Robe", 6272, 7633);
i("Blue Overalls", 6274, 7639);
i("Greater Adept's Robe", 6275, 7643);
i("Stylish Blue Shirt", 6390, 7892);
i("Stylish Green Shirt", 6391, 7893);
i("Dark Silk Shirt", 6401, 3870);
i("Crimson Silk Shoulders", 7084, 8793);
i("Azure Shoulders", 7085, 8795);
i("Earthen Silk Belt", 7086, 8797);
i("Crimson Silk Cloak", 7087, 8789);
i("Crimson Silk Robe", 7088, 8802);
i("Azure Silk Cloak", 7089, 8786);
i("Green Silk Armor", 7090, 8784);
i("Truefaith Gloves", 7091, 8782);
i("Hands of Darkness", 7092, 8780);
i("Azure Silk Gloves", 7114, 3854);
i("Red Mageweave Vest", 10300, 12056);
i("White Bandit Mask", 10301, 12059);
i("Red Mageweave Pants", 10302, 12060);
i("Orange Martial Shirt", 10311, 12064);
i("Red Mageweave Gloves", 10312, 12066);
i("Lavender Mageweave Shirt", 10314, 12075);
i("Red Mageweave Shoulders", 10315, 12078);
i("Colorful Kilt", 10316, 12047);
i("Pink Mageweave Shirt", 10317, 12080);
i("Admiral's Hat", 10318, 12081);
i("Red Mageweave Headband", 10320, 12084);
i("Tuxedo Shirt", 10321, 12085);
i("Tuxedo Pants", 10323, 12089);
i("White Wedding Dress", 10325, 12091);
i("Tuxedo Jacket", 10326, 12093);
i("Shadoweave Mask", 10463, 12086);
i("Black Swashbuckler's Shirt", 10728, 3873);
i("Frostweave Tunic", 14466, 18403);
i("Frostweave Robe", 14467, 18404);
i("Leather-Reinforced Runecloth Bag", 228121, 461727);
i("Runecloth Bag", 14468, 18405);
i("Runecloth Robe", 14469, 18406);
i("Runecloth Tunic", 14470, 18407);
i("Cindercloth Vest", 14471, 18408);
i("Runecloth Cloak", 14472, 18409);
i("Ghostweave Belt", 14473, 18410);
i("Frostweave Gloves", 14474, 18411);
i("Cindercloth Gloves", 14476, 18412);
i("Ghostweave Gloves", 14477, 18413);
i("Brightcloth Robe", 14478, 18414);
i("Brightcloth Gloves", 14479, 18415);
i("Ghostweave Vest", 14480, 18416);
i("Runecloth Gloves", 14481, 18417);
i("Cindercloth Cloak", 14482, 18418);
i("Felcloth Pants", 14483, 18419);
i("Brightcloth Cloak", 14484, 18420);
i("Wizardweave Leggings", 14485, 18421);
i("Cloak of Fire", 14486, 18422);
i("Runecloth Boots", 14488, 18423);
i("Frostweave Pants", 14489, 18424);
i("Cindercloth Pants", 14490, 18434);
i("Runecloth Pants", 14491, 18438);
i("Felcloth Boots", 14492, 18437);
i("Robe of Winter Night", 14493, 18436);
i("Brightcloth Pants", 14494, 18439);
i("Ghostweave Pants", 14495, 18441);
i("Felcloth Hood", 14496, 18442);
i("Mooncloth Leggings", 14497, 18440);
i("Runecloth Headband", 14498, 18444);
i("Mooncloth Bag", 14499, 18445);
i("Wizardweave Robe", 14500, 18446);
i("Mooncloth Vest", 14501, 18447);
i("Runecloth Shoulders", 14504, 18449);
i("Wizardweave Turban", 14505, 18450);
i("Felcloth Robe", 14506, 18451);
i("Mooncloth Shoulders", 14507, 18448);
i("Felcloth Shoulders", 14508, 18453);
i("Mooncloth Circlet", 14509, 18452);
i("Bottomless Bag", 14510, 18455);
i("Gloves of Spell Mastery", 14511, 18454);
i("Truefaith Vestments", 14512, 18456);
i("Robe of the Archmage", 14513, 18457);
i("Robe of the Void", 14514, 18458);
i("Mooncloth", 14526, 18560);
i("Bright Yellow Shirt", 14627, 3869);
i("Enchanter's Cowl", 14630, 3857);
i("Enchanter's Cowl", 217258, 439102);
i("Flarecore Mantle", 17017, 20848);
i("Flarecore Gloves", 17018, 20849);
i("Flarecore Wraps", 18265, 22759);
i("Core Felcloth Bag", 21371, 26087);
i("Soul Pouch", 21358, 26085);
i("Enchanted Mageweave Pouch", 22307, 27658);

i("Fractured Mind Pauldrons", 0, 446193);
i("Mantle of Insanity", 0, 446194);
i("Shoulderpads of the Deranged", 0, 446195);
i("Embroidered Belt of the Archmage", 228477, 462282);
i("Belt of the Archmage", 18414, 22866);
i("Felcloth Gloves", 18415, 22867);
i("Inferno Gloves", 18416, 22868);
i("Mooncloth Gloves", 18417, 22869);
i("Cloak of Warding", 18418, 22870);
i("Mooncloth Robe", 18487, 22902);
i("Incandescent Mooncloth Robe", 228303, 461708);

i("Wisdom of the Timbermaw", 19215, 23662);
i("Argent Boots", 19216, 23664);
i("Argent Shoulders", 19217, 23665);
i("Mantle of the Timbermaw", 19218, 23663);
i("Flarecore Robe", 19219, 23666);
i("Flarecore Leggings", 19220, 23667);

i("Bloodvine Vest", 19764, 24091);
i("Bloodvine Leggings", 19765, 24092);
i("Bloodvine Boots", 19766, 24093);
i("Runed Stygian Leggings", 20546, 24901);
i("Runed Stygian Boots", 20547, 24903);
i("Runed Stygian Belt", 20548, 24902);

i("Enchanted Runecloth Bag", 22308, 27659, PHASE_FIVE);
i("Big Bag of Enchantment", 22309, 27660);
i("Cenarion Herb Bag", 22310, 27724);
i("Satchel of Cenarius", 22312, 27725);

i("Gaea's Embrace", 22683, 28210);
i("Sylvan Shoulders", 22772, 28482);
i("Sylvan Crown", 22773, 28481);
i("Sylvan Vest", 22774, 28480);

i(22684, 28205);	-- Glacial Gloves
i(22685, 28208);	-- Glacial Cloak
i(22686, 28207);	-- Glacial Vest
i(22687, 28209);	-- Glacial Wrists
i(17724, 21945);	-- Green Holiday Shirt
i(21722, 26403);	-- Festival Dress
i(21723, 26407);	-- Festival Suit

-- #if SEASON_OF_DISCOVERY
-- SEASON OF DISCOVERY --
-- QUEST --
i(0, 429351);	-- Extraplanar Spidersilk Boots
-- ITEM --
i(215369, 435841);	-- Invoker's Cord
i(215370, 435848);	-- Invoker's Mantle
i(211247, 428424);	-- Phoenix Bindings

------------------
-- PATCH 1.15.1 --
------------------
--- ITEM ---
i(215149, 435610);	-- Gneuro-Linked Arcano-Filament Monocle
i(215368, 435827);	-- Hyperconductive Arcano-Filament
i("Black Mageweave Vest", 0, 439086);
i("Black Mageweave Lessings", 0, 439088);
i("Boots of the Enchanter", 217254, 439097);
i("Crimson Silk Shoulders", 217251, 439093);
i("Crimson Silk Robe", 217244, 439085);

------------------
-- PATCH 1.15.5 --
------------------
i(234445, 1214173);	-- Bolt of Qiraji Silk
i(234244, 1213534);	-- Qiraji Silk Scarf
i(234249, 1213536);	-- Qiraji Silk Cape
i(234250, 1213538);	-- Qiraji Silk Cloak
i(234251, 1213540);	-- Qiraji Silk Drape
i(234314, 1213740);	-- Sylvan Shoulders
i(234316, 1213742);	-- Sylvan Crown
i(234318, 1213744);	-- Sylvan Vest
i(234240, 1213527);	-- Vampiric Cowl
i(234241, 1213530);	-- Vampiric Shawl
i(234242, 1213532);	-- Vampiric Robe

-- #endif

-------------------
--- PATCH 2.0.1 ---
-------------------
--- NYI ---
i(24315, 31461);	-- Heavy Netherweave Net
i(0, 36670);		-- Lifeblood Belt
i(30474, 36672);	-- Lifeblood Bracers
i(30472, 36669);	-- Lifeblood Leggings
i(0, 36667);		-- Netherflame Belt
i(30471, 36668);	-- Netherflame Boots
i(30469, 36665);	-- Netherflame Robe

-------------------
--- PATCH 2.0.5 ---
-------------------
--- TRAINER ---
i(0, 26790);	-- Tailoring (Master) [REMOVED 8.0.1]
i(0, 26745);	-- Bolt of Netherweave
i(0, 26746);	-- Netherweave Bag
i(0, 26765);	-- Netherweave Belt
i(0, 26772);	-- Netherweave Boots
i(0, 26764);	-- Netherweave Bracers
i(0, 26770);	-- Netherweave Gloves
i(0, 31460);	-- Netherweave Net
i(0, 26771);	-- Netherweave Pants
--- ITEM ---
i(21906, 26783);	-- Arcanoweave Boots
i(21905, 26782);	-- Arcanoweave Bracers
i(21907, 26784);	-- Arcanoweave Robe
i(24314, 31459);	-- Bag of Jewels
i(24313, 31456);	-- Battlecast Hood
i(24310, 31453);	-- Battlecast Pants
i(24304, 31444);	-- Black Belt of Knowledge
i(24298, 31437);	-- Blackstrike Bracers
i(21892, 26747);	-- Bolt of Imbued Netherweave
i(21894, 26750);	-- Bolt of Soulcloth
i(24297, 31435);	-- Bracers of Havok
i(30833, 37873);	-- Cloak of Arcane Evasion
i(24300, 31440);	-- Cloak of Eternity
i(24299, 31438);	-- Cloak of the Black Void
i(21915, 26759);	-- Ebon Shadowbag
i(30842, 37882);	-- Flameheart Bracers
i(30843, 37883);	-- Flameheart Gloves
i(30844, 37884);	-- Flameheart Vest
i(24303, 31443);	-- Girdle of Ruination
i(24295, 31433);	-- Golden Spellthread
i(21893, 26749);	-- Imbued Netherweave Bag
i(21899, 26776);	-- Imbued Netherweave Boots
i(21898, 26775);	-- Imbued Netherweave Pants
i(21900, 26777);	-- Imbued Netherweave Robe
i(21901, 26778);	-- Imbued Netherweave Tunic
i(24307, 31450);	-- Manaweave Cloak
i(24292, 31430);	-- Mystic Spellthread
i(21896, 26773);	-- Netherweave Robe
i(21897, 26774);	-- Netherweave Tunic
i(21895, 26751);	-- Primal Mooncloth
i(21919, 26763);	-- Primal Mooncloth Bag
i(24305, 31448);	-- Resolute Cape
i(24294, 31432);	-- Runic Spellthread
i(30483, 36686);	-- Shadowcloth
i(24293, 31431);	-- Silver Spellthread
i(21902, 26779);	-- Soulcloth Gloves
i(21903, 26780);	-- Soulcloth Shoulders
i(21904, 26781);	-- Soulcloth Vest
i(24316, 31373);	-- Spellcloth
i(21911, 26755);	-- Spellfire Bag
i(24312, 31455);	-- Spellstrike Hood
i(24309, 31452);	-- Spellstrike Pants
i(24296, 31434);	-- Unyielding Bracers [See Also 2.4.0]
i(24302, 31442);	-- Unyielding Girdle [See Also 2.4.0]
i(24306, 31449);	-- Vengeance Wrap
i(24301, 31441);	-- White Remedy Cape
i(24311, 31454);	-- Whitemend Hood
i(24308, 31451);	-- Whitemend Pants
--- MOONCLOTH ---
i(0, 26798, nil, MOONCLOTH);		-- Mooncloth Tailoring [REMOVED 4.0.1]
-- #if BEFORE CATA
i(21916, 26760, nil, MOONCLOTH);	-- Primal Mooncloth Belt
i(21917, 26762, nil, MOONCLOTH);	-- Primal Mooncloth Robe
i(21918, 26761, nil, MOONCLOTH);	-- Primal Mooncloth Shoulders
-- #else
i(21916, 26760);	-- Primal Mooncloth Belt
i(21917, 26762);	-- Primal Mooncloth Robe
i(21918, 26761);	-- Primal Mooncloth Shoulders
-- #endif
--- SHADOWEAVE ---
i(0, 26801, nil, SHADOWEAVE);	-- Shadoweave Tailoring [REMOVED 4.0.1]
-- #if BEFORE CATA
i(21914, 26757, nil, SHADOWEAVE);	-- Frozen Shadoweave Boots
i(21913, 26758, nil, SHADOWEAVE);	-- Frozen Shadoweave Robe
i(21912, 26756, nil, SHADOWEAVE);	-- Frozen Shadoweave Shoulders
-- #else
i(21914, 26757);	-- Frozen Shadoweave Boots
i(21913, 26758);	-- Frozen Shadoweave Robe
i(21912, 26756);	-- Frozen Shadoweave Shoulders
-- #endif
--- SPELLFIRE ---
i(0, 26797, nil, SPELLFIRE);	-- Spellfire Tailoring [REMOVED 4.0.1]
-- #if BEFORE CATA
i(21908, 26752, nil, SPELLFIRE);	-- Spellfire Belt
i(21909, 26753, nil, SPELLFIRE);	-- Spellfire Gloves
i(21910, 26754, nil, SPELLFIRE);	-- Spellfire Robe
-- #else
i(21908, 26752);	-- Spellfire Belt
i(21909, 26753);	-- Spellfire Gloves
i(21910, 26754);	-- Spellfire Robe
-- #endif





-------------------
--- PATCH 2.1.0 ---
-------------------
--- ITEM ---
i(30280, 36315);	-- Belt of Blasting
i(30281, 36316);	-- Belt of the Long Road
i(30282, 36317);	-- Boots of Blasting
i(30283, 36318);	-- Boots of the Long Road
i(32754, 41205);	-- Bracers of Nimble Thought
i(32755, 41206);	-- Mantle of Nimble Thought
i(32447, 40060);	-- Night's End
i(32438, 40021);	-- Soulguard Bracers
i(32440, 40024);	-- Soulguard Girdle
i(32439, 40023);	-- Soulguard Leggings
i(32437, 40020);	-- Soulguard Slippers
i(32753, 41208);	-- Swiftheal Mantle
i(32752, 41207);	-- Swiftheal Wraps

-------------------
--- PATCH 2.3.0 ---
-------------------
--- ITEM ---
i(34261, 44950);	-- Green Winter Clothes
i(34319, 44958);	-- Red Winter Clothes

-------------------
--- PATCH 2.4.0 ---
-------------------
--- ITEM ---
i(35205, 46129);	-- Hands of Eternal Light
i(35207, 46131);	-- Robe of Eternal Light
i(35204, 46128);	-- Sunfire Handwraps
i(35206, 46130);	-- Sunfire Robe


i(35308, 31434);	-- Unyielding Bracers [See Also 2.4.0]
i(35309, 31442);	-- Unyielding Girdle [See Also 2.4.0]

-------------------
--- PATCH 2.4.2 ---
-------------------
--- ITEM ---
i(37915, 49677);	-- Dress Shoes
i(38327, 50644);	-- Haliscan Jacket
i(38328, 50647);	-- Haliscan Pantaloons

-------------------
--- PATCH 2.4.3 ---
-------------------
--- ITEM ---
i(38229, 50194);	-- Mycah's Botanical Bag

-------------------
--- PATCH 3.0.1 ---
-------------------
--- TRAINER ---
i(0, 51309);	-- Tailoring (Grand Master) [REMOVED 8.0.1]

-------------------
--- PATCH 3.0.2 ---
-------------------
--- TRAINER ---
i(0, 56023);	-- Aurora Slippers
i(0, 56010);	-- Azure Spellthread
i(0, 55925);	-- Black Duskweave Leggings
i(0, 55941);	-- Black Duskweave Robe
i(0, 55943);	-- Black Duskweave Wristwraps
i(0, 55899);	-- Bolt of Frostweave
i(0, 55900);	-- Bolt of Imbued Frostweave
i(0, 56015);	-- Cloak of Frozen Spirits
i(0, 56014);	-- Cloak of the Moon
i(0, 55769);	-- Darkglow Embroidery
i(0, 56020);	-- Deep Frozen Cord
i(0, 55914);	-- Duskweave Belt
i(0, 55924);	-- Duskweave Boots
i(0, 55919);	-- Duskweave Cowl
i(0, 55922);	-- Duskweave Gloves
i(0, 55901);	-- Duskweave Leggings
i(0, 55921);	-- Duskweave Robe
i(0, 55923);	-- Duskweave Shoulders
i(0, 55920);	-- Duskweave Wristwraps
i(0, 56002);	-- Ebonweave
i(0, 56027);	-- Ebonweave Gloves
i(0, 56026);	-- Ebonweave Robe
i(0, 56021);	-- Frostmoon Pants
i(0, 59582);	-- Frostsavage Belt
i(0, 59585);	-- Frostsavage Boots
i(0, 59583);	-- Frostsavage Bracers
i(0, 59589);	-- Frostsavage Cowl
i(0, 59586);	-- Frostsavage Gloves
i(0, 59588);	-- Frostsavage Leggings
i(0, 59587);	-- Frostsavage Robe
i(0, 59584);	-- Frostsavage Shoulders
i(0, 56007);	-- Frostweave Bag
i(0, 55898);	-- Frostweave Net
i(0, 55908);	-- Frostwoven Belt
i(0, 55906);	-- Frostwoven Boots
i(0, 55907);	-- Frostwoven Cowl
i(0, 55904);	-- Frostwoven Gloves
i(0, 56030);	-- Frostwoven Leggings
i(0, 55903);	-- Frostwoven Robe
i(0, 55902);	-- Frostwoven Shoulders
i(0, 56031);	-- Frostwoven Wristwraps
i(0, 60993);	-- Glacial Robe
i(0, 60994);	-- Glacial Slippers
i(0, 60990);	-- Glacial Waistband
i(0, 56000);	-- Green Workman's Shirt
i(0, 56018);	-- Hat of Wintry Doom
i(0, 56022);	-- Light Blessed Mittens
i(0, 55642);	-- Lightweave Embroidery [REMOVED 6.0.2]
i(0, 56034);	-- Master's Spellthread [Rank 1]
i(0, 56001);	-- Moonshroud
i(0, 56025);	-- Moonshroud Gloves
i(0, 56024);	-- Moonshroud Robe
i(0, 55911);	-- Mystic Frostwoven Robe
i(0, 55910);	-- Mystic Frostwoven Shoulders
i(0, 55913);	-- Mystic Frostwoven Wristwraps
i(0, 56039);	-- Sanctified Spellthread [Rank 1]
i(0, 56008);	-- Shining Spellthread
i(0, 56019);	-- Silky Iceshard Boots
i(0, 56003);	-- Spellweave
i(0, 56029);	-- Spellweave Gloves
i(0, 56028);	-- Spellweave Robe
i(0, 55777);	-- Swordguard Embroidery
i(0, 55995);	-- Yellow Lumberjack Shirt
--- ITEM ---
i(42183, 56004);	-- Abyssal Bag
i(42173, 55994);	-- Blue Lumberjack Shirt
i(42176, 55998);	-- Blue Workman's Shirt
i(42187, 56009);	-- Brilliant Spellthread
-- i(43876, 59390);	-- Cloth Scavenging \\ Northern Cloth Scavenging (This has a few sources and needs looked at further.)
i(42184, 56005);	-- Glacial Bag
i(42175, 55996);	-- Green Lumberjack Shirt
i(42185, 56006);	-- Mysterious Bag
i(42172, 55993);	-- Red Lumberjack Shirt
i(42177, 55997);	-- Red Workman's Shirt
i(42178, 55999);	-- Rustic Workman's Shirt
i(42188, 56011);	-- Sapphire Spellthread

-------------------
--- PATCH 3.0.3 ---
-------------------
--- TRAINER ---
i(0, 60969);	-- Flying Carpet
i(0, 60971);	-- Magnificent Flying Carpet
i(0, 56016);	-- Wispcloak

-------------------
--- PATCH 3.0.8 ---
-------------------
i(44917, 26407); -- Pattern: Festival Suit (Guessed via Duplicate SpellID Match with Sourced RecipeID)
i(44916, 26403); -- Pattern: Festival Dress (Guessed via Duplicate SpellID Match with Sourced RecipeID)

-------------------
--- PATCH 3.1.0 ---
-------------------
--- TRAINER ---
i(0, 64730);	-- Cloak of Crimson Snow
i(0, 64729);	-- Frostguard Drape
i(0, 63742);	-- Spidersilk Drape
--- ITEM ---
i(45104, 63205);	-- Cord of the White Dawn
i(45774, 63924);	-- Emerald Bag
i(45102, 63203);	-- Sash of Ancient Power
i(45105, 63206);	-- Savior's Slippers
i(45103, 63204);	-- Spellslinger's Slippers

-------------------
--- PATCH 3.2.0 ---
-------------------
--- ITEM ---
i(47654, 67079);	-- Bejeweled Wizard's Bracers [A]
i(47639, 67145);	-- Bejeweled Wizard's Bracers [H]
i(47655, 67066);	-- Merlin's Robe [A]
i(47638, 67146);	-- Merlin's Robe [H]
i(47656, 67065);	-- Royal Moonshroud Bracers [A]
i(47637, 67147);	-- Royal Moonshroud Bracers [H]
i(47657, 67064);	-- Royal Moonshroud Robe [A]
i(47636, 67144);	-- Royal Moonshroud Robe [H]

-------------------
--- PATCH 3.3.0 ---
-------------------
--- ITEM ---
i(49954, 70551);	-- Deathfrost Boots
i(49953, 70550);	-- Leggings of Woven Death
i(49955, 70552);	-- Lightweave Leggings
i(49956, 70553);	-- Sandals of Consecration

-------------------
--- PATCH 3.3.3 ---
-------------------
--- ITEM ---
i(54798, 75597);	-- Frosty Flying Carpet

--------------------
--- PATCH 4.0.3a ---
--------------------
--- TRAINER ---
i(0, 74964);	-- Bolt of Embersilk Cloth
i(0, 75248);	-- Deathsilk Belt
i(0, 75252);	-- Deathsilk Boots
i(0, 75249);	-- Deathsilk Bracers
i(0, 75256);	-- Deathsilk Cowl
i(0, 75253);	-- Deathsilk Gloves
i(0, 75254);	-- Deathsilk Leggings
i(0, 75257);	-- Deathsilk Robe
i(0, 75251);	-- Deathsilk Shoulders
i(0, 75146);	-- Dream of Azshara
i(0, 75142);	-- Dream of Deepholm
i(0, 94743);	-- Dream of Destruction
i(0, 75144);	-- Dream of Hyjal
i(0, 75145);	-- Dream of Ragnaros
i(0, 75141);	-- Dream of Skywall
i(0, 75264);	-- Embersilk Bag
i(0, 75247);	-- Embersilk Net
i(0, 75250);	-- Enchanted Spellthread
i(0, 75255);	-- Ghostly Spellthread
i(0, 75268);	-- Hyjal Expedition Bag
i(0, 75154);	-- Master's Spellthread [Rank 2]
i(0, 75265);	-- Otherworldly Bag
i(0, 75155);	-- Sanctified Spellthread [Rank 2]
i(0, 75258);	-- Spiritmend Belt
i(0, 75261);	-- Spiritmend Boots
i(0, 75259);	-- Spiritmend Bracers
i(0, 75266);	-- Spiritmend Cowl
i(0, 75262);	-- Spiritmend Gloves
i(0, 75263);	-- Spiritmend Leggings
i(0, 75267);	-- Spiritmend Robe
i(0, 75260);	-- Spiritmend Shoulders
i(0, 75156);	-- Tailoring (Illustrious Grand Master) [REMOVED 8.0.1]
--- ITEM ---
i(54601, 75298);	-- Belt of the Depths
i(68199, 75288);	-- Black Embersilk Gown
i(54603, 75300);	-- Breeches of Mended Nightmares
i(54602, 75299);	-- Dreamless Belt
i(54604, 75301);	-- Flame-Ascended Pantaloons
i(67541, 75289);	-- High Society Top Hat
i(54605, 75308);	-- Illusionary Bag
i(54599, 75309);	-- Powerful Enchanted Spellthread
i(54600, 75310);	-- Powerful Ghostly Spellthread
--- NYI ---
i(0, 75183);	-- Unravel Embersilk Cloth
i(0, 75143);	--
i(0, 75172);	--
i(0, 75175);	--
i(0, 75178);	--

-------------------
--- PATCH 4.2.0 ---
-------------------
--- ITEM ---
i(69976, 99460);	-- Boots of the Black Flame
i(69966, 99449);	-- Don Tayo's Inferno Mittens
i(69975, 99459);	-- Endless Dream Walkers
i(69965, 99448);	-- Grips of Altered Reality
i(70176, 100585);	-- Luxurious Silk Gem Bag

-------------------
--- PATCH 4.3.0 ---
-------------------
--- TRAINER ---
-- CRIEVE NOTE: In Cata Classic, these got renamed to Bloodthirsty instead of Vicious.
i(0, 75293);	-- Vicious Embersilk Belt
i(0, 75297);	-- Vicious Embersilk Boots
i(0, 75270);	-- Vicious Embersilk Bracers
i(0, 99537);	-- Vicious Embersilk Cape
i(0, 75295);	-- Vicious Embersilk Gloves
i(0, 75291);	-- Vicious Embersilk Shoulders
i(0, 75269);	-- Vicious Fireweave Belt
i(0, 75294);	-- Vicious Fireweave Boots
i(0, 75290);	-- Vicious Fireweave Bracers
i(0, 75296);	-- Vicious Fireweave Gloves
i(0, 75292);	-- Vicious Fireweave Shoulders
--- ITEM ---
i(72004, 101923);	-- Bracers of Unconquered Power
i(72003, 101922);	-- Dreamwraps of the Light
i(72002, 101921);	-- Lavaquake Legwraps
-- CRIEVE NOTE: In Cata Classic, these got renamed to Bloodthirsty instead of Vicious.
i(54593, 75306);	-- Vicious Embersilk Cowl
i(54594, 75307);	-- Vicious Embersilk Pants
i(54595, 75305);	-- Vicious Embersilk Robe
i(54596, 75304);	-- Vicious Fireweave Cowl
i(54597, 75302);	-- Vicious Fireweave Pants
i(54598, 75303);	-- Vicious Fireweave Robe
i(72000, 101920);	-- World Mender's Pants
--- NYI ---
i(0, 75287);	--
i(0, 102171);	--

-- #if ANYCLASSIC
-----------------
-- PATCH 4.4.1 --
-----------------
--- TRAINER ---
i(0, 1216338);	-- Bloodthirsty Embersilk Cape
-----------------
-- PATCH 4.4.2 --
-----------------
--- NYI ---
i(0, 1224213);	-- Emberfire Belt
i(0, 1224217);	-- Emberfire Boots
i(0, 1224209);	-- Emberfire Bracers
i(0, 1224215);	-- Emberfire Gloves
i(0, 1224211);	-- Emberfire Shoulders
i(0, 1224208);	-- Fireweave Belt
i(0, 1224214);	-- Fireweave Boots
i(0, 1224210);	-- Fireweave Bracers
i(0, 1224216);	-- Fireweave Gloves
i(0, 1224212);	-- Fireweave Shoulders
--- TRAINER ---
i(0, 1224154);	-- Vicious Embersilk Belt
i(0, 1224155);	-- Vicious Embersilk Boots
i(0, 1224156);	-- Vicious Embersilk Bracers
i(0, 1224158);	-- Vicious Embersilk Gloves
i(0, 1224161);	-- Vicious Embersilk Shoulders
i(0, 1224162);	-- Vicious Fireweave Belt
i(0, 1224163);	-- Vicious Fireweave Boots
i(0, 1224164);	-- Vicious Fireweave Bracers
i(0, 1224166);	-- Vicious Fireweave Gloves
i(0, 1224169);	-- Vicious Fireweave Shoulders
--- ITEM ---
i(238123, 1224222);	-- Pattern: Emberfire Cowl
i(238124, 1224223);	-- Pattern: Emberfire Pants
i(238125, 1224221);	-- Pattern: Emberfire Robe
i(238126, 1224220);	-- Pattern: Fireweave Cowl
i(238127, 1224218);	-- Pattern: Fireweave Pants
i(238128, 1224219);	-- Pattern: Fireweave Robe
i(238068, 1224157);	-- Pattern: Vicious Embersilk Cowl
i(238069, 1224159);	-- Pattern: Vicious Embersilk Pants
i(238070, 1224160);	-- Pattern: Vicious Embersilk Robe
i(238071, 1224165);	-- Pattern: Vicious Fireweave Cowl
i(238072, 1224167);	-- Pattern: Vicious Fireweave Pants
i(238073, 1224168);	-- Pattern: Vicious Fireweave Robe
-- #endif

-------------------
--- PATCH 5.0.4 ---
-------------------
--- TRAINER ---
i(0, 125551);	-- Bolt of Windwool Cloth
i(0, 125553);	-- Cerulean Spellthread
i(0, 125557);	-- Imperial Silk
i(0, 125496);	-- Master's Spellthread [Rank 3]
i(0, 125552);	-- Pearlescent Spellthread
i(0, 125497);	-- Sanctified Spellthread [Rank 3]
i(0, 130325);	-- Song of Harmony
i(0, 110426);	-- Tailoring (Zen Master) [REMOVED 8.0.1]
i(0, 125530);	-- Windwool Belt
i(0, 125529);	-- Windwool Boots
i(0, 125528);	-- Windwool Bracers
i(0, 125526);	-- Windwool Gloves
i(0, 125523);	-- Windwool Hood
i(0, 125527);	-- Windwool Pants
i(0, 125524);	-- Windwool Shoulders
i(0, 125525);	-- Windwool Tunic
--- ITEM ---
i(86361, 125540);	-- Contender's Satin Amice
i(86367, 125546);	-- Contender's Satin Belt
i(86360, 125539);	-- Contender's Satin Cowl
i(86365, 125544);	-- Contender's Satin Cuffs
i(86366, 125545);	-- Contender's Satin Footwraps
i(86363, 125542);	-- Contender's Satin Handwraps
i(86364, 125543);	-- Contender's Satin Pants
i(86362, 125541);	-- Contender's Satin Raiment
i(86353, 125532);	-- Contender's Silk Amice
i(86359, 125538);	-- Contender's Silk Belt
i(86352, 125531);	-- Contender's Silk Cowl
i(86357, 125536);	-- Contender's Silk Cuffs
i(86358, 125537);	-- Contender's Silk Footwraps
i(86355, 125534);	-- Contender's Silk Handwraps
i(86356, 125535);	-- Contender's Silk Pants
i(86354, 125533);	-- Contender's Silk Raiment
i(86371, 125550);	-- Gloves of Creation
i(86376, 125555);	-- Greater Cerulean Spellthread
i(86375, 125554);	-- Greater Pearlescent Spellthread
i(86380, 125559);	-- Imperial Silk Gloves
i(86381, 125560);	-- Legacy of the Emperor
i(86379, 125558);	-- Robe of Eternal Rule
i(86370, 125549);	-- Robes of Creation
i(86377, 125556);	-- Royal Satchel
i(86369, 125548);	-- Spelltwister's Gloves
i(86368, 125547);	-- Spelltwister's Grand Robe
i(86382, 125561);	-- Touch of the Light
--- NYI ---
i(0, 125481);	--
i(0, 125482);	--
i(0, 125483);	--

-------------------
--- PATCH 5.1.0 ---
-------------------
--- TRAINER ---
i(0, 134585);	-- Bipsi's Gloves

-------------------
--- PATCH 5.2.0 ---
-------------------
--- DISCOVERY ---
i(0, 137907);	-- Crafted Dreadful Gladiator's Cape of Cruelty
i(0, 137908);	-- Crafted Dreadful Gladiator's Cape of Prowess
i(0, 137936);	-- Crafted Dreadful Gladiator's Cloak of Alacrity
i(0, 137937);	-- Crafted Dreadful Gladiator's Cloak of Prowess
i(0, 137910);	-- Crafted Dreadful Gladiator's Cord of Accuracy
i(0, 137909);	-- Crafted Dreadful Gladiator's Cord of Cruelty
i(0, 137911);	-- Crafted Dreadful Gladiator's Cord of Meditation
i(0, 137915);	-- Crafted Dreadful Gladiator's Cuffs of Accuracy
i(0, 137917);	-- Crafted Dreadful Gladiator's Cuffs of Meditation
i(0, 137916);	-- Crafted Dreadful Gladiator's Cuffs of Prowess
i(0, 137918);	-- Crafted Dreadful Gladiator's Drape of Cruelty
i(0, 137920);	-- Crafted Dreadful Gladiator's Drape of Meditation
i(0, 137919);	-- Crafted Dreadful Gladiator's Drape of Prowess
i(0, 137942);	-- Crafted Dreadful Gladiator's Felweave Amice
i(0, 137939);	-- Crafted Dreadful Gladiator's Felweave Cowl
i(0, 137938);	-- Crafted Dreadful Gladiator's Felweave Handguards
i(0, 137941);	-- Crafted Dreadful Gladiator's Felweave Raiment
i(0, 137940);	-- Crafted Dreadful Gladiator's Felweave Trousers
i(0, 137926);	-- Crafted Dreadful Gladiator's Mooncloth Gloves
i(0, 137927);	-- Crafted Dreadful Gladiator's Mooncloth Helm
i(0, 137928);	-- Crafted Dreadful Gladiator's Mooncloth Leggings
i(0, 137930);	-- Crafted Dreadful Gladiator's Mooncloth Mantle
i(0, 137929);	-- Crafted Dreadful Gladiator's Mooncloth Robe
i(0, 137931);	-- Crafted Dreadful Gladiator's Satin Gloves
i(0, 137932);	-- Crafted Dreadful Gladiator's Satin Hood
i(0, 137933);	-- Crafted Dreadful Gladiator's Satin Leggings
i(0, 137935);	-- Crafted Dreadful Gladiator's Satin Mantle
i(0, 137934);	-- Crafted Dreadful Gladiator's Satin Robe
i(0, 137925);	-- Crafted Dreadful Gladiator's Silk Amice
i(0, 137922);	-- Crafted Dreadful Gladiator's Silk Cowl
i(0, 137921);	-- Crafted Dreadful Gladiator's Silk Handguards
i(0, 137924);	-- Crafted Dreadful Gladiator's Silk Robe
i(0, 137923);	-- Crafted Dreadful Gladiator's Silk Trousers
i(0, 137913);	-- Crafted Dreadful Gladiator's Treads of Alacrity
i(0, 137912);	-- Crafted Dreadful Gladiator's Treads of Cruelty
i(0, 137914);	-- Crafted Dreadful Gladiator's Treads of Meditation
i(0, 138598);	-- Falling Blossom Cowl
i(0, 138600);	-- Falling Blossom Hood
i(0, 138599);	-- Falling Blossom Sandals
i(0, 138597);	-- Falling Blossom Treads

-------------------
--- PATCH 5.4.0 ---
-------------------
--- ITEM ---
i(0, 146925);	-- Accelerated Celestial Cloth
i(0, 143011);	-- Celestial Cloth
--- DISCOVERY ---
i(0, 142964);	-- Belt of the Night Sky
i(0, 143053);	-- Crafted Malevolent Gladiator's Cape of Cruelty
i(0, 143054);	-- Crafted Malevolent Gladiator's Cape of Prowess
i(0, 143082);	-- Crafted Malevolent Gladiator's Cloak of Alacrity
i(0, 143083);	-- Crafted Malevolent Gladiator's Cloak of Prowess
i(0, 143056);	-- Crafted Malevolent Gladiator's Cord of Accuracy
i(0, 143055);	-- Crafted Malevolent Gladiator's Cord of Cruelty
i(0, 143057);	-- Crafted Malevolent Gladiator's Cord of Meditation
i(0, 143061);	-- Crafted Malevolent Gladiator's Cuffs of Accuracy
i(0, 143063);	-- Crafted Malevolent Gladiator's Cuffs of Meditation
i(0, 143062);	-- Crafted Malevolent Gladiator's Cuffs of Prowess
i(0, 143064);	-- Crafted Malevolent Gladiator's Drape of Cruelty
i(0, 143066);	-- Crafted Malevolent Gladiator's Drape of Meditation
i(0, 143065);	-- Crafted Malevolent Gladiator's Drape of Prowess
i(0, 143088);	-- Crafted Malevolent Gladiator's Felweave Amice
i(0, 143085);	-- Crafted Malevolent Gladiator's Felweave Cowl
i(0, 143084);	-- Crafted Malevolent Gladiator's Felweave Handguards
i(0, 143087);	-- Crafted Malevolent Gladiator's Felweave Raiment
i(0, 143086);	-- Crafted Malevolent Gladiator's Felweave Trousers
i(0, 143072);	-- Crafted Malevolent Gladiator's Mooncloth Gloves
i(0, 143073);	-- Crafted Malevolent Gladiator's Mooncloth Helm
i(0, 143074);	-- Crafted Malevolent Gladiator's Mooncloth Leggings
i(0, 143076);	-- Crafted Malevolent Gladiator's Mooncloth Mantle
i(0, 143075);	-- Crafted Malevolent Gladiator's Mooncloth Robe
i(0, 143077);	-- Crafted Malevolent Gladiator's Satin Gloves
i(0, 143078);	-- Crafted Malevolent Gladiator's Satin Hood
i(0, 143079);	-- Crafted Malevolent Gladiator's Satin Leggings
i(0, 143081);	-- Crafted Malevolent Gladiator's Satin Mantle
i(0, 143080);	-- Crafted Malevolent Gladiator's Satin Robe
i(0, 143071);	-- Crafted Malevolent Gladiator's Silk Amice
i(0, 143068);	-- Crafted Malevolent Gladiator's Silk Cowl
i(0, 143067);	-- Crafted Malevolent Gladiator's Silk Handguards
i(0, 143070);	-- Crafted Malevolent Gladiator's Silk Robe
i(0, 143069);	-- Crafted Malevolent Gladiator's Silk Trousers
i(0, 143059);	-- Crafted Malevolent Gladiator's Treads of Alacrity
i(0, 143058);	-- Crafted Malevolent Gladiator's Treads of Cruelty
i(0, 143060);	-- Crafted Malevolent Gladiator's Treads of Meditation
i(0, 142955);	-- Leggings of the Night Sky
i(0, 142960);	-- White Cloud Belt
i(0, 142951);	-- White Cloud Leggings

-------------------
--- PATCH 6.0.1 ---
-------------------
--- GARRISON ---
i(0, 176313);	-- Inspiring Battle Standard
i(0, 176314);	-- Fearsome Battle Standard
i(0, 176315);	-- Inspiring Battle Standard
i(0, 176316);	-- Fearsome Battle Standard
--- ITEM ---
i(0, 158758);	-- Tailoring (Draenor)
i(114863, 168847);	-- Brilliant Hexweave Cloak
i(114866, 168850);	-- Creeping Carpet
i(114865, 168849);	-- Elekk Plushie
i(114864, 168848);	-- Hexweave Bag
i(114860, 168844);	-- Hexweave Belt
i(114858, 168842);	-- Hexweave Bracers
i(114851, 168835);	-- Hexweave Cloth
i(114854, 168838);	-- Hexweave Cowl
i(114852, 168836);	-- Hexweave Embroidery
i(114871, 168855);	-- Hexweave Essence
i(114856, 168840);	-- Hexweave Gloves
i(114855, 168839);	-- Hexweave Leggings
i(114853, 168837);	-- Hexweave Mantle
i(114857, 168841);	-- Hexweave Robe
i(114859, 168843);	-- Hexweave Slippers
i(114862, 168846);	-- Nimble Hexweave Cloak
i(114861, 168845);	-- Powerful Hexweave Cloak
i(120128, 176058);	-- Secrets of Draenor Tailoring
i(114868, 168852);	-- Sumptuous Cowl
i(114870, 168854);	-- Sumptuous Leggings
i(114869, 168853);	-- Sumptuous Robes
--- NYI ---
i(0, 169669);	-- Hexweave Cloth
i(114867, 168851); -- Pattern: Miniature Flying Carpet - NYI
i(118098, 173415); -- Pattern: Murloc Chew Toy

-------------------
--- PATCH 6.1.0 ---
-------------------
--- ITEM ---
i(122716, 182123);	-- Primal Weaving

-------------------
--- PATCH 6.2.0 ---
-------------------
--- ITEM ---
i(127724, 187492);	-- Mighty Hexweave Essence [REMOVED]
i(127742, 187516);	-- Savage Hexweave Essence [REMOVED]

-----------------
-- PATCH 3.0.3 --
-----------------
-- #if AFTER 8.0.1
i(39152, 45546);	-- Heavy Frostweave Bandage
-- #endif

-----------------
-- PATCH 7.0.3 --
-----------------
--- TRAINER ---
i(0, 195126);	-- Tailoring (Legion) (REMOVED 8.0.1)
--- ITEM ---
i(137681, 220511);	-- Bloodtotem Saddle Blanket
i(138016, 213035);	-- Clothes Chest: Dalaran Citizens
i(138017, 213036);	-- Clothes Chest: Karazhan Opera House
i(138018, 213037);	-- Clothes Chest: Molten Core
i(137965, 185946);	-- Imbued Silkweave Bracers [Rank 2]
i(137973, 185954);	-- Imbued Silkweave Bracers [Rank 3]
i(127022, 185927);	-- Imbued Silkweave Cinch [Rank 1]
i(137966, 185947);	-- Imbued Silkweave Cinch [Rank 2]
i(137974, 185955);	-- Imbued Silkweave Cinch [Rank 3]
i(127277, 186112);	-- Imbued Silkweave Cover [Rank 1]
i(138006, 186113);	-- Imbued Silkweave Cover [Rank 2]
i(138007, 186114);	-- Imbued Silkweave Cover [Rank 3]
i(127278, 186115);	-- Imbued Silkweave Drape [Rank 1]
i(138009, 186116);	-- Imbued Silkweave Drape [Rank 2]
i(138010, 186117);	-- Imbued Silkweave Drape [Rank 3]
i(127023, 185928);	-- Imbued Silkweave Epaulets [Rank 1]
i(137967, 185948);	-- Imbued Silkweave Epaulets [Rank 2]
i(137975, 185956);	-- Imbued Silkweave Epaulets [Rank 3]
i(127280, 186109);	-- Imbued Silkweave Flourish [Rank 1]
i(138003, 186110);	-- Imbued Silkweave Flourish [Rank 2]
i(138004, 186111);	-- Imbued Silkweave Flourish [Rank 3]
i(127026, 185931);	-- Imbued Silkweave Gloves [Rank 1]
i(137970, 185951);	-- Imbued Silkweave Gloves [Rank 2]
i(137978, 185959);	-- Imbued Silkweave Gloves [Rank 3]
i(127025, 185930);	-- Imbued Silkweave Hood [Rank 1]
i(137969, 185950);	-- Imbued Silkweave Hood [Rank 2]
i(137977, 185958);	-- Imbued Silkweave Hood [Rank 3]
i(127024, 185929);	-- Imbued Silkweave Pantaloons [Rank 1]
i(137968, 185949);	-- Imbued Silkweave Pantaloons [Rank 2]
i(137976, 185957);	-- Imbued Silkweave Pantaloons [Rank 3]
i(127028, 185933);	-- Imbued Silkweave Robe [Rank 1]
i(137972, 185953);	-- Imbued Silkweave Robe [Rank 2]
i(137980, 185961);	-- Imbued Silkweave Robe [Rank 3]
i(127279, 186106);	-- Imbued Silkweave Shade [Rank 1]
i(138000, 186107);	-- Imbued Silkweave Shade [Rank 2]
i(138001, 186108);	-- Imbued Silkweave Shade [Rank 3]
i(127027, 185932);	-- Imbued Silkweave Slippers [Rank 1]
i(137971, 185952);	-- Imbued Silkweave Slippers [Rank 2]
i(137979, 185960);	-- Imbued Silkweave Slippers [Rank 3]
i(137953, 185934);	-- Silkweave Bracers [Rank 2]
i(137961, 185942);	-- Silkweave Bracers [Rank 3]
i(137954, 185935);	-- Silkweave Cinch [Rank 2]
i(137962, 185943);	-- Silkweave Cinch [Rank 3]
i(137990, 186097);	-- Silkweave Cover [Rank 1]
i(137993, 186100);	-- Silkweave Drape [Rank 1]
i(137955, 185936);	-- Silkweave Epaulets [Rank 2]
i(137963, 185944);	-- Silkweave Epaulets [Rank 3]
i(137987, 186094);	-- Silkweave Flourish [Rank 1]
i(137958, 185939);	-- Silkweave Gloves [Rank 2]
i(138012, 208350);	-- Silkweave Gloves [Rank 3]
i(137957, 185938);	-- Silkweave Hood [Rank 2]
i(138013, 208351);	-- Silkweave Hood [Rank 3]
i(137956, 185937);	-- Silkweave Pantaloons [Rank 2]
i(138015, 208353);	-- Silkweave Pantaloons [Rank 3]
i(137960, 185941);	-- Silkweave Robe [Rank 2]
i(137964, 185945);	-- Silkweave Robe [Rank 3]
i(138011, 186388);	-- Silkweave Satchel
i(137984, 186091);	-- Silkweave Shade [Rank 1]
i(137959, 185940);	-- Silkweave Slippers [Rank 2]
i(138014, 208352);	-- Silkweave Slippers [Rank 3]
--- QUEST ---
i(0, 186799);	-- Basic Silkweave Robe
i(0, 186801);	-- Embroidered Silkweave Robe
i(0, 186803);	-- Handcrafted Silkweave Bag
i(0, 187060);	-- Handcrafted Silkweave Hood
i(0, 186738);	-- Handcrafted Silkweave Robe
i(0, 185962);	-- Imbued Silkweave
i(0, 185926);	-- Imbued Silkweave Bracers [Rank 1]
i(0, 187066);	-- Masterwork Silkweave Bracers
i(0, 186763);	-- Rune-Threaded Silkweave Robe
i(0, 186764);	-- Rune-Threaded Silkweave Bracers
i(0, 187064);	-- Silkweave Bracer Lining
i(0, 185918);	-- Silkweave Bracers [Rank 1]
i(0, 187065);	-- Silkweave Bracer: Outer Layer
i(0, 185919);	-- Silkweave Cinch [Rank 1]
i(0, 185920);	-- Silkweave Epaulets [Rank 1]
i(0, 185923);	-- Silkweave Gloves [Rank 1]
i(0, 187058);	-- Silkweave Hood Lining
i(0, 185922);	-- Silkweave Hood [Rank 1]
i(0, 187059);	-- Silkweave Hood: Outer Layer
i(0, 185921);	-- Silkweave Pantaloons [Rank 1]
i(0, 185925);	-- Silkweave Robe [Rank 1]
i(0, 185924);	-- Silkweave Slippers [Rank 1]
--- NYI ---
i(137981, 186088); -- Pattern: Silkweave Cloak (Guessed via Filter Recipe with SpellID)

-----------------
-- PATCH 7.1.0 --
-----------------
--- ITEM ---
i(142076, 229041);	-- Imbued Silkweave Bag [Rank 1]
i(142077, 229043);	-- Imbued Silkweave Bag [Rank 2]
i(142078, 229045);	-- Imbued Silkweave Bag [Rank 3]
-- #if AFTER 8.0.1
i(142333, 230047);	-- Feathered Luffa
-- #endif

-----------------
-- PATCH 7.2.0 --
-----------------
--- TRAINER ---
i(0, 239412);	-- Celumbra, the Night's Dichotomy

-----------------
-- PATCH 7.3.0 --
-----------------
--- ITEM ---
i(151747, 247808);	-- Lightweave Breeches [Rank 2]
i(151748, 247809);	-- Lightweave Breeches [Rank 3]
--- QUEST ---
i(0, 247807);	-- Lightweave Breeches [Rank 1]

-----------------
-- PATCH 8.0.1 --
-----------------
i(0, 264616);	-- Tailoring
i(0, 264618);	-- Outland Tailoring
i(0, 264620);	-- Northrend Tailoring
i(0, 264622);	-- Cataclysm Tailoring
i(0, 264624);	-- Pandaria Tailoring
i(0, 264626);	-- Draenor Tailoring
i(0, 264628);	-- Legion Tailoring
i(0, 264630);	-- Kul Tiran Tailoring
i(0, 265815);	-- Zandalari Tailoring
--- TRAINER ---
i(0, 257134);	-- Battle Flag: Phalanx Defense [Rank 1]
i(0, 257135);	-- Battle Flag: Phalanx Defense [Rank 2]
i(0, 257137);	-- Battle Flag: Rallying Swiftness [Rank 1]
i(0, 257138);	-- Battle Flag: Rallying Swiftness [Rank 2]
i(0, 257131);	-- Battle Flag: Spirit of Freedom [Rank 1]
i(0, 257132);	-- Battle Flag: Spirit of Freedom [Rank 2]
i(0, 257125);	-- Deep Sea Bag [Rank 1]
i(0, 257126);	-- Deep Sea Bag [Rank 2]
i(0, 279183);	-- Discreet Spellthread
i(0, 257122);	-- Embroidered Deep Sea Breeches
i(0, 257114);	-- Embroidered Deep Sea Cloak \\ Embroidered Deep Sea Cloak of Discretion [Rank 1]
i(0, 257115);	-- Embroidered Deep Sea Cloak \\ Embroidered Deep Sea Cloak of Discretion [Rank 2]
i(0, 257118);	-- Embroidered Deep Sea Gloves
i(0, 272440);	-- Embroidered Deep Sea Satin
i(0, 279184);	-- Feathery Spellthread
i(0, 268983);	-- Hooked Deep Sea Net
i(0, 269608);	-- Honorable Combatant's Satin Belt [Rank 1]
i(0, 269599);	-- Honorable Combatant's Satin Boots [Rank 1]
i(0, 269611);	-- Honorable Combatant's Satin Bracers [Rank 1]
i(0, 269596);	-- Honorable Combatant's Satin Cloak [Rank 1]
i(0, 269602);	-- Honorable Combatant's Satin Mittens [Rank 1]
i(0, 269605);	-- Honorable Combatant's Satin Pants [Rank 1]
i(0, 279182);	-- Resilient Spellthread
i(0, 278414);	-- Rough-hooked Tidespray Linen
i(0, 257102);	-- Tidespray Linen Belt \\ Sun-Bleached Linen Belt
i(0, 257103);	-- Tidespray Linen Bracers \\ Sun-Bleached Linen Bracers
i(0, 257107);	-- Tidespray Linen Cloak \\ Tidespray Linen Cloak of Discretion \\ Sun-Bleached Linen Cloak of Discretion
i(0, 257097);	-- Tidespray Linen Hood \\ Sun-Bleached Linen Hood
i(0, 257096);	-- Tidespray Linen Mittens \\ Sun-Bleached Linen Mittens
i(0, 268982);	-- Tidespray Linen Net \\ Sun-Bleached Linen Net
i(0, 257099);	-- Tidespray Linen Pants \\ Sun-Bleached Linen Pants
i(0, 257104);	-- Tidespray Linen Robe \\ Sun-Bleached Linen Robe
i(0, 257095);	-- Tidespray Linen Sandals \\ Tidespray Linen Boots \\ Sun-Bleached Linen Boots
i(0, 257101);	-- Tidespray Linen Spaulders \\ Sun-Bleached Linen Spaulders
--- ITEM ---
i(162444, 257136);	-- Battle Flag: Phalanx Defense [Rank 3]
i(162445, 257139);	-- Battle Flag: Rallying Swiftness [Rank 3]
i(162443, 257133);	-- Battle Flag: Spirit of Freedom [Rank 3]
i(162421, 257127);	-- Deep Sea Bag [Rank 3] (A)
i(162769, 257127);	-- Deep Sea Bag [Rank 3] (H)
i(162510, 257124);	-- Emblazoned Deep Sea Breeches \\ Embroidered Deep Sea Breeches
i(162508, 257121);	-- Emblazoned Deep Sea Gloves \\ Embroidered Deep Sea Gloves
i(163027, 257128);	-- Embroidered Deep Sea Bag [Rank 1]
i(163026, 257129);	-- Embroidered Deep Sea Bag [Rank 2]
i(162422, 257130);	-- Embroidered Deep Sea Bag [Rank 3]
i(162427, 257116);	-- Embroidered Deep Sea Cloak \\ Embroidered Deep Sea Cloak of Discretion [Rank 3] (A)
i(162772, 257116);	-- Embroidered Deep Sea Cloak \\ Embroidered Deep Sea Cloak of Discretion [Rank 3] (H)
i(162439, 269609);	-- Honorable Combatant's Satin Belt [Rank 2]
i(162440, 269610);	-- Honorable Combatant's Satin Belt [Rank 3]
i(162433, 269600);	-- Honorable Combatant's Satin Boots [Rank 2]
i(162434, 269601);	-- Honorable Combatant's Satin Boots [Rank 3]
i(162441, 269612);	-- Honorable Combatant's Satin Bracers [Rank 2]
i(162442, 269613);	-- Honorable Combatant's Satin Bracers [Rank 3]
i(162431, 269597);	-- Honorable Combatant's Satin Cloak [Rank 2]
i(162432, 269598);	-- Honorable Combatant's Satin Cloak [Rank 3]
i(162435, 269603);	-- Honorable Combatant's Satin Mittens [Rank 2]
i(162436, 269604);	-- Honorable Combatant's Satin Mittens [Rank 3]
i(162437, 269606);	-- Honorable Combatant's Satin Pants [Rank 2]
i(162438, 269607);	-- Honorable Combatant's Satin Pants [Rank 3]
i(162509, 257123);	-- Imbued Deep Sea Breeches \\ Embroidered Deep Sea Breeches
i(162507, 257120);	-- Imbued Deep Sea Gloves \\ Embroidered Deep Sea Gloves
--- NYI ---
i(0, 257108);	-- Embroidered Deep Sea Cloak of Resilience
i(0, 257109);	-- Embroidered Deep Sea Cloak of Resilience
i(0, 257110);	-- Embroidered Deep Sea Cloak of Resilience
i(0, 257111);	-- Embroidered Deep Sea Cloak of the Feather
i(0, 257112);	-- Embroidered Deep Sea Cloak of the Feather
i(0, 257113);	-- Embroidered Deep Sea Cloak of the Feather
i(0, 257141);	-- Pet - Hot Air Balloon (DNT)
i(0, 257105);	-- Tidespray Linen Cloak of Resilience \\ Sun-Bleached Linen Cloak of Resilience
i(0, 257106);	-- Tidespray Linen Cloak of the Feather \\ Sun-Bleached Linen Cloak of the Feather

-----------------
-- PATCH 8.1.0 --
-----------------
--- TRAINER ---
i(0, 287274);	-- Aqueous Alteration \\ Tidalcore to Hydrocore
i(0, 285077);	-- Enhanced Deep Sea Breeches
i(0, 285078);	-- Enhanced Deep Sea Gloves
i(0, 286654);	-- Sanguinated Alteration \\ Breath to Sanguicell
i(0, 282168);	-- Sinister Combatant's Satin Belt [Rank 1]
i(0, 282194);	-- Sinister Combatant's Satin Boots [Rank 1]
i(0, 282164);	-- Sinister Combatant's Satin Bracers [Rank 1]
i(0, 282204);	-- Sinister Combatant's Satin Cloak [Rank 1]
i(0, 282191);	-- Sinister Combatant's Satin Mittens [Rank 1]
i(0, 282175);	-- Sinister Combatant's Satin Pants [Rank 1]
--- ITEM ---
i(165655, 285085);	-- Fortified Deep Sea Breeches
i(165652, 285086);	-- Fortified Deep Sea Gloves
i(165340, 282169);	-- Sinister Combatant's Satin Belt [Rank 2]
i(165341, 282170);	-- Sinister Combatant's Satin Belt [Rank 3]
i(165334, 282195);	-- Sinister Combatant's Satin Boots [Rank 2]
i(165335, 282196);	-- Sinister Combatant's Satin Boots [Rank 3]
i(165342, 282165);	-- Sinister Combatant's Satin Bracers [Rank 2]
i(165343, 282166);	-- Sinister Combatant's Satin Bracers [Rank 3]
i(165332, 282275);	-- Sinister Combatant's Satin Cloak [Rank 2]
i(165333, 282276);	-- Sinister Combatant's Satin Cloak [Rank 3]
i(165336, 282192);	-- Sinister Combatant's Satin Mittens [Rank 2]
i(165337, 282193);	-- Sinister Combatant's Satin Mittens [Rank 3]
i(165338, 282176);	-- Sinister Combatant's Satin Pants [Rank 2]
i(165339, 282177);	-- Sinister Combatant's Satin Pants [Rank 3]
i(165654, 285093);	-- Tempered Deep Sea Breeches
i(165653, 285094);	-- Tempered Deep Sea Gloves

-----------------
-- PATCH 8.1.5 --
-----------------
--- ITEM ---
i(168029, 292946);	-- Synchronous Thread
i(167880, 6692); -- Pattern: Robes of Arcana (Guessed via Duplicate SpellID Match with Sourced RecipeID)
i(167888, 18436); -- Pattern: Robe of Winter Night (Guessed via Duplicate SpellID Match with Sourced RecipeID)
i(167885, 22869); -- Pattern: Mooncloth Gloves (Guessed via Duplicate SpellID Match with Sourced RecipeID)
i(167884, 22868); -- Pattern: Inferno Gloves (Guessed via Duplicate SpellID Match with Sourced RecipeID)
i(167890, 3862); -- Pattern: Icy Cloak (Guessed via Duplicate SpellID Match with Sourced RecipeID)
i(167883, 22867); -- Pattern: Felcloth Gloves (Guessed via Duplicate SpellID Match with Sourced RecipeID)
i(167882, 22870); -- Pattern: Cloak of Warding (Guessed via Duplicate SpellID Match with Sourced RecipeID)
i(167886, 18408); -- Pattern: Cindercloth Vest (Guessed via Duplicate SpellID Match with Sourced RecipeID)
i(167887, 18412); -- Pattern: Cindercloth Gloves (Guessed via Duplicate SpellID Match with Sourced RecipeID)
i(167881, 22866); -- Pattern: Belt of the Archmage (Guessed via Duplicate SpellID Match with Sourced RecipeID)
i(167889, 8786); -- Pattern: Azure Silk Cloak (Guessed via Duplicate SpellID Match with Sourced RecipeID)

-----------------
-- PATCH 8.2.0 --
-----------------
--- TRAINER ---
i(0, 299034);	-- Gilded Seaweave Breeches
i(0, 299031);	-- Gilded Seaweave Gloves
i(0, 294841);	-- Notorious Combatant's Satin Belt [Rank 1]
i(0, 294832);	-- Notorious Combatant's Satin Boots [Rank 1]
i(0, 294844);	-- Notorious Combatant's Satin Bracers [Rank 1]
i(0, 294829);	-- Notorious Combatant's Satin Cloak [Rank 1]
i(0, 294835);	-- Notorious Combatant's Satin Mittens [Rank 1]
i(0, 294838);	-- Notorious Combatant's Satin Pants [Rank 1]
i(0, 301409);	-- Saddlechute
i(0, 301403);	-- Seabreeze Saddle Blanket
--- ITEM ---
i(168784, 299036);	-- Banded Seaweave Breeches
i(168782, 299033);	-- Banded Seaweave Gloves
i(169576, 294842);	-- Notorious Combatant's Satin Belt [Rank 2]
i(169577, 294843);	-- Notorious Combatant's Satin Belt [Rank 3]
i(169578, 294833);	-- Notorious Combatant's Satin Boots [Rank 2]
i(169579, 294834);	-- Notorious Combatant's Satin Boots [Rank 3]
i(169582, 294845);	-- Notorious Combatant's Satin Bracers [Rank 2]
i(169583, 294846);	-- Notorious Combatant's Satin Bracers [Rank 3]
i(169586, 294830);	-- Notorious Combatant's Satin Cloak [Rank 2]
i(169587, 294831);	-- Notorious Combatant's Satin Cloak [Rank 3]
i(169580, 294836);	-- Notorious Combatant's Satin Mittens [Rank 2]
i(169581, 294837);	-- Notorious Combatant's Satin Mittens [Rank 3]
i(169584, 294839);	-- Notorious Combatant's Satin Pants [Rank 2]
i(169585, 294840);	-- Notorious Combatant's Satin Pants [Rank 3]
i(168781, 299032);	-- Reinforced Seaweave Gloves
i(168783, 299035);	-- Reinforced Seaweave Breeches

-----------------
-- PATCH 8.3.0 --
-----------------
--- TRAINER ---
i(0, 304577);	-- Uncanny Combatant's Satin Belt [Rank 1]
i(0, 304568);	-- Uncanny Combatant's Satin Boots [Rank 1]
i(0, 304580);	-- Uncanny Combatant's Satin Bracers [Rank 1]
i(0, 304565);	-- Uncanny Combatant's Satin Cloak [Rank 1]
i(0, 304571);	-- Uncanny Combatant's Satin Mittens [Rank 1]
i(0, 304574);	-- Uncanny Combatant's Satin Pants [Rank 1]
--- ITEM ---
i(171147, 304564);	-- Eldritch Seaweave Breeches
i(171149, 304561);	-- Eldritch Seaweave Gloves
i(171148, 304563);	-- Maddening Seaweave Breeches
i(171150, 304560);	-- Maddening Seaweave Gloves
i(170445, 304578);	-- Uncanny Combatant's Satin Belt [Rank 2]
i(170446, 304579);	-- Uncanny Combatant's Satin Belt [Rank 3]
i(170448, 304569);	-- Uncanny Combatant's Satin Boots [Rank 2]
i(170449, 304570);	-- Uncanny Combatant's Satin Boots [Rank 3]
i(170454, 304581);	-- Uncanny Combatant's Satin Bracers [Rank 2]
i(170455, 304582);	-- Uncanny Combatant's Satin Bracers [Rank 3]
i(170444, 304566);	-- Uncanny Combatant's Satin Cloak [Rank 2]
i(170447, 304567);	-- Uncanny Combatant's Satin Cloak [Rank 3]
i(170450, 304572);	-- Uncanny Combatant's Satin Mittens [Rank 2]
i(170451, 304573);	-- Uncanny Combatant's Satin Mittens [Rank 3]
i(170452, 304575);	-- Uncanny Combatant's Satin Pants [Rank 2]
i(170453, 304576);	-- Uncanny Combatant's Satin Pants [Rank 3]
i(174371, 304562);	-- Unsettling Seaweave Breeches
i(174370, 304559);	-- Unsettling Seaweave Gloves
i(0, 307175);	-- Void Focus

-----------------
-- PATCH 9.0.1 --
-----------------
--- RELIC ---
i(0, 330222);		-- Relic of the Past I [CLASSIC]
i(0, 330223);		-- Relic of the Past II [CLASSIC]
i(0, 330224);		-- Relic of the Past III [CLASSIC]
i(0, 330225);		-- Relic of the Past IV [CLASSIC]
i(0, 330226);		-- Relic of the Past V [CLASSIC]
i(0, 330227);		-- Relic of the Past I [The Burning Cruse]
i(0, 330228);		-- Relic of the Past II [The Burning Cruse]
i(0, 330229);		-- Relic of the Past III [The Burning Cruse]
i(0, 330230);		-- Relic of the Past IV [The Burning Cruse]
i(0, 330231);		-- Relic of the Past V [The Burning Cruse]
i(0, 330232);		-- Relic of the Past I [Wrath of the Lich King]
i(0, 330233);		-- Relic of the Past II [Wrath of the Lich King]
i(0, 330234);		-- Relic of the Past III [Wrath of the Lich King]
i(0, 330235);		-- Relic of the Past IV [Wrath of the Lich King]
i(0, 330236);		-- Relic of the Past V [Wrath of the Lich King]
i(0, 330237);		-- Relic of the Past I [Cataclysm]
i(0, 330238);		-- Relic of the Past II [Cataclysm]
i(0, 330239);		-- Relic of the Past III [Cataclysm]
i(0, 330240);		-- Relic of the Past IV [Cataclysm]
i(0, 330241);		-- Relic of the Past V [Cataclysm]
i(0, 330242);		-- Relic of the Past I [Mist of Pandaria]
i(0, 330243);		-- Relic of the Past II [Mist of Pandaria]
i(0, 330244);		-- Relic of the Past III [Mist of Pandaria]
i(0, 330245);		-- Relic of the Past IV [Mist of Pandaria]
i(0, 330246);		-- Relic of the Past V [Mist of Pandaria]
i(0, 330247);		-- Relic of the Past I [Warlords of Draenor]
i(0, 330248);		-- Relic of the Past II [Warlords of Draenor]
i(0, 330249);		-- Relic of the Past III [Warlords of Draenor]
i(0, 330250);		-- Relic of the Past IV [Warlords of Draenor]
i(0, 330251);		-- Relic of the Past V [Warlords of Draenor]
i(0, 330252);		-- Relic of the Past I [Legion]
i(0, 330253);		-- Relic of the Past II [Legion]
i(0, 330254);		-- Relic of the Past III [Legion]
i(0, 330255);		-- Relic of the Past IV [Legion]
i(0, 330256);		-- Relic of the Past V [Legion]
i(0, 330257);		-- Relic of the Past I [Battle for Azeroth]
i(0, 330258);		-- Relic of the Past II [Battle for Azeroth]
i(0, 330259);		-- Relic of the Past III [Battle for Azeroth]
i(0, 330260);		-- Relic of the Past IV [Battle for Azeroth]
i(0, 330261);		-- Relic of the Past V [Battle for Azeroth]
--- NYI ---
i(0, 310933);		-- Craftsman's Pouch
i(0, 310934);		-- Modified Crafting Reagent 02
i(0, 310935);		-- Modified Crafting Reagent 03
i(0, 310936);		-- Modified Crafting Reagent 04
i(0, 310937);		-- Modified Crafting Reagent 05
i(0, 310938);		-- Modified Crafting Reagent 06
i(0, 310939);		-- Modified Crafting Reagent 07
i(0, 310940);		-- Modified Crafting Reagent 08
i(0, 310916);		-- Pureweave Cloak
i(0, 310921);		-- Pureweave Cord
i(0, 310918);		-- Pureweave Cowl
i(0, 310922);		-- Pureweave Cuffs
i(0, 310914);		-- Pureweave Footwraps
i(0, 310917);		-- Pureweave Handwraps
i(0, 310920);		-- Pureweave Mantle
i(0, 310919);		-- Pureweave Trousers
i(0, 310915);		-- Pureweave Tunic
i(0, 310907);		-- Stitchsilk Cloak
i(0, 310912);		-- Stitchsilk Cord
i(0, 310909);		-- Stitchsilk Cowl
i(0, 310913);		-- Stitchsilk Cuffs
i(0, 310905);		-- Stitchsilk Footwraps
i(0, 310908);		-- Stitchsilk Handwraps
i(0, 310911);		-- Stitchsilk Mantle
i(0, 310910);		-- Stitchsilk Trousers
i(0, 310906);		-- Stitchsilk Tunic
i(0, 310889);		-- Winterweave Cloak
i(0, 310894);		-- Winterweave Cord
i(0, 310891);		-- Winterweave Cowl
i(0, 310895);		-- Winterweave Cuffs
i(0, 310887);		-- Winterweave Footwraps
i(0, 310890);		-- Winterweave Handwraps
i(0, 310893);		-- Winterweave Mantle
i(0, 310892);		-- Winterweave Trousers
i(0, 310888);		-- Winterweave Tunic

-----------------
-- PATCH 9.0.2 --
-----------------
--- TRAINER ---
i(0, 310949);		-- Shadowlands Tailoring
i(0, 343634);		-- Shadowlands Cloth Scavenging
i(0, 343204);		-- Crafter's Mark I
i(0, 310923);		-- Heavy Shrouded Cloth Bandage
i(0, 345986);		-- Lightless Silk Pouch
i(0, 343659);		-- Novice Crafter's Mark
i(0, 310903);		-- Shadowlace Cord
i(0, 310900);		-- Shadowlace Cowl
i(0, 310904);		-- Shadowlace Cuffs
i(0, 310896);		-- Shadowlace Footwraps
i(0, 310899);		-- Shadowlace Handwraps
i(0, 310902);		-- Shadowlace Mantle
i(0, 310901);		-- Shadowlace Trousers
i(0, 310897);		-- Shadowlace Tunic
i(0, 345985);		-- Shrouded Cloth Bag
i(0, 310924);		-- Shrouded Cloth Bandage
i(0, 310876);		-- Shrouded Cloth Belt
i(0, 310877);		-- Shrouded Cloth Bracerss
i(0, 310871);		-- Shrouded Cloth Cape
i(0, 310873);		-- Shrouded Cloth Hood
i(0, 310872);		-- Shrouded Cloth Mittens
i(0, 310874);		-- Shrouded Cloth Pants
i(0, 310870);		-- Shrouded Cloth Robe
i(0, 310869);		-- Shrouded Cloth Sandals
i(0, 310875);		-- Shrouded Cloth Spaulders
--- LENGEDARY ---
i(0, 339003);		-- Grim-Veiled Belt [Rank 1]
i(0, 332072);		-- Grim-Veiled Belt [Rank 2]
i(0, 332037);		-- Grim-Veiled Belt [Rank 3]
i(0, 310885);		-- Grim-Veiled Belt [Rank 4]
i(0, 339004);		-- Grim-Veiled Bracers [Rank 1]
i(0, 332073);		-- Grim-Veiled Bracers [Rank 2]
i(0, 332038);		-- Grim-Veiled Bracers [Rank 3]
i(0, 310886);		-- Grim-Veiled Bracers [Rank 4]
i(0, 338995);		-- Grim-Veiled Cape [Rank 1]
i(0, 332067);		-- Grim-Veiled Cape [Rank 2]
i(0, 332032);		-- Grim-Veiled Cape [Rank 3]
i(0, 310880);		-- Grim-Veiled Cape [Rank 4]
i(0, 339000);		-- Grim-Veiled Hood [Rank 1]
i(0, 332069);		-- Grim-Veiled Hood [Rank 2]
i(0, 332034);		-- Grim-Veiled Hood [Rank 3]
i(0, 310882);		-- Grim-Veiled Hood [Rank 4]
i(0, 338998);		-- Grim-Veiled Mittens [Rank 1]
i(0, 332068);		-- Grim-Veiled Mittens [Rank 2]
i(0, 332033);		-- Grim-Veiled Mittens [Rank 3]
i(0, 310881);		-- Grim-Veiled Mittens [Rank 4]
i(0, 339001);		-- Grim-Veiled Pants [Rank 1]
i(0, 332070);		-- Grim-Veiled Pants [Rank 2]
i(0, 332035);		-- Grim-Veiled Pants [Rank 3]
i(0, 310883);		-- Grim-Veiled Pants [Rank 4]
i(0, 338996);		-- Grim-Veiled Robe [Rank 1]
i(0, 332066);		-- Grim-Veiled Robe [Rank 2]
i(0, 332031);		-- Grim-Veiled Robe [Rank 3]
i(0, 310879);		-- Grim-Veiled Robe [Rank 4]
i(0, 338997);		-- Grim-Veiled Sandals [Rank 1]
i(0, 332065);		-- Grim-Veiled Sandals [Rank 2]
i(0, 332030);		-- Grim-Veiled Sandals [Rank 3]
i(0, 310878);		-- Grim-Veiled Sandals [Rank 4]
i(0, 339002);		-- Grim-Veiled Spaulders [Rank 1]
i(0, 332071);		-- Grim-Veiled Spaulders [Rank 2]
i(0, 332036);		-- Grim-Veiled Spaulders [Rank 3]
i(0, 310884);		-- Grim-Veiled Spaulders [Rank 4]
--- ITEM ---
i(0, 343201);		-- Crafter's Mark III
i(0, 343202);		-- Crafter's Mark II
i(180781, 334499);	-- Pink Party Hat
i(183101, 310898);	-- Shadowlace Cloak
--- QUEST ---
i(0, 338270);		-- Ardensilk Cloth
i(0, 338277);		-- Bleakcloth
i(0, 338269);		-- Bolt of Ardensilk Cloth
i(0, 338276);		-- Bolt of Bleakcloth
i(0, 338279);		-- Bolt of Prideweave
i(0, 338272);		-- Bolt of Woven Gossamer
i(0, 338267);		-- Cloak of Camouflage
i(0, 338273);		-- Gossamer Cloth
i(0, 338275);		-- Haunting Hood
i(0, 338278);		-- Looming Tapestry
i(0, 338280);		-- Prideweave Cloth
i(0, 338271);		-- Woven Gossamer Tunic

-----------------
-- PATCH 9.1.0 --
-----------------
--- ITEM ---
i(0, 343200);		-- Crafter's Mark of the Chained Isle
i(186995, 355183);	-- Shrouded Hand Towel
i(0, 352445);		-- Vestige of Origins

-----------------
-- PATCH 9.2.0 --
-----------------
--- ITEM ---
i(0, 359661);		-- Crafter's Mark IV
i(0, 359670);		-- Crafter's Mark of the First Ones
i(0, 359703);		-- Vestige of the Eternal

------------------
-- PATCH 10.0.0 --
------------------
--- NYI ---
i(0, 376697);		-- Wisp of Tyr
i(0, 382588);		-- Opening
i(194263, 376498);	-- Blue Dragon Rider's Robe
i(194264, 376499);	-- Bronze Dragon Rider's Wraps
i(194296, 376563);	-- Fiddle with Draconium Fabric Cutters
i(194297, 376564);	-- Fiddle with Khaz'gorite Fabric Cutters
i(194284, 376571);	-- Wildercloth Weapon Upholstery

------------------
-- PATCH 10.0.2 --
------------------
--- TRAINER ---
i(0, 376533);		-- Abrasive Polishing Cloth
i(0, 376535);		-- Blazing Embroidery Thread
i(0, 392396);		-- Dragon Isles Cloth Scavenging
i(0, 366258);		-- Dragon Isles Tailoring
i(0, 376562);		-- Dragon Isles Unravelling
i(0, 376699);		-- Illustrious Insight
i(0, 376509);		-- Surveyor's Cloth Bands
i(0, 376507);		-- Surveyor's Cloth Robe
i(0, 376508);		-- Surveyor's Cloth Treads
i(0, 376506);		-- Surveyor's Tailored Cloak
i(0, 389196);		-- Recraft Equipment
i(0, 376560);		-- Simply Stitched Reagent Bag
i(0, 395809);		-- Surveyor's Seasoned Cord
i(0, 395813);		-- Surveyor's Seasoned Gloves
i(0, 395814);		-- Surveyor's Seasoned Pants
i(0, 395807);		-- Surveyor's Seasoned Hood
i(0, 395815);		-- Surveyor's Seasoned Shoulders
i(0, 376538);		-- Vibrant Spellthread
i(0, 376558);		-- Vibrant Wildercloth Bolt
i(0, 376543);		-- Wildercloth Alchemist's Robe
i(0, 376528);		-- Wildercloth Bag
i(0, 376530);		-- Wildercloth Bandage
i(0, 376555);		-- Wildercloth Bolt
i(0, 376547);		-- Wildercloth Chef's Hat
i(0, 376549);		-- Wildercloth Enchanter's Hat
i(0, 376551);		-- Wildercloth Fishing Cap
i(0, 376553);		-- Wildercloth Gardening Hat
i(0, 376545);		-- Wildercloth Tailor's Coat
--- ITEM ---
i(194259, 376497);	-- Allied Cinch of Time Dilation
i(194255, 376493);	-- Amice of the Blue
i(194285, 376529);	-- Azureweave Expedtion Pack
i(194279, 376501);	-- Azureweave Slippers
i(194260, 376496);	-- Blue Dragon Soles
i(194265, 376541);	-- Blue Silken Lining
i(194266, 376542);	-- Bronzed Grip Wrappings
i(194286, 376536);	-- Chromatic Embroidery Thread
i(194287, 376561);	-- Chronocloth Reagent Bag
i(194280, 376505);	-- Chronocloth Sash
i(194281, 376568);	-- Cold Cushion
i(194270, 376527);	-- Crimson Combatant's Wildercloth Bands
i(194271, 376519);	-- Crimson Combatant's Wildercloth Cloak
i(194272, 376522);	-- Crimson Combatant's Wildercloth Gloves
i(194273, 376523);	-- Crimson Combatant's Wildercloth Hood
i(194274, 376524);	-- Crimson Combatant's Wildercloth Leggings
i(194275, 376526);	-- Crimson Combatant's Wildercloth Sash
i(194276, 376525);	-- Crimson Combatant's Wildercloth Shoulderpads
i(194277, 376521);	-- Crimson Combatant's Wildercloth Treads
i(194278, 376520);	-- Crimson Combatant's Wildercloth Tunic
i(194282, 376567);	-- Cushion of Time Travel
i(194283, 376565);	-- Duck-Stuffed Duck Lovie
i(194268, 376570);	-- Dragonscale Expedition's Expedition Tent
i(194295, 376532);	-- Explorer's Banner of Geology
i(194294, 376531);	-- Explorer's Banner of Herbology
i(194298, 376566);	-- Forlorn Funeral Pall
i(194261, 376539);	-- Frozen Spellthread
i(194256, 376492);	-- Hood of Surging Time
i(194257, 376494);	-- Infurious Handwraps of Gesticulation
i(194258, 376495);	-- Infurious Legwraps of Possibility
i(194269, 376559);	-- Infurious Wildercloth Bolt
i(201258, 376559);	-- Infurious Wildercloth Bolt
i(194288, 376544);	-- Master's Wildercloth Alchemist's Robe
i(194289, 376548);	-- Master's Wildercloth Chef's Hat
i(194290, 376550);	-- Master's Wildercloth Enchanter's Hat
i(194291, 376552);	-- Master's Wildercloth Fishing Cap
i(194292, 376554);	-- Master's Wildercloth Gardening Hat
i(194267, 376537);	-- Shimmering Embroidery Thread
i(194262, 376540);	-- Temporal Spellthread
i(194293, 376534);	-- Vibrant Polishing Cloth
--- SPECIALIZATION ---
i(0, 376556);		-- Azureweave Bolt
i(0, 376502);		-- Azureweave Mantle
i(0, 376500);		-- Azureweave Robe
i(0, 376557);		-- Chronocloth Bolt
i(0, 376503);		-- Chronocloth Gloves
i(0, 376504);		-- Chronocloth Leggings
i(0, 376546);		-- Dragoncloth Tailoring Vestments
i(0, 376569);		-- Market Tent
i(0, 376513);		-- Vibrant Wildercloth Handwraps
i(0, 376512);		-- Vibrant Wildercloth Slippers
i(0, 376514);		-- Vibrant Wildercloth Headcover
i(0, 376510);		-- Vibrant Wildercloth Shawl
i(0, 376511);		-- Vibrant Wildercloth Vestments
i(0, 376515);		-- Vibrant Wildercloth Slacks
i(0, 376516);		-- Vibrant Wildercloth Shoulderspikes
i(0, 376517);		-- Vibrant Wildercloth Girdle
i(0, 376518);		-- Vibrant Wildercloth Wristwraps
--- QUEST ---
i(0, 377986);		-- Heart in a Bottle

------------------
-- PATCH 10.0.5 --
------------------
--- ITEM ---
i(202234, 397864);	-- Impressive Hexweave Essence
i(202235, 397865);	-- Remarkable Hexweave Essence

------------------
-- PATCH 10.0.7 --
------------------
--- ITEM ---
i(203848, 402151);	-- Bloodlord's Embrace
i(203850, 402155);	-- Gurubashi Headdress
i(203849, 402152);	-- Gurubashi Tigerhide Cloak
i(204678, 405974);	-- Paw-Made Winterpelt Reagent Bag
i(203851, 402156);	-- Ritualistic Legwarmers
i(203428, 400815);	-- Traditional Morqut Kite

------------------
-- PATCH 10.1.0 --
------------------
--- ITEM ---
i(205138, 409839);	-- Medical Wrap Kit
i(204129, 403157);	-- Obsidian Combatant's Wildercloth Bands
i(204130, 403149);	-- Obsidian Combatant's Wildercloth Cloak
i(204131, 403152);	-- Obsidian Combatant's Wildercloth Gloves
i(204132, 403153);	-- Obsidian Combatant's Wildercloth Hood
i(204133, 403154);	-- Obsidian Combatant's Wildercloth Leggings
i(204134, 403156);	-- Obsidian Combatant's Wildercloth Sash
i(204135, 403155);	-- Obsidian Combatant's Wildercloth Shoulderpads
i(204136, 403151);	-- Obsidian Combatant's Wildercloth Treads
i(204137, 403150);	-- Obsidian Combatant's Wildercloth Tunic
i(205139, 408304);	-- Reserve Parachute
i(205140, 408318);	-- Undulating Sporecloak
--- NYI ---
i(0, 408316);		-- Spore-Infused Combat Bandage
i(205141, 408319);	-- Explorer's Banner
i(205142, 408305);	-- Enormous Ball of Yarn

------------------
-- PATCH 10.1.5 --
------------------
--- ITEM ---
i(206547, 413747);	-- Bindings of the Harvested Soul
i(206771, 414564);	-- Cursed Cloth
i(206395, 413490);	-- Glacial Chapeau
i(206393, 28208);	-- Glacial Cloak
i(206396, 413491);	-- Glacial Epaulets
i(206402, 413495);	-- Glacial Footwear
i(206399, 28205);	-- Glacial Gloves
i(206401, 413494);	-- Glacial Leggings
i(206400, 413492);	-- Glacial Tether
i(206397, 28207);	-- Glacial Vest
i(206398, 28209);	-- Glacial Wrists
i(206554, 413754);	-- Necrotic Gown
i(206583, 413903);	-- Peculiar Glacial Mantle
i(206563, 413788);	-- Shroud of Forbidden Magic

------------------
-- PATCH 10.2.0 --
------------------
--- ITEM ---
i(208272, 419030);	-- Verdant Combatant's Wildercloth Bands
i(208273, 419022);	-- Verdant Combatant's Wildercloth Cloak
i(208274, 419025);	-- Verdant Combatant's Wildercloth Gloves
i(208275, 419026);	-- Verdant Combatant's Wildercloth Hood
i(208276, 419027);	-- Verdant Combatant's Wildercloth Leggings
i(208277, 419029);	-- Verdant Combatant's Wildercloth Sash
i(208278, 419028);	-- Verdant Combatant's Wildercloth Shoulderpads
i(208279, 419024);	-- Verdant Combatant's Wildercloth Treads
i(208280, 419023);	-- Verdant Combatant's Wildercloth Tunic
i(210670, 426434);	-- Verdant Tether

------------------
-- PATCH 10.2.6 --
------------------
--- ITEM ---
i(211571, 430081);	-- Draconic Combatant's Wildercloth Bands
i(211572, 430073);	-- Draconic Combatant's Wildercloth Cloak
i(211573, 430076);	-- Draconic Combatant's Wildercloth Gloves
i(211574, 430077);	-- Draconic Combatant's Wildercloth Hood
i(211575, 430078);	-- Draconic Combatant's Wildercloth Leggings
i(211576, 430080);	-- Draconic Combatant's Wildercloth Sash
i(211577, 430079);	-- Draconic Combatant's Wildercloth Shoulderpads
i(211578, 430075);	-- Draconic Combatant's Wildercloth Treads
i(211579, 430074);	-- Draconic Combatant's Wildercloth Tunic

------------------
-- PATCH 11.0.2 --
------------------
--- TRAINER ---
i(0, 423343);		-- Khaz Algar Tailoring
i(0, 446926);		-- Unraveling
i(0, 425143);		-- Recraft Equipment
i(0, 456706);		-- Algari Weaverline
i(0, 446975);		-- Artisan Tailor's Coat
i(0, 446996);		-- Bright Polishing Cloth
i(0, 454397);		-- Exquisite Weavercloth Bolt
i(0, 446998);		-- Gritty Polishing Cloth
i(0, 446958);		-- Pioneer's Cloth Cloak
i(0, 446957);		-- Pioneer's Cloth Cord
i(0, 446956);		-- Pioneer's Cloth Cuffs
i(0, 446959);		-- Pioneer's Cloth Hood
i(0, 446960);		-- Pioneer's Cloth Robe
i(0, 446955);		-- Pioneer's Cloth Slippers
i(0, 446963);		-- Pioneer's Perfected Gloves
i(0, 446961);		-- Pioneer's Perfected Leggings
i(0, 446962);		-- Pioneer's Perfected Mantle
i(0, 446968);		-- Weavercloth Alchemist's Robe
i(0, 446976);		-- Weavercloth Bag
i(0, 447002);		-- Weavercloth Bandage
i(0, 446929);		-- Weavercloth Bolt
i(0, 446969);		-- Weavercloth Chef's Hat
i(0, 446966);		-- Weavercloth Enchanter's Hat
i(0, 446965);		-- Weavercloth Fishing Cap
i(0, 446964);		-- Weavercloth Gardening Hat
i(0, 446978);		-- Weavercloth Reagent Bag
i(0, 446967);		-- Weavercloth Tailor's Coat
--- ITEM ---
i(225437, 438892);	-- Algari Competitor's Cloth Bands
i(225442, 438897);	-- Algari Competitor's Cloth Cloak
i(225439, 438894);	-- Algari Competitor's Cloth Gloves
i(225438, 438893);	-- Algari Competitor's Cloth Hood
i(225434, 438889);	-- Algari Competitor's Cloth Leggings
i(225441, 438896);	-- Algari Competitor's Cloth Sash
i(225435, 438890);	-- Algari Competitor's Cloth Shoulderpads
i(225436, 438891);	-- Algari Competitor's Cloth Treads
i(225440, 438895);	-- Algari Competitor's Cloth Tunic
i(224423, 446973);	-- Artisan Alchemist's Robe
i(224424, 446974);	-- Artisan Chef's Hat
i(224422, 446972);	-- Artisan Enchanter's Hat
i(224421, 446971);	-- Artisan Fishing Cap
i(224420, 446970);	-- Artisan Gardening Hat
i(224425, 446982);	-- Concoctor's Clutch
i(224430, 446987);	-- Darkmoon Duffle
i(224434, 446991);	-- Dawnthread Lining
i(224435, 446992);	-- Duskthread Lining
i(224432, 446989);	-- Excavator's Haversack
i(224431, 446988);	-- Gardener's Seed Satchel
i(225995, 447888);	-- Hideseeker's Tote
i(224427, 446984);	-- Hideshaper's Workbag
i(224426, 446983);	-- Ignition Satchel
i(224433, 446990);	-- Jeweler's Purse
i(224428, 446985);	-- Magically "Infinite" Messenger
i(224429, 446986);	-- Prodigy's Toolbox
--- SPECIALIZATION ---
i(0, 446940);		-- Consecrated Cloak
i(0, 446939);		-- Consecrated Cord
i(0, 446938);		-- Consecrated Cuffs
i(0, 446945);		-- Consecrated Gloves
i(0, 446941);		-- Consecrated Hood
i(0, 446943);		-- Consecrated Leggings
i(0, 446944);		-- Consecrated Mantle
i(0, 446942);		-- Consecrated Robe
i(0, 446937);		-- Consecrated Slippers
i(0, 446935);		-- Cool Sunset Bracers
i(0, 446928);		-- Dawnweave Bolt
i(0, 446977);		-- Dawnweave Reagent Bag
i(0, 447001);		-- Daybreak Spellthread
i(0, 446979);		-- Duskweave Bag
i(0, 446927);		-- Duskweave Bolt
i(0, 446932);		-- Gloves of the Woven Dusk
i(0, 446930);		-- Grips of the Woven Dawn
i(0, 446995);		-- Preserving Embroidery Thread
i(0, 446933);		-- Slippers of the Woven Dusk
i(0, 447000);		-- Sunset Spellthread
i(0, 454431);		-- The Severed Satchel
i(0, 446931);		-- Treads of the Woven Dawn
i(0, 446934);		-- Warm Sunrise Bracers
i(0, 446997);		-- Weavercloth Embroidery Thread
i(0, 446999);		-- Weavercloth Spellthread

------------------
-- PATCH 11.0.0 --
------------------
--- NYI ---
i(0, 446936);		-- Adaptive Delver's Shawl
i(0, 446980);		-- Satchel of the Long Day
i(0, 446981);		-- Satchel of the Long Night
i(0, 446949);		-- Vicious Combatant's Weavercloth Cloak
i(0, 446947);		-- Vicious Combatant's Weavercloth Cord
i(0, 446954);		-- Vicious Combatant's Weavercloth Gloves
i(0, 446950);		-- Vicious Combatant's Weavercloth Hood
i(0, 446953);		-- Vicious Combatant's Weavercloth Mantle
i(0, 446952);		-- Vicious Combatant's Weavercloth Pants
i(0, 446951);		-- Vicious Combatant's Weavercloth Robe
i(0, 446946);		-- Vicious Combatant's Weavercloth Slippers
i(0, 446948);		-- Vicious Combatant's Weavercloth Wrists
i(224436, 446993);	-- Reinforced Wrap Kit
i(224437, 446994);	-- Weaverthread Parachute Kit