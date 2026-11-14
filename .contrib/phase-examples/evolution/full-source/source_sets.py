#!/usr/bin/env python3
"""Record the complete native source alternatives used by the evolution kit.

Standard and Season of Discovery are alternative Parser roots, not overlays.
The saved P1 payloads retain their original bytes after one identifying line.
"""
import argparse
import hashlib
import json
from pathlib import Path

HERE = Path(__file__).resolve().parent
EVOLUTION = HERE.parent
REPO = HERE.parents[3]
SOURCE_COMMIT = "195b274be460432481e33bb63bfaf9e68bfeec06"
ROOTS = {
    "standard": ".contrib/.db/standard/01 - Dungeons Raids/01 - Classic",
    "sod": ".contrib/.db/season of discovery/dungeons & raids",
}
CASES = {
    "blackwing-lair": "1.6 Blackwing Lair.lua",
    "blackrock-depths": "Blackrock Depths.lua",
    "demon-fall-canyon": "Demon Fall Canyon.lua",
    "dire-maul": "Dire Maul.lua",
    "temple-of-ahnqiraj": "2.6 Temple of Ahn'Qiraj.lua",
    "gnomeregan": "Gnomeregan.lua",
}
MANIFEST = HERE / "sources.json"


## @brief Yield existing case, source alternative and native path combinations.
# @return Iterator of case name, native alternative and production-relative source path.
def entries():
    for case, filename in CASES.items():
        for alternative, root in ROOTS.items():
            if case == "demon-fall-canyon" and alternative == "standard":
                continue
            yield case, alternative, f"{root}/{filename}"


## @brief Generate or verify P1 snapshots and their source hash manifest.
def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--check", action="store_true")
    args = parser.parse_args()
    document = {"$comment": "Generated P1 verification and provenance metadata; not phase configuration.",
                "sourceCommit": SOURCE_COMMIT, "sources": []}
    for case, alternative, source in entries():
        payload = (REPO / source).read_bytes()
        snapshot = EVOLUTION / case / "p1" / f"{alternative}.lua"
        ending = b"\r\n" if b"\r\n" in payload else b"\n"
        header = f"-- P1 comparison: unmodified human-authored source from {source}.".encode("utf-8") + ending
        content = header + payload
        document["sources"].append({
            "case": case, "alternative": alternative, "source": source,
            "file": (Path("../../..") / Path(source).relative_to(".contrib")).as_posix(),
            "snapshot": snapshot.relative_to(EVOLUTION).as_posix(),
            "snapshotFile": (Path("..") / snapshot.relative_to(EVOLUTION)).as_posix(),
            "sha256": hashlib.sha256(payload).hexdigest(),
        })
        if args.check:
            assert snapshot.read_bytes() == content, f"P1 source drift: {source}"
        else:
            snapshot.parent.mkdir(parents=True, exist_ok=True)
            snapshot.write_bytes(content)
    manifest = (json.dumps(document, indent=2, ensure_ascii=False) + "\n").encode()
    if args.check:
        assert MANIFEST.read_text(encoding="utf-8") == manifest.decode("utf-8"), "P1 source manifest drift"
        assert not (EVOLUTION / "demon-fall-canyon/p1/standard.lua").exists()
        print(f"P1: {len(document['sources'])} native sources match their payloads")
    else:
        MANIFEST.write_bytes(manifest)


if __name__ == "__main__":
    main()
