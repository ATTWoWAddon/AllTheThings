using System;

namespace ATT
{
    /// <summary>
    /// The property changed class. Handles a backing field and event for when the state of that variable changes.
    /// </summary>
    /// <typeparam name="T">The type.</typeparam>
    public class PropertyChanged<T>
    {
        /// <summary>
        /// The Backing Field to store the internal value.
        /// </summary>
        private T _BackingField = default;

        /// <summary>
        /// Whether or not this property changed while paused.
        /// </summary>
        private bool _Changed = false;

        /// <summary>
        /// Whether or not this property event handler is paused.
        /// </summary>
        private bool _Paused = false;

        /// <summary>
        /// Triggered when the value changes state.
        /// </summary>
        public event Action<T> OnValueChanged;

        /// <summary>
        /// The current value stored in the property.
        /// </summary>
        public T Value
        {
            get { return _BackingField; }
            set
            {
                if (_BackingField.Equals(value)) return;
                _BackingField = value;
                if (_Paused)
                {
                    _Changed = true;
                    return;
                }
                OnValueChanged?.Invoke(value);
            }
        }

        /// <summary>
        /// Construct an empty Property with the default value.
        /// </summary>
        public PropertyChanged() { }

        /// <summary>
        /// Construct an empty Property with a specific default value.
        /// </summary>
        /// <param name="defaultValue">The default value.</param>
        public PropertyChanged(T defaultValue)
        {
            _BackingField = defaultValue;
        }

        /// <summary>
        /// Whether or not the event handling associated with this property has been paused.
        /// </summary>
        public bool Paused
        {
            get { return _Paused; }
            set
            {
                if (_Paused == value) return;
                _Paused = value;
                if (!value && _Changed)
                {
                    _Changed = false;
                    OnValueChanged?.Invoke(_BackingField);
                }
            }
        }
    }
}
