"""Read-only validation of tracked text files and optional Git index blobs."""

from __future__ import annotations

import argparse
import os
import re
import subprocess
import sys
import tempfile
from dataclasses import dataclass
from importlib import import_module
from pathlib import Path
from typing import Callable, Iterator, cast

# Keep the runtime dependency out of the repository-wide mypy environment.
_editorconfig = import_module("editorconfig")
EditorConfigError = cast(type[Exception], getattr(_editorconfig, "EditorConfigError"))
get_properties = cast(
    Callable[[str], dict[str, str]], getattr(_editorconfig, "get_properties")
)

POLICY_KEYS = (
    "charset",
    "end_of_line",
    "trim_trailing_whitespace",
    "insert_final_newline",
)
UTF8_BOM = b"\xef\xbb\xbf"
LF = "\n"
TRAILING_WHITESPACE = re.compile(r"[ \t]+(?=\r?$)", re.MULTILINE)
MERGE_MARKER = re.compile(
    r"^(?:<<<<<<< |=======(?: |\r?$)|>>>>>>> |\|\|\|\|\|\|\| )",
    re.MULTILINE,
)


@dataclass(frozen=True)
class TrackedFile:
    path: str
    mode: str
    oid: str
    stage: int


class HygieneError(RuntimeError):
    """A repository or EditorConfig policy could not be read."""


def git(root: Path, *args: str, input_bytes: bytes | None = None) -> bytes:
    return subprocess.check_output(
        ["git", "-C", str(root), *args], input=input_bytes
    )


def tracked_files(root: Path) -> list[TrackedFile]:
    result: list[TrackedFile] = []
    for record in git(root, "ls-files", "--stage", "-z").split(b"\0"):
        if record:
            metadata, path = record.split(b"\t", 1)
            mode, oid, stage = metadata.decode("ascii").split()
            result.append(
                TrackedFile(
                    path.decode("utf-8", "surrogateescape"), mode, oid, int(stage)
                )
            )
    return result


def attributes(
    root: Path, paths: list[str], *, cached: bool = False
) -> dict[str, dict[str, str]]:
    if not paths:
        return {}
    args = ["check-attr", "-z"]
    if cached:
        args.append("--cached")
    args.extend(["--stdin", "text", "eol"])
    raw = git(
        root,
        *args,
        input_bytes=b"\0".join(os.fsencode(path) for path in paths) + b"\0",
    )
    fields = raw.split(b"\0")[:-1]
    result: dict[str, dict[str, str]] = {}
    for index in range(0, len(fields), 3):
        path, name, value = (os.fsdecode(item) for item in fields[index : index + 3])
        result.setdefault(path, {})[name] = value
    return result


def is_text(
    data: bytes,
    attrs: dict[str, str],
    properties: dict[str, str] | None = None,
) -> bool:
    text_policy = attrs.get("text", "unspecified")
    # Explicit Git binary classification always wins over EditorConfig. For
    # auto/unspecified files, an effective charset is stronger evidence than
    # the NUL-byte heuristic (UTF-16 text commonly contains NUL bytes).
    if text_policy == "unset":
        return False
    if text_policy == "set":
        return True
    if properties and property_value(properties, "charset") is not None:
        return True
    if attrs.get("eol") in {"lf", "crlf"}:
        return True
    if text_policy not in {"auto", "unspecified"}:
        return True
    return b"\0" not in data[:8000]


def property_value(properties: dict[str, str], key: str) -> str | None:
    value = properties.get(key)
    if value is None:
        return None
    normalized = str(value).strip().lower()
    return None if not normalized or normalized == "unset" else normalized


def policy_signature(properties: dict[str, str]) -> tuple[str | None, ...]:
    return tuple(property_value(properties, key) for key in POLICY_KEYS)


def editorconfig_properties(path: Path) -> dict[str, str]:
    try:
        return get_properties(str(path.absolute()))
    except EditorConfigError as error:
        raise HygieneError(
            f"cannot resolve EditorConfig for {path}: {error}"
        ) from error


def decode_text(
    data: bytes, properties: dict[str, str]
) -> tuple[str, list[str]]:
    charset = property_value(properties, "charset")
    errors: list[str] = []
    payload = data

    if charset == "utf-8":
        if data.startswith(UTF8_BOM):
            errors.append("UTF-8 BOM is not allowed by EditorConfig")
        encoding = "utf-8"
    elif charset == "utf-8-bom":
        if data.startswith(UTF8_BOM):
            payload = data[len(UTF8_BOM) :]
        elif data:
            errors.append("missing UTF-8 BOM required by EditorConfig")
        encoding = "utf-8"
    elif charset == "latin1":
        encoding = "latin-1"
    elif charset == "utf-16be":
        encoding = "utf-16-be"
    elif charset == "utf-16le":
        encoding = "utf-16-le"
    elif charset is None:
        # An unset charset is intentionally left to the file's native encoding.
        # Latin-1 preserves every byte while allowing ASCII policy checks.
        encoding = "latin-1"
    else:
        errors.append(f"unsupported EditorConfig charset: {charset}")
        encoding = "latin-1"

    try:
        return payload.decode(encoding), errors
    except UnicodeDecodeError as error:
        errors.append(f"invalid {charset} encoding at byte {error.start}")
        return payload.decode("latin-1"), errors


def line_ending_errors(
    text: str,
    attrs: dict[str, str],
    properties: dict[str, str],
    source: str,
) -> list[str]:
    editorconfig_eol = property_value(properties, "end_of_line")
    git_eol = attrs.get("eol")
    if git_eol not in {"lf", "crlf"}:
        git_eol = None
    errors = []
    if editorconfig_eol and editorconfig_eol not in {"lf", "crlf", "cr"}:
        errors.append(
            f"unsupported EditorConfig end_of_line value: {editorconfig_eol}"
        )
        editorconfig_eol = None

    if editorconfig_eol and git_eol and editorconfig_eol != git_eol:
        errors.append(
            "EditorConfig end_of_line conflicts with Git eol attribute "
            f"({editorconfig_eol} vs {git_eol})"
        )
        if source == "worktree":
            return errors

    if source == "index":
        expected = "lf"
    else:
        expected = git_eol or editorconfig_eol
        if expected is None:
            return errors

    if expected == "lf":
        if "\r" in text:
            errors.append("expected LF line endings")
    elif expected == "crlf":
        without_crlf = text.replace("\r\n", "")
        if "\n" in without_crlf or "\r" in without_crlf:
            errors.append("expected CRLF line endings")
    elif expected == "cr":
        without_cr = text.replace("\r", "")
        if "\n" in without_cr:
            errors.append("expected CR line endings")
    return errors


def content_errors(
    path: str,
    data: bytes,
    attrs: dict[str, str],
    properties: dict[str, str],
    source: str,
) -> list[str]:
    if not is_text(data, attrs, properties):
        return []

    text, errors = decode_text(data, properties)
    errors.extend(line_ending_errors(text, attrs, properties, source))

    if "\0" in text:
        errors.append("NUL character in text")
    if "\x1a" in text:
        errors.append("DOS EOF marker (0x1A)")

    insert_final_newline = property_value(properties, "insert_final_newline")
    if text and insert_final_newline == "true":
        if not text.endswith(("\n", "\r")):
            errors.append("missing final newline")
    elif text and insert_final_newline == "false":
        if text.endswith(("\n", "\r")):
            errors.append("unexpected final newline")

    if property_value(properties, "trim_trailing_whitespace") == "true":
        match = TRAILING_WHITESPACE.search(text)
        if match:
            line = text.count(LF, 0, match.start()) + 1
            errors.append(f"trailing whitespace at line {line}")

    match = MERGE_MARKER.search(text)
    if match:
        line = text.count(LF, 0, match.start()) + 1
        errors.append(f"merge conflict marker at line {line}")
    return errors


def mode_errors(
    item: TrackedFile,
    data: bytes,
    attrs: dict[str, str],
    properties: dict[str, str] | None = None,
) -> list[str]:
    if not is_text(data, attrs, properties):
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
    conflicts: set[str] = set()
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
                raise HygieneError(f"cannot read index blob for {item.path}")
            size = int(header[2])
            data = process.stdout.read(size)
            if len(data) != size or process.stdout.read(1) != b"\n":
                raise HygieneError(f"incomplete index blob for {item.path}")
            yield item, data
    finally:
        process.stdin.close()
        process.stdout.close()
        if process.wait() != 0:
            raise HygieneError("git cat-file failed")


def indexed_editorconfig_root(
    root: Path, items: list[TrackedFile]
) -> tempfile.TemporaryDirectory[str]:
    temporary = tempfile.TemporaryDirectory(prefix="att-file-hygiene-")
    snapshot = Path(temporary.name)
    configs = [
        item
        for item in items
        if item.stage == 0
        and item.mode in {"100644", "100755"}
        and Path(item.path).name == ".editorconfig"
    ]
    try:
        for item, data in index_contents(root, configs):
            destination = snapshot / item.path
            destination.parent.mkdir(parents=True, exist_ok=True)
            destination.write_bytes(data)
        root_config = snapshot / ".editorconfig"
        if not root_config.exists():
            root_config.write_bytes(b"root = true\n")
    except BaseException:
        temporary.cleanup()
        raise
    return temporary


def normalize_requested_paths(
    root: Path, filenames: list[str] | None
) -> set[str] | None:
    if filenames is None:
        return None
    result = set()
    for filename in filenames:
        candidate = Path(filename)
        if candidate.is_absolute():
            try:
                candidate = candidate.relative_to(root)
            except ValueError:
                continue
        result.add(candidate.as_posix().replace("\\", "/"))
    return result


def validate(
    root: Path, filenames: list[str] | None = None, check_index: bool = False
) -> list[str]:
    root = root.absolute()
    items = tracked_files(root)
    errors = case_conflicts([item.path for item in items])
    for item in items:
        if item.stage:
            errors.append(f"{item.path}: unresolved Git index stage {item.stage}")

    requested = normalize_requested_paths(root, filenames)
    selected = [
        item
        for item in items
        if item.stage == 0
        and item.mode in {"100644", "100755"}
        and (requested is None or item.path in requested)
    ]
    paths = [item.path for item in selected]
    worktree_attrs = attributes(root, paths)
    cached_attrs = attributes(root, paths, cached=True) if check_index else {}
    worktree_policies: dict[str, dict[str, str]] = {}

    for item in selected:
        path = root / item.path
        try:
            data = path.read_bytes()
        except OSError as error:
            errors.append(f"{item.path} (worktree): {error.strerror}")
            continue
        attrs = worktree_attrs[item.path]
        properties: dict[str, str] = {}
        needs_policy = attrs.get("text") != "unset" or (
            check_index and cached_attrs[item.path].get("text") != "unset"
        )
        if needs_policy:
            try:
                properties = editorconfig_properties(path)
            except HygieneError as error:
                errors.append(f"{item.path} (worktree): {error}")
            worktree_policies[item.path] = properties
        text_file = is_text(data, attrs, properties)
        if not text_file:
            continue
        findings = content_errors(
            item.path, data, attrs, properties, "worktree"
        )
        findings.extend(mode_errors(item, data, attrs, properties))
        errors.extend(
            f"{item.path} (worktree): {finding}" for finding in findings
        )

    if check_index:
        temporary = indexed_editorconfig_root(root, items)
        try:
            index_root = Path(temporary.name)
            index_policies = {}
            for item in selected:
                indexed_path = index_root / item.path
                indexed_path.parent.mkdir(parents=True, exist_ok=True)
                if not indexed_path.exists():
                    indexed_path.touch()
                try:
                    index_policies[item.path] = editorconfig_properties(indexed_path)
                except HygieneError as error:
                    errors.append(f"{item.path} (index policy): {error}")
                    index_policies[item.path] = {}

            for item, data in index_contents(root, selected):
                attrs = cached_attrs[item.path]
                properties = index_policies[item.path]
                if not is_text(data, attrs, properties):
                    continue
                if item.path in worktree_policies:
                    worktree_properties = worktree_policies[item.path]
                    if policy_signature(worktree_properties) != policy_signature(
                        properties
                    ):
                        errors.append(
                            f"{item.path}: EditorConfig normalization policy differs "
                            "between worktree and index"
                        )
                findings = content_errors(
                    item.path, data, attrs, properties, "index"
                )
                findings.extend(mode_errors(item, data, attrs, properties))
                errors.extend(
                    f"{item.path} (index): {finding}" for finding in findings
                )
        finally:
            temporary.cleanup()
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
    try:
        root = Path(
            subprocess.check_output(
                ["git", "rev-parse", "--show-toplevel"], text=True
            ).strip()
        )
        errors = validate(root, args.filenames or None, check_index=args.index)
    except (HygieneError, OSError, subprocess.CalledProcessError) as error:
        print(f"File hygiene could not run: {error}", file=sys.stderr)
        return 2
    if errors:
        print("\n".join(errors))
        print(f"File hygiene failed: {len(errors)} issue(s).", file=sys.stderr)
        return 1
    print("File hygiene passed.")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
