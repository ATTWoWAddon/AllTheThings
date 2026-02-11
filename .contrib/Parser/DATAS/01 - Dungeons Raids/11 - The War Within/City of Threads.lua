-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

root(ROOTS.Instances, expansion(EXPANSION.TWW, bubbleDownSelf({ ["timeline"] = { ADDED_11_0_2 } }, {
	inst(1274, {	-- City of Threads
		["coord"] = { 46.7, 63.4, AZJ_KAHET },
		["maps"] = {
			2343,	-- City of Threads
			2344,	-- The Transformatory
		},
		["groups"] = {
			n(QUESTS, {
				q(83164, {	-- City of Threads: Splice the Splicer
					["provider"] = { "n", 224733 },	-- Tulumun
					["coord"] = { 56.2, 42.3, AZJ_KAHET },
				}),
			}),
			n(VENDORS, {
				n(227607, {	-- Fliq'ri <Mistress of Minions>
					["description"] = "Found by the right stairs near the second boss. You may need another player to be caught by the nearby guard to be able to buy from the vendor yourself.",
					["coord"] = { 74.7, 48.8, 2343 },
					["groups"] = {
						i(226191),	-- Web Pet Leash (TOY!)
					},
				}),
			}),
			d(DIFFICULTY.DUNGEON.MULTI.NORMAL_PLUS, {
				e(2594, {	-- Orator Krix'vizk
					["crs"] = { 216619 },	-- Orator Krix'vizk <The Fifth Strand>
					["groups"] = {
						i(221168),	-- Cinch of Lingering Influence
						i(221166),	-- Krix'vizk's Speech Rod
						i(219318),	-- Oppressive Orator's Larynx
						i(221170),	-- Subduer's Terrorgrips
						i(221167),	-- Vociferous Subjugator's Bracers
						i(221169),	-- Whisperer's Echoing Steps
					},
				}),
				e(2595, {	-- Fangs of the Queen
					["crs"] = {
						216648,	-- Nx <Fang of the Queen>
						216649,	-- Vx <Fang of the Queen>
					},
					["groups"] = {
						i(221176),	-- Arachnofrost Vest
						i(221171),	-- Kingslayer's Frostfang
						i(221173),	-- Legplates of Duality
						i(221172),	-- Pail of Preserved Obscurity
						i(221174),	-- Penumbral Rimeguards
						i(221175),	-- Shadowchill Amice
						i(219319),	-- Twin Fang Instruments
					},
				}),
				e(2600, {	-- The Coaglamation
					["crs"] = { 216320 },	-- The Coaglamation
					["groups"] = {
						i(221179),	-- Coagulum Cuirass
						i(221181),	-- Elder's Hemolymphal Periapt
						i(221180),	-- Gorebound Stranglers
						i(221178),	-- Ichor-Stained Sollerets
						i(221177),	-- Old-Blood Hielaman
						i(219320),	-- Viscous Coaglam
						i(221182),	-- Vitriolic Veinwoven Wraps
					},
				}),
				e(2596, {	-- Izo, the Grand Splicer
					["crs"] = { 216658 },	-- Izo, the Grand Splicer
					["groups"] = {
						ach(40376),	-- City of Threads
						i(223141),	-- Formula: Enchant Ring - Cursed Critical Strike (RECIPE!)
						i(223142),	-- Formula: Enchant Ring - Cursed Mastery (RECIPE!)
						i(223143),	-- Formula: Enchant Ring - Cursed Versatility (RECIPE!)
						i(219321),	-- Cirral Concoctory
						i(221186),	-- Entwined Chimeric Legguards
						i(221189),	-- Experiment 08752's Band
						i(221185),	-- Flesh Connector's Epaulets
						i(221187),	-- Intertwiner's Shadowcowl
						i(221183),	-- Splice 'n Dice
						i(221184),	-- Surgical Heartstopper
						i(221188),	-- Viscera-Lathered Coat
					},
				}),
			}),
			d(DIFFICULTY.DUNGEON.MULTI.HEROIC_PLUS, {
				e(2596, {	-- Izo, the Grand Splicer
					["crs"] = { 216658 },	-- Izo, the Grand Splicer
					["groups"] = {
						ach(40377),	-- Heroic: City of Threads
					},
				}),
			}),
			d(DIFFICULTY.DUNGEON.MYTHIC, {
				e(2596, {	-- Izo, the Grand Splicer
					["crs"] = { 216658 },	-- Izo, the Grand Splicer
					["groups"] = {
						ach(40379),	-- Mythic: City of Threads
					},
				}),
			}),
		},
	})
})));
