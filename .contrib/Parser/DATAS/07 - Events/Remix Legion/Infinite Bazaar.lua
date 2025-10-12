-----------------------------------------------------
--     W O R L D   E V E N T S   M O D U L E       --
-----------------------------------------------------
local BRONZE = 3252;

root(ROOTS.WorldEvents, applyevent(EVENTS.REMIX_LEGION, n(REMIX_LEGION, {
	n(INFINITE_BAZAAR, {
		["coord"] = { 45.7, 68.1, BROKEN_ISLES },
		["groups"] = {
			--[[n(241145, {	-- Aeonicus <Raid Finder Apparel>
				["coord"] = { 45.4, 68.0, BROKEN_ISLES },
				["groups"] = bubbleDownFiltered({
					["cost"] = {{ "c", BRONZE, 20000 }},
				},FILTERFUNC_itemID,{
					clWithoutLock(DEATHKNIGHT, {
						iensemble(241551),	-- Ensemble: Dreadwyrm Battleplate
						------ Locked behind: Legionfall ------
						iensemble(241503),	-- Ensemble: Gravewarden Armaments
						------ Locked behind: Argus Eternal ------
						iensemble(241456),	-- Ensemble: Dreadwake Armor
					}),
					clWithoutLock(DEMONHUNTER, {
						iensemble(241575),	-- Ensemble: Vestment of Second Sight
						------ Locked behind: Legionfall ------
						iensemble(241527),	-- Ensemble: Demonbane Armor
						------ Locked behind: Argus Eternal ------
						iensemble(241480),	-- Ensemble: Felreaper Vestments
					}),
					clWithoutLock(DRUID, {
						iensemble(241571),	-- Ensemble: Garb of the Astral Warden
						------ Locked behind: Legionfall ------
						iensemble(241523),	-- Ensemble: Stormheart Raiment
						------ Locked behind: Argus Eternal ------
						iensemble(241476),	-- Ensemble: Bearmantle Battlegear
					}),
					clWithoutLock(HUNTER, {
						iensemble(241559),	-- Ensemble: Eagletalon Battlegear
						------ Locked behind: Legionfall ------
						iensemble(241510),	-- Ensemble: Wildstalker Armor
						------ Locked behind: Argus Eternal ------
						iensemble(241463),	-- Ensemble: Serpentstalker Guise
					}),
					clWithoutLock(MAGE, {
						iensemble(241587),	-- Ensemble: Regalia of Everburning Knowledge
						------ Locked behind: Legionfall ------
						iensemble(241539),	-- Ensemble: Regalia of the Arcane Tempest
						------ Locked behind: Argus Eternal ------
						iensemble(241490),	-- Ensemble: Runebound Regalia
					}),
					clWithoutLock(MONK, {
						iensemble(241568),	-- Ensemble: Vestments of Enveloped Dissonance
						------ Locked behind: Legionfall ------
						iensemble(241518),	-- Ensemble: Xuen's Battlegear
						------ Locked behind: Argus Eternal ------
						iensemble(241472),	-- Ensemble: Chi-Ji's Battlegear
					}),
					clWithoutLock(PALADIN, {
						iensemble(241548),	-- Ensemble: Battleplate of the Highlord
						------ Locked behind: Legionfall ------
						iensemble(241499),	-- Ensemble: Radiant Lightbringer Armor
						------ Locked behind: Argus Eternal ------
						iensemble(241452),	-- Ensemble: Light's Vanguard Battleplate
					}),
					clWithoutLock(PRIEST, {
						iensemble(241583),	-- Ensemble: Vestments of the Purifier
						------ Locked behind: Legionfall ------
						iensemble(241535),	-- Ensemble: Vestments of Blind Absolution
						------ Locked behind: Argus Eternal ------
						iensemble(241486),	-- Ensemble: Gilded Seraph's Raiment
					}),
					clWithoutLock(ROGUE, {
						iensemble(241563),	-- Ensemble: Doomblade Battlegear
						------ Locked behind: Legionfall ------
						iensemble(241515),	-- Ensemble: Fanged Slayer's Armor
						------ Locked behind: Argus Eternal ------
						iensemble(241466),	-- Ensemble: Regalia of the Dashing Scoundrel
					}),
					clWithoutLock(SHAMAN, {
						iensemble(241556),	-- Ensemble: Regalia of Shackled Elements
						------ Locked behind: Legionfall ------
						iensemble(241507),	-- Ensemble: Regalia of the Skybreaker
						------ Locked behind: Argus Eternal ------
						iensemble(241458),	-- Ensemble: Garb of Venerated Spirits
					}),
					clWithoutLock(WARLOCK, {
						iensemble(241579),	-- Ensemble: Legacy of Azj'aqir
						------ Locked behind: Legionfall ------
						iensemble(241531),	-- Ensemble: Diabolic Raiment
						------ Locked behind: Argus Eternal ------
						iensemble(241482),	-- Ensemble: Grim Inquisitor's Regalia
					}),
					clWithoutLock(WARRIOR, {
						iensemble(241544),	-- Ensemble: Warplate of the Obsidian Aspect
						------ Locked behind: Legionfall ------
						iensemble(241494),	-- Ensemble: Titanic Onslaught Armor
						------ Locked behind: Argus Eternal ------
						iensemble(241447),	-- Ensemble: Juggernaut Battlegear
					}),
				}),
			}),--]]
			n(241184, {	-- Agos the Silent <Lost and Found Apparel>
				["coord"] = { 45.5, 67.7, BROKEN_ISLES },
				["groups"] = bubbleDownFiltered({
					["cost"] = {{ "c", BRONZE, 15000 }},
				},FILTERFUNC_itemID,{
					filter(LEATHER, {
						iensemble(241354),	-- Ensemble: Emerald Drake Hunter's Kit
						iensemble(241404),	-- Ensemble: Seaborne Brigandine
						iensemble(241405),	-- Ensemble: Skyborne Brigandine
					}),
					filter(MAIL, {
						iensemble(241398),	-- Ensemble: Earthbreaker Dragonscale
						iensemble(241401),	-- Ensemble: Sunborne Runemail
					}),
					filter(PLATE, {
						iensemble(241394),	-- Ensemble: Val'kyr's Warharness
						iensemble(241393),	-- Ensemble: Winged Plate of the Valhalas Champion
					}),
				}),
			}),
			n(241147, {	-- Arturos <Dungeon Apparel>
				["coord"] = { 45.4, 68.0, BROKEN_ISLES },
				["groups"] = bubbleDownFiltered({
					["cost"] = {{ "c", BRONZE, 15000 }},
				},FILTERFUNC_itemID,{
					filter(CLOTH, {
						iensemble(241427),	-- Ensemble: Sanguine Oath Vestments
						iensemble(241439),	-- Ensemble: Seawitch's Terrorcloth
						iensemble(241428),	-- Ensemble: Vesture of Borrowed Souls
						------ Locked behind: Legionfall ------
						iensemble(241426),	-- Ensemble: Raiment of Night Eternal
					}),
					filter(LEATHER, {
						iensemble(241425),	-- Ensemble: Bindings of Hungering Flesh
						iensemble(241436),	-- Ensemble: Nighthide Coat
						iensemble(241424),	-- Ensemble: Thirsting Hides
						------ Locked behind: Legionfall ------
						iensemble(241423),	-- Ensemble: Guise of the Nightstalker
					}),
					filter(MAIL, {
						iensemble(241422),	-- Ensemble: Armor of the Skyfather's Chosen
						iensemble(241421),	-- Ensemble: Ravensteel Mail
						------ Locked behind: Legionfall ------
						iensemble(241420),	-- Ensemble: Scalemail of Devouring Night
					}),
					filter(PLATE, {
						iensemble(241418),	-- Ensemble: Bloodforged Battleplate
						iensemble(241434),	-- Ensemble: Chains of Nightmare's Embrace
						iensemble(241419),	-- Ensemble: Honorforged Valorplate
						iensemble(241431),	-- Ensemble: Suramar Silver Plating
						------ Locked behind: Legionfall ------
						iensemble(241417),	-- Ensemble: Nightforged Felplate
					}),
				}),
			}),
			--[[
			n(251042, {	-- Domelius <Housing Vendor>
				["description"] = "You can buy additional copies of Housing Decor after receiving the first copy from the respective Achievement.",
				["coord"] = { 45.9, 67.8, BROKEN_ISLES },
				["groups"] = sharedData({
					["timeline"] = { ADDED_12_0_0 },	-- EXO NOTE: If wrong, change back to 11_2_7. All Decor so far has been datamined for 12.0.0. Same for the items added under respective Achievements.
				}, {
					i(XXXXXX, {	-- Altar of the Corrupted Flames (DECOR!)
						--TODO: VERIFY IF THIS IS CORRECT ACHIEVEMENT
						["sourceAchievement"] = 42624,	-- Broken Isles World Quests I
						["cost"] = {{ "c", BRONZE, 30000 }},
					}),
					i(XXXXXX, {	-- Corruption Pit (DECOR!)
						["sourceAchievement"] = 42321,	-- Legion Remix Raids
						["cost"] = {{ "c", BRONZE, 30000 }},
					}),
					i(XXXXXX, {	-- Demonic Storage Chest (DECOR!)
						["sourceAchievement"] = 42655,	-- The Armies of Legionfall
						["cost"] = {{ "c", BRONZE, 5000 }},
					}),
					i(XXXXXX, {	-- Eredar Lord’s Fel Torch (DECOR!)
						["sourceAchievement"] = 42627,	-- Argussian Reach
						["cost"] = {{ "c", BRONZE, 5000 }},
					}),
					i(XXXXXX, {	-- Fel Fountain (DECOR!)
						["sourceAchievement"] = 42689,	-- Timeworn Keystone Master
						["cost"] = {{ "c", BRONZE, 30000 }},
					}),
					i(XXXXXX, {	-- Hanging Felsteel Cage (DECOR!)
						["sourceAchievement"] = 42547,	-- Highmountain Tribe
						["cost"] = {{ "c", BRONZE, 5000 }},
					}),
					i(XXXXXX, {	-- Hanging Felsteel Chain (DECOR!)
						--TODO: VERIFY IF THIS IS CORRECT ACHIEVEMENT
						["sourceAchievement"] = 42673,	-- Defending the Broken Isles I
						["cost"] = {{ "c", BRONZE, 5000 }},
					}),
					i(XXXXXX, {	-- Large Legion Candle (DECOR!)
						["sourceAchievement"] = 42628,	-- The Nightfallen
						["cost"] = {{ "c", BRONZE, 2500 }},
					}),
					i(XXXXXX, {	-- Legion’s Fel Brazier (DECOR!)
						["sourceAchievement"] = 42619,	-- Dreamweavers
						["cost"] = {{ "c", BRONZE, 5000 }},
					}),
					i(XXXXXX, {	-- Legion’s Fel Torch (DECOR!)
						--TODO: VERIFY IF THIS IS CORRECT ACHIEVEMENT
						["sourceAchievement"] = 61061,	-- Power of the Obelisks I
						["cost"] = {{ "c", BRONZE, 5000 }},
					}),
					i(XXXXXX, {	-- Legion’s Holo-Communicator (DECOR!)
						["sourceAchievement"] = 42692,	-- Broken Isles Dungeoneer
						["cost"] = {{ "c", BRONZE, 30000 }},
					}),
					i(XXXXXX, {	-- Legion Torture Rack (DECOR!)
						--TODO: VERIFY IF THIS IS CORRECT ACHIEVEMENT
						["sourceAchievement"] = 61057,	-- Heroic Broken Isles World Quests I
						["cost"] = {{ "c", BRONZE, 10000 }},
					}),
					i(XXXXXX, {	-- Sentinel’s Moonwing Gaze (DECOR!)
						["sourceAchievement"] = 61218,	-- The Wardens
						["cost"] = {{ "c", BRONZE, 30000 }},
					}),
					i(XXXXXX, {	-- Small Legion Candle (DECOR!)
						["sourceAchievement"] = 42628,	-- The Nightfallen
						["cost"] = {{ "c", BRONZE, 2500 }},
					}),
					i(XXXXXX, {	-- Tome of the Corrupt (DECOR!)
						["sourceAchievement"] = 42318,	-- Court of Farondis
						["cost"] = {{ "c", BRONZE, 10000 }},
					}),
					i(XXXXXX, {	-- Vertical Felsteel Chain (DECOR!)
						--TODO: VERIFY IF THIS IS CORRECT ACHIEVEMENT
						["sourceAchievement"] = 42673,	-- Defending the Broken Isles I
						["cost"] = {{ "c", BRONZE, 5000 }},
					}),
					i(XXXXXX, {	-- Vrykul Lord’s Throne (DECOR!)
						["sourceAchievement"] = 42658,	-- Valarjar
						["cost"] = {{ "c", BRONZE, 20000 }},
					}),
				}),
			}),
			--]]
			--[[n(241143, {	-- Durus <Normal Raid Apparel>
				["coord"] = { 45.4, 67.9, BROKEN_ISLES },
				["groups"] = bubbleDownFiltered({
					["cost"] = {{ "c", BRONZE, 20000 }},
				},FILTERFUNC_itemID,{
					clWithoutLock(DEATHKNIGHT, {
						iensemble(241550),	-- Ensemble: Dreadwyrm Battleplate
						------ Locked behind: Legionfall ------
						iensemble(241504),	-- Ensemble: Gravewarden Armaments
						------ Locked behind: Argus Eternal ------
						iensemble(241455),	-- Ensemble: Dreadwake Armor
					}),
					clWithoutLock(DEMONHUNTER, {
						iensemble(241577),	-- Ensemble: Vestment of Second Sight
						------ Locked behind: Legionfall ------
						iensemble(241528),	-- Ensemble: Demonbane Armor
						------ Locked behind: Argus Eternal ------
						iensemble(241478),	-- Ensemble: Felreaper Vestments
					}),
					clWithoutLock(DRUID, {
						iensemble(241572),	-- Ensemble: Garb of the Astral Warden
						------ Locked behind: Legionfall ------
						iensemble(241522),	-- Ensemble: Stormheart Raiment
						------ Locked behind: Argus Eternal ------
						iensemble(241474),	-- Ensemble: Bearmantle Battlegear
					}),
					clWithoutLock(HUNTER, {
						iensemble(241561),	-- Ensemble: Eagletalon Battlegear
						------ Locked behind: Legionfall ------
						iensemble(241511),	-- Ensemble: Wildstalker Armor
						------ Locked behind: Argus Eternal ------
						iensemble(241462),	-- Ensemble: Serpentstalker Guise
					}),
					clWithoutLock(MAGE, {
						iensemble(241588),	-- Ensemble: Regalia of Everburning Knowledge
						------ Locked behind: Legionfall ------
						iensemble(241538),	-- Ensemble: Regalia of the Arcane Tempest
						------ Locked behind: Argus Eternal ------
						iensemble(241492),	-- Ensemble: Runebound Regalia
					}),
					clWithoutLock(MONK, {
						iensemble(241567),	-- Ensemble: Vestments of Enveloped Dissonance
						------ Locked behind: Legionfall ------
						iensemble(241520),	-- Ensemble: Xuen's Battlegear
						------ Locked behind: Argus Eternal ------
						iensemble(241471),	-- Ensemble: Chi-Ji's Battlegear
					}),
					clWithoutLock(PALADIN, {
						iensemble(241546),	-- Ensemble: Battleplate of the Highlord
						------ Locked behind: Legionfall ------
						iensemble(241498),	-- Ensemble: Radiant Lightbringer Armor
						------ Locked behind: Argus Eternal ------
						iensemble(241450),	-- Ensemble: Light's Vanguard Battleplate
					}),
					clWithoutLock(PRIEST, {
						iensemble(241584),	-- Ensemble: Vestments of the Purifier
						------ Locked behind: Legionfall ------
						iensemble(241536),	-- Ensemble: Vestments of Blind Absolution
						------ Locked behind: Argus Eternal ------
						iensemble(241488),	-- Ensemble: Gilded Seraph's Raiment
					}),
					clWithoutLock(ROGUE, {
						iensemble(241564),	-- Ensemble: Doomblade Battlegear
						------ Locked behind: Legionfall ------
						iensemble(241514),	-- Ensemble: Fanged Slayer's Armor
						------ Locked behind: Argus Eternal ------
						iensemble(241467),	-- Ensemble: Regalia of the Dashing Scoundrel
					}),
					clWithoutLock(SHAMAN, {
						iensemble(241554),	-- Ensemble: Regalia of Shackled Elements
						------ Locked behind: Legionfall ------
						iensemble(241508),	-- Ensemble: Regalia of the Skybreaker
						------ Locked behind: Argus Eternal ------
						iensemble(241460),	-- Ensemble: Garb of Venerated Spirits
					}),
					clWithoutLock(WARLOCK, {
						iensemble(241580),	-- Ensemble: Legacy of Azj'aqir
						------ Locked behind: Legionfall ------
						iensemble(241530),	-- Ensemble: Diabolic Raiment
						------ Locked behind: Argus Eternal ------
						iensemble(241483),	-- Ensemble: Grim Inquisitor's Regalia
					}),
					clWithoutLock(WARRIOR, {
						iensemble(241542),	-- Ensemble: Warplate of the Obsidian Aspect
						------ Locked behind: Legionfall ------
						iensemble(241496),	-- Ensemble: Titanic Onslaught Armor
						------ Locked behind: Argus Eternal ------
						iensemble(241448),	-- Ensemble: Juggernaut Battlegear
					}),
				}),
			}),--]]
			n(246030, {	-- Freddie Threads <Discount Cloak Dealer>
				["coord"] = { 45.4, 67.8, BROKEN_ISLES },
				["groups"] = {
					filter(CLOAKS, {
						iensemble(242231, {	-- Ensemble: Cloaks of the Fel Battler
							["cost"] = {{ "c", BRONZE, 2000 }},
						}),
						iensemble(242240, {	-- Ensemble: Cloaks of the Green Mountains
							["cost"] = {{ "c", BRONZE, 4000 }},
						}),
						iensemble(242232, {	-- Ensemble: Cloaks of the Ironskin Gladiator
							["cost"] = {{ "c", BRONZE, 8000 }},
						}),
						iensemble(241592, {	-- Ensemble: Cloaks of the Lost Combatant
							["cost"] = {{ "c", BRONZE, 8000 }},
						}),
						iensemble(241593, {	-- Ensemble: Cloaks of the Lost Gladiator
							["cost"] = {{ "c", BRONZE, 4000 }},
						}),
						iensemble(242233, {	-- Ensemble: Cloaks of Silken Knowledge
							["cost"] = {{ "c", BRONZE, 6000 }},
						}),
						iensemble(242234, {	-- Ensemble: Dalaran's Finest Silken Cloaks
							["cost"] = {{ "c", BRONZE, 6000 }},
						}),
						iensemble(242229, {	-- Ensemble: Druidic Fur Drapes
							["cost"] = {{ "c", BRONZE, 2000 }},
						}),
						iensemble(241591, {	-- Ensemble: Legion Hunter's Capes
							["cost"] = {{ "c", BRONZE, 6000 }},
						}),
						iensemble(235630, {	-- Ensemble: Runespeaker Wraps
							["cost"] = {{ "c", BRONZE, 4000 }},
						}),
						iensemble(242228, {	-- Ensemble: Shrouds of Azj'Aqir
							["cost"] = {{ "c", BRONZE, 8000 }},
						}),
						iensemble(242230, {	-- Ensemble: Shrouds of the Lost Deathwyrms
							["cost"] = {{ "c", BRONZE, 8000 }},
						}),
						iensemble(241590, {	-- Ensemble: Stormborne Wraps
							["cost"] = {{ "c", BRONZE, 4000 }},
						}),
						------ Locked behind: Legionfall ------
						iensemble(242235, {	-- Ensemble: Drapes of Devouring Night
							["cost"] = {{ "c", BRONZE, 6000 }},
						}),
						------ Locked behind: Argus Eternal ------
						iensemble(242237, {	-- Ensemble: Argussian Demonsbane Cloaks
							["cost"] = {{ "c", BRONZE, 6000 }},
						}),
						iensemble(242238, {	-- Ensemble: Cloaks of the Antoran Guard
							["cost"] = {{ "c", BRONZE, 8000 }},
						}),
						iensemble(242236, {	-- Ensemble: Drapes of Eredar Finery
							["cost"] = {{ "c", BRONZE, 6000 }},
						}),
						iensemble(242239, {	-- Ensemble: Eredar Battle Capes
							["cost"] = {{ "c", BRONZE, 6000 }},
						}),
					}),
				},
			}),
			n(241186, {	-- Grandmaster Jakkus <Class Mounts>
				["coord"] = { 45.8, 68.2, BROKEN_ISLES },
				["groups"] = bubbleDownFiltered({
					["cost"] = {{ "c", BRONZE, 20000 }},
				},FILTERFUNC_itemID,{
					clWithoutLock(DEATHKNIGHT, {
						i(252954),	-- Felscorned Reins of the Vilebrood Vanquisher (MOUNT!)
					}),
					clWithoutLock(DEMONHUNTER, {
						i(253013),	-- Slayer's Reins of the Felscorned Shrieker (MOUNT!)
					}),
					clWithoutLock(DRUID, {
						i(253024),	-- Feldruid's Scornwing Idol (MOUNT!)
					}),
					clWithoutLock(HUNTER, {
						i(253025),	-- Reins of the Felscorned Wolfhawk (MOUNT!)
					}),
					clWithoutLock(MAGE, {
						i(253026),	-- Archmage's Felscorned Disc (MOUNT!)
					}),
					clWithoutLock(MONK, {
						i(253027),	-- Felscorned Grandmaster's Bell (MOUNT!)
					}),
					clWithoutLock(PALADIN, {
						i(253028),	-- Reins of the Highlord's Felscorned Charger (MOUNT!)
					}),
					clWithoutLock(PRIEST, {
						i(253029),	-- Felscorned Seeker's Whistle (MOUNT!)
					}),
					clWithoutLock(ROGUE, {
						i(253030),	-- Shadowblade's Reins of Felscorned Portent (MOUNT!)
					}),
					clWithoutLock(SHAMAN, {
						i(253031),	-- Felscorned Tempest Totem (MOUNT!)
					}),
					clWithoutLock(WARLOCK, {
						i(253032),	-- Felscorned Reins of the Netherlord's Dreadsteed (MOUNT!)
					}),
					clWithoutLock(WARRIOR, {
						i(253033),	-- Iron Reins of the Felscorned War Wrym (MOUNT!)
					}),
				}),
			}),
			n(241182, {	-- Hemet Nesingwary XVII <Beastmaster>
				["coord"] = { 45.8, 68.3, BROKEN_ISLES },
				["groups"] = {
					------ NEW MOUNTS ------
					i(239667, {	-- Reins of the Ashplague Fel Bat (MOUNT!)
						["cost"] = {{ "c", BRONZE, 10000 }},
					}),
					i(250426, {	-- Reins of the Aquamarine Basilisk (MOUNT!)
						["cost"] = {{ "c", BRONZE, 10000 }},
					}),
					i(239665, {	-- Reins of the Bloodhunter Fel Bat (MOUNT!)
						["cost"] = {{ "c", BRONZE, 10000 }},
					}),
					i(251795, {	-- Reins of the Brimstone Courser (MOUNT!)
						["cost"] = {{ "c", BRONZE, 10000 }},
					}),
					i(251796, {	-- Reins of the Chestnut Courser (MOUNT!)
						["cost"] = {{ "c", BRONZE, 10000 }},
					}),
					i(250425, {	-- Reins of the Felslate Basilisk (MOUNT!)
						["cost"] = {{ "c", BRONZE, 10000 }},
					}),
					i(250757, {	-- Reins of the Gloomdark Nightmare (MOUNT!)
						["cost"] = {{ "c", BRONZE, 10000 }},
					}),
					i(250752, {	-- Reins of the Golden Sunrunner (MOUNT!)
						["cost"] = {{ "c", BRONZE, 10000 }},
					}),
					i(250429, {	-- Reins of the Highland Elderhorn (MOUNT!)
						["cost"] = {{ "c", BRONZE, 10000 }},
					}),
					i(250427, {	-- Reins of the Illidari Blightstalker (MOUNT!)
						["cost"] = {{ "c", BRONZE, 10000 }},
					}),
					i(250428, {	-- Reins of the Illidari Dreadstalker (MOUNT!)
						["cost"] = {{ "c", BRONZE, 10000 }},
					}),
					i(250424, {	-- Reins of the Leystone Basilisk (MOUNT!)
						["cost"] = {{ "c", BRONZE, 10000 }},
					}),
					i(250423, {	-- Reins of the Slag Basilisk (MOUNT!)
						["cost"] = {{ "c", BRONZE, 10000 }},
					}),
					i(250721, {	-- Reins of the Snowy Highmountain Eagle (MOUNT!)
						["cost"] = {{ "c", BRONZE, 10000 }},
					}),
					i(250723, {	-- Reins of the Treetop Highmountain Eagle (MOUNT!)
						["cost"] = {{ "c", BRONZE, 10000 }},
					}),
					i(250756, {	-- Reins of the Turquoise Courser (MOUNT!)
						["cost"] = {{ "c", BRONZE, 10000 }},
					}),
					i(250751, {	-- Reins of the Twilight Courser (MOUNT!)
						["cost"] = {{ "c", BRONZE, 10000 }},
					}),
					i(239687, {	-- Reins of the Wretched Fel Bat (MOUNT!)
						["cost"] = {{ "c", BRONZE, 10000 }},
					}),
					------ Locked behind: Rise of the Nightfallen ------
					i(250728, {	-- Reins of the Arcberry Manasaber (MOUNT!)
						["cost"] = {{ "c", BRONZE, 10000 }},
					}),
					i(250760, {	-- Reins of the Bonesteed of Bloodshed (MOUNT!)
						["cost"] = {{ "c", BRONZE, 10000 }},
					}),
					i(250758, {	-- Reins of the Bonesteed of Oblivion (MOUNT!)
						["cost"] = {{ "c", BRONZE, 10000 }},
					}),
					i(250759, {	-- Reins of the Bonesteed of Plague (MOUNT!)
						["cost"] = {{ "c", BRONZE, 10000 }},
					}),
					i(250761, {	-- Reins of the Bonesteed of Triumph (MOUNT!)
						["cost"] = {{ "c", BRONZE, 10000 }},
					}),
					------ Locked behind: Argus Eternal ------
					i(250803, {	-- Garnet Ruinstrider (MOUNT!)
						["cost"] = {{ "c", BRONZE, 10000 }},
					}),
					i(250804, {	-- Longhorned Bleakhoof Talbuk (MOUNT!)
						["cost"] = {{ "c", BRONZE, 10000 }},
					}),
					i(250192, {	-- Reins of the Ghastly Ur'zul (MOUNT!)
						["cost"] = {{ "c", BRONZE, 10000 }},
					}),
					i(250747, {	-- Reins of the Albino Mana Ray (MOUNT!)
						["cost"] = {{ "c", BRONZE, 10000 }},
					}),
					i(250746, {	-- Reins of the Bloodtooth Mana Ray (MOUNT!)
						["cost"] = {{ "c", BRONZE, 10000 }},
					}),
					i(250745, {	-- Reins of the Fel-scarred Mana Ray (MOUNT!)
						["cost"] = {{ "c", BRONZE, 10000 }},
					}),
					i(250805, {	-- Reins of the Longhorned Argussian Talbuk (MOUNT!)
						["cost"] = {{ "c", BRONZE, 10000 }},
					}),
					i(250806, {	-- Reins of the Longhorned Beryl Talbuk (MOUNT!)
						["cost"] = {{ "c", BRONZE, 10000 }},
					}),
					i(250802, {	-- Reins of the Longhorned Sable Talbuk (MOUNT!)
						["cost"] = {{ "c", BRONZE, 10000 }},
					}),
					i(250748, {	-- Reins of the Luminous Mana Ray (MOUNT!)
						["cost"] = {{ "c", BRONZE, 10000 }},
					}),

					------ OLD MOUNTS ------
					i(141713, {	-- Arcadian War Turtle (MOUNT!)
						["cost"] = {{ "c", BRONZE, 100000 }},
					}),
					i(138201, {	-- Fathom Dweller (MOUNT!)
						["cost"] = {{ "c", BRONZE, 20000 }},
					}),
					i(138258, {	-- Reins of the Long-Forgotten Hippogryph (MOUNT!)
						["cost"] = {{ "c", BRONZE, 20000 }},
					}),
					i(131734, {	-- Spirit of Eche'ro (MOUNT!)
						["cost"] = {{ "c", BRONZE, 40000 }},
					}),
					i(140495, {	-- Torn Invitation (QS!) / Reins of the Llothien Prowler (MOUNT!)
						["cost"] = {{ "c", BRONZE, 40000 }},
					}),
					------ Locked behind: Rise of the Nightfallen ------
					i(137575, {	-- Fiendish Hellfire Core (MOUNT!)
						["cost"] = {{ "c", BRONZE, 100000 }},
					}),
					i(137574, {	-- Living Infernal Core (MOUNT!)
						["cost"] = {{ "c", BRONZE, 100000 }},
					}),
					i(142236, {	-- Midnight's Eternal Reins (MOUNT!)
						["cost"] = {{ "c", BRONZE, 100000 }},
					}),
					------ Locked behind: Legionfall ------
					i(143643, {	-- Abyss Worm (MOUNT!)
						["cost"] = {{ "c", BRONZE, 100000 }},
					}),
					i(147806, {	-- Cloudwing Hippogryph (MOUNT!)
						["cost"] = {{ "c", BRONZE, 20000 }},
					}),
					i(147807, {	-- Highmountain Elderhorn (MOUNT!)
						["cost"] = {{ "c", BRONZE, 20000 }},
					}),
					i(143764, {	-- Leywoven Flying Carpet (MOUNT!)
						["cost"] = {{ "c", BRONZE, 20000 }},
					}),
					i(147805, {	-- Valajar Stormwing (MOUNT!)
						["cost"] = {{ "c", BRONZE, 20000 }},
					}),
					i(147804, {	-- Wild Dreamrunner (MOUNT!)
						["cost"] = {{ "c", BRONZE, 20000 }},
					}),
					------ Locked behind: Argus Eternal ------
					i(152904, {	-- Acid Belcher (MOUNT!)
						["cost"] = {{ "c", BRONZE, 40000 }},
					}),
					i(153044, {	-- Avenging Felcrusher (MOUNT!)
						["cost"] = {{ "c", BRONZE, 20000 }},
					}),
					i(153043, {	-- Blessed Felcrusher (MOUNT!)
						["cost"] = {{ "c", BRONZE, 20000 }},
					}),
					i(153042, {	-- Glorious Felcrusher (MOUNT!)
						["cost"] = {{ "c", BRONZE, 20000 }},
					}),
					i(152816, {	-- Antoran Charhound (MOUNT!)
						["cost"] = {{ "c", BRONZE, 100000 }},
					}),
					i(152903, {	-- Biletooth Gnasher (MOUNT!)
						["cost"] = {{ "c", BRONZE, 40000 }},
					}),
					i(152905, {	-- Crimson Slavermaw (MOUNT!)
						["cost"] = {{ "c", BRONZE, 40000 }},
					}),
					i(152843, {	-- Darkspore Mana Ray (MOUNT!)
						["cost"] = {{ "c", BRONZE, 40000 }},
					}),
					i(152841, {	-- Felglow Mana Ray (MOUNT!)
						["cost"] = {{ "c", BRONZE, 40000 }},
					}),
					i(152844, {	-- Lambent Mana Ray (MOUNT!)
						["cost"] = {{ "c", BRONZE, 40000 }},
					}),
					i(152814, {	-- Maddened Chaosrunner (MOUNT!)
						["cost"] = {{ "c", BRONZE, 40000 }},
					}),
					i(152840, {	-- Scintillating Mana Ray (MOUNT!)
						["cost"] = {{ "c", BRONZE, 40000 }},
					}),
					i(152789, {	-- Shackled Ur'zul (MOUNT!)
						["cost"] = {{ "c", BRONZE, 100000 }},
					}),
					i(152842, {	-- Vibrant Mana Ray (MOUNT!)
						["cost"] = {{ "c", BRONZE, 40000 }},
					}),
					i(152790, {	-- Vile Fiend (MOUNT!)
						["cost"] = {{ "c", BRONZE, 40000 }},
					}),
				},
			}),
			n(241167, {	-- Horos <Rare Collections>
				["coord"] = { 45.8, 68.2, BROKEN_ISLES },
				["groups"] = {
					filter(BATTLE_PETS, {
						------ NEW PETS ------
						i(239705, {	-- Morsel (PET!)
							["cost"] = {{ "c", BRONZE, 5000 }},
						}),
						i(239699, {	-- Tidbit (PET!)
							["cost"] = {{ "c", BRONZE, 5000 }},
						}),
						i(129108, {	-- Son of Goredome (PET!)
							["cost"] = {{ "c", BRONZE, 5000 }},
						}),
						------ OLD PETS ------
						i(140320, {	-- Corgnelius (PET!)
							["cost"] = {{ "c", BRONZE, 10000 }},
						}),
						i(136901, {	-- Eye of Inquisition (PET!)
							["cost"] = {{ "c", BRONZE, 100000 }},
						}),
						i(140316, {	-- Firebat Pup (PET!)
							["cost"] = {{ "c", BRONZE, 10000 }},
						}),
						i(136900, {	-- Hateful Eye (PET!)
							["cost"] = {{ "c", BRONZE, 35000 }},
						}),
						i(140261, {	-- Hungering Claw (PET!)
							["cost"] = {{ "c", BRONZE, 10000 }},
						}),
						i(136903, {	-- Nightmare Whelpling (PET!)
							["cost"] = {{ "c", BRONZE, 80000 }},
						}),
						i(153252, {	-- Rebellious Imp (PET!)
							["cost"] = {{ "c", BRONZE, 35000 }},
						}),
						i(141349, {	-- Strange Humming Crystal (QS!) / Wondrous Wisdomball (PET!)
							["cost"] = {{ "c", BRONZE, 100000 }},
						}),
						i(130167, {	-- Thistleleaf Adventurer (PET!)
							["cost"] = {{ "c", BRONZE, 100000 }},
						}),
						i(136922, {	-- Wyrmy Tunkins (PET!)
							["cost"] = {{ "c", BRONZE, 10000 }},
						}),
						------ Locked behind: Rise of the Nightfallen ------
						i(144394, {	-- Tylarr Gronnden (PET!)
							["cost"] = {{ "c", BRONZE, 35000 }},
						}),
						------ Locked behind: Legionfall ------
						i(151828, {	-- Ageless Bronze Drake (PET!)
							["cost"] = {{ "c", BRONZE, 80000 }},
						}),
						i(151829, {	-- Bronze Proto-Whelp (PET!)
							["cost"] = {{ "c", BRONZE, 80000 }},
						}),
						i(146953, {	-- Scraps (PET!)
							["cost"] = {{ "c", BRONZE, 80000 }},
						}),
						i(147841, {	-- Orphaned Felbat (PET!)
							["cost"] = {{ "c", BRONZE, 35000 }},
						}),
						------ Locked behind: Argus Eternal ------
						i(153026, {	-- Cross Gazer (PET!)
							["cost"] = {{ "c", BRONZE, 10000 }},
						}),
						i(153054, {	-- Docile Skyfin (PET!)
							["cost"] = {{ "c", BRONZE, 20000 }},
						}),
						i(153055, {	-- Fel-Afflicted Skyfin (PET!)
							["cost"] = {{ "c", BRONZE, 20000 }},
						}),
						i(153056, {	-- Grasping Manifestation (PET!)
							["cost"] = {{ "c", BRONZE, 20000 }},
						}),
						i(153195, {	-- Uuna's Doll (PET!)
							["cost"] = {{ "c", BRONZE, 10000 }},
						}),
					}),
					filter(TOYS, {
						i(129165, {	-- Barnacle-Encrusted Gem (TOY!)
							["cost"] = {{ "c", BRONZE, 10000 }},
						}),
						i(131724, {	-- Crystalline Eye of Undravius (TOY!)
							["cost"] = {{ "c", BRONZE, 10000 }},
						}),
						i(141862, {	-- Mote of Light (TOY!)
							["cost"] = {{ "c", BRONZE, 25000 }},
						}),
						i(140363, {	-- Pocket Fel Spreader (TOY!)
							["cost"] = {{ "c", BRONZE, 20000 }},
						}),
						i(131717, {	-- Starlight Beacon (TOY!)
							["cost"] = {{ "c", BRONZE, 10000 }},
						}),
						i(140160, {	-- Stormforged Vrykul Horn
							["cost"] = {{ "c", BRONZE, 80000 }},
						}),
						i(130169, {	-- Tournament Favor (TOY!)
							["cost"] = {{ "c", BRONZE, 10000 }},
						}),
						------ Locked behind: Rise of the Nightfallen ------
						i(142265, {	-- Big Red Raygun (TOY!)
							["cost"] = {{ "c", BRONZE, 35000 }},
						}),
						i(142528, {	-- Crate of Bobbers: Can of Worms (TOY!)
							["cost"] = {{ "c", BRONZE, 10000 }},
						}),
						i(142529, {	-- Crate of Bobbers: Cat Head (TOY!)
							["cost"] = {{ "c", BRONZE, 10000 }},
						}),
						i(142530, {	-- Crate of Bobbers: Tugboat (TOY!)
							["cost"] = {{ "c", BRONZE, 10000 }},
						}),
						i(143662, {	-- Crate of Bobbers: Wooden Pepe (TOY!)
							["cost"] = {{ "c", BRONZE, 10000 }},
						}),
						i(119211, {	-- Golden Hearthstone Card: Lord Jaraxxus (TOY!)
							["cost"] = {{ "c", BRONZE, 100000 }},
						}),
						i(143544, {	-- Skull of Corruption (TOY!)
							["classes"] = { DEMONHUNTER },
							["cost"] = {{ "c", BRONZE, 100000 }},
						}),
						------ Locked behind: Legionfall ------
						i(147867, {	-- Pilfered Sweeper (TOY!)
							["cost"] = {{ "c", BRONZE, 35000 }},
						}),
						i(147843, {	-- Sira's Extra Cloak (TOY!)
							["cost"] = {{ "c", BRONZE, 35000 }},
						}),
						------ Locked behind: Argus Eternal ------
						i(153204, {	-- All-Seer's Eye (TOY!)
							["cost"] = {{ "c", BRONZE, 10000 }},
						}),
						i(153193, {	-- Baarut the Brisk (TOY!)
							["cost"] = {{ "c", BRONZE, 10000 }},
						}),
						i(153183, {	-- Barrier Generator (TOY!)
							["cost"] = {{ "c", BRONZE, 80000 }},
						}),
						i(153179, {	-- Blue Conservatory Scroll (TOY!)
							["cost"] = {{ "c", BRONZE, 25000 }},
						}),
						i(153182, {	-- Holy Lightsphere (TOY!)
							["cost"] = {{ "c", BRONZE, 25000 }},
						}),
						i(153194, {	-- Legion Communication Orb (TOY!)
							["cost"] = {{ "c", BRONZE, 25000 }},
						}),
						i(153126, {	-- Micro-Artillery Controller (TOY!)
							["cost"] = {{ "c", BRONZE, 25000 }},
						}),
						i(153181, {	-- Red Conservatory Scroll (TOY!)
							["cost"] = {{ "c", BRONZE, 25000 }},
						}),
						i(153253, {	-- S.F.E. Interceptor (TOY!)
							["cost"] = {{ "c", BRONZE, 25000 }},
						}),
						i(153293, {	-- Sightless Eye (TOY!)
							["cost"] = {{ "c", BRONZE, 25000 }},
						}),
						i(153124, {	-- Spire of Spite (TOY!)
							["cost"] = {{ "c", BRONZE, 35000 }},
						}),
						i(153004, {	-- Unstable Portal Emitter (TOY!)
							["cost"] = {{ "c", BRONZE, 100000 }},
						}),
						i(152982, {	-- Vixx's Chest of Tricks (TOY!)
							["cost"] = {{ "c", BRONZE, 80000 }},
						}),
						i(153180, {	-- Yellow Conservatory Scroll (TOY!)
							["cost"] = {{ "c", BRONZE, 25000 }},
						}),
					}),
				},
			}),
			n(241191, {	-- Larah Treebender <World Apparel>
				["coord"] = { 45.5, 68.4, BROKEN_ISLES },
				["groups"] = bubbleDownFiltered({
					["cost"] = {{ "c", BRONZE, 15000 }},
				},FILTERFUNC_itemID,{
					filter(CLOTH, {
						iensemble(241383),	-- Ensemble: Crescent Vale Raiment
						iensemble(139170),	-- Ensemble: Fel-Infused Cloth Armor
						iensemble(241381),	-- Ensemble: Leyline Scholar's Regalia
						iensemble(241438),	-- Ensemble: Moonfall Robes
						iensemble(241384),	-- Ensemble: Regalia of the Hrydshal Runespeaker
						iensemble(241594),	-- Ensemble: Scavenged Chains of Karazhan
						iensemble(241440),	-- Ensemble: Vestments of the Manasinged
						iensemble(241382),	-- Ensemble: Wine-dark Royal Robes
						------ Locked behind: Legionfall ------
						iensemble(241364),	-- Ensemble: Riven Priesthood Regalia
						iensemble(241444),	-- Ensemble: Vileweave Vestments
						------ Locked behind: Argus Eternal ------
						iensemble(241368),	-- Ensemble: Doomsinger's Cloth Armor
						iensemble(254753),	-- Ensemble: Forgotten Conservatory Clothes
						iensemble(253594),	-- Ensemble: Zealous Felslingers Battle Armor
					}),
					filter(LEATHER, {
						iensemble(241435),	-- Ensemble: Ambervale Bonehide
						iensemble(241437),	-- Ensemble: Battlegear of the Dreadhide Stalker
						iensemble(139169),	-- Ensemble: Felshroud Leather Armor
						iensemble(241379),	-- Ensemble: Haustvelt Leathers
						iensemble(241380),	-- Ensemble: Highmountain Hides
						iensemble(241377),	-- Ensemble: Llothien Prowler's Kit
						iensemble(241378),	-- Ensemble: Sablehide Vestments
						------ Locked behind: Legionfall ------
						iensemble(241363),	-- Ensemble: Lunarblight Leathers
						iensemble(241443),	-- Ensemble: Netherfiend Battlegear
						------ Locked behind: Argus Eternal ------
						iensemble(241367),	-- Ensemble: Arinor Keeper's Leather Armor
						iensemble(241391),	-- Ensemble: Stygian Hides
					}),
					filter(MAIL, {
						iensemble(241433),	-- Ensemble: Chains of Helheim
						iensemble(241432),	-- Ensemble: Darkwatcher Bindings
						iensemble(241376),	-- Ensemble: Dreadthorn Battlegear
						iensemble(139168),	-- Ensemble: Fel-Chain Mail Armor
						iensemble(241373),	-- Ensemble: Highmountain Riverscales
						iensemble(241375),	-- Ensemble: Scales of Remembered Eternity
						iensemble(241374),	-- Ensemble: Stormborn Laminar Armor
						------ Locked behind: Legionfall ------
						iensemble(241442),	-- Ensemble: Ered'ruin Scalemail
						iensemble(241362),	-- Ensemble: Shrinebreaker's Battlegear
						------ Locked behind: Argus Eternal ------
						iensemble(241366),	-- Ensemble: Oronaar Disciple's Mail Armor
					}),
					filter(PLATE, {
						iensemble(139167),	-- Ensemble: Felforged Plate Armor
						iensemble(241430),	-- Ensemble: Jandvik Diver's Metal
						iensemble(241370),	-- Ensemble: Kal'delar Battleplate
						iensemble(241429),	-- Ensemble: Leyline Defender's Sunplate Armor
						iensemble(241371),	-- Ensemble: Nar'thalas Graduate's Trim
						iensemble(241372),	-- Ensemble: Thunderpeak Boneguards
						iensemble(241369),	-- Ensemble: Vrykul Funereal Regalia
						------ Locked behind: Legionfall ------
						iensemble(241361),	-- Ensemble: Moonshatter Warplate
						iensemble(241441),	-- Ensemble: Xorothian Plate Armor
						------ Locked behind: Argus Eternal ------
						iensemble(254754),	-- Ensemble: Eredath Lightseeker's Regalia
						iensemble(241359),	-- Ensemble: Garothi Battleplate
						iensemble(241365),	-- Ensemble: Praetorium Guard's Plate Armor
						iensemble(254752),	-- Ensemble: Triumvirate High Guard's Battlegear
						iensemble(253588),	-- Ensemble: World-Defiler's Battle Armor
					}),
					filter(SHIRTS, {
						i(226127, {	-- Recruit's Shirt (White)
							["cost"] = {{ "c", BRONZE, 5 }},
						}),
					}),
					filter(TABARDS, {
						i(5976, {	-- Guild Tabard
							["cost"] = {{ "c", BRONZE, 5 }},
						}),
					}),
				}),
			}),
			--[[
			n(244792, {	-- Lindormi <Mythic Keystones>
				["coord"] = { 45.5, 68.4, BROKEN_ISLES },
				["groups"] = {
				},
			}),
			--]]
			n(241142, {	-- Momentus <Weaponmaster>
				["coord"] = { 45.8, 68.0, BROKEN_ISLES },
				["groups"] = sharedData({
					["cost"] = {{ "c", BRONZE, 5 }},
				}, {
					i(243369),	-- Timerunner's Bow
					i(243368),	-- Timerunner's Dagger
					i(243370),	-- Timerunner's Greatsword
					i(243372),	-- Timerunner's Mace
					i(243367),	-- Timerunner's Shield
					i(243366),	-- Timerunner's Staff
					i(243371),	-- Timerunner's Sword
				}),
			}),
			n(241179, {	-- Nostwin <Snacks and Stuff>
				["coord"] = { 45.9, 67.9, BROKEN_ISLES },
				["groups"] = sharedData({
					["cost"] = {{ "c", BRONZE, 5 }},
				}, {
					i(254320, {	-- Elixir of Remembered Sight
						["description"] = "|cFFE50D12NOT CONSUMED ON USE:|r If you, by any chance, destroyed the one you received from the quest, buy only 1.",
					}),
					i(250316, {	-- Everlasting Nosh
						["races"] = exclude({ EARTHEN_ALLIANCE, EARTHEN_HORDE }, ALL_RACES),
					}),
					i(253574, {	-- Everlasting Rock
						["races"] = { EARTHEN_ALLIANCE, EARTHEN_HORDE },
					}),
					i(188152),	-- Gateway Control Shard
					i(226037),	-- Timeless Neural Silencer
				}),
			}),
			n(241168, {	-- Pythagorus <Mythic Raid Apparel>
				["coord"] = { 45.5, 67.8, BROKEN_ISLES },
				["groups"] = bubbleDownFiltered({
					["cost"] = {{ "c", BRONZE, 30000 }},
				},FILTERFUNC_itemID,{
					clWithoutLock(DEATHKNIGHT, {
						iensemble(241549),	-- Ensemble: Dreadwyrm Battleplate
						------ Locked behind: Legionfall ------
						iensemble(241501),	-- Ensemble: Gravewarden Armaments
						------ Locked behind: Argus Eternal ------
						iensemble(241453),	-- Ensemble: Dreadwake Armor
					}),
					clWithoutLock(DEMONHUNTER, {
						iensemble(241574),	-- Ensemble: Vestment of Second Sight
						------ Locked behind: Legionfall ------
						iensemble(241525),	-- Ensemble: Demonbane Armor
						------ Locked behind: Argus Eternal ------
						iensemble(241477),	-- Ensemble: Felreaper Vestments
					}),
					clWithoutLock(DRUID, {
						iensemble(241570),	-- Ensemble: Garb of the Astral Warden
						------ Locked behind: Legionfall ------
						iensemble(241521),	-- Ensemble: Stormheart Raiment
						------ Locked behind: Argus Eternal ------
						iensemble(241473),	-- Ensemble: Bearmantle Battlegear
					}),
					clWithoutLock(HUNTER, {
						iensemble(241558),	-- Ensemble: Eagletalon Battlegear
						------ Locked behind: Legionfall ------
						iensemble(241509),	-- Ensemble: Wildstalker Armor
						------ Locked behind: Argus Eternal ------
						iensemble(241461),	-- Ensemble: Serpentstalker Guise
					}),
					clWithoutLock(MAGE, {
						iensemble(241586),	-- Ensemble: Regalia of Everburning Knowledge
						------ Locked behind: Legionfall ------
						iensemble(241537),	-- Ensemble: Regalia of the Arcane Tempest
						------ Locked behind: Argus Eternal ------
						iensemble(241489),	-- Ensemble: Runebound Regalia
					}),
					clWithoutLock(MONK, {
						iensemble(241566),	-- Ensemble: Vestments of Enveloped Dissonance
						------ Locked behind: Legionfall ------
						iensemble(241517),	-- Ensemble: Xuen's Battlegear
						------ Locked behind: Argus Eternal ------
						iensemble(241469),	-- Ensemble: Chi-Ji's Battlegear
					}),
					clWithoutLock(PALADIN, {
						iensemble(241545),	-- Ensemble: Battleplate of the Highlord
						------ Locked behind: Legionfall ------
						iensemble(241497),	-- Ensemble: Radiant Lightbringer Armor
						------ Locked behind: Argus Eternal ------
						iensemble(241449),	-- Ensemble: Light's Vanguard Battleplate
					}),
					clWithoutLock(PRIEST, {
						iensemble(241582),	-- Ensemble: Vestments of the Purifier
						------ Locked behind: Legionfall ------
						iensemble(241533),	-- Ensemble: Vestments of Blind Absolution
						------ Locked behind: Argus Eternal ------
						iensemble(241485),	-- Ensemble: Gilded Seraph's Raiment
					}),
					clWithoutLock(ROGUE, {
						iensemble(241562),	-- Ensemble: Doomblade Battlegear
						------ Locked behind: Legionfall ------
						iensemble(241513),	-- Ensemble: Fanged Slayer's Armor
						------ Locked behind: Argus Eternal ------
						iensemble(241465),	-- Ensemble: Regalia of the Dashing Scoundrel
					}),
					clWithoutLock(SHAMAN, {
						iensemble(241553),	-- Ensemble: Regalia of Shackled Elements
						------ Locked behind: Legionfall ------
						iensemble(241505),	-- Ensemble: Regalia of the Skybreaker
						------ Locked behind: Argus Eternal ------
						iensemble(241459),	-- Ensemble: Garb of Venerated Spirits
					}),
					clWithoutLock(WARLOCK, {
						iensemble(241578),	-- Ensemble: Legacy of Azj'aqir
						------ Locked behind: Legionfall ------
						iensemble(241529),	-- Ensemble: Diabolic Raiment
						------ Locked behind: Argus Eternal ------
						iensemble(241481),	-- Ensemble: Grim Inquisitor's Regalia
					}),
					clWithoutLock(WARRIOR, {
						iensemble(241541),	-- Ensemble: Warplate of the Obsidian Aspect
						------ Locked behind: Legionfall ------
						iensemble(241493),	-- Ensemble: Titanic Onslaught Armor
						------ Locked behind: Argus Eternal ------
						iensemble(241445),	-- Ensemble: Juggernaut Battlegear
					}),
					filter(COSMETIC, {
						iensemble(253273, {	-- Scythe of the Unmaker (ENSEMBLE!)
							["cost"] = {
								{ "i", 253304, 20 },	-- Cosmic Soulsliver
								{ "c", BRONZE, 30000 },
							},
						}),
						i(151524, {	-- Hammer of Vigilance (COSMETIC!)
							["cost"] = {
								{ "i", 253305, 20 },	-- Felwarped Slab
								{ "c", BRONZE, 30000 },
							},
						}),
						iensemble(255006, {	-- Taeshalach (COSMETIC!)
							["cost"] = {
								{ "i", 253306, 20 },	-- Everflame of Hatred
								{ "c", BRONZE, 30000 },
							},
						}),
						i(242368, {	-- The First Satyr's Spaulders (COSMETIC!)
							["ItemAppearanceModifierID"] = 1,
							["cost"] = {
								{ "i", 242370, 20 },	-- Horns of the First Satyr
								{ "c", BRONZE, 30000 },
							},
						}),
					}),
					------ Trial of Valor: Ensambles of the Chosen Dead ------
					filter(CLOTH, {
						iensemble(241607),	-- Ensemble: Regalia of the Chosen Dead
					}),
					filter(LEATHER, {
						iensemble(241604),	-- Ensemble: Garb of the Chosen Dead
					}),
					filter(MAIL, {
						iensemble(241601),	-- Ensemble: Chains of the Chosen Dead
					}),
					filter(PLATE, {
						iensemble(241597),	-- Ensemble: Funerary Plate of the Chosen Dead
					}),
				}),
			}),
			--[[n(246028, {	-- Sacerdormu <Heroic Raid Apparel>
				["coord"] = { 45.5, 67.9, BROKEN_ISLES },
				["groups"] = bubbleDownFiltered({
					["cost"] = {{ "c", BRONZE, 20000 }},
				},FILTERFUNC_itemID,{
					clWithoutLock(DEATHKNIGHT, {
						iensemble(241552),	-- Ensemble: Dreadwyrm Battleplate
						------ Locked behind: Legionfall ------
						iensemble(241502),	-- Ensemble: Gravewarden Armaments
						------ Locked behind: Argus Eternal ------
						iensemble(241454),	-- Ensemble: Dreadwake Armor
					}),
					clWithoutLock(DEMONHUNTER, {
						iensemble(241576),	-- Ensemble: Vestment of Second Sight
						------ Locked behind: Legionfall ------
						iensemble(241526),	-- Ensemble: Demonbane Armor
						------ Locked behind: Argus Eternal ------
						iensemble(241479),	-- Ensemble: Felreaper Vestments
					}),
					clWithoutLock(DRUID, {
						iensemble(241573),	-- Ensemble: Garb of the Astral Warden
						------ Locked behind: Legionfall ------
						iensemble(241524),	-- Ensemble: Stormheart Raiment
						------ Locked behind: Argus Eternal ------
						iensemble(241475),	-- Ensemble: Bearmantle Battlegear
					}),
					clWithoutLock(HUNTER, {
						iensemble(241560),	-- Ensemble: Eagletalon Battlegear
						------ Locked behind: Legionfall ------
						iensemble(241512),	-- Ensemble: Wildstalker Armor
						------ Locked behind: Argus Eternal ------
						iensemble(241464),	-- Ensemble: Serpentstalker Guise
					}),
					clWithoutLock(MAGE, {
						iensemble(241589),	-- Ensemble: Regalia of Everburning Knowledge
						------ Locked behind: Legionfall ------
						iensemble(241540),	-- Ensemble: Regalia of the Arcane Tempest
						------ Locked behind: Argus Eternal ------
						iensemble(241491),	-- Ensemble: Runebound Regalia
					}),
					clWithoutLock(MONK, {
						iensemble(241569),	-- Ensemble: Vestments of Enveloped Dissonance
						------ Locked behind: Legionfall ------
						iensemble(241519),	-- Ensemble: Xuen's Battlegear
						------ Locked behind: Argus Eternal ------
						iensemble(241470),	-- Ensemble: Chi-Ji's Battlegear
					}),
					clWithoutLock(PALADIN, {
						iensemble(241547),	-- Ensemble: Battleplate of the Highlord
						------ Locked behind: Legionfall ------
						iensemble(241500),	-- Ensemble: Radiant Lightbringer Armor
						------ Locked behind: Argus Eternal ------
						iensemble(241451),	-- Ensemble: Light's Vanguard Battleplate
					}),
					clWithoutLock(PRIEST, {
						iensemble(241585),	-- Ensemble: Vestments of the Purifier
						------ Locked behind: Legionfall ------
						iensemble(241534),	-- Ensemble: Vestments of Blind Absolution
						------ Locked behind: Argus Eternal ------
						iensemble(241487),	-- Ensemble: Gilded Seraph's Raiment
					}),
					clWithoutLock(ROGUE, {
						iensemble(241565),	-- Ensemble: Doomblade Battlegear
						------ Locked behind: Legionfall ------
						iensemble(241516),	-- Ensemble: Fanged Slayer's Armor
						------ Locked behind: Argus Eternal ------
						iensemble(241468),	-- Ensemble: Regalia of the Dashing Scoundrel
					}),
					clWithoutLock(SHAMAN, {
						iensemble(241555),	-- Ensemble: Regalia of Shackled Elements (Felfire)
						iensemble(241557),	-- Ensemble: Regalia of Shackled Elements (Ice)
						------ Locked behind: Legionfall ------
						iensemble(241506),	-- Ensemble: Regalia of the Skybreaker
						------ Locked behind: Argus Eternal ------
						iensemble(241457),	-- Ensemble: Garb of Venerated Spirits
					}),
					clWithoutLock(WARLOCK, {
						iensemble(241581),	-- Ensemble: Legacy of Azj'aqir
						------ Locked behind: Legionfall ------
						iensemble(241532),	-- Ensemble: Diabolic Raiment
						------ Locked behind: Argus Eternal ------
						iensemble(241484),	-- Ensemble: Grim Inquisitor's Regalia
					}),
					clWithoutLock(WARRIOR, {
						iensemble(241543),	-- Ensemble: Warplate of the Obsidian Aspect
						------ Locked behind: Legionfall ------
						iensemble(241495),	-- Ensemble: Titanic Onslaught Armor
						------ Locked behind: Argus Eternal ------
						iensemble(241446),	-- Ensemble: Juggernaut Battlegear
					}),
				}),
			}),--]]
			n(246026, {	-- Unicus <Exclusive Ensembles>
				["coord"] = { 45.5, 68.4, BROKEN_ISLES },
				["groups"] = {
					iensemble(253382, {	-- Arsenal: Arms of the Felforged Knight
						["cost"] = {{ "c", BRONZE, 7500 }},
					}),
					iensemble(253556, {	-- Arsenal: Bone Scythes
						["cost"] = {{ "c", BRONZE, 2500 }},
					}),
					iensemble(253569, {	-- Arsenal: Gems of the Lightforged Draenei
						["cost"] = {{ "c", BRONZE, 2500 }},
					}),
					iensemble(253561, {	-- Arsenal: Immortal Maces
						["cost"] = {{ "c", BRONZE, 2500 }},
					}),
					iensemble(253565, {	-- Arsenal: Mo'arg Hornmaces
						["cost"] = {{ "c", BRONZE, 2500 }},
					}),
					iensemble(253551, {	-- Arsenal: Mo'arg Swords
						["cost"] = {{ "c", BRONZE, 2500 }},
					}),
					iensemble(255156, {	-- Arsenal: Odyn's Spears
						["cost"] = {{ "c", BRONZE, 7500 }},
					}),
					iensemble(241389, {	-- Ensemble: Antoran Guard's Golden Battleplate
						["cost"] = {{ "c", BRONZE, 7500 }},
					}),
					iensemble(241392, {	-- Ensemble: Argussian Demonsbane Armor
						["cost"] = {{ "c", BRONZE, 7500 }},
					}),
					iensemble(190772, {	-- Ensemble: Barkbinds of the Archdruid's Nightmare
						["cost"] = {{ "c", BRONZE, 7500 }},
					}),
					iensemble(241416, {	-- Ensemble: Blazing Dreamscribed Robes
						["cost"] = {{ "c", BRONZE, 7500 }},
					}),
					iensemble(241358, {	-- Ensemble: Dream Defender's Emerald Guardplate
						["cost"] = {{ "c", BRONZE, 7500 }},
					}),
					iensemble(241414, {	-- Ensemble: Dreamseeker Vestments
						["cost"] = {{ "c", BRONZE, 7500 }},
					}),
					iensemble(241415, {	-- Ensemble: Dreamwatcher Vestments
						["cost"] = {{ "c", BRONZE, 7500 }},
					}),
					iensemble(241399, {	-- Ensemble: Dreamweald Dragonscale
						["cost"] = {{ "c", BRONZE, 7500 }},
					}),
					iensemble(241412, {	-- Ensemble: Earthrune Robes
						["cost"] = {{ "c", BRONZE, 7500 }},
					}),
					iensemble(241408, {	-- Ensemble: Fel-Bloodied Battlegear
						["cost"] = {{ "c", BRONZE, 7500 }},
					}),
					iensemble(241356, {	-- Ensemble: Ensemble: Fel-Marked Scales
						["cost"] = {{ "c", BRONZE, 7500 }},
					}),
					iensemble(241397, {	-- Ensemble: Firewurm Dragonscale
						["cost"] = {{ "c", BRONZE, 7500 }},
					}),
					iensemble(241406, {	-- Ensemble: Gladeraider's Battlegarb
						["cost"] = {{ "c", BRONZE, 7500 }},
					}),
					iensemble(241387, {	-- Ensemble: Heritage of the Lightforged - Hologemmed
						["cost"] = {{ "c", BRONZE, 7500 }},
					}),
					iensemble(241388, {	-- Ensemble: Heritage of the Lightforged - Holy Gold
						["cost"] = {{ "c", BRONZE, 7500 }},
					}),
					iensemble(241386, {	-- Ensemble: Heritage of the Lightforged - Crimson Vengeance
						["cost"] = {{ "c", BRONZE, 7500 }},
					}),
					iensemble(241385, {	-- Ensemble: Heritage of the Shal'dorei - Vineyard Red
						["cost"] = {{ "c", BRONZE, 7500 }},
					}),
					iensemble(241400, {	-- Ensemble: Highpeak Dragonscale
						["cost"] = {{ "c", BRONZE, 7500 }},
					}),
					iensemble(241396, {	-- Ensemble: Jarl's Battlehorns
						["cost"] = {{ "c", BRONZE, 7500 }},
					}),
					iensemble(241403, {	-- Ensemble: Jarl's Battlescales
						["cost"] = {{ "c", BRONZE, 7500 }},
					}),
					iensemble(253385, {	-- Ensemble: Mantles of the Nightwell
						["cost"] = {{ "c", BRONZE, 2500 }},
					}),
					iensemble(241413, {	-- Ensemble: Nightrune Robes
						["cost"] = {{ "c", BRONZE, 7500 }},
					}),
					iensemble(241402, {	-- Ensemble: Ruby Drake Hunter's Kit
						["cost"] = {{ "c", BRONZE, 7500 }},
					}),
					iensemble(241407, {	-- Ensemble: Searaider's Battlegarb
						["cost"] = {{ "c", BRONZE, 7500 }},
					}),
					iensemble(241411, {	-- Ensemble: Skyrune Robes
						["cost"] = {{ "c", BRONZE, 7500 }},
					}),
					iensemble(241410, {	-- Ensemble: Slayer's Golden Scarguards
						["cost"] = {{ "c", BRONZE, 7500 }},
					}),
					iensemble(241409, {	-- Ensemble: Slayer's Silver Scarguards
						["cost"] = {{ "c", BRONZE, 7500 }},
					}),
					iensemble(241395, {	-- Ensemble: Storm Champion's Warharness
						["cost"] = {{ "c", BRONZE, 7500 }},
					}),
					iensemble(241360, {	-- Ensemble: Stygian Silks
						["cost"] = {{ "c", BRONZE, 7500 }},
					}),
					iensemble(253358, {	-- Ensemble: Tideskorn Hunter's Munitions
						["cost"] = {{ "c", BRONZE, 2500 }},
					}),
					iensemble(251271, {	-- Ensemble: Tidesoaked Battlegear
						["cost"] = {{ "c", BRONZE, 7500 }},
					}),
					iensemble(241355, {	-- Ensemble: Verdant Dreamscribed Robes
						["cost"] = {{ "c", BRONZE, 7500 }},
					}),
					iensemble(241390, {	-- Ensemble: Vestments of Eredathian Sacrifice
						["cost"] = {{ "c", BRONZE, 7500 }},
					}),
					iensemble(253379, {	-- Ensemble: Windrunner Quivers
						["cost"] = {{ "c", BRONZE, 7500 }},
					}),
				},
			}),
		},
	}),
})))
