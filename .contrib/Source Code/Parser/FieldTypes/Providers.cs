using System.Collections;
using System.Collections.Generic;
using System.Linq;
using static ATT.Export;
using static ATT.Framework;

namespace ATT.FieldTypes
{
    public class Providers : IExportableField, IProcessedField, IEnumerable<Provider>
    {
        public const string Field = "providers";

        public static HashSet<string> Types = Config["PROVIDER_TYPES"];

        private readonly IDictionary<string, object> _data;

        public bool HasData => _providerTypes?.Any() ?? false;

        public decimal FirstItemProvider { get; set; }

        public override string ToString() => ToJSON(AsExportType());

        private Dictionary<string, HashSet<decimal>> _providerTypes;

        private Providers(IDictionary<string, object> data) { _data = data; }

        public ISet<decimal> GetProviderType(string type, bool soft = false)
        {
            if (_providerTypes == null)
            {
                if (soft)
                    return null;

                _providerTypes = new Dictionary<string, HashSet<decimal>>();
            }
            if (!_providerTypes.TryGetValue(type, out HashSet<decimal> providers))
            {
                if (soft)
                    return null;

                providers = new HashSet<decimal>();
                _providerTypes.Add(type, providers);
            }
            return providers;
        }

        public static void Merge(IDictionary<string, object> data, string type, decimal id)
        {
            Merge(data, new object[] { new object[] { type, id } });
        }

        public static void Merge(IDictionary<string, object> data, object value)
        {
            Providers providers;
            if (!data.TryGetValue(Field, out object providersObj))
            {
                providers = new Providers(data);
                data[Field] = providers;
            }
            else
            {
                providers = providersObj as Providers;
            }

            if (value is Providers mergeProviders)
            {
                providers.Merge(mergeProviders);
            }
            else
            {
                providers.Merge(value);
            }
        }

        private void Merge(object value)
        {
            // Convert the raw data to a list of generic objects.
            var providersObjs = Objects.CompressToList(value);
            if (providersObjs == null)
            {
                LogError("Encountered '" + Field + "' with invalid format: " + ToJSON(value), _data);
                return;
            }

            // verify each generic object is itself a list of generic objects so we have nice typed values to work with
            List<List<object>> providersList = new List<List<object>>();
            foreach (var providerObj in providersObjs)
            {
                var providerList = Objects.CompressToList(providerObj);
                // the incoming list was actually just a single provider list
                if (providerList == null)
                {
                    providersList.Add(providersObjs);
                    break;
                }
                else
                {
                    providersList.Add(providerList);
                }
            }

            // build the internal provider dictionary
            foreach (var providerObj in providersList)
            {
                string providerType = providerObj[0].ToString();
                if (Types.Contains(providerType))
                {
                    if (providerObj.Count != 2)
                    {
                        LogError("Encountered '" + Field + "' with invalid count: " + ToJSON(providerObj), _data);
                        continue;
                    }

                    // add the provider data into the provider object
                    if (providerObj[1].TryConvert(out decimal id))
                    {
                        // need to track
                        if (!HasData && providerType == "i")
                        {
                            FirstItemProvider = id;
                        }

                        GetProviderType(providerType).Add(id);
                    }
                    else
                    {
                        LogError("Encountered '" + Field + "' with invalid value: " + ToJSON(id), _data);
                    }
                }
                else
                {
                    LogError("Encountered '" + Field + "' with invalid type: " + ToJSON(providerObj), _data);
                    continue;
                }
            }
        }

        private void Merge(Providers merge)
        {
            if (merge._providerTypes == null)
            {
                return;
            }

            if (_providerTypes == null)
            {
                _providerTypes = new Dictionary<string, HashSet<decimal>>(merge._providerTypes);
                return;
            }

            foreach (var mergeProviderType in merge._providerTypes)
            {
                var providerType = GetProviderType(mergeProviderType.Key);
                foreach (var mergeProviderRecord in mergeProviderType.Value)
                {
                    providerType.Add(mergeProviderRecord);
                }
            }
        }

        public bool Remove(string type, decimal id)
        {
            var providers = GetProviderType(type, true);
            if (providers == null)
                return false;

            var removed = providers.Remove(id);

            if (providers.Count == 0)
                _providerTypes.Remove(type);

            if (!HasData)
                _data.Remove(Field);

            return removed;
        }

        public object AsExportType()
        {
            if ((_providerTypes?.Count ?? 0) == 0)
            {
                return null;
            }

            return new List<List<object>>(_providerTypes.OrderBy(kvp => kvp.Key)
                .SelectMany(kvp => kvp.Value.OrderBy(id => id).Select(id => new List<object> { kvp.Key, id })));
        }

        public void Validate()
        {
            if (!HasData) return;

            // Items with coords and single Object provider should list the Object as a Source
            if (_providerTypes.Count == 1
                && _providerTypes.TryGetValue("o", out HashSet<decimal> objProviders)
                && objProviders.Count == 1
                && _data.TryGetValue("itemID", out long itemID)
                && _data.TryGetValue(out Coords coords) && coords.HasData
                && !_data.ContainsKey("_allowObjectProvider"))
            {
                LogWarn($"Item {itemID} with '{Coords.Field}' and single Object Provider {GetProviderType("o").FirstOrDefault()} should not use Object providers; Source the Object with the Item nested or add '_allowObjectProvider' if an Object provider makes sense and the Object does not need to be Sourced itself", _data);
            }
        }

        public void Incorporate()
        {

        }

        public void Consolidate()
        {
            if (!HasData) return;

            // don't modify providers on any special 'type' of Quest
            if (!_data.ContainsKey("type"))
            {
                bool hasQuestGivers = _data.TryGetValue("qgs", out List<object> qgs) && qgs.Count > 0;

                // Item providers consolidation
                var itemIDs = GetProviderType("i", true);
                if (itemIDs != null)
                {
                    var itemIDscopy = itemIDs.ToList();
                    foreach (var itemID in itemIDscopy)
                    {
                        // Remove any NYI Item from being a provider
                        if (TryGetSOURCED("itemID", itemID, out var itemSources) && itemSources.Any(i => i.TryGetValue("_nyi", out bool nyi) && nyi))
                        {
                            // The item was classified as never being implemented
                            Remove("i", itemID);
                            LogDebug($"INFO: Removed NYI 'provider-item' {itemID}", _data);
                        }
                        else
                        {
                            // the First Item provider should also be Sourced
                            if (!hasQuestGivers && FirstItemProvider == itemID)
                            {
                                // Items which are the 'first' provider indicate that their acquisition is what 'provides' the data
                                // and thus they must be Sourced to be properly visible for being acquired
                                if (itemSources == null)
                                {
                                    // The item isn't Sourced in Retail version
                                    // Holy... there are actually a ton of these. Will Debug Log for now until they are cleaned up...
                                    // There are currently about 1000 warnings due to unsourced Items of this nature
                                    LogDebugWarn($"Non-Sourced 'provider-item' {itemID}", _data);
                                }
                            }
                            else
                            {
                                // Classic likes providers to be Items still due to the logic implementation
                                if (!PreProcessorTags.Contains("ANYCLASSIC"))
                                {
                                    if (ObjectData.TryGetMostSignificantObjectType(_data, out ObjectData objectData, out object objKeyValue)
                                        && objectData.ObjectType == "questID")
                                    {
                                        // we will use 'qis' as a way to know that the itemID can be cached directly to that quest instead of as an item cost
                                        Objects.Merge(_data, "qis", itemID);
                                        Remove("i", itemID);
                                    }
                                }
                            }
                        }
                    }
                }
            }

            // remove 's' providers if 'n' or 'i' provider exists
            if (_providerTypes.ContainsKey("s") &&
                (_providerTypes.ContainsKey("n") || _providerTypes.ContainsKey("i")))
            {
                // if there is an NPC/Item provider, remove any Spell providers as redundant
                LogDebug($"INFO: Removing 's' providers due to 'n'/'i' provider also present", _data);
                _providerTypes.Remove("s");
            }

            // Any remaining Providers are marked as referenced based on Type
            var ids = GetProviderType("i", true);
            if (ids != null)
            {
                foreach (var id in ids)
                {
                    Items.MarkItemAsReferenced(id);
                }
            }
            ids = GetProviderType("n", true);
            if (ids != null)
            {
                foreach (var id in ids)
                {
                    NPCS_WITH_REFERENCES[(long)id] = true;
                }
            }
            ids = GetProviderType("o", true);
            if (ids != null)
            {
                foreach (var id in ids)
                {
                    OBJECTS_WITH_REFERENCES[(long)id] = true;
                }
            }
        }

        public IEnumerator<Provider> GetEnumerator()
        {
            if (_providerTypes == null)
                yield break;

            foreach (var providerType in _providerTypes)
            {
                foreach (var id in providerType.Value)
                {
                    yield return new Provider { Type = providerType.Key, ID = id };
                }
            }
        }

        IEnumerator IEnumerable.GetEnumerator() => GetEnumerator();
    }

    public struct Provider
    {
        public string Type { get; set; }
        public decimal ID { get; set; }

        public override string ToString() => $"[{Type}:{ID}]";
    }
}
