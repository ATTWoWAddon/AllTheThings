using NLua;
using System;
using System.Collections.Generic;
using System.Linq;

namespace ATT
{
    /// <summary>
    /// Provides functionality for performing dynamic data validation on data (dictionary) objects
    /// </summary>
    internal class DataValidator
    {
        private readonly Lua _mainLua;
        private readonly Dictionary<string, List<IValidation>> _allValidations = new Dictionary<string, List<IValidation>>();

        /// <summary>
        /// Specifies whether the validator will attempt to clean the data instead of logging validation errors
        /// </summary>
        public bool OnlyClean { get; set; }

        /// <summary>
        /// Returns a DataValidator built from an existing CustomConfiguration
        /// </summary>
        internal DataValidator(Lua lua, CustomConfiguration config)
        {
            var types = config?["Validation"];

            if (types == null || !types.Defined)
            {
                return;
            }

            OnlyClean = types["clean"];

            _mainLua = lua;

            // known validation scopes
            // field
            var field = types["field"];
            if (field != null)
            {
                AddValidation_field(field);
            }
        }

        public void Validate(IDictionary<string, object> data)
        {
            // no data technically doesn't have keys to match validation criteria... so it's valid
            if (data == null)
            {
                return;
            }

            if (OnlyClean)
            {
                DoAllCleans(data);
            }
            else
            {
                DoAllValidations(data);
            }
        }

        public void Validate(string field, object value, IDictionary<string, object> referenceData)
        {
            if (OnlyClean)
            {
                DoAllCleans(field, value, referenceData);
            }
            else
            {
                DoAllValidations(field, value, referenceData);
            }
        }

        private void DoAllCleans(IDictionary<string, object> data)
        {
            foreach (KeyValuePair<string, List<IValidation>> validationKvp in _allValidations)
            {
                foreach (IValidation validation in validationKvp.Value)
                {
                    validation.Clean(data);
                }
            }
        }

        private void DoAllCleans(string field, object value, IDictionary<string, object> referenceData)
        {
            if (!_allValidations.TryGetValue(field, out List<IValidation> validations))
                return;

            foreach (IValidation validation in validations)
            {
                validation.CleanValue(value, referenceData);
            }
        }

        private void DoAllValidations(IDictionary<string, object> data)
        {
            foreach (KeyValuePair<string, List<IValidation>> validationKvp in _allValidations)
            {
                if (data.TryGetValue(validationKvp.Key, out object val))
                {
                    foreach (IValidation validation in validationKvp.Value)
                    {
                        if (!validation.IsValid(val))
                        {
                            Framework.LogError($"Validation Failure for field '{validation.Key}' ({validation.Reason}):", data);
                        }
                    }
                }
            }
        }

        private void DoAllValidations(string field, object value, IDictionary<string, object> referenceData)
        {
            if (!_allValidations.TryGetValue(field, out List<IValidation> validations))
                return;

            foreach (IValidation validation in validations)
            {
                if (!validation.IsValid(value))
                {
                    Framework.LogError($"Validation Failure for field '{validation.Key}' ({validation.Reason}):", referenceData);
                }
            }
        }

        private void AddValidation_field(CustomConfigurationNode field)
        {
            if (!field.CanEnumerate)
            {
                throw new ArgumentException("Validation.field must be a set of field names and associated validation Criteria");
            }

            foreach (var fieldName in field)
            {
                AddValidation_field_name(fieldName);
            }
        }

        private void AddValidation_field_name(CustomConfigurationNode fieldName)
        {
            if (!fieldName.CanEnumerate)
            {
                throw new ArgumentException($"Validation.field.{fieldName.Key} must be a set of validation Criteria");
            }

            // known validation criteria
            foreach (var criteria in fieldName)
            {
                switch (criteria.Key)
                {
                    // represents a globally-defined object which contains the set of all valid values for a field
                    case "global.match":
                        var globalValue = Framework.ParseAsDictionary<int>(_mainLua.GetTable(criteria)).Values as IEnumerable<object>;
                        if (globalValue == null)
                        {
                            throw new ArgumentNullException($"'{criteria}' is not an existing Lua global set of values:{globalValue}");
                        }
                        AddValidation_match(fieldName.Key, globalValue);
                        break;
                    // represents a set of values which must match the values used in the field
                    case "match":
                        AddValidation_match(fieldName.Key, (object[])criteria);
                        break;
                    // represents a min/max combination that defines the bounds of a given 'long'-typed field
                    case "bounds":
                        AddValidation_bounds(fieldName.Key, (long[])criteria);
                        break;
                    default:
                        Framework.LogWarn($"Validation.field.{fieldName.Key}.{criteria.Key} is not a handled validation type!");
                        break;
                }
            }

        }

        private void AddValidation_bounds(string fieldName, IEnumerable<long> set)
        {
            AddValidation(fieldName, new Validation_bounds(fieldName, set));
        }

        private void AddValidation_match(string fieldName, IEnumerable<object> set)
        {
            var firstValue = set.FirstOrDefault();
            if (firstValue is long _)
            {
                AddValidation(fieldName, new Validation_match<long>(fieldName, set));
            }
            else if (firstValue is decimal _)
            {
                AddValidation(fieldName, new Validation_match<decimal>(fieldName, set));
            }
            else if (firstValue is float _)
            {
                AddValidation(fieldName, new Validation_match<float>(fieldName, set));
            }
            else if (firstValue is string _)
            {
                AddValidation(fieldName, new Validation_match<string>(fieldName, set));
            }
            else if (firstValue is bool _)
            {
                AddValidation(fieldName, new Validation_match<bool>(fieldName, set));
            }
            else
            {
                throw new ArgumentException($"Unhandled Validation Type:{firstValue.GetType().Name}");
            }
        }

        private void AddValidation(string key, IValidation validation)
        {
            if (!_allValidations.TryGetValue(key, out List<IValidation> validations))
            {
                _allValidations[key] = validations = new List<IValidation>();
            }

            validations.Add(validation);
        }
    }

    internal interface IValidation
    {
        string Key { get; }
        string Reason { get; }
        bool IsValid(object value);
        void Clean(IDictionary<string, object> data);
        void CleanValue(object value, IDictionary<string, object> referenceData);
    }

    internal class Validation_match<T> : IValidation
    {
        public string Key { get; private set; }

        public string Reason { get; private set; }

        internal HashSet<T> Values { get; set; }

        internal Validation_match(string key, IEnumerable<object> values)
        {
            Key = key;
            var valList = values.AsTypedEnumerable<T>().ToList();
            Values = new HashSet<T>(valList);
            Reason = "Allowed Values: " + Framework.ToJSON(valList);
        }

        public bool IsValid(object value)
        {
            if (value is IEnumerable<T> set)
            {
                foreach (T tval in set)
                {
                    if (!IsValid(tval))
                    {
                        return false;
                    }
                }
            }
            else if (value is IEnumerable<object> objset)
            {
                foreach (T tval in objset.AsTypedEnumerable<T>())
                {
                    if (!IsValid(tval))
                    {
                        return false;
                    }
                }
            }
            else if (value.TryConvert(out T tval))
            {
                if (!IsValid(tval))
                {
                    return false;
                }
            }
            else
            {
                return false;
            }

            return true;
        }

        public bool IsValid(T value)
        {
            return Values.Contains(value);
        }

        public void Clean(IDictionary<string, object> data)
        {
            if (!data.TryGetValue(Key, out object dataVal))
            {
                return;
            }

            CleanValue(dataVal, data);
        }

        public void CleanValue(object dataVal, IDictionary<string, object> data)
        {
            if (dataVal is List<T> list)
            {
                for (int i = list.Count - 1; i >= 0; i--)
                {
                    if (!IsValid(list[i]))
                    {
                        Framework.LogDebugWarn($"Invalid field '{Key}' Value '{list[i]}' Cleaned", data);
                        list.RemoveAt(i);
                    }
                }
            }
            else if (dataVal is List<object> objlist)
            {
                for (int i = objlist.Count - 1; i >= 0; i--)
                {
                    if (!IsValid(objlist[i]))
                    {
                        Framework.LogDebugWarn($"Invalid field '{Key}' Value '{objlist[i]}' Cleaned", data);
                        objlist.RemoveAt(i);
                    }
                }
            }
            else if (dataVal is T tval)
            {
                if (!IsValid(tval))
                {
                    Framework.LogDebugWarn($"Invalid field '{Key}' Value '{tval}' Cleaned", data);
                    data.Remove(Key);
                }
            }
        }
    }


    internal class Validation_bounds : IValidation
    {
        public string Key { get; private set; }

        public string Reason { get; private set; }

        internal long Min { get; set; }

        internal long Max { get; set; }

        internal Validation_bounds(string key, IEnumerable<long> values)
        {
            Key = key;
            Min = values.ElementAt(0);
            Max = values.ElementAt(1);
            Reason = $"Value Range: {Min} -> {Max}";
        }

        public bool IsValid(object value)
        {
            if (value is IEnumerable<long> set)
            {
                foreach (long tval in set)
                {
                    if (!IsValid(tval))
                    {
                        return false;
                    }
                }
            }
            else if (value is IEnumerable<object> objset)
            {
                foreach (long tval in objset.AsTypedEnumerable<long>())
                {
                    if (!IsValid(tval))
                    {
                        return false;
                    }
                }
            }
            else if (value.TryConvert(out long tval))
            {
                if (!IsValid(tval))
                {
                    return false;
                }
            }
            else
            {
                return false;
            }

            return true;
        }

        public bool IsValid(long value)
        {
            return Min <= value && value <= Max;
        }

        public void Clean(IDictionary<string, object> data)
        {
            if (!data.TryGetValue(Key, out object dataVal))
            {
                return;
            }

            CleanValue(dataVal, data);
        }

        public void CleanValue(object dataVal, IDictionary<string, object> data)
        {
            if (dataVal is List<long> list)
            {
                for (int i = list.Count - 1; i >= 0; i--)
                {
                    if (!IsValid(list[i]))
                    {
                        Framework.LogDebugWarn($"Invalid field '{Key}' Value '{list[i]}' Cleaned", data);
                        list.RemoveAt(i);
                    }
                }
            }
            else if (dataVal is List<object> objlist)
            {
                for (int i = objlist.Count - 1; i >= 0; i--)
                {
                    if (!IsValid(objlist[i]))
                    {
                        Framework.LogDebugWarn($"Invalid field '{Key}' Value '{objlist[i]}' Cleaned", data);
                        objlist.RemoveAt(i);
                    }
                }
            }
            else if (dataVal is long tval)
            {
                if (!IsValid(tval))
                {
                    Framework.LogDebugWarn($"Invalid field '{Key}' Value '{tval}' Cleaned", data);
                    data.Remove(Key);
                }
            }
        }
    }
}
