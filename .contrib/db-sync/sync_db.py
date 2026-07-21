#!/usr/bin/env python3
"""Download and verify the Parser db artifact for the current Git commit."""

from __future__ import annotations

import argparse
import hashlib
import json
import os
import re
import shutil
import subprocess
import sys
import tempfile
from pathlib import Path
from typing import Iterable, NoReturn


WORKFLOW = "Parser.yml"
CANONICAL_REPOSITORY = "ATTWoWAddon/AllTheThings"
SHA_RE = re.compile(r"^[0-9a-f]{40}$")
CHECKSUM_RE = re.compile(r"^([0-9a-fA-F]{64})  (.+)$")


class SyncError(RuntimeError):
    """A user-actionable db sync failure."""


def run(
    command: list[str], cwd: Path, *, check: bool = True
) -> subprocess.CompletedProcess[str]:
    try:
        result = subprocess.run(
            command,
            cwd=cwd,
            check=False,
            stdout=subprocess.PIPE,
            stderr=subprocess.PIPE,
            text=True,
        )
    except FileNotFoundError as error:
        raise SyncError(f"Required command not found: {command[0]}") from error

    if check and result.returncode:
        detail = result.stderr.strip() or result.stdout.strip()
        raise SyncError(detail or f"Command failed: {' '.join(command)}")
    return result


def git(root: Path, *arguments: str, check: bool = True) -> str:
    return run(["git", *arguments], root, check=check).stdout.strip()


def repository_from_remote(remote_url: str) -> str | None:
    patterns = (
        r"^(?:(?:ssh://)?git@)?github\.com[/:]([^/]+)/([^/]+)/?$",
        r"^https?://github\.com/([^/]+)/([^/]+)/?$",
    )
    for pattern in patterns:
        match = re.match(pattern, remote_url.strip(), re.IGNORECASE)
        if match:
            repository = match.group(2)
            if repository.lower().endswith(".git"):
                repository = repository[:-4]
            return f"{match.group(1)}/{repository}"
    return None


def candidate_repositories(root: Path, requested: str | None) -> list[str]:
    repositories: list[str] = []

    def add(repository: str | None) -> None:
        if repository and repository not in repositories:
            repositories.append(repository)

    add(requested)
    add(os.environ.get("ATT_DB_REPOSITORY"))
    for remote in ("origin", "upstream"):
        result = run(
            ["git", "remote", "get-url", remote], root, check=False
        )
        if result.returncode == 0:
            add(repository_from_remote(result.stdout))
    add(CANONICAL_REPOSITORY)
    return repositories


def current_commit(root: Path) -> str:
    commit = git(root, "rev-parse", "HEAD").lower()
    if not SHA_RE.fullmatch(commit):
        raise SyncError(f"Git returned an invalid commit SHA: {commit}")
    return commit


def db_is_dirty(root: Path) -> bool:
    return bool(
        git(
            root,
            "status",
            "--porcelain=v1",
            "--untracked-files=all",
            "--",
            "db",
        )
    )


def stamp_path(root: Path) -> Path:
    path = Path(git(root, "rev-parse", "--git-path", "att-db-sync.json"))
    return path if path.is_absolute() else root / path


def already_synced(root: Path, commit: str) -> bool:
    try:
        stamp = json.loads(stamp_path(root).read_text(encoding="utf-8"))
    except (FileNotFoundError, json.JSONDecodeError, OSError):
        return False
    return stamp.get("commit") == commit and (root / "db").is_dir()


def find_run(root: Path, repository: str, commit: str) -> int | None:
    result = run(
        [
            "gh",
            "run",
            "list",
            "--repo",
            repository,
            "--workflow",
            WORKFLOW,
            "--commit",
            commit,
            "--event",
            "push",
            "--status",
            "success",
            "--limit",
            "20",
            "--json",
            "databaseId,headSha,createdAt",
        ],
        root,
        check=False,
    )
    if result.returncode:
        detail = result.stderr.strip() or result.stdout.strip()
        raise SyncError(detail or f"Unable to query Actions in {repository}")

    try:
        runs = json.loads(result.stdout)
    except json.JSONDecodeError as error:
        raise SyncError("GitHub CLI returned invalid workflow-run data") from error

    matching = [
        item
        for item in runs
        if str(item.get("headSha", "")).lower() == commit
    ]
    if not matching:
        return None
    latest = max(matching, key=lambda item: item.get("createdAt", ""))
    return int(latest["databaseId"])


def download_artifact(
    root: Path,
    repository: str,
    run_id: int,
    artifact_name: str,
    destination: Path,
) -> None:
    run(
        [
            "gh",
            "run",
            "download",
            str(run_id),
            "--repo",
            repository,
            "--name",
            artifact_name,
            "--dir",
            str(destination),
        ],
        root,
    )


def relative_files(root: Path) -> set[str]:
    return {
        path.relative_to(root).as_posix()
        for path in root.rglob("*")
        if path.is_file()
    }


def read_manifest(manifest_path: Path) -> dict[str, str]:
    checksums: dict[str, str] = {}
    try:
        lines = manifest_path.read_text(encoding="utf-8-sig").splitlines()
    except OSError as error:
        raise SyncError("The checksum artifact does not contain db.sha256") from error

    for line_number, line in enumerate(lines, start=1):
        match = CHECKSUM_RE.fullmatch(line)
        if not match:
            raise SyncError(f"Invalid checksum manifest line {line_number}")
        relative = Path(match.group(2).replace("\\", "/"))
        if relative.is_absolute() or ".." in relative.parts:
            raise SyncError(f"Unsafe checksum path on line {line_number}")
        normalized = relative.as_posix()
        if normalized in checksums:
            raise SyncError(f"Duplicate checksum path: {normalized}")
        checksums[normalized] = match.group(1).lower()

    if not checksums:
        raise SyncError("The checksum manifest is empty")
    return checksums


def file_sha256(path: Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as stream:
        for chunk in iter(lambda: stream.read(1024 * 1024), b""):
            digest.update(chunk)
    return digest.hexdigest()


def verify_db(db_root: Path, manifest_path: Path) -> int:
    checksums = read_manifest(manifest_path)
    actual_files = relative_files(db_root)
    expected_files = set(checksums)
    if actual_files != expected_files:
        missing = sorted(expected_files - actual_files)
        unexpected = sorted(actual_files - expected_files)
        details: list[str] = []
        if missing:
            details.append(f"missing: {', '.join(missing[:5])}")
        if unexpected:
            details.append(f"unexpected: {', '.join(unexpected[:5])}")
        detail = "; ".join(details)
        raise SyncError(f"DB file list does not match manifest ({detail})")

    for relative, expected_hash in checksums.items():
        if file_sha256(db_root / relative) != expected_hash:
            raise SyncError(f"Checksum mismatch: {relative}")
    return len(checksums)


def replace_db(root: Path, downloaded_db: Path) -> None:
    destination = root / "db"
    backup = downloaded_db.parent / "previous-db"
    if destination.exists():
        destination.rename(backup)
    try:
        downloaded_db.rename(destination)
    except BaseException:
        if backup.exists() and not destination.exists():
            backup.rename(destination)
        raise
    if backup.exists():
        shutil.rmtree(backup)


def write_stamp(root: Path, commit: str, repository: str, run_id: int) -> None:
    path = stamp_path(root)
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(
        json.dumps(
            {"commit": commit, "repository": repository, "run_id": run_id},
            indent=2,
        )
        + "\n",
        encoding="utf-8",
    )


def synchronize(root: Path, repositories: Iterable[str], force: bool) -> str:
    repository_list = list(repositories)
    commit = current_commit(root)
    if already_synced(root, commit) and not force:
        return f"DB is already synchronized for {commit[:12]}."
    if db_is_dirty(root) and not force:
        raise SyncError(
            "Local db changes were found; refusing to overwrite them. "
            "Commit/stash them, or run again with --force."
        )

    selected_repository: str | None = None
    run_id: int | None = None
    query_errors: list[str] = []
    for repository in repository_list:
        try:
            run_id = find_run(root, repository, commit)
        except SyncError as error:
            query_errors.append(f"{repository}: {error}")
            continue
        if run_id is not None:
            selected_repository = repository
            break
    if selected_repository is None or run_id is None:
        if query_errors and len(query_errors) == len(repository_list):
            raise SyncError("Unable to query GitHub Actions: " + query_errors[0])
        raise SyncError(
            f"No successful {WORKFLOW} artifact is available for {commit[:12]} yet. "
            "Retry later."
        )

    artifact_name = f"db-{commit}"
    checksum_name = f"{artifact_name}-checksums"
    with tempfile.TemporaryDirectory(prefix=".db-sync-", dir=root) as temporary:
        temporary_root = Path(temporary)
        downloaded_db = temporary_root / "downloaded-db"
        downloaded_checksums = temporary_root / "downloaded-checksums"
        downloaded_db.mkdir()
        downloaded_checksums.mkdir()
        download_artifact(
            root,
            selected_repository,
            run_id,
            artifact_name,
            downloaded_db,
        )
        download_artifact(
            root,
            selected_repository,
            run_id,
            checksum_name,
            downloaded_checksums,
        )
        file_count = verify_db(
            downloaded_db, downloaded_checksums / "db.sha256"
        )

        if current_commit(root) != commit:
            raise SyncError("HEAD changed while downloading; db was not replaced")
        if db_is_dirty(root) and not force:
            raise SyncError("Local db changed while downloading; db was not replaced")
        replace_db(root, downloaded_db)

    write_stamp(root, commit, selected_repository, run_id)
    return (
        f"Synchronized {file_count} db files for {commit[:12]} "
        f"from {selected_repository} (run {run_id})."
    )


def fail(message: str) -> NoReturn:
    print(f"db sync: {message}", file=sys.stderr)
    raise SystemExit(1)


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(
        description="Fetch the Parser db artifact matching the current Git commit."
    )
    parser.add_argument(
        "--repo",
        metavar="OWNER/REPO",
        help="GitHub repository to query before the configured Git remotes",
    )
    parser.add_argument(
        "--force",
        action="store_true",
        help="replace db even if it is locally modified or already synchronized",
    )
    return parser.parse_args()


def main() -> None:
    arguments = parse_args()
    try:
        root = Path(
            run(
                ["git", "rev-parse", "--show-toplevel"], Path.cwd()
            ).stdout.strip()
        )
        repositories = candidate_repositories(root, arguments.repo)
        print(synchronize(root, repositories, arguments.force))
    except SyncError as error:
        fail(str(error))


if __name__ == "__main__":
    main()
