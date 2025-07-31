---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
local RARE_GROUP_ONE = {
	193664,	-- Ancient Protector
	193220,	-- Broodweaver Araznae
	187745,	-- Disoriented Watcher
	193214,	-- Forgotten Creation
	196165,	-- Gethdazr
	193688,	-- Phenran
	193188,	-- Seeker Teryk
	201555,	-- Srivantor
	201554,	-- Unstable Arcanogolem
};
local RARE_GROUP_TWO = {
	193178,	-- Blightfur
	193128,	-- Blightpaw the Depraved
	197356,	-- High Shaman Rotknuckle
};
local RARE_GROUP_THREE = {
	193704,	-- Honmor
	186827,	-- Magmaton
	190244,	-- Mahg the Trampler
	193118,	-- O'nank Shorescour
	193235,	-- Oshigol
	193149,	-- Skag the Thrower
	184456,	-- Spellforged Brute
	194763,	-- Tenmod
};
local RARE_GROUP_FOUR = {
	194392,	-- Brackle
	193226,	-- Gorjo the Crab Shackler
	193241,	-- Lord Epochbrgl <Time-Lost>
	193152,	-- Massive Magmashell
	193118,	-- O'nank Shorescour
	193181,	-- Skewersnout <Raypier of the Deep>
	193634,	-- Swog'ranka <Lunker>
};
local RARE_GROUP_FIVE = {
	190991,	-- Char
	193658,	-- Corrupted Proto-Dragon
	201557,	-- Graniteclaw
	187209,	-- Klozicc the Ascended
	193668,	-- Lookout Mordren
	201558,	-- Malgain Rockknell
	193173,	-- Mikrin of the Raging Winds
	193669,	-- Prozela Galeshot <Stormcaller Headmaster>
	193215,	-- Scaleseeker Mezeri
	201545,	-- Shapemaster Za'lani
	201559,	-- Shiobhan Waterborn
	193165,	-- Sparkspitter Vrak
	193171,	-- Terillod the Devout
	191354,	-- Ty'foon the Ascended
	201556,	-- Waterpots <The Splasher>
};
local RARE_GROUP_DRAGONKIN = {
	193243,	-- Acrosoth
	187111,	-- Ancient Hornswog
	193256,	-- Nulltheria the Void Gazer
	193143,	-- Razk'vex the Untamed
	196010,	-- Researcher Sneakwing <The Sundered Flame>
	193722,	-- Tomnu
};
local RARE_GROUP_SPECTRAL = {
	193178,	-- Blightfur
	193691,	-- Fisherman Tinnak <Angered Ghost>
	193154,	-- Forgotten Gryphon
	193256,	-- Nulltheria the Void Gazer
	187559,	-- Shade of Grief
};
local RARE_GROUP_GHENDISH = {
	189652,	-- Deadwaker Ghendish
	192020,	-- Eaglemaster Niraak
	201537,	-- Groffnar
	201538,	-- Huntmaster Yrgena
	201540,	-- Lurgan <The Trampler>
	193227,	-- Ronsak the Decimator
	201539,	-- Stormcaller Narkena
	192364,	-- Windscale the Stormborn
	192045,	-- Windseeker Avash
};
local RARE_GROUP_GIANT = {
	193132,	-- Amethyzar the Glittering
	190991,	-- Char
	193663,	-- Craggravated Elemental
	193142,	-- Enraged Sapphire
	201557,	-- Graniteclaw
	193704,	-- Honmor
	187209,	-- Klozicc the Ascended
	201558,	-- Malgain Rockknell
	187306,	-- Morchok <Harbinger of Twilight>
	189289,	-- Penumbrus
	194458,	-- Rokzul
	201545,	-- Shapemaster Za'lani
	193149,	-- Skag the Thrower
	194763,	-- Tenmod
	187886,	-- Turboris
};
local RARE_GROUP_WATER = {
	187945,	-- Anhydros the Tidetaker
	197411,	-- Astray Splasher <Lunker>
	193896,	-- Borzgas
	194392,	-- Brackle
	186962,	-- Cascade
	193691,	-- Fisherman Tinnak <Angered Ghost>
	196056,	-- Gushgut the Beaksinker
	195286,	-- Mantai
	194225,	-- Muugurv
	193710,	-- Seereel, the Spring <Lunker>
	201559,	-- Shiobhan Waterborn
	193175,	-- Slurpo, the Incredible Snail
	193706,	-- Snufflegust <Lunker>
	193238,	-- Spellwrought Snowman
	193634,	-- Swog'ranka <Lunker>
	193724,	-- Uurtus
	201556,	-- Waterpots <The Splasher>
	-- Primal Storms Rares
	193645,	-- Crystalus
	193655,	-- Frozion <Progeny of Water>
	193677,	-- Maeleera <First Iceblade>
	193682,	-- Rouen Icewind
};
local RARE_GROUP_DJARADIN = {
	193198,	-- Captain Lancer
	186783,	-- Cauldronbearer Blakor
	193157,	-- Dragonhunter Gorund
	191611,	-- Dragonhunter Igordan
	186200,	-- Harkyn Grymstone
	193232,	-- Rasnar the War Ender
	187598,	-- Rohzor Forgesmash <Djaradin Smithmaster>
};
local RARE_GROUP_GNOLLS = {
	193178,	-- Blightfur
	193128,	-- Blightpaw the Depraved
	197356,	-- High Shaman Rotknuckle
	198004,	-- Mange the Outcast
	193136,	-- Scav Notail
	192749,	-- Sharpfang
	197344,	-- Snarglebone
};
local RARE_GROUP_TITAN = {
	193664,	-- Ancient Protector
	195300,	-- Arkhuu
	187745,	-- Disoriented Watcher
	201550,	-- Overloading Defense Matrix
	201552,	-- Overseer Stonetongue
	193688,	-- Phenran
	194402,	-- Spellforged Destroyer
};
local RARE_GROUP_BIQ = {
	190986,	-- Battlehorn Pyrhus
	197557,	-- Bisquius <The Feast Beast>
	190985,	-- Death's Shadow
	193234,	-- Eldoren the Reborn <Jewel of the Skies>
	195915,	-- Firava the Rekindler
	193853,	-- Galnmor
	194240,	-- Gamgus
	193126,	-- Innumerable Ruination
	193668,	-- Lookout Mordren
	186827,	-- Magmaton
	193152,	-- Massive Magmashell
	195093,	-- Moskhoi
	192737,	-- Qalashi War Mammoth <Qalashi War Party>
	193708,	-- Skald the Impaler <Lunker>
	193120,	-- Smogswog the Firebreather
	193288,	-- Summoned Destroyer
	186859,	-- Worldcarver A'tir
};
local RARE_GROUP_DRAGON = {
	193658,	-- Corrupted Proto-Dragon
	195431,	-- Diluu
};
local RARE_GROUP_SUNDERING = {
	193271,	-- Shadeslash Trakken
	193165,	-- Sparkspitter Vrak
	201542,	-- Tikarr Frostclaw <<The Lazy>>
};
local RARE_GROUP_AZRA = {
	193135,	-- Azra's Prized Peony
	197354,	-- Gnarls
	201549,	-- Morlash <The Unquenchable>
};
local RARE_GROUP_SUNDER = {
	201553,	-- Grand Artificer Zeerak <The Sundered Flame>
	197009,	-- Liskheszaera
	201561,	-- Movtivator Krathos <The Sundered Flame>
	201555,	-- Srivantor <The Sundered Flame>
	193196,	-- Trilvarus Loreweaver
};
local RARE_GROUP_DRAGONKIN_SMALL = {
	196165,	-- Gethdazr
	193885,	-- Salkii
	193188,	-- Seeker Teryx
};
local RARE_GROUP_WIND = {
	193173,	-- Mikrin of the Raging Winds
	193669,	-- Prozela Galeshot <Stormcaller Headmaster>
	193176,	-- Sandana the Tempest <Timesand Thief>
	193165,	-- Sparkspitter Vrak
	193258,	-- Tempestrian <Stormbringer>
	193171,	-- Terillod the Devout
	191354,	-- Ty'foon the Ascended
	193209,	-- Zenet Avis <The Hard Wind>
	-- Primal Storms Rares
	193653,	-- Gaelzion <Progeny of Air>
	193647,	-- Karantun
	193684,	-- Pipspark Thundersnap
	193674,	-- Voraazka

};
local RARE_GROUP_TIME = {
	193126,	-- Innumerable Ruination
	193241,	-- Lord Epochbrgl <Time-Lost>
	193210,	-- Phleep <Time-Lost, Mind-Lost>
	193176,	-- Sandana the Tempest <Timesand Thief>
	201664,	-- Temporal Investi-gator
};
local RARE_GROUP_BEOGOKA = {
	193116,	-- Beogoka
	201557,	-- Graniteclaw
	193225,	-- Notfar the Unbearable
	187209,	-- Klozicc the Ascended
};
local RARE_GROUP_TEMPEST = {
	193258,	-- Tempestrian <Stormbringer>
	201562,	-- Shardwing
};
root(ROOTS.Zones, m(DRAGON_ISLES, bubbleDown({ ["timeline"] = { ADDED_10_0_2_LAUNCH } }, {
	n(RARES, {
		n(COMMON_BOSS_DROPS, {
			["description"] = "These items can drop from any Lv70 Elite Rare or named Elite from any The Hunt Stage.",
			["crs"] = {
				193163,	-- Territorial Coastling
				193201,	-- Mucka the Raker
				193229,	-- Henlare
				193259,	-- Blue Terror
				193273,	-- Liskron the Dazzling
				193341,	-- Angen
				193666,	-- Rokmur
				193735,	-- Moth'go Deeploom
				194392,	-- Brackle
				194401,	-- Spellforged Horror
				197009,	-- Liskheszaera

				-- Ohn'ahran Plains
				197353,	-- Blisterhide
				193153,	-- Ripsaw the Stalker
				192949,	-- Skaara
				193133,	-- Sunscale Behemoth
				193209,	-- Zenet Avis
				-- Ohn'ahran Plains (The Hunt)
				191450,	-- Boolk
				194409,	-- Ergburk
				194608,	-- Kholdeg
				194438,	-- Khomuur
				190968,	-- Norbett
				190161,	-- Sarana
				191103,	-- Uranto the Swift
				194601,	-- Zagdech
				194624,	-- Zumakh

				-- Thaldraszus
				193143,	-- Razk'vex the Untamed
				193161,	-- Woolfang
				191305,	-- The Great Shellkhan
				-- Thaldraszus (The Hunt)
				193311,	-- Melkhop
				195430,	-- Molkeej
				193240,	-- Riverwalker Tamopo
				195417,	-- Tsokorg

				-- The Azure Span
				193691,	-- Fisherman Tinnak <Angered Ghost>
				193632,	-- Wilrive
				-- The Azure Span (The Hunt)
				194761,	-- Khuumog
				195093,	-- Moskhoi
				194763,	-- Tenmod
				195132,	-- Tevgai
				194760,	-- Uurhilt
				195101,	-- Yaankhi
				195283,	-- Yamakh

				-- The Waking Shores
				187111,	-- Ancient Hornswog
				190986,	-- Battlehorn Pyrhus
				190985,	-- Death's Shadow
				193217,	-- Drakewing
				194251,	-- Degmakh
				193154,	-- Forgotten Gryphon
				193266,	-- Lepidoralia
				194225,	-- Muugurv
				184853,	-- Primal Scythid Queen
				192737,	-- Qalashi War Mammoth
				193885,	-- Salkii
				189822,	-- Shas'ith
				190971,	-- Shas'ith (Pre Combat Version?)
				193181,	-- Skewersnout
				193148,	-- Thunderous Matriarch
				-- The Waking Shores (The Hunt)
				194251,	-- Degmakh
				194240,	-- Gamgus
				194225,	-- Muugurv

				-- Lunker (Fishing)
				193634,	-- Swog'ranka <Lunker>
			},
			["groups"] = {
				i(200186),	-- Amberquill Shroud
				i(200442),	-- Basilisk Hide Jerkin
				i(200174),	-- Bonesigil Shoulderguards
				i(200137),	-- Chitin Dreadbringer
				i(196976),	-- Cliffside Wylderdrake: Head Mane (MM!)
				i(197111),	-- Highland Drake: Maned Head (MM!)
				i(200445),	-- Lucky Hunting Charm
				i(200249),	-- Mage's Chewed Wand (TOY!)
				i(200193),	-- Manafrond Sandals
				i(200232),	-- Raptor Talonglaive
				i(200131),	-- Reclaimed Survivalist's Dagger
				i(200212),	-- Sand-Encrusted Graves
				i(200859),	-- Seasoned Hunter's Trophy
				i(198409),	-- Personal Shell (TOY!)
				i(200563),	-- Primal Ritual-shell
				i(200195),	-- Thunderscale Legguards
				i(200880),	-- Wind-Sealed Mana Capsule
					-- Insignias @ Max Renown
				i(200289),	-- Valdrakken Accord Insignia [Uncommon]
				i(200285),	-- Dragonscale Expedition Insignia [Uncommon]
				i(200287),	-- Iskaara Tuskarr Insignia [Uncommon]
				i(200288),	-- Maruuk Centaur Insingia [Uncommon]
			},
		}),
		-- Any Items listed here should meet the following criteria:
		-- 1) Dropped from Multiple, specific Creatures which are likely themselves Sourced in ATT somewhere (i.e. Rares)
		-- 2) Marked with appropriate ["crs"] tag to indicate the available Creatures per Item
		-- 3) Ignore creatures which are 'really random' such as one could not target them for drops, i.e. Primal Storms Rares
		-- This will automatically cause these Items to list themselves under any matching Creature of their ["crs"] list when that Creature is loaded in a ATT list
		-- Technically, further Header organization under the 'Drops' Header should still work properly for automatic filling of the raw Items
		n(DROPS, {	-- Items which can drop from multiple, specifically-tagged Creatures
			n(DRAKEWATCHER_MANUSCRIPTS, {
				i(196991, {	-- Cliffside Wylderdrake: Black Horns (MM!)
					["crs"] = RARE_GROUP_GIANT,
				}),
				i(196986, {	-- Cliffside Wylderdrake: Black Hair (MM!)
					["crs"] = RARE_GROUP_TWO,
				}),
				i(197019, {	-- Cliffside Wylderdrake: Blunt Spiked Tail (MM!)
					["crs"] = RARE_GROUP_DJARADIN,
				}),
				i(196973, {	-- Cliffside Wylderdrake: Dual Horned Chin (MM!)
					["crs"] = RARE_GROUP_TWO,
				}),
				i(196982, {	-- Cliffside Wylderdrake: Ears (MM!)
					["crs"] = RARE_GROUP_GNOLLS,
				}),
				i(197001, {	-- Cliffside Wylderdrake: Finned Cheek (MM!)
					["crs"] = RARE_GROUP_WATER,
				}),
				i(197022, {	-- Cliffside Wylderdrake: Finned Neck (MM!)
					["crs"] = RARE_GROUP_FOUR,
				}),
				i(196992, {	-- Cliffside Wylderdrake: Heavy Horns (MM!)
					["crs"] = RARE_GROUP_DRAGONKIN,
				}),
				i(196985, {	-- Cliffside Wylderdrake: Horned Jaw (MM!)
					["crs"] = RARE_GROUP_SPECTRAL,
				}),
				i(197005, {	-- Cliffside Wylderdrake: Horned Nose (MM!)
					["crs"] = RARE_GROUP_DJARADIN,
				}),
				i(196983, {	-- Cliffside Wylderdrake: Maned Jaw (MM!)
					["crs"] = RARE_GROUP_DRAGON,
				}),
				i(197023, {	-- Cliffside Wylderdrake: Maned Neck (MM!)
					["crs"] = RARE_GROUP_BEOGOKA,
				}),
				i(197016, {	-- Cliffside Wylderdrake: Maned Tail (MM!)
					["crs"] = RARE_GROUP_GHENDISH,
				}),
				i(197008, {	-- Cliffside Wylderdrake: Narrow Stripes Pattern (MM!)
					["crs"] = RARE_GROUP_TIME,
				}),
				i(196970, {	-- Cliffside Wylderdrake: Spiked Back (MM!)
					["crs"] = RARE_GROUP_DRAGONKIN_SMALL,
				}),
				i(196999, {	-- Cliffside Wylderdrake: Swept Horns (MM!)
					["crs"] = RARE_GROUP_SUNDERING,
				}),
				i(197149, {	-- Highland Drake: Club Tail (MM!)
					["crs"] = RARE_GROUP_THREE
				}),
				i(197125, {	-- Highland Drake: Coiled Horns (MM!)
					["crs"] = RARE_GROUP_DRAGON,
				}),
				i(197100, {	-- Highland Drake: Crested Brow (MM!)
					["crs"] = RARE_GROUP_TITAN,
				}),
				i(197116, {	-- Highland Drake: Ears (MM!)
					["crs"] = RARE_GROUP_SUNDERING,
				}),
				i(197098, {	-- Highland Drake: Finned Back (MM!)
					["crs"] = RARE_GROUP_WATER,
				}),
				i(197106, {	-- Highland Drake: Finned Head (MM!)
					["crs"] = RARE_GROUP_SUNDER,
				}),
				i(197150, {	-- Highland Drake: Spiked Club Tail (MM!)
					["crs"] = RARE_GROUP_GNOLLS,
				}),
				i(197105, {	-- Highland Drake: Spined Chin (MM!)
					["crs"] = RARE_GROUP_DRAGONKIN_SMALL,
				}),
				i(197130, {	-- Highland Drake: Stag Horns (MM!)
					["crs"] = RARE_GROUP_TIME,
				}),
				i(197138, {	-- Highland Drake: Striped Pattern (MM!)
					["crs"] = RARE_GROUP_ONE,
				}),
				i(197121, {	-- Highland Drake: Tan Horns (MM!)
					["crs"] = RARE_GROUP_AZRA,
				}),
				i(197135, {	-- Highland Drake: Toothy Mouth (MM!)
					["crs"] = RARE_GROUP_BIQ,
				}),
				i(197403, {	-- Renewed Proto-Drake: Club Tail (MM!)
					["crs"] = RARE_GROUP_DRAGONKIN,
				}),
				i(197367, {	-- Renewed Proto-Drake: Gray Hair (MM!)
					["crs"] = RARE_GROUP_GHENDISH,
				}),
				i(197383, {	-- Renewed Proto-Drake: Heavy Horns (MM!)
					["crs"] = RARE_GROUP_FIVE,
				}),
				i(197379, {	-- Renewed Proto-Drake: Impaler Horns (MM!)
					["crs"] = RARE_GROUP_BIQ,
				}),
				i(197372, {	-- Renewed Proto-Drake: Purple Hair (MM!)
					["crs"] = RARE_GROUP_WIND,
				}),
				i(197400, {	-- Renewed Proto-Drake: Shark Snout (MM!)
					["crs"] = RARE_GROUP_SUNDER,
				}),
				i(197398, {	-- Renewed Proto-Drake: Snub Snout (MM!)
					["crs"] = RARE_GROUP_AZRA,
				}),
				i(197382, {	-- Renewed Proto-Drake: White Horns (MM!)
					["crs"] = RARE_GROUP_SPECTRAL,
				}),
				i(197624, {	-- Windborne Velocidrake: Club Tail (MM!)
					["crs"] = RARE_GROUP_GIANT,
				}),
				i(197602, {	-- Windborne Velocidrake: Cluster Horns (MM!)
					["crs"] = RARE_GROUP_FIVE,
				}),
				i(197593, {	-- Windborne Velocidrake: Feathery Head (MM!)
					["crs"] = RARE_GROUP_TEMPEST,
				}),
				i(197608, {	-- Windborne Velocidrake: Gray Horns (MM!)
					["crs"] = RARE_GROUP_THREE
				}),
				i(197589, {	-- Windborne Velocidrake: Large Head Fin (MM!)
					["crs"] = RARE_GROUP_FOUR,
				}),
				i(197586, {	-- Windborne Velocidrake: Spiked Back (MM!)
					["crs"] = RARE_GROUP_ONE,
				}),
				i(197606, {	-- Windborne Velocidrake: Swept Horns (MM!)
					["crs"] = RARE_GROUP_WIND,
				}),
			}),
			n(ARMOR, {
				i(200448, {	-- Abyssal Ward
					["crs"] = RARE_GROUP_FOUR,
				}),
				i(200165, {	-- Aegis of Scales
					["crs"] = RARE_GROUP_DRAGONKIN,
				}),
				i(200210, {	-- Amnesia
					["crs"] = RARE_GROUP_ONE,
				}),
				i(200138, {	-- Ancient Dancer's Longspear
					["crs"] = RARE_GROUP_ONE,
				}),
				i(200434, {	-- Anund's Mana-Singed Amice
					["crs"] = RARE_GROUP_SUNDER,
				}),
				i(200217, {	-- Blazing Essence
					["crs"] = RARE_GROUP_BIQ,
				}),
				i(200435, {	-- Brackish Breeches
					["crs"] = RARE_GROUP_FOUR,
				}),
				i(200758, {	-- Breastplate of Storied Antiquity
					["crs"] = RARE_GROUP_ONE,
				}),
				i(200208, {	-- Cloud Coalescing Handwraps
					["crs"] = RARE_GROUP_WIND,
				}),
				i(200292, {	-- Cragforge Pauldrons
					["crs"] = RARE_GROUP_FIVE,
				}),
				i(200446, {	-- Crystalized Sigil
					["crs"] = RARE_GROUP_SUNDER,
				}),
				i(200313, {	-- Earthen Protoscale Drape
					["crs"] = RARE_GROUP_FIVE,
				}),
				i(200158, {	-- Eerie Spectral Ring
					["crs"] = RARE_GROUP_SPECTRAL,
				}),
				i(200244, {	-- Enchanted Muckstompers
					["crs"] = RARE_GROUP_GIANT,
				}),
				i(200283, {	-- Gnoll-Gnawed Breeches
					["crs"] = RARE_GROUP_GNOLLS,
				}),
				i(200682, {	-- Hardened Scale Shoulderguards
					["crs"] = RARE_GROUP_DRAGONKIN,
				}),
				i(200441, {	-- Jhakan's Horned Cowl
					["crs"] = RARE_GROUP_GHENDISH,
				}),
				i(200164, {	-- Iceloop
					["crs"] = RARE_GROUP_WATER,
				}),
				i(200868, {	-- Integrated Primal Fire
					["crs"] = RARE_GROUP_BIQ,
				}),
				i(200683, {	-- Legguards of the Deep Strata
					["crs"] = RARE_GROUP_GIANT,
				}),
				i(200246, {	-- Lost Delving Lamp
					["crs"] = RARE_GROUP_GIANT,
				}),
				i(200126, {	-- Mantle of Copious Chronologies
					["crs"] = RARE_GROUP_TIME,
				}),
				i(200228, {	-- Protoscale Pauldrons
					["crs"] = RARE_GROUP_DRAGONKIN,
				}),
				i(200757, {	-- Qalashi War-Helm
					["crs"] = RARE_GROUP_DJARADIN,
				}),
				i(200161, {	-- Razorwind Talisman
					["crs"] = RARE_GROUP_WIND,
				}),
				i(200267, {	-- Reinforced Garden Tenders
					["crs"] = RARE_GROUP_AZRA,
				}),
				i(200203, {	-- Repurposed Giant's Thimble
					["crs"] = RARE_GROUP_THREE,
				}),
				i(200689, {	-- Rimetalon Band
					["crs"] = RARE_GROUP_SUNDERING,
				}),
				i(200163, {	-- Ring of Embers
					["crs"] = RARE_GROUP_BIQ,
				}),
				i(200432, {	-- Rotguard Cowl
					["crs"] = RARE_GROUP_TWO,
				}),
				i(200154, {	-- Rubyscale Band
					["crs"] = RARE_GROUP_DRAGONKIN_SMALL,
				}),
				i(200204, {	-- Sandshine Chestplate
					["crs"] = RARE_GROUP_DRAGON,
				}),
				i(200314, {	-- Skyspeaker's Envelope
					["crs"] = RARE_GROUP_WIND,
				}),
				i(200310, {	-- Stole of the Iron Phantom
					["crs"] = RARE_GROUP_SPECTRAL,
				}),
				i(200438, {	-- Surcoat of the Chastigator
					["crs"] = RARE_GROUP_DRAGONKIN,
				}),
				i(200306, {	-- Tempest Shawl
					["crs"] = RARE_GROUP_WIND,
				}),
				i(200202, {	-- Tomorrow's Chains
					["crs"] = RARE_GROUP_TIME,
				}),
				i(200552, {	-- Torrent Caller's Shell
					["crs"] = RARE_GROUP_WATER,
				}),
				i(200254, {	-- Totemic Cinch
					["crs"] = RARE_GROUP_BEOGOKA,
				}),
				i(200172, {	-- Zephyrdance Signet
					["crs"] = RARE_GROUP_WIND,
				}),
			}),
			n(WEAPONS, {
				i(200237, {	-- Burnished Lifewarder's Targe
					["crs"] = RARE_GROUP_DRAGONKIN_SMALL,
				}),
				i(200135, {	-- Corroded Greatsword
					["crs"] = RARE_GROUP_WATER,
				}),
				i(200256, {	-- Darkmaul Soul Horn
					["crs"] = RARE_GROUP_SPECTRAL,
				}),
				i(200303, {	-- Dreamweaver Acolyte's Staff
					["crs"] = RARE_GROUP_TITAN,
				}),
				i(200439, {	-- Earthpact Scepter
					["crs"] = RARE_GROUP_FIVE,
				}),
				i(200684, {	-- Emerald Tailbone
					["crs"] = RARE_GROUP_THREE,
				}),
				i(200259, {	-- Forest Dweller's Shield
					["crs"] = RARE_GROUP_AZRA,
				}),
				i(200266, {	-- Gnollish Chewtoy Launcher
					["crs"] = RARE_GROUP_GNOLLS,
				}),
				i(200127, {	-- Gold-Alloy Blade
					["crs"] = RARE_GROUP_TWO,
				}),
				i(200297, {	-- Hastily Cobbled Maul
					["crs"] = RARE_GROUP_SUNDERING,
				}),
				i(200247, {	-- Inextinguishable Gavel
					["crs"] = RARE_GROUP_BIQ,
				}),
				i(200245, {	-- Leviathan Lure
					["crs"] = RARE_GROUP_WATER,
				}),
				i(200252, {	-- Molten Flak Cannon
					["crs"] = RARE_GROUP_BIQ,
				}),
				i(200233, {	-- Paradox Saber
					["crs"] = RARE_GROUP_DRAGON,
				}),
				i(200293, {	-- Primal Scion's Twinblade
					["crs"] = RARE_GROUP_FIVE,
				}),
				i(200169, {	-- Protector's Molten Cudgel
					["crs"] = RARE_GROUP_DJARADIN,
				}),
				i(200308, {	-- Rellen's Legacy
					["crs"] = RARE_GROUP_GHENDISH,
				}),
				i(200187, {	-- Rod of Glacial Force
					["crs"] = RARE_GROUP_WATER,
				}),
				i(200151, {	-- Seamist Blade
					["crs"] = RARE_GROUP_FOUR,
				}),
				i(200253, {	-- Snowspring Incanter's Knife
					["crs"] = RARE_GROUP_BEOGOKA,
				}),
				i(200241, {	-- Stormcaller's Ritual Hatchet
					["crs"] = RARE_GROUP_TEMPEST,
				}),
				i(200299, {	-- Strange Clockwork Gladius
					["crs"] = RARE_GROUP_TITAN,
				}),
				i(198429, {	-- Typhoon Bringer
					["crs"] = RARE_GROUP_WIND,
				}),
				i(200133, {	-- Volcanic Chakram
					["crs"] = RARE_GROUP_BIQ,
				}),
				i(200242, {	-- Watcher's Lightning Rod
					["crs"] = RARE_GROUP_TEMPEST,
				}),
			}),
			i(200148, {	-- A Collection of Me (TOY!)
				["crs"] = RARE_GROUP_TIME,
			}),
			i(200178, {	-- Infected Ichor (TOY!)
				["crs"] = RARE_GROUP_TWO,
			}),
		}),
	}),
})));
