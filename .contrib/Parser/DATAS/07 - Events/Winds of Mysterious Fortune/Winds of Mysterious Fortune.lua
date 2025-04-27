root(ROOTS.WorldEvents, applyevent(EVENTS.WINDS_OF_MYSTERIOUS_FORTUNE, n(WINDS_OF_MYSTERIOUS_FORTUNE_HEADER, bubbleDownSelf({ ["timeline"] = { ADDED_11_1_5 } }, {
	["maps"] = {
		DRAGON_ISLES,
		EMERALD_DREAM,
		OHNAHRAN_PLAINS,
		THALDRASZUS,
		THE_AZURE_SPAN,
		THE_FORBIDDEN_REACH,
		THE_PRIMALIST_FUTURE,
		THE_WAKING_SHORES,
		VALDRAKKEN,
		ZARALEK_CAVERN,
		AZJ_KAHET,
		AZJ_KAHET_LOWER,
		DORNOGAL,
		HALLOWFALL,
		ISLE_OF_DORN,
		KHAZ_ALGAR,
		NERUBAR,
		NERUBAR_LOWER,
		SIREN_ISLE,
		THE_PROSCENIUM,	-- Theatre Troupe location
		THE_RINGING_DEEPS,
	},
	["g"] = {
		i(235054, {	-- Pristine Mysterious Satchel
			["description"] = "Players below level 80 can gain Mysterious Satchels from quests and enemy drops when adventuring in Dragonflight or War Within zones.\n\nThe first satchel per day per character will be Pristine and will have increased chance for better rewards.",
			["g"] = {
				n(ARMOR, {
					n(BACK, {
						i(235974),	-- Mysterious Cloak
						i(235975),	-- Mysterious Shawl
					}),
					filter(CLOTH, {
						i(235942),	-- Mysterious Cuffs
						i(235943),	-- Mysterious Cord
						i(235944),	-- Mysterious Shoulderpads
						i(235945),	-- Mysterious Leggings
						i(235946),	-- Mysterious Cowl
						i(235947),	-- Mysterious Handwraps
						i(235948),	-- Mysterious Sandals
						i(235949),	-- Mysterious Robes
					}),
					n(FINGER, {
						i(235977),	-- Mysterious Ring
						i(235978),	-- Mysterious Signet
						i(235979),	-- Mysterious Band
					}),
					filter(LEATHER, {
						i(235950),	-- Mysterious Bindings
						i(235951),	-- Mysterious Sash
						i(235952),	-- Mysterious Epaulets
						i(235953),	-- Mysterious Pants
						i(235954),	-- Mysterious Headgear
						i(235955),	-- Mysterious Gloves
						i(235956),	-- Mysterious Boots
						i(235957),	-- Mysterious Vest
					}),
					filter(MAIL, {
						i(235958),	-- Mysterious Bracers
						i(235959),	-- Mysterious Belt
						i(235960),	-- Mysterious Shoulderguards
						i(235961),	-- Mysterious Greaves
						i(235962),	-- Mysterious Coif
						i(235963),	-- Mysterious Grips
						i(235964),	-- Mysterious Striders
						i(235965),	-- Mysterious Chainmail
					}),
					n(NECK, {
						i(235976),	-- Mysterious Pendant
					}),
					filter(PLATE, {
						i(235966),	-- Mysterious Vambraces
						i(235967),	-- Mysterious Girdle
						i(235968),	-- Mysterious Pauldrons
						i(235969),	-- Mysterious Helm
						i(235970),	-- Mysterious Legguards
						i(235971),	-- Mysterious Gauntlets
						i(235972),	-- Mysterious Sabatons
						i(235973),	-- Mysterious Breastplate
					}),
				}),
				filter(MISC, {
					i(198442),	-- Bogthwottle's Shrinky-Do
					i(239142),	-- Bottle of Mysterious Wisdom
					i(235701),	-- Decaying Mecha-Scrapper Construction Kit
					i(236959),	-- Empty Mysterious Potion
					i(170177),	-- Exposed Fish
					i(240995),	-- Fortuitous Satchel
					i(124640),	-- Inky Black Potion
					i(200886),	-- Lemon Silverleaf Tea
					i(225378),	-- Mohawk Grenade
					i(235803),	-- Potion of Mysterious Celerity
					i(236854),	-- Potion of Mysterious Conflagration
					i(236857),	-- Potion of Mysterious Frostbound
					i(235843),	-- Potion of Mysterious Revivification
					i(235816),	-- Potion of Mysterious Swiftstrike
					i(236856),	-- Potion of Mysterious Systemshock
					i(235838),	-- Potion of Mysterious Tenacity
					i(236870),	-- Potion of Mysterious Tremorshards
					i(242711),	-- Pungent Truffle
					i(200897),	-- Venrik's Goat Milk
				}),
				n(WEAPONS, {
					i(235925),	-- Mysterious Beacon Staff
					i(235932),	-- Mysterious Blade
					i(235941),	-- Mysterious Bolthrower
					i(235939),	-- Mysterious Chisel
					i(235937),	-- Mysterious Cleaver
					i(235924),	-- Mysterious Drill-Tipped Stave
					i(235933),	-- Mysterious Hammer
					i(235938),	-- Mysterious Hatchet
					i(235923),	-- Mysterious Lantern
					i(235926),	-- Mysterious Polearm
					i(235934),	-- Mysterious Pummeler
					i(235935),	-- Mysterious Ritual Knife
					i(235936),	-- Mysterious Shank
					i(235930),	-- Mysterious Sharpshooter
					i(235922),	-- Mysterious Shield
					i(235927),	-- Mysterious Spade
					i(235940),	-- Mysterious Spellblade
					i(235931),	-- Mysterious Sword
					i(235929),	-- Mysterious Torch
					i(235928),	-- Mysterious Waraxe
				}),
			},
		}),
		i(236944, {	-- Weathered Mysterious Satchel (Epic)
			["description"] = "Players below level 80 can gain Mysterious Satchels from quests and enemy drops when adventuring in Dragonflight or War Within zones.\n\nThe first satchel per day will be Pristine and will have increased chance for better rewards.",
			["sym"] = {{"select","itemID",235054},{"pop"}},	-- Pristine Mysterious Satchel
		}),
		i(235911, {	-- Weathered Mysterious Satchel (Rare)
			["description"] = "Players below level 80 can gain Mysterious Satchels from quests and enemy drops when adventuring in Dragonflight or War Within zones.\n\nThe first satchel per day will be Pristine and will have increased chance for better rewards.",
			["sym"] = {{"select","itemID",235054},{"pop"}},	-- Pristine Mysterious Satchel
		}),
		i(235052, {	-- Weathered Mysterious Satchel (Uncommon)
			["description"] = "Players below level 80 can gain Mysterious Satchels from quests and enemy drops when adventuring in Dragonflight or War Within zones.\n\nThe first satchel per day will be Pristine and will have increased chance for better rewards.",
			["sym"] = {{"select","itemID",235054},{"pop"}},	-- Pristine Mysterious Satchel
		}),
	},
}))));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.TWW, bubbleDownSelf({ ["timeline"] = { ADDED_11_1_5 } }, {
	n(WINDS_OF_MYSTERIOUS_FORTUNE_HEADER, {
		q(86695, name(HEADERS.Item, 235054, {isDaily=true})),	-- Always triggers after getting Pristine Mysterious Satchel
		q(90134),	-- Always triggers after getting Pristine Mysterious Satchel
		q(90752),	-- Sometimes triggers after getting Pristine Mysterious Satchel
	}),
})));