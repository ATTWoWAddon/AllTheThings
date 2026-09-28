---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(DRAGON_ISLES, bubbleDown({ ["timeline"] = { ADDED_10_1_0 } }, {
	m(ZARALEK_CAVERN, {
		n(ZONE_REWARDS, {
			i(205340),	-- Formula: Enchanted Aspect's Shadowflame Crest (RECIPE!)
			i(205338),	-- Formula: Enchanted Whelpling's Shadowflame Crest (RECIPE!)
			i(205339),	-- Formula: Enchanted Wyrm's Shadowflame Crest (RECIPE!)
			i(205337),	-- Formula: Titan Training Matrix V (RECIPE!)
			i(204075, {	-- Whelpling's Shadowflame Crest Fragment
				["timeline"] = { ADDED_10_1_0, REMOVED_10_2_0 },
			}),
			i(204460),	-- Zaralek Glowspores
			i(204911),	-- Propagated Spore
			n(BACK, {
				i(204915),	-- Deeprock Cape
				i(204914),	-- Deeprock Cloak
			}),
			filter(CLOTH, {
				i(204926),	-- Moonless Belt
				i(204922),	-- Moonless Gloves
				i(204923),	-- Moonless Hood
				i(204920),	-- Moonless Robe
				i(204925),	-- Moonless Shoulderpads
				i(204921),	-- Moonless Slippers
				i(204924),	-- Moonless Trousers
				i(204927),	-- Moonless Wristband
			}),
			filter(FINGER_F, {
				i(204916),	-- Deeprock Loop
				i(204917),	-- Deeprock Ring
				i(204918),	-- Deeprock Signet
			}),
			filter(LEATHER, {
				i(204929),	-- Sunless Boots
				i(204935),	-- Sunless Bracers
				i(204931),	-- Sunless Cowl
				i(204930),	-- Sunless Grips
				i(204932),	-- Sunless Pants
				i(204933),	-- Sunless Spaulders
				i(204928),	-- Sunless Tunic
				i(204934),	-- Sunless Wrap
			}),
			filter(MAIL, {
				i(204936),	-- Skyless Blouse
				i(204943),	-- Skyless Chain
				i(204940),	-- Skyless Coif
				i(204944),	-- Skyless Cuffs
				i(204942),	-- Skyless Epaulets
				i(204941),	-- Skyless Greaves
				i(204938),	-- Skyless Grips
				i(204937),	-- Skyless Striders
			}),
			filter(NECK_F, {
				i(204919),	-- Deeprock Pendant
			}),
			filter(PLATE, {
				i(204952),	-- Starless Armplates
				i(204945),	-- Starless Breastplate
				i(204948),	-- Starless Fullhelm
				i(204947),	-- Starless Gauntlets
				i(204951),	-- Starless Girdle
				i(204949),	-- Starless Legguards
				i(204950),	-- Starless Mantle
				i(204946),	-- Starless Warboots
			}),
			filter(TRINKET_F, {
				i(204728),	-- Friendship Censer
			}),
			n(WEAPONS, {
				i(204955),	-- Neltharic Beatstick
				i(204958),	-- Neltharic Blade
				i(204959),	-- Neltharic Blaster
				i(204967),	-- Neltharic Greatsword
				i(204961),	-- Neltharic Partisan
				i(204954),	-- Neltharic Ritual Knife
				i(204957),	-- Neltharic Saber
				i(204965),	-- Neltharic Shield
				i(204953),	-- Neltharic Shiv
				i(204956),	-- Neltharic Smasher
				i(204960),	-- Neltharic Spear
				i(204963),	-- Neltharic Staff
				i(204964),	-- Neltharic Torch
				i(204981),	-- Neltharic Wand
				i(204966),	-- Neltharic Warglaive
				i(204962),	-- Neltharic Warstaff
				i(204979),	-- Neltharic Wingaxe
				i(204980),	-- Neltharic Wingsplitter
			}),
		}),
	}),
})));
