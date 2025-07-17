import re
from abc import ABC, abstractmethod
from pathlib import Path
from packaging import version
from packaging.version import Version
from typing import Optional

DATAS_FOLDER = Path("..", "..", "Parser", "DATAS")
DEBUGGING_FOLDER = Path("..", "..", "..", ".contrib", "Debugging")
DELIMITER = "@@@"
# Define patch version ranges per flavor
FLAVOR_RANGES: dict[str, tuple[Version, Optional[Version]]] = {
    "Classic": (version.parse("0.0.0.00000"), version.parse("1.14.1.00000")),
    "SoM":     (version.parse("1.14.1.00000"), version.parse("1.15.0.00000")),
    "SoD":     (version.parse("1.15.0.00000"), version.parse("1.16.0.00000")),
    "TBC":     (version.parse("2.0.0.00000"), version.parse("3.0.0.00000")),
    "WotLK":   (version.parse("3.0.0.00000"), version.parse("4.0.0.00000")),
    "Cata":    (version.parse("4.0.0.00000"), version.parse("5.0.0.00000")),
    "MoP":     (version.parse("5.0.0.00000"), version.parse("6.0.0.00000")),
    "Retail":  (version.parse("6.0.0.00000"), None),
}

FLAVOR_FOLDERS: dict[str, str] = {
    "Classic": "01 - Classic",
    "SoM": "02 - Season of Mastery",
    "SoD": "03 - Season of Discovery",
    "TBC": "04 - The Burning Crusade",
    "WotLK": "05 - Wrath of the Lich King",
    "Cata": "06 - Cataclysm",
    "MoP": "07 - Mists of Pandaria",
    "Retail": "99 - The War Within",
}


def remove_non_digits(string: str) -> str:
    return re.sub("\\D", "", string)


class Thing(ABC):
    real_collectible: bool = True
    db_path: Path | None = None

    @staticmethod
    @abstractmethod
    def table() -> str:
        ...

    @staticmethod
    def debugDB_prefix() -> str:
        raise NotImplementedError

    @staticmethod
    def existing_prefixes() -> tuple[str, ...]:
        raise NotImplementedError

    @staticmethod
    def new_prefix() -> str:
        raise NotImplementedError

    @staticmethod
    @abstractmethod
    def extract_table_info(row: dict[str, str], build: str | None = None) -> str:
        ...

    @staticmethod
    def extract_existing_info(line: str) -> str | None:
        raise NotImplementedError

    @staticmethod
    def id_schema() -> list[str]:
        raise NotImplementedError


class Achievements(Thing):
    @staticmethod
    def table() -> str:
        return "achievement"

    @staticmethod
    def debugDB_prefix() -> str:
        return "ach"

    @staticmethod
    def existing_prefixes() -> tuple[str, ...]:
        return ("ach(",)

    @staticmethod
    def new_prefix() -> str:
        return Achievements.existing_prefixes()[0]

    @staticmethod
    def extract_table_info(row: dict[str, str], build: str | None = None) -> str:
        # Achievements have names in the same db
        title = "Title_lang" if "Title_lang" in row else "Title_lang[0]"
        return f"{row['ID']}{DELIMITER}{row[title]}"

    @staticmethod
    def id_schema() -> list[str]:
        return ["id", "name"]


class Factions(Thing):
    @staticmethod
    def table() -> str:
        return "faction"

    @staticmethod
    def debugDB_prefix() -> str:
        return "faction"

    @staticmethod
    def existing_prefixes() -> tuple[str, ...]:
        return ("faction(",)

    @staticmethod
    def new_prefix() -> str:
        return Factions.existing_prefixes()[0]

    @staticmethod
    def extract_table_info(row: dict[str, str], build: str | None = None) -> str:
        # Factions have names in the same db
        if build and version.parse(build) < version.parse("3.4.2.49658") and version.parse(build) > version.parse("3.4.1.46722"):
            name = "Field_3_4_1_46722_001_lang"
            id = "Field_3_4_1_46722_003"
        else:
            name = "Name_lang" if "Name_lang" in row else "Name_lang[0]"
            id = "ID"
        return f"{row[id]}{DELIMITER}{row[name]}"

    @staticmethod
    def id_schema() -> list[str]:
        return ["id", "name"]


class FlightPaths(Thing):
    @staticmethod
    def table() -> str:
        return "taxinodes"

    @staticmethod
    def debugDB_prefix() -> str:
        return "flightpath"

    @staticmethod
    def existing_prefixes() -> tuple[str, ...]:
        return ("fp(",)

    @staticmethod
    def new_prefix() -> str:
        return FlightPaths.existing_prefixes()[0]

    @staticmethod
    def extract_table_info(row: dict[str, str], build: str | None = None) -> str:
        # Flight Paths have names in the same db
        name = "Name_lang" if "Name_lang" in row else "Name_lang[0]"
        if build == "8.0.1.26321":  # Cursed build
            return f"{row[name]}{DELIMITER}--"
        else:
            return f"{row['ID']}{DELIMITER}{row[name]}"

    @staticmethod
    def extract_existing_info(line: str) -> str:
        fp_line = line.split("=")[0]
        fp_line = remove_non_digits(fp_line)
        return fp_line

    @staticmethod
    def id_schema() -> list[str]:
        return ["id", "name"]


class Followers(Thing):
    @staticmethod
    def table() -> str:
        return "garrfollower"

    @staticmethod
    def debugDB_prefix() -> str:
        return "follower"

    @staticmethod
    def existing_prefixes() -> tuple[str, ...]:
        return "follower(", "followerID"

    @staticmethod
    def new_prefix() -> str:
        return Followers.existing_prefixes()[0]

    @staticmethod
    def extract_table_info(row: dict[str, str], build: str | None = None) -> str:
        # Follower Names need creature db
        horde, alliance = "HordeCreatureID", "AllianceCreatureID"
        if build == "6.0.1.18179":  # Cursed build
            horde, alliance = "Field_6_0_1_18179_001", "Field_6_0_1_18179_002"
        return f"{row['ID']}{DELIMITER}{row[horde]}{DELIMITER}{row[alliance]}"

    @staticmethod
    def id_schema() -> list[str]:
        return ["id", "name_h", "name_a"]


class Illusions(Thing):
    db_path = Path(DATAS_FOLDER, "00 - DB", "IllusionDB.lua")

    @staticmethod
    def table() -> str:
        return "transmogillusion"

    @staticmethod
    def debugDB_prefix() -> str:
        return "illusion"

    @staticmethod
    def existing_prefixes() -> tuple[str, ...]:
        return ("ill(",)

    @staticmethod
    def new_prefix() -> str:
        return Illusions.existing_prefixes()[0]

    @staticmethod
    def extract_table_info(row: dict[str, str], build: str | None = None) -> str:
        # Illusion names are in the SpellItemEnchantmentID db
        return f"{row['SpellItemEnchantmentID']}"

    @staticmethod
    def extract_existing_info(line: str) -> str | None:
        if match := re.search("i\\(\\d+, (\\d+)", line):
            return match.group(1)
        else:
            return None

    @staticmethod
    def id_schema() -> list[str]:
        return ["id"]

class Items(Thing):
    @staticmethod
    def table() -> str:
        return "itemsparse"

    @staticmethod
    def debugDB_prefix() -> str:
        return "item"

    @staticmethod
    def existing_prefixes() -> tuple[str, ...]:
        return "i(", "itemID", '"i"'

    @staticmethod
    def new_prefix() -> str:
        return "i("

    @staticmethod
    def extract_table_info(row: dict[str, str], build: str | None = None) -> str:
        # Helps Toys and Transmog
        return f"{row['ID']}{DELIMITER}{row['Display_lang'].strip()}"

    @staticmethod
    def id_schema() -> list[str]:
        return ["id", "name"]

class Mounts(Thing):
    db_path = Path(DATAS_FOLDER, "00 - DB", "MountDB.lua")

    @staticmethod
    def table() -> str:
        return "mount"

    @staticmethod
    def debugDB_prefix() -> str:
        return "mount"

    @staticmethod
    def existing_prefixes() -> tuple[str, ...]:
        return ("mnt(",)

    @staticmethod
    def new_prefix() -> str:
        return "mount("

    @staticmethod
    def extract_table_info(row: dict[str, str], build: str | None = None) -> str:
        # Mounts have names in the same db
        return f"{row['SourceSpellID']}{DELIMITER}{row['Name_lang']}"

    @staticmethod
    def extract_existing_info(line: str) -> str | None:
        if match := re.search("i\\(\\d+, (\\d+)", line):
            return match.group(1)
        else:
            return None

    @staticmethod
    def id_schema() -> list[str]:
        return ["id", "name"]


class Pets(Thing):
    db_path = Path(DATAS_FOLDER, "00 - DB", "PetDB.lua")

    @staticmethod
    def table() -> str:
        return "battlepetspecies"

    @staticmethod
    def debugDB_prefix() -> str:
        return "species"

    @staticmethod
    def existing_prefixes() -> tuple[str, ...]:
        return ("p(",)

    @staticmethod
    def new_prefix() -> str:
        return "pet("

    @staticmethod
    def extract_table_info(row: dict[str, str], build: str | None = None) -> str:
        # Pet Names need creature db
        return f"{row['ID']}{DELIMITER}{row['CreatureID']}"

    @staticmethod
    def extract_existing_info(line: str) -> str | None:
        if match := re.search("i\\(\\d+, (\\d+)", line):
            return match.group(1)
        elif match := re.search("n\\(\\d+, (\\d+)", line):
            return match.group(1)
        else:
            return None

    @staticmethod
    def id_schema() -> list[str]:
        return ["id", "creature_id"]


class Quests(Thing):
    @staticmethod
    def table() -> str:
        return "questv2"

    @staticmethod
    def debugDB_prefix() -> str:
        return "quest"

    @staticmethod
    def existing_prefixes() -> tuple[str, ...]:
        return "q(", "questID"

    @staticmethod
    def new_prefix() -> str:
        return "q("

    @staticmethod
    def extract_table_info(row: dict[str, str], build: str | None = None) -> str:
        return row["ID"]

    @staticmethod
    def id_schema() -> list[str]:
        return ["id"]


class Recipes(Thing):
    @staticmethod
    def table() -> str:
        return "skilllineability"

    @staticmethod
    def debugDB_prefix() -> str:
        return "recipe"

    @staticmethod
    def existing_prefixes() -> tuple[str, ...]:
        return ("r(",)

    @staticmethod
    def new_prefix() -> str:
        return Recipes.existing_prefixes()[0]

    @staticmethod
    def extract_table_info(row: dict[str, str], build: str | None = None) -> str:
        # Recipe names are in the SpellName db and Profession names are in SkillLine db
        return f"{row['Spell']}{DELIMITER}{row['SkillLine']}"

    @staticmethod
    def id_schema() -> list[str]:
        return ["id"]


class Titles(Thing):
    @staticmethod
    def table() -> str:
        return "chartitles"

    @staticmethod
    def debugDB_prefix() -> str:
        return "title"

    @staticmethod
    def existing_prefixes() -> tuple[str, ...]:
        return ("title(",)

    @staticmethod
    def new_prefix() -> str:
        return Titles.existing_prefixes()[0]

    @staticmethod
    def extract_table_info(row: dict[str, str], build: str | None = None) -> str:
        # Titles have names in the same db
        name = "Name_lang" if "Name_lang" in row else "Name_lang[0]"
        return f"{row['Mask_ID']}{DELIMITER}{row[name]}"

    @staticmethod
    def id_schema() -> list[str]:
        return ["id", "name"]


class Toys(Thing):
    db_path = Path(DATAS_FOLDER, "00 - DB", "ToyDB.lua")

    @staticmethod
    def table() -> str:
        return "toy"

    @staticmethod
    def debugDB_prefix() -> str:
        return "toy"

    @staticmethod
    def existing_prefixes() -> tuple[str, ...]:
        return ("toy(",)

    @staticmethod
    def new_prefix() -> str:
        return "i("

    @staticmethod
    def extract_table_info(row: dict[str, str], build: str | None = None) -> str:
        # Item names are in Item Sparse db
        return row["ItemID"]

    @staticmethod
    def extract_existing_info(line: str) -> str | None:
        if match := re.search("i\\((\\d+)", line):
            return match.group(1)
        else:
            return None

    @staticmethod
    def id_schema() -> list[str]:
        return ["id"]


class Transmog(Thing):
    @staticmethod
    def table() -> str:
        return "itemmodifiedappearance"

    @staticmethod
    def debugDB_prefix() -> str:
        return "source"

    @staticmethod
    def existing_prefixes() -> tuple[str, ...]:
        return ("s(",)

    @staticmethod
    def new_prefix() -> str:
        return "i("

    @staticmethod
    def extract_table_info(row: dict[str, str], build: str | None = None) -> str:
        # Item names are in Item Sparse db.
        sourceID, itemID = 'ID', 'ItemID'
        if build == "10.2.7.54171":  # Cursed build
            sourceID, itemID = 'Field_10_2_7_54171_000', 'Field_10_2_7_54171_001'
        return f"{row[sourceID]}{DELIMITER}{row[itemID]}"

    @staticmethod
    def id_schema() -> list[str]:
        return ["id", "item_ID"]


class Creatures(Thing):
    real_collectible = False

    @staticmethod
    def table() -> str:
        return "creature"

    @staticmethod
    def extract_table_info(row: dict[str, str], build: str | None = None) -> str:
        # Helps Followers and Pets to get names
        return f"{row['ID']}{DELIMITER}{row['Name_lang']}"

    @staticmethod
    def id_schema() -> list[str]:
        return ["id", "name"]


class SpellItems(Thing):
    real_collectible = False

    @staticmethod
    def table() -> str:
        return "spellitemenchantment"

    @staticmethod
    def extract_table_info(row: dict[str, str], build: str | None = None) -> str:
        # Helps Illusion names
        name = "Name_lang" if "Name_lang" in row else "Name_lang[0]"
        return f"{row['ID']}{DELIMITER}{row[name]}"

    @staticmethod
    def id_schema() -> list[str]:
        return ["id", "name"]


class SpellNames(Thing):
    real_collectible = False

    @staticmethod
    def table() -> str:
        return "spellname"

    @staticmethod
    def extract_table_info(row: dict[str, str], build: str | None = None) -> str:
        # Helps Recipes
        return f"{row['ID']}{DELIMITER}{row['Name_lang']}"

    @staticmethod
    def id_schema() -> list[str]:
        return ["id", "name"]


class SkillLines(Thing):
    real_collectible = False

    @staticmethod
    def table() -> str:
        return "skillline"

    @staticmethod
    def extract_table_info(row: dict[str, str], build: str | None = None) -> str:
        # Helps Professions
        name = (
            "DisplayName_lang" if "DisplayName_lang" in row else "DisplayName_lang[0]"
        )
        return f"{row['ID']}{DELIMITER}{row[name]}"

    @staticmethod
    def id_schema() -> list[str]:
        return ["id", "name"]
