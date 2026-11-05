using System;
using System.Collections;
using System.Diagnostics;
using System.IO;
using System.Reflection;
using System.Security.Cryptography;
using System.Windows.Forms;

internal static class SourceLegacyRuntimeHarness
{
    private static void Require(bool condition, string message)
    {
        if (!condition) throw new InvalidOperationException(message);
    }

    private static string Sha256(string path)
    {
        using (var stream = File.OpenRead(path))
        using (var sha = SHA256.Create())
            return BitConverter.ToString(sha.ComputeHash(stream)).Replace("-", "");
    }

    private static void CheckLoadedModules(string outputDirectory)
    {
        foreach (string name in new[] { "NLua", "KeraLua" })
        {
            Assembly found = null;
            foreach (Assembly assembly in AppDomain.CurrentDomain.GetAssemblies())
                if (assembly.GetName().Name == name) found = assembly;
            Require(found != null, "Assembly not loaded: " + name);
            string expected = Path.GetFullPath(Path.Combine(outputDirectory, name + ".dll"));
            string actual = Path.GetFullPath(found.Location);
            Require(String.Equals(actual, expected, StringComparison.OrdinalIgnoreCase), name + " loaded from unexpected path: " + actual);
            Console.WriteLine("ASSEMBLY " + name + " " + actual + " SHA256=" + Sha256(actual));
        }
        string expectedNative = Path.GetFullPath(Path.Combine(outputDirectory, "lua54.dll"));
        string actualNative = null;
        foreach (ProcessModule module in Process.GetCurrentProcess().Modules)
            if (String.Equals(module.ModuleName, "lua54.dll", StringComparison.OrdinalIgnoreCase)) actualNative = Path.GetFullPath(module.FileName);
        Require(actualNative != null, "Native Lua module not loaded.");
        Require(String.Equals(actualNative, expectedNative, StringComparison.OrdinalIgnoreCase), "Native Lua loaded from unexpected path: " + actualNative);
        Require(Sha256(actualNative) == Sha256(expectedNative), "Native Lua hash mismatch.");
        Console.WriteLine("NATIVE lua54 " + actualNative + " SHA256=" + Sha256(actualNative));
    }

    private static void CheckItem(string outputDirectory)
    {
        Assembly app = Assembly.LoadFrom(Path.Combine(outputDirectory, "Item Database Consolidator.exe"));
        Type program = app.GetType("ATT.Program", true);
        MethodInfo main = program.GetMethod("Main", BindingFlags.Static | BindingFlags.NonPublic);
        Require(main != null, "Item entry point unavailable.");
        main.Invoke(null, new object[] { new string[0] });
        CheckLoadedModules(outputDirectory);
    }

    private static void CheckSync(string outputDirectory, string accountDirectory)
    {
        Assembly app = Assembly.LoadFrom(Path.Combine(outputDirectory, "ATT Sync Tool.exe"));
        Type formType = app.GetType("ATT.MainForm", true);
        Exception shownFailure = null;
        bool shown = false;
        using (Form form = (Form)Activator.CreateInstance(formType))
        {
            form.Shown += delegate
            {
                form.BeginInvoke((MethodInvoker)delegate
                {
                    try
                    {
                        Require(form.IsHandleCreated, "Form handle was not created.");
                        Require(!form.Visible, "Form did not hide after it was shown.");
                        FieldInfo field = formType.GetField("notifyIconATT", BindingFlags.Instance | BindingFlags.NonPublic);
                        Require(field != null, "Tray icon field not found.");
                        NotifyIcon icon = (NotifyIcon)field.GetValue(form);
                        Require(icon != null && icon.Icon != null && icon.Visible, "Tray icon did not initialize.");
                        shown = true;
                        Console.WriteLine("SYNC form shown, initialized, and hidden with tray icon");
                    }
                    catch (Exception error) { shownFailure = error; }
                    finally { form.Close(); }
                });
            };
            Application.Run(form);
        }
        if (shownFailure != null) throw shownFailure;
        Require(shown, "Form Shown callback did not complete.");

        Assembly db = Assembly.LoadFrom(Path.Combine(outputDirectory, "Database.dll"));
        Type savedVariables = db.GetType("ATT.SavedVariables", true);
        MethodInfo parse = savedVariables.GetMethod("Parse", BindingFlags.Public | BindingFlags.Static);
        Require(parse != null, "SavedVariables.Parse unavailable.");
        IDictionary data = (IDictionary)parse.Invoke(null, new object[] { new DirectoryInfo(accountDirectory) });
        Require(data != null && data.Contains("Probe"), "Probe table missing from parsed data.");
        IDictionary probe = (IDictionary)data["Probe"];
        Require(Convert.ToInt64(probe["value"]) == 42, "Unexpected Probe.value.");
        Require((bool)probe["active"], "Unexpected Probe.active.");
        IDictionary nested = (IDictionary)probe["nested"];
        Require((string)nested["text"] == "sample", "Unexpected Probe.nested.text.");
        string file = Path.Combine(accountDirectory, "SavedVariables", "AllTheThings.lua");
        string rewritten = File.ReadAllText(file);
        Require(rewritten.StartsWith("-- Compressed & Optimized by the ATT Sync Tool"), "SavedVariables file was not rewritten.");
        Require(rewritten.Contains("[\"value\"]=42") && rewritten.Contains("[\"active\"]=true") && rewritten.Contains("[\"text\"]=\"sample\""), "Rewritten saved variables mismatch expected values.");
        Console.WriteLine("DATABASE parsed and rewrote expected synthetic saved variables");
        CheckLoadedModules(outputDirectory);
    }

    [STAThread]
    private static int Main(string[] args)
    {
        try
        {
            Require(args.Length == 2, "Expected mode and account-directory arguments.");
            string outputDirectory = Path.GetDirectoryName(Assembly.GetExecutingAssembly().Location);
            if (args[0] == "item") CheckItem(outputDirectory);
            else if (args[0] == "sync") CheckSync(outputDirectory, args[1]);
            else throw new ArgumentException("Unknown mode: " + args[0]);
            return 0;
        }
        catch (Exception error)
        {
            Console.Error.WriteLine(error);
            return 1;
        }
    }
}
