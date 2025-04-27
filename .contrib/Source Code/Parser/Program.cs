using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Reflection;
using System.Text;

namespace ATT
{
    class Program
    {
        private static bool _Errored;
        private static bool Errored
        {
            get => !PreProcessorTags.ContainsKey("IGNORE_ERRORS") && (_Errored || Framework.IsErrored);
            set => _Errored = value;
        }
        private static int ErrorCode => Errored ? -1 : 0;

        private static readonly NLua.Lua lua = new NLua.Lua();

        public static string CurrentSubFilename => lua.State?.Status == KeraLua.LuaStatus.OK ? lua?.GetString("CurrentSubFileName") : null;

        public static Dictionary<string, bool> PreProcessorTags { get; set; } = new Dictionary<string, bool>();
        static void UnhandledExceptionHandler(object sender, UnhandledExceptionEventArgs e)
        {
            Exception ex = (Exception)e.ExceptionObject;
            Framework.LogException(ex);
        }

        static int Main(string[] args)
        {
            AppDomain.CurrentDomain.UnhandledException += new UnhandledExceptionEventHandler(UnhandledExceptionHandler);
            // Setup tracing to the console.
            Tracer.OnWrite += Console.Write;

#if DEBUG
            Framework.DebugMode = true;
#endif

            Framework.CurrentParseStage = ParseStage.InitializeParserConfigs;


            try
            {
                // Determine if running in Debug Mode or not.
                if (args != null && args.Length > 0)
                {
                    char[] argSplit = new[] { '=' };
                    foreach (var arg in args)
                    {
                        string[] argPieces = arg.Split(argSplit);
                        HandleParserArgument(argPieces.SafeIndex(0), argPieces.SafeIndex(1));
                    }
                }

                if (!Framework.HasConfig())
                {
                    // Ensure the Parser uses the default config if nothing is specified.
                    Framework.InitConfigSettings(".config/retail/retail.config");

#if DEBUG
                    Framework.InitConfigSettings("parser/retail/debug.config");
#endif
                }
            }
            catch (FormatException configException)
            {
                Trace.WriteLine(configException);
                Framework.WaitForUser();
                return ErrorCode;
            }

            string[] preprocessorArray = Framework.Config["PreProcessorTags"];
            if (preprocessorArray != null)
            {
                foreach (var preprocessor in preprocessorArray)
                {
                    PreProcessorTags[preprocessor] = true;
                    Console.WriteLine($"PREPROCESSOR: {preprocessor}");
                }
            }

            Framework.ApplyConfigSettings();

            try
            {
                // Prepare console output to a file.
                string databaseRootFolder = Framework.Config["root-data"] ?? "./DATAS";

                Framework.CurrentParseStage = ParseStage.RawJsonMerge;
                do
                {
                    Errored = false;
                    // Load all of the RAW JSON Data into the database.
                    var files = Directory.EnumerateFiles(databaseRootFolder, "*.json", SearchOption.AllDirectories).ToList();
                    files.Sort(StringComparer.InvariantCulture);
                    foreach (var f in files) ParseJSONFile(f);

                    if (Errored)
                    {
                        Trace.WriteLine("Please fix the formatting of the above Invalid JSON file(s)");
                        Trace.WriteLine("Press Enter once you have resolved the issue.");
                        Framework.WaitForUser();
                    }
                }
                while (Errored && !Framework.Automated);

                // Load all Wago DB CSV files
                Framework.CurrentParseStage = ParseStage.WagoDBMerge;
                do
                {
                    Errored = false;
                    // Load all of the RAW JSON Data into the database.
                    var wagoDirectory = Framework.Config["wago-directory"];
                    if (!string.IsNullOrWhiteSpace(wagoDirectory))
                    {
                        Trace.WriteLine($"Loading Wago DB CSV files from {wagoDirectory}.");
                    }
                    var files = Directory.EnumerateFiles(wagoDirectory, "*.csv", SearchOption.AllDirectories).ToList();

                    files.Sort(StringComparer.InvariantCulture);
                    foreach (var f in files) ParseWagoDbCsvFile(f);

                    if (Errored)
                    {
                        Trace.WriteLine("Please re-download the above Invalid CSV file(s) from wago.tools/db2");
                        Trace.WriteLine("Press Enter once you have resolved the issue.");
                        Framework.WaitForUser();
                    }
                }
                while (Errored && !Framework.Automated);

                // Load all of the Lua files into the database.
                var mainFileName = $"{databaseRootFolder}\\..\\_main.lua";
                var luaFiles = Directory.GetFiles(databaseRootFolder, "*.lua", SearchOption.AllDirectories).ToList();
                // Do not iterate over the header file.
                if (!File.Exists(mainFileName))
                {
                    Trace.WriteLine("Could not find the '_main.lua' header file.");
                    Trace.WriteLine("Operation cannot continue without it.");
                    Trace.WriteLine("Press Enter to Close.");
                    Framework.WaitForUser();
                    return ErrorCode;
                }
                Framework.CurrentFileName = mainFileName;
                luaFiles.Sort(StringComparer.InvariantCulture);
                lua.State.Encoding = Encoding.UTF8;
                // link the Lua 'print' function to instead perform a Trace print
                lua.RegisterFunction("print", typeof(Program).GetMethod(nameof(LuaPrintAsTrace), BindingFlags.NonPublic | BindingFlags.Static));
                lua.RegisterFunction("error", typeof(Program).GetMethod(nameof(LuaErrorAsTrace), BindingFlags.NonPublic | BindingFlags.Static));
                lua.DoString($"CurrentFileName = [[{mainFileName.Replace("\\", "/")}]];CurrentSubFileName = nil;");
                lua.DoString(ProcessContent(File.ReadAllText(mainFileName, Encoding.UTF8)));
                Framework.IgnoredValue = lua.GetString("IGNORED_VALUE");
                Framework.Validator = new DataValidator(lua, Framework.Config);
                Framework.CurrentFileName = null;

                // Try to Copy in the Alliance Only / Horde Only / All Races lists
                try
                {
                    var set = new HashSet<object>();
                    foreach (var race in lua.GetTable("ALLIANCE_ONLY").Values.AsTypedEnumerable<long>())
                    {
                        set.Add(race);
                    }
                    Framework.ALLIANCE_ONLY = set.ToList();

                    set.Clear();
                    foreach (var race in lua.GetTable("HORDE_ONLY").Values.AsTypedEnumerable<long>())
                    {
                        set.Add(race);
                    }
                    Framework.HORDE_ONLY = set.ToList();

                    set.Clear();
                    foreach (var race in lua.GetTable("ALL_RACES").Values.AsTypedEnumerable<long>())
                    {
                        set.Add(race);
                    }
                    Framework.ALL_RACES = set.ToList();

                    set.Clear();
                    foreach (var race in lua.GetTable("ALL_CLASSES").Values.AsTypedEnumerable<long>())
                    {
                        set.Add(race);
                    }
                    Framework.ALL_CLASSES = set.ToList();

                    Framework.ALLIANCE_ONLY.Sort();
                    Framework.HORDE_ONLY.Sort();
                    Framework.ALL_RACES.Sort();
                }
                catch (Exception e)
                {
                    Framework.LogException(e);
                    Trace.WriteLine("Press Enter once you have resolved the issue.");
                    Framework.WaitForUser();
                }

                Framework.CurrentParseStage = ParseStage.ContributorDataMerge;
                foreach (var fileName in luaFiles)
                {
                    ParseLUAFile(lua, fileName);
                }

                Framework.CurrentParseStage = ParseStage.PreProcessingSetup;
                try
                {
                    // CustomHeaderIDsByKey
                    // Try to grab the contents of the global variable "HeaderAssignments".
                    var HeaderAssignments = lua.GetTable("HeaderAssignments");
                    if (HeaderAssignments != null)
                    {
                        var assignments = Framework.ParseAsDictionary<string>(HeaderAssignments);
                        foreach (var pair in assignments)
                        {
                            Framework.CustomHeaderIDsByKey[pair.Key] = Convert.ToInt64(pair.Value);
                        }
                    }

                    // Try to grab the contents of the global variable "CustomHeaders".
                    var customHeaders = lua.GetTable("CustomHeaders");
                    if (customHeaders != null)
                    {
                        Framework.AssignCustomHeaders(Framework.ParseAsDictionary<long>(customHeaders));
                    }

                    // Try to grab the contents of the global variable "Phases".
                    var phases = lua.GetTable("Phases");
                    if (phases != null)
                    {
                        Framework.AssignPhases(Framework.ParseAsDictionary<long>(phases));
                    }

                    Framework.Objects.SKILL_ID_CONVERSION_TABLE =
                        Framework.ParseAsDictionary<long>(lua.GetTable("SKILL_ID_CONVERSION_TABLE") ?? throw new InvalidDataException("Missing 'SKILL_ID_CONVERSION_TABLE' Global!"))
                        .ToDictionary(kvp => kvp.Key, kvp => (long)kvp.Value);

                    Framework.Objects.MERGE_OBJECT_FIELDS =
                        Framework.ParseAsStringDictionary(lua.GetTable("MERGE_OBJECT_FIELDS") ?? throw new InvalidDataException("Missing 'MERGE_OBJECT_FIELDS' Global!"))
                        .ToDictionary(kvp => kvp.Key, kvp => (kvp.Value as List<object>)?.Select(o => o.ToString()).ToArray());

                    Framework.Objects.MAPID_COORD_SHIFTS =
                        Framework.ParseAsDictionary<long>(lua.GetTable("MAPID_COORD_SHIFTS") ?? throw new InvalidDataException("Missing 'MAPID_COORD_SHIFTS' Global!"))
                        .ToDictionary(kvp => kvp.Key, kvp => CoordShift.Create(kvp.Value));
                    PurgeCoordShiftsBeyondParserVersion();

                    Framework.SUPPORTED_LOCALES =
                        Framework.ParseAsDictionary<long>(lua.GetTable("SUPPORTED_LOCALES") ?? throw new InvalidDataException("Missing 'SUPPORTED_LOCALES' Global!"))
                        .Select(kvp => kvp.Value?.ToString()).ToArray();

                    Framework.FIRST_EXPANSION_PATCH =
                        Framework.ParseAsStringDictionary(lua.GetTable("FIRST_EXPANSION_PATCH") ?? throw new InvalidDataException("Missing 'FIRST_EXPANSION_PATCH' Global!"))
                         .ToDictionary(kvp => kvp.Key, kvp => (kvp.Value as List<object>)?.Select(o => int.Parse(o.ToString())).ToArray());
                }
                catch (Exception e)
                {
                    Framework.LogException(e);
                    Framework.WaitForUser();
                    return ErrorCode;
                }

                do
                {
                    try
                    {
                        lua.DoString("AllTheThings = {};_ = AllTheThings;");
                        lua.DoString("for i,method in ipairs(POST_PROCESSING_FUNCTIONS) do method(); end");
                        Framework.Merge(lua.GetTable("AllTheThings"));
                        break;
                    }
                    catch (Exception e)
                    {
                        Framework.LogException(e);
                        Trace.WriteLine("Press Enter once you have resolved the issue.");
                        Framework.WaitForUser();
                    }
                }
                while (!Framework.Automated);

                // finally load in any Global Databases which were part of prior parsed files so that we only have to load & parse them one time
                try
                {
                    Framework.Merge(lua.GetTable("GlobalDBs"));
                }
                catch (Exception e)
                {
                    Framework.LogException(e);
                    Trace.WriteLine("Press Enter once you have resolved the issue.");
                    Framework.WaitForUser();
                }

                lua.Close();

                if (Errored && Framework.Automated)
                {
                    Trace.WriteLine("-- Errors encountered during Parse. Please fix them to allow exporting addon DB properly.");
                    return ErrorCode;
                }

                // Now that all of the data and items have been loaded into the Database, let's Process it!
                Framework.Process();

                // Let's do some debugging...
                Trace.Write("There are ");
                Trace.Write(Framework.Items.Count);
                Trace.WriteLine(" Items loaded in the database.");

                if (Errored)
                {
                    Trace.WriteLine("-- Errors encountered during Processing. Please fix them to allow exporting addon DB properly.");
                    return ErrorCode;
                }

                // Export all of the data for the Framework.
                Framework.Export();

                Framework.CurrentParseStage = ParseStage.FinalLogging;
                foreach (KeyValuePair<string, HashSet<decimal>> idSet in Framework.OutputSets)
                {
                    StringBuilder output = new StringBuilder();
                    foreach (var id in idSet.Value
                        .Where(v => v > 1)
                        .OrderBy(i => i))
                    {
                        output.Append(id).Append(",");
                    }

                    if (output.Length > 0)
                        Framework.Log($"{idSet.Key}: " + output.ToString());
                }

                // Notify of duplicate object listings
                foreach (string key in Framework.TypeUseCounts.Keys)
                {
                    StringBuilder dupeIDs = new StringBuilder();
                    Dictionary<decimal, int> idCounts = Framework.TypeUseCounts[key];
                    int count = 0;
                    foreach (var id in idCounts
                        .Where(kvp => kvp.Value > 1)
                        .Select(kvp => kvp.Key)
                        .OrderBy(i => i))
                    {
                        dupeIDs.Append(id).Append(",");
                        count++;
                    }

                    if (dupeIDs.Length > 0)
                        Framework.Log($"Duplicate {key} Usage ({count}): " + dupeIDs.ToString());
                }

                // Update the .TOC with the Parser Run Date
                //const string TOC_PATH = "..\\..\\AllTheThings.toc";
                //if (File.Exists(TOC_PATH))
                //{
                //    string fullToc = File.ReadAllText(TOC_PATH, Encoding.UTF8);

                //}
            }
            catch (Exception e)
            {
                Framework.LogException(e);
                Trace.WriteLine("-- Exception encountered during Parse. Please fix them to allow exporting addon DB properly.");
            }

            return ErrorCode;
        }

        private static void PurgeCoordShiftsBeyondParserVersion()
        {
            var keys = Framework.Objects.MAPID_COORD_SHIFTS.Keys.ToArray();

            foreach(var key in keys)
            {
                if (Framework.Objects.MAPID_COORD_SHIFTS[key].TimelineEntry.LongVersion > Framework.CURRENT_RELEASE_VERSION)
                {
                    Framework.Objects.MAPID_COORD_SHIFTS.Remove(key);
                }
            }
        }

        private static void ParseWagoDbCsvFile(string f)
        {
            // Ignore Wago DB files if not on Retail... they're always latest so can't be used for older versions
            //if (!((string[])Framework.Config["PreProcessorTags"]).Contains("RETAIL")) return;

            string csv = File.ReadAllText(f);
            string type = f.Substring(f.LastIndexOf('\\') + 1);
            type = type.Substring(0, type.IndexOf('.'));
            Framework.ParseWagoCsv(type, csv);
        }

        private static void HandleParserArgument(string name, string value)
        {
            switch (name)
            {
                case "debug":
                    Framework.DebugMode = true;
                    break;
                case "auto":
                    Framework.Automated = true;
                    break;
                case "baseconfig":
                    if (!string.IsNullOrWhiteSpace(value))
                    {
                        Framework.InitConfigSettings(value, true);
                    }
                    else
                    {
                        Framework.LogError("Missing 'baseconfig' parameter value! ex. baseconfig=\"path\"");
                    }
                    break;
                case "config":
                    if (!string.IsNullOrWhiteSpace(value))
                    {
                        Framework.InitConfigSettings(value);
                    }
                    else
                    {
                        Framework.LogError("Missing 'config' parameter value! ex. config=\"path\"");
                    }
                    break;
            }
        }

        public static int GetLineNumber(Exception ex)
        {
            var s = ex.Message.Split(':');
            if (s.Length > 1 && int.TryParse(s[1], out int line)) return line;
            return -1;
        }

        /// <summary>
        /// Process the content of the file for command blocks.
        /// </summary>
        /// <param name="content">The content of the file.</param>
        /// <returns>The processed content of the file.</returns>
        static string ProcessContent(string content)
        {
            // If it doesn't contain a command statement, just skip processing it.
            if (content.Contains("-- #"))
            {
                int startIndex = 0;
                var builder = new StringBuilder();
                ProcessContent(builder, content, ref startIndex, startIndex, content.Length);
                return builder.ToString();
            }
            return content;
        }

        /// <summary>
        /// Process the content in the string for command blocks and write the valid command block data to the builder.
        /// </summary>
        /// <param name="builder">The string builder.</param>
        /// <param name="content">The content of the file.</param>
        /// <param name="index">The current index of the file.</param>
        /// <param name="previousIndex">The previous index of the file.</param>
        /// <param name="length">The total length of the string content.</param>
        static void ProcessContent(StringBuilder builder, string content, ref int index, int previousIndex, int length)
        {
            while (previousIndex < length && previousIndex > -1 && (index = content.IndexOf("-- #", previousIndex)) > -1)
            {
                builder.Append(content.Substring(previousIndex, index - previousIndex).TrimEnd());
                ProcessInitialCommandBlock(builder, content, ref index, length);
                previousIndex = index;
            }
            if (previousIndex > -1)
            {
                if (previousIndex < index) builder.Append(content.Substring(previousIndex, index - previousIndex));
                else if (previousIndex < length) builder.Append(content.Substring(previousIndex, length - previousIndex));
            }
            else if (index > -1 && index < length) builder.Append(content.Substring(index, length - index));
        }

        static void ProcessInitialCommandBlock(StringBuilder builder, string content, ref int index, int length)
        {
            // Attempt to parse a command that initiates a command block.
            int newLineIndex = content.IndexOf('\n', index += 4);
            var command = content.Substring(index, (newLineIndex > 0 ? newLineIndex : length) - index).Trim().ToUpper().Split(' ');
            index = newLineIndex;
            switch (command[0])
            {
                case "IF":
                    // This is an IF command. It is the start of a new internal command block.
                    ProcessInternalCommandBlock(command, builder, content, ref index, length);
                    break;
                case "IMPORT:":
                    // This is an IMPORT command. It indicates that a Live DB file should be loaded.
                    ProcessImportCommand(command, builder, content, ref index, length);
                    break;
                default:
                    throw new Exception($"Malformed #{command[0]} statement: Expected #IF statement first... '{string.Join(" ", command)}'\nNear Index {index}:\n{content.Substring(Math.Max(0, index - 15), Math.Min(index, 15))}");
            }
        }

        static bool ProcessCommand(string[] command)
        {
            if (command.Length == 1)
            {
                switch (command[0])
                {
                    case "ELSE":
                        // This is an ELSE.
                        return true;
                    case "IF":
                    case "ELIF":    // Requires at least 2
                    case "ELSEIF":  // Requires at least 2
                    case "ENDIF":   // Requires at least 1 command before it.
                        throw new Exception($"Malformed command statement. '{string.Join(" ", command)}'");
                    default:
                        throw new Exception($"Unknown command statement. '{string.Join(" ", command)}'");
                }
            }
            else if (command.Length > 1)
            {
                // Config PreProcessorTags
                if (PreProcessorTags.ContainsKey(command[1]))
                    return true;

                switch (command[1])
                {
                    case "NOT":
                        // Skip the "NOT" and parse the command without it and then flip the state.
                        int j = 0;
                        var newCommand = new string[command.Length - 1];
                        newCommand[0] = command[0];
                        for (int i = 2; i < command.Length; ++i)
                        {
                            newCommand[++j] = command[i];
                        }
                        return !ProcessCommand(newCommand);
                    case "BEFORE":
                        if (command.Length == 3)    // Example: "IF" "BEFORE" "WOD"
                        {
                            if (Framework.FIRST_EXPANSION_PHASE.TryGetValue(command[2], out int phase))
                            {
                                return Framework.CURRENT_RELEASE_PHASE < phase;
                            }
                            else
                            {
                                return Framework.CURRENT_RELEASE_VERSION < command[2].Split('.').ConvertVersion();
                            }
                        }
                        throw new Exception($"Malformed #IF BEFORE statement. '{string.Join(" ", command)}'");
                    case "AFTER":
                        if (command.Length == 3)    // Example: "IF" "AFTER" "WOD"
                        {
                            if (Framework.FIRST_EXPANSION_PHASE.TryGetValue(command[2], out int phase))
                            {
                                return Framework.CURRENT_RELEASE_PHASE >= phase;
                            }
                            else
                            {
                                return Framework.CURRENT_RELEASE_VERSION >= command[2].Split('.').ConvertVersion();
                            }
                        }
                        throw new Exception($"Malformed #IF AFTER statement. '{string.Join(" ", command)}'");

                    // These are flagged in the parser.config files. (PreProcessorTags returns true above the switch statement)
                    case "ANYCLASSIC":
                    case "CRIEVE":
                        return false;
                    default:
                        // If the command matches the name of a possible release phase, then return it.
                        if (Framework.FIRST_EXPANSION_PHASE.ContainsKey(command[1])) return Framework.CURRENT_RELEASE_PHASE_NAME == command[1];

                        // Potentially a more complicated pre-processed if statement?
                        if (command.Length == 4)     // "IF" "PHASE" ">" "5"
                        {
                            // TODO
                        }
                        return false;
                }
            }
            else throw new Exception($"Malformed #IF statement. '{string.Join(" ", command)}'");
        }

        static void ProcessImportCommand(string[] command, StringBuilder builder, string content, ref int index, int length)
        {
            string shortname = string.Join(" ", command.Skip(1));
            if (index > 0) builder.Append("\n");
            builder.Append("-- ").Append(shortname).AppendLine();

            // Are we already using the Retail DB?
            string filename = ".\\DATAS\\" + shortname;
            if (Directory.Exists(filename))
            {
                int fileCount = 0;
                var files = Directory.GetFiles(filename, "*.lua", SearchOption.AllDirectories).ToList();
                files.Sort(StringComparer.InvariantCulture);
                foreach (var file in files)
                {
                    if (fileCount > 0) builder.AppendLine();
                    builder.Append("-- ").Append(shortname).Append(file.Replace(filename, "")).AppendLine();
                    builder.Append("CurrentSubFileName = \"").Append(shortname.Replace("\\", "/").Replace("..//", "")).Append(file.Replace(filename, "").Replace("\\", "/")).AppendLine("\";");
                    builder.Append("(function()\n").Append(ProcessContent(File.ReadAllText(file, Encoding.UTF8))).Append("\nend)();");
                    ++fileCount;
                }
            }
            else if (File.Exists(filename))
            {
                builder.Append("CurrentSubFileName = \"").Append(shortname.Replace("\\", "/").Replace("..//", "")).AppendLine("\";");
                builder.Append("(function()\n").Append(ProcessContent(File.ReadAllText(filename, Encoding.UTF8))).Append("\nend)();");
            }
            else if (!(filename.EndsWith("\\") || filename.EndsWith("/")))
            {
                Console.WriteLine();
                Console.WriteLine("File doesn't exist:");
                Console.WriteLine(Path.GetFullPath(filename));
                Console.Write("You will need to clone the Retail version of AllTheThings in order to develop for this version of the addon.");
                Framework.WaitForUser();
            }
            // current subfile name is only relevant while the Lua is processing, once it's done remove it
            builder.AppendLine("CurrentSubFileName = nil;");
        }

        static bool ProcessInternalCommandBlock(string[] command, StringBuilder builder, string content, ref int index, int length)
        {
            // Parse the next command in the block
            int previousIndex = index;
            var ConditionalSatisfied = ProcessCommand(command);
            while (previousIndex < length && (index = content.IndexOf("-- #", previousIndex)) > -1)
            {
                // Write the portion of the statement prior to the next command to the buffer.
                if (ConditionalSatisfied) builder.Append(content.Substring(previousIndex, index - previousIndex).TrimEnd());

                // Move forward 4 characters and parse the command.
                index += 4;

                // Determine what the next command says.
                int newLineIndex = content.IndexOf('\n', index);
                if (newLineIndex < 0) newLineIndex = length;
                command = content.Substring(index, newLineIndex - index).Trim().ToUpper().Split(' ');
                index = newLineIndex;

                switch (command[0])
                {
                    case "IF":
                        // This is a nested IF. It is the start of a new internal command block.
                        ProcessInternalCommandBlock(command, ConditionalSatisfied ? builder : new StringBuilder(), content, ref index, length);
                        previousIndex = index;
                        break;
                    case "ELSE":
                    case "ELIF":
                    case "ELSEIF":
                        // This is an ELSE/IF.
                        if (ProcessInternalCommandBlock(command, !ConditionalSatisfied ? builder : new StringBuilder(), content, ref index, length)) return true;
                        previousIndex = index;
                        break;
                    default:
                        // Break the loop.
                        return true;
                }
            }

            // Reset the index to the previous index.
            index = previousIndex;
            return false;
        }

        private static void LuaPrintAsTrace(params object[] args)
        {
            // treat this as an ERROR log if the first arg starts with "ERROR"
            if (args.SafeIndex(0)?.ToString()?.StartsWith("ERROR") ?? false)
            {
                LuaErrorAsTrace(args);
            }
            else
            {
                Framework.Log(string.Join(" ", args));
            }
        }

        private static void LuaErrorAsTrace(params object[] args)
        {
            Framework.LogError(string.Join(" ", args));
        }

        private static void ParseJSONFile(string fileName)
        {
            // Load the text and then convert it to a common JSON data format.
            var data = Framework.ToDictionary(File.ReadAllText(fileName, Encoding.UTF8));
            if (data == null)
            {
                Trace.WriteLine(fileName + ": Invalid format!");
                Errored = true;
            }
            else
            {
                //Trace.WriteLine(fileName + ": Complete");

                // Attempt to merge the data into the Database.
                Framework.Merge(data);
            }
        }

        private static void ParseLUAFile(NLua.Lua lua, string fileName)
        {
            // copy the base LUA state for use on this file due to shared access issues
            //Lua lua = new Lua(mainLua.State);
            Framework.LogDebug("Parsing: " + fileName);
            Framework.CurrentFileName = fileName;
            string content = string.Empty;
            do
            {
                try
                {
                    //Trace.WriteLine("Parsing:" + fileName);
                    lua.DoString($"AllTheThings = {{}};_ = AllTheThings;CurrentFileName = [[{fileName.Replace("\\", "/")}]];CurrentSubFileName = nil;");
                    lua.DoString(content = ProcessContent(File.ReadAllText(fileName, Encoding.UTF8)));
                    Framework.Merge(lua.GetTable("AllTheThings"));
                    break;
                }
                // Invalid data are thrown on purpose when ATT-specific formatting issues are encountered in LUA files
                catch (InvalidDataException e)
                {
                    Framework.LogException(e);
                    File.WriteAllText("./ATT-ERROR-FILE.txt", content, Encoding.UTF8);
                    Framework.WaitForUser();
                }
                catch (NLua.Exceptions.LuaScriptException e)
                {
                    Framework.LogException(e);
                    if (e.Data != null)
                    {
                        foreach (var key in e.Data.Keys)
                        {
                            Trace.Write(key);
                            Trace.Write(": ");
                            Trace.WriteLine(e.Data[key]);
                        }
                    }
                    var line = GetLineNumber(e);
                    if (line > -1)
                    {
                        var lines = content.Split(new char[] { '\n', '\r' });
                        for (int i = Math.Max(0, line - 2), count = 0; count < 4 && i < lines.Length; ++count)
                        {
                            Trace.Write(i);
                            Trace.Write(":");
                            if (i == line) Trace.Write(">");
                            Trace.WriteLine(lines[i]);
                            ++i;
                        }
                    }
                    else Trace.WriteLine(e);


                    File.WriteAllText("./ATT-ERROR-FILE.txt", content, Encoding.UTF8);
                    Trace.WriteLine("Press Enter once you have resolved the issue.");
                    Framework.WaitForUser();
                }
                catch (Exception e)
                {
                    Framework.LogException(e);
                    var line = GetLineNumber(e);
                    if (line > -1)
                    {
                        var lines = content.Split(new char[] { '\n', '\r' });
                        for (int i = Math.Max(0, line - 2), count = 0; count < 4 && i < lines.Length; ++count)
                        {
                            Trace.Write(i);
                            Trace.Write(":");
                            if (i == line) Trace.Write(">");
                            Trace.WriteLine(lines[i]);
                            ++i;
                        }
                    }
                    else Trace.WriteLine(e);
                    Trace.WriteLine("Press Enter once you have resolved the issue.");
                    Framework.WaitForUser();
                }
            }
            while (!Framework.Automated);
            Framework.CurrentFileName = null;
        }
    }
}
