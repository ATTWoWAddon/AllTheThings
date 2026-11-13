#!/usr/bin/env python3
"""Wrap a macOS Phase Explorer publish directory in an application bundle."""

import argparse
import plistlib
import shutil
from pathlib import Path


def package(publish: Path, destination: Path, runtime_root: Path | None) -> None:
    publish = publish.resolve(strict=True)
    destination = destination.resolve()
    if destination.suffix != ".app":
        raise ValueError("The destination must end in .app")
    if publish == destination or publish in destination.parents:
        raise ValueError("The application bundle must be outside the publish directory")
    executable = publish / "PhaseExplorer.App"
    for required in (executable, publish / "PhaseExplorer.App.dll", publish / "PhaseExplorer.App.runtimeconfig.json"):
        if not required.is_file():
            raise ValueError(f"Missing published application file: {required}")
    # A shell launcher associates the visible window with the external dotnet process.
    # Launch Services and accessibility inspection need the actual macOS apphost.
    magic = executable.read_bytes()[:4]
    if magic not in (b"\xcf\xfa\xed\xfe", b"\xfe\xed\xfa\xcf", b"\xca\xfe\xba\xbe", b"\xbe\xba\xfe\xca"):
        raise ValueError("The published executable is not a macOS Mach-O apphost")

    contents = destination / "Contents"
    macos = contents / "MacOS"
    shutil.copytree(publish, macos, dirs_exist_ok=True)
    (macos / "PhaseExplorer.App").chmod(0o755)
    metadata = {
        "CFBundleExecutable": "PhaseExplorer.App",
        "CFBundleIdentifier": "org.allthethings.phaseexplorer",
        "CFBundleName": "ATT Phase Explorer",
        "CFBundleDisplayName": "ATT Phase Explorer",
        "CFBundlePackageType": "APPL",
        "CFBundleShortVersionString": "1.0",
        "CFBundleVersion": "1",
        "NSHighResolutionCapable": True,
    }
    if runtime_root is not None:
        runtime_root = runtime_root.resolve(strict=True)
        if not (runtime_root / "dotnet").is_file():
            raise ValueError("The runtime root must contain the dotnet executable")
        metadata["LSEnvironment"] = {"DOTNET_ROOT": str(runtime_root)}
    with (contents / "Info.plist").open("wb") as output:
        plistlib.dump(metadata, output, sort_keys=False)
    print(destination)


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("publish", type=Path, help="macOS dotnet publish output directory")
    parser.add_argument("destination", type=Path, help="output .app bundle")
    parser.add_argument("--runtime-root", type=Path, help="local .NET runtime for framework-dependent QA builds")
    args = parser.parse_args()
    package(args.publish, args.destination, args.runtime_root)


if __name__ == "__main__":
    main()
