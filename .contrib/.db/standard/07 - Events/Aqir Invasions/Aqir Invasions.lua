-----------------------------------------------------
--     W O R L D   E V E N T S   M O D U L E       --
-----------------------------------------------------

local AQIR_INVASIONS = createHeader({
	readable = "Aqir Invasions",
	icon = 463478,
	text = {
		en = "Aqir Invasions",
		de = "Aqirinvasionen",
		es = "Invasiones aqir",
		mx = "Invasiones aqir",
		fr = "Invasions des Aqir",
		it = "Invasioni degli Aqir",
		ko = "아퀴르 침공",
		pt = "Invasões Aqir",
		ru = "Вторжений акиров",
		cn = "亚基入侵",
		tw = "亞基入侵",
	},
});

root(ROOTS.WorldEvents, {
	n(AQIR_INVASIONS, {
		description = "As Kith'ix stirred, Aqir swarms that had slumbered beneath Quel'Thalas for millennia following the defeat of Azj'Aqir in the Aqir and Troll War awakened and began to swarm the surface, attacking both the Kingdom of Quel'Thalas and the Amani Empire.",
		timeline = { ADDED_12_1_5, REMOVED_12_1_7 },
		maps = { MAP.MIDNIGHT.EVERSONG_WOODS, MAP.MIDNIGHT.SILVERMOON_CITY, MAP.MIDNIGHT.ZULAMAN },
		groups = {
			n(ACHIEVEMENTS, {
				ach(63659, {	-- Bane of the Swarm (Automated)
					title(793),	-- <Name>, Bane of the Swarm
				}),
				ach(63680),	-- Driving Back the Swarm
				ach(63658),	-- No Hives Left Standing
			}),
			n(EVENT_COMPLETION, {
				weeklyReward(97456, {	-- Obtained Aqir Research Satchel
					providers = {
						{ "n", 261514 },	-- General Zulkix
						{ "n", 263573 },	-- Hivekeeper Quelthax
					},
					groups = {
						i(277283, {	-- Aqir Research Satchel
							n(ARMOR, {
								filter(CLOTH, {
									i(277885),	-- Veilweaver Trousers
									i(277895),	-- Veilweaver's Shadowgown
								}),
								filter(LEATHER, {
									i(277888),	-- Veil of the Feral Rite
									i(277890),	-- Wildwarden's Guise
								}),
								filter(MAIL, {
									i(277896),	-- Bloodtide Hauberk
									i(277891),	-- Leviathan Bracerbands
								}),
								filter(PLATE, {
									i(277898),	-- Duskhallow Vanguard Greaves
									i(284219),	-- Granite Ritual Cuirass
								}),
							}),
							n(WEAPONS, {
								i(277883),	-- Duskmantle Spiteglass
								i(277893),	-- Emberveil Ritual Knife
								i(277889),	-- Fanged Riftrazor
								i(277899),	-- Fangwarden's Shardspine Bow
								i(277882),	-- Feral Gloombranch
								i(277880),	-- Runic Moonbrand
								i(277876),	-- Sacrosanct Thirstspire
								i(277879),	-- Whisperthorn Ritual Knife
							}),
						}),
					},
				}),
				i(286563),	-- Aqir Research Token
			}),
			header(HEADERS.Faction, FACTION_AQIR_RESEARCH_ENCLAVE, {
				lore = "Bound by oath to Silvermoon, these paladins dedicate their studies towards the Aqir threat, seeking to understand the enemy's nature so their city may never be caught unprepared.",
				icon = 463478,
				groups = {
					faction(FACTION_AQIR_RESEARCH_ENCLAVE),
					n(ACHIEVEMENTS, {
						ach(63657, { minReputation = { FACTION_AQIR_RESEARCH_ENCLAVE, 5 } }),	-- Aqir Research Associate
					}),
					n(VENDORS, {
						-- #if BEFORE 12.1.7
						n(266188, {	-- Estelia Archtender <Aqir Researcher>
							coord = { 39.3, 80.3, MAP.MIDNIGHT.SILVERMOON_CITY },
							groups = bubbleDownRep(FACTION_AQIR_RESEARCH_ENCLAVE, {
								{		-- Neutral --
								}, {	-- Friendly --
									i(274927, { cost = { { "c", VOIDLIGHT_MARL, 1000 } } }),	-- Aqir Wingreaver (PET!)
									i(275873, { cost = { { "c", VOIDLIGHT_MARL,  250 } } }),	-- Dormant Brood Egg (DECOR!)
									i(275869, { cost = { { "c", VOIDLIGHT_MARL,  250 } } }),	-- Nourished Brood Eggs (DECOR!)
								}, {	-- Honored --
									i(274923, { cost = { { "c", VOIDLIGHT_MARL, 1000 } } }),	-- Aqir Scuttler (PET!)
									i(275879, { cost = { { "c", VOIDLIGHT_MARL,  250 } } }),	-- Dormant Brood Egg Cluster (DECOR!)
									i(275867, { cost = { { "c", VOIDLIGHT_MARL,  250 } } }),	-- Nourished Brood Egg Cluster (DECOR!)
								}, {	-- Revered --
									i(276927, { cost = { { "c", VOIDLIGHT_MARL, 2000 } } }),	-- Aqir Razorwing (PET!)
									i(275871, { cost = { { "c", VOIDLIGHT_MARL,  500 } } }),	-- Dormant Clutch of Brood Eggs (DECOR!)
									i(275865, { cost = { { "c", VOIDLIGHT_MARL,  500 } } }),	-- Nourished Clutch of Brood Eggs (DECOR!)
								}, {	-- Exalted --
									i(280050, { cost = { { "c", VOIDLIGHT_MARL, 1000 } } }),	-- Aqir Hunter's Trophy (DECOR!)
									i(276926, { cost = { { "c", VOIDLIGHT_MARL, 2500 } } }),	-- Corrupted Swarmer (MOUNT!)
									i(275039, { cost = { { "c", VOIDLIGHT_MARL, 2500 } } }),	-- Curse of the Aqir (TOY!)
								},
							}),
						}),
						-- #endif
						n(266905, {	-- Matildeux Osril <Renown Catch-Up>
							coord = { 39.4, 80.4, MAP.MIDNIGHT.SILVERMOON_CITY },
							groups = sharedData({
								cost = { { "i", 286563, 1 } },	-- 1x Aqir Research Token
							}, {
								spell(1320744),	-- Amani Tribe Voucher
								spell(1320745),	-- Hara'ti Voucher
								spell(1320747),	-- Silvermoon Court Voucher
								spell(1320729),	-- Singularity Voucher
								spell(1320749),	-- Zul'jarra's Forces Voucher
							}),
						}),
					}),
				},
			}),
		},
	}),
});

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.MID, {
	header(HEADERS.Faction, FACTION_AQIR_RESEARCH_ENCLAVE, with({ timeline = { ADDED_12_1_5 }},{
		hqt(99246, name(HEADERS.Item, 286563, { isWeekly = true } )),	-- First Weekly Warband Aqir Token
		hqt(99251, name(HEADERS.Item, 286563, { isWeekly = true } )),	-- Second Weekly Warband Aqir Token
		q(96495),	-- Related to Aqir Invasion Assaults
		q(97316),	-- Related to Aqir Invasion Assaults
	})),
}));
