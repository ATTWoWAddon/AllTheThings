using System.Collections.Generic;
using System.Runtime.Remoting.Channels;

namespace ATT.DB.Types
{
    /// <summary>
    /// https://wago.tools/db2/ItemModifiedAppearance
    /// </summary>
    [DataModule]
    public class ItemModifiedAppearance : IDBType, IWagoItemID, IWagoItemModifiedAppearanceID
    {
        [ExportableData("sourceID")]
        public long ID { get; set; }
        [ExportableData("itemID")]
        public long ItemID { get; set; }
        public long ItemAppearanceModifierID { get; set; }
        public long ItemAppearanceID { get; set; }
        public long OrderIndex { get; set; }
        public long TransmogSourceTypeEnum { get; set; }
        public long Flags { get; set; }
        public long ItemModifiedAppearanceID => ID;
        [ExportableData("modID")]
        public long ExpectedModID
        {
            get
            {
                switch (ItemAppearanceModifierID)
                {
                    // L
                    case 4:
                        return 4;
                    // N
                    case 0:
                        return 0;
                    // H
                    case 1:
                        return 5;
                    // M
                    case 3:
                        return 6;
                    // Glad Set
                    case 159:
                        return 14;

                    default:
                        Framework.LogDebugWarn($"No expected ModID for ItemID={ItemID} from ItemAppearanceModifierID={ItemAppearanceModifierID} on SourceID={ItemModifiedAppearanceID}");
                        return 0;
                };
            }
        }
        [ExportableData("bonusID")]
        public long ExpectedBonusID
        {
            get
            {
                switch (ItemAppearanceModifierID)
                {
                    // None
                    case 0:
                        return 0;
                    // LFR Set
                    case 153:
                        return 6894;
                    // N Set
                    case 154:
                        return 6895;
                    // H Set
                    case 155:
                        return 6896;
                    // M Set
                    case 156:
                        return 6897;
                    // Glad Set
                    case 157:
                        return 6898;
                    // Elite Set
                    case 158:
                        return 8107;
                    // Elite Set
                    case 160:
                        return 7532;

                    // Cloak of Infinite Potential Spam
                    case 161:
                        return 10973;
                    case 162:
                        return 10974;
                    case 163:
                        return 10975;
                    case 164:
                        return 10976;
                    case 165:
                        return 10977;
                    case 166:
                        return 10978;
                    case 167:
                        return 10979;
                    case 168:
                        return 10980;
                    case 169:
                        return 10981;
                    case 170:
                        return 10982;
                    case 171:
                        return 10983;
                    case 172:
                        return 10984;
                    case 173:
                        return 10985;
                    case 174:
                        return 10986;
                    case 175:
                        return 10987;
                    case 176:
                        return 10988;
                    case 177:
                        return 10989;
                    case 178:
                        return 10990;
                    case 179:
                        return 10991;
                    case 180:
                        return 10992;
                    case 181:
                        return 10993;
                    case 182:
                        return 10994;
                    case 183:
                        return 10995;
                    case 184:
                        return 10996;
                    case 185:
                        return 10997;
                    case 186:
                        return 10998;
                    case 187:
                        return 10999;
                    case 188:
                        return 11000;
                    case 189:
                        return 11001;
                    case 190:
                        return 11002;
                    case 191:
                        return 11003;
                    case 192:
                        return 11004;
                    case 193:
                        return 11005;
                    case 194:
                        return 11006;
                    case 195:
                        return 11007;
                    case 196:
                        return 11008;
                    case 197:
                        return 11009;
                    case 198:
                        return 11010;
                    case 199:
                        return 11011;
                    case 200:
                        return 11012;
                    case 201:
                        return 11013;
                    case 202:
                        return 11014;
                    case 203:
                        return 11015;
                    case 204:
                        return 11016;
                    case 205:
                        return 11017;
                    case 206:
                        return 11018;
                    case 207:
                        return 11019;
                    case 208:
                        return 11020;
                    case 209:
                        return 11021;
                    case 210:
                        return 11022;
                    case 211:
                        return 11023;
                    case 212:
                        return 11024;
                    case 213:
                        return 11025;
                    case 214:
                        return 11026;
                    case 215:
                        return 11027;
                    case 216:
                        return 11028;

                    default:
                        Framework.LogWarn($"No expected BonusID for ItemID={ItemID} from ItemAppearanceModifierID={ItemAppearanceModifierID} on SourceID={ItemModifiedAppearanceID}");
                        return 0;
                };
            }
        }

        private TransmogSourceTypeFlags _flags => (TransmogSourceTypeFlags)Flags;

        public bool IsNotValidForTransmog() =>
            (_flags & TransmogSourceTypeFlags.NotValidForTransmog) == TransmogSourceTypeFlags.NotValidForTransmog;
        public bool IsHiddenUntilCollected() =>
            (_flags & TransmogSourceTypeFlags.HiddenUntilCollected) == TransmogSourceTypeFlags.HiddenUntilCollected;
        public bool IsCantCollect() =>
            (_flags & TransmogSourceTypeFlags.CantCollect) == TransmogSourceTypeFlags.CantCollect;
    }
}
