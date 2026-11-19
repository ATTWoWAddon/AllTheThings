using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ATT
{
	/// <summary>
	/// The Saved Variable Attribute.
	/// Used to synchronize SavedVariable tables with database tables.
	/// </summary>
	[AttributeUsage(AttributeTargets.Property | AttributeTargets.Field, AllowMultiple = true)]
	public class SavedVariableAttribute : Attribute
	{
		/// <summary>
		/// The name of the saved variable used to store this data.
		/// </summary>
		public string Name { get; private set; }

		/// <summary>
		/// Create a saved variable attribute for a given public property.
		/// </summary>
		/// <param name="name">The name of the saved variable to associate with the field.</param>
		public SavedVariableAttribute(string name)
		{
			Name = name;
		}
	}

	/// <summary>
	/// The Saved Variable Per Character Attribute.
	/// Used to synchronize PerCharacter SavedVariable tables with database tables.
	/// </summary>
	[AttributeUsage(AttributeTargets.Property | AttributeTargets.Field, AllowMultiple = true)]
	public class SavedVariablePerCharacterAttribute : Attribute
	{
		/// <summary>
		/// The name of the saved variable used to store this data.
		/// </summary>
		public string Name { get; private set; }

		/// <summary>
		/// Create a saved variable attribute for a given public property.
		/// </summary>
		/// <param name="name">The name of the saved variable to associate with the field.</param>
		public SavedVariablePerCharacterAttribute(string name)
		{
			Name = name;
		}
	}
}
