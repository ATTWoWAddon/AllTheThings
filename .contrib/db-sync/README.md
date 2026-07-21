# Commit-matched db sync

The `Parser` workflow publishes public, short-lived release assets for every
pushed commit:

- `db-<full commit SHA>.zip` contains the generated `db` files.
- `db-<full commit SHA>.sha256` contains the file checksums.

`sync_db.py` downloads both assets for the current `HEAD` without requiring a
GitHub account, verifies every file, and only then replaces the local `db`
directory. It never commits or pushes generated files.

## Requirements

- Python 3
- Internet access to the public GitHub repository

GitHub CLI is optional. When it is already authenticated, the script can use
the matching Actions artifact as a fallback while a public release is missing.

## Manual use

From the repository root:

```sh
python3 .contrib/db-sync/sync_db.py
```

The script queries the public release on `origin`, then `upstream`, and finally
the canonical `ATTWoWAddon/AllTheThings` repository. Use `--repo OWNER/REPO` to
query a specific fork first. `ATT_DB_REPOSITORY=OWNER/REPO` provides the same
override for hooks and other unattended use.

The script refuses to overwrite local `db` changes. `--force` is available for
an intentional replacement.

## Optional automatic use

Enable the repository hooks once per clone:

```sh
git config core.hooksPath .githooks
```

They attempt a sync after checkout, pull/merge, and rebase. A missing or delayed
asset, missing dependency, network problem, or checksum failure is
reported but never blocks the Git operation. Run the manual command later to
retry.

Setting `core.hooksPath` replaces the default `.git/hooks` location. If the
clone already has custom hooks, merge `run-db-sync` into that hook setup instead
of changing `core.hooksPath`.
