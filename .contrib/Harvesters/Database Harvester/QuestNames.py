# mypy: ignore-errors
import requests
from bs4 import BeautifulSoup
from pathlib import Path
from packaging import version
from ThingTypes import (
    DATAS_FOLDER,
    DELIMITER,
)


def create_dict_from_raw(file_name: str) -> dict[str, list[str]]:
    """This function creates a dict of raw files"""
    raw_path = Path("Raw", "QuestNames", file_name)
    item_dict: dict[str, list[str]] = {}
    with open(raw_path, "r+") as raw_file:
        lines = raw_file.readlines()
        for line in lines:
            try:
                key = line.split(DELIMITER)[0].strip()
                value = line.split(DELIMITER)[1].strip()
            except IndexError:
                continue
            if key in item_dict.keys():
                name_list: list[str] = item_dict[key]
                name_list.append(value)
                item_dict[key] = name_list
            else:
                item_dict[key] = [f"{value}"]
    return item_dict


def get_name(expansion: str, quest_id: str) -> str:
    """This function try to get the quest name from wowhead."""
    name: str = ""
    url = f"https://www.wowhead.com/{expansion}/quest={quest_id}"
    headers = {
        "User-Agent": "Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Maxthon/4.4.4.600 Chrome/30.0.1599.101 Safari/537.36"
    }
    html = requests.get(url, headers=headers).text
    soup = BeautifulSoup(html, "lxml")
    res1 = soup.findAll("h1", {"class": "heading-size-1"})
    res2 = soup.findAll("div", {"class": "database-detail-page-not-found-message"})
    if not res2:
        for r in res1:
            name = f"{r.text}"
    else:
        name = "--"
    return name

def get_available_expansions(patch: str) -> dict[str, str]:
    """This Function return proper expansion data for the patch"""
    expansion_dict: dict[str, str] = {}
    if version.parse("1.15.0.0") < version.parse(patch) < version.parse("1.15.9.9"):
        expansion_dict = {
            "Retail": "",
            "CLASSIC" : "classic",
        }
    elif version.parse(patch) < version.parse("2.0.0.0"):
        expansion_dict = {
            "Retail": "",
            "CLASSIC": "classic",
            "TBC": "tbc",
            "WOTLK": "wotlk",
            "CATA": "cata",
            "MOP": "mop-classic",
        }
        print("Classic :", patch)
    elif version.parse(patch) < version.parse("3.0.0.0"):
        expansion_dict = {
            "Retail": "",
            "TBC": "tbc",
            "WOTLK": "wotlk",
            "CATA": "cata",
            "MOP": "mop-classic",
        }
        print("TBC :", patch)
    elif version.parse(patch) < version.parse("4.0.0.0"):
        expansion_dict = {
            "Retail": "",
            "WOTLK": "wotlk",
            "CATA": "cata",
            "MOP": "mop-classic",
        }
        print("Wotlk :", patch)
    elif version.parse(patch) < version.parse("5.0.0.0"):
        expansion_dict = {
            "Retail": "",
            "CATA": "cata",
            "MOP": "mop-classic",
        }
        print("Cata :", patch)
    elif version.parse(patch) < version.parse("6.0.0.0"):
        expansion_dict = {
            "Retail": "",
            "MOP": "mop-classic",
        }
        print("MoP :", patch)
    elif version.parse(patch) < version.parse("11.0.0.0"):
        expansion_dict = {
            "Retail": "",
        }
        print("WoD-DF :", patch)
    elif version.parse(patch) < version.parse("11.1.5.99999"):
        expansion_dict = {
            "Retail": "",
            "PTR": "ptr",
            "PTR2": "ptr-2",
            #"BETA": "beta",
        }
        print("11.0.0-11.1.0 :", patch)
    elif version.parse(patch) < version.parse("11.1.7.99999"):
        expansion_dict = {
            #"PTR": "ptr",
            "PTR2": "ptr-2",
        }
        print("11.1.5 :", patch)
    return expansion_dict

def get_quest_names() -> None:
    """This function gives questIDs names based on wowhead"""
    expansion_dict: dict[str, str] = {
        "Retail": "",
        "CLASSIC": "classic",
        "TBC": "tbc",
        "WOTLK": "wotlk",
        "CATA": "cata",
        "MOP": "mop-classic",
        "PTR": "ptr",
        "PTR2": "ptr-2",
        "BETA": "beta",
    }
    raw_path_dict: dict[str, Path] = {
        expansion: Path("Raw", "QuestNames", f"{expansion}.txt")
        for expansion in expansion_dict
    }
    existing_name_dict: dict[str, dict[str, list[str]]] = {
        expansion: create_dict_from_raw(f"{expansion}.txt")
        for expansion in expansion_dict
    }
    missing_path = Path(
        DATAS_FOLDER,
        "00 - Missing DB",
        "MissingQuests.txt",
    )
    with open(missing_path, "r") as missing_file:
        missing_lines: list[str] = missing_file.readlines()
        for index, missing_line in enumerate(missing_lines):
            missing_line = missing_line.strip()
            name_dict: dict[str, str] = {
                expansion: ""
                for expansion in expansion_dict
            }
            if missing_line.isdigit():
                quest_name: str = f"q({missing_line}),\t--"
                for expansion in expansion_dict:
                    try:
                        name_dict[expansion] = existing_name_dict[expansion][missing_line][0].strip()
                    except KeyError:
                        print(f"Have to get {expansion}: {missing_line}")
                        name_dict[expansion] = get_name(expansion_dict[expansion], missing_line)
                        with open(raw_path_dict[expansion], "a") as expansion_file:
                            expansion_file.write(f"{missing_line}{DELIMITER}{name_dict[expansion]}\n")
                        continue
                for expansion in name_dict:
                    if name_dict[expansion].strip() != "--":
                        if (expansion == "PTR" or expansion == "PTR2" or expansion == "BETA") and "Retail" in expansion_dict.keys() and name_dict["Retail"] == name_dict["PTR"]:
                            quest_name = quest_name
                        elif expansion == "Retail":
                            quest_name = quest_name+f" {name_dict[expansion]}\t"
                        else:
                            quest_name = quest_name+f" {expansion}:{name_dict[expansion]}\t"
                missing_lines[index] = f"{quest_name.rstrip()}\n"
            else:
                expansion_dict = get_available_expansions(missing_line)
    with open(missing_path, "w") as missing_file:
        missing_file.writelines(missing_lines)
