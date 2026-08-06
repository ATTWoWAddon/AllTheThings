#!/usr/bin/env node
/**
 * split_objectdb.js
 * ------------------
 * Splits the first ObjectDB-style pairs({...}) table in a Lua file into smaller
 * Lua files. Only numeric entries written as `[ID] = { ... }` are collected.
 * Duplicate IDs are stored in a Map, so the last parsed entry for an ID is kept.
 *
 * The chunking algorithm repeatedly starts at the lowest remaining ID and tests
 * aligned ranges 10,000, 1,000, and 100 IDs wide. It selects the widest range
 * containing at most 700 remaining objects, removes those objects, and repeats.
 * Because each pass only considers remaining objects, a later wide range may
 * overlap the numeric boundaries of an earlier narrow range. Each object ID is
 * still written exactly once.
 *
 * Output filenames contain the selected aligned boundaries, padded to at least
 * five digits, for example ObjectDB_00000_09999.lua. Entries are sorted by ID and
 * written inside a newly generated ObjectDB assignment wrapper. Files containing
 * fewer than 20 objects produce a warning, but are still written normally.
 *
 * The output directory is created when needed. Existing files with generated
 * names are overwritten; other files already in the directory are not removed.
 * Brace matching is character-based and does not distinguish structural braces
 * from braces inside Lua strings or comments.
 *
 * Usage:
 *   node split_objectdb.js <input_file> [output_dir]
 *
 * Example:
 *   node split_objectdb.js ObjectDB.lua ./output/
 */

import fs from "fs";
import path from "path";

// ── Splitting thresholds ────────────────────────────────────
const MIN_OBJECTS = 20;                 // Warning threshold; does not affect splitting.
const MAX_OBJECTS = 700;                // Maximum number of IDs accepted in a chunk.
const RANGE_SIZES = [10000, 1000, 100]; // Aligned range widths, widest first.
// ─────────────────────────────────────────────────────────


/**
 * Finds the first `for <key>, <value> in pairs({ ... })` construct and extracts
 * numeric `[ID] = { ... }` entries from its table. Returns a Map from ID to the
 * original matched entry text; a later duplicate ID replaces an earlier one.
 */
function parseLuaObjectDB(text) {
  const objects = new Map();

  const pairsMatch = text.match(/for\s+\w+\s*,\s*\w+\s+in\s+pairs\s*\(\s*\{/);
  if (!pairsMatch) {
    throw new Error("Could not find a 'for ... in pairs({' construct. Check the input file format.");
  }

  const start = pairsMatch.index + pairsMatch[0].length;

  // Count literal braces from the opening `{` to find the outer table boundary.
  let depth = 1;
  let outerEnd = -1;
  for (let i = start; i < text.length && depth > 0; i++) {
    if (text[i] === "{") depth++;
    else if (text[i] === "}") {
      depth--;
      if (depth === 0) { outerEnd = i; break; }
    }
  }

  if (outerEnd === -1) {
    throw new Error("Could not find the closing brace for pairs({...}); the file may be incomplete.");
  }

  const inner = text.slice(start, outerEnd);

  // Search for the next numeric entry prefix after the previously extracted block.
  const idPattern = /\s*\[(\d+)\]\s*=\s*\{/g;
  let m;

  while ((m = idPattern.exec(inner)) !== null) {
    const objId = parseInt(m[1], 10);
    const braceStart = m.index + m[0].length - 1; // Entry table's opening `{`.

    let d = 1;
    let j = braceStart + 1;
    while (j < inner.length && d > 0) {
      if (inner[j] === "{") d++;
      else if (inner[j] === "}") d--;
      j++;
    }

    // Store the complete entry without a trailing comma or trailing whitespace.
    const rawBlock = inner.slice(m.index, j).trimEnd().replace(/,\s*$/, "");
    objects.set(objId, rawBlock);

    idPattern.lastIndex = j;
  }

  return objects;
}


/**
 * Greedily assigns sorted, unique IDs to aligned ranges. For the lowest remaining
 * ID, chooses the widest configured range containing at most MAX_OBJECTS remaining
 * IDs, removes that selection, and repeats until no IDs remain.
 *
 * Returned ranges can overlap earlier range boundaries, but their `ids` arrays are
 * disjoint. Returns Array<{ ids, usedRange, rangeStart, rangeEnd }>.
 */
function computeChunks(sortedIds) {
  const chunks = [];
  let remaining = [...sortedIds];

  while (remaining.length > 0) {
    const minId = remaining[0];
    let found = false;

    // Accept the first (widest) aligned range that satisfies the size limit.
    for (const r of RANGE_SIZES) {
      const rangeStart = Math.floor(minId / r) * r;
      const rangeEnd = rangeStart + r - 1;
      const inRange = remaining.filter(x => x >= rangeStart && x <= rangeEnd);

      if (inRange.length <= MAX_OBJECTS) {
        chunks.push({ ids: inRange, usedRange: r, rangeStart, rangeEnd });
        const inRangeSet = new Set(inRange);
        remaining = remaining.filter(x => !inRangeSet.has(x));
        found = true;
        break;
      }
    }

    if (!found) {
      // Defensive fallback: split the narrowest range into fixed-size slices.
      // This is unreachable with unique integer IDs and the current thresholds,
      // because a 100-ID range cannot contain more than 100 IDs.
      const r = RANGE_SIZES[RANGE_SIZES.length - 1];
      const rangeStart = Math.floor(minId / r) * r;
      const rangeEnd = rangeStart + r - 1;
      const inRange = remaining.filter(x => x >= rangeStart && x <= rangeEnd);
      for (let k = 0; k < inRange.length; k += MAX_OBJECTS) {
        chunks.push({ ids: inRange.slice(k, k + MAX_OBJECTS), usedRange: r, rangeStart, rangeEnd });
      }
      const inRangeSet = new Set(inRange);
      remaining = remaining.filter(x => !inRangeSet.has(x));
    }
  }

  return chunks;
}


/**
 * Builds ObjectDB_<start>_<end>.lua from the selected aligned boundaries.
 * Values longer than five digits are not truncated.
 */
function getOutputFilename(rangeStart, rangeEnd) {
  const pad = n => String(n).padStart(5, "0");
  return `ObjectDB_${pad(rangeStart)}_${pad(rangeEnd)}.lua`;
}


/**
 * Sorts a chunk's IDs, indents their stored entry text by one additional tab, and
 * wraps them in a newly generated ObjectDB pairs assignment.
 */
function formatLuaFile(ids, objects) {
  const lines = ["local ObjectDB = ObjectDB; for objectID,objectData in pairs({"];
  for (const id of [...ids].sort((a, b) => a - b)) {
    const block = objects.get(id);
    const indented = "\t" + block.replace(/\n/g, "\n\t");
    lines.push(indented + ",");
  }
  lines.push("})");
  lines.push("do ObjectDB[objectID] = objectData; end");
  return lines.join("\n") + "\n";
}


/**
 * Runs the complete read, parse, split, format, and write workflow. Creates the
 * output directory recursively and overwrites generated filenames when present.
 */
function splitObjectDB(inputPath, outputDir) {
  console.log(`Reading file: ${inputPath}`);
  const text = fs.readFileSync(inputPath, "utf-8");

  console.log("Parsing Lua structure...");
  const objects = parseLuaObjectDB(text);
  console.log(`Found ${objects.size} object${objects.size === 1 ? "" : "s"}`);

  const sortedIds = [...objects.keys()].sort((a, b) => a - b);
  console.log(`ID range: ${sortedIds[0]} ~ ${sortedIds[sortedIds.length - 1]}`);

  console.log("Computing split plan...");
  const chunks = computeChunks(sortedIds);
  console.log(`Splitting into ${chunks.length} files\n`);

  fs.mkdirSync(outputDir, { recursive: true });

  const total = chunks.length;

  for (let i = 0; i < total; i++) {
    const { ids, usedRange, rangeStart, rangeEnd } = chunks[i];
    const filename = getOutputFilename(rangeStart, rangeEnd);
    const outPath = path.join(outputDir, filename);
    const content = formatLuaFile(ids, objects);
    fs.writeFileSync(outPath, content, "utf-8");

    const warning = ids.length < MIN_OBJECTS
      ? `  ⚠️  Fewer than ${MIN_OBJECTS} objects (allowed exception)`
      : "";
    const idx = String(i + 1).padStart(3, " ");
    const objectLabel = `object${ids.length === 1 ? "" : "s"}`;
    console.log(`  [${idx}/${total}] ${filename}  (${ids.length} ${objectLabel}, range=${usedRange})${warning}`);
  }

  console.log(`\n✅ Done! Output directory: ${outputDir}`);
}


// ── Command-line entry point ───────────────────────────────
const args = process.argv.slice(2);
if (args.length < 1) {
  console.error("Usage: node split_objectdb.js <input_file> [output_dir]");
  console.error("Example: node split_objectdb.js ObjectDB.lua ./output/");
  process.exit(1);
}

splitObjectDB(args[0], args[1] ?? "./output");
