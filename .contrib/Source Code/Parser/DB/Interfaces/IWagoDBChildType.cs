using System.Collections.Generic;

namespace ATT.DB
{
    public interface IWagoDBChildType
    {
        long Parent { get; }
    }

    public static class IWagoDBChildTypeHelper
    {
        public static T GetParent<T>(this T o) where T : IWagoDBChildType, IDBType
        {
            return o.Parent > 0 && WagoData.TryGetValue<T>(o.Parent, out var parent) ? parent : default;
        }

        private static class Cache<T> where T : IWagoDBChildType, IDBType
        {
            private static Dictionary<long, List<T>> Parents;

            public static void Clear()
            {
                Parents = null;
            }

            public static Dictionary<long, List<T>> GetAllParents()
            {
                return Parents ?? (Parents = Rebuild());
            }

            private static Dictionary<long, List<T>> Rebuild()
            {
                var parents = new Dictionary<long, List<T>>();
                foreach(var o in WagoData.GetAll<T>().Values)
                {
                    if (o.Parent > 0)
                    {
                        if (!parents.TryGetValue(o.Parent, out List<T> children))
                        {
                            parents[o.Parent] = children = new List<T>();
                        }
                        children.Add(o);
                    }
                }
                return parents;
            }
        }

        public static void ClearParentCache<T>(this T o) where T : IWagoDBChildType, IDBType
        {
            Cache<T>.Clear();
        }

        public static IEnumerable<T> GetChildren<T>(this T o) where T : IWagoDBChildType, IDBType
        {
            if (o == null) yield break;
            if (Cache<T>.GetAllParents().TryGetValue(o.ID, out List<T> children))
            {
                foreach (var crit in children)
                {
                    yield return crit;
                    foreach (var child in crit.GetChildren())
                    {
                        yield return child;
                    }
                }
            }
        }
    }
}
