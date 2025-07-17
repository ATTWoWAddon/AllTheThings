-- Colors Lib
local _, app = ...;

-- Concepts:
-- Encapsulates the raw Color strings used throughout ATT

-- Color |cAARRGGBB values used throughout ATT
app.DefaultColors = {
	ATT = "ffb4b4ff",
	Raid = "ffFF7D01",	-- Raid chat color
	SourceIgnored = "ffd15517",
	Breadcrumb = "ffcbc3e3",
	Locked = "ff7f40bf",
	LockedWarning = "ffd15517",
	Horde = "ffcc6666",
	Alliance = "ff407fbf",
	Completed = "ff15abff",
	ChatLinkError = "ffff5c6c",
	ChatLinkHQT = "ff7aff92",
	ChatLink = "ff149bfd",
	TooltipDescription = "ff66ccff",
	TooltipLore = "ff42a7eb",
	TooltipWarning = "fffe040f",
	DefaultDifficulty = "ff1eff00",
	RemovedWithPatch = "ffFEC1C0",	-- General channel color
	AddedWithPatch = "ffC0fEC1",	-- Triad permutation of General channel color
	Mount = "ffb19cd9",
	Illusion = "ffff80ff",
	Renown = "ff00bff3",
	Unavailable = "ff808080",
	SymLink = "ffccccff",
	TimeUnder30Min = "ffff0000",
	TimeUnder2Hr = "ffffff00",
	Time = "ff008000",
	-- Settings
	Account = "ff00CCFF",	-- Heirloom color
	Insane = "ffDC267F",	-- Color-impaired friendly
	-- Flat colors
	Default = "ffEDBD21",	-- The "default" yellow colour of text labels, in some rare cases this needs to be referenced
	Red = "ffFF0000",
	White = "ffFFFFFF",
};

app.SetCustomColors = function(colorTable)
	app.Colors = setmetatable(colorTable or {}, {__index = app.DefaultColors})
end

app.SetCustomColors()

-- Blizzard colours

-- Poor					#9D9D9D
-- Common				#FFFFFF
-- Uncommon				#1EFF00
-- Rar					#0070DD
-- Epic					#A335EE
-- Legendary			#FF8000
-- Artifact				#E6CC80
-- Heirloom				#00CCFF

-- Death Knight			#C41E3A
-- Demon Hunter			#A330C9
-- Druid				#FF7C0A
-- Evoker				#33937F
-- Hunter				#AAD372
-- Mage					#3FC7EB
-- Monk					#00FF98
-- Paladin				#F48CBA
-- Priest				#FFFFFF
-- Rogue				#FFF468
-- Shaman				#0070DD
-- Warlock				#8788EE
-- Warrior				#C69B6D