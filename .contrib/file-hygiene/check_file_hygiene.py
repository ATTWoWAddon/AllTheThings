"""Read-only validation of tracked text files and optional Git index blobs."""

from __future__ import annotations

import argparse
import re
import subprocess
import sys
from dataclasses import dataclass
from pathlib import Path
from typing import Iterator

# Git detects binary content from NUL bytes in its first 8,000 bytes. Known text
# extensions also need encoding checks, so UTF-16 cannot evade that heuristic.
TEXT_EXTENSIONS = {
    ".bat",
    ".cmd",
    ".config",
    ".cs",
    ".csproj",
    ".css",
    ".csv",
    ".html",
    ".ini",
    ".js",
    ".json",
    ".lua",
    ".md",
    ".props",
    ".ps1",
    ".psd1",
    ".psm1",
    ".py",
    ".resx",
    ".sh",
    ".sln",
    ".targets",
    ".text",
    ".toc",
    ".toml",
    ".txt",
    ".xml",
    ".yaml",
    ".yml",
}
WINDOWS_COMMAND_EXTENSIONS = {".bat", ".cmd"}
TRAILING_WHITESPACE_EXCEPTIONS = re.compile(
    r"^(?:\.config/\.exports/|\.contrib/(?:Harvesters|Debugging)/|"
    r"\.contrib/\.db/standard/\.config/\.wago/.*\.csv$|"
    r"(?:AGENTS|README)\.md$)"
)
LF = b"\n"
TRAILING_WHITESPACE = re.compile(rb"[ \t]+(?=\r?$)", re.MULTILINE)
MERGE_MARKER = re.compile(
    rb"^(?:<<<<<<< |=======(?: |\r?$)|>>>>>>> |\|\|\|\|\|\|\| )", re.MULTILINE
)
UTF16_OR_UTF32_BOMS = (b"\xff\xfe", b"\xfe\xff", b"\x00\x00\xfe\xff")


@dataclass(frozen=True)
class TrackedFile:
    path: str
    mode: str
    oid: str
    stage: int


def git(root: Path, *args: str, input_bytes: bytes | None = None) -> bytes:
    return subprocess.check_output(["git", "-C", str(root), *args], input=input_bytes)


def tracked_files(root: Path) -> list[TrackedFile]:
    result = []
    for record in git(root, "ls-files", "--stage", "-z").split(b"\0"):
        if record:
            metadata, path = record.split(b"\t", 1)
            mode, oid, stage = metadata.decode("ascii").split()
            result.append(TrackedFile(path.decode("utf-8"), mode, oid, int(stage)))
    return result


def attributes(
    root: Path, paths: list[str], cached: bool = False
) -> dict[str, dict[str, str]]:
    if not paths:
        return {}
    args = ["check-attr", "-z"]
    if cached:
        args.append("--cached")
    args.extend(["--stdin", "text", "eol"])
    raw = git(
        root, *args, input_bytes=b"\0".join(p.encode("utf-8") for p in paths) + b"\0"
    )
    fields = raw.split(b"\0")[:-1]
    result: dict[str, dict[str, str]] = {}
    for i in range(0, len(fields), 3):
        path, name, value = (item.decode("utf-8") for item in fields[i : i + 3])
        result.setdefault(path, {})[name] = value
    return result


def is_text(path: str, data: bytes, attrs: dict[str, str]) -> bool:
    policy = attrs.get("text", "unspecified")
    if policy == "unset":
        return False
    if policy == "set":
        return True
    if data.startswith((b"\xef\xbb\xbf", *UTF16_OR_UTF32_BOMS)):
        return True
    if Path(path).suffix.lower() in TEXT_EXTENSIONS:
        return True
    return b"\0" not in data[:8000]


def content_errors(
    path: str, data: bytes, attrs: dict[str, str], source: str
) -> list[str]:
    if not is_text(path, data, attrs):
        return []
    errors = []
    if data.startswith(UTF16_OR_UTF32_BOMS):
        return ["UTF-16/UTF-32 encoding; UTF-8 without BOM required"]
    if data.startswith(b"\xef\xbb\xbf"):
        errors.append("UTF-8 BOM")
    try:
        data.decode("utf-8")
    except UnicodeDecodeError as exc:
        errors.append(f"invalid UTF-8 at byte {exc.start}")
    if b"\0" in data:
        errors.append("NUL byte in text")
    if b"\x1a" in data:
        errors.append("DOS EOF marker (0x1A)")

    # Git's stored text is always LF, including Windows command scripts.
    newline = b"\n"
    if source == "worktree" and Path(path).suffix.lower() in WINDOWS_COMMAND_EXTENSIONS:
        newline = b"\r\n"
        without_crlf = data.replace(b"\r\n", b"")
        if b"\n" in without_crlf or b"\r" in without_crlf:
            errors.append("expected CRLF line endings")
    elif b"\r" in data:
        errors.append("expected LF line endings")
    if data:
        if not data.endswith(newline):
            errors.append("missing final newline")
        elif data.endswith(newline + newline):
            errors.append("multiple final newlines")
        elif re.search(rb"(?:^|\n)[ \t]+\r?\n$", data):
            errors.append("whitespace-only final blank line")
    if not TRAILING_WHITESPACE_EXCEPTIONS.match(path):
        match = TRAILING_WHITESPACE.search(data)
        if match:
            errors.append(
                f"trailing whitespace at line {data.count(LF, 0, match.start()) + 1}"
            )
    match = MERGE_MARKER.search(data)
    if match:
        errors.append(
            f"merge conflict marker at line {data.count(LF, 0, match.start()) + 1}"
        )
    return errors


def mode_errors(item: TrackedFile, data: bytes, attrs: dict[str, str]) -> list[str]:
    if not is_text(item.path, data, attrs):
        return []
    shebang = data.startswith(b"#!")
    executable = item.mode == "100755"
    if executable and not shebang:
        return ["executable text file has no shebang"]
    if shebang and not executable:
        return ["shebang script is not executable in the Git index"]
    return []


def case_conflicts(paths: list[str]) -> list[str]:
    seen: dict[str, str] = {}
    conflicts = set()
    for path in paths:
        parts = path.split("/")
        for count in range(1, len(parts) + 1):
            component = "/".join(parts[:count])
            previous = seen.setdefault(component.casefold(), component)
            if previous != component:
                conflicts.add(f"case conflict: {previous!r} and {component!r}")
    return sorted(conflicts)


def index_contents(
    root: Path, items: list[TrackedFile]
) -> Iterator[tuple[TrackedFile, bytes]]:
    # Read one blob at a time: the repository's text files exceed 800 MB.
    process = subprocess.Popen(
        ["git", "-C", str(root), "cat-file", "--batch"],
        stdin=subprocess.PIPE,
        stdout=subprocess.PIPE,
    )
    assert process.stdin is not None and process.stdout is not None
    try:
        for item in items:
            process.stdin.write(item.oid.encode("ascii") + b"\n")
            process.stdin.flush()
            header = process.stdout.readline().split()
            if len(header) != 3 or header[1] != b"blob":
                raise RuntimeError(f"cannot read index blob for {item.path}")
            size = int(header[2])
            data = process.stdout.read(size)
            if len(data) != size or process.stdout.read(1) != b"\n":
                raise RuntimeError(f"incomplete index blob for {item.path}")
            yield item, data
    finally:
        process.stdin.close()
        process.stdout.close()
        if process.wait() != 0:
            raise RuntimeError("git cat-file failed")


def validate(
    root: Path, filenames: list[str] | None = None, check_index: bool = False
) -> list[str]:
    items = tracked_files(root)
    errors = case_conflicts([item.path for item in items])
    for item in items:
        if item.stage:
            errors.append(f"{item.path}: unresolved Git index stage {item.stage}")
    requested = set(filenames) if filenames is not None else None
    selected = [
        item
        for item in items
        if item.stage == 0
        and item.mode in {"100644", "100755"}
        and (requested is None or item.path in requested)
    ]
    attrs = attributes(root, [item.path for item in selected])
    for item in selected:
        try:
            data = (root / item.path).read_bytes()
        except OSError as exc:
            errors.append(f"{item.path} (worktree): {exc.strerror}")
            continue
        findings = content_errors(item.path, data, attrs[item.path], "worktree")
        findings.extend(mode_errors(item, data, attrs[item.path]))
        errors.extend(f"{item.path} (worktree): {finding}" for finding in findings)
    if check_index:
        cached_attrs = attributes(root, [item.path for item in selected], cached=True)
        for item, data in index_contents(root, selected):
            findings = content_errors(item.path, data, cached_attrs[item.path], "index")
            findings.extend(mode_errors(item, data, cached_attrs[item.path]))
            errors.extend(f"{item.path} (index): {finding}" for finding in findings)
    return errors


def main(argv: list[str] | None = None) -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument(
        "--index", action="store_true", help="also validate stored Git index blobs"
    )
    parser.add_argument(
        "filenames",
        nargs="*",
        help="check these tracked files; default: all tracked files",
    )
    args = parser.parse_args(argv)
    root = Path(
        subprocess.check_output(
            ["git", "rev-parse", "--show-toplevel"], text=True
        ).strip()
    )
    errors = validate(root, args.filenames or None, check_index=args.index)
    if errors:
        print("\n".join(errors))
        print(f"File hygiene failed: {len(errors)} issue(s).", file=sys.stderr)
        return 1
    print("File hygiene passed.")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
