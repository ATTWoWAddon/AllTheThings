#!/usr/bin/env python3
"""Stage build-pinned Titan CSVs and record their unverified source provenance.

No ordinary Wrath input is read or copied. Downloads finish and pass CSV checks
before the live directory changes. File replacements are atomic; a failed commit
restores the previous directory and manifest. Parser hash checks fail closed if a
process interruption happens between the directory and manifest replacements.
"""
import argparse
import csv
from datetime import datetime, timezone
import hashlib
import io
import json
import os
from pathlib import Path
import shutil
import tempfile
import urllib.parse
import urllib.request

TABLES = {
    "AreaTable": ("areatable", {"ID", "AreaName_lang", "ContinentID"}),
    "ContentTuning": ("ContentTuning", {"ID", "MinLevelSquish", "MaxLevelSquish"}),
    "Holiday": ("Holidays", {"ID", "HolidayNameID", "Region"}),
    "Item": ("Item", {"ID", "ClassID", "SubclassID"}),
    "ItemEffect": ("ItemEffect", {"ID", "SpellID", "TriggerType"}),
    "ItemModifiedAppearance": ("ItemModifiedAppearance", {"ID", "ItemID", "ItemAppearanceID"}),
    "ItemSearchName": ("ItemSearchName", {"ID", "Display_lang", "OverallQualityID"}),
    "ModifierTree": ("ModifierTree", {"ID", "Parent", "Operator"}),
    "SpellEffect": ("SpellEffect", {"ID", "Effect", "DifficultyID"}),
    "TaxiNodes": ("TaxiNodes", {"ID", "Name_lang", "Pos_0"}),
    "UiMap": ("UiMap", {"ID", "ParentUiMapID", "System"}),
    "UiMapAssignment": ("UiMapAssignment", {"ID", "UiMapID", "UiMin_0"}),
}
LOCALES = ("enUS", "deDE", "esES", "esMX", "frFR", "itIT", "koKR", "ptBR", "ruRU", "zhCN", "zhTW")
SNAPSHOT = Path(".contrib/.db/standard/.config/.wago/Titan Reforged")
MANIFEST = Path(".contrib/titan/snapshot-manifest.json")


def validate_csv(data, table):
    """Reject HTML/errors, wrong-table schemas, ragged rows, and invalid DB2 IDs."""
    text = data.decode("utf-8-sig", errors="strict")
    rows = csv.reader(io.StringIO(text, newline=""), strict=True)
    header = next(rows, [])
    if not TABLES[table][1].issubset(header) or len(header) != len(set(header)):
        raise ValueError(f"{table}: response does not have the expected DB2 CSV header")
    id_column = header.index("ID")
    count = 0
    seen = set()
    for row in rows:
        if not row:
            continue
        if len(row) != len(header):
            raise ValueError(f"{table}: ragged CSV row {count + 2}")
        record_id = row[id_column]
        if not record_id.isdecimal() or int(record_id) in seen:
            raise ValueError(f"{table}: invalid or duplicate ID at row {count + 2}")
        seen.add(int(record_id))
        count += 1
    if count == 0:
        raise ValueError(f"{table}: empty snapshot")
    return count


def fetch_csv(url):
    request = urllib.request.Request(url, headers={"User-Agent": "ATT-Titan-Snapshot/1"})
    with urllib.request.urlopen(request, timeout=60) as response:
        if response.status != 200:
            raise ValueError(f"Unexpected HTTP status {response.status}")
        return response.read()


def update_snapshot(repo_root, tables, locale, fetch=fetch_csv):
    repo_root = Path(repo_root).resolve()
    manifest_path = repo_root / MANIFEST
    original_manifest = manifest_path.read_bytes()
    manifest = json.loads(original_manifest.decode("utf-8"))
    if (manifest.get("schema"), manifest.get("profile"), manifest.get("product"), manifest.get("region")) != (1, "Titan", "wow_classic_titan", "cn"):
        raise ValueError("Expected a schema-1 Titan/CN manifest")
    if locale not in LOCALES or not tables or len(tables) != len(set(tables)):
        raise ValueError("Select a supported locale and unique nonempty table set")
    build = manifest["build"]
    if not isinstance(build, str) or not build.startswith("3.80.") or len(build.split(".")) != 4 or not all(p.isdecimal() for p in build.split(".")):
        raise ValueError("The manifest must pin a complete Titan 3.80.x build")
    destination = repo_root / SNAPSHOT
    if not destination.is_dir():
        raise ValueError("The isolated Titan snapshot directory is missing")
    lock = destination.parent / ".titan-update.lock"
    # The exclusive lock prevents two updates from replacing each other's provenance.
    with lock.open("x", encoding="utf-8") as handle:
        handle.write(str(os.getpid()))
    stage = None
    backup = None
    staged_manifest = None
    installed = False
    try:
        stage = Path(tempfile.mkdtemp(prefix=".titan-stage-", dir=destination.parent))
        shutil.copytree(destination, stage, dirs_exist_ok=True)
        for old_csv in stage.rglob("*.csv"):
            old_csv.unlink()
        entries = [entry for entry in manifest["inputs"] if entry["kind"] != "wago"]
        for table in tables:
            endpoint, _ = TABLES[table]
            query = urllib.parse.urlencode({"build": build, "locale": locale})
            url = f"https://wago.tools/db2/{endpoint}/csv?{query}"
            data = fetch(url)
            count = validate_csv(data, table)
            # Base-locale files use the existing Parser naming convention.
            locale_part = "" if locale == "enUS" else f".{locale}"
            filename = f"{table}{locale_part}.{build}.csv"
            (stage / filename).write_bytes(data)
            entries.append({
                "kind": "wago", "table": table,
                "path": (SNAPSHOT / filename).as_posix(),
                "build": build, "region": "cn", "locale": locale,
                "url": url, "acquiredUTC": datetime.now(timezone.utc).isoformat(),
                "sha256": hashlib.sha256(data).hexdigest(), "records": count,
                "hotfixStatus": "unknown", "verificationStatus": "unverified",
                "buildAssertion": "Requested by URL; no in-game client verification.",
                "regionAssertion": "CN target; the provider response does not attest a region.",
            })
        if manifest_path.read_bytes() != original_manifest:
            raise ValueError("The manifest changed while snapshots were downloading; preserve the newer edit and retry")
        manifest["inputs"] = entries
        manifest["inputStatus"] = "candidate"
        manifest["verificationStatus"] = "provisional"
        staged_manifest = manifest_path.with_name(".snapshot-manifest.pending.json")
        staged_manifest.write_text(json.dumps(manifest, indent=4) + "\n", encoding="utf-8")
        backup = Path(tempfile.mkdtemp(prefix=".titan-backup-", dir=destination.parent))
        backup.rmdir()
        os.replace(destination, backup)
        try:
            os.replace(stage, destination)
            stage = None
            installed = True
            os.replace(staged_manifest, manifest_path)
            staged_manifest = None
        except BaseException:
            if installed:
                shutil.rmtree(destination)
                installed = False
            os.replace(backup, destination)
            backup = None
            raise
        # Cleanup failure after the successful commit must not report that inputs
        # stayed unchanged. A leftover backup is safe and recoverable.
        shutil.rmtree(backup, ignore_errors=True)
        backup = None
        return entries
    finally:
        if stage is not None and stage.exists():
            shutil.rmtree(stage)
        if staged_manifest is not None:
            staged_manifest.unlink(missing_ok=True)
        # An unexpected rollback failure must leave its recoverable backup intact.
        lock.unlink(missing_ok=True)


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--repo-root", type=Path, default=Path(__file__).resolve().parents[2])
    parser.add_argument("--locale", choices=LOCALES, default="enUS")
    parser.add_argument("--tables", nargs="+", choices=sorted(TABLES), default=list(TABLES), help="Replaces the Wago snapshot with exactly this table set.")
    args = parser.parse_args()
    try:
        entries = update_snapshot(args.repo_root, args.tables, args.locale)
    except (OSError, ValueError, csv.Error, UnicodeError) as error:
        parser.exit(1, f"Titan snapshot unchanged: {error}\n")
    print(f"Recorded {len(entries)} provisional Titan inputs. Review provenance before treating any acquisition as verified.")


if __name__ == "__main__":
    main()
