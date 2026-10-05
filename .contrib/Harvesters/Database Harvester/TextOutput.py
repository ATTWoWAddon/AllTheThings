"""Canonical UTF-8 output for harvested repository text."""

from collections.abc import Iterator
from contextlib import contextmanager
from io import StringIO
from pathlib import Path


def normalize_text(text: str) -> str:
    text = text.removeprefix("\ufeff").replace("\r\n", "\n").replace("\r", "\n")
    lines = text.split("\n")
    while lines and not lines[-1].strip(" \t"):
        lines.pop()
    return "\n".join(lines) + "\n" if lines else ""


@contextmanager
def text_output(path: str | Path, mode: str = "w") -> Iterator[StringIO]:
    """Buffer text writes, then emit LF and exactly one final newline.

    Existing text is loaded for append and read/update modes so it is also
    canonicalized. Read/update callers retain seek and truncate behavior.
    """
    path = Path(path)
    if mode not in ("w", "r+", "a"):
        raise ValueError(f"Unsupported output mode: {mode}")
    text = ""
    if mode == "r+" or (mode == "a" and path.exists()):
        text = normalize_text(path.read_text(encoding="utf-8-sig"))
    with StringIO(text) as buffer:
        if mode == "a":
            buffer.seek(0, 2)
        yield buffer
        with path.open("w", encoding="utf-8", newline="\n") as output:
            output.write(normalize_text(buffer.getvalue()))
