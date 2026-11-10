// DBContext / AssetDB
using System.Text;
using System.Runtime.InteropServices;

#if ATT_ANYCPU
Architecture processArchitecture = RuntimeInformation.ProcessArchitecture;
if (processArchitecture != Architecture.X64 && processArchitecture != Architecture.Arm64)
{
    Console.Error.WriteLine(
        "AssetDB Builder requires an x64 or ARM64 process; detected " + processArchitecture + ".");
    return -1;
}
#endif

var databaseFolder = "../.db/standard/00 - DB/AssetDB";
Directory.CreateDirectory(databaseFolder);
foreach (var file in Directory.GetFiles("../.raw/AssetDB"))
{
    if (file.EndsWith(".json"))
    {
        Console.WriteLine(file);
        Dictionary<long, bool> AssetDB = new();
        var dbFileName = Path.GetFileNameWithoutExtension(file);
        var o = MiniJSON.Json.Deserialize(File.ReadAllText(file));
        if (o is Dictionary<string, object> db)
        {
            foreach (var keyValuePair in db)
            {
                AssetDB[long.Parse(keyValuePair.Key)] = true;
            }
        }

        var builder = new StringBuilder();
        builder.Append("-- #if ").Append(dbFileName).AppendLine();
        builder.Append("_.AssetDB = {");
        var sortedKeys = AssetDB.Keys.ToList();
        sortedKeys.Sort();
        foreach (var key in sortedKeys)
        {
            builder.AppendLine().Append('[').Append(key).Append("]=1,");
        }
        builder.AppendLine().AppendLine("};").AppendLine("-- #endif");
        File.WriteAllText(Path.Combine(databaseFolder, $"{dbFileName}.lua"), builder.ToString(), Encoding.UTF8);
    }
}

#if ATT_ANYCPU
return 0;
#endif
