using System;

namespace ATT.DB.Types
{
    [Flags]
    public enum RaceTypeBitIndexes : int
    {
        // CRIEVE NOTE: This is a sort order refactor based on the PlayableRaceBit in https://wago.tools/db2/ChrRaces?build=11.1.7.61048&filter%5BPlayableRaceBit%5D=%3E-1&page=2&sort%5BPlayableRaceBit%5D=asc
        HUMAN = 0,
        ORC = 1,
        DWARF = 2,
        NIGHTELF = 3,
        UNDEAD = 4,
        TAUREN = 5,
        GNOME = 6,
        TROLL = 7,
        GOBLIN = 8,
        BLOODELF = 9,
        DRAENEI = 10,
        DARKIRON = 11,
        VULPERA = 12,
        MAGHAR = 13,
        MECHAGNOME = 14,
        DRACTHYR_HORDE = 15,
        DRACTHYR_ALLIANCE = 16,
        EARTHEN_HORDE = 17,
        EARTHEN_ALLIANCE = 18,
        WORGEN = 21,
        PANDAREN_NEUTRAL = 23,
        PANDAREN_ALLIANCE = 24,
        PANDAREN_HORDE = 25,
        NIGHTBORNE = 26,
        HIGHMOUNTAIN_TAUREN = 27,
        VOIDELF = 28,
        LIGHTFORGED = 29,
        ZANDALARI = 30,
        KULTIRAN = 31,
        /*
        HUMAN = 0x1,
        ORC = 0x2,
        DWARF = 0x4,
        NIGHTELF = 0x8, // Guessing, there isn't a Night Elf specific item in the game
        UNDEAD = 0x10,  // Guessing, there isn't an Undead specific item in the game
        TAUREN = 0x20,  // Guessing, there isn't an Undead specific item in the game
        GNOME = 0x40,
        TROLL = 0x80,
        GOBLIN = 0x100,
        BLOODELF = 0x200,
        DRAENEI = 0x400,    // Guessing, there isn't a Draenei specific item in the game
        DARKIRON = 0x800,
        VULPERA = 0x1000,
        MAGHAR = 0x2000,
        MECHAGNOME = 0x4000,

        // Guessing from this point on
        DRACTHYR_HORDE = 0x8000,
        DRACTHYR_ALLIANCE = 0x10000,
        EARTHEN_HORDE = 0x20000,
        EARTHEN_ALLIANCE = 0x40000,
        WORGEN = 0x80000,
        PANDAREN_NEUTRAL = 0x100000,
        PANDAREN_ALLIANCE = 0x200000,
        PANDAREN_HORDE = 0x400000,
        NIGHTBORNE = 0x800000,
        HIGHMOUNTAIN_TAUREN = 0x1000000,
        VOIDELF = 0x2000000,
        LIGHTFORGED = 0x4000000,
        ZANDALARI = 0x8000000,
        KULTIRAN = 0x10000000,
        */
    }
}
