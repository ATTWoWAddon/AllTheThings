# Contributor tool folders

On Windows, install the .NET 8 SDK and the .NET Framework 4.8 targeting pack,
then run this command from the repository root:

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File .contrib/src/Publish-Folders.ps1
```

Each tool and its dependencies are published to a separate folder under
`.contrib/.builds/folder-publish/publish/`. Build and intermediate files are
kept separately under `.contrib/.builds/folder-publish/`. The output directory
must not exist or must be empty; remove a previous output directory yourself or
choose another empty directory with `-OutputRoot`.

The folders use the .NET runtimes installed on the destination machine. The
four .NET Framework tools require .NET Framework 4.8 or a compatible in-place
update. CSVCleaner requires the x64 .NET 8 runtime. Parser and CSVCleaner are
published for Windows x64; the other tools retain their AnyCPU configuration.

Parser also needs the repository's `.contrib/.db` data. Start the published
executable with `.contrib/.tools` as the working directory, for example:

```powershell
Push-Location .contrib/.tools
& (Resolve-Path ../.builds/folder-publish/publish/Parser/Parser.exe) auto
Pop-Location
```

Parser can write output under the repository's `db` folder and update data under
`.contrib/.db`. The published folders do not include repository data, API keys,
or credentials.
