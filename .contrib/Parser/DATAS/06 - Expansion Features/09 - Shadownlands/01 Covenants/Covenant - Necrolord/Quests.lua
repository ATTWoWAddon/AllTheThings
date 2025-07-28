-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------
local CONDUIT_GROUP = {
	-- DK
	i(182113),	-- Fleeting Wind
	i(182133),	-- Insatiable Appetite
	-- DH
	i(182317),	-- Shattered Restoration
	i(182324),	-- Felfire Haste
	-- Druid
	i(183466),	-- Innate Resolve
	i(183467),	-- Tireless Pursuit
	-- Hunter
	i(182584),	-- Cheetah's Vigor
	i(182469),	-- Rejuvenating Wind
	-- Mage
	i(181707),	-- Diverted Energy
	i(181467),	-- Flow of Time
	-- Monk
	i(181512),	-- Dizzying Tumble
	i(181373),	-- Harm Denial
	-- Paladin
	i(182336),	-- Golden Path
	i(182448),	-- Light's Barding
	-- Priest
	i(181840),	-- Light's Inspiration
	i(181962),	-- Mental Recovery
	-- Rogue
	i(183500),	-- Fade to Nothing
	i(183496),	-- Nimble Fingers
	-- Shaman
	i(182106),	-- Refreshing Waters
	i(182108),	-- Thunderous Paws
	-- Warlock
	i(182460),	-- Accrued Vitality
	i(182466),	-- Shade of Terror
	-- Warrior
	i(181469),	-- Indelible Victory
	i(180847),	-- Inspiring Presence
};
local LFR_WEAPON_GROUP = {
	i(183893, {["modID"] = 4, }),	-- Abominable Anima Spherule
	i(183892, {["modID"] = 4, }),	-- Mystic Anima Spherule
	i(183891, {["modID"] = 4, }),	-- Venerated Anima Spherule
	i(183890, {["modID"] = 4, }),	-- Zenith Anima Spherule
	i(183888, {["modID"] = 4, }),	-- Apogee Anima Bead
	i(183889, {["modID"] = 4, }),	-- Thaumaturgic Anima Bead
};

root(ROOTS.ExpansionFeatures, expansion(EXPANSION.SL, bubbleDown({ ["customCollect"] = "SL_COV_NEC" }, {
	n(NECROLORD, {
		n(QUESTS, {
			q(63212, {	-- Report to Mevix
				["provider"] = { "n", 159478 },	-- Tal-Inara
				["sourceQuests"] = {
					-- TODO: confirm
					57878,	-- Choosing Your Purpose [Story]
					62000,	-- Choosing Your Purpose [Skip]
				},
				["sourceQuestNumRequired"] = 1,
				["coord"] = { 39.2, 69.7, ORIBOS },
				["isBreadcrumb"] = true,
			}),
			q(58609, {	-- Taking The Seat
				["provider"] = { "n", 171821 },	-- Baroness Draka
				["sourceQuests"] = {
					57878,	-- Choosing Your Purpose [Story]
					62000,	-- Choosing Your Purpose [Skip]
					63212,	-- Report to Mevix [Skip]
				},
				["sourceQuestNumRequired"] = 1,
				["coord"] = { 42.9, 74.1, ORIBOS },
			}),
			q(62835, {	-- A Call to Service
				["provider"] = { "n", 175998 },	-- Elspeth Larink
				["sourceQuests"] = { 62834 },	-- Glorious Ambition
				["coord"] = { 46.7, 40.4, SEAT_OF_THE_PRIMUS },
			}),
			q(58472, {	-- A Farewell to Arms
				["provider"] = { "n", 161461 },	-- The Accuser
				["sourceQuests"] = { 58523 },	-- You're Dead To Me
				["coord"] = { 73.8, 57.4, REVENDRETH },
			}),
			q(62297, {	-- A Fatal Failure
				["provider"] = { "n", 174020 },	-- Captain Prateq
				["sourceQuests"] = { 61742 },	-- A Fitting Guise
				["coord"] = { 70.4, 27.7, MALDRAXXUS },
				["groups"] = {
					i(183394, {	-- Discarded Grimoire
						["description"] = "This may drop for any character on your account once the toy 'Acolyte's Guise' has been learned by a Necrolord character.",
					}),
				},
			}),
			q(61742, {	-- A Fitting Guise
				["provider"] = { "n", 173422 },	-- Balmedar's Oculus
				["sourceQuests"] = {
					62414,	-- Burying Suspicion
					61741,	-- Pilfered Power
					61740,	-- Playing Favorites
				},
			}),
			q(61759, {	-- A Helpful Hand
				["sourceQuests"] = { 61758 },	-- Improvised Implements
				["coord"] = { 54.2, 67.9, 1652 },	-- Vault of Souls
			}),
			q(62833, {	-- A Hero of Great Renown
				["provider"] = { "n", 165182 },	-- Baroness Draka
				["sourceQuests"] = { 61359 },	-- Power of the Primus
				["coord"] = { 49.7, 43.4, SEAT_OF_THE_PRIMUS },
				-- TODO: Draka offers an alternate 'skip' option with this quest... not sure what that triggers
			}),
			q(65157, {	-- A Hardened Bond
				["provider"] = { "n", 161905 },	-- Bonesmith Heirmir
				["sourceQuests"] = { 62848 },	-- Conduits, What Are They For?
				["coord"] = { 42.8, 31.9, SEAT_OF_THE_PRIMUS },
				["timeline"] = { ADDED_9_1_5 },
				["groups"] = {
					follower(1262),	-- Bonesmith Heirmir
				},
			}),
			q(61388, {	-- A Journey Made Together
				["provider"] = { "n", 161904 },	-- Plague Deviser Marileth
				["sourceQuests"] = { 59597 },	-- Come On, We're Simpatico!
				["coord"] = { 38.8, 32.4, SEAT_OF_THE_PRIMUS },
				["groups"] = appendGroups(CONDUIT_GROUP, {
					i(181770),	-- Bone Marrow Hops
					i(182706),	-- Brooding Pool
					i(182292),	-- Brutal Grasp
					i(183472),	-- Evolved Swarm
					i(182961),	-- Fatal Decimation
					i(181981),	-- Festering Transfusion
					i(181553),	-- Gift of the Lich
					i(182339),	-- Necrotic Barrage
					i(182770),	-- Righteous Might
					i(183493),	-- Sudden Fractures
					i(182346),	-- Tumbling Waves
					i(182442),	-- Veteran's Repute
				}),
			}),
			q(58504, {	-- Accusatory Missive
				["provider"] = { "n", 161907 },	-- Baroness Draka
				["sourceQuests"] = { 62161 },	-- Blood from a Bone
				["coord"] = { 49.8, 50.6, SEAT_OF_THE_PRIMUS },
				["description"] = "Requires Renown 17.",
			}),
			q(59659, {	-- Aerial Absolution
				["provider"] = { "n", 165412 },	-- Xandria <Paragon of Courage>
				["sourceQuests"] = { 59653 },	-- Don't Cross Courage
				["coord"] = { 36.0, 55.3, BASTION },
			}),
			q(60114, {	-- Aerial Advantage
				["provider"] = { "n", 167810 },	-- Emeni
				["sourceQuests"] = { 60050 },	-- Trouble on the Western Front
				["coord"] = { 28.1, 37.5, MALDRAXXUS },
				["groups"] = {
					i(180899),	-- Riding Hook (QI!)
				},
			}),
			q(59709, {	-- Afterlife Goes On
				["provider"] = { "n", 165412 },	-- Xandria <Paragon of Courage>
				["sourceQuests"] = { 59700 },	-- The Last Labor
				["coord"] = { 29.7, 53.1, BASTION },
			}),
			q(59921, {	-- All I Ever Will Be
				["provider"] = { "n", 165794 },	-- Xandria <Paragon of Courage>
				["sourceQuests"] = { 59748 },	-- No Peace In Death
				["coord"] = { 46.5, 63.0, BASTION },
			}),
			q(57470, {	-- An Abominable Discovery
				["provider"] = { "n", 173308 },	-- Baroness Draka
				["sourceQuests"] = { 60067 },	-- Pursuit of Justice
				["coord"] = { 31.0, 29.4, MALDRAXXUS },
			}),
			q(61412, {	-- An Early End
				["provider"] = { "n", 168743 },	-- Apolon
				["sourceQuests"] = {
					61396,	-- Dark Developments
					60043,	-- Justice from Above
					59916,	-- The Butchers of Bastion
				},
				["coord"] = { 35.3, 25.9, MALDRAXXUS },
			}),
			q(62839, {	-- Anima is Strength
				["provider"] = { "n", 158339 },	-- Sergeant Romark
				["sourceQuests"] = { 62835 },	-- A Call to Service
				["coord"] = { 47.7, 29.1, SEAT_OF_THE_PRIMUS },
			}),
			q(58820, {	-- Bindings of Fleshcrafting
				["provider"] = { "n", 161907 },	-- Baroness Draka
				["sourceQuests"] = {
					59722,	-- Grand Theft Necropolis
					61869,	-- Search the Place
				},
				["coord"] = { 49.7, 50.7, SEAT_OF_THE_PRIMUS },
				["groups"] = {
					i(182275),	-- Bladesworn Conjurer's Wristwraps
					i(182257),	-- Bladesworn Harbinger's Vambraces
					i(182284),	-- Bladesworn Tactician's Bracers
					i(182266),	-- Bladesworn Wraith's Armguards
				},
			}),
			q(61755, {	-- Blinding the Brokers
				["provider"] = { "n", 173422 },	-- Balmedar's Oculus
				["sourceQuests"] = { 61753 },	-- Explosive Schemes
			}),
			q(62161, {	-- Blood from a Bone
				["provider"] = { "n", 161907 },	-- Baroness Draka
				["sourceQuests"] = { 57636 },	-- Pride of Place
				["coord"] = { 49.8, 50.6, SEAT_OF_THE_PRIMUS },
			}),
			q(62845, {	-- Bringing It All Together
				["provider"] = { "n", 161907 },	-- Baroness Draka
				["sourceQuests"] = { 62844 },	-- Return to Draka
				["coord"] = { 49.7, 50.1, SEAT_OF_THE_PRIMUS },
				["groups"] = {
					i(182272),	-- Bladesworn Conjurer's Leggings
					i(182254),	-- Bladesworn Harbinger's Greaves
					i(182281),	-- Bladesworn Tactician's Chausses
					i(182263),	-- Bladesworn Wraith's Breeches
				},
			}),
			q(61180, {	-- Burn Before Reading
				["provider"] = { "n", 168744 },	-- Artemede
				["sourceQuests"] = {
					61396,	-- Dark Developments
					60043,	-- Justice from Above
					59916,	-- The Butchers of Bastion
				},
				["coord"] = { 35.2, 26.9, MALDRAXXUS },
				["groups"] = {
					i(180845),	-- Stitchflesh Design (QI!)
				},
			}),
			q(62414, {	-- Burying Suspicion
				["provider"] = { "n", 173422 },	-- Balmedar's Oculus
				["sourceQuests"] = { 61739 },	-- The Wayward Baron
				["coord"] = { 59.3, 32.9, MALDRAXXUS },
			}),
			q(61751, {	-- Cage Free Spores
				["provider"] = { "n", 173492 },	-- Jor'dan the Powerful
				["sourceQuests"] = { 61749 },	-- Necessary Ingredients
				["coord"] = { 69.9, 32.7, MALDRAXXUS },
				["groups"] = {
					i(182678),	-- Intact Spore Cluster (QI!)
				},
			}),
			q(61252, {	-- Call In a Favor
				["provider"] = { "n", 173343 },	-- Ascended Bearer
				["sourceQuests"] = { 61230 },	-- Outside Influence
				["coord"] = { 54.2, 16.2, MALDRAXXUS },
				["groups"] = {
					i(181162),	-- Beacon Trigger (QI!)
				},
			}),
			q(58833, {	-- Calling in All Favors
				["provider"] = { "n", 161907 },	-- Baroness Draka
				["sourceQuests"] = { 62391 },	-- Mobilize Maldraxxus
				["coord"] = { 49.6, 50.6, SEAT_OF_THE_PRIMUS },
				["description"] = "Requires Renown 20.",
			}),
			q(61746, {	-- Cantrip Collections
				["provider"] = { "n", 172924 },	-- Baroness Ninadar
				["sourceQuests"] = { 61745 },	-- Mistress of Tomes
				["coord"] = { 66.3, 26.3, MALDRAXXUS },
				["groups"] = {
					i(182609),	-- Overdue Scroll (QI!)
				},
			}),
			q(62317, {	-- Casting Doubt
				["provider"] = { "o", 358319 },	-- Sorcerer's Note
				["sourceQuests"] = { 61748 },	-- The Hall of Tomes
				["coord"] = { 46.5, 31.5, 1652 },	-- Vault of Souls
				["groups"] = {
					i(183397, {	-- Sorcerer's Blade
						["description"] = "This may drop for any character on your account once the toy 'Acolyte's Guise' has been learned by a Necrolord character.",
					}),
				},
			}),
			q(61757, {	-- Caught in the Act
				["provider"] = { "n", 172923 },	-- Kel'Thuzad
				["sourceQuests"] = { 61756 },	-- Designed to Fail
				["coord"] = { 44.1, 26.9, 1652 },	-- Vault of Souls
			}),
			q(60044, {	-- Charging The Blade
				["provider"] = { "n", 166211 },	-- Alexandros Mograine
				["sourceQuests"] = { 60050 },	-- Trouble on the Western Front
				["coord"] = { 28.8, 38.2, MALDRAXXUS },
			}),
			q(59596, {	-- Collective Soul
				["provider"] = { "n", 161909 },	-- Arkadia Moa <Sanctum Upgrades>
				["altQuests"] = { 63003 },	-- Collective Soul
				["sourceQuests"] = { 62846 },	-- Sanctum Improvements
				["coord"] = { 52.4, 38.4, SEAT_OF_THE_PRIMUS },
			}),
			q(63003, {	-- Collective Soul
				["provider"] = { "n", 161907 },	-- Baroness Draka
				["altQuests"] = { 59596 },	-- Collective Soul
				["sourceQuests"] = { 62846 },	-- Sanctum Improvements
				["coord"] = { 49.7, 50.4, SEAT_OF_THE_PRIMUS },
			}),
			q(59597, {	-- Come On, We're Simpatico!
				["provider"] = { "n", 161904 },	-- Plague Deviser Marileth
				["sourceQuests"] = { 59596, 63003 },	-- Collective Soul
				["coord"] = { 38.8, 32.4, SEAT_OF_THE_PRIMUS },
				["groups"] = {
					follower(1261),	-- Plague Deviser Marileth
				},
			}),
			q(62848, {	-- Conduits, What Are They For?
				["provider"] = { "n", 161904 },	-- Plague Deviser Marileth
				["sourceQuests"] = { 61388 },	-- A Journey Made Together
				["coord"] = { 38.8, 32.4, SEAT_OF_THE_PRIMUS },
			}),
			q(61551, {	-- Crush 'Em All
				["provider"] = { "n", 172573 },	-- Khaliiq
				["sourceQuests"] = { 61548 },	-- Set Me Free
				["coord"] = { 28.5, 47.7, MALDRAXXUS },
				["groups"] = {
					i(182268),	-- Bladesworn Conjurer's Cowl
					i(182250),	-- Bladesworn Harbinger's Greathelm
					i(182277),	-- Bladesworn Tactician's Faceguard
					i(182259),	-- Bladesworn Wraith's Visage
				}
			}),
			q(60112, {	-- Cut to the Bone
				["provider"] = { "n", 172574 },	-- Navigator Xennir
				["sourceQuests"] = { 61518 },	-- Follow Me
				["coord"] = { 31.8, 40.2, MALDRAXXUS },
			}),
			q(61396, {	-- Dark Developments
				["provider"] = { "o", 357246 },	-- Tattered Scroll
				["sourceQuests"] = { 59910 },	-- Fight and Flight
				["coord"] = { 33.5, 24.1, MALDRAXXUS },
				["groups"] = {
					i(181285),	-- Abhorrent Design (QI!)
				},
			}),
			q(59645, {	-- Death Rains
				["provider"] = { "n", 165591 },	-- Alexandros Mograine <The Ashbringer>
				["sourceQuests"] = { 59625 },	-- The Only Cure
				["coord"] = { 40.7, 55.3, BASTION },	-- if you haven't already picked up Peace by Piece / No Hesitation, No Surrender
			}),
			q(60510, {	-- Descended
				["provider"] = { "n", 166333 },	-- Xandria
				["sourceQuests"] = {
					61396,	-- Dark Developments
					60043,	-- Justice from Above
					59916,	-- The Butchers of Bastion
				},
				["coord"] = { 35.6, 26.5, MALDRAXXUS },
				["_drop"] = { "g" },	-- make 4 items stop showing up that are not actually rewarded by this quest
			}),
			q(61756, {	-- Designed to Fail
				["provider"] = { "n", 173172 },	-- Balmedar
				["sourceQuests"] = {
					61754,	-- No Crate Unturned
					61755,	-- Blinding the Brokers
				},
				["coord"] = { 66.2, 32.1, MALDRAXXUS },
				["groups"] = {
					i(182779),	-- Bundle of "Modified" Reagents (QI!)
				},
			}),
			q(59922, {	-- Do Not Forget
				["provider"] = { "n", 165794 },	-- Xandria <Paragon of Courage>
				["sourceQuests"] = { 59921 },	-- All I Ever Will Be
				["coord"] = { 46.5, 63.0, BASTION },
			}),
			q(59653, {	-- Don't Cross Courage
				["provider"] = { "n", 165412 },	-- Xandria <Paragon of Courage>
				["sourceQuests"] = {
					59648,	-- Peace by Piece
					59650,	-- No Hesitation, No Surrender
					59645,	-- Death Rains
				},
				["coord"] = { 38.9, 55.2, BASTION },
			}),
			q(58599, {	-- Drive A Dredge Between Them
				["provider"] = { "n", 161474 },	-- Baroness Draka
				["sourceQuests"] = { 58523 },	-- You're Dead To Me
			}),
			q(59555, {	-- Enemy at the Door
				["provider"] = { "n", 161907 },	-- Baroness Draka
				["sourceQuests"] = { 62448 },	-- Securing the House
				["coord"] = { 49.6, 50.7, SEAT_OF_THE_PRIMUS },
				["description"] = "Requires Renown 5.",
				["groups"] = {
					i(182077),		-- War-Bred Tauralus (MOUNT!)
				},
			}),
			q(61747, {	-- Errant Enchantments
				["provider"] = { "n", 172924 },	-- Baroness Ninadar
				["sourceQuests"] = { 61745 },	-- Mistress of Tomes
				["coord"] = { 66.3, 26.3, MALDRAXXUS },
				["groups"] = {
					i(182615),	-- Errant Tome (QI!)
					i(182616),	-- Mischievous Quill (QI!)
				},
			}),
			q(61753, {	-- Explosive Schemes
				["provider"] = { "n", 173172 },	-- Balmedar
				["sourceQuests"] = { 61752 },	-- The Final Reagent
				["coord"] = { 66.2, 32.1, MALDRAXXUS },
			}),
			q(61226, {	-- Extra Limbs
				["provider"] = { "n", 158529 },	-- Whisperer Vyn
				["sourceQuests"] = {
					59265,	-- Prying Eyes
					57649,	-- Whisper of Hope
				},
				["coord"] = { 49.9, 17.8, MALDRAXXUS },
			}),
			q(58007, {	-- Eyes on the Problem
				["provider"] = { "n", 161907 },	-- Baroness Draka
				["sourceQuests"] = { 59555 },	-- Enemy at the Door
				["coord"] = { 49.7, 50.6, SEAT_OF_THE_PRIMUS },
			}),
			q(62169, {	-- Eyes to the Sky
				["provider"] = { "n", 161907 },	-- Baroness Draka
				["sourceQuests"] = { 57648, },	-- The Impossible Plan
				["coord"] = { 49.7, 50.6, MALDRAXXUS },
				["description"] = "Requires Renown 8.",
			}),
			q(59910, {	-- Fight and Flight
				["provider"] = { "n", 161907 },	-- Baroness Draka
				["sourceQuests"] = { 61145 },	-- Take The Fight To Them
				["coord"] = { 36.3, 36.6, MALDRAXXUS },
			}),
			q(61518, {	-- Follow Me
				["provider"] = { "n", 172574 },	-- Navigator Xennir
				["sourceQuests"] = { 61485 },	-- I'll Only Say This Once
				["coord"] = { 31.2, 49.4, MALDRAXXUS },
			}),
			q(57530, {	-- Gharmal's Tower
				["provider"] = { "n", 173194 },	-- Alexandros Mograine
				["sourceQuests"] = { 57470 },	-- An Abominable Discovery
				["coord"] = { 27.5, 23.9, MALDRAXXUS },
			}),
			q(62834, {	-- Glorious Ambition
				["provider"] = { "n", 175998 },	-- Elspeth Larink
				["sourceQuests"] = { 62833 },	-- A Hero of Great Renown
				["coord"] = { 46.7, 40.4, SEAT_OF_THE_PRIMUS },
			}),
			q(59722, {	-- Grand Theft Necropolis
				["provider"] = { "n", 164679 },	-- Whisperer Vyn
				["sourceQuests"] = { 61594 },	-- This Way Out
				-- coordinates vary because it's on a moving ship/necropolis
			}),
			q(61567, {	-- Grave Intent
				["provider"] = { "n", 167173 },	-- Baroness Vashj
				["sourceQuests"] = { 60050 },	-- Trouble on the Western Front
				["coord"] = { 28.7, 37.6, MALDRAXXUS },
			}),
			q(61750, {	-- Heart of the Forest
				["provider"] = { "n", 173492 },	-- Jor'dan the Powerful
				["sourceQuests"] = { 61749 },	-- Necessary Ingredients
				["coord"] = { 69.9, 32.7, MALDRAXXUS },
				["groups"] = {
					i(182676),	-- Veilwing's Heart (QI!)
				},
			}),
			q(62388, {	-- House of Rituals
				["provider"] = { "n", 161907 },	-- Baroness Draka
				["sourceQuests"] = { 58624 },	-- Pauldrons of Imperium
				["coord"] = { 49.8, 50.6, SEAT_OF_THE_PRIMUS },
			}),
			q(61485, {	-- I'll Only Say This Once
				["provider"] = { "n", 160518 },	-- Whisperer Vyn
				["sourceQuests"] = { 57778 },	-- The Maldraxxian Job
				["coord"] = { 50.7, 15.6, MALDRAXXUS },
			}),
			q(61758, {	-- Improvised Implements
				["sourceQuests"] = { 61757 },	-- Caught in the Act
				["coord"] = { 54.2, 67.9, 1652 },	-- Vault of Souls
			}),
			q(62840, {	-- Into the Reservoir
				["provider"] = { "n", 161909 },	-- Arkadia Moa
				["sourceQuests"] = { 62839 },	-- Anima is Strength
				["coord"] = { 52.4, 38.4, SEAT_OF_THE_PRIMUS },
			}),
			q(58608, {	-- It's Treason, Then
				["provider"] = { "n", 161474 },	-- Baroness Draka
				["sourceQuests"] = {
					58472,	-- A Farewell to Arms
					58599,	-- Drive A Dredge Between Them
				},
				["groups"] = {
					i(182386),	-- Pauldrons of Imperium (QI!)
				},
			}),
			q(60043, {	-- Justice from Above
				["provider"] = { "n", 166333 },	-- Xandria
				["sourceQuests"] = { 59910 },	-- Fight and Flight
				["coord"] = { 35.6, 26.5, MALDRAXXUS },
			}),
			q(61569, {	-- Keys to the Ruin
				["provider"] = { "n", 172805 },	-- Whisperer Vyn
				["sourceQuests"] = { 61551 },	-- Crush 'Em All
				["coord"] = { 30.2, 43.6, MALDRAXXUS },
			}),
			q(61586, {	-- Machinations of War
				["provider"] = { "n", 166535 },	-- Baroness Draka
				["sourceQuests"] = { 59894 },	-- The Golden Dawn
				["coord"] = { 50.4, 70.6, MALDRAXXUS },
			}),
			q(62308, {	-- Mantle of Mastery
				["provider"] = { "n", 172813 },	-- Ton'hamil
				["sourceQuests"] = {
					61755,	-- Blinding the Brokers
					61754,	-- No Crate Unturned
				},
				["coord"] = { 67.9, 30.6, MALDRAXXUS },
				["groups"] = {
					i(183399, {	-- Ritualist's Mantle
						["description"] = "This may drop for any character on your account once the toy 'Acolyte's Guise' has been learned by a Necrolord character.",
					}),
				},
			}),
			q(61745, {	-- Mistress of Tomes
				["provider"] = { "n", 172923 },	-- Kel'Thuzad
				["sourceQuests"] = { 61744 },	-- The Baron's Plan
				["coord"] = { 44.0, 27.3, 1652 },	-- Vault of Souls
			}),
			q(62391, {	-- Mobilize Maldraxxus
				["provider"] = { "n", 161907 },	-- Baroness Draka
				["sourceQuests"] = { 61761 },	-- The Better Part of Valor
				["coord"] = { 49.6, 50.6, SEAT_OF_THE_PRIMUS },
			}),
			q(61749, {	-- Necessary Ingredients
				["provider"] = { "n", 172923 },	-- Kel'Thuzad
				["sourceQuests"] = { 61748 },	-- The Hall of Tomes
				["coord"] = { 43.9, 27.1, 1652 },	-- Vault of Souls
			}),
			q(63343, {	-- Necrolord Tactician
				["provider"] = { "n", 175998 },    -- Elspeth Larink
				["coord"] = { 46.5, 40.2, SEAT_OF_THE_PRIMUS },
				["description"] = "Requires Renown 22.",
				["timeline"] = { ADDED_9_0_2_LAUNCH, REMOVED_9_1_0 },
			}),
			q(64084, {	-- Necrolord Tactician
				["provider"] = { "n", 175998 },    -- Elspeth Larink
				["coord"] = { 46.5, 40.2, SEAT_OF_THE_PRIMUS },
				["description"] = "Requires Renown 59.",
			}),
			q(63342, {	-- Necrolord Veteran
				["provider"] = { "n", 175998 },    -- Elspeth Larink
				["coord"] = { 46.5, 40.2, SEAT_OF_THE_PRIMUS },
				["description"] = "Requires Renown 7.",
				["timeline"] = { ADDED_9_0_2_LAUNCH, REMOVED_9_1_0 },
			}),
			q(64324, {	-- Necrolord Veteran #2
				["provider"] = { "n", 175998 },    -- Elspeth Larink
				["coord"] = { 46.5, 40.2, SEAT_OF_THE_PRIMUS },
				["description"] = "Requires Renown 43.",
			}),
			q(60110, {	-- Never Had A Friend Like Me
				["provider"] = { "n", 161906 },	-- Emeni <The Slaughter Daughter>
				["sourceQuests"] = { 60049 },	-- At Your Service
				["coord"] = { 38.3, 36.7, SEAT_OF_THE_PRIMUS },
				["groups"] = {
					follower(1263),	-- Emeni
				},
			}),
			q(61754, {	-- No Crate Unturned
				["provider"] = { "n", 173422 },	-- Balmedar's Oculus
				["sourceQuests"] = { 61753 },	-- Explosive Schemes
				["_drop"] = { "g" },	-- make items stop showing up that are not actually rewarded by this quest
				["groups"] = {
					i(182734),	-- Assorted Curios (QI!)
					i(182735),	-- Domination Blade (QI!)
				},
			}),
			q(57644, {	-- No Friend Left Behind
				["provider"] = { "n", 158604 },	-- Navigator Xennir
				["sourceQuests"] = { 61226 },	-- Extra Limbs
				["coord"] = { 52.0, 16.9, MALDRAXXUS },
				["groups"] = {
					i(183118),	-- Venomous Solvent (QI!)
					i(181237),	-- Venomous Solvent (QI!)
				},
			}),
			q(59650, {	-- No Hesitation, No Surrender
				["provider"] = { "n", 165412 },	-- Xandria <Paragon of Courage>
				["sourceQuests"] = { 59625 },	-- The Only Cure
				["coord"] = { 40.7, 55.0, BASTION },
			}),
			q(59748, {	-- No Peace In Death
				["provider"] = { "n", 165795 },	-- Alexandros Mograine <The Ashbringer>
				["sourceQuests"] = { 59709 },	-- Afterlife Goes On
				["coord"] = { 41.6, 55.1, BASTION },
			}),
			q(59609, {	-- No Rest For the Dead
				["provider"] = { "n", 161904 },	-- Plague Deviser Marileth
				["sourceQuests"] = { 62848 },	-- Conduits, What Are They For?
				["coord"] = { 38.8, 32.4, SEAT_OF_THE_PRIMUS },
			}),
			q(61397, {	-- Opportunity Strikes
				["provider"] = { "n", 161909 },	-- Arkadia Moa
				["sourceQuests"] = { 62840 },	-- Into the Reservoir
				["coord"] = { 52.4, 38.4, SEAT_OF_THE_PRIMUS },
			}),
			q(61230, {	-- Outside Influence
				["provider"] = { "n", 171875 },	-- Khaliiq <Vashj's Devoted>
				["sourceQuests"] = {
					59265,	-- Prying Eyes
					57649,	-- Whisper of Hope
				},
				["coord"] = { 50.0, 17.9, MALDRAXXUS },
				["groups"] = {
					i(175796),	-- Loose Stitch's Key (QI!)
					i(173312),	-- Toc's Key (QI!)
				},
			}),
			q(58624, {	-- Pauldrons of Imperium
				["provider"] = { "n", 161865 },	-- Baroness Draka
				["sourceQuests"] = { 58608 },	-- It's Treason, Then
				["coord"] = { 78.1, 62.2, REVENDRETH },
				["groups"] = {
					i(182273),	-- Bladesworn Conjurer's Mantle
					i(182255),	-- Bladesworn Harbinger's Pauldrons
					i(182282),	-- Bladesworn Tactician's Spaulders
					i(182264),	-- Bladesworn Wraith's Shoulders
				},
			}),
			q(59648, {	-- Peace by Piece
				["provider"] = { "n", 165412 },	-- Xandria <Paragon of Courage>
				["sourceQuests"] = { 59625 },	-- The Only Cure
				["coord"] = { 40.7, 55.0, BASTION },
			}),
			q(61741, {	-- Pilfered Power
				["provider"] = { "n", 173422 },	-- Balmedar's Oculus
				["sourceQuests"] = { 61739 },	-- The Wayward Baron
				["coord"] = { 59.3, 32.9, MALDRAXXUS },
			}),
			q(61740, {	-- Playing Favorites
				["provider"] = { "n", 173422 },	-- Balmedar's Oculus
				["sourceQuests"] = { 61739 },	-- The Wayward Baron
				["coord"] = { 59.3, 32.9, MALDRAXXUS },
			}),
			q(61246, {	-- Power of the Chosen
				["provider"] = { "n", 166211 },	-- Alexandros Mograine
				["sourceQuests"] = {
					60114,	-- Aerial Advantage
					60044,	-- Charging The Blade
					61567,	-- Grave Intent
				},
				["coord"] = { 28.8, 38.2, MALDRAXXUS },
				["_drop"] = { "g" },	-- make 4 items stop showing up that are not actually rewarded by this quest
			}),
			q(61359, {	-- Power of the Primus
				["provider"] = { "n", 165182 },	-- Baroness Draka
				["sourceQuests"] = { 59556 },	-- Welcome To Our House
				["coord"] = { 49.7, 43.4, SEAT_OF_THE_PRIMUS },
			}),
			q(57636, {	-- Pride of Place
				["provider"] = { "n", 161907 },	-- Baroness Draka
				["sourceQuests"] = { 57475 },	-- The Mantle Returned
				["coord"] = { 49.8, 50.6, SEAT_OF_THE_PRIMUS },
				["groups"] = {
					i(182276),	-- Bladesworn Conjurer's Cape
					i(182258),	-- Bladesworn Harbinger's Greatcloak
					i(182285),	-- Bladesworn Tactician's Drape
					i(182267),	-- Bladesworn Wraith's Cloak
				},
			}),
			q(57473, {	-- Prized Possession
				["provider"] = { "n", 173194 },	-- Alexandros Mograine
				["sourceQuests"] = { 57530 },	-- Gharmal's Tower
				["coord"] = { 27.3, 23.8, MALDRAXXUS },
				["groups"]= {
					i(182658),	-- Mantle of Eternal Victory (QI!)
				},
			}),
			q(59265, {	-- Prying Eyes
				["provider"] = { "n", 164619 },	-- Baroness Vashj
				["sourceQuests"] = { 58007 },	-- Eyes on the Problem
				["coord"] = { 50.8, 24.4, MALDRAXXUS },
				["groups"] = {
					i(175795),	-- Betrayer's Eye (QI!)
				},
			}),
			q(60067, {	-- Pursuit of Justice
				["provider"] = { "n", 172002 },	-- Xandria
				["sourceQuests"] = { 60098 },	-- The End is Now
				["coord"] = { 31.8, 30.3, MALDRAXXUS },
			}),
			q(61335, {	-- Rage Against the Cage
				["provider"] = { "n", 159814 },	-- Ansid the Mechanic
				["sourceQuests"] = { 61227 },	-- The Other Foot
				["coord"] = { 48.6, 18.5, MALDRAXXUS },
				["groups"] = {
					i(173312),	-- Toc's Key (QI!)
				},
			}),
			q(62320, {	-- Regalia de Rigeuer
				["provider"] = { "n", 174120 },	-- Moret the Vogue
				["sourceQuests"] = { 61749 },	-- Necessary Ingredients
				["coord"] = { 71.7, 32.9, MALDRAXXUS },
				["groups"] = {
					i(183401, {	-- Amethystine Dye
						["description"] = "This may drop for any character on your account once the toy 'Acolyte's Guise' has been learned by a Necrolord character.",
					}),
					i(183400),	-- Amethystine Powder (QI!)
				},
			}),
			q(61983, {	-- Replenish the Reservoir
				["provider"] = { "n", 161909 },	-- Arkadia Moa <Sanctum Upgrades>
				["sourceQuests"] = { 59609 },	-- No Rest For the Dead
				["coord"] = { 52.4, 38.4, SEAT_OF_THE_PRIMUS },
				["isWeekly"] = true,
			}),
			q(62844, {	-- Return to Draka
				["provider"] = { "n", 164079 },	-- Highlord Bolvar Fordragon
				["sourceQuests"] = { 62837 },	-- Hopeful News
				["coord"] = { 40.0, 68.4, ORIBOS },
				["isBreadcrumb"] = true,
			}),
			q(62846, {	-- Sanctum Improvements
				["provider"] = { "n", 161909 },	-- Arkadia Moa <Sanctum Upgrades>
				["sourceQuests"] = { 62845 },	-- Bringing It All Together
				["coord"] = { 52.4, 38.4, SEAT_OF_THE_PRIMUS },
			}),
			q(61869, {	-- Search the Place
				["provider"] = { "n", 164679 },	-- Whisperer Vyn
				["sourceQuests"] = { 61594 },	-- This Way Out
				-- coordinates vary because it's on a moving ship/necropolis
			}),
			q(62448, {	-- Securing the House
				["provider"] = { "n", 161907 },	-- Baroness Draka
				["sourceQuests"] = { 60272 },	-- The Weak Link
				["coord"] = { 49.7, 50.6, SEAT_OF_THE_PRIMUS },
			}),
			q(61323, {	-- See What You've Done
				["provider"] = { "n", 158529 },	-- Whisperer Vyn
				["sourceQuests"] = {
					61335,	-- Rage Against the Cage
					57644,	-- No Friend Left Behind
					61252,	-- Call In a Favor
				},
				["coord"] = { 49.9, 17.8, MALDRAXXUS },
				["groups"] = {
					i(181162),	-- Beacon Trigger (QI!)
					i(182265),	-- Bladesworn Wraith's Belt
					i(182274),	-- Bladesworn Conjurer's Cinch
					i(182283),	-- Bladesworn Tactician's Girdle
					i(182256),	-- Bladesworn Harbinger's Warbelt
				},
			}),
			q(61548, {	-- Set Me Free
				["provider"] = { "n", 172573 },	-- Khaliiq
				["sourceQuests"] = { 60112 },	-- Cut to the Bone
				["coord"] = { 27.2, 45.2, MALDRAXXUS },
				["groups"] = {
					i(181785),	-- Ossein Key (QI!)
				},
			}),
			q(65165, {	-- Soul Support
				["provider"] = { "n", 183248 },	-- Construct Attendant
				["sourceQuests"] = { 62848 },	-- Conduits, What Are They For?
				["coord"] = { 37.9, 36.2, SEAT_OF_THE_PRIMUS },
				["timeline"] = { ADDED_9_1_5 },
				["groups"] = {
					follower(1263),	-- Emeni
				},
			}),
			q(62406, {	-- Staff of the Primus
				["provider"] = { "n", 161907 },	-- Baroness Draka
				["sourceQuests"] = { 59020 },	-- The Third Fall of Kel'Thuzad
				["coord"] = { 49.6, 50.6, SEAT_OF_THE_PRIMUS },
				["groups"] = LFR_WEAPON_GROUP,
			}),
			q(59678, {	-- Sustain, In Vain
				["provider"] = { "n", 165591 },	-- Alexandros Mograine <The Ashbringer>
				["sourceQuests"] = { 59653 },	-- Don't Cross Courage
			}),
			q(61145, {	-- Take The Fight To Them
				["provider"] = { "n", 161907 },	-- Baroness Draka
				["sourceQuests"] = { 61586 },	-- Machinations of War
				["coord"] = { 49.7, 50.7, SEAT_OF_THE_PRIMUS },
			}),
			q(61744, {	-- The Baron's Plan
				["provider"] = { "n", 172923 },	-- Kel'Thuzad
				["sourceQuests"] = { 61743 },	-- The Pupil Returns
				["coord"] = { 50.0, 52.0, 1652 },	-- Vault of Souls
			}),
			q(61761, {	-- The Better Part of Valor
				["provider"] = { "n", 173831 },	-- Balmedar
				["sourceQuests"] = { 61760 },	-- The Traitor Unmasked
				["coord"] = { 69.9, 27.0, MALDRAXXUS },
				["groups"] = {
					i(183847),	-- Acolyte's Guise (TOY!)
				},
			}),
			q(59916, {	-- The Butchers of Bastion
				["provider"] = { "n", 168743 },	-- Apolon
				["sourceQuests"] = { 59910 },	-- Fight and Flight
				["coord"] = { 35.3, 26.0, MALDRAXXUS },
			}),
			q(60098, {	-- The End is Now
				["provider"] = { "n", 166211 },	-- Alexandros Mograine
				["sourceQuests"] = { 61246 },	-- Power of the Chosen
				["coord"] = { 28.8, 38.2, MALDRAXXUS },
			}),
			q(61752, {	-- The Final Reagent
				["provider"] = { "n", 173492 },	-- Jor'dan the Powerful
				["sourceQuests"] = {
					61751,	-- Cage Free Spores
					61750,	-- Heart of the Forest
				},
				["coord"] = { 69.9, 32.7, MALDRAXXUS },
				["groups"] = {
					i(182270),	-- Bladesworn Conjurer's Slippers
					i(182252),	-- Bladesworn Harbinger's Stompers
					i(182279),	-- Bladesworn Tactician's Sabatons
					i(182261),	-- Bladesworn Wraith's Boots
					i(182679),	-- Bundle of Reagents (QI!)
				},
			}),
			q(59894, {	-- The Golden Dawn
				["provider"] = { "n", 161988 },	-- Alexandros Mograine
				["sourceQuests"] = { 59922 },	-- Do Not Forget
				["coord"] = { 49.0, 51.6, SEAT_OF_THE_PRIMUS },
				["groups"] = {
					i(181803),	-- Bladesworn Battle Standard
				},
			}),
			q(61748, {	-- The Hall of Tomes
				["provider"] = { "n", 172924 },	-- Baroness Ninadar
				["sourceQuests"] = {
					61746,	-- Cantrip Collections
					61747,	-- Errant Enchantments
				},
				["coord"] = { 66.3, 26.3, MALDRAXXUS },
				["groups"] = {
					i(182645),	-- Binding of the Banished One (QI!)
					i(182644),	-- Greater Wards and Barriers, Volume IV (QI!)
					i(182643),	-- Paths of the First Ones (QI!)
					i(182642),	-- Winged Arcanum (QI!)
				},
			}),
			q(63032, {	-- The Highlord Calls
				["provider"] = { "n", 161907 },	-- Baroness Draka
				["sourceQuests"] = { 59609 },	-- No Rest For the Dead
				["coord"] = { 49.7, 50.6, SEAT_OF_THE_PRIMUS },
			}),
			q(57648, {	-- The Impossible Plan
				["provider"] = { "n", 160518 },	-- Whisperer Vyn
				["sourceQuests"] = { 61323 },	-- See What You've Done
				["coord"] = { 50.7, 15.5, MALDRAXXUS },
			}),
			q(59700, {	-- The Last Labor
				["provider"] = { "n", 165716 },	-- Xandria <Paragon of Courage>
				["sourceQuests"] = { 59698 },	-- Wipe the Slate Clean
				["coord"] = { 30.0, 55.2, BASTION },
				["groups"] = {
					i(182271),	-- Bladesworn Conjurer's Gloves
					i(182253),	-- Bladesworn Harbinger's Crushers
					i(182280),	-- Bladesworn Tactician's Gauntlets
					i(182262),	-- Bladesworn Wraith's Stranglers
				},
			}),
			q(57778, {	-- The Maldraxxian Job
				["provider"] = { "n", 161907 },	-- Baroness Draka
				["sourceQuests"] = { 62169, },	-- Eyes to the Sky
				["coord"] = { 49.7, 50.6, SEAT_OF_THE_PRIMUS },
			}),
			q(57475, {	-- The Mantle Returned
				["provider"] = { "n", 173194 },	-- Alexandros Mograine
				["sourceQuests"] = { 57473 },	-- Prized Possession
				["coord"] = { 27.3, 23.8, MALDRAXXUS },
			}),
			q(59625, {	-- The Only Cure
				["provider"] = { "n", 161988 },	-- Alexandros Mograine
				["sourceQuests"] = { 58820 },	-- Bindings of Fleshcrafting
				["coord"] = { 49.0, 51.6, SEAT_OF_THE_PRIMUS },
				["description"] = "Requires Renown 11.",
			}),
			q(61227, {	-- The Other Foot
				["provider"] = { "n", 164646 },	-- Baroness Vashj
				["sourceQuests"] = {
					59265,	-- Prying Eyes
					57649,	-- Whisper of Hope
				},
				["coord"] = { 49.9, 17.8, MALDRAXXUS },
			}),
			q(61743, {	-- The Pupil Returns
				["provider"] = { "n", 173172 },	-- Balmedar
				["sourceQuests"] = { 61742 },	-- A Fitting Guise
				["coord"] = { 66.2, 32.1, MALDRAXXUS },
			}),
			q(63624, {	-- The Roads We Walk
				["provider"] = { "n", 177975 },	-- The Primus
				["sourceQuests"] = { 63623 },	-- Filling an Empty Throne
				["coord"] = { 49.7, 51.4, SEAT_OF_THE_PRIMUS },
				["lockCriteria"] = { 1, "questID", 63659 },	-- Dreadlords!
				["customCollect"] = "SL_COV_NEC",	-- Necrolord
				-- Not really a breadcrumb quest, but if you complete the chain NOT as Necrolord, you are unable to come back and do this quest
			}),
			q(62843, {	-- The Soul Contact
				["provider"] = { "n", 167748 },	-- Osbourne Black <Soul Warden>
				["sourceQuests"] = { 61397 },	-- Opportunity Strikes
				["coord"] = { 46.5, 42.2, SEAT_OF_THE_PRIMUS },
			}),
			q(59020, {	-- The Third Fall of Kel'Thuzad
				["provider"] = { "n", 174179 },	-- Baroness Draka
				["sourceQuests"] = { 58833 },	-- Calling in All Favors
				["coord"] = { 62.2, 41.0, MALDRAXXUS },
				["maps"] = { 1689 },	-- Maldraxxus (scenario version)
				["groups"] = {
					i(181822),	-- Armored War-Bred Tauralus (MOUNT!)
				},
			}),
			q(61760, {	-- The Traitor Unmasked
				["provider"] = { "n", 173172 },	-- Balmedar
				["sourceQuests"] = { 61759 },	-- A Helpful Hand
				["coord"] = { 52.5, 63.8, 1652 },	-- Vault of Souls
				["groups"] = {
					i(182269),	-- Bladesworn Conjurer's Tunic
					i(182251),	-- Bladesworn Harbinger's Chestguard
					i(182278),	-- Bladesworn Tactician's Hauberk
					i(182260),	-- Bladesworn Wraith's Jerkin
				},
			}),
			q(61739, {	-- The Wayward Baron
				["provider"] = { "n", 173172 },	-- Balmedar
				["sourceQuests"] = { 62388 },	-- House of Rituals
				["coord"] = { 49.7, 49.8, SEAT_OF_THE_PRIMUS },
				["description"] = "Requires Renown 20.",
			}),
			q(61594, {	-- This Way Out
				["provider"] = { "n", 172573 },	-- Khaliiq
				["sourceQuests"] = { 61569 },	-- Keys to the Ruin
				["coord"] = { 29.6, 44.0, MALDRAXXUS },
			}),
			q(60050, {	-- Trouble on the Western Front
				["provider"] = { "n", 168860 },	-- Kynthia
				["sourceQuests"] = {
					61412,	-- An Early End
					61180,	-- Burn Before Reading
					60510,	-- Descended
				},
				["coord"] = { 35.4, 26.5, MALDRAXXUS },
			}),
			q(59556, {	-- Welcome To Our House
				["provider"] = { "n", 158453 },	-- Baroness Draka
				["sourceQuests"] = { 58609 },	-- Taking The Seat
				["coord"] = { 49.5, 21.9, SEAT_OF_THE_PRIMUS },
			}),
			q(57649, {	-- Whisper of Hope
				["provider"] = { "n", 164619 },	-- Baroness Vashj
				["sourceQuests"] = { 58007 },	-- Eyes on the Problem
				["coord"] = { 50.8, 24.4, MALDRAXXUS },
				["groups"] = {
					i(172371),	-- Mark of Vashj (QI!)
				},
			}),
			q(59698, {	-- Wipe the Slate Clean
				["provider"] = { "n", 165716 },	-- Xandria <Paragon of Courage>
				["sourceQuests"] = {
					59659,	-- Aerial Absolution
					59678,	-- Sustain, In Vain
				},
				["coord"] = { 30.0, 55.2, BASTION },
			}),
			q(58523, {	-- You're Dead To Me
				["provider"] = { "n", 161461 },	-- The Accuser
				["sourceQuests"] = { 58504 },	-- Accusatory Missive
				["coord"] = { 72.0, 41.2, REVENDRETH },
			}),
			q(60111, {	-- Forging a Friendship
				["provider"] = { "n", 161905 },	-- Bonesmith Heirmir
				["sourceQuests"] = { 62406 },	-- Staff of the Primus
				["coord"] = { 42.8, 32.2, SEAT_OF_THE_PRIMUS },
				["groups"] = {
					follower(1262),	-- Bonesmith Heirmir
				},
			}),
			q(61333, {	-- Return Lost Souls (5 soul version)
				["provider"] = { "n", 167748 },	-- Osbourne Black <Soul Warden>
				["sourceQuests"] = { 59609 },	-- No Rest For the Dead
				["coord"] = { 46.5, 42.2, SEAT_OF_THE_PRIMUS },
				["timeline"] = { ADDED_9_0_2_LAUNCH, REMOVED_9_1_5 },
				["isWeekly"] = true,
			}),
			q(62864, {	-- Return Lost Souls (10 soul version)
				["provider"] = { "n", 167748 },	-- Osbourne Black <Soul Warden>
				-- ["sourceQuests"] = {  },	-- TODO
				["coord"] = { 46.5, 42.2, SEAT_OF_THE_PRIMUS },
				["description"] = "Requires Renown 15.",
				["timeline"] = { ADDED_9_0_2_LAUNCH, REMOVED_9_1_5 },
				["isWeekly"] = true,
			}),
			q(62865, {	-- Return Lost Souls (15 soul version)
				["provider"] = { "n", 167748 },	-- Osbourne Black <Soul Warden>
				-- ["sourceQuests"] = {  },	-- TODO
				["coord"] = { 46.5, 42.2, SEAT_OF_THE_PRIMUS },
				["description"] = "Requires Renown 24.",
				["timeline"] = { ADDED_9_0_2_LAUNCH, REMOVED_9_1_5 },
				["isWeekly"] = true,
			}),
			q(62866, {	-- Return Lost Souls (20 soul version)
				["provider"] = { "n", 167748 },	-- Osbourne Black <Soul Warden>
				["sourceQuests"] = { 62846 },	-- Sanctum Improvements
				["coord"] = { 46.5, 42.2, SEAT_OF_THE_PRIMUS },
				["description"] = "Requires Renown 32.",
				["isWeekly"] = true,
			}),
			q(65104, {	-- Return More Lost Souls
				["provider"] = { "n", 167748 },	-- Osbourne Black <Soul Warden>
				["sourceQuests"] = { 62866 },	-- Return Lost Souls
				["coord"] = { 46.5, 42.2, SEAT_OF_THE_PRIMUS },
				["repeatable"] = true,
			}),
		}),
	}),
})));

for _,g in ipairs({CONDUIT_GROUP,LFR_WEAPON_GROUP}) do
	for	_,t in ipairs(g) do
		t.customCollect = nil;
	end
end

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.SL, bubbleDownSelf({ ["timeline"] = { ADDED_9_0_2_LAUNCH } }, {
	n(NECROLORD,  bubbleDown({ ["customCollect"] = "SL_COV_NEC" }, {
		n(QUESTS, {
			-- Campaign quests
			q(62982),	-- triggers when searching the storeroom on "Gharmal's Tower" (#57530)
			q(62983),	-- triggers when searching the alchemical laboratory on "Gharmal's Tower" (#57530)
			--
			q(57622),	-- Triggered when completing 58609 'Taking the Seat' on a Skip+Necrolord character
			q(62752),	-- Triggered when completion 59609 'No Rest For the Dead'
			-- q(57602),	-- triggered after summoning Atticus in Maldraxxus for quest Supply Chain
			q(57615),	-- triggered after summoning Atticus/Neena in Maldraxxus (spellID 353995 & 351967)
			q(58434),	-- triggered when summoning Chordy in Ardenweald for #61510, "A Bountiful Haul"
			q(60783),	-- triggered when turning in #60722, "Tower Power"/Completing Campaign: Promises of the Praetor
			q(61516),	-- When completing 'Things They Leave Behind' (61511) for the first time
			q(63453),	-- triggers when turning in "Return Lost Souls" (spellID 348838 & 348841 & 348844 & 348847)
			q(61591),	-- Triggered after completing Specter Of War: Visectus (60283) for the first time
			q(62929),	-- Triggered when freeing Neena from cage to make "Every Dog Has Its Day" (questID 59615) available (spellID 345404)
			q(62247),	-- Triggered when Toothpick dug up a "Burried Chest"
			q(62290),	-- Triggered when turning in 'Corpse Run' (61523)
			q(62215),	-- Triggered when turning in Training Program (62216)
			q(59266),	-- triggered when i picked up the last eye for "Prying Eyes"
			q(60166),	-- Triggered after raising portcullis to access Miru Soulblossom in Etheric Vault
			-- Unknown
			--q(60773),	-- Renown 30/Channeling anima
			--q(60873),	-- Flying around in necrolord base
		}),
	})),
})));