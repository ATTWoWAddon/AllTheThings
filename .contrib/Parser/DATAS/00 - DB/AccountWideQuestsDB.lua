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

	-- #IF AFTER MID
	------------------------------------------------------------------------------
	-- PUT NEW QUESTIDS HERE vv IF YOU DONT WANT TO CHECK WHERE YOU ARE PUTTING IT
	------------------------------------------------------------------------------

	------------------------------------------------------------------------------
	-- PUT NEW QUESTIDS HERE ^^ IF YOU DONT WANT TO CHECK WHERE YOU ARE PUTTING IT
	------------------------------------------------------------------------------
	-- #ENDIF

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
	44184,	-- In the Blink of an Eye
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
	50098,	-- Steps 1-4: A New Friend
	50099,	-- 2. /whistle at Uuna
	50100,	-- 3. /roar at Uuna
	50101,	-- 4. /cry at Uuna
	50102,	-- Step 5: Bright Lights
	50103,	-- Step 6: Wanna be Friends?
	50104,	-- Step 7: Finding Nuu
	50105,	-- Step 8: Shooting Stars
	50106,	-- Step 9: Flower Crown
	50107,	-- Step 10: Uuna Gets Kidnapped
	50108,	-- Step 11: Spirit Healer
	50109,	-- Step 12: A Dark Place
	50140,	-- Step 1: Gate of the Setting Sun
	50141,	-- Step 2: Nighthold
	50142,	-- Step 3: Krasus Landing, Legion Dalaran
	50143,	-- Step 4: Dragonblight
	50144,	-- Step 5: Mount Hyjal
	50145,	-- Step 6: Kun-Lai Summit
	50146,	-- Step 7: Blackrock Mountain
	50147,	-- Step 8: Temple of Karabor
	51994,	-- Quest #51994*
	52969,	-- Quest #52969*
	53121,	-- Siege of Boralus
	53123,	-- Quest #53123*
	53124,	-- Quest #53124*
	53131,	-- Kings' Rest
	53206,	-- Quest #53206*
	53220,	-- Quest #53220*
	53739,	-- The Wolf's Den
	53740,	-- Stonefist Watch
	53741,	-- Windfall Cavern
	53742,	-- Stonetusk Watch
	53743,	-- Hillcrest Pasture
	53744,	-- Swiftwind Post
	53745,	-- Mudfisher Cove
	53746,	-- Verdant Hollow
	53747,	-- Veiled Grotto
	53748,	-- Mugamba Overlook
	53749,	-- Mistvine Ledge
	53750,	-- Vulture's Nest
	53751,	-- Grimwatt's Crash
	53956,	-- Quest #53956*
	54184,	-- Trouble in Gnomeregan
	54185,	-- Gnomeregan's New Guardians
	54186,	-- Pet Battle Challenge: Gnomeregan
	54264,	-- Shattered Pet Portal
	54276,	-- Trouble in Gnomeregan
	54410,	-- Quest #54410*
	56042,	-- Blingtron 7000
	56205,	-- Just Ptrust Me On This
	56489,	-- Restless Dead
	56490,	-- Restless Dead
	56491,	-- Tiny Terrors of Stratholme
	56492,	-- Pet Battle Challenge: Stratholme
	56571,	-- Quest #56571*
	56624,	-- Izira Gearsworn
	56625,	-- Bondo Bigblock
	56626,	-- Wrenchbot
	56627,	-- Roadtrogg
	56628,	-- Overspark
	56629,	-- Gazlowe
	56630,	-- HK-8
	56631,	-- King Mechagon
	56632,	-- Prince Erazmin
	56633,	-- Cork Stuttguard
	56634,	-- Naeno Megacrash
	56635,	-- Cogstar
	56652,	-- Blastatron
	56729,	-- Sapphronetta
	57096,	-- Quest #57096*
	57559,	-- Quest #57559*
	58455,	-- Shadowy Showdown
	58456,	-- Shadowy Showdown
	58457,	-- Shadows of Blackrock
	58458,	-- Pet Battle Challenge: Blackrock Depths
	58927,	-- Illusion: Void Edge
	59072,	-- Quest #59072*
	59087,	-- That Darn Fox!
	59120,	-- Renny the Vulpin
	60490,	-- Quest #60490*
	60511,	-- Quest #60511*
	61160,	-- Gargon Training Manual
	61225,	-- Anima Crystal Shard
	61235,	-- Anima Crystal Shard
	61236,	-- Anima Crystal Shard
	61237,	-- Anima Crystal Shard
	61238,	-- Anima Crystal Shard
	61239,	-- Anima Crystal Shard
	61241,	-- Anima Crystal Shard
	61244,	-- Anima Crystal Shard
	61245,	-- Anima Crystal Shard
	61247,	-- Anima Crystal Shard
	61249,	-- Anima Crystal Shard
	61250,	-- Anima Crystal Shard
	61251,	-- Anima Crystal Shard
	61253,	-- Anima Crystal Shard
	61254,	-- Anima Crystal Shard
	61257,	-- Anima Crystal Shard
	61258,	-- Anima Crystal Shard
	61260,	-- Anima Crystal Shard
	61261,	-- Anima Crystal Shard
	61263,	-- Anima Crystal Shard
	61264,	-- Anima Crystal Shard
	61270,	-- Anima Crystal Shard
	61271,	-- Anima Crystal Shard
	61273,	-- Anima Crystal Shard
	61274,	-- Anima Crystal Shard
	61275,	-- Anima Crystal Shard
	61277,	-- Anima Crystal Shard
	61278,	-- Anima Crystal Shard
	61279,	-- Anima Crystal Shard
	61280,	-- Anima Crystal Shard
	61281,	-- Anima Crystal Shard
	61282,	-- Anima Crystal Shard
	61283,	-- Anima Crystal Shard
	61284,	-- Anima Crystal Shard
	61285,	-- Anima Crystal Shard
	61286,	-- Anima Crystal Shard
	61287,	-- Anima Crystal Shard
	61288,	-- Anima Crystal Shard
	61289,	-- Anima Crystal Shard
	61290,	-- Anima Crystal Shard
	61291,	-- Anima Crystal Shard
	61292,	-- Anima Crystal Shard
	61293,	-- Anima Crystal Shard
	61294,	-- Anima Crystal Shard
	61295,	-- Anima Crystal Shard
	61296,	-- Anima Crystal Shard
	61297,	-- Anima Crystal Shard
	61298,	-- Anima Crystal Shard
	61299,	-- Anima Crystal Shard
	61300,	-- Anima Crystal Shard
	61727,	-- Illusion: Sinsedge
	62254,	-- How to School Your Serpent
	62255,	-- Simple Tome of Bone-Binding
	62395,	-- Illusion: Transcendent Soul
	62396,	-- Illusion: Unbreakable Resolve
	62397,	-- Illusion: Wild Soul
	62398,	-- Illusion: Sinwrath
	62602,	-- Giant Cache of Epic Treasure
	62655,	-- Quest #62655*
	62708,	-- Quest #62708*
	62709,	-- Quest #62709*
	62710,	-- Quest #62710*
	62711,	-- Quest #62711*
	62745,	-- Quest #62745*
	62749,	-- Quest #62749*
	62964,	-- Illusion: Undying Spirit
	62965,	-- Illusion: Hunt's Favor
	62977,	-- Quest #62977*
	62978,	-- Quest #62978*
	62979,	-- Quest #62979*
	62980,	-- Quest #62980*
	63004,	-- Illusion: Devoted Spirit
	63435,	-- Temple Throwdown
	63611,	-- Runed Chest
	63641,	-- Rune Codex Page: Forging
	63642,	-- Rune Codex Page: Souls
	63643,	-- Rune Codex Page: Binding
	63666,	-- Stray Soul
	63667,	-- Soulforger's Tools
	63668,	-- Intact Rune Codex
	63684,	-- Feral Shadehound
	63685,	-- Cryptkeeper Kassir's Best Friend
	63686,	-- Baroness Vashj's Best Friend
	63687,	-- Lady Moonberry's Best Friend
	63688,	-- Mikanikos's Best Friend
	63689,	-- The Countess's Best Friend
	63690,	-- Alexandros Mograine's Best Friend
	63691,	-- Hunt-Captain Korayn's Best Friend
	63692,	-- Polemarch Adrestes's Best Friend
	63693,	-- Rendle and Cudgelface's Best Friend
	63694,	-- Choofa's Best Friend
	63695,	-- Droman Aliothe's Best Friend
	63696,	-- Grandmaster Vole's Best Friend
	63697,	-- Kleia and Pelagos's Best Friend
	63698,	-- Plague Deviser Marileth's Best Friend
	63699,	-- Sika's Best Friend
	63700,	-- Stonehead's Best Friend
	63707,	-- Soulsteel Anvil
	63893,	-- Memories of Sunless Skies
	64202,	-- Gotta Hand It To Ya
	64262,	-- Quest #64262*
	64292,	-- Maelie, The Wanderer
	64339,	-- Research Report: All-Seeing Crystal
	64348,	-- Research Report: Ancient Shrines
	64628,	-- Rockin' Rollin' Racer Pack
	64655,	-- Quest #64655*
	64764,	-- Quest #64764*
	64983,	-- Quest #64983*
	65298,	-- Quest #65298*
	65539,	-- Zereth Mortis Flying
	65716,	-- Ensemble: Barkbinds of the Archdruid's Nightmare
	66858,	-- Tour the Trading Post
	66959,	-- Tour the Trading Post
	67030,	-- Quest #67030*
	67139,	-- Quest #67139*
	69996,	-- Expedition Supply Kit
	70315,	-- Ensemble: Renowned Expeditioner's Cloth Armor
	70316,	-- Ensemble: Renowned Expeditioner's Leather Armor
	70317,	-- Ensemble: Renowned Expeditioner's Mail Armor
	70318,	-- Ensemble: Renowned Expeditioner's Plate Armor
	70335,	-- Simple Excavation Tools
	70541,	-- Hunting Tactics: Companion
	70550,	-- Welcome to the Assembly
	70609,	-- Elegant Canvas Brush
	70647,	-- Oh Where, Oh Where Can He Be?
	70697,	-- An Expert Opinion
	70702,	-- Continued Waygate Exploration
	70722,	-- What Lubbins Needs
	70732,	-- A Practice Bout
	70755,	-- Ensemble: Crimson Valdrakken Clothing
	70756,	-- Ensemble: Black Valdrakken Clothing
	70757,	-- Ensemble: Azure Valdrakken Clothing
	70758,	-- Ensemble: Bronze Valdrakken Clothing
	70759,	-- Ensemble: Green Valdrakken Clothing
	70793,	-- Iskaaran Fishing Net
	70807,	-- Advanced Excavation Tools
	70808,	-- Initial Mysteries of the Dragon Isles Drakes
	70809,	-- Deeper Mysteries of the Dragon Isles Drakes
	70810,	-- Broader Mysteries of the Dragon Isles Drakes
	70812,	-- Expedition Cloaks
	70813,	-- Digging Up Treasure
	70814,	-- Unlocking Magical Treasures
	70815,	-- Demolitions Access
	70817,	-- New Dragonscale Equipment
	70818,	-- New Dragonscale Equipment
	70819,	-- Renowned Explorer's Armor
	70820,	-- The Basecamp 'Pets'
	70821,	-- Skitterfly Riding
	70822,	-- Lost Expedition Scouts
	70828,	-- Wayfinder's Compass
	70831,	-- Researching in Comfort
	70832,	-- One of Us Now
	70833,	-- Rumors of the Jeweled Whelplings
	70839,	-- The Search for Titan Relics
	70849,	-- This Calls for a Specialist
	70851,	-- Born to Be Wilder
	70853,	-- A Friend for Lubbins
	70854,	-- So How Did It Go?
	70880,	-- To Cook With Finery
	70882,	-- Renown Supplies
	70883,	-- A Hand in Cultivation
	70885,	-- Renown Supplies
	70887,	-- Feeling Freedom
	70888,	-- Rubbing Shoulders With The Best
	70891,	-- Fitting In
	70895,	-- Soaring in Style
	70896,	-- Waist Not, Want Not
	70897,	-- A Coming of Age
	70901,	-- A Collection of Creatures
	70903,	-- Wielding Titanic Might
	70904,	-- Variety is the Spice of Life
	70905,	-- Flying with Our Colors
	70910,	-- Mysteries in Paper and Glass
	70911,	-- Armored and Ready
	70912,	-- The Accord's High Standards
	70913,	-- To Bear Our Mantle
	70914,	-- The Breadth of Dragon Weaponry
	70915,	-- Crowning Achievement
	70936,	-- Stolen Tuskarr Totems
	70938,	-- Community Feasts
	70939,	-- Cooking Utensils
	70940,	-- Tuskarr Champion's Tales
	70941,	-- Fishing Holes
	70942,	-- Highland Fishing
	70943,	-- Harpooning
	70944,	-- Ice Fishing
	70945,	-- Netting More
	70948,	-- Hook, Line, and Swelter!
	70950,	-- Skewering Even Bigger Fish
	70952,	-- Abandoned... or Hidden Caches
	70953,	-- Tuskarr Headwear
	70954,	-- Mounting Curiosity
	70955,	-- Fascinating Fliers
	70956,	-- Of Azure Scales
	70959,	-- Cute and Cuddly
	70960,	-- Trader's Apparel
	70961,	-- Shouldering the Needed Armor
	70962,	-- A Comfy Seat
	70963,	-- Wrist Support
	70964,	-- Shrug it On!
	70966,	-- Trading Made Easier
	70967,	-- Fishy Entertainment
	70968,	-- Of the Cloth, of the Community
	70971,	-- Arms for Every Arm
	70972,	-- Our Loyal, Lanky Steeds
	70976,	-- Slacking and Sledding
	70977,	-- Scaps Packs
	70978,	-- Dragon Isles Champion's Tales
	71028,	-- Hunting Tactics: Blessing of Ohn'ahra
	71029,	-- Hunting Tactics: Companion Training
	71030,	-- Hunting Tactics: Shikaar Mentorship
	71031,	-- Hunting Tactics: Proof of Prowess
	71032,	-- Hunting Tactics: Apex Hunter
	71044,	-- Bakar Companion Color: Black
	71045,	-- Bakar Companion Color: Brown
	71046,	-- Bakar Companion Color: Orange
	71047,	-- Bakar Companion Color: White
	71048,	-- Bakar Companion Color: Golden Brown
	71049,	-- Ohuna Companion Color: Dark
	71050,	-- Ohuna Companion Color: Brown
	71051,	-- Ohuna Companion Color: Red
	71052,	-- Ohuna Companion Color: Sepia
	71058,	-- Observing the Wind
	71060,	-- To Adorn Your Head
	71066,	-- A Useful Curiosity
	71067,	-- Whistling Rocks
	71073,	-- Mantle of Friendship
	71074,	-- Befriending Wings and Wind
	71075,	-- Understanding Their Grace
	71079,	-- Getting to the Point
	71083,	-- An Expected Unexpected Gift
	71085,	-- Representation Matters
	71089,	-- Get on the Horn
	71090,	-- From the Heart, For the Heart
	71146,	-- Continued Waygate Exploration
	71148,	-- Continued Waygate Exploration
	71149,	-- Continued Waygate Exploration
	71150,	-- Continued Waygate Exploration
	71151,	-- Continued Waygate Exploration
	71161,	-- Waygate: Vakthros
	71184,	-- Quest #71184*
	71210,	-- To Dragonbane Keep!
	71227,	-- Aerial Challenges
	71229,	-- Call of the Plains
	71231,	-- Call of the Hunt
	72038,	-- Dragon Isles Supplies
	72048,	-- Dragon Isles Supplies
	72064,	-- Quest #72064*
	72094,	-- How to Train a Dragonkin
	72113,	-- Shapes Beyond the Veil
	72117,	-- Cultural Exchange
	72137,	-- Hatchling Plans
	72248,	-- Gleaming Incarnate Thunderstone
	72328,	-- Our Ferocious, Armored Steeds
	72363,	-- Good at Doings, Not Understandings
	72392,	-- Dragon Isles Supplies
	72400,	-- Quest #72400*
	72516,	-- Tracking Quest [DNT]
	72596,	-- Quest #72596*
	72681,	-- Report to the Trading Post
	72688,	-- Renown Supplies
	72690,	-- Renown Supplies
	72693,	-- Renown Supplies
	72744,	-- Quest #72744*
	72776,	-- Quest #72776*
	72777,	-- Quest #72777*
	72781,	-- Quest #72781*
	72782,	-- Quest #72782*
	72892,	-- Quest #72892*
	73101,	-- Gain Maiev Toy
	73102,	-- Quest #73102*
	73103,	-- Quest #73103*
	73104,	-- Gain Sneed Toy
	73105,	-- Quest #73105*
	73106,	-- Quest #73106*
	73171,	-- Gain New Look: Maiev
	73173,	-- Gain Even Newer Look: Maiev
	73174,	-- Gain New Look: Sneed
	73175,	-- Gain Even Newer Look: Sneed
	73180,	-- Rumble Coin Bag
	73182,	-- Rumble Coin Bag
	73368,	-- Gain Huntress Toy
	73369,	-- Quest #73369*
	73370,	-- Quest #73370*
	73371,	-- Gain New Look: Night Elf Huntress
	73372,	-- Gain Even Newer Look: Night Elf Huntress
	73373,	-- Gain Tauren Toy
	73374,	-- Quest #73374*
	73375,	-- Quest #73375*
	73376,	-- Gain Ghoul Toy
	73377,	-- Quest #73377*
	73378,	-- Quest #73378*
	73379,	-- Gain Murloc Toy
	73380,	-- Quest #73380*
	73381,	-- Quest #73381*
	73382,	-- Gain Whelp Egg Toy
	73383,	-- Quest #73383*
	73384,	-- Quest #73384*
	73386,	-- Gain New Look: Stonehoof Tauren
	73387,	-- Gain Even Newer Look: Stonehoof Tauren
	73388,	-- Gain New Look: Undead Ghoul
	73389,	-- Gain New Look: Murloc
	73390,	-- Gain New Look: Whelp Egg
	73391,	-- Gain Even Newer Look: Undead Ghoul
	73392,	-- Gain Even Newer Look: Murloc
	73393,	-- Gain Even Newer Look: Whelp Egg
	73410,	-- Seething Cache
	73863,	-- Quest #73863*
	73864,	-- Tracking Quest
	73928,	-- Rumble Coin Bag
	73936,	-- Rumble Coin Bag
	73952,	-- Rumble Foil Bag
	74286,	-- Rumble Foil Bag
	74287,	-- Rumble Foil Bag
	74399,	-- Forgotten Dragon Treasure
	74730,	-- Ensemble: Bloodtinged Cloth
	74732,	-- Ensemble: Blooddrenched Leather
	74733,	-- Ensemble: Bloodstained Mail
	74734,	-- Ensemble: Bloodsoaked Plate
	74843,	-- Rumble Coin Bag
	74844,	-- Rumble Coin Bag
	74845,	-- Rumble Coin Bag
	74848,	-- Rumble Foil Bag
	74849,	-- Rumble Foil Bag
	74850,	-- Rumble Foil Bag
	74851,	-- Rumble Foil Bag
	74852,	-- Rumble Foil Bag
	74957,	-- X-45 Heartbreaker Attempt (Daily Accountwide)
	75036,	-- Rumble Foil Bag
	75037,	-- Rumble Foil Bag
	75038,	-- Rumble Foil Bag
	75039,	-- Rumble Foil Bag
	75040,	-- Rumble Foil Bag
	75041,	-- Rumble Foil Bag
	75127,	-- Every Door, Everywhere, All At Once
	75241,	-- Quest #75241*
	75260,	-- Quest #75260*
	75444,	-- Waygate Exploration: The Forbidden Reach
	75658,	-- Zaralek Cavern Unlocked [Account]
	75720,	-- Care to Barter?
	75723,	-- Cavern Drakewatching
	75724,	-- Like the Niffen Do
	75727,	-- The Smelliest Tabard
	75730,	-- Slitherdrake Watching
	75731,	-- Scented Boots
	75742,	-- Drake Helms
	75764,	-- Quest #75764*
	75833,	-- Report to the Trading Post
	75862,	-- Quest #75862*
	75863,	-- Quest #75863*
	75864,	-- Quest #75864*
	75968,	-- Obsidian Aspectral Earthstone
	76030,	-- Airborne Winding
	76067,	-- Signed, Sealed, Self-Delivered
	76103,	-- Report to the Trading Post
	76104,	-- Report to the Trading Post
	76105,	-- Report to the Trading Post
	76106,	-- Report to the Trading Post
	76107,	-- Report to the Trading Post
	76108,	-- Report to the Trading Post
	76112,	-- Report to the Trading Post
	76113,	-- Report to the Trading Post
	76114,	-- Report to the Trading Post
	76157,	-- Grotto Netherwing Drake
	76159,	-- Report to the Trading Post
	76178,	-- Mote of Nasz'uro
	76179,	-- Mote of Nasz'uro
	76180,	-- Mote of Nasz'uro
	76181,	-- Mote of Nasz'uro
	76182,	-- Mote of Nasz'uro
	76183,	-- Mote of Nasz'uro
	76184,	-- Mote of Nasz'uro
	76185,	-- Mote of Nasz'uro
	76186,	-- Mote of Nasz'uro
	76187,	-- Mote of Nasz'uro
	76188,	-- Mote of Nasz'uro
	76189,	-- Mote of Nasz'uro
	76190,	-- Mote of Nasz'uro
	76191,	-- Mote of Nasz'uro
	76192,	-- Mote of Nasz'uro
	76193,	-- Mote of Nasz'uro
	76248,	-- Eva Sarkhoff
	76249,	-- Memory of Scholomance
	76250,	-- Spectral Essence
	76257,	-- Darkmaster's Scourgestone
	76261,	-- Hand of Naxxramas
	76262,	-- Archmage Angela Dosantos
	76263,	-- The Dread Citadel - Naxxramas
	76264,	-- The Dread Citadel - Naxxramas
	76265,	-- The Dread Citadel - Naxxramas
	76290,	-- Omarion's Second Handbook
	76307,	-- Makeshift Grappling Hook
	76377,	-- Orb of the Fel Temptress
	76390,	-- Inconvenience Fee
	76573,	-- Quest #76573*
	76574,	-- Quest #76574*
	76575,	-- Quest #76575*
	76603,	-- Paracausal Fragment of Thunderfin, Humid Blade of the Tideseeker
	76604,	-- Sulfur Hound's Leash
	76605,	-- Pauldrons of the Fire Lord
	76606,	-- Serrated Parasite
	76607,	-- Consuming Claws
	76608,	-- Heretical Gavel
	76609,	-- Unknown Horror's Arm
	76610,	-- Its Focused Gaze
	76611,	-- Subjugator's Shield
	76612,	-- Paracausal Fragment of Sulfuras
	76613,	-- Jagged Treason
	76614,	-- Fel-Ridden Divider
	76615,	-- Demonic Bone-Crusher
	76616,	-- Branded Greatmaul
	76617,	-- Fel-Infused Polearm
	76618,	-- Inferna Rod
	76619,	-- Heart-Slicer
	76620,	-- Paracausal Fragment of Azzinoth
	76621,	-- Felstorm Dragon
	76637,	-- Reins of the Ravenous Black Gryphon
	76640,	-- Warmonger's Skullcap
	76642,	-- Warmonger's Leggings
	76644,	-- Warmonger's Robe
	76647,	-- Warmonger's Headcover
	76649,	-- Warmonger's Pantaloons
	76650,	-- Warmonger's Chainmail
	76652,	-- Warmonger's Casque
	76654,	-- Warmonger's Legguards
	76656,	-- Warmonger's Breastplate
	76658,	-- Warmonger's Greathelm
	76660,	-- Warmonger's Legplates
	76661,	-- Warmonger's Cloth Gear Bag
	76662,	-- Warmonger's Cloth Armor Bag
	76663,	-- Warmonger's Cloth Equipment Bag
	76664,	-- Warmonger's Leather Gear Bag
	76665,	-- Warmonger's Leather Suit Bag
	76666,	-- Warmonger's Leather Armor Bag
	76667,	-- Warmonger's Leather Equipment Bag
	76668,	-- Warmonger's Mail Gear Bag
	76669,	-- Warmonger's Mail Armor Bag
	76670,	-- Warmonger's Mail Equipment Bag
	76671,	-- Warmonger's Plate Gear Bag
	76672,	-- Warmonger's Plate Armor Bag
	76673,	-- Warmonger's Plate Equipment Bag
	76674,	-- Warmonger's Ripper
	76676,	-- Horn of the White War Wolf
	76677,	-- Paracausal Fragment of Doomhammer
	76678,	-- Energetic Power Knife
	76679,	-- Clockwork Mallet
	76680,	-- Order-Powered Mechblade
	76681,	-- Quest #76681*
	76682,	-- Overclocked Hand Cannon
	76683,	-- Quest #76683*
	76684,	-- Steel-Lined Locking System
	76685,	-- Perfected Juggernaut
	76686,	-- Paracausal Fragment of Val'anyr
	76687,	-- Reins of the Scourgebound Vanquisher
	76688,	-- Scourge Victorious Tabard
	76689,	-- Upraised Headstone
	76690,	-- Cursed Blade of the Scourge
	76691,	-- Bonegale Greataxe
	76692,	-- Northern Ballista
	76693,	-- Frostspire
	76694,	-- Plague-Touched Stave
	76695,	-- Blighted Greatbow
	76696,	-- Paracausal Fragment of Frostmourne
	76697,	-- Utopian Tabard
	76698,	-- Valhalas Peacekeeper
	76699,	-- Hand of Order
	76700,	-- Titan Watcher's Shortblade
	76701,	-- Valhalas Heartstriker
	76702,	-- Titanic Hourglass
	76703,	-- Gold-Toed Albatross
	76704,	-- Paracausal Fragment of Seschenal
	76705,	-- Ensemble: Decorous Garments
	76706,	-- Ensemble: Lifegiver's Garms
	76707,	-- Ensemble: Hauberk of Discipline
	76708,	-- Ensemble: Valhalas Ceremonial Armor
	76709,	-- Quest #76709*
	76710,	-- Quest #76710*
	76711,	-- Quest #76711*
	76712,	-- Quest #76712*
	76713,	-- Quest #76713*
	76714,	-- Quest #76714*
	76715,	-- Quest #76715*
	76740,	-- Grimoire of the Void-Touched Fel Imp
	76741,	-- Grimoire of the Trickster Fel Imp
	76742,	-- Grimoire of the Fiendish Imp
	76743,	-- Grimoire of the Darkfire Imp
	76745,	-- Grimoire of the Netherbound Imp
	76747,	-- Grimoire of the Felfrost Imp
	77179,	-- Legend of the Multiverse
	77180,	-- Grimoire of the Antoran Felhunter
	77181,	-- Grimoire of the Voracious Felmaw
	77182,	-- Ritual of the Voidmaw Felhunter
	77183,	-- Grimoire of the Xorothian Felhunter
	77213,	-- Doan's Strongbox
	77221,	-- Quest #77221*
	77236,	-- When Time Needs Mending
	77241,	-- A Foreseeable Friendship
	77246,	-- Quest #77246*
	77248,	-- A Recognition of Skill
	77249,	-- One of Us
	77250,	-- Realized Potential
	77253,	-- Quest #77253*
	77285,	-- Quest #77285*
	77288,	-- Loose Dirt Mound
	77289,	-- Loose Dirt Mound
	77290,	-- Loose Dirt Mound
	77291,	-- Loose Dirt Mound
	77292,	-- Loose Dirt Mound
	77293,	-- Loose Dirt Mound
	77294,	-- Loose Dirt Mound
	77295,	-- Loose Dirt Mound
	77296,	-- Loose Dirt Mound
	77297,	-- Loose Dirt Mound
	77298,	-- Loose Dirt Mound
	77299,	-- Loose Dirt Mound
	77300,	-- Loose Dirt Mound
	77301,	-- Loose Dirt Mound
	77302,	-- Loose Dirt Mound
	77572,	-- Quest #77572*
	77644,	-- The Scarlet Key
	77678,	-- Ambrosial Sporestone
	77716,	-- Level 2
	77718,	-- Level 3
	77719,	-- Level 4
	77720,	-- Level 5
	77721,	-- Level 6
	77722,	-- Level 7
	77723,	-- Level 8
	77724,	-- Level 9
	77727,	-- Level 10
	77728,	-- Level 11
	77729,	-- Level 12
	77730,	-- Level 13
	77731,	-- Level 14
	77732,	-- Level 15
	77733,	-- Level 16
	77734,	-- Level 17
	77735,	-- Level 18
	77736,	-- Level 19
	77737,	-- Level 20
	77775,	-- Has rolled for Coren Special Loot (Daily Accountwide)(DF Version)
	77799,	-- Saatilu
	77800,	-- Heraat
	77804,	-- Eranthi
	77805,	-- Yazdan
	77806,	-- Zyaana
	77807,	-- Tronaar
	77813,	-- Lightning Strikes
	77815,	-- The Storm Race Tour
	77820,	-- Quest #77820*
	77887,	-- Quest #77887*
	77979,	-- Quest #77979*
	78098,	-- Enigma Ward
	78099,	-- Mimiron's Booster Part
	78100,	-- Mimiron's Booster Part
	78101,	-- Arcane Influence
	78130,	-- Quest #78130*
	78207,	-- Loose Dirt Mound
	78208,	-- Loose Dirt Mound
	78363,	-- The Tabard of Your Dreams
	78386,	-- Emerald Reawakening
	78422,	-- Emerald Blossom Dreamstone
	78423,	-- Quest #78423*
	78430,	-- Mean Green Infusion Machine
	78431,	-- Green Dream Team
	78445,	-- Quest #78445*
	78449,	-- Quest #78449*
	78450,	-- Quest #78450*
	78479,	-- Feather of Friends
	78481,	-- Mark of the Umbramane
	78507,	-- Mark of the Evergreen Dreamsaber
	78512,	-- Mark of the Boreal Dreamtalon
	78514,	-- Mark of the Auroral Dreamtalon
	78515,	-- Mark of the Thriving Dreamtalon
	78519,	-- Mark of the Loamy Umbraclaw
	78520,	-- Mark of the Snowy Umbraclaw
	78521,	-- Moon-Blessed Claw
	78522,	-- Mark of the Lush Dreamstag
	78526,	-- Moon-Blessed Claw
	78527,	-- Feather of the Blazing Somnowl
	78528,	-- Mark of the Hibernating Runebear
	78595,	-- Dream Infused
	78709,	-- Quest #78709*
	78710,	-- Quest #78710*
	78842,	-- Cinder of Companionship
	78846,	-- Snorr
	78847,	-- Dreamborne Scarab
	78848,	-- Dreamhoof
	78849,	-- Memorie
	78850,	-- Somnolet
	78851,	-- Reverie
	78852,	-- Drowsey
	78853,	-- Snorr
	78854,	-- Dreamborne Scarab
	78855,	-- Dreamhoof
	78856,	-- Memorie
	78857,	-- Somnolet
	78858,	-- Reverie
	78859,	-- Drowsey
	78882,	-- Elmer
	78883,	-- Snoots
	78884,	-- Snoozles
	78885,	-- Napps
	78886,	-- Dustite
	78887,	-- Seedle
	78888,	-- Juniper
	78889,	-- Spruce
	78904,	-- Quest #78904*
	78938,	-- Champion of the Waterlords
	79081,	-- Flamegard's Hope
	79104,	-- Renewed Proto-Drake: Love Armor Attempt (Daily Accountwide)
	79142,	-- Quest #79142*
	79178,	-- Play Hearthstone!
	79184,	-- It's Hearthstone's Anniversary!
	79186,	-- It's Hearthstone's Anniversary!
	79189,	-- It's Hearthstone's Anniversary!
	79351,	-- Level 25
	79352,	-- Level 24
	79359,	-- Grimoire of the Ancient Observer
	79373,	-- Grimoire of the Vile Tyrant
	79374,	-- Grimoire of the Bloodrage Tyrant
	79375,	-- Grimoire of the Felbrute Tyrant
	79376,	-- Grimoire of the Netherwalk Tyrant
	79384,	-- Hearthstone Card: Scarlet Crusader
	79385,	-- Hearthstone Card: Shadow Word: Ruin
	79387,	-- Test Quest - Account Test (DNT)
	79389,	-- Hearthstone Card: Chillwind Yeti
	79390,	-- Hearthstone Card: Alleycat
	79391,	-- Hearthstone Card: Grove Tender
	79392,	-- Hearthstone Card: Abomination
	79393,	-- Hearthstone Card: Arcane Golem
	79394,	-- Hearthstone Card: Ancient of Lore
	79395,	-- Hearthstone Card: Hogger
	79396,	-- Hearthstone Card: Baron Geddon
	79397,	-- Hearthstone Card: Blessing of Kings
	79398,	-- Hearthstone Card: Forbidden Words
	79399,	-- Hearthstone Card: Arcane Explosion
	79400,	-- Hearthstone Card: Pyroblast
	79401,	-- Hearthstone Card: Arcane Shot
	79402,	-- Hearthstone Card: Preparation
	79403,	-- Hearthstone Card: Jive, Insect
	79405,	-- Hearthstone Card: Righteousness
	79406,	-- Hearthstone Card: Charged Devilsaur
	79407,	-- Quest #79407*
	79408,	-- Quest #79408*
	79409,	-- Quest #79409*
	79410,	-- Quest #79410*
	79416,	-- Quest #79416*
	79417,	-- Quest #79417*
	79419,	-- Quest #79419*
	79420,	-- Quest #79420*
	79421,	-- Quest #79421*
	79422,	-- Quest #79422*
	79423,	-- Quest #79423*
	79424,	-- Quest #79424*
	79425,	-- Quest #79425*
	79426,	-- Quest #79426*
	79427,	-- Quest #79427*
	79428,	-- Quest #79428*
	79429,	-- Quest #79429*
	79430,	-- Quest #79430*
	79431,	-- Quest #79431*
	79439,	-- Quest #79439*
	79441,	-- Sarge
	79443,	-- Grimoire of the Blasted Observer
	79444,	-- Grimoire of the Zealous Observer
	79446,	-- Grimoire of the Mana-Gorged Observer
	79447,	-- Grimoire of the Dire Observer
	79449,	-- Grimoire of the Plagued Observer
	79450,	-- Grimoire of the Whispering Observer
	79455,	-- Grimoire of the Xorothian Darkglare
	79456,	-- Grimoire of the Eredathian Darkglare
	79457,	-- Grimoire of the Abyssal Darkglare
	79458,	-- Grimoire of the Riftsmolder Darkglare
	79459,	-- Quest #79459*
	79460,	-- Hearthstone Card: Cairne Bloodhoof
	79462,	-- [DNT] Renown Reward 001
	79464,	-- [DNT] Renown Reward 002
	79465,	-- [DNT] Renown Reward 003
	79466,	-- [DNT] Renown Reward 004
	79520,	-- Quest #79520*
	79573,	-- Complete the Khaz Algar main story campaign
	79582,	-- Hearthstone Card: Hand of Protection
	79583,	-- Quest #79583*
	79622,	-- Warband Test Quest (DNT)
	79629,	-- Quest #79629*
	79635,	-- Quest #79635*
	79654,	-- Quest #79654*
	79658,	-- Quest #79658*
	79661,	-- Quest #79661*
	79662,	-- Quest #79662*
	79663,	-- Quest #79663*
	79693,	-- Play Hearthstone!
	79694,	-- Play Hearthstone!
	79698,	-- Quest #79698*
	79702,	-- Quest #79702*
	79881,	-- Ensemble: Battlegear of the Lightning Emperor
	79965,	-- Learn the Ropes or Walk the Plank
	79992,	-- Quest #79992*
	79994,	-- Quest #79994*
	79995,	-- Quest #79995*
	79996,	-- Quest #79996*
	79997,	-- Quest #79997*
	80083,	-- Black Duck Disguise
	80084,	-- Brown Duck Disguise
	80085,	-- Mallard Duck Disguise
	80087,	-- Pink Duck Disguise
	80088,	-- White Duck Disguise
	80089,	-- Yellow Duck Disguise
	80093,
	80110,
	80190,
	80198,	-- Quest #80198*
	80199,
	80201,
	80262,
	80263,
	80264,
	80384,
	80436,
	80450,
	80451,	-- Quest #80451*
	80452,	-- Quest #80452*
	80544,	-- The Weaver
	80545,	-- The General
	80546,	-- The Vizier
	80592,
	81507,	-- Level 23 (Brann)
	81508,	-- Level 22 (Brann)
	81509,	-- Level 21 (Brann)
	81597,	-- [DNT] Weaver - Level 1 Unlock (spellID 443033)
	81598,	-- [DNT] Weaver - Level 2 Unlock (spellID 443674)
	81599,	-- [DNT] Weaver - Level 3 Unlock (spellID 443675)
	81600,	-- [DNT] Weaver - Level 4 Unlock (spellID 443676)
	81601,	-- [DNT] General - Level 1 Unlock (spellID 443677)
	81602,	-- [DNT] General - Level 2 Unlock (spellID 443679)
	81603,	-- [DNT] General - Level 3 Unlock (spellID 443680)
	81604,	-- [DNT] General - Level 4 Unlock (spellID 443681)
	81605,	-- [DNT] Vizier - Level 1 Unlock (spellID 443682) & [DNT] Vizier - Level 4 Unlock (spellID 443686) (???)
	81606,	-- [DNT] Vizier - Level 2 Unlock (spellID 443683)
	81607,	-- [DNT] Vizier - Level 3 Unlock (spellID 443684)
	81608,	-- Quest #81608*
	81623,	-- Quest #81623*
	81625,	-- Quest #81625*
	81626,	-- [DNT] General - Level 2 Unlock (spellID 443679) (???)
	81627,	-- [DNT] Weaver - Level 2 Unlock (spellID 443674) (???)
	81628,	-- Quest #81628*
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
	82117,	-- Delver's Dirigible Schematic: Blue Paint
	82169,	-- Delver's Dirigible Schematic: Harpoon
	82174,	-- Delver's Dirigible Schematic: Fan
	82177,	-- Delver's Dirigible Schematic: Thrusters
	82186,	-- Delver's Dirigible Schematic: Kite
	82189,	-- Delver's Dirigible Schematic: Red Paint
	82191,	-- Delver's Dirigible Schematic: Yellow Paint
	82192,	-- Delver's Dirigible Schematic: Alliance Decal
	82193,	-- Delver's Dirigible Schematic: Explorer Decal
	82194,	-- Delver's Dirigible Schematic: Horde Decal
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
	82381,	-- A Scintillating Candle
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
	82770,	-- Ensemble: Earthen Copper Regalia
	82775,	-- Quickchange Artist
	82781,	-- Attention-Getter
	82782,	-- Authenticity in Dress
	82784,	-- Resonant Performance
	82788,	-- Quest #82788*
	82789,	-- Quest #82789*
	82809,
	82833,	-- Quest #82833*
	82998,	-- Beledar's Attunement
	83024,	-- The Stormrider's Bond
	83025,	-- A Sacred Connection
	83134,	-- Increased Midsummer Fire Festival Special Loot Droprate (Daily Accountwide)
	83156,
	83157,	-- Quest #83157*
	83158,	-- Quest #83158*
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
	83341,	-- Quest #83341*
	83342,	-- Quest #83342*
	83343,	-- Quest #83343*
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
	83488,	-- Rak-Ush Stagshell World Quests unlocked
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
	83690,	-- Sturdy Chest
	83691,	-- Sturdy Chest
	83692,	-- Sturdy Chest
	83696,	-- Sturdy Chest
	83697,	-- Sturdy Chest
	83698,	-- Sturdy Chest
	83700,	-- Sturdy Chest
	83701,	-- Sturdy Chest
	83702,	-- Sturdy Chest
	83748,	-- Quest #83748*
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
	84530,	-- [DNT] General - Level 5 Unlock (spellID 462466)
	84531,	-- [DNT] General - Level 6 Unlock (spellID 462468)
	84532,	-- [DNT] General - Level 7 Unlock (spellID 462470)
	84533,	-- [DNT] General - Level 8 Unlock (spellID 462471)
	84534,	-- [DNT] Vizier - Level 5 Unlock (spellID 462473)
	84535,	-- [DNT] Vizier - Level 6 Unlock (spellID 462474)
	84536,	-- [DNT] Vizier - Level 7 Unlock (spellID 462475)
	84537,	-- [DNT] Vizier - Level 8 Unlock (spellID 462476)
	84538,	-- [DNT] Weaver - Level 5 Unlock (spellID 462490)
	84539,	-- [DNT] Weaver - Level 6 Unlock (spellID 462491)
	84540,	-- [DNT] Weaver - Level 7 Unlock (spellID 462492)
	84541,	-- [DNT] Weaver - Level 8 Unlock (spellID 462493)
	84542,	-- A Radiant Echo
	84562,	-- The Finer Things: #1
	84597,	-- Bronze Celebration Token (Queen Ansurek [H])
	84604,	-- Bronze Celebration Token Lockout [from #82783]
	84606,	-- Bronze Celebration Token Lockout [from #60215]
	84608,	-- Bronze Celebration Token Lockout [from #85947]
	84614,	-- Bronze Celebration Token Lockout [from #83468]
	84629,	-- Bronze Celebration Token Lockout [from #84254]
	84630,	-- Bronze Celebration Token Lockout [from #84489]
	84666,	-- Quest #84666*
	84681,	-- Triggered after turn in questID 84682 (Of Pacts and Patrons) (spellID 463432 - [DNT] Choice Complete Credit)
	84689,	-- Spymaster's Severed Thread
	84690,	-- Crypt Lord's Severed Thread
	84691,	-- Executor's Severed Thread
	84693,	-- Weaver's Lair Profession Table flag?, shown on i(228946)
	84948,
	84951,	-- Bilgewater Cartel Weekly Contract
	84952,	-- Steamwheedle Cartel Weekly Contract
	84953,	-- Venture Co. Weekly Contract
	84954,	-- Blackwater Cartel Weekly Contract
	85014,	-- Bronze Celebration Titles: Plaguelands Survivor
	85015,	-- Bronze Celebration Titles: Grizzly Hills Hiker
	85111,	-- Quest #85111*
	85159,	-- Zovex weekly reputation
	85160,	-- Kereke weekly reputation
	85161,	-- Rotfist weekly reputation
	85162,	-- Deepflayer Broodmother weekly reputation
	85163,	-- Lurker of the Deeps weekly reputation
	85165,	-- Deathtide weekly reputation
	85166,	-- Tka'ktath weekly reputation
	85167,	-- The One Left weekly reputation
	85200,	-- Quest #85200*
	85201,	-- Quest #85201*
	85202,	-- Quest #85202*
	85203,	-- Quest #85203*
	85204,	-- Quest #85204*
	85205,	-- Quest #85205*
	85206,	-- Quest #85206*
	85207,	-- Quest #85207*
	85210,	-- Quest #85210*
	85218,	-- Bronze Celebration Titles: Classic Enthusiast
	85219,	-- Bronze Celebration Titles: Outland Enthusiast
	85220,	-- Bronze Celebration Titles: Northrend Enthusiast
	85221,	-- Bronze Celebration Titles: Cataclysm Enthusiast
	85222,	-- Bronze Celebration Titles: Pandaria Enthusiast
	85223,	-- Bronze Celebration Titles: Draenor Enthusiast
	85224,	-- Bronze Celebration Titles: Broken Isles Enthusiast
	85225,	-- Bronze Celebration Titles: Zuldazar Enthusiast
	85226,	-- Bronze Celebration Titles: Kul Tiras Enthusiast
	85227,	-- Bronze Celebration Titles: Shadowlands Enthusiast
	85228,	-- Bronze Celebration Titles: Dragon Isles Enthusiast
	85463,	-- [DNT] The Cartels of Undermine Renown Unlock
	85516,	-- Bronze Celebration Titles: Molten Core Prospector
	85517,	-- Bronze Celebration Titles: Karazhan Graduate
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
	85542,	-- Take Really Big Candle!
	85543,	-- More Shinies!
	85544,	-- Many Little Shinies!
	85545,	-- Resonance Crystals
	85546,	-- Resonance Crystals
	85661,	-- Upgraded Apparel
	85718,	-- A Shining Stone
	85719,	-- Delve daily bonus xp
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
	85828,	-- Classy Dresser
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
	86296,	-- Delver's Gob-Trotter Schematic: Gold
	86299,	-- Looted Breakneck Cabbie's Coat
	86300,	-- Looted Violet Goblin Shredder
	86302,	-- Looted Mutt
	86303,	-- Looted Personal-Use Sapper
	86328,	-- Delver's Starter Kit [TWW:S2]
	86329,	-- Delver's Cosmetic Surprise Bag [TWW:S2]
	86343,	-- Sturdy Chest
	86345,	-- Sturdy Chest
	86346,	-- Sturdy Chest
	86347,	-- Sturdy Chest
	86374,	-- Muddy Snapdragon Treat
	86375,	-- Inky Snapdragon Treat
	86376,	-- Kaja'Cola-braised Snapdragon Treat
	86377,	-- Storminfused Snapdragon Treat
	86378,	-- Royal Snapdragon Treat
	86379,	-- Crimson Snapdragon Treat
	86380,	-- Sandy Snapdragon Treat
	86441,	-- Quest #86441*
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
	86873,	-- The War Within: Journey's End (Season 2)
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
	87055,	-- Ensemble: Battleplate of the Highlord
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
	87448,	-- Craftiest in Town's Attire
	87496,	-- Benefit Packages
	87510,	-- Quest #87510*
	87511,	-- Quest #87511*
	87512,	-- Quest #87512*
	87513,	-- Quest #87513*
	87514,	-- Quest #87514*
	87515,	-- Quest #87515*
	87527,	-- Quest #87527*
	87528,	-- Quest #87528*
	87529,	-- Quest #87529*
	87530,	-- Quest #87530*
	87531,	-- Quest #87531*
	87532,	-- Quest #87532*
	87550,	-- Week 2: We're Really Taking Off
	87551,	-- Week 3: Spread the Word
	87552,	-- Week 4: They've Heard of You
	87553,	-- Week 5: Another Amazing Week!
	87554,	-- Week 6: It's the Finale!
	88652,	-- Faceless Mask of the Nemesis
	88773,	-- Arsenal: Undermine Weaponry
	88803,	-- Timely Assistance
	88814,	-- Delver's Mana-Skimmer Schematic: Canister
	88815,	-- Delver's Mana-Skimmer Schematic: Quad Glider
	88816,	-- Delver's Mana-Skimmer Schematic: Emitter
	88817,	-- Delver's Mana-Skimmer Schematic: Void Paint
	88819,	-- Delver's Mana-Skimmer Schematic: Hyperdrive
	88820,	-- Delver's Mana-Skimmer Schematic: Energy Thrusters
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
	88948,	-- Level 81
	88949,	-- Level 82
	88950,	-- Level 83
	88951,	-- Level 84
	88952,	-- Level 85
	88953,	-- Level 86
	88954,	-- Level 87
	88955,	-- Level 88
	88956,	-- Level 89
	88957,	-- Level 90
	88958,	-- Level 91
	88959,	-- Level 92
	88960,	-- Level 93
	88961,	-- Level 94
	88962,	-- Level 95
	88963,	-- Level 96
	88964,	-- Level 97
	88965,	-- Level 98
	88966,	-- Level 99
	88967,	-- Buddy System X
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
	89188,	-- Ensemble: Noxious Injector Apparatus
	89189,	-- Ensemble: Nitroclad Kit
	89190,	-- Ensemble: Blastborne Loadout
	89191,	-- Ensemble: Junkreaver's Plates
	89250,	-- Burning Rubber
	89251,	-- Running Hot!
	89252,	-- Need a Jump?
	89268,	-- Lost Legends
	89283,	-- Magisters
	89284,	-- Relic chosen
	89290,	-- Quest #89290*
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
	90688,	-- Shatterpulse weekly reputation
	90691,	-- Hollowbane weekly reputation
	90693,	-- Weekly reputation: Purple Peat
	90695,	-- Weekly reputation: Xy'vox the Twisted
	90697,	-- Weekly reputation: "Arcana-Monger So'zer"
	90699,	-- Weekly reputation: Grubber
	90701,	-- Cowardly Cheery Bombs
	90703,	-- Unraveling Sands
	90719,	-- Borrowing Corruption
	90731,	-- Enhancing Corruption
	90775,
	90776,	-- Ancient Curiosity: Combat
	90778,	-- Ancient Curiosity: Utility
	90783,
	90806,	-- Criteria: Midnight campaign
	90815,	-- ??
	90816,
	90839,	-- Sturdy Chest
	90864,	-- Remixing Time
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
	91094,	-- Quest #91094*
	91142,	-- A Tabard for the Trusted
	91150,	-- Dissenter Oathland
	91154,	-- Dissenter Tailtrek
	91166,	-- Hellcaller chest tracker
	91167,	-- Hellcaller chest tracker
	91168,	-- Hellcaller chest tracker
	91169,	-- Hellcaller chest tracker
	91170,	-- Hellcaller chest tracker
	91309,	-- Korgoth the Hungerer (Devoured Energy-Pod)
	91310,	-- Miasmawrath (Devoured Energy-Pod)
	91311,	-- The Harvester (Devoured Energy-Pod)
	91312,	-- The Wallbreaker (Devoured Energy-Pod)
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
	91613,	-- Infinite Research Promotion: Timely Assistant
	91626,	-- Arsenal: Ethereal Weaponry
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
	91788,	-- Arsenal: Weathered Twilight's Hammer Armaments
	91812,	--
	91844,	-- Infinite Research Promotion: Honorary Chronographer
	91845,	-- Infinite Research Promotion: Senior Executive Chronographer
	91846,	-- Infinite Research Promotion: Principal Chronoquery Investigator
	91863,	-- My First Home
	91890,	-- Ensemble: Untethered Seer's Vestiture
	91891,	-- Ensemble: Untethered Blade's Garb
	91892,	-- Ensemble: Untethered Striker's Gear
	91893,	-- Ensemble: Untethered Captain's Full-Plate
	91894,	-- Has rolled for Coren Special Loot (Daily Accountwide)(TWW Version)
	91894,	-- Has rolled for Coren Special Loot (Daily Accountwide)(TWW Version)
	91895,	-- Ensemble: Void-Scarred Captain's Plate
	91896,	-- Ensemble: Void-Scarred Striker's Battlegear
	91897,	-- Ensemble: Void-Scarred Blade's Attire
	91898,	-- Ensemble: Void-Scarred Seer's Wrappings
	91914,	-- Ensemble: Bundle of Ethereal Cloaks
	91915,	-- K'areshi Ribbon Stash
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
	91954,	-- Freezing Over
	91961,	-- Bronze Celebration Titles: Khaz Algar Enthusiast
	91968,	-- Welcome Home
	91969,	-- Time to Decorate
	92019,	-- Ensemble: Well-Worn Twilight Cultist's Attire
	92031,	-- Meet the Vandals
	92032,	-- Quest #92032*
	92033,	-- Quest #92033*
	92071,	-- Deal: Cartel Zo
	92072,	-- Deal: Cartel Ba
	92073,	-- Deal: Cartel Om
	92078,	-- A New Recipe!
	92079,	-- Cartel Zo Dead Drop
	92080,	-- Cartel Ba Dead Drop
	92087,	-- Unlock Ability 1 - Level 2
	92088,	-- Unlock Ability 2 - Level 3
	92089,	-- Unlock Ability 3 - Level 4
	92090,	-- Unlock Ability 4 - Level 5
	92091,	-- Unlock Ability 5 - Level 6
	92092,	-- Unlock Ability 6 - Level 7
	92093,	-- Unlock Ability 7 - Level 8
	92127,	-- Lu-ashal
	92129,	-- Thormbelan
	92173,	-- Ensemble: Shoulderguards of the Wastelander Seer
	92175,	-- Ensemble: Ancient Capes of the Reshii
	92177,	-- One Hero's Prey
	92178,	-- Practical Magic
	92179,	-- Dark Mending
	92180,	-- Precious Jewels
	92181,	-- Garden Variety Sacrifices
	92182,	-- The Sheep or the Wolf
	92386,	-- A Handful of Voidlight Marl (Amani Tribe)
	92387,	-- A Cluster of Voidlight Marl
	92388,	-- A Trove of Voidlight Marl
	92402,	-- Magical Touch
	92417,	-- Farm to Table
	92428,	-- Quest #92428*
	92429,	-- Alternative Skinning
	92437,	-- Decor Treasure Hunt
	92443,	-- Reverse Herb Farming
	92445,	-- Smelting for Two
	92486,	-- Quest #92486*
	92487,	-- Open the first Wriggling Pinnacle Cache
	92488,	-- Weekly lockout: 600 bonus crystals from The Flame Burns Eternal
	92518,	-- Gravid Potatoad
	92572,	-- Furniture Favor
	92573,	-- Sturdy Chest
	92577,	-- Furniture Favor
	92578,	-- Draconic Decor
	92580,	-- Spare a Chair
	92581,	-- Last Light
	92586,	-- Felscorned Scythe of the Unmaker
	92588,	-- Fallen King's Corrupted Blades
	92599,	-- Scythe of the Unmaker
	92608,	-- Landscape Photography
	92611,	-- Illusion: Felshatter
	92626,	-- ??
	92627,	-- An Arrested Development
	92628,	-- ??
	92629,	-- Quest #92629*
	92630,	-- The Pursuit Continues
	92631,	-- Abhorrent Gauntlet
	92632,	-- Trial of Wrath
	92638,	-- Feldruid's Scornwing Idol
	92654,	-- Quest #92654*
	92666,	-- Quest #92666*
	92680,	-- Ensemble: World-Defiler's Battle Armor
	92681,	-- Ensemble: Zealous Felslingers Battle Armor
	92710,  -- Hesta Forlath Paintings Unlock
	92712,	-- Quest #92712*
	92714,	-- Tracking Quest
	92733,	-- Triggered after entering house
	92734,	-- Quest #92734*
	92756,	-- Level 9
	92758,	-- Level 10
	92759,	-- Level 11
	92760,	-- Level 12
	92761,	-- Level 13
	92762,	-- Level 14
	92763,	-- Level 15
	92764,	-- Level 16
	92765,	-- Level 17
	92766,	-- Level 18
	92767,	-- Level 19
	92768,	-- Level 20
	92769,	-- Level 21
	92770,	-- Level 22
	92771,	-- Level 23
	92772,	-- Level 24
	92773,	-- Level 25
	92774,	-- Level 26
	92775,	-- Level 27
	92776,	-- Level 28
	92777,	-- Level 29
	92778,	-- Level 30
	92779,	-- Level 31
	92780,	-- Level 32
	92781,	-- Level 33
	92782,	-- Level 34
	92783,	-- Level 35
	92784,	-- Level 36
	92785,	-- Level 37
	92786,	-- Level 38
	92787,	-- Level 39
	92788,	-- Level 40
	92789,	-- Level 41
	92790,	-- Level 42
	92791,	-- Level 43
	92792,	-- Level 44
	92793,	-- Level 45
	92794,	-- Level 46
	92795,	-- Level 47
	92796,	-- Level 48
	92797,	-- Level 49
	92798,	-- Level 50
	92799,	-- Level 51
	92800,	-- Level 52
	92801,	-- Level 53
	92803,	-- Level 54
	92804,	-- Level 55
	92805,	-- Level 56
	92806,	-- Level 57
	92807,	-- Level 58
	92808,	-- Level 59
	92809,	-- Level 60
	92813,	-- Quest #92813*
	92857,	-- Ta'readon's Mount Voucher
	92861,	-- Ensemble: Eredath Lightseeker's Regalia
	92862,	-- Ensemble: Forgotten Conservatory Clothes
	92863,	-- Ensemble: Triumvirate High Guard's Battlegear
	92886,	-- Taeshalach
	92889,	-- Arsenal: Odyn's Spears
	92890,	-- A Handful of Voidlight Marl (Hara'ti)
	92891,	-- A Cluster of Voidlight Marl
	92892,	-- A Trove of Voidlight Marl
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
	93042,	-- Golden Cloud Serpent Treasure Chest
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
	93154,	-- Ensemble: Sargerei Commander's Voidscarred Regalia
	93155,	-- Quest #93155*
	93200,	-- A Handful of Voidlight Marl (Silvermoon Court)
	93470,	-- Laments of Wey'nan--Part 1: Finding Hope
	93471,	-- Laments of Wey'nan--Part 2:  Hunting Purpose
	93472,	-- Laments of Wey'nan--Part 3: There Must Be More
	93473,	-- Echoes of Our Past--Part 3: Dangerous Memories
	93474,	-- Echoes of Our Past--Part 2: Alndust
	93475,	-- Echoes of Our Past--Part 1: Fading History
	93476,	-- Seeker's Trail--Part 3: Unending Mission
	93478,	-- Seeker's Trail--Part 2: Seeking Peace
	93479,	-- Seeker's Trail--Part 1: Call of Aln'hara
	93480,	-- Words of Obayo--Part 3: The Silence
	93481,	-- Words of Obayo--Part 2: The Rift
	93482,	-- Words of Obayo--Part 1: The Flame
	93483,	-- Tending the Lands--Part 3: The Cycle
	93484,	-- Tending the Lands--Part 2: The Plan
	93485,	-- Tending the Lands--Part 1: The Conflict
	93486,	-- Ways of the Roots--Part 3: Pruning
	93487,	-- Ways of the Roots--Part 2: Growing
	93488,	-- Ways of the Roots--Part 1: Serving
	93489,	-- Awe'ohna's Path--Part 3: The Cradle
	93490,	-- Awe'ohna's Path--Part 2: Answers
	93491,	-- Awe'ohna's Path--Part 1: Questions
	93509,	-- Quest #93509*
	93515,	-- Quest #93515*
	93548,	-- A Trove of Voidlight Marl
	93549,	-- A Cluster of Voidlight Marl
	93554,	-- Tarnished Mural
	93556,	-- Ancient Runestone
	93557,	-- Derelict Mural
	93558,	-- Forgotten Mural
	93687,	-- Taste True Power
	93784,	-- A Gnawing Void of Curiosity
	93804,	-- "Dispelling Leap" Kit
	93805,	-- "Swift" Kit
	93806,	-- "Nullification Field" Kit
	93807,	-- "Riftwalk" Kit
	93808,	-- "Clockwork Sentinel" Kit
	93809,	-- "Stealth" Kit
	93817,	-- Quest #93817*
	93818,	-- Quest #93818*
	93819,	-- Amani Rep
	93820,	-- The Singularity Rep
	93821,	-- Silvermoon Court Rep
	93822,	-- Hara'ti Rep
	93838,	-- "Make Decoy" Enhancement
	93839,	-- "Eccentro-Magic Pulse" Enhancement
	93859,	-- Sin'dorei Gravestone
	93866,	-- Quest #93866*
	93867,	-- Delver's Delight
	93868,	-- Death's Hope
	93869,	-- Pious Memorial
	93870,	-- The Ephemeron Masquerade
	93872,	-- Prey Complete - Normal #1
	93873,	-- ??
	93874,	-- Prey Complete - Hard #2
	93875,	-- ??
	93880,	-- Delver's Starter Kit
	93881,	-- Delver's Cosmetic Surprise Bag
	93907,	-- Edification of the Worthy
	93914,	-- Quest #93914*
	93922,	-- A Singular Focus Unleashed
	93923,	-- Tenacity of the Shul'ka
	93924,	-- An Unrelenting March
	93943,	-- Ancient Curiosity: Combat
	93945,	-- Ancient Curiosity: Utility
	93965,	-- Pet Wranglin'
	93965,	-- Pet Wranglin'
	94000,	-- Sturdy Chest
	94001,	-- Sturdy Chest
	94002,	-- Sturdy Chest
	94012,	-- Lost Lil' Strider
	94014,	-- Sturdy Chest
	94015,	-- Sturdy Chest
	94016,	-- Sturdy Chest
	94017,	-- Sturdy Chest
	94018,	-- Sturdy Chest
	94019,	-- Sturdy Chest
	94020,	-- Sturdy Chest
	94021,	-- Sturdy Chest
	94022,	-- Sturdy Chest
	94023,	-- Sturdy Chest
	94024,	-- Sturdy Chest
	94025,	-- Sturdy Chest
	94026,	-- Sturdy Chest
	94027,	-- Sturdy Chest
	94028,	-- Sturdy Chest
	94029,	-- Sturdy Chest
	94030,	-- Sturdy Chest
	94033,	-- Sturdy Chest
	94034,	-- Sturdy Chest
	94037,	-- Sturdy Chest
	94038,	-- Sturdy Chest
	94039,	-- Sturdy Chest
	94041,	-- Sturdy Chest
	94042,	-- Sturdy Chest
	94043,	-- Sturdy Chest
	94044,	-- Sturdy Chest
	94045,	-- Sturdy Chest
	94210,	-- Feathering the Nest
	94362,	-- Arsenal: Heirlooms of Atal'Aman
	94377,	-- Warden's Companion
	94378,	-- Duskytooth Fel Snooter
	94379,	-- This Old Hearth
	94392,	-- Quest #94392*
	94415,	-- Plumbing the Void
	94416,	-- Rehoming Technology
	94455,	-- Home at Last
	94469,	-- A Handful of Voidlight Marl (The Singularity)
	94470,	-- A Cluster of Voidlight Marl
	94471,	-- A Trove of Voidlight Marl
	94482,	-- Gleaming Sunmote
	94536,	-- Vista Point
	94537,	-- Vista Point
	94538,	-- Vista Point
	94539,	-- Vista Point
	94540,	-- Vista Point
	94541,	-- Vista Point
	94542,	-- Vista Point
	94543,	-- Vista Point
	94544,	-- Vista Point
	94545,	-- Vista Point
	94546,	-- Vista Point
	94547,	-- Vista Point
	94548,	-- Vista Point
	94549,	-- Vista Point
	94550,	-- Vista Point
	94551,	-- Vista Point
	94552,	-- Vista Point
	94553,	-- Vista Point
	94554,	-- Vista Point
	94555,	-- Vista Point
	94570,	-- Arsenal: Twilight Blade
	94623,	-- Building the Voidforge
	94671,	-- Finery Funds
	94675,	-- Voidforge Reforged
	94681,	-- Warden of Weeds weekly reputation obtained.
	94682,	-- Harried Hawkstrider weekly reputation obtained.
	94683,	-- Necrohexxer Raz'ka weekly reputation obtained.
	94684,	-- Overfester Hydra weekly reputation obtained.
	94685,	-- Bloated Snapdragon weekly reputation
	94686,	-- Cre'van weekly reputation obtained.
	94687,	-- Coralfang weekly reputation
	94688,	-- Lady Liminus weekly reputation obtained.
	94689,	-- Terrinor weekly reputation obtained.
	94690,	-- Bad Zed weekly reputation obtained.
	94691,	-- Waverly weekly reputation obtained,
	94692,	-- Banuran weekly reputation
	94693,	-- Lost Guardian weekly reputation obtained.
	94694,	-- Duskburn weekly reputation
	94695,	-- Malfunctioning Construct weekly reputation obtained.
	94696,	-- Dame Bloodshed weekly reputation obtained.
	94697,	-- The Snapping Scourge weekly reputation obtained.
	94698,	-- Skullcrusher Harak weekly reputation obtained.
	94699,	-- Lightwood Borer weekly reputation obtained.
	94700,	-- Mrrlokk weekly reputation obtained.
	94701,	-- Poacher Rav'ik weekly reputation obtained.
	94702,	-- Spinefrill weekly reputation obtained.
	94703,	-- Oophaga weekly reputation obtained.
	94704,	-- Tiny Vermin weekly reputation obtained.
	94705,	-- Voidtouched Crustacean weekly reputation obtained.
	94706,	-- The Devouring Invader weekly reputation obtained.
	94707,	-- Elder Oaktalon weekly reputation obtained.
	94708,	-- Depthborn Eelamental weekly reputation
	94709,	-- The Decaying Diamondback weekly reputation obtained.
	94710,	-- Ash'an the Empowered weekly reputation
	94712,	-- Rhazul weekly reputation obtained.
	94713,	-- Chionex weekly reputation
	94714,	-- Ha'kalawe weekly reputation obtained.
	94715,	-- Tallcap the Truthspreader weekly reputation obtained.
	94716,	-- Queen Lashtongue weekly reputation obtained.
	94717,	-- Chlorokyll weekly reputation obtained.
	94718,	-- Stumpy weekly reputation obtained.
	94719,	-- Serrasa weekly reputation obtained.
	94720,	-- Mindrot weekly reputation obtained.
	94721,	-- Dracaena weekly reputation
	94722,	-- Treetop weekly reputation obtained.
	94723,	-- Oro'ohna weekly reputation obtained.
	94724,	-- Pterrock weekly reputation obtained.
	94725,	-- Ahl'ua'huhi weekly reputation obtained.
	94726,	-- Annulus the Worldshaker weekly reputation obtained.
	94728,	-- Sundereth the Caller weekly reputation obtained.
	94729,	-- Territorial Voidscythe weekly reputation obtained.
	94730,	-- Tremora weekly reputation obtained.
	94731,	-- Screammaxa the Matriarch weekly reputation obtained.
	94732,	-- Bane of the Vilebloods weekly reputation obtained.
	94747,	-- ???
	94750,	-- Abysslick weekly reputation obtained.
	94751,	-- Aeonelle Blackstar weekly reputation
	94752,	-- Bilemaw the Gluttonous weekly reputation obtained.
	94753,	-- Blackcore weekly reputation
	94754,	-- Eruundi weekly reputation obtained.
	94755,	-- Far'thana the Mad weekly reputation obtained.
	94758,	-- Lotus Darkblossom weekly reputation obtained.
	94759,	-- Nightbrood weekly reputation obtained.
	94760,	-- Nullspiral weekly reputation obtained.
	94761,	-- Queen o' War weekly reputation obtained.
	94762,	-- Rakshur the Bonegrinder weekly reputation obtained.
	94763,	-- Ravengerus weekly reputation obtained.
	94764,	-- The Many-Broken weekly reputation obtained.
	94765,	-- Voidseer Orivane weekly reputation obtained.
	94794,	-- Fine Fashion Funding
	94813,	-- Fine Fashion Funding
	94816,	-- Fine Fashion Funding
	94995,	-- To Dye For
	95000,	-- Quest #95000*
	95001,	-- Quest #95001*
	95002,	-- Quest #95002*
	95003,	-- Quest #95003*
	95044,	-- Quest #95044*
	95166,	-- Pet the Dog (245551)
	95268,	-- New Tools, New Heights
	95271,	-- The Ascendant Nilhammer
	95324,	-- The War Beyond the Roots
	95373,	-- A Nebulous Endeavour
	95375,	-- Quest #95375*
	95405,	-- Quest #95405*
	95406,	-- Lost Animals
	95413,	-- Community Engagement
	95416,	-- Going Postal
	95438,	-- Lost Animals
	95440,	-- Housewarming
	95535,	-- Quest #95535*
	95536,	-- Quest #95536*
	95537,	-- Quest #95537*
	95538,	-- Quest #95538*
	95539,	-- Quest #95539*
	95540,	-- Mythic L'ura
	95541,	-- Quest #95541*
	95542,	-- Quest #95542*
	95543,	-- Quest #95543*
	95547,	-- Ritual Site Challenge Report: Tendrils
	95548,	-- Tainted Sample
	95549,	-- Raising Magical Alarms
	95550,	-- Thin Their Ranks
	95551,	-- Misappropriated Treasures
	95552,	-- Dark Obelisk Investigation
	95553,	-- Manifested Destiny
	95554,	-- Questionable Power
	96100,	-- Quest #96100*
	96114,	-- A Small Pouch of Crystals
	96115,	-- A Small Pouch of Crystals
	96116,	-- A Cache of Crystals
	96117,	-- A Cache of Crystals
	96118,	-- A Cache of Crystals
	96121,	-- A Small Bundle of Goods
	96122,	-- A Small Bundle of Goods
	96123,	-- A Small Bundle of Goods
	96124,	-- A Small Bundle of Goods
	96214,	-- Tracking Quest
	96215,	-- Tracking Quest
	96496,	-- The Road Not Taken Twice
	96497,	-- Spatial Reasoning
	96534,	-- Preparing for Threats
	96744,	-- Bouncy Mushrooms
	96745,	-- Aerospores
	96787,	-- Quest #96787*
	96788,	-- Quest #96788*
	96790,	-- ??
	96791,	-- Quest #96791*
	96845,	-- The Grappler
	96936,	-- Accolades for the Umbral Contender
	97111,	-- ??
	97115,	-- First Preference Killing of the week
	97116,	-- Has rolled for Ahune Special Loot (Daily Accountwide)
	97640,	-- Vaults of Atal'Utek: One Coin Too Many
	98388,	-- Into the Vaults of Atal'Utek
	98428,	-- Vaults of Atal'Utek: The Altar of Corrosion

	-- Weird partial cases... ??
	-- 45237,	-- Ensemble: Funerary Plate of the Chosen Dead (Only flags complete for Plate characters)
	-- 79882,	-- Ensemble: Vestments of Winged Triumph (Only flags complete for Paladins)
	-- 79877,	-- Ensemble: White Tiger Battlegear (Only flags complete for Paladins)
	-- #ENDIF
}


local keyedQuests = {}
for _,questID in ipairs(AccountWideQuestsDB) do
	keyedQuests[questID] = true
end
ExportDB.AccountWideQuestsDB = keyedQuests
