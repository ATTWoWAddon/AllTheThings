#!/usr/bin/env python3
"""Temporary CI harness for byte-for-byte project output comparison."""

from __future__ import annotations

import argparse
import hashlib
import json
import os
import platform
import shutil
import subprocess
import sys
import traceback
from pathlib import Path
from typing import Any

BASE_SHA = "c90baf94d3d9c0799a942b505b871e2fcf1c36f6"
NORMALIZED_SHA = "55fa4a6fab2b4f90d12728db2f445e23d9dc3df4"
SDK_VERSION = "10.0.403"

PROJECTS: list[dict[str, Any]] = [
    {
        "key": "att_sync_tool",
        "path": ".contrib/.source/ATT Sync Tool/ATT Sync Tool.csproj",
        "framework": "net48",
        "main_outputs": ["ATT Sync Tool.exe"],
    },
    {
        "key": "assetdb_builder",
        "path": ".contrib/.source/AssetDB Builder/AssetDB Builder.csproj",
        "framework": "net10.0",
        "main_outputs": ["AssetDB Builder.dll", "AssetDB Builder.exe"],
    },
    {
        "key": "database",
        "path": ".contrib/.source/Database/Database.csproj",
        "framework": "net48",
        "main_outputs": ["Database.dll"],
    },
    {
        "key": "iconid_converter",
        "path": ".contrib/.source/IconID Converter/IconID Converter.csproj",
        "framework": "net10.0",
        "main_outputs": ["IconID Converter.dll", "IconID Converter.exe"],
    },
    {
        "key": "item_database_consolidator",
        "path": ".contrib/.source/Item Database Consolidator/Item Database Consolidator.csproj",
        "framework": "net48",
        "main_outputs": ["Item Database Consolidator.exe"],
    },
    {
        "key": "skill_level_requirements",
        "path": ".contrib/.source/Skill Level Requirements/Skill Level Requirements.csproj",
        "framework": "net10.0",
        "main_outputs": ["Skill Level Requirements.dll", "Skill Level Requirements.exe"],
    },
    {
        "key": "blizzard_api_harvester",
        "path": ".contrib/src/Blizzard API Harvester/Blizzard API Harvester.csproj",
        "framework": "net48",
        "main_outputs": ["Blizzard API Harvester.exe"],
    },
    {
        "key": "csvcleaner",
        "path": ".contrib/src/CSVCleaner/CSVCleaner.csproj",
        "framework": "net10.0",
        "main_outputs": ["CSVCleaner.dll", "CSVCleaner.exe"],
        "no_pdb_release": True,
    },
    {
        "key": "classic_item_detector",
        "path": ".contrib/src/Classic Item Detector/Classic Item Detector.csproj",
        "framework": "net48",
        "main_outputs": ["Classic Item Detector.exe"],
    },
    {
        "key": "item_db_compare_tool",
        "path": ".contrib/src/Item DB Compare Tool/Item DB Compare Tool.csproj",
        "framework": "net48",
        "main_outputs": ["Item DB Compare Tool.exe"],
    },
    {
        "key": "parser",
        "path": ".contrib/src/Parser/Parser.csproj",
        "framework": "net48",
        "main_outputs": ["Parser.exe"],
        "no_pdb_release": True,
    },
]

# Hashes of the exact checked-out bytes at the local master baseline and the
# signed normalization commit. This also catches checkout-index failing to
# apply the corresponding .gitattributes rule.
BASE_SOURCE_SHA256 = {
    ".contrib/.source/ATT Sync Tool/ATT Sync Tool.csproj": "30ea1f4d4e6efab24c994b6aedeac3bfaab98d36c2e59895bce737df931ba07f",
    ".contrib/.source/AssetDB Builder/AssetDB Builder.csproj": "91091bf8281d59656e84468f55b962d117e4815d088c9b85334a31af30c36c76",
    ".contrib/.source/Database/Database.csproj": "26ff2049b30ea0bc8fdb6b740e068c50972b9bcf713141b6bc1de4d8414dadfb",
    ".contrib/.source/IconID Converter/IconID Converter.csproj": "384528b6fa646f1eb3418db619e2f8c1c0e432167efc8b97224ad7c873d58d94",
    ".contrib/.source/Item Database Consolidator/Item Database Consolidator.csproj": "5451b709c401a4451924feab99ca531a1abf8ad1b3d8e09952eb9c9f5c40b725",
    ".contrib/.source/Skill Level Requirements/Skill Level Requirements.csproj": "7656da6a48d8fe18c711d0d3120156cbca245b15e657b359b82c55fdc28c5d96",
    ".contrib/src/Blizzard API Harvester/Blizzard API Harvester.csproj": "9b95d58dad59e31940511aebbf17beb356c7e06789cf4d7b2edca154ff83a0e3",
    ".contrib/src/CSVCleaner/CSVCleaner.csproj": "4a336fadebae08319bca0027f7e94fdcc2b8fc75fe4a414a3292771fcd8b5d8f",
    ".contrib/src/Classic Item Detector/Classic Item Detector.csproj": "d58a526f7018cfa1bee3cb3e7803a4f7c15d93832996ad33140ec608099001e3",
    ".contrib/src/Item DB Compare Tool/Item DB Compare Tool.csproj": "21356e54411f528b820f475be62c6b3fd035f3f9bde4913307141bda08fe6d25",
    ".contrib/src/Parser/Parser.csproj": "b0b9a4bac12ee06c7f3860bf63825cf9a41353343e48404352257d2f5f9b48ca",
}

NORMALIZED_SOURCE_SHA256 = {
    ".contrib/.source/ATT Sync Tool/ATT Sync Tool.csproj": "02923663f62e63756db811eef73a0be9da5888c1748bbdff3afa5ef5a7e65206",
    ".contrib/.source/AssetDB Builder/AssetDB Builder.csproj": "0b9ac84342b9e238640b50806f5014ebca8db443785b830f480c3459035b0a2a",
    ".contrib/.source/Database/Database.csproj": "6c4adb068e8ee697c5e1952936c9160a0bf98713fda87e2e3e955158a1f58d75",
    ".contrib/.source/IconID Converter/IconID Converter.csproj": "5b4dd491fb2ad0e19229392fa5bdb13dbe21ec3926fabb3525f1763705dab21a",
    ".contrib/.source/Item Database Consolidator/Item Database Consolidator.csproj": "b79f26d95491ae070d44d646e4adf448613821f57bbe5ebf37975e8695ef9f9c",
    ".contrib/.source/Skill Level Requirements/Skill Level Requirements.csproj": "af0b379d6ac2003d083d5b2ac2173836fc71c849b2449299bc294aded5a0a81c",
    ".contrib/src/Blizzard API Harvester/Blizzard API Harvester.csproj": "db2af4f9e75eb9f7b9c469e3b430ec9234c31eef33cde60e6c91d1164f4e8aef",
    ".contrib/src/CSVCleaner/CSVCleaner.csproj": "08ca96f184eff42d004c37d76e8e0ff8f3047f6f1386cde194b656115d2b926b",
    ".contrib/src/Classic Item Detector/Classic Item Detector.csproj": "c5eea0d95972835fd624268d9075f4ebd7ec04f9372ecba6ef1b18b3f5129e8a",
    ".contrib/src/Item DB Compare Tool/Item DB Compare Tool.csproj": "990ed1dce5d0a59e912bb25de3f719b91b731a097d18659bce788a1d337d24d1",
    ".contrib/src/Parser/Parser.csproj": "8653259ff5bab563a53b290359c9d5bc06c04dabc548c877aceb231a013338a3",
}

BASE_CRLF_COUNT = {
    ".contrib/.source/ATT Sync Tool/ATT Sync Tool.csproj": 26,
    ".contrib/.source/AssetDB Builder/AssetDB Builder.csproj": 17,
    ".contrib/.source/Database/Database.csproj": 25,
    ".contrib/.source/IconID Converter/IconID Converter.csproj": 17,
    ".contrib/.source/Item Database Consolidator/Item Database Consolidator.csproj": 18,
    ".contrib/.source/Skill Level Requirements/Skill Level Requirements.csproj": 20,
    ".contrib/src/Blizzard API Harvester/Blizzard API Harvester.csproj": 32,
    ".contrib/src/CSVCleaner/CSVCleaner.csproj": 26,
    ".contrib/src/Classic Item Detector/Classic Item Detector.csproj": 25,
    ".contrib/src/Item DB Compare Tool/Item DB Compare Tool.csproj": 22,
    ".contrib/src/Parser/Parser.csproj": 31,
}

BASE_BOM_PATHS = {
    path for path in BASE_SOURCE_SHA256
    if path != ".contrib/.source/Skill Level Requirements/Skill Level Requirements.csproj"
}

CONFIGURATIONS = ("Debug", "Release")
COMPILE_PROPERTIES = (
    "-p:Deterministic=true",
    "-p:EnableSourceLink=false",
    "-p:IncludeSourceRevisionInInformationalVersion=false",
    "-p:UseCommonOutputDirectory=false",
)


def atomic_json(path: Path, value: Any) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    temp_path = path.with_suffix(path.suffix + ".tmp")
    temp_path.write_text(
        json.dumps(value, ensure_ascii=False, indent=2) + "\n",
        encoding="utf-8",
        newline="\n",
    )
    temp_path.replace(path)


def run_logged(command: list[str], cwd: Path, log_path: Path) -> None:
    log_path.parent.mkdir(parents=True, exist_ok=True)
    with log_path.open("w", encoding="utf-8", newline="\n") as log:
        log.write("COMMAND " + json.dumps(command, ensure_ascii=False) + "\n")
        log.write("CWD " + str(cwd) + "\n")
        log.flush()
        print(f"$ {json.dumps(command, ensure_ascii=False)}", flush=True)
        process = subprocess.Popen(
            command,
            cwd=cwd,
            stdout=subprocess.PIPE,
            stderr=subprocess.STDOUT,
            text=True,
            encoding="utf-8",
            errors="replace",
            bufsize=1,
        )
        assert process.stdout is not None
        for line in process.stdout:
            log.write(line)
            print(line, end="", flush=True)
        return_code = process.wait()
        log.write(f"EXIT_CODE {return_code}\n")
    if return_code != 0:
        raise RuntimeError(
            f"Command failed with exit code {return_code}; full log: {log_path}"
        )


def git(source_root: Path, *args: str) -> str:
    result = subprocess.run(
        ["git", "-c", "core.hooksPath=/dev/null", "-c", "core.fsmonitor=false", *args],
        cwd=source_root,
        check=True,
        stdout=subprocess.PIPE,
        stderr=subprocess.STDOUT,
        text=True,
        encoding="utf-8",
        errors="replace",
    )
    return result.stdout.strip()


def source_shape(data: bytes) -> dict[str, Any]:
    crlf = data.count(b"\r\n")
    return {
        "sha256": hashlib.sha256(data).hexdigest(),
        "bytes": len(data),
        "utf8_bom": data.startswith(b"\xef\xbb\xbf"),
        "crlf": crlf,
        "bare_lf": data.count(b"\n") - crlf,
        "bare_cr": data.count(b"\r") - crlf,
    }


def checkout_revision(
    source_root: Path, label: str, sha: str, artifact_root: Path
) -> dict[str, Any]:
    git(source_root, "checkout", "--force", "--detach", sha)
    checked_out = git(source_root, "rev-parse", "HEAD").lower()
    if checked_out != sha.lower():
        raise RuntimeError(f"{label}: expected {sha}, checked out {checked_out}")

    project_paths = [entry["path"] for entry in PROJECTS]
    tracked_projects = set(filter(None, git(
        source_root, "ls-files", "-z", "--", "*.csproj"
    ).split("\0")))
    if tracked_projects != set(project_paths):
        raise RuntimeError(
            f"{label}: configured project set differs from tracked projects: "
            f"missing={sorted(tracked_projects - set(project_paths))}, "
            f"extra={sorted(set(project_paths) - tracked_projects)}"
        )
    git(source_root, "checkout-index", "--force", "--", *project_paths)

    expected_hashes = (
        BASE_SOURCE_SHA256 if label == "base" else NORMALIZED_SOURCE_SHA256
    )
    source_validation: dict[str, Any] = {}
    for project in PROJECTS:
        relative = project["path"]
        actual = source_shape((source_root / relative).read_bytes())
        expected_count = BASE_CRLF_COUNT[relative]
        if label == "base":
            expected_bom = relative in BASE_BOM_PATHS
            valid_shape = (
                actual["crlf"] == expected_count
                and actual["bare_lf"] == 0
                and actual["bare_cr"] == 0
                and actual["utf8_bom"] == expected_bom
            )
        else:
            valid_shape = (
                actual["crlf"] == 0
                and actual["bare_lf"] == expected_count
                and actual["bare_cr"] == 0
                and not actual["utf8_bom"]
            )
        if actual["sha256"] != expected_hashes[relative] or not valid_shape:
            raise RuntimeError(
                f"{label}: unexpected source bytes for {relative}: "
                f"expected_sha256={expected_hashes[relative]}, actual={actual}"
            )
        source_validation[relative] = actual

    return {
        "label": label,
        "commit": checked_out,
        "source_files": source_validation,
    }


def remove_project_intermediates(source_root: Path, artifact_root: Path) -> None:
    for project in PROJECTS:
        project_dir = Path(project["path"]).parent
        tracked = git(
            source_root,
            "ls-files",
            "--",
            str(project_dir / "obj"),
            str(project_dir / "bin"),
        )
        if tracked:
            raise RuntimeError(
                f"Refusing to remove tracked build outputs under {project_dir}"
            )
        for directory in ("obj", "bin"):
            build_dir = source_root / project_dir / directory
            if build_dir.exists():
                shutil.rmtree(build_dir)

    # Every root project/configuration combination gets a clean, isolated OutDir.
    output_root = artifact_root / "build-output"
    if output_root.exists():
        shutil.rmtree(output_root)
    output_root.mkdir(parents=True, exist_ok=True)


def output_hashes(output_dir: Path) -> dict[str, dict[str, Any]]:
    files: dict[str, dict[str, Any]] = {}
    for path in sorted(item for item in output_dir.rglob("*") if item.is_file()):
        relative = path.relative_to(output_dir).as_posix()
        data = path.read_bytes()
        files[relative] = {
            "sha256": hashlib.sha256(data).hexdigest(),
            "bytes": len(data),
        }
    return files


def resolved_restore_graph(project_path: Path) -> dict[str, Any]:
    """Record the resolved versions, package hashes, and target assets."""
    assets_path = project_path.parent / "obj" / "project.assets.json"
    assets = json.loads(assets_path.read_text(encoding="utf-8"))
    libraries = assets["libraries"]
    targets = assets["targets"]
    if not isinstance(libraries, dict) or not isinstance(targets, dict) or not targets:
        raise RuntimeError(f"Invalid restore graph in {assets_path}")
    for name, library in libraries.items():
        if library.get("type") == "package" and not library.get("sha512"):
            raise RuntimeError(f"Package hash missing for {name} in {assets_path}")
    return {"libraries": libraries, "targets": targets}


def validate_expected_outputs(
    project: dict[str, Any], configuration: str, output_dir: Path
) -> list[str]:
    key = f"{project['key']}/{configuration}"
    required_outputs = list(project["main_outputs"])
    project_name = Path(project["path"]).stem
    if project["framework"] == "net10.0":
        required_outputs.extend([
            f"{project_name}.deps.json", f"{project_name}.runtimeconfig.json"
        ])
    if project["key"] == "skill_level_requirements":
        required_outputs.append("Newtonsoft.Json.dll")
    if project["key"] == "att_sync_tool":
        required_outputs.append("Database.dll")
    primary_pdb = f"{project_name}.pdb"
    omit_primary_pdb = (
        configuration == "Release" and project.get("no_pdb_release", False)
    )
    if not omit_primary_pdb:
        required_outputs.append(primary_pdb)
    for filename in required_outputs:
        output_path = output_dir / filename
        if not output_path.is_file() or output_path.stat().st_size == 0:
            raise RuntimeError(
                f"Required output missing or empty for {key}: {output_path}"
            )
    if omit_primary_pdb and (output_dir / primary_pdb).exists():
        raise RuntimeError(f"Unexpected primary Release PDB in {key}")
    return required_outputs


def snapshot_outputs(
    output_dir: Path, artifact_root: Path, revision_label: str,
    project_key: str, configuration: str
) -> None:
    destination = (
        artifact_root
        / "binaries"
        / revision_label
        / project_key
        / configuration
    )
    if destination.exists():
        shutil.rmtree(destination)
    shutil.copytree(output_dir, destination)


def build_revision(
    source_root: Path,
    label: str,
    checkout_record: dict[str, Any],
    artifact_root: Path,
) -> dict[str, Any]:
    version = subprocess.run(
        ["dotnet", "--version"],
        cwd=source_root,
        check=True,
        stdout=subprocess.PIPE,
        stderr=subprocess.STDOUT,
        text=True,
        encoding="utf-8",
        errors="replace",
    ).stdout.strip()
    if version != SDK_VERSION:
        raise RuntimeError(
            f"Expected .NET SDK {SDK_VERSION} from source root; found {version}"
        )

    result: dict[str, Any] = {
        **checkout_record,
        "dotnet_sdk": version,
        "builds": {},
    }
    atomic_json(artifact_root / "manifests" / f"{label}.json", result)

    for project in PROJECTS:
        project_path = source_root / project["path"]
        for configuration in CONFIGURATIONS:
            key = f"{project['key']}/{configuration}"
            remove_project_intermediates(source_root, artifact_root)
            output_dir = (
                artifact_root
                / "build-output"
                / project["key"]
                / configuration
            )
            output_dir.mkdir(parents=True, exist_ok=True)

            log_dir = (
                artifact_root / "logs" / label / project["key"] / configuration
            )
            binlog_dir = (
                artifact_root / "binlogs" / label / project["key"] / configuration
            )
            binlog_dir.mkdir(parents=True, exist_ok=True)
            restore_binlog = str(binlog_dir / "restore.binlog")
            build_binlog = str(binlog_dir / "build.binlog")
            out_dir_arg = str(output_dir) + os.sep

            restore_command = [
                "dotnet",
                "restore",
                str(project_path),
                "--verbosity",
                "minimal",
                f"-p:Configuration={configuration}",
                "-p:Platform=x64",
                f"-p:OutDir={out_dir_arg}",
                *COMPILE_PROPERTIES,
                f"-binaryLogger:{restore_binlog}",
            ]
            run_logged(
                restore_command,
                source_root,
                log_dir / "restore.log",
            )
            if not Path(restore_binlog).is_file() or Path(restore_binlog).stat().st_size == 0:
                raise RuntimeError(f"Restore binlog missing or empty: {restore_binlog}")
            restore_graph = resolved_restore_graph(project_path)

            build_command = [
                "dotnet",
                "build",
                str(project_path),
                "--no-restore",
                "--configuration",
                configuration,
                "--verbosity",
                "minimal",
                "-p:Platform=x64",
                f"-p:OutDir={out_dir_arg}",
                *COMPILE_PROPERTIES,
                f"-binaryLogger:{build_binlog}",
            ]
            run_logged(
                build_command,
                source_root,
                log_dir / "build.log",
            )

            if not Path(build_binlog).is_file() or Path(build_binlog).stat().st_size == 0:
                raise RuntimeError(f"Build binlog missing or empty: {build_binlog}")

            required_outputs = validate_expected_outputs(project, configuration, output_dir)
            hashes = output_hashes(output_dir)
            if not hashes:
                raise RuntimeError(f"No output files were produced for {key}")

            build_record = {
                "project": project["path"],
                "target_framework": project["framework"],
                "configuration": configuration,
                "platform": "x64",
                "out_dir": str(output_dir),
                "restore_graph": restore_graph,
                "required_outputs": required_outputs,
                "output_file_count": len(hashes),
                "pdb_count": sum(
                    1 for filename in hashes
                    if Path(filename).suffix.lower() == ".pdb"
                ),
                "outputs": hashes,
            }
            result["builds"][key] = build_record
            atomic_json(artifact_root / "manifests" / f"{label}.json", result)
            snapshot_outputs(
                output_dir, artifact_root, label, project["key"], configuration
            )
            print(
                f"Completed {label}: {key} ({len(hashes)} output files)",
                flush=True,
            )

    return result


def compare_manifests(
    base: dict[str, Any], normalized: dict[str, Any], artifact_root: Path
) -> dict[str, Any]:
    base_builds = base["builds"]
    normalized_builds = normalized["builds"]
    differences: dict[str, Any] = {}
    expected = {
        f"{project['key']}/{configuration}"
        for project in PROJECTS for configuration in CONFIGURATIONS
    }
    base_keys = set(base_builds)
    normalized_keys = set(normalized_builds)
    if len(expected) != 22 or base_keys != expected or normalized_keys != expected:
        incomplete = {
            "result": "incomplete",
            "base_commit": base["commit"],
            "normalized_commit": normalized["commit"],
            "missing_from_base": sorted(expected - base_keys),
            "missing_from_normalized": sorted(expected - normalized_keys),
            "unexpected_in_base": sorted(base_keys - expected),
            "unexpected_in_normalized": sorted(normalized_keys - expected),
        }
        atomic_json(artifact_root / "comparison.json", incomplete)
        raise RuntimeError("Build combinations are incomplete or unexpected; see comparison.json")
    for key in sorted(expected):
        left = base_builds[key]["outputs"]
        right = normalized_builds[key]["outputs"]
        build_differences: dict[str, Any] = {}
        if left != right:
            files: dict[str, Any] = {}
            for filename in sorted(set(left) | set(right)):
                if left.get(filename) != right.get(filename):
                    files[filename] = {
                        "base": left.get(filename),
                        "normalized": right.get(filename),
                    }
            build_differences["outputs"] = files
        if base_builds[key]["restore_graph"] != normalized_builds[key]["restore_graph"]:
            build_differences["restore_graph"] = "Resolved package graph or content hashes differ"
        if build_differences:
            differences[key] = build_differences

    comparison = {
        "result": "identical" if not differences else "different",
        "base_commit": base["commit"],
        "normalized_commit": normalized["commit"],
        "build_combinations": len(expected),
        "binary_differences": differences,
    }
    atomic_json(artifact_root / "comparison.json", comparison)
    if differences:
        raise RuntimeError(
            f"Binary outputs differ in {len(differences)} build combination(s); "
            f"see {artifact_root / 'comparison.json'}"
        )
    return comparison


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--source-root", required=True, type=Path)
    parser.add_argument("--artifact-root", required=True, type=Path)
    args = parser.parse_args()

    source_root = args.source_root.resolve()
    artifact_root = args.artifact_root.resolve()
    artifact_root.mkdir(parents=True, exist_ok=True)

    base_sha = os.environ.get("ATT_CSPROJ_BASE_SHA", BASE_SHA).lower()
    normalized_sha = os.environ.get(
        "ATT_CSPROJ_NORMALIZED_SHA", NORMALIZED_SHA
    ).lower()
    if base_sha != BASE_SHA or normalized_sha != NORMALIZED_SHA:
        raise RuntimeError("Workflow SHAs do not match the reviewed comparison pair.")
    project_paths = [project["path"] for project in PROJECTS]
    project_keys = [project["key"] for project in PROJECTS]
    if len(PROJECTS) != 11 or len(set(project_paths)) != 11 or len(set(project_keys)) != 11:
        raise RuntimeError("Expected 11 projects with unique paths and keys.")
    expected_paths = set(project_paths)
    for table in (BASE_SOURCE_SHA256, NORMALIZED_SOURCE_SHA256, BASE_CRLF_COUNT):
        if set(table) != expected_paths:
            raise RuntimeError("Configured project set differs from a source verification table.")
    if not (source_root / ".git").exists() and not git(
        source_root, "rev-parse", "--git-dir"
    ):
        raise RuntimeError(f"No Git checkout found at {source_root}")

    tool_versions = {
        "python": sys.version,
        "platform": platform.platform(),
        "git": git(source_root, "--version"),
        "dotnet": subprocess.run(
            ["dotnet", "--version"],
            cwd=source_root,
            check=True,
            stdout=subprocess.PIPE,
            stderr=subprocess.STDOUT,
            text=True,
            encoding="utf-8",
            errors="replace",
        ).stdout.strip(),
        "source_root": str(source_root),
        "artifact_root": str(artifact_root),
    }
    atomic_json(artifact_root / "versions.json", tool_versions)

    try:
        for revision in (base_sha, normalized_sha):
            git(source_root, "cat-file", "-e", f"{revision}^{{commit}}")
        parent_sha = git(source_root, "rev-parse", f"{normalized_sha}^").lower()
        if parent_sha != base_sha:
            raise RuntimeError(
                f"Normalization commit parent {parent_sha} is not the expected base {base_sha}."
            )
        base_checkout = checkout_revision(
            source_root, "base", base_sha, artifact_root
        )
        base_manifest = build_revision(
            source_root, "base", base_checkout, artifact_root
        )

        normalized_checkout = checkout_revision(
            source_root, "normalized", normalized_sha, artifact_root
        )
        normalized_manifest = build_revision(
            source_root, "normalized", normalized_checkout, artifact_root
        )

        comparison = compare_manifests(
            base_manifest, normalized_manifest, artifact_root
        )
        if comparison["build_combinations"] != 22:
            raise RuntimeError(
                f"Expected 22 builds per revision, found "
                f"{comparison['build_combinations']}."
            )
        print(
            "PASS: all 22 Debug/Release x64 project output sets are byte-identical.",
            flush=True,
        )
        return 0
    except Exception as error:
        failure = {
            "error": str(error),
            "traceback": traceback.format_exc(),
            "source_head": git(source_root, "rev-parse", "HEAD"),
        }
        atomic_json(artifact_root / "failure.json", failure)
        raise


if __name__ == "__main__":
    sys.exit(main())
