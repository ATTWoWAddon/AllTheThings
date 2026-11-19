namespace ATT
{
	/// <summary>
	/// The collection state enumeration.
	/// Used to distinguish the state of a thing within your collection!
	/// </summary>
	public enum CollectionState
	{
		/// <summary>
		/// Not Collected.
		/// </summary>
		No = 0,

		/// <summary>
		/// Collected
		/// </summary>
		Yes = 1,

		/// <summary>
		/// Partially Collected from another Source.
		/// </summary>
		Partial = 2
	}
}
