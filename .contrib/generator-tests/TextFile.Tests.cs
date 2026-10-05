using System;
using System.IO;
using System.Linq;
using System.Text;
using ATT;

internal static class TextFileTests
{
    private static void AssertBytes(string path, string expected)
    {
        if (!File.ReadAllBytes(path).SequenceEqual(new UTF8Encoding(false).GetBytes(expected)))
            throw new InvalidOperationException("Noncanonical output: " + Path.GetFileName(path));
    }

    public static void Main()
    {
        string directory = Path.Combine(Path.GetTempPath(), "att-text-writer-" + Guid.NewGuid());
        Directory.CreateDirectory(directory);
        try
        {
            string path = Path.Combine(directory, "ObjectDB.lua");
            // Localized text, trailing spaces and interior blank lines are data.
            const string expected = "-- 名稱 café  \n\n[1] = \"測試\",\n";
            foreach (string newline in new[] { "\n", "\r\n", "\r" })
            {
                string body = expected.Replace("\n", newline) + newline + newline;
                TextFile.WriteAllText(path, body);
                AssertBytes(path, expected);
            }
            TextFile.WriteAllText(path, expected + " \t\n\n \n");
            AssertBytes(path, expected);
            TextFile.WriteAllText(path, "last content  \n\t \n");
            AssertBytes(path, "last content  \n");
            TextFile.WriteAllText(path, "content\n\u00A0\n\n");
            AssertBytes(path, "content\n\u00A0\n");
            TextFile.WriteAllText(path, "\uFEFF" + expected);
            AssertBytes(path, expected);
            TextFile.WriteAllText(path, "{\"name\":\"測試\"}");
            AssertBytes(path, "{\"name\":\"測試\"}\n");

            // A preexisting UTF-8 BOM must be removed even when decoded text matches.
            File.WriteAllText(path, expected, new UTF8Encoding(true));
            TextFile.WriteIfDifferent(path, expected);
            AssertBytes(path, expected);
            DateTime timestamp = new DateTime(2000, 1, 1, 0, 0, 0, DateTimeKind.Utc);
            File.SetLastWriteTimeUtc(path, timestamp);
            TextFile.WriteIfDifferent(path, expected.Replace("\n", "\r\n"));
            if (File.GetLastWriteTimeUtc(path) != timestamp)
                throw new InvalidOperationException("An unchanged canonical file was rewritten.");
            AssertBytes(path, expected);

            string empty = Path.Combine(directory, "empty.txt");
            TextFile.WriteAllText(empty, string.Empty);
            AssertBytes(empty, string.Empty);
            TextFile.WriteIfDifferent(empty, string.Empty);
            AssertBytes(empty, string.Empty);

            TextFile.WriteAllText(empty, " \t\n\r\n");
            AssertBytes(empty, string.Empty);

            // The existing harvester ID readers accept the required final LF.
            TextFile.WriteAllText(path, "36000");
            AssertBytes(path, "36000\n");
            if (int.Parse(File.ReadAllText(path)) != 36000)
                throw new InvalidOperationException("A numeric resume value changed.");
            TextFile.WriteAllText(path, "1,36000");
            AssertBytes(path, "1,36000\n");
            int[] ids = File.ReadAllText(path).Split(',').Select(int.Parse).ToArray();
            if (ids[0] != 1 || ids[1] != 36000)
                throw new InvalidOperationException("An ID range changed.");

            // Canonicalize an older raw cache before appending new LF records.
            const string raw = "{\"id\":1}\r\n{\"id\":2}\n{\"id\":3}\r";
            TextFile.WriteAllText(path, raw);
            File.AppendAllText(path, TextFile.Normalize("{\"id\":4}\r\n"), TextFile.Utf8);
            AssertBytes(path, "{\"id\":1}\n{\"id\":2}\n{\"id\":3}\n{\"id\":4}\n");
            Console.WriteLine("Canonical C# writer fixtures passed.");
        }
        finally
        {
            Directory.Delete(directory, true);
        }
    }
}
