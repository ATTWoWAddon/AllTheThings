using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ATT
{
	/// <summary>
	/// Represents a player's individual WoW Account and its combined collection.
	/// </summary>
	public class ATTAccountWideData : SharedCollectionData
	{
		#region Properties
		/// <summary>
		/// The Account Name associated with this account.
		/// </summary>
		public string AccountName { get; private set; }

		/// <summary>
		///
		/// </summary>
		public Dictionary<string, ATTCharacterData> Characters = new Dictionary<string, ATTCharacterData>();

		/// <summary>
		/// All of the artifacts that are a part of this collection.
		/// </summary>
		[SavedVariable("Artifacts")]
		public Container Artifacts = new Container();

		/// <summary>
		/// All of the faction bonuses that are a part of this collection.
		/// </summary>
		[SavedVariable("FactionBonus")]
		public Container FactionBonus = new Container();

		/// <summary>
		/// All of the heirloom ranks that are a part of this collection.
		/// </summary>
		[SavedVariable("HeirloomRanks")]
		public Container HeirloomRanks = new Container();

		/// <summary>
		/// All of the illusions that are a part of this collection.
		/// </summary>
		[SavedVariable("Illusions")]
		public Container Illusions = new Container();

		/// <summary>
		/// All of the sources that are a part of this collection.
		/// </summary>
		[SavedVariable("Sources")]
		public Container Sources = new Container();

		/// <summary>
		/// All of the toys that are a part of this collection.
		/// </summary>
		[SavedVariable("Toys")]
		public Container Toys = new Container();
		#endregion
		#region Constructors
		/// <summary>
		/// Create an instance of the WoW Account class with an associated name.
		/// </summary>
		/// <param name="accountName">The name of the account.</param>
		public ATTAccountWideData(string accountName)
		{
			AccountName = accountName;
		}
		#endregion
		#region Functionality
		/// <summary>
		/// Export the data in this Collection to a set of Comma-Separated Volume (CSV) files.
		/// This is traditionally used within Microsoft Excel.
		/// </summary>
		/// <param name="directory">The directory to write to.</param>
		public override void ExportToCSV(string directory)
		{
			base.ExportToCSV(Path.Combine(directory, AccountName));
		}

		/// <summary>
		/// Import data from the saved variables associated with the account.
		/// </summary>
		/// <param name="savedVariables">The saved variables.</param>
		public void Import(Dictionary<object, object> savedVariables)
		{
			if (savedVariables == null) return;

			// Copy over character information.
			if (savedVariables.TryGetValue("ATTCharacterData", out object o) && o is Dictionary<object, object> characterData)
			{
				foreach (var pair in characterData)
				{
					if (pair.Value is Dictionary<object, object> characterSpecificData)
					{
						// Cache the character.
						var guid = pair.Key.ToString();
						if (!Characters.TryGetValue(guid, out ATTCharacterData character))
						{
							Characters[guid] = character = new ATTCharacterData();
							if (characterSpecificData.TryGetValue("lastPlayed", out o)) character.LastPlayed = long.Parse(o.ToString());
							character.GUID = guid;
						}
						else
						{
							// If the information stored in the database is newer, do not replace the data.
							if (characterSpecificData.TryGetValue("lastPlayed", out o))
							{
								var lastPlayed = long.Parse(o.ToString());
								if (character.LastPlayed >= lastPlayed) continue;
							}
						}

						// Parse in the fields relevant to the character.
						if (characterSpecificData.TryGetValue("name", out o)) character.Name = o.ToString();
						if (characterSpecificData.TryGetValue("realm", out o)) character.Realm = o.ToString();
						if (characterSpecificData.TryGetValue("lvl", out o)) character.Level = int.Parse(o.ToString());
						if (characterSpecificData.TryGetValue("class", out o)) character.Class = o.ToString();
						if (characterSpecificData.TryGetValue("race", out o)) character.Race = o.ToString();
						if (characterSpecificData.TryGetValue("classID", out o)) character.ClassID = int.Parse(o.ToString());
						if (characterSpecificData.TryGetValue("raceID", out o)) character.RaceID = int.Parse(o.ToString());
						if (characterSpecificData.TryGetValue("factionID", out o)) character.FactionID = int.Parse(o.ToString());
						if (characterSpecificData.TryGetValue("Deaths", out o)) character.Deaths = long.Parse(o.ToString());

						// Cycle through the Fields and write the collection data.
						foreach (var field in typeof(ATTCharacterData).GetFields())
						{
							// Copy Over the other tables.
							foreach (SavedVariableAttribute attribute in field.GetCustomAttributes(typeof(SavedVariableAttribute), true))
							{
								if (characterSpecificData.TryGetValue(attribute.Name, out o) && o is Dictionary<object, object> data)
								{
									((Container)field.GetValue(this))?.MergeWith(ToContainerData(data));
								}
							}
						}
					}
				}
			}

			// Copy over account wide information.
			if ((savedVariables.TryGetValue("ATTAccountWideData", out o)) && o is Dictionary<object, object> accountData)
			{
				// Cycle through the Fields and write the collection data.
				foreach (var field in typeof(ATTAccountWideData).GetFields())
				{
					// Copy Over the other tables.
					foreach (SavedVariableAttribute attribute in field.GetCustomAttributes(typeof(SavedVariableAttribute), true))
					{
						if (accountData.TryGetValue(attribute.Name, out o) && o is Dictionary<object, object> data)
						{
							((Container)field.GetValue(this))?.MergeWith(ToContainerData(data));
						}
					}
				}
			}
		}

		/// <summary>
		/// Load the data from the local account data files.
		/// </summary>
		/// <param name="path">The root path for ATT Data.</param>
		public void Load(string path)
		{
			// Check to make sure the file exists first.
			var filename = Path.Combine(path, "Accounts", $"{AccountName}.attact");
			if (File.Exists(filename))
			{
				using (BinaryReader reader = new BinaryReader(File.Open(filename, FileMode.Open)))
				{
					// Read the version number.
					var binaryVersion = reader.ReadInt32();
					if (binaryVersion != 1) return;

					// Read the shared collection data from the stream.
					Load(reader);

					// Read the number of characters from the stream.
					var numberOfCharacters = reader.ReadInt32();
					for (int i = 0; i < numberOfCharacters; ++i)
					{
						// Read the character's information from the stream.
						var characterRealmName = reader.ReadString();
						if (!Characters.TryGetValue(characterRealmName, out ATTCharacterData character))
						{
							// Add a new WoW Character container.
							character = new ATTCharacterData();
							Characters[characterRealmName] = character;
							character.RealmName = characterRealmName;
						}

						// Read the character's data from the stream.
						character.Load(reader);
					}
				}
			}
		}

		/// <summary>
		/// Save the data to the local account data files.
		/// </summary>
		/// <param name="path">The root path for ATT Data.</param>
		public void Save(string path)
		{
			// Create the directory first.
			var filename = Path.Combine(path, "Accounts", $"{AccountName}.attact");

			// Check for Write Permissions Issues.
			var directory = Directory.CreateDirectory(Path.GetDirectoryName(filename));
			if (directory == null) return;

			// Dump the account data into the file.
			using (BinaryWriter writer = new BinaryWriter(File.Open(filename, FileMode.Create)))
			{
				// Write the version number.
				writer.Write(1);

				// Write the shared collection data to the stream.
				Save(writer);

				// Write the number of characters to the stream.
				writer.Write(Characters.Count);

				// Write the character's data to the stream.
				foreach (var character in Characters.Values)
				{
					// Write the character's information to the stream.
					writer.Write(character.RealmName);
					character.Save(writer);
				}
			}
		}

		/// <summary>
		/// Convert a raw data object into the format expected by the importer.
		/// </summary>
		/// <param name="data">The raw data.</param>
		/// <returns>The collection data.</returns>
		public IDictionary<long, CollectionState> ToContainerData(Dictionary<object, object> data)
		{
			var container = new Dictionary<long, CollectionState>();
			foreach (var pair in data)
			{
				container[Convert.ToInt64(pair.Key)] = (CollectionState)Convert.ToInt32(pair.Value);
			}
			return container;
		}

		public override string ToString()
		{
			return $"[Account {AccountName}: ({Characters.Count} Characters) {base.ToString()}]";
		}
		#endregion
	}
}
