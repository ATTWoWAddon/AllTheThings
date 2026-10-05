using System;
using System.IO;
using System.Linq;
using System.Text;
using System.Text.Json;
using ATT;

internal static class TextFileTests
{
	private static string AssertText(string path, string expected, bool expectBom)
	{
		byte[] bytes = File.ReadAllBytes(path);
		bool hasBom = bytes.Length >= 3 && bytes[0] == 0xEF && bytes[1] == 0xBB && bytes[2] == 0xBF;
		if (hasBom != expectBom)
			throw new InvalidOperationException("Unexpected UTF-8 BOM in " + Path.GetFileName(path));

		int contentOffset = hasBom ? 3 : 0;
		byte[] expectedBytes = new UTF8Encoding(false, true).GetBytes(expected);
		if (!bytes.Skip(contentOffset).SequenceEqual(expectedBytes))
			throw new InvalidOperationException("Unexpected UTF-8 bytes in " + Path.GetFileName(path));

		return new UTF8Encoding(false, true).GetString(bytes, contentOffset, bytes.Length - contentOffset);
	}

	public static void Main()
	{
		string directory = Path.Combine(Path.GetTempPath(), "att-text-writer-" + Guid.NewGuid());
		Directory.CreateDirectory(directory);
		try
		{
			string path = Path.Combine(directory, "generated.txt");
			const string content = "-- 名稱 café  \r\n\r\n\t[1] = \"測試\",  \rlast line \t";
			const string expectedLf = "-- 名稱 café  \n\n\t[1] = \"測試\",  \nlast line \t\n";
			const string expectedCrLf = "-- 名稱 café  \r\n\r\n\t[1] = \"測試\",  \r\nlast line \t\r\n";

			TextFile.WriteAllText(path, content, TextFile.Lf, TextFile.Utf8NoBom);
			AssertText(path, expectedLf, false);

			TextFile.WriteAllText(path, content, TextFile.CrLf, TextFile.Utf8NoBom);
			AssertText(path, expectedCrLf, false);

			TextFile.WriteAllText(path, content, TextFile.CrLf, TextFile.Utf8WithBom);
			AssertText(path, expectedCrLf, true);

			DateTime timestamp = new DateTime(2000, 1, 1, 0, 0, 0, DateTimeKind.Utc);
			File.SetLastWriteTimeUtc(path, timestamp);
			TextFile.WriteIfDifferent(path, content + "\r\n", TextFile.CrLf, TextFile.Utf8WithBom);
			if (File.GetLastWriteTimeUtc(path) != timestamp)
				throw new InvalidOperationException("An unchanged file was rewritten.");
			AssertText(path, expectedCrLf, true);

			TextFile.WriteIfDifferent(path, content, TextFile.Lf, TextFile.Utf8NoBom);
			AssertText(path, expectedLf, false);

			TextFile.WriteAllText(path, "already ended\r\n", TextFile.Lf, TextFile.Utf8NoBom);
			AssertText(path, "already ended\n", false);

			TextFile.WriteAllText(path, "two endings\n\n", TextFile.Lf, TextFile.Utf8NoBom);
			AssertText(path, "two endings\n\n", false);

			string json = JsonSerializer.Serialize(new { name = "測試", text = "line one\r\nline two" });
			if (!json.Contains("\\r\\n", StringComparison.Ordinal))
				throw new InvalidOperationException("The JSON fixture did not escape its CRLF value.");
			TextFile.WriteAllText(path, json, TextFile.Lf, TextFile.Utf8NoBom);
			string savedJson = AssertText(path, json + "\n", false);
			using (JsonDocument document = JsonDocument.Parse(savedJson))
			{
				if (document.RootElement.GetProperty("name").GetString() != "測試" ||
					document.RootElement.GetProperty("text").GetString() != "line one\r\nline two")
					throw new InvalidOperationException("A serialized JSON field value changed.");
			}

			TextFile.WriteAllText(path, string.Empty, TextFile.Lf, TextFile.Utf8NoBom);
			AssertText(path, string.Empty, false);
			File.SetLastWriteTimeUtc(path, timestamp);
			TextFile.WriteIfDifferent(path, string.Empty, TextFile.Lf, TextFile.Utf8NoBom);
			if (File.GetLastWriteTimeUtc(path) != timestamp)
				throw new InvalidOperationException("An unchanged empty file was rewritten.");
			AssertText(path, string.Empty, false);

			Console.WriteLine("Text file writer fixtures passed.");
		}
		finally
		{
			Directory.Delete(directory, true);
		}
	}
}
