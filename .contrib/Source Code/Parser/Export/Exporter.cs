using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ATT
{
    /// <summary>
    /// Used to handle autonomous and independent Export operations in place of a generic StringBuilder
    /// </summary>
    public class Exporter
    {
        private readonly StringBuilder _builder = new StringBuilder();
        private readonly string _name = "NONE";

        /// <summary>
        /// The explicit number of times a commonly formatted list was written to the database.
        /// This helps with the minification process by making the exporter aware of common data
        /// that can be replaced with a shortened identifier instead.
        /// </summary>
        public IDictionary<string, int> STRUCTURE_COUNTS = new Dictionary<string, int>();

        /// <summary>
        /// All of the shortcuts and the function that that they shorten.
        /// </summary>
        public IDictionary<string, string> FUNCTION_SHORTCUTS = new Dictionary<string, string>();

        public int Length => _builder.Length;

        public string Name => _name;

        public Exporter()
        {
        }

        public Exporter(string name)
        {
            _name = name;
        }

        /// <summary>
        /// Mark the structure as commonly used.
        /// </summary>
        /// <param name="structure">The structure.</param>
        public void MarkStructure(string structure)
        {
            if (STRUCTURE_COUNTS.TryGetValue(structure, out int count))
            {
                STRUCTURE_COUNTS[structure] = count + 1;
            }
            else
            {
                STRUCTURE_COUNTS[structure] = 1;
            }
        }

        /// <summary>
        /// Mark the shortcut as used.
        /// </summary>
        /// <param name="shortcut">The shortcut.</param>
        /// <param name="function">The functional replacement.</param>
        public void MarkShortcut(string shortcut, string function)
        {
            FUNCTION_SHORTCUTS[shortcut] = function;
        }

        #region StringBuilder pass-thru
        public Exporter Append(string val)
        {
            _builder.Append(val);
            return this;
        }

        public Exporter Append(char val)
        {
            _builder.Append(val);
            return this;
        }

        public Exporter Append(long val)
        {
            _builder.Append(val);
            return this;
        }

        public Exporter Append(object val)
        {
            _builder.Append(val);
            return this;
        }

        public Exporter AppendLine(string s = null)
        {
            _builder.AppendLine(s);
            return this;
        }

        public Exporter Clear()
        {
            _builder.Clear();
            return this;
        }

        public Exporter Insert(int startIndex, StringBuilder stringBuilder)
        {
            _builder.Insert(startIndex, stringBuilder);
            return this;
        }

        public Exporter Insert(int startIndex, string str)
        {
            _builder.Insert(startIndex, str);
            return this;
        }

        public Exporter Remove(int startIndex, int length)
        {
            _builder.Remove(startIndex, length);
            return this;
        }

        public Exporter Replace(string oldValue, string newValue)
        {
            _builder.Replace(oldValue, newValue);
            return this;
        }

        public override string ToString() => _builder.ToString();
        #endregion
    }
}
