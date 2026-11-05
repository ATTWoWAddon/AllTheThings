# Titan Reforged snapshots

No CSV snapshot is imported yet. Availability of build `3.80.2.70372` is unknown: the Item CSV endpoint returned HTTP 403 on 2026-10-20. This directory is deliberately separate from ordinary Wrath.

Use `python .contrib/titan/update-snapshot.py --help` from the repository root. It validates CSV downloads before replacing inputs and records build, locale, region, source URL, acquisition time, and SHA-256 in the Titan manifest. A failed download preserves the existing files and manifest. Never copy ordinary Wrath snapshots here.
