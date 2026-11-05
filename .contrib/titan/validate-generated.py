#!/usr/bin/env python3
"""Validate real compiled-Parser progression diagnostics and generated acquisition trees.

This does not download data or validate live game loot. Lua 5.1 evaluates the
actual generated category constructors, preserving their source/variant paths.
"""
import argparse
import hashlib
import json
from pathlib import Path
import re
import subprocess

PROFILES = {"Titan": "titan", "Wrath": "wrath", "Vanilla": "era", "VanillaSOD": "sod"}


def identity(entry):
    return (entry["key"], entry["source"].replace("\\", "/"), json.dumps(entry["selectors"], sort_keys=True))


def validate_bindings(root, flavor):
    profile_id = PROFILES[flavor]
    directory = root / ".contrib/.db/shared/.config/progression"
    profile = json.loads((directory / f"{profile_id}.json").read_text(encoding="utf-8-sig"))
    catalog = json.loads((directory / "bindings.json").read_text(encoding="utf-8-sig"))
    report_path = root / f".contrib/Debugging/Progression/{profile_id}.json"
    report = json.loads(report_path.read_text(encoding="utf-8-sig"))
    if report["profile"] != profile_id or report["baseline"] != profile["baseline"]:
        raise ValueError(f"{flavor}: diagnostic report is from a different profile/baseline")
    expected = {identity(entry): profile["content"][entry["key"]]
                for entry in catalog["bindings"] if entry["key"] in profile["content"]}
    actual = {identity(entry): entry for entry in report["bindings"]}
    if len(actual) != len(report["bindings"]) or actual.keys() != expected.keys():
        raise ValueError(f"{flavor}: diagnostic selector set differs from the enabled catalog")
    for key, phase in expected.items():
        entry = actual[key]
        if entry["phase"] != phase or type(entry["hits"]) is not int or entry["hits"] <= 0:
            raise ValueError(f"{flavor}: missing/mismatched actual binding hit: {key}: {entry}")
    files = sorted((root / "db" / flavor).rglob("*.lua"))
    if not files:
        raise ValueError(f"{flavor}: no generated Lua files")
    for path in files:
        if re.search(rb"_progression[A-Za-z_]*\s*=", path.read_bytes()):
            raise ValueError(f"Private source/binding field in {path}")
    print(f"{flavor}: all {len(expected)} enabled binding selectors matched; no private binding fields in {len(files)} Lua chunks")


def compare_categories(left, right):
    def files(path):
        return {file.relative_to(path).as_posix(): hashlib.sha256(file.read_bytes()).hexdigest()
                for file in path.rglob("*.lua")}
    first, second = files(left), files(right)
    if not first or first != second:
        changed = sorted(set(first) ^ set(second) | {name for name in first.keys() & second.keys() if first[name] != second[name]})
        raise ValueError("Changing only the progression baseline changed generated category bodies: " + ", ".join(changed))
    print(f"Independent baseline comparison: all {len(first)} category bodies are byte-identical")


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--repo-root", type=Path, default=Path(__file__).resolve().parents[2])
    parser.add_argument("--lua", help="Lua 5.1 executable (checked by the Lua fixture)")
    parser.add_argument("--bindings-only", action="store_true", help="Validate binding diagnostics without executing generated Lua")
    parser.add_argument("--flavors", nargs="+", choices=PROFILES, default=list(PROFILES))
    parser.add_argument("--compare-categories", nargs=2, type=Path, metavar=("FIRST", "SECOND"), help="Compare category directories from identical data inputs with different profile baselines")
    args = parser.parse_args()
    if not args.bindings_only and not args.lua:
        parser.error("--lua is required unless --bindings-only is selected")
    root = args.repo_root.resolve()
    for flavor in args.flavors:
        validate_bindings(root, flavor)
        if not args.bindings_only:
            subprocess.run([args.lua, str(root / ".contrib/titan/validate-generated.lua"), str(root), flavor], check=True)
    if args.compare_categories:
        compare_categories(*args.compare_categories)


if __name__ == "__main__":
    main()
