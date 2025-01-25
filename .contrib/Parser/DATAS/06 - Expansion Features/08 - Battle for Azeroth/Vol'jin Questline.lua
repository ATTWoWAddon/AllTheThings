-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------

root(ROOTS.ExpansionFeatures, expansion(EXPANSION.BFA, bubbleDown({ ["timeline"] = { ADDED_8_0_1 } }, {
	header(HEADERS.Achievement, 12719, bubbleDownSelf({ ["lvl"] = lvlsquish(120, 120, 50), ["races"] = HORDE_ONLY }, {	-- Spirits Be With You
		ach(12719, {	-- Spirits Be With You
			crit(40709),	-- The Fallen Chieftain
			crit(40710),	-- Justice For The Fallen
		}),
		q(51513, {	-- Zalazane Returns
			["sourceQuest"] = 50954,	-- Zandalar Forever!
			["provider"] = { "n", 120171 },	-- Rokhan
			["coord"] = { 57.6, 62.4, ZULDAZAR },
			["minReputation"] = { FACTION_ZANDALARI_EMPIRE, REVERED },
		}),
		q(51514, {	-- Broken Bargain
			["sourceQuest"] = 51513,	-- Zalazane Returns
			["provider"] = { "n", 137878 },	-- Master Gadrin
			["coord"] = { 59.5, 51.5, ECHO_ISLES },
		}),
		q(51533, {	-- The Glaive of Vol'jin
			["sourceQuest"] = 51513,	-- Zalazane Returns
			["provider"] = { "n", 120173 },	-- Zen'tarba
			["coord"] = { 59.2, 52.0, ECHO_ISLES },
			["g"] = {
				i(160323),	-- The Glaive of Vol'jin (QI!)
			},
		}),
		q(51515, {	-- Vengeance for Vol'jin
			["sourceQuests"] = {
				51514,	-- Broken Bargain
				51533,	-- The Glaive of Vol'jin
			},
			["provider"] = { "n", 137878 },	-- Master Gadrin
			["coord"] = { 59.5, 51.5, ECHO_ISLES },
			["g"] = {
				i(160443),	-- The Glaive of Vol'jin (QI!)
			},
		}),
		q(52114, {	-- Honoring a True Leader
			["sourceQuest"] = 51515,	-- Vengeance for Vol'jin
			["provider"] = { "n", 137878 },	-- Master Gadrin
			["coord"] = { 59.5, 51.5, ECHO_ISLES },
		}),
		q(52113, {	-- Vol'jin, Son of Sen'jin
			["sourceQuest"] = 52114,	-- Honoring a True Leader
			["provider"] = { "n", 137878 },	-- Master Gadrin
			["coord"] = { 45.5, 35.8, ZULDAZAR },
		}),
		q(51516, {	-- Atal'Dazr: Ashes of a Warchief
			["sourceQuest"] = 52113,	-- Vole'jin, Son of Sen'jin
			["provider"] = { "n", 138138 },	-- Princess Telanji
			["coord"] = { 43.7, 39.5, ZULDAZAR },
			["g"] = {
				i(160479),	-- Urn of Vol'jin (QI!)
			},
		}),
		q(51517, {	-- You Owe Me a Spirit
			["sourceQuest"] = 51516,	-- Atal'Dazar: Ashes of a Warchief
			["provider"] = { "n", 140405 },	-- Bwonsamdi
			["maps"] = { 934, 935 },	-- Atal'Dazar
			["g"] = {
				crit(40709, {	-- The Fallen Chieftain
					["achievementID"] = 12719,	-- Spirits Be With You
				}),
				i(160479),	-- Urn of Vol'jin (QI!)
			},
		}),
		q(51518, {	-- The Lost Spirit
			["sourceQuest"] = 51517,	-- You Owe Me a Spirit
			["provider"] = { "n", 140907 },	-- Bwonsamdi
			["coord"] = { 45.0, 19.8, DAZARALOR },
		}),
		q(51519, {	-- Spirit Call
			["sourceQuest"] = 51518,	-- The Lost Spirit
			["provider"] = { "n", 140724 },	-- Princess Telanji
			["coord"] = { 57.6, 62.6, ZULDAZAR },
		}),
		q(51520, {	-- Justice for the Fallen
			["sourceQuest"] = 51519,	-- Spirit Call
			["provider"] = { "n", 140725 },	-- Spirit of Vol'jin
			["coord"] = { 57.6, 63.0, ZULDAZAR },
			["maps"] = { 1148, 1149, 1150, 1151, 1152, 1153, 1154, 1155 },	-- Uldir
			["g"] = {
				crit(40710, {	-- Justice for the Fallen
					["achievementID"] = 12719,	-- Spirits Be With You
				}),
				i(162451),	-- The Bloodied Glaive of Vol'jin (QI!)
				i(161452),	-- The Glaive of Vol'jin (QI!)
			},
		}),
		q(51521, {	-- The True Leader of Zandalar
			["sourceQuest"] = 51520,	-- Justice for the Fallen
			["provider"] = { "n", 140725 },	-- Spirit of Vol'jin
			["coord"] = { 57.6, 63.0, ZULDAZAR },
		}),
	}))
})));