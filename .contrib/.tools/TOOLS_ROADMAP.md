# ATT Contributor Tool Roadmap

This document records the state of contributor tools on `master` as of
November 10, 2026, and the work needed to reach the target platform matrix.
A target platform is not considered supported until its build, dependencies,
and tool behavior have been validated.

## Current State

All 11 C# projects use SDK-style project files. They expose only `x64` as a
project platform. Projects remain split across source directories and target
frameworks: five projects are under `.contrib/src/` and six under
`.contrib/.source/`; four target `net10.0` and seven target `net48`.

| Project | Source root | Target framework |
| --- | --- | --- |
| Parser | `.contrib/src/` | `net48` |
| CSVCleaner | `.contrib/src/` | `net10.0` |
| Blizzard API Harvester | `.contrib/src/` | `net48` |
| Classic Item Detector | `.contrib/src/` | `net48` |
| Item DB Compare Tool | `.contrib/src/` | `net48` |
| AssetDB Builder | `.contrib/.source/` | `net10.0` |
| IconID Converter | `.contrib/.source/` | `net10.0` |
| Skill Level Requirements | `.contrib/.source/` | `net10.0` |
| ATT Sync Tool | `.contrib/.source/` | `net48` |
| Database | `.contrib/.source/` | `net48` |
| Item Database Consolidator | `.contrib/.source/` | `net48` |

The projects use three separate solutions:
`.contrib/src/Parser/Parser.sln`,
`.contrib/src/Blizzard API Harvester/Blizzard API Harvester.sln`, and
`.contrib/.source/All The Tools.sln`.

Windows workflows such as `Parser.yml` and `Release.yml` run the committed
`.contrib/.tools/Parser.exe`. The checked-in workflows do not build or publish
the contributor C# projects from source. The `.contrib/.tools/` directory
still contains committed executables, managed and native libraries,
Localization Python scripts, and a JavaScript script for Lua normalization.
Several project outputs still target that directory or the Harvester
directories.

There is no unified `ATT.Tools.sln`, shared `Directory.Build.props` or
`Directory.Packages.props`, or `.contrib/artifacts/` directory on `master`.
No checked-in `master` workflow validates ARM64, Linux, or macOS tool runs.

## Framework Policy

Eligible tools moving off .NET Framework should target `net10.0` directly.
The four tools already targeting `net10.0` retain that target; the seven
`net48` projects need tool-specific migration decisions and validation.
Preserve Windows behavior while changing framework, dependencies, or output
layout, and keep those changes reviewable.

Microsoft lists November 10, 2026 as the end of support for .NET 8 LTS and
November 14, 2028 for .NET 10 LTS in its
[.NET support policy](https://dotnet.microsoft.com/en-us/platform/support/policy/dotnet-core).

## Target Platforms

These are planned Runtime Identifiers for maintained command-line tools
where their code and dependencies permit cross-platform operation. They are
not a statement of current build or runtime coverage.

| Operating system | Architecture | Runtime Identifier | State on `master` |
| --- | --- | --- | --- |
| Windows | x64 | `win-x64` | x64 project platform; workflows run committed Parser binary |
| Windows | ARM64 | `win-arm64` | No source build or runtime validation |
| Linux | x64 | `linux-x64` | No source build or runtime validation |
| Linux | ARM64 | `linux-arm64` | No source build or runtime validation |
| macOS | x64 | `osx-x64` | No source build or runtime validation |
| macOS | ARM64 | `osx-arm64` | No source build or runtime validation |

`win-x86` is excluded from new and migrated tool targets. A tool reaches
support for a target only after it builds from source, runs functional checks
on that target, and ships any required native dependencies for the matching
architecture.
The existing x64 project setting alone does not establish a `win-x64`
publish package.

## Remaining Work

1. **Build from source on Windows x64.** Add CI builds for the existing
   project locations. Validate the resulting tools, especially Parser,
   against the behavior expected by workflows that use committed binaries.
2. **Consolidate maintained source.** Move the six projects still under
   `.contrib/.source/` into `.contrib/src/`, and move the maintained Python
   and JavaScript sources out of `.contrib/.tools/`. Update references,
   solution paths, and script consumers as each move is made.
3. **Unify build configuration.** Add a solution under `.contrib/src/` and
   share common build settings where they apply. Keep target frameworks
   explicit per project while `net48` and `net10.0` coexist. Centralize
   NuGet versions only where this reduces duplicated maintenance.
4. **Modernize remaining tools.** Migrate eligible `net48` command-line
   projects to `net10.0` with Windows output and behavior checks. Keep
   the Windows-specific exceptions below separate until redesigned.
5. **Add platform builds and validation.** Resolve native dependencies,
   produce packages for each applicable target RID, and run the tools on
   that platform. Validate configuration, output, and exit behavior before
   claiming support for ARM64, Linux, or macOS.
6. **Move distributable output.** Produce build and RID-specific publish
   artifacts under `.contrib/artifacts/` or as CI artifacts. Update
   workflows and scripts to use them before retiring committed binaries
   from `.contrib/.tools/`.

A proposed shared layout is:

```text
.contrib/
├── src/
│   ├── ATT.Tools.sln
│   ├── Directory.Build.props
│   ├── <tool projects>/
│   ├── Localization/
│   └── Lua/
└── artifacts/
    ├── bin/
    └── publish/<rid>/<tool>/
```

`Directory.Packages.props` may be added when centrally managed package
versions are useful. Platform-specific libraries belong with their target
RID, for example under `runtimes/<rid>/` or in the published package.
The exact archive format can vary, but every package must identify its
operating system and architecture.

## Windows-Specific Exceptions

`ATT Sync Tool` uses Windows Forms and Windows Registry discovery. Its
current implementation remains Windows-only. Cross-platform support
requires separating reusable logic from the UI and Windows discovery.

`Database` is coupled to `ATT Sync Tool` and also uses Windows Registry
discovery. It remains outside the cross-platform requirement until that
dependency is separated. These exceptions do not prevent source or build
layout improvements for either project.

## Outside the Target Matrix

The following targets are outside the build and release scope. In particular,
`win-x86` is excluded from new and migrated tool projects:

```text
win-x86
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
