using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Net;
using System.Text;
using System.Threading.Tasks;

namespace ATT
{
    internal class Helper
    {
        /// <summary>
        /// Get the document from WoWHead.
        /// </summary>
        /// <param name="profession">The profession.</param>
        /// <param name="expansion">The expansion.</param>
        /// <returns></returns>
        public async static Task<string> GetStringFromWoWHead(string profession, string expansion="")
        {

            try
            {
                HttpClient client = new();
                return await client.GetStringAsync($"https://www.wowhead.com/{expansion}spells/{profession}");
            }
            catch (Exception e)
            {
                Trace.WriteLine(e);
                return string.Empty;
            }
        }


        private const string startString = "var listviewspells = ";
        private const string endString = "}];";
        private static readonly Dictionary<long, Dictionary<string, object>> PersistentRecipeDB = new();

        public static void Parse(string pageString, StringBuilder sb, string profession)
        {
            pageString = pageString.Substring(pageString.IndexOf(startString) + startString.Length);
            pageString = pageString.Substring(0, pageString.IndexOf(endString) + endString.Length - 1);
            var dict = Newtonsoft.Json.JsonConvert.DeserializeObject<List<Dictionary<string, object>>>(pageString);
            if (dict == null) return;
            Console.Write("Parsing ");
            Console.WriteLine(profession);

            var recipeList = new List<Dictionary<string, object>>();
            foreach (var entry in dict)
            {
                if (entry.TryGetValue("id", out object? idObj) && idObj is long id)
                {
                    long learnedAt = 0;
                    if (entry.TryGetValue("learnedat", out object? learnedatObj))
                    {
                        long learnedAt2 = Convert.ToInt32(learnedatObj);
                        if (learnedAt2 < 9999) learnedAt = learnedAt2;
                    }

                    // Does the recipe already exist in the persisted database?
                    if (PersistentRecipeDB.TryGetValue(id, out Dictionary<string, object>? persistedRecipeData)
                        && persistedRecipeData.TryGetValue("learnedAt", out learnedatObj))
                    {
                        // If it matches the persisted data, then just skip it.
                        if (learnedAt == Convert.ToInt32(learnedatObj)) continue;
                    }

                    var objectData = new Dictionary<string, object> { { "id", id } };
                    if (entry.TryGetValue("name", out object? nameObj)) objectData["name"] = nameObj;
                    objectData["learnedAt"] = learnedAt;
                    objectData["id"] = id;

                    // Set or replace the persisted data and mark it as something updated with this version of the game.
                    PersistentRecipeDB[id] = objectData;
                    recipeList.Add(objectData);
                }
            }

            if (recipeList.Any())
            {
                recipeList.Sort((a, b) =>
                {
                    a.TryGetValue("learnedAt", out object? learnedAtA);
                    b.TryGetValue("learnedAt", out object? learnedAtB);
                    if (learnedAtA != null)
                    {
                        if (learnedAtB != null)
                        {
                            var diff = Convert.ToInt32(learnedAtA).CompareTo(Convert.ToInt32(learnedAtB));
                            if (diff == 0)
                            {
                                if (a.TryGetValue("name", out object? nameObj) && nameObj is string nameA)
                                {
                                    if (b.TryGetValue("name", out nameObj) && nameObj is string nameB) return nameA.CompareTo(nameB);
                                    return 1;
                                }
                                else
                                {
                                    if (b.TryGetValue("name", out nameObj) && nameObj is string nameB) return 1;
                                }
                            }
                            return diff;
                        }
                        return Convert.ToInt32(learnedAtA).CompareTo(0);
                    }
                    else
                    {
                        if (learnedAtB != null) return Convert.ToInt32(learnedAtB).CompareTo(0);

                        if (a.TryGetValue("name", out object? nameObj) && nameObj is string nameA)
                        {
                            if (b.TryGetValue("name", out nameObj) && nameObj is string nameB) return nameA.CompareTo(nameB);
                            return 1;
                        }
                        else
                        {
                            if (b.TryGetValue("name", out nameObj) && nameObj is string nameB) return 1;
                        }
                    }
                    return 0;
                });

                /*
                var jsonString = Newtonsoft.Json.JsonConvert.SerializeObject(recipeList, Newtonsoft.Json.Formatting.Indented);
                if (!Directory.Exists("json")) Directory.CreateDirectory("json");
                ATT.TextFile.WriteAllText($"json/{profession}.json", jsonString);
                */

                sb.AppendLine().Append("-- ").AppendLine(profession);
                sb.AppendLine("for spellID,learnedAt in pairs({");
                foreach (var recipe in recipeList)
                {
                    if (recipe.TryGetValue("learnedAt", out object? learnedAt))
                    {
                        sb.Append("\t[").Append(recipe["id"]).Append("] = ").Append(learnedAt)
                            .Append(",\t-- ").Append(recipe["name"] ?? "??").AppendLine();
                    }
                }
                sb.AppendLine("}) do recipeDB[spellID].learnedAt = learnedAt; end");
            }
        }
    }
}
