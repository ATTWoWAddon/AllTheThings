
# mypy: ignore-errors

def create_raw_file(thing: type[Thing]) -> None:
    """Create a raw file for a thing."""
    raw_path = Path("Raw", f"{thing.__name__}.txt")
    builds_path = Path("Builds", f"{thing.__name__}.txt")
    with open(builds_path) as builds_file:
        for build in builds_file:
            thing_list = get_thing_data(thing, build.strip())
            with open(raw_path, "r+") as raw_file:
                old_lines = raw_file.readlines()
                # TODO: this only finds new Things, not removed Things
                difference = sorted(
                    set(thing_list) - set(old_lines),
                    key=lambda x: (float(x.split(DELIMITER)[0])),
                )
                if difference:
                    raw_file.write(build)
                    raw_file.writelines(difference)


def create_named_file(thing: type[Thing]) -> None:
    raw_path = Path("Raw", f"{thing.__name__}.txt")
    named_path = Path("Named", f"{thing.__name__}.txt")
    raw_ids = extract_nth_column(raw_path, 0)
    ids = sorted(set(raw_ids), key=raw_ids.index)
    if thing in (
        Achievements,
        Factions,
        FlightPaths,
        Mounts,
        Titles,
    ):
        names: list[str] = extract_nth_column(raw_path, 1)
        for index, id in enumerate(ids):
            name_list: list[str] = []
            ids[index] = ids[index].strip()
            for raw_index, raw_id in enumerate(raw_ids):
                if id.strip() == raw_id.strip() and names[raw_index] != "--\n":
                    name_list.append(names[raw_index].rstrip())
            name_list.reverse()
            if id.strip().isdigit():
                ids[index] += DELIMITER + " \\\\ ".join(name_list) + "\n"
            else:
                ids[index] += "\n"
        with open(named_path, "w") as named_file:
            named_file.writelines(ids)


# def add_latest_data(build: str) -> None:
#    """Adds latest builds to build files and add latests data to raw files"""
#    add_latest_build(build)
#    things: list[type[Thing]] = Thing.__subclasses__()
#    for thing in things:
#        print(thing)
#        raw_path = Path("Raw", f"{thing.__name__}.txt")
#        thing_list = get_thing_data(thing, build.strip())
#        with open(raw_path, "r+") as raw_file:
#            old_lines = raw_file.readlines()
#            # TODO: this only finds new Things, not removed Things
#            difference = sorted(
#                set(thing_list) - set(old_lines),
#                key=lambda x: (float(x.split(DELIMITER)[0])),
#            )
#            if difference:
#                raw_file.write(build + "\n")
#                raw_file.writelines(difference)


# def add_latest_build(build: str) -> None:
#    """Append the latest build to all the BuildList files."""
#    for thing in Thing.__subclasses__():
#        with open(Path("Builds", f"{thing.__name__}.txt"), "a") as build_list:
#            build_list.write(build + "\n")


def check_diff():
    build_dict: dict[type[Thing], list[str]] = {}
    things: list[type[Thing]] = Thing.__subclasses__()
    main_list: list[str] = []
    for thing in things:
        with open(Path("Builds", f"{thing.__name__}.txt"), "r") as build_list:
            build_lines: list[str] = build_list.readlines()
            build_dict[thing] = build_lines
    with open(Path("Builds", "Achievements.txt"), "r") as main_build:
        main_build_lines: list[str] = main_build.readlines()
        for line in main_build_lines:
            if all(line in values for values in build_dict.values()):
                print(line)
                main_list.append(line)
    with open(Path("Builds", "Retail.txt"), "w") as build_list:
        build_list.writelines(main_list)

def check_diff():
    build_dict: dict[type[Thing], list[str]] = {}
    things: list[type[Thing]] = Thing.__subclasses__()
    things.remove(Illusions)
    things.remove(SpellNames)
    main_list: list[str] = []
    for thing in things:
        with open(Path("Builds", f"{thing.__name__}.txt"), "r") as build_list:
            build_lines: list[str] = build_list.readlines()
            build_dict[thing] = build_lines
    with open(Path("Builds", "Achievements.txt"), "r") as main_build:
        main_build_lines: list[str] = main_build.readlines()
        for line in main_build_lines:
            if all(line in values for values in build_dict.values()):
                main_list.append(line)
            else:
                for k, v in build_dict.items():
                    if line not in v:
                        print(line, k)
    for thing in things:
        if thing == Factions:
            for line in main_list:
                if line in build_dict[thing]:
                    build_dict[thing].remove(line)
            #with open(Path("Builds", f"{thing.__name__}2.txt"), "w") as build_list:
                #build_list.writelines(build_dict[thing])
    with open(Path("Builds", "Retail2.txt"), "w") as build_list:
        build_list.writelines(main_list)

def get_existing_ids_old(thing: type[Thing]) -> list[str]:
    """Get the IDs of a thing from Categories.lua."""
    if not thing.real_collectible:
        raise NotImplementedError("This is not a real collectible.")
    categories_path = Path("..", "..", "..", "ptr_db", "Dragonflight", "Categories.lua")
    existing_ids = list[str]()
    with open(categories_path, encoding="utf8") as categories_file:
        for line in categories_file:
            words = line.split(",")
            for word in words:
                if any(prefix in word for prefix in thing.existing_prefixes()):
                    if thing == Pets and "fp(" in word:
                        continue
                    thing_id = re.sub("[^\\d^.]", "", word)
                    existing_ids.append(thing_id + "\n")
    return existing_ids
def get_existing_ids_item(thing) -> list[str]:
    """WORK IN PROGRESS Get the IDs of a thing from Categories.lua."""
    id_path = Path("..", "..", "..", ".contrib", "Debugging", "AllItems.lua")
    uncol_path = Path(DATAS_FOLDER, "00 - Item Database", "Uncollectible.lua")
    existing_ids = list[str]()
    with open(id_path, encoding="utf8") as id_file:
        for line in id_file:
            words = line.split(',')
            for word in words:
                if any(prefix in word for prefix in thing.existing_prefixes()):
                    thing_id = re.sub("[^\\d^.]", "", word)
                    existing_ids.append(thing_id + "\n")
    with open(uncol_path, encoding="utf8") as id_file:
        for line in id_file:
            words = line.split(';')
            for word in words:
                if any(prefix in word for prefix in thing.existing_prefixes()):
                    thing_id = re.sub("[^\\d^.]", "", word)
                    existing_ids.append(thing_id + "\n")
    return existing_ids


def create_missing_recipes() -> None:
    """Create a missing file for Recipes using difference between debug, raw file and exclusions."""
    profession_dict: dict[str, list[str]] = build_profession_dict()
    raw_path_dict: dict[str, Path] = {
        profession: Path("Raw", "Professions", f"{profession}.txt")
        for profession in profession_dict
    }
    exclusion_path_dict: dict[str, Path] = {
        profession: Path("Exclusion", "Professions", f"{profession}.txt")
        for profession in profession_dict
    }
    missing_path_dict: dict[str, Path] = {
        profession: Path(
            DATAS_FOLDER,
            "00 - Missing DB",
            "Professions",
            f"{profession}.txt",
        )
        for profession in profession_dict
    }
    for profession in profession_dict:
        print(profession)
        with open(missing_path_dict[profession], "w") as missing_file:
            raw_ids = extract_nth_column(raw_path_dict[profession], 0)
            excluded_ids = extract_nth_column(exclusion_path_dict[profession], 0)
            difference = sorted(
                set(raw_ids) - set(get_existing_ids(Recipes)) - set(excluded_ids),
                key=raw_ids.index,
            )
            if (difference := remove_empty_builds(difference)):
                missing_file.writelines(difference)
            else:
                missing_file.write("Good Work! Nothing to do here!")
            if (difference_db := get_itemdb_difference(profession, raw_ids, excluded_ids)):
                missing_file.write(f"\n\n\n\nMissing in {profession}.lua\n\n")
                missing_file.writelines(difference_db)
            else:
                missing_file.write(f"\n\nNothing is Missing in {profession}.lua! Good Work!")
        if not difference and not difference_db and missing_path_dict[profession].exists():
            missing_path_dict[profession].unlink()
    return


def create_missing_file(thing: type[Thing]) -> None:
    """Create a missing file for a thing using difference between debug, raw file and exclusions."""
    if not thing.real_collectible:
        raise NotImplementedError("This is not a real collectible.")
    if thing == Recipes:
        create_missing_recipes()
        return
    missing_path = Path(
        DATAS_FOLDER,
        "00 - Missing DB",
        f"Missing{thing.__name__}.txt",
    )
    with open(missing_path, "w") as missing_file:
        raw_ids = extract_nth_column(Path("Raw", f"{thing.__name__}.txt"), 0)
        excluded_ids = extract_nth_column(Path("Exclusion", f"{thing.__name__}.txt"), 0)
        difference_db = None
        difference = sorted(
            set(raw_ids) - set(get_existing_ids(thing)) - set(excluded_ids),
            key=raw_ids.index,
        )
        if (difference := remove_empty_builds(difference)):
            missing_file.writelines(difference)
        else:
            missing_file.write("Good Work! Nothing to do here!")
        if thing.db_path:
            existing_things = list[str]()
            with open(thing.db_path) as db_file:
                for line in db_file:
                    if info := thing.extract_existing_info(line):
                        existing_things.append(info + "\n")
                difference_db = sorted(
                    set(raw_ids) - set(existing_things) - set(excluded_ids),
                    key=raw_ids.index,
                )
                if (difference_db := remove_empty_builds(difference_db)):
                    missing_file.write(f"\n\n\n\nMissing in {thing.db_path.name}\n\n")
                    missing_file.writelines(difference_db)
                else:
                    missing_file.write(f"\n\nNothing is Missing in {thing.db_path.name}! Good Work!")
    if not difference and not difference_db and missing_path.exists():
        missing_path.unlink()


def get_itemdb_difference(profession: str, raw_lines: list[str], excluded_recipes: list[str]) -> list[str]:
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
            difference = sorted(set(raw_lines) - set(itemdb_list) - set(excluded_recipes), key=raw_lines.index)
            difference = remove_empty_builds(difference)
            return difference
    except FileNotFoundError:
        print(f"This {profession} has no ItemDB")
        return []