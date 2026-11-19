using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Threading.Tasks;

namespace ATT
{
	/// <summary>
	/// The Shared Collection Data class.
	/// Contains the tables that are shared between Account and Character collection structures.
	/// </summary>
	public class SharedCollectionData : IBinaryDataFormatter
	{
		#region Containers
		/// <summary>
		/// All of the achievements that are a part of this collection.
		/// </summary>
		[SavedVariable("Achievements")]
		public Container Achievements = new Container();

		/// <summary>
		/// All of the azerite essence ranks that are a part of this collection.
		/// </summary>
		[SavedVariable("AzeriteEssenceRanks")]
		public Container AzeriteEssenceRanks = new Container();

		/// <summary>
		/// All of the buildings that are a part of this collection.
		/// </summary>
		[SavedVariable("Buildings")]
		public Container Buildings = new Container();

		/// <summary>
		/// All of the factions that are a part of this collection.
		/// </summary>
		[SavedVariable("Factions")]
		public Container Factions = new Container();

		/// <summary>
		/// All of the flight paths that are a part of this collection.
		/// </summary>
		[SavedVariable("FlightPaths")]
		public Container FlightPaths = new Container();

		/// <summary>
		/// All of the followers that are a part of this collection.
		/// </summary>
		[SavedVariable("Followers")]
		public Container Followers = new Container();

		/// <summary>
		/// All of the quests that are a part of this collection.
		/// </summary>
		[SavedVariable("Quests")]
		public Container Quests = new Container();

		/// <summary>
		/// All of the spells that are a part of this collection.
		/// </summary>
		[SavedVariable("Spells")]
		public Container Spells = new Container();

		/// <summary>
		/// All of the titles that are a part of this collection.
		/// </summary>
		[SavedVariable("Titles")]
		public Container Titles = new Container();
		#endregion
		#region Functionality
		/// <summary>
		/// Export the data in this Collection to a set of Comma-Separated Volume (CSV) files.
		/// This is traditionally used within Microsoft Excel.
		/// </summary>
		/// <param name="directory">The directory to write to.</param>
		public virtual void ExportToCSV(string directory)
		{
			var builder = new StringBuilder();
			Export(builder);
			Directory.CreateDirectory(directory);
			File.WriteAllText(Path.Combine(directory, "Summary.csv"), builder.ToString());

			// Export all of the associated Data tables.
			foreach (var fieldInfo in GetType().GetFields())
			{
				if (typeof(Container).IsAssignableFrom(fieldInfo.FieldType))
				{
					builder.Clear();
					((Container)fieldInfo.GetValue(this)).Export(builder);
					File.WriteAllText(Path.Combine(directory, fieldInfo.Name + ".csv"), builder.ToString());
				}
			}
		}

		/// <summary>
		/// Export the collection data to the builder for use in CSV files.
		/// </summary>
		/// <param name="builder">The builder.</param>
		public virtual void Export(StringBuilder builder)
		{
			var temp = new Dictionary<string, FieldInfo>();
			foreach (var fieldInfo in GetType().GetFields())
			{
				if (typeof(Container).IsAssignableFrom(fieldInfo.FieldType))
				{
					temp[fieldInfo.Name] = fieldInfo;
				}
			}
			var keys = temp.Keys.ToList();
			keys.Sort();
			var i = 0;
			foreach (var key in keys)
			{
				if (i++ > 0) builder.AppendLine();
				var container = (Container)temp[key].GetValue(this);
				builder.Append(key).Append(',').Append(container.PartialTotal.Value).Append(',').Append(container.Total.Value);
			}
		}

		/// <summary>
		/// Load the collection data from the data reader.
		/// </summary>
		/// <param name="reader">The reader.</param>
		public virtual void Load(BinaryReader reader)
		{
			var temp = new Dictionary<string, FieldInfo>();
			foreach (var fieldInfo in GetType().GetFields())
			{
				if (typeof(IBinaryDataFormatter).IsAssignableFrom(fieldInfo.FieldType))
				{
					temp[fieldInfo.Name] = fieldInfo;
				}
			}

			// Read the total number of fields to expect.
			int count = reader.ReadInt32();
			for (int i = 0; i < count; ++i)
			{
				var fieldName = reader.ReadString();
				var fieldTypeName = reader.ReadString();
				if (temp.TryGetValue(fieldName, out FieldInfo fieldInfo))
				{
					((IBinaryDataFormatter)fieldInfo.GetValue(this)).Load(reader);
				}
				else
				{
					// We need to load and then discard this data to preserve data integrity.
					((IBinaryDataFormatter)Activator.CreateInstance(Type.GetType(fieldTypeName))).Load(reader);
				}
			}
		}

		/// <summary>
		/// Save the collection data to the data writer.
		/// </summary>
		/// <param name="writer">The writer.</param>
		public virtual void Save(BinaryWriter writer)
		{
			var temp = new List<FieldInfo>();
			foreach (var fieldInfo in GetType().GetFields())
			{
				if (typeof(IBinaryDataFormatter).IsAssignableFrom(fieldInfo.FieldType))
				{
					temp.Add(fieldInfo);
				}
			}

			// Write the total number of fields to expect in the file.
			writer.Write(temp.Count);
			foreach (var fieldInfo in temp)
			{
				writer.Write(fieldInfo.Name);
				writer.Write(fieldInfo.FieldType.FullName);
				((IBinaryDataFormatter)fieldInfo.GetValue(this)).Save(writer);
			}
		}

		public override string ToString()
		{
			var temp = new Dictionary<string, FieldInfo>();
			foreach (var fieldInfo in GetType().GetFields())
			{
				if (typeof(Container).IsAssignableFrom(fieldInfo.FieldType))
				{
					temp[fieldInfo.Name] = fieldInfo;
				}
			}
			var keys = temp.Keys.ToList();
			keys.Sort();
			var i = 0;
			var builder = new StringBuilder();
			foreach (var key in keys)
			{
				var container = (Container)temp[key].GetValue(this);
				if (container.PartialTotal.Value > 0)
				{
					if (i++ > 0) builder.Append(", ");
					builder.Append(container.Total.Value).Append(' ').Append(key);
				}
			}

			return builder.ToString();
		}
		#endregion
	}
}
