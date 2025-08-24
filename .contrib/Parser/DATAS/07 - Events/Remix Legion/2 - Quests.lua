-----------------------------------------------------
--     W O R L D   E V E N T S   M O D U L E       --
-----------------------------------------------------
root(ROOTS.WorldEvents, applyevent(EVENTS.REMIX_LEGION, n(REMIX_LEGION, bubbleDown({ ["timeline"] = { ADDED_11_2_5, REMOVED_LEGION_REMIX_END } }, {
	n(QUESTS, {
		q(89404, {	-- Time Crisis
			["qg"] = 241140,	-- Moratari
			["coord"] = { 72.4, 46.0, LEGION_DALARAN },
		}),
		q(89405, {	-- Mean Streets of Dalaran
			["sourceQuest"] =  89404,	-- Time Crisis
			["qg"] = 241740,	-- Archmage Khadgar <Mirror Image>
			["coord"] = { 67.6, 42.5, LEGION_DALARAN },
		}),
		q(89406, {	-- Seal and Protect
			["sourceQuest"] = 89405,	-- Mean Streets of Dalaran
			["qg"] = 241743,	-- Archmage Khadgar
			["coord"] = { 49.3, 47.6, LEGION_DALARAN },
		}),
		q(89407, {	-- Thrift
			["sourceQuest"] = 89406,	-- Seal and Protect
			["qg"] = 241744,	-- Momentus
			["coord"] = { 42.8, 27.8, LEGION_DALARAN },
			["groups"] = {
				o(527833, {	-- Archeology Chest
					["coord"] = { 40.9, 24.0, LEGION_DALARAN },
					["groups"] = { i(243607) },	-- Dusty Stone Tablet (QI!)
				}),
				o(529397, {	-- Curio Lockbox
					["coord"] = { 38.8, 39.9, LEGION_DALARAN },
					["groups"] = { i(243601) },	-- Curious Curio (QI!)
				}),
				o(529396, {	-- Weapon Crate
					["coord"] = { 46.1, 25.4, LEGION_DALARAN },
					["groups"] = { i(243604) },	-- Bent and Battered Blade (QI!)
				}),
			},
		}),
		q(89408, {	-- Threadbare
			["sourceQuest"] = 89406,	-- Seal and Protect
			["qg"] = 241744,	-- Momentus
			["coord"] = { 42.8, 27.8, LEGION_DALARAN },
		}),
		q(89409, {	-- Infinite Bronze
			["sourceQuests"] = {
				89407,	-- Thrift
				89408,	-- Threadbare
			},
			["qg"] = 241744,	-- Momentus
			["coord"] = { 42.8, 27.8, LEGION_DALARAN },
		}),
		q(90659, {	-- Something Borrowed
			["description"] = "You can get one Artifact Weapon of your chosice (based on your Specialization). Others can be obtained through Order Hall Campaign.",
			["sourceQuest"] = 89409,	-- Infinite Bronze
			["qg"] = 241744,	-- Momentus
			["coord"] = { 42.8, 27.8, LEGION_DALARAN },
			["groups"] = {
				cl(DEATHKNIGHT, {
					i(242563),	-- Apocalypse
					i(242559),	-- Blades of the Fallen Prince
					i(242560),	-- Blades of the Fallen Prince
					i(242562),	-- Maw of the Damned
				}),
				cl(DEMONHUNTER, {
					i(242576),	-- Aldrachi Warblades
					i(242577),	-- Aldrachi Warblades
					i(242556),	-- Twinblades of the Deceiver
					i(242557),	-- Twinblades of the Deceiver
				}),
				cl(DRUID, {
					i(242569),	-- Claws of Ursoc
					i(242570),	-- Claws of Ursoc
					i(242579),	-- Fangs of Ashamane
					i(242580),	-- Fangs of Ashamane
					i(242561),	-- G'Hanir, the Mother Tree
					i(242578),	-- Scythe of Elune
				}),
				cl(HUNTER, {
					i(242566),	-- Talonclaw
					-- Kick the intruder. Both are marked as '[DNT] Remix Artifact Weapon'
					i(246013),	-- Thas'dorah, Legacy of the Windrunners
					i(242574),	-- Thas'dorah, Legacy of the Windrunners
					i(242581),	-- Titanstrike
				}),
				cl(MAGE, {
					i(242558),	-- Aluneth
					i(242582),	-- Ebonchill
					i(242568),	-- Felo'melorn
					i(242603),	-- Heart of the Phoenix
				}),
				cl(MONK, {
					i(242596),	-- Fu Zan, the Wanderer's Companion
					i(242595),	-- Sheilun, Staff of the Mists
					i(242597),	-- Fists of the Heavens
					i(242601),	-- Fists of the Heavens
				}),
				cl(PALADIN, {
					i(242555),	-- Ashbringer
					i(242571),	-- The Silver Hand
					i(242583),	-- Truthguard
					i(242584),	-- Oathseeker
				}),
				cl(PRIEST, {
					i(242585),	-- Light's Wrath
					i(242573),	-- T'uure, Beacon of the Naaru
					i(242575),	-- Xal'atath, Blade of the Black Empire
					i(242602),	-- Secrets of the Void
				}),
				cl(ROGUE, {
					i(242564),	-- Fangs of the Devourer
					i(242565),	-- Fangs of the Devourer
					i(242588),	-- The Dreadblades
					i(242604),	-- The Dreadblades
					i(242586),	-- The Kingslayers
					i(242587),	-- The Kingslayers
				}),
				cl(SHAMAN, {
					i(242567),	-- Doomhammer
					i(242589),	-- Fury of the Stonemother
					i(242591),	-- Sharas'dal, Scepter of Tides
					i(242592),	-- Shield of the Sea Queen
					i(242593),	-- The Fist of Ra-den
					i(242594),	-- The Highkeeper's Ward
				}),
				cl(WARLOCK, {
					i(242599),	-- Ulthalesh, the Deadwind Harvester
					i(242598),	-- Scepter of Sargeras
					i(242600),	-- Skull of the Man'ari
					i(242605),	-- Spine of Thal'kiel
				}),
				cl(WARRIOR, {
					i(237749),	-- Scale of the Earth-Warder
					i(237748),	-- Scaleshard
					i(236772),	-- Strom'kar, the Warbreaker
					i(237746),	-- Warswords of the Valarjar
					i(237747),	-- Warswords of the Valarjar
				}),
			},
		}),
		q(90901, {	-- As A Matter of Artifact
			["sourceQuest"] = 90659,	-- Something Borrowed
			["qg"] = 241744,	-- Momentus
			["coord"] = { 42.8, 27.8, LEGION_DALARAN },
		}),
		q(89412, {	-- Get Plenty of Exorcise
			["sourceQuest"] = 90659,	-- Something Borrowed
			["qg"] = 241744,	-- Momentus
			["coord"] = { 42.8, 27.8, LEGION_DALARAN },
		}),
		q(89411, {	-- Scavenger Hunting
			["sourceQuest"] = 90659,	-- Something Borrowed
			["qg"] = 241745,	-- Erus
			["coord"] = { 42.3, 27.2, LEGION_DALARAN },
			["groups"] = { i(241211) },	-- Legion Armor Scraps (QI!)
		}),
		q(89413, {	-- Obliterate, Then Iterate
			["sourceQuest"] = 89411,	-- Scavenger Hunting
			["qg"] = 241745,	-- Erus
			["coord"] = { 42.3, 27.2, LEGION_DALARAN },
			["groups"] = { i(251901) },	-- Legion Armor Scraps (PQI!)
		}),
		q(89414, {	-- Not A Memento Too Soon
			["sourceQuest"] = 89413,	-- Obliterate, Then Iterate
			["qg"] = 241744,	-- Momentus
			["coord"] = { 42.8, 27.8, LEGION_DALARAN },
		}),
		q(89415, {	-- Storm the Citadel
			["sourceQuest"] = 89414,	-- Not A Memento Too Soon
			["qg"] = 241743,	-- Archmage Khadgar
			["coord"] = { 49.3, 47.6, LEGION_DALARAN },
		}),
		q(89416, {	-- Eternal Gratitude
			["sourceQuest"] = 89415,	-- Storm the Citadel
			["qg"] = 241140,	-- Moratari
			["coords"] = {
				{ 51.2, 48.2, LEGION_DALARAN },
				{ 72.4, 46.0, LEGION_DALARAN },
			},
			["groups"] = {
				-- Spell: 1248972 - Clean Streets of Dalaran
			},
		}),
		------ Stay awhile and listen ------
		--hqt(???, {	-- Stay awhile and listen: Eternus
		--	["name"] = "Stay awhile and listen: Eternus",
		--	["description"] = "Dialogue becomes available after you accept 'Eternal Gratitude' (89416).",
		--	["sourceQuest"] = 89415,	-- Storm the Citadel
		--	["qg"] = 241748,	-- Eternus
		--	["coord"] = { 45.7, 68.5, BROKEN_ISLES },
		--}),
		--
		q(89417, {	-- Infinite Meetings
			["sourceQuest"] = 89416,	-- Eternal Gratitude
			["qg"] = 241748,	-- Eternus
			["coord"] = { 45.7, 68.5, BROKEN_ISLES },
		}),
		q(91955, {	-- Just Between Us
			["sourceQuest"] = 89416,	-- Eternal Gratitude
			["qg"] = 241142,	-- Momentus
			["coord"] = { 45.8, 68.0, BROKEN_ISLES },
			["groups"] = {
				-- Spell: 1251776 - Heap of Bronze
				i(242617, {	-- Curious Simulacrum
					i(247808),	-- Bronze Simulacrum (QS!)
				}),
				-- Exo Note: Simulacrum is obtained during the regular Order Hall quest chain for the Artifact Weapon that you have already selected and obtained during the quest 'Something Borrowed'.
				-- eg. If, as a Paladin, you took Ashbringer, instead of Ashbringer you will receive Simulacrum during the quest chain for the weapon.
				-- Instead of editing (and disturbing) over 30 Order Hall quests, I placed it here. If you think there is a better place for it, please move it.
				-- Upon inspecting, Curious turns into Bronze Simulacrum and gives you a quest. This is observed on a first playthrough with a DH. Maybe something is different on other Classes.
			},
		}),
		q(92688, {	-- Bronze Simulacrum
			["provider"] = { "i", 247808 },	-- Bronze Simulacrum (QS!)
		}),
		q(89418, {	-- A Fixed Point in Time
			["sourceQuest"] = 89417,	-- Infinite Meetings
			["qg"] = 241748,	-- Eternus
			["coord"] = { 45.7, 68.5, BROKEN_ISLES },
			["groups"] = {
				-- Spell: 1252745 - Infinite Knowledge
			},
		}),
		q(90995, {	-- The Future of The Fel Hammer
			["sourceQuest"] = 89418,	-- A Fixed Point in Time
			["qg"] = 243948,	-- Moratari
			["coord"] = { 72.1, 41.7, LEGION_DALARAN },
		}),
		q(90754, {	-- Skyriding
			["sourceQuest"] = 89418,	-- A Fixed Point in Time
			["qg"] = 243948,	-- Moratari
			["coord"] = { 72.1, 41.7, LEGION_DALARAN },
		}),
		q(80013, {	-- How to Glide with Your Dragon
			["sourceQuest"] = 90754,	-- Skyriding
			["qg"] = 218469,	-- Lord Andestrasz
			["coord"] = { 65.3, 37.2, THE_JADE_FOREST },
			["groups"] = { i(216712) },	-- Bronze Timepiece (PQI!)
		}),
		q(80015, {	-- How to Dive with Your Dragon
			["sourceQuest"] = 80013,	-- How to Glide with Your Dragon
			["qg"] = 218469,	-- Lord Andestrasz
			["coord"] = { 65.3, 37.2, THE_JADE_FOREST },
			["groups"] = { i(216712) },	-- Bronze Timepiece (PQI!)
		}),
		q(80016, {	-- The Need For Higher Velocities
			["sourceQuest"] = 80015,	-- How to Dive with Your Dragon
			["qg"] = 218469,	-- Lord Andestrasz
			["coord"] = { 65.3, 37.2, THE_JADE_FOREST },
			["groups"] = { i(216712) },	-- Bronze Timepiece (PQI!)
		}),
		q(80017, {	-- The Need For Higher Altitudes
			["sourceQuest"] = 80016,	-- The Need For Higher Velocities
			["qg"] = 218469,	-- Lord Andestrasz
			["coord"] = { 65.3, 37.2, THE_JADE_FOREST },
			["groups"] = { i(216712) },	-- Bronze Timepiece (PQI!)
		}),
		q(80018, {	-- Fashionable Flying
			["sourceQuest"] = 80017,	-- The Need For Higher Altitudes
			["qg"] = 218469,	-- Lord Andestrasz
			["coord"] = { 65.3, 37.2, THE_JADE_FOREST },
		}),
		q(90755, {	-- Time Flies
			["sourceQuest"] = 80018,	-- Fashionable Flying
			["qg"] = 218469,	-- Lord Andestrasz
			["coord"] = { 65.3, 37.2, THE_JADE_FOREST },
		}),
		q(91437, {	-- Call for Participants
			["description"] = "Quest pops-up into your log when you visit Bazaar after completing 'Time Flies'.",
			["sourceQuest"] = 90755,	-- Time Flies
		}),
		q(91639, {	-- Embrace Your Own Legend
			["sourceQuest"] = 90755,	-- Time Flies
			["qg"] = 241748,	-- Eternus
			["coord"] = { 45.7, 68.5, BROKEN_ISLES },
		}),
		q(91721, {	-- Surpass Your Own Legend
			["sourceQuest"] = 91639,	-- Embrace Your Own Legend
			["qg"] = 241748,	-- Eternus
			["coord"] = { 45.7, 68.5, BROKEN_ISLES },
		}),
		q(92430, {	-- Embracing the Infinite Chaos
			["description"] = "Quest pops-up when you hit Level 25.",
			["lvl"] = 25,
			-- Exo Note: Will this be a Breadcrumb for 'Infinite Chaos'? I got it on my main AFTER having 'Infinite Chaos' in my log.
		}),
		q(91061, {	-- Infinite Chaos
			["description"] = "Quest becomes available after you enable 'Heroic World Tier'.",
			["qg"] = 241748,	-- Eternus
			["coord"] = { 45.7, 68.5, BROKEN_ISLES },
			["groups"] = { i(246808) },	-- Experiment Instructions (PQI!)
		}),
		q(90892, {	-- Clearing the Skies: A Fel of a Time
			["description"] = "Quest pops-up when you fly through first 'Mote of Bronze' in the zone.",
			-- Exo note: Got this in Azsuna. I don't know if this quest is zone-specific. Will test on another character in other zone.
		}),
		q(92563, {	-- Awoken by Accessory
			["description"] = "Quest pops-up when you obtain and equip your first jewelry (Trinket, Ring, Necklace).",
		}),
		q(91613, {	-- Infinite Research Promotion: Timely Assistant
			["description"] = "Quest pops-up after you complete 5 'Infinite Research' quests.",
			--["sourceQuest"] = ??,
			["qg"] = 241748,	-- Eternus
			["coord"] = { 45.7, 68.5, BROKEN_ISLES },
		}),
		q(92855, {	-- Infinite Research Promotion: Timely Assistant
			["description"] = "Grants a random ring, necklace, or trinket.",
			--["sourceQuest"] = ??,
			["qg"] = 241189,	-- Lidamorrutu
			["coord"] = { 45.9, 68.0, BROKEN_ISLES },
			["isDaily"] = true,
		}),
		q(91631, {	-- Epoch Progress
			["qg"] = 243853,	-- Lidamorrutu
			["coord"] = { 45.6, 67.7, BROKEN_ISLES },
			["lvl"] = 40,
			["groups"] = { i(245553), },	-- Heroic Cache of Infinite Treasure
		}),
	}),
}))));
