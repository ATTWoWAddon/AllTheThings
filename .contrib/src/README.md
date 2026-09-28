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
| Profession_Automator | NLua 1.4.1, KeraLua 1.2.13 |
| Blizzard_API_Harvester | Microsoft.AspNet.WebApi.Client 5.2.3, Newtonsoft.Json 13.0.1 |
| Skill_Level_Requirements | Newtonsoft.Json 13.0.3 |
| AssetDB_Builder, IconID_Converter, CSVCleaner, Classic_Item_Detector, Item_DB_Compare_Tool | Framework APIs and project source |

The explicit KeraLua 1.2.13 references preserve the current runtime version: NLua 1.5.7 alone declares a minimum of KeraLua 1.2.12. Central Package Management is deferred because the two Newtonsoft versions remain distinct.

### Profession's NLua version

Profession uses the official NuGet NLua 1.4.1 package, preserving its previous assembly version while replacing the custom local build. Its explicit KeraLua 1.2.13 reference and generated binding redirect retain the existing Lua 5.4 runtime. Both Lua execution and the application's SavedVariables-to-profession conversion are verified with this combination.

NLua 1.4.1 also bundles older KeraLua/Lua 5.3 files. The resolved managed KeraLua is 1.2.13, and its build target provides the native Lua 5.4 DLL. These assets remain in Profession's separate output directory and do not overwrite the shared `.tools` dependencies. The unused checked-in managed wrappers are removed; the older checked-in native `lua52.dll` files remain untouched.

## Runtime outputs

`.contrib/.tools` remains the shared runtime output and script interface. It is never a managed build dependency source. Parser, Database and Consolidator all produce the same NuGet NLua/KeraLua bytes there, and Sync receives Database's runtime closure through its project reference. Profession keeps its NuGet NLua 1.4.1 in its separate output directory.

Newtonsoft.Json 13.0.3 belongs to Skill's `.tools` output; Harvester's 13.0.1 is output under `.contrib/Harvesters`, so those versions do not overwrite each other. The old checked-in Harvester runtime DLLs had drifted from their declarations; rebuilding restores the declared WebAPI 5.2.3 and Newtonsoft.Json 13.0.1.

Existing native Lua handling is retained. KeraLua's NuGet build targets still copy the same native assets as the previous explicit imports; this change adds no runtime identifiers or native layout.
