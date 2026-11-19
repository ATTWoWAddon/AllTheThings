using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ATT
{
	/// <summary>
	/// Represents a player's individual WoW Character and its associated collection.
	/// </summary>
	public class ATTCharacterData : SharedCollectionData
	{
		/// <summary>
		/// The GUID that identifies this character.
		/// GOTCHA: This identifier changes when a player Server Transfers.
		/// </summary>
		public string GUID { get; set; }

		/// <summary>
		/// The character's name.
		/// </summary>
		public string Name { get; set; }

		/// <summary>
		/// The Realm where this character resides.
		/// </summary>
		public string Realm { get; set; }

		/// <summary>
		/// The fully qualified realm name that represents this character.
		/// </summary>
		public string RealmName
		{
			get { return $"{Realm}-{Name}"; }
			set
			{
				var split = value.Split('-');
				Realm = split[0];
				Name = split[1];
			}
		}

		/// <summary>
		/// This character's Class ID.
		/// </summary>
		public int ClassID { get; set; }

		/// <summary>
		/// This character's Class.
		/// </summary>
		public string Class { get; set; }

		/// <summary>
		/// This character's Race ID.
		/// </summary>
		public int RaceID { get; set; }

		/// <summary>
		/// This character's Race.
		/// </summary>
		public string Race { get; set; }

		/// <summary>
		/// This character's Faction ID.
		/// </summary>
		public int FactionID { get; set; }

		/// <summary>
		/// This character's level.
		/// </summary>
		public int Level { get; set; }

		/// <summary>
		/// This character's deaths.
		/// </summary>
		public long Deaths { get; set; }

		/// <summary>
		/// This character's color-coded display name.
		/// </summary>
		public string Text { get; set; }

		/// <summary>
		/// The last time this character was played.
		/// </summary>
		public long LastPlayed { get; set; }

		/// <summary>
		/// All of the Artifact Relic Item Levels that are a part of this collection.
		/// NOTE: This has a non-standard format and does not work as a container.
		/// </summary>
		/*
		[SavedVariable("ArtifactRelicItemLevels")]
		public Container ArtifactRelicItemLevels = new Container();
		*/

		/// <summary>
		/// Export the data in this Collection to a set of Comma-Separated Volume (CSV) files.
		/// This is traditionally used within Microsoft Excel.
		/// </summary>
		/// <param name="directory">The directory to write to.</param>
		public override void ExportToCSV(string directory)
		{
			base.ExportToCSV(Path.Combine(directory, "Characters", RealmName));
		}
	}
}
