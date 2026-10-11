using System.Collections.Generic;

namespace ATT.DB.Types
{
    /// <summary>
    /// https://wago.tools/db2/ItemEffect
    /// </summary>
    [DataModule]
    public class ItemEffect : IWagoSpellID, IDBType
    {
        public long ID { get; set; }
        public int TriggerType { get; set; }
        public long SpellID { get; set; }

        /// <summary>
        /// Returns the priority for treating this ItemEffect as the primary SpellID on an Item
        /// </summary>
        public int SpellIDPriority
        {
            get
            {
                switch (TriggerType)
                {
                    case 6: // OnLearned
                        return 1;
                    case 0: // OnUse
                        return 2;
                    case 1: // OnEquip
                        return 3;
                    case 7: // OnLooted
                        return 4;
                    case 10: // OnLootedForced
                        return 5;
                    case 5: // OnPickup
                        return 6;
                    case 9: // OnPickupForced
                        return 7;
                }

                return int.MaxValue;
            }
        }

        public bool IsKnownTriggerType()
        {
            switch (TriggerType)
            {
                case 0: // OnUse
                case 1: // OnEquip
                case 5: // OnPickup
                case 6: // OnLearned
                case 7: // OnLooted
                case 9: // OnPickupForced
                case 10: // OnLootedForced
                    return true;
            }

            return false;
        }
    }
}
