using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ATT
{
	/// <summary>
	/// The Binary Data Formatter Interface.
	/// Provides generic function structuring interfaces with which to save and load binary data associated with a given class.
	/// </summary>
	public interface IBinaryDataFormatter
	{
		/// <summary>
		/// Export the collection data to the builder for use in CSV files.
		/// </summary>
		/// <param name="builder">The builder.</param>
		void Export(StringBuilder builder);

		/// <summary>
		/// Load the collection data from the data reader.
		/// </summary>
		/// <param name="reader">The reader.</param>
		void Load(BinaryReader reader);

		/// <summary>
		/// Save the collection data to the data writer.
		/// </summary>
		/// <param name="writer">The writer.</param>
		void Save(BinaryWriter writer);
	}
}
