using System;
using System.Collections.Generic;
using System.IO;
using System.Text;

namespace ATT
{
    class Program
    {
        static readonly char[] PRE_CONSTRUCTOR_BREAKS = new char[] { '\n', ' ', '(', '{', '\t' };

        static int Main(string[] args)
        {
            try
            {
                // Gather a list of files linked to the program
                var allFiles = new List<string>();
                if (args != null && args.Length > 0)
                {
                    foreach (var path in args)
                    {
                        FileAttributes attr = File.GetAttributes(path);
                        if (attr.HasFlag(FileAttributes.Directory))
                        {
                            allFiles.AddRange(Directory.GetFiles(path, "*.lua", SearchOption.AllDirectories));
                        }
                        else if (File.Exists(path)) allFiles.Add(path);
                    }
                }
                else
                {
                    // We want to parse the whole Parser folder.
                    allFiles.AddRange(Directory.GetFiles("../Parser/", "*.lua", SearchOption.AllDirectories));
                }

                // Step 1: Clean the files before processing them.
                foreach (var filename in allFiles) CleanFile(filename);

                // Step 2: Process the Files
                foreach (var filename in allFiles) ProcessFile(filename);
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.ToString());
                return -1;
            }

            // Step 3: Report Success
            Console.WriteLine("JOBS DONE!");
            return 0;
        }

        class PriorityField
        {
            public int Depth { get; set; } = 0;
            public int Priority { get; set; } = int.MaxValue - 1;
            public string[] Lines { get; set; }
        }

        class Provider
        {
            public string Type { get; set; }
            public string ID { get; set; }
            public string Name { get; set; } = string.Empty;

            public string LineFormat
            {
                get
                {
                    string data = $"{ID},";
                    if (!string.IsNullOrEmpty(Name)) data += $"\t-- {Name}";
                    return data;
                }
            }
        }

        /// <summary>
        /// Returns the total number of tab characters before the beginning of the statement.
        /// </summary>
        /// <param name="line">The line.</param>
        /// <returns>The total number of tab characters.</returns>
        static int CalculateDepth(string line)
        {
            int depth = 0;
            for(; depth < line.Length;++depth)
            {
                if (line[depth] != '\t')
                {
                    // Check to see if its a dumb pre-indented comment, if so, add 1 to depth.
                    if (line.Substring(depth).StartsWith("--")) return depth + 1;
                    return depth;
                }
            }
            return 0;
        }

        static int CheckForMultilinedData(string[] lines, string line, int lineIndex, PriorityField property, string nestedType)
        {
            // Check for a comma at the end of the line. (this will account for 99% of entries)
            string trimmedLine = line.Trim();
            if (trimmedLine.EndsWith(",")) return lineIndex;
            int commentIndex = trimmedLine.LastIndexOf("--");
            if (commentIndex >= 0)
            {
                // Account for Comments being attached to the end of the data field.
                trimmedLine = trimmedLine.Substring(0, commentIndex).Trim();
                if (trimmedLine.EndsWith(",")) return lineIndex;
            }

            // Oh boy, we have a nasty lookin' multiline preprocessor section more than likely...
            string nextLine = lines[++lineIndex].Trim().ToLower();
            if (nextLine.StartsWith("-- #if"))
            {
                var originalPriority = property.Priority;
                lineIndex = ProcessPreprocessor(lines, lineIndex, property, nestedType);
                var list = new List<string>(property.Lines);
                list.Insert(0, line);
                property.Priority = originalPriority;
                property.Lines = list.ToArray();
            }
            else
            {
                var errorBuilder = new StringBuilder();
                errorBuilder.AppendLine("UNHANDLED MULTILINE DATA:");
                errorBuilder.AppendLine(lines[lineIndex]);
                throw new InvalidOperationException(errorBuilder.ToString());
            }
            return lineIndex;
        }

        static int FindEndLineIndex(string[] lines, int startIndex, int depth)
        {
            // Find the end of the property
            int endIndex = startIndex + 1;
            while (endIndex < lines.Length)
            {
                string line = lines[endIndex];
                int endDepth = CalculateDepth(lines[endIndex]);
                if (endDepth == depth) break;
                else if (endDepth > 0 && endDepth < depth && !string.IsNullOrWhiteSpace(line) && !line.TrimStart().StartsWith("--"))
                {
                    var errorBuilder = new StringBuilder();
                    errorBuilder.AppendLine($"Malformed syntax, quest at line {startIndex} does not have an ender at the same depth {depth} vs {endDepth}");
                    for (int i = startIndex; i < endIndex; ++i)
                    {
                        errorBuilder.AppendLine(lines[i]);
                    }
                    throw new InvalidOperationException(errorBuilder.ToString());
                }
                ++endIndex;
            }
            return endIndex;
        }

        static int FindEndLineIndexForBulkComment(string[] lines, int lineIndex)
        {
            // Find the end of the bulk comment
            int endIndex = lineIndex + 1;
            string line = lines[lineIndex].TrimStart();
            if (line.StartsWith("--[["))
            {
                while (endIndex < lines.Length)
                {
                    // Check for a bulk comment ender that will terminate the current preprocessor.
                    line = lines[endIndex].TrimStart().ToLower();
                    if (line.StartsWith("]]") || line.StartsWith("--]]")) return endIndex;
                    else if (line.StartsWith("-- #if "))
                    {
                        // Uh oh, a nested preprocessor. Let's escape that as well.
                        endIndex = FindEndLineIndexForPreprocessor(lines, endIndex);
                    }
                    ++endIndex;
                }
            }
            else
            {
                while (endIndex < lines.Length)
                {
                    // Check for a bulk comment ender that will terminate the current preprocessor.
                    line = lines[endIndex].TrimStart().ToLower();
                    if (line.StartsWith("--"))
                    {
                        if (line.StartsWith("-- #if "))
                        {
                            // Uh oh, a nested preprocessor. Let's escape that as well.
                            endIndex = FindEndLineIndexForPreprocessor(lines, endIndex);
                        }
                        ++endIndex;
                    }
                    else return endIndex - 1;
                }
            }
            return endIndex;
        }

        static int FindEndLineIndexForPreprocessor(string[] lines, int lineIndex)
        {
            // Find the end of the pre-processor
            int endIndex = lineIndex + 1;
            while (endIndex < lines.Length)
            {
                string line = lines[endIndex].TrimStart().ToLower();
                if (line.StartsWith("-- #"))
                {
                    // Check for an endif that will terminate the current preprocessor.
                    if (line.StartsWith("-- #endif")) return endIndex;
                    if (line.StartsWith("-- #if "))
                    {
                        // Uh oh, a nested preprocessor. Let's escape that as well.
                        endIndex = FindEndLineIndexForPreprocessor(lines, endIndex);
                    }
                    else if(line.StartsWith("-- #else"))
                    {
                        // For else statements, it uses the same endIndex as the parent if-statement
                        endIndex = FindEndLineIndexForPreprocessor(lines, endIndex);
                        continue;
                    }
                }
                ++endIndex;
            }
            return endIndex;
        }

        static bool HasOpenBracket(string line, int startingIndex)
        {
            int openBrackets = 0;
            int closedBrackets = 0;
            for (int index = startingIndex; index < line.Length; ++index)
            {
                switch (line[index])
                {
                    case '{': ++openBrackets; break;
                    case '}': ++closedBrackets; break;
                    default: break;
                }
            }
            return openBrackets > closedBrackets || line.Substring(startingIndex).Trim().StartsWith("[[");
        }

        static bool NestedWithinComment = false;

        static int ProcessBulkComment(string[] lines, int lineIndex, PriorityField property, string nestedType)
        {
            // Find the end of the bulk comment
            int endIndex = FindEndLineIndexForBulkComment(lines, lineIndex);

            // Build a new lines container only containing the group content
            var content = new List<string>();
            for (int i = lineIndex; i <= endIndex; ++i) content.Add(lines[i]);
            property.Lines = content.ToArray();

            // Remove the comment prefix if there is one if the first comment has a field in it
            if (content.Count > 0)
            {
                string firstLine = content[0];
                if (firstLine.IndexOf("--[[") >= 0)
                {
                    // Multiline Block Comments
                    // Protect against comments that are simply comments
                    if (!NestedWithinComment)
                    {
                        NestedWithinComment = true;

                        // Preprocessors use the priority of their highest nested property, if they have any
                        var properties = ProcessPropertiesForLines(content.ToArray(), 1, content.Count - 2, nestedType);
                        if (properties.Count > 0)
                        {
                            property.Priority = properties[0].Priority;
                        }

                        NestedWithinComment = false;
                    }
                }
                else
                {
                    int offset = firstLine.IndexOf("--");
                    if (offset >= 0)
                    {
                        // Remove the comment prefix if there is one.
                        offset += 2;
                        while (offset < firstLine.Length && firstLine[offset] == ' ') ++offset;
                        for (int i = 0; i < content.Count; ++i)
                        {
                            content[i] = content[i].Substring(offset);
                        }

                        // Protect against comments that are simply comments
                        if (!NestedWithinComment)
                        {
                            NestedWithinComment = true;
                            /*
                            Console.WriteLine("COMMENT CONTENT:");
                            foreach(var l in content)
                            {
                                Console.WriteLine(l);
                            }
                            Console.ReadLine();
                            */

                            // Preprocessors use the priority of their highest nested property, if they have any
                            var properties = ProcessPropertiesForLines(content.ToArray(), 0, content.Count, nestedType);
                            if (properties.Count > 0)
                            {
                                property.Priority = properties[0].Priority;
                            }

                            NestedWithinComment = false;
                        }
                    }
                }
            }

            /*
            Console.WriteLine($"FOUND BULK COMMENT: {property.Priority} Priority ({properties.Count} Properties)");
            foreach (var prop in properties)
            {
                Console.WriteLine($" {prop.Priority}");
                foreach (var l in prop.Lines)
                {
                    Console.WriteLine($"  {l}");
                }
            }
            for (int i = lineIndex; i <= endIndex; ++i)
            {
                Console.WriteLine(lines[i]);
            }
            Console.ReadLine();
            Console.WriteLine("LINES:");
            foreach(var l in property.Lines)
            {
                Console.WriteLine(l);
            }
            Console.ReadLine();
            */
            return endIndex;
        }

        static int ProcessBrackets(string[] lines, int lineIndex, PriorityField property)
        {
            int brackets = 0;
            int startingIndex = lineIndex;
            while (lineIndex < lines.Length)
            {
                string line = lines[lineIndex];
                int currentDepth = CalculateDepth(line);
                if (currentDepth == property.Depth)
                {
                    for (int index = 0; index < line.Length; ++index)
                    {
                        switch (line[index])
                        {
                            case '(':
                            case '{':
                            case '[':
                                ++brackets;
                                break;
                            case ')':
                            case '}':
                            case ']':
                                --brackets;
                                break;
                            case '-':
                                if (index > 0 && line[index - 1] == '-' && index < line.Length - 1 && line[index + 1] != '[') index = line.Length;
                                break;
                            default: break;
                        }
                    }
                    if (brackets == 0)
                    {
                        if (startingIndex == lineIndex) return lineIndex;
                        break;
                    }
                    else
                    {
                        ++lineIndex;
                    }
                }
                else
                {
                    ++lineIndex;
                }
            }

            // We have a multiline situation here... ugh.
            // Find the end of the declaration
            int endIndex = lineIndex;// FindEndLineIndex(lines, startingIndex, property.Depth);
            if (!lines[endIndex].Trim().StartsWith("}"))
            {
                var errorBuilder = new StringBuilder();
                errorBuilder.AppendLine("MALFORMED BRACKETS");
                for (int i = startingIndex; i <= endIndex; ++i)
                {
                    errorBuilder.AppendLine(lines[i]);
                }
                throw new InvalidOperationException(errorBuilder.ToString());
            }

            // Build a new lines container only containing the group content
            var content = new List<string>();
            for (int i = startingIndex; i < endIndex; ++i) content.Add(lines[i]);
            property.Lines = new string[] {
                //lines[startingIndex],
                ProcessLines(content.ToArray()).TrimEnd(),
                lines[endIndex]
            };
            return endIndex;
        }

        static int ProcessField(string[] lines, string line, int lineIndex, int offset, PriorityField property, string nestedType)
        {
            string field = line.Substring(0, offset).Trim();
            switch (field)
            {
                // AQD/HQD
                case "[\"aqd\"]":
                case "[\"allianceQuestData\"]":
                case "[\"hqd\"]":
                case "[\"hordeQuestData\"]":
                    {
                        property.Priority = -1000;
                        lineIndex = ProcessBrackets(lines, lineIndex, property);
                        break;
                    }

                // Quest ID
                case "[\"questID\"]":
                    {
                        property.Priority = -500;
                        break;
                    }

                // Name
                case "[\"name\"]":
                    {
                        property.Priority = -499;
                        if (line.Contains("{")) lineIndex = ProcessBrackets(lines, lineIndex, property);
                        else lineIndex = CheckForMultilinedData(lines, line, lineIndex, property, nestedType);
                        break;
                    }

                // Followed by Description
                case "[\"description\"]":
                    {
                        property.Priority = -498;
                        lineIndex = ProcessLuaString(lines, line, lineIndex, property, nestedType);
                        break;
                    }

                // Followed by Icon
                case "[\"icon\"]":
                    {
                        property.Priority = -497;
                        lineIndex = CheckForMultilinedData(lines, line, lineIndex, property, nestedType);
                        break;
                    }

                // Followed by Source Achievements
                case "[\"sourceAchievement\"]":
                case "[\"sourceAchievements\"]":
                    {
                        property.Priority = -450;
                        lineIndex = ProcessBrackets(lines, lineIndex, property);
                        break;
                    }

                // Followed by Source Quests
                case "[\"sourceQuest\"]":
                case "[\"sourceQuests\"]":
                    {
                        property.Priority = -449;
                        lineIndex = ProcessBrackets(lines, lineIndex, property);
                        break;
                    }
                case "[\"sourceQuestNumRequired\"]":
                    {
                        property.Priority = -448;
                        break;
                    }

                // Followed by Alt Achievements
                case "[\"altAchievement\"]":
                case "[\"altAchievements\"]":
                    {
                        property.Priority = -440;
                        lineIndex = ProcessBrackets(lines, lineIndex, property);
                        break;
                    }

                // Followed by Alt Quests
                case "[\"altQuest\"]":
                case "[\"altQuests\"]":
                    {
                        property.Priority = -438;
                        lineIndex = ProcessBrackets(lines, lineIndex, property);
                        break;
                    }

                // Quest Givers
                case "[\"qg\"]":
                case "[\"qgs\"]":
                    {
                        property.Priority = 1;
                        lineIndex = ProcessBrackets(lines, lineIndex, property);
                        break;
                    }
                case "[\"provider\"]":
                    {
                        property.Priority = 1;
                        // If we want to convert provider to qg, uncomment this. (Undecided right now)
                        /*
                        var provider = ProcessProvider(line, line.IndexOf('='));
                        if (provider != null)
                        {
                            //Console.WriteLine($"FOUND PROVIDER: {provider.Type}, {provider.LineFormat}");
                            if (provider.Type == "n")
                            {
                                // Only convert NPC providers at this time.
                                property.Lines = new string[] { $"{line.Substring(0, line.IndexOf('['))}[\"qg\"] = {provider.LineFormat}" };
                            }
                        }
                        */
                        break;
                    }
                case "[\"providers\"]":
                    {
                        property.Priority = 1;
                        lineIndex = ProcessProviders(lines, lineIndex, property, nestedType);
                        break;
                    }

                // Followed by Coordinates
                case "[\"coord\"]":
                case "[\"coords\"]":
                    {
                        property.Priority = 10;
                        lineIndex = ProcessBrackets(lines, lineIndex, property);
                        break;
                    }

                // Followed by Reputation
                case "[\"minReputation\"]":
                    {
                        property.Priority = 15;
                        lineIndex = ProcessBrackets(lines, lineIndex, property);
                        break;
                    }
                case "[\"maxReputation\"]":
                    {
                        property.Priority = 16;
                        lineIndex = ProcessBrackets(lines, lineIndex, property);
                        break;
                    }

                // Followed by Timeline
                case "[\"timeline\"]":
                    {
                        property.Priority = 18;
                        lineIndex = ProcessBrackets(lines, lineIndex, property);
                        break;
                    }
                case "[\"_forcetimeline\"]":
                    {
                        property.Priority = 19;
                        break;
                    }

                // Followed by Maps
                case "[\"maps\"]":
                    {
                        property.Priority = 20;
                        lineIndex = ProcessBrackets(lines, lineIndex, property);
                        break;
                    }

                // Followed by Cost
                case "[\"cost\"]":
                    {
                        property.Priority = 22;
                        lineIndex = ProcessBrackets(lines, lineIndex, property);
                        break;
                    }

                // Followed by Item Appearance Modifier ID
                case "[\"ItemAppearanceModifierID\"]":
                    {
                        property.Priority = 23;
                        break;
                    }

                // Followed by Require Skill / Level At
                case "[\"requireSkill\"]":
                    {
                        property.Priority = 25;
                        lineIndex = CheckForMultilinedData(lines, line, lineIndex, property, nestedType);
                        break;
                    }
                case "[\"learnedAt\"]":
                    {
                        property.Priority = 26;
                        break;
                    }

                // Followed by Classes/Races
                case "[\"classes\"]":
                    {
                        property.Priority = 30;
                        lineIndex = ProcessBrackets(lines, lineIndex, property);
                        break;
                    }
                case "[\"races\"]":
                    {
                        property.Priority = 30;
                        lineIndex = ProcessBrackets(lines, lineIndex, property);
                        break;
                    }

                // Followed by Lock Criteria
                case "[\"lockCriteria\"]":
                    {
                        property.Priority = 40;
                        lineIndex = ProcessBrackets(lines, lineIndex, property);
                        break;
                    }

                // Followed by Model data
                case "[\"modelScale\"]":
                    {
                        property.Priority = 42;
                        break;
                    }

                // Followed by Conditionals
                case "[\"collectible\"]":
                    {
                        property.Priority = 44;
                        break;
                    }
                case "[\"customCollect\"]":
                    {
                        property.Priority = 45;
                        lineIndex = ProcessBrackets(lines, lineIndex, property);
                        break;
                    }
                case "[\"isBreadcrumb\"]":
                    {
                        property.Priority = 46;
                        break;
                    }
                case "[\"isRaid\"]":
                    {
                        property.Priority = 51;
                        break;
                    }
                case "[\"isWorldQuest\"]":
                    {
                        property.Priority = 51;
                        break;
                    }
                case "[\"repeatable\"]":
                case "[\"isRepeatable\"]":
                    {
                        property.Priority = 52;
                        break;
                    }
                case "[\"isBounty\"]":
                    {
                        property.Priority = 53;
                        break;
                    }
                case "[\"isYearly\"]":
                    {
                        property.Priority = 54;
                        break;
                    }
                case "[\"isMonthly\"]":
                    {
                        property.Priority = 55;
                        break;
                    }
                case "[\"isWeekly\"]":
                    {
                        property.Priority = 56;
                        break;
                    }
                case "[\"isDaily\"]":
                    {
                        property.Priority = 57;
                        break;
                    }

                // Followed by Creatures
                case "[\"cr\"]":
                    {
                        property.Priority = 80;
                        break;
                    }
                case "[\"crs\"]":
                    {
                        property.Priority = 80;
                        lineIndex = ProcessBrackets(lines, lineIndex, property);
                        break;
                    }

                // Followed by Access Conditionals
                case "[\"DisablePartySync\"]":
                    {
                        property.Priority = 99;
                        break;
                    }
                case "[\"pb\"]":
                    {
                        property.Priority = 100;
                        break;
                    }
                case "[\"pvp\"]":
                    {
                        property.Priority = 101;
                        break;
                    }
                case "[\"phase\"]":
                case "[\"u\"]":
                    {
                        property.Priority = 102;
                        break;
                    }

                // Followed by Level
                case "[\"lvl\"]":
                    {
                        property.Priority = 1000;
                        break;
                    }

                // Followed by filterID
                case "[\"filterID\"]":
                case "[\"f\"]":
                    {
                        property.Priority = 1500;
                        break;
                    }

                // Followed by modID
                case "[\"modID\"]":
                    {
                        property.Priority = 1600;
                        break;
                    }

                // Followed by ignoreBonus
                case "[\"ignoreBonus\"]":
                    {
                        property.Priority = 1700;
                        break;
                    }

                // Followed by _drop
                case "[\"_drop\"]":
                    {
                        property.Priority = 2000;
                        lineIndex = ProcessBrackets(lines, lineIndex, property);
                        break;
                    }

                // Followed by Functions
                case "[\"OnClick\"]":
                case "[\"OnInit\"]":
                case "[\"OnUpdate\"]":
                case "[\"OnTooltip\"]":
                    {
                        property.Priority = 3000;
                        lineIndex = ProcessFunction(lines, lineIndex, property);
                        break;
                    }

                // Followed by Symlinks
                case "[\"sym\"]":
                    {
                        property.Priority = 4000;
                        lineIndex = ProcessBrackets(lines, lineIndex, property);
                        break;
                    }

                // Followed by Shared Description
                case "[\"sharedDescription\"]":
                    {
                        property.Priority = 5000;
                        lineIndex = ProcessLuaString(lines, line, lineIndex, property, nestedType);
                        break;
                    }

                // Followed by Groups
                case "[\"groups\"]":
                case "[\"g\"]":
                    {
                        property.Priority = int.MaxValue;  // DEAD LAST
                        lineIndex = ProcessBrackets(lines, lineIndex, property);
                        //lineIndex = ProcessGroups(lines, lineIndex, property);
                        break;
                    }

                default:
                    if (field.StartsWith("--"))
                    {
                        // Commented fields should use the field's base priority
                        var commentedProperty = new PriorityField() { Depth = property.Depth };
                        var uncommentedLine = line.Substring(line.IndexOf("--") + 2);
                        ProcessField(lines, uncommentedLine, lineIndex, uncommentedLine.IndexOf('='), commentedProperty, nestedType);
                        property.Priority = commentedProperty.Priority;
                    }
                    else if (field.StartsWith("["))
                    {
                        Console.WriteLine("UNPRIORITIZED PROPERTY");
                        Console.WriteLine(field);
                        Console.WriteLine(line.Substring(offset + 1).Trim());
                        Console.ReadLine();
                    }
                    break;
            }
            return lineIndex;
        }

        static int ProcessFunction(string[] lines, int lineIndex, PriorityField property)
        {
            string line = lines[lineIndex];
            string trimmedLine = line.Substring(line.IndexOf('=') + 1).Trim();
            if (!trimmedLine.StartsWith("[[") || trimmedLine.EndsWith("]],")) return lineIndex;

            // We have a multiline situation here... ugh.
            // Find the end of the declaration
            var startIndex = lineIndex + 1;
            int endIndex = FindEndLineIndex(lines, startIndex, property.Depth);
            if (!lines[endIndex].Trim().EndsWith("]],"))
            {
                var errorBuilder = new StringBuilder();
                errorBuilder.AppendLine("MALFORMED FUNCTION");
                for (int i = startIndex; i <= endIndex; ++i)
                {
                    errorBuilder.AppendLine(lines[i]);
                }
                throw new InvalidOperationException(errorBuilder.ToString());
            }

            // Build a new lines container only containing the group content
            var content = new List<string>();
            for (int i = startIndex; i < endIndex; ++i) content.Add(lines[i]);
            property.Lines = new string[] {
                line,
                ProcessLines(content.ToArray()).TrimEnd(),
                lines[endIndex]
            };
            return endIndex;
        }

        static int ProcessLuaString(string[] lines, string line, int lineIndex, PriorityField property, string nestedType)
        {
            int equalsIndex = line.IndexOf('=');
            if (equalsIndex >= 0)
            {
                // Check for a multiline string (a string encased in [[STRING DATA]])
                string trimmedLine = line.Substring(equalsIndex + 1).Trim();
                if (trimmedLine.StartsWith("[["))
                {
                    // This is a multiline string. Let's find the end of it...
                    for (int endIndex = lineIndex; endIndex < lines.Length; ++endIndex)
                    {
                        if (lines[endIndex].Contains("]],"))
                        {
                            // Build a new lines container only containing the group content
                            var content = new List<string>();
                            for (int i = lineIndex; i <= endIndex; ++i)
                            {
                                content.Add(lines[i]);
                            }
                            property.Lines = content.ToArray();
                            return endIndex;
                        }
                    }
                }
            }
            return CheckForMultilinedData(lines, line, lineIndex, property, nestedType);
        }

        static string ProcessLines(string[] lines)
        {
            var builder = new StringBuilder();
            for (int lineIndex = 0; lineIndex < lines.Length; ++lineIndex)
            {
                string line = lines[lineIndex];
                int questContructorIndex = line.IndexOf("q(");
                if (questContructorIndex >= 0 && HasOpenBracket(line, questContructorIndex)) lineIndex = ProcessObjectType(builder, lines, lineIndex, CalculateDepth(line));
                else builder.AppendLine(line);
            }
            return builder.ToString();
        }

        static int ProcessPreprocessor(string[] lines, int lineIndex, PriorityField property, string nestedType)
        {
            // Find the end of the pre-processor
            int endIndex = FindEndLineIndexForPreprocessor(lines, lineIndex);

            // Build a new lines container only containing the group content
            var content = new List<string>();
            for (int i = lineIndex; i <= endIndex; ++i) content.Add(lines[i]);
            property.Lines = content.ToArray();

            // Preprocessors use the priority of their highest nested property, if they have any
            var properties = ProcessPropertiesForLines(lines, lineIndex + 1, endIndex, nestedType);
            if (properties.Count > 0)
            {
                property.Priority = properties[0].Priority;
            }
            /*
            Console.WriteLine($"FOUND PREPROCESSOR: {property.Priority} Priority ({properties.Count} Properties)");
            foreach (var prop in properties)
            {
                Console.WriteLine($" {prop.Priority}");
                foreach (var l in prop.Lines)
                {
                    Console.WriteLine($"  {l}");
                }
            }
            for (int i = lineIndex; i <= endIndex; ++i)
            {
                Console.WriteLine(lines[i]);
            }
            Console.ReadLine();
            */
            return endIndex;
        }

        static Provider ProcessProvider(string line, int equalsIndex)
        {
            int openIndex = line.IndexOf('{', equalsIndex);
            if (openIndex >= 0)
            {
                ++openIndex;
                int closeIndex = line.IndexOf('}', openIndex);
                if (closeIndex > openIndex)
                {
                    --closeIndex;
                    var split = line.Substring(openIndex, closeIndex - openIndex).Split(',');
                    if (split.Length > 1)
                    {
                        var provider = new Provider()
                        {
                            Type = split[0].Trim().ToLower(),
                            ID = split[1].Trim(),
                        };
                        if (provider.Type.StartsWith("\"")) provider.Type = provider.Type.Substring(1, provider.Type.Length - 2);

                        int commentIndex = line.IndexOf("--", closeIndex);
                        if (commentIndex >= 0) provider.Name = line.Substring(commentIndex + 2).Trim();
                        return provider;
                    }
                }
            }
            return null;
        }

        static int ProcessProviders(string[] lines, int lineIndex, PriorityField property, string nestedType)
        {
            // Find the end of the declaration
            var startIndex = lineIndex + 1;
            int endIndex = FindEndLineIndex(lines, startIndex, property.Depth);
            if (!lines[endIndex].Trim().StartsWith("}"))
            {
                Console.WriteLine("MALFORMED PROVIDERS");
                for (int i = startIndex; i <= endIndex; ++i)
                {
                    Console.WriteLine(lines[i]);
                }
                Console.ReadLine();
            }

            // Determine if all of the providers are npcs, if so, convert to qgs
            var providers = new List<Provider>();
            bool success = true;
            for (int i = startIndex; i < endIndex;++i)
            {
                string line = lines[i];
                int openBracketIndex = line.IndexOf('{');
                if (openBracketIndex < 0)
                {
                    success = false;
                    break;
                }
                var provider = ProcessProvider(line, openBracketIndex - 1);
                if (provider == null || provider.Type != "n")
                {
                    success = false;
                    break;
                }
                providers.Add(provider);
            }

            if (success && nestedType == "q")
            {
                // Cool. We're dealing with Quest Givers, let's clean this up.
                string firstLine = lines[lineIndex];
                string indent = firstLine.Substring(0, firstLine.IndexOf('['));
                var builder = new StringBuilder($"{indent}[\"qgs\"] = {{").AppendLine();
                foreach(var provider in providers)
                {
                    builder.Append(indent).Append('\t').AppendLine(provider.LineFormat);
                }
                property.Lines = new string[] { builder.Append(indent).Append("},").ToString() };
            }
            else
            {
                // Not cool. Mixed type, let's keep it as is.
                var includedLines = new List<string>();
                for (int i = lineIndex; i <= endIndex; ++i)
                {
                    includedLines.Add(lines[i]);
                }
                property.Lines = includedLines.ToArray();
            }
            return endIndex;
        }

        static int ProcessObjectType(StringBuilder builder, string[] lines, int lineIndex, int depth, string nestedType = "q")
        {
            // Find the end of the quest declaration
            var startIndex = lineIndex + 1;
            int endIndex = FindEndLineIndex(lines, startIndex, depth);
            /*
            for (int i = startIndex - 1; i <= endIndex; ++i)
            {
                Console.WriteLine(lines[i]);
            }
            */

            // Append the quest data to the builder
            builder.AppendLine(lines[lineIndex]);
            builder.Append(ProcessProperties(lines, startIndex, endIndex, nestedType));
            builder.AppendLine(lines[endIndex]);
            return endIndex;
        }

        static string ProcessProperties(string[] lines, int startIndex, int endIndex, string nestedType)
        {
            var properties = ProcessPropertiesForLines(lines, startIndex, endIndex, nestedType);
            var subBuilder = new StringBuilder();
            foreach (var property in properties)
            {
                var propertyLines = property.Lines;
                if (propertyLines == null || propertyLines.Length == 0)
                {
                    Console.WriteLine("A NULL PROPERTY FIELD?!");
                    Console.ReadLine();
                    continue;
                }
                if (propertyLines.Length == 1)
                {
                    string line = propertyLines[0];
                    if (string.IsNullOrWhiteSpace(line)) continue;
                    subBuilder.AppendLine(line);
                }
                else
                {
                    for (var i = 0; i < propertyLines.Length; ++i)
                    {
                        subBuilder.AppendLine(propertyLines[i]);
                    }
                }
            }
            /*
            Console.WriteLine("UPDATED FORMAT:");
            Console.WriteLine(lines[startIndex - 1]);
            Console.Write(subBuilder.ToString());
            Console.WriteLine(lines[endIndex]);
            //Console.ReadLine();
            */
            /*
            if (subBuilder.ToString().Contains("-- [\"provider"))
            {
                int count = 0;
                foreach (var property in properties)
                {
                    Console.Write(++count);
                    Console.WriteLine(": ");
                    var propertyLines = property.Lines;
                    if (propertyLines == null || propertyLines.Length == 0)
                    {
                        Console.WriteLine("A NULL PROPERTY FIELD?!");
                        Console.ReadLine();
                        continue;
                    }
                    if (propertyLines.Length == 1)
                    {
                        string line = propertyLines[0];
                        if (string.IsNullOrWhiteSpace(line)) continue;
                        Console.Write(" ONE LINE: ");
                        Console.WriteLine(line);
                    }
                    else
                    {
                        for (var i = 0; i < propertyLines.Length; ++i)
                        {
                            Console.Write($"  LINE {i}: ");
                            Console.WriteLine(propertyLines[i]);
                        }
                    }
                }
                Console.ReadLine();
            }
            */
            return subBuilder.ToString();
        }

        static List<PriorityField> ProcessPropertiesForLines(string[] lines, int startIndex, int endIndex, string nestedType)
        {
            var properties = new List<PriorityField>();
            for (int lineIndex = startIndex; lineIndex < endIndex; ++lineIndex)
            {
                string line = lines[lineIndex];

                // Create a priority field property and assign lines to the structure. (a line can contain multiple, this is just a semantic)
                var property = new PriorityField() { Depth = CalculateDepth(line) };
                properties.Add(property);

                // Check for Preprocessors & Bulk Comments
                var trimmedLine = line.Trim();
                if (trimmedLine.StartsWith("--"))
                {
                    if (trimmedLine.StartsWith("-- #"))
                    {
                        trimmedLine = trimmedLine.ToLower();
                        if (trimmedLine.StartsWith("-- #if")) lineIndex = ProcessPreprocessor(lines, lineIndex, property, nestedType);
                    }
                    else lineIndex = ProcessBulkComment(lines, lineIndex, property, nestedType);
                }
                else
                {
                    int equalsIndex = line.IndexOf('=');
                    if (equalsIndex > 0)
                    {
                        lineIndex = ProcessField(lines, line, lineIndex, equalsIndex, property, nestedType);
                    }
                    else if (trimmedLine.StartsWith("ach("))
                    {
                        // There's an achievement nested directly in the quest... Why!
                        int questContructorIndex = line.IndexOf("ach(");
                        if (questContructorIndex >= 0 && HasOpenBracket(line, questContructorIndex))
                        {
                            var builder = new StringBuilder();
                            lineIndex = ProcessObjectType(builder, lines, lineIndex, CalculateDepth(line), "ach");
                            property.Lines = new string[] { builder.ToString().TrimEnd() };
                        }
                        property.Priority = 4000 + properties.Count;
                    }
                    else if (trimmedLine.StartsWith("crit("))
                    {
                        // There's a criteria nested directly in the quest... Why!
                        int questContructorIndex = line.IndexOf("crit(");
                        if (questContructorIndex >= 0 && HasOpenBracket(line, questContructorIndex))
                        {
                            var builder = new StringBuilder();
                            lineIndex = ProcessObjectType(builder, lines, lineIndex, CalculateDepth(line), "crit");
                            property.Lines = new string[] { builder.ToString().TrimEnd() };
                        }
                        property.Priority = 4500 + properties.Count;
                    }
                    else if (trimmedLine.StartsWith("o(") || trimmedLine.StartsWith("o_repeated("))
                    {
                        // There's an object nested directly in the quest... Why!
                        int questContructorIndex = line.IndexOf("(") - 1;
                        if (questContructorIndex >= 0 && HasOpenBracket(line, questContructorIndex))
                        {
                            var builder = new StringBuilder();
                            lineIndex = ProcessObjectType(builder, lines, lineIndex, CalculateDepth(line), "o");
                            property.Lines = new string[] { builder.ToString().TrimEnd() };
                        }
                        property.Priority = 5000 + properties.Count;
                    }
                    else if (trimmedLine.StartsWith("q("))
                    {
                        // There's an Quest nested directly in the quest... Why!
                        int questContructorIndex = line.IndexOf("q(");
                        if (questContructorIndex >= 0 && HasOpenBracket(line, questContructorIndex))
                        {
                            var builder = new StringBuilder();
                            lineIndex = ProcessObjectType(builder, lines, lineIndex, CalculateDepth(line), "q");
                            property.Lines = new string[] { builder.ToString().TrimEnd() };
                        }
                        property.Priority = 9000 + properties.Count;
                    }
                    else if (trimmedLine.StartsWith("i("))
                    {
                        // There's an item nested directly in the quest... Why!
                        int questContructorIndex = line.IndexOf("(") - 1;
                        if (questContructorIndex >= 0 && HasOpenBracket(line, questContructorIndex))
                        {
                            var builder = new StringBuilder();
                            lineIndex = ProcessObjectType(builder, lines, lineIndex, CalculateDepth(line), "i");
                            property.Lines = new string[] { builder.ToString().TrimEnd() };
                        }
                        property.Priority = 10000 + properties.Count;
                    }
                    else if (trimmedLine.Contains("("))
                    {
                        // There's an Boss nested directly in the quest... Why!
                        int questContructorIndex = line.IndexOf("(");
                        if (questContructorIndex >= 0 && HasOpenBracket(line, questContructorIndex - 1))
                        {
                            var builder = new StringBuilder();
                            var preConstructorIndex = line.Substring(0, questContructorIndex).LastIndexOfAny(PRE_CONSTRUCTOR_BREAKS);
                            if (preConstructorIndex < 0) preConstructorIndex = 0;
                            var constructorType = line.Substring(preConstructorIndex + 1, questContructorIndex - preConstructorIndex - 1).Trim();
                            lineIndex = ProcessObjectType(builder, lines, lineIndex, CalculateDepth(line), constructorType);
                            property.Lines = new string[] { builder.ToString().TrimEnd() };
                            /*
                            Console.Write("FOUND CONSTRUCTOR: ");
                            Console.WriteLine(constructorType);
                            Console.WriteLine(line);
                            Console.ReadLine();
                            */
                        }
                        property.Priority = 6000 + properties.Count;
                    }
                }

                if (property.Lines == null)
                {
                    // No lines assigned, so assign one.
                    property.Lines = new string[] { line };
                }
            }

            // Sort the properties by priority and write them back to the builder.
            properties.Sort((a, b) => a.Priority.CompareTo(b.Priority));
            return properties;
        }

        /// <summary>
        /// Clean the file for groups and trimming.
        /// </summary>
        /// <param name="filename">The file name.</param>
        static void CleanFile(string filename)
        {
            // Replace "g" with "groups". Crieve hates the shortness of "g" because it makes it
            // harder to find in processing and it doesn't stand out when reading vertically.
            Console.Title = $"[PAT] Cleaning {filename}";
            Console.WriteLine($"Cleaning {filename}");
            var withGContent = File.ReadAllText(filename);
            var originalContent = withGContent.Replace("[\"g\"]", "[\"groups\"]").Trim() + "\r\n";
            if (originalContent != withGContent)
            {
                File.WriteAllText(filename, originalContent);
            }
        }

        /// <summary>
        /// Process the file.
        /// </summary>
        /// <param name="filename">The file name.</param>
        static void ProcessFile(string filename)
        {
            try
            {
                // Read the text as separated by newlines (TODO: Maybe not use lines? It is easier to keep indents as lines, technically.)
                Console.Title = $"[PAT] Processing {filename}";
                Console.WriteLine($"Processing {filename}");
                var content = ProcessLines(File.ReadAllLines(filename)).Trim() + "\r\n";
                if (File.ReadAllText(filename) != content) File.WriteAllText(filename, content);
            }
            catch (Exception e)
            {
                Console.WriteLine(e);
                Console.ReadLine();
            }
        }
    }
}
