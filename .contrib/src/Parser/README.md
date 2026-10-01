# Parser tools

Parser targets .NET Framework 4.8; CSVCleaner targets .NET 8. Install Visual Studio's .NET Framework 4.8 targeting pack and a .NET SDK that supports .NET 8. Running the tools requires the corresponding Windows runtime and architecture.

Run these commands from this directory:

```powershell
dotnet build Parser.csproj -c Debug -p:Platform=x64
dotnet build ..\CSVCleaner\CSVCleaner.csproj -c Debug -p:Platform=x64
dotnet build Parser.csproj -c Release -p:Platform=x86
dotnet build ..\CSVCleaner\CSVCleaner.csproj -c Release -p:Platform=x86

dotnet publish Parser.csproj -c Release -p:Platform=x64 -p:PublishProfile=x64
dotnet publish ..\CSVCleaner\CSVCleaner.csproj -c Release -p:Platform=x64 -p:PublishProfile=x64
```

Use `x86` for both `Platform` and `PublishProfile` to publish x86 tools. Visual Studio can use the `x64` and `x86` Folder publish profiles under each project's `Properties/PublishProfiles` directory.

Restore runs automatically and keeps NuGet packages in each project's ignored `packages` directory. Build output for x64 Release goes directly to `.contrib/.tools`. Other configurations use `.contrib/.tools/<platform>/<configuration>/<framework>/`, keeping Debug files separate. Publish output is separate:

- Parser: `.contrib/.builds/Parser/<platform>/Release/net48/`
- CSVCleaner: `.contrib/.builds/CSVCleaner/<platform>/Release/net8.0/`

Override the destination with `-p:PublishDir="C:/my publish folder/"`. Parser's data paths are resolved from the working directory; continue using `.contrib/.tools` as the working directory when running a published Parser with the existing configurations.

The shared Visual Studio solution is `../ATT_Tools.sln`. The commands above build the Parser tools directly.
