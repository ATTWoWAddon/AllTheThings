#!/usr/bin/env python3
"""Verify isolated LuaLS examples; this does not run the ATT Parser."""

import argparse
from collections import Counter
import json
from pathlib import Path
import re
import shutil
import subprocess
import sys
import tempfile
from urllib.parse import urlsplit
from urllib.request import url2pathname


HERE = Path(__file__).resolve().parent


def run(command, **kwargs):
    try:
        return subprocess.run(command, capture_output=True, timeout=60, **kwargs)
    except (OSError, subprocess.TimeoutExpired) as error:
        raise RuntimeError(f"Could not run {command[0]}: {error}") from error


def file_path(uri):
    parts = urlsplit(uri)
    if parts.scheme != "file" or parts.query or parts.fragment:
        raise RuntimeError(f"Unexpected report URI: {uri}")
    # Preserve a UNC authority on Windows and decode URL escapes before comparing.
    path = ("//" + parts.netloc if parts.netloc else "") + parts.path
    # Windows detects drive letters before decoding URL escapes.
    path = re.sub(r"^/([A-Za-z])%3[aA](?=/|$)", r"/\1:", path)
    return Path(url2pathname(path)).resolve()


def check_case(case, expected, temp, lua, lua_ls):
    workspace = temp / case / "workspace"
    log = temp / case / "log"
    meta = temp / case / "meta"
    shutil.copytree(HERE / case, workspace)
    log.mkdir()
    fixture = workspace / "phase-text.lua"

    # Compile the source from stdin without executing the intentional error.
    syntax = run([lua, "-e", 'assert(loadstring(io.read("*a")))'], input=fixture.read_bytes())
    if syntax.returncode != 0:
        raise RuntimeError(f"{case}: Lua syntax check failed: {syntax.stderr.decode(errors='replace')}")

    result = run([
        lua_ls, f"--check={workspace}", f"--configpath={workspace / '.luarc.json'}",
        "--check_format=json", "--checklevel=Hint", f"--logpath={log}", f"--metapath={meta}",
    ])
    # Findings make LuaLS return 1; report contents, not exit status alone, are decisive.
    if result.returncode not in (0, 1):
        raise RuntimeError(f"{case}: LuaLS exited {result.returncode}: {result.stderr.decode(errors='replace')}")
    report = log / "check.json"
    if not report.is_file():
        raise RuntimeError(f"{case}: LuaLS did not write a report")
    try:
        data = json.loads(report.read_text(encoding="utf-8"))
    except (OSError, ValueError) as error:
        raise RuntimeError(f"{case}: invalid report: {error}") from error
    if not isinstance(data, dict) or len(data) != 1:
        raise RuntimeError(f"{case}: expected exactly one reported file: {data!r}")
    uri, diagnostics = next(iter(data.items()))
    if file_path(uri) != fixture.resolve():
        raise RuntimeError(f"{case}: report belongs to unexpected file: {uri}")
    if not isinstance(diagnostics, list) or not diagnostics:
        raise RuntimeError(f"{case}: report has no diagnostics; the control must be present")
    try:
        actual = Counter((d["code"], d["range"]["start"]["line"] + 1,
                          d["range"]["start"]["character"] + 1) for d in diagnostics)
        wanted = Counter((d["code"], d["line"], d["column"]) for d in expected)
    except (KeyError, TypeError, ValueError) as error:
        raise RuntimeError(f"{case}: malformed diagnostic or expectation: {error}") from error
    if actual != wanted:
        raise RuntimeError(f"{case}: missing {list((wanted - actual).elements())}; "
                           f"unexpected {list((actual - wanted).elements())}")
    if any(d["file"] != fixture.name for d in expected):
        raise RuntimeError(f"{case}: expectation names an unexpected fixture")
    print(f"{case}: Lua 5.1 syntax and {len(diagnostics)} diagnostics matched")


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--lua", required=True, help="path to a Lua 5.1 interpreter")
    parser.add_argument("--lua-ls", required=True, help="path to the Lua language server")
    parser.add_argument("--reverse", action="store_true", help="run cases in reverse order")
    args = parser.parse_args()
    try:
        manifest = json.loads((HERE / "expected.json").read_text(encoding="utf-8"))
        lua_version = run([args.lua, "-e", "print(_VERSION)"])
        if lua_version.returncode or lua_version.stdout.decode().strip() != "Lua 5.1":
            raise RuntimeError("--lua must be a Lua 5.1 interpreter")
        ls_version = run([args.lua_ls, "--version"])
        if ls_version.returncode or ls_version.stdout.decode().strip() != manifest["lua_ls_version"]:
            raise RuntimeError(f"--lua-ls must be LuaLS {manifest['lua_ls_version']}")
        case_map = manifest["cases"]
        if not isinstance(case_map, dict) or set(case_map) != {"raw", "after-df", "before-df"}:
            raise RuntimeError("expected.json must contain raw, after-df and before-df cases")
        for case, entries in case_map.items():
            if not isinstance(entries, list) or not any(
                isinstance(d, dict) and d.get("file") == "phase-text.lua"
                and d.get("code") == "assign-type-mismatch"
                and d.get("line") == 19 and d.get("column") == 7 for d in entries
            ):
                raise RuntimeError(f"{case}: missing expected type-error control at 19:7")
        cases = list(case_map)
        if args.reverse:
            cases.reverse()
        with tempfile.TemporaryDirectory(prefix="att-luals-") as directory:
            for case in cases:
                check_case(case, case_map[case], Path(directory), args.lua, args.lua_ls)
    except (RuntimeError, OSError, ValueError, KeyError) as error:
        print(f"Verification failed: {error}", file=sys.stderr)
        return 1
    return 0


if __name__ == "__main__":
    sys.exit(main())
