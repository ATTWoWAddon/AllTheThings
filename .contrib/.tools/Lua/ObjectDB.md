# Edit the shared ObjectDB

The base object records live in [ObjectDB](../../.db/shared/objects/ObjectDB/). Each Lua filename gives the first and last object IDs it can hold, inclusive. For example, Magister Duskwither's Journal has ID `181011`. Open [ObjectDB_181000_181999.lua](../../.db/shared/objects/ObjectDB/ObjectDB_181000_181999.lua) and search for `[181011]`.

## Change, add, or remove an object

- **Change a field.** Find the ID and edit the field in its existing entry. For a translation, edit the matching locale under `text`.
- **Add an object.** Open the file whose range contains the ID. Check that the ID is unused, then insert its `[ID] = { ... },` entry in ascending numeric order. Keep the surrounding Lua wrapper.
- **Remove an object.** Delete its complete entry, including the trailing comma. If the file becomes empty, keep its wrapper and manifest entry. To correct an ID, remove the old entry and insert the corrected one in the range that owns it.

Ordinary edits within an existing range only change its Lua file. Data additions, corrections, and removals follow the [project's evidence requirements](../../../AGENTS.md#sources-for-data-changes).

## When a range changes

The [manifest](../../.db/shared/objects/ObjectDB/manifest.json) lists partitions in ascending order of their numeric start. An entry such as `{ "start": "181000", "width": 1000 }` covers 181000 through 181999. Write `start` as an unpadded decimal string. For the filename, pad both bounds to at least five digits, as in `ObjectDB_00000_09999.lua`.

- **ID outside every listed range.** Round the ID down to a multiple of 10,000. Add that start with width 10,000 in manifest order, then create its Lua file using an existing shard's wrapper.
- **Adding a 701st object.** Replace the parent file and its manifest entry with all ten equal child ranges. Split a 10,000-ID range into ten 1,000-ID ranges, or a 1,000-ID range into ten 100-ID ranges. Move each complete entry to the child that contains its ID. Include all ten files and manifest entries, even for empty ranges.
- **After a deletion.** Keep existing subdivisions. Each listed 10,000-ID block must stay fully covered, with each ID belonging to exactly one range.

Review the manifest and affected files together when the layout changes.

## Parser and GameObjectCache

The Parser loads the listed shards where it previously loaded the single base file. Dynamic records and `ObjectDBConditionals.lua` keep their existing load order. Keep flavor-specific overrides in those layers. The GameObjectCache contributor script reads the same shards when it checks for existing objects and models, and writes its results to its usual Dynamic file by default.

Run the GameObjectCache script in PowerShell Core (`pwsh`) or x64 Windows PowerShell 5.1. Windows PowerShell loads the x64 reader from the bundled `Parser.exe`.

If a Retail configuration enables `DoConsolidateObjectDB`, the Parser reports that consolidation is disabled. Any fields collected by the harvester go to a `Dynamic/DynamicObjectDB_*.lua` file. Review those fields before applying them to the appropriate base shard.
