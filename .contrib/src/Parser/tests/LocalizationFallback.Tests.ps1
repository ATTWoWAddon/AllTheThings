#Requires -Version 5.1
<#
.SYNOPSIS
Tests locale fallback and debug export using an existing x64 Parser.exe.
.EXAMPLE
powershell.exe -NoProfile -ExecutionPolicy Bypass -File .\LocalizationFallback.Tests.ps1 -ParserPath ..\..\..\.tools\Parser.exe
.NOTES
Requires Windows and .NET Framework 4.8. Parser dependencies must be beside Parser.exe.
The test uses synthetic data in a temporary directory and does not run a full parse.
#>
[CmdletBinding()]
param(
	[Parameter(Mandatory = $true)]
	[string] $ParserPath
)
Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'
$resolvedParser = (Resolve-Path -LiteralPath $ParserPath).ProviderPath
$parserDirectory = [IO.Path]::GetDirectoryName($resolvedParser)
$compiler = Join-Path $env:WINDIR 'Microsoft.NET\Framework64\v4.0.30319\csc.exe'
if (!(Test-Path -LiteralPath $compiler -PathType Leaf)) { throw 'The x64 .NET Framework C# compiler was not found.' }
$fixture = Join-Path ([IO.Path]::GetTempPath()) ('ATT-LocaleFallback-' + [Guid]::NewGuid().ToString('N'))
try {
	[void] [IO.Directory]::CreateDirectory($fixture)
	$parserCopy = Join-Path $fixture 'Parser.exe'
	Copy-Item -LiteralPath $resolvedParser -Destination $parserCopy
	Get-ChildItem -LiteralPath $parserDirectory -Filter '*.dll' -File | Copy-Item -Destination $fixture
	$testHost = Join-Path $fixture 'LocalizationFallback.Tests.exe'
	$parserConfig = $resolvedParser + '.config'
	if (Test-Path -LiteralPath $parserConfig -PathType Leaf) { Copy-Item -LiteralPath $parserConfig -Destination ($testHost + '.config') }
	$testSource = @'
using System;
using System.Collections.Generic;
using System.IO;
using System.Reflection;
using System.Text.RegularExpressions;

internal static class LocalizationFallbackTests
{
    private static Type framework;
    private static int failures;
    private static int checks;
    private static string root;

    private static void Check(bool condition, string message)
    {
        if (!condition) throw new InvalidOperationException(message);
    }

    private static Dictionary<string, object> Locales(params object[] values)
    {
        var result = new Dictionary<string, object>();
        for (int i = 0; i < values.Length; i += 2) result.Add((string)values[i], values[i + 1]);
        return result;
    }

    private static Dictionary<string, string> Expected(params string[] values)
    {
        var result = new Dictionary<string, string>();
        for (int i = 0; i < values.Length; i += 2) result.Add(values[i], values[i + 1]);
        return result;
    }

    private static void Verify<TKey>(TKey key, string field, Dictionary<string, object> locales, Dictionary<string, string> expected)
    {
        var result = new Dictionary<string, Dictionary<TKey, string>>();
        var input = new Dictionary<string, object> { { field, locales } };
        MethodInfo method = framework.GetMethod("CleanLocalizedField", BindingFlags.NonPublic | BindingFlags.Static).MakeGenericMethod(typeof(TKey));
        method.Invoke(null, new object[] { key, field, input, result });
        int count = 0;
        foreach (var locale in result)
        {
            string actual;
            if (!locale.Value.TryGetValue(key, out actual)) continue;
            count++;
            string wanted;
            Check(expected.TryGetValue(locale.Key, out wanted), "unexpected locale " + locale.Key);
            Check(actual == wanted, locale.Key + ": expected " + wanted + ", got " + actual);
        }
        Check(count == expected.Count, "expected " + expected.Count + " emitted locales, got " + count);
        foreach (var pair in expected)
        {
            Dictionary<TKey, string> values;
            string actual;
            Check(result.TryGetValue(pair.Key, out values) && values.TryGetValue(key, out actual) && actual == pair.Value,
                "missing or incorrect " + pair.Key);
        }
    }

    private static void Run(string name, Action action)
    {
        checks++;
        try { action(); Console.WriteLine("PASS: " + name); }
        catch (Exception e)
        {
            failures++;
            if (e is TargetInvocationException && e.InnerException != null) e = e.InnerException;
            Console.WriteLine("FAIL: " + name + ": " + e.Message);
        }
    }

    private static void Matrix<TKey>(TKey key, string field, string parent, string child)
    {
        string prefix = typeof(TKey).Name + "/" + field + "/" + child + "/";
        // Insertion deliberately puts the child before the parent.
        Run(prefix + "child equals English, parent differs", () => Verify(key, field,
            Locales("en", "English", child, "English", parent, "Parent"), Expected("en", "English", parent, "Parent", child, "English")));
        Run(prefix + "child equals parent", () => Verify(key, field,
            Locales("en", "English", child, "Parent", parent, "Parent"), Expected("en", "English", parent, "Parent")));
        Run(prefix + "missing parent, same as English", () => Verify(key, field,
            Locales("en", "English", child, "English"), Expected("en", "English")));
        Run(prefix + "missing parent, distinct child", () => Verify(key, field,
            Locales("en", "English", child, "Child"), Expected("en", "English", child, "Child")));
        Run(prefix + "missing child", () => Verify(key, field,
            Locales("en", "English", parent, "Parent"), Expected("en", "English", parent, "Parent")));
        Run(prefix + "all equal", () => Verify(key, field,
            Locales("en", "English", child, "English", parent, "English"), Expected("en", "English")));
        Run(prefix + "all distinct", () => Verify(key, field,
            Locales("en", "English", child, "Child", parent, "Parent"), Expected("en", "English", parent, "Parent", child, "Child")));
        Run(prefix + "empty English and child", () => Verify(key, field,
            Locales("en", "", child, "", parent, "Parent"), Expected("en", "", parent, "Parent", child, "")));
        Run(prefix + "numeric parent conversion", () => Verify(key, field,
            Locales("en", "English", child, "42", parent, 42), Expected("en", "English", parent, "42")));
        Run(prefix + "programmatic value", () => Verify(key, field,
            Locales("en", "~GetSpellInfo(5)", child, "~GetSpellInfo(5)", parent, "Parent"), Expected("en", "~GetSpellInfo(5)", parent, "Parent", child, "~GetSpellInfo(5)")));
        Run(prefix + "color processed before comparison", () => {
            var locales = Locales("en", "English", child, "English", parent, "Parent", "color", "ff00ff00");
            Verify(key, field, locales, Expected("en", "|cff00ff00English|r", parent, "|cff00ff00Parent|r", child, "|cff00ff00English|r"));
            Check(!locales.ContainsKey("color"), "color was not processed");
        });
        Run(prefix + "missing English", () => Verify(key, field,
            Locales(child, "Child", parent, "Parent"), Expected()));
    }

    private static string ExportDebug(Dictionary<string, object> locales, string caseName)
    {
        framework.GetField("DebugMode", BindingFlags.Public | BindingFlags.Static).SetValue(null, true);
        var objects = (IDictionary<long, IDictionary<string, object>>)framework.GetProperty("ObjectDB", BindingFlags.NonPublic | BindingFlags.Static).GetValue(null, null);
        objects.Clear();
        objects.Add(101, new Dictionary<string, object> { { "text", locales } });
        string caseRoot = Path.Combine(root, caseName);
        Directory.CreateDirectory(caseRoot);
        framework.GetMethod("ExportDebugOutputDBs", BindingFlags.NonPublic | BindingFlags.Static).Invoke(null, new object[] { caseRoot });
        return File.ReadAllText(Path.Combine(caseRoot, ".contrib", "Debugging", "ObjectDB.lua"));
    }

    private static void DebugCases()
    {
        Run("debug es=mx does not remove distinct tw", () => {
            string text = ExportDebug(Locales("en", "English", "tw", "English", "cn", "Chinese", "es", "Spanish", "mx", "Spanish"), "tw");
            Check(text.Contains("tw = \"English\","), "tw override missing");
            Check(text.Contains("cn = \"Chinese\","), "cn missing");
            Check(text.Contains("es = \"Spanish\","), "es missing");
            Check(!text.Contains("mx = "), "duplicate mx emitted");
        });
        Run("debug mx equals English but differs from es", () => {
            string text = ExportDebug(Locales("en", "English", "mx", "English", "es", "Spanish"), "mx");
            Check(text.Contains("mx = \"English\","), "mx override missing");
        });
        Run("debug English placeholder remains omitted", () => {
            string text = ExportDebug(Locales("en", "English", "tw", "[English]", "cn", "Chinese"), "placeholder");
            Check(!text.Contains("tw = "), "English placeholder emitted");
        });
        Run("debug empty explicit child", () => {
            string text = ExportDebug(Locales("en", "", "tw", "", "cn", "Chinese"), "empty");
            Check(text.Contains("tw = \"\","), "empty tw override missing");
        });
    }

    public static int Main(string[] args)
    {
        try
        {
            Check(args.Length == 2, "Expected Parser path and temporary test root.");
            root = Path.GetFullPath(args[1]);
            framework = Assembly.LoadFrom(Path.GetFullPath(args[0])).GetType("ATT.Framework", true);
            foreach (string field in new[] { "text", "description", "lore" })
            {
                Matrix("synthetic-key", field, "cn", "tw");
                Matrix("synthetic-key", field, "es", "mx");
                Matrix(123L, field, "cn", "tw");
                Matrix(123L, field, "es", "mx");
            }
            DebugCases();
            Console.WriteLine("Checks: " + checks + "; failures: " + failures);
            return failures == 0 ? 0 : 1;
        }
        catch (Exception e) { Console.Error.WriteLine(e); return 2; }
    }
}
'@
	$sourcePath = Join-Path $fixture 'LocalizationFallback.Tests.cs'
	[IO.File]::WriteAllText($sourcePath, $testSource, [Text.Encoding]::UTF8)
	& $compiler /nologo /target:exe /platform:x64 "/out:$testHost" $sourcePath
	if ($LASTEXITCODE -ne 0) { throw "Failed to compile locale fallback test host: $LASTEXITCODE" }
	$arguments = @(('"' + $parserCopy + '"'), ('"' + (Join-Path $fixture 'data') + '"'))
	$process = Start-Process -FilePath $testHost -ArgumentList $arguments -WorkingDirectory $fixture -NoNewWindow -PassThru
	try {
		[void] $process.Handle
		if (!$process.WaitForExit(45000)) {
			$process.Kill()
			throw 'Locale fallback tests exceeded the 45-second timeout.'
		}
		if ($process.ExitCode -ne 0) { throw "Locale fallback tests failed: $($process.ExitCode)" }
	} finally { $process.Dispose() }
} finally {
	if (Test-Path -LiteralPath $fixture) { Remove-Item -LiteralPath $fixture -Recurse -Force }
}
