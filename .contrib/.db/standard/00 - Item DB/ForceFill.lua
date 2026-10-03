-- Use this file to define certain Things which should always be forcibly 'Filled' in-game
-- (i.e. they bypass the duplicate filled-group checks by hash)

-- This can be useful for Items which commonly show up multiple times within a given minilist or popout and
-- have no risk of infintely recursing their fill logic

-- This DB is defined by Class Type and then its Key Value

ExportDB._Compressed.ForceFillDB = true
ExportDB.ForceFillDB = {
	Item = {
		-- Tokens loaded under Gluth and DS LFR as a duplicate from other bosses, so ideal to fill for both locations
		-- Naxx 10M Tokens
		[40610] = 1,	-- Chestguard of the Lost Conqueror
		[40611] = 1,	-- Chestguard of the Lost Protector
		[40612] = 1,	-- Chestguard of the Lost Vanquisher
		[40619] = 1,	-- Leggings of the Lost Conqueror
		[40620] = 1,	-- Leggings of the Lost Protector
		[40621] = 1,	-- Leggings of the Lost Vanquisher
		[40622] = 1,	-- Spaulders of the Lost Conqueror
		[40623] = 1,	-- Spaulders of the Lost Protector
		[40624] = 1,	-- Spaulders of the Lost Vanquisher
		-- Naxx 25M Tokens
		[40634] = 1,	-- Legplates of the Lost Conqueror
		[40635] = 1,	-- Legplates of the Lost Protector
		[40636] = 1,	-- Legplates of the Lost Vanquisher
		[40625] = 1,	-- Breastplate of the Lost Conqueror
		[40626] = 1,	-- Breastplate of the Lost Protector
		[40627] = 1,	-- Breastplate of the Lost Vanquisher
		[40637] = 1,	-- Mantle of the Lost Conqueror
		[40638] = 1,	-- Mantle of the Lost Protector
		[40639] = 1,	-- Mantle of the Lost Vanquisher
		-- DS LFR Tokens
		[78862] = 1,	-- Chest of the Corrupted Vanquisher
		[78863] = 1,	-- Chest of the Corrupted Conqueror
		[78864] = 1,	-- Chest of the Corrupted Protector
		[78865] = 1,	-- Gauntlets of the Corrupted Vanquisher
		[78866] = 1,	-- Gauntlets of the Corrupted Conqueror
		[78867] = 1,	-- Gauntlets of the Corrupted Protector
		[78868] = 1,	-- Crown of the Corrupted Vanquisher
		[78869] = 1,	-- Crown of the Corrupted Conqueror
		[78870] = 1,	-- Crown of the Corrupted Protector
		[78871] = 1,	-- Leggings of the Corrupted Vanquisher
		[78872] = 1,	-- Leggings of the Corrupted Conqueror
		[78873] = 1,	-- Leggings of the Corrupted Protector
		[78874] = 1,	-- Shoulders of the Corrupted Vanquisher
		[78875] = 1,	-- Shoulders of the Corrupted Conqueror
		[78876] = 1,	-- Shoulders of the Corrupted Protector
	}
}
