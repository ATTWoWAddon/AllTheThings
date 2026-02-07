const fs = require("fs");

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

// Capture tableHeader, body, closingBraceLine, and afterBrace
const tableRegex =
  /(^[ \t]*(text|description|lore)\s*=\s*\{)([\s\S]*?)(^\s*\})([ \t]*[,;]?)/gm;

content = content.replace(
  tableRegex,
  (fullMatch, tableHeader, tableName, body, closingBraceLine, afterBrace) => {

    // Preserve the original header line
    // e.g. "    text = {"
    const headerIndent = tableHeader.match(/^(\s*)/)[1];

    // Parse body, preserving all lines and original indentation
    const lines = body.split(/\r?\n/).filter((l) => l.trim() !== "");

    const presentKeys = [];
    const valueLines = [];

    for (const line of lines) {
      // 🟦 A. Normal field:  en = "text"
      const normal = line.match(/^\s*(\w+)\s*=/);

      // 🟦 B. Commented field: -- de = "text" or -- TODO: de = "..."
      const commented = line.match(/^\s*--\s*(?:TODO:\s*)?(\w+)\s*=/);

      if (normal) {
        presentKeys.push(normal[1]);
        valueLines.push(line); // Preserve as-is
      } else if (commented) {
        presentKeys.push(commented[1]); // Commented fields count as present
        valueLines.push(line);          // Preserve as-is
      }
    }

    // If only en exists → do not add fields or reorder, only fix closing brace
    if (presentKeys.length === 1 && presentKeys[0] === "en") {
      return (
        `${tableHeader}\n` +
        valueLines.join("\n") +
        `\n${headerIndent}}${afterBrace}`
      );
    }

    // Find indentation of the first field, used for TODO entries
    let firstIndent = "";
    if (valueLines.length > 0) {
      const m = valueLines[0].match(/^(\s*)/);
      firstIndent = m ? m[1] : "";
    }

    // Collect final output lines
    const finalLines = [];

    for (const k of expectedKeys) {
      // Find normal field
      const existing = valueLines.find((l) =>
        l.trimStart().startsWith(k + " =")
      );

      // Find commented field
      const commented = valueLines.find((l) =>
        l.trimStart().startsWith("-- " + k + " =") ||
        l.trimStart().startsWith("-- TODO: " + k + " =")
      );

      if (existing) {
        finalLines.push(existing);
      } else if (commented) {
        finalLines.push(commented); // Preserve commented line
      } else {
        // Add TODO (only if truly missing and not commented)
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

fs.writeFileSync(file, content, "utf8");

console.log("✅ Done: Commented fields are treated as existing, format fully preserved and keys reordered");