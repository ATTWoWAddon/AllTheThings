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
                string CategorySplitter = Environment.NewLine;

                // Prepare the shortcuts for commonly repeated structures.
                var order = builder.STRUCTURE_COUNTS.ToList();
                builder.STRUCTURE_COUNTS.Clear();

                // Sort the KeyValues so that the largest memory-cost replacements are exported first for performance reasons
                order.Sort(delegate (KeyValuePair<string, int> a, KeyValuePair<string, int> b)
                {
                    return ReplacmentSavings(b.Key.Count(c => c == ','), b.Value) - ReplacmentSavings(a.Key.Count(c => c == ','), a.Value);
                });

                int ReplacmentSavings(int keys, int uses) =>
                    // table size
                    (40 + 16 * keys) *
                    // reduced duplicate definitions
                    (uses - 1);

                int count = 0;
                // Reduce the allowed set of replacements
                var replacementOrder = order
                    .Where(a => a.Value >= minimumReplacements && ++count <= maximum)
                    .Take(maximum)
                    .ToList();

                Framework.Log($" - {builder.Name}: Up to {maximum} structure replacements (min. {minimumReplacements} uses each) from {order.Count} total ==> {replacementOrder.Count} replacements ({replacementOrder.Sum(x => ReplacmentSavings(x.Key.Count(c => c == ','), x.Value)) / 1024}kB reduction)");

                // Sort the final set of replacements by their actual replacement key, to maintain identical export structure when re-parsing the same content
                replacementOrder.Sort(delegate (KeyValuePair<string, int> a, KeyValuePair<string, int> b)
                {
                    return string.Compare(a.Key, b.Key);
                });

                // Split the StringBuilder into smaller string builders based on something which is not related to replaceable content
                List<StringBuilder> splitBuilders = builder.ToString()
                    .Split(new string[] { CategorySplitter }, StringSplitOptions.RemoveEmptyEntries)
                    .Select(s => new StringBuilder(s))
                    .ToList();

                // Determine all replacement relationships
                count = 0;
                foreach (var replaceCount in replacementOrder)
                {
                    replacements.Add($"a[{++count}]", replaceCount.Key);
                    Framework.LogDebugFormatted("Added replacement: $1 : $2", replaceCount.Key, replaceCount.Value);
                }

                // capture containers in a sorted list for processing, without affecting export order
                List<StringBuilder> processingOrder = new List<StringBuilder>(splitBuilders);
                // longest containers first for most processing time
                processingOrder.Sort((a, b) => { return b.Length - a.Length; });

                Framework.LogDebug(string.Concat(Enumerable.Range(1, processingOrder.Count * 2).Select(n => "-")));

                // Perform replacements on all small StringBuilders in parallel tasks
                Task[] replacementTasks = new Task[splitBuilders.Count];
                for (int i = 0; i < processingOrder.Count; i++)
                {
                    var s = processingOrder[i];
                    //Trace.WriteLine(s.ToString(0, 10) + ":" + s.Length);
                    replacementTasks[i] = Task.Run(() => { ReplaceStringBuilderContent(s, replacements); });
                }
                Task.WaitAll(replacementTasks);

                Framework.Log($" - {builder.Name}: Done");

                // Replace the main string builder with the multiple builder content
                builder.Clear();
                builder.Append(string.Join(CategorySplitter, splitBuilders.Select(sb => sb.ToString())));
            }

            action(builder, replacements);
        }

        private static void ReplaceStringBuilderContent(StringBuilder builder, IEnumerable<KeyValuePair<string, string>> replacements)
        {
            if (Framework.DebugLogging)
                Trace.Write("<");
            foreach (var pair in replacements)
            {
                builder.Replace(pair.Value, pair.Key);
            }
            if (Framework.DebugLogging)
                Trace.Write(">");
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
