# ATT Tools Platform Support

This document defines the target platform support, source layout, framework migration policy, migration schedule, and build structure for ATT contributor tools.

The long-term goal is to keep all maintained tool source code in one location, provide a consistent build environment, and support the primary desktop platforms used by contributors.

## Framework Policy

ATT tools will use a two-stage framework strategy.

### Migration Target: .NET 8

The initial modernization and cross-platform migration target is:

```text
net8.0
```

All tools being migrated from .NET Framework or older project structures should first target .NET 8.

.NET 8 is the compatibility baseline for the migration effort.

The purpose of this stage is to:

- remove dependencies on .NET Framework where possible;
- establish a common SDK-style project structure;
- make command-line tools cross-platform;
- establish Runtime Identifier-aware publishing;
- consolidate common build and dependency configuration;
- minimize unrelated framework changes during the migration.

A tool should generally complete its .NET 8 migration before additional framework upgrades are considered.

### Next-Generation Target: .NET 10

The next-generation framework target is:

```text
net10.0
```

.NET 10 should be treated as the target for the next major framework generation after the initial migration is complete.

The intended progression is:

```text
Legacy .NET Framework / existing projects
                ↓
             .NET 8
       Migration Baseline
                ↓
            .NET 10
      Next-Generation Baseline
```

The migration to .NET 8 and the transition to .NET 10 are intentionally treated as separate changes.

The .NET 8 migration is primarily concerned with repository consolidation, portability, dependency cleanup, and reproducible cross-platform builds.

The .NET 10 transition can then be performed on top of that common foundation without mixing a framework-generation upgrade into the initial migration.

## Migration Schedule

.NET 8 LTS reaches its official End of Support on:

```text
November 10, 2026
```

ATT's .NET 8 migration must therefore be completed no later than one month before the official End of Support date:

```text
Migration Deadline
October 10, 2026
```

The schedule is:

| Milestone | Date |
| --- | --- |
| .NET 8 migration deadline | **October 10, 2026** |
| .NET 8 End of Support | **November 10, 2026** |
| Next-generation framework | **.NET 10** |

By **October 10, 2026**, tools within the cross-platform migration scope should:

- have their maintained source code consolidated under the new source layout;
- use SDK-style .NET projects where applicable;
- target `net8.0`;
- build successfully from source without relying on previously committed executables;
- support the applicable desktop Runtime Identifiers defined in this document;
- package native dependencies according to the target Runtime Identifier;
- use the new build and artifact structure rather than writing directly into `.contrib/.tools/`.

Tools explicitly listed under **Temporarily Excluded Tools** are not required to meet the cross-platform portion of this deadline until their platform-specific dependencies are redesigned or removed.

.NET 8 is a migration baseline rather than the final long-term framework target.

After the .NET 8 migration is complete, development should proceed toward the .NET 10 next-generation baseline.

## Supported Platforms

ATT contributor tools should support the following desktop platforms where technically applicable.

| Operating System | Architecture | Runtime Identifier |
| --- | --- | --- |
| Windows | x86 | `win-x86` |
| Windows | x64 | `win-x64` |
| Windows | ARM64 | `win-arm64` |
| Linux | x64 | `linux-x64` |
| Linux | ARM64 | `linux-arm64` |
| macOS | x64 | `osx-x64` |
| macOS | ARM64 | `osx-arm64` |

These seven Runtime Identifiers define the primary supported desktop platform matrix for ATT tools.

### Windows

```text
win-x86
win-x64
win-arm64
```

### Linux

```text
linux-x64
linux-arm64
```

### macOS

```text
osx-x64
osx-arm64
```

## Platform Support Requirements

Unless explicitly excluded below, maintained ATT command-line tools should be designed without dependencies on a specific desktop operating system.

Platform-specific native dependencies must be packaged for the corresponding Runtime Identifier rather than placed in a shared output directory without architecture information.

For example:

```text
runtimes/
├── win-x86/
├── win-x64/
├── win-arm64/
├── linux-x64/
├── linux-arm64/
├── osx-x64/
└── osx-arm64/
```

A tool is considered cross-platform only when its application code and all required native dependencies can run on the supported target.

## Source Layout

Six Visual Studio/C# projects are maintained under `.contrib/src/`, with `.contrib/src/ATT_Tools.sln` as their shared solution: Parser, CSVCleaner, Blizzard API Harvester, Classic Item Detector, Item DB Compare Tool and Profession Automator.

The other six projects retain their original source directories and project filenames under `.contrib/.source/`, using `.contrib/.source/All The Tools.sln`. Migrating this source tree is a separate project. Tool executable names use underscores across both trees; namespaces remain unchanged. Harvester and database comparison batch files call the renamed executables.

The source relocation preserves each project's framework, dependency model, and output directories. Existing shared Release outputs remain in `.contrib/.tools/`; the artifact layout below remains a future migration.

| Tool | Executable in `.contrib/.tools/` |
| --- | --- |
| Parser | `Parser.exe` |
| CSV cleaner | `CSVCleaner.exe` |
| ATT Sync Tool | `ATT_Sync_Tool.exe` |
| AssetDB Builder | `AssetDB_Builder.exe` |
| IconID Converter | `IconID_Converter.exe` |
| Item Database Consolidator | `Item_Database_Consolidator.exe` |
| Skill Level Requirements | `Skill_Level_Requirements.exe` |

Other maintained outputs are `Blizzard_API_Harvester.exe` and `Classic_Item_Detector.exe` under `.contrib/Harvesters/`, `Item_DB_Compare_Tool.exe` under `.contrib/Harvesters/DBs/`, and `Profession_Automator.exe` under its existing project output directory.

Associated DLL, configuration, dependency manifest, and runtime configuration filenames use the same executable stem. `Database.dll` remains the shared ATT Sync Tool dependency.

Maintained Python and JavaScript source should eventually join the same tree. Their current `.contrib/.tools/Localization/` and `.contrib/.tools/Lua/` directories remain in place until that separate migration.

### Current Windows Build

Use the x64 Developer Command Prompt for Visual Studio with the existing .NET Framework targeting packs and .NET 8 SDK installed. From the repository root:

```bat
msbuild .contrib\src\ATT_Tools.sln /restore /t:Rebuild /p:Configuration=Release /p:Platform=x64 /m:1
msbuild ".contrib\.source\All The Tools.sln" /restore /t:Rebuild /p:Configuration=Release /p:Platform=x64 /m:1
```

Managed dependencies are declared by their owner projects. Restore keeps packages in each project's ignored `packages` directory; `.tools` is runtime output, never a managed build input. Profession restores NLua 1.4.1 separately from the shared tools' NLua 1.5.7. See `../src/README.md` for dependency versions and details.

On an ARM64 Windows host using an ARM64 .NET SDK, add `/p:NETCoreSdkRuntimeIdentifier=win-x64` to preserve the existing x64 apphosts. Managed Any CPU targets remain unchanged.

The following proposed structure and shared build settings describe the separate source migration and later modernization work.

### Proposed Structure

```text
.contrib/
├── src/
│   ├── ATT_Tools.sln
│   ├── Directory.Build.props
│   ├── Directory.Packages.props
│   │
│   ├── Parser/
│   │   ├── Parser.csproj
│   │   └── ...
│   │
│   ├── CSVCleaner/
│   │   ├── CSVCleaner.csproj
│   │   └── ...
│   │
│   ├── AssetDB_Builder/
│   │   ├── AssetDB_Builder.csproj
│   │   └── ...
│   │
│   ├── IconID_Converter/
│   │   ├── IconID_Converter.csproj
│   │   └── ...
│   │
│   ├── Item_Database_Consolidator/
│   │   ├── Item_Database_Consolidator.csproj
│   │   └── ...
│   │
│   ├── Skill_Level_Requirements/
│   │   ├── Skill_Level_Requirements.csproj
│   │   └── ...
│   │
│   ├── ATT_Sync_Tool/
│   │   ├── ATT_Sync_Tool.csproj
│   │   └── ...
│   │
│   ├── Database/
│   │   ├── Database.csproj
│   │   └── ...
│   │
│   ├── Blizzard_API_Harvester/
│   │   ├── Blizzard_API_Harvester.csproj
│   │   └── ...
│   │
│   ├── Classic_Item_Detector/
│   │   ├── Classic_Item_Detector.csproj
│   │   └── ...
│   │
│   ├── Item_DB_Compare_Tool/
│   │   ├── Item_DB_Compare_Tool.csproj
│   │   └── ...
│   │
│   ├── Profession_Automator/
│   │   ├── Profession_Automator.csproj
│   │   └── ...
│   │
│   ├── Localization/
│   │   ├── requirements.txt
│   │   ├── object_localization.py
│   │   ├── localize_all_objects.py
│   │   └── sync_objects.py
│   │
│   └── Lua/
│       └── normalize.js
│
├── artifacts/
│   ├── bin/
│   └── publish/
│
└── .db/
```

Project directory names and project filenames use underscores to preserve word boundaries without spaces.

## Shared Build Configuration

Common .NET build configuration should be moved to the root of the source tree rather than duplicated between projects.

```text
.contrib/src/
├── Directory.Build.props
├── Directory.Packages.props
└── ATT_Tools.sln
```

`Directory.Build.props` should contain common compiler and build settings.

During the migration phase, the common target framework should default to:

```xml
<TargetFramework>net8.0</TargetFramework>
```

`Directory.Packages.props` may centrally manage shared NuGet dependency versions.

Individual projects should contain only configuration specific to that tool.

The later transition to .NET 10 should update the common framework baseline after the .NET 8 migration has stabilized.

## Build Output

Build output must not be written directly into source directories.

Intermediate and published binaries should instead use a dedicated artifact directory:

```text
.contrib/artifacts/
├── bin/
└── publish/
```

`bin/` contains normal build output.

`publish/` contains distributable platform-specific builds.

For example:

```text
.contrib/artifacts/publish/
├── win-x86/
│   ├── Parser/
│   ├── CSVCleaner/
│   └── ...
│
├── win-x64/
├── win-arm64/
├── linux-x64/
├── linux-arm64/
├── osx-x64/
└── osx-arm64/
```

CI may instead package each Runtime Identifier as an independent artifact:

```text
ATT-Tools-win-x86.zip
ATT-Tools-win-x64.zip
ATT-Tools-win-arm64.zip
ATT-Tools-linux-x64.tar.gz
ATT-Tools-linux-arm64.tar.gz
ATT-Tools-osx-x64.tar.gz
ATT-Tools-osx-arm64.tar.gz
```

The exact packaging format may change, but platform and architecture must always be explicit.

## `.tools` Migration

The current `.contrib/.tools/` directory combines several unrelated responsibilities:

- executable distribution;
- .NET runtime files;
- third-party libraries;
- native Lua libraries;
- debug symbols;
- tool configuration;
- Python scripts;
- JavaScript scripts;
- regular-expression data files.

This structure should be phased out.

Source files currently stored in `.tools` should move into `.contrib/src/`.

Generated binaries should move into `.contrib/artifacts/` or CI artifacts.

Runtime-specific native libraries should be associated with their corresponding Runtime Identifier instead of being stored together at the root level.

For example, the current layout:

```text
.tools/
├── Parser.exe
├── NLua.dll
├── KeraLua.dll
├── lua54.dll
├── liblua54.so
└── liblua54.dylib
```

should eventually become RID-aware output such as:

```text
artifacts/publish/
├── win-x64/
│   └── Parser/
│       └── ...
│
├── linux-x64/
│   └── Parser/
│       └── ...
│
└── osx-arm64/
    └── Parser/
        └── ...
```

`.contrib/.tools/` may remain temporarily during migration for compatibility with existing scripts and CI workflows, but it should not remain the permanent source or build-output location.

## Temporarily Excluded Tools

The following components are temporarily excluded from the cross-platform requirement because their current implementation depends directly on Windows-specific APIs or UI frameworks.

### ATT Sync Tool

`ATT Sync Tool` is currently implemented as a Windows Forms application.

Its current implementation depends on Windows-specific components including:

- `System.Windows.Forms`
- Windows-specific executable behavior
- WoW installation discovery through the Windows Registry

As a result, the existing implementation cannot be directly published for Linux or macOS.

For the time being, `ATT Sync Tool` remains Windows-only and is excluded from the cross-platform support matrix.

Cross-platform support would require redesigning the tool, for example by separating its core functionality from the Windows UI and platform-specific installation discovery.

### Database

The existing `Database` project is primarily used by `ATT Sync Tool` and currently contains Windows-specific WoW installation discovery using the Windows Registry.

It is therefore also excluded from the cross-platform requirement while it remains coupled to the current `ATT Sync Tool` implementation.

Platform-independent database logic may be separated from the Windows-specific functionality in the future.

## Not Included in the Supported Desktop Matrix

The following Runtime Identifiers or platforms are not currently ATT support targets:

```text
linux-arm
linux-musl-x64
linux-musl-arm64
linux-ppc64le
linux-s390x
Android
iOS
tvOS
browser / WebAssembly
```

Their exclusion does not necessarily mean that ATT tools cannot run on them.

They are simply outside the supported desktop platform matrix and are not required build or release targets.

## Migration Target

The first modernization milestone is:

```text
Unified Source Layout
        +
      .NET 8
        +
Cross-Platform Build
        +
RID-Aware Publishing
```

This milestone must be reached by:

```text
October 10, 2026
```

The migration should prioritize getting the existing tools onto a common, reproducible .NET 8 build infrastructure before adopting .NET 10.

## Next Generation

After the .NET 8 migration is complete and stable, the next-generation baseline is:

```text
.NET 10
```

The .NET 10 transition should be handled as a separate framework upgrade rather than being mixed into the initial portability migration.

## Target Architecture

```text
Legacy Tools
    ↓
.contrib/src/
    ↓
.NET 8 Migration Baseline
    ↓
Cross-Platform Build
    ↓
.contrib/artifacts/
    ↓
├── win-x86
├── win-x64
├── win-arm64
├── linux-x64
├── linux-arm64
├── osx-x64
└── osx-arm64
    ↓
.NET 10 Next-Generation Baseline
```

Windows-specific legacy tools may remain outside the cross-platform matrix temporarily, but new or migrated command-line tools should not introduce new operating-system-specific dependencies without a clear requirement.