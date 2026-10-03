-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------

root(ROOTS.ExpansionFeatures,
	expansion(EXPANSION.WOD, {
		n(GARRISONS, sharedData({["maps"] = { LUNARFALL, FROSTWALL } },	{
			n(BUILDINGS, {
				garrisonBuilding(36, {	-- Frostwall Tavern (rank 1: 34, rank 2: 35, rank 3: 36)
					n(ACHIEVEMENTS, {
						ach(9703, {		-- Stay Awhile and Listen
							["description"] = "Unlocks the ability to purchase the blueprint from Blueprints Vendors.",
							["sym"] = {{ "achievement_criteria" }},
							["groups"] = {
								a(i(109065)),	-- Lunarfall Inn, Level 3 [Blueprints]
								h(i(116432)),	-- Frostwall Tavern, Level 3 [Blueprints]
							},
						}),
					}),
					-- Could potentially combine the list manually, but parser will do it for us and it will sort itself in the minilist
					n(FOLLOWERS, {	-- (Alliance)
						["cr"] = 84947,	-- Lysa Serion <Headhunter>
						["SortType"] = "name",
						["groups"] = {
							follower(342),	-- "Doc" Schweitzer
							follower(227),	-- Adelaide Kane
							follower(406),	-- Aerik Matthews
							follower(382),	-- Ailsa Thundersong
							follower(351),	-- Alasdair Whitepeak
							follower(91),	-- Alessia D'Nara
							follower(395),	-- Amie Chambers
							follower(285),	-- Anaeli
							follower(363),	-- Antone Sula
							follower(92),	-- Araspeth
							follower(341),	-- Archibald Arlison
							follower(347),	-- Arctic Whitemace
							follower(237),	-- Arebia Wintercall
							follower(87),	-- Ashlen Swordbreaker
							follower(429),	-- Audra Stoneshield
							follower(280),	-- Bastiana Moran
							follower(287),	-- Becky Dawson
							follower(390),	-- Belouran
							follower(107),	-- Bemora
							follower(326),	-- Bernhard Hammerdown
							follower(235),	-- Bitterwalker Pikrea
							follower(288),	-- Bloodrose
							follower(230),	-- Bodrin Bloodhowl
							follower(279),	-- Bren Swiftshot
							follower(417),	-- Bridgette Hicks
							follower(447),	-- Brogan Threepints
							follower(444),	-- Brother Boshi
							follower(371),	-- Brula Brandykeg
							follower(254),	-- Bryan Schnau
							follower(365),	-- Burghy Blackheart
							follower(364),	-- Caelvana Duskwalker
							follower(295),	-- Caerania the Tempering
							follower(408),	-- Caeris Felwalker
							follower(400),	-- Caleb Weber
							follower(271),	-- Catherine Magruder
							follower(262),	-- Celadina
							follower(345),	-- Ciarra Neil
							follower(401),	-- Cinad Darksummit
							follower(360),	-- Claire "the Fox"
							follower(434),	-- Clever Ashyo
							follower(385),	-- Colm Breakstorm
							follower(394),	-- Conall Rainsinger
							follower(368),	-- Corene Caldwell
							follower(377),	-- Dag Stonecircle
							follower(276),	-- Dana Crockett
							follower(297),	-- Danaeris Amberstar
							follower(413),	-- Daniel Montoy
							follower(258),	-- Daven Kessler
							follower(265),	-- Dekland Strange
							follower(96),	-- Delaras Moonshadow
							follower(333),	-- Delma Ironsafe
							follower(427),	-- Dessee Crashcrank
							follower(431),	-- Dilben Ironshot
							follower(350),	-- Doc Lightspanner
							follower(301),	-- Domnall Icecrag
							follower(379),	-- Dordra Talusfall
							follower(354),	-- Draeken Nightspear
							follower(115),	-- Dramnur Doombrow
							follower(387),	-- Ebba Stormfist
							follower(441),	-- Edith Shareflagon
							follower(410),	-- Edmund Duskrend
							follower(398),	-- Eli Cannon
							follower(250),	-- Ellington Moonheart
							follower(323),	-- Elva Stonechapel
							follower(277),	-- Erohaan
							follower(289),	-- Esmund Brightshield
							follower(424),	-- Eunna Young
							follower(450),	-- Evanra Cloudchant
							follower(335),	-- Faal
							follower(426),	-- Fargo Flintlocke
							follower(357),	-- Fasani
							follower(298),	-- Fen Cinderpaw
							follower(384),	-- Fern Greenfoot
							follower(231),	-- Filmore Patricks
							follower(388),	-- Fingall Flamehammer
							follower(93),	-- Fink Fastneedle
							follower(89),	-- Flurga
							follower(436),	-- Fo Sho Knucklebump
							follower(299),	-- Frostlighter Hanaa
							follower(270),	-- Gabriel Bybee
							follower(330),	-- Galadran Gath
							follower(383),	-- Galestriker Halanai
							follower(397),	-- Garvan Bitterstone
							follower(88),	-- Ginnwin Grindspinner
							follower(245),	-- Gorandir Wildsong
							follower(113),	-- Grum Boarsbane
							follower(110),	-- Gwinolen Stormgrip
							follower(449),	-- Gwynlan Rainglow
							follower(327),	-- Haagios
							follower(430),	-- Halsteth Ravenwood
							follower(119),	-- Haomi
							follower(294),	-- Harry Lawson
							follower(334),	-- Hereward Stonecleave
							follower(346),	-- Herrathos Starstaff
							follower(403),	-- Hester Blackember
							follower(255),	-- Hestiah Ravenwood
							follower(236),	-- Hildr Helhammer
							follower(343),	-- Honora Keystone
							follower(402),	-- Humbolt Briarblack
							follower(263),	-- Ilaniel Pine
							follower(331),	-- Illu'mina
							follower(248),	-- Ilspeth Hollander
							follower(274),	-- Ilyanna Talongrasp
							follower(97),	-- Imme Ironheart
							follower(355),	-- Ingrid Darkplait
							follower(419),	-- Innes Shieldshatter
							follower(412),	-- Isabella Jean
							follower(396),	-- Iven Page
							follower(374),	-- Jen'thael Darkcloak
							follower(370),	-- Jephet Nighthowler
							follower(105),	-- Joachim Demonsbane
							follower(359),	-- Justine DeGroot
							follower(253),	-- Kage Satsuke
							follower(386),	-- Kai Earthwhisper
							follower(416),	-- Kalandra Starhelm
							follower(432),	-- Kang Bramblestaff
							follower(112),	-- Denalea Meadowglaive
							follower(414),	-- Karyn Whitmoor
							follower(284),	-- Kathrena Winterwisp
							follower(407),	-- Kayt Miccoats
							follower(392),	-- Keema
							follower(448),	-- Ken-Ken
							follower(283),	-- Kendall Covington
							follower(247),	-- Kihra
							follower(361),	-- Kilandric Hawkstrike
							follower(348),	-- Kinndy Brightsocket
							follower(260),	-- Kirandros Galeheart
							follower(421),	-- Kiruud the Relentless
							follower(442),	-- Kitara Mae
							follower(269),	-- Kris Rey
							follower(373),	-- Kristian Nairn
							follower(376),	-- Kymba Quickwidget
							follower(102),	-- Lamontague Ford
							follower(422),	-- Larry Copeland
							follower(273),	-- Lee Olesky
							follower(391),	-- Leena
							follower(356),	-- Leena Guant
							follower(118),	-- Len-Shu
							follower(286),	-- Leonard Schrick
							follower(332),	-- Lightshielder Baetrix
							follower(437),	-- Lin Tenderpaw
							follower(352),	-- Linda Meier
							follower(244),	-- Lleanya Mourningsong
							follower(338),	-- Loranea
							follower(375),	-- Lorcan Flintedge
							follower(362),	-- Lowping
							follower(106),	-- Lucia Nightbane
							follower(103),	-- Lucretia Ainsworth
							follower(238),	-- Lukain Chillborne
							follower(272),	-- Lylnleath Featherfoot
							follower(438),	-- Maeve Hopwash
							follower(239),	-- Makaaria the Cursed
							follower(329),	-- Malden
							follower(372),	-- Margo Steelfinger
							follower(114),	-- Marguun
							follower(445),	-- Master Tengbai
							follower(302),	-- Matthew Deyling
							follower(94),	-- Matthew Younglove
							follower(233),	-- Maul Dethwidget
							follower(399),	-- Mia Linn
							follower(443),	-- Miiraxa the Renewer
							follower(228),	-- Mina Harken
							follower(439),	-- Mina Kunis
							follower(117),	-- Mirran Lichbane
							follower(405),	-- Mizzy Bobble
							follower(292),	-- Mysandra Swiftarc
							follower(415),	-- Nance Doubleblade
							follower(393),	-- Navea the Purifier
							follower(340),	-- Neve Axeblow
							follower(409),	-- Nevil Darkstride
							follower(303),	-- Niall Frostdrift
							follower(337),	-- Nicholas Divide
							follower(95),	-- Nihil Tel'alara
							follower(328),	-- Noah Munck
							follower(290),	-- Nordaerin Silverbeam
							follower(275),	-- Noreen Trueflint
							follower(349),	-- Noxiia Atoh
							follower(109),	-- Nudan
							follower(98),	-- Nuria Thornstorm
							follower(111),	-- Olren Sternbeard
							follower(440),	-- Orrindis Raindrinker
							follower(378),	-- Orvar
							follower(325),	-- Osgar Smitehammer
							follower(366),	-- Peng Stealthpaw
							follower(267),	-- Permelia
							follower(242),	-- Peter Toulios
							follower(232),	-- Raevyn Sorrowblade
							follower(264),	-- Ramall Trueoak
							follower(252),	-- Randee Wallyce
							follower(411),	-- Ranni Flagdabble
							follower(324),	-- Raquel Deyling
							follower(300),	-- Rebecca Stirling
							follower(304),	-- Reina Morningchill
							follower(99),	-- Renthal Bloodfang
							follower(101),	-- Rin Starsong
							follower(358),	-- Rorin Rivershade
							follower(380),	-- Roshene Stonewhisper
							follower(246),	-- Ruvan Hornsby
							follower(404),	-- Rykki Lyndgarf
							follower(259),	-- Sarah Schnau
							follower(435),	-- Saul Lee
							follower(268),	-- Scarletleaf
							follower(90),	-- Scrapsy Fibblepop
							follower(251),	-- Seline Keihl
							follower(428),	-- Selis
							follower(296),	-- Seona Fireweaver
							follower(234),	-- Sever Frostsprocket
							follower(425),	-- Shieldmaster Daeun
							follower(293),	-- Skip Burnbright
							follower(344),	-- Songla
							follower(172, {	-- Soulare of Andorhal
								i(117573, {	-- Wayfarer's Bonfire (TOY!)
									["cr"] = 82717,	-- Soulare of Andorhal
									["description"] = "|cff3399ffStep 1:|r Recruit |cFFFFD700Soulare of Andorhal|r from the Inn using either Magic Debuff or Wild Aggression.\n|cff3399ffStep 2:|r Do a |cFFFFFFFF/tired|r emote and he will award the toy.\n|cff3399ffNote:|r Can get by visiting someone's Garrison, and players of both factions can now visit Soulare in Stormwind City at |cFFFFFFFF38.2, 64.6|r and emote at him to get the toy.",
								}),
							}),
							follower(452),	-- Sprynt Starkflange
							follower(281),	-- Stigander Ironsnare
							follower(381),	-- Stormsinger Taalos
							follower(120),	-- Su-Lai Snowpetal
							follower(420),	-- Suna "Sunnie" Steelpaw
							follower(116),	-- Sylalleas Frostwind
							follower(108),	-- Sylva Darkhowl
							follower(367),	-- Syndee Sparkblade
							follower(249),	-- Syverandin Yewshade
							follower(241),	-- Tavid Blightsteel
							follower(423),	-- Tell'machrim Stormvigil
							follower(336),	-- Temura Ence
							follower(291),	-- Tessa Wybroff
							follower(266),	-- Thaal'kos Thundersong
							follower(446),	-- Thurman Belva
							follower(229),	-- Torin Coalheart
							follower(282),	-- Trapper Huong
							follower(353),	-- Truman Weaver
							follower(451),	-- Tylee Hackspring
							follower(243),	-- Ultan Blackgorge
							follower(261),	-- Ursila Hudsen
							follower(256),	-- Verroak Greenheart
							follower(278),	-- Vidar Goldaim
							follower(339),	-- Voraatios the Benedictive
							follower(100),	-- Vulric Fangborne
							follower(104),	-- Wolfgrimm Blackmantle
							follower(257),	-- Xeranitas
							follower(433),	-- Xiao
							follower(418),	-- Yumanis Oakengrip
							follower(240),	-- Yvette Blackheart
							follower(369),	-- Zelena Moonbreak
							follower(389),	-- Zian
						},
					}),
					n(FOLLOWERS, {	-- (Horde)
						["cr"] = 87305,	-- Akanja <Headhunter>
						["sort"] = true,
						["groups"] = {
							follower(342),	-- "Doc" Schweitzer
							follower(271),	-- Abigail Wilson
							follower(277),	-- Aesin Sunstalker
							follower(346),	-- Ahaxxa
							follower(353),	-- Ahote
							follower(376),	-- Aila Dourblade
							follower(419),	-- Allison Calla
							follower(416),	-- Annix Strifesprocket
							follower(115),	-- Arachni Bloodseeker
							follower(291),	-- Arcanist Druk'rog
							follower(399),	-- Arga Demonbreak
							follower(339),	-- Argonis Solheart
							follower(345),	-- Arienne Black
							follower(324),	-- Ariia
							follower(360),	-- Ariiya Sunblood
							follower(106),	-- Artemisia Azuregaze
							follower(327),	-- Auriel Brightsong
							follower(296),	-- Awarri Blazecall
							follower(116),	-- Azereki Ashenblade
							follower(114),	-- Baron Deathshot
							follower(113),	-- Beezle Boomsticks
							follower(335),	-- Besandran Shatterfury
							follower(420),	-- Bim'ini
							follower(426),	-- Brakk Shattershield
							follower(349),	-- Brother Zuo
							follower(262),	-- Cadi Grasshoof
							follower(354),	-- Calder Gray
							follower(300),	-- Candice Morey
							follower(447),	-- Charles Norris
							follower(403),	-- Cheri
							follower(434),	-- Clever Ashyo
							follower(280),	-- Coggeye Aimbot
							follower(229),	-- Cyril Fogus
							follower(295),	-- Dawn Mercurus
							follower(405),	-- Deena Feltalker
							follower(238),	-- Deneezo Hailstrike
							follower(371),	-- Ella Driver
							follower(241),	-- Enoch Fuller
							follower(343),	-- Enola
							follower(428),	-- Eula Clay
							follower(333),	-- Faala
							follower(445),	-- Favra Bearhide
							follower(275),	-- Fawne
							follower(383),	-- Fazerra
							follower(436),	-- Fo Sho Knucklebump
							follower(422),	-- Gaho
							follower(303),	-- Gakkiz Blusterblast
							follower(435),	-- Gakkiz Blusterblast
							follower(109),	-- Garag Earthtongue
							follower(87),	-- Gazra
							follower(98),	-- Genah Brawnhoof
							follower(397),	-- Gerard Loom
							follower(429),	-- Glaiveweaver Xuan
							follower(245),	-- Goahn
							follower(239),	-- Gravewalker Gie
							follower(385),	-- Gravy
							follower(359),	-- Grelwaz Redknife
							follower(91),	-- Grinfel Frostfinger
							follower(260),	-- Guardian Atohi
							follower(358),	-- Handel Shadereaver
							follower(340),	-- Hannya
							follower(119),	-- Haomi
							follower(278),	-- Hara'len
							follower(356),	-- Harley Soubrette
							follower(261),	-- Haumeja
							follower(97),	-- Hayli Hallowsend
							follower(389),	-- Heallix Skatterstorm
							follower(373),	-- Henry Wall
							follower(289),	-- Herschel Welch
							follower(228),	-- Heyzzle Veinripp
							follower(264),	-- Humak the Verdant
							follower(266),	-- Iye
							follower(267),	-- Ja'kala
							follower(251),	-- Jakama
							follower(410),	-- John Greer
							follower(287),	-- Jukke Deathward
							follower(286),	-- Kaama Arrowspring
							follower(244),	-- Kaasa Blighthoof
							follower(95),	-- Kablouie One-Eye
							follower(329),	-- Kaiel
							follower(247),	-- Kaluaka
							follower(452),	-- Kana'tin
							follower(432),	-- Kang Bramblestaff
							follower(427),	-- Kanuama
							follower(273),	-- Karga Quickshot
							follower(430),	-- Karn Steelhoof
							follower(293),	-- Kaz'hiki
							follower(386),	-- Kel'rikor
							follower(448),	-- Ken-Ken
							follower(357),	-- Kenzi Solo
							follower(398),	-- Kerraelon Sunhunger
							follower(272),	-- Kew Wyldheart
							follower(379),	-- Kieu
							follower(402),	-- Kil'weh
							follower(232),	-- Kilga Mourningsong
							follower(406),	-- Killix Zombroski
							follower(292),	-- Kral'girz
							follower(268),	-- Kuma Thunderhide
							follower(274),	-- Kwahu Fiendtamer
							follower(367),	-- Lai
							follower(102),	-- Lamontague Ford
							follower(338),	-- Lan'veros Furybrand
							follower(438),	-- Lara Pearson
							follower(362),	-- Lawrence Sharp
							follower(323),	-- Layla
							follower(88),	-- Lazrek
							follower(118),	-- Len-Shu
							follower(421),	-- Leoneras Sunrage
							follower(437),	-- Lin Tenderpaw
							follower(401),	-- Lok'rig Felthrall
							follower(388),	-- Lonan
							follower(243),	-- Lono'tai
							follower(450),	-- Lucy Keller
							follower(423),	-- Lurst Ragebreak
							follower(325),	-- Lusio
							follower(290),	-- Magister Tuan
							follower(299),	-- Magistrix Chillbreeze
							follower(395),	-- Magistrix Soulblaze
							follower(100),	-- Magrum Mistrunner
							follower(355),	-- Marara
							follower(302),	-- Marius Sunshard
							follower(418),	-- Maska
							follower(249),	-- Matoclaw
							follower(94),	-- Matthew Younglove
							follower(411),	-- Mau'iti
							follower(331),	-- Merhean Sunfall
							follower(377),	-- Mograg
							follower(246),	-- Mojo'kai
							follower(276),	-- Mokuja
							follower(117),	-- Morticia Crowley
							follower(417),	-- Motina
							follower(391),	-- Moxy Mistbargain
							follower(257),	-- Muaha Stonehide
							follower(230),	-- Mukkral Blackvein
							follower(281),	-- Murgtar
							follower(283),	-- Mychele Morrowsong
							follower(89),	-- Myra Hackenslash
							follower(332),	-- Naana
							follower(412),	-- Nadia Darksun
							follower(408),	-- Natalie Sparks
							follower(270),	-- Nathaniel Beastbreaker
							follower(248),	-- Neejala
							follower(240),	-- Nerwalla Malword
							follower(396),	-- Neth'raza Doomrend
							follower(288),	-- Noel Harrison
							follower(400),	-- Nor'gruk Rotskull
							follower(451),	-- Nuan Skydream
							follower(301),	-- Nuku'te
							follower(242),	-- Olaf Blightbearer
							follower(415),	-- Olivia Logan
							follower(363),	-- Omril Keenedge
							follower(336),	-- Opheron
							follower(269),	-- Orgriz Crookmaw
							follower(231),	-- Orin Grimblade
							follower(413),	-- Orog
							follower(414),	-- Orrelleon Searingstrike
							follower(297),	-- Pele'zol
							follower(347),	-- Phaedra Heartbinder
							follower(344),	-- Pikake
							follower(369),	-- Pinkee Rizzo
							follower(352),	-- Priscilla Shadowsun
							follower(364),	-- Qwilla Bloodedge
							follower(380),	-- Raitea
							follower(390),	-- Rakkaha
							follower(279),	-- Rangiro
							follower(392),	-- Reena Waterrites
							follower(365),	-- Rendrol Goreslash
							follower(227),	-- Rike Stillbreath
							follower(110),	-- Rizei Stormhoof
							follower(424),	-- Rizza Brassrokkit
							follower(341),	-- Robin Fredericksen
							follower(431),	-- Rok'tar
							follower(394),	-- Rongar
							follower(285),	-- Rumelda Bloodslur
							follower(348),	-- Ruthia the Unchaste
							follower(101),	-- Sa'vi
							follower(328),	-- Sahale
							follower(330),	-- Salanar Mourningsun
							follower(284),	-- Samantha Thornton
							follower(107),	-- Seleria Dawncaller
							follower(103),	-- Shade Plagueheart
							follower(381),	-- Shappa
							follower(92),	-- Shoka
							follower(407),	-- Simone Baloy
							follower(298),	-- Singe Starkblast
							follower(449),	-- Sister Xue
							follower(326),	-- Skah
							follower(370),	-- Skalliz Skullslice
							follower(387),	-- Soozee
							follower(172, {	-- Soulare of Andorhal
								i(117573, {	-- Wayfarer's Bonfire (TOY!)
									["cr"] = 82717,	-- Soulare of Andorhal
									["description"] = "|cff3399ffStep 1:|r Recruit |cFFFFD700Soulare of Andorhal|r from the Inn using either Magic Debuff or Wild Aggression.\n|cff3399ffStep 2:|r Do a |cFFFFFFFF/tired|r emote and he will award the toy.\n|cff3399ffNote:|r Can get by visiting someone's Garrison, and players of both factions can now visit Soulare in Stormwind City at |cFFFFFFFF38.2, 64.6|r and emote at him to get the toy.",
								}),
							}),
							follower(120),	-- Su-Lai Snowpetal
							follower(265),	-- Su'tila
							follower(96),	-- Sul'aka
							follower(252),	-- Sulaka
							follower(235),	-- Sylvie Fallensong
							follower(378),	-- Tadi
							follower(304),	-- Taela Shatterborne
							follower(351),	-- Tak'moa
							follower(250),	-- Tama Skyhoof
							follower(253),	-- Tapa Swiftpaw
							follower(337),	-- Tas'ril Imturematril
							follower(334),	-- Tawa
							follower(375),	-- Temanu
							follower(111),	-- Theo'drosh Blindseyed
							follower(258),	-- Tholo Whitehoof
							follower(233),	-- Tigar Frosthoof
							follower(294),	-- Tigowa
							follower(236),	-- Tipa Rimehorn
							follower(442),	-- Tizare
							follower(446),	-- Toega
							follower(234),	-- Ton'raro
							follower(237),	-- Torwa Rimeheart
							follower(382),	-- Unkala Stormgrinder
							follower(393),	-- Utona Wolfeye
							follower(99),	-- Va'zik
							follower(361),	-- Vaal'kelthos Dawngrief
							follower(112),	-- Vala Kaliraan
							follower(366),	-- Vaz'rek
							follower(404),	-- Veka'kai
							follower(443),	-- Velandros Sunblessing
							follower(90),	-- Vella A'nar
							follower(372),	-- Vera Haelyn
							follower(104),	-- Vera Voidheart
							follower(368),	-- Vivalia Sundagger
							follower(444),	-- Vol'motu
							follower(409),	-- Vol'zaku
							follower(108),	-- Vyse Jin'kala
							follower(425),	-- Walsh Atkins
							follower(440),	-- Xen Barleystrike
							follower(433),	-- Xiao
							follower(350),	-- Yaalo
							follower(384),	-- Yepa
							follower(441),	-- Yiska
							follower(439),	-- Yu'un Tigersbite
							follower(93),	-- Zaelatha
							follower(105),	-- Zance Silverfury
							follower(282),	-- Zap Snaresizzle
							follower(374),	-- Zelaztro
							follower(255),	-- Zen'kili
							follower(254),	-- Zen'taki
							follower(259),	-- Zen'tenbi
							follower(263),	-- Zen'tika
							follower(256),	-- Zen'tiki
						},
					}),
					n(QUESTS, {
						i(119036, {	-- Box of Storied Treasures [4]
							["description"] = "Commonly rewarded from quests provided from the Inn.",
							["sym"] = SYM_WOD_COMMON_DUNGEON_SLOTS(DIFFICULTY.DUNGEON.MULTI.NORMAL_MYTHIC,
								HANDS, WAIST, LEGS, CHEST, FEET, HEAD, WRIST, SHOULDER, BACK, NECK, FINGER),
						}),
						i(119037, {	-- Supply of Storied Rarities [16]
							["description"] = "Commonly rewarded from quests provided from the Inn.",
							["sym"] = SYM_WOD_COMMON_DUNGEON_SLOTS(DIFFICULTY.DUNGEON.HEROIC,
								HANDS, WAIST, LEGS, CHEST, FEET, HEAD, WRIST, SHOULDER, BACK, NECK, FINGER),
						}),
						q(37228, {	-- A Fruitful Proposition
							["sourceQuest"] = 37152,	-- Cro's Revenge
							["qg"] = 87991,	-- Cro Threadstrong
							["maps"] = { 573 },	-- Bloodmaul Slag Mines
							["repeatable"] = true,
							["groups"] = {
								i(118534),	-- Giant Ogre Head (QI!)
								i(119037),	-- Supply of Storied Rarities
							},
						}),
						q(37237, {	-- A Hero's Quest is Never Complete
							["sourceQuest"] = 37162,	-- Damsels and Dragons
							["qg"] = 88001,	-- Maximillian of Northshire
							["maps"] = { UPPER_BLACKROCK_SPIRE_WOD, 617, 618 },	-- Upper Blackrock Spire
							["repeatable"] = true,
							["groups"] = {
								o(237469, {	-- Shed Proto-Dragon Claw
									i(118624),	-- Shed Proto-Dragon Claw (QI!)
								}),
								i(119037),	-- Supply of Storied Rarities
							},
						}),
						q(37235, {	-- A Plea to the Sky
							["sourceQuest"] = 37159,	-- Aviana's Request
							["qg"] = 87999,	-- Skylord Omnuron
							["maps"] = { 601, 602 },	-- Skyreach
							["repeatable"] = true,
							["groups"] = {
								o(237467, {	-- Pristine Plumage
									i(118622),	-- Pristine Plumage (QI!)
								}),
								i(119037),	-- Supply of Storied Rarities
							},
						}),
						q(37243, {	-- An Axe to Grind
							["sourceQuest"] = 37160,	-- Cleaving Time
							["qg"] = 88007,	-- Gamon
							["maps"] = { 606, 607, 608, 609 },	-- Grimrail Depot
							["repeatable"] = true,
							["groups"] = {
								o(237475, {	-- Iron Limbcleaver
									i(118644),	-- Iron Limbcleaver (QI!)
								}),
								i(119037),	-- Supply of Storied Rarities
							},
						}),
						q(37167, {	-- And No Maces!
							["qg"] = 88006,	-- Lonika Stillblade
							["maps"] = { 606, 607, 608, 609 },	-- Grimrail Depot
							["groups"] = {
								o(237474, {	-- Huge Crate of Weapons
									i(118643),	-- Huge Crate of Weapons (QI!)
								}),
								i(118924, {	-- Cache of Arms
									i(114073, {	-- Turbulent Hood
										i(114448),	-- Fireflash Hood
										i(114449),	-- Spireflame Hood
										i(114450),	-- Helm of Elemental Torment
										i(114451),	-- Greathelm of Vaulted Skies
									}),
									i(114079, {	-- Turbulent Cloak
										i(114482),	-- Barkwound Woodcloak
										i(114485),	-- Bonesplitter Dreadcloak
										i(114483),	-- Darkshadow Drape
										i(114486),	-- Drape of Softened Blows
										i(114484),	-- Purifier's Silken Cape
									}),
									i(114072, {	-- Turbulent Gauntlets
										i(114444),	-- Fireflash Gloves
										i(114445),	-- Spireflame Gauntlets
										i(114446),	-- Gauntlets of Elemental Torment
										i(114447),	-- Gauntlets of Vaulted Skies
									}),
									i(114074, {	-- Turbulent Leggings
										i(114452),	-- Fireflash Trousers
										i(114453),	-- Spireflame Legguards
										i(114454),	-- Legguards of Elemental Torment
										i(114455),	-- Legplates of Vaulted Skies
									}),
								}),
							},
						}),
						q(37159, {	-- Aviana's Request
							["qg"] = 87999,	-- Skylord Omnuron
							["maps"] = { 601, 602 },	-- Skyreach
							["groups"] = {
								o(237467, {	-- Pristine Plumage
									i(118622),	-- Pristine Plumage (QI!)
								}),
								i(119093),	-- Aviana's Feather (TOY!)
							},
						}),
						q(37230, {	-- Bloody Expensive
							["sourceQuest"] = 37157,	-- Feeling A Bit Morose
							["qg"] = 87994,	-- Moroes <Tower Steward>
							["maps"] = { 595 },	-- Iron Docks
							["repeatable"] = true,
							["groups"] = {
								o(237462, {	-- Horribly Acidic Solution
									i(118647),	-- Horribly Acidic Solution (QI!)
								}),
								i(119037),	-- Supply of Storied Rarities
							},
						}),
						q(37145, {	-- Budd's Gambit
							["qg"] = 88017,	-- Budd
							["maps"] = { 595 },	-- Iron Docks
							["repeatable"] = true,
							["groups"] = {
								o(237478, {	-- Very Shiny Thing
									i(118617),	-- Very Shiny Thing (QI!)
								}),
								i(119041, {	-- Strongbox of Mysterious Treasures
									["sym"] = SYM_WOD_COMMON_DUNGEON_SLOTS(DIFFICULTY.DUNGEON.MULTI.NORMAL_MYTHIC,
										HANDS, WAIST, LEGS, CHEST, FEET, HEAD, WRIST, SHOULDER, BACK, NECK, FINGER),
								}),
							},
						}),
						q(37165, {	-- Cenarion Concerns
							["qg"] = 88004,	-- Zen'kiki
							["maps"] = { 620, 621 },	-- The Everbloom
							["groups"] = {
								i(118935),	-- Ever-Blooming Frond (TOY!)
								o(237472, {	-- Strangely-Glowing Frond
									i(118627),	-- Strangely-Glowing Frond (QI!)
								}),
							},
						}),
						q(37160, {	-- Cleaving Time
							["qg"] = 88007,	-- Gamon
							["maps"] = { 606, 607, 608, 609 },	-- Grimrail Depot
							["groups"] = {
								i(118937),	-- Gamon's Braid (TOY!)
								o(237475, {	-- Iron Limbcleaver
									i(118644),	-- Iron Limbcleaver (QI!)
								}),
							},
						}),
						q(37151, {	-- Cold Steel
							["qg"] = 88026,	-- John J. Keeshan
							["maps"] = { 606, 607, 608, 609 },	-- Grimrail Depot
							["groups"] = {
								i(118918),	-- Bloody Bandanna
								o(237484, {	-- Iron Autocannon
									i(118653),	-- Iron Autocannon (QI!)
								}),
							},
						}),
						q(37209, {	-- Cold Steel Part II
							["sourceQuest"] = 37151,	-- Cold Steel
							["qg"] = 88026,	-- John J. Keeshan
							["maps"] = { 606, 607, 608, 609 },	-- Grimrail Depot
							["repeatable"] = true,
							["groups"] = {
								i(119036),	-- Box of Storied Treasures
								o(237484, {	-- Iron Autocannon
									i(118653),	-- Iron Autocannon (QI!)
								}),
							},
						}),
						q(37152, {	-- Cro's Revenge
							["qg"] = 87991,	-- Cro Threadstrong
							["maps"] = { 573 },	-- Bloodmaul Slag Mines
							["groups"] = {
								i(119083),	-- Fruit Basket (TOY!)
								i(118534),	-- Giant Ogre Head (QI!)
							},
						}),
						q(37162, {	-- Damsels and Dragons
							["qg"] = 88001,	-- Maximillian of Northshire
							["maps"] = { UPPER_BLACKROCK_SPIRE_WOD, 617, 618 },
							["groups"] = {
								i(118927),	-- Maximillian's Laundry
								o(237469, {	-- Shed Proto-Dragon Claw
									i(118624),	-- Shed Proto-Dragon Claw (QI!)
								}),
							},
						}),
						q(37161, {	-- Family Traditions
							["qg"] = 88000,	-- Pip Quickwit
							["maps"] = { UPPER_BLACKROCK_SPIRE_WOD, 617, 618 },
							["groups"] = {
								i(118926),	-- Huge Pile of Skins
								o(237468, {	-- Pip's Improved Skinner
									i(118623),	-- Pip's Improved Skinner (QI!)
								}),
							},
						}),
						q(33814, {	-- Fast Expansion
							["sourceQuests"] = {
								33059,	-- The Fate of Karabor
								33081,	-- Escape From Shaz'gul
							},
							["qgs"] = {
								81152,	-- Scout Valdez
								81153,	-- Scout Valdez
							},
							["coords"] = {
								{ 31.0, 31.1, LUNARFALL },	-- Garrison lvl 3
								{ 40.6, 54.8, DRAENOR_SHADOWMOON_VALLEY },
							},
							["races"] = ALLIANCE_ONLY,
							["isBreadcrumb"] = true,
						}),
						q(37239, {	-- Fate of the Fallen
							["sourceQuest"] = 37164,	-- The Huntress
							["qg"] = 88003,	-- Cowled Ranger
							["maps"] = { 574, 575, 576 },	-- Shadowmoon Burial Grounds
							["repeatable"] = true,
							["groups"] = {
								o(237471, {	-- Silver-Lined Arrow
									i(118626),	-- Silver-Lined Arrow (QI!)
								}),
								i(119037),	-- Supply of Storied Rarities
							},
						}),
						q(37157, {	-- Feeling A Bit Morose
							["qg"] = 87994,	-- Moroes <Tower Steward>
							["maps"] = { 595 },	-- Iron Docks
							["groups"] = {
								o(237462, {	-- Horribly Acidic Solution
									i(118617),	-- Horribly Acidic Solution (QI!)
								}),
								i(119092),	-- Moroes' Famous Polish (TOY!)
							},
						}),
						q(37244, {	-- Flamefly Trap
							["sourceQuest"] = 37148,	-- Oralius' Adventure
							["qg"] = 88024,	-- Oralius
							["maps"] = { UPPER_BLACKROCK_SPIRE_WOD, 617, 618 },	-- Upper Blackrock Spire
							["repeatable"] = true,
							["groups"] = {
								o(237481, {	-- Bottled Flamefly
									i(118650),	-- Spire Flamefly (QI!)
								}),
								i(119036),	-- Box of Storied Treasures
							},
						}),
						q(37150, {	-- For the Birds
							["qg"] = 88025,	-- Mylune
							["maps"] = { 620, 621 },	-- The Everbloom
							["groups"] = {
								i(118921),	-- Everbloom Peachick (PET!)
								o(237483, {	-- Rustling Peachick Nest
									i(118652),	-- Tiny Peachick Hatchling (QI!)
								}),
							},
						}),
						q(37179, {	-- For the Children!
							["qg"] = 88009,	-- Millhouse Manastorm
							["maps"] = { UPPER_BLACKROCK_SPIRE_WOD, 617, 618 },	-- Upper Blackrock Spire
							["groups"] = {
								i(118938),	-- Manastorm's Duplicator (TOY!)
								follower(455),	-- Millhouse Manastorm
								o(237476, {	-- Miniature Iron Star
									i(118645),	-- Miniature Iron Star (QI!)
								}),
							},
						}),
						q(37146, {	-- Go Fetch
							["qg"] = 88022,	-- Johnny Awesome
							["maps"] = { 593 },	-- Auchindoun
							["repeatable"] = true,
							["groups"] = {
								i(119042, {	-- Crate of Valuable Treasures
									["sym"] = SYM_WOD_COMMON_DUNGEON_SLOTS(DIFFICULTY.DUNGEON.MULTI.NORMAL_MYTHIC,
										HANDS, WAIST, LEGS, CHEST, FEET, HEAD, WRIST, SHOULDER, BACK, NECK, FINGER),
								}),
								o(237479, {	-- Nightmare Bell
									i(118648),	-- Nightmare Bell (QI!)
								}),
							},
						}),
						q(37158, {	-- Gloriously Incandescent
							["qg"] = 87998,	-- Sunwalker Dezco
							["maps"] = { 601, 602 },	-- Skyreach
							["groups"] = {
								i(118928),	-- Faintly-Sparkling Cache
								o(237466, {	-- Sun Crystal
									i(118621),	-- Sun Crystal (QI!)
								}),
							},
						}),
						q(37242, {	-- Learning Is Painful
							["sourceQuest"] = 37167,	-- And No Maces!
							["qg"] = 88006,	-- Lonika Stillblade
							["maps"] = { 606, 607, 608, 609 },	-- Grimrail Depot
							["repeatable"] = true,
							["groups"] = {
								o(237474, {	-- Huge Crate of Weapons
									i(118643),	-- Huge Crate of Weapons (QI!)
								}),
								i(119037),	-- Supply of Storied Rarities
							},
						}),
						q(37241, {	-- Lessons of the Past
							["sourceQuest"] = 37166,	-- Titanic Evolution
							["qg"] = 88005,	-- Lorewalker Cho
							["maps"] = { 620, 621 },	-- The Everbloom
							["repeatable"] = true,
							["groups"] = {
								o(237473, {	-- Overgrown Artifact
									i(118628),	-- Overgrown Artifact (QI!)
								}),
								i(119037),	-- Supply of Storied Rarities
							},
						}),
						q(37229, {	-- Like A Dwarf In A Mine
							["sourceQuest"] = 37153,	-- Time-Lost Vikings
							["qg"] = 87992,	-- Olaf
							["maps"] = { 573 },	-- Bloodmaul Slag Mines
							["repeatable"] = true,
							["groups"] = {
								o(237461, {	-- Olaf's Shield
									i(118616),	-- Olaf's Shield (QI!)
								}),
								i(119037),	-- Supply of Storied Rarities
							},
						}),
						q(37236, {	-- Like Father, Like Son
							["sourceQuest"] = 37161,	-- Family Traditions
							["qg"] = 88000,	-- Pip Quickwit
							["maps"] = { UPPER_BLACKROCK_SPIRE_WOD, 617, 618 },	-- Upper Blackrock Spire
							["repeatable"] = true,
							["groups"] = {
								o(237468, {	-- Pip's Improved Skinner
									i(118623),	-- Pip's Improved Skinner (QI!)
								}),
								i(119037),	-- Supply of Storied Rarities
							},
						}),
						q(37142, {	-- Ogre Ancestry
							["qg"] = 88013,	-- Lunk
							["maps"] = { 573 },	-- Bloodmaul Slag Mines
							["isDaily"] = true,
							["groups"] = {
								o(237477, {	-- Ogre Family Tree
									i(118646),	-- Ogre Family Tree (QI!)
								}),
								i(119040, {	-- Cache of Mingled Treasures
									["sym"] = SYM_WOD_COMMON_DUNGEON_SLOTS(DIFFICULTY.DUNGEON.MULTI.NORMAL_MYTHIC,
										HANDS, WAIST, LEGS, CHEST, FEET, HEAD, WRIST, SHOULDER, BACK, NECK, FINGER),
								}),
							},
						}),
						q(37148, {	-- Oralius' Adventure
							["qg"] = 88024,	-- Oralius
							["maps"] = { UPPER_BLACKROCK_SPIRE_WOD, 617, 618 },	-- Upper Blackrock Spire
							["groups"] = {
								o(237481, {	-- Bottled Flamefly
									i(118650),	-- Spire Flamefly (QI!)
								}),
								i(118922),	-- Oralius' Whispering Crystal
							},
						}),
						q(37227, {	-- Put a Bird on It
							["sourceQuest"] = 37150,	-- For the Birds
							["qg"] = 88025,	-- Mylune
							["maps"] = { 620, 621 },	-- The Everbloom
							["repeatable"] = true,
							["groups"] = {
								i(119036),	-- Box of Storied Treasures
								o(237483, {	-- Rustling Peachick Nest
									i(118652),	-- Tiny Peachick Hatchling (QI!)
								}),
							},
						}),
						q(37238, {	-- Secrets of Soulbinding
							["sourceQuest"] = 37163,	-- Shadowy Secrets
							["qg"] = 88002,	-- Highlord Darion Mograine
							["maps"] = { 574, 575, 576 },	-- Shadowmoon Burial Grounds
							["repeatable"] = true,
							["groups"] = {
								o(237470, {	-- Dark Parchment
									i(118625),	-- Dark Parchment (QI!)
								}),
								i(119037),	-- Supply of Storied Rarities
							},
						}),
						q(37163, {	-- Shadowy Secrets
							["qg"] = 88002,	-- Highlord Darion Mograine
							["maps"] = { 574, 575, 576 },	-- Shadowmoon Burial Grounds
							["groups"] = {
								o(237470, {	-- Dark Parchment
									i(118625),	-- Dark Parchment (QI!)
								}),
								i(119003),	-- Void Totem (TOY!)
							},
						}),
						q(37147, {	-- Sky Dancers
							["qg"] = 88023,	-- Taoshi
							["maps"] = { 601, 602 },	-- Skyreach
							["repeatable"] = true,
							["groups"] = {
								o(237480, {	-- Bottled Windstorm
									i(118649),	-- Bottled Windstorm (QI!)
								}),
								i(119043, {	-- Trove of Smoldering Treasures
									["sym"] = SYM_WOD_COMMON_DUNGEON_SLOTS(DIFFICULTY.DUNGEON.MULTI.NORMAL_MYTHIC,
										HANDS, WAIST, LEGS, CHEST, FEET, HEAD, WRIST, SHOULDER, BACK, NECK, FINGER),
								}),
							},
						}),
						q(37232, {	-- Soulcarver Voss
							["sourceQuest"] = 37156,	-- The Soulcutter
							["qg"] = 87996,	-- Lillian Voss
							["maps"] = { 593 },	-- Auchindoun
							["repeatable"] = true,
							["groups"] = {
								o(237464, {	-- Soulsever Blade
									i(118619),	-- Soulsever Blade (QI!)
								}),
								i(119037),	-- Supply of Storied Rarities
							},
						}),
						q(37155, {	-- The Brass Compass
							["qg"] = 87995,	-- Fleet Master Seahorn
							["maps"] = { 595 },	-- Iron Docks
							["groups"] = {
								i(118925),	-- Plundered Booty
								o(237463, {	-- Strange Brass Compass
									i(118618),	-- Strange Brass Compass (QI!)
								}),
							},
						}),
						q(37154, {	-- The Cure For Death
							["qg"] = 87997,	-- Leonid Barthalomew the Revered
							["maps"] = { 593 },	-- Auchindoun
							["groups"] = {
								i(118931),	-- Leonid's Bag of Supplies
								o(237465, {	-- Soulweave Vessel
									i(118620),	-- Soulweave Vessel (QI!)
								}),
							},
						}),
						q(37234, {	-- The Dark Within
							["sourceQuest"] = 37158,	-- Gloriously Incandescent
							["qg"] = 87998,	-- Sunwalker Dezco
							["maps"] = { 601, 602 },	-- Skyreach
							["repeatable"] = true,
							["groups"] = {
								o(237466, {	-- Sun Crystal
									i(118621),	-- Sun Crystal (QI!)
								}),
								i(119037),	-- Supply of Storied Rarities
							},
						}),
						q(37119, {	-- The Headhunter's Harvest
							["qg"] = 84947,	-- Lysa Serion
							["coords"] = {
								{ 33.9, 50.0, LUNARFALL },
								{ 52.2, 44.5, LUNARFALL },
							},
							["races"] = ALLIANCE_ONLY,
						}),
						q(37046, {	-- The Headhunter's Harvest
							["qg"] = 87305,	-- Akanja
							["coord"] = { 51.2, 61.0, FROSTWALL },
							["races"] = HORDE_ONLY,
						}),
						q(37164, {	-- The Huntresses
							["qg"] = 88003,	-- Cowled Ranger
							["maps"] = { 574, 575, 576 },	-- Shadowmoon Burial Grounds
							["groups"] = {
								i(118923),	-- Sentinel's Companion (PET!)
								o(237471, {	-- Silver-Lined Arrow
									i(118626),	-- Silver-Lined Arrow (QI!)
								}),
							},
						}),
						q(37240, {	-- The Leaf-Reader
							["sourceQuest"] = 37165,	-- Cenarion Concerns
							["qg"] = 88004,	-- Zen'kiki
							["maps"] = { 620, 621 },	-- The Everbloom
							["repeatable"] = true,
							["groups"] = {
								o(237472, {	-- Strangely-Glowing Frond
									i(118627),	-- Strangely-Glowing Frond (QI!)
								}),
								i(119037),	-- Supply of Storied Rarities
							},
						}),
						q(37231, {	-- The Search Continues
							["sourceQuest"] = 37155,	-- The Brass Compass
							["qg"] = 87995,	-- Fleet Master Seahorn
							["maps"] = { 595 },	-- Iron Docks
							["repeatable"] = true,
							["groups"] = {
								o(237463, {	-- Strange Brass Compass
									i(118618),	-- Strange Brass Compass (QI!)
								}),
								i(119037),	-- Supply of Storied Rarities
							},
						}),
						q(37156, {	-- The Soulcutter
							["qg"] = 87996,	-- Lillian Voss
							["maps"] = { 593 },	-- Auchindoun
							["groups"] = {
								i(119039),	-- Lilian's Warning Sign (TOY!)
								o(237464, {	-- Soulsever Blade
									i(118619),	-- Soulsever Blade (QI!)
								}),
							},
						}),
						q(37149, {	-- The Void-Gate
							["qg"] = 88027,	-- Impsy
							["maps"] = { 574, 575, 576 },	-- Shadowmoon Burial Grounds
							["groups"] = {
								i(118936),	-- Manual of Void-Calling
								o(237482, {	-- Void-Gate Key
									i(118651),	-- Void-Gate Key
								}),
							},
						}),
						q(37153, {	-- Time-Lost Vikings
							["qg"] = 87992,	-- Olaf
							["maps"] = { 573 },	-- Bloodmaul Slag Mines
							["groups"] = {
								o(237461, {	-- Olaf's Shield
									i(118616),	-- Olaf's Shield (QI!)
								}),
								i(118929),	-- Sack of Mined Ore
							},
						}),
						q(37166, {	-- Titanic Evolution
							["qg"] = 88005,	-- Lorewalker Cho
							["maps"] = { 620, 621 },	-- The Everbloom
							["groups"] = {
								i(118930),	-- Bag of Everbloom Herbs
								o(237473, {	-- Overgrown Artifact
									i(118628),	-- Overgrown Artifact (QI!)
								}),
							},
						}),
						q(37233, {	-- Vessel of Virtue
							["sourceQuest"] = 37154,	-- The Cure For Death
							["qg"] = 87997,	-- Leonid Barthalomew the Revered
							["maps"] = { 593 },	-- Auchindoun
							["repeatable"] = true,
							["groups"] = {
								o(237465, {	-- Soulweave Vessel
									i(118620),	-- Soulweave Vessel (QI!)
								}),
								i(119037),	-- Supply of Storied Rarities
							},
						}),
						q(37245, {	-- Whispers in the Darkness
							["sourceQuest"] = 37149,	-- The Void-Gate
							["qg"] = 88027,	-- Impsy
							["maps"] = { 574, 575, 576 },	-- Shadowmoon Burial Grounds
							["repeatable"] = true,
							["groups"] = {
								i(119036),	-- Box of Storied Treasures
								o(237482, {	-- Void-Gate Key
									i(118651),	-- Void-Gate Key
								}),
							},
						}),
					}),
					n(VENDORS, {
						n(77368, {	-- Madison Clark <Cook>
							["races"] = ALLIANCE_ONLY,
							["groups"] = {
								i(119207, {	-- Meat Cleaver
									["cost"] = 50000000,	-- 5,000g
								}),
							},
						}),
						n(87302, {	-- Murg <Cook>
							["races"] = HORDE_ONLY,
							["groups"] = {
								i(119207, {	-- Meat Cleaver
									["cost"] = 50000000,	-- 5,000g
								}),
							},
						}),
						n(88220, {	-- Peter <Waiter>
							["races"] = ALLIANCE_ONLY,
							["groups"] = { i(239162) },	-- Wooden Mug (DECOR!)
						}),
						n(87312, {	-- Vora Strongarm <Bartender>
							["races"] = HORDE_ONLY,
							["crs"] = { 87300 },	-- Vora Strongarm <Bartender> (lvl 3 Inn)
							["groups"] = { i(239162) },	-- Wooden Mug (DECOR!)
						}),
					}),
				}),
			}),
		})),
	})
);
