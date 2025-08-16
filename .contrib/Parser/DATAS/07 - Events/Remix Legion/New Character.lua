-----------------------------------------------------
--     W O R L D   E V E N T S   M O D U L E       --
-----------------------------------------------------

root(ROOTS.WorldEvents, applyevent(EVENTS.REMIX_LEGION, n(REMIX_LEGION, bubbleDown({ ["timeline"] = { ADDED_11_2_5, REMOVED_LEGION_REMIX_END } }, {
	n(NEW_CHARACTER, {
		filter(CLOTH, {
			i(240565),	-- Vileweave Footwraps
			i(240566),	-- Vileweave Leggings
			i(240568),	-- Vileweave Robe
		}),
		filter(LEATHER, {
			i(240232),	-- Gladeraider's Chestguard
			i(240224),	-- Gladeraider's Pants
			i(240233),	-- Gladeraider's Waders
		}),
		filter(MAIL, {
			i(240552),	-- Ered'ruin Haubergeon
			i(240550),	-- Ered'ruin Legguards
			i(240549),	-- Ered'ruin Sabatons
		}),
		filter(PLATE, {
			i(240688),	-- Nar'thalas Graduate's Breastplate
			i(240690),	-- Nar'thalas Graduate's Legguards
			i(240691),	-- Nar'thalas Graduate's Sabatons
		}),
		n(REWARDS, {
			["description"] = "These items are in the box you get when you make a new character.",
			["groups"] = {
				i(243373),	-- Timerunner's Weaponry
				filter(BOWS, {
					i(243369, {	-- Timerunner's Bow
						["classes"] = { HUNTER },
					}),
				}),
				filter(DAGGERS, {
					i(243368, {	-- Timerunner's Dagger
						["classes"] = { ROGUE },
					}),
				}),
				filter(MISC, {
					i(250411),	-- Timerunner's Hearthstone
					i(216653),	-- Timerunner's Satchel
				}),
				filter(ONE_HANDED_AXES, {
					-- No axes to grind...
				}),
				filter(ONE_HANDED_MACES, {
					i(243372, {	-- Timerunner's Mace
						["classes"] = { DEMONHUNTER, DRUID, MONK, PALADIN, PRIEST, ROGUE, SHAMAN, WARRIOR },
					}),
				}),
				filter(ONE_HANDED_SWORDS, {
					i(243371, {	-- Timerunner's Sword (DH, DK, Mage, Monk, Paladin, Rogue, Warrior, Warlock)
						["classes"] = { DEMONHUNTER, DEATHKNIGHT, MAGE, MONK, PALADIN, ROGUE, WARRIOR, WARLOCK },
					}),
				}),
				filter(SHIELDS, {
					i(243367, {	-- Timerunner's Shield (Paladin, Shaman, Warrior)
						["classes"] = { PALADIN, SHAMAN, WARRIOR },
					}),
				}),
				filter(STAVES, {
					i(243366, {	-- Timerunner's Staff (Druid, Hunter, Mage, Monk, Priest, Shaman, Warrior, Warlock)
						["classes"] = { DRUID, HUNTER, MAGE, MONK, PRIEST, SHAMAN, WARRIOR, WARLOCK },
					}),
				}),
				filter(TWO_HANDED_SWORDS, {
					i(243370, {	-- Timerunner's Greatsword (DK, Paladin, Warrior)
						["classes"] = { DEATHKNIGHT, PALADIN, WARRIOR },
					}),
				}),
			},
		}),
	}),
}))));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.DF, bubbleDownSelf({ ["timeline"] = { ADDED_11_2_5, REMOVED_LEGION_REMIX_END } }, {
	applyevent(EVENTS.REMIX_LEGION, n(REMIX_LEGION, {
		q(90686),	-- First Memento looted
		q(90703, name(HEADERS.Spell,1232807)),	-- Unraveling Sands, Triggered upon accepting 'Obliterate, Then Iterate' (89413)
		q(90864, name(HEADERS.Achievement,42313)),	-- Remixing Time, Triggered when completing Introductory quest-chain
		q(91962),	-- Triggers when you spawn in Bazaar for the first time
		q(92192),	-- Triggers when watching "What just happened" movie on a fresh character
		q(92425),	-- Triggers when you activate 'Heroic World Tier'
		-- HQTs triggered during campaign
		q(91926),	-- Triggered after completing first Legion artifact weapon quest chain
		q(91925),	-- Triggered after completing second Legion artifact weapon quest chain
		q(92107),	-- Mission Table skip
		q(90787),	-- Triggered after killing the first Rare?
	})),
})));
