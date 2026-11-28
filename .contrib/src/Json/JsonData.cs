#if NET
#nullable disable
#endif

using System;
using System.Collections.Generic;

namespace ATT
{
	public interface IJsonBackend
	{
		/// <summary>
		/// Read mutable CLR dictionaries and lists, with scalar values including Int64 and Double.
		/// </summary>
		object Deserialize(string json);

		/// <summary>
		/// Read top-level object property names. A valid non-object yields no names.
		/// Duplicate names and malformed input are handled by the selected backend.
		/// </summary>
		IEnumerable<string> ReadObjectKeys(string json);

		string Serialize(object value, JsonWriteOptions options);
	}

	public readonly struct JsonWriteOptions
	{
		/// <summary>
		/// Serialize dictionaries before sequences and include enumerables beyond IList.
		/// </summary>
		public bool IncludeEnumerables { get; }

		/// <summary>
		/// Return replacement text for a dictionary key, or null to serialize its value.
		/// Invoke this before reading the value so masked references are never traversed.
		/// </summary>
		public Func<object, string> DictionaryValueReplacement { get; }

		public JsonWriteOptions(bool includeEnumerables, Func<object, string> dictionaryValueReplacement = null)
		{
			IncludeEnumerables = includeEnumerables;
			DictionaryValueReplacement = dictionaryValueReplacement;
		}
	}

	public sealed class JsonData
	{
		private static readonly HashSet<object> DefaultParserIgnoredKeys = new HashSet<object> { "g", "__parent" };
		private static readonly JsonWriteOptions DefaultParserOptions = new JsonWriteOptions(true,
			key => DefaultParserIgnoredKeys.Contains(key) ? "<ignored>" : null);

		private readonly IJsonBackend backend;
		private readonly JsonWriteOptions parserOptions;

		public JsonData(IJsonBackend backend, JsonWriteOptions? parserOptions = null)
		{
			this.backend = backend ?? throw new ArgumentNullException(nameof(backend));
			this.parserOptions = parserOptions ?? DefaultParserOptions;
		}

		public object Deserialize(string json) => backend.Deserialize(json);

		public IEnumerable<string> ReadObjectKeys(string json) => backend.ReadObjectKeys(json);

		public string Serialize(object value) => backend.Serialize(value, default);

		public string SerializeForParser(object value) => backend.Serialize(value, parserOptions);
	}
}
