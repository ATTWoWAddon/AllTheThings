using System;
using System.Collections.Generic;
using System.Linq;
using static ATT.Framework;

namespace ATT.FieldTypes
{
    /// <summary>
    /// Used to represent the jumbled mess that is the 'cost' Field
    /// </summary>
    public class Cost : IExportableField, IProcessedField
    {
        private const string Field = "cost";

        private readonly IDictionary<string, object> _data;

        private long Gold { get; set; }

        public bool HasData => Gold > 0 || (_costTypes?.Any() ?? false);

        public override string ToString() => ToJSON(AsExportType());

        private Dictionary<string, IDictionary<decimal, long>> _costTypes;

        private Cost(IDictionary<string, object> data) { _data = data; }

        private IDictionary<decimal, long> GetCostType(string type)
        {
            if (_costTypes == null)
            {
                _costTypes = new Dictionary<string, IDictionary<decimal, long>>();
            }
            if (!_costTypes.TryGetValue(type, out IDictionary<decimal, long> costs))
            {
                costs = new Dictionary<decimal, long>();
                _costTypes.Add(type, costs);
            }
            return costs;
        }

        public long? GetCost(string type, decimal id)
        {
            if (_costTypes != null && _costTypes.TryGetValue(type, out IDictionary<decimal, long> costs))
            {
                if (costs.TryGetValue(id, out long amount))
                {
                    return amount;
                }
            }
            return null;
        }

        public static void Merge(IDictionary<string, object> data, string type, decimal id, long amount)
        {
            Merge(data, new object[] { new object[] { type, id, amount } });
        }

        public static void Merge(IDictionary<string, object> data, object value)
        {
            Cost cost;
            if (!data.TryGetValue("cost", out object costobj))
            {
                cost = new Cost(data);
                data[Field] = cost;
                if (value is Cost newCost)
                {
                    cost.Merge(newCost);
                }
            }
            else
            {
                cost = costobj as Cost;
            }

            if (value is Cost mergeCost)
            {
                cost.Merge(mergeCost);
            }
            else
            {
                cost.Merge(value);
            }
        }

        public object AsExportType()
        {
            if ((_costTypes?.Count ?? 0) == 0)
            {
                return Gold;
            }

            return new List<List<object>>(_costTypes.SelectMany(kvp => kvp.Value.Select(i => new List<object> { kvp.Key, i.Key, i.Value }))
                            .Union(Gold != 0 ? Enumerable.Range(0, 1).Select(g => new List<object> { "g", Gold }) : Array.Empty<List<object>>()));
        }

        public void Validate()
        {
            // only Gold
            if ((_costTypes?.Count ?? 0) == 0)
            {
                if (Gold == 0)
                {
                    LogError($"'cost' has a gold value of 0. Remove it.", _data);
                }
            }

            if (_costTypes == null) return;

            foreach (var costType in _costTypes)
            {
                switch (costType.Key)
                {
                    case "i":
                        foreach (var costRec in costType.Value)
                        {
                            decimal costID = costRec.Key;
                            Validator.Validate("itemID", costID, _data);
                        }
                        break;
                    case "c":
                        foreach (var costRec in costType.Value)
                        {
                            decimal costID = costRec.Key;
                            Validator.Validate("currencyID", costID, _data);
                        }
                        break;
                }
            }
        }

        public void Incorporate() { }

        public void Consolidate()
        {
            // only Gold
            if ((_costTypes?.Count ?? 0) == 0)
            {
                return;
            }

            List<decimal> clean = new List<decimal>();
            List<string> cleanTypes = new List<string>();
            foreach (var costType in _costTypes)
            {
                switch (costType.Key)
                {
                    case "i":
                        foreach (var costRec in costType.Value)
                        {
                            decimal costID = costRec.Key;

                            if (PreProcessorTags.Contains("ANYCLASSIC"))
                            {
                                // if the cost is an item, we want that item to be listed as having been referenced to keep it out of Unsorted
                                Items.MarkItemAsReferenced((long)costID);
                            }

                            var item = Items.GetNull(costID);
                            if (item == null || !Items.IsItemReferenced(costID))
                            {
                                // The item isn't Sourced in Retail version
                                // Holy... there are actually a ton of these. Will Debug Log for now until they are cleaned up...
                                LogDebugWarn($"Non-Sourced 'cost-item' {costID}", _data);
                            }
                            else if (item.TryGetValue("u", out long u) && u == 1)
                            {
                                // The item was classified as never being implemented
                                LogDebug($"INFO: Removed NYI 'cost-item' {costID}", _data);
                                clean.Add(costID);
                            }

                            // anything that costs Mark of Honor should have pvp tag
                            if (costID == 137642M)
                            {
                                _data["pvp"] = true;
                            }

                            // Single Cost Item on a Achieve/Criteria group should be represented as a Provider instead
                            if (_data.TryGetValue("achID", out long _) ||
                                _data.TryGetValue("criteriaID", out long _))
                            {
                                if (!_data.TryGetValue("providers", out object _) &&
                                    costType.Value.Count == 1 &&
                                    costRec.Value == 1)
                                {
                                    clean.Add(costID);
                                    Objects.Merge(_data, "provider", new List<object> { "i", costRec.Key });
                                }
                            }
                            break;
                        }
                        break;
                    case "c":
                        foreach (var costRec in costType.Value)
                        {
                            decimal costID = costRec.Key;

                            if (costID == 1602M ||   // Conquest
                                costID == 1792M)     // Honor
                            {
                                _data["pvp"] = true;
                            }

                            // Ensure the Currency has been Sourced since it will need to show as a Cost in-game
                            if (!TryGetSOURCED("currencyID", costID, out var _))
                            {
                                LogWarn($"Non-Sourced 'cost-currency' {costID}", _data);
                            }
                            break;
                        }
                        break;
                }
            }

            foreach (decimal id in clean)
            {
                _costTypes["i"].Remove(id);
            }

            foreach (var costType in _costTypes)
            {
                if (costType.Value.Count == 0)
                {
                    cleanTypes.Add(costType.Key);
                }
            }

            foreach (var costType in cleanTypes)
            {
                _costTypes.Remove(costType);
            }
        }

        private void Merge(object value)
        {
            // simple gold cost
            if (value.TryConvert(out long gold, true))
            {
                Gold = gold;
                return;
            }

            // Convert the raw data to a list of generic objects.
            var costsObjs = Objects.CompressToList(value);
            if (costsObjs == null)
            {
                LogError("Encountered '" + Field + "' with invalid format: " + ToJSON(value), _data);
                return;
            }

            // verify each generic object is itself a list of generic objects so we have nice typed values to work with
            List<List<object>> costsList = new List<List<object>>();
            bool nonNested = false;
            foreach (var costObj in costsObjs)
            {
                var costList = Objects.CompressToList(costObj);
                // assume that a single cost list was used for this 'cost' Field... warn about it being non-standard
                if (costList == null)
                {
                    nonNested = true;
                    break;
                }
                costsList.Add(costList);
            }

            if (nonNested)
            {
                LogError("Encountered '" + Field + "' with invalid format: " + ToJSON(costsObjs), _data);
                return;
            }

            // build the internal cost dictionaries
            for (int i = costsList.Count - 1; i >= 0; --i)
            {
                var costObj = costsList[i];
                string costType = costObj[0].ToString();
                IDictionary<decimal, long> costDict;
                switch (costType)
                {
                    case "i":
                    case "c":
                        if (costObj.Count < 3)
                        {
                            LogError("Encountered '" + Field + "' with invalid format: " + ToJSON(costObj), _data);
                            continue;
                        }
                        costDict = GetCostType(costType);
                        break;
                    case "g":
                        if (costObj.Count != 2)
                        {
                            LogError("Encountered '" + Field + "' with invalid format: " + ToJSON(costObj), _data);
                            continue;
                        }
                        if (costObj[1].TryConvert(out gold))
                        {
                            Gold = gold;
                        }
                        else
                        {
                            LogError("Encountered '" + Field + "' with invalid format: " + ToJSON(costObj), _data);
                        }
                        continue;
                    default:
                        LogError("Encountered '" + Field + "' with invalid format: " + ToJSON(costObj), _data);
                        continue;
                }

                // some costs are only included for certain phases
                if (costObj.Count == 4)
                {
                    var phase = long.Parse(costObj[3].ToString());
                    if (phase > MAX_PHASE_ID && !(phase >= 1000 && (phase < (MAX_PHASE_ID + 1) * 100)))
                    {
                        LogDebug($"INFO: Excluding Cost {ToJSON(costObj)} due to Phase {phase} within Max Phase {MAX_PHASE_ID}", _data);
                        continue;
                    }

                    if (Phases != null && !Phases.ContainsKey(phase))
                    {
                        LogError($"Undefined Phase '{phase}', please make sure a phase definition exists in the .contrib/lib/Constants/Phases.lua file.");
                    }
                    else MarkPhaseAsRequired(phase);
                }

                // add the cost data into the cost object
                costObj[1].TryConvert(out decimal id);
                costObj[2].TryConvert(out long amount);

                if (costDict.TryGetValue(id, out long existingAmount))
                {
                    if (existingAmount != amount)
                    {
                        LogDebugWarn($"Replacing existing i-cost {id} x {existingAmount} with new amount {amount}", _data);
                        costDict[id] = amount;
                    }
                }
                else
                {
                    costDict.Add(id, amount);
                }
            }
        }

        private void Merge(Cost merge)
        {
            if (merge.Gold != 0)
            {
                if (Gold != 0 && Gold != merge.Gold)
                {
                    LogDebugWarn($"'{Field}' '{Gold}' added with '{merge.Gold}'", _data);
                }
                Gold = Gold + merge.Gold;
            }

            if (merge._costTypes == null)
            {
                return;
            }

            if (_costTypes == null)
            {
                _costTypes = new Dictionary<string, IDictionary<decimal, long>>(merge._costTypes);
                return;
            }

            foreach (var mergeCostType in merge._costTypes)
            {
                var costType = GetCostType(mergeCostType.Key);
                foreach (var mergeCostRecord in mergeCostType.Value)
                {
                    if (costType.TryGetValue(mergeCostRecord.Key, out long amount))
                    {
                        if (mergeCostRecord.Value != amount)
                        {
                            LogWarn($"'{Field}' '{mergeCostType.Key}' {amount} replaced with '{mergeCostRecord.Value}'", _data);
                            costType[mergeCostRecord.Key] = mergeCostRecord.Value;
                        }
                    }
                }
            }
        }
    }
}
