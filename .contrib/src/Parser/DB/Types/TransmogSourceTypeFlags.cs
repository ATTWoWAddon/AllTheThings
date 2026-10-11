using System;

namespace ATT.DB.Types
{
    [Flags]
    public enum TransmogSourceTypeFlags : long
    {
        Unknown = 0x0,
        DungeonJournalEncounter = 0x1,
        Quest = 0x2,
        Vendor = 0x3,
        WorldDrop = 0x4,
        HiddenUntilCollected = 0x5,
        CantCollect = 0x6,
        Achievement = 0x7,
        Profession = 0x8,
        NotValidForTransmog = 0x9,
        Unk = 0x10
    }

    //public static implicit operator object(TransmogSourceTypeFlags t) => (long)t;
}
