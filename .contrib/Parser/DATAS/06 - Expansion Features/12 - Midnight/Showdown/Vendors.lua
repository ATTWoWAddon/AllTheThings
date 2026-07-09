-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------

local FIELD_ACCOLADE = 3405;
local DARK_PARTICLE = 267051;

root(ROOTS.ExpansionFeatures, expansion(EXPANSION.MID, {
	n(SHOWDOWN, {
		["timeline"] = { ADDED_12_0_7 },
		["groups"] = {
			n(VENDORS, {
				n(267315, {	-- Fieldsmith Ventem <Field Gear and Repairs>
					["coords"] = {
						{ 48.6, 81.6, NAIGTAL },
						{ 60.2, 16.1, VAL },
					},
					["groups"] = {	-- All items are (COSMETIC!)
						n(WEAPONS, sharedData({
							["cost"] = {
								{ "c", FIELD_ACCOLADE,  60 },
								{ "c", VOIDLIGHT_MARL, 500 },
							},
						}, {
							i(275212),	-- Response Team's Falchion
							i(275206),	-- Response Team's Hammer
							i(275204),	-- Response Team's Hatchet
							i(275205),	-- Response Team's Kukri
							i(275213),	-- Response Team's Lantern
							i(275209),	-- Response Team's Longbow
							i(275207),	-- Response Team's Longsword
							i(275210),	-- Response Team's Spear
							i(275211),	-- Response Team's Spire
							i(275214),	-- Response Team's Tower Shield
							i(275208),	-- Response Team's Warglaive
						})),
						filter(CLOAKS, sharedData({
							["cost"] = {
								{ "c", FIELD_ACCOLADE,  30 },
								{ "c", VOIDLIGHT_MARL, 300 },
							},
						}, {
							i(275168),	-- Response Team's Cape
							i(275169),	-- Response Team's Cloak
							i(275171),	-- Response Team's Drape
							i(275170),	-- Response Team's Shawl
						})),
						filter(CLOTH, sharedData({
							["cost"] = {
								{ "c", FIELD_ACCOLADE,  30 },
								{ "c", VOIDLIGHT_MARL, 300 },
							},
						}, {
							i(275178),	-- Response Team's Cord
							i(275175),	-- Response Team's Crown
							i(275179),	-- Response Team's Cuffs
							i(275174),	-- Response Team's Gloves
							i(275173),	-- Response Team's Slippers
							i(275177),	-- Response Team's Spires
							i(275176),	-- Response Team's Tights
							i(275172),	-- Response Team's Vestments
						})),
						filter(LEATHER, sharedData({
							["cost"] = {
								{ "c", FIELD_ACCOLADE,  30 },
								{ "c", VOIDLIGHT_MARL, 300 },
							},
						}, {
							i(275186),	-- Response Team's Belt
							i(275187),	-- Response Team's Bindings
							i(275181),	-- Response Team's Boots
							i(275182),	-- Response Team's Handguards
							i(275180),	-- Response Team's Jerkin
							i(275183),	-- Response Team's Mask
							i(275185),	-- Response Team's Shoulderpads
							i(275184),	-- Response Team's Trousers
						})),
						filter(MAIL, sharedData({
							["cost"] = {
								{ "c", FIELD_ACCOLADE,  30 },
								{ "c", VOIDLIGHT_MARL, 300 },
							},
						}, {
							i(275195),	-- Response Team's Bands
							i(275194),	-- Response Team's Clasp
							i(275190),	-- Response Team's Grips
							i(275188),	-- Response Team's Hauberk
							i(275191),	-- Response Team's Helmet
							i(275192),	-- Response Team's Legguards
							i(275189),	-- Response Team's Sabatons
							i(275193),	-- Response Team's Shoulderguards
						})),
						filter(PLATE, sharedData({
							["cost"] = {
								{ "c", FIELD_ACCOLADE,  30 },
								{ "c", VOIDLIGHT_MARL, 300 },
							},
						}, {
							i(275196),	-- Response Team's Chestplate
							i(275198),	-- Response Team's Gauntlets
							i(275202),	-- Response Team's Girdle
							i(275197),	-- Response Team's Greatboots
							i(275199),	-- Response Team's Helm
							i(275200),	-- Response Team's Legplates
							i(275201),	-- Response Team's Pauldrons
							i(275203),	-- Response Team's Vambraces
						})),
					},
				}),
				n(265559, {	-- Kifaan <The Consortium>
					["coord"] = { 47.7, 81.2, NAIGTAL },
					["groups"] = {
						i(278026, {	-- Bulging Ethereal Pack
							["cost"] = { { "c", FIELD_ACCOLADE, 250 } },
							["groups"] = {
								i(274884),	-- Arcanografter's Beacon (COSMETIC!)
								i(274886),	-- Eradicator's Censer (COSMETIC!)
								i(274880),	-- Hal'hadar Adjutant's Gavel (COSMETIC!)
								i(274889),	-- Hal'hadar Darkblade's Edge (COSMETIC!)
								i(274888),	-- Hal'hadar Legion Glaives (COSMETIC!)
								i(274882),	-- Hal'hadar Pulse Rifle (COSMETIC!)
								i(274878),	-- Hal'hadar Shadowripper's Blade (COSMETIC!)
								i(274883),	-- Hal'hadar Warpguard's Poleaxe (COSMETIC!)
								i(274879),	-- Mana-Amplified Crusher (COSMETIC!)
								i(274887),	-- Mana-Overloaded Bulwark (COSMETIC!)
								i(274881),	-- Phase Igniter (COSMETIC!)
								i(274885),	-- Phase-Edged Falchion (COSMETIC!)
								i(274877),	-- Phaseblade Headsplitter (COSMETIC!)
							},
						}),
						i(278027, {	-- Bulging Winter Pack
							["cost"] = { { "c", FIELD_ACCOLADE, 250 } },
							["groups"] = {
								i(249758),	-- Void-Touched Winter Belt (COSMETIC!)
								i(249760),	-- Void-Touched Winter Boots (COSMETIC!)
								i(249762),	-- Void-Touched Winter Cloak (COSMETIC!)
								i(249761),	-- Void-Touched Winter Gloves (COSMETIC!)
								i(249755),	-- Void-Touched Winter Hood (COSMETIC!)
								i(249759),	-- Void-Touched Winter Leggings (COSMETIC!)
								i(249756),	-- Void-Touched Winter Pauldrons (COSMETIC!)
								i(249864),	-- Void-Touched Winter Spaulders (COSMETIC!)
								i(249757),	-- Void-Touched Winter Tunic (COSMETIC!)
							},
						}),
						i(252195, {	-- Fishstick Keith (PET!)
							["sourceAchievement"] = 62903,	-- Climate Strange: Val
							["cost"] = {
								{ "i", 238365, 50 },	-- 50x Sin'dorei Swarmer
							},
						}),
						i(275662, {	-- Frosticus Maximus (PET!)
							["sourceAchievement"] = 63349,	-- Ultradon Carnage
							["sourceQuest"] = 95395,	-- Until it is Done
							["cost"] = { { "c", VOIDLIGHT_MARL, 15 } },
						}),
						i(275663, {	-- Silento (PET!)
							["sourceAchievements"] = {
								62882,	-- Showdown Success: Naigtal
								62880,	-- Showdown Success: Val
							},
							["cost"] = { { "c", VOIDLIGHT_MARL, 15 } },
						}),
						i(274650, {	-- Netherforged Nullframe (MOUNT!)
							["sourceAchievement"] = 62874,	-- A Trip Through the Stars
							["cost"] = { { "c", VOIDLIGHT_MARL, 15 } },
						}),
						i(260739, {	-- Swamp Dweller's Night Staff (COSMETIC!)
							["cost"] = {
								{ "c", FIELD_ACCOLADE, 60 },
								{ "c", VOIDLIGHT_MARL, 500 },
							},
						}),
						i(275664, {	-- Tortured Gorger (MOUNT!)
							["sourceAchievement"] = 63264,	-- Heroic Showdowns
							["cost"] = { { "c", VOIDLIGHT_MARL, 15 } },
						}),
						i(274649, {	-- Voidmancer's Starcarver (MOUNT!)
							["sourceAchievement"] = 62873,	-- A Trip Around the Stars
							["cost"] = { { "c", VOIDLIGHT_MARL, 15 } },
						}),
						-- Consumables
						i(274772, {	-- Ethereal Bandage
							["cost"] = { { "c", FIELD_ACCOLADE, 1 } },
						}),
						i(274774, {	-- Frost-Injected Vapor
							["cost"] = { { "c", FIELD_ACCOLADE, 2 } },
						}),
						i(274793, {	-- Mana Barrier Projector
							["cost"] = { { "c", FIELD_ACCOLADE, 2 } },
						}),
						i(274794, {	-- Shockwave Amplifier
							["cost"] = { { "c", FIELD_ACCOLADE, 2 } },
						}),
						i(274775, {	-- Void Hungerer's Vapor
							["cost"] = { { "c", FIELD_ACCOLADE, 2 } },
						}),
						i(276375),	-- Technomancer's Scrying Matrix
						i(274782, {	-- Tether-Severing Vapor
							["cost"] = { { "c", FIELD_ACCOLADE, 2 } },
						}),
					},
				}),
				n(266234, {	-- Kifaan <The Consortium>
					["coord"] = { 59.8, 19.6, VAL },
					["sym"] = { { "sub", "common_vendor", 265559 } },	-- Kifaan <The Consortium>
				}),
				n(265581, {	-- Zuronar <Lightveil Artificer>
					["coords"] = {
						{ 48.1, 83.3, NAIGTAL },
						{ 63.7, 21.2, VAL },
					},
					["groups"] = {
						i(276432, {	-- De-Powered Lightforged Siegebreaker (DECOR!)
							["sourceAchievement"] = 63384,	-- Prepared for a Showdown
							["cost"] = { { "c", VOIDLIGHT_MARL, 500 } },
						}),
						i(276429, {	-- Grand Artificer's Lightforged Console (DECOR!)
							["sourceAchievement"] = 63384,	-- Prepared for a Showdown
							["cost"] = { { "c", VOIDLIGHT_MARL, 250 } },
						}),
						i(276289, {	-- Lightveil Argunite Blade (COSMETIC!)
							["cost"] = {
								{ "c", FIELD_ACCOLADE,  60 },
								{ "c", VOIDLIGHT_MARL, 500 },
							},
						}),
						i(276301, {	-- Lightruned Crystal Beacon (COSMETIC!)
							["cost"] = {
								{ "c", FIELD_ACCOLADE,  60 },
								{ "c", VOIDLIGHT_MARL, 500 },
							},
						}),
						i(276321, {	-- Luminant Defender's Golden Barricade (DECOR!)
							["sourceAchievement"] = 62905,	-- Pain of Command
							["cost"] = { { "c", VOIDLIGHT_MARL, 150 } },
						}),
						i(276374),	-- Lightveil Rune Reader
						i(276316, {	-- Lightveil's Transport Pad (DECOR!)
							["sourceAchievement"] = 63384,	-- Prepared for a Showdown
							["cost"] = { { "c", VOIDLIGHT_MARL, 250 } },
						}),
						i(267211, {	-- Luminant Scout's Golden Fence (DECOR!)
							["sourceAchievement"] = 62905,	-- Pain of Command
							["cost"] = { { "c", VOIDLIGHT_MARL, 150 } },
						}),
						i(276318, {	-- Luminant Soldier's War Banner (DECOR!)
							["sourceAchievement"] = 62905,	-- Pain of Command
							["cost"] = { { "c", VOIDLIGHT_MARL, 150 } },
						}),
						i(276375),	-- Technomancer's Scrying Matrix
						iensemble(276364, {	-- Arsenal: Lightforged Armaments (COSMETIC!)
							["sourceAchievements"] = {
								62883,	-- Showdown Slugger: Naigtal
								62881,	-- Showdown Slugger: Val
							},
							["cost"] = {
								{ "c", FIELD_ACCOLADE,  60 },
								{ "c", VOIDLIGHT_MARL, 500 },
							},
						}),
					},
				}),
			}),
		},
	}),
}));
