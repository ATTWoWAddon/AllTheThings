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

            public LiteralParser(string text) { this.text = text; }

            public object Read()
            {
                if (Ident() != "return") throw Error("Expected return");
                object result = Value();
                Space();
                if (pos != text.Length) throw Error("Unexpected trailing input at " + pos);
                return result;
            }

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

            private bool Take(char character)
            {
                Space();
                if (pos >= text.Length || text[pos] != character) return false;
                pos++;
                return true;
            }

            private void Expect(char character)
            {
                if (!Take(character)) throw Error("Expected '" + character + "' at offset " + pos);
            }

            private string Ident()
            {
                Space();
                int start = pos;
                if (pos >= text.Length || !(char.IsLetter(text[pos]) || text[pos] == '_'))
                    throw Error("Expected identifier at offset " + pos);
                while (pos < text.Length && (char.IsLetterOrDigit(text[pos]) || text[pos] == '_')) pos++;
                return text.Substring(start, pos - start);
            }

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

            private double Number()
            {
                int start = pos++;
                while (pos < text.Length && (char.IsDigit(text[pos]) || text[pos] == '.')) pos++;
                if (!double.TryParse(text.Substring(start, pos - start), NumberStyles.Float,
                    CultureInfo.InvariantCulture, out double result) || double.IsInfinity(result))
                    throw Error("Invalid Lua number");
                return result;
            }

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
