---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(MIDNIGHT, {
	m(ISLE_OF_QUELDANAS_MID, {
		n(QUESTS, {
			-- intro stuff, unsure how much more content there will be in future
			q(91281, {	-- Midnight
				["description"] = "Requires re-logging to be accepted.",
				--["sourceQuests"] = { ?? },	-- something from pre-patch/11.2.7?
				["maps"] = {
					STORMWIND_CITY,
					ORGRIMMAR,
				},
				--["isBreadcrumb"] = true,
				["DisablePartySync"] = true,
			}),
			q(88719, {	-- A Voice from the Light
				["sourceQuests"] = { 91281 },	-- Midnight
				["provider"] = { "n", 241677 },	-- Image of Lady Liadrin
				["coord"] = { 53.3, 54.3, STORMWIND_CITY },	-- TODO: horde version?
				["groups"] = {
					i(239151),	-- Light's Summon (QI!)
				},
			}),
			q(86769, {	-- Last Bastion of the Light
				["sourceQuests"] = { 88719 },	-- A Voice from the Light
				["provider"] = { "n", 236692 },	-- Lady Liadrin
				["coord"] = { 48.5, 38.4, ISLE_OF_QUELDANAS_MID_i },
			}),
			q(86770, {	-- Champions of Quel'Danas
				["sourceQuests"] = { 86769 },	-- Last Bastion of the Light
				["provider"] = { "n", 236693 },	-- Lady Liadrin
				["coord"] = { 46.0, 44.4, ISLE_OF_QUELDANAS_MID_i },
			}),
			q(89271, {	-- My Son
				["sourceQuests"] = { 86769 },	-- Last Bastion of the Light
				["provider"] = { "n", 236906 },	-- High-Exarch Turalyon
				["coord"] = { 46.0, 44.7, ISLE_OF_QUELDANAS_MID_i },
			}),
			q(86780, {	-- Where Heroes Hold
				["sourceQuests"] = { 86769 },	-- Last Bastion of the Light
				["provider"] = { "n", 236906 },	-- High-Exarch Turalyon
				["coord"] = { 46.0, 44.7, ISLE_OF_QUELDANAS_MID_i },
				["groups"] = {
					i(251116),	-- Clasp of the Voidslayer
					i(251076),	-- Sunwell Defender's Brooch
					o(518640, {	-- Lightspire Spear
						i(237140),	-- Lightspire Spear (QI!)
					}),
					o(532495, {	-- Healing Salve
						i(237899),	-- Healing Salve (QI!)
					}),
				},
			}),
			q(86805, {	-- The Hour of Need
				["sourceQuests"] = {
					86770,	-- Champions of Quel'Danas
					89271,	-- My Son
					86780,	-- Where Heroes Hold
				},
				["provider"] = { "n", 236896 },	-- Lor'themar Theron
				["coord"] = { 35.4, 44.1, ISLE_OF_QUELDANAS_MID_i },
				["groups"] = {
					i(248239),	-- Healing Flask (QI!)
					i(250352),	-- Worn Supply Bag
				},
			}),
			q(89012, {	-- A Safe Path
				["sourceQuests"] = {
					86770,	-- Champions of Quel'Danas
					89271,	-- My Son
					86780,	-- Where Heroes Hold
				},
				["description"]	= "Require quest The Hour of Need to be accepted to see this quest",
				["provider"] = { "n", 237222 },	-- Arator (mobileNPC)
			}),
			q(86806, {	-- Luminous Wings
				["sourceQuests"] = {
					89012,	-- A Safe Path
					86805,	-- The Hour of Need
				},
				["provider"] = { "n", 236961 },	-- Lor'themar Theron
				["coord"] = { 41.3, 56.8, ISLE_OF_QUELDANAS_MID_i },
			}),
			q(86807, {	-- The Gate
				["sourceQuests"] = { 86806 },	-- Luminous Wings
				["provider"] = { "n", 243091 },	-- Arator
				["coord"] = { 41.3, 56.6, ISLE_OF_QUELDANAS_MID_i },
			}),
			q(91274, {	-- Severing the Void
				["sourceQuests"] = { 86807 },	-- The Gate
				["provider"] = { "n", 236964 },	-- Arator
				["coord"] = { 41.4, 39.1, ISLE_OF_QUELDANAS_MID_i },
				["groups"] = {
					-- i(),	-- ??
				},
			}),
			q(86834, {	-- Voidborn Banishing
				["sourceQuests"] = { 86807 },	-- The Gate
				["provider"] = { "n", 236964 },	-- Arator
				["coord"] = { 41.4, 39.1, ISLE_OF_QUELDANAS_MID_i },
				["groups"] = {
					i(251241),	-- Entropic Void Crystal
					i(251242),	-- Voidbound Lieutenant's Band
				},
			}),
			q(86848, {	-- Light's Arsenal
				["sourceQuests"] = {
					91274,	-- Severing the Void
					86834,	-- Voidborn Banishing
				},
				["provider"] = { "n", 237253 },	-- Lady Liadrin
				["coord"] = { 45.2, 26.9, ISLE_OF_QUELDANAS_MID_i },
				["groups"] = {
					i(238842),	-- Cosmic Infuser (QI!)
					i(238843),	-- Devastation (QI!)
					i(238844),	-- Infinity Blades (QI!)
					i(238846),	-- Netherstrand Longbow (QI!)
					i(238890),	-- Scourgebane (QI!)
					i(238845),	-- Staff of Disintegration (QI!)
					i(238807),	-- Warp Slicer (QI!)
					-- rewards --
					i(251250),	-- Recovered Sanctum Hacker
					i(251251),	-- Recovered Sanctum Hatchet
					i(251252),	-- 
					i(251253),	-- 
					i(251254),	-- Recovered Sanctum Sword
					i(251255),	-- 
					i(251256),	-- 
					i(251257),	-- Recovered Sanctum Stave
					i(251258),	-- Recovered Sanctum Pole
					i(251259),	-- 
					i(251260),	-- 
				},
			}),
			q(86811, {	-- Ethereal Eradication
				["sourceQuests"] = {
					91274,	-- Severing the Void
					86834,	-- Voidborn Banishing
				},
				["provider"] = { "n", 236978 },	-- High-Exarch Turalyon
				["coord"] = { 45.4, 27.0, ISLE_OF_QUELDANAS_MID_i },
			}),
			q(86849, {	-- Wrath Unleashed
				["sourceQuests"] = {
					86811,	-- Ethereal Eradication
					86848,	-- Light's Arsenal
				},
				["provider"] = { "n", 236978 },	-- High-Exarch Turalyon
				["coord"] = { 45.4, 27.0, ISLE_OF_QUELDANAS_MID_i },
			}),
			q(86850, {	-- Broken Sun
				["sourceQuests"] = { 86849 },	-- Wrath Unleashed
				["provider"] = { "n", 237277 },	-- Lady Liadrin
				["coord"] = { 45.8, 11.5, ISLE_OF_QUELDANAS_MID_i },
			}),
			q(86852, {	-- Light's Last Stand
				-- TODO: seems like lockCriteria for anything that are left behind for intro?
				["sourceQuests"] = { 86850 },	-- Broken Sun
				["provider"] = { "n", 237278 },	-- Lady Liadrin
				["coord"] = { 52.7, 50.0, ISLE_OF_QUELDANAS_MID_i },
			}),
			q(86733, {	-- Silvermoon Negotiations
				["sourceQuests"] = { 86852 },	-- Light's Last Stand
				["provider"] = { "n", 236779 },	-- Lor'themar Theron
				["coord"] = { 52.5, 88.2, ISLE_OF_QUELDANAS_MID },
				["groups"] = {
					i(248059),	-- 
					i(248061),	-- Golden City Hatchet
					i(248062),	-- Golden City Axe
					i(248063),	-- 
					i(248067),	-- 
					i(248068),	-- Golden City Shortsword
					i(248070),	-- 
					i(248071),	-- 
					i(248075),	-- Golden City Staff
					i(248076),	-- Golden City Baton
					i(248078),	-- 
					-- spell(?),	-- Silvermoon Court Unlocked (NYI?)
				},
			}),
			q(86734, {	-- Diplomacy
				["sourceQuests"] = { 86733 },	-- Silvermoon Negotiations
				["provider"] = { "n", 235787 },	-- Lor'themar Theron
				["coord"] = { 45.4, 70.3, SILVERMOON_CITY_MID },
			}),
			q(86735, {	-- Paved in Ash
				["sourceQuests"] = { 86734 },	-- Diplomacy
				["provider"] = { "n", 235787 },	-- Lor'themar Theron
				["coord"] = { 45.4, 70.3, SILVERMOON_CITY_MID },
				["groups"] = {
					i(248044),	-- Reluctant Diplomat's Bracers
					i(248042),	-- Reluctant Diplomat's Cuffs
					i(248043),	-- Reluctant Diplomat's Vambraces
					i(248045),	-- Reluctant Diplomat's Wraps
				},
			}),
			-- due to hqt after this quest, I currently treat this as end of all intro part for Midnight
			n(BONUS_OBJECTIVES, {
				q(89441, {	-- Clear the Decks
					["coord"] = { 39.8, 57.4, ISLE_OF_QUELDANAS_MID_i },
				}),
				q(90849, {	-- Light Show
					["coord"] = { 36.2, 27.5, ISLE_OF_QUELDANAS_MID_i },
				}),
				q(89440, {	-- Protecting the Flank
					["coord"] = { 55.5, 28.0, ISLE_OF_QUELDANAS_MID_i },
				}),
			}),
		}),
	}),
}));
root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.MID, {
	m(MIDNIGHT, {
		m(ISLE_OF_QUELDANAS_MID, {
			n(QUESTS, {
				-- During questing
				q(92714),	-- Flag Midnight Promotional (spellID 1257590), after turn in questID 86735 (Paved in Ash)
			}),
		}),
	}),
}));
