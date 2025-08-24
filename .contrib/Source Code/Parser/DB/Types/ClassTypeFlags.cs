using System;

namespace ATT.DB.Types
{
    [Flags]
    public enum ClassTypeFlags : long
    {
        WARRIOR = 0x1,
        PALADIN = 0x2,
        HUNTER = 0x4,
        ROGUE = 0x8,
        PRIEST = 0x10,
        DEATH_KNIGHT = 0x20,
        SHAMAN = 0x40,
        MAGE = 0x80,
        WARLOCK = 0x100,
        MONK = 0x200,
        DRUID = 0x400,
        DEMON_HUNTER = 0x800,
        EVOKER = 0x1000,

        // Combos
        CLASSIC =       WARRIOR | PALADIN | HUNTER | ROGUE | PRIEST | SHAMAN | MAGE | WARLOCK | DRUID,
        WRATH =         WARRIOR | PALADIN | HUNTER | ROGUE | PRIEST | SHAMAN | MAGE | WARLOCK | DRUID | DEATH_KNIGHT,
        MOP =           WARRIOR | PALADIN | HUNTER | ROGUE | PRIEST | SHAMAN | MAGE | WARLOCK | DRUID | DEATH_KNIGHT | MONK,
        LEGION =        WARRIOR | PALADIN | HUNTER | ROGUE | PRIEST | SHAMAN | MAGE | WARLOCK | DRUID | DEATH_KNIGHT | MONK | DEMON_HUNTER,
        DRAGONFLIGHT =  WARRIOR | PALADIN | HUNTER | ROGUE | PRIEST | SHAMAN | MAGE | WARLOCK | DRUID | DEATH_KNIGHT | MONK | DEMON_HUNTER | EVOKER,
        ALL =           DRAGONFLIGHT,
    }

    //public static implicit operator object(ClassTypeFlags t) => (long)t;
}
