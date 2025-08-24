-- RACES
HUMAN = 1;
DWARF = 3;
NIGHTELF = 4;
GNOME = 7;
DRAENEI = 11;
WORGEN = 22;
VOIDELF = 29;
LIGHTFORGED = 30;
KULTIRAN = 32;
DARKIRON = 34;
MECHAGNOME = 37;

DRACTHYR_ALLIANCE = 52;
DRACTHYR_HORDE = 70;

EARTHEN_ALLIANCE = 85;
EARTHEN_HORDE = 84;

PANDAREN_NEUTRAL = 24;
PANDAREN_ALLIANCE = 25;
PANDAREN_HORDE = 26;

ORC = 2;
UNDEAD = 5;
TAUREN = 6;
TROLL = 8;
GOBLIN = 9;
BLOODELF = 10;
NIGHTBORNE = 27;
HIGHMOUNTAIN_TAUREN = 28;
ZANDALARI = 31;
VULPERA = 35;
MAGHAR = 36;

ALLIANCE_ONLY = {
	HUMAN,
	DWARF,
	NIGHTELF,
	GNOME,
	-- #if AFTER TBC
	DRAENEI,
		-- #if AFTER CATA
		WORGEN,
			-- #if AFTER MOP
			PANDAREN_ALLIANCE,
				-- #if AFTER 7.3.5
				VOIDELF,
				LIGHTFORGED,
					-- #if AFTER BFA
					KULTIRAN,
					DARKIRON,
						-- #if AFTER 8.3.0
						MECHAGNOME,
							-- #if AFTER 10.0.2
							DRACTHYR_ALLIANCE,
								-- #if AFTER TWW
								EARTHEN_ALLIANCE,
								-- #endif
							-- #endif
						-- #endif
					-- #endif
				-- #endif
			-- #endif
		-- #endif
	-- #endif
};
HORDE_ONLY = {
	ORC,
	UNDEAD,
	TAUREN,
	TROLL,
	-- #if AFTER TBC
	BLOODELF,
		-- #if AFTER CATA
		GOBLIN,
			-- #if AFTER MOP
			PANDAREN_HORDE,
				-- #if AFTER 7.3.5
				NIGHTBORNE,
				HIGHMOUNTAIN_TAUREN,
					-- #if AFTER BFA
					ZANDALARI,
					MAGHAR,
						-- #if AFTER 8.3.0
						VULPERA,
							-- #if AFTER 10.0.2
							DRACTHYR_HORDE,
								-- #if AFTER TWW
								EARTHEN_HORDE,
								-- #endif
							-- #endif
						-- #endif
					-- #endif
				-- #endif
			-- #endif
		-- #endif
	-- #endif
};
ALL_RACES = { PANDAREN_NEUTRAL }
for _,v in pairs(ALLIANCE_ONLY) do table.insert(ALL_RACES,v) end
for _,v in pairs(HORDE_ONLY) do table.insert(ALL_RACES,v) end
