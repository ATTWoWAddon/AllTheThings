-- This file will combine itemIDs for customization and questIDs so they dont have to be in the source files
local Items = ItemDBConditional;
local i = function(itemID, questID)
	Items[itemID] = { ["questID"] = questID, ["type"] = "mmID" };
end

------------------
-- PATCH 10.0.0 --
------------------
--- NYI ---
i(196984, 69184);	-- Cliffside Wylderdrake: Finned Jaw
i(196993, 69193);	-- Cliffside Wylderdrake: Sleek Horns
i(192523, 69590);	-- Renewed Proto-Drake: Green Scales
i(197356, 69557);	-- Renewed Proto-Drake: Hairy Back
i(197354, 69555);	-- Renewed Proto-Drake: Horned Back
i(197621, 69825);	-- Windborne Velocidrake: Exposed Finned Tail
i(194839, 0);		-- Cliffside Wylderdrake Manuscript: Conical Head
i(194841, 0);		-- Cliffside Wylderdrake Manuscript: Red Mane
i(194840, 0);		-- Cliffside Wylderdrake Manuscript: Triple Head Horns
i(194837, 0);		-- Highland Drake Manuscript: Black Hair
i(194838, 0);		-- Highland Drake Manuscript: Spined Head
i(194836, 0);		-- Highland Drake Manuscript: Spined Throat
i(192111, 0);		-- Renewed Proto-Drake: Red Scales
i(197384, 0);		-- Renewed Proto-Drake: Thick Spined Jaw
i(194831, 0);		-- Renewed Proto Drake Manuscript: Predator Pattern
i(194830, 0);		-- Renewed Proto Drake Manuscript: Red Hair
i(194832, 0);		-- Renewed Proto Drake Manuscript: Spined Crest
i(194833, 0);		-- Windborne Velocidrake Manuscript: Black Fur
i(194835, 0);		-- Windborne Velocidrake Manuscript: Spined Crest
i(194834, 0);		-- Windborne Velocidrake Manuscript: Windswept
i(0, 69556);		-- Renewed Proto-Drake: Finned Back

------------------
-- PATCH 10.0.2 --
------------------
i(196961, 69161);	-- Cliffside Wylderdrake: Armor
i(196991, 69191);	-- Cliffside Wylderdrake: Black Horns
i(196986, 69186);	-- Cliffside Wylderdrake: Black Hair
i(197013, 69213);	-- Cliffside Wylderdrake: Black Scales
i(196987, 69187);	-- Cliffside Wylderdrake: Blonde Hair
i(197012, 69212);	-- Cliffside Wylderdrake: Blue Scales
i(197019, 69219);	-- Cliffside Wylderdrake: Blunt Spiked Tail
i(196996, 69196);	-- Cliffside Wylderdrake: Branched Horns
i(196981, 69181);	-- Cliffside Wylderdrake: Conical Head
i(196979, 69179);	-- Cliffside Wylderdrake: Curled Head Horns
i(196973, 69173);	-- Cliffside Wylderdrake: Dual Horned Chin
i(196982, 69182);	-- Cliffside Wylderdrake: Ears
i(196969, 69169);	-- Cliffside Wylderdrake: Finned Back
i(197001, 69201);	-- Cliffside Wylderdrake: Finned Cheek
i(197022, 69222);	-- Cliffside Wylderdrake: Finned Neck
i(197018, 69218);	-- Cliffside Wylderdrake: Finned Tail
i(197002, 69202);	-- Cliffside Wylderdrake: Flared Cheek
i(196964, 69164);	-- Cliffside Wylderdrake: Gold and Black Armor
i(196966, 69166);	-- Cliffside Wylderdrake: Gold and Orange Armor
i(197011, 69211);	-- Cliffside Wylderdrake: Green Scales
i(196975, 69175);	-- Cliffside Wylderdrake: Head Fin
i(196976, 69176);	-- Cliffside Wylderdrake: Head Mane
i(196992, 69192);	-- Cliffside Wylderdrake: Heavy Horns
i(196998, 69198);	-- Cliffside Wylderdrake: Hook Horns
i(196985, 69185);	-- Cliffside Wylderdrake: Horned Jaw
i(197005, 69205);	-- Cliffside Wylderdrake: Horned Nose
i(197017, 69217);	-- Cliffside Wylderdrake: Large Tail Spikes
i(196983, 69183);	-- Cliffside Wylderdrake: Maned Jaw
i(197023, 69223);	-- Cliffside Wylderdrake: Maned Neck
i(197016, 69216);	-- Cliffside Wylderdrake: Maned Tail
i(197008, 69208);	-- Cliffside Wylderdrake: Narrow Stripes Pattern
i(196972, 69172);	-- Cliffside Wylderdrake: Plated Brow
i(196988, 69188);	-- Cliffside Wylderdrake: Red Hair
i(197010, 69210);	-- Cliffside Wylderdrake: Red Scales
i(197009, 69209);	-- Cliffside Wylderdrake: Scaled Pattern
i(196994, 69194);	-- Cliffside Wylderdrake: Short Horns
i(196963, 69163);	-- Cliffside Wylderdrake: Silver and Blue Armor
i(196962, 69162);	-- Cliffside Wylderdrake: Silver and Purple Armor
i(197020, 69220);	-- Cliffside Wylderdrake: Spear Tail
i(196970, 69170);	-- Cliffside Wylderdrake: Spiked Back
i(196971, 69171);	-- Cliffside Wylderdrake: Spiked Brow
i(197003, 69203);	-- Cliffside Wylderdrake: Spiked Cheek
i(196977, 69177);	-- Cliffside Wylderdrake: Split Head Horns
i(196968, 69168);	-- Cliffside Wylderdrake: Steel and Yellow Armor
i(196999, 69199);	-- Cliffside Wylderdrake: Swept Horns
i(196980, 69180);	-- Cliffside Wylderdrake: Triple Head Horns
i(196989, 69189);	-- Cliffside Wylderdrake: White Hair
i(197007, 69207);	-- Cliffside Wylderdrake: Wide Stripes Pattern
i(197099, 69300);	-- Highland Drake: Armor
i(197117, 69318);	-- Highland Drake: Black Hair
i(197142, 69343);	-- Highland Drake: Black Scales
i(197153, 69354);	-- Highland Drake: Bladed Tail
i(197145, 69346);	-- Highland Drake: Bronze Scales
i(197118, 69319);	-- Highland Drake: Brown Hair
i(197101, 69302);	-- Highland Drake: Bushy Brow
i(197149, 69350);	-- Highland Drake: Club Tail
i(197125, 69326);	-- Highland Drake: Coiled Horns
i(197100, 69301);	-- Highland Drake: Crested Brow
i(197128, 69329);	-- Highland Drake: Curled Back Horns
i(197116, 69317);	-- Highland Drake: Ears
i(201792, 72371);	-- Highland Drake: Embodiment of the Crimson Gladiator [REMOVED: 10.1.0]
i(197098, 69299);	-- Highland Drake: Finned Back
i(197106, 69307);	-- Highland Drake: Finned Head
i(197090, 69290);	-- Highland Drake: Gold and Black Armor
i(197094, 69295);	-- Highland Drake: Gold and Red Armor
i(197127, 69328);	-- Highland Drake: Grand Thorn Horns
i(197143, 69344);	-- Highland Drake: Green Scales
i(197131, 69332);	-- Highland Drake: Hairy Cheek
i(197122, 69323);	-- Highland Drake: Heavy Horns
i(197147, 69348);	-- Highland Drake: Heavy Scales
i(197126, 69327);	-- Highland Drake: Hooked Horns
i(197152, 69353);	-- Highland Drake: Hooked Tail
i(197139, 69340);	-- Highland Drake: Large Spotted Pattern
i(197103, 69304);	-- Highland Drake: Maned Chin
i(197111, 69312);	-- Highland Drake: Maned Head
i(197114, 69315);	-- Highland Drake: Multi-Horned Head
i(197110, 69311);	-- Highland Drake: Plated Head
i(197144, 69345);	-- Highland Drake: Red Scales
i(197141, 69342);	-- Highland Drake: Scaled Pattern
i(197091, 69291);	-- Highland Drake: Silver and Blue Armor
i(197093, 69294);	-- Highland Drake: Silver and Purple Armor
i(197112, 69313);	-- Highland Drake: Single Horned Head
i(197140, 69341);	-- Highland Drake: Small Spotted Pattern
i(197132, 69333);	-- Highland Drake: Spiked Cheek
i(197150, 69351);	-- Highland Drake: Spiked Club Tail
i(197151, 69352);	-- Highland Drake: Spiked Tail
i(197097, 69298);	-- Highland Drake: Spined Back
i(197133, 69334);	-- Highland Drake: Spined Cheek
i(197105, 69306);	-- Highland Drake: Spined Chin
i(197108, 69309);	-- Highland Drake: Spined Head
i(197154, 69355);	-- Highland Drake: Spined Neck
i(197137, 69338);	-- Highland Drake: Spined Nose
i(197130, 69331);	-- Highland Drake: Stag Horns
i(197096, 69297);	-- Highland Drake: Steel and Yellow Armor
i(197138, 69339);	-- Highland Drake: Striped Pattern
i(197124, 69325);	-- Highland Drake: Swept Horns
i(197113, 69314);	-- Highland Drake: Swept Spiked Head
i(197121, 69322);	-- Highland Drake: Tan Horns
i(197123, 69324);	-- Highland Drake: Thorn Horns
i(197115, 69316);	-- Highland Drake: Thorned Jaw
i(197135, 69336);	-- Highland Drake: Toothy Mouth
i(197107, 69308);	-- Highland Drake: Triple Finned Head
i(197148, 69349);	-- Highland Drake: Vertical Finned Tail
i(197357, 69558);	-- Renewed Proto-Drake: Armor
i(197401, 69602);	-- Renewed Proto-Drake: Beaked Snout
i(197392, 69593);	-- Renewed Proto-Drake: Black Scales
i(197368, 69569);	-- Renewed Proto-Drake: Blue Hair
i(197390, 69591);	-- Renewed Proto-Drake: Blue Scales
i(197377, 69578);	-- Renewed Proto-Drake: Bovine Horns
i(197391, 69592);	-- Renewed Proto-Drake: Bronze Scales
i(197403, 69604);	-- Renewed Proto-Drake: Club Tail
i(197375, 69576);	-- Renewed Proto-Drake: Curled Horns
i(197380, 69581);	-- Renewed Proto-Drake: Curved Horns
i(197366, 69567);	-- Renewed Proto-Drake: Dual Horned Crest
i(197376, 69577);	-- Renewed Proto-Drake: Ears
i(201790, 72367);	-- Renewed Proto-Drake: Embodiment of the Storm-Eater
i(197365, 69566);	-- Renewed Proto-Drake: Finned Crest
i(197388, 69589);	-- Renewed Proto-Drake: Finned Jaw
i(197404, 69605);	-- Renewed Proto-Drake: Finned Tail
i(197408, 69609);	-- Renewed Proto-Drake: Finned Throat
i(197346, 69547);	-- Renewed Proto-Drake: Gold and Black Armor
i(197351, 69552);	-- Renewed Proto-Drake: Gold and Red Armor
i(197381, 69582);	-- Renewed Proto-Drake: Gradient Horns
i(197367, 69568);	-- Renewed Proto-Drake: Gray Hair
i(197389, 66720);	-- Renewed Proto-Drake: Green Scales
i(197359, 69560);	-- Renewed Proto-Drake: Hairy Brow
i(197395, 69596);	-- Renewed Proto-Drake: Harrier Pattern
i(197383, 69584);	-- Renewed Proto-Drake: Heavy Horns
i(197397, 69598);	-- Renewed Proto-Drake: Heavy Scales
i(197385, 69586);	-- Renewed Proto-Drake: Horned Jaw
i(197379, 69580);	-- Renewed Proto-Drake: Impaler Horns
i(197363, 69564);	-- Renewed Proto-Drake: Maned Crest
i(197405, 69606);	-- Renewed Proto-Drake: Maned Tail
i(197394, 69595);	-- Renewed Proto-Drake: Predator Pattern
i(197372, 69573);	-- Renewed Proto-Drake: Purple Hair
i(197399, 69600);	-- Renewed Proto-Drake: Razor Snout
i(197370, 69571);	-- Renewed Proto-Drake: Red Hair
i(197400, 69601);	-- Renewed Proto-Drake: Shark Snout
i(197347, 69548);	-- Renewed Proto-Drake: Silver and Blue Armor
i(197350, 69551);	-- Renewed Proto-Drake: Silver and Purple Armor
i(197396, 69597);	-- Renewed Proto-Drake: Skyterror Pattern
i(197398, 69599);	-- Renewed Proto-Drake: Snub Snout
i(197402, 69603);	-- Renewed Proto-Drake: Spiked Club Tail
i(197361, 69562);	-- Renewed Proto-Drake: Spiked Crest
i(197386, 69587);	-- Renewed Proto-Drake: Spiked Jaw
i(197407, 69608);	-- Renewed Proto-Drake: Spiked Throat
i(197360, 69561);	-- Renewed Proto-Drake: Spined Brow
i(197362, 69563);	-- Renewed Proto-Drake: Spined Crest
i(197406, 69607);	-- Renewed Proto-Drake: Spined Tail
i(197352, 69553);	-- Renewed Proto-Drake: Steel and Yellow Armor
i(197378, 69579);	-- Renewed Proto-Drake: Subtle Horns
i(197374, 69575);	-- Renewed Proto-Drake: Swept Horns
i(197355, 69585);	-- Renewed Proto-Drake: Thick Spined Jaw
i(197387, 69588);	-- Renewed Proto-Drake: Thin Spined Jaw
i(197382, 69583);	-- Renewed Proto-Drake: White Horns
i(197588, 69792);	-- Windborne Velocidrake: Armor
i(197620, 69824);	-- Windborne Velocidrake: Beaked Snout
i(197597, 69801);	-- Windborne Velocidrake: Black Fur
i(197611, 69815);	-- Windborne Velocidrake: Black Scales
i(197612, 69816);	-- Windborne Velocidrake: Blue Scales
i(197613, 69817);	-- Windborne Velocidrake: Bronze Scales
i(197624, 69828);	-- Windborne Velocidrake: Club Tail
i(197602, 69806);	-- Windborne Velocidrake: Cluster Horns
i(197605, 69809);	-- Windborne Velocidrake: Curled Horns
i(197603, 69807);	-- Windborne Velocidrake: Curved Horns
i(197593, 69797);	-- Windborne Velocidrake: Feathery Head
i(197625, 69829);	-- Windborne Velocidrake: Feathery Tail
i(197584, 69788);	-- Windborne Velocidrake: Finned Back
i(197595, 69799);	-- Windborne Velocidrake: Finned Ears
i(197627, 69832);	-- Windborne Velocidrake: Finned Neck
i(197622, 69826);	-- Windborne Velocidrake: Finned Tail
i(197580, 69784);	-- Windborne Velocidrake: Gold and Red Armor
i(197598, 69802);	-- Windborne Velocidrake: Gray Hair
i(197608, 69812);	-- Windborne Velocidrake: Gray Horns
i(197619, 69823);	-- Windborne Velocidrake: Hooked Snout
i(197596, 69800);	-- Windborne Velocidrake: Horned Jaw
i(197589, 69793);	-- Windborne Velocidrake: Large Head Fin
i(197618, 69822);	-- Windborne Velocidrake: Long Snout
i(197585, 69789);	-- Windborne Velocidrake: Maned Back
i(197635, 69846);	-- Windborne Velocidrake: Reaver Pattern
i(197599, 69803);	-- Windborne Velocidrake: Red Hair
i(197614, 69818);	-- Windborne Velocidrake: Red Scales
i(197578, 69782);	-- Windborne Velocidrake: Silver and Blue Armor
i(197581, 69785);	-- Windborne Velocidrake: Silver and Purple Armor
i(197586, 69790);	-- Windborne Velocidrake: Spiked Back
i(197623, 69827);	-- Windborne Velocidrake: Spiked Tail
i(197592, 69796);	-- Windborne Velocidrake: Spined Head
i(197607, 69811);	-- Windborne Velocidrake: Split Horns
i(197579, 69783);	-- Windborne Velocidrake: Steel and Orange Armor
i(197606, 69810);	-- Windborne Velocidrake: Swept Horns
i(197601, 69805);	-- Windborne Velocidrake: Wavy Horns
i(197609, 69813);	-- Windborne Velocidrake: White Horns
i(197634, 69845);	-- Windborne Velocidrake: Windswept Pattern
i(197610, 69814);	-- Windborne Velocidrake: Yellow Horns

------------------
-- PATCH 10.0.7 --
------------------
i(197000, 69200);	-- Cliffside Wylderdrake: Coiled Horns
i(197015, 69215);	-- Cliffside Wylderdrake: Dark Skin Variation
i(196974, 69174);	-- Cliffside Wylderdrake: Four-Horned Chin
i(197006, 69206);	-- Cliffside Wylderdrake: Plated Nose
i(196995, 69195);	-- Cliffside Wylderdrake: Spiked Horns
i(197004, 69204);	-- Cliffside Wylderdrake: Spiked Legs
i(197155, 69356);	-- Highland Drake: Finned Neck
i(197102, 69303);	-- Highland Drake: Horned Chin
i(197129, 69330);	-- Highland Drake: Sleek Horns
i(197136, 69337);	-- Highland Drake: Tapered Nose
i(202278, 73058);	-- Renewed Proto-Drake: Antlers
i(197369, 69570);	-- Renewed Proto-Drake: Brown Hair
i(197358, 69559);	-- Renewed Proto-Drake: Curved Spiked Brow
i(202279, 73056);	-- Renewed Proto-Drake: Malevolent Horns
i(202274, 73055);	-- Renewed Proto-Drake: Plated Brow
i(202273, 73054);	-- Renewed Proto-Drake: Stubby Snout
i(197583, 69787);	-- Windborne Velocidrake: Exposed Finned Back
i(197626, 69831);	-- Windborne Velocidrake: Exposed Finned Neck
i(197587, 69791);	-- Windborne Velocidrake: Feathered Back
i(197630, 69836);	-- Windborne Velocidrake: Feathered Neck
i(197591, 69795);	-- Windborne Velocidrake: Hairy Head
i(197617, 69821);	-- Windborne Velocidrake: Heavy Scales
i(197604, 69808);	-- Windborne Velocidrake: Ox Horns
i(197628, 69834);	-- Windborne Velocidrake: Plated Neck
i(197636, 69847);	-- Windborne Velocidrake: Shrieker Pattern
i(197594, 69798);	-- Windborne Velocidrake: Small Ears
i(197590, 69794);	-- Windborne Velocidrake: Small Head Fin
i(197629, 69835);	-- Windborne Velocidrake: Spiked Neck

------------------
-- PATCH 10.1.0 --
------------------
i(196965, 69165);	-- Cliffside Wylderdrake: Bronze and Teal Armor
i(196990, 69190);	-- Cliffside Wylderdrake: Helm
i(196978, 69178);	-- Cliffside Wylderdrake: Small Head Spikes
i(197021, 69221);	-- Cliffside Wylderdrake: Spiked Club Tail
i(196997, 69197);	-- Cliffside Wylderdrake: Split Horns
i(197156, 69357);	-- Highland Drake: Bronze and Green Armor
i(205876, 75967);	-- Highland Drake: Embodiment of the Hellforged [Mythic]
i(206955, 75967);	-- Highland Drake: Embodiment of the Hellforged [LFR, Normal, Heroic]
i(197120, 69321);	-- Highland Drake: Ornate Helm
i(197109, 69310);	-- Highland Drake: Spiked Head
i(197134, 69335);	-- Highland Drake: Spiked Legs
i(197104, 69305);	-- Highland Drake: Tapered Chin
i(197348, 69549);	-- Renewed Proto-Drake: Black and Red Armor
i(197353, 69554);	-- Renewed Proto-Drake: Bronze and Pink Armor
i(202277, 73057);	-- Renewed Proto-Drake: Bruiser Horns
i(197373, 69574);	-- Renewed Proto-Drake: Helm
i(202275, 73059);	-- Renewed Proto-Drake: Plated Jaw
i(202280, 73060);	-- Renewed Proto-Drake: Pronged Tail
i(197364, 69565);	-- Renewed Proto-Drake: Short Spiked Crest
i(197577, 69781);	-- Windborne Velocidrake: Bronze and Green Armor
i(197600, 69804);	-- Windborne Velocidrake: Helm
i(203338, 73829);	-- Winding Slitherdrake: Antler Horns
i(203305, 73793);	-- Winding Slitherdrake: Armor
i(203300, 73788);	-- Winding Slitherdrake: Blue and Silver Armor
i(203350, 73841);	-- Winding Slitherdrake: Blue Scales
i(203351, 73842);	-- Winding Slitherdrake: Bronze Scales
i(203323, 73811);	-- Winding Slitherdrake: Brown Hair
i(203312, 73800);	-- Winding Slitherdrake: Cluster Chin Horn
i(203331, 73820);	-- Winding Slitherdrake: Cluster Horns
i(203321, 73809);	-- Winding Slitherdrake: Curled Cheek Horn
i(203334, 73824);	-- Winding Slitherdrake: Curled Horns
i(203346, 73837);	-- Winding Slitherdrake: Curled Nose
i(203314, 73802);	-- Winding Slitherdrake: Curved Chin Horn
i(203335, 73825);	-- Winding Slitherdrake: Curved Horns
i(203320, 73808);	-- Winding Slitherdrake: Ears
i(205865, 75941);	-- Winding Slitherdrake: Embodiment of the Obsidian Gladiator
i(203361, 73853);	-- Winding Slitherdrake: Finned Tip Tail
i(203310, 73798);	-- Winding Slitherdrake: Grand Chin Thorn
i(203299, 73787);	-- Winding Slitherdrake: Green and Bronze Armor
i(203352, 73843);	-- Winding Slitherdrake: Green Scales
i(203308, 73796);	-- Winding Slitherdrake: Hairy Brow
i(203318, 73806);	-- Winding Slitherdrake: Hairy Crest
i(203362, 73854);	-- Winding Slitherdrake: Hairy Tail
i(203365, 73857);	-- Winding Slitherdrake: Hairy Throat
i(205341, 75743);	-- Winding Slitherdrake: Heavy Scales
i(203326, 73814);	-- Winding Slitherdrake: Helm
i(203339, 73830);	-- Winding Slitherdrake: Impaler Horns
i(203316, 73804);	-- Winding Slitherdrake: Large Finned Crest
i(203363, 73855);	-- Winding Slitherdrake: Large Finned Throat
i(203347, 73838);	-- Winding Slitherdrake: Large Spiked Nose
i(203309, 73797);	-- Winding Slitherdrake: Long Chin Horn
i(203341, 73832);	-- Winding Slitherdrake: Long Jaw Horns
i(203307, 73795);	-- Winding Slitherdrake: Plated Brow
i(203348, 73839);	-- Winding Slitherdrake: Pointed Nose
i(203303, 73791);	-- Winding Slitherdrake: Red and Gold Armor
i(203325, 73813);	-- Winding Slitherdrake: Red Hair
i(203353, 73844);	-- Winding Slitherdrake: Red Scales
i(203327, 73815);	-- Winding Slitherdrake: Tan Horns
i(203342, 73833);	-- Winding Slitherdrake: Triple Jaw Horns
i(203317, 73805);	-- Winding Slitherdrake: Small Finned Crest
i(203358, 73850);	-- Winding Slitherdrake: Small Finned Tail
i(203364, 73856);	-- Winding Slitherdrake: Small Finned Throat
i(203313, 73801);	-- Winding Slitherdrake: Spiked Chin
i(203345, 73836);	-- Winding Slitherdrake: Split Jaw Horns
i(203330, 73818);	-- Winding Slitherdrake: Swept Horns
i(203324, 73812);	-- Winding Slitherdrake: White Hair
i(203328, 73816);	-- Winding Slitherdrake: White Horns
i(203304, 73792);	-- Winding Slitherdrake: Yellow and Silver Armor
--- NYI ---
i(203319, 73807);	-- Winding Slitherdrake: Finned Cheek
i(203301, 73789);	-- Winding Slitherdrake: Light Blue and Copper Armor
i(203302, 73790);	-- Winding Slitherdrake: Purple and Silver Armor

------------------
-- PATCH 10.1.5 --
------------------
i(208102, 77258);	-- Cliffside Wylderdrake: Visage of the Infinite
i(208103, 77257);	-- Highland Drake: Visage of the Infinite
i(208104, 77255);	-- Renewed Proto-Drake: Visage of the Infinite
i(208105, 77256);	-- Windborne Velocidrake: Visage of the Infinite
i(197615, 69819);	-- Windborne Velocidrake: Teal Scales
i(203322, 73810);	-- Winding Slitherdrake: Blonde Hair
i(203349, 73840);	-- Winding Slitherdrake: Curved Nose Horn
i(208106, 77259);	-- Winding Slitherdrake: Visage of the Infinite

------------------
-- PATCH 10.1.7 --
------------------
i(208859, 77876);	-- Cliffside Wylderdrake: Day of the Dead Armor
i(208858, 77875);	-- Highland Drake: Pirates' Day Armor
i(208742, 77774);	-- Renewed Proto-Drake: Brewfest Armor
i(208680, 77725);	-- Windborne Velocidrake: Hallow's End Armor
i(203306, 73794);	-- Winding Slitherdrake: Horned Brow
i(203336, 73826);	-- Winding Slitherdrake: Paired Horns
i(203359, 73851);	-- Winding Slitherdrake: Shark Finned Tail
i(203355, 73846);	-- Winding Slitherdrake: Yellow Scales
--- Special --- [Blizzard Combined all 5 Above into one item.. That gives 5 QuestIDs.. Hijacking One for tracking]
i(208200, 69167);	-- Dragon Isles Drakes: Gilded Armor
i(196967, 69167);	-- Cliffside Wylderdrake: Gold and White Armor
i(197095, 69296);	-- Highland Drake: Gold and White Armor
i(197349, 69550);	-- Renewed Proto-Drake: Gold and White Armor
i(197582, 69786);	-- Windborne Velocidrake: White and Pink Armor
i(203298, 73786);	-- Winding Slitherdrake: White and Gold Armor

------------------
-- PATCH 10.2.0 --
------------------
i(210482, 78400);	-- Flourishing Whimsydrake: Back Fins
i(210476, 78402);	-- Flourishing Whimsydrake: Helmet
i(210486, 78406);	-- Flourishing Whimsydrake: Horns
i(210485, 78405);	-- Flourishing Whimsydrake: Long Snout
i(210487, 78407);	-- Flourishing Whimsydrake: Neck Fins
i(210479, 78408);	-- Flourishing Whimsydrake: Night Scales
i(210483, 78403);	-- Flourishing Whimsydrake: Ridged Brow
i(210480, 78409);	-- Flourishing Whimsydrake: Sunrise Scales
i(210481, 78410);	-- Flourishing Whimsydrake: Sunset Scales
i(210484, 78404);	-- Flourishing Whimsydrake: Underbite Snout
i(207779, 77150);	-- Grotto Netherwing Drake: Barbed Tail
i(207762, 77133);	-- Grotto Netherwing Drake: Chin Spike
i(207761, 77132);	-- Grotto Netherwing Drake: Chin Tendrils
i(207759, 77130);	-- Grotto Netherwing Drake: Cluster Spiked Back
i(207765, 77136);	-- Grotto Netherwing Drake: Cluster Spiked Crest
i(207778, 77149);	-- Grotto Netherwing Drake: Double Finned Tail
i(207774, 77145);	-- Grotto Netherwing Drake: Finned Jaw
i(207764, 77135);	-- Grotto Netherwing Drake: Head Spike
i(207770, 77141);	-- Grotto Netherwing Drake: Helm
i(207772, 77143);	-- Grotto Netherwing Drake: Long Horns
i(207769, 77140);	-- Grotto Netherwing Drake: Outcast Pattern
i(207771, 77142);	-- Grotto Netherwing Drake: Short Horns
i(207763, 77134);	-- Grotto Netherwing Drake: Single Horned Crest
i(207758, 77129);	-- Grotto Netherwing Drake: Spiked Back
i(207773, 77144);	-- Grotto Netherwing Drake: Spiked Jaw
i(207775, 77146);	-- Grotto Netherwing Drake: Teal Scales
i(207767, 77138);	-- Grotto Netherwing Drake: Tempestuous Pattern
i(207766, 77137);	-- Grotto Netherwing Drake: Triple Spiked Crest
i(207768, 77139);	-- Grotto Netherwing Drake: Volatile Pattern
i(197119, 69320);	-- Highland Drake: Helm
i(210432, 78371);	-- Highland Drake: Winter Veil Armor
i(210537, 78453);	-- Renewed Proto-Drake: Embodiment of Shadowflame
i(210536, 78451);	-- Renewed Proto-Drake: Embodiment of the Blazing
i(197371, 69572);	-- Renewed Proto-Drake: Green Hair
i(203340, 73831);	-- Winding Slitherdrake: Cluster Jaw Horns
i(210064, 78216);	-- Winding Slitherdrake: Embodiment of the Verdant Gladiator
i(203311, 73799);	-- Winding Slitherdrake: Hairy Chin
i(203343, 73834);	-- Winding Slitherdrake: Hairy Jaw
i(203329, 73817);	-- Winding Slitherdrake: Heavy Horns
i(203360, 73852);	-- Winding Slitherdrake: Large Finned Tail
i(203333, 73822);	-- Winding Slitherdrake: Short Horns
i(203344, 73835);	-- Winding Slitherdrake: Single Jaw Horn
i(203315, 73803);	-- Winding Slitherdrake: Small Spiked Crest
i(203332, 73821);	-- Winding Slitherdrake: Spiked Horns
i(203357, 73849);	-- Winding Slitherdrake: Spiked Tail
i(203337, 73827);	-- Winding Slitherdrake: Thorn Horns
--- Special --- [Blizzard Combined all 5 Above into one item.. That gives 5 QuestIDs.. Hijacking One for tracking]
i(208550, 69214);	-- Dragon Isles Drakes: White Scales [Tyr Part 4]
i(197014, 69214);	-- Cliffside Wylderdrake: White Scales
i(197146, 69347);	-- Highland Drake: White Scales
i(197393, 69594);	-- Renewed Proto-Drake: White Scales
i(197616, 69820);	-- Windborne Velocidrake: White Scales
i(203354, 73845);	-- Winding Slitherdrake: White Scales
--- NYI ---
i(210478, 78399);	-- Flourishing Whimsydrake: Gold and Pink Armor
i(207757, 77128);	-- Grotto Netherwing Drake: Purple and Silver Armor
i(211381, 78878);	-- Grotto Netherwing Drake: Violet Scales
i(207777, 77148);	-- Grotto Netherwing Drake: Yellow Scales

------------------
-- PATCH 10.2.5 --
------------------
i(211812, 79088);	-- Renewed Proto-Drake: Love Armor
i(211868, 79112);	-- Winding Slitherdrake: Lunar Festival Armor

------------------
-- PATCH 10.2.6 --
------------------
i(207776, 77147);	-- Grotto Netherwing Drake: Black Scales
i(216710, 80014);	-- Highland Drake: Embodiment of the Draconic Gladiator

------------------
-- PATCH 10.2.7 --
------------------
i(224163, 82741);	-- Cliffside Wylderdrake: Midsummer Fire Festival Armor
i(210471, 78401);	-- Flourishing Whimsydrake: Body Armor (might be already 10.2.0)
i(207760, 77131);	-- Grotto Netherwing Drake: Armor (might be already 10.2.0)
i(213561, 79690);	-- Winding Slitherdrake: Void Scales

------------------
-- PATCH 11.0.0 --
------------------
i(223510, 82177);	-- Delver's Dirigible Schematic: Template

------------------
-- PATCH 11.0.2 --
------------------
i(224981, 82187);	-- Delver's Dirigible Schematic: Brown Paint
i(224771, 82181);	-- Delver's Dirigible Schematic: Empennage
i(224982, 82179);	-- Delver's Dirigible Schematic: Exhaust
i(224980, 82170);	-- Delver's Dirigible Schematic: Front-Mounted Lantern
i(224770, 82167);	-- Delver's Dirigible Schematic: Front-Mounted Propeller
i(224960, 82176);	-- Delver's Dirigible Schematic: Lantern Wing
i(224769, 82183);	-- Delver's Dirigible Schematic: Rotor Blades
i(225542, 83308);	-- Delver's Dirigible Schematic: Void
i(224768, 82171);	-- Delver's Dirigible Schematic: Wing-Mounted Propeller
i(224979, 82185);	-- Delver's Dirigible Schematic: Zeppelin

------------------
-- PATCH 11.1.0 --
------------------
i(235685, 82168);	-- Delver's Dirigible Schematic: Drill
i(235684, 82182);	-- Delver's Dirigible Schematic: Glider
i(235687, 82180);	-- Delver's Dirigible Schematic: Spoiler
i(235683, 82173);	-- Delver's Dirigible Schematic: Turbine
i(235686, 82190);	-- Delver's Dirigible Schematic: White Paint
i(230219, 85181);	-- Delver's Gob-Trotter Schematic: Balloon
i(230217, 85177);	-- Delver's Gob-Trotter Schematic: Flamethrower
i(233196, 86296);	-- Delver's Gob-Trotter Schematic: Gold
i(230220, 85183);	-- Delver's Gob-Trotter Schematic: Green
i(230216, 85175);	-- Delver's Gob-Trotter Schematic: Harpoon
i(230218, 85179);	-- Delver's Gob-Trotter Schematic: Pipes
i(232982, 85775);	-- Engine: The Pozzik Standard
i(232985, 85782);	-- 22H Slicks
i(232986, 85781);	-- GE86 Advance
i(232981, 85776);	-- GNZ Airmaster 9000
i(232984, 85784);	-- Handcrank
i(236670, 85787);	-- Maniacal Melodies
i(235390, 86771);	-- Paint: Body Roll Blue
i(235389, 86772);	-- Paint: Goblin Green
i(235388, 86773);	-- Paint: Redlining Red
i(235391, 86774);	-- Paint: Yellow Cake Yellow
i(232983, 85783);	-- Steamboil
i(236671, 85786);	-- The Buzzer
i(236672, 85785);	-- The Ol' Low-and-Slow
i(236669, 85788);	-- The Whole Brass Band
--- NYI ---
i(235693, 82175);	-- Delver's Dirigible Schematic: Rocket
-- i(232980, 85787);	-- Axel Sneakfoot [think this questID is wrong, it's duped with Maniacal Melodies]
-- i(232979, 85785);	-- Jaks Jabberjaw [think this questID is wrong, it's duped with The Ol' Low-and-Slow]
-- i(232978, 85786);	-- Louie Firehands [think this questID is wrong, it's duped with The Buzzer]
-- i(232930, 85788);	-- Zaps Leadfoot [think this questID is wrong, it's duped with The Whole Brass Band]

------------------
-- PATCH 11.1.5 --
------------------
i(238839, 86199);	-- Delver's Dirigible Schematic: Arathi Decal
i(238837, 86198);	-- Delver's Dirigible Schematic: Pale Paint

------------------
-- PATCH 11.2.0 --
------------------
i(235697, 82192);	-- Delver's Dirigible Schematic: Alliance Decal
i(235694, 82117);	-- Delver's Dirigible Schematic: Blue Paint
i(235696, 82193);	-- Delver's Dirigible Schematic: Explorer Decal
i(235688, 82174);	-- Delver's Dirigible Schematic: Fan
i(235690, 82169);	-- Delver's Dirigible Schematic: Harpoon
i(235698, 82194);	-- Delver's Dirigible Schematic: Horde Decal
i(235689, 82186);	-- Delver's Dirigible Schematic: Kite
i(235695, 82189);	-- Delver's Dirigible Schematic: Red Paint
i(235692, 82177);	-- Delver's Dirigible Schematic: Thrusters
i(235691, 82191);	-- Delver's Dirigible Schematic: Yellow Paint
i(238178, 88814);	-- Delver's Mana-Skimmer Schematic: Canister
i(238177, 88816);	-- Delver's Mana-Skimmer Schematic: Emitter
i(238181, 88820);	-- Delver's Mana-Skimmer Schematic: Energy Thrusters
i(238182, 88819);	-- Delver's Mana-Skimmer Schematic: Hyperdrive
i(238179, 88815);	-- Delver's Mana-Skimmer Schematic: Quad Glider
i(238180, 88817);	-- Delver's Mana-Skimmer Schematic: Void Paint
