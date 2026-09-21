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
		cn = "木喉熊怪居住在两个区域：艾萨拉和费伍德森林。人们认为他们是唯一一支未被恶魔腐化的熊怪部族，不过由于存在克罗格（一只未被腐化、所属部族不明的熊怪）以及《燃烧的远征》中秘蓝岛上的深须部族，这一点或许并不属实。然而，现在许多其他种族不加分辨地就对熊怪痛下杀手，根本不去判断对方是敌是友。正因如此，木喉熊怪极少信任他人。\n\n那些前往费伍德森林北部的木喉要塞，并证明自己是木喉熊怪之友的冒险者会发现，熊怪们将朋友看得比什么都重要。尽管他们没有珍贵的珠宝或任何世俗财富，但木喉熊怪的萨满传统依然深厚。他们精通用兽皮制作护甲的技艺，而且非常乐意与他们部族的朋友分享治疗与复活的知识。此外，只要与他们的声望高于 “冷淡”，你就能畅通无阻地通过他们的隧道进入月光林地和冬泉谷。",
	},
});

ExportDB.OnTooltipDB.ForTimbermawHold = [[~function(t, tooltipInfo)
	local reputation = t.reputation;
	if reputation < 42000 then
		local addRepInfo = _.Modules.FactionData.AddReputationTooltipInfo;
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
		if reputation < ]] .. (HONORED - 1) .. [[ then
			addRepInfo(tooltipInfo, reputation, "Kill Deadwood Furbolgs (Stops at Honored)", 5, ]] .. (HONORED - 1) .. [[, ]] .. UNFRIENDLY .. [[);
		end
		if reputation < ]] .. (REVERED - 1) .. [[ then
			addRepInfo(tooltipInfo, reputation, "Kill Winterfall Furbolgs (Stops at Revered)", 5, ]] .. (REVERED - 1) .. [[, ]] .. UNFRIENDLY .. [[);
		end
		local repPerTurnIn = 50;
		addRepInfo(tooltipInfo, reputation, "Turn in Deadwood Feathers (x5) in Felwood", repPerTurnIn, 42000);
		local repPer, remainingTurnIns = addRepInfo(tooltipInfo, reputation, "Turn in Winterfall Beads (x5) in Winterspring", repPerTurnIn, 42000);
		local remaining = ((remainingTurnIns * 5) - ]] .. WOWAPI_GetItemCount(21383) .. [[ - ]] .. WOWAPI_GetItemCount(21377) .. [[);
		if remaining > 0 then
			tinsert(tooltipInfo, { left = "You need " .. remaining .. " more feathers/beads for Exalted.", r = 1, g = 1, b = 0 });
		end
		if reputation < ]] .. (HONORED - 1) .. [[ then
			tinsert(tooltipInfo, { left = " * PROTIP: Do NOT turn in the totems or feathers until after Honored!", r = 1, g = 0.5, b = 0.5 });
		end
	end
end]];

root(ROOTS.Zones, m(MAP.KALIMDOR, {
	n(TIMBERMAW_HOLD, {
		["zone-text-areaID"] = 1769,
		["maps"] = { MAP.FELWOOD, MAP.WINTERSPRING },
		["groups"] = {
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
					["coord"] = { 27.8, 34.6, MAP.WINTERSPRING },
					["maxReputation"] = { FACTION_TIMBERMAW_HOLD, EXALTED },	-- Timbermaw Hold, Exalted.
					["cost"] = { { "i", 21383, 5 } },	-- Winterfall Spirit Beads
					["repeatable"] = true,
					["lvl"] = 50,
				}),
				q(8461, {	-- Deadwood of the North
					["qg"] = 15395,	-- Nafien
					["coord"] = { 64.8, 8.2, MAP.FELWOOD },
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
					["lvl"] = 45,
				}),
				q(8466, {	-- Feathers for Grazle
					["sourceQuest"] = 8460,	-- Timbermaw Ally
					["qg"] = 11554,	-- Grazle
					["coord"] = { 50.9, 85.0, MAP.FELWOOD },
					["maxReputation"] = { FACTION_TIMBERMAW_HOLD, EXALTED },	-- Timbermaw Hold, Exalted.
					["cost"] = { { "i", 21377, 5 } },	-- Deadwood Headdress Feather
					["repeatable"] = true,
					["lvl"] = 45,
				}),
				q(8467, {	-- Feathers for Nafien
					["sourceQuest"] = 8460,	-- Timbermaw Ally
					["qg"] = 15395,	-- Nafien
					["coord"] = { 64.8, 8.2, MAP.FELWOOD },
					["maxReputation"] = { FACTION_TIMBERMAW_HOLD, EXALTED },	-- Timbermaw Hold, Exalted.
					["cost"] = { { "i", 21377, 5 } },	-- Deadwood Headdress Feather
					["repeatable"] = true,
					["lvl"] = 45,
				}),
				q(6031, {	-- Runecloth
					["qg"] = 11557,	-- Meilosh
					["coord"] = { 65.6, 2.8, MAP.FELWOOD },
					["minReputation"] = { FACTION_TIMBERMAW_HOLD, FRIENDLY },	-- Timbermaw Hold, Friendly.
					["cost"] = { { "i", 14047, 30 } },	-- Runecloth
					["lvl"] = 40,
					["groups"] = {
						i(15822),	-- Shadowskin Spaulders
						i(15823),	-- Bricksteel Gauntlets
					},
				}),
				q(6032, {	-- Sacred Cloth
					["qg"] = 11557,	-- Meilosh
					["coord"] = { 65.6, 2.8, MAP.FELWOOD },
					["minReputation"] = { FACTION_TIMBERMAW_HOLD, FRIENDLY },	-- Timbermaw Hold, Friendly.
					["cost"] = { { "i", 14342, 2 } },	-- Mooncloth
					["requireSkill"] = TAILORING,
					["lvl"] = 40,
					["groups"] = {
						recipe(19435),	-- Mooncloth Boots
					},
				}),
				q(8462, {	-- Speak to Nafien
					["sourceQuest"] = 8460,	-- Timbermaw Ally
					["qg"] = 11554,	-- Grazle
					["coord"] = { 50.9, 85.0, MAP.FELWOOD },
					["lvl"] = 45,
				}),
				q(8465, {	-- Speak to Salfa
					["sourceQuest"] = 8461,	-- Deadwood of the North
					["qg"] = 15395,	-- Nafien
					["coord"] = { 64.8, 8.2, MAP.FELWOOD },
					["lvl"] = 45,
				}),
				{	-- The Brokering of Peace
					["allianceQuestData"] = q(8484, {	-- The Brokering of Peace (A)
						["maps"] = { MAP.IRONFORGE },
					}),
					["hordeQuestData"] = q(8485, {	-- The Brokering of Peace (H)
						["maps"] = { MAP.ORGRIMMAR },
					}),
					["providers"] = {
						{ "n", 11555 },	-- Gorn One Eye
						{ "i", 21155 },	-- Timbermaw Offering of Peace
					},
					["coord"] = { 65.2, 2.6, MAP.FELWOOD },
					["minReputation"] = { FACTION_TIMBERMAW_HOLD, EXALTED },	-- Timbermaw Hold, Exalted.
					["lvl"] = 45,
				},
				q(8481, {	-- The Root of All Evil
					["qg"] = 11555,	-- Gorn One Eye
					["coord"] = { 65.2, 2.6, MAP.FELWOOD },
					["minReputation"] = { FACTION_TIMBERMAW_HOLD, EXALTED },	-- Timbermaw Hold, Exalted.
					["maps"] = { MAP.WINTERSPRING },
					["lvl"] = 45,
					["groups"] = {
						objective(1, {	-- 0/1 Essence of Xandivious
							["provider"] = { "i", 21145 },	-- Essence of Xandivious
							["coord"] = { 68.0, 37.6, MAP.WINTERSPRING },
							["cost"] = { { "i", 21144, 1 } },	-- Demon Summoning Torch
							["cr"] = 15623,	-- Xandivious
						}),
						i(21326),	-- Defender of the Timbermaw
					},
				}),
				q(8460, {	-- Timbermaw Ally
					["altQuests"] = { 6131 },	-- Timbermaw Ally (old version, deprecated)
					["qg"] = 11554,	-- Grazle
					["coord"] = { 50.9, 85.0, MAP.FELWOOD },
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
						i(21311),	-- Earth Warder's Vest
						i(21312),	-- Belt of the Den Watcher
					},
				}),
				q(8464, {	-- Winterfall Activity
					["qg"] = 11556,	-- Salfa
					["coord"] = { 27.8, 34.6, MAP.WINTERSPRING },
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
			}),
			n(VENDORS, {
				n(11555, {	-- Gorn One Eye
					["coord"] = { 65.2, 2.6, MAP.FELWOOD },
					["minReputation"] = { FACTION_TIMBERMAW_HOLD, HONORED },	-- Timbermaw Hold, Honored.
					["groups"] = {
						i(16768),	-- Furbolg Medicine Pouch
						i(16769),	-- Furbolg Medicine Totem
					},
				}),
				n(11557, {	-- Meilosh
					["coord"] = { 65.6, 2.8, MAP.FELWOOD },
					["groups"] = bubbleDownClassicRep(FACTION_TIMBERMAW_HOLD, {
						{	-- Neutral
						},
						{	-- Friendly
							i(22392),	-- Formula: Enchant 2H Weapon - Agility (RECIPE!)
							i(20253),	-- Pattern: Warbear Harness (RECIPE!)
							i(20254),	-- Pattern: Warbear Woolies (RECIPE!)
							i(13484),	-- Recipe: Transmute Earth to Water (RECIPE!)
						},
						{	-- Honored
							i(19445),	-- Formula: Enchant Weapon - Agility (RECIPE!)
							i(19202),	-- Plans: Heavy Timbermaw Belt (RECIPE!)
							i(19326),	-- Pattern: Might of the Timbermaw (RECIPE!)
							i(19215),	-- Pattern: Wisdom of the Timbermaw (RECIPE!)
						},
						{	-- Revered
							i(19218),	-- Pattern: Mantle of the Timbermaw (RECIPE!)
							i(19204),	-- Plans: Heavy Timbermaw Boots (RECIPE!)
							i(19327),	-- Pattern: Timbermaw Brawlers (RECIPE!)
						},
						{	-- Exalted
						},
					}),
				}),
			}),
		},
	}),
}));
