using System;
using System.Collections;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;

namespace ATT
{
	/// <summary>
	/// The Container class.
	/// Handles the conglomerate states of a specific object classification within a table of the Database.
	/// </summary>
	public class Container : IDictionary<long, CollectionState>, IBinaryDataFormatter
	{
		#region Backing Fields
		/// <summary>
		/// The internal dictionary used to hold the data securely.
		/// </summary>
		private Dictionary<long, CollectionState> _Dictionary = new Dictionary<long, CollectionState>();
		#endregion
		#region Events
		/// <summary>
		/// Triggered when something in the container changes states.
		/// </summary>
		public event Action<Container> OnContainerChanged;
		#endregion
		#region Properties
		/// <summary>
		/// The total amount of things partially collected within this container.
		/// </summary>
		public readonly PropertyChanged<long> PartialTotal = new PropertyChanged<long>(0);

		/// <summary>
		/// The total amount of things fully collected within this container.
		/// </summary>
		public readonly PropertyChanged<long> Total = new PropertyChanged<long>(0);
		#endregion
		#region Functionality
		/// <summary>
		/// Export the data in this Container to a Comma-Separated Volume. (CSV)
		/// This is traditionally used within Microsoft Excel.
		/// </summary>
		/// <param name="filename">The full file name to write to.</param>
		public void ExportToCSV(string filename)
		{
			// Utilize a String Builder to compress the data into a Comma-Separated Volume.
			var builder = new StringBuilder();

			// First grab all of the keys in the dictionary. We need them to be in order.
			var keys = Keys.ToList();
			keys.Sort();
			if (keys.Any())
			{
				// The first key needs to have the partial total and the final total next to it.
				var currentKey = keys[0];
				if (currentKey == 1) builder.Append(this[1]).Append(',').Append(PartialTotal.Value).Append(',').Append(Total.Value);
				else builder.Append(0).Append(',').Append(PartialTotal.Value).Append(',').Append(Total.Value);

				// Export each of the keys.Fill in the gaps with blanks.
				CollectionState state;
				for (long i = Math.Max(2, currentKey), count = keys.Last() + 1; i < count; ++i)
				{
					builder.AppendLine().Append(TryGetValue(i, out state) ? (int)state : 0);
				}
			}
			else
			{
				// No keys, so simply write 0, Partial Total, and Total as the first row.
				builder.Append(0).Append(',').Append(PartialTotal.Value).Append(',').Append(Total.Value);
			}

			// Write the Data to a file.
			System.IO.File.WriteAllText(filename, builder.ToString());
		}

		/// <summary>
		/// Merge another container into this container.
		/// </summary>
		/// <param name="container">The other container to merge with.</param>
		public void MergeWith(IDictionary<long, CollectionState> container)
		{
			// Pause the event handlers.
			bool changed = false;
			Total.Paused = true;
			PartialTotal.Paused = true;

			// Copy over the data into the dictionary.
			foreach (var pair in container)
			{
				// Ignore Not Collected states.
				if (pair.Value == CollectionState.No) continue;

				// If we had a previously assigned state, do some special work.
				if (_Dictionary.TryGetValue(pair.Key, out CollectionState previousState))
				{
					// The state is the same as before or we already have this as collected, continue.
					if (previousState == pair.Value || previousState == CollectionState.Yes) continue;

					// We already have this as collected, no need to keep checking.
					if (previousState == CollectionState.Partial)
					{
						// If we are upgrading a Partial Collected to a Fully Collected
						if (pair.Value == CollectionState.Yes)
						{
							_Dictionary[pair.Key] = pair.Value;
							changed = true;
							++Total.Value;
						}
						continue;
					}
				}

				// Assign this value as new.
				_Dictionary[pair.Key] = pair.Value;
				++PartialTotal.Value;
				changed = true;
				if (pair.Value == CollectionState.Yes) ++Total.Value;
			}

			// Unpause the event handlers.
			Total.Paused = false;
			PartialTotal.Paused = false;
			if (changed) OnContainerChanged?.Invoke(this);
		}

		/// <summary>
		/// Export the collection data to the builder for use in CSV files.
		/// </summary>
		/// <param name="builder">The builder.</param>
		public virtual void Export(StringBuilder builder)
		{
			// First grab all of the keys in the dictionary. We need them to be in order.
			var keys = Keys.ToList();
			keys.Sort();
			if (keys.Any())
			{
				// The first key needs to have the partial total and the final total next to it.
				var currentKey = keys[0];
				if (currentKey == 1) builder.Append(this[1]).Append(',').Append(PartialTotal.Value).Append(',').Append(Total.Value);
				else builder.Append(0).Append(',').Append(PartialTotal.Value).Append(',').Append(Total.Value);

				// Export each of the keys.Fill in the gaps with blanks.
				CollectionState state;
				for (long i = Math.Max(2, currentKey), count = keys.Last() + 1; i < count; ++i)
				{
					builder.AppendLine().Append(TryGetValue(i, out state) ? (int)state : 0);
				}
			}
			else
			{
				// No keys, so simply write 0, Partial Total, and Total as the first row.
				builder.Append("0,0,0");
			}
		}

		/// <summary>
		/// Load the collection data from the data reader.
		/// </summary>
		/// <param name="reader">The reader.</param>
		public virtual void Load(BinaryReader reader)
		{
			// Read the collection data from the stream.
			var temp = new Dictionary<long, CollectionState>();
			var count = reader.ReadInt32();
			for (int i = 0; i < count; ++i)
			{
				var key = reader.ReadInt64();
				temp[key] = (CollectionState)reader.ReadByte();
			}
			Clear();
			MergeWith(temp);
		}

		/// <summary>
		/// Save the collection data to the data writer.
		/// </summary>
		/// <param name="writer">The writer.</param>
		public virtual void Save(BinaryWriter writer)
		{
			// Write the number of pairs to the stream.
			writer.Write(Count);
			foreach (var pair in _Dictionary)
			{
				writer.Write(pair.Key);
				writer.Write((byte)pair.Value);
			}
		}
		#endregion
		#region IDictionary Implementation
		/// <summary>
		/// Get or Set the Collection State for a given entry in the container.
		/// </summary>
		/// <param name="key">The entry.</param>
		/// <returns>The collection state.</returns>
		public CollectionState this[long key]
		{
			get { return _Dictionary.TryGetValue(key, out CollectionState state) ? state : CollectionState.No; }
			set
			{
				// Check against the previous state.
				if (TryGetValue(key, out CollectionState previousState))
				{
					// Identical to the previous state, return immediately.
					if (previousState == value) return;

					// If this state was previously fully Collected... Downgrade?
					if (previousState == CollectionState.Yes)
					{
						// Not Collected also removes the partial total.
						if (value == CollectionState.No) --PartialTotal.Value;
						--Total.Value;
						_Dictionary[key] = value;
						OnContainerChanged?.Invoke(this);
						return;
					}
					else
					{
						// If this state was previously partially Collected, it could go either way.
						if (previousState == CollectionState.Partial)
						{
							// Not Collected also removes the partial total.
							if (value == CollectionState.No)
							{
								--PartialTotal.Value;
								_Dictionary.Remove(key);
								OnContainerChanged?.Invoke(this);
								return;
							}
							else if (value == CollectionState.Yes)
							{
								++Total.Value;
								_Dictionary[key] = value;
								OnContainerChanged?.Invoke(this);
								return;
							}
						}
					}
				}

				// If the state we're applying is "Not Collected", then we don't care about this.
				if (value == CollectionState.No) return;

				// Assign this value as new.
				_Dictionary[key] = value;
				++PartialTotal.Value;
				if (value == CollectionState.Yes) ++Total.Value;
				OnContainerChanged?.Invoke(this);
			}
		}

		/// <summary>
		/// Get a list of all of the active keys in the container.
		/// </summary>
		public ICollection<long> Keys
		{
			get { return _Dictionary.Keys; }
		}

		/// <summary>
		/// Get a list of all of the active values in the container.
		/// </summary>
		public ICollection<CollectionState> Values
		{
			get { return _Dictionary.Values; }
		}

		/// <summary>
		/// Get the total number of pairs stored in the container.
		/// </summary>
		public int Count
		{
			get { return _Dictionary.Count; }
		}

		/// <summary>
		/// Whether or not this container is read only.
		/// </summary>
		public bool IsReadOnly
		{
			get { return false; }
		}

		/// <summary>
		/// Attempt to add the value to the container.
		/// </summary>
		/// <param name="key">The key.</param>
		/// <param name="value">The value.</param>
		public void Add(long key, CollectionState value)
		{
			this[key] = value;
		}

		/// <summary>
		/// Attempt to add the item to the container.
		/// </summary>
		/// <param name="item">The item.</param>
		public void Add(KeyValuePair<long, CollectionState> item)
		{
			this[item.Key] = item.Value;
		}

		/// <summary>
		/// Clear the contents of this container.
		/// </summary>
		public void Clear()
		{
			_Dictionary.Clear();
			PartialTotal.Value = 0;
			Total.Value = 0;
		}

		/// <summary>
		/// Determine whether a given item exists in the container in its current pair.
		/// </summary>
		/// <param name="item">The item.</param>
		/// <returns>Whether or not the item exists in the container.</returns>
		public bool Contains(KeyValuePair<long, CollectionState> item)
		{
			return _Dictionary.Contains(item);
		}

		/// <summary>
		/// Determine whether or not the key exists within the container.
		/// </summary>
		/// <param name="key">The key.</param>
		/// <returns>Whether or not the key exists in the container.</returns>
		public bool ContainsKey(long key)
		{
			return _Dictionary.ContainsKey(key);
		}

		/// <summary>
		/// Copy the contents of this container into the array at the given index.
		/// </summary>
		/// <param name="array">The array.</param>
		/// <param name="arrayIndex">The index of the array to start inserting key value pairs.</param>
		public void CopyTo(KeyValuePair<long, CollectionState>[] array, int arrayIndex)
		{
			int length = array.Length;
			foreach (var pair in _Dictionary)
			{
				if (arrayIndex < length)
				{
					array[arrayIndex] = pair;
					++arrayIndex;
				}
				else break;
			}
		}

		/// <summary>
		/// Get the enumerator for which to loop upon.
		/// </summary>
		/// <returns>The enumerator.</returns>
		public IEnumerator<KeyValuePair<long, CollectionState>> GetEnumerator()
		{
			return _Dictionary.GetEnumerator();
		}

		/// <summary>
		/// Remove the given entry from the container.
		/// </summary>
		/// <param name="key">The key.</param>
		/// <returns>Whether or not the entry was removed successfully.</returns>
		public bool Remove(long key)
		{
			if (this[key] != CollectionState.No)
			{
				this[key] = CollectionState.No;
				return true;
			}
			return false;
		}

		/// <summary>
		/// Remove the given item from the container.
		/// </summary>
		/// <param name="item">The item.</param>
		/// <returns>Whether or not the entry was removed successfully.</returns>
		public bool Remove(KeyValuePair<long, CollectionState> item)
		{
			return Remove(item.Key);
		}

		/// <summary>
		/// Attempt to acquire the current state of a given entry without violating index policy.
		/// </summary>
		/// <param name="key">The key.</param>
		/// <param name="value">The value.</param>
		/// <returns>Whether or not a value was contained in the container for the given entry.</returns>
		public bool TryGetValue(long key, out CollectionState value)
		{
			return _Dictionary.TryGetValue(key, out value);
		}

		/// <summary>
		/// Get the enumerator for the container.
		/// </summary>
		/// <returns>The enumerator.</returns>
		IEnumerator IEnumerable.GetEnumerator()
		{
			return _Dictionary.GetEnumerator();
		}
		#endregion
	}
}
