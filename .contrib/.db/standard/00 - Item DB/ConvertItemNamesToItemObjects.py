import json
import sys

ITEM_DB_PATH = r"itemDB.json"

def load_item_db():
    """
    Load the local item database and build a lookup table:
    name.lower() -> itemID
    """
    with open(ITEM_DB_PATH, "r", encoding="utf-8") as f:
        data = json.load(f)

    lookup = {}

    # Your file structure: {"items":[{...},{...},...]}
    items = data.get("items", [])

    if not isinstance(items, list):
        print("Error: 'items' key is not a list.")
        return lookup

    for entry in items:
        if isinstance(entry, dict):
            name = entry.get("name")
            item_id = entry.get("itemID")
            if name and item_id:
                lookup[name.lower()] = item_id

    return lookup


def search_item_id(lookup, item_name):
    return lookup.get(item_name.lower())


def process_input_lines(lines, lookup, output_format="{id}, -- {name}"):
    for raw in lines:
        name = raw.strip()
        if not name:
            continue

        item_id = search_item_id(lookup, name)
        if item_id:
            print(output_format.format(id=item_id, name=name))
        else:
            print(f"# No match found for '{name}'")


def main():
    lookup = load_item_db()

    if len(sys.argv) > 1:
        filename = sys.argv[1]
        with open(filename, "r", encoding="utf-8") as f:
            lines = f.readlines()
        process_input_lines(lines, lookup)
    else:
        print("Enter item names (blank line to finish):")
        lines = []
        while True:
            line = input("> ").strip()
            if not line:
                break
            lines.append(line)
        process_input_lines(lines, lookup)


if __name__ == "__main__":
    main()
