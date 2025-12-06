import requests
import csv
from collections import defaultdict

def write_log_header(output_file, build, map_count, children_count, total_count):
    # Description
    description = (
        "ExplorationMapping: Combines AreaTable.csv and Map.csv.\n"
        "Displays areas grouped under maps or parent areas.\n"
        "Areas can also be sorted numerically.\n\n"
        "Generated as:\n"
        "[Expansion] [Instance type] [Map/Parent ID - Map/Parent Name] exploration(Exploration ID)	-- Exploration Name\n"
    )
    output_file.write(description + "\n")

    # Counts
    summary = f"Build: {build}\nMaps: {map_count}, Children: {children_count}, Total explorations: {total_count}"
    output_file.write(summary + "\n\n")

# Function to download a table CSV from Wago
def download_csv(table_name: str, build: str) -> list[str]:
    """Download CSV from Wago and return a list of lines (in memory)."""
    url = f"https://wago.tools/db2/{table_name}/csv?build={build}"
    headers = {
        "User-Agent": "Mozilla/5.0 (Linux; Android 9; G3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.101 Mobile Safari/537.36"
    }
    content = requests.get(url, headers=headers).content.decode("utf-8")
    return content.splitlines()  # Returns list of CSV lines

def exploration_mapping(build):
    # Expansion translation table
    expansion_lookup = {
        "0": "Vanilla",
        "1": "TBC",
        "2": "WotLK",
        "3": "Cata",
        "4": "MoP",
        "5": "WoD",
        "6": "Legion",
        "7": "BfA",
        "8": "SL",
        "9": "DF",
        "10": "TWW",
        "11": "MID"
    }

    # InstanceType translation table
    instance_lookup = {
        "0": "Outdoor",
        "1": "Dungeon",
        "2": "Raid",
        "3": "Battleground",
        "4": "Arena",
        "5": "Scenario",
        "6": "Unknown"
    }

    # Download CSVs into memory
    area_table_lines = download_csv("AreaTable", build)
    map_lines = download_csv("Map", build)

    # Parse CSVs with DictReader
    area_table_reader = csv.DictReader(area_table_lines)
    map_reader = csv.DictReader(map_lines)

    # Load Map.csv
    map_data = {}
    for row in map_reader:
        map_id = row["ID"]
        map_name = row["MapName_lang"]
        expansion_name = expansion_lookup.get(row["ExpansionID"], "N/A")
        instance_name = instance_lookup.get(row["InstanceType"], "N/A")
        map_data[map_id] = (map_name, expansion_name, instance_name)

    # Load AreaTable.csv into dict for ParentAreaID lookup
    area_table_dict = {}
    children_map = defaultdict(list)  # parent_id -> list of children

    for row in area_table_reader:
        area_id = row["ID"]
        parent_id = row["ParentAreaID"]

        area_table_dict[area_id] = row

        # Build children map
        if parent_id and parent_id != "0":
            children_map[parent_id].append(area_id)

    # Build lines
    all_lines = []
    map_ids_set = set()
    children_count = 0

    # Helper function to build line and update counters
    def build_line(area_id):
        nonlocal children_count
        row = area_table_dict[area_id]
        area_name = row["AreaName_lang"]
        continent_id = row["ContinentID"]
        parent_id = row["ParentAreaID"]

        # Lookup expansion/instance
        if continent_id in map_data:
            map_name, expansion_name, instance_name = map_data[continent_id]
        else:
            map_name, expansion_name, instance_name = "N/A", "N/A", "N/A"

        map_ids_set.add(continent_id)

        # Decide label
        is_child = False
        if parent_id and parent_id != "0" and parent_id in area_table_dict:
            parent_name = area_table_dict[parent_id]["AreaName_lang"]
            label = f"Parent {parent_id} - {parent_name}"
            is_child = True
        else:
            label = f"Map {continent_id} - {map_name}" if map_name != "N/A" else "N/A - N/A"

        if is_child:
            children_count += 1

        # Exploration type
        # Map → map_exploration; otherwise → exploration
        if label.startswith("Map"):
            exploration_text = f"map_exploration({area_id}),"
        else:
            exploration_text = f"exploration({area_id}),"

        line = f"[{expansion_name}] [{instance_name}] [{label}] {exploration_text}\t-- {area_name}"
        return (int(area_id), int(continent_id) if continent_id.isdigit() else 9999999, line)

    # Recursive function to process area and its children
    def process_area(area_id):
        all_lines.append(build_line(area_id))
        for child_id in sorted(children_map.get(area_id, []), key=int):
            process_area(child_id)

    map_groups = defaultdict(list)
    for area_id, row in area_table_dict.items():
        parent_id = row["ParentAreaID"]
        if not parent_id or parent_id == "0":
            continent_id = row["ContinentID"]
            map_groups[continent_id].append(area_id)

    # Process each map
    for map_id in sorted(map_groups.keys(), key=lambda x: int(x) if x.isdigit() else 9999999):
        for parent_area in sorted(map_groups[map_id], key=int):
            process_area(parent_area)  # Recursive, children processed after parent

    # Count maps and children for header
    map_count = sum(
        1
        for area_id, row in area_table_dict.items()
        if not row["ParentAreaID"] or row["ParentAreaID"] == "0" or row["ParentAreaID"] not in area_table_dict
    )

    children_count = sum(
        1
        for area_id, row in area_table_dict.items()
        if row["ParentAreaID"] and row["ParentAreaID"] != "0" and row["ParentAreaID"] in area_table_dict
    )

    total_count = map_count + children_count

    # Write output with header
    with open("ExplorationMapping.txt", "w", encoding="utf-8") as output_file:
        write_log_header(output_file, build, map_count, children_count, total_count)
        for _, _, line in all_lines:
            output_file.write(line + "\n")

    print(f"ExplorationOutput.txt created successfully.")

"""How to generate latest data from a new Build"""
"""Step 1: Run exploration_mapping(build: str) (You have to uncomment) with the build as a string ex. exploration_mapping("11.2.5.62785")."""
# exploration_mapping("11.2.7.64743")
"""Step 2: Choose if you want to generate the file sorted by AreaID or MapID/ParentID."""
