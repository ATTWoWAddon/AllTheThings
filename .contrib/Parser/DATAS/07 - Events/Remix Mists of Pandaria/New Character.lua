-----------------------------------------------------
--     W O R L D   E V E N T S   M O D U L E       --
-----------------------------------------------------

root(ROOTS.WorldEvents, applyevent(EVENTS.REMIX_MOP, n(REMIX_MOP, bubbleDown({ ["timeline"] = { ADDED_10_2_7, REMOVED_MOP_REMIX_END } }, {
	n(NEW_CHARACTER, {
		cl(DEATHKNIGHT, {
			i(208473),	-- Greenstone Boots
			i(208470),	-- Greenstone Breastplate
			i(210275),	-- Greenstone Legguards
			i(210340),	-- Timerunner's Sword
		}),
		cl(DEMONHUNTER, {
			i(208496),	-- Thunderpaw Tunic
			i(210278),	-- Thunderpaw Breeches
			i(210270),	-- Thunderpaw Boots
			i(210340),	-- Timerunner's Sword
		}),
		cl(DRUID, {
			i(210270),	-- Thunderpaw Boots
			i(210278),	-- Thunderpaw Breeches
			i(210339),	-- Timerunner's Staff
			i(208496),	-- Thunderpaw Tunic
		}),
		cl(EVOKER, {
			-- TODO
		}),
		cl(HUNTER, {
			i(210267),	-- Jade Guardian's Chain Armor
			i(210277),	-- Jade Guardian's Leggings
			i(210269),	-- Jade Guardian's Sabatons
			i(210639),	-- Timerunner's Bow
		}),
		cl(MAGE, {
			i(210276),	-- Spirit-Waker Leggings
			i(208494),	-- Spirit-Waker Robe
			i(210268),	-- Spirit-Waker Treads
			i(210339),	-- Timerunner's Staff
		}),
		cl(MONK, {
			i(210344),	-- Timerunner's Mace
			i(210340),	-- Timerunner's Sword
			i(210270),	-- Thunderpaw Boots
			i(210278),	-- Thunderpaw Breeches
			i(210339),	-- Timerunner's Staff
			i(208496),	-- Thunderpaw Tunic
		}),
		cl(PALADIN, {
			i(208473),	-- Greenstone Boots
			i(208470),	-- Greenstone Breastplate
			i(210275),	-- Greenstone Legguards
			i(210642),	-- Timerunner's Greatsword
		}),
		cl(PRIEST, {
			i(210276),	-- Spirit-Waker Leggings
			i(208494),	-- Spirit-Waker Robe
			i(210268),	-- Spirit-Waker Treads
			i(210339),	-- Timerunner's Staff
		}),
		cl(ROGUE, {
			i(208496),	-- Thunderpaw Tunic
			i(210278),	-- Thunderpaw Breeches
			i(210270),	-- Thunderpaw Boots
			i(210637),	-- Timerunner's Dagger
			i(210340),	-- Timerunner's Sword
		}),
		cl(SHAMAN, {
			i(210267),	-- Jade Guardian's Chain Armor
			i(210277),	-- Jade Guardian's Leggings
			i(210269),	-- Jade Guardian's Sabatons
			i(210344),	-- Timerunner's Mace
			i(210636),	-- Timerunner's Shield
		}),
		cl(WARRIOR, {
			i(208473),	-- Greenstone Boots
			i(208470),	-- Greenstone Breastplate
			i(210275),	-- Greenstone Legguards
			i(210642),	-- Timerunner's Greatsword
		}),
		cl(WARLOCK, {
			i(210276),	-- Spirit-Waker Leggings
			i(208494),	-- Spirit-Waker Robe
			i(210268),	-- Spirit-Waker Treads
			i(210339),	-- Timerunner's Staff
		}),
		n(REWARDS, {
			["description"] = "These items are in the box you get when you make a new character. Their IDs are different than the starter gear that is on you!",
			["groups"] = {
				-- TODO: The users would benefit from knowing what class to make to access these rewards. Description could be used to clarify this easily.
				filter(ONE_HANDED_AXES, {
					-- TODO probably
				}),
				filter(ONE_HANDED_MACES, {
					i(224079),	-- Timerunner's Mace
				}),
				filter(ONE_HANDED_SWORDS, {
					i(224080),	-- Timerunner's Sword
				}),
				filter(BOWS, {
					i(224076),	-- Timerunner's Bow
				}),
				filter(DAGGERS, {
					i(224077),	-- Timerunner's Dagger
				}),
				filter(TWO_HANDED_SWORDS, {
					i(224075),	-- Timerunner's Greatsword
				}),
				filter(SHIELDS, {
					i(224078),	-- Timerunner's Shield
				}),
				filter(STAVES, {
					i(224081),	-- Timerunner's Staff
				}),
			},
		}),
	}),
}))));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.DF, bubbleDownSelf({ ["timeline"] = { ADDED_10_2_7, REMOVED_MOP_REMIX_END } }, {
	applyevent(EVENTS.REMIX_MOP, n(REMIX_MOP, {
		q(80504),	-- triggers a bit after character was created for wow remix (druid, ne) (spellID - 441562 / [DNT] Flag Quest) / Same for Braghe / Same for Myrhial
		q(79439),	-- Triggers after 79438 (Goodbyes Are Hard When You Live Forever) and mop intro cinematic (spellID - 433399 / [DNT] Tutorial Complete)
		q(80318),	-- Triggers after 31732 (Unleash Hell) (A) / 31765 Paint it Red! (H)
		q(80451),	-- Extract Gem Override (spellID 436522)
		q(80452),	-- Unraveling Sands Override (spellID 436525)
		q(81575),	-- after turn in qID 31735 (The Right Tool For The Job) / qID 31772 (Priorities! (H)) or level up to 12 (possible unlock for qID 81638 (Home Is Where the Hearthstone Is or qID 80012 (Dragonriding))
		q(81576),	-- after turn in qID 31735 (The Right Tool For The Job) / qID 31772 (Priorities! (H)) or level up to 12 (possible unlock for qID 81638 (Home Is Where the Hearthstone Is or qID 80012 (Dragonriding))
		q(81577),	-- shortly after turn in qID 31739 (Priorities! (A)) / qID 31774 Seeking Zin'Jun or level up to 13
		q(81578),	-- shortly after turn in qID 31739 (Priorities! (A)) / qID 31774 Seeking Zin'Jun  or level up to 13
		q(81579),	-- shortly after turn in qID 31744 (Unfair Trade) / qID 29804 Seein' Red or level up to 14
		q(81580),	-- shortly after turn in qID 31744 (Unfair Trade) / qID 29804 Seein' Red or level up to 14
		q(81581),	-- shortly after turn in qID 29759 (Kung Din) or level up to 16 /Scarlet or level up / Level 16 in scenario
		q(81582),	-- shortly after turn in qID 29759 (Kung Din) or level up to 16 /Scarlet or level up / Level 16 in scenario
		q(81583),	-- levelup to 17 or crit (The Waterspeaking Ceremony) for achievement 19882 probably level / Level 17
		q(81584),	-- late for level up 18 or after qID 29888 (Seek Out the Lorewalker) probably level / Level 18
		--
		q(81659,{["isDaily"]=true,}),	-- after turn in questID 80320 (Aid the Klaxxi)
		q(81664,{["isDaily"]=true,}),	-- after turn in questID 80441 (Aid the Order of the Cloud Serpent)
		q(81662,{["isDaily"]=true,}),	-- after turn in questID 80429 (Aid the August Celestials) or questID 80430 (Aid the August Celestials)
		q(81658,{["isDaily"]=true,}),	-- after turn in questID 80427 (Aid the Golden Lotus)
		q(81660,{["isDaily"]=true,}),	-- after turn in questID 80426 (Aid the Shado-Pan)
		q(81663,{["isDaily"]=true,}),	-- after turn in questID 80439 / 80438 (Aid the Alliance / Aid the Horde)
	})),
})));
