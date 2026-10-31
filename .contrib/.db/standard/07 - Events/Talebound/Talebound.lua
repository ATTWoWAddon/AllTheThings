-------------------------------------------------
--      T A L E B O U N D    M O D U L E       --
-------------------------------------------------

local TALEBOUND = createHeader({
	readable = "Talebound",
	constant = "TALEBOUND",
	icon = 7815705,
	text = {
		en = "Talebound",
	},
	description = {
		en = "The village of Quillgrave awaits, and the stories are far from finished. The Storyteller is waiting, and the fire is lit. Gather around the campfire and prepare to lose yourself in Talebound’s macabre tales.",
	},
});
local TALEBOUND_STORE = createHeader({
	readable = "Talebound Store",
	constant = "TALEBOUND_STORE",
	icon = 2744751,
	text = {
		en = "Talebound Store",
	},
});

local BOUND_SILVER = 3361;
local DUCATS = 3325;
local OUTFITTER_SUPPLIES = 3320;

root(ROOTS.WorldEvents, {
	n(TALEBOUND, {
		timeline = { ADDED_12_1_7 },
		groups = {
			n(ACHIEVEMENTS, {
				-- Main Achievements
				ach(63819),	-- A Puzzling Tale
				ach(64446, {	-- A Puzzling Tale Reward
					i(288966),	-- Voidlight Marl Prism
				}),
				ach(64417),	-- Delving into a Tale
				ach(64464, {	-- Stories Shared
					i(288899),	-- Hexed Tiny Tome (TOY!)
				}),
				ach(64139, {	-- Stories to Share
					title(813),	-- Listener <Name>
				}),
				ach(64416, {	-- Tapping at the Trader's Door
					provider = { "n", 278794 },	-- Traveling Raven
					--coord = { XX.X, YY.Y, MAP.MIDNIGHT.SILVERMOON_CITY },
				}),
				ach(63826),	-- The Antiquarian's Chapter
				ach(64440, {	-- The Antiquarian's Chapter Complete
					i(288969),	-- Voidlight Marl Crystal
				}),
				ach(63825),	-- The Arcanist's Account
				ach(64442, {	-- The Arcanist's Account Complete
					i(288973),	-- Packed Alchemy Crate
				}),
				ach(64229),	-- The Eldritch Puzzlemaster
				ach(64421, {	-- The Eldrich Puzzlemaster's Reward
					i(288971),	-- Greywake's Wisdom
				}),
				ach(64230),	-- The Fae Puzzlemaster
				ach(64422, {	-- The Fae Puzzlemaster's Reward
					i(288972),	-- Court of Night Wisdom
				}),
				ach(64228),	-- The Hexed Puzzlemaster
				ach(64420, {	-- The Hexed Puzzlemaster's Reward
					i(288970),	-- Greenthistle Wisdom
				}),
				ach(63823),	-- The Inquisitor and the Scribe
				ach(64443, {	-- The Inquisitor and the Scribe Complete
					i(288961),	-- Nebulous Voidcache
				}),
				ach(63824),	-- The Outfitter's Story
				ach(64441, {	-- The Outfitter's Story Complete
					i(288974),	-- Outfitter's Crate
				}),
				ach(64227),	-- The Sanguine Puzzlemaster
				ach(64419, {	-- The Sanguine Puzzlemaster's Reward
					i(288957),	-- Darkhaven Wisdom
				}),
				ach(63821),	-- The Slayer and the Scribe
				ach(64444, {	-- The Slayer and the Scribe Complete
					i(288961),	-- Nebulous Voidcache
				}),
				ach(64135),	-- The Stories of Greenthistle Wood
				ach(64136),	-- The Story of Darkhaven
				ach(64138),	-- The Story of Greywake's Expedition
				ach(63820),	-- The Tale of the Puzzle Master
				ach(64418, {	-- The Tale of the Puzzle Master Rewarded
					i(288969),	-- Voidlight Marl Crystal
				}),
				ach(63822),	-- The Witch and the Scribe
				ach(64445, {	-- The Witch and the Scribe Complete
					i(288961),	-- Nebulous Voidcache
				}),
				ach(64137),	-- The Verses of the Court of Night
				ach(63814),	-- Traveler's Coin (20000 Ducats)
				ach(64435, {	-- Traveler's Coin Exchanged
					i(288979),	-- Champion Mistcrest Pouch
				}),
				ach(63815),	-- Traveler's Purse (40000 Ducats)
				ach(64436, {	-- Traveler's Purse Exchanged
					i(288978),	-- Hero Mistcrest Pouch
				}),
				ach(63816),	-- Traveler's Cache (60000 Ducats)
				ach(64437, {	-- Traveler's Cache Exchanged (60000 Ducats)
					i(288978),	-- Hero Mistcrest Pouch
				}),
				ach(63817),	-- Traveler's Trove (80000 Ducats)
				ach(64438, {	-- Traveler's Trove Exchanged (80000 Ducats)
					i(288976),	-- Myth Mistcrest Pouch
				}),
				ach(63818),	-- Traveler's Fortune (100000 Ducats)
				ach(64439, {	-- Traveler's Fortune Exchanged
					i(288976),	-- Myth Mistcrest Pouch
				}),

				-- Bosses
				ach(63760),	-- The Fairy Queen
				ach(63761),	-- Veteran: The Fairy Queen
				ach(63762),	-- Heroic: The Fairy Queen
				ach(63763),	-- Mythic: The Fairy Queen
				ach(63776, {	-- The Final Confrontation
					spell(1327486),	-- The Fate of Quillgrave (CAMPSITE!)
				}),
				ach(63777),	-- Veteran: The Final Confrontation
				ach(63778),	-- Heroic: The Final Confrontation
				ach(63779),	-- Mythic: The Final Confrontation
				ach(63729),	-- The Giant of Greenthistle Wood
				ach(63734),	-- Veteran: The Giant of Greenthistle Wood
				ach(63735),	-- Heroic: The Giant of Greenthistle Wood
				ach(63736),	-- Mythic: The Giant of Greenthistle Wood
				ach(63768),	-- The Hadal Tyrant
				ach(63769),	-- Veteran: The Hadal Tyrant
				ach(63770),	-- Heroic: The Hadal Tyrant
				ach(63771),	-- Mythic: The Hadal Tyrant
				ach(63772),	-- The Herald from Beyond
				ach(63773),	-- Veteran: The Herald from Beyond
				ach(63774),	-- Heroic: The Herald from Beyond
				ach(63775),	-- Mythic: The Herald from Beyond
				ach(63810),	-- The Inquisitor's Final Confrontation
				ach(63811),	-- Veteran: The Inquisitor's Final Confrontation
				ach(63812),	-- Heroic: The Inquisitor's Final Confrontation
				ach(63813, {	-- Mythic: The Inquisitor's Final Confrontation
					title(814),	-- <Name> of the Sacred Flame
				}),
				ach(63748),	-- The Lord Marshal
				ach(63749),	-- Veteran: The Lord Marshal
				ach(63780),	-- Heroic: The Lord Marshal
				ach(63750),	-- Mythic: The Lord Marshal
				ach(63764),	-- The Nightmare King
				ach(63765),	-- Veteran: The Nightmare King
				ach(63766),	-- Heroic: The Nightmare King
				ach(63767),	-- Mythic: The Nightmare King
				ach(63802),	-- The Slayer's Final Confrontation
				ach(63803),	-- Veteran: The Slayer's Final Confrontation
				ach(63804),	-- Heroic: The Slayer's Final Confrontation
				ach(63805, {	-- Mythic: The Slayer's Final Confrontation
					title(812),	-- Monster Hunter <Name>
				}),
				ach(63754),	-- The Vampire Bishop
				ach(63755),	-- Veteran: The Vampire Bishop
				ach(63758),	-- Heroic: The Vampire Bishop
				ach(63759),	-- Mythic: The Vampire Bishop
				ach(63743),	-- The Witch of the Wilds
				ach(63744),	-- Veteran: The Witch of the Wilds
				ach(63745),	-- Heroic: The Witch of the Wilds
				ach(63746),	-- Mythic: The Witch of the Wilds
				ach(63737),	-- The Witch of the Woods
				ach(63738),	-- Veteran: The Witch of the Woods
				ach(63741),	-- Heroic: The Witch of the Woods
				ach(63742),	-- Mythic: The Witch of the Woods
				ach(63806),	-- The Witch's Final Confrontation
				ach(63807),	-- Veteran: The Witch's Final Confrontation
				ach(63808),	-- Heroic: The Witch's Final Confrontation
				ach(63809, {	-- Mythic: The Witch's Final Confrontation
					title(811),	-- <Name> of the Crooked Path
				}),
				ach(64426, {	-- Confronting a Mythic Tale
					i(288983),	-- Cache of Mythic Treasures
				}),
				ach(64427, {	-- The Final Confrontation's Conclusion
					i(288965),	-- Venomstone Cache
				}),
				ach(64428, {	-- Veteran: The Final Confrontation's Conclusion
					i(288965),	-- Venomstone Cache
				}),
				ach(64429, {	-- Heroic: The Final Confrontation's Conclusion
					i(288965),	-- Venomstone Cache
				}),
				ach(64430, {	-- Mythic: The Final Confrontation's Conclusion
					i(288965),	-- Venomstone Cache
				}),
				ach(64431, {	-- The Comprehensive Final Confrontation
					i(288987),	-- Cache of Heroic Treasures
				}),
				ach(64432, {	-- Veteran: The Comprehensive Final Confrontation
					i(288987),	-- Cache of Heroic Treasures
				}),
				ach(64433, {	-- Heroic: The Comprehensive Final Confrontation
					i(288987),	-- Cache of Heroic Treasures
				}),
				ach(64434, {	-- Mythic: The Comprehensive Final Confrontation
					i(288983),	-- Cache of Mythic Treasures
				}),

				-- Levels
				ach(63798),	-- The Complete Tale
				ach(64465, {	-- The Tale Complete
					i(288912),	-- Wood-Cursed Hearthstone (TOY!)
				}),
				ach(64424, {	-- Starting Down a Veteran's Tale
					i(288987),	-- Cache of Heroic Treasures
				}),
				ach(64425, {	-- Stepping up to a Heroic Tale
					i(288987),	-- Cache of Heroic Treasures
				}),
				ach(63799),	-- Veteran: The Complete Tale
				ach(63800),	-- Heroic: The Complete Tale
				ach(63801),	-- Mythic: The Complete Tale
				ach(63786),	-- The Tale of Darkhaven
				ach(63787),	-- Veteran: The Tale of Darkhaven
				ach(63788),	-- Heroic: The Tale of Darkhaven
				ach(63789),	-- Mythic: The Tale of Darkhaven
				ach(63782),	-- The Tale of Greenthistle Wood
				ach(63783),	-- Veteran: The Tale of Greenthistle Wood
				ach(63784),	-- Heroic: The Tale of Greenthistle Wood
				ach(63785),	-- Mythic: The Tale of Greenthistle Wood
				ach(63794),	-- The Tale of Greywake's Expedition
				ach(63795),	-- Veteran: The Tale of Greywake's Expedition
				ach(63796),	-- Heroic: The Tale of Greywake's Expedition
				ach(63797),	-- Mythic: The Tale of Greywake's Expedition
				ach(63790),	-- The Tale of the Court of Night
				ach(63791),	-- Veteran: The Tale of the Court of Night
				ach(63792),	-- Heroic: The Tale of the Court of Night
				ach(63793),	-- Mythic: The Tale of the Court of Night
				ach(64423, {	-- It's Just a Normal Tale
					i(288984),	-- Cache of Champion Treasures
				}),
				n(REWARDS, {
					currency(BOUND_SILVER),
				}),
			}),
			n(REWARDS, {
				currency(DUCATS),
				currency(OUTFITTER_SUPPLIES),
			}),
			n(TALEBOUND_STORE, sharedData({
				--cr = 278794,	-- Traveling Raven
				--coord = { XX.X, YY.Y, MAP.MIDNIGHT.SILVERMOON_CITY },
				cost = { { "c", BOUND_SILVER, 20 } },
			}, {
				filter(BATTLE_PETS, {
					i(277270),	-- Bewitching Familiar (PET!)
					i(284094),	-- Hex-Cursed Manifestation (PET!)
					i(283378),	-- Inquisitor's Messenger (PET!)
					i(283375),	-- Slayer's Faithful Tracker (PET!)
					i(284103),	-- Zyg'ee (PET!)
				}),
				filter(COSMETIC, {
					i(287097),	-- Alchemist's Research Kit
					i(242524),	-- Blood-Cursed Ritual Cauldron
					i(282413),	-- Blood-Spattered Ritual Cap
					iensemble(268452),	-- Ensemble: Ambermill Rebel Streetware
					iensemble(286198),	-- Ensemble: Cursed Wood-Haunt's Mask Gallery
					iensemble(282298),	-- Ensemble: Dockside Smuggler's Attire
					iensemble(282296),	-- Ensemble: Drustvar Smuggler's Attire
					iensemble(248953),	-- Ensemble: Expedition's Saltstained Finery
					iensemble(244227),	-- Ensemble: Faith-Cursed Vestments
					iensemble(235592),	-- Ensemble: Forest Dweller's Muddied Attire
					iensemble(286199),	-- Ensemble: Noble's Literary Caps
					iensemble(235229),	-- Ensemble: Ornaments of the Night Court Butterfly
					iensemble(282330),	-- Ensemble: Outfitter's Autumn Attire
					iensemble(282334),	-- Ensemble: Outfitter's Blush-Grey Attire
					iensemble(282331),	-- Ensemble: Outfitter's Formal Attire
					iensemble(282332),	-- Ensemble: Outfitter's Navy Attire
					iensemble(282333),	-- Ensemble: Outfitter's Oak Attire
					iensemble(282335),	-- Ensemble: Outfitter's Wine-Charred Attire
					iensemble(230172),	-- Ensemble: Prowler's Lively Headgear
					iensemble(230178),	-- Ensemble: Prowler's Plum Headgear
					iensemble(282297),	-- Ensemble: Seabound Smuggler's Attire
					iensemble(286164),	-- Ensemble: Traveler's Charcoal Commonwear
					iensemble(286197),	-- Ensemble: Traveler's Colorful Mantle Collection
					iensemble(281521),	-- Ensemble: Traveler's Dusk Headgear
					iensemble(281519),	-- Ensemble: Traveler's Forest Headgear
					iensemble(281523),	-- Ensemble: Traveler's Ivory Headgear
					iensemble(281522),	-- Ensemble: Traveler's Oaken Headgear
					iensemble(281520),	-- Ensemble: Traveler's Sanguine Headgear
					iensemble(281518),	-- Ensemble: Traveler's Shadow Headgear
					iensemble(286165),	-- Ensemble: Traveler's Velvet Commonwear
					iensemble(282299),	-- Ensemble: Village Patrolman's Regalia
					iensemble(286166),	-- Ensemble: Villager's Linen Commonwear
					iensemble(286167),	-- Ensemble: Villager's Woolen Commonwear
					iensemble(281078),	-- Ensemble: Witch Hunter's Forest Attire
					iensemble(281096),	-- Ensemble: Witch Hunter's Ivory Attire
					iensemble(281069),	-- Ensemble: Witch Hunter's Shadow Attire
					iensemble(284007),	-- Ensemble: Wood Haunter's Guise of the Wight
					i(235340),	-- Mad Raven-Witch Mask
					i(230041),	-- Prowler's Lively Shoulder Cape
					i(230047),	-- Prowler's Plum Shoulder Cape
					i(282412),	-- Slayer's Ashen Cap
					i(234601),	-- Wings of the Fae Courier
					i(287098),	-- Witch-Scribe's Haunted Scroll
				}),
				n(DECOR, {	-- Exo Note: TODO: Quillgrave decor has no items currently (30-Oct-26)
					i(287902),	-- Drust-Carved Rune Marker (DECOR!)
					i(287904),	-- Drust-Carved Rune Pillar (DECOR!)
					i(288745),	-- Eldritch Looking Glass (DECOR!)
					i(288751),	-- Fae Looking Glass (DECOR!)
					i(287983),	-- Heartsbane Hex Catcher (DECOR!)
					i(287915),	-- Heartsbane Hex Etchings (DECOR!)
					i(287913),	-- Heartsbane Hex Markings (DECOR!)
					i(287900),	-- Heartsbane Hex Scar (DECOR!)
					i(287917),	-- Heartsbane Runestone Ring (DECOR!)
					i(287981),	-- Heartsbane Waxlight (DECOR!)
					i(287906),	-- Heartsbane Wicker Effigy (DECOR!)
					i(288749),	-- Hexed Looking Glass (DECOR!)
					i(281596),	-- Ominous Ritual Wall Scroll (DECOR!)
					rawdecor(15295),	-- Quillgrave Arcanist's Alembic (DECOR!)
					rawdecor(15254),	-- Quillgrave Craftsman's Workmill (DECOR!)
					rawdecor(21103),	-- Quillgrave Outfitter's Loom (DECOR!)
					rawdecor(15296),	-- Quillgrave Scribe's Gemstation (DECOR!)
					rawdecor(20937),	-- Quillgrave Storyteller's Lectern (DECOR!)
					rawdecor(15294),	-- Quillgrave Talebound Shadowtome (DECOR!)
					i(288747),	-- Sanguine Looking Glass (DECOR!)
					i(287862),	-- Sealight Sconce (DECOR!)
					i(288733),	-- Storyteller's Cursed Looking Glass (DECOR!)
					i(288740),	-- Storyteller's Looking Glass (DECOR!)
					i(287908),	-- Tidesage's Left Copper Mascaron (DECOR!)
					i(287910),	-- Tidesage's Right Copper Mascaron (DECOR!)
					i(272134),	-- Watchman's Iron Torch (DECOR!)
				}),
				filter(MOUNTS, {
					i(268362),	-- Ambermill Traveler's Rouncey (MOUNT!)
					i(282272),	-- Autumn Dream Jumper (MOUNT!)
					i(243597),	-- Faith-Cursed Courser (MOUNT!)
					i(235554),	-- Lost Mare of the Maddening Faire (MOUNT!)
					i(235659),	-- Night Court Courier (MOUNT!)
					i(275255),	-- Shadowbound Storybook (MOUNT!)
					i(282278),	-- Shadowpaw Wood Watcher (MOUNT!)
					i(282271),	-- Stone-Carved Crusher (MOUNT!)
					i(238900),	-- Summer Harvesthog (MOUNT!)
					i(223284),	-- The Watcher in the Waves (MOUNT!)
				}),
				n(WEAPONS, {
					i(282379),	-- Abandoned Builder's Hatchet
					i(282342),	-- Abandoned Headsman's Blade
					i(282381),	-- Abandoned Poacher's Shortbow
					i(282374),	-- Abandoned Soldier's Warmaul
					i(282372),	-- Abandoned Veteran's Bootknife
					i(248675),	-- Expedition's Saltstained Blunderbuss
					i(248677),	-- Expedition's Saltstained Cleaver
					i(248678),	-- Expedition's Saltstained Cutlass
					i(248679),	-- Expedition's Saltstained Greatsword
					i(248676),	-- Expedition's Saltstained Stave
					i(235271),	-- Fae Courier's Gavel
					i(235654),	-- Fae Courier's Longbow
					i(235400),	-- Fae Courier's Polearm
					i(235292),	-- Fae Courier's Sword
					i(235296),	-- Fae Courier's Wand
					i(282377),	-- Fallen Cultist's Blood-Glaive
					i(282344),	-- Fallen Defender's Shortsword
					i(282378),	-- Fallen Executioner's Axe
					i(282383),	-- Fallen Guardsman's Buckler
					i(282351),	-- Fallen Hunter's Kukri
					i(282345),	-- Forgotten Butcher's Crudeblade
					i(282375),	-- Forgotten Craftsman's Workmace
					i(282341),	-- Forgotten Protector's Claymore
					i(282353),	-- Forgotten Wanderer's Crook
					i(213077),	-- Greenseer's Bow-quet
					i(213072),	-- Greenseer's Poppy Spire
					i(213069),	-- Greenseer's Rose Spear
					i(213066),	-- Greenseer's Thorn Spike
					i(213063),	-- Greenseer's Tulip Edge
					i(282356),	-- Lost Greenseer's Reedstick
					i(282352),	-- Lost Ritualist's Curved Edge
					i(282373),	-- Lost Witch's Bloodletter
					i(282405),	-- Lost Wood-Witch's Focus
					i(282339),	-- Lost Woodsman's Axe
					i(234572),	-- Mad Faire Fool's Blade
					i(234727),	-- Mad Faire Fool's Cleaver
					i(235640),	-- Mad Faire's Fool's Die
					i(234609),	-- Redcap's Garden Trowel
					i(281495),	-- Slayer's Monster Blaster
					i(238957),	-- Wicker-Sage's Rune Blade
					i(237177),	-- Wicker-Sage's Rune Claw
					i(236403),	-- Wicker-Sage's Rune Crook
					i(237181),	-- Wicker-Sage's Rune Fetish
					i(236628),	-- Wicker-Sage's Rune Slasher
				}),
			})),
		},
	}),
})
