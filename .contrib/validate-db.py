#!/usr/bin/env python3
"""Prepare isolated CI outputs, or verify complete generated database artifacts."""
import argparse
import hashlib
import os
from pathlib import Path
import shutil
import stat
import xml.etree.ElementTree as ET

FLAVORS = ("Standard", "Vanilla", "VanillaSOD", "TBC", "Wrath", "Cata", "Mists", "Camelot")


def is_link(path):
    # Windows junctions are reparse points but are not reported by is_symlink on every Python version.
    if path.is_symlink():
        return True
    try:
        attributes = getattr(path.lstat(), "st_file_attributes", 0)
    except FileNotFoundError:
        return False
    return bool(attributes & getattr(stat, "FILE_ATTRIBUTE_REPARSE_POINT", 0))


def confined(path, root):
    """Reject symlinked paths and paths outside the selected repository database."""
    try:
        relative = path.absolute().relative_to(root.absolute())
    except ValueError:
        raise ValueError(f"Artifact escapes database root: {path}")
    current = root
    if is_link(current):
        raise ValueError(f"Symlinked database root is not supported: {root}")
    for part in relative.parts:
        if part in (".", ".."):
            raise ValueError(f"Unsafe artifact path: {path}")
        current = current / part
        if is_link(current):
            raise ValueError(f"Symlinked artifact is not supported: {current}")
    return path


def prepare(root, flavors):
    # Only known flavor directories in this checkout's db directory are disposable.
    if not (root.parent / "AllTheThings.toc").is_file():
        raise ValueError("Fresh-output preparation requires the AllTheThings checkout root")
    directories = []
    for flavor in flavors:
        if flavor not in FLAVORS:
            raise ValueError(f"Unknown database flavor: {flavor}")
        directory = confined(root / flavor, root)
        if directory.exists():
            if not directory.is_dir():
                raise ValueError(f"Expected a flavor directory: {directory}")
            # Check nested links before deletion, even though shutil does not follow them.
            for path in directory.rglob("*"):
                confined(path, root)
            directories.append(directory)
    # Preflight the entire selection before changing any output.
    for directory in directories:
        shutil.rmtree(directory)
    for flavor in flavors:
        print(f"Prepared fresh output: {flavor}")


def validate(root, flavors):
    verified = set()

    def require_file(path):
        path = confined(path, root)
        if not path.is_file() or path.stat().st_size == 0:
            raise ValueError(f"Missing or empty database artifact: {path}")
        verified.add(path)
        return path

    def check_xml(path, visiting, enumerated_scripts):
        path = require_file(path)
        if path in visiting:
            raise ValueError(f"Database XML include cycle: {path}")
        visiting = visiting | {path}
        tree = ET.parse(path)
        for element in tree.iter():
            tag = element.tag.rsplit("}", 1)[-1]
            if tag not in ("Script", "Include"):
                continue
            name = element.get("file")
            if not name:
                raise ValueError(f"Missing file attribute in {path}")
            # Resolve XML-relative includes, then enforce the db boundary.
            target = (path.parent / name.replace("\\", "/")).absolute()
            target = Path(os.path.normpath(target))
            if tag == "Include":
                check_xml(target, visiting, enumerated_scripts)
            else:
                enumerated_scripts.add(require_file(target))

    for flavor in flavors:
        directory = confined(root / flavor, root)
        for name in ("ReferenceDB.lua", "LocalizationDB.lua"):
            require_file(directory / name)
        enumerated_scripts = set()
        check_xml(directory / "Database.xml", set(), enumerated_scripts)
        category_directory = confined(directory / "Categories", root)
        categories = list(category_directory.glob("*.lua"))
        if not categories:
            raise ValueError(f"No generated categories for {flavor}")
        for category in categories:
            require_file(category)
            if category not in enumerated_scripts:
                raise ValueError(f"Generated category is not included by database XML: {category}")
        if directory / "LocalizationDB.lua" not in enumerated_scripts:
            raise ValueError(f"Localization is not included by database XML: {flavor}")
        print(f"Verified {flavor}: references, localization, XML, {len(categories)} categories")
    return verified


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--flavors", nargs="+", choices=FLAVORS, default=list(FLAVORS))
    parser.add_argument("--prepare", action="store_true", help="Clear only selected generated flavors in this checkout")
    parser.add_argument("--manifest", type=Path, help="Write checksums for the verified artifact set")
    args = parser.parse_args()
    root = Path(__file__).absolute().parent.parent / "db"
    confined(root, root)
    if args.prepare:
        if args.manifest:
            parser.error("--manifest cannot be combined with --prepare")
        prepare(root, args.flavors)
        return
    verified = validate(root, args.flavors)
    if args.manifest:
        lines = [f"{hashlib.sha256(path.read_bytes()).hexdigest()}  {path.relative_to(root).as_posix()}\n"
                 for path in sorted(verified)]
        args.manifest.write_text("".join(lines), encoding="utf-8")
    print(f"Verified {len(verified)} required database artifacts.")


if __name__ == "__main__":
    main()
