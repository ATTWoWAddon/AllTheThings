#if NET
#nullable disable
#endif

using System;
using System.Collections;
using System.Collections.Generic;
using System.IO;
using System.Text;
using System.Text.Encodings.Web;
using System.Text.Json;

namespace ATT
{
	public sealed class SystemTextJsonBackend : IJsonBackend
	{
		private static readonly JsonDocumentOptions DocumentOptions = new JsonDocumentOptions { AllowTrailingCommas = true };

		public object Deserialize(string json)
		{
			if (string.IsNullOrWhiteSpace(json))
				return null;

			try
			{
				using (var document = JsonDocument.Parse(json, DocumentOptions))
					return ReadValue(document.RootElement);
			}
			catch (JsonException)
			{
				// Some callers skip invalid records while reading harvested data.
				return null;
			}
		}

		public IEnumerable<string> ReadObjectKeys(string json)
		{
			using (var document = JsonDocument.Parse(json, DocumentOptions))
			{
				if (document.RootElement.ValueKind != JsonValueKind.Object)
					yield break;

				foreach (var property in document.RootElement.EnumerateObject())
					yield return property.Name;
			}
		}

		private static object ReadValue(JsonElement value)
		{
			switch (value.ValueKind)
			{
				case JsonValueKind.Object:
					var dictionary = new Dictionary<string, object>();
					foreach (var property in value.EnumerateObject())
						dictionary[property.Name] = ReadValue(property.Value);
					return dictionary;
				case JsonValueKind.Array:
					var list = new List<object>(value.GetArrayLength());
					foreach (var element in value.EnumerateArray())
						list.Add(ReadValue(element));
					return list;
				case JsonValueKind.String:
					return value.GetString();
				case JsonValueKind.Number:
					if (value.TryGetInt64(out long integer))
						return integer;
					return value.GetDouble();
				case JsonValueKind.True:
				case JsonValueKind.False:
					return value.GetBoolean();
				case JsonValueKind.Null:
					return null;
				default:
					throw new JsonException($"Unexpected JSON value kind {value.ValueKind}.");
			}
		}

		public string Serialize(object value, JsonWriteOptions options)
		{
			using (var stream = new MemoryStream())
			{
				var writerOptions = new JsonWriterOptions { Encoder = JavaScriptEncoder.UnsafeRelaxedJsonEscaping };
				using (var writer = new Utf8JsonWriter(stream, writerOptions))
					WriteValue(writer, value, options);
				return Encoding.UTF8.GetString(stream.GetBuffer(), 0, (int)stream.Length);
			}
		}

		private static void WriteValue(Utf8JsonWriter writer, object value, JsonWriteOptions options)
		{
			switch (value)
			{
				case null:
					writer.WriteNullValue();
					break;
				case string text:
					writer.WriteStringValue(text);
					break;
				case char character:
					writer.WriteStringValue(character.ToString());
					break;
				case bool boolean:
					writer.WriteBooleanValue(boolean);
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
							writer.WriteStringValue(replacement);
						else
							WriteValue(writer, dictionary[key], options);
					}
					writer.WriteEndObject();
					break;
				case IEnumerable sequence when options.IncludeEnumerables:
					WriteArray(writer, sequence, options);
					break;
				case decimal number:
					// Retain the double representation used by existing debug and harvest outputs.
					writer.WriteNumberValue((double)number);
					break;
				case sbyte _:
				case byte _:
				case short _:
				case ushort _:
				case int _:
				case uint _:
				case long _:
					writer.WriteNumberValue(Convert.ToInt64(value));
					break;
				case ulong unsignedNumber:
					writer.WriteNumberValue(unsignedNumber);
					break;
				case float single:
					writer.WriteNumberValue(single);
					break;
				case double real:
					writer.WriteNumberValue(real);
					break;
				default:
					writer.WriteStringValue(value.ToString());
					break;
			}
		}

		private static void WriteArray(Utf8JsonWriter writer, IEnumerable sequence, JsonWriteOptions options)
		{
			writer.WriteStartArray();
			foreach (var element in sequence)
				WriteValue(writer, element, options);
			writer.WriteEndArray();
		}
	}
}
