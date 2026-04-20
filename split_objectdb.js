#!/usr/bin/env node
/**
 * split_objectdb.mjs
 * ------------------
 * 將巨大的 Lua ObjectDB 檔案依照 object ID 範圍分割成多個檔案。
 *
 * 規則：
 * - Range 大小優先嘗試 10000，超過 700 個 object 縮小至 1000，還超過縮小至 100
 * - 最後一段不足 20 個 object 時，單獨輸出（允許例外）
 * - 輸出檔案內 object 按 ID 由小到大排序
 * - 輸出格式與原始 Lua 格式相同
 * - 檔名使用實際分割時採用的 range 區間，例如 ObjectDB_00000_09999.lua
 *
 * 用法：
 *   node split_objectdb.mjs <input_file> [output_dir]
 *
 * 範例：
 *   node split_objectdb.mjs ObjectDB.lua ./output/
 */

import fs from "fs";
import path from "path";

// ── 可調整的參數 ──────────────────────────────────────────
const MIN_OBJECTS = 20;                 // 每個檔案最少 object 數（末尾允許例外）
const MAX_OBJECTS = 700;                // 每個檔案最多 object 數
const RANGE_SIZES = [10000, 1000, 100]; // 嘗試順序：由大到小
// ─────────────────────────────────────────────────────────


/**
 * 解析 Lua ObjectDB 文字，回傳 Map<number, string>（ID → 原始 block）
 * 使用括號追蹤法精確抓取每個 entry 的完整內容。
 */
function parseLuaObjectDB(text) {
  const objects = new Map();

  const pairsMatch = text.match(/for\s+\w+\s*,\s*\w+\s+in\s+pairs\s*\(\s*\{/);
  if (!pairsMatch) {
    throw new Error("找不到 'for ... in pairs({' 結構，請確認輸入檔案格式。");
  }

  const start = pairsMatch.index + pairsMatch[0].length;

  // 找到對應的結尾 } 位置
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
    throw new Error("無法找到 pairs({...}) 的結尾括號，檔案可能不完整。");
  }

  const inner = text.slice(start, outerEnd);

  // 逐一解析 [ID] = { ... }
  const idPattern = /\s*\[(\d+)\]\s*=\s*\{/g;
  let m;

  while ((m = idPattern.exec(inner)) !== null) {
    const objId = parseInt(m[1], 10);
    const braceStart = m.index + m[0].length - 1; // 指向 '{'

    let d = 1;
    let j = braceStart + 1;
    while (j < inner.length && d > 0) {
      if (inner[j] === "{") d++;
      else if (inner[j] === "}") d--;
      j++;
    }

    // 取出 block，移除尾端多餘的逗號與空白
    const rawBlock = inner.slice(m.index, j).trimEnd().replace(/,\s*$/, "");
    objects.set(objId, rawBlock);

    idPattern.lastIndex = j;
  }

  return objects;
}


/**
 * 將排序後的 ID 陣列依照範圍規則分成多個 chunk。
 * 回傳 Array<{ ids: number[], usedRange: number, rangeStart: number, rangeEnd: number }>
 */
function computeChunks(sortedIds) {
  const chunks = [];
  let remaining = [...sortedIds];

  while (remaining.length > 0) {
    const minId = remaining[0];
    let found = false;

    // 嘗試各 range 大小（由大到小）
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
      // 理論上不會發生（range=100 時最多 100 個連續 ID，不可能超過 700）
      // 保險起見仍保留，強制每 MAX_OBJECTS 個切一刀
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
 * 決定輸出檔名，格式：ObjectDB_XXXXX_YYYYY.lua
 * 使用實際分割時採用的 range 起點與終點。
 */
function getOutputFilename(rangeStart, rangeEnd) {
  const pad = n => String(n).padStart(5, "0");
  return `ObjectDB_${pad(rangeStart)}_${pad(rangeEnd)}.lua`;
}


/**
 * 將一組 ID 格式化成完整的 Lua 檔案字串。
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
 * 主流程
 */
function splitObjectDB(inputPath, outputDir) {
  console.log(`讀取檔案：${inputPath}`);
  const text = fs.readFileSync(inputPath, "utf-8");

  console.log("解析 Lua 結構中...");
  const objects = parseLuaObjectDB(text);
  console.log(`共找到 ${objects.size} 個 object`);

  const sortedIds = [...objects.keys()].sort((a, b) => a - b);
  console.log(`ID 範圍：${sortedIds[0]} ~ ${sortedIds[sortedIds.length - 1]}`);

  console.log("計算分割方案...");
  const chunks = computeChunks(sortedIds);
  console.log(`將分割成 ${chunks.length} 個檔案\n`);

  fs.mkdirSync(outputDir, { recursive: true });

  const total = chunks.length;

  for (let i = 0; i < total; i++) {
    const { ids, usedRange, rangeStart, rangeEnd } = chunks[i];
    const filename = getOutputFilename(rangeStart, rangeEnd);
    const outPath = path.join(outputDir, filename);
    const content = formatLuaFile(ids, objects);
    fs.writeFileSync(outPath, content, "utf-8");

    const warning = ids.length < MIN_OBJECTS ? `  ⚠️  不足 ${MIN_OBJECTS} 個（允許例外）` : "";
    const idx = String(i + 1).padStart(3, " ");
    console.log(`  [${idx}/${total}] ${filename}  (${ids.length} objects, range=${usedRange})${warning}`);
  }

  console.log(`\n✅ 完成！輸出目錄：${outputDir}`);
}


// ── Entry point ───────────────────────────────────────────
const args = process.argv.slice(2);
if (args.length < 1) {
  console.error("用法：node split_objectdb.mjs <input_file> [output_dir]");
  console.error("範例：node split_objectdb.mjs ObjectDB.lua ./output/");
  process.exit(1);
}

splitObjectDB(args[0], args[1] ?? "./output");
