---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
TIMBERMAW_HOLD = createHeader({
	readable = "Timbermaw Hold",
	icon = 236696,
	text = {
		en = [[~C_Map.GetAreaInfo(1769)]],
	},
	lore = {
		en = "The Timbermaw Furbolgs inhabit two areas: Azshara and Felwood. They are presumed to be the only furbolg tribe to escape demonic corruption, though this may not be true due to the existence of Krolg, an uncorrupted furbolg of unknown tribe, and the Stillpine tribe on Azuremyst Isle in Burning Crusade. However, many other races kill furbolg blindly now, without bothering to see if they are friend or foe. For this reason, the Timbermaw furbolg trust very few.\n\nAdventurers who seek out Timbermaw Hold in northern Felwood and prove themselves as friends of the Timbermaw will learn that the furbolgs value their friends above all else. Though they possess no fine jewels or any worldly riches, the Timbermaw's shamanistic tradition is still strong. They know much about the art of crafting armors from animal hides, and they are more than happy to share their healing/resurrection knowledge with friends of their tribe. Besides, any reputation above Unfriendly will also grant you untroubled access to Moonglade and Winterspring through their tunnels.",
	},
});
ExportDB.OnTooltipDB.ForTimbermawHold = [[~function(t, tooltipInfo)
	local reputation = t.reputation;
	if reputation < 42000 then
		local addRepInfo = _.Modules.FactionData.AddReputationTooltipInfo;
		-- #if BEFORE CATA
		if reputation >= ]] .. NEUTRAL .. [[ then
			if not t.deadwood then
				local f = _.SearchForField("questID", 8470);
				if f and #f > 0 then t.deadwood = f[1]; end
			end
			if not t.winterfall then
				local f = _.SearchForField("questID", 8471);
				if f and #f > 0 then t.winterfall = f[1]; end
			end
			if not t.deadwood.saved then
				_.Modules.FactionData.AddQuestTooltip(tooltipInfo, "Complete %s", t.deadwood);
			end
			if not t.winterfall.saved then
				_.Modules.FactionData.AddQuestTooltip(tooltipInfo, "Complete %s", t.winterfall);
			end
		end
		-- #endif
		-- #if AFTER CATA
		addRepInfo(tooltipInfo, reputation, "Kill Deadwood or Winterfall Furbolgs", 20, 42000, ]] .. UNFRIENDLY .. [[);
		-- #elseif AFTER TBC
		if reputation < ]] .. (REVERED - 1) .. [[ then
			addRepInfo(tooltipInfo, reputation, "Kill Deadwood or Winterfall Furbolgs (Stops at Revered)", 10, ]] .. (REVERED - 1) .. [[, ]] .. UNFRIENDLY .. [[);
		end
		-- #else
		if reputation < ]] .. (HONORED - 1) .. [[ then
			addRepInfo(tooltipInfo, reputation, "Kill Deadwood or Winterfall Furbolgs (Stops at Honored)", 5, ]] .. (HONORED - 1) .. [[, ]] .. UNFRIENDLY .. [[);
		end
		-- #endif
		-- #if AFTER CATA
		local repPerTurnIn = 2000;
		-- #elseif AFTER WRATH
		local repPerTurnIn = 300;
		-- #elseif AFTER TBC
		local repPerTurnIn = 150;
		-- #else
		local repPerTurnIn = 50;
		-- #endif
		addRepInfo(tooltipInfo, reputation, "Turn in Deadwood Feathers (x5) in Felwood", repPerTurnIn, 42000);
		local repPer, remainingTurnIns = addRepInfo(tooltipInfo, reputation, "Turn in Winterfall Beads (x5) in Winterspring", repPerTurnIn, 42000);
		local remaining = ((remainingTurnIns * 5) - ]] .. WOWAPI_GetItemCount(21383) .. [[ - ]] .. WOWAPI_GetItemCount(21377) .. [[);
		if remaining > 0 then
			tinsert(tooltipInfo, { left = "You need " .. remaining .. " more feathers/beads for Exalted.", r = 1, g = 1, b = 0 });
		end
		-- #if BEFORE CATA
		-- #if BEFORE TBC
		if reputation < ]] .. (HONORED - 1) .. [[ then
			tinsert(tooltipInfo, { left = " * PROTIP: Do NOT turn in the totems or feathers until after Honored!", r = 1, g = 0.5, b = 0.5 });
		end
		-- #else
		if reputation < ]] .. (REVERED - 1) .. [[ then
			tinsert(tooltipInfo, { left = " * PROTIP: Do NOT turn in the totems or feathers until after Revered!", r = 1, g = 0.5, b = 0.5 });
		end
		-- #endif
		-- #endif
	end
end]];
root(ROOTS.Zones, m(KALIMDOR, {
	n(TIMBERMAW_HOLD, {
		["zone-text-areaID"] = 1769,
		["maps"] = { FELWOOD, WINTERSPRING },
		["groups"] = {
			n(ACHIEVEMENTS, {
				achWithRep(944, FACTION_TIMBERMAW_HOLD),	-- They Love Me In That Tunnel
			}),
			n(FACTIONS, {
				faction(FACTION_TIMBERMAW_HOLD, {	-- Timbermaw Hold
					["icon"] = 236696,
					["OnTooltip"] = [[_.OnTooltipDB.ForTimbermawHold]],
				}),
			}),
			n(QUESTS, {
				q(8469, {	-- Beads for Salfa
					["sourceQuest"] = 8464,	-- Winterfall Activity
					["qg"] = 11556,	-- Salfa
					["coord"] = { 27.8, 34.6, WINTERSPRING },
					["maxReputation"] = { FACTION_TIMBERMAW_HOLD, EXALTED },	-- Timbermaw Hold, Exalted.
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = { { "i", 21383, 5 } },	-- Winterfall Spirit Beads
					["repeatable"] = true,
					["lvl"] = 50,
				}),
				q(28338, {	-- Deadwood of the North
					["sourceQuests"] = {
						28392,	-- The Timbermaw Tribe
						28373,	-- Timbermaw Hold
					},
					["qg"] = 15395,	-- Nafien
					["coord"] = { 64.0, 10.3, FELWOOD },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/15 Deadwood Furbolg slain
							["providers"] = {
								{ "n", 7156},	-- Deadwood Den Watcher
								{ "n", 7157},	-- Deadwood Avenger
								{ "n", 7158},	-- Deadwood Shaman
							},
						}),
						i(21317),	-- Helm of the Pathfinder
						i(21316),	-- Leggings of the Ursa
					},
				}),
				q(8461, {	-- Deadwood of the North
					["qg"] = 15395,	-- Nafien
					["coord"] = { 64.8, 8.2, FELWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 45,
					["groups"] = {
						i(21317),	-- Helm of the Pathfinder
						i(21316),	-- Leggings of the Ursa
					},
				}),
				q(8470, {	-- Deadwood Ritual Totem
					["provider"] = { "i", 20741 },	-- Deadwood Ritual Totem
					["minReputation"] = { FACTION_TIMBERMAW_HOLD, NEUTRAL },	-- Timbermaw Hold, Neutral.
					["crs"] = {
						7157,	-- Deadwood Avenger
						7156,	-- Deadwood Den Watcher
						7158,	-- Deadwood Shaman
					},
					["lvl"] = lvlsquish(45, 45, 15),
				}),
				q(28524, {	-- Delivery for Donova
					["qg"] = 11556,	-- Salfa
					["coord"] = { 21.0, 46.1, WINTERSPRING },
					["minReputation"] = { FACTION_TIMBERMAW_HOLD, NEUTRAL },	-- Timbermaw Hold, Neutral.
					["timeline"] = { ADDED_4_0_3 },
					["isBreadcrumb"] = true,
				}),
				q(28366, {	-- Disarming Bears
					["sourceQuest"] = 28392,	-- The Timbermaw Tribe
					["qg"] = 15395,	-- Nafien
					["coord"] = { 64.0, 10.3, FELWOOD },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						i(65343, {	-- Timbermaw Breastplate
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(65294, {	-- Timbermaw Bracers
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(65313, {	-- Timbermaw Leggings
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(65332, {	-- Timbermaw Boots
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(8466, {	-- Feathers for Grazle
					["sourceQuest"] = 8460,	-- Timbermaw Ally
					["qg"] = 11554,	-- Grazle
					["coord"] = { 50.9, 85.0, FELWOOD },
					["maxReputation"] = { FACTION_TIMBERMAW_HOLD, EXALTED },	-- Timbermaw Hold, Exalted.
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = {{ "i", 21377, 5 }},	-- Deadwood Headdress Feather
					["repeatable"] = true,
					["lvl"] = 45,
				}),
				q(28395, {	-- Feathers for Nafien
					["sourceQuests"] = {
						28338,	-- Deadwood of the North
						28366,	-- Disarming Bears
					},
					["qg"] = 15395,	-- Nafien
					["coord"] = { 64.0, 10.3, FELWOOD },
					["maxReputation"] = { FACTION_TIMBERMAW_HOLD, EXALTED },	-- Timbermaw Hold, Exalted.
					["timeline"] = { ADDED_4_0_3 },
					["cost"] = {{ "i", 21377, 5 }},	-- Deadwood Headdress Feather
					["repeatable"] = true,
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_FOUR, q(84777, {	-- Feathers for Nafien
					["sourceQuest"] = 8460,	-- Timbermaw Ally
					["qg"] = 15395,	-- Nafien
					["coord"] = { 64.8, 8.2, FELWOOD },
					["maxReputation"] = { FACTION_TIMBERMAW_HOLD, EXALTED },	-- Timbermaw Hold, Exalted.
					["timeline"] = { ADDED_1_15_3 },
					["cost"] = {{ "i", 21377, 5 }},	-- Deadwood Headdress Feather
					["repeatable"] = true,
					["lvl"] = 45,
				})),
				-- #endif
				q(8467, {	-- Feathers for Nafien
					["sourceQuest"] = 8460,	-- Timbermaw Ally
					["qg"] = 15395,	-- Nafien
					["coord"] = { 64.8, 8.2, FELWOOD },
					["maxReputation"] = { FACTION_TIMBERMAW_HOLD, EXALTED },	-- Timbermaw Hold, Exalted.
					["timeline"] = {
						-- #if SEASON_OF_DISCOVERY
						REMOVED_1_15_3,
						-- #else
						REMOVED_4_0_3,
						-- #endif
					},
					["cost"] = {{ "i", 21377, 5 }},	-- Deadwood Headdress Feather
					["repeatable"] = true,
					["lvl"] = 45,
				}),
				q(28523, {	-- More Beads for Salfa
					["sourceQuest"] = 28522,	-- Winterfall Activity
					["qg"] = 11556,	-- Salfa
					["coord"] = { 21.0, 46.1, WINTERSPRING },
					["maxReputation"] = { FACTION_TIMBERMAW_HOLD, EXALTED },	-- Timbermaw Hold, Exalted.
					["timeline"] = { ADDED_4_0_3 },
					["cost"] = { { "i", 21383, 5 } },	-- Winterfall Spirit Beads
					["repeatable"] = true,
				}),
				q(6031, {	-- Runecloth
					["qg"] = 11557,	-- Meilosh
					["coords"] = {
						-- #if AFTER CATA
						{ 64.8, 5.2, FELWOOD },
						-- #else
						{ 65.6, 2.8, FELWOOD },
						-- #endif
					},
					["minReputation"] = { FACTION_TIMBERMAW_HOLD, FRIENDLY },	-- Timbermaw Hold, Friendly.
					["cost"] = {{ "i", 14047, 30 }},	-- Runecloth
					["lvl"] = lvlsquish(40, 40, 15),
					["groups"] = {
						i(15822),	-- Shadowskin Spaulders
						i(15823),	-- Bricksteel Gauntlets
					},
				}),
				q(6032, {	-- Sacred Cloth
					["qg"] = 11557,	-- Meilosh
					["coords"] = {
						-- #if AFTER CATA
						{ 64.8, 5.2, FELWOOD },
						-- #else
						{ 65.6, 2.8, FELWOOD },
						-- #endif
					},
					["minReputation"] = { FACTION_TIMBERMAW_HOLD, FRIENDLY },	-- Timbermaw Hold, Friendly.
					["cost"] = {{ "i", 14342, 2 }},	-- Mooncloth
					["requireSkill"] = TAILORING,
					["lvl"] = lvlsquish(40, 40, 15),
					["groups"] = {
						recipe(19435),	-- Mooncloth Boots
					},
				}),
				q(8462, {	-- Speak to Nafien
					["sourceQuest"] = 8460,	-- Timbermaw Ally
					["qg"] = 11554,	-- Grazle
					["coord"] = { 50.9, 85.0, FELWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 45,
				}),
				q(28521, {	-- Speak to Salfa
					["sourceQuests"] = {
						28338,	-- Deadwood of the North
						28366,	-- Disarming Bears
						28364,	-- The Chieftain's Key
					},
					["qg"] = 15395,	-- Nafien
					["coord"] = { 64.0, 10.4, FELWOOD },
					["timeline"] = { ADDED_4_0_3 },
					["isBreadcrumb"] = true,
				}),
				q(8465, {	-- Speak to Salfa
					["sourceQuest"] = 8461,	-- Deadwood of the North
					["qg"] = 15395,	-- Nafien
					["coord"] = { 64.8, 8.2, FELWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 45,
				}),
				q(28362, {	-- Stupid Drizle!
					["qg"] = 48461,	-- Ferli
					["coord"] = { 64.1, 10.3, FELWOOD },
					["timeline"] = { ADDED_4_0_3 },
				}),
				{	-- The Brokering of Peace
					["allianceQuestData"] = q(8484, {	-- The Brokering of Peace (A)
						["maps"] = { IRONFORGE },
					}),
					["hordeQuestData"] = q(8485, {	-- The Brokering of Peace (H)
						["maps"] = { ORGRIMMAR },
					}),
					["providers"] = {
						{ "n", 11555 },	-- Gorn One Eye
						{ "i", 21155 },	-- Timbermaw Offering of Peace
					},
					["coords"] = {
						-- #if AFTER CATA
						{ 64.4, 5.1, FELWOOD },
						-- #else
						{ 65.2, 2.6, FELWOOD },
						-- #endif
					},
					["minReputation"] = { FACTION_TIMBERMAW_HOLD, EXALTED },	-- Timbermaw Hold, Exalted.
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 45,
				},
				q(28364, {	-- The Chieftain's Key
					["sourceQuest"] = 28362,	-- Stupid Drizle!
					["qg"] = 47556,	-- Drizle
					["coord"] = { 60.5, 9.5, FELWOOD },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/1 Drizle's Key
							["provider"] = { "i", 63695 },	-- Drizle's Key
							["cr"] = 9462,	-- Chieftain Bloodmaw
						}),
						i(65293, {	-- Leggings of Mischief
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(65312, {	-- Vest of Sobbing
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(65331, {	-- Bloodmaw's Belt
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(8481, {	-- The Root of All Evil
					["qg"] = 11555,	-- Gorn One Eye
					["coords"] = {
						-- #if AFTER CATA
						{ 64.4, 5.1, FELWOOD },
						-- #else
						{ 65.2, 2.6, FELWOOD },
						-- #endif
					},
					["minReputation"] = { FACTION_TIMBERMAW_HOLD, EXALTED },	-- Timbermaw Hold, Exalted.
					["maps"] = { WINTERSPRING },
					["lvl"] = lvlsquish(45, 45, 15),
					["groups"] = {
						objective(1, {	-- 0/1 Essence of Xandivious
							["provider"] = { "i", 21145 },	-- Essence of Xandivious
							["coord"] = { 68.0, 37.6, WINTERSPRING },
							["cost"] = { { "i", 21144, 1 } },	-- Demon Summoning Torch
							["cr"] = 15623,	-- Xandivious
						}),
						i(21326),	-- Defender of the Timbermaw
					},
				}),
				q(8460, {	-- Timbermaw Ally
					["altQuests"] = { 6131 },	-- Timbermaw Ally (old version, deprecated)
					["qg"] = 11554,	-- Grazle
					["coord"] = { 50.9, 85.0, FELWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 45,
					["groups"] = {
						objective(1, {	-- 0/6 Deadwood Warrior slain
							["provider"] = { "n", 7153 },	-- Deadwood Warrior
						}),
						objective(2, {	-- 0/6 Deadwood Pathfinder slain
							["provider"] = { "n", 7155 },	-- Deadwood Pathfinder
						}),
						objective(3, {	-- 0/6 Deadwood Gardener slain
							["provider"] = { "n", 7154 },	-- Deadwood Gardener
						}),
						i(21311, {	-- Earth Warder's Vest
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(21312, {	-- Belt of the Den Watcher
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(28373, {	-- Timbermaw Hold
					["sourceQuest"] = 28368,	-- Fire in the Hole!
					["qg"] = 48127,	-- Darla Drilldozer
					["coord"] = { 56.3, 8.1, FELWOOD },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
				}),
				q(28522, {	-- Winterfall Activity
					["sourceQuest"] = 28521,	-- Speak to Salfa
					["qg"] = 11556,	-- Salfa
					["coord"] = { 21.0, 46.1, WINTERSPRING },
					["timeline"] = { ADDED_4_0_3 },
					["cost"] = {{ "i", 21383, 10 }},	-- Winterfall Spirit Beads
					["groups"] = {
						i(21318),	-- Earth Warder's Gloves
						i(21319),	-- Gloves of the Pathfinder
						i(21320),	-- Vest of the Den Watcher
						i(21322),	-- Ursa's Embrace
					},
				}),
				q(8464, {	-- Winterfall Activity
					["qg"] = 11556,	-- Salfa
					["coord"] = { 27.8, 34.6, WINTERSPRING },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 45,
					["groups"] = {
						objective(1, {	-- 0/8 Winterfall Shaman slain
							["provider"] = { "n", 7439 },	-- Winterfall Shaman
						}),
						objective(2, {	-- 0/8 Winterfall Den Watcher slain
							["provider"] = { "n", 7440 },	-- Winterfall Den Watcher
						}),
						objective(3, {	-- 0/8 Winterfall Ursa slain
							["provider"] = { "n", 7438 },	-- Winterfall Ursa
						}),
						i(21318),	-- Earth Warder's Gloves
						i(21319),	-- Gloves of the Pathfinder
						i(21320),	-- Vest of the Den Watcher
						i(21322),	-- Ursa's Embrace
					},
				}),
				q(8471, {	-- Winterfall Ritual Totem
					["provider"] = { "i", 20742 },	-- Winterfall Ritual Totem
					["minReputation"] = { FACTION_TIMBERMAW_HOLD, NEUTRAL },	-- Timbermaw Hold
					["timeline"] = { REMOVED_4_0_3 },
					["crs"] = {
						10738,	-- High Chief Winterfall
						7440,	-- Winterfall Den Watcher
						7442,	-- Winterfall Pathfinder
						10916,	-- Winterfall Runner
						7439,	-- Winterfall Shaman
						7441,	-- Winterfall Totemic
						7438,	-- Winterfall Ursa
					},
					["lvl"] = 50,
				}),
				q(28768, {	-- Winterspring!
					["description"] = "Only available above level 40.",
					--["sourceQuest"] = 28368,	-- Fire in the Hole!	TODO: could be earlier, but was available at this point //Fire in the Hole! is Horde only so cannot be the correct sourcequest
					["qg"] = 15395,	-- Nafien
					["coord"] = { 64.0, 10.4, FELWOOD },
					["timeline"] = { ADDED_4_0_3 },
					["isBreadcrumb"] = true,
				}),
			}),
			n(VENDORS, {
				n(11555, {	-- Gorn One Eye
					["coords"] = {
						-- #if AFTER CATA
						{ 64.4, 5.1, FELWOOD },
						-- #else
						{ 65.2, 2.6, FELWOOD },
						-- #endif
					},
					["minReputation"] = { FACTION_TIMBERMAW_HOLD, HONORED },	-- Timbermaw Hold, Honored.
					["groups"] = {
						i(16768),	-- Furbolg Medicine Pouch
						i(16769),	-- Furbolg Medicine Totem
					},
				}),
				n(11557, {	-- Meilosh
					["coords"] = {
						-- #if AFTER CATA
						{ 64.8, 5.2, FELWOOD },
						-- #else
						{ 65.6, 2.8, FELWOOD },
						-- #endif
					},
					["groups"] = bubbleDownClassicRep(FACTION_TIMBERMAW_HOLD, {
						{	-- Neutral
						},
						{	-- Friendly
							applyclassicphase(PHASE_THREE_ENCHANTS, i(22392)),	-- Formula: Enchant 2H Weapon - Agility (RECIPE!)
							i(20253),	-- Pattern: Warbear Harness (RECIPE!)
							i(20254),	-- Pattern: Warbear Woolies (RECIPE!)
							i(13484),	-- Recipe: Transmute Earth to Water (RECIPE!)
						},
						{	-- Honored
							applyclassicphase(PHASE_THREE_ENCHANTS, i(19445)),	-- Formula: Enchant Weapon - Agility (RECIPE!)
							applyclassicphase(PHASE_THREE_RECIPES, i(19202)),	-- Plans: Heavy Timbermaw Belt (RECIPE!)
							applyclassicphase(PHASE_THREE_RECIPES, i(19326)),	-- Pattern: Might of the Timbermaw (RECIPE!)
							applyclassicphase(PHASE_THREE_RECIPES, i(19215)),	-- Pattern: Wisdom of the Timbermaw (RECIPE!)
							-- #if SEASON_OF_DISCOVERY
							-- EPIC CRAFTED ITEMS UPGRADES
							applyclassicphase(SOD_PHASE_FOUR, i(227807, {	-- Dense Timbermaw Belt
								["timeline"] = { ADDED_1_15_3 },
								["requireSkill"] = BLACKSMITHING,
								["learnedAt"] = 290,
								["cost"] = {
									{ "i", 19043, 1 },	-- Heavy Timbermaw Belt
									{ "i", 12360, 1 },	-- Arcanite Bar
									{ "i", 21383, 20 },	-- Winterfall Spirit Beads
								},
							})),
							applyclassicphase(SOD_PHASE_FOUR, i(227810, {	-- Dense Timbermaw Boots
								["timeline"] = { ADDED_1_15_3 },
								["requireSkill"] = BLACKSMITHING,
								["learnedAt"] = 290,
								["cost"] = {
									{ "i", 19048, 1 },	-- Heavy Timbermaw Boots
									{ "i", 12360, 1 },	-- Arcanite Bar
									{ "i", 21383, 25 },	-- Winterfall Spirit Beads
								},
							})),
							applyclassicphase(SOD_PHASE_FOUR, i(227803, {	-- Dire Warbear Harness
								["timeline"] = { ADDED_1_15_3 },
								["requireSkill"] = LEATHERWORKING,
								["learnedAt"] = 290,
								["cost"] = {
									{ "i", 15064, 1 },	-- Warbear Harness
									{ "i", 15407, 2 },	-- Cured Rugged Hide
									{ "i", 21383, 30 },	-- Winterfall Spirit Beads
								},
							})),
							applyclassicphase(SOD_PHASE_FOUR, i(227804, {	-- Dire Warbear Woolies
								["timeline"] = { ADDED_1_15_3 },
								["requireSkill"] = LEATHERWORKING,
								["learnedAt"] = 290,
								["cost"] = {
									{ "i", 15065, 1 },	-- Warbear Woolies
									{ "i", 15407, 2 },	-- Cured Rugged Hide
									{ "i", 21383, 30 },	-- Winterfall Spirit Beads
								},
							})),
							applyclassicphase(SOD_PHASE_FOUR, i(227805, {	-- Ferocity of the Timbermaw
								["timeline"] = { ADDED_1_15_3 },
								["requireSkill"] = LEATHERWORKING,
								["learnedAt"] = 290,
								["cost"] = {
									{ "i", 19044, 1 },	-- Might of the Timbermaw
									{ "i", 15407, 1 },	-- Cured Rugged Hide
									{ "i", 21383, 20 },	-- Winterfall Spirit Beads
								},
							})),
							applyclassicphase(SOD_PHASE_FOUR, i(227862, {	-- Incandescent Mooncloth Boots
								["timeline"] = { ADDED_1_15_3 },
								["requireSkill"] = TAILORING,
								["learnedAt"] = 290,
								["cost"] = {
									{ "i", 15802, 1 },	-- Mooncloth Boots
									{ "i", 14342, 1 },	-- Mooncloth
									{ "i", 21383, 25 },	-- Winterfall Spirit Beads
								},
							})),
							applyclassicphase(SOD_PHASE_FOUR, i(228190, {	-- Knowledge of the Timbermaw
								["timeline"] = { ADDED_1_15_3 },
								["requireSkill"] = TAILORING,
								["learnedAt"] = 290,
								["cost"] = {
									{ "i", 19047, 1 },	-- Wisdom of the Timbermaw
									{ "i", 14342, 1 },	-- Mooncloth
									{ "i", 21383, 20 },	-- Winterfall Spirit Beads
								},
							})),
							applyclassicphase(SOD_PHASE_FOUR, i(227808, {	-- Rugged Mantle of the Timbermaw
								["timeline"] = { ADDED_1_15_3 },
								["requireSkill"] = TAILORING,
								["learnedAt"] = 290,
								["cost"] = {
									{ "i", 19050, 1 },	-- Mantle of the Timbermaw
									{ "i", 14342, 1 },	-- Mooncloth
									{ "i", 21383, 25 },	-- Winterfall Spirit Beads
								},
							})),
							applyclassicphase(SOD_PHASE_FOUR, i(227809, {	-- Studded Timbermaw Brawlers
								["timeline"] = { ADDED_1_15_3 },
								["requireSkill"] = LEATHERWORKING,
								["learnedAt"] = 290,
								["cost"] = {
									{ "i", 19049, 1 },	-- Timbermaw Brawlers
									{ "i", 15407, 1 },	-- Cured Rugged Hide
									{ "i", 21383, 20 },	-- Winterfall Spirit Beads
								},
							})),
							-- #endif
						},
						{	-- Revered
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(228982, {	-- Formula: Enchant Shield - Law of Nature
								["timeline"] = { ADDED_1_15_3 },
							})),
							-- #endif
							applyclassicphase(PHASE_THREE_RECIPES, i(19218)),	-- Pattern: Mantle of the Timbermaw (RECIPE!)
							applyclassicphase(PHASE_THREE_RECIPES, i(19204)),	-- Plans: Heavy Timbermaw Boots (RECIPE!)
							applyclassicphase(PHASE_THREE_RECIPES, i(19327)),	-- Pattern: Timbermaw Brawlers (RECIPE!)
						},
						{	-- Exalted
							i(66888, {	-- Stave of Fur and Claw Toy (TOY!)
								["timeline"] = { ADDED_4_0_1 },
							}),
						},
					}),
				}),
			}),
		},
	}),
}));
