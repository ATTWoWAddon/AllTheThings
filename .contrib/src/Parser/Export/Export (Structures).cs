using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ATT
{
    // Export extension for Commonly Used Structures.
    // This is typically used by the Compressed Lua functions.
    partial class Export
    {
        /// <summary>
        /// Simplify the structure of the built string and substitute commonly assigned structures with a local variable.
        /// </summary>
        /// <param name="builder">The builder.</param>
        /// <param name="action">The action</param>
        /// <param name="maximum">The maximum number of replacements to create</param>
        /// <param name="minimumReplacements">The minimum number of uses for a structure to be marked for replacement.</param>
        private static void SimplifyStructure(Exporter builder, Action<Exporter, IEnumerable<KeyValuePair<string, string>>> action, int maximum = 50, int minimumReplacements = 4)
        {
            Dictionary<string, string> replacements = new Dictionary<string, string>();
            if (builder.STRUCTURE_COUNTS.Any())
            {
                Framework.LogDebug($"Simplifying {builder.Name} {builder.Length}...");
                string CategorySplitter = Environment.NewLine;

                // Prepare the shortcuts for commonly repeated structures.
                var order = builder.STRUCTURE_COUNTS
                    // Reduce the allowed set of replacements by minimumReplacements
                    .Where(a => a.Value >= minimumReplacements)
                    .ToList();
                builder.STRUCTURE_COUNTS.Clear();

                // swap in the replacement 'savings' for each structure since we will re-use this value a lot
                order = order.Select(s => new KeyValuePair<string, int>(s.Key, ReplacmentSavings(s.Key.Count(c => c == ','), s.Value))).ToList();

                // Sort the KeyValues so that the largest memory-cost replacements are exported first for performance reasons
                order.Sort(delegate (KeyValuePair<string, int> a, KeyValuePair<string, int> b)
                {
                    int compare = b.Value.CompareTo(a.Value);
                    if (compare != 0)
                        return compare;

                    // if equivalent in savings, sort by key to maintain consistent export order
                    return a.Key.CompareTo(b.Key);
                });

                int ReplacmentSavings(int keys, int uses) =>
                    // table size
                    (40 + 16 * keys)
                    // reduced duplicate definitions
                    * (uses - 1)
                    // number of new references to the replacement table (8 byte)
                    - (8 * uses);

                int count = 0;
                // Reduce the allowed set of replacements
                var replacementOrder = order.Take(maximum).ToList();

                Framework.Log($" - {builder.Name}: {order.Count} total ==> {replacementOrder.Count} replaced ({replacementOrder.Sum(x => x.Value) / 1024}kB reduction)");

                if (replacementOrder.Count > 0)
                {
                    // Sort the final set of replacements by their actual replacement key, to maintain identical export structure when re-parsing the same content
                    replacementOrder.Sort(delegate (KeyValuePair<string, int> a, KeyValuePair<string, int> b)
                    {
                        return string.Compare(a.Key, b.Key);
                    });

                    // Determine all replacement relationships
                    count = 0;
                    foreach (var replaceCount in replacementOrder)
                    {
                        replacements.Add(replaceCount.Key, $"a[{++count}]");
                    }

                    ReplacementTree tree = new ReplacementTree(replacements);

                    // one builder replacement per CPU to reduce overhead
                    var subbuilders = builder.ProportionalSplit(Environment.ProcessorCount, CategorySplitter);
                    List<StringBuilder> splitBuilders = new List<StringBuilder>();
                    if (Debugger.IsAttached)
                    {
                        splitBuilders.AddRange(subbuilders.Select(s => tree.Replace(s)));
                    }
                    else
                    {
                        // 041788 - 049474 = 7.686 @ 50 / 1000,2
                        //splitBuilders.AddRange(subbuilders.AsParallel().Select(s => tree.Replace(s)));

                        // 038104 - 044826 = 6.722 @ 50 / 1000,2
                        // 037892 - 044625 = 6.733 @ 50 / 5000,2
                        Task<StringBuilder>[] replacementTasks = subbuilders.Select(s => Task.Run(() => { return tree.Replace(s); })).ToArray();
                        splitBuilders.AddRange(Task.WhenAll(replacementTasks).Result);
                    }

                    // Replace the main string builder with the multiple builder content
                    builder.Clear();
                    builder.Append(string.Join(CategorySplitter, splitBuilders.Select(sb => sb.ToString())));
                }
                Framework.LogDebug($"{builder.Name} Done");
            }

            action(builder, replacements);
        }

        private static void ReplaceStringBuilderContent(StringBuilder builder, ReplacementTree tree)
        {
            var replaced = tree.Replace(builder);
            builder.Clear();
            builder.Append(replaced.ToString());
        }

        /// <summary>
        /// Simplify the structure of the built string and substitute commonly assigned structures with a local variable.
        /// </summary>
        /// <param name="builder">The builder.</param>
        /// <param name="maximum">The maximum number of replacements to create</param>
        /// <param name="minimumReplacements">The minimum number of uses for a structure to be marked for replacement.</param>
        public static void SimplifyStructureForJSON(Exporter builder, int maximum = 50, int minimumReplacements = 4)
        {
            SimplifyStructure(builder, ExportLocalVariablesForJSON, maximum, minimumReplacements);
        }

        /// <summary>
        /// Simplify the structure of the built string and substitute commonly assigned structures with a local variable.
        /// </summary>
        /// <param name="builder">The builder.</param>
        /// <param name="maximum">The maximum number of replacements to create</param>
        /// <param name="minimumReplacements">The minimum number of uses for a structure to be marked for replacement.</param>
        public static void SimplifyStructureForLua(Exporter builder, int maximum = 1000, int minimumReplacements = 2)
        {
            SimplifyStructure(builder, ExportTableReferenceForLua, maximum, minimumReplacements);
        }
    }
}
