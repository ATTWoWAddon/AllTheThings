---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(SHADOWLANDS, bubbleDown({ ["timeline"] = { ADDED_9_1_0 } }, {
	m(KORTHIA, {
		n(ACHIEVEMENTS, {
			ach(15064, {	-- Breaking the Chains
				-- Meta Achievement
				["sym"] = {{"meta_achievement",
					14961,	-- Chains of Domination
					15035,	-- On the Offensive
					15054,	-- Minions of the Cold Dark
					15066,	-- Reliquary Restoration
					15053,	-- Explore Korthia
					15059,	-- Death's Advance
					15069,	-- The Archivists' Codex
					15099,	-- Treasures of Korthia
					15107,	-- Conquering Korthia
				}},
				["groups"] = {
					i(186654),	-- Hand of Salaranga (MOUNT!)
				},
			}),
			ach(14961, {	-- Chains of Domination
				crit(51692, {	-- Battle of Ardenweald
					["sourceQuests"] = { 63639 },	-- Report to Oribos
				}),
				crit(51693, {	-- Maw Walkers
					["sourceQuests"] = { 64556 },	-- In Need of Assistance
				}),
				crit(52490, {	-- Focusing the Eye
					["sourceQuests"] = { 63902 },	-- Good News, Everyone!
				}),
				crit(51694, {	-- The Last Sigil
					["sourceQuests"] = { 63727 },	-- The Primus Returns
				}),
				crit(51695, {	-- An Army of Bone and Steel
					["sourceQuests"] = { 63622 },	-- Victory in Our Name
				}),
				crit(51696, {	-- The Unseen Guests
					["sourceQuests"] = { 63656 },	-- The Meaning of Wrath
				}),
				crit(51697, {	-- The Power of Night
					["sourceQuests"] = { 64437 },	-- Inform the Primus
				}),
				crit(52457, {	-- A New Path
					["sourceQuests"] = { 63593 },	-- New Sigil of the Kyrian
				}),
				crit(52235,	{	-- What Lies Ahead
					["sourceQuests"] = { 64314 },	-- Covenants Renewed
				}),
			}),
			ach(15107, {	-- Conquering Korthia
				crit(52297, {
					["_npcs"] = { 179853 },	-- Blinding Shadow
				}),
				crit(52290, {
					["_npcs"] = { 180246 },	-- Carriage Crusher
				}),
				crit(52285, {
					["_npcs"] = { 179769 },	-- Consumption
				}),
				crit(52275, {
					["_npcs"] = { 179913 },	-- Deadsoul Hatcher
				}),
				crit(52286, {
					["_npcs"] = { 179779 },	-- Deomen the Vortex
				}),
				crit(52277, {
					["_npcs"] = { 177903 },	-- Dominated Protector
				}),
				crit(52298, {
					["_npcs"] = { 180014 },	-- Escaped Wilderling
				}),
				crit(52292, {
					["_npcs"] = { 179460 },	-- Fallen Charger
				}),
				crit(52299, {
					["_npcs"] = { 180042 },	-- Fleshwing <Lord of the Heap>
				}),
				crit(52293, {
					["_npcs"] = { 179851 },	-- Guard Orguluus
				}),
				crit(52303, {
					["_npcs"] = { 179472 },	-- Konthrogz the Obliterator
				}),
				crit(52304, {
					["_npcs"] = { 179108 },	-- Kroke the Tormented
				}),
				crit(52283, {
					["_npcs"] = { 179684 },	-- Malbog
				}),
				crit(52294, {
					["_npcs"] = { 179914 },	-- Observer Yorik
				}),
				crit(52291, {
					["_npcs"] = { 179931 },	-- Relic Breaker Krelva
				}),
				crit(52318, {
					["_npcs"] = { 180160 },	-- Reliwik the Defiant
				}),
				crit(52273, {
					["_npcs"] = { 179608 },	-- Screaming Shade
				}),
				crit(52274, {
					["_npcs"] = { 179911 },	-- Silent Soulstalker
				}),
				crit(52276, {
					["_npcs"] = { 179985 },	-- Stygian Stonecrusher
				}),
				crit(52284, {
					["_npcs"] = { 179735 },	-- Torglluun <Lord of Shades>
				}),
				crit(52302, {
					["_npcs"] = { 179760 },	-- Towering Exterminator
				}),
				crit(52289, {
					["_npcs"] = { 179805 },	-- Traitor Balthier <Maldraxxi Champion>
				}),
				crit(52319, {
					["_npcs"] = { 180162 },	-- Ve'rayn <Assets and Liabilities>
				}),
				crit(52300, {
					["_npcs"] = { 180032 },	-- Wild Worldcracker
				}),
				crit(52296, {
					["_npcs"] = { 179859 },	-- Xyraxz the Unknowable
				}),
				crit(52295, {
					["_npcs"] = { 179802 },	-- Yarxhov the Pillager
				}),
				crit(52287, {
					["_npcs"] = { 177444 },	-- Ylva <Mate of Guarm>
				}),
				crit(52301, {
					["_npcs"] = { 177336 },	-- Zelnithop
				}),
			}),
			achWithRep(15059, FACTION_DEATHS_ADVANCE),	-- Death's Advance
			ach(15053),	-- Explore Korthia
			ach(15066, {	-- Reliquary Restoration
				crit(52126, {
					["sourceQuests"] = { 63860 },	-- Talisman of the Eternal Scholar
				}),
				crit(52130, {
					["sourceQuests"] = { 63892 },	-- Diviner's Rune Chits
				}),
				crit(52131, {
					["sourceQuests"] = { 63899 },	-- Book of Binding: The Mad Witch
				}),
				crit(52254, {
					["sourceQuests"] = { 63908 },	-- Bulwark of Divine Intent
				}),
				crit(52255, {
					["sourceQuests"] = { 63909 },	-- Guise of the Changeling
				}),
				crit(52256, {
					["sourceQuests"] = { 63910 },	-- The Netherstar
				}),
				crit(52257, {
					["sourceQuests"] = { 63911 },	-- Singing Steel Ingot
				}),
				crit(52258, {
					["sourceQuests"] = { 63912 },	-- Celestial Shadowlands Chart
				}),
				crit(52259,	{
					["sourceQuests"] = { 63913 },	-- Unstable Explosive Orb
				}),
				crit(52260, {
					["sourceQuests"] = { 63914 },	-- Cipher of Understanding
				}),
				crit(52269, {
					["sourceQuests"] = { 63915 },	-- Drum of the Death Loa
				}),
				crit(52261, {
					["sourceQuests"] = { 63916 },	-- Sack of Strange Soil
				}),
				crit(52262, {
					["sourceQuests"] = { 63917 },	-- Everliving Statuette
				}),
				crit(52263, {
					["sourceQuests"] = { 63918 },	-- Obelisk of Dark Tidings
				}),
				crit(52264, {
					["sourceQuests"] = { 63919 },	-- Book of Binding: The Tormented Sorcerer
				}),
				crit(52270, {
					["sourceQuests"] = { 63920 },	-- Enigmatic Decrypting Device
				}),
				crit(52265, {
					["sourceQuests"] = { 63921 },	-- Ring of Self-Reflection
				}),
				crit(52266, {
					["sourceQuests"] = { 63922 },	-- Shadow Slicing Shortsword
				}),
				crit(52267, {
					["sourceQuests"] = { 63923 },	-- Lang Family Wood-Carving
				}),
				crit(52268, {
					["sourceQuests"] = { 63924 },	-- Gorak Claw Fetish
				}),
			}),
			ach(15069, {	-- The Archivists' Codex
				["minReputation"] = { FACTION_THE_ARCHIVISTS_CODEX, 6 },
			}),
			ach(15099, {	-- Treasures of Korthia
				crit(52236, {	-- Glittering Nest Material
					["_quests"] = { 64222 },
				}),
				crit(52237, {	-- Forgotten Feather
					["_quests"] = { 64234 },
				}),
				crit(52238, {	-- Lost Memento
					["_quests"] = { 64238 },
				}),
				crit(52240, {	-- Dislodged Nest
					["_quests"] = { 64241 },
				}),
				crit(52241, {	-- Anima Laden Egg
					["_quests"] = { 64244 },
				}),
				crit(52242, {	-- Displaced Relic
					["_quests"] = { 64252 },
				}),
				crit(52243, {	-- Helsworn Chest
					["_quests"] = { 64256 },
				}),
				crit(52244, {	-- Jeweled Heart
					["_quests"] = { 64261 },
				}),
				crit(52245, {	-- Infested Vestige
					["_quests"] = { 64264 },
				}),
				crit(52246, {	-- Offering Box
					["_quests"] = { 64268 },
				}),
			}),
		}),
	}),
})));
