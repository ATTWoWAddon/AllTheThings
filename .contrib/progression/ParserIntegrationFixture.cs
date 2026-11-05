using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Reflection;

public abstract class ParserIntegrationFixture
{
    protected const BindingFlags Flags = BindingFlags.Public | BindingFlags.NonPublic | BindingFlags.Static;
    protected static Assembly assembly;
    protected static Type framework, catalog, program, json, objects;
    protected static string root, temp;
    protected static int checks;
    protected static object Invoke(Type type, string method, params object[] args)
    {
        return type.GetMethods(Flags).Single(m => m.Name == method && m.GetParameters().Length == args.Length).Invoke(null, args);
    }
    protected static Dictionary<string, object> D(params object[] pairs)
    {
        var result = new Dictionary<string, object>();
        for (int i = 0; i < pairs.Length; i += 2) result[(string)pairs[i]] = pairs[i + 1];
        return result;
    }
    protected static List<object> L(params object[] values) { return values.ToList(); }
    protected static string Serialize(object value) { return (string)Invoke(json, "Serialize", value); }
    protected static Dictionary<string, object> Read(string path) { return (Dictionary<string, object>)Invoke(json, "Deserialize", File.ReadAllText(path)); }
    protected static void Write(string path, object value) { File.WriteAllText(path, Serialize(value)); }
    protected static void Assert(bool value, string reason)
    {
        if (!value) throw new Exception("FAIL: " + reason);
        ++checks;
    }
    protected static void Reject(Action action, string text)
    {
        bool rejected = false;
        try { action(); } catch (Exception error)
        {
            while (error.InnerException != null) error = error.InnerException;
            Assert(error.Message.Contains(text), "rejection should identify " + text + ": " + error.Message);
            rejected = true;
        }
        Assert(rejected, "expected rejection: " + text);
    }
    protected static object Config { get { return framework.GetProperty("Config", Flags).GetValue(null, null); } }
    protected static void Load(string name, Dictionary<string, object> changes = null)
    {
        framework.GetProperty("Config", Flags).SetValue(null, null, null);
        framework.GetField("_preprocessorTags", Flags).SetValue(null, null);
        Invoke(framework, "InitConfigSettings", "../.db/shared/.config/root.config", false);
        Invoke(framework, "InitConfigSettings", "../.db/standard/.config/retail/retail.config", false);
        Invoke(framework, "InitConfigSettings", "../.db/standard/.config/classic/" + name + ".config", true);
        if (changes != null)
        {
            string path = Path.Combine(temp, "override.config"); Write(path, changes);
            Invoke(framework, "InitConfigSettings", path, false);
        }
        Invoke(framework, "ApplyConfigSettings");
        var config = Config;
        var indexer = config.GetType().GetProperty("Item", BindingFlags.Instance | BindingFlags.NonPublic, null, null, new[] { typeof(string) }, null);
        foreach (string fieldName in new[] { "SINGULAR_PLURAL_FIELDS_LONG", "NON_SORTED_FIELDS", "PASS_THRU_FIELDS" })
        {
            var field = objects.GetField(fieldName, Flags);
            var value = indexer.GetValue(config, new object[] { fieldName });
            var convert = value.GetType().GetMethods(Flags).Single(m => m.Name == "op_Implicit" && m.ReturnType == field.FieldType);
            field.SetValue(null, convert.Invoke(null, new[] { value }));
        }
    }
    protected static List<IDictionary<string, object>> MergeRoutes(params IDictionary<string, object>[] sources)
    {
        var merge = objects.GetMethods(Flags)
            .Single(m => m.Name == "Merge" && m.IsGenericMethodDefinition && m.GetGenericArguments().Length == 1)
            .MakeGenericMethod(typeof(object));
        var result = new List<object>();
        foreach (var source in sources) merge.Invoke(null, new object[] { result, source });
        return result.Cast<IDictionary<string, object>>().ToList();
    }
    protected static string Process(string relative)
    {
        MethodInfo method = program.GetMethod("ProcessContent", Flags, null, new[] { typeof(string) }, null);
        return (string)method.Invoke(null, new object[] { File.ReadAllText(Path.Combine(root, relative)) });
    }
    protected static Dictionary<string, object> Bind(string source, Dictionary<string, object> node)
    {
        Invoke(catalog, "BindSources", D("Instances", L(node)), Path.Combine(root, ".contrib/.db/standard/01 - Dungeons Raids/" + source));
        return node;
    }
    protected static bool Requires(Dictionary<string, object> node, string key)
    {
        object value; return node.TryGetValue("releasePhases", out value) && ((List<object>)value).Contains(key);
    }
    protected static Dictionary<string, object> UlduarFixture()
    {
        return D("instanceID", 759L, "phase", 31L, "g", L(D("itemID", 25L, "phase", 31L), D("itemID", 35L, "u", 1L), D("itemID", 36L, "u", 2L), D("itemID", 37L, "u", 3L), D("itemID", 38L, "phase", 3001L), D("itemID", 39L, "phase", 32L)));
    }

    protected const string UlduarPath = "03 - Wrath of the Lich King/5 Ulduar.lua";
    protected const string UlduarSource = ".contrib/.db/standard/01 - Dungeons Raids/" + UlduarPath;
    protected const string UlduarCallback = "OnUpdate = ULDUAR_PHASE_ONUPDATE";

    protected static int RunFixture(string[] args, string name, Action verify)
    {
        try
        {
            if (args.Length != 2) throw new ArgumentException("Expected the repository root and the CI-built Parser.exe path.");
            if (IntPtr.Size != 8) throw new InvalidOperationException("The Parser fixture must run as a 64-bit process.");
            root = args[0];
            assembly = Assembly.LoadFrom(args[1]);
            checks = 0;
            framework = assembly.GetType("ATT.Framework", true);
            catalog = assembly.GetType("ATT.ProgressionCatalog", true);
            program = assembly.GetType("ATT.Program", true);
            json = assembly.GetType("MiniJSON.Json", true);
            objects = framework.GetNestedType("Objects", BindingFlags.Public);
            Invoke(assembly.GetType("ATT.Export", true), "Initialize");
            temp = Path.Combine(Path.GetTempPath(), "att-parser-integration-" + Guid.NewGuid().ToString("N"));
            Directory.CreateDirectory(temp);
            try
            {
                framework.GetProperty("Automated", Flags).SetValue(null, true, null);
                verify();
                Console.WriteLine(name + ": " + checks + " checks passed.");
                return 0;
            }
            finally { Directory.Delete(temp, true); }
        }
        catch (Exception error)
        {
            Console.Error.WriteLine(error);
            return 1;
        }
    }
}
