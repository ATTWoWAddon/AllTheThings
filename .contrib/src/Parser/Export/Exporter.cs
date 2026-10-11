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

        public Exporter Replace(ReplacementTree tree)
        {
            var replaced = tree.Replace(_builder);
            _builder.Clear();
            _builder.Append(replaced.ToString());
            return this;
        }

        public StringBuilder[] ProportionalSplit(int count, string splitter)
        {
            List<StringBuilder> segments = new List<StringBuilder>();
            int totalLength = _builder.Length;
            int approxStep = totalLength / count;
            int previousIndex = 0;

            for (int i = 1; i <= count; i++)
            {
                // We've reached the end of the builder before using up the expected number of splits
                if (previousIndex >= totalLength)
                    break;

                // Estimate the next split point
                int splitIndex = IndexOf(_builder, splitter, previousIndex + approxStep);

                // If no splitter found, use end of builder
                if (splitIndex == -1 || splitIndex <= previousIndex)
                {
                    splitIndex = totalLength;
                }

                // Extract the segment
                int length = splitIndex - previousIndex;
                var segment = new StringBuilder(_builder.ToString(previousIndex, length));
                segments.Add(segment);

                previousIndex = splitIndex + splitter.Length;
            }

            return segments.ToArray();
        }

        private static int IndexOf(StringBuilder builder, string value, int startIndex = 0)
        {
            if (builder == null || value == null || value.Length == 0 || startIndex < 0 || startIndex >= builder.Length)
                return -1;

            int maxStart = builder.Length - value.Length;

            for (int i = startIndex; i <= maxStart; i++)
            {
                bool match = true;
                for (int j = 0; j < value.Length; j++)
                {
                    if (builder[i + j] != value[j])
                    {
                        match = false;
                        break;
                    }
                }

                if (match)
                    return i;
            }

            return -1;
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
