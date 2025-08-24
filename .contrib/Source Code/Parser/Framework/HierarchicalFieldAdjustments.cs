using System;
using System.Collections.Generic;
using System.Linq;

namespace ATT
{
    /// <summary>
    /// Contains the logic for various Hierarchical Field Adjustments based on various types of logic operations to modify data. These are derived from the x.config files
    /// </summary>
    public static class HierarchicalFieldAdjustments
    {
        private static readonly List<FieldAdjustment> _heirarchicalFieldAdjustments;

        private static readonly HashSet<object> _fieldValues = new HashSet<object>();

        /// <summary>
        /// When the <paramref name="field"/> exists in all the <paramref name="groups"/> with an identical value
        /// it will be removed from said groups and copied into the <paramref name="parent"/>
        /// A / A|A|A => A / _|_|_
        /// _ / A|A|A => A / _|_|_
        /// A / A|B|C => A / A|B|C
        /// </summary>
        /// <remarks>Applied to fields defined in Config[HierarchicalConsolidationFields]</remarks>
        private static void ConsolidateField(string field, IDictionary<string, object> parent, IDictionary<string, object>[] groups)
        {
            foreach (IDictionary<string, object> data in groups)
            {
                if (data.TryGetValue(field, out object value))
                {
                    _fieldValues.Add(value);
                    // not exactly 1 unique value across all groups, then leave
                    if (_fieldValues.Count != 1)
                        return;
                }
                else
                {
                    // field value is missing from a group, cannot consolidate to the parent
                    return;
                }
            }

            object val = _fieldValues.First();
            parent.TryGetValue(field, out object parentVal);
            // parent has a different field val, don't touch it
            if (parentVal != null && !Equals(parentVal, val))
                return;

            parent[field] = val;
            foreach (IDictionary<string, object> data in groups)
            {
                if (data.Remove(field))
                {
                    Framework.LogDebug($"INFO: Removed field {field}={val} due to " + nameof(ConsolidateField), data);
                }
            }
        }

        /// <summary>
        /// When the <paramref name="field"/> exists in all the <paramref name="groups"/> with an identical value
        /// it will be removed from said groups and copied into the <paramref name="parent"/>. Otherwise that field will be removed from the <paramref name="parent"/>
        /// due to it not existing identically within all <paramref name="groups"/>
        /// A / A|A|A => A / _|_|_
        /// _ / A|A|A => A / _|_|_
        /// A / A|B|C => _ / A|B|C
        /// </summary>
        /// <remarks>Applied to fields defined in Config[HierarchicalConsolidationFields]</remarks>
        private static void ForceConsolidateField(string field, IDictionary<string, object> parent, IDictionary<string, object>[] groups)
        {
            bool missing = false;
            foreach (IDictionary<string, object> data in groups)
            {
                if (data.TryGetValue(field, out object value))
                {
                    _fieldValues.Add(value);
                }
                else
                {
                    // field value is missing from a group, cannot consolidate to the parent and it may be removed
                    missing = true;
                }
            }

            // exactly 1 unique value across all groups, then adjust...
            if (_fieldValues.Count == 1)
            {
                if (missing)
                {
                    if (parent.Remove(field))
                    {
                        Framework.LogDebug($"INFO: Removed parent field {field} (missing) due to " + nameof(ForceConsolidateField), parent);
                    }
                    return;
                }
                object val = _fieldValues.First();
                parent[field] = val;
                foreach (IDictionary<string, object> data in groups)
                {
                    if (data.Remove(field))
                    {
                        // awp/rwp are so spammy
                        //Framework.LogDebug($"INFO: Removed field {field}={val} due to " + nameof(ForceConsolidateField), data);
                    }
                }
            }
            else if (_fieldValues.Count > 1)
            {
                // field value is not identical across groups, cannot consolidate to the parent and it will be removed
                if (parent.Remove(field))
                {
                    Framework.LogDebug($"INFO: Removed parent field {field} (multiple) due to " + nameof(ForceConsolidateField), parent);
                }
            }
        }

        /// <summary>
        /// When the <paramref name="field"/> exists in all the <paramref name="groups"/> with an identical value
        /// it will be copied into the <paramref name="parent"/>
        /// A / A|A|A|_ => A / A|A|A|_
        /// _ / A|A|A|_ => A / A|A|A|_
        /// A / A|B|C|_ => A / A|B|C|_
        /// </summary>
        /// <remarks>Applied to fields defined in Config[HierarchicalPropagationFields]</remarks>
        private static void PropagateField(string field, IDictionary<string, object> parent, IDictionary<string, object>[] groups)
        {
            foreach (IDictionary<string, object> data in groups)
            {
                if (data.TryGetValue(field, out object value))
                {
                    _fieldValues.Add(value);
                    // not exactly 1 unique value across all groups, then leave
                    if (_fieldValues.Count != 1)
                        return;
                }
                else
                {
                    // field value is missing from a group, cannot propagate to the parent
                    return;
                }
            }

            object val = _fieldValues.First();
            parent.TryGetValue(field, out object parentVal);
            // parent has existing value, don't touch it
            // e.g. Crit auto-assign to 3.0.1 in crit() if no timeline
            if (parentVal != null)
                return;

            parent[field] = val;
            Framework.LogDebug($"INFO: Set field {field}={val} due to " + nameof(PropagateField), parent);
        }

        /// <summary>
        /// For each of the <paramref name="groups"/> with an identical <paramref name="field"/> value to the the <paramref name="parent"/>,
        /// that value will be removed
        /// A / A|A|A => A / _|_|_
        /// _ / A|A|A => _ / A|A|A
        /// A / A|B|C => A / _|B|C
        /// </summary>
        /// <remarks>Applied to fields defined in Config[HierarchicalNonRepeatFields]</remarks>
        private static void NonRepeatField(string field, IDictionary<string, object> parent, IDictionary<string, object>[] groups)
        {
            if (!parent.TryGetValue(field, out object parentVal))
            {
                return;
            }

            foreach (IDictionary<string, object> data in groups)
            {
                if (!data.TryGetValue(field, out object value))
                    continue;

                // if child has exactly the same value as parent, we won't repeat it in the child
                if (!Equals(parentVal, value))
                    continue;

                if (data.Remove(field))
                {
                    // awp and rwp are spammy
                    //Framework.LogDebug($"INFO: Removed field {field}={parentVal} due to " + nameof(NonRepeatField), data);
                }
                // child without the value is ignored
            }
        }

        /// <summary>
        /// If any of the <paramref name="groups"/> contains the same identical <paramref name="field"/> value, it will be copied to the the <paramref name="parent"/>
        /// A / A|A|_ => A / A|A|_
        /// _ / A|A|_ => A / A|A|_
        /// A / A|B|_ => A / A|B|_
        /// </summary>
        /// <remarks>Applied to fields defined in Config[HierarchicalAnyPropagationFields]</remarks>
        private static void AnyPropagateField(string field, IDictionary<string, object> parent, IDictionary<string, object>[] groups)
        {
            foreach (IDictionary<string, object> data in groups)
            {
                if (data.TryGetValue(field, out object value))
                {
                    _fieldValues.Add(value);
                    // not exactly 1 unique value across all groups, then leave
                    if (_fieldValues.Count != 1)
                        return;
                }
            }

            // not exactly 1 unique value across all groups, then leave
            if (_fieldValues.Count != 1)
                return;

            object val = _fieldValues.First();
            parent.TryGetValue(field, out object parentVal);
            // parent has a different field val, don't touch it
            if (parentVal != null && !Equals(parentVal, val))
                return;

            parent[field] = val;
            Framework.LogDebug($"INFO: Set field {field}={val} due to " + nameof(AnyPropagateField), parent);
        }

        /// <summary>
        /// Copies the minimum field value of the <paramref name="groups"/> into the <paramref name="parent"/>. If the type of the value does not
        /// implement <see cref="IComparable"/> then only the first non-null value found will be used
        /// A / A|A|_ => A / A|A|_
        /// _ / B|C|_ => B / B|C|_
        /// A / A|B|_ => A / A|B|_
        /// </summary>
        /// <remarks>Applied to fields defined in Config[HierarchicalMinimumFields]</remarks>
        private static void MinimumField(string field, IDictionary<string, object> parent, IDictionary<string, object>[] groups)
        {
            parent.TryGetValue(field, out object parentVal);
            // parent has an existing field val, don't touch it
            if (parentVal != null)
                return;

            foreach (IDictionary<string, object> data in groups)
            {
                if (data.TryGetValue(field, out object value))
                {
                    _fieldValues.Add(value);
                }
            }

            object min = null;
            switch (_fieldValues.Count)
            {
                case 0:
                    return;
                case 1:
                    min = _fieldValues.First();
                    break;
                default:
                    foreach (var value in _fieldValues)
                    {
                        if (min == null)
                        {
                            min = value;
                        }
                        else if (value.TryConvert(out IComparable compareValue) && compareValue.CompareTo(min) < 0)
                        {
                            min = value;
                        }
                    }
                    break;
            }

            // parent has existing value, don't touch it
            if (Equals(parentVal, min))
                return;

            parent[field] = min;
            Framework.LogDebug($"INFO: Set field {field}={min} due to " + nameof(MinimumField), parent);
        }

        /// <summary>
        /// Copies the maximum field value of the <paramref name="groups"/> into the <paramref name="parent"/>. If the type of the value does not
        /// implement <see cref="IComparable"/> then only the first non-null value found will be used
        /// A / A|A|_ => A / A|A|_
        /// _ / B|C|_ => C / B|C|_
        /// A / A|B|_ => B / A|B|_
        /// </summary>
        /// <remarks>Applied to fields defined in Config[HierarchicalMaximumFields]</remarks>
        private static void MaximumField(string field, IDictionary<string, object> parent, IDictionary<string, object>[] groups)
        {
            parent.TryGetValue(field, out object parentVal);
            // parent has an existing field val, don't touch it
            if (parentVal != null)
                return;

            foreach (IDictionary<string, object> data in groups)
            {
                if (data.TryGetValue(field, out object value))
                {
                    _fieldValues.Add(value);
                }
            }

            object max = null;
            switch (_fieldValues.Count)
            {
                case 0:
                    return;
                case 1:
                    max = _fieldValues.First();
                    break;
                default:
                    foreach (var value in _fieldValues)
                    {
                        if (max == null)
                        {
                            max = value;
                        }
                        else if (value.TryConvert(out IComparable compareValue) && compareValue.CompareTo(max) > 0)
                        {
                            max = value;
                        }
                    }
                    break;
            }

            // parent has existing value, don't touch it
            if (Equals(parentVal, max))
                return;

            parent[field] = max;
            Framework.LogDebug($"INFO: Set field {field}={max} due to " + nameof(MaximumField), parent);
        }

        static HierarchicalFieldAdjustments()
        {
            _heirarchicalFieldAdjustments = new List<FieldAdjustment>();
            string[] fields = Framework.Config["HierarchicalMinimumFields"];
            foreach (string field in fields ?? Array.Empty<string>())
            {
                _heirarchicalFieldAdjustments.Add(new FieldAdjustment() { Field = field, Adjustment = MinimumField });
            }
            fields = Framework.Config["HierarchicalMaximumFields"];
            foreach (string field in fields ?? Array.Empty<string>())
            {
                _heirarchicalFieldAdjustments.Add(new FieldAdjustment() { Field = field, Adjustment = MinimumField });
            }
            fields = Framework.Config["HierarchicalForceConsolidationFields"];
            foreach (string field in fields ?? Array.Empty<string>())
            {
                _heirarchicalFieldAdjustments.Add(new FieldAdjustment() { Field = field, Adjustment = ForceConsolidateField });
            }
            fields = Framework.Config["HierarchicalConsolidationFields"];
            foreach (string field in fields ?? Array.Empty<string>())
            {
                _heirarchicalFieldAdjustments.Add(new FieldAdjustment() { Field = field, Adjustment = ConsolidateField });
            }
            fields = Framework.Config["HierarchicalPropagationFields"];
            foreach (string field in fields ?? Array.Empty<string>())
            {
                _heirarchicalFieldAdjustments.Add(new FieldAdjustment() { Field = field, Adjustment = PropagateField });
            }
            fields = Framework.Config["HierarchicalNonRepeatFields"];
            foreach (string field in fields ?? Array.Empty<string>())
            {
                _heirarchicalFieldAdjustments.Add(new FieldAdjustment() { Field = field, Adjustment = NonRepeatField });
            }
            fields = Framework.Config["HierarchicalAnyPropagationFields"];
            foreach (string field in fields ?? Array.Empty<string>())
            {
                _heirarchicalFieldAdjustments.Add(new FieldAdjustment() { Field = field, Adjustment = AnyPropagateField });
            }
        }

        public static void Apply(IDictionary<string, object> parent, List<object> rawgroups)
        {
            if ((rawgroups?.Count ?? 0) == 0) return;

            IDictionary<string, object>[] groups = rawgroups.AsTypedEnumerable<IDictionary<string, object>>().ToArray();

            foreach (var fieldAdjustment in _heirarchicalFieldAdjustments)
            {
                _fieldValues.Clear();
                fieldAdjustment.Adjustment(fieldAdjustment.Field, parent, groups);
            }
        }

        private class FieldAdjustment
        {
            internal string Field { get; set; }

            internal Action<string, IDictionary<string, object>, IDictionary<string, object>[]> Adjustment { get; set; }
        }
    }
}
