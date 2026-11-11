// See https://aka.ms/new-console-template for more information
using System.Net;
using System.Text;

var textureNamesToFileIDs = new Dictionary<string, string>();
foreach (var line in LoadFromDatabase())
{
    string[] row = SplitRowData(line);
    if (long.TryParse(row[0], out long id))
    {
        var fileName = (Path.GetDirectoryName(row[1]) + "/" + Path.GetFileNameWithoutExtension(row[1])).Replace("\\\\", "/").Replace("\\", "/").ToLower();
        var idString = id.ToString();
        textureNamesToFileIDs[fileName] = idString;
        //Console.WriteLine($"{fileName} -> {idString}");
    }
}

char[] textureEnders = ['"', ':'];
foreach (var file in Directory.EnumerateFiles("../..", "*.*", SearchOption.AllDirectories))
{
    if (file.EndsWith(".lua") || file.EndsWith(".js") || file.EndsWith(".cs"))
    {
        Console.Write(" >> ");
        Console.WriteLine(file);
        var contents = File.ReadAllText(file);
        int startIndex = contents.IndexOf("interface/", StringComparison.OrdinalIgnoreCase);
        if (startIndex >= 0)
        {
            var updatedContents = contents;
            do
            {
                int endIndex = updatedContents.IndexOfAny(textureEnders, startIndex + 1);
                if (endIndex >= 0)
                {
                    var rawTextureFileName = updatedContents.Substring(startIndex, endIndex - startIndex);
                    var cleanedTextureFileName = rawTextureFileName.Replace("\\\\", "/").Replace("\\", "/").ToLower();
                    Console.Write(cleanedTextureFileName);
                    Console.Write("... ");
                    if (textureNamesToFileIDs.TryGetValue(cleanedTextureFileName, out var iconIDString))
                    {
                        updatedContents = updatedContents.Replace($"\"{rawTextureFileName}\"", iconIDString, StringComparison.OrdinalIgnoreCase);
                        updatedContents = updatedContents.Replace(rawTextureFileName, iconIDString, StringComparison.OrdinalIgnoreCase);
                        Console.WriteLine(iconIDString);
                    }
                    else
                    {
                        startIndex = endIndex;
                        Console.WriteLine("FAILED!");
                    }
                    startIndex = updatedContents.IndexOf("interface/", startIndex, StringComparison.OrdinalIgnoreCase);
                }
                else break;
            }
            while (startIndex >= 0);
            if (updatedContents != contents)
            {
                ATT.TextFile.WriteAllText(file, updatedContents);
                Console.WriteLine("Replaced the contents of the files!");
            }
        }
    }
}
Console.WriteLine("DONE!");
Console.ReadLine();

string[] textureStarts = ["interface/", "interface\\", "world/", "world\\"];
int FindTextureStart(string contents, int startIndex)
{
    int minIndex = -1;
    foreach (var start in textureStarts)
    {
        var a = contents.IndexOf(start, startIndex, StringComparison.OrdinalIgnoreCase);
        if (a >= 0 && a < minIndex) minIndex = a;
    }
    return minIndex;
}

static string[] LoadFromDatabase()
{
    var fileName = $"Wago/community-listfile.csv";
    if (!File.Exists(fileName))
    {
        var data = DownloadCSVFromWAGO();
        if (string.IsNullOrEmpty(data)) throw new Exception("Failed to download data from WAGO.");
        Directory.CreateDirectory(Path.GetDirectoryName(fileName));
        ATT.TextFile.WriteAllText(fileName, data);
    }
    Console.Write("Loading: ");
    Console.WriteLine(fileName);
    return File.ReadAllLines(fileName);
}

static string DownloadCSVFromWAGO()
{
    try
    {
        using WebClient webClient = new();
        string url = "https://github.com/wowdev/wow-listfile/releases/latest/download/community-listfile.csv";
        Console.Write("Downloading: ");
        Console.WriteLine(url);
        return Encoding.UTF8.GetString(webClient.DownloadData(url));
    }
    catch (Exception e)
    {
        Console.WriteLine(e);
        throw;
    }
}

static string FixText(string text)
{
    if (text.Length > 0)
    {
        text = text.Replace("\\\"", "\"");
        if (text[0] == '"' && text[text.Length - 1] == '"')
        {
            text = text.Substring(1, text.Length - 2);
        }
    }
    return text;
}

static string[] SplitRowData(string row)
{
    var index = row.IndexOf(';');
    if (index == -1) return row.Split(';');
    return [row[..index], row[(index + 1)..]];
}