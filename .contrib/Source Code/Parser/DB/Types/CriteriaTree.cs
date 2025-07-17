using System;
using System.Collections.Generic;

namespace ATT.DB.Types
{
    /// <summary>
    /// https://wago.tools/db2/CriteriaTree
    /// </summary>
    [DataModule]
    public class CriteriaTree : IDBType, IWagoChild
    {
        public long ID { get; set; }
        [Localize]
        public string Description_lang { get; set; }
        public long Parent { get; set; }
        public long Amount { get; set; }
        public long Operator { get; set; }
        public long CriteriaID { get; set; }
        public long OrderIndex { get; set; }
        public long Flags { get; set; }

        private TypeFlags _flags => (TypeFlags)Flags;

        public bool IsIgnoreFlags() =>
            (_flags & TypeFlags.DoNotDisplay) == TypeFlags.DoNotDisplay;

        public bool IsAllianceOnlyFlags() =>
            (_flags & TypeFlags.Alliance) == TypeFlags.Alliance;

        public bool IsHordeOnlyFlags() =>
            (_flags & TypeFlags.Horde) == TypeFlags.Horde;

        public bool UseIndependentCriteria() =>
            (_flags & TypeFlags.ProgressBar) == TypeFlags.ProgressBar || Amount > 1;

        /// <summary>
        /// Represents if this CriteriaTree is useful to process by way of indicating the sub-CriteriaTree are ALL (4) or ANY (8)
        /// </summary>
        public bool IsUseful() => Operator == 4 || Operator == 8;
    }
}
