// CI-only draft: compile an x64 .NET Framework harness and run one process per
// freshly built application from a copied output folder. Never call Main.
using System;
using System.Collections.Generic;
using System.IO;
using System.Reflection;

internal static class OfflineFixture
{
    private static void Require(bool value, string message)
    {
        if (!value) throw new InvalidOperationException(message);
    }

    public static int Main(string[] args)
    {
        try
        {
            Require(args.Length == 2, "expected <absolute-exe> <harvester|classic|compare>");
            string path = Path.GetFullPath(args[0]);
            Require(Path.IsPathRooted(args[0]) && File.Exists(path), "missing application");
            Assembly assembly = Assembly.LoadFrom(path);
            Require(String.Equals(Path.GetFullPath(assembly.Location), path, StringComparison.OrdinalIgnoreCase), "wrong assembly loaded");
            Type json = assembly.GetType("MiniJSON.Json", true);
            MethodInfo parse = json.GetMethod("Deserialize", BindingFlags.Public | BindingFlags.Static);
            MethodInfo write = json.GetMethod("Serialize", BindingFlags.Public | BindingFlags.Static);
            string input = "{\"id\":101,\"name\":\"synthetic\",\"flags\":[true,false],\"nested\":{\"value\":\"ok\"}}";
            var result = (Dictionary<string, object>)parse.Invoke(null, new object[] { input });
            Require(result.Count == 4 && Convert.ToInt32(result["id"]) == 101 && (string)result["name"] == "synthetic", "JSON fields");
            var flags = (List<object>)result["flags"];
            Require(flags.Count == 2 && (bool)flags[0] && !(bool)flags[1], "JSON flags");
            var nested = (Dictionary<string, object>)result["nested"];
            Require(nested.Count == 1 && (string)nested["value"] == "ok", "JSON nested value");
            string encoded = (string)write.Invoke(null, new object[] { result });
            var roundtrip = (Dictionary<string, object>)parse.Invoke(null, new object[] { encoded });
            Require(roundtrip.Count == 4 && Convert.ToInt32(roundtrip["id"]) == 101 && (string)roundtrip["name"] == "synthetic", "JSON round trip");
            if (args[1] == "classic")
            {
                Type program = assembly.GetType("Classic_Item_Detector.Program", true);
                MethodInfo cleanup = program.GetMethod("CleanUpClasses", BindingFlags.NonPublic | BindingFlags.Static);
                var classes = (List<object>)cleanup.Invoke(null, new object[] { new List<object> { 7, 6, 1, 12 } });
                Require(classes.Count == 2 && Convert.ToInt32(classes[0]) == 1 && Convert.ToInt32(classes[1]) == 7, "classic class filtering");
            }
            else Require(args[1] == "harvester" || args[1] == "compare", "unknown case");
            Console.WriteLine("PASS " + args[1] + " " + assembly.Location);
            return 0;
        }
        catch (Exception e) { Console.Error.WriteLine(e); return 1; }
    }
}
