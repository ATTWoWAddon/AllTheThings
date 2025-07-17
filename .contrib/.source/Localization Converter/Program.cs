using Newtonsoft.Json.Linq;
using System.Collections.Immutable;
using System.Text;

internal class Program
{
    private const bool DEBUG_LOCALES = false;
    private const bool PRINT_LINES = false;
    private static Dictionary<string, string> LocalizeRemapper = new()
    {
        { "Default Locale", "en" }
    };

    private static Dictionary<string, string> GlobalStrings = new();

    static void AppendLocalePair(StringBuilder builder, string enValue, Dictionary<string, string> locales, string key)
    {
        if (locales.TryGetValue(key, out string? value)) AppendLocalePair(builder, enValue, key, value);
        else AppendLocalePairPlaceholder(builder, enValue, key);
    }
    static void AppendLocalePair(StringBuilder builder, string enValue, Dictionary<string, string> locales, string key, string subKey)
    {
        if (locales.TryGetValue(key, out string? value))
        {
            AppendLocalePair(builder, enValue, key, value);
            if (locales.TryGetValue(subKey, out string? subValue))
            {
                if (value != subValue) AppendLocalePair(builder, enValue, subKey, subValue);
                else AppendLocalePairPlaceholder(builder, enValue, subKey);
            }
            else AppendLocalePairPlaceholder(builder, enValue, subKey);
        }
        else
        {
            AppendLocalePairPlaceholder(builder, enValue, key);
            AppendLocalePairPlaceholder(builder, enValue, subKey);
        }
    }

    static void AppendLocalePair(StringBuilder builder, string key, string value)
    {
        builder.Append("\t");
        AppendKeyValue(builder, key, value);
    }

    static void AppendKeyValue(StringBuilder builder, string key, string value)
    {
        builder.Append("\t").Append(key).Append(" = ");
        AppendString(builder, value).AppendLine(",");
    }

    static StringBuilder AppendString(StringBuilder builder, string value)
    {
        if (value.StartsWith("[[")) return builder.Append(value);
        else return builder.Append($"\"{value.Replace("\"", "\\\"")}\"");
    }

    static void AppendLocalePair(StringBuilder builder, string enValue, string key, string value)
    {
        if (value != enValue) AppendLocalePair(builder, key, value);
    }

    static void AppendLocalePairPlaceholder(StringBuilder builder, string enValue, string key)
    {
        if (!enValue.StartsWith('[')) builder.Append("\t\t-- TODO: ").Append(key).AppendLine(" = \"\",");
    }

    private static void Main(string[] args)
    {
        Console.OutputEncoding = Encoding.UTF8;

        // Import GlobalStrings
        foreach (var line in File.ReadLines("../GlobalStrings.lua"))
        {
            string trimmedLine = line.Trim();
            if (trimmedLine.StartsWith('-')) continue;      // Ignore comments
            string[] splitString = trimmedLine.Split('=');
            if (splitString.Length == 1) continue;          // Ignore lines without assignments
            string variableName = splitString[0].Trim().ToUpper();    // Simplify the Variable Name
            if (variableName.StartsWith("_G[\"")) variableName = variableName.Substring(4, variableName.Length - 7);
            string localeData = splitString[1].Trim();
            /*
            Console.Write(variableName);
            Console.Write(" = ");
            Console.WriteLine(localeData);
            */
            GlobalStrings[variableName] = localeData.Substring(1, localeData.Length - 3);
        }

        // Acquire a list of all successfully built localization strings. (We will purge these strings from the locale files)
        Dictionary<string, bool> SuccessfulLocalizationStrings = new();
        foreach (var localeFile in Directory.EnumerateFiles("../Parser/lib/Strings", "*.lua", SearchOption.AllDirectories))
        {
            SuccessfulLocalizationStrings[Path.GetFileNameWithoutExtension(localeFile)] = true;
        }

        // Parse the Locale files
        Dictionary<string, string> LocalizationStringIcons = [];
        Dictionary<string, string> LocalizationStringColors = [];
        Dictionary<string, Dictionary<string, string>> LocalizationStrings = [];
        Console.WriteLine("PARSING LOCALE FILES...");
        foreach (var localeFile in Directory.EnumerateFiles("../../locales/", "*.lua"))
        {
            Console.WriteLine(localeFile);

            // Remap the locale referenced by the locale files based on the remapper.
            string locale = Path.GetFileNameWithoutExtension(localeFile);
            if (LocalizeRemapper.TryGetValue(locale, out string? remappedLocale)) locale = remappedLocale;

            // Parse each of the files.
            var lines = File.ReadAllLines(localeFile);
            int length = lines.Length;

            List<string> whiteListedLines = new();
            for (int lineIndex = 0; lineIndex < length; ++lineIndex)
            {
                string line = lines[lineIndex];
                string trimmedLine = line.Trim();
                if (trimmedLine.StartsWith("--"))
                {
                    continue;
                }
                if (trimmedLine.StartsWith("local "))
                {
                    whiteListedLines.Add(line);
                    continue;
                }
                string[] splitString = trimmedLine.Split('=');
                if (splitString.Length == 1)
                {
                    whiteListedLines.Add(line);
                    continue;
                }
                string variableName = splitString[0].Trim().ToUpper();
                if (variableName.Contains(' ') || variableName.Contains("__INDEX") || variableName.Contains("EXPANSION_DATA") || variableName.StartsWith('['))
                {
                    whiteListedLines.Add(line);
                    continue;
                }
                if (variableName.StartsWith("L.")) variableName = variableName[2..];

                if (SuccessfulLocalizationStrings.ContainsKey(variableName))
                {
                    string localeData = splitString[1].Trim();
                    if (localeData.Length > 0 && localeData[0] == '{')   // Is this an array of locale strings?
                    {
                        for (++lineIndex; lineIndex < length; ++lineIndex)
                        {
                            line = lines[lineIndex];
                            trimmedLine = line.Trim();
                            if (trimmedLine.Length == 0) continue;          // Ignore empty strings
                            if (trimmedLine.StartsWith('-')) continue;      // Ignore comments
                            trimmedLine = line.Split("-- ")[0].Split("--TODO")[0].Trim();
                            if (trimmedLine.Contains('}')) break;
                        }
                    }
                }
                else
                {
                    string localeData = splitString[1].Trim();
                    if (localeData.Length > 0 && localeData[0] == '{')   // Is this an array of locale strings?
                    {
                        whiteListedLines.Add(line);
                        for (++lineIndex; lineIndex < length; ++lineIndex)
                        {
                            line = lines[lineIndex];
                            whiteListedLines.Add(line);
                            trimmedLine = line.Trim();
                            if (trimmedLine.Length == 0) continue;          // Ignore empty strings
                            if (trimmedLine.StartsWith('-')) continue;      // Ignore comments
                            trimmedLine = line.Split("-- ")[0].Split("--TODO")[0].Trim();
                            if (trimmedLine.Contains('}'))
                            {

                                break;
                            }
                        }
                        continue;
                    }
                    else whiteListedLines.Add(line);
                }
            }

            File.WriteAllLines(localeFile, whiteListedLines);
            length = whiteListedLines.Count;
            for (int lineIndex = 0; lineIndex < length; ++lineIndex)
            {
                string line = whiteListedLines[lineIndex];
                string trimmedLine = line.Trim();
                if (trimmedLine.StartsWith('-') || trimmedLine.StartsWith("local ")) continue;      // Ignore comments
                string[] splitString = trimmedLine.Split('=');
                if (splitString.Length == 1) continue;          // Ignore lines without assignments
                string variableName = splitString[0].Trim().ToUpper();    // Simplify the Variable Name
                if (variableName.Contains(' ') || variableName.Contains("__INDEX")) continue;       // Ignore if-statements.
                if (variableName.StartsWith("L.")) variableName = variableName[2..];
                if (variableName.Contains("EXPANSION_DATA")) continue;  // Ignore Expansion Data
                if (variableName.StartsWith('[')) continue;     // Ignore Array Data (Custom Collects)
                if (SuccessfulLocalizationStrings.ContainsKey(variableName)) continue;
                string localeData = splitString[1].Trim();
                if (localeData.Length == 0) continue;           // Ignore empty strings
                localeData = localeData.Split("-- ")[0].Split("--TODO")[0].Trim();
                localeData = localeData.Replace("|C", "|c").Replace("|R", "|r");
                if (PRINT_LINES) Console.WriteLine(trimmedLine);

                if (localeData[0] == '{')   // Is this an array of locale strings?
                {
                    for (++lineIndex; lineIndex < length; ++lineIndex)
                    {
                        line = whiteListedLines[lineIndex];
                        trimmedLine = line.Trim();
                        if (trimmedLine.Length == 0) continue;          // Ignore empty strings
                        if (trimmedLine.StartsWith('-')) continue;      // Ignore comments
                        trimmedLine = line.Split("-- ")[0].Split("--TODO")[0].Trim();
                        if (PRINT_LINES) Console.WriteLine(trimmedLine);
                        if (trimmedLine.StartsWith('}'))
                        {
                            localeData += "\n\t\t}";
                            break;
                        }
                        else localeData += "\n\t\t\t" + trimmedLine;
                    }
                    continue;
                }

                // Clean up the locale data
                localeData = localeData.Replace("app.", "_.");
                if (localeData.EndsWith(';')) localeData = localeData[..^1];

                // Check to see if the locale data is encased in a color string or constant.
                string trimmedLocaleData = localeData.Trim();
                if (trimmedLocaleData.StartsWith("\"|c"))
                {
                    // We got ourselves a color folks! Let's parse that out.
                    if (trimmedLocaleData.StartsWith("\"|c\""))
                    {
                        // Looks like we have a constant following this value.
                        // Example: "|c" .. _.DefaultColors.Account .. "Account Mode|r"
                    }
                    else
                    {
                        // Oh goody, a simple color string.
                        // Example: "|cFF00FFDE I am a different color |r"
                        string colorString = trimmedLocaleData.Substring(1, 10);
                        localeData = localeData.Remove(localeData.IndexOf(colorString), colorString.Length);
                        if (trimmedLocaleData.EndsWith("|r\"")) localeData = localeData.Remove(localeData.LastIndexOf("|r"), 2);
                        LocalizationStringColors[variableName] = colorString[2..];
                    }
                }
                localeData = string.Join(" .. ", localeData
                    .Replace("..", " .. ").Replace(". .", "..")
                    .Replace("  ..  ", " .. ").Replace("\" .. \"", "")
                    .Split(" .. ", StringSplitOptions.RemoveEmptyEntries));
                if (localeData.StartsWith('{') || localeData.Contains(" .. ") || !localeData.Contains('"')) localeData = $"[[~{localeData}]]";
                else if (localeData.StartsWith('"') && localeData.EndsWith('"'))
                {
                    localeData = localeData[1..^1];
                    if (localeData.EndsWith(" .. ")) localeData = localeData[..^4] + ".";
                }
                while (localeData.Contains("\\\"")) localeData = localeData.Replace("\\\"", "\"");

                if (DEBUG_LOCALES && locale == "en")
                {
                    Console.Write(locale);
                    Console.Write(": ");
                    Console.Write(variableName);
                    Console.Write(" = ");
                    Console.Write(localeData);
                    Console.ReadLine();
                }

                // Attempt to record the localization string for the variable name constant to the localization strings table.
                if (!LocalizationStrings.TryGetValue(variableName, out Dictionary<string, string>? stringsByLocale))
                {
                    LocalizationStrings[variableName] = stringsByLocale = [];
                }
                stringsByLocale[locale] = localeData;
            }

            if (DEBUG_LOCALES && locale == "en")
            {
                Console.ReadLine();
            }
        }

        DirectoryInfo StringsDirectory = Directory.CreateDirectory("../Parser/lib/Strings");
        Dictionary<string, Dictionary<string, string>> BrokenStrings = [];
        foreach (var localizationStringPair in LocalizationStrings)
        {
            // Check to see if this localization string has an en key.
            var key = localizationStringPair.Key;
            var locales = localizationStringPair.Value;
            if (locales.TryGetValue("en", out string? enString) && !(key.Contains('[') || key.Contains('.')))
            {
                StringBuilder builder = new(); builder.AppendLine("createLocalizationString({");
                string readable = enString;
                if (readable.StartsWith('['))
                {
                    // Try to acquire global strings if it is possible.
                    if(GlobalStrings.TryGetValue(readable.Substring(3, readable.Length - 5), out string? globalString))
                    {
                        readable = globalString;
                    }
                    else
                    {
                        // FAILED!
                        Console.WriteLine("Failed to find GlobalString");
                        Console.Write(" ");
                        Console.WriteLine(readable);
                    }
                }
                AppendKeyValue(builder, "readable", readable);
                AppendKeyValue(builder, "constant", key);
                if (LocalizationStringIcons.TryGetValue(key, out string? iconString)) AppendKeyValue(builder, "icon", iconString);
                if (LocalizationStringColors.TryGetValue(key, out string? colorString)) AppendKeyValue(builder, "color", colorString);
                builder.AppendLine("\texport = true,"); // Export all keys until determined otherwise
                builder.AppendLine("\ttext = {");

                // Write the locale key assignments
                AppendLocalePair(builder, "en", enString);  // Write en first every time. 'Merica!
                AppendLocalePair(builder, enString, locales, "de");
                AppendLocalePair(builder, enString, locales, "es", "mx");
                AppendLocalePair(builder, enString, locales, "fr");
                AppendLocalePair(builder, enString, locales, "it");
                AppendLocalePair(builder, enString, locales, "pt");
                AppendLocalePair(builder, enString, locales, "ru");
                AppendLocalePair(builder, enString, locales, "ko");
                AppendLocalePair(builder, enString, locales, "cn", "tw");

                File.WriteAllText($"{StringsDirectory.FullName}/{localizationStringPair.Key}.lua", builder.AppendLine("\t},").Append("})").ToString());
            }
            else
            {
                BrokenStrings[key] = locales;
            }
        }
        if (BrokenStrings.Any())
        {
            File.WriteAllText($"{StringsDirectory.FullName}/__BROKEN_STRINGS.lua", Newtonsoft.Json.JsonConvert.SerializeObject(BrokenStrings, Newtonsoft.Json.Formatting.Indented));
        }
    }
}