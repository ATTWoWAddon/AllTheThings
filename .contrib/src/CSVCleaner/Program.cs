// See https://aka.ms/new-console-template for more information

using System.Diagnostics;
using System.Text;
using System.Text.RegularExpressions;

if (args.Length == 0)
{
    Trace.WriteLine("[0] => CSV File to Clean | [1] => File containing Regex line(s) for allowed CSV lines");
    Console.ReadKey();
    return -1;
}

foreach (var arg in args)
{
    Trace.WriteLine($"Argument={arg}");
}

string filepath = args[0];
string regexFile = args[1];

if (!File.Exists(filepath) || !File.Exists(regexFile))
{
    Trace.WriteLine("[0] => CSV File to Clean | [1] => File containing Regex line(s) for allowed CSV lines");
    Console.ReadKey();
    return -1;
}

string[] regexPatterns = File.ReadAllLines(regexFile);
//string[] csvLines = File.ReadAllLines(filepath);
StringBuilder sb = new();
using StreamReader sr = new(filepath);

// header columns
sb.AppendLine(sr.ReadLine());

string? line;
while ((line = sr.ReadLine()) != null)
{
    foreach (string regex in regexPatterns)
    {
        if (Regex.IsMatch(line, regex))
        {
            sb.AppendLine(line); break;
        }
    }
}
sr.Dispose();

File.WriteAllText(filepath, sb.ToString());

return 0;
