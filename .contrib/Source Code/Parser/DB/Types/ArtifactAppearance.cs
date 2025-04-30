using System.Collections.Generic;

namespace ATT.DB.Types
{
    /// <summary>
    /// https://wago.tools/db2/ArtifactAppearance
    /// </summary>
    internal class ArtifactAppearance : IDBType
    {
        public long ID { get; set; }
        public string Name_lang { get; set; }
        public long ArtifactAppearanceSetID { get; set; }
        public long DisplayIndex { get; set; }
        public long UnlockPlayerConditionID { get; set; }
        public long ItemAppearanceModifierID { get; set; }
        public long UiSwatchColor { get; set; }
        public double UiModelSaturation { get; set; }
        public double UiModelOpacity { get; set; }
        public long OverrideShapeshiftFormID { get; set; }
        public long OverrideShapeshiftDisplayID { get; set; }
        public long UiItemAppearanceID { get; set; }
        public long UiAltItemAppearanceID { get; set; }
        public long Flags { get; set; }
        public long UiCameraID { get; set; }
        public long UsablePlayerConditionID { get; set; }

        public IDictionary<string, object> AsData()
        {
            return new Dictionary<string, object>();
        }
    }
}
