using System;
using System.Collections.Concurrent;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ATT
{
    /// <summary>
    /// Represents a collection of replacment string values which can be efficiently replaced in a single pass against
    /// a StringBuilder
    /// </summary>
    public class ReplacementTree
    {
        private readonly ReplacementNode _root = new ReplacementNode();

        /// <summary>
        /// Initializes a new instance of the <see cref="ReplacementTree"/> class.
        /// </summary>
        /// <param name="replacements">The replacements.</param>
        public ReplacementTree(IEnumerable<KeyValuePair<string, string>> replacements)
        {
            foreach (var kvp in replacements)
            {
                _root.Add(kvp);
            }
        }

        public ReplacementTree(Dictionary<string, string> replacements)
            : this(replacements.AsEnumerable())
        { }

        /// <summary>
        /// Applies the replacements to the specified StringBuilder.
        /// </summary>
        /// <param name="builder">The builder.</param>
        public StringBuilder Replace(StringBuilder input)
        {
            StringBuilder output = new StringBuilder(input.Length);
            int i = 0;

            while (i < input.Length)
            {
                ReplacementNode current = _root;
                int matchIndex = i;

                while (matchIndex < input.Length && current.TryGetNode(input[matchIndex], out current))
                {
                    matchIndex++;
                }

                if (current.Replacement != null)
                {
                    output.Append(current.Replacement);
                    i = matchIndex;
                }
                else
                {
                    output.Append(input[i]);
                    i++;
                }
            }

            return output;
        }
    }

    internal class ReplacementNode
    {
        private Dictionary<char, ReplacementNode> _children;
        private Dictionary<char, ReplacementNode> Children => _children ?? (_children = new Dictionary<char, ReplacementNode>());
        public string Replacement { get; set; }

        public bool TryGetNode(char c, out ReplacementNode node)
        {
            if (_children == null || !_children.TryGetValue(c, out node))
            {
                // return itself if there's no match
                node = this;
                return false;
            }

            return true;
        }

        internal void Add(KeyValuePair<string, string> kvp)
        {
            Add(kvp.Key, 0, kvp.Value);
        }

        internal void Add(string key, string value)
        {
            Add(key, 0, value);
        }

        private void Add(string key, int index, string value)
        {
            if (index >= key.Length)
            {
                if (Replacement != null)
                {
                    Framework.LogWarn($"ReplacementTree: Duplicate key detected: {key} -- existing replacement '{Replacement}' will be overwritten with '{value}'");
                }
                Replacement = value;
                return;
            }

            if (Replacement != null)
            {
                Framework.LogWarn($"ReplacementTree: Redundant replacement due to prior replacement on same path: {key} -- existing replacement '{Replacement}'");
                return;
            }

            char currentChar = key[index];
            if (!Children.TryGetValue(currentChar, out ReplacementNode charNode))
            {
                Children[currentChar] = charNode = new ReplacementNode();
            }
            charNode.Add(key, index + 1, value);
        }
    }
}
