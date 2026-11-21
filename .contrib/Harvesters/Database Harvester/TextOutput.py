"""Explicit UTF-8 text output for generated repository reports."""

from collections.abc import Iterator
from contextlib import contextmanager
from io import StringIO
from pathlib import Path


UTF8_BOM = b"\xef\xbb\xbf"


def normalize_newlines(text: str) -> str:
    return text.replace("\r\n", "\n").replace("\r", "\n")


def normalize_text(text: str) -> str:
    """Use LF and ensure nonempty generated output ends with LF."""
    text = normalize_newlines(text)
    if text and not text.endswith("\n"):
        text += "\n"
    return text


def _detect_newline(data: bytes) -> str:
    for index, byte in enumerate(data):
        if byte == 0x0D:
            if index + 1 < len(data) and data[index + 1] == 0x0A:
                return "\r\n"
            return "\r"
        if byte == 0x0A:
            return "\n"
    return "\n"


@contextmanager
def text_output(
    path: str | Path,
    mode: str = "w",
    *,
    preserve_existing_format: bool = False,
) -> Iterator[StringIO]:
    """Write generated output, or update existing data in its current format.

    Canonical output uses UTF-8 without a BOM and LF. Set
    ``preserve_existing_format`` for Raw/Builds data updates to retain the
    existing file's BOM and newline style. Read/update and append modes require
    that explicit preservation policy.
    """
    path = Path(path)
    if mode not in ("w", "r+", "a"):
        raise ValueError(f"Unsupported output mode: {mode}")
    if mode in ("r+", "a") and not preserve_existing_format:
        raise ValueError("Read/update and append modes must preserve existing format")
    if mode == "r+" and not path.exists():
        raise FileNotFoundError(path)

    has_existing_format = preserve_existing_format and path.exists()
    has_bom = False
    newline = "\n"
    text = ""
    if has_existing_format:
        data = path.read_bytes()
        has_bom = data.startswith(UTF8_BOM)
        content = data[len(UTF8_BOM) :] if has_bom else data
        text = normalize_newlines(content.decode("utf-8"))
        newline = _detect_newline(content)
        if mode == "w":
            text = ""

    with StringIO(text) as buffer:
        if mode == "a":
            buffer.seek(0, 2)
        yield buffer

        output_text = buffer.getvalue()
        if has_existing_format:
            if mode == "r+" and output_text == text:
                return
            if mode == "a":
                if output_text == text:
                    return
                if not output_text.startswith(text):
                    raise ValueError("Append mode cannot rewrite existing text")
                appended = normalize_newlines(output_text[len(text) :])
                if newline != "\n":
                    appended = appended.replace("\n", newline)
                if appended:
                    with path.open("ab") as output:
                        output.write(appended.encode("utf-8"))
                return

            output_text = normalize_newlines(output_text)
            if newline != "\n":
                output_text = output_text.replace("\n", newline)
            data = (UTF8_BOM if has_bom else b"") + output_text.encode("utf-8")
        else:
            data = normalize_text(output_text).encode("utf-8")
        path.write_bytes(data)
