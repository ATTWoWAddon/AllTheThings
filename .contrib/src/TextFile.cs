using System;
using System.IO;
using System.Linq;
using System.Text;

namespace ATT
{
	/// <summary>Writes generated text with an explicit newline and encoding policy.</summary>
	internal static class TextFile
	{
		internal const string Lf = "\n";
		internal const string CrLf = "\r\n";
		internal static readonly Encoding Utf8NoBom = new UTF8Encoding(false);
		internal static readonly Encoding Utf8WithBom = new UTF8Encoding(true);

		internal static string NormalizeNewlines(string content, string newLine)
		{
			if (newLine != Lf && newLine != CrLf)
				throw new ArgumentException("The output newline must be LF or CRLF.", nameof(newLine));

			if (content == null) return string.Empty;

			content = content.Replace("\r\n", Lf).Replace('\r', '\n').Replace(Lf, newLine);
			if (content.Length > 0 && !content.EndsWith(newLine, StringComparison.Ordinal))
				content += newLine;
			return content;
		}

		internal static void WriteAllText(string filename, string content, string newLine, Encoding encoding)
		{
			File.WriteAllBytes(filename, GetBytes(content, newLine, encoding));
		}

		internal static void WriteIfDifferent(string filename, string content, string newLine, Encoding encoding)
		{
			byte[] bytes = GetBytes(content, newLine, encoding);
			if (!File.Exists(filename) || !File.ReadAllBytes(filename).SequenceEqual(bytes))
				File.WriteAllBytes(filename, bytes);
		}

		private static byte[] GetBytes(string content, string newLine, Encoding encoding)
		{
			if (encoding == null) throw new ArgumentNullException(nameof(encoding));

			byte[] preamble = encoding.GetPreamble();
			byte[] contentBytes = encoding.GetBytes(NormalizeNewlines(content, newLine));
			byte[] bytes = new byte[preamble.Length + contentBytes.Length];
			Buffer.BlockCopy(preamble, 0, bytes, 0, preamble.Length);
			Buffer.BlockCopy(contentBytes, 0, bytes, preamble.Length, contentBytes.Length);
			return bytes;
		}
	}
}
