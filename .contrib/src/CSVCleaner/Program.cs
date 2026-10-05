using System.Diagnostics;
using System.Text;
using System.Text.RegularExpressions;

if (args.Length == 0)
{
    Trace.WriteLine("[0] => CSV File to Clean | [1] (optional) => File containing Regex line(s) for allowed CSV lines");
    Console.ReadKey();
    return -1;
}

foreach (var arg in args)
{
    Trace.WriteLine($"Argument={arg}");
}

string filepath = args[0];
string regexFile = args.Length > 1 ? args[1] : null;

if (!File.Exists(filepath))
{
    Trace.WriteLine($"CSV file not found: {filepath}");
    return -1;
}

Regex[] regexes = [];

if (regexFile != null && File.Exists(regexFile))
{
    regexes = File.ReadAllLines(regexFile)
        .Where(l => !string.IsNullOrWhiteSpace(l))
        .Select(l => new Regex(l, RegexOptions.Compiled))
        .ToArray();
}
else
{
    Trace.WriteLine("Regex file not provided or not found; Regex cleaning skipped.");
}

string header;
List<string> lines = [];

using (StreamReader sr = new(filepath))
{
    header = ReadRecord(sr);

    string record;
    while ((record = ReadRecord(sr)) != null)
    {
        if (regexes.Length == 0 || regexes.Any(r => r.IsMatch(record)))
        {
            lines.Add(record);
        }
    }
}

if (header == null)
{
    Trace.WriteLine("CSV file is empty.");
    return -1;
}

int idIndex = SplitCsv(header)
    .FindIndex(h => h.Trim().Equals("ID", StringComparison.OrdinalIgnoreCase));

IEnumerable<string> sorted = lines;

if (idIndex < 0)
{
    Trace.WriteLine("No 'ID' column found in header; sorting skipped.");
}
else
{
    // OrderBy is stable; lines with a missing/non-numeric ID go last
    sorted = lines
        .Select(l =>
        {
            var fields = SplitCsv(l);
            long id = idIndex < fields.Count && long.TryParse(fields[idIndex].Trim(), out long v)
                ? v
                : long.MaxValue;
            return (Line: l, Id: id);
        })
        .OrderBy(x => x.Id)
        .Select(x => x.Line);
}

StringBuilder sb = new();
sb.AppendLine(header);
foreach (string l in sorted)
{
    sb.AppendLine(l);
}

ATT.TextFile.WriteAllText(filepath, sb.ToString());

return 0;

// Splits one CSV line, respecting quoted fields and "" escapes
static List<string> SplitCsv(string line)
{
    List<string> fields = [];
    StringBuilder cur = new();
    bool inQuotes = false;

    for (int i = 0; i < line.Length; i++)
    {
        char c = line[i];
        if (inQuotes)
        {
            if (c == '"' && i + 1 < line.Length && line[i + 1] == '"') { cur.Append('"'); i++; }
            else if (c == '"') inQuotes = false;
            else cur.Append(c);
        }
        else if (c == '"') inQuotes = true;
        else if (c == ',') { fields.Add(cur.ToString()); cur.Clear(); }
        else cur.Append(c);
    }
    fields.Add(cur.ToString());
    return fields;
}

// Reads one CSV record, joining physical lines while inside an open quoted value
static string ReadRecord(StreamReader sr)
{
    string line = sr.ReadLine();
    if (line == null) return null;

    StringBuilder sb = new(line);
    int quotes = line.Count(c => c == '"');

    // Odd quote count => still inside a quoted value
    while (quotes % 2 != 0 && (line = sr.ReadLine()) != null)
    {
        sb.Append(Environment.NewLine).Append(line);
        quotes += line.Count(c => c == '"');
    }
    return sb.ToString();
}
