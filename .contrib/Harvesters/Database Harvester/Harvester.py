# Tool Harvesters and Generating Missing with name
# mypy: ignore-errors
import csv
import re
import requests
import json
from pathlib import Path
from packaging import version
from packaging.version import Version
from typing import Optional
from collections.abc import Iterable
from QuestNames import get_quest_names
from ThingTypes import (
    DATAS_FOLDER,
    DEBUGGING_FOLDER,
    DELIMITER,
    FLAVOR_RANGES,
    FLAVOR_FOLDERS,
    Achievements,
    Factions,
    FlightPaths,
    Followers,
    Illusions,
    Items,
    Mounts,
    Pets,
    Quests,
    Recipes,
    Thing,
    Titles,
    Toys,
    Transmog,
    # SpellItems,
    SpellNames,
    # SkillLines,
    # Creatures,
    remove_non_digits,
)

"""Helper Functions"""
def things_version(build: str) -> list[type[Thing]]:
    thing_list: list[type[Thing]] = Thing.__subclasses__()
    if version.parse(build) < version.parse("1.14.0.39802"):
        thing_list.remove(Achievements)
    if version.parse(build) < version.parse("6.0.1.18179"):
        thing_list.remove(Followers)
    if version.parse(build) < version.parse("9.0.1.34365"):
        thing_list.remove(Illusions)
    if version.parse(build) < version.parse("5.0.3.15882"):
        thing_list.remove(Pets)
    if (
        version.parse("5.0.0.0") < version.parse(build) < version.parse("8.0.1.26367")
        or version.parse(build) == version.parse("4.0.1.12911")
        or version.parse(build) == version.parse("4.3.4.15595")
        ):
            thing_list.remove(SpellNames)
    return thing_list


def create_dict_from_raw(file_name: str, n: int) -> dict[str, list[str]]:
    """This function creates a dict of raw files"""
    raw_path = Path("Raw", file_name)
    item_dict: dict[str, list[str]] = {}
    with open(raw_path, "r+") as raw_file:
        lines = raw_file.readlines()
        for line in lines:
            try:
                key = line.split(DELIMITER)[0].strip()
                value = line.split(DELIMITER)[n].strip()
            except IndexError:
                continue
            if key in item_dict.keys():
                name_list: list[str] = item_dict[key]
                name_list.append(value)
                item_dict[key] = name_list
            else:
                item_dict[key] = [f"{value}"]
    return item_dict


def create_patch_dict_from_raw(thing: type[Thing], flavor: str) -> dict[str, list[dict[str, Optional[str]]]]:
    patch_data: dict[str, list[dict[str, Optional[str]]]] = {}
    keys: list[str] = thing.id_schema()
    current_patch: str = "1.0.0.00000"

    with open(Path("Raw", f"{thing.__name__}.txt"), "r") as file:
        for line in file:
            line = line.strip()
            if DELIMITER in line or line.isdigit():
                parts: list[str] = line.split(DELIMITER)
                entry: dict[str, Optional[str]] = { key: parts[i] if i < len(parts) else None for i, key in enumerate(keys) }
                if pre_process(thing, current_patch, parts[0], flavor):
                    patch_data[current_patch].append(entry)
            else:
                current_patch = line
                patch_data[current_patch] = []
                continue
    return patch_data


def create_patch_dict_from_raw_recipes(profession: str, flavor: str) -> dict[str, list[dict[str, Optional[str]]]]:
    patch_data: dict[str, list[dict[str, Optional[str]]]] = {}
    keys: list[str] = Recipes.id_schema()
    current_patch: str = "1.0.0.00000"

    with open(Path("Raw", "Professions", f"{profession}.txt"), "r") as file:
        for line in file:
            line = line.strip()
            if DELIMITER in line or line.isdigit():
                parts: list[str] = line.split(DELIMITER)
                entry: dict[str, Optional[str]] = { key: parts[i] if i < len(parts) else None for i, key in enumerate(keys) }
                if pre_process(Recipes, current_patch, parts[0], flavor):
                    if current_patch not in patch_data:
                        patch_data[current_patch] = []
                    patch_data[current_patch].append(entry)
            else:
                current_patch = line
                patch_data[current_patch] = []
                continue
    return patch_data


def pre_process(thing: type[Thing], current_patch: str, id: str, flavor: str) -> bool:
    patch: Version = version.parse(current_patch)
    id_int = int(id)

    # Check if current patch falls within the flavor's range
    min_ver, max_ver = FLAVOR_RANGES.get(flavor, (None, None))
    if min_ver and (patch > min_ver) and (max_ver is None or patch < max_ver):
        return True

    # Fallback: handle old IDs that still belong to Retail
    if flavor == "Retail" and (
        (thing == Achievements and id_int < 15000) or
        (thing == Factions and id_int < 2400) or
        (thing == FlightPaths and id_int < 2900) or
        (thing == Items and id_int < 172000) or
        (thing == Mounts and id_int < 348000) or
        (thing == Pets and id_int < 4100) or
        (thing == Quests and id_int < 60000) or
        (thing == Titles and id_int not in [210, 213, 217]) or
        (thing == Toys and id_int < 183000 and id_int not in [38233, 38506]) or
        (thing == Transmog and id_int < 146735) or
        (thing == Recipes and id_int < 350000)
    ):
        return True

    return False


def get_raw_ids(patch_data: dict[str, list[dict[str, Optional[str]]]]) -> set[str]:
    ids: set[str] = set()
    for entries in patch_data.values():
        for entry in entries:
            id_val = entry.get('id')
            if id_val:
                ids.add(id_val)
    return ids


def get_difference(patch_data: dict[str, list[dict[str, Optional[str]]]], raw_ids: set[str], existing_ids: Iterable[str], excluded_ids: Iterable[str]) -> dict[str, list[dict[str, Optional[str]]]]:
    filtered_patch_data: dict[str, list[dict[str, Optional[str]]]] = {}
    existing_ids = {s.strip() for s in existing_ids}
    excluded_ids = {s.strip() for s in excluded_ids}
    difference_set = set(raw_ids) - set(existing_ids) - set(excluded_ids)

    seen_ids: set[str] = set()
    for patch, entries in patch_data.items():
        filtered_entries: list[dict[str, Optional[str]]] = []
        for entry in entries:
            identifier = entry.get("id")
            if identifier in difference_set and identifier not in seen_ids:
                seen_ids.add(identifier)
                filtered_entries.append(entry)

        if filtered_entries:
            filtered_patch_data[patch] = filtered_entries

    return filtered_patch_data


def extract_nth_column(csv_path: Path, n: int) -> list[str]:
    """Extract nth column from CSV file."""
    csv_list: list[str] = []
    with open(csv_path) as csv_file:
        for line in csv_file:
            try:
                element: str = line.split(DELIMITER)[n].strip() + "\n"
                csv_list.append(element)
            except IndexError:
                empty_line: str = ""
                csv_list.append(empty_line)
    return csv_list


def remove_empty_builds(lines: list[str]) -> list[str]:
    """Remove builds that don't have any IDs."""
    clean_lines = [lines[0]]
    for line in lines[1:]:
        if not line.rstrip().isnumeric() and not clean_lines[-1].rstrip().isnumeric():
            clean_lines.pop()
        clean_lines.append(line)
    if not clean_lines[-1].rstrip().isnumeric():
        clean_lines.pop()
    return clean_lines


def get_other_skilllines() -> list[str]:
    """Get other interesting skilllines ."""
    other_skilllines = list[str]()
    with open(Path("Exclusion", "SkillLineOther.txt")) as skilllineother_file:
        for line in skilllineother_file:
            skillline_id = remove_non_digits(line.split(DELIMITER)[0])
            other_skilllines.append(skillline_id)
    return other_skilllines


def build_profession_dict() -> dict[str, list[str]]:
    profession_dict: dict[str, list[str]] = {}
    raw_profession_dict: dict[str, list[str]] = create_dict_from_raw("SkillLines.txt", 1)
    exclusion_list = extract_nth_column(Path("Exclusion", "SkillLines.txt"), 0)
    for exclusion in exclusion_list:
        raw_profession_dict.pop(exclusion.strip(), "")
    for key, value in raw_profession_dict.items():
        profession_dict[value[0]] = [key]
    profession_dict["Other"] = get_other_skilllines()
    profession_dict["Runeforging"] = ["776", "960"]
    return profession_dict


def read_file_in_order(file_path: str) -> list[str]:
    with open(file_path, 'r') as file:
        return [line.strip() for line in file.readlines()]


"""Programme"""
def check_build_difference() -> None:
    """Check difference between two text files (dropdown options from wago and whats currently in Builds.txt)"""
    # Paths to your dropdown-options.txt and Builds.txt files
    dropdown_file_path = 'dropdown-options.txt'  # Adjust this path if needed
    builds_file_path = 'Builds.txt'              # Adjust this path if needed
    output_file_path = 'comparison_result.txt'   # The file where the results will be written

    # Read the contents of both files in their original order
    dropdown_options = read_file_in_order(dropdown_file_path)
    builds_options = read_file_in_order(builds_file_path)

    # Find items that are in dropdown-options.txt but not in Builds.txt
    in_dropdown_not_in_builds = [item for item in dropdown_options if item not in builds_options]

    # Find items that are in Builds.txt but not in dropdown-options.txt
    in_builds_not_in_dropdown = [item for item in builds_options if item not in dropdown_options]

    # Write the results to a new file
    with open(output_file_path, 'w') as output_file:
        output_file.write("Items in dropdown-options.txt but not in Builds.txt:\n")
        for item in in_dropdown_not_in_builds:
            output_file.write(f"{item}\n")

        output_file.write("\nItems in Builds.txt but not in dropdown-options.txt:\n")
        for item in in_builds_not_in_dropdown:
            output_file.write(f"{item}\n")


def get_thing_table(thing: type[Thing], build: str) -> list[str]:
    """Get the table of a thing from a build."""
    url = f"https://wago.tools/db2/{thing.table()}/csv?build={build}"
    headers = {
        "User-Agent": "Mozilla/5.0 (Linux; Android 9; G3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.101 Mobile Safari/537.36"
    }
    return requests.get(url, headers=headers).content.decode("utf-8").splitlines()


def add_latest_build(build: str) -> list[str]:
    """Append the latest build to Builds.txt"""
    next_builds: list[str] = []
    with open("Builds.txt", "r") as build_list:
        build_lines: list[str] = build_list.readlines()
        for n, build_line in enumerate(build_lines):
            if version.parse(build) < version.parse(build_line):
                build_lines.insert(n, build + "\n")
                next_builds = build_lines[n:]
                break
        if version.parse(build) > version.parse(build_lines[-1]):
            build_lines.append(build + "\n")
            next_builds.append(build + "\n")
    with open("Builds.txt", "w") as build_list:
        build_list.writelines(build_lines)
    return next_builds


def get_thing_data(thing: type[Thing], build: str) -> list[str]:
    """Get the IDs (and some thing specific data) of a thing from a build."""
    thing_list: list[str] = list[str]()
    reader = csv.DictReader(get_thing_table(thing, build))
    for row in reader:
        try:
            thing_list.append(thing.extract_table_info(row, build) + "\n")
        except KeyError as error:
            print(f"{build} is CURSED! Check the Table for {thing} with KeyError as {error}\n\n")
            break
    try:
        print(thing_list[-1])
    except IndexError:
        print(f"Empty Table {build}, {thing}\n\n")
    return thing_list


def sort_raw_file_recipes() -> None:
    """Sort raw files for recipes."""
    profession_dict: dict[str, list[str]] = build_profession_dict()
    raw_path_dict: dict[str, Path] = {
        profession: Path("Raw", "Professions", f"{profession}.txt")
        for profession in profession_dict
    }
    with open(Path("Raw", "Recipes.txt")) as raw_file:
        raw_lines = raw_file.readlines()
        for profession in profession_dict:
            print(profession)
            recipe_list = list[str]()
            with open(raw_path_dict[profession], "r+") as sorted_file:
                for line in raw_lines:
                    if DELIMITER not in line:
                        recipe_list.append(line)
                        continue
                    spell, skill_line = line.split(DELIMITER)
                    if skill_line.strip() in profession_dict[profession]:
                        recipe_list.append(spell + "\n")
                recipe_list = remove_empty_builds(recipe_list)
                sorted_file.writelines(recipe_list)


def get_itemdb_difference(profession: str) -> list[str]:
    """Get itemDB difference for recipes"""
    itemdb_list = list[str]()
    itemdb_path = Path(
        DATAS_FOLDER,
        "00 - Profession DB",
        f"{profession}.lua",
    )
    try:
        with open(itemdb_path) as itemdb_file:
            for line in itemdb_file:
                try:
                    line = line.split(";")[0].split(",")[1]
                except IndexError:
                    line = ""
                line = remove_non_digits(line)
                itemdb_list.append(line + "\n")
            return itemdb_list
    except FileNotFoundError:
        print(f"This {profession} has no ItemDB")
        return []


def get_existing_ids(thing: type[Thing]) -> list[str]:
    """Get existing IDs from debug"""
    existing_ids = list[str]()
    debug_path = Path(DEBUGGING_FOLDER, f"{thing.debugDB_prefix()}ID_DebugDB.json")
    with open(debug_path, encoding="utf-8-sig") as debugDB_file:
        json_file = json.loads(debugDB_file.readlines()[0])
        if thing != Quests:
            for key in json_file.keys():
                existing_ids.append(f"{key}\n")
        else:
            for key in json_file.keys():
                existing_ids.append(f"{key}\n")
                try:
                    existing_ids.append(f"{json_file[key]['questIDH']}\n")
                except:
                    continue
    return existing_ids


def write_missing_file(
    name: str,
    patch_data: dict[str, list[dict[str, Optional[str]]]],
    thing: type[Thing],
    raw_ids: set[str],
    existing_ids: list[str],
    excluded_ids: list[str],
    db_ids: list[str] | None,
    output_path: Path,
    db_label: str,
) -> None:
    filtered_patch_data = get_difference(patch_data, raw_ids, existing_ids, excluded_ids)
    filtered_patch_data_db = get_difference(patch_data, raw_ids, db_ids, excluded_ids) if db_ids else {}

    with open(output_path, "w", encoding="utf-8") as missing_file:
        for patch, entries in filtered_patch_data.items():
            missing_file.write(f"{patch.strip()}\n")
            for entry in entries:
                values = [str((entry.get(field) or "").strip()) for field in thing.id_schema()]
                line = DELIMITER.join(values)
                missing_file.write(f"{line}\n")
        if db_ids is not None:
            if filtered_patch_data_db:
                missing_file.write(f"\n\n\n\nMissing in {db_label}\n\n")
                for patch, entries in filtered_patch_data_db.items():
                    missing_file.write(f"{patch.strip()}\n")
                    for entry in entries:
                        values = [str((entry.get(field) or "").strip()) for field in thing.id_schema()]
                        line = DELIMITER.join(values)
                        missing_file.write(f"{line}\n")
            else:
                missing_file.write(f"\n\nNothing is Missing in {db_label}! Good Work!")

    if not filtered_patch_data and not filtered_patch_data_db and output_path.exists():
        output_path.unlink()


def create_missing_file_recipes(flavor: str) -> None:
    profession_dict = build_profession_dict()

    for profession in profession_dict:
        patch_data = create_patch_dict_from_raw_recipes(profession, flavor)
        raw_ids = get_raw_ids(patch_data)
        existing_ids = get_existing_ids(Recipes)
        excluded_ids = extract_nth_column(Path("Exclusion", "Professions", f"{profession}.txt"), 0)
        db_ids = get_itemdb_difference(profession)

        missing_path = Path(DATAS_FOLDER, "00 - Missing DB", f"{FLAVOR_FOLDERS[flavor]}", "Professions", f"{profession}.txt")
        write_missing_file(profession, patch_data, Recipes, raw_ids, existing_ids, excluded_ids, db_ids, missing_path, profession)


def create_missing_file(thing: type[Thing], flavor: str) -> None:
    if not thing.real_collectible:
        raise NotImplementedError("This is not a real collectible.")
    if thing == Recipes:
        create_missing_file_recipes(flavor)
        return

    patch_data = create_patch_dict_from_raw(thing, flavor)
    raw_ids = get_raw_ids(patch_data)
    existing_ids = get_existing_ids(thing)
    excluded_ids = extract_nth_column(Path("Exclusion", f"{thing.__name__}.txt"), 0)
    db_ids: list[str] | None = None

    if thing.db_path:
        db_ids = []
        with open(thing.db_path, "r", encoding="utf-8") as db_file:
            for line in db_file:
                info = thing.extract_existing_info(line)
                if info:
                    db_ids.append(info.strip())

    missing_path = Path(DATAS_FOLDER, "00 - Missing DB", f"{FLAVOR_FOLDERS[flavor]}", f"Missing{thing.__name__}.txt")
    write_missing_file(thing.__name__, patch_data, thing, raw_ids, existing_ids, excluded_ids, db_ids, missing_path, thing.db_path.name if thing.db_path else "Database")


def post_process_recipes(flavor: str) -> None:
    profession_dict: dict[str, list[str]] = build_profession_dict()
    spell_dict: dict[str, list[str]] = create_dict_from_raw("SpellNames.txt", 1)
    missing_path_dict: dict[str, Path] = {
        profession: Path(
            DATAS_FOLDER,
            "00 - Missing DB",
            f"{FLAVOR_FOLDERS[flavor]}",
            "Professions",
            f"{profession}.txt",
        )
        for profession in profession_dict
    }
    for profession in profession_dict:
        print(profession)
        if not missing_path_dict[profession].exists():
            continue
        missing_lines = extract_nth_column(missing_path_dict[profession], 0)
        for index, id in enumerate(missing_lines):
            id = re.sub("[^\\d^.]", "", id.strip())
            if id.isdigit():
                missing_lines[index] = f"r({id}),\t--"
                if id in spell_dict.keys():
                    name_list: list[str] = spell_dict[id].copy()
                    name_list.reverse()
                    missing_lines[index] += " " + " \\\\ ".join(name_list) + "\n"
                else:
                    missing_lines[index] += "\n"
        with open(missing_path_dict[profession], "w") as missing_file:
            missing_file.writelines(missing_lines)
    return


def post_process(thing: type[Thing], flavor: str) -> None:
    """Get the name of a thing and clean up builds."""
    if not thing.real_collectible:
        raise NotImplementedError("This is not a real collectible.")
    if thing == Recipes:
        post_process_recipes(flavor)
        return
    missing_path = Path(
        DATAS_FOLDER,
        "00 - Missing DB",
        f"{FLAVOR_FOLDERS[flavor]}",
        f"Missing{thing.__name__}.txt",
    )
    if not missing_path.exists():
        return
    missing_lines = extract_nth_column(missing_path, 0)
    if thing in (
        Achievements,
        Factions,
        FlightPaths,
        Mounts,
        Titles,
        Items,
    ):
        thing_dict: dict[str, list[str]] = create_dict_from_raw(f"{thing.__name__}.txt", 1)
        for index, id in enumerate(missing_lines):
            id = re.sub("[^\\d^.]", "", id.strip())
            if id.isdigit():
                missing_lines[index] = f"{thing.new_prefix()}{id}),\t--"
                if id in thing_dict.keys():
                    name_list = thing_dict[id].copy()
                    name_list.reverse()
                    missing_lines[index] += " " + " \\\\ ".join(name_list) + "\n"
                else:
                    missing_lines[index] += "\n"
        with open(missing_path, "w") as missing_file:
            missing_file.writelines(missing_lines)
        return
    elif thing == Followers:
        follower_horde_dict: dict[str, list[str]] = create_dict_from_raw("Followers.txt", 1)
        follower_alliance_dict: dict[str, list[str]] = create_dict_from_raw("Followers.txt", 2)
        creature_dict: dict[str, list[str]] = create_dict_from_raw("Creatures.txt", 1)
        for index, follower_id in enumerate(missing_lines):
            follower_id = re.sub("[^\\d^.]", "", follower_id.strip())
            if follower_id.isdigit():
                missing_lines[index] = f"{thing.new_prefix()}{follower_id}),\t--"
                name_horde_id = follower_alliance_dict[follower_id][0]
                name_alliance_id = follower_horde_dict[follower_id][0]
                if name_alliance_id == name_horde_id:
                    name_id = name_alliance_id
                    if name_id in creature_dict.keys():
                        name_list = creature_dict[name_id].copy()
                        name_list.reverse()
                        missing_lines[index] += " " + " \\\\ ".join(name_list) + "\n"
                    else:
                        missing_lines[index] += "\n"
                else:
                    if name_alliance_id in creature_dict.keys():
                        name_list = creature_dict[name_alliance_id].copy()
                        name_list.reverse()
                        missing_lines[index] += "Alliance:"
                        missing_lines[index] += " " + " \\\\ ".join(name_list) + "\t"
                    else:
                        missing_lines[index] += "\n"
                    if name_horde_id in creature_dict.keys():
                        name_list = creature_dict[name_horde_id].copy()
                        name_list.reverse()
                        missing_lines[index] += "Horde:"
                        missing_lines[index] += " " + " \\\\ ".join(name_list) + "\n"
                    else:
                        missing_lines[index] += "\n"
        with open(missing_path, "w") as missing_file:
            missing_file.writelines(missing_lines)
        return
    elif thing == Illusions:
        spellitem_dict: dict[str, list[str]] = create_dict_from_raw("SpellItems.txt", 1)
        for index, id in enumerate(missing_lines):
            id = re.sub("[^\\d^.]", "", id.strip())
            if id.isdigit():
                missing_lines[index] = f"{thing.new_prefix()}{id}),\t--"
                if id in spellitem_dict.keys():
                    name_list = spellitem_dict[id].copy()
                    name_list.reverse()
                    missing_lines[index] += " " + " \\\\ ".join(name_list) + "\n"
                else:
                    missing_lines[index] += "\n"
        with open(missing_path, "w") as missing_file:
            missing_file.writelines(missing_lines)
        return
    elif thing == Quests:
        get_quest_names(flavor)
    elif thing == Pets:
        pet_dict: dict[str, list[str]] = create_dict_from_raw("Pets.txt", 1)
        creature_dict = create_dict_from_raw("Creatures.txt", 1)
        for index, pet_id in enumerate(missing_lines):
            pet_id = re.sub("[^\\d^.]", "", pet_id.strip())
            if pet_id.isdigit():
                missing_lines[index] = f"{thing.new_prefix()}{pet_id}),\t--"
                name_id = pet_dict[pet_id][0]
                if name_id in creature_dict.keys():
                    name_list = creature_dict[name_id].copy()
                    name_list.reverse()
                    missing_lines[index] += " " + " \\\\ ".join(name_list) + "\n"
                else:
                    missing_lines[index] += "\n"
        with open(missing_path, "w") as missing_file:
            missing_file.writelines(missing_lines)
        return
    elif thing == Toys:
        item_dict: dict[str, list[str]] = create_dict_from_raw("Items.txt", 1)
        for index, id in enumerate(missing_lines):
            id = re.sub("[^\\d^.]", "", id.strip())
            if id.isdigit():
                missing_lines[index] = f"{thing.new_prefix()}{id}),\t--"
                if id in item_dict.keys():
                    name_list = item_dict[id].copy()
                    name_list.reverse()
                    missing_lines[index] += " " + " \\\\ ".join(name_list) + "\n"
                else:
                    missing_lines[index] += "\n"
        with open(missing_path, "w") as missing_file:
            missing_file.writelines(missing_lines)
        return
    elif thing == Transmog:
        item_dict = create_dict_from_raw("Items.txt", 1)
        transmog_dict: dict[str, list[str]] = create_dict_from_raw("Transmog.txt", 1)
        for index, transmog_id in enumerate(missing_lines):
            transmog_id = re.sub("[^\\d^.]", "", transmog_id.strip())
            if transmog_id.isdigit():
                name_id = transmog_dict[transmog_id][0]
                missing_lines[index] = f"{thing.existing_prefixes()[0]}{transmog_id})/{thing.new_prefix()}{name_id}),\t--"
                if name_id in item_dict.keys():
                    name_list = item_dict[name_id].copy()
                    name_list.reverse()
                    missing_lines[index] += " " + " \\\\ ".join(name_list) + "\n"
                else:
                    missing_lines[index] += "\n"
        with open(missing_path, "w") as missing_file:
            missing_file.writelines(missing_lines)
        return


def add_latest_data(build: str) -> None:
    """Adds latest builds to build file and add latest data to raw files"""
    things: list[type[Thing]] = things_version(build)
    next_builds: list[str] = add_latest_build(build)
    for thing in things:
        print(thing)
        before_list: list[str] = []
        after_list: list[str] = []
        raw_path = Path("Raw", f"{thing.__name__}.txt")
        thing_list = get_thing_data(thing, build.strip())
        with open(raw_path, "r") as raw_file:
            old_lines = raw_file.readlines()
            for next_build in next_builds:
                if next_build in old_lines:
                    index = old_lines.index(next_build)
                    before_list = old_lines[:index]
                    after_list = old_lines[index:]
                    break
                else:
                    before_list = old_lines
                    after_list = []
            difference = sorted(
                set(thing_list) - set(before_list),
                key=lambda x: (float(x.split(DELIMITER)[0])),
            )
            if difference:
                before_list.append(build + "\n")
                before_list.extend(difference)
            else:
                print("Nothing New")
            before_list.extend(after_list)
            before_list = list(dict.fromkeys(before_list))
        with open(raw_path, "w") as raw_file:
            raw_file.writelines(before_list)
        if difference and thing == Items:
            with open("FastItem.txt", "w") as item_file:
                for index, name_line in enumerate(difference):
                    id: str = re.sub("[^\\d^.]", "", name_line.split(DELIMITER)[0].strip())
                    try:
                        name: str = name_line.split(DELIMITER)[1].strip()
                    except KeyError:
                        continue
                    if id.isdigit():
                        difference[index] = f"i({id}),\t-- {name}\n"
                    else:
                        difference[index] = difference[index]
                item_file.writelines(difference)


def create_missing_files(flavor: str) -> None:
    """This iterates over Things to create missing files"""
    things: list[type[Thing]] = Thing.__subclasses__()
    for thing in things:
        print('Missing File: ', thing)
        create_missing_file(thing, flavor)
        print('Post Process: ', thing)
        post_process(thing, flavor)


"""How to add latest data from a new Build"""
"""Step 1: Run add_latest_data(build: str) (You have to uncomment) with the build as a string ex. add_latest_data("10.2.5.53441"). """
# add_latest_data("")
"""Step 2a: If new SkillLines have has been added they need to be sorted manually. Ex. Language:Furbolg is not a real profession so it has to be added into Exclusion/SkillLines.txt. If its an interesting SkillLine it can be added to Exclusion/SkillLineOther.txt. If its a new profession just let it be"""
"""Step 3a: Run sort_raw_file_recipes() (you have to uncomment it) this will sort raw recipes into respective profession."""
# sort_raw_file_recipes()
"""Step 2b: If new items has been detected. They will be in FastItem.txt please add them to unsorted."""

"""How to generate Missing Files"""
"""Step 1: Delete questDB.json in DATAS/00 - Item Database folder"""
"""Step 2: Parse Retail with Debug Mode. Change parser config to a PTR patch if you want to account for PTR things."""
"""Step 3: Run create_missing_files(flavor) and (you have to uncomment it)"""
# create_missing_files("")
