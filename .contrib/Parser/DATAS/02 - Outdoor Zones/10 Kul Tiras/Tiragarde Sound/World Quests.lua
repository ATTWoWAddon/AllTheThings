---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(KUL_TIRAS, bubbleDown({ ["timeline"] = { ADDED_8_0_1 } }, {
	m(TIRAGARDE_SOUND, {
		n(WORLD_QUESTS, sharedData({
			["lvl"] = { 50 },
			["isWorldQuest"] = true,
		},{
			--[[	raw quest list to check against
			-- Unknown
			q(48104, {	-- A Greater Challenge
				["races"] = ALLIANCE_ONLY,
			}),
			q(47894, {	-- Jump Around
				["races"] = ALLIANCE_ONLY,
			}),
			q(49661, {	-- Locally Sourced Eggs
				["races"] = ALLIANCE_ONLY,
			}),
			q(54618, {	-- Paragon of the 7th Legion
				["races"] = ALLIANCE_ONLY,
			}),
			q(54629, {	-- Paragon of the Proudmoore Admiralty
				["races"] = ALLIANCE_ONLY,
			}),
			q(49408, {	-- Pirate Dice
				["races"] = ALLIANCE_ONLY,
			}),
			q(51580, {	-- Rear Admiral Hainsworth
			}),
			q(49464, {	-- Saurolisk Tails
				["races"] = ALLIANCE_ONLY,
			}),
			q(47695, {	-- Sound the Alarm
				["races"] = ALLIANCE_ONLY,
			}),
			q(54781, {	-- UNUSED
				["races"] = ALLIANCE_ONLY,
			}),
			q(50350, {	-- We Need a Chemist
				["races"] = ALLIANCE_ONLY,
			}),
			q(53281, {	-- Winter's Kiss Cluster
			}),
			]]--
			q(53812, {	-- A Carefully Laid Trap (Faction Assault WQ)
				["races"] = ALLIANCE_ONLY,
			}),
			q(50322, {	-- A Feathery Fad
				["races"] = ALLIANCE_ONLY,
			}),
			q(53711, {	-- A Sound Defense (Faction Assault WQ)
				["provider"] = { "n", 135808 },	-- Provisioner Fray <Proudmoore Admiralty Emissary>
				["races"] = ALLIANCE_ONLY,
			}),
			q(51385, {	-- A Supply of Stingers
				["races"] = ALLIANCE_ONLY,
				["g"] = {
					i(153486),	-- Intact Venomous Barb (QI!)
				},
			}),
			q(51610),	-- Adhara White
			q(54295, {	-- Artillery Master Goodwin (Faction Assault WQ)
				["races"] = HORDE_ONLY,
			}),
			q(51653),	-- Auditor Dolp
			q(52869),	-- Azerite Empowerment
			q(51586),	-- Azerite Empowerment
			q(51584),	-- Azerite Madness
			q(52874),	-- Azerite Mining
			q(51581),	-- Azerite Mining
			q(51583),	-- Azerite Wounds
			q(51652),	-- Barman Bill
			q(51666),	-- Bashmu
			q(51638),	-- Beachhead
			q(54182, {	-- Bilgewater Bash Brothers (Faction Assault WQ)
				["races"] = ALLIANCE_ONLY,
			}),
			q(50296, {	-- Billy Goat Barber (A)
				["races"] = ALLIANCE_ONLY,
				["g"] = {
					i(155681),	-- Goat Fur (QI!)
					i(153596),	-- Goat Shears (QI!)
				},
			}),
			q(51671, {	-- Billy Goat Barber (H)
				["races"] = HORDE_ONLY,
				["g"] = {
					i(155681),	-- Goat Fur (QI!)
					i(153596),	-- Goat Shears (QI!)
				},
			}),
			q(51669),	-- Black-Eyed Bart
			q(51841),	-- Blackthorne
			q(53755, {	-- Blight and Sound (Faction Assault WQ)
				["races"] = ALLIANCE_ONLY,
			}),
			q(51613),	-- Bloodmaw
			q(53279, {	-- Blooming Star Moss
				["requireSkill"] = HERBALISM,
			}),
			q(53280, {	-- Blooming Siren's Sting
				["requireSkill"] = HERBALISM,
			}),
			q(54281, {	-- Bombing Ballistae
				["races"] = ALLIANCE_ONLY,
			}),
			q(53939, {	-- Breaching Boralus (Faction Assault WQ)
				["provider"] = { "n", 135447 },	-- Ransa Greyfeather <The Honorbound Emissary>
				["races"] = HORDE_ONLY,
			}),
			q(52755, {	-- Bringing the Heat
				["races"] = HORDE_ONLY,
			}),
			q(51665),	-- Broodmother Razora
			q(55340, {	-- Calligraphy
				["races"] = ALLIANCE_ONLY,
			}),
			q(54257, {	-- Captain Greensails (Faction Assault WQ)
				["races"] = HORDE_ONLY,
			}),
			q(51848),	-- Captain Wintersail
			q(51842),	-- Carla Smirk
			q(53314, {	-- Coarse Storm Silver
				["requireSkill"] = MINING,
				["g"] = {
					i(163626),	-- Coarse Storm Silver (QI!)
				},
			}),
			q(51405, {	-- Corruption in the Bay
				["races"] = ALLIANCE_ONLY,
			}),
			q(53832, {	-- Counter-Sabotage (Faction Assault WQ)
				["races"] = HORDE_ONLY,
			}),
			q(51647, {	-- Crews of Freehold
				["races"] = HORDE_ONLY,
				["g"] = {
					i(153680),	-- Bilge Rat Orders (QI!)
					i(153682),	-- Blacktooth Bruiser Orders (QI!)
					i(153681),	-- Cutwater Corsair Orders (QI!)
				},
			}),
			q(50234, {	-- Crews of Freehold
				["races"] = ALLIANCE_ONLY,
				["g"] = {
					i(153680),	-- Bilge Rat Orders (QI!)
					i(153682),	-- Blacktooth Bruiser Orders (QI!)
					i(153681),	-- Cutwater Corsair Orders (QI!)
				},
			}),
			q(50998, {	-- Work Order: Deep Sea Satin
				["races"] = ALLIANCE_ONLY,
				["requireSkill"] = TAILORING,
			}),
			q(53716, {	-- Eastpoint Emergency (Faction Assault WQ)
				["races"] = HORDE_ONLY,
			}),
			q(53877, {	-- Eastpoint Encounter (Faction Assault WQ)
				["races"] = ALLIANCE_ONLY,
			}),
			q(53874),	-- End Their Vigil
			q(51311, {	-- Energizing Extract
				["races"] = ALLIANCE_ONLY,
				["g"] = {
					i(152849),	-- Pulsating Extract (QI!)
				},
			}),
			q(53951, {	-- Explosive Relief (A, Faction Assault WQ)
				["races"] = ALLIANCE_ONLY,
			}),
			q(53950, {	-- Explosive Relief (H, Faction Assault WQ)
				["races"] = HORDE_ONLY,
				["g"] = {
					o(307028, {	-- Azerite Gernades
						i(164741),	-- Unstable Azerite Grenade
					}),
				},
			}),
			q(51284, {	-- Falcon Hunt
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(152643),	-- Bola Launcher (QI!)
				},
			}),
			q(54129, {	-- First Mate Malone (Faction Assault WQ)
				["races"] = ALLIANCE_ONLY,
			}),
			q(53814, {	-- First Sergeant Steelfang (Faction Assault WQ)
				["races"] = ALLIANCE_ONLY,
			}),
			q(53278, {	-- Flourishing Riverbud
				["requireSkill"] = HERBALISM,
				["g"] = {
					i(163595),	-- Flourishing Riverbud (QI!)
				},
			}),
			q(53277, {	-- Flourishing Sea Stalks
				["requireSkill"] = HERBALISM,
				["g"] = {
					i(163588),	-- Flourishing Sea Stalk (QI!)
				},
			}),
			q(53875, {	-- Fogsail for a Day (Faction Assault WQ)
				["races"] = HORDE_ONLY,
			}),
			q(52144),	-- Foundry Meltdown
			q(53076),	-- Foundry Meltdown
			q(51654),	-- Fowlmouth
			q(51662),	-- Foxhollow Skyterror
			q(53188, {	-- Frozen Freestyle
				["races"] = ALLIANCE_ONLY,
			}),
			q(53699, {	-- Gate Crashers (Faction Assault WQ)
				["races"] = ALLIANCE_ONLY,
			}),
			q(51611),	-- Ghost of the Deep
			q(52120, {	-- Gnomish Azerite Extraction
				["races"] = ALLIANCE_ONLY,
			}),
			q(52119, {	-- Goblin Azerite Extraction
				["races"] = HORDE_ONLY,
			}),
			q(51318, {	-- Go For the Boat
				["races"] = ALLIANCE_ONLY,
			}),
			q(52757),	-- Grimestone Crimes
			q(51317, {	-- Grounding the Grimestone
				["races"] = ALLIANCE_ONLY,
			}),
			q(50299, {	-- Gryphon Wranglin'
				["races"] = ALLIANCE_ONLY,
				["g"] = {
					i(156928),	-- Tether Shot (QI!)
				},
			}),
			q(51844),	-- Gulliver
			q(52167, {	-- Hardcore Raiders
				["races"] = ALLIANCE_ONLY,
			}),
			q(54119, {	-- Hartford Sternbach
				["races"] = HORDE_ONLY,
			}),
			q(52145, {	-- Heave-Ho!
				["description"] = "This WQ doesn't show up on the map when active, plot waypoint to find the location!",
				["coord"] = { 77.10, 76.25, TIRAGARDE_SOUND },
				["g"] = {
					i(152667),	-- "Sea Dog" Grog (QI!)
				},
			}),
			q(51245, {	-- I'm a Lumberjack and I'm Okay
				["races"] = ALLIANCE_ONLY,
			}),
			q(54268, {	-- Impulsive Propulsion (Faction Assault WQ)
				["races"] = HORDE_ONLY,
				["g"] = {
					o(312155, {	-- Gallywix's Getaway Pack
						["coord"] = { 87.6, 50.7, TIRAGARDE_SOUND },
						["g"] = { i(165942) },	-- Gallywix's Getaway Pack (QI!)
					}),
				},
			}),
			q(51664),	-- Kulett the Ornery
			q(52760, {	-- Like Fish in a Barrel
				["races"] = HORDE_ONLY,
			}),
			q(50295, {	-- Like Pulling Teeth (A)
				["races"] = ALLIANCE_ONLY,
				["g"] = {
					i(161312),	-- Intact Wendigo Tooth (QI!)
				},
			}),
			q(52805, {	-- Like Pulling Teeth (H)
				["races"] = HORDE_ONLY,
				["g"] = {
					i(161312),	-- Intact Wendigo Tooth (QI!)
				},
			}),
			q(53759, {	-- Look Out Below! (Faction Assault WQ)
				["races"] = HORDE_ONLY,
			}),
			q(52124),	-- Losers Weepers
			q(51670),	-- Lumberjack Sentinel
			q(51895),	-- Maison the Portable
			q(51632),	-- Make Loh Go
			q(51659),	-- Merianae
			q(54112, {	-- Mistweaver Nian (Faction Assault WQ)
				["races"] = HORDE_ONLY,
			}),
			q(53994, {	-- Naga Attack!
				["groups"] = {
					i(165605),	-- Azsharan Medallion
				},
			}),
			q(50315, {	-- Not On the Itinerary
				["races"] = ALLIANCE_ONLY,
			}),
			petbattle(q(52430, {	-- Not So Bad Down Here
				["provider"] = { "n", 141077 },	-- Kwint
				["filterID"] = BATTLE_PETS,
			})),
			q(51843),	-- P4-N73R4
			q(51660),	-- Pack Leader Asenya
			q(51462),	-- Paratroopers
			q(50324, {	-- Picturesque Fizzsprings Resort
				["races"] = ALLIANCE_ONLY,
				["g"] = {
					i(157540),	-- Battered S.E.L.F.I.E. Camera (QI!)
				},
			}),
			q(51090, {	-- Picturesque Norwington Estate
				["races"] = ALLIANCE_ONLY,
				["g"] = {
					i(157540),	-- Battered S.E.L.F.I.E. Camera (QI!)
				},
			}),
			q(50164, {	-- Polly Want A Cracker?
				["races"] = ALLIANCE_ONLY,
				["g"] = {
					i(154878),	-- Rodrigo's Birdseed Biscuit (QI!)
				},
			}),
			q(51646, {	-- Polly Want A Cracker?
				["races"] = HORDE_ONLY,
				["g"] = {
					i(154878),	-- Rodrigo's Birdseed Biscuit (QI!)
				},
			}),
			q(51661),	-- Raging Swell
			q(51890),	-- Ranja the Last Chillpaw
			q(51566, {	-- Resurgence of the Beast
				["races"] = ALLIANCE_ONLY,
			}),
			q(53313, {	-- Rough Monelite
				["requireSkill"] = MINING,
				["g"] = {
					i(163625),	-- Rough Monelite (QI!)
				},
			}),
			q(51656),	-- Saurolisk Tamer Mugg
			q(52780),	-- Siege of Boralus: Breaking The Alliance
			q(52763),	-- Siege of Boralus: Breaking Their Ranks
			q(51626),	-- Shell Game
			q(51892),	-- Shiverscale the Toxic
			q(53331, {	-- Show-Off
				["races"] = ALLIANCE_ONLY,
				["g"] = {
					a(ach(12087)),	-- The Reining Champion
				},
			}),
			q(51463, {	-- Sky Drop Rescue
				["races"] = HORDE_ONLY,
			}),
			q(49994, {	-- Sliding with Style
				["races"] = ALLIANCE_ONLY,
			}),
			q(53189, {	-- Slippery Slopes
				["races"] = ALLIANCE_ONLY,
			}),
			q(52143, {	-- Smaller Haulers
				["races"] = ALLIANCE_ONLY,
			}),
			q(53315, {	-- Smooth Platinum
				["requireSkill"] = MINING,
				["g"] = {
					i(163627),	-- Smooth Platinum (QI!)
				},
			}),
			q(50977, {	-- Smuggler Shakedown
				["races"] = ALLIANCE_ONLY,
				["g"] = {
					i(159673),	-- Bootleg Weapon Crate (QI!)
				},
			}),
			q(52756, {	-- Snow Way Out
				["races"] = HORDE_ONLY,
			}),
			q(52804, {	-- Something Stirs in the Depths
				["races"] = HORDE_ONLY,
			}),
			q(50421, {	-- Sparring on the Spar
				["races"] = ALLIANCE_ONLY,
			}),
			q(51651),	-- Squacks
			q(51839),	-- Squirgle of the Depths
			q(51388, {	-- Stopping the Infestation
				["races"] = ALLIANCE_ONLY,
			}),
			petbattle(q(52751, {	-- Strange Looking Dogs
				["provider"] = { "n", 141479 },	-- Burly
				["filterID"] = BATTLE_PETS,
			})),
			q(54091, {	-- Strong Arm John (Faction Assault WQ)
				["races"] = HORDE_ONLY,
			}),
			q(52159, {	-- Swab This! (Alliance)
				["races"] = ALLIANCE_ONLY,
			}),
			q(53196, {	-- Swab This! (Horde)
				["races"] = HORDE_ONLY,
			}),
			q(51891),	-- Sythian the Swift
			q(51849),	-- Tempestria
			q(51894),	-- Tentulos the Drifter
			q(51655),	-- Teres
			petbattle(q(52471, {	-- That's a Big Carcass
				["provider"] = { "n", 141292 },	-- Delia Hanako
				["filterID"] = BATTLE_PETS,
			})),
			q(54251, {	-- The Ambassador (Faction Assault WQ)
				["races"] = HORDE_ONLY,
			}),
			q(51241, {	-- The Bear Witch Project
				["races"] = ALLIANCE_ONLY,
			}),
			q(55300),	-- The Cycle of Life
			q(51406, {	-- The Lord's Hunt
				["races"] = ALLIANCE_ONLY,
			}),
			q(51578, {	-- The Sea Runs Red
				["races"] = HORDE_ONLY,
			}),
			q(52010, {	-- The Tendrils of Fate (A)
				["races"] = ALLIANCE_ONLY,
			}),
			q(52056, {	-- The Tendrils of Fate (H)
				["races"] = HORDE_ONLY,
			}),
			q(51622, {	-- Tidal Teachings
				["races"] = HORDE_ONLY,
			}),
			q(54237, {	-- Togoth Cruelarm (Faction Assault WQ)
				["races"] = ALLIANCE_ONLY,
			}),
			q(51847),	-- Tort Jaw
			q(53078, {	-- Treasure in the Tides (H)
				["races"] = HORDE_ONLY,
				["g"] = {
					i(163099),	-- Proudmoore Supply Crate (QI!)
				},
			}),
			q(52155, {	-- Treasure in the Tides (A)
				["races"] = ALLIANCE_ONLY,
				["g"] = {
					i(163099),	-- Proudmoore Supply Crate (QI!)
				},
			}),
			a(q(53346, {	-- Trogg Tromping
				["g"] = {
					a(ach(13059)),	-- Drag Race
				},
			})),
			q(51657),	-- Twin-Hearted Construct
			petbattle(q(52455, {	-- Unbreakable
				["provider"] = { "n", 141215 },	-- Chitara
				["filterID"] = BATTLE_PETS,
			})),
			q(52752, {	-- Vigilant Lookouts
				["races"] = HORDE_ONLY,
				["g"] = {
					i(162448),	-- Daelin's Gate Dossier (QI!)
					i(162449),	-- Vigil Hill Documents (QI!)
				},
			}),
			q(53713, {	-- Wet Work: Bridgeport (Faction Assault WQ)
				["races"] = HORDE_ONLY,
			}),
			q(52475, {	-- Where Eagles Prey (Faction Assault WQ)
				["races"] = ALLIANCE_ONLY,
			}),
			q(50983, {	-- Work Order: Akunda's Bite
				["races"] = ALLIANCE_ONLY,
				["requireSkill"] = HERBALISM,
			}),
			q(52423, {	-- Work Order: Battle Flag: Phalanx Defense
				["races"] = ALLIANCE_ONLY,
				["requireSkill"] = TAILORING,
				["groups"] = {
					i(162444),	-- Pattern: Battle Flag: Phalanx Defense (Rank 3)
				},
			}),
			q(52331, {	-- Work Order: Demitri's Draught of Deception
				["races"] = ALLIANCE_ONLY,
				["requireSkill"] = ALCHEMY,
				["groups"] = {
					i(162257),	-- Recipe: Demitri's Draught of Deception (Rank 3)
				},
			}),
			q(52333, {	-- Work Order: Sea Mist Potion
				["races"] = ALLIANCE_ONLY,
				["requireSkill"] = ALCHEMY,
				["groups"] = {
					i(162259),	-- Recipe: Sea Mist Potion (Rank 3)
				},
			}),
			q(53772, {	-- Zagg Brokeneye (Faction Assault WQ)
				["races"] = ALLIANCE_ONLY,
			}),
		})),
	}),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.BFA, bubbleDownSelf({ ["timeline"] = { ADDED_8_0_1 } }, {
	m(KUL_TIRAS, {
		m(TIRAGARDE_SOUND, {
			n(WORLD_QUESTS, {
				q(54953),	-- Killing Adhara White
				q(55627),	-- triggered additionally when completing the WQ to kill P4-N73R4.  this is not the first-time kill tracking quest for the rare, so i'm not sure what it's for
			}),
		}),
	}),
})));