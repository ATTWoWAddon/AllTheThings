using System;

namespace ATT.DB.Types
{
    [Flags]
    public enum TypeFlags : long
    {
        ProgressBar = 0x1,
        DoNotDisplay = 0x2,
        Alliance = 0x200,
        Horde = 0x400,
        IsGuild = 0x4000,
    }

    //public static implicit operator object(TypeFlags t) => (long)t;
}
