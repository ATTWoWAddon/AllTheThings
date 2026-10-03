-- Expansions
EXPANSION = {
	CLASSIC = 1,-- Vanilla / WoW Classic
	TBC = 2,	-- The Burning Crusade
	WRATH = 3,	-- Wrath of the Lich King (alternatively WOTLK, use WRATH since it's easier to remember)
	CATA = 4,	-- Cataclysm
	MOP = 5,	-- Mists of Pandaria
	WOD = 6,	-- Warlords of Draenor
	LEGION = 7,	-- Legion
	BFA = 8,	-- Battle For Azeroth
	SL = 9,		-- Shadowlands
	DF = 10,	-- Dragonflight
	TWW = 11,	-- The War Within
	MID = 12,	-- Midnight
	TLT = 13,	-- The Last Titan
};

-- #if AFTER TLT
CURRENT_EXPANSION = EXPANSION.TLT;
-- #elseif AFTER MID
CURRENT_EXPANSION = EXPANSION.MID;
-- #elseif AFTER TWW
CURRENT_EXPANSION = EXPANSION.TWW;
-- #elseif AFTER DF
CURRENT_EXPANSION = EXPANSION.DF;
-- #elseif AFTER SL
CURRENT_EXPANSION = EXPANSION.SL;
-- #elseif AFTER BFA
CURRENT_EXPANSION = EXPANSION.BFA;
-- #elseif AFTER LEGION
CURRENT_EXPANSION = EXPANSION.LEGION;
-- #elseif AFTER WOD
CURRENT_EXPANSION = EXPANSION.WOD;
-- #elseif AFTER CATA
CURRENT_EXPANSION = EXPANSION.CATA;
-- #elseif AFTER WRATH
CURRENT_EXPANSION = EXPANSION.WRATH;
-- #elseif AFTER TBC
CURRENT_EXPANSION = EXPANSION.TBC;
-- #else
CURRENT_EXPANSION = EXPANSION.CLASSIC;
-- #endif
