# Commit-matched DB sync

The `Parser` workflow publishes public release assets addressed by Git object
format and full commit ID:

- `db-<object format>-<full commit ID>.zip` contains the generated `db` files.
- `db-<object format>-<full commit ID>.sha256` contains the file checksums.

For the current SHA-1 repository, the prefix is `db-sha1-`. Keeping the object
format in the name avoids ambiguity if the repository later moves to SHA-256.

`sync_db.py` downloads both assets for the current `HEAD` without requiring a
GitHub account, verifies every file, and only then replaces the local `db`
directory. It never commits or pushes generated files.

On the default branch, every commit included in a push is built. Other branches
build only the push tip. A maintainer can rebuild one expired commit with the
workflow's `target_sha` manual input.

Default-branch release assets are retained for 30 days. Branch-tip and manual
rebuild assets are retained for 7 days. The authenticated Actions bundle is
also retained for 7 days.

## Requirements

- Python 3
- Internet access to the public GitHub repository

GitHub CLI is optional. When it is already authenticated, the script can use a
matching Actions bundle as a fallback while a public release is missing. Normal
syncing does not need GitHub CLI or a GitHub login.

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
