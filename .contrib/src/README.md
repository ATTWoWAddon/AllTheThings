# ATT C# tools

Open `ATT_Tools.sln` for Parser, CSVCleaner and the four tools retained under `src`. The six tools under `.contrib/.source` keep their original directories, project filenames and `All The Tools.sln`; migrating that source tree is separate work. Install the .NET Framework 4.7.2 and 4.8 targeting packs and a .NET SDK supporting the existing .NET 8 tools.

## Restore and build

From the repository root, use Visual Studio MSBuild:

```bat
msbuild .contrib\src\ATT_Tools.sln /restore /t:Rebuild /p:Configuration=Release /p:Platform=x64 /m:1
msbuild ".contrib\.source\All The Tools.sln" /restore /t:Rebuild /p:Configuration=Release /p:Platform=x64 /m:1
```

Use `Debug` for debug builds. On an ARM64 Windows host with an ARM64 .NET SDK, add `/p:NETCoreSdkRuntimeIdentifier=win-x64` to preserve the existing x64 apphosts for the Any CPU tools.

Both source roots contain the same `Directory.Build.props`, which restores NuGet packages into each project's ignored `packages` directory and excludes that cache from SDK source globs. No pre-populated package directories or `.tools` managed DLLs are needed to build.

## Managed dependency ownership

| Project | Owned dependencies |
| --- | --- |
| Parser | Csv 2.0.93, NLua 1.5.7, KeraLua 1.2.13 |
| Database | NLua 1.5.7, KeraLua 1.2.13 |
| ATT_Sync_Tool | Database project reference; inherits its packages |
| Item_Database_Consolidator | NLua 1.5.7, KeraLua 1.2.13 |
| Profession_Automator | NLua 1.5.7, KeraLua 1.2.13 |
| Blizzard_API_Harvester | Microsoft.AspNet.WebApi.Client 5.2.3, Newtonsoft.Json 13.0.3 |
| Skill_Level_Requirements | Newtonsoft.Json 13.0.3 |
| AssetDB_Builder, IconID_Converter, CSVCleaner, Classic_Item_Detector, Item_DB_Compare_Tool | Framework APIs and project source |

The explicit KeraLua 1.2.13 references preserve the runtime version: NLua 1.5.7 alone declares a minimum of KeraLua 1.2.12. All Lua projects use NLua 1.5.7 and KeraLua 1.2.13; both Newtonsoft consumers use 13.0.3. Versions remain explicit in their owner projects. Database, ATT Sync Tool, Item Database Consolidator, Skill Level Requirements, AssetDB Builder and IconID Converter remain under `.contrib/.source`; the other six projects remain under `.contrib/src`. Executable names keep underscores independently of the source filenames.

Profession's table conversion accepts NLua 1.5.7's `Int64` integer values alongside `Double` values, preserving IDs and nested numeric data.

## Runtime outputs

`.contrib/.tools` remains the shared runtime output and script interface. It is never a managed build dependency source. Parser, Database and Consolidator all produce the same NuGet NLua/KeraLua bytes there, and Sync receives Database's runtime closure through its project reference. Profession produces the same NuGet Lua dependencies in its separate output directory.

Skill produces Newtonsoft.Json 13.0.3 under `.tools`; Harvester produces the same package version under `.contrib/Harvesters`, along with WebAPI 5.2.3 and the generated JSON binding redirect.

Legacy projects retain KeraLua's native copy targets; SDK Parser selects the matching native Lua through its Windows runtime identifier. Dependency normalization changes no checked-in native files or layout.
