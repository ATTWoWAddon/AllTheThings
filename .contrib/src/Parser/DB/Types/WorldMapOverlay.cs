using System.Collections.Generic;

namespace ATT.DB.Types
{
    /// <summary>
    /// https://wago.tools/db2/worldmapoverlay
    /// </summary>
    [DataModule]
    public class WorldMapOverlay : IDBType
    {
        public long ID { get; set; }
        public long UiMapArtID { get; set; }
        public float TextureWidth { get; set; }
        public float TextureHeight { get; set; }
        public float OffsetX { get; set; }
        public float OffsetY { get; set; }
        public float HitRectTop { get; set; }
        public float HitRectBottom { get; set; }
        public float HitRectLeft { get; set; }
        public float HitRectRight { get; set; }
        public long PlayerConditionID { get; set; }
        public long Flags { get; set; }
        public long AreaID_0 { get; set; }
        public long AreaID_1 { get; set; }
        public long AreaID_2 { get; set; }
        public long AreaID_3 { get; set; }
    }
}
