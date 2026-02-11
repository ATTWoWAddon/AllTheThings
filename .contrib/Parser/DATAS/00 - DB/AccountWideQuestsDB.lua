----------------------------------------------------------------------------
--   A C C O U N T W I D E  Q U E S T S   D A T A B A S E   M O D U L E   --
----------------------------------------------------------------------------
-- Contains a set of Quests which are known to be saved Account-Wide
-- Discrepancies per WoW Version can be toggled using a custom function which returns the flag status for that version
-- Or entire ranges of quests can simply be excluded using preprocessors in the main assignment table
-- ex. [###] = AfterMOP(),	-- a quest which wasn't account-wide until after MOP
-- local function AfterMOP()
-- 	local a
-- 	-- #IF AFTER MOP
-- 	a = true
-- 	-- #ENDIF
-- 	return a
-- end
ExportDB._Compressed.AccountWideQuestsDB = true
local AccountWideQuestsDB = {

	------------------------------------------------------------------------------
	-- PUT NEW QUESTIDS HERE vv IF YOU DONT WANT TO CHECK WHERE YOU ARE PUTTING IT
	------------------------------------------------------------------------------



	------------------------------------------------------------------------------
	-- PUT NEW QUESTIDS HERE ^^ IF YOU DONT WANT TO CHECK WHERE YOU ARE PUTTING IT
	------------------------------------------------------------------------------

	-- Drakewatcher Manuscripts
	-- #IF AFTER DF
	66720,	-- Renewed Proto-Drake: Green Scales
	69161,	-- Cliffside Wylderdrake: Armor
	69162,	-- Cliffside Wylderdrake: Silver and Purple Armor
	69163,	-- Cliffside Wylderdrake: Silver and Blue Armor
	69164,	-- Cliffside Wylderdrake: Gold and Black Armor
	69165,	-- Cliffside Wylderdrake: Bronze and Teal Armor
	69166,	-- Cliffside Wylderdrake: Gold and Orange Armor
	69167,	-- Dragon Isles Drakes: Gilded Armor
	69168,	-- Cliffside Wylderdrake: Steel and Yellow Armor
	69169,	-- Cliffside Wylderdrake: Finned Back
	69170,	-- Cliffside Wylderdrake: Spiked Back
	69171,	-- Cliffside Wylderdrake: Spiked Brow
	69172,	-- Cliffside Wylderdrake: Plated Brow
	69173,	-- Cliffside Wylderdrake: Dual Horned Chin
	69174,	-- Cliffside Wylderdrake: Four-Horned Chin
	69175,	-- Cliffside Wylderdrake: Head Fin
	69176,	-- Cliffside Wylderdrake: Head Mane
	69177,	-- Cliffside Wylderdrake: Split Head Horns
	69178,	-- Cliffside Wylderdrake: Small Head Spikes
	69179,	-- Cliffside Wylderdrake: Curled Head Horns
	69180,	-- Cliffside Wylderdrake: Triple Head Horns
	69181,	-- Cliffside Wylderdrake: Conical Head
	69182,	-- Cliffside Wylderdrake: Ears
	69183,	-- Cliffside Wylderdrake: Maned Jaw
	69184,	-- Cliffside Wylderdrake: Finned Jaw
	69185,	-- Cliffside Wylderdrake: Horned Jaw
	69186,	-- Cliffside Wylderdrake: Black Hair
	69187,	-- Cliffside Wylderdrake: Blonde Hair
	69188,	-- Cliffside Wylderdrake: Red Hair
	69189,	-- Cliffside Wylderdrake: White Hair
	69190,	-- Cliffside Wylderdrake: Helm
	69191,	-- Cliffside Wylderdrake: Black Horns
	69192,	-- Cliffside Wylderdrake: Heavy Horns
	69193,	-- Cliffside Wylderdrake: Sleek Horns
	69194,	-- Cliffside Wylderdrake: Short Horns
	69195,	-- Cliffside Wylderdrake: Spiked Horns
	69196,	-- Cliffside Wylderdrake: Branched Horns
	69197,	-- Cliffside Wylderdrake: Split Horns
	69198,	-- Cliffside Wylderdrake: Hook Horns
	69199,	-- Cliffside Wylderdrake: Swept Horns
	69200,	-- Cliffside Wylderdrake: Coiled Horns
	69201,	-- Cliffside Wylderdrake: Finned Cheek
	69202,	-- Cliffside Wylderdrake: Flared Cheek
	69203,	-- Cliffside Wylderdrake: Spiked Cheek
	69204,	-- Cliffside Wylderdrake: Spiked Legs
	69205,	-- Cliffside Wylderdrake: Horned Nose
	69206,	-- Cliffside Wylderdrake: Plated Nose
	69207,	-- Cliffside Wylderdrake: Wide Stripes Pattern
	69208,	-- Cliffside Wylderdrake: Narrow Stripes Pattern
	69209,	-- Cliffside Wylderdrake: Scaled Pattern
	69210,	-- Cliffside Wylderdrake: Red Scales
	69211,	-- Cliffside Wylderdrake: Green Scales
	69212,	-- Cliffside Wylderdrake: Blue Scales
	69213,	-- Cliffside Wylderdrake: Black Scales
	69214,	-- Dragon Isles Drakes: White Scales
	69215,	-- Cliffside Wylderdrake: Dark Skin Variation
	69216,	-- Cliffside Wylderdrake: Maned Tail
	69217,	-- Cliffside Wylderdrake: Large Tail Spikes
	69218,	-- Cliffside Wylderdrake: Finned Tail
	69219,	-- Cliffside Wylderdrake: Blunt Spiked Tail
	69220,	-- Cliffside Wylderdrake: Spear Tail
	69221,	-- Cliffside Wylderdrake: Spiked Club Tail
	69222,	-- Cliffside Wylderdrake: Finned Neck
	69223,	-- Cliffside Wylderdrake: Maned Neck
	69290,	-- Highland Drake: Gold and Black Armor
	69291,	-- Highland Drake: Silver and Blue Armor
	69294,	-- Highland Drake: Silver and Purple Armor
	69295,	-- Highland Drake: Gold and Red Armor
	69296,	-- Highland Drake: Gold and White Armor
	69297,	-- Highland Drake: Steel and Yellow Armor
	69298,	-- Highland Drake: Spined Back
	69299,	-- Highland Drake: Finned Back
	69300,	-- Highland Drake: Armor
	69301,	-- Highland Drake: Crested Brow
	69302,	-- Highland Drake: Bushy Brow
	69303,	-- Highland Drake: Horned Chin
	69304,	-- Highland Drake: Maned Chin
	69305,	-- Highland Drake: Tapered Chin
	69306,	-- Highland Drake: Spined Chin
	69307,	-- Highland Drake: Finned Head
	69308,	-- Highland Drake: Triple Finned Head
	69309,	-- Highland Drake: Spined Head
	69310,	-- Highland Drake: Spiked Head
	69311,	-- Highland Drake: Plated Head
	69312,	-- Highland Drake: Maned Head
	69313,	-- Highland Drake: Single Horned Head
	69314,	-- Highland Drake: Swept Spiked Head
	69315,	-- Highland Drake: Multi-Horned Head
	69316,	-- Highland Drake: Thorned Jaw
	69317,	-- Highland Drake: Ears
	69318,	-- Highland Drake: Black Hair
	69319,	-- Highland Drake: Brown Hair
	69320,	-- Highland Drake: Helm
	69321,	-- Highland Drake: Ornate Helm
	69322,	-- Highland Drake: Tan Horns
	69323,	-- Highland Drake: Heavy Horns
	69324,	-- Highland Drake: Thorn Horns
	69325,	-- Highland Drake: Swept Horns
	69326,	-- Highland Drake: Coiled Horns
	69327,	-- Highland Drake: Hooked Horns
	69328,	-- Highland Drake: Grand Thorn Horns
	69329,	-- Highland Drake: Curled Back Horns
	69330,	-- Highland Drake: Sleek Horns
	69331,	-- Highland Drake: Stag Horns
	69332,	-- Highland Drake: Hairy Cheek
	69333,	-- Highland Drake: Spiked Cheek
	69334,	-- Highland Drake: Spined Cheek
	69335,	-- Highland Drake: Spiked Legs
	69336,	-- Highland Drake: Toothy Mouth
	69337,	-- Highland Drake: Tapered Nose
	69338,	-- Highland Drake: Spined Nose
	69339,	-- Highland Drake: Striped Pattern
	69340,	-- Highland Drake: Large Spotted Pattern
	69341,	-- Highland Drake: Small Spotted Pattern
	69342,	-- Highland Drake: Scaled Pattern
	69343,	-- Highland Drake: Black Scales
	69344,	-- Highland Drake: Green Scales
	69345,	-- Highland Drake: Red Scales
	69346,	-- Highland Drake: Bronze Scales
	69347,	-- Highland Drake: White Scales
	69348,	-- Highland Drake: Heavy Scales
	69349,	-- Highland Drake: Vertical Finned Tail
	69350,	-- Highland Drake: Club Tail
	69351,	-- Highland Drake: Spiked Club Tail
	69352,	-- Highland Drake: Spiked Tail
	69353,	-- Highland Drake: Hooked Tail
	69354,	-- Highland Drake: Bladed Tail
	69355,	-- Highland Drake: Spined Neck
	69356,	-- Highland Drake: Finned Neck
	69357,	-- Highland Drake: Bronze and Green Armor
	69547,	-- Renewed Proto-Drake: Gold and Black Armor
	69548,	-- Renewed Proto-Drake: Silver and Blue Armor
	69549,	-- Renewed Proto-Drake: Black and Red Armor
	69550,	-- Renewed Proto-Drake: Gold and White Armor
	69551,	-- Renewed Proto-Drake: Silver and Purple Armor
	69552,	-- Renewed Proto-Drake: Gold and Red Armor
	69553,	-- Renewed Proto-Drake: Steel and Yellow Armor
	69554,	-- Renewed Proto-Drake: Bronze and Pink Armor
	69555,	-- Renewed Proto-Drake: Horned Back
	69557,	-- Renewed Proto-Drake: Hairy Back
	69558,	-- Renewed Proto-Drake: Armor
	69559,	-- Renewed Proto-Drake: Curved Spiked Brow
	69560,	-- Renewed Proto-Drake: Hairy Brow
	69561,	-- Renewed Proto-Drake: Spined Brow
	69562,	-- Renewed Proto-Drake: Spiked Crest
	69563,	-- Renewed Proto-Drake: Spined Crest
	69564,	-- Renewed Proto-Drake: Maned Crest
	69565,	-- Renewed Proto-Drake: Short Spiked Crest
	69566,	-- Renewed Proto-Drake: Finned Crest
	69567,	-- Renewed Proto-Drake: Dual Horned Crest
	69568,	-- Renewed Proto-Drake: Gray Hair
	69569,	-- Renewed Proto-Drake: Blue Hair
	69570,	-- Renewed Proto-Drake: Brown Hair
	69571,	-- Renewed Proto-Drake: Red Hair
	69572,	-- Renewed Proto-Drake: Green Hair
	69573,	-- Renewed Proto-Drake: Purple Hair
	69574,	-- Renewed Proto-Drake: Helm
	69575,	-- Renewed Proto-Drake: Swept Horns
	69576,	-- Renewed Proto-Drake: Curled Horns
	69577,	-- Renewed Proto-Drake: Ears
	69578,	-- Renewed Proto-Drake: Bovine Horns
	69579,	-- Renewed Proto-Drake: Subtle Horns
	69580,	-- Renewed Proto-Drake: Impaler Horns
	69581,	-- Renewed Proto-Drake: Curved Horns
	69582,	-- Renewed Proto-Drake: Gradient Horns
	69583,	-- Renewed Proto-Drake: White Horns
	69584,	-- Renewed Proto-Drake: Heavy Horns
	69585,	-- Renewed Proto-Drake: Thick Spined Jaw
	69586,	-- Renewed Proto-Drake: Horned Jaw
	69587,	-- Renewed Proto-Drake: Spiked Jaw
	69588,	-- Renewed Proto-Drake: Thin Spined Jaw
	69589,	-- Renewed Proto-Drake: Finned Jaw
	69590,	-- Renewed Proto-Drake: Green Scales
	69591,	-- Renewed Proto-Drake: Blue Scales
	69592,	-- Renewed Proto-Drake: Bronze Scales
	69593,	-- Renewed Proto-Drake: Black Scales
	69594,	-- Renewed Proto-Drake: White Scales
	69595,	-- Renewed Proto-Drake: Predator Pattern
	69596,	-- Renewed Proto-Drake: Harrier Pattern
	69597,	-- Renewed Proto-Drake: Skyterror Pattern
	69598,	-- Renewed Proto-Drake: Heavy Scales
	69599,	-- Renewed Proto-Drake: Snub Snout
	69600,	-- Renewed Proto-Drake: Razor Snout
	69601,	-- Renewed Proto-Drake: Shark Snout
	69602,	-- Renewed Proto-Drake: Beaked Snout
	69603,	-- Renewed Proto-Drake: Spiked Club Tail
	69604,	-- Renewed Proto-Drake: Club Tail
	69605,	-- Renewed Proto-Drake: Finned Tail
	69606,	-- Renewed Proto-Drake: Maned Tail
	69607,	-- Renewed Proto-Drake: Spined Tail
	69608,	-- Renewed Proto-Drake: Spiked Throat
	69609,	-- Renewed Proto-Drake: Finned Throat
	69781,	-- Windborne Velocidrake: Bronze and Green Armor
	69782,	-- Windborne Velocidrake: Silver and Blue Armor
	69783,	-- Windborne Velocidrake: Steel and Orange Armor
	69784,	-- Windborne Velocidrake: Gold and Red Armor
	69785,	-- Windborne Velocidrake: Silver and Purple Armor
	69786,	-- Windborne Velocidrake: White and Pink Armor
	69787,	-- Windborne Velocidrake: Exposed Finned Back
	69788,	-- Windborne Velocidrake: Finned Back
	69789,	-- Windborne Velocidrake: Maned Back
	69790,	-- Windborne Velocidrake: Spiked Back
	69791,	-- Windborne Velocidrake: Feathered Back
	69792,	-- Windborne Velocidrake: Armor
	69793,	-- Windborne Velocidrake: Large Head Fin
	69794,	-- Windborne Velocidrake: Small Head Fin
	69795,	-- Windborne Velocidrake: Hairy Head
	69796,	-- Windborne Velocidrake: Spined Head
	69797,	-- Windborne Velocidrake: Feathery Head
	69798,	-- Windborne Velocidrake: Small Ears
	69799,	-- Windborne Velocidrake: Finned Ears
	69800,	-- Windborne Velocidrake: Horned Jaw
	69801,	-- Windborne Velocidrake: Black Fur
	69802,	-- Windborne Velocidrake: Gray Hair
	69803,	-- Windborne Velocidrake: Red Hair
	69804,	-- Windborne Velocidrake: Helm
	69805,	-- Windborne Velocidrake: Wavy Horns
	69806,	-- Windborne Velocidrake: Cluster Horns
	69807,	-- Windborne Velocidrake: Curved Horns
	69808,	-- Windborne Velocidrake: Ox Horns
	69809,	-- Windborne Velocidrake: Curled Horns
	69810,	-- Windborne Velocidrake: Swept Horns
	69811,	-- Windborne Velocidrake: Split Horns
	69812,	-- Windborne Velocidrake: Gray Horns
	69813,	-- Windborne Velocidrake: White Horns
	69814,	-- Windborne Velocidrake: Yellow Horns
	69815,	-- Windborne Velocidrake: Black Scales
	69816,	-- Windborne Velocidrake: Blue Scales
	69817,	-- Windborne Velocidrake: Bronze Scales
	69818,	-- Windborne Velocidrake: Red Scales
	69819,	-- Windborne Velocidrake: Teal Scales
	69820,	-- Windborne Velocidrake: White Scales
	69821,	-- Windborne Velocidrake: Heavy Scales
	69822,	-- Windborne Velocidrake: Long Snout
	69823,	-- Windborne Velocidrake: Hooked Snout
	69824,	-- Windborne Velocidrake: Beaked Snout
	69825,	-- Windborne Velocidrake: Exposed Finned Tail
	69826,	-- Windborne Velocidrake: Finned Tail
	69827,	-- Windborne Velocidrake: Spiked Tail
	69828,	-- Windborne Velocidrake: Club Tail
	69829,	-- Windborne Velocidrake: Feathery Tail
	69831,	-- Windborne Velocidrake: Exposed Finned Neck
	69832,	-- Windborne Velocidrake: Finned Neck
	69834,	-- Windborne Velocidrake: Plated Neck
	69835,	-- Windborne Velocidrake: Spiked Neck
	69836,	-- Windborne Velocidrake: Feathered Neck
	69845,	-- Windborne Velocidrake: Windswept Pattern
	69846,	-- Windborne Velocidrake: Reaver Pattern
	69847,	-- Windborne Velocidrake: Shrieker Pattern
	72367,	-- Renewed Proto-Drake: Embodiment of the Storm-Eater
	72371,	-- Highland Drake: Embodiment of the Crimson Gladiator
	73054,	-- Renewed Proto-Drake: Stubby Snout
	73055,	-- Renewed Proto-Drake: Plated Brow
	73056,	-- Renewed Proto-Drake: Malevolent Horns
	73057,	-- Renewed Proto-Drake: Bruiser Horns
	73058,	-- Renewed Proto-Drake: Antlers
	73059,	-- Renewed Proto-Drake: Plated Jaw
	73060,	-- Renewed Proto-Drake: Pronged Tail
	73786,	-- Winding Slitherdrake: White and Gold Armor
	73787,	-- Winding Slitherdrake: Green and Bronze Armor
	73788,	-- Winding Slitherdrake: Blue and Silver Armor
	73789,	-- Winding Slitherdrake: Light Blue and Copper Armor
	73790,	-- Winding Slitherdrake: Purple and Silver Armor
	73791,	-- Winding Slitherdrake: Red and Gold Armor
	73792,	-- Winding Slitherdrake: Yellow and Silver Armor
	73793,	-- Winding Slitherdrake: Armor
	73794,	-- Winding Slitherdrake: Horned Brow
	73795,	-- Winding Slitherdrake: Plated Brow
	73796,	-- Winding Slitherdrake: Hairy Brow
	73797,	-- Winding Slitherdrake: Long Chin Horn
	73798,	-- Winding Slitherdrake: Grand Chin Thorn
	73799,	-- Winding Slitherdrake: Hairy Chin
	73800,	-- Winding Slitherdrake: Cluster Chin Horn
	73801,	-- Winding Slitherdrake: Spiked Chin
	73802,	-- Winding Slitherdrake: Curved Chin Horn
	73803,	-- Winding Slitherdrake: Small Spiked Crest
	73804,	-- Winding Slitherdrake: Large Finned Crest
	73805,	-- Winding Slitherdrake: Small Finned Crest
	73806,	-- Winding Slitherdrake: Hairy Crest
	73807,	-- Winding Slitherdrake: Finned Cheek
	73808,	-- Winding Slitherdrake: Ears
	73809,	-- Winding Slitherdrake: Curled Cheek Horn
	73810,	-- Winding Slitherdrake: Blonde Hair
	73811,	-- Winding Slitherdrake: Brown Hair
	73812,	-- Winding Slitherdrake: White Hair
	73813,	-- Winding Slitherdrake: Red Hair
	73814,	-- Winding Slitherdrake: Helm
	73815,	-- Winding Slitherdrake: Tan Horns
	73816,	-- Winding Slitherdrake: White Horns
	73817,	-- Winding Slitherdrake: Heavy Horns
	73818,	-- Winding Slitherdrake: Swept Horns
	73820,	-- Winding Slitherdrake: Cluster Horns
	73821,	-- Winding Slitherdrake: Spiked Horns
	73822,	-- Winding Slitherdrake: Short Horns
	73824,	-- Winding Slitherdrake: Curled Horns
	73825,	-- Winding Slitherdrake: Curved Horns
	73826,	-- Winding Slitherdrake: Paired Horns
	73827,	-- Winding Slitherdrake: Thorn Horns
	73829,	-- Winding Slitherdrake: Antler Horns
	73830,	-- Winding Slitherdrake: Impaler Horns
	73831,	-- Winding Slitherdrake: Cluster Jaw Horns
	73832,	-- Winding Slitherdrake: Long Jaw Horns
	73833,	-- Winding Slitherdrake: Triple Jaw Horns
	73834,	-- Winding Slitherdrake: Hairy Jaw
	73835,	-- Winding Slitherdrake: Single Jaw Horn
	73836,	-- Winding Slitherdrake: Split Jaw Horns
	73837,	-- Winding Slitherdrake: Curled Nose
	73838,	-- Winding Slitherdrake: Large Spiked Nose
	73839,	-- Winding Slitherdrake: Pointed Nose
	73840,	-- Winding Slitherdrake: Curved Nose Horn
	73841,	-- Winding Slitherdrake: Blue Scales
	73842,	-- Winding Slitherdrake: Bronze Scales
	73843,	-- Winding Slitherdrake: Green Scales
	73844,	-- Winding Slitherdrake: Red Scales
	73845,	-- Winding Slitherdrake: White Scales
	73846,	-- Winding Slitherdrake: Yellow Scales
	73849,	-- Winding Slitherdrake: Spiked Tail
	73850,	-- Winding Slitherdrake: Small Finned Tail
	73851,	-- Winding Slitherdrake: Shark Finned Tail
	73852,	-- Winding Slitherdrake: Large Finned Tail
	73853,	-- Winding Slitherdrake: Finned Tip Tail
	73854,	-- Winding Slitherdrake: Hairy Tail
	73855,	-- Winding Slitherdrake: Large Finned Throat
	73856,	-- Winding Slitherdrake: Small Finned Throat
	73857,	-- Winding Slitherdrake: Hairy Throat
	75743,	-- Winding Slitherdrake: Heavy Scales
	75941,	-- Winding Slitherdrake: Embodiment of the Obsidian Gladiator
	75967,	-- Highland Drake: Embodiment of the Hellforged
	77128,	-- Grotto Netherwing Drake: Purple and Silver Armor
	77129,	-- Grotto Netherwing Drake: Spiked Back
	77130,	-- Grotto Netherwing Drake: Cluster Spiked Back
	77131,	-- Grotto Netherwing Drake: Armor
	77132,	-- Grotto Netherwing Drake: Chin Tendrils
	77133,	-- Grotto Netherwing Drake: Chin Spike
	77134,	-- Grotto Netherwing Drake: Single Horned Crest
	77135,	-- Grotto Netherwing Drake: Head Spike
	77136,	-- Grotto Netherwing Drake: Cluster Spiked Crest
	77137,	-- Grotto Netherwing Drake: Triple Spiked Crest
	77138,	-- Grotto Netherwing Drake: Tempestuous Pattern
	77139,	-- Grotto Netherwing Drake: Volatile Pattern
	77140,	-- Grotto Netherwing Drake: Outcast Pattern
	77141,	-- Grotto Netherwing Drake: Helm
	77142,	-- Grotto Netherwing Drake: Short Horns
	77143,	-- Grotto Netherwing Drake: Long Horns
	77144,	-- Grotto Netherwing Drake: Spiked Jaw
	77145,	-- Grotto Netherwing Drake: Finned Jaw
	77146,	-- Grotto Netherwing Drake: Teal Scales
	77147,	-- Grotto Netherwing Drake: Black Scales
	77148,	-- Grotto Netherwing Drake: Yellow Scales
	77149,	-- Grotto Netherwing Drake: Double Finned Tail
	77150,	-- Grotto Netherwing Drake: Barbed Tail
	77255,	-- Renewed Proto-Drake: Visage of the Infinite
	77256,	-- Windborne Velocidrake: Visage of the Infinite
	77257,	-- Highland Drake: Visage of the Infinite
	77258,	-- Cliffside Wylderdrake: Visage of the Infinite
	77259,	-- Winding Slitherdrake: Visage of the Infinite
	77725,	-- Windborne Velocidrake: Hallow's End Armor
	77774,	-- Renewed Proto-Drake: Brewfest Armor
	77875,	-- Highland Drake: Pirates' Day Armor
	77876,	-- Cliffside Wylderdrake: Day of the Dead Armor
	78216,	-- Winding Slitherdrake: Embodiment of the Verdant Gladiator
	78371,	-- Highland Drake: Winter Veil Armor
	78399,	-- Flourishing Whimsydrake: Gold and Pink Armor
	78400,	-- Flourishing Whimsydrake: Back Fins
	78401,	-- Flourishing Whimsydrake: Body Armor
	78402,	-- Flourishing Whimsydrake: Helmet
	78403,	-- Flourishing Whimsydrake: Ridged Brow
	78404,	-- Flourishing Whimsydrake: Underbite Snout
	78405,	-- Flourishing Whimsydrake: Long Snout
	78406,	-- Flourishing Whimsydrake: Horns
	78407,	-- Flourishing Whimsydrake: Neck Fins
	78408,	-- Flourishing Whimsydrake: Night Scales
	78409,	-- Flourishing Whimsydrake: Sunrise Scales
	78410,	-- Flourishing Whimsydrake: Sunset Scales
	78451,	-- Renewed Proto-Drake: Embodiment of the Blazing
	78453,	-- Renewed Proto-Drake: Embodiment of Shadowflame
	78878,	-- Grotto Netherwing Drake: Violet Scales
	79088,	-- Renewed Proto-Drake: Love Armor
	79112,	-- Winding Slitherdrake: Lunar Festival Armor
	79458,	-- Grimoire of the Riftsmolder Darkglare
	79690,	-- Winding Slitherdrake: Void Scales
	80014,	-- Highland Drake: Embodiment of the Draconic Gladiator
	82543,	-- Increased Noble Flying Carpet Droprate (Daily Accountwide)
	82741,	-- Cliffside Wylderdrake: Midsummer Fire Festival Armor
	-- #ENDIF

	-- Secrets of Azeroth Locks
	-- #IF AFTER DF
	76508,	-- Upon completion of Out of the Sands (questID 77305) (account-wide completion)
	76987,	-- completed 'The Inquisitive' (achievementID 18642) (account-wide completion)
	77307,	-- Community Rumors (Achievement 18643) (account-wide completion)
	77308,	-- Upon completion of (QuestID 77977) (account-wide completion)
	77513,	-- completed 'The Tricked-Out Thinking Cap' (questID 76504) (account-wide completion)
	77520,	-- Upon completion of (QuestID 77954) (account-wide completion)
	77521,	-- completed 'Preservationist Cleared' (questID 77277) (account-wide completion)
	77522,	-- completed 'The Torch of Pyrreth' (questID 77263) (account-wide completion)
	77523,	-- completed 'A Knowledgeable Descent' (questID 77286) (account-wide completion)
	77524,	-- completed 'Using the Idol' (questID 76456) (account-wide completion)
	77576,	-- Upon completion of A Titanic Mold (QuestID 77822) (account-wide completion)
	77577,	-- Upon completion of A Key To Reforging (QuestID 77831) (account-wide completion)
	77578,	-- Banner Stand
	77579,	-- Upon completion of (QuestID 77908) (account-wide completion)
	77580,	-- Upon completion of (QuestID 77934) (account-wide completion)
	77854,	-- Upon completion of Into the Sands (questID 76509) (account-wide completion)
	78200,	-- completed 'An Idol in Hand' (questID 77304) / finished 'Tools of the Trade' (achievementID 18645) (account-wide completion)
	78201,	-- completed 'Artifact Secured' (questID 77282) (account-wide completion)
	78202,	-- completed 'Unfinished Thinking Cap' (questID 77237) (account-wide completion)
	78973,	-- Community Rumor Mill (Achievement 18644) (account-wide completion)
	-- #ENDIF

	-- Delver's Dirigible Schematics
	-- #IF AFTER TWW
	82167,	-- Delver's Dirigible Schematic: Front-Mounted Propeller
	82170,	-- Delver's Dirigible Schematic: Front-Mounted Lantern
	82171,	-- Delver's Dirigible Schematic: Wing-Mounted Propeller
	82176,	-- Delver's Dirigible Schematic: Lantern Wing
	82177,	-- Delver's Dirigible Schematic: Template
	82179,	-- Delver's Dirigible Schematic: Exhaust
	82181,	-- Delver's Dirigible Schematic: Empennage
	82183,	-- Delver's Dirigible Schematic: Rotor Blades
	82185,	-- Delver's Dirigible Schematic: Zeppelin
	82187,	-- Delver's Dirigible Schematic: Brown Paint
	83308,	-- Delver's Dirigible Schematic: Void

	-- 11.1.0
	82168,	-- Delver's Dirigible Schematic: Drill
	82173,	-- Delver's Dirigible Schematic: Turbine
	82180,	-- Delver's Dirigible Schematic: Spoiler
	82182,	-- Delver's Dirigible Schematic: Glider
	82190,	-- Delver's Dirigible Schematic: White Paint
	85175,	-- Delver's Gob-Trotter Schematic: Harpoon
	85177,	-- Delver's Gob-Trotter Schematic: Flamethrower
	85179,	-- Delver's Gob-Trotter Schematic: Pipes
	85181,	-- Delver's Gob-Trotter Schematic: Balloon
	85183,	-- Delver's Gob-Trotter Schematic: Green
	85775,	-- G77C Ultra

	-- 11.1.5
	86199,	-- Delver's Dirigible Schematic: Arathi Decal
	86198,	-- Delver's Dirigible Schematic: Pale Paint
	-- #ENDIF

	-- Retroactively changed Raid Skips
	-- #IF AFTER 11.1.7
	37029,	-- Sigil of the Black Hand [N]
	37030,	-- Sigil of the Black Hand [H]
	37031,	-- Sigil of the Black Hand [M]
	-- #ENDIF

	-- #IF AFTER MOP
	-- unknown Classic quests saved on new character
	91567,
	91572,
	91573,
	91574,
	91575,
	91576,
	91577,
	91578,
	-- #ENDIF

	-- Manual scrape from a brand new character & 86000 scan of C_QuestLog.IsAccountQuest
	-- Nothing in this section was in the game prior to MOP that I can tell
	-- #IF AFTER MOP
	08237,
	31308,
	31309,
	31316,
	31548,
	31549,
	31550,
	31551,
	31552,
	31553,
	31555,
	31556,
	31568,
	31569,
	31570,
	31571,
	31572,
	31573,
	31574,
	31575,
	31576,
	31577,
	31578,
	31579,
	31580,
	31581,
	31582,
	31583,
	31584,
	31585,
	31586,
	31587,
	31588,
	31589,
	31590,
	31591,
	31592,
	31593,
	31693,
	31724,
	31725,
	31726,
	31728,
	31729,
	31752,
	31780,
	31781,
	31785,
	31812,
	31813,
	31814,
	31815,
	31817,
	31818,
	31819,
	31821,
	31822,
	31823,
	31824,
	31825,
	31826,
	31827,
	31828,
	31830,
	31831,
	31832,
	31850,
	31851,
	31852,
	31854,
	31862,
	31870,
	31871,
	31872,
	31878,
	31879,
	31880,
	31881,
	31882,
	31883,
	31884,
	31885,
	31889,
	31891,
	31897,
	31902,
	31903,
	31904,
	31905,
	31906,
	31907,
	31908,
	31909,
	31910,
	31911,
	31912,
	31913,
	31914,
	31915,
	31916,
	31917,
	31918,
	31919,
	31920,
	31921,
	31922,
	31923,
	31924,
	31925,
	31926,
	31927,
	31928,
	31929,
	31930,
	31931,
	31932,
	31933,
	31934,
	31935,
	31951,
	31952,
	31953,
	31954,
	31955,
	31956,
	31957,
	31958,
	31966,
	31967,
	31970,
	31971,
	31972,
	31973,
	31974,
	31975,
	31976,
	31977,
	31980,
	31981,
	31982,
	31983,
	31984,
	31985,
	31986,
	31991,
	32008,
	32009,
	32175,
	32428,
	32434,
	32439,
	32440,
	32441,
	32603,
	32604,
	32863,
	32868,
	32869,
	33136,
	33137,
	33222,
	34774,
	36471,
	36483,
	36662,
	37201,
	37203,
	37205,
	37206,
	37207,
	37208,
	37644,
	37645,
	38299,
	38300,
	38399,
	38995,
	39058,
	39713,
	39723,
	39724,
	39725,
	39750,
	40310,
	40329,
	40753,
	42871,
	42873,
	42874,
	42875,
	42876,
	42877,
	42878,
	42879,
	42891,
	42892,
	42893,
	42894,
	42895,
	42896,
	42898,
	42900,
	42902,
	42906,
	42907,
	42908,
	42909,
	42910,
	42934,
	42938,
	42941,
	42942,
	42943,
	42944,
	42946,
	42947,
	42948,
	42973,
	43016,
	44767,
	44948,
	44949,
	44950,
	44953,
	44954,
	44956,
	44957,
	44958,
	44959,
	44960,
	44961,
	44962,
	44967,
	44968,
	44969,
	44971,
	44973,
	44974,
	44975,
	44976,
	44977,
	44978,
	44979,
	44980,
	44981,
	44982,
	44983,
	44984,
	44985,
	44986,
	44987,
	44988,
	44989,
	44990,
	44991,
	44992,
	44993,
	44994,
	44995,
	44996,
	44997,
	44998,
	44999,
	45000,
	45001,
	45002,
	45003,
	45004,
	45005,
	45006,
	45007,
	45008,
	45009,
	45010,
	45011,
	45012,
	45013,
	45014,
	45015,
	45016,
	45017,
	45018,
	45019,
	45020,
	45083,
	45423,
	45539,
	45540,
	46291,
	46292,
	46293,
	47895,
	50098,
	50099,
	50100,
	50101,
	50102,
	50103,
	50104,
	50105,
	50106,
	50107,
	50108,
	50109,
	50140,
	50141,
	50142,
	50143,
	50144,
	50145,
	50146,
	50147,
	51994,
	52969,
	53121,
	53123,
	53124,
	53131,
	53206,
	53220,
	53739,
	53740,
	53741,
	53742,
	53743,
	53744,
	53745,
	53746,
	53747,
	53748,
	53749,
	53750,
	53751,
	54184,
	54185,
	54186,
	54264,
	54276,
	54410,
	56042,
	56205,
	56489,
	56490,
	56491,
	56492,
	56571,
	56624,
	56625,
	56626,
	56627,
	56628,
	56629,
	56630,
	56631,
	56632,
	56633,
	56634,
	56635,
	56652,
	56729,
	57096,
	57559,
	58455,
	58456,
	58457,
	58458,
	58927,
	59072,
	59087,
	59120,
	60490,
	60511,
	61225,
	61235,
	61236,
	61237,
	61238,
	61239,
	61241,
	61244,
	61245,
	61247,
	61249,
	61250,
	61251,
	61253,
	61254,
	61257,
	61258,
	61260,
	61261,
	61263,
	61264,
	61270,
	61271,
	61273,
	61274,
	61275,
	61277,
	61278,
	61279,
	61280,
	61281,
	61282,
	61283,
	61284,
	61285,
	61286,
	61287,
	61288,
	61289,
	61290,
	61291,
	61292,
	61293,
	61294,
	61295,
	61296,
	61297,
	61298,
	61299,
	61300,
	61727,
	62254,
	62255,
	62395,
	62396,
	62397,
	62398,
	62602,
	62708,
	62709,
	62710,
	62711,
	62745,
	62964,
	62965,
	62977,
	62978,
	62979,
	62980,
	63004,
	63435,
	63611,
	63641,
	63642,
	63643,
	63666,
	63667,
	63668,
	63684,
	63685,
	63686,
	63687,
	63688,
	63689,
	63690,
	63691,
	63692,
	63693,
	63694,
	63695,
	63696,
	63697,
	63698,
	63699,
	63700,
	63707,
	63893,
	64202,
	64262,
	64292,
	64339,
	64348,
	64628,
	64655,
	64764,
	64983,
	65298,
	65539,
	65716,	-- Ensemble: Barkbinds of the Archdruid's Nightmare
	66858,
	66959,
	67030,
	67139,
	69996,
	70315,
	70316,
	70317,
	70318,
	70335,
	70541,
	70550,	-- Welcome to the Assembly
	70647,
	70697,
	70702,
	70722,
	70732,
	70755,
	70756,
	70757,
	70758,
	70759,
	70793,	-- Iskaaran Fishing Net
	70807,
	70808,
	70809,
	70810,
	70812,
	70813,
	70814,
	70815,
	70817,
	70818,
	70819,
	70820,
	70821,
	70822,
	70828,
	70831,
	70832,
	70833,	-- Rumors of the Jeweled Whelpings
	70839,
	70849,
	70851,
	70853,
	70854,
	70880,
	70882,
	70883,
	70885,
	70887,
	70888,
	70891,
	70895,
	70896,
	70897,
	70901,
	70903,
	70904,
	70905,
	70910,
	70911,
	70912,
	70913,
	70914,
	70915,
	70936,
	70938,
	70939,
	70940,
	70941,	-- [DF] Fishing Holes
	70942,
	70943,
	70944,
	70945,
	70948,
	70950,
	70952,
	70953,
	70954,
	70955,
	70956,
	70959,
	70960,
	70961,
	70962,
	70963,
	70964,
	70966,
	70967,
	70968,
	70971,
	70972,
	70976,
	70977,
	70978,
	71028,
	71029,
	71030,
	71031,
	71032,
	71044,
	71045,
	71046,
	71047,
	71048,
	71049,
	71050,
	71051,
	71052,
	71058,
	71060,
	71066,
	71067,
	71073,
	71074,
	71075,
	71079,
	71083,
	71085,
	71089,
	71090,
	71146,
	71148,
	71149,
	71150,
	71151,
	71161,
	71184,
	71210,
	71227,
	71229,
	71231,
	72038,
	72048,
	72064,
	72094,	-- How to Train a Dragonkin
	72113,
	72117,
	72137,
	72248,
	72328,
	72363,
	72392,
	72516,
	72596,
	72681,
	72688,
	72690,
	72693,
	72744,
	72776,
	72777,
	72781,
	72782,
	72892,
	73101,
	73102,
	73103,
	73104,
	73105,
	73106,
	73171,
	73173,
	73174,	-- Gain New Look: Sneed
	73175,
	73180,
	73182,
	73368,
	73369,
	73370,
	73371,
	73372,
	73373,
	73374,
	73375,
	73376,
	73377,
	73378,
	73379,
	73380,
	73381,
	73382,
	73383,
	73384,
	73386,
	73387,
	73388,
	73389,
	73390,
	73391,
	73392,
	73393,
	73410,
	73863,
	73864,
	73928,
	73936,
	73952,
	74286,
	74287,
	74730,	-- Ensemble: Bloodtinged Cloth
	74732,	-- Ensemble: Blooddrenched Leather
	74733,	-- Ensemble: Bloodstained Mail
	74734,	-- Ensemble: Bloodsoaked Plate
	74843,
	74844,
	74845,
	74848,
	74849,
	74850,
	74851,
	74852,
	74957,	-- X-45 Daily Droprate
	75036,
	75037,
	75038,
	75039,
	75040,
	75041,
	75127,
	75241,
	75260,
	75444,
	75658,
	75720,
	75723,
	75724,
	75727,
	75730,
	75731,
	75742,
	75833,
	75862,
	75863,
	75864,
	75968,
	76030,
	76067,
	76103,
	76104,
	76105,
	76106,
	76107,
	76108,
	76112,
	76113,
	76114,
	76157,
	76159,
	76178,
	76179,
	76180,
	76181,
	76182,
	76183,
	76184,
	76185,
	76186,
	76187,
	76188,
	76189,
	76190,
	76191,
	76192,
	76193,
	76248,	-- Eva Sarkhoff
	76249,	-- Memories of Scholomance
	76250,	-- Spectral Essence
	76257,
	76261,	-- Hand of Naxxramas
	76262,	-- Talking to Archmage Angela Dosantos after defeating Hand of Naxxramas
	76263,
	76264,
	76265,
	76290,
	76307,	-- Makeshift Grappling Hook [206473]
	76390,	-- Inconvenience Fee [Naxxramas]
	76573,
	76574,
	76575,
	76603,
	76604,
	76605,
	76606,
	76607,
	76608,
	76609,
	76610,
	76611,
	76612,
	76613,
	76614,
	76615,
	76616,
	76617,
	76618,
	76619,
	76620,
	76621,
	76637,
	76640,
	76642,
	76644,
	76647,
	76649,
	76650,
	76652,
	76654,
	76656,
	76658,
	76660,
	76661,
	76662,
	76663,
	76664,
	76665,
	76666,
	76667,
	76668,
	76669,
	76670,
	76671,
	76672,
	76673,
	76674,
	76676,
	76677,
	76678,
	76679,
	76680,
	76681,
	76682,
	76683,
	76684,
	76685,
	76686,
	76687,
	76688,
	76689,
	76690,
	76691,
	76692,
	76693,
	76694,
	76695,
	76696,
	76697,
	76698,
	76699,
	76700,
	76701,
	76702,
	76703,
	76704,
	76705,
	76706,
	76707,
	76708,
	76709,
	76710,
	76711,
	76712,
	76713,
	76714,
	76715,
	76741,
	76742,
	76747,
	77179,
	77180,	-- Grimoire of the Antoran Felhunter
	77181,	-- Grimoire of the Voracious Felmaw
	77213,	-- Doan's Strongbox
	77221,
	77236,
	77241,
	77248,
	77249,
	77250,
	77253,
	77285,
	77288,
	77289,
	77290,
	77291,
	77292,
	77293,
	77294,
	77296,
	77297,
	77298,
	77299,
	77301,	-- Loose Dirt Mound
	77302,	-- Loose Dirt Mound
	77572,
	77644,
	77678,
	77716,	-- Level 2 (Brann)
	77718,	-- Level 3 (Brann)
	77719,	-- Level 4 (Brann)
	77720,	-- Level 5 (Brann)
	77721,	-- Level 6 (Brann)
	77722,	-- Level 7 (Brann)
	77723,	-- Level 8 (Brann)
	77724,	-- Level 9 (Brann)
	77727,	-- Level 10 (Brann)
	77728,	-- Level 11 (Brann)
	77729,	-- Level 12 (Brann)
	77730,	-- Level 13 (Brann)
	77731,	-- Level 14 (Brann)
	77732,	-- Level 15 (Brann)
	77733,	-- Level 16 (Brann)
	77734,	-- Level 17 (Brann)
	77735,	-- Level 18 (Brann)
	77736,	-- Level 19 (Brann)
	77737,	-- Level 20 (Brann)
	77799,
	77800,
	77804,
	77805,
	77806,
	77807,
	77813,
	77815,
	77820,
	77887,
	77979,
	78098,
	78099,
	78100,
	78101,
	78130,
	78207,	-- Loose Dirt Mound
	78363,
	78386,
	78422,
	78423,
	78430,
	78431,
	78445,
	78449,
	78450,
	78479,
	78481,
	78507,
	78512,
	78514,
	78515,
	78519,
	78520,
	78521,
	78522,
	78526,
	78527,	-- Feather of the Blazing Somnowl
	78528,
	78595,
	78709,
	78710,
	78842,	-- Cinder of Companionship
	78846,
	78847,
	78848,
	78849,
	78850,
	78851,
	78852,
	78853,
	78854,
	78855,
	78856,
	78857,
	78858,
	78859,
	78882,
	78883,
	78884,
	78886,
	78887,
	78888,
	78889,
	78904,
	78938,	-- Champion of the Waterlords
	79081,	-- Daily lockout for Flamegard's Hope credit
	79104,	-- Renewed Proto-Drake Love Armor Droprate
	79142,
	79178,
	79184,
	79186,
	79189,
	79351,	-- Level 25 (Brann)
	79352,	-- Level 24 (Brann)
	79374,	-- Grimoire of the Bloodrage Tyrant
	79384,
	79385,
	79387,
	79389,
	79390,
	79391,
	79392,
	79393,
	79394,
	79395,
	79396,
	79397,
	79398,
	79399,
	79400,
	79401,
	79402,
	79403,
	79405,
	79406,
	79407,
	79408,
	79409,
	79410,
	79416,
	79417,
	79419,
	79420,
	79421,
	79422,
	79423,
	79424,
	79425,
	79426,
	79427,
	79428,
	79429,
	79430,
	79431,
	79441,
	79443,	-- Grimoire of the Blasted Observer
	79444,	-- Grimoire of the Zealous Observer
	79449,	-- Grimoire of the Plagued Observer
	79450,	-- Grimoire of the Whispering Observer
	79455,	-- Grimoire of the Xorothian Darkglare
	79456,	-- Grimoire of Eredathian Darkglare
	79457,	-- Grimoire of the Abyssal Darkglare
	79459,
	79460,
	79462,
	79464,
	79465,
	79466,
	79520,
	79573,	-- TWW Campaign Completed
	79582,
	79583,
	79622,
	79661,
	79662,
	79663,
	79693,
	79694,
	79702,
	79965,
	79992,
	79994,
	79995,
	79996,
	79997,
	80093,
	80110,
	80190,
	80199,
	80201,
	80262,
	80263,
	80264,
	80384,
	80436,
	80450,
	80544,	-- The Weaver
	80545,	-- The General
	80546,	-- The Vizier
	80592,
	81507,	-- Level 23 (Brann)
	81508,	-- Level 22 (Brann)
	81509,	-- Level 21 (Brann)
	81657,
	81676,
	81677,
	81678,
	81679,
	81680,
	81681,
	81692,	-- The Flame Within
	81696,
	81714,	-- Report to the Trading Post -- February 2025
	81715,	-- Report to the Trading Post -- January 2025
	81717,
	81718,
	81719,
	81720,
	81721,
	81722,
	81723,	-- Report to the Trading Post -- September 2024
	81724,	-- Report to the Trading Post -- October 2024
	81725,	-- Report to the Trading Post -- November 2024
	81726,	-- Report to the Trading Post -- December 2024
	81751,	-- Fire and Gemstone
	81869,	-- Can Catch More Fires with Honey
	81896,	-- New and Improved
	81993,
	81994,
	82000,
	82038,	-- Galan's Edict
	82045,	-- Titan Console
	82046,	-- Stone of The Unbound
	82047,	-- Watcher of The North
	82048,	-- Watcher of The South
	82049,	-- A Skull on a Sign
	82051,	-- Warning: Collapsed Tunnel
	82052,	-- Submerged Sign
	82053,	-- Wax-Drenched Sign
	82054,	-- Kobold Warning Sign
	82061,	-- Captain's Chest
	82063,	-- A Worn Down Book
	82064,	-- A Weathered Tome
	82065,	-- A Tattered Note
	82066,	-- A Scout's Journal
	82067,	-- Mad Nerubian
	82069,	-- Kah'teht
	82079,	-- Forgotten Shadecaster
	82082,	-- Weathered Shadecaster
	82085,	-- Neglected Shadecaster
	82195,
	82296,	-- The Power of Creation
	82335,	-- Crystals
	82342,	-- A Small Bundle of Goods
	82345,	-- A Shining Stone
	82347,	-- Assistant Councilmember
	82348,	-- A Large Bundle of Goods
	82359,	-- A Shining Bundle of Goods
	82367,	-- Earth-Encrusted Gem
	82371,	-- A Flickering Candle
	82372,	-- Deeps Unifier
	82374,	-- A Shining Candle
	82376,	-- A Large Bundle of Goods
	82379,
	82391,	-- Precious Stones
	82393,	-- Resonating Crystals
	82395,	-- Flame-touched Tabard
	82396,	-- A Gift from Mereldar
	82404,	-- Something to Set You Apart
	82417,	-- A Rare Key
	82432,	-- A Gift Handwoven
	82442,	-- Keep Up Appearances
	82676,	-- Broken Masquerade
	82689,	-- Only Darkness
	82775,	-- Quickchange Artist
	82781,	-- Attention-Getter
	82782,	-- Authenticity in Dress
	82784,	-- Resonant Performance
	82809,
	83024,	-- The Stormrider's Bond
	83025,	-- A Sacred Connection
	83134,	-- Increased Midsummer Fire Festival Special Loot Droprate (Daily Accountwide)
	83156,
	83180,
	83193,
	83235,
	83236,
	83237,
	83238,
	83239,
	83249,	-- Echoing Fragment: Hallowfall
	83251,	-- Echoing Fragment: The Ringing Deep
	83252,	-- Echoing Fragment: Isle of Dorn
	83254,	-- Echoing Fragment: Azj-Kahet
	83272,	-- Nightfarm Growthling
	83275,	-- Gear Enchanting
	83317,	-- Delve Rep Bonus (Council of Dornogal)
	83318,	-- Delve Rep Bonus (Assembly of the Deeps)
	83319,	-- Delve Rep Bonus (Severed Threads)
	83320,	-- Delve Rep Bonus (Hallowfall Arathi)
	83329,	-- Level 50 (Brann)
	83330,	-- Level 60 (Brann)
	83334,
	83438,	-- Sturdy Chest
	83439,	-- Sturdy Chest
	83440,	-- Sturdy Chest
	83441,	-- Sturdy Chest
	83451,	-- Sturdy Chest
	83452,	-- Sturdy Chest
	83453,	-- Sturdy Chest
	83454,	-- Sturdy Chest
	83455,	-- Sturdy Chest
	83456,	-- Sturdy Chest
	83492,
	83493,
	83494,
	83495,
	83496,
	83649,	-- Sturdy Chest
	83650,	-- Sturdy Chest
	83651,	-- Sturdy Chest
	83652,	-- Sturdy Chest
	83658,	-- Sturdy Chest
	83659,	-- Sturdy Chest
	83660,	-- Sturdy Chest
	83661,	-- Sturdy Chest
	83662,	-- Sturdy Chest
	83663,	-- Sturdy Chest
	83664,	-- Sturdy Chest
	83665,	-- Sturdy Chest
	83666,	-- Sturdy Chest
	83667,	-- Sturdy Chest
	83668,	-- Sturdy Chest
	83669,	-- Sturdy Chest
	83670,	-- Sturdy Chest
	83671,	-- Sturdy Chest
	83672,	-- Sturdy Chest
	83673,	-- Sturdy Chest
	83677,	-- Sturdy Chest
	83678,	-- Sturdy Chest
	83679,	-- Sturdy Chest
	83680,	-- Sturdy Chest
	83681,	-- Sturdy Chest
	83682,	-- Sturdy Chest
	83683,	-- Sturdy Chest
	83684,	-- Sturdy Chest
	83685,	-- Sturdy Chest
	83686,	-- Sturdy Chest
	83687,	-- Sturdy Chest
	83688,	-- Sturdy Chest
	83689,	-- Sturdy Chest
	83691,	-- Sturdy Chest
	83692,	-- Sturdy Chest
	83696,	-- Sturdy Chest
	83697,	-- Sturdy Chest
	83698,	-- Sturdy Chest
	83700,	-- Sturdy Chest
	83701,	-- Sturdy Chest
	83702,	-- Sturdy Chest
	83826,	-- Luminous Nerubian Catalyst Stone
	83831,	-- Completed Guest Relations intro quest finished with (84868) A Whiff of Help.
	84006,	-- Queen's Pheromone
	84020,	-- A Mech in Need
	84021,	-- Machine Without Cogs
	84023,	-- Orienting Ourselves
	84024,	-- Clutching Control
	84025,	-- Repurposed, Restored
	84087,	-- Level 26 (Brann)
	84088,	-- Level 27 (Brann)
	84089,	-- Level 28 (Brann)
	84090,	-- Level 29 (Brann)
	84091,	-- Level 30 (Brann)
	84092,	-- Level 31 (Brann)
	84093,	-- Level 32 (Brann)
	84094,	-- Level 33 (Brann)
	84095,	-- Level 34 (Brann)
	84096,	-- Level 35 (Brann)
	84097,	-- Level 36 (Brann)
	84098,	-- Level 37 (Brann)
	84099,	-- Level 38 (Brann)
	84100,	-- Level 39 (Brann)
	84101,	-- Level 40 (Brann)
	84102,	-- Level 41 (Brann)
	84103,	-- Level 42 (Brann)
	84104,	-- Level 43 (Brann)
	84105,	-- Level 44 (Brann)
	84106,	-- Level 45 (Brann)
	84107,	-- Level 46 (Brann)
	84108,	-- Level 47 (Brann)
	84109,	-- Level 48 (Brann)
	84110,	-- Level 49 (Brann)
	84111,	-- Level 52 (Brann)
	84112,	-- Level 53 (Brann)
	84113,	-- Level 54 (Brann)
	84114,	-- Level 55 (Brann)
	84115,	-- Level 56 (Brann)
	84116,	-- Level 57 (Brann)
	84117,	-- Level 58 (Brann)
	84118,	-- Level 59 (Brann)
	84119,	-- Level 60 (Brann)
	84261,	-- Ulgrax the Devourer
	84262,	-- Ulgrax the Devourer [M]
	84263,	-- The Bloodbound Horror
	84264,	-- The Bloodbound Horror [M]
	84265,	-- Sikran
	84266,	-- Sikran [M]
	84267,	-- Rasha'nan
	84268,	-- Rasha'nan [M]
	84269,	-- Nexus-Princess Ky'veza
	84270,	-- Nexus-Princess Ky'veza [M]
	84271,	-- Bloodtwister Ovi'nax
	84272,	-- Bloodtwister Ovi'nax [M]
	84273,	-- The Silken Court
	84275,	-- The Silken Court [M]
	84276,	-- Queen Ansurek
	84370,	-- The Key to Success
	84403,	-- A Small Bundle of Goods
	84404,	-- A Small Bundle of Goods
	84473,	-- Contract: Council of Dornogal 3
	84474,	-- Contract: Council of Dornogal 3
	84475,	-- Contract: Council of Dornogal 3
	84476,	-- Contract: The Severed Threads 3
	84477,	-- Contract: The Severed Threads 2
	84478,	-- Contract: The Severed Threads 1
	84479,	-- Contract: Hallowfall Arathi 1
	84480,	-- Contract: Hallowfall Arathi 2
	84481,	-- Contract: Hallowfall Arathi 3
	84482,	-- Contract: Assembly of the Deeps 3
	84483,	-- Contract: Assembly of the Deeps 2
	84484,	-- Contract: Assembly of the Deeps 1
	84490,	-- The Great Vault
	84519,	-- Ancient Curiosity: Combat
	84520,	-- Ancient Curiosity: Utility
	84542,	-- A Radiant Echo
	84562,	-- The Finer Things: #1
	84597,	-- Bronze Celebration Token (Queen Ansurek [H])
	84604,	-- Bronze Celebration Token Lockout [from #82783]
	84606,	-- Bronze Celebration Token Lockout [from #60215]
	84608,	-- Bronze Celebration Token Lockout [from #85947]
	84614,	-- Bronze Celebration Token Lockout [from #83468]
	84629,	-- Bronze Celebration Token Lockout [from #84254]
	84630,	-- Bronze Celebration Token Lockout [from #84489]
	84681,	-- Triggered after turn in questID 84682 (Of Pacts and Patrons) (spellID 463432 - [DNT] Choice Complete Credit)
	84693,	-- Weaver's Lair Profession Table flag?, shown on i(228946)
	84948,
	84951,	-- Bilgewater Cartel Weekly Contract
	84952,	-- Steamwheedle Cartel Weekly Contract
	84953,	-- Venture Co. Weekly Contract
	84954,	-- Blackwater Cartel Weekly Contract
	85463,	-- [DNT] The Cartels of Undermine Renown Unlock
	85531,	-- Earth-Encrusted Gem
	85532,	-- The Wealth of a Kingdom
	85533,	-- Kej
	85534,	-- The General's Cache
	85535,	-- Kej
	85536,	-- Resonance Crystals
	85537,	-- Crystals
	85538,	-- Shinies
	85539,	-- Take Candle!
	85540,	-- Take Big Candle!
	85541,	-- Here's a Shiny!
	85545,	-- Resonance Crystals
	85718,	-- A Shining Stone
	85757,
	85776,	-- GNZ Airmaster 9000
	85781,	-- GE86 Advance
	85782,	-- 22H Slicks
	85783,	-- Steamboil
	85784,	-- Handcrank
	85785,	-- The Ol' Low-and-Slow
	85786,	-- The Buzzer
	85787,	-- Maniacal Melodies
	85788,	-- The Whole Brass Band
	85793,	-- Contract: The Cartels of Undermine 1
	85794,	-- Contract: The Cartels of Undermine 2
	85795,	-- Contract: The Cartels of Undermine 3
	85806,	-- Exalted with the Bilgewater Cartel (Paragon)
	85807,	-- Exalted with the Blackwater Cartel (Paragon)
	85808,	-- Exalted with Darkfuse Solutions (Paragon)
	85809,	-- Exalted with the Steamwheedle Cartel (Paragon)
	85810,	-- Exalted with the Venture Co (Paragon)
	85811,	-- Thrayir, Eyes of the Siren
	85815,
	85818,
	86151,	-- Faceless Mask of the Burned Bridge
	86152,	-- Faceless Mask of the Daredevil
	86153,	-- Faceless Mask of the Dark Imagination
	86154,	-- Faceless Mask of the Pained
	86155,	-- Faceless Mask of the Long Night
	86172,	-- Love Witch's Sweeper Droprate
	86212,	-- Purchased Swabbie's Shovel
	86213,	-- Purchased Swabbie's Oar
	86218,	-- Purchased Plunderlord's Stormridden Neck-Severer
	86219,	-- Purchased Plunderlord's Stormridden Rapier
	86220,	-- Purchased Plunderlord's Stormridden Cutlass
	86221,	-- Purchased Plunderlord's Stormridden Sigil
	86225,	-- Purchased Plunderlord's Hand Cannon
	86228,	-- Purchased First Mate's Dashing Cap
	86229,	-- Purchased First Mate's Dashing Headgear
	86231,	-- Purchased Plunderlord's Stormridden Tricorne
	86232,	-- Purchased Plunderlord's Old Eye Patch
	86233,	-- Purchased Plunderlord's Old Hat
	86236,	-- Purchased Plunderlord's Stormridden Spaulders
	86241,	-- Purchased Plunderlord's Stormridden Drapery
	86244,	-- Purchased Plunderlord's Stormridden Waistcoat
	86246,	-- Purchased Plunderlord's Stormridden Cuffs
	86250,	-- Purchased Plunderlord's Stormridden Pilferers
	86252,	-- Purchased Plunderlord's Stormridden Cinch
	86256,	-- Purchased Plunderlord's Stormridden Trousers
	86260,	-- Purchased Plunderlord's Stormridden Trousers
	86328,	-- Delver's Starter Kit [TWW:S2]
	86329,	-- Delver's Cosmetic Surprise Bag [TWW:S2]
	86374,	-- Muddy Snapdragon Treat
	86375,	-- Inky Snapdragon Treat
	86376,	-- Kaja'Cola-braised Snapdragon Treat
	86377,	-- Storminfused Snapdragon Treat
	86378,	-- Royal Snapdragon Treat
	86379,	-- Crimson Snapdragon Treat
	86380,	-- Sandy Snapdragon Treat
	86461,	-- Ancient Curiosity: Combat
	86462,	-- Ancient Curiosity: Utility
	86468,	-- Triggered with Members Only (89016)
	86471,	-- Arsenal: Hallowfall Weaponry
	86472,	-- Ensemble: Myconic Shell
	86473,	-- Ensemble: Aegis of Hidden Stars
	86474,	-- Ensemble: Chains of the Stygian Sea
	86475,	-- Ensemble: Unkindled Waxweave Panoply
	86482,	-- A Lifeline
	86483,	-- Snap To It
	86484,	-- Temper Like A Tempest
	86485,	-- A Loyal Friend
	86486,	-- Hungry, Hungry Snapdragon
	86491,	-- Dastardly Duos! It's on!
	86503,	-- Who are the Dastardly Duos?
	86504,	-- Ensemble: Paradise Beach Loungewear
	86505,	-- Ensemble: Southsea Cruise Loungewear
	86506,	-- Ensemble: Salvage Rig Garments
	86507,	-- Ensemble: Rusty Bruiser's Outfit
	86508,	-- Ensemble: Sun-Soaked Clothing
	86555,
	86567,	-- A Threatening Letter
	86568,	-- Misplaced Work Order
	86569,	-- Extractor Drill X-78 Safety Guide
	86570,	-- Rocket Drill Safety Manual
	86571,	-- Second Half of Noggenfogger's Journal
	86572,	-- First Half of Noggenfogger's Journal
	86573,	-- Gallywix's Notes
	86596,	-- Steamwheedle's Trove (Exalted)
	86597,	-- Blackwater's Trove (Exalted)
	86598,	-- Bilgewater's Trove (Honored)
	86599,	-- Venture Co.'s Trove (Exalted)
	86630,	-- Crumpled Schematic: Wormhole Generator: Undermine
	86706,	-- Seeking Knowledge of the Past
	86748,	-- Bilgewater's Trove (Revered)
	86749,	-- Bilgewater's Trove (Exalted)
	86750,	-- Blackwater's Trove (Honored)
	86751,	-- Blackwater's Trove (Revered)
	86753,	-- Steamwheedle's Trove (Honored)
	86754,	-- Steamwheedle's Trove (Revered)
	86755,	-- Venture Co.'s Trove (Honored)
	86756,	-- Venture Co.'s Trove (Revered)
	86771,	-- Paint: Body Roll Blue
	86772,	-- Paint: Goblin Green
	86773,	-- Paint: Redlining Red
	86774,	-- Paint: Yellow Cake Yellow
	86787,	-- Sturdy Chest
	86788,	-- Sturdy Chest
	86789,	-- Sturdy Chest
	86790,	-- Sturdy Chest
	86801,	-- Faceless Mask of Multitudes
	86878,	-- Nightfall Sanctum Campsite
	86931,	-- triggered after turn in of any of the pact weeklies?
	86961,	-- Diversified Investments
	86974,	-- Level 61 (Brann)
	86975,	-- Level 62 (Brann)
	86976,	-- Level 63 (Brann)
	86977,	-- Level 64 (Brann)
	86978,	-- Level 65 (Brann)
	86979,	-- Level 66 (Brann)
	86980,	-- Level 67 (Brann)
	86981,	-- Level 68 (Brann)
	86982,	-- Level 69 (Brann)
	86983,	-- Level 70 (Brann)
	86984,	-- Level 71 (Brann)
	86985,	-- Level 72 (Brann)
	86986,	-- Level 73 (Brann)
	86987,	-- Level 74 (Brann)
	86988,	-- Level 75 (Brann)
	86989,	-- Level 76 (Brann)
	86990,	-- Level 77 (Brann)
	86991,	-- Level 78 (Brann)
	86992,	-- Level 79 (Brann)
	86993,	-- Level 80 (Brann)
	87284,	-- A Radiant Echo
	87328,	-- Truly Horrific to Behold
	87329,	-- Into the Darkest Memories
	87332,	-- A Collection of Variables
	87335,	-- Echoing Lessons
	87336,	-- Remembering Again and Again
	87352,	-- First weekly Reshanor account kill for warbound loot
	87353,	-- Gallagio Highroller's Boomstone
	87374,	-- C.H.E.T.T.ing In
	87445,	-- Smartest in Town's Attire
	87496,	-- Benefit Packages
	88652,	-- Faceless Mask of the Nemesis
	88803,	-- Timely Assistance
	88870,	-- Honored with the Bilgewater Cartel
	88871,	-- Revered with the Bilgewater Cartel
	88872,	-- Exalted with the Bilgewater Cartel
	88873,	-- Honored with the Steamwheedle Cartel
	88874,	-- Revered with the Steamwheedle Cartel
	88875,	-- Exalted with the Steamwheedle Cartel
	88876,	-- Honored with the Blackwater Cartel
	88877,	-- Revered with the Blackwater Cartel
	88878,	-- Exalted with the Blackwater Cartel
	88879,	-- Honored with the Venture Co
	88880,	-- Revered with the Venture Co
	88881,	-- Exalted with the Venture Co
	88903,	-- Faceless Mask of Vengeance
	89016,	-- Members Only
	89017,	-- Triggered with Members Only (89016)
	89018,	-- Loyal Customer: Silver
	89019,	-- Loyal Customer: Gold
	89020,	-- Loyal Customer: Platinum
	89021,	-- Loyal Customer: Black
	89022,	-- Loyal Customer: Diamond
	89023,	-- Loyal Customer: GOLDEN LEGENDARY!!!
	89024,	-- Time is Money!
	89025,	-- Time is Money!!
	89026,	-- Time is Money!!!
	89027,	-- Fast Food
	89250,	-- Burning Rubber
	89251,	-- Running Hot!
	89252,	-- Need a Jump?
	89331,	-- Flame Fortification
	89332,	-- Boot Camp
	89343,	-- The Untethered Void
	89344,	-- What Doesn't See You
	89345,	-- The Untethered Horror
	89349,	-- Flame's Radiance Stipend
	89380,	-- Another World
	89390,	-- Flame's Radiance Stipend
	89391,	-- Flame's Radiance Stipend
	89392,	-- Flame's Radiance Stipend
	89393,	-- Flame's Radiance Stipend
	89394,	-- Flame's Radiance Stipend
	89395,	-- Flame's Radiance Stipend
	89396,	-- Flame's Radiance Stipend
	89397,	-- Flame's Radiance Stipend
	89401,	-- First weekly Gobfather account kill for warbound loot
	89561,	-- Wrapped Up
	90105,
	90122,	-- Eliminate Xy'vox the Twisted
	90125,	-- Eliminate Purple Peat
	90126,	-- Eliminate Grubber
	90459,	-- Podium Upgrade: Scrappiest
	90460,	-- Podium Upgrade: Longest Survival Run
	90461,	-- Podium Upgrade: Longest Time in Spotlights
	90462,	-- Podium Upgrade: Most Yards Traveled
	90463,	-- Podium Upgrade: Scrappy
	90464,	-- Podium Upgrade: Survival Run
	90465,	-- Podium Upgrade: Time in Spotlights
	90466,	-- Podium Upgrade: Yards Traveled
	90597,	-- Arsenal: Children's Stormwind Guard Weapon Set
	90598,	-- Arsenal: Children's Orgrimmar Guard Weapon Set
	90630,	-- A Small Bundle of Crystals
	90634,	-- A Small Bundle of Crystals
	90638,	-- A Bundle of Crystals
	90666,	-- A Bundle of Crystals
	90672,	-- Weekly reputation: Xarran the Binder
	90673,	-- Weekly reputation: Sha'ryth the Cursed
	90674,	-- Weekly reputation: Shadowhowl
	90675,	-- Weekly reputation: Korgorath the Ravager
	90676,	-- Weekly reputation: "Chowdar"
	90677,	-- Weekly reputation: Morgil the Netherspawn
	90678,	-- Weekly reputation: The Nightreaver
	90679,	-- Weekly reputation: Prototype Mk-V
	90680,	-- Weekly reputation: Revenant of the Wasteland
	90681,	-- Weekly reputation: Stalker of the Wastes
	90682,	-- Weekly reputation: Urmag
	90683,	-- Weekly reputation: Maw of the Sands
	90684,	-- Weekly reputation: Orith the Dreadful
	90685,	-- Weekly reputation: Ixthar the Unblinking
	90693,	-- Weekly reputation: Purple Peat
	90695,	-- Weekly reputation: Xy'vox the Twisted
	90697,	-- Weekly reputation: "Arcana-Monger So'zer"
	90699,	-- Weekly reputation: Grubber
	90701,	-- Cowardly Cheery Bombs
	90719,	-- Borrowing Corruption
	90731,	-- Enhancing Corruption
	90775,
	90776,	-- Ancient Curiosity: Combat
	90778,	-- Ancient Curiosity: Utility
	90783,
	90815,	-- ??
	90816,
	90839,	-- Sturdy Chest
	90903,	-- Contract: The K'aresh Trust [R1]
	90904,	-- Contract: The K'aresh Trust [R2]
	90905,	-- Contract: The K'aresh Trust [R3]
	90945,
	90946,
	90947,	-- Miniature Titan Disc: Critical Chain
	90948,	-- Miniature Titan Disc: Spark Burst
	90949,	-- Miniature Titan Disc: Statically Charged
	90950,	-- Miniature Titan Disc: Electric Current
	90951,	-- Miniature Titan Disc: Charged Touch
	90952,
	90953,	-- Miniature Titan Disc: Charged Crystal
	90969,	-- Titan Consoles
	90970,	-- Titan Disc-Count
	90971,	-- Overcharged Console
	91029,	-- ??
	91038,	-- Hellhunters Wanted
	91079,	-- Hellcaller chest tracker
	91080,	-- Hellcaller chest tracker
	91081,	-- Hellcaller chest tracker
	91082,	-- Hellcaller chest tracker
	91083,	-- Hellcaller chest tracker
	91142,	-- A Tabard for the Trusted
	91154,	-- Dissenter Tailtrek
	91166,	-- Hellcaller chest tracker
	91167,	-- Hellcaller chest tracker
	91168,	-- Hellcaller chest tracker
	91169,	-- Hellcaller chest tracker
	91170,	-- Hellcaller chest tracker
	91309,	-- Korgoth the Hungerer
	91310,	-- Miasmawrath
	91311,	-- The Harvester
	91312,	-- The Wallbreaker
	91413,	-- A Twilight Oath's End
	91421,	-- Weekly reputation: Malek'ta
	91422,	-- Weekly reputation: Heka'tamos
	91431,	-- Weekly reputation: Sthaarbs
	91433,	-- Weekly reputation: Korgoth the Hunger
	91434,	-- Weekly reputation: Miasmawrath
	91435,	-- Weekly reputation: The Harvester
	91436,	-- Weekly reputation: The Wallbreaker
	91459,	-- Manaforge Omega: A Walking Shadow [N]
	91460,	-- Manaforge Omega: A Walking Shadow [H]
	91461,	-- Manaforge Omega: A Walking Shadow [M]
	91476,	-- Behind Enemy Lines
	91477,	-- Behind Enemy Lines II
	91478,	-- Behind Enemy Lines III
	91479,	-- Behind Enemy Lines IV
	91480,	-- Behind Enemy Lines V
	91481,	-- Speed Siphoner
	91482,	-- Speed Siphoner II
	91483,	-- Hacking the Mainframe
	91484,	-- Hacking the Forgeweaver
	91485,	-- Hacking the Planet
	91486,	-- Attuned to the Aether
	91487,	-- Welcome to the Team
	91489,	-- A Curious Companion
	91521,	-- K'areshi Voidstone
	91525,	-- Head Hunting: Loom'ithar
	91526,	-- Head Hunting: Forgeweaver Araz
	91527,	-- Head Hunting: The Soul Hunters
	91528,	-- Head Hunting: Horrors of the Forge
	91529,	-- Head Hunting: Nexus-King Salhadaar
	91530,	-- Seeing Eye to Eye
	91539,	-- A Radiant Echo
	91640,	-- A Dog-eared Book
	91642,	-- Mysterious Notebook
	91643,	-- Multiversal Energy Dynamics and the Murmuration Paradox
	91645,	-- Ba'key's Aromatic Broker Cookies Recipe
	91646,	-- From Vengeance to Void
	91647,	-- The Facets of K'aresh
	91648,	-- Coins: An Oath We Exchange
	91649,	-- I Have Become Void!
	91686,	-- Geologist Field Journal
	91687,	-- Checklist of Minor Pleasures
	91783,	-- Delver's Cosmetic Surprise Bag [TWW:S3]
	91784,	-- Delver's Starter Kit [TWW:S3]
	91812,	--
	91863,	-- My First Home
	91894,	-- Has rolled for Coren Special Loot (Daily Accountwide)(TWW Version)
	91939,	-- Ensemble: Hollow Sentinel's Wingdrapes
	91940,	-- Ensemble: Plumes of the Mother Eagle
	91941,	-- Ensemble: Vicious Charhound's Felcovers
	91942,	-- Ensemble: Spellweaver's Immaculate Runecloaks
	91943,	-- Ensemble: Midnight Herald's Shrouds
	91944,	-- Ensemble: Augur's Ephemeral Brilliance
	91945,	-- Ensemble: Breeze of Fallen Storms
	91946,	-- Ensemble: Gilded Cloaks of the Lucent Battalion
	91947,	-- Ensemble: Memories of a Dying Star
	91948,	-- Ensemble: Capes of the Sudden Eclipse
	91950,	-- Ensemble: Inquisitor's All-Seeing Madness
	91951,	-- Ensemble: Shawls of Channeled Fury / Ensemble: Living Weapon's Capes
	91968,	-- Welcome Home
	91969,	-- Time to Decorate
	92031,	-- Meet the Vandals
	92071,	-- Deal: Cartel Zo
	92072,	-- Deal: Cartel Ba
	92073,	-- Deal: Cartel Om
	92078,	-- A New Recipe!
	92402,	-- Magical Touch
	92417,	-- Farm to Table
	92429,	-- Alternative Skinning
	92437,	-- Decor Treasure Hunt
	92443,	-- Reverse Herb Farming
	92445,	-- Smelting for Two
	92487,	-- Open the first Wriggling Pinnacle Cache
	92488,	-- Weekly lockout: 600 bonus crystals from The Flame Burns Eternal
	92573,	-- Sturdy Chest
	92577,	-- Furniture Favor
	92578,	-- Draconic Decor
	92588,	-- Fallen King's Corrupted Blades
	92626,	-- ??
	92628,	-- ??
	92680,	-- Ensemble: World-Defiler's Battle Armor
	92681,	-- Ensemble: Zealous Felslingers Battle Armor
	92733,	-- Triggered after entering house
	92861,	-- Ensemble: Eredath Lightseeker's Regalia
	92862,	-- Ensemble: Forgotten Conservatory Clothes
	92863,	-- Ensemble: Triumvirate High Guard's Battlegear
	92889,	-- Arsenal: Odyn's Spears
	92961,	-- Decor Treasure Hunt
	92962,	-- Decor Treasure Hunt
	92963,	-- Decor Treasure Hunt
	92964,	-- Decor Treasure Hunt
	92965,	-- Decor Treasure Hunt
	92966,	-- Decor Treasure Hunt
	92967,	-- Decor Treasure Hunt
	92968,	-- Decor Treasure Hunt
	92969,	-- Decor Treasure Hunt
	92970,	-- Decor Treasure Hunt
	92971,	-- Decor Treasure Hunt
	92972,	-- Decor Treasure Hunt
	92973,	-- Decor Treasure Hunt
	92974,	-- Decor Treasure Hunt
	92975,	-- Decor Treasure Hunt
	92976,	-- Decor Treasure Hunt
	92977,	-- Decor Treasure Hunt
	92978,	-- Decor Treasure Hunt
	92979,	-- Decor Treasure Hunt
	92980,	-- Decor Treasure Hunt
	92981,	-- Decor Treasure Hunt
	92982,	-- Decor Treasure Hunt
	92983,	-- Decor Treasure Hunt
	92984,	-- Decor Treasure Hunt
	92985,	-- Decor Treasure Hunt
	92986,	-- Decor Treasure Hunt
	92987,	-- Decor Treasure Hunt
	92988,	-- Decor Treasure Hunt
	92989,	-- Decor Treasure Hunt
	92990,	-- Decor Treasure Hunt
	92991,	-- Decor Treasure Hunt
	92992,	-- Decor Treasure Hunt
	92993,	-- Decor Treasure Hunt
	92994,	-- Decor Treasure Hunt
	92995,	-- Decor Treasure Hunt
	92996,	-- Decor Treasure Hunt
	92997,	-- Decor Treasure Hunt
	92998,	-- Decor Treasure Hunt
	92999,	-- Decor Treasure Hunt
	93000,	-- Decor Treasure Hunt
	93001,	-- Decor Treasure Hunt
	93002,	-- Decor Treasure Hunt
	93003,	-- Decor Treasure Hunt
	93004,	-- Decor Treasure Hunt
	93005,	-- Decor Treasure Hunt
	93006,	-- Decor Treasure Hunt
	93007,	-- Decor Treasure Hunt
	93008,	-- Decor Treasure Hunt
	93009,	-- Decor Treasure Hunt
	93033,	-- Triggers when you spawn in Bazaar for the first time [Remix: Legion]
	93057,	-- A House For You
	93073,	-- Decor Treasure Hunt
	93074,	-- Decor Treasure Hunt
	93075,	-- Decor Treasure Hunt
	93077,	-- Decor Treasure Hunt
	93078,	-- Decor Treasure Hunt
	93079,	-- Decor Treasure Hunt
	93080,	-- Decor Treasure Hunt
	93081,	-- Decor Treasure Hunt
	93082,	-- Decor Treasure Hunt
	93083,	-- Decor Treasure Hunt
	93084,	-- Decor Treasure Hunt
	93085,	-- Decor Treasure Hunt
	93087,	-- Decor Treasure Hunt
	93088,	-- Decor Treasure Hunt
	93091,	-- Decor Treasure Hunt
	93097,	-- Decor Treasure Hunt
	93098,	-- Decor Treasure Hunt
	93099,	-- Decor Treasure Hunt
	93100,	-- Decor Treasure Hunt
	93101,	-- Decor Treasure Hunt
	93102,	-- Decor Treasure Hunt
	93103,	-- Decor Treasure Hunt
	93104,	-- Decor Treasure Hunt
	93105,	-- Decor Treasure Hunt
	93106,	-- Decor Treasure Hunt
	93107,	-- Decor Treasure Hunt
	93108,	-- Decor Treasure Hunt
	93109,	-- Decor Treasure Hunt
	93110,	-- Decor Treasure Hunt
	93111,	-- Decor Treasure Hunt
	93115,	-- Decor Treasure Hunt
	93131,	-- Decor Treasure Hunt
	93132,	-- Decor Treasure Hunt
	93133,	-- Decor Treasure Hunt
	93134,	-- Decor Treasure Hunt
	93135,	-- Decor Treasure Hunt
	93136,	-- Decor Treasure Hunt
	93137,	-- Decor Treasure Hunt
	93138,	-- Decor Treasure Hunt
	93139,	-- Decor Treasure Hunt
	93140,	-- Decor Treasure Hunt
	93141,	-- Decor Treasure Hunt
	93142,	-- Decor Treasure Hunt
	93143,	-- Decor Treasure Hunt
	93147,	-- Decor Treasure Hunt
	93148,	-- Decor Treasure Hunt
	93149,	-- Decor Treasure Hunt
	93150,	-- Decor Treasure Hunt
	93151,	-- Decor Treasure Hunt
	93152,	-- Decor Treasure Hunt
	94210,	-- Feathering the Nest
	94379,	-- This Old Hearth
	94415,	-- Plumbing the Void
	94416,	-- Rehoming Technology
	94455,	-- Home at Last
	95166,	-- Pet the Dog (245551)
	-- #ENDIF
}


local keyedQuests = {}
for _,questID in ipairs(AccountWideQuestsDB) do
	keyedQuests[questID] = true
end
ExportDB.AccountWideQuestsDB = keyedQuests
