# Commit-matched db sync

The `Parser` workflow publishes two short-lived artifacts for every pushed
commit:

- `db-<full commit SHA>` contains the generated `db` files.
- `db-<full commit SHA>-checksums` contains `db.sha256`.

`sync_db.py` finds the successful Parser run for the current `HEAD`, downloads
both artifacts with GitHub CLI, verifies every file, and only then replaces the
local `db` directory. It never commits or pushes generated files.

## Requirements

- Python 3
- [GitHub CLI](https://cli.github.com/) authenticated with `gh auth login`
- Read access to the repository's Actions artifacts

## Manual use

From the repository root:

```sh
python3 .contrib/db-sync/sync_db.py
```

The script queries `origin`, then `upstream`, and finally the canonical
`ATTWoWAddon/AllTheThings` repository. Use `--repo OWNER/REPO` to query a
specific fork first. `ATT_DB_REPOSITORY=OWNER/REPO` provides the same override
for hooks and other unattended use.

The script refuses to overwrite local `db` changes. `--force` is available for
an intentional replacement.

## Optional automatic use

Enable the repository hooks once per clone:

```sh
git config core.hooksPath .githooks
```

They attempt a sync after checkout, pull/merge, and rebase. A missing or delayed
artifact, missing dependency, authentication problem, or checksum failure is
reported but never blocks the Git operation. Run the manual command later to
retry.

Setting `core.hooksPath` replaces the default `.git/hooks` location. If the
clone already has custom hooks, merge `run-db-sync` into that hook setup instead
of changing `core.hooksPath`.
