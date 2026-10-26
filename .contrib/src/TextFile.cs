using System.IO;
using System.Linq;
using System.Text;

namespace ATT
{
    /// <summary>Canonical formatting for text generated into the repository.</summary>
    internal static class TextFile
    {
        internal static readonly Encoding Utf8 = new UTF8Encoding(false);

        internal static string Normalize(string content)
        {
            if (string.IsNullOrEmpty(content)) return string.Empty;
            if (content[0] == '\uFEFF') content = content.Substring(1);
            if (content.Length == 0) return string.Empty;

            // Keep interior whitespace and blank lines, including export exceptions.
            content = content.Replace("\r\n", "\n").Replace('\r', '\n').TrimEnd('\n');
            while (content.Length > 0)
            {
                int newline = content.LastIndexOf('\n');
                if (content.Substring(newline + 1).Trim(' ', '\t').Length != 0) break;
                content = newline < 0 ? string.Empty : content.Substring(0, newline).TrimEnd('\n');
            }
            return content.Length == 0 ? string.Empty : content + "\n";
        }

        internal static void WriteAllText(string filename, string content)
        {
            File.WriteAllText(filename, Normalize(content), Utf8);
        }

        internal static void WriteIfDifferent(string filename, string content)
        {
            byte[] bytes = Utf8.GetBytes(Normalize(content));
            // Compare bytes so an existing BOM is removed even when text is identical.
            if (!File.Exists(filename) || !File.ReadAllBytes(filename).SequenceEqual(bytes))
                File.WriteAllBytes(filename, bytes);
        }
    }
}
