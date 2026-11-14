// Comparison tooling (P4 example / Retail default): read the declarative Lua records and named groups used by the phase examples.
using System;
using System.Collections.Generic;
using System.Globalization;
using System.Text;

namespace ATT
{
    internal static partial class PhaseExample
    {
        // This declarative subset deliberately excludes variable lookup,
        // statements, callbacks and arbitrary calls. No Lua VM is invoked.
        private sealed class LiteralParser
        {
            private readonly string text;
            private int pos;

            /// <summary>Initialize a reader for the declarative Lua subset.</summary>
            /// <param name="text">Complete declarative Lua input beginning with return.</param>
            public LiteralParser(string text) { this.text = text; }

            /// <summary>Read a return expression and reject trailing input without executing Lua.</summary>
            /// <returns>The returned declarative value, without executing a Lua VM.</returns>
            public object Read()
            {
                if (Ident() != "return") throw Error("Expected return");
                object result = Value();
                Space();
                if (pos != text.Length) throw Error("Unexpected trailing input at " + pos);
                return result;
            }

            /// <summary>Skip whitespace and line comments.</summary>
            private void Space()
            {
                while (pos < text.Length)
                {
                    if (char.IsWhiteSpace(text[pos]))
                    {
                        pos++;
                        continue;
                    }
                    if (pos + 1 < text.Length && text[pos] == '-' && text[pos + 1] == '-')
                    {
                        while (pos < text.Length && text[pos] != '\n') pos++;
                        continue;
                    }
                    break;
                }
            }

            /// <summary>Consume the requested character after whitespace when present.</summary>
            /// <param name="character">Lua punctuation to consume after whitespace and line comments.</param>
            /// <returns>True if the character was consumed; otherwise false after trivia.</returns>
            private bool Take(char character)
            {
                Space();
                if (pos >= text.Length || text[pos] != character) return false;
                pos++;
                return true;
            }

            /// <summary>Require the requested character at the current input position.</summary>
            /// <param name="character">Lua punctuation to consume after whitespace and line comments.</param>
            private void Expect(char character)
            {
                if (!Take(character)) throw Error("Expected '" + character + "' at offset " + pos);
            }

            /// <summary>Read an identifier from the literal input.</summary>
            /// <returns>The identifier at the current reader position.</returns>
            private string Ident()
            {
                Space();
                int start = pos;
                if (pos >= text.Length || !(char.IsLetter(text[pos]) || text[pos] == '_'))
                    throw Error("Expected identifier at offset " + pos);
                while (pos < text.Length && (char.IsLetterOrDigit(text[pos]) || text[pos] == '_')) pos++;
                return text.Substring(start, pos - start);
            }

            /// <summary>Decode a quoted string using the supported Lua escapes.</summary>
            /// <returns>Decoded string contents using only the explicitly supported escapes.</returns>
            private string String()
            {
                Space();
                char quote = text[pos++];
                var result = new StringBuilder();
                while (pos < text.Length)
                {
                    char character = text[pos++];
                    if (character == quote) return result.ToString();
                    if (character == '\r' || character == '\n') throw Error("Unescaped newline in Lua string");
                    if (character == '\\')
                    {
                        if (pos == text.Length) break;
                        character = text[pos++];
                        switch (character)
                        {
                            case 'n': character = '\n'; break;
                            case 'r': character = '\r'; break;
                            case 't': character = '\t'; break;
                            case 'b': character = '\b'; break;
                            case 'f': character = '\f'; break;
                            case 'a': character = '\a'; break;
                            case 'v': character = '\v'; break;
                            case '\\': case '\'': case '"': break;
                            default: throw Error("Unsupported Lua escape");
                        }
                    }
                    result.Append(character);
                }
                throw Error("Unterminated Lua string");
            }

            /// <summary>Read a supported literal, named group placeholder or whitelisted constructor.</summary>
            /// <returns>A literal scalar/table, whitelisted constructor record or named Slot.</returns>
            private object Value()
            {
                Space();
                if (pos >= text.Length) throw Error("Unexpected end of input");
                char character = text[pos];
                if (character == '{') return Table();
                if (character == '\'' || character == '"') return String();
                if (char.IsDigit(character) || character == '-') return Number();
                string name = Ident();
                if (name == "true") return true;
                if (name == "false") return false;
                if (name == "nil") return null;
                if (name == "group")
                {
                    Expect('(');
                    string slot = Str(Value(), "group name");
                    ValidKey(slot, "group name");
                    Expect(')');
                    return new Slot(slot);
                }
                return Constructor(name);
            }

            /// <summary>Read a finite number using invariant decimal formatting.</summary>
            /// <returns>The finite double represented by the supported decimal spelling.</returns>
            private double Number()
            {
                int start = pos++;
                while (pos < text.Length && (char.IsDigit(text[pos]) || text[pos] == '.')) pos++;
                if (!double.TryParse(text.Substring(start, pos - start), NumberStyles.Float,
                    CultureInfo.InvariantCulture, out double result) || double.IsInfinity(result))
                    throw Error("Invalid Lua number");
                return result;
            }

            /// <summary>Read a whitelisted constructor with a positive integral ID and optional object data.</summary>
            /// <param name="name">Whitelisted ATT constructor name whose opening parenthesis follows.</param>
            /// <returns>Object data containing the constructor’s positive integral identity field.</returns>
            private Dictionary<string, object> Constructor(string name)
            {
                if (!Constructors.TryGetValue(name, out string field)) throw Error("Unsupported identifier: " + name);
                Expect('(');
                object id = Value();
                if (!(id is double number) || number <= 0 || double.IsInfinity(number) || number != Math.Truncate(number))
                    throw Error("Constructor ID must be a positive integer");
                var data = new Dictionary<string, object>();
                if (Take(',')) data = LuaObject(Value(), name + " data");
                Expect(')');
                if (!AddUnique(data, field, id)) throw Error("Duplicate constructor ID");
                return data;
            }

            /// <summary>Read an array or object table, rejecting mixed, duplicate and sparse entries.</summary>
            /// <returns>A string-keyed object or ordered list; an empty table is represented as a list.</returns>
            private object Table()
            {
                Expect('{');
                var list = new List<object>();
                var map = new Dictionary<string, object>();
                bool hasList = false, hasMap = false;
                while (!Take('}'))
                {
                    Space();
                    int saved = pos;
                    string key = null;
                    if (pos < text.Length && (char.IsLetter(text[pos]) || text[pos] == '_'))
                    {
                        string candidate = Ident();
                        if (Take('=')) key = candidate;
                        else pos = saved;
                    }
                    else if (Take('['))
                    {
                        key = Str(Value(), "table key");
                        Expect(']');
                        Expect('=');
                    }
                    if (key != null)
                    {
                        hasMap = true;
                        if (!AddUnique(map, key, Value())) throw Error("Duplicate Lua key: " + key);
                    }
                    else
                    {
                        hasList = true;
                        object value = Value();
                        if (value == null) throw Error("Sparse nil array entries are unsupported");
                        list.Add(value);
                    }
                    if (hasList && hasMap) throw Error("Mixed array/object tables are unsupported");
                    if (Take('}')) break;
                    if (!Take(',') && !Take(';')) throw Error("Expected table separator at " + pos);
                }
                return hasMap ? (object)map : list;
            }
        }
    }
}
