using System.Collections.Generic;

namespace ATT.DB.Types
{
    /// <summary>
    /// https://wago.tools/db2/BattlePetSpecies
    /// </summary>
    [DataModule]
    public class BattlePetSpecies : IDBType, IWagoSpellID
    {
        public long ID { get; set; }
        [Localize]
        public string Description_lang { get; set; }
        [Localize]
        public string SourceText_lang { get; set; }
        public long CreatureID { get; set; }
        public long SummonSpellID { get; set; }
        public long IconFileDataID { get; set; }
        public long PetTypeEnum { get; set; }
        public long Flags { get; set; }
        public long SourceTypeEnum { get; set; }
        public long CardUIModelSceneID { get; set; }
        public long LoadoutUIModelSceneID { get; set; }
        public long CovenantID { get; set; }

        #region Data Transformations
        public long SpellID
        {
            get { return SummonSpellID; }
        }
        #endregion
    }
}
