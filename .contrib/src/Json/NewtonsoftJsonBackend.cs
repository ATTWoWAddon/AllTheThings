#if NET
#nullable disable
#endif

using System;
using System.Collections;
using System.Collections.Generic;
using System.Globalization;
using System.IO;
using System.Numerics;
using Newtonsoft.Json;

namespace ATT
{
	public sealed class NewtonsoftJsonBackend : IJsonBackend
	{
		public object Deserialize(string json)
		{
			if (string.IsNullOrWhiteSpace(json))
				return null;

			try
			{
				using (var reader = CreateReader(json))
				{
					if (!ReadContent(reader))
						return null;

					var value = ReadValue(reader);
					EnsureEndOfDocument(reader);
					return value;
				}
			}
			catch (JsonException)
			{
				// Some callers skip invalid records while reading harvested data.
				return null;
			}
		}

		public IEnumerable<string> ReadObjectKeys(string json)
		{
			using (var reader = CreateReader(json))
			{
				ReadRequiredContent(reader);
				List<string> names = null;
				JsonToken endToken = JsonToken.None;
				if (reader.TokenType == JsonToken.StartObject)
				{
					names = new List<string>();
					endToken = JsonToken.EndObject;
				}
				else if (reader.TokenType == JsonToken.StartArray)
					endToken = JsonToken.EndArray;

				if (endToken != JsonToken.None)
				{
					// Consume the full container and collect its top-level names without building its values.
					do
					{
						ReadRequiredContent(reader);
						if (reader.Depth == 1 && reader.TokenType == JsonToken.PropertyName)
							names?.Add((string)reader.Value);
					}
					while (reader.Depth != 0);

					if (reader.TokenType != endToken)
						throw UnexpectedToken(reader);
				}

				EnsureEndOfDocument(reader);
				return names != null ? (IEnumerable<string>)names : Array.Empty<string>();
			}
		}

		private static JsonTextReader CreateReader(string json) =>
			new JsonTextReader(new StringReader(json))
			{
				DateParseHandling = DateParseHandling.None,
				FloatParseHandling = FloatParseHandling.Double
			};

		private static bool ReadContent(JsonTextReader reader)
		{
			while (reader.Read())
			{
				if (reader.TokenType == JsonToken.Comment)
					continue;
				if (reader.TokenType == JsonToken.StartConstructor || reader.TokenType == JsonToken.Undefined)
					throw UnexpectedToken(reader);
				return true;
			}
			return false;
		}

		private static void ReadRequiredContent(JsonTextReader reader)
		{
			if (!ReadContent(reader))
				throw new JsonReaderException("Unexpected end of JSON.");
		}

		private static void EnsureEndOfDocument(JsonTextReader reader)
		{
			if (ReadContent(reader))
				throw UnexpectedToken(reader);
		}

		private static JsonReaderException UnexpectedToken(JsonTextReader reader) =>
			new JsonReaderException($"Unexpected JSON token {reader.TokenType} at '{reader.Path}'.");

		private static object ReadValue(JsonTextReader reader)
		{
			switch (reader.TokenType)
			{
				case JsonToken.StartObject:
					var dictionary = new Dictionary<string, object>();
					ReadRequiredContent(reader);
					while (reader.TokenType != JsonToken.EndObject)
					{
						if (reader.TokenType != JsonToken.PropertyName)
							throw UnexpectedToken(reader);
						string name = (string)reader.Value;
						ReadRequiredContent(reader);
						dictionary[name] = ReadValue(reader);
						ReadRequiredContent(reader);
					}
					return dictionary;
				case JsonToken.StartArray:
					var list = new List<object>();
					ReadRequiredContent(reader);
					while (reader.TokenType != JsonToken.EndArray)
					{
						list.Add(ReadValue(reader));
						ReadRequiredContent(reader);
					}
					return list;
				case JsonToken.Integer:
					if (reader.Value is BigInteger largeInteger)
					{
						// Parse the decimal text so rounding matches a number read as Double.
						var text = largeInteger.ToString(CultureInfo.InvariantCulture);
						if (double.TryParse(text, NumberStyles.Float, CultureInfo.InvariantCulture, out double real))
							return real;
						return (double)largeInteger;
					}
					return reader.Value;
				case JsonToken.Float:
				case JsonToken.Boolean:
				case JsonToken.String:
				case JsonToken.Null:
					return reader.Value;
				default:
					throw UnexpectedToken(reader);
			}
		}

		public string Serialize(object value, JsonWriteOptions options)
		{
			using (var output = new StringWriter(CultureInfo.InvariantCulture))
			{
				using (var writer = new JsonTextWriter(output))
					WriteValue(writer, value, options);
				return output.ToString();
			}
		}

		private static void WriteValue(JsonTextWriter writer, object value, JsonWriteOptions options)
		{
			switch (value)
			{
				case null:
					writer.WriteNull();
					break;
				case IList list when !options.IncludeEnumerables:
					WriteArray(writer, list, options);
					break;
				case IDictionary dictionary:
					writer.WriteStartObject();
					foreach (var key in dictionary.Keys)
					{
						writer.WritePropertyName(key.ToString());
						string replacement = options.DictionaryValueReplacement?.Invoke(key);
						if (replacement != null)
							writer.WriteValue(replacement);
						else
							WriteValue(writer, dictionary[key], options);
					}
					writer.WriteEndObject();
					break;
				case IEnumerable sequence when options.IncludeEnumerables && !(value is string):
					WriteArray(writer, sequence, options);
					break;
				case decimal number:
					// Retain the double representation used by existing debug and harvest outputs.
					writer.WriteValue((double)number);
					break;
				case float single when float.IsNaN(single) || float.IsInfinity(single):
				case double real when double.IsNaN(real) || double.IsInfinity(real):
					throw new ArgumentException("JSON numbers must be finite.", nameof(value));
				case string _:
				case char _:
				case bool _:
				case sbyte _:
				case byte _:
				case short _:
				case ushort _:
				case int _:
				case uint _:
				case long _:
				case ulong _:
				case float _:
				case double _:
					writer.WriteValue(value);
					break;
				default:
					writer.WriteValue(value.ToString());
					break;
			}
		}

		private static void WriteArray(JsonTextWriter writer, IEnumerable sequence, JsonWriteOptions options)
		{
			writer.WriteStartArray();
			foreach (var element in sequence)
				WriteValue(writer, element, options);
			writer.WriteEndArray();
		}
	}
}
