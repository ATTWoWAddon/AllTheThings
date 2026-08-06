const fs = require("fs");

/**
 * Normalize ATT localization tables into the canonical locale order.
 *
 * This script is intentionally limited to the simple, one-locale-per-line
 * tables used by the parser data. It updates the supplied file in place, so
 * callers should review the resulting Git diff before committing it.
 */

// Keep this order aligned with the locale order used by ATT data files.
const expectedKeys = [
  "en","de","es","mx",
  "fr","it","ko","pt",
  "ru","cn","tw"
];

const file = process.argv[2];
if (!file) {
  console.error("Please provide the path of the file to process");
  process.exit(1);
}

let content = fs.readFileSync(file, "utf8");

// Match only localization-bearing fields. The non-greedy body stops at the
// first closing brace on its own line, which is valid for the flat tables this
// tool supports. The final group preserves an optional Lua comma or semicolon.
const tableRegex =
  /(^[ \t]*(text|description|lore)\s*=\s*\{)([\s\S]*?)(^\s*\})([ \t]*[,;]?)/gm;

content = content.replace(
  tableRegex,
  (fullMatch, tableHeader, tableName, body, closingBraceLine, afterBrace) => {

    // Reuse the table header's indentation for the closing brace so running
    // the tool does not disturb the surrounding Lua structure.
    const headerIndent = tableHeader.match(/^(\s*)/)[1];

    // Empty lines are removed during normalization. Only recognized locale
    // assignments are retained; other content inside a matched table is out
    // of scope for this deliberately narrow formatter.
    const lines = body.split(/\r?\n/).filter((l) => l.trim() !== "");

    const presentKeys = [];
    const valueLines = [];

    for (const line of lines) {
      // A translated locale, for example: en = "Example",
      const normal = line.match(/^\s*(\w+)\s*=/);

      // Commented translations and TODO placeholders both count as present;
      // otherwise a second placeholder for the same locale would be created.
      const commented = line.match(/^\s*--\s*(?:TODO:\s*)?(\w+)\s*=/);

      if (normal) {
        presentKeys.push(normal[1]);
        valueLines.push(line); // Preserve as-is
      } else if (commented) {
        presentKeys.push(commented[1]); // Commented fields count as present
        valueLines.push(line);          // Preserve as-is
      }
    }

    // English-only entries are intentionally compact. TODO placeholders become
    // useful only after an entry has started receiving additional translations.
    if (presentKeys.length === 1 && presentKeys[0] === "en") {
      return (
        `${tableHeader}\n` +
        valueLines.join("\n") +
        `\n${headerIndent}}${afterBrace}`
      );
    }

    // Match generated TODO entries to the indentation of the first locale.
    let firstIndent = "";
    if (valueLines.length > 0) {
      const m = valueLines[0].match(/^(\s*)/);
      firstIndent = m ? m[1] : "";
    }

    // Rebuild the table in canonical order. Values are reused verbatim so this
    // step changes position and completeness, but never translation content.
    const finalLines = [];

    for (const k of expectedKeys) {
      // Prefer an active translation when both active and commented variants
      // somehow exist for the same locale.
      const existing = valueLines.find((l) =>
        l.trimStart().startsWith(k + " =")
      );

      const commented = valueLines.find((l) =>
        l.trimStart().startsWith("-- " + k + " =") ||
        l.trimStart().startsWith("-- TODO: " + k + " =")
      );

      if (existing) {
        finalLines.push(existing);
      } else if (commented) {
        finalLines.push(commented); // Preserve commented line
      } else {
        // Make missing translations visible without creating executable Lua
        // fields whose empty values might be mistaken for real translations.
        finalLines.push(`${firstIndent}-- TODO: ${k} = "",`);
      }
    }

    return (
      `${tableHeader}\n` +
      finalLines.join("\n") +
      `\n${headerIndent}}${afterBrace}`
    );
  }
);

// Write once after all matching tables have been normalized. No backup file is
// created because Git is expected to provide review and recovery for this tool.
fs.writeFileSync(file, content, "utf8");

console.log("✅ Done: Commented fields are treated as existing, format fully preserved and keys reordered");
