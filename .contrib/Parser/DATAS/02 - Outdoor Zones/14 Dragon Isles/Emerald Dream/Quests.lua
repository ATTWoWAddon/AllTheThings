---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(DRAGON_ISLES, bubbleDown({ ["timeline"] = { ADDED_10_2_0 } }, {
	m(EMERALD_DREAM, {
		n(QUESTS, {
			header(HEADERS.Achievement, 19026, {	-- Defenders of the Dream
				------ Chapter 1 ------
				q(76317, {	-- Call of the Dream
					["g"] = {
						i(208181),	-- Shandris's Scouting Report (QI!)
					},
				}),
				q(76318, {	-- Emerald Welcome
					["sourceQuests"] = { 76317 },	-- Call of the Dream
					["provider"] = { "n", 187590 },	-- Merithra
					["coord"] = { 18.7, 51.8, OHNAHRAN_PLAINS },
					["g"] = {
						i(210412),	-- Flourishing Whimsydrake (MOUNT!)
					},
				}),
				q(76319, {	-- Feast or Flaming
					["sourceQuests"] = { 76318 },	-- Emerald Welcome
					["provider"] = { "n", 206425 },	-- Merithra
					["coord"] = { 69.4, 54.0, EMERALD_DREAM },
				}),
				q(76320, {	-- Wild Gods in Our Midst
					["sourceQuests"] = { 76319 },	-- Feast or Flaming
					["provider"] = { "n", 206510 },	-- Cenarius
					["coord"] = { 64.3, 58.2, EMERALD_DREAM },
				}),
				q(76321, {	-- Burning Assault
					["sourceQuests"] = { 76320 },	-- Wild Gods in Our Midst
					["provider"] = { "n", 206583 },	-- Cenarius
					["coord"] = { 63.4, 71.6, EMERALD_DREAM },
				}),
				q(76322, {	-- The Face of Our Enemies
					["sourceQuests"] = { 76320 },	-- Wild Gods in Our Midst
					["provider"] = { "n", 206583 },	-- Cenarius
					["coord"] = { 63.4, 71.6, EMERALD_DREAM },
				}),
				q(77818, {	-- The Cruel
					["sourceQuests"] = {
						76321,	-- Burning Assault
						76322,	-- The Face of Our Enemies
					},
					["provider"] = { "n", 206688 },	-- Merithra
					["coord"] = { 62.8, 68.6, EMERALD_DREAM },
				}),
				q(76323, {	-- Amirdrassil
					["sourceQuests"] = { 77818 },	-- The Cruel
					["provider"] = { "n", 206806 },	-- Merithra
					["coord"] = { 61.5, 60.4, EMERALD_DREAM },
				}),
				q(76324, {	-- Lost to the Flame
					["sourceQuests"] = { 76323 },	-- Amirdrassil
					["provider"] = { "n", 206809 },	-- Merithra
					["coord"] = { 53.8, 63.9, EMERALD_DREAM },
					["g"] = {
						i(209923),	-- Chartreuse Champion's Blade
						i(209919),	-- Chartreuse Champion's Bulwark
						i(209937),	-- Chartreuse Champion's Gavel
						i(209938),	-- Chartreuse Champion's Greatsword
						i(209924),	-- Chartreuse Champion's Warspear
						i(209925),	-- Fearless Faerie's Dirk
						i(209922),	-- Fearless Faerie's Glaive
						i(209942),	-- Fearless Faerie's Kris
						i(209932),	-- Fearless Faerie's Mace
						i(209921),	-- Spirited Stag's Branch
						i(209934),	-- Spirited Stag's Chopper
						i(209943),	-- Spirited Stag's Claymore
						i(209941),	-- Spirited Stag's Curve
						i(209935),	-- Spirited Stag's Handaxe
						i(209933),	-- Spirited Stag's Longbow
						i(209940),	-- Spirited Stag's Spire
						i(209931),	-- Summer Soother's Cane
						i(209920),	-- Summer Soother's Implement
						i(209936),	-- Summer Soother's Mallet
						i(209939),	-- Summer Soother's Wand
					},
				}),
				q(76325, {	-- Between Fyrakk and a Hard Place
					["sourceQuests"] = { 76324 },	-- Lost to the Flame
					["provider"] = { "n", 206979 },	-- Merithra
					["coord"] = { 51.0, 70.0, EMERALD_DREAM },
				}),
				q(76326, {	-- Home in the Dream
					["sourceQuests"] = { 76325 },	-- Between Fyrakk and a Hard Place
					["provider"] = { "n", 206979 },	-- Merithra
					["coord"] = { 51.0, 70.0, EMERALD_DREAM },
				}),
				q(77283, {	-- A Multi-Front Battle
					["sourceQuests"] = { 76326 },	-- Home in the Dream
					["provider"] = { "n", 206896 },	-- Merithra
					["coord"] = { 50.7, 62.9, EMERALD_DREAM },
				}),
				------ Chapter 2 ------
				q(77436, {	-- The Burning Barrow
					["sourceQuests"] = { 77283 },	-- A Multi-Front Battle
					["provider"] = { "n", 206896 },	-- Merithra
					["coord"] = { 50.7, 62.9, EMERALD_DREAM },
				}),
				q(76433, {	-- Ashen Soil
					["sourceQuests"] = { 77436 },	-- The Burning Barrow
					["provider"] = { "n", 206247 },	-- Tyrande Whisperwind
					["coord"] = { 51.3, 42.9, EMERALD_DREAM },
				}),
				q(76434, {	-- Not Yet Lost
					["sourceQuests"] = { 77436 },	-- The Burning Barrow
					["provider"] = { "n", 206247 },	-- Tyrande Whisperwind
					["coord"] = { 51.3, 42.9, EMERALD_DREAM },
					["g"] = {
						i(210236),	-- Chartreuse Champion's Cloak
						i(209917),	-- Fearless Faerie's Shroud
						i(210235),	-- Spirited Stag's Cape
						i(209918),	-- Summer Soother's Wrap
					},
				}),
				q(76435, {	-- The Smoldering Copse
					["sourceQuests"] = {
						76433,	-- Ashen Soil
						76434,	-- Not Yet Lost
					},
					["provider"] = { "n", 206247 },	-- Tyrande Whisperwind
					["coord"] = { 51.4, 42.7, EMERALD_DREAM },
				}),
				q(76437, {	-- Burning Ground
					["sourceQuests"] = { 76435 },	-- The Smoldering Copse
					["provider"] = { "n", 207160 },	-- Tyrande Whisperwind
					["coord"] = { 40.7, 47.5, EMERALD_DREAM },
					["g"] = {
						i(209908),	-- Chartreuse Champion's Bracers
						i(209903),	-- Chartreuse Champion's Girdle
						i(209906),	-- Fearless Faerie's Belt
						i(209910),	-- Fearless Faerie's Wristbands
						i(209909),	-- Spirited Stag's Cuffs
						i(209905),	-- Spirited Stag's Waistguard
						i(209907),	-- Summer Soother's Bands
						i(209904),	-- Summer Soother's Sash
					},
				}),
				q(76441, {	-- Grim Reprisal
					["sourceQuests"] = { 76435 },	-- The Smoldering Copse
					["provider"] = { "n", 207160 },	-- Tyrande Whisperwind
					["coord"] = { 40.7, 47.5, EMERALD_DREAM },
				}),
				q(76442, {	-- Forlorn Hope
					["sourceQuests"] = {
						76437,	-- Burning Ground
						76441,	-- Grim Reprisal
					},
					["provider"] = { "n", 207160 },	-- Tyrande Whisperwind
					["coord"] = { 536, 50.9, EMERALD_DREAM },
					["g"] = {
						i(209900),	-- Chartreuse Champion's Shoulderplates
						i(209899),	-- Fearless Faerie's Shoulderpads
						i(209902),	-- Spirited Stag's Epaulets
						i(209901),	-- Summer Soother's Shoulders
					},
				}),
				q(76443, {	-- The Looming Cinder
					["sourceQuests"] = { 76442 },	-- Forlorn Hop
					["provider"] = { "n", 211193 },	-- Tyrande Whisperwind
					["coord"] = { 36.1, 50.8, EMERALD_DREAM },
					["g"] = {
						i(210730),	-- Mark of the Dream Wardens
					},
				}),
				------ Chapter 3 ------
				q(76403, {	-- Mayhem Incarnate
					["sourceQuests"] = { 76443 },	-- The Looming Cinder
					["provider"] = { "n", 208506 },	-- Vyranoth
					["coord"] = { 50.8, 62.7, EMERALD_DREAM },
				}),
				q(76343, {	-- Best Laid Plans
					["sourceQuests"] = { 76403 },	-- Mayhem Incarnate
					["provider"] = { "n", 206612 },	-- Vyranoth
					["coord"] = { 36.8, 25.8, EMERALD_DREAM },
				}),
				q(76342, {	-- Light 'Em Up!
					["sourceQuests"] = { 76403 },	-- Mayhem Incarnate
					["provider"] = { "n", 206619 },	-- Buri <Claw of Vyranoth>
					["coord"] = { 36.8, 26.0, EMERALD_DREAM },
					["g"] = {
						i(209889),	-- Chartreuse Champion's Gauntlets
						i(209883),	-- Chartreuse Champion's Sabatons
						i(209929),	-- Fearless Faerie's Boots
						i(209888),	-- Fearless Faerie's Gloves
						i(209891),	-- Spirited Stag's Handguards
						i(209928),	-- Spirited Stag's Treads
						i(209890),	-- Summer Soother's Mitts
						i(209927),	-- Summer Soother's Slippers
					},
				}),
				q(76344, {	-- Primalist Directive
					["sourceQuests"] = {
						76343,	-- Best Laid Plans
						76342,	-- Light 'Em Up!
					},
					["provider"] = { "n", 206619 },	-- Buri <Claw of Vyranoth>
					["coord"] = { 36.8, 26.0, EMERALD_DREAM },
				}),
				q(76345, {	-- Finding Terro / Alex: this quest pop only when 76344 is in quest log, but not completed
					["sourceQuests"] = { 76344 },	-- Primalist Directive
					["provider"] = { "n", 206612 },	-- Vyranoth
					["coord"] = { 36.8, 25.8, EMERALD_DREAM },
					["g"] = {
						i(209915),	-- Perennial Pompon Pendant
						i(209916),	-- Sunrise Circlet
					},
				}),
				q(76532, {	-- Assault on the Wellspring
					["sourceQuests"] = {
						76344,	-- Primalist Directive
						76345,	-- Finding Terro
					},
					["provider"] = { "n", 210178 },	-- Buri <Claw of Vyranoth>
					["coord"] = { 39.5, 22.8, EMERALD_DREAM },
				}),
				q(76348, {	-- Big Bright Beautiful Barrier
					["sourceQuests"] = { 76532 },	-- Assault on the Wellspring
					["provider"] = { "n", 208378 },	-- Suzska
					["coord"] = { 27.6, 32.1, EMERALD_DREAM },
					["g"] = {
						i(209895),	-- Chartreuse Champion's Legplates
						i(209898),	-- Fearless Faerie's Trousers
						i(209897),	-- Spirited Stag's Legguards
						i(209896),	-- Summer Soother's Leggings
					},
				}),
				q(76347, {	-- Power, Eruption, and Lies
					["sourceQuests"] = { 76348 },	-- Big Bright Beautiful Barrier
					["provider"] = { "n", 208378 },	-- Suzska
					["coord"] = { 33.5, 30.3, EMERALD_DREAM },
					["g"] = {
						i(209885),	-- Chartreuse Champion's Chestplate
						i(209926),	-- Chartreuse Champion's Warhelm
						i(209894),	-- Fearless Faerie's Guise
						i(209887),	-- Fearless Faerie's Vest
						i(209886),	-- Spirited Stag's Chestguard
						i(209893),	-- Spirited Stag's Helm
						i(209884),	-- Summer Soother's Gown
						i(209892),	-- Summer Soother's Hood
					},
				}),
				q(77178, {	-- Tactical Withdrawal
					["sourceQuests"] = { 76347 },	-- Power, Eruption, and Lies
					["provider"] = { "n", 210733 },	-- Vyranoth
					["coord"] = { 33.7, 25.2, EMERALD_DREAM },
					["g"] = {
						i(210757),	-- Scales of Remorse
					},
				}),
				------ Chapter 4 ------
				q(76327, {	-- Eye of Ysera
					["sourceQuests"] = { 77178 },	-- Tactical Withdrawal
					["provider"] = { "n", 206408 },	-- Ysera
					["coord"] = { 50.8, 62.9, EMERALD_DREAM },
				}),
				q(76328, {	-- A New Brute
					["sourceQuests"] = { 76327 },	-- Eye of Ysera
					["provider"] = { "n", 206416 },	-- Merithra
					["coord"] = { 52.1, 29.1, EMERALD_DREAM },
					["g"] = {
						i(208124),	-- The Dreamer's Essence (QI!)
						i(209914),	-- Bramble Bark Band
						i(209912),	-- Luscious Leaf Loop
						i(209913),	-- Summer Sky Signet
					},
				}),
				q(78646, {	-- Fire Watch
					["sourceQuests"] = { 76328 },	-- A New Brute
					["provider"] = { "n", 206406 },	-- Merithra
					["coord"] = { 52.7, 28.1, EMERALD_DREAM },
				}),
				q(76330, {	-- Disarm Specialist
					["sourceQuests"] = { 78646 },	-- Fire Watch
					["provider"] = { "n", 206406 },	-- Merithra
					["coord"] = { 52.1, 24.2, EMERALD_DREAM },
					["g"] = {
						i(208184),	-- Dreamy Dust (QI!)
					},
				}),
				q(76329, {	-- In and Out Scout
					["sourceQuests"] = { 78646 },	-- Fire Watch
					["provider"] = { "n", 206406 },	-- Merithra
					["coord"] = { 52.1, 24.2, EMERALD_DREAM },
					["g"] = {
						i(210016),	-- Somnowl's Shroud (QI!)
						-- modID 27 bonusID 9546
						i(210236),	-- Chartreuse Champion's Cloak
						i(209917),	-- Fearless Faerie's Shroud
						i(210235),	-- Spirited Stag's Cape
						i(209918),	-- Summer Soother's Wrap
					},
				}),
				q(76334, {	-- Good Counsel
					["sourceQuests"] = {
						76330,	-- Disarm Specialist
						76329,	-- In and Out Scout
					},
					["provider"] = { "n", 206406 },	-- Merithra
					["coord"] = { 53.0, 28.1, EMERALD_DREAM },
				}),
				q(76332, {	-- Putting Roots Down
					["sourceQuests"] = { 76334 },	-- Good Counsel
					["provider"] = { "n", 206406 },	-- Merithra
					["coord"] = { 53.0, 28.1, EMERALD_DREAM },
					["g"] = {
						-- modID 27 bonusID 9546
						i(209908),	-- Chartreuse Champion's Bracers
						i(209910),	-- Fearless Faerie's Wristbands
						i(209909),	-- Spirited Stag's Cuffs
						i(209907),	-- Summer Soother's Bands
					},
				}),
				q(76331, {	-- Merithra's Gambit
					["sourceQuests"] = { 76332 },	-- Putting Roots Down
					["provider"] = { "n", 206406 },	-- Merithra
					["coord"] = { 53.0, 28.1, EMERALD_DREAM },
				}),
				q(76335, {	-- Might of the Forest
					["sourceQuests"] = { 76331 },	-- Merithra's Gambit
					["provider"] = { "n", 206406 },	-- Merithra
					["coord"] = { 52.9, 28.0, EMERALD_DREAM },
				}),
				q(76333, {	-- Triple Threat
					["sourceQuests"] = { 76331 },	-- Merithra's Gambit
					["provider"] = { "n", 206406 },	-- Merithra
					["coord"] = { 52.9, 28.0, EMERALD_DREAM },
					["g"] = {
						-- modID 27 bonusID 9546
						i(209926),	-- Chartreuse Champion's Warhelm
						i(209894),	-- Fearless Faerie's Guise
						i(209893),	-- Spirited Stag's Helm
						i(209892),	-- Summer Soother's Hood
					},
				}),
				q(76336, {	-- Flight and Fight
					["sourceQuests"] = {
						76335,	-- Might of the Forest
						76333,	-- Triple Threat (TODO: up without this quest, actually, dunno)
					},
					["provider"] = { "n", 206416 },	-- Merithra
					["coord"] = { 57.2, 26.1, EMERALD_DREAM },
					["g"] = {
						-- modID 27 bonusID 9546
						i(209889),	-- Chartreuse Champion's Gauntlets
						i(209888),	-- Fearless Faerie's Gloves
						i(209891),	-- Spirited Stag's Handguards
						i(209890),	-- Summer Soother's Mitts
					},
				}),
				q(76337, {	-- The Ember Still Smolders
					["sourceQuests"] = { 76336 },	-- Flight and Fight
					["provider"] = { "n", 206406 },	-- Merithra
					["coord"] = { 51.9, 29.4, EMERALD_DREAM },
					["g"] = {
						i(210847),	-- Tears of the Eye
					},
				}),
				------ Chapter 5 ------
				q(76384, {	-- The Bloom Begins
					["sourceQuests"] = { 76337 },	-- The Ember Still Smolders
					["provider"] = { "n", 206896 },	-- Merithra
					["coord"] = { 50.7, 62.8, EMERALD_DREAM },
				}),
				q(76416, {	-- Forward Unto Fire
					["sourceQuests"] = { 76384 },	-- The Bloom Begins
					["provider"] = { "n", 208503 },	-- Alexstrasza the Life-Binder
					["coord"] = { 50.7, 62.8, EMERALD_DREAM },
				}),
				q(76386, {	-- A Clash of Ice and Fire
					["sourceQuests"] = { 76416 },	-- Forward Unto Fire
					["provider"] = { "n", 208553 },	-- Vyranoth
					["coord"] = { 38.8, 39.1, EMERALD_DREAM },
					["g"] = {
						i(208544),	-- Frozenheart's Wrath (QI!)
						--modID 27 bonusID 9546
						i(209903),	-- Chartreuse Champion's Girdle
						i(209883),	-- Chartreuse Champion's Sabatons
						i(209906),	-- Fearless Faerie's Belt
						i(209929),	-- Fearless Faerie's Boots
						i(209928),	-- Spirited Stag's Treads
						i(209905),	-- Spirited Stag's Waistguard
						i(209904),	-- Summer Soother's Sash
						i(209927),	-- Summer Soother's Slippers
					},
				}),
				q(76385, {	-- Hazardous Horticulture
					["sourceQuests"] = { 76416 },	-- Forward Unto Fire
					["provider"] = { "n", 208551 },	-- Merithra
					["coord"] = { 38.9, 39.0, EMERALD_DREAM },
				}),
				q(76436, {	-- A Scrap of Hope
					["sourceQuests"] = {
						76386,	-- A Clash of Ice and Fire
						76385,	-- Hazardous Horticulture
					},
					["provider"] = { "n", 208550 },	-- Alexstrasza the Life-Binder
					["coord"] = { 38.7, 39.1, EMERALD_DREAM },
					["g"] = {
						i(210023),	-- Scrap of Parchment (QI!)
					},
				}),
				q(76387, {	-- Defense of the Ancients
					["sourceQuests"] = {
						76386,	-- A Clash of Ice and Fire
						76385,	-- Hazardous Horticulture
					},
					["provider"] = { "n", 208552 },	-- Tyrande Whisperwind
					["coord"] = { 38.6, 39.1, EMERALD_DREAM },
					["g"] = {
						--modID 27 bonusID 9546
						i(209885),	-- Chartreuse Champion's Chestplate
						i(209887),	-- Fearless Faerie's Vest
						i(209886),	-- Spirited Stag's Chestguard
						i(209884),	-- Summer Soother's Gown
					},
				}),
				q(76388, {	-- Fighting Fire With Fire
					["sourceQuests"] = {
						76436,	-- A Scrap of Hope
						76387,	-- Defense of the Ancients
					},
					["provider"] = { "n", 208550 },	-- Alexstrasza the Life-Binder
					["coord"] = { 38.6, 39.0, EMERALD_DREAM },
					["g"] = {
						--modID 27 bonusID 9546
						i(209895),	-- Chartreuse Champion's Legplates
						i(209898),	-- Fearless Faerie's Trousers
						i(209897),	-- Spirited Stag's Legguards
						i(209896),	-- Summer Soother's Leggings
					},
				}),
				q(76398, {	-- Aerial Supremacy
					["sourceQuests"] = { 76388 },	-- Fighting Fire With Fire
					["provider"] = { "n", 208567 },	-- Merithra
					["coord"] = { 34.9, 35.4, EMERALD_DREAM },
				}),
				q(76389, {	-- The Age of Mortals
					["sourceQuests"] = { 76388 },	-- Fighting Fire With Fire
					["provider"] = { "n", 208568 },	-- Tyrande Whisperwind
					["coord"] = { 34.9, 35.3, EMERALD_DREAM },
					["g"] = {
						i(208752),	-- Horn of Cenarius (QI!)
						--modID 27 bonusID 9546
						i(209900),	-- Chartreuse Champion's Shoulderplates
						i(209899),	-- Fearless Faerie's Shoulderpads
						i(209902),	-- Spirited Stag's Epaulets
						i(209901),	-- Summer Soother's Shoulders
					},
				}),
				q(76401, {	-- Echo of the Firelands
					["sourceQuests"] = {
						76398,	-- Aerial Supremacy
						76389,	-- The Age of Mortals
					},
					["provider"] = { "n", 208572 },	-- Alexstrasza the Life-Binder
					["coord"] = { 35.0, 33.5, EMERALD_DREAM },
					["g"] = {
						--modID 27 bonusID 9546
						i(209923),	-- Chartreuse Champion's Blade
						i(209919),	-- Chartreuse Champion's Bulwark
						i(209937),	-- Chartreuse Champion's Gavel
						i(209938),	-- Chartreuse Champion's Greatsword
						i(209924),	-- Chartreuse Champion's Warspear
						i(209925),	-- Fearless Faerie's Dirk
						i(209922),	-- Fearless Faerie's Glaive
						i(209942),	-- Fearless Faerie's Kris
						i(209932),	-- Fearless Faerie's Mace
						i(209921),	-- Spirited Stag's Branch
						i(209934),	-- Spirited Stag's Chopper
						i(209943),	-- Spirited Stag's Claymore
						i(209941),	-- Spirited Stag's Curve
						i(209935),	-- Spirited Stag's Handaxe
						i(209933),	-- Spirited Stag's Longbow
						i(209940),	-- Spirited Stag's Spire
						i(209931),	-- Summer Soother's Cane
						i(209920),	-- Summer Soother's Implement
						i(209936),	-- Summer Soother's Mallet
						i(209939),	-- Summer Soother's Wand
					},
				}),
				------ Chapter 6 ------
				q(76402, {	-- Amirdrassil, the Dream's Hope: Fyrakk
					["sourceQuests"] = { 76401 },	-- Echo of the Firelands
					["provider"] = { "n", 206921 },	-- Alexstrasza the Life-Binder
					["coord"] = { 34.9, 35.4, EMERALD_DREAM },
					["g"] = {
						i(210916),	-- Ember of Fyrakk [2.5k Dream Warden rep]
						i(206960),	-- Enchanted Wyrm's Dreaming Crest
					},
				}),
				q(77780, {	-- A Blossom Witnessed
					["sourceQuests"] = { 76401 },	-- Echo of the Firelands
					-- also requires kill of Fyrakk
					["provider"] = { "n", 211634 },	-- Tyrande Whisperwind
					["coord"] = { 27.5, 31.4, EMERALD_DREAM },
				}),
				q(76276, {	-- A Changed Land
					["sourceQuests"] = { 77780 },	-- A Blossom Witnessed
					["provider"] = { "n", 206397 },	-- Merithra of the Dream
					["coord"] = { 14.8, 55.8, OHNAHRAN_PLAINS },
					["g"] = {
						o(409338, {	-- Washed-Up Pack
							["coord"] = { 21.7, 61.8, OHNAHRAN_PLAINS },
							["groups"] = {
								i(209806),	-- Cataloger's Film (QI!)
							},
						}),
						--modID 27 bonusID 9546
						i(209915),	-- Perennial Pompon Pendant
						i(209916),	-- Sunrise Circlet
					},
				}),
				q(77329, {	-- Auspicious Gathering
					["sourceQuests"] = { 76276 },	-- A Changed Land
					["provider"] = { "n", 206397 },	-- Merithra of the Dream
					["coord"] = { 14.8, 55.8, OHNAHRAN_PLAINS },
				}),
				q(77201, {	-- A Personal Offering
					["sourceQuests"] = { 77329 },	-- Auspicious Gathering (TODO: may be required finishing 76213 in addition?)
					["provider"] = { "n", 208537 },	-- Tyrande Whisperwind
					["races"] = { NIGHTELF },
					["coord"] = { 50.8, 61.4, AMIRDRASSIL },
					["g"] = {
						iensemble(209604),	-- Ensemble: Raiment of Amirdrassi
					},
				}),
				q(77200, {	-- Offerings for the Well
					["sourceQuests"] = { 77329 },	-- Auspicious Gathering
					["provider"] = { "n", 208537 },	-- Tyrande Whisperwind
					["coord"] = { 50.8, 61.4, AMIRDRASSIL },
					["g"] = {
						i(208230),	-- Anaya's Pendant (QI!)
						i(208232),	-- Singed Darnassian Tabard (QI!)
						i(208221),	-- Soil of the Dreamgrove (QI!)
						i(208231),	-- Talisman of Hope (QI!)
					},
				}),
				q(76280, {	-- New Moon
					["sourceQuests"] = { 77200 },	-- Offerings for the Well
					["provider"] = { "n", 208537 },	-- Tyrande Whisperwind
					["coord"] = { 50.8, 61.4, AMIRDRASSIL },
				}),
				q(76281, {	-- Something Worth Celebrating
					["sourceQuests"] = { 76280 },	-- New Moon
					["provider"] = { "n", 208537 },	-- Tyrande Whisperwind
					["coord"] = { 50.8, 61.5, AMIRDRASSIL },
				}),
				q(76282, {	-- A Disquieting Feeling
					["sourceQuests"] = { 76280 },	-- New Moon (TODO: 76281 is required for phase?)
					["provider"] = { "n", 209042 },	-- Kalecgos
					["coord"] = { 54.2, 57.9, AMIRDRASSIL },
					["g"] = {
						i(209316),	-- Goat's Milk in a Skull Mug (QI!)
						i(209318),	-- Dalaran Dazzler (QI!)
						i(209317),	-- Karazhan Twist (QI!)
						i(209319),	-- Hornswog's Breath (QI!)
						i(209322),	-- Niffen Strong-Sniffer Stout (QI!)
						i(209324),	-- Azure Leywine (QI!)
						i(209323),	-- Emerald Dreamtime (QI!)
						i(209326),	-- Maruukai Pale Ale (QI!)
						--modID 27 bonusID 9546
						i(209914),	-- Bramble Bark Band
						i(209912),	-- Luscious Leaf Loop
						i(209913),	-- Summer Sky Signet
					},
				}),
				q(77781, {	-- A Different Enthusiasm
					["sourceQuests"] = { 76280 },	-- New Moon (TODO: 76281 is required for phase?)
					["provider"] = { "n", 206849 },	-- Merithra of the Dream
					["coord"] = { 54.2, 57.9, AMIRDRASSIL },
				}),
				q(76283, {	-- Andu-falah-dor
					["sourceQuests"] = { 76281 },	-- New Moon (TOD): 76282 & 77781 also required?)
					["provider"] = { "n", 206849 },	-- Merithra of the Dream
					["coord"] = { 54.2, 57.9, AMIRDRASSIL },
					["g"] = {
						i(210920),	-- Gift of Amirdrassil [2.5k Dream Warden rep]
					},
				}),
			}),
			-- non-story quests below for now
			q(76460, {	-- A Dragon in Hand is Worth Two in the Roost
				--[[["sourceQuests"] = {
					76337,	-- The Ember Still Smolders (TODO: need to confirm)
					77887,	-- 'World Quest Unlock' (spellID 421687)
				},
				["sourceQuestNumRequired"] = 1,]]--
				["provider"] = { "n", 207350 },	-- Wrathion
				["coord"] = { 50.8, 62.8, EMERALD_DREAM },
			}),
			q(76461, {	-- Draconic Diplomacy
				["sourceQuests"] = { 76460 },	-- A Dragon in Hand is Worth Two in the Roost
				["provider"] = { "n", 207350 },	-- Wrathion
				["coord"] = { 50.8, 62.8, EMERALD_DREAM },
			}),
			q(77195, {	-- A Dragon's Eye View
				["sourceQuests"] = { 76461 },	-- Draconic Diplomacy
				["provider"] = { "n", 207350 },	-- Wrathion
				["coord"] = { 33.7, 62.0, THALDRASZUS },
			}),
			q(76462, {	-- Cavern Cleaning
				["sourceQuests"] = { 77195 },	-- A Dragon's Eye View
				["provider"] = { "n", 207351 },	-- Vyranoth
				["coord"] = { 61.2, 73.2, THALDRASZUS },
			}),
			q(77197, {	-- An Eggcellent Idea
				["sourceQuests"] = { 76462 },	-- Cavern Cleaning
				["provider"] = { "n", 207350 },	-- Wrathion
				["coord"] = { 61.2, 73.1, THALDRASZUS },
			}),
			q(76463, {	-- Delectable Delicacies
				["sourceQuests"] = { 77197 },	-- An Eggcellent Idea
				["provider"] = { "n", 185904 },	-- Mother Elion
				["coord"] = { 61.5, 68.7, THE_WAKING_SHORES },
				["g"] = {
					i(208060),	-- Juicy Beetle Bits (QI!)
				},
			}),
			q(77198, {	-- Home in Time for Tea
				["sourceQuests"] = { 76463 },	-- Delectable Delicacies
				["provider"] = { "n", 207352 },	-- Mordenaku
				["coord"] = { 61.5, 68.7, THE_WAKING_SHORES },
				["g"] = {
					i(211353),	-- Roasted Ram Special
				},
			}),
			q(76464, {	-- The Thorignir
				["sourceQuests"] = { 77198 },	-- Home in Time for Tea
				["provider"] = { "n", 207351 },	-- Vyranoth
				["coord"] = { 46.7, 47.8, VALDRAKKEN },
			}),
			q(76465, {	-- Dragon Keeping
				["sourceQuests"] = { 76464 },	-- The Thorignir
				["provider"] = { "n", 207351 },	-- Vyranoth
				["coord"] = { 51.1, 83.8, STORMHEIM },
				["maps"] = { 2230, 2231 },	-- Halls Of Valor scenario maps
				["g"] = {
					i(206156),	-- Grotto Netherwing Drake (MOUNT!)
					i(210959),	-- Pact of the Netherwing
				},
			}),
			--
			q(77948, {	-- Burning Out
				--[[["sourceQuests"] = {
					xx,	-- TODO: no requirement
					77887,	-- 'World Quest Unlock' (spellID 421687)
				},
				["sourceQuestNumRequired"] = 1,]]--
				["provider"] = { "n", 210196 },	-- Solarys Thorngale
				["coord"] = { 52.0, 63.6, EMERALD_DREAM },
				["g"] = {
					i(210633),	-- Kal'andu (PET!)
				},
			}),
			q(77978, {	-- A Passed Torch
				["sourceQuests"] = { 77948 },	-- Burning Out (if you complete Burning Out before you grab this quest, it becomes unobtainable as of 8.September.2023)
				["provider"] = { "o", 409077 },	-- Singed Leaflet
				["coord"] = { 38.0, 47.2, EMERALD_DREAM },
				["g"] = {
					i(210921),	-- Bounty of the Fallen Defector
					i(209048),	-- Singed Leaflet (QI!)
				},
			}),
			--[[ Rewards moved into two previouse quests and this one removed?
			q(78096, {	-- A Silver Lining
				["sourceQuests"] = { 77948 },	-- Burning Out
				["provider"] = { "n", 210251 },	-- Kery'nael Thorngale
				["coord"] = { 50.8, 63.6, EMERALD_DREAM },
			}),]]--
			--
			q(76566, {	-- The Dryad Garden
				["sourceQuests"] = { 78904 },	-- HQT - `Local Stories Quest Unlock`
				["provider"] = { "n", 209318 },	-- Cenarius
				["coord"] = { 50.8, 62.1, EMERALD_DREAM },
				["isBreadcrumb"] = true,
			}),
			q(78065, {	-- The Q'onzu Query
				["sourceQuests"] = { 78904 },	-- HQT - `Local Stories Quest Unlock`
				["provider"] = { "n", 209318 },	-- Cenarius
				["coord"] = { 50.8, 62.1, EMERALD_DREAM },
			}),
			q(78163, {	-- Q'onzu's Qualification
				["sourceQuests"] = { 78065 },	-- The Q'onzu Query
				["provider"] = { "n", 210646 },	-- Follower of Q'onzu
				["coord"] = { 34.7, 69.0, EMERALD_DREAM },
				["g"] = {
					i(211373, {	-- Bag of Many Wonders
						i(211372),	-- Q'onzu's Consolation Prize
					}),
				},
			}),
			q(78064, {	-- Q'onzu's Perception
				["sourceQuests"] = { 78163 },	-- Q'onzu's Qualification
				["provider"] = { "n", 210524 },	-- Q'onzu
				["coord"] = { 34.7, 69.3, EMERALD_DREAM },
			}),
			q(78162, {	-- Q'onzu's Distraction
				["sourceQuests"] = { 78064 },	-- Q'onzu's Perception
				["provider"] = { "n", 210524 },	-- Q'onzu
				["coord"] = { 34.7, 69.3, EMERALD_DREAM },
				["g"] = {
					i(210227),	-- Q'onzu's Faerie Feather (QI!)
				},
			}),
			q(78066, {	-- The Answers You've Earned
				-- Note: the end of the quest makes it seem like there will be more to this questline later
				["sourceQuests"] = { 78162 },	-- Q'onzu's Distraction
				["provider"] = { "n", 210524 },	-- Q'onzu
				["coord"] = { 34.7, 69.3, EMERALD_DREAM },
				["g"] = {
					i(210645),	-- Feather of Friends (CI!)
					i(211374, {	-- Tangled Yarn of Secrets
						i(211377, {	-- Tangled Yarn of Secrets
							i(211378, {	-- Tangled Yarn of Secrets
								i(211379, {	-- Tangled Yarn of Secrets
									i(211380, {	-- Tangled Yarn of Secrets
										i(210950),	-- Insight of Q'onzu
									}),
								}),
							}),
						}),
					}),
				},
			}),
			--
			q(78262, {	-- It Starts With a Stone
				--[[["sourceQuests"] = {
					xx,	-- TODO: no requirement?
					77887,	-- 'World Quest Unlock' (spellID 421687)
				},
				["sourceQuestNumRequired"] = 1,]]--
				["provider"] = { "n", 211328 },	-- Vaskarn
				["coord"] = { 49.8, 61.6, EMERALD_DREAM },
				["timeline"] = { REMOVED_10_2_6_SEASON_FOUR },
			}),
			q(78271, {	-- Dreaming of Crests
				["sourceQuests"] = { 78262 },	-- It Starts With a Stone
				["provider"] = { "n", 211328 },	-- Vaskarn
				["coord"] = { 49.8, 61.6, EMERALD_DREAM },
				["timeline"] = { REMOVED_10_2_6_SEASON_FOUR },
				["g"] = {
					i(210180),	-- Emerald Flightstone
					i(210917),	-- Pouch of Whelpling's Dreaming Crests
				},
			}),
			--
			q(77662, {	-- A Call to Aid
				["sourceQuests"] = { 78904 },	-- HQT - `Local Stories Quest Unlock`
				["provider"] = { "n", 209516 },	-- Delaryn Summermoon
				["coord"] = { 50.1, 61.0, EMERALD_DREAM },
			}),
			q(77739, {	-- Smother the Flames
				["sourceQuests"] = { 77662 },	-- A Call to Aid
				["provider"] = { "n", 209083 },	-- Shandris Feathermoon
				["coord"] = { 49.6, 46.2, EMERALD_DREAM },
				["g"] = {
					i(209430),	-- Bear Spirit Stone (QI!)
					i(208770),	-- Leaf Spirit Stone (QI!)
					i(209429),	-- Moon Spirit Stone (QI!)
					i(209428),	-- Wolf Spirit Stone (QI!)
				},
			}),
			q(77664, {	-- One Last Step
				["sourceQuests"] = { 77739 },	-- Smother the Flames
				["provider"] = { "n", 209677 },	-- Shandris Feathermoon (player instance NPC)
				["g"] = {
					i(210957),	-- Rune of the Fire Druids
				},
			}),
			q(77665, {	-- Bound to You
				["sourceQuests"] = { 77664 },	-- One Last Step
				["provider"] = { "n", 209082 },	-- Lilian Voss
				["coord"] = { 55.2, 42.4, EMERALD_DREAM },
			}),
			q(77673, {	-- Under the Surface
				["sourceQuests"] = { 77665 },	-- Bound to You
				["provider"] = { "n", 209328 },	-- Lilian Voss
				["coord"] = { 55.3, 42.3, EMERALD_DREAM },
			}),
			q(77674, {	-- Wounds of the Past
				["sourceQuests"] = { 77673 },	-- Under the Surface
				["provider"] = { "n", 209323 },	-- Lilian Voss
				["coord"] = { 50.3, 48.0, EMERALD_DREAM },
			}),
			q(77675, {	-- A Better Future.. Together
				["sourceQuests"] = { 77674 },	-- Wounds of the Past
				["provider"] = { "n", 209328 },	-- Lilian Voss
				["coord"] = { 55.3, 42.3, EMERALD_DREAM },
				["g"] = {
					i(208937),	-- A Muddy Journal
					i(211366),	-- Drops of Moon Water
					i(209054),	-- Ritual Remedy (QI!)
					i(209051),	-- Sleeping Glory (QI!)
					i(209050),	-- Somnium Bark (QI!)

				},
			}),
			--
			q(77316, {	-- Trouble at the Tree
				["sourceQuests"] = { 78904 },	-- HQT - `Local Stories Quest Unlock`
				["provider"] = { "n", 208669 },	-- Lady Moonberry
				["coord"] = { 49.8, 62.5, EMERALD_DREAM },
				["g"] = {
					i(208977),	-- Very Important Tree Supplies (QI!)
				},
			}),
			q(77317, {	-- Hatted Hibernation
				["sourceQuests"] = { 77316 },	-- Trouble at the Tree
				["provider"] = { "n", 208669 },	-- Lady Moonberry
				["coord"] = { 49.8, 62.5, EMERALD_DREAM },
				["g"] = {
					i(208985),	-- Silly Hat (QI!)
				},
			}),
			q(77318, {	-- Merithra Says
				["sourceQuests"] = { 77317 },	-- Hatted Hibernation
				["provider"] = { "n", 208669 },	-- Lady Moonberry
				["coord"] = { 49.8, 62.5, EMERALD_DREAM },
				["g"] = {
					iensemble(210996),	-- Moonberry's Many Mischief Makers
					i(210997),	-- Spare Party Hat
				},
			}),
			--
			q(77896, {	-- A Sleepy Search
				["sourceQuests"] = { 78904 },	-- HQT - `Local Stories Quest Unlock`
				["provider"] = { "n", 210133 },	-- Icarius
				["coord"] = { 50.3, 63.4, EMERALD_DREAM },
			}),
			q(77911, {	-- Build-A-Blanket
				["sourceQuests"] = { 77896 },	-- A Sleepy Search
				["provider"] = { "n", 210164 },	-- Thaalean
				["coord"] = { 58.1, 77.3, EMERALD_DREAM },
				["g"] = {
					i(208930),	-- Velvety Lasher Leaves (QI!)
				},
			}),
			q(77922, {	-- Fluffy Filler Retrieval
				["sourceQuests"] = { 77896 },	-- A Sleepy Search
				["provider"] = { "n", 210164 },	-- Thaalean
				["coord"] = { 58.1, 77.3, EMERALD_DREAM },
				["g"] = {
					i(208931),	-- Silky Sage (QI!)
				},
			}),
			q(77955, {	-- Heated Hearthstone Hustle
				["sourceQuests"] = {
					77911,	-- Build-A-Blanket
					77922,	-- Fluffy Filler Retrieval
				},
				["provider"] = { "n", 210164 },	-- Thaalean
				["coord"] = { 58.1, 77.3, EMERALD_DREAM },
				["g"] = {
					i(208949),	-- Heated Hearthstone (QI!)
				},
			}),
			q(77958, {	-- Sleepy Druid in Emerald Dream
				["sourceQuests"] = { 77955 },	-- Heated Hearthstone Hustle
				["provider"] = { "n", 210164 },	-- Thaalean
				["coord"] = { 58.1, 77.3, EMERALD_DREAM },
				["g"] = {
					i(210864),	-- Improvised Leafbed (TOY!)
					i(210952),	-- Spare Heated Hearthstone
				},
			}),
			--
			q(76567, {	-- Grousing Garden
				["sourceQuests"] = { 76566 },	-- The Dryad Garden
				["provider"] = { "n", 207779 },	-- Ethidris Creekward
				["coord"] = { 53.7, 74.6, EMERALD_DREAM },
			}),
			q(76568, {	-- Pineshrew Panic
				--["sourceQuests"] = { 76566 },	-- The Dryad Garden
				["provider"] = { "n", 207779 },	-- Ethidris Creekward
				["coord"] = { 53.7, 74.6, EMERALD_DREAM },
			}),
			q(76569, {	-- Druid-Guardian Conference
				-- TODO: Might also require 76567
				["sourceQuests"] = { 76568 },	-- Pineshrew Panic
				["provider"] = { "n", 207779 },	-- Ethidris Creekward
				["coord"] = { 53.7, 74.6, EMERALD_DREAM },
				["g"] = {
					i(211371),	-- Dryad-Keeper Credentials
				}
			}),
			q(76570, {	-- The Family Business
				["sourceQuests"] = { 76569 },	-- Druid-Guardian Conference
				["provider"] = { "n", 207779 },	-- Ethidris Creekward
				["coord"] = { 53.7, 74.6, EMERALD_DREAM },
				["g"] = {
					i(208732),	-- Lasher Heart (QI!)
				},
			}),
			q(76571, {	-- Growth Experience
				["sourceQuests"] = { 76569 },	-- Druid-Guardian Conference
				["provider"] = { "n", 207781 },	-- Melyrine Petalshade
				["coord"] = { 53.8, 74.5, EMERALD_DREAM },
			}),
			q(76572, {	-- A Poisonous Promotion
				["sourceQuests"] = {
					76570,	-- The Family Business
					76571,	-- Growth Experience
				},
				["provider"] = { "n", 210813 },	-- Dionaessa (player instanced NPC)
			}),
			q(77802, {	-- What Do I Call You?
				["sourceQuests"] = { 76572 },	-- A Poisonous Promotion
				["provider"] = { "n", 209788 },	-- Dionaessa
				["coord"] = { 53.8, 74.6, EMERALD_DREAM },
				["g"] = {
					i(210958),	-- Crown of the Dryad Guardian
				},
			}),
			--
			q(77310, {	-- Memory of the Dreamer
				["sourceQuests"] = { 78904 },	-- HQT - `Local Stories Quest Unlock`
				["provider"] = { "n", 210022 },	-- Keeper Adranas
				["coord"] = { 58.7, 23.9, EMERALD_DREAM },
			}),
			q(77311, {	-- Healing Helper
				["sourceQuests"] = { 77310 },	-- Memory of the Dreamer
				["provider"] = { "n", 208713 },	-- Alexstrasza the Life-Binder
				["coord"] = { 58.6, 23.9, EMERALD_DREAM },
				["g"] = {
					i(208884),	-- Root Restoration Fruit (QI!)
				},
			}),
			q(77312, {	-- Nature Persists
				["sourceQuests"] = { 77311 },	-- Healing Helper
				["provider"] = { "n", 208713 },	-- Alexstrasza the Life-Binder
				["coord"] = { 58.6, 23.9, EMERALD_DREAM },
				["g"] = {
					i(208676),	-- Sprouted Seedling (QI!)
				},
			}),
			q(77313, {	-- A Solemn Summons
				["sourceQuests"] = { 77311 },	-- Healing Helper
				["provider"] = { "n", 208714 },	-- Ysera
				["coord"] = { 58.6, 23.8, EMERALD_DREAM },
			}),
			q(77314, {	-- Requiem in a Dream
				["sourceQuests"] = {
					77312,	-- Nature Persists
					77313,	-- A Solemn Summons
				},
				["provider"] = { "n", 208714 },	-- Ysera
				["coord"] = { 58.6, 23.8, EMERALD_DREAM },
				["g"] = {
					i(210954),	-- Sprout of Rebirth
				},
			}),
			q(77315, {	-- Ancient Memories
				["sourceQuests"] = { 77314 },	-- Requiem in a Dream
				["provider"] = { "n", 208714 },	-- Ysera
				["coord"] = { 58.6, 23.8, EMERALD_DREAM },
				["g"] = {
					i(211370),	-- Branch of Gracus
				},
			}),
			q(78041, {	-- Sky Mother's Ire
				["sourceQuests"] = { 78066 },	-- The Answers You've Earned
				["provider"] = { "n", 209318 },	-- Cenarius
				["coord"] = { 50.8, 62.1, EMERALD_DREAM },
			}),
			q(78042, {	-- Aviana's Assessment
				["sourceQuests"] = { 78041 },	-- Sky Mother's Ire
				["provider"] = { "n", 210587 },	-- Aviana
				["coord"] = { 65.8, 37.6, EMERALD_DREAM },
				["g"] = {
					i(209875),	-- Gorestained Armor Scrap (QI!)
					i(208775),	-- Ashphodel Research Notes (QI!)
				},
			}),
			q(78043, {	-- Q'Onzu's Quandary
				["sourceQuests"] = { 78041 },	-- Sky Mother's Ire
				["provider"] = { "n", 210585 },	-- Q'onzu <Loa of Change>
				["coord"] = { 65.9, 37.8, EMERALD_DREAM },
			}),
			q(77788, {	-- Ashphodel Research Notes
				["sourceQuests"] = { 78041 },	-- Sky Mother's Ire / or Aviana's Assessment
				["provider"] = { "i", 208775 },	-- Ashphodel Research Notes
				--["coord"] = { 65.9, 37.8, EMERALD_DREAM },
				["g"] = {
					i(211395),	-- Ashphodel Research Notes
					i(210453),	-- Bundle of Flame Pollen (QI!)
					i(210951),	-- Treacherous Research Notes
				},
			}),
			q(78044, {	-- Apalling Pollen
				["sourceQuests"] = {
					78042,	-- Aviana's Assessment
					78043,	-- Q'Onzu's Quandary
					77788,	-- Ashphodel Research Notes
				},
				["provider"] = { "n", 210585 },	-- Q'onzu <Loa of Change>
				["coord"] = { 65.9, 37.8, EMERALD_DREAM },
				["g"] = {
					i(210176),	-- Q'onzu's Vision Charm (QI!)
				},
			}),
			q(78045, {	-- Uproot the Cause
				["sourceQuests"] = {
					78042,	-- Aviana's Assessment
					78043,	-- Q'Onzu's Quandary
					77788,	-- Ashphodel Research Notes
				},
				["provider"] = { "n", 210587 },	-- Aviana
				["coord"] = { 65.8, 37.6, EMERALD_DREAM },
				["g"] = {
					i(210136),	-- Uprooted Ashphodel (QI!)
				},
			}),
			q(78046, {	-- Overseer Oversight
				["sourceQuests"] = {
					78044,	-- Apalling Pollen
					78045,	-- Uproot the Cause
				},
				["provider"] = { "n", 210587 },	-- Aviana
				["coord"] = { 65.8, 37.6, EMERALD_DREAM },
				["g"] = {
					i(211369),	-- Charred Staff of the Overseer
					--i(210663),	-- Circle of Nature's Youth (COSMETIC!)
				},
			}),
			--
			q(78381, {	-- Dreams Unified
				["sourceQuests"] = {
					77283,	-- A Multi-Front Battle
					77887,	-- 'World Quest Unlock' (spellID 421687)
				},
				["sourceQuestNumRequired"] = 1,
				["provider"] = { "n", 208669 },	-- Lady Moonberry
				["coord"] = { 49.8, 62.5, EMERALD_DREAM },
				["g"] = {
					i(208396),	-- Splintered Spark of Dreams
				},
			}),
			--Sprout weekly?
			q(77677, {	-- Some Water...
				["description"] = "Dismount, and click through dialoge to obtain quest.",
				--["sourceQuests"] = {
				--	77283,	-- A Multi-Front Battle
				--	77887,	-- 'World Quest Unlock' (spellID 421687)
				--},
				--["sourceQuestNumRequired"] = 1,
				["provider"] = { "n", 209292 },	-- Sprout
				["coord"] = { 48.6, 67.8, EMERALD_DREAM },
				["g"] = {
					i(208780),	-- Filled Bucket (QI!)
					i(208779),	-- Unfilled Bucket (QI!)
				},
			}),
			q(78398, {	-- A Dash of Minerals...
				["sourceQuests"] = { 77677 },	-- Some Water...
				["provider"] = { "n", 209571 },	-- Professor Ash
				["coord"] = { 48.7, 68.0, EMERALD_DREAM },
				["g"] = {
					i(210457),	-- Fish Bones (QI!)
				},
			}),
			q(77697, {	-- The Right Food...
				["sourceQuests"] = { 78398 },	-- A Dash of Minerals...
				["provider"] = { "n", 209458 },	-- Dewy Sapling
				["coord"] = { 48.6, 67.8, EMERALD_DREAM },
				["cost"] = {{"i",208647,1}},	-- Primed Emerald Dream Fertilizer (QI!)
				["g"] = {
					i(208757),	-- Ash's Recipes to Delight and Nourish Your Plant Pals (QI!)
					i(208644, {	-- Lasher Plant Matter (QI!)
						["providers"] = {
							{"n",210772},	-- Fenblossom Lashling
							{"n",208750},	-- Verdant Emerald Lasher
						},
						["coord"] = { 57.7, 55.4, EMERALD_DREAM },
					}),
					o(408997, {	-- Turtle Egg
						["coords"] = {
							{ 43.5, 80.9, EMERALD_DREAM },
							{ 43.1, 79.6, EMERALD_DREAM },
							{ 43.0, 77.2, EMERALD_DREAM },
						},
						["g"] = {
							i(209416),	-- Turtle Eggshell Shards (QI!)
						},
					}),
					i(208646, {	-- Combined Fertilizer Ingredients (QI!)
						["cost"] = {
							{"i", 4537, 5},	-- 5x Tel'Abim Banana / @ 49.6, 61.6, 2200
							{"i", 209416, 3},	-- 3x Turtle Eggshell Shards / @ 41.9, 76.0, 2200 from objectID 408997 (Turtle Egg)
							{"i", 208644, 5},	-- 5x Lasher Plant Matter / @ active Emerald Frenzy from any lasher
						},
					}),
					i(208647, {	-- Primed Emerald Dream Fertilizer (QI!)
						["description"] = "Takes 3 days to turn into this.",
						["cost"] = {{"i",208646,1}},	-- Combined Fertilizer Ingredients (QI!)
					}),
				},
			}),
			q(77711, {	--	And a Pinch of Magic
				["sourceQuests"] = { 77697 },	-- The Right Food...
				["provider"] = { "n", 209571 },	-- Professor Ash
				["coord"] = { 48.7, 68.0, EMERALD_DREAM },
				["g"] = {
					i(208705),	-- Druidic Totem (QI!)
				},
			}),
			q(77762, {	--	A Little Hope is Never without Worth
				["sourceQuests"] = { 77711 },	-- And a Pinch of Magic
				["provider"] = { "n", 209571 },	-- Professor Ash
				["coord"] = { 48.7, 68.0, EMERALD_DREAM },
				["g"] = {
					i(211131),	-- Delicately Curated Blossoms [750 Dream Warden rep]
					i(210774),	-- Ochre Dreamtalon (MOUNT!)
				},
			}),
			n(BONUS_OBJECTIVES, {
				-- from 'big' rares bonus objective
				i(211303),	-- Dryad's Supply Pouch
				--
				q(78890, {	-- Emerald Frenzy
					--["sourceQuests"] = {  },	-- ?
					["coord"] = { 55.5, 50.0, EMERALD_DREAM },	-- 47.1, 30.3
					["repeatable"] = true,
				}),
				--probably move big rares here, since they have seems like weekly lockout?
			}),
		}),
	}),
})));
root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.DF, bubbleDownSelf({ ["timeline"] = { ADDED_10_2_0 } }, {
	m(DRAGON_ISLES, {
		m(EMERALD_DREAM, {
			n(QUESTS, {
				--- pop during main story
				q(77413),	-- Shandris's Scouting Report (itemID 208181) (spellID 418275)
				q(77572),	-- 'Make player eligible for superbloom' (spellID 425375)
				q(77887),	-- 'World Quest Unlock' (spellID 421687)
				q(78904),	-- 'Local Stories Quest Unlock' (spellID 429258) (after qID 77178 'Tactical Withdrawal')
				------ Stay awhile and listen ------ (TODO upgrade to proper HQT in Emerald Dream)
				hqt(77769),	-- 'Stay a while and listen' Delaryn Summermoon (n: 206930) during qID 76281 (Something Worth Celebrating)
				hqt(77768),	-- 'Stay a while and listen' Tyrande Whisperwind (n: 206402) during qID 76281 (Something Worth Celebrating)
				hqt(77771),	-- 'Stay a while and listen' Lady Jaina Proudmoore (n: 206943) during qID 76281 (Something Worth Celebrating)
				hqt(77770),	-- 'Stay a while and listen' Lady Jaina Proudmoore (n: 209610) during qID 76283 (Andu-falah-dor)
				hqt(77772),	-- 'Stay a while and listen' Watcher Koranos (n: 209334) during qID 76283 (Andu-falah-dor)
				-- Dryad Garden
				q(77808),	-- Quest "What Do I Call You?": Pick the title of "Mother"
				q(77809),	-- Quest "What Do I Call You?": Pick the title of "Father"
				q(77810),	-- Quest "What Do I Call You?": Pick the title of "Commander"
				q(77811),	-- Quest "What Do I Call You?": Pick the title of "Guardian"
				-- Require Legion Class Hall (and seems like completely finished quest chain from it?) for each unique class line (otherwise there will be only 4 above)
				q(77834),	-- Quest "What Do I Call You?": Pick the title of "Archdruid" (druid)
				q(78238),	-- Quest "What Do I Call You?": Pick the title of "Archmage" (mage)
				q(78235),	-- Quest "What Do I Call You?": Pick the title of "Battlelord" (warrior)
				q(77812),	-- Quest "What Do I Call You?": Pick the title of "Deathlord"(dk)
				--q(),	-- Quest "What Do I Call You?": Pick the title of "Farseer" (shaman)
				q(78258),	-- Quest "What Do I Call You?": Pick the title of "Grandmaster" (monk)
				q(78246),	-- Quest "What Do I Call You?": Pick the title of "High Priest" (priest)
				q(78257),	-- Quest "What Do I Call You?": Pick the title of "Highlord" (paladin)
				--q(),	-- Quest "What Do I Call You?": Pick the title of "Huntmaster" (hunter)
				--q(),	-- Quest "What Do I Call You?": Pick the title of "Illidari" (dh, doesn't exist?)
				--q(),	-- Quest "What Do I Call You?": Pick the title of "Master Assassin" (rogue, doesn't exist?)
				--q(),	-- Quest "What Do I Call You?": Pick the title of "Netherlord" (warlock)
				q(78259),	-- Quest "What Do I Call You?": Pick the title of "Shadowbane" (rogue)
				--q(),	-- Quest "What Do I Call You?": Pick the title of "Slayer" (dh?)
				--
				q(78977),	-- pop after finishing qID 78890 (Emerald Frenzy) first time (daily), seems like it is fired when give you reward
				-- Sprout
				q(77712),	-- talk with Smoldering Sprout (n: 209253) first time which transform itself into Blackened Sprout
				q(77713),	-- talk with Blackened Sprout (n: 209468) transform itself into Sprout (n: 209292) and unlock quests
				q(77717),	-- lockout after turn in quest and flower show timer (progress bar)
				q(77767),	-- after turn in qID 77711 (And a Pinch of Magic), when Professor Ash come to flower (spellIDs 421103 & 420717)
				q(77759),	-- after turn in qID 77711 (And a Pinch of Magic), when animation start pop around flower (spellID 420720)
				--
			}),
		}),
	}),
})));