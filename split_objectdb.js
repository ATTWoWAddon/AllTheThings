#!/usr/bin/env node
/**
 * split_objectdb.js
 * ------------------
 * Reads an ObjectDB table from a generated Lua file and writes the table entries
 * to smaller Lua files grouped by aligned object ID ranges.
 *
 * Chunk selection:
 * - Start with the lowest unassigned object ID.
 * - Try aligned ranges of 10,000, 1,000, and 100 IDs, in that order.
 * - Select the first range containing no more than 700 objects.
 * - Repeat until every parsed object has been assigned to a file.
 * - Warn when a generated file contains fewer than 20 objects.
 *
 * Each output file contains objects sorted by ID inside a standard ObjectDB
 * assignment wrapper. Its filename records the selected range boundaries, for
 * example ObjectDB_00000_09999.lua.
 *
 * The parser expects numeric entries in the form `[ID] = { ... }` inside a
 * `for ... in pairs({ ... })` statement. Brace matching is character-based and
 * does not distinguish table braces from braces inside Lua strings or comments.
 *
 * Usage:
 *   node split_objectdb.js <input_file> [output_dir]
 *
 * Example:
 *   node split_objectdb.js ObjectDB.lua ./output/
 */

import fs from "fs";
import path from "path";

// ── Chunking configuration ──────────────────────────────────
const MIN_OBJECTS = 20;                 // Emit a warning below this count.
const MAX_OBJECTS = 700;                // Prefer chunks at or below this count.
const RANGE_SIZES = [10000, 1000, 100]; // Candidate ranges, widest first.
// ─────────────────────────────────────────────────────────


/**
 * Extracts numeric ObjectDB entries from the first matching pairs({...}) table.
 * Returns each object ID mapped to its matched `[ID] = { ... }` entry text.
 */
function parseLuaObjectDB(text) {
  const objects = new Map();

  const pairsMatch = text.match(/for\s+\w+\s*,\s*\w+\s+in\s+pairs\s*\(\s*\{/);
  if (!pairsMatch) {
    throw new Error("Could not find a 'for ... in pairs({' construct. Check the input file format.");
  }

  const start = pairsMatch.index + pairsMatch[0].length;

  // Locate the end of the outer table by counting literal brace characters.
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

  // Find top-level candidates using the numeric ObjectDB entry prefix.
  const idPattern = /\s*\[(\d+)\]\s*=\s*\{/g;
  let m;

  while ((m = idPattern.exec(inner)) !== null) {
    const objId = parseInt(m[1], 10);
    const braceStart = m.index + m[0].length - 1; // Opening brace of the entry.

    let d = 1;
    let j = braceStart + 1;
    while (j < inner.length && d > 0) {
      if (inner[j] === "{") d++;
      else if (inner[j] === "}") d--;
      j++;
    }

    // Preserve the matched entry text, excluding a trailing separator.
    const rawBlock = inner.slice(m.index, j).trimEnd().replace(/,\s*$/, "");
    objects.set(objId, rawBlock);

    idPattern.lastIndex = j;
  }

  return objects;
}


/**
 * Assigns sorted IDs to aligned numeric ranges without exceeding MAX_OBJECTS
 * whenever one of the configured range sizes can satisfy that limit.
 *
 * Returns Array<{ ids, usedRange, rangeStart, rangeEnd }>.
 */
function computeChunks(sortedIds) {
  const chunks = [];
  let remaining = [...sortedIds];

  while (remaining.length > 0) {
    const minId = remaining[0];
    let found = false;

    // Use the widest candidate range that stays within the preferred limit.
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
      // Defensive fallback: divide the narrowest range into MAX_OBJECTS-sized chunks.
      // With unique integer IDs and the current settings, this branch is unreachable.
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
 * Builds an ObjectDB_<start>_<end>.lua filename from the selected range.
 * Boundary values are padded to a minimum width of five digits.
 */
function getOutputFilename(rangeStart, rangeEnd) {
  const pad = n => String(n).padStart(5, "0");
  return `ObjectDB_${pad(rangeStart)}_${pad(rangeEnd)}.lua`;
}


/**
 * Sorts the selected IDs and places their stored entry blocks inside a standalone
 * ObjectDB assignment wrapper.
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
 * Reads and parses the input, computes chunks, creates the output directory, and
 * writes one Lua file per chunk while reporting progress.
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


// ── Entry point ───────────────────────────────────────────
const args = process.argv.slice(2);
if (args.length < 1) {
  console.error("Usage: node split_objectdb.js <input_file> [output_dir]");
  console.error("Example: node split_objectdb.js ObjectDB.lua ./output/");
  process.exit(1);
}

splitObjectDB(args[0], args[1] ?? "./output");
