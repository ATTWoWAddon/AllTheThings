-------------------------------------------------------------------
--     B L A C K   M A R K E T   A U C T I O N   H O U S E       --
-------------------------------------------------------------------
BLACK_MARKET_AUCTION_HOUSE = createHeader({
	readable = "Black Market Auction House",
	icon = [[~_.asset("Category_Blackmarket")]],
	constant = "BLACK_MARKET_AUCTION_HOUSE",
	text = {
		en = [[~BLACK_MARKET_AUCTION_HOUSE]],
	},
	description = {
		en = "Instead of buying items from other players like the regular Auction House, items on the Black Market are generated and listed by NPCs. The items are listed for one day only. The items for sale vary from items that were difficulty to acquire to TCG items that have no other source. All items are listed infrequently, so it should not be seen as a reliable way to farm rarities.",
		-- TODO: de = "",
		-- TODO: es = "",
		-- TODO: mx = "",
		-- TODO: fr = "",
		-- TODO: it = "",
		-- TODO: ko = "",
		-- TODO: pt = "",
		-- TODO: ru = "",
		-- TODO: cn = "",
		-- TODO: tw = "",
	},
});
root(ROOTS.ExpansionFeatures, {
	n(BLACK_MARKET_AUCTION_HOUSE, {
		timeline = { TIMELINE.ADDED_1_60_1 },
		symselector=SymSelector.BMAH,
		u = BLACK_MARKET,
		groups = {
			n(ARMOR, {
				---- DUNGEON SET 1 ----
				-- Hunter
				i(16674),	-- Beaststalker's Tunic
				-- Mage
				i(16686),	-- Magister's Crown
				i(16688),	-- Magister's Robes
				-- Rogue
				i(16709),	-- Shadowcraft Pants
				-- Shaman
				i(16670),	-- Boots of Elements
				-- Warrior
				i(16733),	-- Spaulders of Valor
				-- Warlock
				i(16701),	-- Dreadmist Mantle
			}),
			filter(BATTLE_PETS, {
				i(249897),	-- Flowery Lashling Bud
				i(23713),	-- Hippogryph Hatchling
				i(13342),	-- Pet Fish
				i(11474),	-- Sprite Darter Egg
				i(249898),	-- Wilted Lashling Bud
			}),
			--[[
			filter(MOUNTS, {
				
			}),
			filter(SHIRTS, {
				
			}),
			]]--
			filter(TABARDS, {
				i(23705),	-- Tabard of Flame
			}),
			filter(TOYS, {
				i(23716),	-- Carved Ogre Idol
			}),
		},
	}),
});