-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------
-- #if BEFORE BFA
local MageTowerFilter = {["u"] = 41};
-- #else
local MageTowerFilter =
{["timeline"] = {
	ADDED_7_2_0,
	REMOVED_8_0_1,
}};
-- #endif
local honorLevel10 = {};
local honorLevel30 = {};
local honorLevel50 = {};
local honorLevel80 = {};
root(ROOTS.PVP, {
	n(PVP_HONOR, {
		ach(12894, { ["groups"] = honorLevel10 }),	-- Honor Level 10
		ach(12902, { ["groups"] = honorLevel30 }),	-- Honor Level 30
		ach(12904, { ["groups"] = honorLevel50 }),	-- Honor Level 50
		ach(12907, { ["groups"] = honorLevel80 }),	-- Honor Level 80
	}),
});
local thisSideUpAch = {};
local oldcl = cl;
local prestige = {};
local thisSideUp = {};
table.insert(prestige, {});
table.insert(prestige, {});
table.insert(prestige, {});
table.insert(prestige, {});
local cl = function(classID, t)
	local c = oldcl(classID, t);
	table.insert(honorLevel10, oldcl(classID, { ["groups"] = prestige[1] }));
	table.insert(honorLevel30, oldcl(classID, { ["groups"] = prestige[2] }));
	table.insert(honorLevel50, oldcl(classID, { ["groups"] = prestige[3] }));
	table.insert(honorLevel80, oldcl(classID, { ["groups"] = prestige[4] }));
	table.insert(thisSideUpAch, oldcl(classID, { ["groups"] = thisSideUp }));
	thisSideUp = {};
	prestige = {};
	table.insert(prestige, {});
	table.insert(prestige, {});
	table.insert(prestige, {});
	table.insert(prestige, {});
	return c;
end
local BaseAppearance = function(icon, t)
	if not t then
		t = icon;
		icon = nil;
	end
	local header = n(-5200, t);
	if icon then
		if type(icon) == "string" then
			header.icon = icon;
		else
			header.displayID = icon;
		end
	end
	if header.model then
		print("Artifacts no longer support model!");
		print(header.model);
		header.model = nil;
	end
	return header;
end;
local ClassHallAppearance = function(icon, t)
	if not t then
		t = icon;
		icon = nil;
	end
	local header = n(-5201, t);
	if icon then header.icon = icon; end
	if header.model then
		print("Artifacts no longer support model!");
		print(header.model);
		header.model = nil;
	end
	table.insert(thisSideUp, header.groups[4]);
	return header;
end;
local BalanceOfPowerAppearance = function(icon, t)
	if not t then
		t = icon;
		icon = nil;
	end
	local header = n(-5202, t);
	if icon then header.icon = icon; end
	if header.model then
		print("Artifacts no longer support model!");
		print(header.model);
		header.model = nil;
	end
	return header;
end;
local PrestigeAppearance = function(icon, t)
	if not t then
		t = icon;
		icon = nil;
	end
	local header = n(-5203, t);
	if icon then header.icon = icon; end
	if header.model then
		print("Artifacts no longer support model!");
		print(header.model);
		header.model = nil;
	end
	table.insert(prestige[1], header.groups[1]);
	table.insert(prestige[2], header.groups[2]);
	table.insert(prestige[3], header.groups[3]);
	table.insert(prestige[4], header.groups[4]);
	return header;
end;
local ChallengeAppearance = function(icon, t)
	if not t then
		t = icon;
		icon = nil;
	end
	local header = n(-5204, t);
	if icon then
		if type(icon) == "string" then
			header.icon = icon;
		else
			header.displayID = icon;
		end
	end
	header.groups = bubbleDown(MageTowerFilter, header.groups);
	if header.model then
		print("Artifacts no longer support model!");
		print(header.model);
		header.model = nil;
	end
	-- #if BEFORE BFA
	header.u = 41;
	-- #else
	header.u = 2;
	-- #endif
	return header;
end;
local HiddenAppearance = function(icon, t)
	if not t then
		t = icon;
		icon = nil;
	end
	local header = n(-5205, t);
	if icon then header.icon = icon; end
	if header.model then
		print("Artifacts no longer support model!");
		print(header.model);
		header.model = nil;
	end
	return header;
end;

-- Some adjustments to base functions to make things a bit easier
local NoData = {}
local CurrentItemID
-- Only match groups without npcID, and adjust the ItemID when doing so
local function AssignArtifactItemID(t)
	if t.artifactID then
		t.itemID = CurrentItemID
		-- temp item ID for exact sourceID lookup during parsing
		t._sitemID = CurrentItemID + (t.isOffHand and 0.0001 or 0) + (t.artifactID / 1000)
		-- print("set artifact itemID",t.itemID)
	end
end

local i = function(id, t)
	CurrentItemID = id
	t = i(id, t)
	-- wrap all nested artifacts with the raw itemID of themselves modified by artifactID/offhand
	t = bubbleDownFiltered(NoData, AssignArtifactItemID, t);
	return t
end

root(ROOTS.ExpansionFeatures,
	expansion(EXPANSION.LEGION, {
		n(ARTIFACTS, {
			["description"] = "\nPressing |cFFFFD700CTRL + Left Click|r will allow you to preview the appropriate skin and tint.\n\n",
			["groups"] = {
				ach(11143, {		-- Honoring the Past
					["timeline"] = { ADDED_7_0_3, REMOVED_8_0_1 },
					["_noautomation"] = true,	-- It has 3 hidden achievements as criteria
				}),
				ach(10853, {		-- Part of History
					["timeline"] = { ADDED_7_0_3, REMOVED_8_0_1 },
				}),
				cl(WARRIOR, {
					i(128910, {	-- Strom'kar, the Warbreaker
						BaseAppearance(1257950, {
							artifact(295),	-- Standard
							artifact(791),	-- Recover one of the Pillars
							artifact(792),	-- Recover Light's Heart
							artifact(793),	-- Complete first major Order Hall campaign
						}),
						ClassHallAppearance(1259945, {
							artifact(794),	-- Finish Class Campaign
							artifact(795),	-- Unlock 30 Artifact Traits
							artifact(796),	-- Reach AK25
							artifact(797),	-- Complete "This Side Up"
						}),
						BalanceOfPowerAppearance(1268724, {
							artifact(805),	-- Complete Quest Line
							artifact(803),	-- Complete "Unleashed Monstrosities"
							artifact(804),	-- Complete a Mythic +15
							artifact(802),	-- Complete "Glory of the Legion Hero"
						}),
						PrestigeAppearance(1260690, {
							artifact(799),	-- Reach Honor Level 10
							artifact(798),	-- Reach Honor Level 30
							artifact(800),	-- Reach Honor Level 50
							artifact(801),	-- Reach Honor Level 80
						}),
						ChallengeAppearance(1270394, {
							artifact(806),	-- Complete Legionfall: Mage Tower
							artifact(807),	-- Defeat Heroic Kil'jaeden with appearance
							artifact(808),	-- Win 10 Rated BG's with appearance
							artifact(809),	-- Defeat all Legion dungeon bosses with appearance
						}),
						HiddenAppearance(1345206, {
							artifact(908),	-- Find Hidden Artifact Skin
							artifact(906),	-- Complete 30 Legion Dungeons Hidden
							artifact(907),	-- Complete 200 WQ Hidden
							artifact(905),	-- Kill 1,000 Players Hidden
						}),
					}),
					i(128908, {	-- Warswords of the Valarjar [Main Hand]
						BaseAppearance(1278409, {
							artifact(296),	-- Standard
							artifact(654),	-- Recover one of the Pillars
							artifact(655),	-- Recover Light's Heart
							artifact(656),	-- Complete first major Order Hall campaign
						}),
						ClassHallAppearance(1278407, {
							artifact(657),	-- Finish Class Campaign
							artifact(660),	-- Unlock 30 Artifact Traits
							artifact(659),	-- Reach AK25
							artifact(658),	-- Complete "This Side Up"
						}),
						BalanceOfPowerAppearance(1278401, {
							artifact(669),	-- Complete Quest Line
							artifact(670),	-- Complete "Unleashed Monstrosities"
							artifact(671),	-- Complete a Mythic +15
							artifact(672),	-- Complete "Glory of the Legion Hero"
						}),
						PrestigeAppearance(1278405, {
							artifact(661),	-- Reach Honor Level 10
							artifact(662),	-- Reach Honor Level 30
							artifact(663),	-- Reach Honor Level 50
							artifact(664),	-- Reach Honor Level 80
						}),
						ChallengeAppearance(1278403, {
							artifact(665),	-- Complete Legionfall: Mage Tower
							artifact(666),	-- Defeat Heroic Kil'jaeden with appearance
							artifact(667),	-- Win 10 Rated BG's with appearance
							artifact(668),	-- Defeat all Legion dungeon bosses with appearance
						}),
						HiddenAppearance(1402193, {
							i(139579, {	-- The Dragonslayers
								i(140660),	-- Haft of the God-King
								i(140658),	-- Skull of Nithogg
								i(140659),	-- Skull of Shar'thos
							}),
							artifact(964),	-- Find Hidden Artifact Skin
							artifact(962),	-- Complete 30 Legion Dungeons Hidden
							artifact(961),	-- Complete 200 WQ Hidden
							artifact(963),	-- Kill 1,000 Players Hidden
						}),
					}),
					i(134553, bubbleDown({ ["isOffHand"] = 1 }, {	-- Warswords of the Valarjar [Off Hand]
						BaseAppearance(1278409, {
							artifact(296),	-- Standard
							artifact(654),	-- Recover one of the Pillars
							artifact(655),	-- Recover Light's Heart
							artifact(656),	-- Complete first major Order Hall campaign
						}),
						ClassHallAppearance(1278407, {
							artifact(657),	-- Finish Class Campaign
							artifact(660),	-- Unlock 30 Artifact Traits
							artifact(659),	-- Reach AK25
							artifact(658),	-- Complete "This Side Up"
						}),
						BalanceOfPowerAppearance(1278401, {
							artifact(669),	-- Complete Quest Line
							artifact(670),	-- Complete "Unleashed Monstrosities"
							artifact(671),	-- Complete a Mythic +15
							artifact(672),	-- Complete "Glory of the Legion Hero"
						}),
						PrestigeAppearance(1278405, {
							artifact(661),	-- Reach Honor Level 10
							artifact(662),	-- Reach Honor Level 30
							artifact(663),	-- Reach Honor Level 50
							artifact(664),	-- Reach Honor Level 80
						}),
						ChallengeAppearance(1278403, {
							artifact(665),	-- Complete Legionfall: Mage Tower
							artifact(666),	-- Defeat Heroic Kil'jaeden with appearance
							artifact(667),	-- Win 10 Rated BG's with appearance
							artifact(668),	-- Defeat all Legion dungeon bosses with appearance
						}),
						HiddenAppearance(1402193, {
							i(139579, {	-- The Dragonslayers
								i(140660),	-- Haft of the God-King
								i(140658),	-- Skull of Nithogg
								i(140659),	-- Skull of Shar'thos
							}),
							artifact(964),	-- Find Hidden Artifact Skin
							artifact(962),	-- Complete 30 Legion Dungeons Hidden
							artifact(961),	-- Complete 200 WQ Hidden
							artifact(963),	-- Kill 1,000 Players Hidden
						}),
					})),
					i(128289, bubbleDown({ ["isOffHand"] = 1 }, {	-- Scale of the Earth-Warder
						BaseAppearance(1139451, {
							artifact(66),	-- Standard
							artifact(147),	-- Recover one of the Pillars
							artifact(148),	-- Recover Light's Heart
							artifact(146),	-- Complete first major Order Hall campaign
						}),
						ClassHallAppearance(1140763, {
							artifact(152),	-- Finish Class Campaign
							artifact(150),	-- Unlock 30 Artifact Traits
							artifact(149),	-- Reach AK25
							artifact(151),	-- Complete "This Side Up"
						}),
						BalanceOfPowerAppearance(1241202, {
							artifact(164),	-- Complete Quest Line
							artifact(162),	-- Complete "Unleashed Monstrosities"
							artifact(161),	-- Complete a Mythic +15
							artifact(163),	-- Complete "Glory of the Legion Hero"
						}),
						PrestigeAppearance(1244496, {
							artifact(154),	-- Reach Honor Level 10
							artifact(153),	-- Reach Honor Level 30
							artifact(155),	-- Reach Honor Level 50
							artifact(156),	-- Reach Honor Level 80
						}),
						ChallengeAppearance(1394278, {
							artifact(861),	-- Complete Legionfall: Mage Tower
							artifact(862),	-- Defeat Heroic Kil'jaeden with appearance
							artifact(863),	-- Win 10 Rated BG's with appearance
							artifact(864),	-- Defeat all Legion dungeon bosses with appearance
						}),
						HiddenAppearance(1246515, {
							artifact(159),	-- Find Hidden Artifact Skin
							artifact(157),	-- Complete 30 Legion Dungeons Hidden
							artifact(158),	-- Complete 200 WQ Hidden
							artifact(160),	-- Kill 1,000 Players Hidden
						}),
					})),
					i(128288, {	-- Scaleshard
						BaseAppearance(1240363, {
							artifact(66),	-- Standard
							artifact(147),	-- Recover one of the Pillars
							artifact(148),	-- Recover Light's Heart
							artifact(146),	-- Complete first major Order Hall campaign
						}),
						ClassHallAppearance(1385878, {
							artifact(152),	-- Finish Class Campaign
							artifact(150),	-- Unlock 30 Artifact Traits
							artifact(149),	-- Reach AK25
							artifact(151),	-- Complete "This Side Up"
						}),
						BalanceOfPowerAppearance(1385881, {
							artifact(164),	-- Complete Quest Line
							artifact(162),	-- Complete "Unleashed Monstrosities"
							artifact(161),	-- Complete a Mythic +15
							artifact(163),	-- Complete "Glory of the Legion Hero"
						}),
						PrestigeAppearance(1385877, {
							artifact(154),	-- Reach Honor Level 10
							artifact(153),	-- Reach Honor Level 30
							artifact(155),	-- Reach Honor Level 50
							artifact(156),	-- Reach Honor Level 80
						}),
						ChallengeAppearance(1385879, {
							artifact(861),	-- Complete Legionfall: Mage Tower
							artifact(862),	-- Defeat Heroic Kil'jaeden with appearance
							artifact(863),	-- Win 10 Rated BG's with appearance
							artifact(864),	-- Defeat all Legion dungeon bosses with appearance
						}),
						HiddenAppearance(1385880, {
							artifact(159),	-- Find Hidden Artifact Skin
							artifact(157),	-- Complete 30 Legion Dungeons Hidden
							artifact(158),	-- Complete 200 WQ Hidden
							artifact(160),	-- Kill 1,000 Players Hidden
						}),
					}),
				}),
				cl(PALADIN, {
					i(120978, {	-- Ashbringer
						BaseAppearance(1109508, {
							artifact(9),	-- Standard
							artifact(8),	-- Recover one of the Pillars
							artifact(10),	-- Recover Light's Heart
							artifact(11),	-- Complete first major Order Hall campaign
						}),
						ClassHallAppearance(1109506, {
							artifact(13),	-- Finish Class Campaign
							artifact(12),	-- Unlock 30 Artifact Traits
							artifact(14),	-- Reach AK25
							artifact(15),	-- Complete "This Side Up"
						}),
						BalanceOfPowerAppearance(1112939, {
							artifact(16),	-- Complete Quest Line
							artifact(723),	-- Complete "Unleashed Monstrosities"
							artifact(724),	-- Complete a Mythic +15
							artifact(725),	-- Complete "Glory of the Legion Hero"
						}),
						PrestigeAppearance(1109505, {
							artifact(17),	-- Reach Honor Level 10
							artifact(18),	-- Reach Honor Level 30
							artifact(19),	-- Reach Honor Level 50
							artifact(20),	-- Reach Honor Level 80
						}),
						ChallengeAppearance(1117099, {
							artifact(23),	-- Complete Legionfall: Mage Tower
							artifact(22),	-- Defeat Heroic Kil'jaeden with appearance
							artifact(21),	-- Win 10 Rated BG's with appearance
							artifact(24),	-- Defeat all Legion dungeon bosses with appearance
						}),
						HiddenAppearance(1345264, {
							artifact(865),	-- Find Hidden Artifact Skin
							artifact(866),	-- Complete 30 Legion Dungeons Hidden
							artifact(867),	-- Complete 200 WQ Hidden
							artifact(868),	-- Kill 1,000 Players Hidden
						}),
					}),
					i(128823, {	-- The Silver Hand
						BaseAppearance(1122562, {
							artifact(120),	-- Standard
							artifact(547),	-- Recover one of the Pillars
							artifact(548),	-- Recover Light's Heart
							artifact(549),	-- Complete first major Order Hall campaign
						}),
						ClassHallAppearance(1128738, {
							artifact(582),	-- Finish Class Campaign
							artifact(543),	-- Unlock 30 Artifact Traits
							artifact(553),	-- Reach AK25
							artifact(581),	-- Complete "This Side Up"
						}),
						BalanceOfPowerAppearance(1134001, {
							artifact(545),	-- Complete Quest Line
							artifact(588),	-- Complete "Unleashed Monstrosities"
							artifact(586),	-- Complete a Mythic +15
							artifact(587),	-- Complete "Glory of the Legion Hero"
						}),
						PrestigeAppearance(1131709, {
							artifact(544),	-- Reach Honor Level 10
							artifact(550),	-- Reach Honor Level 30
							artifact(551),	-- Reach Honor Level 50
							artifact(552),	-- Reach Honor Level 80
						}),
						ChallengeAppearance(1129989, {
							artifact(584),	-- Complete Legionfall: Mage Tower
							artifact(583),	-- Defeat Heroic Kil'jaeden with appearance
							artifact(546),	-- Win 10 Rated BG's with appearance
							artifact(585),	-- Defeat all Legion dungeon bosses with appearance
						}),
						HiddenAppearance(1377389, {
							artifact(977),	-- Find Hidden Artifact Skin
							artifact(978),	-- Complete 30 Legion Dungeons Hidden
							artifact(979),	-- Complete 200 WQ Hidden
							artifact(980),	-- Kill 1,000 Players Hidden
						}),
					}),
					i(128866, bubbleDown({ ["isOffHand"] = 1 }, {	-- Truthguard
						BaseAppearance(1272527, {
							artifact(291),	-- Standard
							artifact(704),	-- Recover one of the Pillars
							artifact(705),	-- Recover Light's Heart
							artifact(706),	-- Complete first major Order Hall campaign
						}),
						ClassHallAppearance(1277292, {
							artifact(707),	-- Finish Class Campaign
							artifact(708),	-- Unlock 30 Artifact Traits
							artifact(709),	-- Reach AK25
							artifact(710),	-- Complete "This Side Up"
						}),
						BalanceOfPowerAppearance(1365644, {
							artifact(856),	-- Complete Quest Line
							artifact(854),	-- Complete "Unleashed Monstrosities"
							artifact(855),	-- Complete a Mythic +15
							artifact(853),	-- Complete "Glory of the Legion Hero"
						}),
						PrestigeAppearance(1279614, {
							artifact(712),	-- Reach Honor Level 10
							artifact(711),	-- Reach Honor Level 30
							artifact(713),	-- Reach Honor Level 50
							artifact(714),	-- Reach Honor Level 80
						}),
						ChallengeAppearance(1279248, {
							artifact(718),	-- Complete Legionfall: Mage Tower
							artifact(716),	-- Defeat Heroic Kil'jaeden with appearance
							artifact(717),	-- Win 10 Rated BG's with appearance
							artifact(715),	-- Defeat all Legion dungeon bosses with appearance
						}),
						HiddenAppearance(1280608, {
							artifact(720),	-- Find Hidden Artifact Skin
							artifact(719),	-- Complete 30 Legion Dungeons Hidden
							artifact(721),	-- Complete 200 WQ Hidden
							artifact(722),	-- Kill 1,000 Players Hidden
						}),
					})),
					i(128867, {	-- Oathseeker
						BaseAppearance(1284791, {
							artifact(291),	-- Standard
							artifact(704),	-- Recover one of the Pillars
							artifact(705),	-- Recover Light's Heart
							artifact(706),	-- Complete first major Order Hall campaign
						}),
						ClassHallAppearance(1396445, {
							artifact(707),	-- Finish Class Campaign
							artifact(708),	-- Unlock 30 Artifact Traits
							artifact(709),	-- Reach AK25
							artifact(710),	-- Complete "This Side Up"
						}),
						BalanceOfPowerAppearance(1368919, {
							artifact(856),	-- Complete Quest Line
							artifact(854),	-- Complete "Unleashed Monstrosities"
							artifact(855),	-- Complete a Mythic +15
							artifact(853),	-- Complete "Glory of the Legion Hero"
						}),
						PrestigeAppearance(1396446, {
							artifact(712),	-- Reach Honor Level 10
							artifact(711),	-- Reach Honor Level 30
							artifact(713),	-- Reach Honor Level 50
							artifact(714),	-- Reach Honor Level 80
						}),
						ChallengeAppearance(1371264, {
							artifact(718),	-- Complete Legionfall: Mage Tower
							artifact(716),	-- Defeat Heroic Kil'jaeden with appearance
							artifact(717),	-- Win 10 Rated BG's with appearance
							artifact(715),	-- Defeat all Legion dungeon bosses with appearance
						}),
						HiddenAppearance(1396447, {
							artifact(720),	-- Find Hidden Artifact Skin
							artifact(719),	-- Complete 30 Legion Dungeons Hidden
							artifact(721),	-- Complete 200 WQ Hidden
							artifact(722),	-- Kill 1,000 Players Hidden
						}),
					}),
				}),
				cl(HUNTER, {
					i(128826, {	-- Thas'dorah, Legacy of the Windrunners
						BaseAppearance(1135050, {
							artifact(114),	-- Standard
							artifact(209),	-- Recover one of the Pillars
							artifact(210),	-- Recover Light's Heart
							artifact(211),	-- Complete first major Order Hall campaign
						}),
						ClassHallAppearance(1137849, {
							artifact(223),	-- Finish Class Campaign
							artifact(221),	-- Unlock 30 Artifact Traits
							artifact(222),	-- Reach AK25
							artifact(220),	-- Complete "This Side Up"
						}),
						BalanceOfPowerAppearance(1139482, {
							artifact(219),	-- Complete Quest Line
							artifact(217),	-- Complete "Unleashed Monstrosities"
							artifact(218),	-- Complete a Mythic +15
							artifact(216),	-- Complete "Glory of the Legion Hero"
						}),
						PrestigeAppearance(1147463, {
							artifact(215),	-- Reach Honor Level 10
							artifact(212),	-- Reach Honor Level 30
							artifact(214),	-- Reach Honor Level 50
							artifact(213),	-- Reach Honor Level 80
						}),
						ChallengeAppearance(1372770, {
							artifact(965),	-- Complete Legionfall: Mage Tower
							artifact(966),	-- Defeat Heroic Kil'jaeden with appearance
							artifact(967),	-- Win 10 Rated BG's with appearance
							artifact(968),	-- Defeat all Legion dungeon bosses with appearance
						}),
						HiddenAppearance(1348532, {
							artifact(224),	-- Find Artifact Skin
							artifact(225),	-- Complete 30 Legion Dungeons Hidden
							artifact(226),	-- Complete 200 WQ Hidden
							artifact(227),	-- Kill 1,000 Players Hidden
						}),
					}),
					i(128861, {	-- Titanstrike
						BaseAppearance(1280945, {
							artifact(288),	-- Standard
							artifact(452),	-- Recover one of the Pillars
							artifact(453),	-- Recover Light's Heart
							artifact(454),	-- Complete first major Order Hall campaign
						}),
						ClassHallAppearance(1281926, {
							artifact(448),	-- Finish Class Campaign
							artifact(456),	-- Unlock 30 Artifact Traits
							artifact(457),	-- Reach AK25
							artifact(455),	-- Complete "This Side Up"
						}),
						BalanceOfPowerAppearance(1300879, {
							artifact(462),	-- Complete Quest Line
							artifact(461),	-- Complete "Unleashed Monstrosities"
							artifact(450),	-- Complete a Mythic +15
							artifact(463),	-- Complete "Glory of the Legion Hero"
						}),
						PrestigeAppearance(1300878, {
							artifact(460),	-- Reach Honor Level 10
							artifact(458),	-- Reach Honor Level 30
							artifact(459),	-- Reach Honor Level 50
							artifact(449),	-- Reach Honor Level 80
						}),
						ChallengeAppearance(1303237, {
							artifact(466),	-- Complete Legionfall: Mage Tower
							artifact(465),	-- Defeat Heroic Kil'jaeden with appearance
							artifact(451),	-- Win 10 Rated BG's with appearance
							artifact(464),	-- Defeat all Legion dungeon bosses with appearance
						}),
						HiddenAppearance(1355127, {
							artifact(918),	-- Find Artifact Skin
							artifact(917),	-- Complete 30 Legion Dungeons Hidden
							artifact(919),	-- Complete 200 WQ Hidden
							artifact(920),	-- Kill 1,000 Players Hidden
						}),
					}),
					i(128808, {	-- Talonclaw
						BaseAppearance(1239829, {
							artifact(125),	-- Standard
							artifact(467),	-- Recover one of the Pillars
							artifact(468),	-- Recover Light's Heart
							artifact(469),	-- Complete first major Order Hall campaign
						}),
						ClassHallAppearance(1243849, {
							artifact(475),	-- Finish Class Campaign
							artifact(470),	-- Unlock 30 Artifact Traits
							artifact(476),	-- Reach AK25
							artifact(474),	-- Complete "This Side Up"
						}),
						BalanceOfPowerAppearance(1251700, {
							artifact(481),	-- Complete Quest Line
							artifact(480),	-- Complete "Unleashed Monstrosities"
							artifact(471),	-- Complete a Mythic +15
							artifact(482),	-- Complete "Glory of the Legion Hero"
						}),
						PrestigeAppearance(1255091, {
							artifact(472),	-- Reach Honor Level 10
							artifact(477),	-- Reach Honor Level 30
							artifact(478),	-- Reach Honor Level 50
							artifact(479),	-- Reach Honor Level 80
						}),
						ChallengeAppearance(1355682, {
							artifact(973),	-- Complete Legionfall: Mage Tower
							artifact(974),	-- Defeat Heroic Kil'jaeden with appearance
							artifact(975),	-- Win 10 Rated BG's with appearance
							artifact(976),	-- Defeat all Legion dungeon bosses with appearance
						}),
						HiddenAppearance(1257963, {
							artifact(473, {	-- Find Hidden Artifact Skin
								["provider"] = { "i", 139557 },	-- Last Breath of the Forest
							}),
							artifact(483),	-- Complete 30 Legion Dungeons Hidden
							artifact(484),	-- Complete 200 WQ Hidden
							artifact(485),	-- Kill 1,000 Players Hidden
						}),
					}),
				}),
				cl(ROGUE, {
					i(128870, {	-- The Kingslayers [Main Hand]
						BaseAppearance(1259291, {
							artifact(228),	-- Standard
							artifact(115),	-- Recover one of the Pillars
							artifact(229),	-- Recover Light's Heart
							artifact(230),	-- Complete first major Order Hall campaign
						}),
						ClassHallAppearance(1260086, {
							artifact(235),	-- Finish Class Campaign
							artifact(232),	-- Unlock 30 Artifact Traits
							artifact(231),	-- Reach AK25
							artifact(236),	-- Complete "This Side Up"
						}),
						BalanceOfPowerAppearance(1261964, {
							artifact(237),	-- Complete Quest Line
							artifact(233),	-- Complete "Unleashed Monstrosities"
							artifact(238),	-- Complete a Mythic +15
							artifact(239),	-- Complete "Glory of the Legion Hero"
						}),
						PrestigeAppearance(1261205, {
							artifact(240),	-- Reach Honor Level 10
							artifact(234),	-- Reach Honor Level 30
							artifact(241),	-- Reach Honor Level 50
							artifact(242),	-- Reach Honor Level 80
						}),
						ChallengeAppearance(1348560, {
							artifact(901),	-- Complete Legionfall: Mage Tower
							artifact(902),	-- Defeat Heroic Kil'jaeden with appearance
							artifact(903),	-- Win 10 Rated BG's with appearance
							artifact(904),	-- Defeat all Legion dungeon bosses with appearance
						}),
						HiddenAppearance(1267044, {
							artifact(611, {	-- Find Hidden Artifact Skin
								["provider"] = { "i", 139570 },	-- The Cypher of Broken Bone
							}),
							artifact(610),	-- Complete 30 Legion Dungeons Hidden
							artifact(609),	-- Complete 200 WQ Hidden
							artifact(612),	-- Kill 1,000 Players Hidden
						}),
					}),
					i(128869, bubbleDown({ ["isOffHand"] = 1 }, {	-- The Kingslayers [Off Hand]
						BaseAppearance(1259291, {
							artifact(228),	-- Standard
							artifact(115),	-- Recover one of the Pillars
							artifact(229),	-- Recover Light's Heart
							artifact(230),	-- Complete first major Order Hall campaign
						}),
						ClassHallAppearance(1260086, {
							artifact(235),	-- Finish Class Campaign
							artifact(232),	-- Unlock 30 Artifact Traits
							artifact(231),	-- Reach AK25
							artifact(236),	-- Complete "This Side Up"
						}),
						BalanceOfPowerAppearance(1261964, {
							artifact(237),	-- Complete Quest Line
							artifact(233),	-- Complete "Unleashed Monstrosities"
							artifact(238),	-- Complete a Mythic +15
							artifact(239),	-- Complete "Glory of the Legion Hero"
						}),
						PrestigeAppearance(1261205, {
							artifact(240),	-- Reach Honor Level 10
							artifact(234),	-- Reach Honor Level 30
							artifact(241),	-- Reach Honor Level 50
							artifact(242),	-- Reach Honor Level 80
						}),
						ChallengeAppearance(1348560, {
							artifact(901),	-- Complete Legionfall: Mage Tower
							artifact(902),	-- Defeat Heroic Kil'jaeden with appearance
							artifact(903),	-- Win 10 Rated BG's with appearance
							artifact(904),	-- Defeat all Legion dungeon bosses with appearance
						}),
						HiddenAppearance(1267044, {
							artifact(611, {	-- Find Hidden Artifact Skin
								["provider"] = { "i", 139570 },	-- The Cypher of Broken Bone
							}),
							artifact(610),	-- Complete 30 Legion Dungeons Hidden
							artifact(609),	-- Complete 200 WQ Hidden
							artifact(612),	-- Kill 1,000 Players Hidden
						}),
					})),
					i(128872, {	-- The Dreadblades [Main Hand]
						BaseAppearance(1267793, {
							artifact(692),	-- Standard
							artifact(693),	-- Recover one of the Pillars
							artifact(694),	-- Recover Light's Heart
							artifact(695),	-- Complete first major Order Hall campaign
						}),
						ClassHallAppearance(1269552, {
							artifact(698),	-- Finish Class Campaign
							artifact(697),	-- Unlock 30 Artifact Traits
							artifact(696),	-- Reach AK25
							artifact(699),	-- Complete "This Side Up"
						}),
						BalanceOfPowerAppearance(1301081, {
							artifact(765),	-- Complete Quest Line
							artifact(764),	-- Complete "Unleashed Monstrosities"
							artifact(766),	-- Complete a Mythic +15
							artifact(767),	-- Complete "Glory of the Legion Hero"
						}),
						PrestigeAppearance(1301083, {
							artifact(769),	-- Reach Honor Level 10
							artifact(768),	-- Reach Honor Level 30
							artifact(770),	-- Reach Honor Level 50
							artifact(771),	-- Reach Honor Level 80
						}),
						ChallengeAppearance(1271329, {
							artifact(702),	-- Complete Legionfall: Mage Tower
							artifact(701),	-- Defeat Heroic Kil'jaeden with appearance
							artifact(700),	-- Win 10 Rated BG's with appearance
							artifact(703),	-- Defeat all Legion dungeon bosses with appearance
						}),
						HiddenAppearance(1345222, {
							artifact(881),	-- Find Hidden Artifact Skin
							artifact(882),	-- Complete 30 Legion Dungeons Hidden
							artifact(883),	-- Complete 200 WQ Hidden
							artifact(884),	-- Kill 1,000 Players Hidden
						}),
					}),
					i(134552, bubbleDown({ ["isOffHand"] = 1 }, {	-- The Dreadblades [Off Hand]
						BaseAppearance(1267793, {
							artifact(692),	-- Standard
							artifact(693),	-- Recover one of the Pillars
							artifact(694),	-- Recover Light's Heart
							artifact(695),	-- Complete first major Order Hall campaign
						}),
						ClassHallAppearance(1269552, {
							artifact(698),	-- Finish Class Campaign
							artifact(697),	-- Unlock 30 Artifact Traits
							artifact(696),	-- Reach AK25
							artifact(699),	-- Complete "This Side Up"
						}),
						BalanceOfPowerAppearance(1301081, {
							artifact(765),	-- Complete Quest Line
							artifact(764),	-- Complete "Unleashed Monstrosities"
							artifact(766),	-- Complete a Mythic +15
							artifact(767),	-- Complete "Glory of the Legion Hero"
						}),
						PrestigeAppearance(1301083, {
							artifact(769),	-- Reach Honor Level 10
							artifact(768),	-- Reach Honor Level 30
							artifact(770),	-- Reach Honor Level 50
							artifact(771),	-- Reach Honor Level 80
						}),
						ChallengeAppearance(1271329, {
							artifact(702),	-- Complete Legionfall: Mage Tower
							artifact(701),	-- Defeat Heroic Kil'jaeden with appearance
							artifact(700),	-- Win 10 Rated BG's with appearance
							artifact(703),	-- Defeat all Legion dungeon bosses with appearance
						}),
						HiddenAppearance(1345222, {
							artifact(881),	-- Find Hidden Artifact Skin
							artifact(882),	-- Complete 30 Legion Dungeons Hidden
							artifact(883),	-- Complete 200 WQ Hidden
							artifact(884),	-- Kill 1,000 Players Hidden
						}),
					})),
					i(128476, {	-- Fangs of the Devourer [Main Hand]
						BaseAppearance(1120132, {
							artifact(67),	-- Standard
							artifact(68),	-- Recover one of the Pillars
							artifact(69),	-- Recover Light's Heart
							artifact(70),	-- Complete first major Order Hall campaign
						}),
						ClassHallAppearance(1120130, {
							artifact(77),	-- Finish Class Campaign
							artifact(76),	-- Unlock 30 Artifact Traits
							artifact(75),	-- Reach AK25
							artifact(78),	-- Complete "This Side Up"
						}),
						BalanceOfPowerAppearance(1120131, {
							artifact(71),	-- Complete Quest Line
							artifact(72),	-- Complete "Unleashed Monstrosities"
							artifact(73),	-- Complete a Mythic +15
							artifact(74),	-- Complete "Glory of the Legion Hero"
						}),
						PrestigeAppearance(1120129, {
							artifact(81),	-- Reach Honor Level 10
							artifact(80),	-- Reach Honor Level 30
							artifact(79),	-- Reach Honor Level 50
							artifact(82),	-- Reach Honor Level 80
						}),
						ChallengeAppearance(1120128, {
							artifact(84),	-- Complete Legionfall: Mage Tower
							artifact(83),	-- Defeat Heroic Kil'jaeden with appearance
							artifact(85),	-- Win 10 Rated BG's with appearance
							artifact(86),	-- Defeat all Legion dungeon bosses with appearance
						}),
						HiddenAppearance(1353272, {
							artifact(891),	-- Find Hidden Artifact Skin
							artifact(890),	-- Complete 30 Legion Dungeons Hidden
							artifact(889),	-- Complete 200 WQ Hidden
							artifact(892),	-- Kill 1,000 Players Hidden
						}),
					}),
					i(128479, bubbleDown({ ["isOffHand"] = 1 }, {	-- Fangs of the Devourer [Off Hand]
						BaseAppearance(1120132, {
							artifact(67),	-- Standard
							artifact(68),	-- Recover one of the Pillars
							artifact(69),	-- Recover Light's Heart
							artifact(70),	-- Complete first major Order Hall campaign
						}),
						ClassHallAppearance(1120130, {
							artifact(77),	-- Finish Class Campaign
							artifact(76),	-- Unlock 30 Artifact Traits
							artifact(75),	-- Reach AK25
							artifact(78),	-- Complete "This Side Up"
						}),
						BalanceOfPowerAppearance(1120131, {
							artifact(71),	-- Complete Quest Line
							artifact(72),	-- Complete "Unleashed Monstrosities"
							artifact(73),	-- Complete a Mythic +15
							artifact(74),	-- Complete "Glory of the Legion Hero"
						}),
						PrestigeAppearance(1120129, {
							artifact(81),	-- Reach Honor Level 10
							artifact(80),	-- Reach Honor Level 30
							artifact(79),	-- Reach Honor Level 50
							artifact(82),	-- Reach Honor Level 80
						}),
						ChallengeAppearance(1120128, {
							artifact(84),	-- Complete Legionfall: Mage Tower
							artifact(83),	-- Defeat Heroic Kil'jaeden with appearance
							artifact(85),	-- Win 10 Rated BG's with appearance
							artifact(86),	-- Defeat all Legion dungeon bosses with appearance
						}),
						HiddenAppearance(1353272, {
							artifact(891),	-- Find Hidden Artifact Skin
							artifact(890),	-- Complete 30 Legion Dungeons Hidden
							artifact(889),	-- Complete 200 WQ Hidden
							artifact(892),	-- Kill 1,000 Players Hidden
						}),
					})),
				}),
				cl(PRIEST, {
					i(128868, {	-- Light's Wrath
						BaseAppearance(1271590, {
							artifact(292),	-- Standard
							artifact(726),	-- Recover one of the Pillars
							artifact(727),	-- Recover Light's Heart
							artifact(728),	-- Complete first major Order Hall campaign
						}),
						ClassHallAppearance(1272370, {
							artifact(732),	-- Finish Class Campaign
							artifact(730),	-- Unlock 30 Artifact Traits
							artifact(731),	-- Reach AK25
							artifact(729),	-- Complete "This Side Up"
						}),
						BalanceOfPowerAppearance(1275655, {
							artifact(735),	-- Complete Quest Line
							artifact(734),	-- Complete "Unleashed Monstrosities"
							artifact(733),	-- Complete a Mythic +15
							artifact(736),	-- Complete "Glory of the Legion Hero"
						}),
						PrestigeAppearance(1273273, {
							artifact(743),	-- Reach Honor Level 10
							artifact(742),	-- Reach Honor Level 30
							artifact(741),	-- Reach Honor Level 50
							artifact(744),	-- Reach Honor Level 80
						}),
						ChallengeAppearance(1273815, {
							artifact(956),	-- Complete Legionfall: Mage Tower
							artifact(954),	-- Defeat Heroic Kil'jaeden with appearance
							artifact(955),	-- Win 10 Rated BG's with appearance
							artifact(953),	-- Defeat all Legion dungeon bosses with appearance
						}),
						HiddenAppearance(1323457, {
							artifact(738),	-- Find Hidden Artifact Skin
							artifact(737),	-- Complete 30 Legion Dungeons Hidden
							artifact(739),	-- Complete 200 WQ Hidden
							artifact(740),	-- Kill 1,000 Players Hidden
						}),
					}),
					i(128825, {	-- T'uure, Beacon of the Naaru
						BaseAppearance(1295540, {
							artifact(118),	-- Standard
							artifact(745),	-- Recover one of the Pillars
							artifact(746),	-- Recover Light's Heart
							artifact(747),	-- Complete first major Order Hall campaign
						}),
						ClassHallAppearance(1295534, {
							artifact(748),	-- Finish Class Campaign
							artifact(749),	-- Unlock 30 Artifact Traits
							artifact(750),	-- Reach AK25
							artifact(751),	-- Complete "This Side Up"
						}),
						BalanceOfPowerAppearance(1295528, {
							artifact(753),	-- Complete Quest Line
							artifact(752),	-- Complete "Unleashed Monstrosities"
							artifact(754),	-- Complete a Mythic +15
							artifact(755),	-- Complete "Glory of the Legion Hero"
						}),
						PrestigeAppearance(1295370, {
							artifact(763),	-- Reach Honor Level 10
							artifact(761),	-- Reach Honor Level 30
							artifact(762),	-- Reach Honor Level 50
							artifact(760),	-- Reach Honor Level 80
						}),
						ChallengeAppearance(1295523, {
							artifact(758),	-- Complete Legionfall: Mage Tower
							artifact(757),	-- Defeat Heroic Kil'jaeden with appearance
							artifact(756),	-- Win 10 Rated BG's with appearance
							artifact(759),	-- Defeat all Legion dungeon bosses with appearance
						}),
						HiddenAppearance(1345176, {
							i(139568, {	-- Staff of the Lightborn
								i(140657),	-- Crest of the Lightborn [Priest Hidden Artifact Appearance]
								i(140656),	-- Rod of the Ascended - Priest Artifact Appearance item
							}),
							artifact(910),	-- Find Hidden Artifact Skin
							artifact(909),	-- Complete 30 Legion Dungeons Hidden
							artifact(911),	-- Complete 200 WQ Hidden
							artifact(912),	-- Kill 1,000 Players Hidden
						}),
					}),
					i(128827, {	-- Xal'atath, Blade of the Black Empire
						BaseAppearance(1129654, {
							artifact(119),	-- Standard
							artifact(245),	-- Recover one of the Pillars
							artifact(246),	-- Recover Light's Heart
							artifact(247),	-- Complete first major Order Hall campaign
						}),
						ClassHallAppearance(1131285, {
							artifact(250),	-- Finish Class Campaign
							artifact(249),	-- Unlock 30 Artifact Traits
							artifact(248),	-- Reach AK25
							artifact(251),	-- Complete "This Side Up"
						}),
						BalanceOfPowerAppearance(1132292, {
							artifact(255),	-- Complete Quest Line
							artifact(253),	-- Complete "Unleashed Monstrosities"
							artifact(254),	-- Complete a Mythic +15
							artifact(252),	-- Complete "Glory of the Legion Hero"
						}),
						PrestigeAppearance(1134860, {
							artifact(257),	-- Reach Honor Level 10
							artifact(256),	-- Reach Honor Level 30
							artifact(258),	-- Reach Honor Level 50
							artifact(259),	-- Reach Honor Level 80
						}),
						ChallengeAppearance(1135340, {
							artifact(261),	-- Complete Legionfall: Mage Tower
							artifact(260),	-- Defeat Heroic Kil'jaeden with appearance
							artifact(262),	-- Win 10 Rated BG's with appearance
							artifact(263),	-- Defeat all Legion dungeon bosses with appearance
						}),
						HiddenAppearance(1345184, {
							artifact(950, {	-- Find Hidden Artifact Skin
								["provider"] = { "i", 139569 },	-- Claw of N'Zoth
							}),
							artifact(949),	-- Complete 30 Legion Dungeons Hidden
							artifact(951),	-- Complete 200 WQ Hidden
							artifact(952),	-- Kill 1,000 Players Hidden
						}),
					}),
					i(133958, bubbleDown({ ["isOffHand"] = 1 }, {	-- Secrets of the Void
						BaseAppearance(1336578, {
							artifact(119),	-- Standard
							artifact(245),	-- Recover one of the Pillars
							artifact(246),	-- Recover Light's Heart
							artifact(247),	-- Complete first major Order Hall campaign
						}),
						ClassHallAppearance(1336579, {
							artifact(250),	-- Finish Class Campaign
							artifact(249),	-- Unlock 30 Artifact Traits
							artifact(248),	-- Reach AK25
							artifact(251),	-- Complete "This Side Up"
						}),
						BalanceOfPowerAppearance(1336580, {
							artifact(255),	-- Complete Quest Line
							artifact(253),	-- Complete "Unleashed Monstrosities"
							artifact(254),	-- Complete a Mythic +15
							artifact(252),	-- Complete "Glory of the Legion Hero"
						}),
						PrestigeAppearance(1336581, {
							artifact(257),	-- Reach Honor Level 10
							artifact(256),	-- Reach Honor Level 30
							artifact(258),	-- Reach Honor Level 50
							artifact(259),	-- Reach Honor Level 80
						}),
						ChallengeAppearance(1336582, {
							artifact(261),	-- Complete Legionfall: Mage Tower
							artifact(260),	-- Defeat Heroic Kil'jaeden with appearance
							artifact(262),	-- Win 10 Rated BG's with appearance
							artifact(263),	-- Defeat all Legion dungeon bosses with appearance
						}),
						HiddenAppearance(1353054, {
							artifact(950, {	-- Find Hidden Artifact Skin
								["provider"] = { "i", 139569 },	-- Claw of N'Zoth
							}),
							artifact(949),	-- Complete 30 Legion Dungeons Hidden
							artifact(951),	-- Complete 200 WQ Hidden
							artifact(952),	-- Kill 1,000 Players Hidden
						}),
					})),
				}),
				cl(DEATHKNIGHT, {
					i(128402, {	-- Maw of the Damned
						BaseAppearance(1121487, {
							artifact(107),	-- Standard
							artifact(355),	-- Recover one of the Pillars
							artifact(356),	-- Recover Light's Heart
							artifact(357),	-- Complete first major Order Hall campaign
						}),
						ClassHallAppearance(1122025, {
							artifact(358),	-- Finish Class Campaign
							artifact(361),	-- Unlock 30 Artifact Traits
							artifact(362),	-- Reach AK25
							artifact(363),	-- Complete "This Side Up"
						}),
						BalanceOfPowerAppearance(1126532, {
							artifact(368),	-- Complete Quest Line
							artifact(367),	-- Complete "Unleashed Monstrosities"
							artifact(360),	-- Complete a Mythic +15
							artifact(369),	-- Complete "Glory of the Legion Hero"
						}),
						PrestigeAppearance(1310650, {
							artifact(576),	-- Reach Honor Level 10
							artifact(577),	-- Reach Honor Level 30
							artifact(578),	-- Reach Honor Level 50
							artifact(579),	-- Reach Honor Level 80
						}),
						ChallengeAppearance(1125172, {
							artifact(364),	-- Complete Legionfall: Mage Tower
							artifact(359),	-- Defeat Heroic Kil'jaeden with appearance
							artifact(365),	-- Win 10 Rated BG's with appearance
							artifact(366),	-- Defeat all Legion dungeon bosses with appearance
						}),
						HiddenAppearance(1347280, {
							artifact(921),	-- Find Hidden Artifact Skin
							artifact(922),	-- Complete 30 Legion Dungeons Hidden
							artifact(923),	-- Complete 200 WQ Hidden
							artifact(924),	-- Kill 1,000 Players Hidden
						}),
					}),
					i(128292, {	-- Blades of the Fallen Prince [Main Hand]
						BaseAppearance(1125285, {
							artifact(111),	-- Standard
							artifact(374),	-- Recover one of the Pillars
							artifact(375),	-- Recover Light's Heart
							artifact(376),	-- Complete first major Order Hall campaign
						}),
						ClassHallAppearance(1125284, {
							artifact(370),	-- Finish Class Campaign
							artifact(377),	-- Unlock 30 Artifact Traits
							artifact(378),	-- Reach AK25
							artifact(379),	-- Complete "This Side Up"
						}),
						BalanceOfPowerAppearance(1129232, {
							artifact(371),	-- Complete Quest Line
							artifact(380),	-- Complete "Unleashed Monstrosities"
							artifact(381),	-- Complete a Mythic +15
							artifact(382),	-- Complete "Glory of the Legion Hero"
						}),
						PrestigeAppearance(1129231, {
							artifact(373),	-- Reach Honor Level 10
							artifact(386),	-- Reach Honor Level 30
							artifact(387),	-- Reach Honor Level 50
							artifact(388),	-- Reach Honor Level 80
						}),
						ChallengeAppearance(1125283, {
							artifact(383),	-- Complete Legionfall: Mage Tower
							artifact(372),	-- Defeat Heroic Kil'jaeden with appearance
							artifact(384),	-- Win 10 Rated BG's with appearance
							artifact(385),	-- Defeat all Legion dungeon bosses with appearance
						}),
						HiddenAppearance(1324431, {
							artifact(870, {	-- Find Hidden Artifact Skin
								["provider"] = { "i", 139547 },	-- Runes of the Darkening
							}),
							artifact(869),	-- Complete 30 Legion Dungeons Hidden
							artifact(871),	-- Complete 200 WQ Hidden
							artifact(872),	-- Kill 1,000 Players Hidden
						}),
					}),
					i(128293, bubbleDown({ ["isOffHand"] = 1 }, {	-- Blades of the Fallen Prince [Off Hand]
						BaseAppearance(1125285, {
							artifact(111),	-- Standard
							artifact(374),	-- Recover one of the Pillars
							artifact(375),	-- Recover Light's Heart
							artifact(376),	-- Complete first major Order Hall campaign
						}),
						ClassHallAppearance(1125284, {
							artifact(370),	-- Finish Class Campaign
							artifact(377),	-- Unlock 30 Artifact Traits
							artifact(378),	-- Reach AK25
							artifact(379),	-- Complete "This Side Up"
						}),
						BalanceOfPowerAppearance(1129232, {
							artifact(371),	-- Complete Quest Line
							artifact(380),	-- Complete "Unleashed Monstrosities"
							artifact(381),	-- Complete a Mythic +15
							artifact(382),	-- Complete "Glory of the Legion Hero"
						}),
						PrestigeAppearance(1129231, {
							artifact(373),	-- Reach Honor Level 10
							artifact(386),	-- Reach Honor Level 30
							artifact(387),	-- Reach Honor Level 50
							artifact(388),	-- Reach Honor Level 80
						}),
						ChallengeAppearance(1125283, {
							artifact(383),	-- Complete Legionfall: Mage Tower
							artifact(372),	-- Defeat Heroic Kil'jaeden with appearance
							artifact(384),	-- Win 10 Rated BG's with appearance
							artifact(385),	-- Defeat all Legion dungeon bosses with appearance
						}),
						HiddenAppearance(1324431, {
							artifact(870, {	-- Find Hidden Artifact Skin
								["provider"] = { "i", 139547 },	-- Runes of the Darkening
							}),
							artifact(869),	-- Complete 30 Legion Dungeons Hidden
							artifact(871),	-- Complete 200 WQ Hidden
							artifact(872),	-- Kill 1,000 Players Hidden
						}),
					})),
					i(128403, {	-- Apocalypse
						BaseAppearance(1132294, {
							artifact(110),	-- Standard
							artifact(112),	-- Recover one of the Pillars
							artifact(389),	-- Recover Light's Heart
							artifact(390),	-- Complete first major Order Hall campaign
						}),
						ClassHallAppearance(1138068, {
							artifact(395),	-- Finish Class Campaign
							artifact(391),	-- Unlock 30 Artifact Traits
							artifact(396),	-- Reach AK25
							artifact(397),	-- Complete "This Side Up"
						}),
						BalanceOfPowerAppearance(1135584, {
							artifact(403),	-- Complete Quest Line
							artifact(401),	-- Complete "Unleashed Monstrosities"
							artifact(402),	-- Complete a Mythic +15
							artifact(393),	-- Complete "Glory of the Legion Hero"
						}),
						PrestigeAppearance(1135585, {
							artifact(399),	-- Reach Honor Level 10
							artifact(398),	-- Reach Honor Level 30
							artifact(400),	-- Reach Honor Level 50
							artifact(392),	-- Reach Honor Level 80
						}),
						ChallengeAppearance(1345186, {
							artifact(947),	-- Complete Legionfall: Mage Tower
							artifact(946),	-- Defeat Heroic Kil'jaeden with appearance
							artifact(945),	-- Win 10 Rated BG's with appearance
							artifact(948),	-- Defeat all Legion dungeon bosses with appearance
						}),
						HiddenAppearance(1140312, {
							artifact(404),	-- Find Hidden Artifact Skin
							artifact(394),	-- Complete 30 Legion Dungeons Hidden
							artifact(405),	-- Complete 200 WQ Hidden
							artifact(406),	-- Kill 1,000 Players Hidden
						}),
					}),
				}),
				cl(SHAMAN, {
					i(128819, {	-- Doomhammer
						BaseAppearance(1269862, {
							artifact(117),	-- Standard
							artifact(297),	-- Recover one of the Pillars
							artifact(302),	-- Recover Light's Heart
							artifact(303),	-- Complete first major Order Hall campaign
						}),
						ClassHallAppearance(1131645, {
							artifact(298),	-- Finish Class Campaign
							artifact(304),	-- Unlock 30 Artifact Traits
							artifact(305),	-- Reach AK25
							artifact(306),	-- Complete "This Side Up"
						}),
						BalanceOfPowerAppearance(1237900, {
							artifact(310),	-- Complete Quest Line
							artifact(300),	-- Complete "Unleashed Monstrosities"
							artifact(311),	-- Complete a Mythic +15
							artifact(312),	-- Complete "Glory of the Legion Hero"
						}),
						PrestigeAppearance(1134492, {
							artifact(299),	-- Reach Honor Level 10
							artifact(307),	-- Reach Honor Level 30
							artifact(308),	-- Reach Honor Level 50
							artifact(309),	-- Reach Honor Level 80
						}),
						ChallengeAppearance(1138038, {
							artifact(301),	-- Complete Legionfall: Mage Tower
							artifact(313),	-- Defeat Heroic Kil'jaeden with appearance
							artifact(314),	-- Win 10 Rated BG's with appearance
							artifact(315),	-- Defeat all Legion dungeon bosses with appearance
						}),
						HiddenAppearance(1345185, {
							artifact(880, {	-- Find Hidden Artifact Skin
								["provider"] = { "i", 139573, }	-- The Warmace of Shirvallah (Shaman Artifact)
							}),
							artifact(878),	-- Complete 30 Legion Dungeons Hidden
							artifact(879),	-- Complete 200 WQ Hidden
							artifact(877),	-- Kill 1,000 Players Hidden
						}),
					}),
					i(128873, bubbleDown({ ["isOffHand"] = 1 }, {	-- Fury of the Stonemother
						BaseAppearance(1282282, {
							artifact(117),	-- Standard
							artifact(297),	-- Recover one of the Pillars
							artifact(302),	-- Recover Light's Heart
							artifact(303),	-- Complete first major Order Hall campaign
						}),
						ClassHallAppearance(1397637, {
							artifact(298),	-- Finish Class Campaign
							artifact(304),	-- Unlock 30 Artifact Traits
							artifact(305),	-- Reach AK25
							artifact(306),	-- Complete "This Side Up"
						}),
						BalanceOfPowerAppearance(1397638, {
							artifact(310),	-- Complete Quest Line
							artifact(300),	-- Complete "Unleashed Monstrosities"
							artifact(311),	-- Complete a Mythic +15
							artifact(312),	-- Complete "Glory of the Legion Hero"
						}),
						PrestigeAppearance(1397639, {
							artifact(299),	-- Reach Honor Level 10
							artifact(307),	-- Reach Honor Level 30
							artifact(308),	-- Reach Honor Level 50
							artifact(309),	-- Reach Honor Level 80
						}),
						ChallengeAppearance(1397640, {
							artifact(301),	-- Complete Legionfall: Mage Tower
							artifact(313),	-- Defeat Heroic Kil'jaeden with appearance
							artifact(314),	-- Win 10 Rated BG's with appearance
							artifact(315),	-- Defeat all Legion dungeon bosses with appearance
						}),
						HiddenAppearance(1397641, {
							artifact(880, {	-- Find Hidden Artifact Skin
								["provider"] = { "i", 139573, }	-- The Warmace of Shirvallah (Shaman Artifact)
							}),
							artifact(878),	-- Complete 30 Legion Dungeons Hidden
							artifact(879),	-- Complete 200 WQ Hidden
							artifact(877),	-- Kill 1,000 Players Hidden
						}),
					})),
					i(128935, {	-- The Fist of Ra-den
						BaseAppearance(1248972, {
							artifact(113),	-- Standard
							artifact(673),	-- Recover one of the Pillars
							artifact(674),	-- Recover Light's Heart
							artifact(675),	-- Complete first major Order Hall campaign
						}),
						ClassHallAppearance(1250692, {
							artifact(676),	-- Finish Class Campaign
							artifact(677),	-- Unlock 30 Artifact Traits
							artifact(678),	-- Reach AK25
							artifact(679),	-- Complete "This Side Up"
						}),
						BalanceOfPowerAppearance(1279738, {
							artifact(682),	-- Complete Quest Line
							artifact(681),	-- Complete "Unleashed Monstrosities"
							artifact(680),	-- Complete a Mythic +15
							artifact(683),	-- Complete "Glory of the Legion Hero"
						}),
						PrestigeAppearance(1280877, {
							artifact(690),	-- Reach Honor Level 10
							artifact(689),	-- Reach Honor Level 30
							artifact(688),	-- Reach Honor Level 50
							artifact(691),	-- Reach Honor Level 80
						}),
						ChallengeAppearance(1301074, {
							artifact(684),	-- Complete Legionfall: Mage Tower
							artifact(685),	-- Defeat Heroic Kil'jaeden with appearance
							artifact(686),	-- Win 10 Rated BG's with appearance
							artifact(687),	-- Defeat all Legion dungeon bosses with appearance
						}),
						HiddenAppearance(1350105, {
							artifact(900, {	-- Find Hidden Artifact Skin
								["provider"] = { "i", 139572 },	-- Lost Codex of the Amani
							}),
							artifact(898),	-- Complete 30 Legion Dungeons Hidden
							artifact(899),	-- Complete 200 WQ Hidden
							artifact(897),	-- Kill 1,000 Players Hidden
						}),
					}),
					i(128936, bubbleDown({ ["isOffHand"] = 1 }, {	-- The Highkeeper's Ward
						BaseAppearance(1308430, {
							artifact(113),	-- Standard
							artifact(673),	-- Recover one of the Pillars
							artifact(674),	-- Recover Light's Heart
							artifact(675),	-- Complete first major Order Hall campaign
						}),
						ClassHallAppearance(1355355, {
							artifact(676),	-- Finish Class Campaign
							artifact(677),	-- Unlock 30 Artifact Traits
							artifact(678),	-- Reach AK25
							artifact(679),	-- Complete "This Side Up"
						}),
						BalanceOfPowerAppearance(1355356, {
							artifact(682),	-- Complete Quest Line
							artifact(681),	-- Complete "Unleashed Monstrosities"
							artifact(680),	-- Complete a Mythic +15
							artifact(683),	-- Complete "Glory of the Legion Hero"
						}),
						PrestigeAppearance(1355358, {
							artifact(690),	-- Reach Honor Level 10
							artifact(689),	-- Reach Honor Level 30
							artifact(688),	-- Reach Honor Level 50
							artifact(691),	-- Reach Honor Level 80
						}),
						ChallengeAppearance(1355357, {
							artifact(684),	-- Complete Legionfall: Mage Tower
							artifact(685),	-- Defeat Heroic Kil'jaeden with appearance
							artifact(686),	-- Win 10 Rated BG's with appearance
							artifact(687),	-- Defeat all Legion dungeon bosses with appearance
						}),
						HiddenAppearance(1369316, {
							artifact(900, {	-- Find Hidden Artifact Skin
								["provider"] = { "i", 139572 },	-- Lost Codex of the Amani
							}),
							artifact(898),	-- Complete 30 Legion Dungeons Hidden
							artifact(899),	-- Complete 200 WQ Hidden
							artifact(897),	-- Kill 1,000 Players Hidden
						}),
					})),
					i(128911, {	-- Sharas'dal, Scepter of Tides
						BaseAppearance(1241177, {
							artifact(116),	-- Standard
							artifact(772),	-- Recover one of the Pillars
							artifact(773),	-- Recover Light's Heart
							artifact(774),	-- Complete first major Order Hall campaign
						}),
						ClassHallAppearance(1267638, {
							artifact(775),	-- Finish Class Campaign
							artifact(776),	-- Unlock 30 Artifact Traits
							artifact(777),	-- Reach AK25
							artifact(778),	-- Complete "This Side Up"
						}),
						BalanceOfPowerAppearance(1245553, {
							artifact(781),	-- Complete Quest Line
							artifact(780),	-- Complete "Unleashed Monstrosities"
							artifact(779),	-- Complete a Mythic +15
							artifact(782),	-- Complete "Glory of the Legion Hero"
						}),
						PrestigeAppearance(1249526, {
							artifact(785),	-- Reach Honor Level 10
							artifact(784),	-- Reach Honor Level 30
							artifact(783),	-- Reach Honor Level 50
							artifact(786),	-- Reach Honor Level 80
						}),
						ChallengeAppearance(1247948, {
							artifact(787),	-- Complete Legionfall: Mage Tower
							artifact(788),	-- Defeat Heroic Kil'jaeden with appearance
							artifact(789),	-- Win 10 Rated BG's with appearance
							artifact(790),	-- Defeat all Legion dungeon bosses with appearance
						}),
						HiddenAppearance(1324976, {
							artifact(926, {	-- Find Hidden Artifact Skin
								["provider"] = { "i", 139574 },	-- Coil of the Drowned Queen
							}),
							artifact(925),	-- Complete 30 Legion Dungeons Hidden
							artifact(927),	-- Complete 200 WQ Hidden
							artifact(928),	-- Kill 1,000 Players Hidden
						}),
					}),
					i(128934, bubbleDown({ ["isOffHand"] = 1 }, {	-- Shield of the Sea Queen
						BaseAppearance(1261435, {
							artifact(116),	-- Standard
							artifact(772),	-- Recover one of the Pillars
							artifact(773),	-- Recover Light's Heart
							artifact(774),	-- Complete first major Order Hall campaign
						}),
						ClassHallAppearance(1261435, {
							artifact(775),	-- Finish Class Campaign
							artifact(776),	-- Unlock 30 Artifact Traits
							artifact(777),	-- Reach AK25
							artifact(778),	-- Complete "This Side Up"
						}),
						BalanceOfPowerAppearance(1261455, {
							artifact(781),	-- Complete Quest Line
							artifact(780),	-- Complete "Unleashed Monstrosities"
							artifact(779),	-- Complete a Mythic +15
							artifact(782),	-- Complete "Glory of the Legion Hero"
						}),
						PrestigeAppearance(1261454, {
							artifact(785),	-- Reach Honor Level 10
							artifact(784),	-- Reach Honor Level 30
							artifact(783),	-- Reach Honor Level 50
							artifact(786),	-- Reach Honor Level 80
						}),
						ChallengeAppearance(1261453, {
							artifact(787),	-- Complete Legionfall: Mage Tower
							artifact(788),	-- Defeat Heroic Kil'jaeden with appearance
							artifact(789),	-- Win 10 Rated BG's with appearance
							artifact(790),	-- Defeat all Legion dungeon bosses with appearance
						}),
						HiddenAppearance(1378882, {
							artifact(926, {	-- Find Hidden Artifact Skin
								["provider"] = { "i", 139574 },	-- Coil of the Drowned Queen
							}),
							artifact(925),	-- Complete 30 Legion Dungeons Hidden
							artifact(927),	-- Complete 200 WQ Hidden
							artifact(928),	-- Kill 1,000 Players Hidden
						}),
					})),
				}),
				cl(MAGE, {
					i(128862, {	-- Ebonchill
						BaseAppearance(1247618, {
							artifact(168),	-- Standard
							artifact(169),	-- Recover one of the Pillars
							artifact(170),	-- Recover Light's Heart
							artifact(171),	-- Complete first major Order Hall campaign
						}),
						ClassHallAppearance(1247619, {
							artifact(172),	-- Finish Class Campaign
							artifact(173),	-- Unlock 30 Artifact Traits
							artifact(174),	-- Reach AK25
							artifact(175),	-- Complete "This Side Up"
						}),
						BalanceOfPowerAppearance(1247640, {
							artifact(184),	-- Complete Quest Line
							artifact(185),	-- Complete "Unleashed Monstrosities"
							artifact(186),	-- Complete a Mythic +15
							artifact(187),	-- Complete "Glory of the Legion Hero"
						}),
						PrestigeAppearance(1247566, {
							artifact(177),	-- Reach Honor Level 10
							artifact(176),	-- Reach Honor Level 30
							artifact(178),	-- Reach Honor Level 50
							artifact(179),	-- Reach Honor Level 80
						}),
						ChallengeAppearance(1355363, {
							artifact(885),	-- Complete Legionfall: Mage Tower
							artifact(886),	-- Defeat Heroic Kil'jaeden with appearance
							artifact(887),	-- Win 10 Rated BG's with appearance
							artifact(888),	-- Defeat all Legion dungeon bosses with appearance
						}),
						HiddenAppearance(1247218, {
							artifact(180),	-- Find Hidden Artifact Skin
							artifact(181),	-- Complete 30 Legion Dungeons Hidden
							artifact(182),	-- Complete 200 WQ Hidden
							artifact(183),	-- Kill 1,000 Players Hidden
						}),
					}),
					i(128820, {	-- Felo'melorn
						BaseAppearance(1118645, {
							artifact(124),	-- Standard
							artifact(490),	-- Recover one of the Pillars
							artifact(491),	-- Recover Light's Heart
							artifact(492),	-- Complete first major Order Hall campaign
						}),
						ClassHallAppearance(1119643, {
							artifact(495),	-- Finish Class Campaign
							artifact(493),	-- Unlock 30 Artifact Traits
							artifact(494),	-- Reach AK25
							artifact(486),	-- Complete "This Side Up"
						}),
						BalanceOfPowerAppearance(1120327, {
							artifact(499),	-- Complete Quest Line
							artifact(488),	-- Complete "Unleashed Monstrosities"
							artifact(500),	-- Complete a Mythic +15
							artifact(501),	-- Complete "Glory of the Legion Hero"
						}),
						PrestigeAppearance(1121208, {
							artifact(498),	-- Reach Honor Level 10
							artifact(496),	-- Reach Honor Level 30
							artifact(497),	-- Reach Honor Level 50
							artifact(487),	-- Reach Honor Level 80
						}),
						ChallengeAppearance(1121756, {
							artifact(489),	-- Complete Legionfall: Mage Tower
							artifact(502),	-- Defeat Heroic Kil'jaeden with appearance
							artifact(503),	-- Win 10 Rated BG's with appearance
							artifact(504),	-- Defeat all Legion dungeon bosses with appearance
						}),
						HiddenAppearance(1346959, {
							artifact(893),	-- Find Hidden Artifact Skin
							artifact(894),	-- Complete 30 Legion Dungeons Hidden
							artifact(895),	-- Complete 200 WQ Hidden
							artifact(896),	-- Kill 1,000 Players Hidden
						}),
					}),
					i(133959, bubbleDown({ ["isOffHand"] = 1 }, {	-- Heart of the Phoenix
						BaseAppearance(1336583, {
							artifact(124),	-- Standard
							artifact(490),	-- Recover one of the Pillars
							artifact(491),	-- Recover Light's Heart
							artifact(492),	-- Complete first major Order Hall campaign
						}),
						ClassHallAppearance(1336584, {
							artifact(495),	-- Finish Class Campaign
							artifact(493),	-- Unlock 30 Artifact Traits
							artifact(494),	-- Reach AK25
							artifact(486),	-- Complete "This Side Up"
						}),
						BalanceOfPowerAppearance(1336585, {
							artifact(499),	-- Complete Quest Line
							artifact(488),	-- Complete "Unleashed Monstrosities"
							artifact(500),	-- Complete a Mythic +15
							artifact(501),	-- Complete "Glory of the Legion Hero"
						}),
						PrestigeAppearance(1336586, {
							artifact(498),	-- Reach Honor Level 10
							artifact(496),	-- Reach Honor Level 30
							artifact(497),	-- Reach Honor Level 50
							artifact(487),	-- Reach Honor Level 80
						}),
						ChallengeAppearance(1336587, {
							artifact(489),	-- Complete Legionfall: Mage Tower
							artifact(502),	-- Defeat Heroic Kil'jaeden with appearance
							artifact(503),	-- Win 10 Rated BG's with appearance
							artifact(504),	-- Defeat all Legion dungeon bosses with appearance
						}),
						HiddenAppearance(1349619, {
							artifact(893),	-- Find Hidden Artifact Skin
							artifact(894),	-- Complete 30 Legion Dungeons Hidden
							artifact(895),	-- Complete 200 WQ Hidden
							artifact(896),	-- Kill 1,000 Players Hidden
						}),
					})),
					i(127857, {	-- Aluneth
						BaseAppearance(1115697, {
							artifact(126),	-- Standard
							artifact(129),	-- Recover one of the Pillars
							artifact(127),	-- Recover Light's Heart
							artifact(128),	-- Complete first major Order Hall campaign
						}),
						ClassHallAppearance(1116639, {
							artifact(132),	-- Finish Class Campaign
							artifact(130),	-- Unlock 30 Artifact Traits
							artifact(133),	-- Reach AK25
							artifact(131),	-- Complete "This Side Up"
						}),
						BalanceOfPowerAppearance(1116640, {
							artifact(134),	-- Complete Quest Line
							artifact(136),	-- Complete "Unleashed Monstrosities"
							artifact(137),	-- Complete a Mythic +15
							artifact(135),	-- Complete "Glory of the Legion Hero"
						}),
						PrestigeAppearance(1119663, {
							artifact(141),	-- Reach Honor Level 10
							artifact(138),	-- Reach Honor Level 30
							artifact(140),	-- Reach Honor Level 50
							artifact(139),	-- Reach Honor Level 80
						}),
						ChallengeAppearance(1119658, {
							artifact(144),	-- Complete Legionfall: Mage Tower
							artifact(143),	-- Defeat Heroic Kil'jaeden with appearance
							artifact(145),	-- Win 10 Rated BG's with appearance
							artifact(142),	-- Defeat all Legion dungeon bosses with appearance
						}),
						HiddenAppearance(1355362, {
							artifact(846),	-- Find Hidden Artifact Skin
							artifact(847),	-- Complete 30 Legion Dungeons Hidden
							artifact(848),	-- Complete 200 WQ Hidden
							artifact(849),	-- Kill 1,000 Players Hidden
						}),
					}),
				}),
				cl(WARLOCK, {
					i(128941, {	-- Scepter of Sargeras
						BaseAppearance(1251461, {
							artifact(188),	-- Standard
							artifact(189),	-- Recover one of the Pillars
							artifact(190),	-- Recover Light's Heart
							artifact(191),	-- Complete first major Order Hall campaign
						}),
						ClassHallAppearance(1251996, {
							artifact(194),	-- Finish Class Campaign
							artifact(193),	-- Unlock 30 Artifact Traits
							artifact(192),	-- Reach AK25
							artifact(195),	-- Complete "This Side Up"
						}),
						BalanceOfPowerAppearance(1255072, {
							artifact(198),	-- Complete Quest Line
							artifact(197),	-- Complete "Unleashed Monstrosities"
							artifact(196),	-- Complete a Mythic +15
							artifact(199),	-- Complete "Glory of the Legion Hero"
						}),
						PrestigeAppearance(1257395, {
							artifact(200),	-- Reach Honor Level 10
							artifact(201),	-- Reach Honor Level 30
							artifact(202),	-- Reach Honor Level 50
							artifact(203),	-- Reach Honor Level 80
						}),
						ChallengeAppearance(1345174, {
							artifact(915),	-- Complete Legionfall: Mage Tower
							artifact(914),	-- Defeat Heroic Kil'jaeden with appearance
							artifact(913),	-- Win 10 Rated BG's with appearance
							artifact(916),	-- Defeat all Legion dungeon bosses with appearance
						}),
						HiddenAppearance(1260204, {
							artifact(207),	-- Find Hidden Artifact Skin
							artifact(205),	-- Complete 30 Legion Dungeons Hidden
							artifact(206),	-- Complete 200 WQ Hidden
							artifact(204),	-- Kill 1,000 Players Hidden
						}),
					}),
					i(128942, {	-- Ulthalesh, the Deadwind Harvester
						BaseAppearance(1281092, {
							artifact(294),	-- Standard
							artifact(320),	-- Recover one of the Pillars
							artifact(321),	-- Recover Light's Heart
							artifact(322),	-- Complete first major Order Hall campaign
						}),
						ClassHallAppearance(1281091, {
							artifact(334),	-- Finish Class Campaign
							artifact(332),	-- Unlock 30 Artifact Traits
							artifact(333),	-- Reach AK25
							artifact(316),	-- Complete "This Side Up"
						}),
						BalanceOfPowerAppearance(1281090, {
							artifact(329),	-- Complete Quest Line
							artifact(317),	-- Complete "Unleashed Monstrosities"
							artifact(330),	-- Complete a Mythic +15
							artifact(331),	-- Complete "Glory of the Legion Hero"
						}),
						PrestigeAppearance(1304738, {
							artifact(319),	-- Reach Honor Level 10
							artifact(323),	-- Reach Honor Level 30
							artifact(324),	-- Reach Honor Level 50
							artifact(325),	-- Reach Honor Level 80
						}),
						ChallengeAppearance(1356675, {
							artifact(972),	-- Complete Legionfall: Mage Tower
							artifact(970),	-- Defeat Heroic Kil'jaeden with appearance
							artifact(971),	-- Win 10 Rated BG's with appearance
							artifact(969),	-- Defeat all Legion dungeon bosses with appearance
						}),
						HiddenAppearance(1296099, {
							artifact(328),	-- Find Hidden Artifact Skin
							artifact(326),	-- Complete 30 Legion Dungeons Hidden
							artifact(318),	-- Complete 200 WQ Hidden
							artifact(327),	-- Kill 1,000 Players Hidden
						}),
					}),
					i(128943, {	-- Skull of the Man'ari
						BaseAppearance(1307173, {
							artifact(811),	-- Standard
							artifact(810),	-- Recover one of the Pillars
							artifact(812),	-- Recover Light's Heart
							artifact(813),	-- Complete first major Order Hall campaign
						}),
						ClassHallAppearance(1325307, {
							artifact(815),	-- Finish Class Campaign
							artifact(814),	-- Unlock 30 Artifact Traits
							artifact(816),	-- Reach AK25
							artifact(817),	-- Complete "This Side Up"
						}),
						BalanceOfPowerAppearance(1325308, {
							artifact(818),	-- Complete Quest Line
							artifact(819),	-- Complete "Unleashed Monstrosities"
							artifact(820),	-- Complete a Mythic +15
							artifact(821),	-- Complete "Glory of the Legion Hero"
						}),
						PrestigeAppearance(1325309, {
							artifact(824),	-- Reach Honor Level 10
							artifact(823),	-- Reach Honor Level 30
							artifact(822),	-- Reach Honor Level 50
							artifact(825),	-- Reach Honor Level 80
						}),
						ChallengeAppearance(1325312, {
							artifact(828),	-- Complete Legionfall: Mage Tower
							artifact(827),	-- Defeat Heroic Kil'jaeden with appearance
							artifact(826),	-- Win 10 Rated BG's with appearance
							artifact(829),	-- Defeat all Legion dungeon bosses with appearance
						}),
						HiddenAppearance(1348647, {
							artifact(937),	-- Find Hidden Artifact Skin
							artifact(938),	-- Complete 30 Legion Dungeons Hidden
							artifact(939),	-- Complete 200 WQ Hidden
							artifact(940),	-- Kill 1,000 Players Hidden
						}),
					}),
					i(137246, bubbleDown({ ["isOffHand"] = 1 }, {	-- Spine of Thal'kiel
						BaseAppearance(1385667, {
							artifact(811),	-- Standard
							artifact(810),	-- Recover one of the Pillars
							artifact(812),	-- Recover Light's Heart
							artifact(813),	-- Complete first major Order Hall campaign
						}),
						ClassHallAppearance(1385686, {
							artifact(815),	-- Finish Class Campaign
							artifact(814),	-- Unlock 30 Artifact Traits
							artifact(816),	-- Reach AK25
							artifact(817),	-- Complete "This Side Up"
						}),
						BalanceOfPowerAppearance(1385780, {
							artifact(818),	-- Complete Quest Line
							artifact(819),	-- Complete "Unleashed Monstrosities"
							artifact(820),	-- Complete a Mythic +15
							artifact(821),	-- Complete "Glory of the Legion Hero"
						}),
						PrestigeAppearance(1385827, {
							artifact(824),	-- Reach Honor Level 10
							artifact(823),	-- Reach Honor Level 30
							artifact(822),	-- Reach Honor Level 50
							artifact(825),	-- Reach Honor Level 80
						}),
						ChallengeAppearance(1385897, {
							artifact(828),	-- Complete Legionfall: Mage Tower
							artifact(827),	-- Defeat Heroic Kil'jaeden with appearance
							artifact(826),	-- Win 10 Rated BG's with appearance
							artifact(829),	-- Defeat all Legion dungeon bosses with appearance
						}),
						HiddenAppearance(1385904, {
							artifact(937),	-- Find Hidden Artifact Skin
							artifact(938),	-- Complete 30 Legion Dungeons Hidden
							artifact(939),	-- Complete 200 WQ Hidden
							artifact(940),	-- Kill 1,000 Players Hidden
						}),
					})),
				}),
				cl(MONK, {
					i(128937, {	-- Sheilun, Staff of the Mists
						BaseAppearance(1242282, {
							artifact(123),	-- Standard
							artifact(509),	-- Recover one of the Pillars
							artifact(510),	-- Recover Light's Heart
							artifact(511),	-- Complete first major Order Hall campaign
						}),
						ClassHallAppearance(1242281, {
							artifact(512),	-- Finish Class Campaign
							artifact(505),	-- Unlock 30 Artifact Traits
							artifact(513),	-- Reach AK25
							artifact(514),	-- Complete "This Side Up"
						}),
						BalanceOfPowerAppearance(1242278, {
							artifact(517),	-- Complete Quest Line
							artifact(515),	-- Complete "Unleashed Monstrosities"
							artifact(516),	-- Complete a Mythic +15
							artifact(506),	-- Complete "Glory of the Legion Hero"
						}),
						PrestigeAppearance(1242279, {
							artifact(508),	-- Reach Honor Level 10
							artifact(521),	-- Reach Honor Level 30
							artifact(522),	-- Reach Honor Level 50
							artifact(523),	-- Reach Honor Level 80
						}),
						ChallengeAppearance(1355365, {
							artifact(933),	-- Complete Legionfall: Mage Tower
							artifact(934),	-- Defeat Heroic Kil'jaeden with appearance
							artifact(935),	-- Win 10 Rated BG's with appearance
							artifact(936),	-- Defeat all Legion dungeon bosses with appearance
						}),
						HiddenAppearance(1242280, {
							artifact(519, {	-- Find Hidden Artifact Skin
								["provider"] = { "i", 139562 },	-- Breath of the Undying Serpent
							}),
							artifact(518),	-- Complete 30 Legion Dungeons Hidden
							artifact(507),	-- Complete 200 WQ Hidden
							artifact(520),	-- Kill 1,000 Players Hidden
						}),
					}),
					i(128938, {	-- Fu Zan, the Wanderer's Companion
						BaseAppearance(1264909, {
							artifact(289),	-- Standard
							artifact(336),	-- Recover one of the Pillars
							artifact(341),	-- Recover Light's Heart
							artifact(342),	-- Complete first major Order Hall campaign
						}),
						ClassHallAppearance(1266518, {
							artifact(337),	-- Finish Class Campaign
							artifact(343),	-- Unlock 30 Artifact Traits
							artifact(344),	-- Reach AK25
							artifact(345),	-- Complete "This Side Up"
						}),
						BalanceOfPowerAppearance(1269083, {
							artifact(348),	-- Complete Quest Line
							artifact(346),	-- Complete "Unleashed Monstrosities"
							artifact(347),	-- Complete a Mythic +15
							artifact(338),	-- Complete "Glory of the Legion Hero"
						}),
						PrestigeAppearance(1267399, {
							artifact(350),	-- Reach Honor Level 10
							artifact(349),	-- Reach Honor Level 30
							artifact(339),	-- Reach Honor Level 50
							artifact(351),	-- Reach Honor Level 80
						}),
						ChallengeAppearance(1270359, {
							artifact(352),	-- Complete Legionfall: Mage Tower
							artifact(340),	-- Defeat Heroic Kil'jaeden with appearance
							artifact(353),	-- Win 10 Rated BG's with appearance
							artifact(354),	-- Defeat all Legion dungeon bosses with appearance
						}),
						HiddenAppearance(1347706, {
							artifact(959),	-- Find Hidden Artifact Skin
							artifact(958),	-- Complete 30 Legion Dungeons Hidden
							artifact(957),	-- Complete 200 WQ Hidden
							artifact(960),	-- Kill 1,000 Players Hidden
						}),
					}),
					i(128940, {	-- Fists of the Heavens [Main Hand]
						BaseAppearance(1282595, {
							artifact(290),	-- Standard
							artifact(528),	-- Recover one of the Pillars
							artifact(529),	-- Recover Light's Heart
							artifact(530),	-- Complete first major Order Hall campaign
						}),
						ClassHallAppearance(1282594, {
							artifact(533),	-- Finish Class Campaign
							artifact(531),	-- Unlock 30 Artifact Traits
							artifact(532),	-- Reach AK25
							artifact(524),	-- Complete "This Side Up"
						}),
						BalanceOfPowerAppearance(1282593, {
							artifact(525),	-- Complete Quest Line
							artifact(534),	-- Complete "Unleashed Monstrosities"
							artifact(535),	-- Complete a Mythic +15
							artifact(536),	-- Complete "Glory of the Legion Hero"
						}),
						PrestigeAppearance(1300871, {
							artifact(538),	-- Reach Honor Level 10
							artifact(537),	-- Reach Honor Level 30
							artifact(526),	-- Reach Honor Level 50
							artifact(539),	-- Reach Honor Level 80
						}),
						ChallengeAppearance(1355360, {
							artifact(941),	-- Complete Legionfall: Mage Tower
							artifact(942),	-- Defeat Heroic Kil'jaeden with appearance
							artifact(943),	-- Win 10 Rated BG's with appearance
							artifact(944),	-- Defeat all Legion dungeon bosses with appearance
						}),
						HiddenAppearance(1307279, {
							artifact(527),	-- Find Hidden Artifact Skin
							artifact(540),	-- Complete 30 Legion Dungeons Hidden
							artifact(541),	-- Complete 200 WQ Hidden
							artifact(542),	-- Kill 1,000 Players Hidden
						}),
					}),
					i(133948, bubbleDown({ ["isOffHand"] = 1 }, {	-- Fists of the Heavens [Off Hand]
						BaseAppearance(1282595, {
							artifact(290),	-- Standard
							artifact(528),	-- Recover one of the Pillars
							artifact(529),	-- Recover Light's Heart
							artifact(530),	-- Complete first major Order Hall campaign
						}),
						ClassHallAppearance(1282594, {
							artifact(533),	-- Finish Class Campaign
							artifact(531),	-- Unlock 30 Artifact Traits
							artifact(532),	-- Reach AK25
							artifact(524),	-- Complete "This Side Up"
						}),
						BalanceOfPowerAppearance(1282593, {
							artifact(525),	-- Complete Quest Line
							artifact(534),	-- Complete "Unleashed Monstrosities"
							artifact(535),	-- Complete a Mythic +15
							artifact(536),	-- Complete "Glory of the Legion Hero"
						}),
						PrestigeAppearance(1300871, {
							artifact(538),	-- Reach Honor Level 10
							artifact(537),	-- Reach Honor Level 30
							artifact(526),	-- Reach Honor Level 50
							artifact(539),	-- Reach Honor Level 80
						}),
						ChallengeAppearance(1355360, {
							artifact(941),	-- Complete Legionfall: Mage Tower
							artifact(942),	-- Defeat Heroic Kil'jaeden with appearance
							artifact(943),	-- Win 10 Rated BG's with appearance
							artifact(944),	-- Defeat all Legion dungeon bosses with appearance
						}),
						HiddenAppearance(1307279, {
							artifact(527),	-- Find Hidden Artifact Skin
							artifact(540),	-- Complete 30 Legion Dungeons Hidden
							artifact(541),	-- Complete 200 WQ Hidden
							artifact(542),	-- Kill 1,000 Players Hidden
						}),
					})),
				}),
				cl(DRUID, {
					i(128858, {	-- Scythe of Elune
						BaseAppearance(1248965, {
							artifact(244),	-- Standard
							artifact(411),	-- Recover one of the Pillars
							artifact(412),	-- Recover Light's Heart
							artifact(413),	-- Complete first major Order Hall campaign
						}),
						ClassHallAppearance(1249991, {
							artifact(407),	-- Finish Class Campaign
							artifact(414),	-- Unlock 30 Artifact Traits
							artifact(415),	-- Reach AK25
							artifact(416),	-- Complete "This Side Up"
						}),
						BalanceOfPowerAppearance(1251491, {
							artifact(419),	-- Complete Quest Line
							artifact(417),	-- Complete "Unleashed Monstrosities"
							artifact(418),	-- Complete a Mythic +15
							artifact(408),	-- Complete "Glory of the Legion Hero"
						}),
						PrestigeAppearance(1252456, {
							artifact(421),	-- Reach Honor Level 10
							artifact(420),	-- Reach Honor Level 30
							artifact(409),	-- Reach Honor Level 50
							artifact(422),	-- Reach Honor Level 80
						}),
						ChallengeAppearance(1355364, {
							artifact(929),	-- Complete Legionfall: Mage Tower
							artifact(930),	-- Defeat Heroic Kil'jaeden with appearance
							artifact(931),	-- Win 10 Rated BG's with appearance
							artifact(932),	-- Defeat all Legion dungeon bosses with appearance
						}),
						HiddenAppearance(1251967, {
							i(139551, {	-- The Sunbloom
								i(140652),	-- Seed of Solar Fire
								i(140653),	-- Pure Drop of Shaladrassil's Sap
							}),
							artifact(425),	-- Find Hidden Artifact Skin
							artifact(423),	-- Complete 30 Legion Dungeons Hidden
							artifact(424),	-- Complete 200 WQ Hidden
							artifact(410),	-- Kill 1,000 Players Hidden
						}),
					}),
					i(128306, {	-- G'Hanir, the Mother Tree
						BaseAppearance(1115592, {
							artifact(45),	-- Standard
							artifact(46),	-- Recover one of the Pillars
							artifact(47),	-- Recover Light's Heart
							artifact(48),	-- Complete first major Order Hall campaign
						}),
						ClassHallAppearance(1116233, {
							artifact(49),	-- Finish Class Campaign
							artifact(50),	-- Unlock 30 Artifact Traits
							artifact(51),	-- Reach AK25
							artifact(52),	-- Complete "This Side Up"
						}),
						BalanceOfPowerAppearance(1118041, {
							artifact(54),	-- Complete Quest Line
							artifact(53),	-- Complete "Unleashed Monstrosities"
							artifact(55),	-- Complete a Mythic +15
							artifact(56),	-- Complete "Glory of the Legion Hero"
						}),
						PrestigeAppearance(1119939, {
							artifact(58),	-- Reach Honor Level 10
							artifact(57),	-- Reach Honor Level 30
							artifact(59),	-- Reach Honor Level 50
							artifact(60),	-- Reach Honor Level 80
						}),
						ChallengeAppearance(1348465, {
							artifact(875),	-- Complete Legionfall: Mage Tower
							artifact(874),	-- Defeat Heroic Kil'jaeden with appearance
							artifact(873),	-- Win 10 Rated BG's with appearance
							artifact(876),	-- Defeat all Legion dungeon bosses with appearance
						}),
						HiddenAppearance(1120563, {
							artifact(62),	-- Find Hidden Artifact Skin
							artifact(61),	-- Complete 30 Legion Dungeons Hidden
							artifact(63),	-- Complete 200 WQ Hidden
							artifact(64),	-- Kill 1,000 Players Hidden
						}),
					}),
					i(128860, {	-- Fangs of Ashamane [Main Hand]
						-- https://www.wowhead.com/acquiring-fangs-of-ashamane-feral-druid-artifact
						BaseAppearance(1278111, {
							artifact(426, {	-- Standard Troll
								["races"] = { TROLL, ZANDALARI },
								["displayID"] = 66779,	-- Rainbow Druid Form
							}),
							artifact(427, {	-- Standard Tauren
								["races"] = { TAUREN, HIGHMOUNTAIN_TAUREN },
								["displayID"] = 66777,	-- Brown Druid Form
							}),
							artifact(428, {	-- Standard Worgen / Kultiran
								["races"] = { WORGEN, KULTIRAN },
								["displayID"] = 66778,	-- Light Brown Form
							}),
							artifact(430, {	-- Standard Night Elf
								["races"] = { NIGHTELF },
								["displayID"] = 66780,	-- Purple Druid Form
							}),
							artifact(287, {	-- Recover one of the Pillars
								["displayID"] = 66775,	-- Black Druid Form
							}),
							artifact(429, {	-- Recover Light's Heart
								["displayID"] = 66776,	-- Blue Druid Form
							}),
							artifact(431, {	-- Complete first major Order Hall campaign
								["displayID"] = 66781,	-- White Druid Form
							}),
						}),
						ClassHallAppearance(1278111, {
							artifact(436),	-- Finish Class Campaign
							artifact(432),	-- Unlock 30 Artifact Traits
							artifact(437),	-- Reach AK25
							artifact(438),	-- Complete "This Side Up"
						}),
						BalanceOfPowerAppearance(1278111, {
							artifact(434),	-- Complete Quest Line
							artifact(442),	-- Complete "Unleashed Monstrosities"
							artifact(443),	-- Complete a Mythic +15
							artifact(444),	-- Complete "Glory of the Legion Hero"
						}),
						PrestigeAppearance(1278111, {
							artifact(433),	-- Reach Honor Level 10
							artifact(439),	-- Reach Honor Level 30
							artifact(440),	-- Reach Honor Level 50
							artifact(441),	-- Reach Honor Level 80
						}),
						ChallengeAppearance(1278111, {
							artifact(435),	-- Complete Legionfall: Mage Tower
							artifact(445),	-- Defeat Heroic Kil'jaeden with appearance
							artifact(446),	-- Win 10 Rated BG's with appearance
							artifact(447),	-- Defeat all Legion dungeon bosses with appearance
						}),
						HiddenAppearance(1278111, {
							artifact(830),	-- Find Hidden Artifact Skin
							artifact(831),	-- Complete 30 Legion Dungeons Hidden
							artifact(832),	-- Complete 200 WQ Hidden
							artifact(833),	-- Kill 1,000 Players Hidden
						}),
					}),
					i(128859, bubbleDown({ ["isOffHand"] = 1 }, {	-- Fangs of Ashamane [Off Hand]
						BaseAppearance(1278111, {
							artifact(426, {	-- Standard Troll
								["races"] = { TROLL, ZANDALARI },
								["displayID"] = 66779,	-- Rainbow Druid Form
							}),
							artifact(427, {	-- Standard Tauren
								["races"] = { TAUREN, HIGHMOUNTAIN_TAUREN },
								["displayID"] = 66777,	-- Brown Druid Form
							}),
							artifact(428, {	-- Standard Worgen / Kultiran
								["races"] = { WORGEN, KULTIRAN },
								["displayID"] = 66778,	-- Light Brown Form
							}),
							artifact(430, {	-- Standard Night Elf
								["races"] = { NIGHTELF },
								["displayID"] = 66780,	-- Purple Druid Form
							}),
							artifact(287, {	-- Recover one of the Pillars
								["displayID"] = 66775,	-- Black Druid Form
							}),
							artifact(429, {	-- Recover Light's Heart
								["displayID"] = 66776,	-- Blue Druid Form
							}),
							artifact(431, {	-- Complete first major Order Hall campaign
								["displayID"] = 66781,	-- White Druid Form
							}),
						}),
						ClassHallAppearance(1278111, {
							artifact(436),	-- Finish Class Campaign
							artifact(432),	-- Unlock 30 Artifact Traits
							artifact(437),	-- Reach AK25
							artifact(438),	-- Complete "This Side Up"
						}),
						BalanceOfPowerAppearance(1278111, {
							artifact(434),	-- Complete Quest Line
							artifact(442),	-- Complete "Unleashed Monstrosities"
							artifact(443),	-- Complete a Mythic +15
							artifact(444),	-- Complete "Glory of the Legion Hero"
						}),
						PrestigeAppearance(1278111, {
							artifact(433),	-- Reach Honor Level 10
							artifact(439),	-- Reach Honor Level 30
							artifact(440),	-- Reach Honor Level 50
							artifact(441),	-- Reach Honor Level 80
						}),
						ChallengeAppearance(1278111, {
							artifact(435),	-- Complete Legionfall: Mage Tower
							artifact(445),	-- Defeat Heroic Kil'jaeden with appearance
							artifact(446),	-- Win 10 Rated BG's with appearance
							artifact(447),	-- Defeat all Legion dungeon bosses with appearance
						}),
						HiddenAppearance(1278111, {
							artifact(830),	-- Find Hidden Artifact Skin
							artifact(831),	-- Complete 30 Legion Dungeons Hidden
							artifact(832),	-- Complete 200 WQ Hidden
							artifact(833),	-- Kill 1,000 Players Hidden
						}),
					})),
					i(128821, {	-- Claws of Ursoc [Main Hand]
						BaseAppearance(1129695, {
							artifact(265, {	-- Standard Troll
								["races"] = { TROLL, ZANDALARI },
							}),
							artifact(264, {	-- Standard Tauren
								["races"] = { TAUREN, HIGHMOUNTAIN_TAUREN },
							}),
							artifact(266, {	-- Standard Worgen / Kultiran
								["races"] = { WORGEN, KULTIRAN },
							}),
							artifact(121, {	-- Standard Night Elf
								["races"] = { NIGHTELF },
							}),
							artifact(267),	-- Recover one of the Pillars
							artifact(268),	-- Recover Light's Heart
							artifact(269),	-- Complete first major Order Hall campaign
						}),
						ClassHallAppearance(1129695, {
							artifact(274),	-- Finish Class Campaign
							artifact(270),	-- Unlock 30 Artifact Traits
							artifact(275),	-- Reach AK25
							artifact(276),	-- Complete "This Side Up"
						}),
						BalanceOfPowerAppearance(1129695, {
							artifact(277),	-- Complete Quest Line
							artifact(271),	-- Complete "Unleashed Monstrosities"
							artifact(278),	-- Complete a Mythic +15
							artifact(279),	-- Complete "Glory of the Legion Hero"
						}),
						PrestigeAppearance(1129695, {
							artifact(272),	-- Reach Honor Level 10
							artifact(280),	-- Reach Honor Level 30
							artifact(281),	-- Reach Honor Level 50
							artifact(282),	-- Reach Honor Level 80
						}),
						ChallengeAppearance(1129695, {
							artifact(990),	-- Complete Legionfall: Mage Tower
							artifact(991),	-- Defeat Heroic Kil'jaeden with appearance
							artifact(992),	-- Win 10 Rated BG's with appearance
							artifact(993),	-- Defeat all Legion dungeon bosses with appearance
						}),
						HiddenAppearance(1129695, {
							artifact(283, {	-- Find Hidden Artifact Skin
								["provider"] = { "i", 139553 },	-- Mark of the Glade Guardian
							}),
							artifact(273),	-- Complete 30 Legion Dungeons Hidden
							artifact(284),	-- Complete 200 WQ Hidden
							artifact(285),	-- Kill 1,000 Players Hidden
						}),
					}),
					i(128822, bubbleDown({ ["isOffHand"] = 1 }, {	-- Claws of Ursoc [Offhand]
						BaseAppearance(1129695, {
							artifact(265, {	-- Standard Troll
								["races"] = { TROLL, ZANDALARI },
							}),
							artifact(264, {	-- Standard Tauren
								["races"] = { TAUREN, HIGHMOUNTAIN_TAUREN },
							}),
							artifact(266, {	-- Standard Worgen / Kultiran
								["races"] = { WORGEN, KULTIRAN },
							}),
							artifact(121, {	-- Standard Night Elf
								["races"] = { NIGHTELF },
							}),
							artifact(267),	-- Recover one of the Pillars
							artifact(268),	-- Recover Light's Heart
							artifact(269),	-- Complete first major Order Hall campaign
						}),
						ClassHallAppearance(1129695, {
							artifact(274),	-- Finish Class Campaign
							artifact(270),	-- Unlock 30 Artifact Traits
							artifact(275),	-- Reach AK25
							artifact(276),	-- Complete "This Side Up"
						}),
						BalanceOfPowerAppearance(1129695, {
							artifact(277),	-- Complete Quest Line
							artifact(271),	-- Complete "Unleashed Monstrosities"
							artifact(278),	-- Complete a Mythic +15
							artifact(279),	-- Complete "Glory of the Legion Hero"
						}),
						PrestigeAppearance(1129695, {
							artifact(272),	-- Reach Honor Level 10
							artifact(280),	-- Reach Honor Level 30
							artifact(281),	-- Reach Honor Level 50
							artifact(282),	-- Reach Honor Level 80
						}),
						ChallengeAppearance(1129695, {
							artifact(990),	-- Complete Legionfall: Mage Tower
							artifact(991),	-- Defeat Heroic Kil'jaeden with appearance
							artifact(992),	-- Win 10 Rated BG's with appearance
							artifact(993),	-- Defeat all Legion dungeon bosses with appearance
						}),
						HiddenAppearance(1129695, {
							artifact(283, {	-- Find Hidden Artifact Skin
								["provider"] = { "i", 139553 },	-- Mark of the Glade Guardian
							}),
							artifact(273),	-- Complete 30 Legion Dungeons Hidden
							artifact(284),	-- Complete 200 WQ Hidden
							artifact(285),	-- Kill 1,000 Players Hidden
						}),
					})),
				}),
				cl(DEMONHUNTER, {
					i(127829, {	-- Twinblades of the Deceiver [Main Hand]
						BaseAppearance(1117778, {
							artifact(26),	-- Standard
							artifact(25),	-- Recover one of the Pillars
							artifact(27),	-- Recover Light's Heart
							artifact(28),	-- Complete first major Order Hall campaign
						}),
						ClassHallAppearance(1118669, {
							artifact(30),	-- Finish Class Campaign
							artifact(29),	-- Unlock 30 Artifact Traits
							artifact(31),	-- Reach AK25
							artifact(32),	-- Complete "This Side Up"
						}),
						BalanceOfPowerAppearance(1119519, {
							artifact(36),	-- Complete Quest Line
							artifact(34),	-- Complete "Unleashed Monstrosities"
							artifact(35),	-- Complete a Mythic +15
							artifact(33),	-- Complete "Glory of the Legion Hero"
						}),
						PrestigeAppearance(1120966, {
							artifact(43),	-- Reach Honor Level 10
							artifact(42),	-- Reach Honor Level 30
							artifact(41),	-- Reach Honor Level 50
							artifact(44),	-- Reach Honor Level 80
						}),
						ChallengeAppearance(1120198, {
							artifact(39),	-- Complete Legionfall: Mage Tower
							artifact(38),	-- Defeat Heroic Kil'jaeden with appearance
							artifact(37),	-- Win 10 Rated BG's with appearance
							artifact(40),	-- Defeat all Legion dungeon bosses with appearance
						}),
						HiddenAppearance(1355359, {
							artifact(982),	-- Find Hidden Artifact Skin
							artifact(981),	-- Complete 30 Legion Dungeons Hidden
							artifact(983),	-- Complete 200 WQ Hidden
							artifact(984),	-- Kill 1,000 Players Hidden
						}),
					}),
					i(127830, bubbleDown({ ["isOffHand"] = 1 }, {	-- Twinblades of the Deceiver [Off Hand]
						BaseAppearance(1117778, {
							artifact(26),	-- Standard
							artifact(25),	-- Recover one of the Pillars
							artifact(27),	-- Recover Light's Heart
							artifact(28),	-- Complete first major Order Hall campaign
						}),
						ClassHallAppearance(1118669, {
							artifact(30),	-- Finish Class Campaign
							artifact(29),	-- Unlock 30 Artifact Traits
							artifact(31),	-- Reach AK25
							artifact(32),	-- Complete "This Side Up"
						}),
						BalanceOfPowerAppearance(1119519, {
							artifact(36),	-- Complete Quest Line
							artifact(34),	-- Complete "Unleashed Monstrosities"
							artifact(35),	-- Complete a Mythic +15
							artifact(33),	-- Complete "Glory of the Legion Hero"
						}),
						PrestigeAppearance(1120966, {
							artifact(43),	-- Reach Honor Level 10
							artifact(42),	-- Reach Honor Level 30
							artifact(41),	-- Reach Honor Level 50
							artifact(44),	-- Reach Honor Level 80
						}),
						ChallengeAppearance(1120198, {
							artifact(39),	-- Complete Legionfall: Mage Tower
							artifact(38),	-- Defeat Heroic Kil'jaeden with appearance
							artifact(37),	-- Win 10 Rated BG's with appearance
							artifact(40),	-- Defeat all Legion dungeon bosses with appearance
						}),
						HiddenAppearance(1355359, {
							artifact(982),	-- Find Hidden Artifact Skin
							artifact(981),	-- Complete 30 Legion Dungeons Hidden
							artifact(983),	-- Complete 200 WQ Hidden
							artifact(984),	-- Kill 1,000 Players Hidden
						}),
					})),
					i(128832, {	-- Aldrachi Warblades [Main Hand]
						BaseAppearance(1309072, {
							artifact(554),	-- Standard
							artifact(555),	-- Recover one of the Pillars
							artifact(556),	-- Recover Light's Heart
							artifact(557),	-- Complete first major Order Hall campaign
						}),
						ClassHallAppearance(1309074, {
							artifact(559),	-- Finish Class Campaign
							artifact(558),	-- Unlock 30 Artifact Traits
							artifact(560),	-- Reach AK25
							artifact(561),	-- Complete "This Side Up"
						}),
						BalanceOfPowerAppearance(1305671, {
							artifact(563),	-- Complete Quest Line
							artifact(562),	-- Complete "Unleashed Monstrosities"
							artifact(564),	-- Complete a Mythic +15
							artifact(565),	-- Complete "Glory of the Legion Hero"
						}),
						PrestigeAppearance(1307220, {
							artifact(567),	-- Reach Honor Level 10
							artifact(566),	-- Reach Honor Level 30
							artifact(568),	-- Reach Honor Level 50
							artifact(569),	-- Reach Honor Level 80
						}),
						ChallengeAppearance(1377076, {
							artifact(857),	-- Complete Legionfall: Mage Tower
							artifact(858),	-- Defeat Heroic Kil'jaeden with appearance
							artifact(859),	-- Win 10 Rated BG's with appearance
							artifact(860),	-- Defeat all Legion dungeon bosses with appearance
						}),
						HiddenAppearance(1309073, {
							artifact(571),	-- Find Hidden Artifact Skin
							artifact(570),	-- Complete 30 Legion Dungeons Hidden
							artifact(572),	-- Complete 200 WQ Hidden
							artifact(573),	-- Kill 1,000 Players Hidden
						}),
					}),
					i(128831, bubbleDown({ ["isOffHand"] = 1 }, {	-- Aldrachi Warblades [Off Hand]
						BaseAppearance(1309072, {
							artifact(554),	-- Standard
							artifact(555),	-- Recover one of the Pillars
							artifact(556),	-- Recover Light's Heart
							artifact(557),	-- Complete first major Order Hall campaign
						}),
						ClassHallAppearance(1309074, {
							artifact(559),	-- Finish Class Campaign
							artifact(558),	-- Unlock 30 Artifact Traits
							artifact(560),	-- Reach AK25
							artifact(561),	-- Complete "This Side Up"
						}),
						BalanceOfPowerAppearance(1305671, {
							artifact(563),	-- Complete Quest Line
							artifact(562),	-- Complete "Unleashed Monstrosities"
							artifact(564),	-- Complete a Mythic +15
							artifact(565),	-- Complete "Glory of the Legion Hero"
						}),
						PrestigeAppearance(1307220, {
							artifact(567),	-- Reach Honor Level 10
							artifact(566),	-- Reach Honor Level 30
							artifact(568),	-- Reach Honor Level 50
							artifact(569),	-- Reach Honor Level 80
						}),
						ChallengeAppearance(1377076, {
							artifact(857),	-- Complete Legionfall: Mage Tower
							artifact(858),	-- Defeat Heroic Kil'jaeden with appearance
							artifact(859),	-- Win 10 Rated BG's with appearance
							artifact(860),	-- Defeat all Legion dungeon bosses with appearance
						}),
						HiddenAppearance(1309073, {
							artifact(571),	-- Find Hidden Artifact Skin
							artifact(570),	-- Complete 30 Legion Dungeons Hidden
							artifact(572),	-- Complete 200 WQ Hidden
							artifact(573),	-- Kill 1,000 Players Hidden
						}),
					})),
				}),
				prof(FISHING, {
					i(133755, {	-- Underlight Angler
						-- Note for future: These don't load a SourceID via GetSourceID()...
						-- so they can be applied manually
						artifact(841, {	-- Base Skin
							["sourceQuest"] = 41010,	-- Fish Frenzy
							["sourceID"] = 76909,
						}),
						artifact(988, {	-- Fisherfriend of the Isles
							["provider"] = { "i", 152583 },	-- Underlight Emerald
							["sourceID"] = 82962,
						}),
						artifact(989, {	-- Fisherfriend of the Isles
							["provider"] = { "i", 152583 },	-- Underlight Emerald
							["sourceID"] = 82963,
						}),
					}),
				}),
			},
		}),
	})
);
root(ROOTS.HiddenQuestTriggers, {
	expansion(EXPANSION.LEGION, {
		-- Death Knight
		q(40722),	-- Blood Chosen - Blood Artifact chosen first
		q(40723),	-- Frost Chosen - Frost Artifact chosen first
		q(40724),	-- Unholy Chosen - Unholy Artifact chosen first
		q(43965),	-- Blood Chosen - Blood Artifact chosen second
		q(43966),	-- Frost Chosen - Frost Artifact chosen second
		q(43967),	-- Unholy Chosen - Unholy Artifact chosen second
		q(44402),	-- Blood Chosen - Blood Artifact chosen third
		q(44403),	-- Frost Chosen - Frost Artifact chosen third
		q(44404),	-- Unholy Chosen - Unholy Artifact chosen third

		-- Demon Hunter -- TODO -Darkal
		-- 5 IDs, I can't find the pattern -Darkal
		q(40817),	-- Twinblades of the Deceiver Chosen - Havoc Artifact chosen first

		q(40818),	-- Aldrachi Warblades Chosen - first

		q(44380),	-- Havoc Chosen
		q(44381),	-- Twinblades of the Deceiver Chosen
		q(44382),	-- Vengeance Chosen

		-- Druid
		q(40701),	-- Feral Chosen - Feral Artifact chosen first
		q(40702),	-- Guardian Chosen - Guardian Artifact chosen first
		q(40703),	-- Restoration Chosen - Restoration Artifact chosen first
		q(40781),	-- Balance Chosen - Balance Artifact chosen first
		q(43976),	-- Balance Chosen - Balance Artifact chosen second
		q(43977),	-- Guardian Chosen - Guardian Artifact chosen second
		q(43978),	-- Feral Chosen - Feral Artifact chosen second
		q(43979),	-- Resto Chosen - Restoration Artifact chosen second
		q(44432),	-- Balance Chosen - Balance Artifact chosen third
		q(44433),	-- Feral Chosen - Feral Artifact chosen third
		q(44434),	-- Guardian Chosen - Guardian Artifact chosen third
		q(44436),	-- Resto Chosen - Restoration Artifact chosen third
		q(44444),	-- Balance Chosen - Balance Artifact chosen fourth
		q(44445),	-- Feral Chosen - Feral Artifact chosen fourth
		q(44446),	-- Guardian Chosen - Guardian Artifact chosen fourth
		q(44447),	-- Resto Chosen - Resto Artifact chosen fourth

		-- Hunter
		q(40619),	-- Survival Chosen - Survival Artifact chosen first
		q(40620),	-- Marksmanship Chosen - Marksmanship Artifact chosen first
		q(40621),	-- Beast Mastery Chosen - Beast Mastery Artifact chosen first
		q(44045),	-- Beast Mastery Chosen - Beast Mastery Artifact chosen second
		q(44046),	-- Marksmanship Chosen - Marksmanship Artifact chosen second
		q(44047),	-- Survival Chosen - Survival Artifact chosen second
		q(44367),	-- Beast Mastery Chosen - Beast Mastery Artifact chosen third
		q(44368),	-- Marksmanship Chosen - Marksmanship Artifact chosen third
		q(44369),	-- Survival Chosen - Survival Artifact chosen third

		-- Mage
		q(41079),	-- Arcane Chosen - Arcane Artifact chosen first
		q(41080),	-- Fire Chosen - Fire Artifact chosen first
		q(41081),	-- Frost Chosen - Frost Artifact chosen first
		q(43442),	-- Arcane Chosen - Arcane Artifact chosen second
		q(43443),	-- Fire Chosen - Fire Artifact chosen second
		q(43444),	-- Frost Chosen - Frost Artifact chosen second
		q(44307),	-- Arcane Chosen - Arcane Artifact chosen third
		q(44308),	-- Fire Chosen - Fire Artifact chosen third
		q(44309),	-- Frost Chosen - Frost Artifact chosen third

		-- Monk
		q(40638),	-- Windwalker Chosen - Windwalker Artifact chosen first
		q(40639),	-- Mistweaver Chosen - Mistweaver Artifact chosen first
		q(40640),	-- Brewmaster Chosen - Brewmaster Artifact chosen first
		q(43970),	-- Brewmaster Chosen - Brewmaster Artifact chosen second
		q(43971),	-- Windwalker Chosen - Windwalker Artifact chosen second
		q(43972),	-- Mistweaver Chosen - Mistweaver Artifact chosen second
		q(44427),	-- Brewmaster Chosen - Brewmaster Artifact chosen third
		q(44428),	-- Mistweaver Chosen - Mistweaver Artifact chosen third
		q(44429),	-- Windwalker Chosen - Windwalker Artifact chosen third

		-- Paladin
		q(40409),	-- Ashbringer Chosen - Retribution Artifact chosen first
		q(40410),	-- Silver Hand Chosen - Holy Artifact chosen first
		q(40411),	-- Truthguard Chosen - Protection Artifact chosen first
		q(42495),	-- Ashbringer Chosen - Retribution Artifact chosen first
		q(42496),	-- Truthguard Chosen - Holy Artifact chosen first
		q(42497),	-- Silver Hand Chosen - Protection Artifact chosen first
		q(44064),	-- Holy Chosen - Holy Artifact chosen second
		q(44065),	-- Protection Chosen - Protection Artifact chosen second
		q(44066),	-- Retribution Chosen - Retribution Artifact chosen second
		q(44371),	-- Holy Chosen - Holy Artifact chosen third
		q(44372),	-- Protection Chosen - Protection Artifact chosen third
		q(44373),	-- Retribution Chosen - Retribution Artifact chosen third

		-- Priest
		q(40707),	-- Shadow Chosen - Shadow Artifact chosen first
		q(40708),	-- Holy Chosen - Holy Artifact chosen first
		q(40709),	-- Discipline Chosen - Discipline Artifact chosen first
		q(43939),	-- Shadow Chosen - Shadow Artifact chosen second
		q(43941),	-- Discipline - Discipline Artifact chosen Chosen second
		q(43940),	-- Holy Chosen - Holy Artifact chosen second
		q(44408),	-- Shadow Chosen - Shadow Artifact chosen third
		q(44409),	-- Discipline Chosen - Discipline Artifact chosen third
		q(44410),	-- Holy Chosen - Holy Artifact chosen third

		-- Rogue
		q(40842),	-- Kingslayers Chosen - Assassination Artifact chosen first
		q(40843),	-- Dreadblades Chosen - Outlaw Artifact chosen first
		q(40844),	-- Fangs of the Devourer Chosen - Subtlety Artifact chosen first
		q(44036),	-- Assassination Chosen  - Assassination Artifact chosen second
		q(44037),	-- Combat Chosen - Outlaw Artifact chosen second
		q(44038),	-- Subtlety Chosen - Subtlety Artifact chosen second
		q(44376),	-- Assassination Chosen  - Assassination Artifact chosen third
		q(44377),	-- Combat Chosen - Outlaw Artifact chosen third
		q(44378),	-- Subtlety Chosen - Subtlety Artifact chosen third

		-- Shaman
		q(41328),	-- Enhancement Artifact Chosen - Enhancement Artifact chosen first
		q(41329),	-- Elemental Artifact Chosen - Elemental Artifact chosen first
		q(41330),	-- Restoration Artifact Chosen - Restoration Artifact chosen first

		-- I have all of those 3 on the same character which makes no sense -- TODO -Darkal
		-- Also I can't find any other 3 IDs for "second or third" -Darkal
		q(43946),	-- Enhancement Chosen - reported as second
		q(43947),	-- Elemental Chosen
		q(43948),	-- Restoration Chosen - reported as third

		-- Warrior
		q(40580),	-- Protection Chosen - Protection Artifact chosen first
		q(40581),	-- Fury Chosen - Fury Artifact chosen first
		q(40582),	-- Arms Chosen - Arms Artifact chosen first
		q(43950),	-- Fury Chosen - Fury Artifact chosen second
		q(43952),	-- Arms Chosen - Arms Artifact chosen second
		q(43953),	-- Protection Chosen - Protection Artifact chosen second
		q(44418),	-- Fury Chosen - Fury Artifact chosen third
		q(44419),	-- Arms Chosen - Arms Artifact chosen third
		q(44420),	-- Protection Chosen - Protection Artifact chosen third

		-- Warlock
		q(40686),	-- Affliction Chosen - Affliction Artifact chosen first
		q(40687),	-- Destruction Chosen - Destruction Artifact chosen first
		q(40688),	-- Demonology Chosen - Demonology Artifact chosen first
		q(43981),	-- Affliction Chosen - Affliction Artifact chosen second
		q(43982),	-- Demonology Chosen - Demonology Artifact chosen second
		q(43983),	-- Destruction Chosen - Destruction Artifact chosen second
		q(44388),	-- Affliction Chosen - Affliction Artifact chosen third
		q(44389),	-- Destruction Chosen - Destruction Artifact chosen third
		q(44390),	-- Demonology Chosen - Demonology Artifact chosen third

		-- Mage Tower
		q(45849),	-- Tracking Quest - 3+ Targets Trait Complete - completed "A Gift From The Six" (questID 45862)
		q(45850),	-- Tracking Quest - AoE Chosen - completed "A Gift From The Six" (questID 45861)
		q(45851),	-- Dual Boss Trait Complete - completed "A Gift From The Six" (questID 45842)
		q(45852),	-- Healer Trait Complete - completed "A Gift From The Six" (questID 45864)
		q(45853),	-- Melee DPS Trait Complete - completed "A Gift From The Six" (questID 45865)
		q(45854),	-- Ranged DPS Trait Complete - completed "A Gift From The Six" (questID 45866)
		q(45855),	-- Tank Trait Complete - completed "A Gift From The Six" (questID 45863)

		-- Hidden Appearance
		q(43646),	-- Hidden Appearance Unlocked - Blood Death Knight
		q(43647),	-- Hidden Appearance Unlocked - Frost Death Knight
		q(43648),	-- Hidden Appearance Unlocked - Unholy Death Knight
		q(43649),	-- Hidden Appearance Unlocked - Havoc Demon Hunter
		q(43650),	-- Hidden Appearance Unlocked - Vengeance Demon Hunter
		q(43651),	-- Hidden Appearance Unlocked - Balance Druid
		q(43652),	-- Hidden Appearance Unlocked - Feral Druid
		q(43653),	-- Hidden Appearance Unlocked - Guardian Druid
		q(43654),	-- Hidden Appearance Unlocked - Restoration Druid
		q(43655),	-- Hidden Appearance Unlocked - Beast Mastery Hunter
		q(43656),	-- Hidden Appearance Unlocked - Marksmanship Hunter
		q(43657),	-- Hidden Appearance Unlocked - Survival Hunter
		-- q(43658),	-- Hidden Appearance Unlocked - Arcane Mage [Used as a header in Mage Class Hall]
		q(43659),	-- Hidden Appearance Unlocked - Fire Mage
		q(43660),	-- Hidden Appearance Unlocked - Frost Mage
		q(43661),	-- Hidden Appearance Unlocked - Brewmaster Monk
		q(43662),	-- Hidden Appearance Unlocked - Mistweaver Monk
		q(43663),	-- Hidden Appearance Unlocked - Windwalker Monk
		q(43664),	-- Hidden Appearance Unlocked - Holy Paladin
		q(43665),	-- Hidden Appearance Unlocked - Protection Paladin
		q(43666),	-- Hidden Appearance Unlocked - Retribution Paladin
		q(43667),	-- Hidden Appearance Unlocked - Disco Priest
		q(43668),	-- Hidden Appearance Unlocked - Holy Priest
		q(43669),	-- Hidden Appearance Unlocked - Shadow Priest
		q(43670),	-- Hidden Appearance Unlocked - Assassination Rogue
		q(43671),	-- Hidden Appearance Unlocked - Outlaw Rogue
		q(43672),	-- Hidden Appearance Unlocked - Subtlety Rogue
		q(43673),	-- Hidden Appearance Unlocked - Elemental Shaman
		q(43674),	-- Hidden Appearance Unlocked - Enhancement Shaman
		q(43675),	-- Hidden Appearance Unlocked - Restoration Shaman
		q(43676),	-- Hidden Appearance Unlocked - Affliction Warlock
		q(43677),	-- Hidden Appearance Unlocked - Demonology Warlock
		q(43678),	-- Hidden Appearance Unlocked - Destruction Warlock
		q(43679),	-- Hidden Appearance Unlocked - Arms Warrior
		q(43680),	-- Hidden Appearance Unlocked - Fury Warrior
		q(43681),	-- Hidden Appearance Unlocked - Protection Warrior

		-- Various
		q(41263),	-- Oh! So Powerful! - triggered after unholy dk artifact power questline
		q(44149),	-- Tracking Quest - Looted frost death knight hidden appearance
		q(44150),	-- Tracking Quest - Looted enhancement shaman hidden appearance
		q(44151),	-- Tracking Quest - Looted Skull of Nithogg (itemID 140658) - part of the fury warrior hidden appearance
		q(43559),	-- Triggers when turning in the "Bindings of the Windlord" (questID 43558) just prior to getting outlaw rogue hidden appearance
		q(45915),	-- Triggers when you do any of "The Folly of Levia Laurence" quests
		q(47234),	-- Unlocked the order hall storyline artifact appearance from "A Hero's Weapon" for mage
		q(46790),	-- Unlocked the order hall storyline artifact appearance from "A Hero's Weapon" for rogue
		q(48546),	-- Unlocking alternate Underlight Angler appearances from 'Fisherfriend of the Isles'
	}),
});
-- Fill certain Artifacts into the Arch Achievement which is needed to earn them
-- TODO: note about what is necessary to unlock the Artifacts once achievement is gained
root(ROOTS.Professions, prof(ARCHAEOLOGY, bubbleDownSelf({ ["requireSkill"] = ARCHAEOLOGY }, {
	expansion(EXPANSION.LEGION, bubbleDownSelf({ ["timeline"] = { ADDED_7_0_3_LAUNCH } }, {
		n(ACHIEVEMENTS, {
			ach(10602, {["groups"] = thisSideUpAch}),	-- This Side Up
		}),
	})),
})));