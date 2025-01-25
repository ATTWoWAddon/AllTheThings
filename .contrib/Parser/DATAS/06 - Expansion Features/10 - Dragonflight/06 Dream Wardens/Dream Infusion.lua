-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------
local CURRENCY_DREAM_INFUSION = 2777;
DREAM_INFUSION = createHeader({
	readable = "Dream Infusion",
	icon = 1394953,
	text = {
		en = "Dream Infusion",
		ru = "Настой Сна",
	},
});
root(ROOTS.ExpansionFeatures, expansion(EXPANSION.DF, bubbleDown({ ["timeline"] = { ADDED_10_2_0 } }, {
	n(DREAM_WARDENS, {
		n(DREAM_INFUSION, bubbleDownSelf({ ["minReputation"] = { FACTION_DREAM_WARDENS, 5 } }, {
			q(78430, {	-- Mean Green Infusion Machine
				["sourceQuests"] = { 78386 },	-- Emerald Reawakening (TODO: may be become available without renown after done once?)
				["provider"] = { "n", 211209 },	-- Elianna
				["coord"] = { 50.2, 61.8, EMERALD_DREAM },
				["g"] = {
					i(205160),	-- Rithro (PET!)
				},
			}),
			q(78431, {	-- Green Dream Team
				["sourceQuests"] = { 78430 },	-- Mean Green Infusion Machine
				["provider"] = { "n", 211209 },	-- Elianna
				["coord"] = { 50.2, 61.8, EMERALD_DREAM },
				["repeatable"] = true,	-- TODO: ShadowBrooks remove repeatable flag once blizzard fixes quest
				["g"] = {
					i(210776),	-- Lesser Dream Infusion
				},
			}),
			q(78598, {	-- Dream Infusion
				["sourceQuests"] = { 78431 },	-- Green Dream Team
				["provider"] = { "n", 211209 },	-- Elianna
				["coord"] = { 50.2, 61.8, EMERALD_DREAM },
				["repeatable"] = true,
				["g"] = {
					currency(CURRENCY_DREAM_INFUSION),
				},
			}),
			q(78595, {	-- Dream Infused
				["description"] = "Requires Renown 18",
				["provider"] = { "n", 211962 },	-- Merlsysra
				["g"] = {
					currency(CURRENCY_DREAM_INFUSION),
				},
			}),
			n(VENDORS, {
				n(211209, {	-- Elianna <Dream Infuser>
					["coord"] = { 50.2, 61.8, EMERALD_DREAM },
					["g"] = bubbleDownFiltered({
						["cost"] = {{"c", CURRENCY_DREAM_INFUSION, 1}},
					},FILTERFUNC_itemID,{
						filter(BATTLE_PETS, {
							i(210785, {	-- Snorr (PET!)
								["cost"] = {{ "i", 210776, 1 }},	-- 1x Lesser Dream Infusion
							}),
							i(210553, {	-- Dreamborne Scarab (PET!)
								["providers"] = {
									{"n",203292},	-- Endmite
								},
							}),
							i(210555, {	-- Dreamhoof (PET!)
								["providers"] = {
									{"i",210692},	-- Juniper
									{"n",211288},	-- Leyhart
									{"i",210691},	-- Spruce
								},
							}),
							i(210777, {	-- Drowsey (PET!)
								["providers"] = {
									{"i",205121},	-- Tricky
								},
							}),
							i(210567, {	-- Memorie (PET!)
								["providers"] = {
									{"n",211177},	-- Fol'ya Pup
									{"i",210570},	-- Napps
									{"i",210571},	-- Snoozles
								},
							}),
							i(210652, {	-- Somnolet (PET!)
								["providers"] = {
									-- {"i",???},	-- Dustie
									{"n",211182},	-- Sapnibbler
									{"i",210648},	-- Seedle
								},
							}),
							i(210505, {	-- Reverie (PET!)
								["providers"] = {
									{"i",193484},	-- Pilot
								},
							}),
						}),
						filter(MOUNTS, {
							i(210831),	-- Delugen (MOUNT!)
							i(210948),	-- Imagiwing (MOUNT!)
							i(210946),	-- Mammyth (MOUNT!)
							i(210969),	-- Salatrancer (MOUNT!)
							i(210945),	-- Stargrazer (MOUNT!)
							i(210833),	-- Talont (MOUNT!)
						}),
					}),
				}),
			}),
		})),
	}),
})));
root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.DF, bubbleDown({ ["timeline"] = { ADDED_10_2_0 } }, {
	m(DRAGON_ISLES, {
		n(DREAM_INFUSION, {
			--Summoning battle pets near Elanna / unlocks for battle pets
			q(78847),	-- summon Dreamborne Scarab (i: 210553) (spellID 426137)
			q(78854),	-- unlock ability to buy Dreamborne Scarab (i: 210553) (require: Endmite (i: ?)) (spellID 429058)
			q(78848),	-- summon Dreamhoof (i: 210555) (spellID 426148)
			q(78888),	-- unlock ability to buy Dreamhoof (i: 210555) (require: Juniper (i: 210692)) (spellID 426545)
			q(78855),	-- unlock ability to buy Dreamhoof (i: 210555) (require: Leyhart (i: ?)) (spellID 429064)
			q(78889),	-- unlock ability to buy Dreamhoof (i: 210555) (require: Spruce (i: 210691)) (spellID 426544)
			q(78852),	-- summon Drowsey (i: 210777) (spellID 427044)
			q(78859),	-- unlock ability to buy Drowsey (i: 210777) (require: any ZC snail? (mine was Tricky)) (spellID 429073 / 429074)
			q(78849),	-- summon Memorie (i: 210567) (spellID 426168)
			q(78856),	-- unlock ability to buy Memorie (i: 210567) (require: Fol'ya Pup (i: ?)) (spellID 429068)
			q(78885),	-- unlock ability to buy Memorie (i: 210567) (require: Napps (i: ?)) (spellID 426187)
			q(78884),	-- unlock ability to buy Memorie (i: 210567) (require: Snoozles (i: ?)) (spellID 426193)
			q(78851),	-- summon Reverie (i: 210505) (spellID 426037)
			q(78858),	-- unlock ability to buy Reverie (i: 210505) (require: any Duckling? (mine was Pilot)) (spellID 429055 / 429053)
			q(78846),	-- summon Snorr (i: 210785) (spellID 427104)
			q(78853),	-- unlock ability to buy Snorr (i: 210785) (require: any dragon whelping from DF? (mine was Axel) (spellIDs 408323, 408325, 408328, 408330, 408332)
			q(78850),	-- summon Somnolet (i: 210652) (spellID 426357)
			q(78886),	-- unlock ability to buy Somnolet (i: 210652) (require: Dustie (i: ?)) (spellID 426355)
			q(78857),	-- unlock ability to buy Somnolet (i: 210652) (require: Sapnibbler (i: ?)) (spellID 429070)
			q(78887),	-- unlock ability to buy Somnolet (i: 210652) (require: Seedle (i: 210648)) (spellID 426343)
			--unsure what it should unlock but fire when you summon pets
			q(78882),	-- summon Elmer (i: 210690) (spellID 426540)
			q(78883),	-- summon Snoots (i: 210689) (spellID 426539)
		}),
	}),
})));