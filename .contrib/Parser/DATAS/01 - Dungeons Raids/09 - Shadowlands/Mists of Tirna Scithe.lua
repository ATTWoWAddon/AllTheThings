-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

root(ROOTS.Instances, expansion(EXPANSION.SL, bubbleDown({ ["timeline"] = { ADDED_9_0_2_LAUNCH } }, {
	inst(1184, {	-- Mists of Tirna Scithe
		["coord"] = { 35.6, 54.2, ARDENWEALD },
		["maps"] = { 1669 },	-- Mists of Tirna Scithe
		["groups"] = {
			n(QUESTS, {
				q(62371, {	-- Tirna Scithe: A Warning Silence
					["sourceQuests"] = { 60905 },	-- Infusing the Wildseed
					["provider"] = { "n", 168032 },	-- Flwngyrr
					["coord"] = { 48.3, 50.5, ARDENWEALD },
					["groups"] = {
						i(184518),	-- Boots of the Oaken Assembly
						i(184517),	-- Gladechewer Footguards
						i(184516),	-- Mistveil Sandals
						i(184515),	-- Sacred Grove Sabatons
					},
				}),
			}),
			d(DIFFICULTY.DUNGEON.MULTI.NORMAL_PLUS, {
				e(2400, {	-- Ingra Maloch
					["crs"] = {
						164567,	-- Ingra Maloch
						164804,	-- Droman Oulfarran
					},
					["groups"] = {
						-- Legendaries
						i(183253),	-- Memory of the Soulforge Embers
						-- Conduits
						i(182582),	-- Enkindled Spirit
						i(181844),	-- Pain Transformation
						i(182686),	-- Powerful Precision
						i(183491),	-- Ready for Anything
						i(182143),	-- Swirling Currents
						-- Items
						i(178700),	-- Clasp of Waning Shadow
						i(178704),	-- Deathshackle Wristwraps
						i(178713),	-- Drustlord's Greataxe
						i(178696),	-- Ingra Maloch's Mantle
						i(178698),	-- Rainshadow Hauberk
						i(178709),	-- Scithewood Scepter
						i(178692),	-- Soulthorn Visage
						i(178708),	-- Unbound Changeling
						i(178694),	-- Wrathbark Greathelm
					},
				}),
				e(2402, {	-- Mistcaller
					["crs"] = { 164501 },	-- Mistcaller
					["groups"] = {
						-- Legendaries
						i(183266),	-- Memory of the Disciplinary Command
						i(183336),	-- Memory of the Duskwalker's Patch
						-- Conduits
						i(181462),	-- Coordinated Offensive
						i(182754),	-- Duplicitous Havoc
						i(181734),	-- Magi's Brand
						i(183514),	-- Perforated Veins
						-- Items
						i(182185),	-- Shrieker Soul (SS!)
						i(182305),	-- Crown of Autumnal Flora
						i(178706),	-- Fogweaver Gauntlets
						i(178691),	-- Hood of the Hidden Path
						i(178715),	-- Mistcaller Ocarina
						i(178697),	-- Prankster's Pauldrons
						i(178710),	-- Tanglewood Thorn
						i(178707),	-- Trailspinner Pendant
						i(178705),	-- Tricksprite Gloves
						i(178695),	-- Wintersnap Shoulderguards
					},
				}),
				e(2405, {	-- Tred'ova
					["crs"] = { 164517 },	-- Tred'ova
					["groups"] = {
						ach(14371),	-- Mists of Tirna Scithe
						-- Legendaries
						i(183229),	-- Memory of a Timeworn Dreambinder
						-- Conduits
						i(182206),	-- Convocation of the Dead
						i(180935),	-- Crash the Ramparts
						i(183132),	-- Echoing Call
						i(182142),	-- Embrace of Earth
						i(183485),	-- Savage Combatant
						i(182384),	-- Serrated Glaive
						-- Items
						i(178712),	-- Acidslough Bulwark
						i(178711),	-- Axe of the Deadgrove
						i(178702),	-- Bands of the Undergrowth
						i(178693),	-- Cocoonsilk Cowl
						i(178701),	-- Gormshell Greaves
						i(178703),	-- Hiveswarm Bracers
						i(178714),	-- Lakali's Spire of Knowledge
						i(178699),	-- Sapgorger Belt
					},
				}),
			}),
			d(DIFFICULTY.DUNGEON.MULTI.HEROIC_PLUS, {
				e(2405, {	-- Tred'ova
					["crs"] = { 164517 },	-- Tred'ova
					["groups"] = {
						ach(14412),	-- Heroic: Mists of Tirna Scithe
					},
				}),
			}),
			d(DIFFICULTY.DUNGEON.MYTHIC, {
				n(ACHIEVEMENTS, {
					ach(14291, {	-- Someone Could Trip on These!
						crit(48381),	-- First Toy
						crit(48382),	-- Second Toy
						crit(48383),	-- Third Toy
						crit(48384),	-- Fourth Toy
						crit(48385),	-- Fifth Toy
						crit(48386),	-- Sixth Toy
					}),
				}),
				e(2400, {	-- Ingra Maloch
					["crs"] = {
						164567,	-- Ingra Maloch
						164804,	-- Droman Oulfarran
					},
					["groups"] = {
						ach(14503),	-- Hooked On Hydroponics
					},
				}),
				e(2405, {	-- Tred'ova
					["crs"] = { 164517 },	-- Tred'ova
					["groups"] = {
						ach(14413),	-- Mythic: Mists of Tirna Scithe
						ach(14382),	-- Mythic: Mists of Tirna Scithe Guild Run
						ach(14375),	-- Hunger for Knowledge
						i(183623),	-- Spinemaw Gormling
					},
				}),
			}),
		},
	}),
})));
