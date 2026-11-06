using System;
using System.Collections.Generic;
using System.Globalization;
using System.Text;
using System.Text.RegularExpressions;

namespace ATT
{
    internal static partial class PhaseExample
    {
        // Independent strictness is intentional: MiniJSON's production behavior
        // includes duplicate-key overwrite and cannot validate this input contract.
        private sealed class JsonReader
        {
            private static readonly Regex NumberPattern = new Regex(
                @"^-?(0|[1-9][0-9]*)(\.[0-9]+)?([eE][+-]?[0-9]+)?$", RegexOptions.CultureInvariant);
            private readonly string text;
            private int pos;

            public JsonReader(string text) { this.text = text; }

            public object Read()
            {
                object result = Value();
                Space();
                if (pos != text.Length) throw Error("Trailing JSON input");
                return result;
            }

            private void Space()
            {
                while (pos < text.Length && " \t\r\n".IndexOf(text[pos]) >= 0) pos++;
            }

            private bool Take(char character)
            {
                Space();
                if (pos >= text.Length || text[pos] != character) return false;
                pos++;
                return true;
            }

            private void Expect(char character)
            {
                if (!Take(character)) throw Error("Expected JSON '" + character + "' at " + pos);
            }

            private string String()
            {
                Expect('"');
                var result = new StringBuilder();
                while (pos < text.Length)
                {
                    char character = text[pos++];
                    if (character == '"') return result.ToString();
                    if (character < 32) throw Error("Control character in JSON string");
                    if (character == '\\')
                    {
                        if (pos >= text.Length) throw Error("Invalid JSON escape");
                        character = text[pos++];
                        switch (character)
                        {
                            case '"': case '\\': case '/': break;
                            case 'b': character = '\b'; break;
                            case 'f': character = '\f'; break;
                            case 'n': character = '\n'; break;
                            case 'r': character = '\r'; break;
                            case 't': character = '\t'; break;
                            case 'u':
                                if (pos + 4 > text.Length || !ushort.TryParse(text.Substring(pos, 4),
                                    NumberStyles.HexNumber, CultureInfo.InvariantCulture, out ushort code))
                                    throw Error("Invalid JSON unicode escape");
                                pos += 4;
                                character = (char)code;
                                break;
                            default: throw Error("Invalid JSON escape");
                        }
                    }
                    result.Append(character);
                }
                throw Error("Unterminated JSON string");
            }

            private object Value()
            {
                Space();
                if (pos >= text.Length) throw Error("Unexpected end of JSON");
                if (text[pos] == '"') return String();
                if (Take('{')) return Object();
                if (Take('[')) return Array();
                foreach (string literal in new[] { "true", "false", "null" })
                {
                    if (!text.Substring(pos).StartsWith(literal, StringComparison.Ordinal)) continue;
                    pos += literal.Length;
                    return literal == "null" ? null : (object)(literal == "true");
                }
                int start = pos;
                while (pos < text.Length && "-+0123456789.eE".IndexOf(text[pos]) >= 0) pos++;
                string number = text.Substring(start, pos - start);
                if (!NumberPattern.IsMatch(number) || !double.TryParse(number,
                    NumberStyles.Float, CultureInfo.InvariantCulture, out double value) ||
                    double.IsNaN(value) || double.IsInfinity(value))
                    throw Error("Invalid JSON value at " + start);
                return value;
            }

            private Dictionary<string, object> Object()
            {
                var result = new Dictionary<string, object>();
                if (Take('}')) return result;
                do
                {
                    string key = String();
                    Expect(':');
                    if (!AddUnique(result, key, Value())) throw Error("Duplicate JSON key: " + key);
                } while (Take(','));
                Expect('}');
                return result;
            }

            private List<object> Array()
            {
                var result = new List<object>();
                if (Take(']')) return result;
                do
                {
                    result.Add(Value());
                } while (Take(','));
                Expect(']');
                return result;
            }
        }
    }
}
