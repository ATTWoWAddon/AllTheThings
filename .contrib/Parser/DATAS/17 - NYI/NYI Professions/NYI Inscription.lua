---------------------------------------------------------------
--     N E V E R    I M P L E M E N T E D    M O D U L E     --
---------------------------------------------------------------
-- #if AFTER WRATH
root(ROOTS.NeverImplemented, n(PROFESSIONS, {
	prof(INSCRIPTION, {
		n(CRAFTABLES, {
			expansion(EXPANSION.MOP, {
				-- 5.2.0
				expansion(EXPANSION.MOP, patch(2,0), bubbleDownSelf({ ["timeline"] = { CREATED_5_2_0 } }, {
					i(93440),	-- Crafted Dreadful Gladiator's Endgame
					i(93450),	-- Crafted Dreadful Gladiator's Reprieve
				})),
			}),
			expansion(EXPANSION.BFA, {
				-- 8.0.1
				expansion(EXPANSION.BFA, patch(0,1), bubbleDownSelf({ ["timeline"] = { CREATED_8_0_1 } }, {
					i(161937),	-- Honorable Combatant's Inked Vessel [A]
					i(159941),	-- Honorable Combatant's Inked Vessel [H]
					i(161935),	-- Inked Vessel of Robust Regeneration [A]
					i(153644),	-- Inked Vessel of Robust Regeneration [H]
					i(161933),	-- Manual of Reverse Wounding [A]
					i(153642),	-- Manual of Reverse Wounding [H]
				})),
			}),
			expansion(EXPANSION.SL, {
				-- 9.0.1
				expansion(EXPANSION.SL, patch(0,1), bubbleDownSelf({ ["timeline"] = { CREATED_9_0_1 } }, {
					i(172910),	-- Darkmoon Card of Repose
					i(173052),	-- Deathbound Codex
					i(173055),	-- Redeemer's Column
					i(173429),	-- Redeemer's Spire
				})),

				-- 9.2.0
				expansion(EXPANSION.SL, patch(2,0), bubbleDownSelf({ ["timeline"] = { CREATED_9_2_0 } }, {
					i(189721),	-- Glyph of the Sayaad
				})),
			}),
			expansion(EXPANSION.DF, {
				-- 10.0.0
				expansion(EXPANSION.DF, patch(0,01), bubbleDownSelf({ ["timeline"] = { CREATED_10_0_0 } }, {
					i(194843),	-- Explorer's Barding Manuscript
					i(192464),	-- Darkmoon Deck: Ysera
					i(191783),	-- Draconic Treatise on Blacksmithing
					i(191078),	-- Gold Rolling Pin
					i(194842),	-- Regal Barding Manuscript
				})),
			}),
			expansion(EXPANSION.TWW, {
				-- 11.0.0
				expansion(EXPANSION.TWW, patch(0,01), bubbleDownSelf({ ["timeline"] = { CREATED_11_0_0 } }, {
					i(222241),	-- Ace of Evolution
					i(222223),	-- Ace of Shining
					i(222214),	-- Ace of Symbiosis
					i(222232),	-- Ace of Vivacity
					i(219660),	-- Algari Missive of Crafting Speed
					i(219661),	-- Algari Missive of Crafting Speed
					i(219662),	-- Algari Missive of Crafting Speed
					i(222198),	-- Algari Missive of Crafting Speed
					i(222199),	-- Algari Missive of Crafting Speed
					i(222200),	-- Algari Missive of Crafting Speed
					i(219669),	-- Algari Missive of Deftness
					i(219670),	-- Algari Missive of Deftness
					i(219671),	-- Algari Missive of Deftness
					i(222207),	-- Algari Missive of Deftness
					i(222208),	-- Algari Missive of Deftness
					i(222209),	-- Algari Missive of Deftness
					i(219663),	-- Algari Missive of Finesse
					i(219664),	-- Algari Missive of Finesse
					i(219665),	-- Algari Missive of Finesse
					i(222201),	-- Algari Missive of Finesse
					i(222202),	-- Algari Missive of Finesse
					i(222203),	-- Algari Missive of Finesse
					i(219651),	-- Algari Missive of Inspiration
					i(219652),	-- Algari Missive of Inspiration
					i(219653),	-- Algari Missive of Inspiration
					i(219837),	-- Algari Missive of Inspiration
					i(219838),	-- Algari Missive of Inspiration
					i(219839),	-- Algari Missive of Inspiration
					i(219858),	-- Algari Missive of Inspiration
					i(219859),	-- Algari Missive of Inspiration
					i(219860),	-- Algari Missive of Inspiration
					i(222189),	-- Algari Missive of Inspiration
					i(222190),	-- Algari Missive of Inspiration
					i(222191),	-- Algari Missive of Inspiration
					i(219657),	-- Algari Missive of Multicraft
					i(219658),	-- Algari Missive of Multicraft
					i(219659),	-- Algari Missive of Multicraft
					i(222195),	-- Algari Missive of Multicraft
					i(222196),	-- Algari Missive of Multicraft
					i(222197),	-- Algari Missive of Multicraft
					i(219666),	-- Algari Missive of Perception
					i(219667),	-- Algari Missive of Perception
					i(219668),	-- Algari Missive of Perception
					i(222204),	-- Algari Missive of Perception
					i(222205),	-- Algari Missive of Perception
					i(222206),	-- Algari Missive of Perception
					i(219654),	-- Algari Missive of Resourcefulness
					i(219655),	-- Algari Missive of Resourcefulness
					i(219656),	-- Algari Missive of Resourcefulness
					i(222192),	-- Algari Missive of Resourcefulness
					i(222193),	-- Algari Missive of Resourcefulness
					i(222194),	-- Algari Missive of Resourcefulness
					i(219825),	-- Algari Missive of the Aurora
					i(219826),	-- Algari Missive of the Aurora
					i(219827),	-- Algari Missive of the Aurora
					i(219846),	-- Algari Missive of the Aurora
					i(219847),	-- Algari Missive of the Aurora
					i(219848),	-- Algari Missive of the Aurora
					i(222142),	-- Algari Missive of the Aurora
					i(222143),	-- Algari Missive of the Aurora
					i(222144),	-- Algari Missive of the Aurora
					i(219822),	-- Algari Missive of the Feverflare
					i(219823),	-- Algari Missive of the Feverflare
					i(219824),	-- Algari Missive of the Feverflare
					i(219843),	-- Algari Missive of the Feverflare
					i(219844),	-- Algari Missive of the Feverflare
					i(219845),	-- Algari Missive of the Feverflare
					i(222145),	-- Algari Missive of the Feverflare
					i(222146),	-- Algari Missive of the Feverflare
					i(222147),	-- Algari Missive of the Feverflare
					i(219819),	-- Algari Missive of the Fireflash
					i(219820),	-- Algari Missive of the Fireflash
					i(219821),	-- Algari Missive of the Fireflash
					i(219840),	-- Algari Missive of the Fireflash
					i(219841),	-- Algari Missive of the Fireflash
					i(219842),	-- Algari Missive of the Fireflash
					i(222148),	-- Algari Missive of the Fireflash
					i(222149),	-- Algari Missive of the Fireflash
					i(222150),	-- Algari Missive of the Fireflash
					i(219831),	-- Algari Missive of the Harmonious
					i(219832),	-- Algari Missive of the Harmonious
					i(219833),	-- Algari Missive of the Harmonious
					i(219852),	-- Algari Missive of the Harmonious
					i(219853),	-- Algari Missive of the Harmonious
					i(219854),	-- Algari Missive of the Harmonious
					i(222151),	-- Algari Missive of the Harmonious
					i(222152),	-- Algari Missive of the Harmonious
					i(222153),	-- Algari Missive of the Harmonious
					i(219834),	-- Algari Missive of the Peerless
					i(219835),	-- Algari Missive of the Peerless
					i(219836),	-- Algari Missive of the Peerless
					i(219855),	-- Algari Missive of the Peerless
					i(219856),	-- Algari Missive of the Peerless
					i(219857),	-- Algari Missive of the Peerless
					i(222154),	-- Algari Missive of the Peerless
					i(222155),	-- Algari Missive of the Peerless
					i(222156),	-- Algari Missive of the Peerless
					i(219828),	-- Algari Missive of the Quickblade
					i(219829),	-- Algari Missive of the Quickblade
					i(219830),	-- Algari Missive of the Quickblade
					i(219849),	-- Algari Missive of the Quickblade
					i(219850),	-- Algari Missive of the Quickblade
					i(219851),	-- Algari Missive of the Quickblade
					i(222157),	-- Algari Missive of the Quickblade
					i(222158),	-- Algari Missive of the Quickblade
					i(222159),	-- Algari Missive of the Quickblade
					i(219621),	-- Algari Treatise on Alchemy
					i(222109),	-- Algari Treatise on Alchemy
					i(219623),	-- Algari Treatise on Blacksmithing
					i(222117),	-- Algari Treatise on Blacksmithing
					i(219624),	-- Algari Treatise on Enchanting
					i(222113),	-- Algari Treatise on Enchanting
					i(219622),	-- Algari Treatise on Engineering
					i(222184),	-- Algari Treatise on Engineering
					i(219625),	-- Algari Treatise on Herbalism
					i(222115),	-- Algari Treatise on Herbalism
					i(219626),	-- Algari Treatise on Inscription
					i(222111),	-- Algari Treatise on Inscription
					i(219627),	-- Algari Treatise on Jewelcrafting
					i(222114),	-- Algari Treatise on Jewelcrafting
					i(219628),	-- Algari Treatise on Leatherworking
					i(222112),	-- Algari Treatise on Leatherworking
					i(219629),	-- Algari Treatise on Mining
					i(222116),	-- Algari Treatise on Mining
					i(219631),	-- Algari Treatise on Skinning
					i(222210),	-- Algari Treatise on Skinning
					i(222211),	-- Algari Treatise on Skinning
					i(222212),	-- Algari Treatise on Skinning
					i(222647),	-- Algari Treatise on Skinning
					i(222648),	-- Algari Treatise on Skinning
					i(219630),	-- Algari Treatise on Tailoring
					i(222110),	-- Algari Treatise on Tailoring
					i(219534),	-- Apricate Ink
					i(219535),	-- Apricate Ink
					i(219536),	-- Apricate Ink
					i(222178),	-- Apricate Ink
					i(222179),	-- Apricate Ink
					i(222180),	-- Apricate Ink
					i(219537),	-- Apricate Pigment
					i(219538),	-- Apricate Pigment
					i(219539),	-- Apricate Pigment
					i(222181),	-- Apricate Pigment
					i(222182),	-- Apricate Pigment
					i(222183),	-- Apricate Pigment
					i(219540),	-- Bound Spearwood
					i(219541),	-- Bound Spearwood
					i(219542),	-- Bound Spearwood
					i(222121),	-- Boundless Cipher
					i(222122),	-- Boundless Cipher
					i(222123),	-- Boundless Cipher
					i(219600),	-- Burnt Rolling Pin
					i(222140),	-- Burnt Rolling Pin
					i(219552),	-- Cipher of Cooperation
					i(219553),	-- Cipher of Cooperation
					i(219554),	-- Cipher of Cooperation
					i(219546),	-- Cipher of Exhileration
					i(219547),	-- Cipher of Exhileration
					i(219548),	-- Cipher of Exhileration
					i(219543),	-- Cipher of Movement
					i(219544),	-- Cipher of Movement
					i(219545),	-- Cipher of Movement
					i(219549),	-- Cipher of Perfection
					i(219550),	-- Cipher of Perfection
					i(219551),	-- Cipher of Perfection
					i(222118),	-- Codified Greenwood
					i(222119),	-- Codified Greenwood
					i(222120),	-- Codified Greenwood
					i(219618),	-- Colors of the Wind
					i(219645),	-- Contract: 11.0 Artisan's Consortium
					i(219646),	-- Contract: 11.0 Artisan's Consortium
					i(219647),	-- Contract: 11.0 Artisan's Consortium
					i(219639),	-- Contract: Arathor
					i(219640),	-- Contract: Arathor
					i(219641),	-- Contract: Arathor
					i(222163),	-- Contract: Arathor
					i(222164),	-- Contract: Arathor
					i(222165),	-- Contract: Arathor
					i(222169),	-- Contract: Artisan
					i(222170),	-- Contract: Artisan
					i(222171),	-- Contract: Artisan
					i(225350),	-- Contract: Artisan's Consortium, Khaz Algar Branch
					i(225351),	-- Contract: Artisan's Consortium, Khaz Algar Branch
					i(225352),	-- Contract: Artisan's Consortium, Khaz Algar Branch
					i(222160),	-- Contract: Earthen
					i(222161),	-- Contract: Earthen
					i(222162),	-- Contract: Earthen
					i(219636),	-- Contract: Khaz Algar
					i(219637),	-- Contract: Khaz Algar
					i(219638),	-- Contract: Khaz Algar
					i(219642),	-- Contract: Nerubian
					i(219643),	-- Contract: Nerubian
					i(219644),	-- Contract: Nerubian
					i(222166),	-- Contract: Nerubian
					i(222167),	-- Contract: Nerubian
					i(222168),	-- Contract: Nerubian
					i(219648),	-- Contract: Renown D
					i(219649),	-- Contract: Renown D
					i(219650),	-- Contract: Renown D
					i(219673),	-- Darkmook Deck: Symbiosis
					i(219674),	-- Darkmoon Deck: Evolve
					i(222240),	-- Darkmoon Deck: Evolve
					i(222222),	-- Darkmoon Deck: Shine
					i(222662),	-- Darkmoon Deck: Shine
					i(220171),	-- Darkmoon Deck: Symbiosis
					i(222213),	-- Darkmoon Deck: Symbiosis
					i(219675),	-- Darkmoon Deck: Vivacity
					i(222231),	-- Darkmoon Deck: Vivacity
					i(222561),	-- Darkmoon Sigil: Ascension
					i(219555),	-- Darkmoon Sigil: Evolution
					i(219556),	-- Darkmoon Sigil: Evolution
					i(219557),	-- Darkmoon Sigil: Evolution
					i(222124),	-- Darkmoon Sigil: Evolution
					i(222562),	-- Darkmoon Sigil: Radiance
					i(219558),	-- Darkmoon Sigil: Shine
					i(219559),	-- Darkmoon Sigil: Shine
					i(219560),	-- Darkmoon Sigil: Shine
					i(222125),	-- Darkmoon Sigil: Shine
					i(219561),	-- Darkmoon Sigil: Symbiosis
					i(219562),	-- Darkmoon Sigil: Symbiosis
					i(219563),	-- Darkmoon Sigil: Symbiosis
					i(222126),	-- Darkmoon Sigil: Symbiosis
					i(222563),	-- Darkmoon Sigil: Symbiosis
					i(219564),	-- Darkmoon Sigil: Vivacity
					i(219565),	-- Darkmoon Sigil: Vivacity
					i(219566),	-- Darkmoon Sigil: Vivacity
					i(222127),	-- Darkmoon Sigil: Vivacity
					i(222564),	-- Darkmoon Sigil: Vivacity
					i(217971),	-- Deadly Cypher
					i(217972),	-- Deadly Cypher
					i(217973),	-- Deadly Cypher
					i(222652),	-- DNT Colors of the Wind (Deprecated)
					i(222650),	-- DNT Inquisitor's Greenwood Bow (Deprecated)
					i(222651),	-- DNT Vagabond's Alacrity (Deprecated)
					i(222248),	-- Eight of Evolution
					i(222230),	-- Eight of Shining
					i(222221),	-- Eight of Symbiosis
					i(222239),	-- Eight of Vivacity
					i(219610),	-- Endgame Offhand
					i(222185),	-- Extraction: Evolve
					i(222188),	-- Extraction: Shine
					i(222187),	-- Extraction: Symbiosis
					i(222186),	-- Extraction: Vivacity
					i(222245),	-- Five of Evolution
					i(222227),	-- Five of Shining
					i(222218),	-- Five of Symbiosis
					i(222236),	-- Five of Vivacity
					i(219599),	-- Fortuitous Essence
					i(222689),	-- Fortuitous Essence
					i(222244),	-- Four of Evolution
					i(222226),	-- Four of Shining
					i(222217),	-- Four of Symbiosis
					i(222235),	-- Four of Vivacity
					i(225338),	-- Glyph of Jab
					i(219602),	-- Hasty Alchemist's Mixing Rod
					i(222138),	-- Hasty Alchemist's Mixing Rod
					i(222133),	-- Inquisitor's Baton
					i(219609),	-- Inquisitor's Codex
					i(222128),	-- Inquisitor's Codex
					i(219612),	-- Inquisitor's Crutch
					i(222132),	-- Inquisitor's Crutch
					i(219616),	-- Inquisitor's Greenwood Bow
					i(219604),	-- Inscribed Rolling Pin
					i(222141),	-- Inscribed Rolling Pin
					i(222108),	-- Khaz Algar Milling
					i(219611),	-- Leveling Agility Stave
					i(219613),	-- Lexicon of Mysteries
					i(222134),	-- Lexicon of Mysteries
					i(222571),	-- Lexicon of Mysteries
					i(219601),	-- Lightweight Scribe's Quill
					i(222136),	-- Lightweight Scribe's Quill
					i(217977),	-- Masterful Cypher
					i(217978),	-- Masterful Cypher
					i(217979),	-- Masterful Cypher
					i(222545),	-- Milling
					i(219603),	-- Patient Alchemist's Mixing Rod
					i(222139),	-- Patient Alchemist's Mixing Rod
					i(217974),	-- Quick Cypher
					i(217975),	-- Quick Cypher
					i(217976),	-- Quick Cypher
					i(219528),	-- Sable Ink
					i(219529),	-- Sable Ink
					i(219530),	-- Sable Ink
					i(222172),	-- Sable Ink
					i(222173),	-- Sable Ink
					i(222174),	-- Sable Ink
					i(219531),	-- Sable Pigment
					i(219532),	-- Sable Pigment
					i(219533),	-- Sable Pigment
					i(222175),	-- Sable Pigment
					i(222176),	-- Sable Pigment
					i(222177),	-- Sable Pigment
					i(222247),	-- Seven of Evolution
					i(222229),	-- Seven of Shining
					i(222220),	-- Seven of Symbiosis
					i(222238),	-- Seven of Vivacity
					i(219605),	-- Silver Tongue's Quill
					i(222137),	-- Silver Tongue's Quill
					i(222246),	-- Six of Evolution
					i(222228),	-- Six of Shining
					i(222219),	-- Six of Symbiosis
					i(222237),	-- Six of Vivacity
					i(222243),	-- Three of Evolution
					i(222225),	-- Three of Shining
					i(222216),	-- Three of Symbiosis
					i(222234),	-- Three of Vivacity
					i(222242),	-- Two of Evolution
					i(222224),	-- Two of Shining
					i(222215),	-- Two of Symbiosis
					i(222233),	-- Two of Vivacity
					i(219617),	-- Vagabond's Alacrity
					i(219614),	-- Vagabond's Baton
					i(222131),	-- Vagabond's Bounding Baton
					i(222130),	-- Vagabond's Careful Crutch
					i(222129),	-- Vagabond's Codex
					i(219615),	-- Vagabond's Post
					i(219606),	-- Vantus of Progress: 11.0 Raid
					i(219607),	-- Vantus of Progress: 11.0 Raid
					i(219608),	-- Vantus of Progress: 11.0 Raid
					i(222135),	-- Vantus Rune: 11.0 Raid
					i(222572),	-- Vantus Rune: 11.0 Raid
					i(219633),	-- Vantus Rune: 11.0 Season 1 Raid
					i(219634),	-- Vantus Rune: 11.0 Season 1 Raid
					i(219635),	-- Vantus Rune: 11.0 Season 1 Raid
					i(217980),	-- Versatile Cypher
					i(217981),	-- Versatile Cypher
					i(217982),	-- Versatile Cypher
				})),
			}),
		}),
		filter(RECIPES, {
			expansion(EXPANSION.BFA, {
				-- 8.0.1
				expansion(EXPANSION.BFA, patch(0,1), bubbleDownSelf({ ["timeline"] = { CREATED_8_0_1 } }, {
					r(269744),	-- Honorable Combatant's Inked Vessel [Rank 1]
					r(256250),	-- Inked Vessel of Robust Regeneration [Rank 1]
					r(256251),	-- Inked Vessel of Robust Regeneration [Rank 2]
					r(256238),	-- Manual of Elemental Enchancement
					r(256241),	-- Manual of Reverse Wounding
					-- With SpellID attached
					i(162356),	-- Recipe: Honorable Combatant's Inked Vessel [Rank 2]
					i(162357),	-- Recipe: Honorable Combatant's Inked Vessel [Rank 3]
					i(162355),	-- Recipe: Inked Vessel of Robust Regeneration [Rank 3]
				})),

				-- 8.2.0
				expansion(EXPANSION.BFA, patch(2,0), bubbleDownSelf({ ["timeline"] = { CREATED_8_2_0 } }, {
					r(299666),	-- Contract: Ankoan [Rank 2]
					r(299667),	-- Contract: Ankoan [Rank 3]
					r(299669),	-- Contract: Unshackled [Rank 2]
					r(299670),	-- Contract: Unshackled [Rank 3]
					r(301999),	-- Milling
					r(302001),	-- Milling
					r(302698),	-- Milling
					r(302704),	-- Milling
					r(302700),	-- Milling
					r(302701),	-- Milling
					r(302697),	-- Milling
					r(302703),	-- Milling
				})),
			}),
			expansion(EXPANSION.SL, {
				-- 9.0.1
				expansion(EXPANSION.SL, patch(0,1), bubbleDownSelf({ ["timeline"] = { CREATED_9_0_1 } }, {
					r(343688),	-- Crafter's Mark III
					r(343687),	-- Crafter's Mark IV
					r(311407),	-- Deathbound Codex
					r(311687),	-- Redeemer's Column
					r(311690),	-- Redeemer's Spire
					-- Without SpellID attached
					i(183865),	-- [DNT][REUSE ME] Technique: Crafter's Mark III
				})),
			}),
			expansion(EXPANSION.DF, {
				-- 10.0.0
				expansion(EXPANSION.DF, patch(0,01), bubbleDownSelf({ ["timeline"] = { CREATED_10_0_0 } }, {
					r(382583),	-- Opening
					r(391783),	-- Wisp of Tyr
					r(388458),	-- Unknown
					-- With SpellID attached
					i(198944),	-- Technique: Mixing Rod I (RECIPE!)
					i(198945),	-- Technique: Mixing Rod II (RECIPE!)
					i(198948),	-- Technique: Rolling Pin I (RECIPE!)
					i(198949),	-- Technique: Rolling Pin II (RECIPE!)
					i(198890),	-- Technique: Scroll of Sales (RECIPE!)
					-- Without SpellID attached
					i(198942),	-- Technique: Alchemist's Sturdy Mixing Rod (RECIPE!)
					i(198922),	-- Technique: Azurescale Sigil (RECIPE!)
					i(198915),	-- Technique: Blazing Fortune (RECIPE!)
					i(198934),	-- Technique: Blazing Ink (RECIPE!)
					i(198925),	-- Technique: Bronzescale Sigil (RECIPE!)
					i(198882),	-- Technique: Bundle O' Cards: Dragon Isles (RECIPE!)
					i(198932),	-- Technique: Burnished Ink (RECIPE!)
					i(198917),	-- Technique: Buzzing Rune (RECIPE!)
					i(198946),	-- Technique: Chef's Smooth Rolling Pin (RECIPE!)
					i(198913),	-- Technique: Chilled Rune (RECIPE!)
					i(198919),	-- Technique: Chirping Rune (RECIPE!)
					i(198958),	-- Technique: Core Explorer's Compendium (RECIPE!)
					i(198933),	-- Technique: Cosmic Ink (RECIPE!)
					i(198939),	-- Technique: Contract: Dragonscale Expedition (RECIPE!)
					i(198957),	-- Technique: Crackling Codex of the Isles (RECIPE!)
					i(198952),	-- Technique: Darkmoon Deck Box: Dance (RECIPE!)
					i(198955),	-- Technique: Darkmoon Deck Box: Inferno (RECIPE!)
					i(198954),	-- Technique: Darkmoon Deck Box: Rime (RECIPE!)
					i(198953),	-- Technique: Darkmoon Deck Box: Watcher (RECIPE!)
					i(198928),	-- Technique: Draconic Missive of the Aurora (RECIPE!)
					i(198931),	-- Technique: Draconic Missive of the Feverflare (RECIPE!)
					i(198920),	-- Technique: Draconic Missive of the Fireflash (RECIPE!)
					i(198929),	-- Technique: Draconic Missive of the Harmonious (RECIPE!)
					i(198921),	-- Technique: Draconic Missive of the Peerless (RECIPE!)
					i(198927),	-- Technique: Draconic Missive of the Quickblade (RECIPE!)
					i(198879),	-- Technique: Draconic Treatise on Alchemy (RECIPE!)
					i(198881),	-- Technique: Draconic Treatise on Blacksmithing (RECIPE!)
					i(198883),	-- Technique: Draconic Treatise on Enchanting (RECIPE!)
					i(198880),	-- Technique: Draconic Treatise on Engineering (RECIPE!)
					i(198884),	-- Technique: Draconic Treatise on Herbalism (RECIPE!)
					i(198885),	-- Technique: Draconic Treatise on Inscription (RECIPE!)
					i(198886),	-- Technique: Draconic Treatise on Jewelcrafting (RECIPE!)
					i(198887),	-- Technique: Draconic Treatise on Leatherworking (RECIPE!)
					i(198888),	-- Technique: Draconic Treatise on Mining (RECIPE!)
					i(201026),	-- Technique: Draconic Treatise on Skinning (RECIPE!)
					i(198889),	-- Technique: Draconic Treatise on Tailoring (RECIPE!)
					i(198924),	-- Technique: Emberscale Sigil (RECIPE!)
					i(198898),	-- Technique: Explorer's Barding Manuscript (RECIPE!)
					i(198914),	-- Technique: Flourishing Fortune (RECIPE!)
					i(198935),	-- Technique: Flourishing Ink (RECIPE!)
					i(198918),	-- Technique: Howling Rune (RECIPE!)
					i(198875),	-- Technique: Illuminating Pillar of the Isles (RECIPE!)
					i(198911),	-- Technique: Illusion Parchment: Spell Shield (RECIPE!)
					i(198926),	-- Technique: Jetscale Sigil (RECIPE!)
					i(198874),	-- Technique: Kinetic Pillar of the Isles (RECIPE!)
					i(198878),	-- Technique: Overseer's Writhebark Stave (RECIPE!)
					i(198877),	-- Technique: Pioneer's Writhebark Stave (RECIPE!)
					i(198787),	-- Technique: Red Haired Renewed Proto-Drake Manuscript (RECIPE!)
					i(198897),	-- Technique: Regal Barding Manuscript (RECIPE!)
					i(198900),	-- Technique: Renewed Proto Drake Manuscript: Red Hair (RECIPE!)
					i(198930),	-- Technique: Runed Writhebark (RECIPE!)
					i(198923),	-- Technique: Sagescale Sigil (RECIPE!)
					i(198950),	-- Technique: Scribe's Fastened Quill (RECIPE!)
					i(198951),	-- Technique: Scribe's Resplendent Quill (RECIPE!)
					i(198916),	-- Technique: Serene Fortune (RECIPE!)
					i(198936),	-- Technique: Serene Ink (RECIPE!)
					i(198956),	-- Technique: Vantus Rune: Vault of the Incarnates (RECIPE!)
					i(198786),	-- Technique: Wrathion Darkmoon Deckbox (RECIPE!)
				})),

				-- 10.2.7
				expansion(EXPANSION.DF, patch(2,7), bubbleDownSelf({ ["timeline"] = { CREATED_10_2_7 } }, {
					-- Without SpellID attached
					i(224270),	-- Tattered Technique: Certificate of Ownership
				})),
			}),
			expansion(EXPANSION.TWW, {
				-- 11.0.0
				expansion(EXPANSION.TWW, patch(0,01), bubbleDownSelf({ ["timeline"] = { CREATED_11_0_0 } }, {
					r(445068),	-- Inquisitor's Greenwood Bow
					r(441318),	-- Miner's Rune of Decyphering
					r(445069),	-- Vagabond's Alacrity
					r(444228),	-- Recraft Equipment
					-- With SpellID attached
					i(223072),	-- Technique: Colors of the Wind [DEPRECATED] (RECIPE!)
					i(223059),	-- Technique: Lexicon of Mysteries (RECIPE!)
					-- Without SpellID attached
					i(223034),	-- Technique: Inscribed Rolling Pin
					i(223032),	-- Technique: Lexicon of Mysteries
					i(223033),	-- Technique: Patient Alchemist's Mixing Rod
				})),
			}),
		}),
	}),
	-- Needs Sorting
	prof(INSCRIPTION, {
		expansion(EXPANSION.MOP, {
			-- 5.0.1
			expansion(EXPANSION.MOP, patch(0,1), bubbleDownSelf({ ["timeline"] = {CREATED_5_0_4} }, {
				i(87829),	-- Technique: Incarnadine Ink
				i(87830),	-- Technique: Tigersblood Tincture
			})),
		}),
		expansion(EXPANSION.WOD, {
			-- 6.2.1
			expansion(EXPANSION.WOD, patch(2,1), bubbleDownSelf({ ["timeline"] = {CREATED_6_2_2} }, {
				i(129139),	-- Tome of Rapid Pathfinding
			})),
		}),
		expansion(EXPANSION.LEGION, {
			-- 7.0.3
			expansion(EXPANSION.LEGION, patch(0,3), bubbleDownSelf({ ["timeline"] = {CREATED_7_0_3} }, {
				-- #if BEFORE 10.1.5
				i(141061),	-- Technique: Grimoire of the Abyssal (Item never made it into the game)
				-- #endif
				i(141065),	-- Technique: Grimoire of the Terrorguard (Item never made it into the game)
				i(141065),	-- Technique: Grimoire of the Terrorguard
			})),

			-- 7.2.0
			expansion(EXPANSION.LEGION, patch(2,0), bubbleDownSelf({ ["timeline"] = {CREATED_7_2_0} }, {
				i(146335),	-- Vantus Rune Technique: Black Rook Hold (likely PTR version)
				i(146355),	-- Vantus Rune Technique: Black Rook Hold (likely PTR version)
				i(146375),	-- Vantus Rune Technique: Black Rook Hold (likely PTR version)
				i(146344),	-- Vantus Rune Technique: Cathedral of Eternal Night (likely PTR version)
				i(146364),	-- Vantus Rune Technique: Cathedral of Eternal Night (likely PTR version)
				i(146384),	-- Vantus Rune Technique: Cathedral of Eternal Night (likely PTR version)
				i(146395),	-- Vantus Rune Technique: Court of Stars (likely PTR version)
				i(146397),	-- Vantus Rune Technique: Court of Stars (likely PTR version)
				i(146399),	-- Vantus Rune Technique: Court of Stars (likely PTR version)
				i(146336),	-- Vantus Rune Technique: Darkheart Thicket (likely PTR version)
				i(146356),	-- Vantus Rune Technique: Darkheart Thicket (likely PTR version)
				i(146376),	-- Vantus Rune Technique: Darkheart Thicket (likely PTR version)
				i(146396),	-- Vantus Rune Technique: Eye of Azshara (likely PTR version)
				i(146398),	-- Vantus Rune Technique: Eye of Azshara (likely PTR version)
				i(146400),	-- Vantus Rune Technique: Eye of Azshara (likely PTR version)
				i(146337),	-- Vantus Rune Technique: Halls of Valor (likely PTR version)
				i(146357),	-- Vantus Rune Technique: Halls of Valor (likely PTR version)
				i(146377),	-- Vantus Rune Technique: Halls of Valor (likely PTR version)
				i(146338),	-- Vantus Rune Technique: Maw of Souls (likely PTR version)
				i(146358),	-- Vantus Rune Technique: Maw of Souls (likely PTR version)
				i(146378),	-- Vantus Rune Technique: Maw of Souls (likely PTR version)
				i(146339),	-- Vantus Rune Technique: Neltharion's Lair (likely PTR version)
				i(146359),	-- Vantus Rune Technique: Neltharion's Lair (likely PTR version)
				i(146379),	-- Vantus Rune Technique: Neltharion's Lair (likely PTR version)
				i(146340),	-- Vantus Rune Technique: Return to Karazhan (Lower) (likely PTR version)
				i(146360),	-- Vantus Rune Technique: Return to Karazhan (Lower) (likely PTR version)
				i(146380),	-- Vantus Rune Technique: Return to Karazhan (Lower) (likely PTR version)
				i(146345),	-- Vantus Rune Technique: Return to Karazhan (Upper) (likely PTR version)
				i(146365),	-- Vantus Rune Technique: Return to Karazhan (Upper) (likely PTR version)
				i(146385),	-- Vantus Rune Technique: Return to Karazhan (Upper) (likely PTR version)
				i(146341),	-- Vantus Rune Technique: The Arcway (likely PTR version)
				i(146361),	-- Vantus Rune Technique: The Arcway (likely PTR version)
				i(146381),	-- Vantus Rune Technique: The Arcway (likely PTR version)
				i(146342),	-- Vantus Rune Technique: Vault of the Wardens (likely PTR version)
				i(146362),	-- Vantus Rune Technique: Vault of the Wardens (likely PTR version)
				i(146382),	-- Vantus Rune Technique: Vault of the Wardens (likely PTR version)
				i(146343),	-- Vantus Rune Technique: Violet Hold (likely PTR version)
				i(146363),	-- Vantus Rune Technique: Violet Hold (likely PTR version)
				i(146383),	-- Vantus Rune Technique: Violet Hold (likely PTR version)
			})),
		}),
	}),
}));
-- #endif