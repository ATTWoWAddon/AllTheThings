# ATT Tools Platform Support

This document defines the target platform support, source layout, framework migration policy, migration schedule, and build structure for ATT contributor tools.

The long-term goal is to keep all maintained tool source code in one location, provide a consistent build environment, and support the primary desktop platforms used by contributors.

## Framework Policy

ATT tools that can move off .NET Framework should target .NET 10:

```text
net10.0
```

.NET 8 LTS reaches End of Support on November 10, 2026 (Pacific Time).
.NET 10 LTS is supported through November 14, 2028. See the
[official .NET support policy](https://dotnet.microsoft.com/en-us/platform/support/policy/dotnet-core).
New migrations should target `net10.0` directly.

The migration should:

- remove dependencies on .NET Framework where possible;
- establish a common SDK-style project structure;
- make command-line tools cross-platform;
- establish Runtime Identifier-aware publishing;
- consolidate common build and dependency configuration.

Keep framework, dependency, and publishing changes reviewable as separate steps
where practical.

The intended progression is:

<!-- editorconfig-checker-disable -->
```text
Legacy .NET Framework / existing projects
                ↓
            .NET 10
       Migration Baseline
                ↓
       Cross-Platform Build
```
<!-- editorconfig-checker-enable -->

## Migration Requirements

Tools within the cross-platform migration scope should:

- have their maintained source code consolidated under the new source layout;
- use SDK-style .NET projects where applicable;
- target `net10.0`;
- build successfully from source without relying on previously committed executables;
- support the applicable desktop Runtime Identifiers defined in this document;
- package native dependencies according to the target Runtime Identifier;
- use the new build and artifact structure rather than writing directly into `.contrib/.tools/`.

Tools explicitly listed under **Temporarily Excluded Tools** are not required
to meet the cross-platform requirements until their platform-specific
dependencies are redesigned or removed.

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

All maintained ATT contributor tool source code should eventually be consolidated under a single source directory:

```text
.contrib/
└── src/
```

The existing split between:

```text
.contrib/.source/
.contrib/Source Code/
```

should be removed.

Source code should not be stored in `.contrib/.tools/`.

This applies to maintained contributor tooling regardless of implementation language, including C#, Python, and JavaScript.

### Proposed Structure

```text
.contrib/
├── src/
│   ├── ATT.Tools.sln
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
│   ├── AssetDBBuilder/
│   │   ├── AssetDBBuilder.csproj
│   │   └── ...
│   │
│   ├── IconIDConverter/
│   │   ├── IconIDConverter.csproj
│   │   └── ...
│   │
│   ├── ItemDatabaseConsolidator/
│   │   ├── ItemDatabaseConsolidator.csproj
│   │   └── ...
│   │
│   ├── SkillLevelRequirements/
│   │   ├── SkillLevelRequirements.csproj
│   │   └── ...
│   │
│   ├── ATTSyncTool/
│   │   ├── ATTSyncTool.csproj
│   │   └── ...
│   │
│   ├── Database/
│   │   ├── Database.csproj
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

Project directory names should avoid spaces where practical so that command-line usage, scripting, and CI configuration remain simple.

## Shared Build Configuration

Common .NET build configuration should be moved to the root of the source tree rather than duplicated between projects.

```text
.contrib/src/
├── Directory.Build.props
├── Directory.Packages.props
└── ATT.Tools.sln
```

`Directory.Build.props` should contain common compiler and build settings.

The common target framework for migrated .NET tools should default to:

```xml
<TargetFramework>net10.0</TargetFramework>
```

`Directory.Packages.props` may centrally manage shared NuGet dependency versions.

Individual projects should contain only configuration specific to that tool.

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

The modernization milestone is:

<!-- editorconfig-checker-disable -->
```text
Unified Source Layout
        +
      .NET 10
        +
Cross-Platform Build
        +
RID-Aware Publishing
```
<!-- editorconfig-checker-enable -->

The migration should prioritize a common, reproducible .NET 10 build
infrastructure for maintained tools.

## Target Architecture

```text
Legacy Tools
    ↓
.contrib/src/
    ↓
.NET 10 Migration Baseline
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
```

Windows-specific legacy tools may remain outside the cross-platform matrix temporarily, but new or migrated command-line tools should not introduce new operating-system-specific dependencies without a clear requirement.
