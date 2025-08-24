using Newtonsoft.Json.Linq;
using System.Collections.Immutable;
using System.Text;

internal class Program
{
    private static void Main(string[] args)
    {
        Console.OutputEncoding = Encoding.UTF8;
        string LocalizationStringsDirectory = "../Parser/lib/Strings";
        if (Directory.Exists(LocalizationStringsDirectory))
        {
            // Load all of the localization files into RAM.
            Dictionary<string, string> LocalizationFiles = new();
            foreach (var localeFile in Directory.EnumerateFiles(LocalizationStringsDirectory, "*.lua", SearchOption.AllDirectories))
            {
                LocalizationFiles[Path.GetFileNameWithoutExtension(localeFile)] = File.ReadAllText(localeFile);
            }

            // Load all of the source files into RAM and record their relative paths.
            Dictionary<string, string> SourceFiles = new();
            string SourceFilesDirectory = Path.GetFullPath("../../src/Settings/");
            foreach (var sourceFile in Directory.EnumerateFiles(SourceFilesDirectory, "*.lua", SearchOption.AllDirectories))
            {
                string sourceFilePath = sourceFile.Substring(SourceFilesDirectory.Length)
                    .Insert(0, "Settings\\").Replace(".lua", "").Replace("Pages\\", "")
                    .Replace("Interface - Information", "Interface\\Information");
                SourceFiles[sourceFilePath] = File.ReadAllText(sourceFile);
            }

            // Sort those keys first, then append the rest.
            var SourceFilesKeys = SourceFiles.Keys.ToList();
            SourceFilesKeys.Sort();
            SourceFilesDirectory = Path.GetFullPath("../../src/");
            foreach (var sourceFile in Directory.EnumerateFiles(SourceFilesDirectory, "*.lua", SearchOption.AllDirectories))
            {
                string sourceFilePath = sourceFile.Substring(SourceFilesDirectory.Length);
                if (sourceFilePath.Contains("Settings\\")) continue;
                sourceFilePath = sourceFilePath.Replace(".lua", "");
                SourceFiles[sourceFilePath] = File.ReadAllText(sourceFile);
                SourceFilesKeys.Add(sourceFilePath);
            }
            SourceFilesDirectory = Path.GetFullPath("../../");
            foreach (var sourceFile in Directory.EnumerateFiles(SourceFilesDirectory, "*.lua", SearchOption.AllDirectories))
            {
                string sourceFilePath = sourceFile.Substring(SourceFilesDirectory.Length);
                if (sourceFilePath.Contains("src\\")) continue;
                if (sourceFilePath.StartsWith('.')) continue; // Ignore .git, .contrib, .github, etc
                if (sourceFilePath.StartsWith("db")) continue; // Ignore the db folder (yeah of course locales would be referenced in there...)
                if (sourceFilePath.StartsWith("lib")) continue; // Ignore the lib folder (external libraries that don't use ATT localization strings)
                sourceFilePath = sourceFilePath.Replace(".lua", "");
                SourceFiles[sourceFilePath] = File.ReadAllText(sourceFile);
                SourceFilesKeys.Add(sourceFilePath);
            }

            // Apply some filtering to help the source file finder do its job.
            string CreateTrackingCheckboxString = "CreateTrackingCheckbox(\"";
            foreach (var key in SourceFilesKeys)
            {
                var originalContent = SourceFiles[key];
                var content = originalContent.Replace("CreateAccountWideCheckbox(\"", "ACCOUNT_WIDE_");
                int index = 0;
                while (index < content.Length && (index = content.IndexOf(CreateTrackingCheckboxString, index)) > 0)
                {
                    if ((index = content.IndexOf("\"", index + CreateTrackingCheckboxString.Length)) > 0)
                    {
                        content = content.Insert(index, "_CHECKBOX");
                        ++index;
                    }
                    else break;
                }

                // If the content was changed, replace it.
                if (originalContent != content) SourceFiles[key] = content;
            }

            // Attempt to categorize the locales.
            Dictionary<string, string> LocalizationFileCategories = new();
            foreach (var localizationFileName in LocalizationFiles.Keys)
            {
                string? foundPath = null;
                foreach (var sourceFileKey in SourceFilesKeys)
                {
                    if (SourceFiles[sourceFileKey].Contains(localizationFileName))
                    {
                        foundPath = sourceFileKey;
                        break;
                    }
                }
                if (foundPath == null && localizationFileName.EndsWith("_TOOLTIP"))
                {
                    string buttonLocalizationFileName = localizationFileName.Replace("_TOOLTIP", "");
                    foreach (var sourceFileKey in SourceFilesKeys)
                    {
                        if (SourceFiles[sourceFileKey].Contains(buttonLocalizationFileName))
                        {
                            foundPath = sourceFileKey;
                            break;
                        }
                    }
                }

                LocalizationFileCategories[localizationFileName] = foundPath == null ? "NOT REFERENCED" : foundPath;
                Console.Write(localizationFileName);
                Console.Write(": ");
                Console.WriteLine(foundPath);
            }

            // Clear out all of the localization files.
            while (Directory.Exists(LocalizationStringsDirectory))
            {
                try
                {
                    Directory.Delete(LocalizationStringsDirectory, true);
                }
                catch
                {
                    Console.WriteLine("Failed to delete the localization strings directory. Try again?");
                    Console.ReadLine();
                }
            }
            Directory.CreateDirectory(LocalizationStringsDirectory);

            foreach (var LocalizationFilePair in LocalizationFileCategories)
            {
                var directory = Path.Combine(LocalizationStringsDirectory, LocalizationFilePair.Value);
                if (!Directory.Exists(directory)) Directory.CreateDirectory(directory);
                File.WriteAllText(Path.Combine(directory, LocalizationFilePair.Key + ".lua"), LocalizationFiles[LocalizationFilePair.Key]);
            }
        }
    }
}