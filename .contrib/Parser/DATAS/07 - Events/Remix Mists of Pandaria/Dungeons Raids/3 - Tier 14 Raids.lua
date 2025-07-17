-----------------------------------------------------
--     W O R L D   E V E N T S   M O D U L E       --
-----------------------------------------------------
TIER_14_RAIDS = createHeader({
	readable = "Tier 14 Raids",
	constant = "TIER_14_RAIDS",
	minilist_ignore = true,
	icon = [[~_.asset("Category_D&R")]],
	text = {
		en = "Tier 14 Raids",
	},
});
local MAPS = {
	471,	-- Dais of Conquerors
	472,	-- The Repository
	473,	-- Forge of the Endless
	474,	-- Oratorium of the Voice
	475,	-- Heart of Fear
	456,	-- Terrace of Endless Spring
}
local mapped = function(t)
	t.maps = MAPS
	return t
end
root(ROOTS.WorldEvents, applyevent(EVENTS.REMIX_MOP, n(REMIX_MOP, bubbleDown({ ["timeline"] = { ADDED_10_2_7, REMOVED_MOP_REMIX_END } }, {
	n(RAIDS, {
		n(TIER_14_RAIDS, {
			mapped(d(DIFFICULTY.LEGACY_RAID.FINDER, bubbleDown({ ["modID"] = 0 }, {
				n(ARMOR, {
					filter(CLOTH, {
						-- MAGE
						i(213711),	-- Robe of the Burning Scroll
						i(213712),	-- Sandals of the Burning Scroll
						i(213713),	-- Gloves of the Burning Scroll
						i(213714),	-- Hood of the Burning Scroll
						i(213715),	-- Leggings of the Burning Scroll
						i(213716),	-- Shoulderpads of the Burning Scroll
						i(213717),	-- Cord of the Burning Scroll
						i(213718),	-- Bracers of the Burning Scroll
						-- PRIEST
						i(213851),	-- Guardian Serpent Raiment
						i(213852),	-- Guardian Serpent Treads
						i(213853),	-- Guardian Serpent Handwraps
						i(213854),	-- Guardian Serpent Cowl
						i(213855),	-- Guardian Serpent Pants
						i(213856),	-- Guardian Serpent Amice
						i(213857),	-- Guardian Serpent Belt
						i(213858),	-- Guardian Serpent Cuffs
						-- WARLOCK
						i(213923),	-- Sha-Skin Cuffs
						i(213924),	-- Sha-Skin Belt
						i(213925),	-- Sha-Skin Amice
						i(213926),	-- Sha-Skin Pants
						i(213927),	-- Sha-Skin Cowl
						i(213928),	-- Sha-Skin Handwraps
						i(213929),	-- Sha-Skin Treads
						i(213930),	-- Sha-Skin Raiment
					}),
					filter(LEATHER, {
						-- DRUID
						i(214142),	-- Eternal Blossom Bracers
						i(214143),	-- Eternal Blossom Tunic
						i(214144),	-- Eternal Blossom Boots
						i(214145),	-- Eternal Blossom Helm
						i(214146),	-- Eternal Blossom Gloves
						i(214147),	-- Eternal Blossom Belt
						i(214148),	-- Eternal Blossom Shoulderpads
						i(214149),	-- Eternal Blossom Leggings
						-- MONK
						i(214251),	-- Red Crane Pants
						i(214252),	-- Red Crane Mantle
						i(214253),	-- Red Crane Cinch
						i(214254),	-- Red Crane Handguards
						i(214255),	-- Red Crane Cap
						i(214256),	-- Red Crane Treads
						i(214257),	-- Red Crane Jerkin
						i(214258),	-- Red Crane Wraps
						-- ROGUE
						i(214315),	-- Legguards of the Thousandfold Blades
						i(214316),	-- Spaulders of the Thousandfold Blades
						i(214317),	-- Waistband of the Thousandfold Blades
						i(214318),	-- Grips of the Thousandfold Blades
						i(214319),	-- Cover of the Thousandfold Blades
						i(214320),	-- Footguards of the Thousandfold Blades
						i(214321),	-- Vest of the Thousandfold Blades
						i(214322),	-- Bindings of the Thousandfold Blades
					}),
					filter(MAIL, {
						-- HUNTER
						i(214562),	-- Yaungol Slayer's Wristguards
						i(214563),	-- Yaungol Slayer's Breastplate
						i(214564),	-- Yaungol Slayer's Footguards
						i(214565),	-- Yaungol Slayer's Helmet
						i(214566),	-- Yaungol Slayer's Grips
						i(214567),	-- Yaungol Slayer's Girdle
						i(214568),	-- Yaungol Slayer's Mantle
						i(214569),	-- Yaungol Slayer's Legwraps
						-- SHAMAN
						i(214647),	-- Firebird's Breastplate
						i(214646),	-- Firebird's Footguards
						i(214643),	-- Firebird's Girdle
						i(214644),	-- Firebird's Grips
						i(214645),	-- Firebird's Helmet
						i(214641),	-- Firebird's Legwraps
						i(214642),	-- Firebird's Mantle
						i(214648),	-- Firebird's Wristguards
					}),
					filter(PLATE, {
						-- DEATH KNIGHT
						i(214817),	-- Legplates of the Lost Catacomb
						i(214818),	-- Spaulders of the Lost Catacomb
						i(214819),	-- Greatbelt of the Lost Catacomb
						i(214820),	-- Handguards of the Lost Catacomb
						i(214821),	-- Greathelm of the Lost Catacomb
						i(214822),	-- Warboots of the Lost Catacomb
						i(214823),	-- Vambraces of the Lost Catacomb
						i(214824),	-- Battleplate of the Lost Catacomb
						-- PALADIN
						i(214897),	-- White Tiger Greaves
						i(214898),	-- White Tiger Shoulderguards
						i(214899),	-- White Tiger Waistguard
						i(214900),	-- White Tiger Grasp
						i(214901),	-- White Tiger Warhelm
						i(214902),	-- White Tiger Greatboots
						i(214903),	-- White Tiger Armguards
						i(214904),	-- White Tiger Chestguard
						-- WARRIOR
						i(214969),	-- Greatboots of Resounding Rings
						i(214970),	-- Armguards of Resounding Rings
						i(214971),	-- Greaves of Resounding Rings
						i(214972),	-- Warhelm of Resounding Rings
						i(214973),	-- Chestguard of Resounding Rings
						i(214974),	-- Grasp of Resounding Rings
						i(214975),	-- Shoulderguards of Resounding Rings
						i(214976),	-- Waistguard of Resounding Rings
					}),
				}),
				n(WEAPONS, {
					i(215582),	-- Blade of the Seven Stars (HoF LFR (1st wing) / ToES LFR)
					i(215584),	-- Blade of the Seven Stars (MSV LFR)
					i(210641),	-- Bo-Ris, Spear of Night
					i(215839),	-- Brazier of the Eternal Empire (MSV LFR / ToES LFR)
					i(215842),	-- Brazier of the Eternal Empire (HoF LFR)
					i(215555),	-- Crossbow of Forgotten Glory (HoF LFR / ToES LFR)
					i(215905),	-- Do-tharak, the Foebreaker (MSV LFR)
					i(215481),	-- Elegion, the Star Cleaver (ToES LFR)
					i(215528),	-- Fang Kung, Emperor's Legacy (MSV LFR / HoF LFR)
					i(215531),	-- Fang Kung, Emperor's Legacy (MSV LFR / HoF LFR)
					i(215847),	-- Fearspeaker's Warstaff (MSV LFR 2nd wing)
					i(215850),	-- Fearspeaker's Warstaff (ToES LFR)
					i(215636),	-- Fist of Shek'zeer (HoF LFR)
					i(215728),	-- Galvanized Stormcrusher (MSV LFR)
					i(215730),	-- Galvanized Stormcrusher (HoF LFR / ToES LFR)
					i(215632),	-- Gara'kal, Claw of the Spiritbinder (HoF LFR)
					i(215635),	-- Gara'kal, Claw of the Spiritbinder (HoF LFR)
					i(215851),	-- Gao-Rei, Staff of the Protector (MSV LFR / HoF LFR)
					i(216566),	-- Gaze of the Ancient (MSV LFR)
					i(216564),	-- Gaze of the Ancient
					i(215697),	-- Grand Imperial Rifle (HoF LFR)
					i(211160),	-- Greatsword of the Iron Legion
					i(215854),	-- Jin'ya, Orb of the Watercaller (MSV LFR / HoF LFR)
					i(215857),	-- Jin'ya, Orb of the Watercaller (MSV LFR / HoF LFR)
					i(215930),	-- Kilrak, Fangs of Terror (HoF LFR)
					i(215932),	-- Kilrak, Fangs of Terror (MSV LFR)
					i(215734),	-- Kri'tak, Scepter of the Swarm
					i(215737),	-- Kri'tak, Scepter of the Swarm (MSV LFR 1st wing)
					i(215934),	-- Loshan, Fear Incarnate (MSV LFR)
					i(215936),	-- Loshan, Fear Incarnate (MSV LFR)
					i(216531),	-- Protection of the Emperor (MSV LFR)
					i(215798),	-- Qiang's Unbreakable Polearm (HoF LFR)
					i(215801),	-- Qiang's Unbreakable Polearm (HoF LFR)
					i(215585),	-- Regail's Fulminating Blade (MSV LFR / ToES LFR)
					i(215588),	-- Regail's Fulminating Blade (HoF LFR)
					i(215925),	-- Scimitar of Seven Stars (ToeS LFR)
					i(215928),	-- Scimitar of Seven Stars (MSV LFR)
					i(215505),	-- Shin'ka, the Tyrant's Greataxe
					i(215591),	-- Soulsever (MSV LFR)
					i(215593),	-- Soulsever (HoF LFR)
					i(215975),	-- Starslicer (Terrace LFR or HoF LFR 1st wing)
					i(215978),	-- Starslicer (Gold: Blue Quality / Lei Shi & Tsulong => So ToES LFR?) (Alex: green have same itemID and was looted in HoF LFR 2nd wing)
					i(216560),	-- Steelskin, Qiang's Bulwark (MSV LFR)
					i(216562),	-- Steelskin, Qiang's Bulwark (MSV LFR)
					i(215693),	-- Taoren, the Malignant (HoF LFR)
					i(215696),	-- Taoren, the Malignant (HoF LFR)
					i(215731),	-- Tihan, Scepter of the Sleeper (MSV LFR)
					i(215997),	-- Torch of the Starspark (MSV LFR (1st wing))
					i(216000),	-- Torch of the Starspark (MSV LFR (1st wing) / HoF LFR)
					i(215843),	-- Waterspeaker's Staff
					i(215846),	-- Waterspeaker's Staff (MSV LFR)
					i(215671),	-- Zephyrcall Censer (MSV LFR / HoF LFR (2nd wing))
					i(215674),	-- Zephyrcall Censer (MSV LFR (1st wing))
				}),
			}))),
			mapped(d(DIFFICULTY.LEGACY_RAID.PLAYER10_NORMAL, bubbleDown({ ["modID"] = 0 }, {
				n(ARMOR, {
					filter(CLOTH, {
						-- MAGE
						i(213727),	-- Vestment of the Burning Scroll
						i(213728),	-- Slippers of the Burning Scroll
						i(213729),	-- Mitts of the Burning Scroll
						i(213730),	-- Crown of the Burning Scroll
						i(213731),	-- Trousers of the Burning Scroll
						i(213732),	-- Mantle of the Burning Scroll
						i(213733),	-- Sash of the Burning Scroll
						i(213734),	-- Wristwraps of the Burning Scroll
						-- PRIEST
						i(213843),	-- Timeworn Malevolent Mooncloth Bracers
						i(213844),	-- Timeworn Malevolent Mooncloth Cord
						i(213845),	-- Timeworn Malevolent Mooncloth Amice
						i(213846),	-- Timeworn Malevolent Mooncloth Pants
						i(213847),	-- Timeworn Malevolent Mooncloth Crown
						i(213848),	-- Timeworn Malevolent Mooncloth Gloves
						i(213849),	-- Timeworn Malevolent Mooncloth Boots
						i(213850),	-- Timeworn Malevolent Mooncloth Robe
						-- WARLOCK
						i(213931),	-- Sha-Skin Vestment
						i(213932),	-- Sha-Skin Slippers
						i(213933),	-- Sha-Skin Mitts
						i(213934),	-- Sha-Skin Crown
						i(213935),	-- Sha-Skin Trousers
						i(213936),	-- Sha-Skin Mantle
						i(213937),	-- Sha-Skin Sash
						i(213938),	-- Sha-Skin Wristwraps
					}),
					filter(LEATHER, {
						-- DRUID
						i(214158),	-- Eternal Blossom Wraps
						i(214159),	-- Eternal Blossom Jerkin
						i(214160),	-- Eternal Blossom Treads
						i(214161),	-- Eternal Blossom Cap
						i(214162),	-- Eternal Blossom Hands
						i(214163),	-- Eternal Blossom Cinch
						i(214164),	-- Eternal Blossom Mantle
						i(214165),	-- Eternal Blossom Pants
						-- MONK
						i(214243),	-- Red Crane Bindings
						i(214244),	-- Red Crane Vest
						i(214245),	-- Red Crane Footguards
						i(214246),	-- Red Crane Cover
						i(214247),	-- Red Crane Grips
						i(214248),	-- Red Crane Waistband
						i(214249),	-- Red Crane Spaulders
						i(214250),	-- Red Crane Legguards
						-- ROGUE
						i(214307),	-- Bracers of the Thousandfold Blades
						i(214308),	-- Tunic of the Thousandfold Blades
						i(214309),	-- Boots of the Thousandfold Blades
						i(214310),	-- Helm of the Thousandfold Blades
						i(214311),	-- Gloves of the Thousandfold Blades
						i(214312),	-- Belt of the Thousandfold Blades
						i(214313),	-- Shoulderpads of the Thousandfold Blades
						i(214314),	-- Leggings of the Thousandfold Blades
					}),
					filter(MAIL, {
						-- HUNTER
						i(214553),	-- Yaungol Slayer's Legguards
						i(214554),	-- Yaungol Slayer's Pauldrons
						i(214555),	-- Yaungol Slayer's Chain
						i(214556),	-- Yaungol Slayer's Gloves
						i(214557),	-- Yaungol Slayer's Headguard
						i(214558),	-- Yaungol Slayer's Sabatons
						i(214559),	-- Yaungol Slayer's Chestguard
						i(214560),	-- Yaungol Slayer's Armbands
						-- SHAMAN
						i(214633),	-- Firebird's Armbands
						i(214638),	-- Firebird's Chain
						i(214637),	-- Firebird's Gloves
						i(214636),	-- Firebird's Headguard
						i(214640),	-- Firebird's Legguards
						i(214639),	-- Firebird's Pauldrons
						i(214634),	-- Firebird's Robeguard
						i(214635),	-- Firebird's Sabatons
					}),
					filter(PLATE, {
						-- DEATH KNIGHT
						i(214825),	-- Chestguard of the Lost Catacomb
						i(214826),	-- Armguards of the Lost Catacomb
						i(214827),	-- Greatboots of the Lost Catacomb
						i(214828),	-- Warhelm of the Lost Catacomb
						i(214829),	-- Grasp of the Lost Catacomb
						i(214830),	-- Waistguard of the Lost Catacomb
						i(214831),	-- Shoulderguards of the Lost Catacomb
						i(214832),	-- Greaves of the Lost Catacomb
						-- PALADIN
						i(214889),	-- White Tiger Battleplate
						i(214890),	-- White Tiger Vambraces
						i(214891),	-- White Tiger Warboots
						i(214892),	-- White Tiger Greathelm
						i(214893),	-- White Tiger Handguards
						i(214894),	-- White Tiger Greatbelt
						i(214895),	-- White Tiger Spaulders
						i(214896),	-- White Tiger Legplates
						-- WARRIOR
						i(214961),	-- Greatbelt of Resounding Rings
						i(214962),	-- Spaulders of Resounding Rings
						i(214963),	-- Handguards of Resounding Rings
						i(214964),	-- Battleplate of Resounding Rings
						i(214965),	-- Greathelm of Resounding Rings
						i(214966),	-- Legplates of Resounding Rings
						i(214967),	-- Vambraces of Resounding Rings
						i(214968),	-- Warboots of Resounding Rings
					}),
				}),
				n(WEAPONS, {
					i(215583),	-- Blade of the Seven Stars
					i(215791),	-- Bo-Ris, Spear of Night
					i(215840),	-- Brazier of the Eternal Empire (player confirmed)
					i(215556),	-- Crossbow of Forgotten Glory
					i(215906),	-- Do-tharak, the Foebreaker (player confirmed)
					i(215482),	-- Elegion, the Star Cleaver
					i(215529),	-- Fang Kung, Emperor's Legacy
					i(215848),	-- Fearspeaker's Warstaff (player confirmed)
					i(215637),	-- Fist of Shek'zeer
					i(215727),	-- Galvanized Stormcrusher (player confirmed)
					i(216563),	-- Gaze of the Ancient (not on wowhead)
					i(215633),	-- Gara'kal, Claw of the Spiritbinder
					i(215852),	-- Gao-Rei, Staff of the Protector (player confirmed)
					i(215698),	-- Grand Imperial Rifle (player confirmed)
					i(215968),	-- Greatsword of the Iron Legion
					i(215855),	-- Jin'ya, Orb of the Watercaller
					i(215929),	-- Kilrak, Fangs of Terror (MSV normal)
					i(215735),	-- Kri'tak, Scepter of the Swarm (confirmed 23.05.2024)
					i(215935),	-- Loshan, Fear Incarnate (MSV normal)
					i(216529),	-- Protection of the Emperor
					i(215799),	-- Qiang's Unbreakable Polearm (player confirmed)
					i(215586),	-- Regail's Fulminating Blade
					i(215926),	-- Scimitar of Seven Stars (MSV normal)
					i(215506),	-- Shin'ka, the Tyrant's Greataxe (player confirmed)
					i(215592),	-- Soulsever
					i(215976),	-- Starslicer (HoF normal) (player confirmed)
					i(216561),	-- Steelskin, Qiang's Bulwark
					i(215694),	-- Taoren, the Malignant
					i(215732),	-- Tihan, Scepter of the Sleeper
					i(215998),	-- Torch of the Starspark (MSV normal)
					i(215844),	-- Waterspeaker's Staff
					i(215672),	-- Zephyrcall Censer (player confirmed)
				}),
			}))),
			mapped(d(DIFFICULTY.LEGACY_RAID.PLAYER10_HEROIC, bubbleDown({ ["modID"] = 0 }, {
				n(ARMOR, {
					filter(CLOTH, {
						-- MAGE
						i(213719),	-- Cuffs of the Burning Scroll
						i(213720),	-- Belt of the Burning Scroll
						i(213721),	-- Amice of the Burning Scroll
						i(213722),	-- Pants of the Burning Scroll
						i(213723),	-- Cowl of the Burning Scroll
						i(213724),	-- Handwraps of the Burning Scroll
						i(213725),	-- Treads of the Burning Scroll
						i(213726),	-- Raiment of the Burning Scroll
						-- PRIEST
						i(213859),	-- Timeworn Dreadful Mooncloth Wristwraps
						i(213860),	-- Timeworn Dreadful Mooncloth Sash
						i(213861),	-- Timeworn Dreadful Mooncloth Mantle
						i(213862),	-- Timeworn Dreadful Mooncloth Trousers
						i(213863),	-- Timeworn Dreadful Mooncloth Crest
						i(213864),	-- Timeworn Dreadful Mooncloth Mitts
						i(213865),	-- Timeworn Dreadful Mooncloth Slippers
						i(213866),	-- Timeworn Dreadful Mooncloth Vestment
						-- WARLOCK
						i(213915),	-- Sha-Skin Robe
						i(213916),	-- Sha-Skin Sandals
						i(213917),	-- Sha-Skin Gloves
						i(213918),	-- Sha-Skin Hood
						i(213919),	-- Sha-Skin Leggings
						i(213920),	-- Sha-Skin Shoulderpads
						i(213921),	-- Sha-Skin Cord
						i(213922),	-- Sha-Skin Bracers
					}),
					filter(LEATHER, {
						-- DRUID
						i(214150),	-- Eternal Blossom Legguards
						i(214151),	-- Eternal Blossom Spaulders
						i(214152),	-- Eternal Blossom Waistband
						i(214153),	-- Eternal Blossom Grips
						i(214154),	-- Eternal Blossom Cover
						i(214155),	-- Eternal Blossom Footguards
						i(214156),	-- Eternal Blossom Vest
						i(214157),	-- Eternal Blossom Bindings
						-- MONK
						i(214215),	-- Red Crane Leggings
						i(214216),	-- Red Crane Shoulderpads
						i(214217),	-- Red Crane Belt
						i(214218),	-- Red Crane Gloves
						i(214219),	-- Red Crane Helm
						i(214220),	-- Red Crane Boots
						i(214221),	-- Red Crane Tunic
						i(214222),	-- Red Crane Bracers
						-- ROGUE
						i(214323),	-- Wraps of the Thousandfold Blades
						i(214324),	-- Jerkin of the Thousandfold Blades
						i(214325),	-- Treads of the Thousandfold Blades
						i(214326),	-- Cap of the Thousandfold Blades
						i(214327),	-- Handguards of the Thousandfold Blades
						i(214328),	-- Cinch of the Thousandfold Blades
						i(214329),	-- Mantle of the Thousandfold Blades
						i(214330),	-- Pants of the Thousandfold Blades
					}),
					filter(MAIL, {
						-- HUNTER
						i(214570),	-- Yaungol Slayer's Leggings
						i(214571),	-- Yaungol Slayer's Spaulders
						i(214572),	-- Yaungol Slayer's Belt
						i(214573),	-- Yaungol Slayer's Gauntlets
						i(214574),	-- Yaungol Slayer's Helm
						i(214575),	-- Yaungol Slayer's Boots
						i(214576),	-- Yaungol Slayer's Hauberk
						i(214577),	-- Yaungol Slayer's Bracers
						-- SHAMAN
						i(214654),	-- Firebird's Belt
						i(214651),	-- Firebird's Boots
						i(214649),	-- Firebird's Bracers
						i(214653),	-- Firebird's Gauntlets
						i(214650),	-- Firebird's Hauberk
						i(214652),	-- Firebird's Helm
						i(214656),	-- Firebird's Leggings
						i(214655),	-- Firebird's Spaulders
					}),
					filter(PLATE, {
						-- DEATH KNIGHT
						i(214833),	-- Legguards of the Lost Catacomb
						i(214834),	-- Pauldrons of the Lost Catacomb
						i(214835),	-- Girdle of the Lost Catacomb
						i(214836),	-- Gauntlets of the Lost Catacomb
						i(214837),	-- Helm of the Lost Catacomb
						i(214838),	-- Sabatons of the Lost Catacomb
						i(214839),	-- Bracers of the Lost Catacomb
						i(214840),	-- Breastplate of the Lost Catacomb
						-- PALADIN
						i(214905),	-- White Tiger Sabatons
						i(214906),	-- White Tiger Bracers
						i(214907),	-- White Tiger Legguards
						i(214908),	-- White Tiger Helm
						i(214909),	-- White Tiger Breastplate
						i(214910),	-- White Tiger Gauntlets
						i(214911),	-- White Tiger Pauldrons
						i(214912),	-- White Tiger Girdle
						-- WARRIOR
						i(214977),	-- Girdle of Resounding Rings
						i(214978),	-- Pauldrons of Resounding Rings
						i(214979),	-- Crushers of Resounding Rings
						i(214980),	-- Breastplate of Resounding Rings
						i(214981),	-- Helm of Resounding Rings
						i(214982),	-- Legguards of Resounding Rings
						i(214983),	-- Bracers of Resounding Rings
						i(214984),	-- Sabatons of Resounding Rings
					}),
				}),
				n(WEAPONS, {
					i(215581),	-- Blade of the Seven Stars
					i(215792),	-- Bo-Ris, Spear of Night
					i(215841),	-- Brazier of the Eternal Empire
					i(215557),	-- Crossbow of Forgotten Glory (MSV HC)
					i(215907),	-- Do-tharak, the Foebreaker
					i(215483),	-- Elegion, the Star Cleaver
					i(215530),	-- Fang Kung, Emperor's Legacy
					i(215849),	-- Fearspeaker's Warstaff
					i(215638),	-- Fist of Shek'zeer
					i(215729),	-- Galvanized Stormcrusher
					i(215853),	-- Gao-Rei, Staff of the Protector
					i(215634),	-- Gara'kal, Claw of the Spiribinder
					i(216565),	-- Gaze of the Ancient (MSV HC)
					i(215698),	-- Grand Imperial Rifle (HoF HC, player confirmed as HC drop)
					i(215969),	-- Greatsword of the Iron Legion
					i(215856),	-- Jin'ya, Orb of the Watercaller
					i(215931),	-- Kilrak, Fangs of Terror
					i(215736),	-- Kri'tak, Scepter of the Swarm
					i(215933),	-- Loshan, Fear Incarnate
					i(216532),	-- Protection of the Emperor
					i(215800),	-- Qiang's Unbreakable Polearm
					i(215587),	-- Regail's Fulminating Blade
					i(215927),	-- Scimitar of Seven Stars
					i(215507),	-- Shin'ka, the Tyrant's Greataxe
					i(215589),	-- Soulsever (HoF HC)
					i(215977),	-- Star Slicer (Unique!)
					i(216559),	-- Steelskin, Qiang's Bulwark
					i(215695),	-- Taoren, the Malignant (MSV HC)
					i(215733),	-- Tihan, Scepter of the Sleeper
					i(215999),	-- Torch of the Starspark
					i(215845),	-- Waterspeaker's Staff (MSV HC)
					i(215673),	-- Zephyrcall Censer (MSV HC / HoF HC)
				}),
			}))),
			inst(317, {	-- Mogu'shan Vaults
				["isRaid"] = true,
				["coord"] = { 59.6, 39.1, KUN_LAI_SUMMIT },
				["maps"] = {
					471,	-- Dais of Conquerors
					472,	-- The Repository
					473,	-- Forge of the Endless
				},
				["g"] = {
					n(ACHIEVEMENTS, {
						ach(19946, {	-- Raid Finder: Mogu'shan Vaults
							crit(65677, {	-- The Stone Guard
								["_encounter"] = { 679, DIFFICULTY.LEGACY_RAID.FINDER },
							}),
							crit(65678, {	-- Feng the Accursed
								["_encounter"] = { 689, DIFFICULTY.LEGACY_RAID.FINDER },
							}),
							crit(65679, {	-- Gara'jal the Spiritbinder
								["_encounter"] = { 682, DIFFICULTY.LEGACY_RAID.FINDER },
							}),
							crit(65681, {	-- The Spirit Kings
								["_encounter"] = { 687, DIFFICULTY.LEGACY_RAID.FINDER },
							}),
							crit(65680, {	-- Elegon
								["_encounter"] = { 726, DIFFICULTY.LEGACY_RAID.FINDER },
							}),
							crit(65682, {	-- Will of the Emperor
								["_encounter"] = { 677, DIFFICULTY.LEGACY_RAID.FINDER },
							}),
						}),
						ach(19947, {	-- Mogu'shan Vaults
							crit(65683, {	-- The Stone Guard
								["_encounter"] = { 679, DIFFICULTY.LEGACY_RAID.PLAYER10_NORMAL },
							}),
							crit(65684, {	-- Feng the Accursed
								["_encounter"] = { 689, DIFFICULTY.LEGACY_RAID.PLAYER10_NORMAL },
							}),
							crit(65685, {	-- Gara'jal the Spiritbinder
								["_encounter"] = { 682, DIFFICULTY.LEGACY_RAID.PLAYER10_NORMAL },
							}),
							crit(65686, {	-- The Spirit Kings
								["_encounter"] = { 687, DIFFICULTY.LEGACY_RAID.PLAYER10_NORMAL },
							}),
							crit(65687, {	-- Elegon
								["_encounter"] = { 726, DIFFICULTY.LEGACY_RAID.PLAYER10_NORMAL },
							}),
							crit(65688, {	-- Will of the Emperor
								["_encounter"] = { 677, DIFFICULTY.LEGACY_RAID.PLAYER10_NORMAL },
							}),
						}),
						ach(19948, {	-- Heroic: Mogu'shan Vaults
							crit(65689, {	-- The Stone Guard
								["_encounter"] = { 679, DIFFICULTY.LEGACY_RAID.PLAYER10_HEROIC },
							}),
							crit(65690, {	-- Feng the Accursed
								["_encounter"] = { 689, DIFFICULTY.LEGACY_RAID.PLAYER10_HEROIC },
							}),
							crit(65691, {	-- Gara'jal the Spiritbinder
								["_encounter"] = { 682, DIFFICULTY.LEGACY_RAID.PLAYER10_HEROIC },
							}),
							crit(65692, {	-- The Spirit Kings
								["_encounter"] = { 687, DIFFICULTY.LEGACY_RAID.PLAYER10_HEROIC },
							}),
							crit(65693, {	-- Elegon
								["_encounter"] = { 726, DIFFICULTY.LEGACY_RAID.PLAYER10_HEROIC },
							}),
							crit(65694, {	-- Will of the Emperor
								["_encounter"] = { 677, DIFFICULTY.LEGACY_RAID.PLAYER10_HEROIC },
							}),
						}),
					}),
					d(DIFFICULTY.LEGACY_RAID.FINDER, {
						header(HEADERS.Achievement, 6458, {	-- Guardians of Mogu'shan
							e(679, {	-- The Stone Guard
								["crs"] = {
									60047,	-- Amethyst Guardian
									60051,	-- Cobalt Guardian
									60043,	-- Jade Guardian
									59915,	-- Jasper Guardian
								},
							}),
							e(689, {	-- Feng the Accursed
								["crs"] = { 60009 },	-- Feng the Accursed
							}),
							e(682, {	-- Gara'jal the Spiritbinder
								["crs"] = { 60143 },	-- Gara'jal the Spiritbinder
							}),
						}),
						header(HEADERS.Achievement, 6844, {	-- The Vault of Mysteries
							e(687, {	-- The Spirit Kings
								["crs"] = {
									60708,	-- Meng the Demented
									60709,	-- Qiang the Merciless
									60710,	-- Subetai the Swift
									60701,	-- Zian of the Endless Shadow
								},
							}),
							e(726, {	-- Elegon
								["crs"] = { 60410 },	-- Elegon
							}),
							e(677, {	-- Will of the Emperor
								["crs"] = {
									60400,	-- Jan-xi <Emperor's Open Hand>
									60399,	-- Qin-xi <Emperor's Closed Fist>
								},
							}),
						}),
					}),
					d(DIFFICULTY.LEGACY_RAID.PLAYER10_NORMAL, {
						e(679, {	-- The Stone Guard
							["crs"] = {
								60047,	-- Amethyst Guardian
								60051,	-- Cobalt Guardian
								60043,	-- Jade Guardian
								59915,	-- Jasper Guardian
							},
						}),
						e(689, {	-- Feng the Accursed
							["crs"] = { 60009 },	-- Feng the Accursed
						}),
						e(682, {	-- Gara'jal the Spiritbinder
							["crs"] = { 60143 },	-- Gara'jal the Spiritbinder
						}),
						e(687, {	-- The Spirit Kings
							["crs"] = {
								60708,	-- Meng the Demented
								60709,	-- Qiang the Merciless
								60710,	-- Subetai the Swift
								60701,	-- Zian of the Endless Shadow
							},
						}),
						e(726, {	-- Elegon
							["crs"] = { 60410 },	-- Elegon
						}),
						e(677, {	-- Will of the Emperor
							["crs"] = {
								60400,	-- Jan-xi <Emperor's Open Hand>
								60399,	-- Qin-xi <Emperor's Closed Fist>
							},
						}),
					}),
					d(DIFFICULTY.LEGACY_RAID.PLAYER10_HEROIC, {
						e(679, {	-- The Stone Guard
							["crs"] = {
								60047,	-- Amethyst Guardian
								60051,	-- Cobalt Guardian
								60043,	-- Jade Guardian
								59915,	-- Jasper Guardian
							},
						}),
						e(689, {	-- Feng the Accursed
							["crs"] = { 60009 },	-- Feng the Accursed
						}),
						e(682, {	-- Gara'jal the Spiritbinder
							["crs"] = { 60143 },	-- Gara'jal the Spiritbinder
						}),
						e(687, {	-- The Spirit Kings
							["crs"] = {
								60708,	-- Meng the Demented
								60709,	-- Qiang the Merciless
								60710,	-- Subetai the Swift
								60701,	-- Zian of the Endless Shadow
							},
						}),
						e(726, {	-- Elegon
							["crs"] = { 60410 },	-- Elegon
						}),
						e(677, {	-- Will of the Emperor
							["crs"] = {
								60400,	-- Jan-xi <Emperor's Open Hand>
								60399,	-- Qin-xi <Emperor's Closed Fist>
							},
						}),
					}),
				},
			}),
			inst(330, {	-- Heart of Fear
				["isRaid"] = true,
				["coord"] = { 39.0, 34.9, DREAD_WASTES },	-- Heart of Fear
				["maps"] = {
					474,	-- Oratorium of the Voice
					475,	-- Heart of Fear
				},
				["g"] = {
					n(ACHIEVEMENTS, {
						ach(19949, {	-- Raid Finder: Heart of Fear
							crit(65696, {	-- Imperial Vizier Zor'lok
								["_encounter"] = { 745, DIFFICULTY.LEGACY_RAID.FINDER },
							}),
							crit(65695, {	-- Blade Lord Ta'yak
								["_encounter"] = { 744, DIFFICULTY.LEGACY_RAID.FINDER },
							}),
							crit(65697, {	-- Garalon
								["_encounter"] = { 713, DIFFICULTY.LEGACY_RAID.FINDER },
							}),
							crit(65698, {	-- Wind Lord Mel'jarak
								["_encounter"] = { 741, DIFFICULTY.LEGACY_RAID.FINDER },
							}),
							crit(65699, {	-- Amber-Shaper Un'sok
								["_encounter"] = { 737, DIFFICULTY.LEGACY_RAID.FINDER },
							}),
							crit(65700, {	-- Grand Empress Shek'zeer
								["_encounter"] = { 743, DIFFICULTY.LEGACY_RAID.FINDER },
							}),
						}),
						ach(19950, {	-- Heart of Fear
							crit(65703, {	-- Imperial Vizier Zor'lok
								["_encounter"] = { 745, DIFFICULTY.LEGACY_RAID.PLAYER10_NORMAL },
							}),
							crit(65706, {	-- Blade Lord Ta'yak
								["_encounter"] = { 744, DIFFICULTY.LEGACY_RAID.PLAYER10_NORMAL },
							}),
							crit(65705, {	-- Garalon
								["_encounter"] = { 713, DIFFICULTY.LEGACY_RAID.PLAYER10_NORMAL },
							}),
							crit(65702, {	-- Wind Lord Mel'jarak
								["_encounter"] = { 741, DIFFICULTY.LEGACY_RAID.PLAYER10_NORMAL },
							}),
							crit(65701, {	-- Amber-Shaper Un'sok
								["_encounter"] = { 737, DIFFICULTY.LEGACY_RAID.PLAYER10_NORMAL },
							}),
							crit(65704, {	-- Grand Empress Shek'zeer
								["_encounter"] = { 743, DIFFICULTY.LEGACY_RAID.PLAYER10_NORMAL },
							}),
						}),
						ach(19951, {	-- Heroic: Heart of Fear
							crit(65707, {	-- Imperial Vizier Zor'lok
								["_encounter"] = { 745, DIFFICULTY.LEGACY_RAID.PLAYER10_HEROIC },
							}),
							crit(65708, {	-- Blade Lord Ta'yak
								["_encounter"] = { 744, DIFFICULTY.LEGACY_RAID.PLAYER10_HEROIC },
							}),
							crit(65709, {	-- Garalon
								["_encounter"] = { 713, DIFFICULTY.LEGACY_RAID.PLAYER10_HEROIC },
							}),
							crit(65710, {	-- Wind Lord Mel'jarak
								["_encounter"] = { 741, DIFFICULTY.LEGACY_RAID.PLAYER10_HEROIC },
							}),
							crit(65711, {	-- Amber-Shaper Un'sok
								["_encounter"] = { 737, DIFFICULTY.LEGACY_RAID.PLAYER10_HEROIC },
							}),
							crit(65712, {	-- Grand Empress Shek'zeer
								["_encounter"] = { 743, DIFFICULTY.LEGACY_RAID.PLAYER10_HEROIC },
							}),
						}),
					}),
					d(DIFFICULTY.LEGACY_RAID.FINDER, {
						header(HEADERS.Achievement, 6718, {	-- The Dread Approach
							e(745, {	-- Imperial Vizier Zor'lok
								["crs"] = { 62980 },	-- Imperial Vizier Zor'lok
							}),
							e(744, {	-- Blade Lord Ta'yak
								["crs"] = { 62543 },	-- Blade Lord Ta'yak
							}),
							e(713, {	-- Garalon
								["crs"] = {
									62164,	-- Garalon	-- Maybe Outside Version
									63191 ,	-- Garalon	-- In Raid Version
								},
							}),
						}),
						header(HEADERS.Achievement, 6845, {	-- Nightmare of Shek'zeer
							e(741, {	-- Wind Lord Mel'jarak
								["crs"] = { 62397 },	-- Wind Lord Mel'jarak
							}),
							e(737, {	-- Amber-Shaper Un'sok
								["crs"] = { 62511 },	-- Amber-Shaper Un'sok
							}),
							e(743, {	-- Grand Empress Shek'zeer
								["crs"] = { 62837 },	-- Grand Empress Shek'zeer
							}),
						}),
					}),
					d(DIFFICULTY.LEGACY_RAID.PLAYER10_NORMAL, {
						e(745, {	-- Imperial Vizier Zor'lok
							["crs"] = { 62980 },	-- Imperial Vizier Zor'lok
						}),
						e(744, {	-- Blade Lord Ta'yak
							["crs"] = { 62543 },	-- Blade Lord Ta'yak
						}),
						e(713, {	-- Garalon
							["crs"] = { 62164 },	-- Garalon
						}),
						e(741, {	-- Wind Lord Mel'jarak
							["crs"] = { 62397 },	-- Wind Lord Mel'jarak
						}),
						e(737, {	-- Amber-Shaper Un'sok
							["crs"] = { 62511 },	-- Amber-Shaper Un'sok
						}),
						e(743, {	-- Grand Empress Shek'zeer
							["crs"] = { 62837 },	-- Grand Empress Shek'zeer
						}),
					}),
					d(DIFFICULTY.LEGACY_RAID.PLAYER10_HEROIC, {
						e(745, {	-- Imperial Vizier Zor'lok
							["crs"] = { 62980 },	-- Imperial Vizier Zor'lok
						}),
						e(744, {	-- Blade Lord Ta'yak
							["crs"] = { 62543 },	-- Blade Lord Ta'yak
						}),
						e(713, {	-- Garalon
							["crs"] = { 62164 },	-- Garalon
						}),
						e(741, {	-- Wind Lord Mel'jarak
							["crs"] = { 62397 },	-- Wind Lord Mel'jarak
						}),
						e(737, {	-- Amber-Shaper Un'sok
							["crs"] = { 62511 },	-- Amber-Shaper Un'sok
						}),
						e(743, {	-- Grand Empress Shek'zeer
							["crs"] = { 62837 },	-- Grand Empress Shek'zeer
						}),
					}),
				},
			}),
			inst(320, {	-- Terrace of Endless Spring
				["isRaid"] = true,
				["coord"] = { 48.4, 61.4, THE_VEILED_STAIR },
				["maps"] = { 456 },	-- Terrace of Endless Spring
				["g"] = {
					n(ACHIEVEMENTS, {
						ach(19952, {	-- Raid Finder: Terrace of Endless Spring
							crit(65713, {	-- Protectors of the Endless
								["_encounter"] = { 683, DIFFICULTY.LEGACY_RAID.FINDER },
							}),
							crit(65714, {	-- Tsulong
								["_encounter"] = { 742, DIFFICULTY.LEGACY_RAID.FINDER },
							}),
							crit(65715, {	-- Lei Shi
								["_encounter"] = { 729, DIFFICULTY.LEGACY_RAID.FINDER },
							}),
							crit(65716, {	-- Sha of Fear
								["_encounter"] = { 709, DIFFICULTY.LEGACY_RAID.FINDER },
							}),
						}),
						ach(19953, {	-- Terrace of Endless Spring
							crit(65717, {	-- Protectors of the Endless
								["_encounter"] = { 683, DIFFICULTY.LEGACY_RAID.PLAYER10_NORMAL },
							}),
							crit(65718, {	-- Tsulong
								["_encounter"] = { 742, DIFFICULTY.LEGACY_RAID.PLAYER10_NORMAL },
							}),
							crit(65719, {	-- Lei Shi
								["_encounter"] = { 729, DIFFICULTY.LEGACY_RAID.PLAYER10_NORMAL },
							}),
							crit(65720, {	-- Sha of Fear
								["_encounter"] = { 709, DIFFICULTY.LEGACY_RAID.PLAYER10_NORMAL },
							}),
						}),
						ach(19954, {	-- Heroic: Terrace of Endless Spring
							crit(65717, {	-- Protectors of the Endless
								["_encounter"] = { 683, DIFFICULTY.LEGACY_RAID.PLAYER10_HEROIC },
							}),
							crit(65721, {	-- Tsulong
								["_encounter"] = { 742, DIFFICULTY.LEGACY_RAID.PLAYER10_HEROIC },
							}),
							crit(65722, {	-- Lei Shi
								["_encounter"] = { 729, DIFFICULTY.LEGACY_RAID.PLAYER10_HEROIC },
							}),
							crit(65723, {	-- Sha of Fear
								["_encounter"] = { 709, DIFFICULTY.LEGACY_RAID.PLAYER10_HEROIC },
							}),
						}),
					}),
					d(DIFFICULTY.LEGACY_RAID.FINDER, {
						header(HEADERS.Achievement, 6689, {	-- Terrace of Endless Spring
							e(683, {	-- Protectors of the Endless
								["crs"] = {
									60586,	-- Elder Asani
									60585,	-- Elder Regail
									60583,	-- Protector Kaolan
								},
							}),
							e(742, {	-- Tsulong
								["crs"] = { 62442 },	-- Tsulong
							}),
							e(729, {	-- Lei Shi
								["crs"] = { 62983 },	-- Lei Shi
							}),
							e(709, {	-- Sha of Fear
								["crs"] = { 60999 },	-- Sha of Fear
							}),
						}),
					}),
					d(DIFFICULTY.LEGACY_RAID.PLAYER10_NORMAL, {
						e(683, {	-- Protectors of the Endless
							["crs"] = {
								60583,	-- Protector Kaolan
								60586,	-- Elder Asani
								60585,	-- Elder Regail
							},
						}),
						e(742, {	-- Tsulong
							["crs"] = { 62442 },	-- Tsulong
						}),
						e(729, {	-- Lei Shi
							["crs"] = { 62983 },	-- Lei Shi
						}),
						e(709, {	-- Sha of Fear
							["crs"] = { 60999 },	-- Sha of Fear
						}),
					}),
					d(DIFFICULTY.LEGACY_RAID.PLAYER10_HEROIC, {
						e(683, {	-- Protectors of the Endless
							["crs"] = {
								60583,	-- Protector Kaolan
								60586,	-- Elder Asani
								60585,	-- Elder Regail
							},
						}),
						e(742, {	-- Tsulong
							["crs"] = { 62442 },	-- Tsulong
						}),
						e(729, {	-- Lei Shi
							["crs"] = { 62983 },	-- Lei Shi
						}),
						e(709, {	-- Sha of Fear
							["crs"] = { 60999 },	-- Sha of Fear
						}),
					}),
				},
			}),
		}),
	}),
}))));