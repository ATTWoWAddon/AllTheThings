using ATT.DB.Types;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using static ATT.Framework;

namespace ATT.FieldTypes
{
    public class LockCriteria : IProcessedField, IExportableField, IMergeField
    {
        private const string Field = "lc";
        private readonly IDictionary<string, object> _data;
        private IDictionary<string, HashSet<decimal>> _raw = new Dictionary<string, HashSet<decimal>>();

        public LockCriteria(IDictionary<string, object> data) { _data = data; }

        public bool HasData => _raw?.Any() ?? false;

        public int Count { get; private set; }

        public override string ToString() => ToJSON(AsExportType());

        public ISet<decimal> GetLcType(string type, bool soft = true)
        {
            if (_raw == null)
            {
                if (soft)
                    return null;

                _raw = new Dictionary<string, HashSet<decimal>>();
            }
            if (!_raw.TryGetValue(type, out HashSet<decimal> vals))
            {
                if (soft)
                    return null;

                vals = new HashSet<decimal>();
                _raw.Add(type, vals);
            }
            return vals;
        }

        public static void Merge(IDictionary<string, object> data, object value)
        {
            LockCriteria lc;
            if (!data.TryGetValue(Field, out object lcObj))
            {
                lc = new LockCriteria(data);
                data[Field] = lc;
            }
            else
            {
                lc = lcObj as LockCriteria;
            }

            if (value is LockCriteria mergeProviders)
            {
                lc.Merge(mergeProviders);
            }
            else
            {
                lc.Merge(value);
            }
        }

        public object AsExportType()
        {
            if ((_raw?.Count ?? 0) == 0)
            {
                return null;
            }


            var lcList = new List<object>() { Count };

            foreach (var lcType in _raw)
            {
                var type = lcType.Key;

                foreach (decimal id in lcType.Value.OrderBy(id => id))
                {
                    lcList.Add(type);
                    lcList.Add(id);
                }
            }

            return lcList;
        }

        public void Consolidate() { }

        public void Incorporate() { }

        public void Validate()
        {
            if (!HasData) return;

            if (Count <= 0)
            {
                LogError($"LockCriteria '{Field}' with an invalid match count <= 0", _data);
            }

            // TODO: complete
        }

        public void Merge(object value)
        {
            if (value is LockCriteria mergeLc)
            {
                Merge(mergeLc);
                return;
            }

            List<object> lockCriteria = Objects.ConvertToList(_data, Field, value);

            // validate that the lock criteria is the expected format
            if (lockCriteria == null || (lockCriteria.Count % 2) != 1)
            {
                LogError($"Failed parsing '{Field}' : {ToJSON(value)} - Expected an odd number of elements in an array of values.", _data);
                return;
            }

            // first value is a count
            if (lockCriteria.FirstOrDefault().TryConvert(out int lcCount))
            {
                if (Count == 0)
                {
                    Count = lcCount;
                }
                else if (Count != lcCount)
                {
                    LogError($"Cannot determine proper merge for two LockCriteria with different Count checks. {ToJSON(this)} <> {ToJSON(value)}", _data);
                    return;
                }
            }

            // following sequence should be pairs of string-number values
            for (int i = 1; i < lockCriteria.Count; i += 2)
            {
                try
                {
                    string critKey = lockCriteria[i] as string;
                    lockCriteria.SafeIndex(i + 1).TryConvert(out decimal critVal);

                    if (string.IsNullOrWhiteSpace(critKey) || critVal < 1)
                    {
                        LogError($"Failed parsing '{Field}' : {ToJSON(value)} - Must consist of a flat sequence of [string,number] pairs of values.", _data);
                    }
                    else
                    {
                        GetLcType(critKey, false).Add(critVal);
                    }
                }
                catch (Exception)
                {
                    LogError($"Failed parsing '{Field}' : {ToJSON(value)} - Must consist of a flat sequence of [string,number] pairs of values.", _data);
                }
            }
        }

        private void Merge(LockCriteria merge)
        {
            if (merge == null)
            {
                LogWarn("Why is there a null LockCriteria to merge?", _data);
                return;
            }

            if (Count > 0 && Count != merge.Count)
            {
                LogError($"Cannot determine proper merge for two LockCriteria with different Count checks. {ToJSON(this)} <> {ToJSON(merge)}", _data);
                return;
            }

            Count = merge.Count;

            foreach (KeyValuePair<string, HashSet<decimal>> kvp in merge._raw)
            {
                var lcType = GetLcType(kvp.Key, false);
                foreach (decimal val in kvp.Value)
                {
                    lcType.Add(val);
                }
            }
        }
    }
}
