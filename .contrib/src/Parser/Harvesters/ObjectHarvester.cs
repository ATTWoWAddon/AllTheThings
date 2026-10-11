using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Security.Policy;
using System.Text;
using System.Threading.Tasks;

namespace ATT
{
    /// <summary>
    /// The Object Harvester class.
    /// Provides an interface for automatic object localization.
    /// </summary>
    public static class ObjectHarvester
    {
        /// <summary>
        /// The starting point that contains the displayID.
        /// </summary>
        private const string DISPLAY_ID_START = "data-mv-display-id=\"";

        /// <summary>
        /// The ending point that contains the displayID.
        /// </summary>
        private const string DISPLAY_ID_END = "\"";

        /// <summary>
        /// The starting point that contains the modelID.
        /// </summary>
        private const string MODEL_ID_START = "\"Model\":";

        /// <summary>
        /// The ending point that contains the modelID.
        /// </summary>
        private const string MODEL_ID_END = ",";

        /// <summary>
        /// The starting point that contains the name.
        /// </summary>
        private const string NAME_START = "<h1 class=\"heading-size-1\">";

        /// <summary>
        /// The ending point that contains the name.
        /// </summary>
        private const string NAME_END = "</h1>";

        /// <summary>
        /// The not found message class format.
        /// </summary>
        private const string NOT_FOUND_MESSAGE = "\"database-detail-page-not-found-message\"";

        /// <summary>
        /// Represents that a specific name should render as a commented TODO rather than directly exported
        /// </summary>
        public const string TODO_NAME = "-- TODO";

        private const string EMPTY_DOCUMENT = "EMPTY";

        private static bool WowheadShadowban = false;

        private static int FailureCount = 0;

        private static List<string> _gameFlavors;
        /// <summary>
        /// The game flavors of WoWHead to try querying.
        /// </summary>
        public static List<string> GameFlavors
        {
            get
            {
                if (_gameFlavors != null) return _gameFlavors;

                _gameFlavors = new List<string> { };
                if (Framework.PreProcessorTags.Contains("FOREVER"))
                {
                    _gameFlavors.Insert(0, "forever");
                }
                else
                {
                    if (Framework.CURRENT_RELEASE_VERSION < Framework.FIRST_EXPANSION_PATCH["LEGION"].ConvertVersion())
                    {
                        if (Framework.CURRENT_RELEASE_VERSION >= Framework.FIRST_EXPANSION_PATCH["CATA"].ConvertVersion())
                        {
                            _gameFlavors.Insert(0, "cata");
                        }
                        else if (Framework.CURRENT_RELEASE_VERSION >= Framework.FIRST_EXPANSION_PATCH["WRATH"].ConvertVersion())
                        {
                            _gameFlavors.Insert(0, "wotlk");
                        }
                        else if (Framework.CURRENT_RELEASE_VERSION >= Framework.FIRST_EXPANSION_PATCH["TBC"].ConvertVersion())
                        {
                            _gameFlavors.Insert(0, "tbc");
                        }
                        else
                        {
                            _gameFlavors.Insert(0, "classic");
                        }
                    }
                    else _gameFlavors.Add(string.Empty);
                    if (Framework.PreProcessorTags.Contains("PTR"))
                    {
                        _gameFlavors.Insert(0, "ptr");
                    }
                    if (Framework.PreProcessorTags.Contains("PTR2"))
                    {
                        _gameFlavors.Insert(0, "ptr-2");
                    }
                }

                return _gameFlavors;
            }
        }

        /// <summary>
        /// All of the supported locales. (excluding english)
        /// </summary>
        private static readonly string[] SupportedLocales = Framework.SUPPORTED_LOCALES.Except(l => l == "en").ToArray();

        private static readonly IDictionary<string, int> WowheadSimpleLocaleMapping = new Dictionary<string, int>() {
            { "en", 0  },
            { "ko", 1  },
            { "fr", 2  },
            { "de", 3  },
            { "cn", 4  },
            { "es", 6  },
            { "ru", 7  },
            { "pt", 8  },
            { "it", 9  },
            { "tw", 10 },
            { "mx", 11 },
        };

        private static readonly IDictionary<string, int> WowheadSimpleEnvironmentMapping = new Dictionary<string, int>() {
            { "", 1 }, // retail
            { "retail", 1 },
            { "classic", 4 },
            { "tbc", 5 },
            { "mop-classic", 15 },
            { "forever", 16 },
        };

        /// <summary>
        /// All of the objects and their fields that have been dirtied.
        /// </summary>
        private static readonly IDictionary<long, IDictionary<string, object>> DIRTY_OBJECT_FIELDS = new Dictionary<long, IDictionary<string, object>>();

        private static readonly HttpClient client = new HttpClient(new HttpClientHandler
        {
            AutomaticDecompression = DecompressionMethods.GZip | DecompressionMethods.Deflate,
            UseCookies = true
        });

        static ObjectHarvester()
        {
            var h = client.DefaultRequestHeaders;
            h.UserAgent.ParseAdd("Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36");
            h.Accept.ParseAdd("text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8");
            h.AcceptLanguage.ParseAdd("en-US,en;q=0.9");
            h.Referrer = new Uri("https://www.wowhead.com/");
            h.AcceptCharset.ParseAdd("utf-8");
            h.TryAddWithoutValidation("sec-ch-ua", "\"Chromium\";v=\"129\", \"Not=A?Brand\";v=\"8\"");
            h.TryAddWithoutValidation("sec-ch-ua-mobile", "?0");
            h.TryAddWithoutValidation("sec-ch-ua-platform", "\"Windows\"");
            h.TryAddWithoutValidation("sec-fetch-dest", "document");
            h.TryAddWithoutValidation("sec-fetch-mode", "navigate");
            h.TryAddWithoutValidation("sec-fetch-site", "same-origin");
            h.TryAddWithoutValidation("upgrade-insecure-requests", "1");
        }

        /// <summary>
        /// Get the document from WoWHead.
        /// </summary>
        /// <param name="objectID">The object ID.</param>
        /// <param name="locale">The locale.</param>
        /// <param name="flavor">The game flavor.</param>
        /// <returns></returns>
        private static string GetDocumentFromWoWHead(long objectID, string locale = "en", string flavor = null)
        {
            // Wowhead Cloudflare CDN shadowbans your IP after about 30 requests within a minute or so
            if (WowheadShadowban) return null;

            try
            {
                // https://www.wowhead.com/classic/de/object=14845
                string url = $"https://{(locale == "en" ? "www" : locale)}.wowhead.com/{(string.IsNullOrEmpty(flavor) ? "" : $"{flavor}/")}object={objectID}";
                Framework.Log("Downloading: ", url);

                // Use if needing to Debug
                //var resp = client.GetAsync(url).GetAwaiter().GetResult();
                //byte[] data = resp.Content.ReadAsByteArrayAsync().GetAwaiter().GetResult();
                //return Encoding.UTF8.GetString(data);

                return Encoding.UTF8.GetString(client.GetByteArrayAsync(url).GetAwaiter().GetResult());
            }
            catch (Exception e)
            {
                Trace.WriteLine(e);
                if (e.Message.Contains("(403)"))
                {
                    WowheadShadowban = true;
                    return null;
                }
                else
                {
                    FailureCount++;
                    // after a lot of failures, just give up for this session
                    if (FailureCount > 20)
                    {
                        WowheadShadowban = true;
                    }
                }
                return EMPTY_DOCUMENT;
            }
        }

        /// <summary>
        /// Get the JSON document from WoWHead.
        /// </summary>
        /// <param name="objectID">The object ID.</param>
        /// <param name="locale">The locale.</param>
        /// <param name="flavor">The game flavor.</param>
        /// <returns></returns>
        private static IDictionary<string, object> GetJSONDocumentFromWoWHead(long objectID, string locale = "en", string flavor = "retail")
        {
            // Wowhead Cloudfront CDN shadowbans your IP after about 30 requests within a minute or so
            if (WowheadShadowban) return null;

            try
            {
                WowheadSimpleLocaleMapping.TryGetValue(locale, out int localeID);
                WowheadSimpleEnvironmentMapping.TryGetValue(flavor, out int dataEnv);
                // https://nether.wowhead.com/tooltip/object/123214?dataEnv=16&locale=3
                string url = $"https://nether.wowhead.com/tooltip/object/{objectID}?dataEnv={dataEnv}&locale={localeID}";
                Framework.Log("Downloading: ", url);

                // Use if needing to Debug
                //var resp = client.GetAsync(url).GetAwaiter().GetResult();
                //byte[] data = resp.Content.ReadAsByteArrayAsync().GetAwaiter().GetResult();
                //return Encoding.UTF8.GetString(data);

                return MiniJSON.Json.Deserialize(Encoding.UTF8.GetString(client.GetByteArrayAsync(url).GetAwaiter().GetResult())) as IDictionary<string, object>;
            }
            catch (Exception e)
            {
                Trace.WriteLine(e);
                if (e.Message.Contains("(403)"))
                {
                    WowheadShadowban = true;
                    return null;
                }
                else
                {
                    FailureCount++;
                    // after a lot of failures, just give up for this session
                    if (FailureCount > 20)
                    {
                        WowheadShadowban = true;
                    }
                }
                return null;
            }
        }

        /// <summary>
        /// Get the document from WoWZaming.
        /// </summary>
        /// <param name="objectJsonID">The object json ID.</param>
        /// <returns></returns>
        private static string GetDocumentFromWoWZaming(string objectJsonID)
        {
            try
            {
                // https://wow.zamimg.com/modelviewer/live/meta/object/73228.json
                using (WebClient webClient = new WebClient())
                {
                    string url = $"https://wow.zamimg.com/modelviewer/live/meta/object/{objectJsonID}.json";
                    Trace.Write("Downloading: ");
                    Trace.WriteLine(url);
                    return Encoding.UTF8.GetString(webClient.DownloadData(url));
                }
            }
            catch (Exception e)
            {
                Trace.WriteLine(e);
                return string.Empty;
            }
        }

        /// <summary>
        /// Format a string, escaping double quotes.
        /// </summary>
        /// <param name="text">The text to format.</param>
        /// <returns>The formatted string.</returns>
        private static string FormatStringForExport(string text)
        {
            return $"\"{text.Replace("\"", "\\\"")}\"";
        }

        /// <summary>
        /// Export the provided objectDB
        /// </summary>
        /// <param name="extraIndent">The initial extra indent. (excluding the first line with the parenthesis)</param>
        /// <returns>The exported string in a builder or null if there are no dirty objects.</returns>
        public static StringBuilder ExportObjects(IDictionary<long, IDictionary<string, object>> db, string extraIndent = "")
        {
            if (!db.Any())
                return null;

            var builder = new StringBuilder();
            var keys = db.Keys.ToList();
            Framework.LogDebug($"Found {keys.Count} Dirty objects. Exporting now...");
            keys.Sort();
            builder.AppendLine("{");
            foreach (var key in keys)
            {
                var objectData = db[key];
                builder.Append(extraIndent).Append("\t[").Append(key).AppendLine("] = {");
                if (objectData.TryGetValue("readable", out string readable))
                {
                    builder.Append(extraIndent).Append("\t\treadable = ").Append(FormatStringForExport(readable)).AppendLine(",");
                }
                if (objectData.TryGetValue("icon", out string icon))
                {
                    if (icon.Contains("\""))
                    {
                        builder.Append(extraIndent).Append("\t\ticon = ").Append(FormatStringForExport(icon)).AppendLine(",");
                    }
                    else
                    {
                        builder.Append(extraIndent).Append("\t\ticon = ").Append(icon).AppendLine(",");
                    }
                }
                if (objectData.TryGetValue("model", out object model))
                {
                    builder.Append(extraIndent).Append("\t\tmodel = ").Append(model).AppendLine(",");
                }
                if (objectData.TryGetValue("ignorewowhead", out bool ignore))
                {
                    builder.Append(extraIndent).AppendLine("\t\tignorewowhead = true,");
                }
                if (objectData.TryGetValue("text", out object localeObj) && localeObj is Dictionary<string, object> locales)
                {
                    builder.Append(extraIndent).AppendLine("\t\ttext = {");
                    if (locales.TryGetValue("en", out string localeString))
                    {
                        builder.Append(extraIndent).Append("\t\t\ten = ").Append(FormatStringForExport(localeString)).AppendLine(",");
                    }
                    foreach (var locale in SupportedLocales)
                    {
                        if (locales.TryGetValue(locale, out localeString))
                        {
                            if (localeString == TODO_NAME)
                            {
                                locales[locale] = null;
                                builder.Append(extraIndent).Append("\t\t\t-- TODO: ").Append(locale).Append(" = ")
                                    .Append(FormatStringForExport(string.Empty)).AppendLine(",");
                            }
                            else
                            {
                                builder.Append(extraIndent).Append("\t\t\t").Append(locale).Append(" = ")
                                    .Append(FormatStringForExport(localeString)).AppendLine(",");
                            }
                        }
                    }
                    builder.Append(extraIndent).AppendLine("\t\t},");
                }
                builder.Append(extraIndent).Append("\t").AppendLine("},");
            }
            return builder.Append(extraIndent).Append("}");
        }

        /// <summary>
        /// Export any dirty objects to a given file path.
        /// If there are no dirty objects, this function does nothing.
        /// </summary>
        /// <param name="filePath">The file path.</param>
        public static void ExportDirtyObjectsToFilePath(string filePath) => ExportObjectsToFilePath(DIRTY_OBJECT_FIELDS, filePath);

        /// <summary>
        /// Exports the provided objectDB to a given file path.
        /// </summary>
        /// <param name="db"></param>
        /// <param name="filePath"></param>
        public static void ExportObjectsToFilePath(IDictionary<long, IDictionary<string, object>> db, string filePath, string filePrefix = null)
        {
            var sb = ExportObjects(db);
            if (sb != null)
            {
                Directory.CreateDirectory(Path.GetDirectoryName(filePath));
                File.WriteAllText(filePath, sb
                    .Insert(0, (filePrefix ?? string.Empty) + Environment.NewLine + "local ObjectDB = ObjectDB; for objectID,objectData in pairs(")
                    .Append($")\ndo ObjectDB[objectID] = objectData; end{Environment.NewLine}").ToString(), Encoding.UTF8);
            }
        }

        /// <summary>
        /// Parse the model ID from the document.
        /// </summary>
        /// <param name="document">The document.</param>
        /// <returns>The model ID or 0.</returns>
        private static long ParseModelIDFromDocument(string document)
        {
            if (document.Contains(NOT_FOUND_MESSAGE)) return 0;
            int index = document.IndexOf(DISPLAY_ID_START);
            if (index == -1) return 0;
            index += DISPLAY_ID_START.Length;
            string displayDetailDocument = GetDocumentFromWoWZaming(document.Substring(index, document.IndexOf(DISPLAY_ID_END, index) - index));
            if (string.IsNullOrEmpty(displayDetailDocument)) return 0;
            index = displayDetailDocument.IndexOf(MODEL_ID_START);
            if (index == -1) return 0;
            index += MODEL_ID_START.Length;
            return Convert.ToInt64(displayDetailDocument.Substring(index, displayDetailDocument.IndexOf(MODEL_ID_END, index) - index).Trim());
        }

        /// <summary>
        /// Parse the name from the document.
        /// </summary>
        /// <param name="document">The document.</param>
        /// <returns>The name or an empty string.</returns>
        private static string ParseNameFromDocument(string document)
        {
            if (document.Contains(NOT_FOUND_MESSAGE))
                return string.Empty;

            int index = document.IndexOf(NAME_START);
            if (index == -1)
                return string.Empty;

            index += NAME_START.Length;

            string raw = document.Substring(index, document.IndexOf(NAME_END, index) - index)
                                 .Replace("&quot;", "\"")
                                 .Trim();

            return StripHtmlTags(raw);
        }

        private static string StripHtmlTags(string input)
        {
            if (string.IsNullOrEmpty(input))
                return input;

            var sb = new StringBuilder(input.Length);
            bool insideTag = false;

            foreach (char c in input)
            {
                if (c == '<')
                {
                    insideTag = true;
                    continue;
                }
                if (c == '>')
                {
                    insideTag = false;
                    continue;
                }

                if (!insideTag)
                    sb.Append(c);
            }

            return sb.ToString();
        }


        /// <summary>
        /// Attempt to update the object data from WoWHead.
        /// </summary>
        /// <param name="objectID">The object ID.</param>
        /// <param name="objectData">The object data.</param>
        /// <returns>Whether or not the object is dirty.</returns>
        public static bool UpdateInformationFromWoWHead(long objectID, IDictionary<string, object> objectData)
        {
            // If the Object is flagged to skip wowhead
            if (objectData.ContainsKey("ignorewowhead"))
            {
                return false;
            }

            // Wowhead Cloudflare CDN shadowbans your IP after about 30 requests within a minute or so
            if (WowheadShadowban) return false;

            // Don't look at "custom" objects... Yeesh. Why do these even exist?!
            if (objectID >= 9000000) return false;

            // Allow skipping lookup if configured as such
            if (Framework.Config["IgnoreWowheadRetrieval"]) return false;

            // Attempt to get the text table.
            bool dirty = false;
            Dictionary<string, object> textLocalizations;
            if (objectData.TryGetValue("text", out object data) && data != null)
            {
                if (data is Dictionary<string, object> a) textLocalizations = a;
                else return false;
            }
            else
            {
                textLocalizations = new Dictionary<string, object>();
                dirty = true;
            }

            // Make exporting easier and include less duplicated information.
            // The idea is to allow contributors to copy the dynamic data and manually merge it into ObjectDB.
            Dictionary<string, object> dirtyFields = new Dictionary<string, object>();
            Dictionary<string, object> dirtyTextFields = new Dictionary<string, object>();

            // Cache the game flavor that we're going to be grabbing information from.
            string gameFlavor = null;  // Default being null means we are going to need to figure out which flavor to find.

            // If anything is missing from the English version, let's try to get it.
            bool hasReadable = objectData.ContainsKey("readable");
            bool hasEnglish = textLocalizations.ContainsKey("en");
            //bool hasIcon = objectData.ContainsKey("icon");    // NOTE: Icon isn't included in this initial check. Not sure how to determine it. Probably needs to be done manually.
            bool hasModelID = objectData.ContainsKey("model");
            if (!(hasReadable && hasEnglish && hasModelID))
            {
                // Try to find the english document from WoWHead.
                string englishDocument = string.Empty;
                string name = string.Empty;
                foreach (string flavor in GameFlavors)
                {
                    // need the full HTML for this since it's used for the model lookup currently
                    englishDocument = GetDocumentFromWoWHead(objectID, "en", flavor);
                    //var objectInfo = GetJSONDocumentFromWoWHead(objectID, "en", flavor);
                    //if (objectInfo != null && objectInfo.TryGetValue("name", out string nameStr))
                    //{
                    //    name = nameStr;
                    //    gameFlavor = flavor;
                    //    break;
                    //}

                    switch (englishDocument)
                    {
                        case EMPTY_DOCUMENT:
                            objectData["ignorewowhead"] = true;
                            break;
                        case null:
                        case "":
                            break;
                        default:
                            name = ParseNameFromDocument(englishDocument);
                            if (!string.IsNullOrEmpty(name))
                            {
                                gameFlavor = flavor;
                            }
                            break;
                    }
                }

                // No flavor determined
                if (gameFlavor == null)
                {
                    Framework.Log($"Failed to determine a game flavor for object #{objectID}");
                }

                // If we didn't find a document, let's print an error message and return.
                if (englishDocument == string.Empty)
                {
                    Trace.Write("Unable to find English localization for object #");
                    Trace.WriteLine(objectID);
                    return false;
                }

                // Attempt to parse the english document.
                if (string.IsNullOrEmpty(name))
                {
                    Trace.Write("Unable to find English name from document for object #");
                    Trace.WriteLine(objectID);
                    return false;
                }
                if (!hasReadable)
                {
                    Trace.Write(" readable = ");
                    Trace.WriteLine(name);
                    objectData["readable"] = name;
                    dirtyFields["readable"] = name;
                    dirty = true;
                }
                if (!hasEnglish)
                {
                    Trace.Write(" text.en = ");
                    Trace.WriteLine(name);
                    textLocalizations["en"] = name;
                    dirtyTextFields["en"] = name;
                    dirtyFields["text"] = dirtyTextFields;
                    dirty = true;
                }
                if (!hasModelID)
                {
                    // Attempt to parse the model ID from the english document.
                    long modelID = ParseModelIDFromDocument(englishDocument);
                    if (modelID > 0)
                    {
                        Trace.Write(" model = ");
                        Trace.WriteLine(modelID);
                        objectData["model"] = modelID;
                        dirtyFields["model"] = modelID;
                        dirty = true;
                    }
                }
            }

            // Ensure a valid flavor is used
            gameFlavor = gameFlavor ?? GameFlavors.FirstOrDefault();

            // Only update the object data if we have obtained the en locale (Wowhead likes to shadow ban repeated url requests)
            objectData["text"] = textLocalizations;
            // The english text, which acts as the default.
            string englishText = textLocalizations["en"].ToString();

            // Attempt to find missing non-English localizations
            foreach (string locale in SupportedLocales)
            {
                if (!textLocalizations.TryGetValue(locale, out string oldValue) || oldValue.Contains(englishText))
                {
                    string name = oldValue;
                    //string document = GetDocumentFromWoWHead(objectID, locale, gameFlavor);
                    var objectInfo = GetJSONDocumentFromWoWHead(objectID, locale, gameFlavor);
                    if (objectInfo != null && objectInfo.TryGetValue("name", out string nameStr))
                    {
                        name = nameStr;
                        // don't store the English default for other locales
                        if (name.StartsWith("[") && name.EndsWith("]"))
                        {
                            name = oldValue;
                        }

                        Trace.Write(" text.");
                        Trace.Write(locale);
                        Trace.Write(" = ");
                        Trace.WriteLine(name);
                    }

                    //switch (document)
                    //{
                    //    case EMPTY_DOCUMENT:
                    //        objectData["ignorewowhead"] = true;
                    //        break;
                    //    case null:
                    //    case "":
                    //        break;
                    //    default:
                    //        // Attempt to parse the non-english document.
                    //        name = ParseNameFromDocument(document);
                    //        if (!string.IsNullOrEmpty(name))
                    //        {
                    //            // don't store the English default for other locales
                    //            if (name.StartsWith("[") && name.EndsWith("]"))
                    //            {
                    //                name = oldValue;
                    //            }

                    //            Trace.Write(" text.");
                    //            Trace.Write(locale);
                    //            Trace.Write(" = ");
                    //            Trace.WriteLine(name);
                    //        }
                    //        break;
                    //}

                    if (name != oldValue)
                    {
                        textLocalizations[locale] = name;
                        dirtyTextFields[locale] = name;
                        dirtyFields["text"] = dirtyTextFields;
                        dirty = true;
                    }
                }
            }
            if (dirty && dirtyFields.Any()) DIRTY_OBJECT_FIELDS[objectID] = dirtyFields;
            return dirty;
        }
    }
}
