#!/bin/sh

script_dir=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd) || exit 1

if command -v python3 >/dev/null 2>&1; then
  exec python3 "$script_dir/sync_db.py" "$@"
fi

if command -v python >/dev/null 2>&1; then
  exec python "$script_dir/sync_db.py" "$@"
fi

echo "db sync: Python 3.8 or newer is required." >&2
exit 1
