// DBContext / AssetDB
using System.Text;

var databaseFolder = "../Parser/DATAS/00 - DB/AssetDB";
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
