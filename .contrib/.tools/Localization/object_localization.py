"""
Functions used for object localization (all TODOs and simple sync when adding/removing objects in ObjectDB.lua).
"""

import asyncio
import fileinput
import logging
import re
import sys
from collections.abc import Coroutine
from enum import Enum
from pathlib import Path
from typing import NamedTuple

from aiohttp.client import ClientSession
from bs4 import BeautifulSoup

logging.basicConfig(
    format="%(levelname)s:%(message)s", stream=sys.stdout, level=logging.INFO
)

CUSTOM_OBJECTS_CONST = 9000000
LOCALES_DIR = Path("..", "..", "..", "locales")


class LangCode(Enum):
    ENGLISH = ""
    DEUTSCH = "de"
    SPANISH = "es"
    FRENCH = "fr"
    ITALIAN = "it"
    PORTUGUESE = "pt"
    RUSSIAN = "ru"
    KOREAN = "ko"
    CHINESE = "cn"


class GameFlavor(Enum):
    RETAIL = ""
    WOTLK = "wotlk"
    # TBC = "tbc"  # no live TBC realms anymore
    CLASSIC = "classic"


async def get_localized_obj_name_flavor(
    session: ClientSession,
    obj_id: int,
    lang_code: LangCode = LangCode.ENGLISH,
    game_flavor: GameFlavor = GameFlavor.RETAIL,
) -> str:
    url = "https://"
    if lang_code != LangCode.ENGLISH:
        url += f"{lang_code.value}."
    if game_flavor == GameFlavor.CLASSIC:
        url += f"{game_flavor.value}."
    url += "wowhead.com/"
    if game_flavor == GameFlavor.WOTLK:
        url += f"{game_flavor.value}/"
    url += f"object={obj_id}"
    try:
        async with session.get(url=url) as response:
            if any(test in response.url.human_repr() for test in ("ptr", "beta")):
                logging.warning(f"{url} redirects to {response.url.human_repr()}")
                return ""
            resp = await response.read()
            soup = BeautifulSoup(resp, "html.parser")
            not_found = soup.find(
                "div", class_="database-detail-page-not-found-message"
            )
            if not_found is not None:
                logging.info(f"Can't find object {obj_id} at {url}!")
                return ""

            heading = soup.find("h1", class_="heading-size-1")
            if heading is None:
                logging.warning(f"Can't find heading-size-1 for {obj_id} at {url}!")
                return ""
            text = heading.text
            # not localized names look like [en_obj_name] on Wowhead
            # at the same time keep enUS names because sometimes deprecated names start with brackets
            if text.startswith("[") and lang_code != LangCode.ENGLISH:
                logging.info(f"No localization for {obj_id}: {text}")
                return ""
            if '"' in text:
                return text.replace('"', '\\"')
            return text
    except Exception as e:
        print(f"Unable to get url {url} due to {e.__class__}.")
    return ""


async def get_localized_obj_name(
    session: ClientSession, obj_id: int, lang_code: LangCode = LangCode.ENGLISH
) -> tuple[str, GameFlavor]:
    if obj_id >= CUSTOM_OBJECTS_CONST:
        return "", GameFlavor.RETAIL
    game_flavor = GameFlavor.RETAIL
    localized_obj_name = ""
    for game_flavor in GameFlavor:
        localized_obj_name = await get_localized_obj_name_flavor(
            session, obj_id, lang_code, game_flavor
        )
        if localized_obj_name != "":
            break
    return localized_obj_name, game_flavor


def get_todo_lines(lines: list[str]) -> dict[int, int]:
    todo_dict: dict[int, int] = {}
    for ind, line in enumerate(lines):
        if "ObjectNames" in line:
            # logging.info(f"Found beginning at line {ind + 2}!")
            while True:
                line = lines[ind]
                if "}" in line:
                    # logging.info(f"Found ending at line {ind - 1}!")
                    break
                if "--TODO: " in line:
                    match = re.search(r"\d+", line)
                    if match is None:
                        logging.error(f"Couldn't find id in line {ind}: {line}")
                        ind += 1
                        continue
                    obj_id = int(match.group())
                    todo_dict[ind] = obj_id
                ind += 1
            break
    return todo_dict


async def attach_line_ind(
    localized_object: Coroutine[int, LangCode, tuple[str, GameFlavor]], line_ind: int
) -> tuple[str, GameFlavor, int]:
    return *(await localized_object), line_ind


async def get_localized_names(
    session: ClientSession, todo_dict: dict[int, int], lang_code: LangCode
) -> dict[int, tuple[str, GameFlavor]]:
    localized_dict: dict[int, tuple[str, GameFlavor]] = {}
    localized_objects = await asyncio.gather(
        *[
            attach_line_ind(
                get_localized_obj_name(session, obj_id, lang_code), line_ind
            )
            for line_ind, obj_id in todo_dict.items()
        ]
    )
    for localized_object in localized_objects:
        name, game_flavor, line_ind = localized_object
        # no obj_id found, no heading found or no localization
        if not name:
            continue
        localized_dict[line_ind] = (name, game_flavor)

    return localized_dict


async def localize_objects(
    session: ClientSession,
    filepath: Path,
    lang_code: LangCode,
    original_obj_names: dict[int, str],
) -> dict[int, str]:
    logging.info(f"Starting {lang_code}!")
    with open(filepath, encoding="utf-8") as file:
        lines = file.readlines()

    todo_dict = get_todo_lines(lines)

    logging.info(f"Names to localize: {len(todo_dict)}")

    localized_dict = await get_localized_names(session, todo_dict, lang_code)

    for line in fileinput.input(filepath, inplace=True, encoding="utf-8"):
        old_line = line
        line_ind = fileinput.filelineno() - 1  # filelineno() indexing starts from 1
        if line_ind in localized_dict:
            obj_id = todo_dict[line_ind]
            # have to get name from Wowhead cause it might be name from non retail in this line
            # but still check all flavors in case retail is missing this object
            if obj_id not in original_obj_names:
                original_obj_names[obj_id], _ = await get_localized_obj_name(
                    session, obj_id
                )
            original_obj_name = original_obj_names[obj_id]
            obj_name, game_flavor = localized_dict[line_ind]
            line = f'\t[{obj_id}] = "{obj_name}",\t-- {original_obj_name}\n'
            if game_flavor != GameFlavor.RETAIL:
                line = re.sub(
                    "\n",
                    f"\t--TODO: This was taken from {game_flavor.value} Wowhead\n",
                    line,
                )
        print(line, end="")  # this writes to file
        if old_line != line:
            logging.info(line)

    return original_obj_names


def sort_objects(filepath: Path) -> None:
    with open(filepath, encoding="utf-8") as file:
        lines = file.readlines()
    lines_copy = lines.copy()

    todo_dict: dict[int, int] = {}
    first_obj_line = -1
    last_obj_line = -1
    for ind, line in enumerate(lines):
        if "ObjectNames" in line:
            first_obj_line = ind + 2
            ind += 2
            if "ObjectDB" in filepath.stem:
                first_obj_line -= 1
                ind -= 1
            # logging.info(f"Found beginning at line {first_obj_line}!")
            while True:
                line = lines[ind]

                if "}" in line:
                    last_obj_line = ind - 1
                    # logging.info(f"Found ending at line {last_obj_line}!")
                    break

                match = re.search(r"\d+", line)
                if match is None:
                    logging.error(f"Couldn't find id in line {ind}: {line}")
                    ind += 1
                    continue
                obj_id = int(match.group())
                todo_dict[ind] = obj_id
                ind += 1
            break
    if first_obj_line == -1:
        logging.error("Couldn't find list of objects.")
        return
    if last_obj_line == -1:
        logging.error("Couldn't find end of object list.")
        return
    sorted_list = list(
        dict(sorted(todo_dict.items(), key=lambda item: item[1])).items()
    )

    obj_ind = 0
    for line in fileinput.input(filepath, inplace=True, encoding="utf-8"):
        line_ind = fileinput.filelineno() - 1  # filelineno() indexing starts from 1
        if first_obj_line <= line_ind <= last_obj_line:
            line = lines_copy[sorted_list[obj_ind][0]]
            obj_ind += 1
        print(line, end="")  # this writes to file


class Object(NamedTuple):
    id: int
    name: str
    line: str


class ObjectsInfo(NamedTuple):
    objects: list[Object]
    first_line: int
    last_line: int


async def get_objects_info(session: ClientSession, filepath: Path) -> ObjectsInfo:
    sort_objects(filepath)
    with open(filepath, encoding="utf-8") as file:
        lines = file.readlines()

    objects: list[Object] = []
    first_obj_line = 0
    last_obj_line = 0
    for ind, line in enumerate(lines):
        if "ObjectNames" in line:
            first_obj_line = ind + 2
            ind += 2
            if "ObjectDB" in filepath.stem:
                first_obj_line -= 1
                ind -= 1
            # logging.info(f"Found beginning at line {first_obj_line}!")
            while True:
                line = lines[ind]

                if "}" in line:
                    last_obj_line = ind - 1
                    # logging.info(f"Found ending at line {last_obj_line}!")
                    break

                match = re.search(r"\d+", line)
                if match is None:
                    logging.error(f"Couldn't find id in line {ind}: {line}")
                    ind += 1
                    continue
                obj_id = int(match.group())

                if "GetSpellInfo" in line:  # skip GetSpellInfo lines
                    ind += 1
                    objects.append(Object(obj_id, "GetSpellInfo", line))
                    continue
                obj_name = re.findall('"([^"]*)"', line)[0]
                # new entry, need to get the name, this only happens in enUS
                if len(obj_name) == 0:
                    obj_name = await get_localized_obj_name_flavor(session, obj_id)
                    line = re.sub('".*"', f'"{obj_name}"', line)
                    logging.info(f"New object {obj_id}: {obj_name}")
                objects.append(Object(obj_id, obj_name, line))
                ind += 1
            break

    # replace all lines because we might have localized new objects
    localized_obj_lines = [i.line for i in objects]
    lines[first_obj_line : last_obj_line + 1] = localized_obj_lines
    with open(filepath, "w", encoding="utf-8") as file:
        file.writelines(lines)

    objects = [obj for obj in objects if obj.name != "GetSpellInfo"]

    return ObjectsInfo(objects, first_obj_line, last_obj_line)


async def get_new_object_line(
    session: ClientSession, obj_id: int, obj_name: str, lang_code: LangCode
) -> str:
    logging.info(f"New object {obj_id}: {obj_name}")

    localized_obj_name, game_flavor = await get_localized_obj_name(
        session, obj_id, lang_code
    )

    if obj_name == "":  # those weird objects that don't have page even in enUS
        new_object = f'\t--TODO: [{obj_id}] = "",\t--\n'
    elif localized_obj_name == "":  # no translation on Wowhead
        new_object = f'\t--TODO: [{obj_id}] = "{obj_name}",\t-- {obj_name}\n'
    else:  # all good (maybe)
        new_object = f'\t[{obj_id}] = "{localized_obj_name}",\t-- {obj_name}\n'
        if game_flavor != GameFlavor.RETAIL:
            new_object = re.sub(
                "\n",
                f"\t--TODO: This was taken from {game_flavor.value} Wowhead\n",
                new_object,
            )

    logging.info(new_object)
    return new_object


async def sync_objects(
    session: ClientSession, objects: list[Object], filepath: Path, lang_code: LangCode
) -> None:
    logging.info(f"Syncing {lang_code}!")
    localized_objects, first_obj_line, last_obj_line = await get_objects_info(
        session, filepath
    )

    new_tail = False
    localized_ind = 0
    ind = 0
    for ind, (obj_id, obj_name, _) in enumerate(objects):
        if localized_ind == len(localized_objects):  # new objects in tail
            new_tail = True
            break
        localized_obj_id = localized_objects[localized_ind].id
        if obj_id > localized_obj_id:  # deleted object
            while obj_id > localized_obj_id:
                logging.info(f"Deleted object {localized_obj_id}")
                del localized_objects[localized_ind]
                localized_obj_id = localized_objects[localized_ind].id
        if obj_id < localized_obj_id:  # new object
            new_object = await get_new_object_line(session, obj_id, obj_name, lang_code)
            localized_objects.insert(
                localized_ind, Object(obj_id, obj_name, new_object)
            )
        localized_ind += 1

    if new_tail:
        for i in range(ind, len(objects)):
            obj_id, obj_name, _ = objects[i]
            new_object = await get_new_object_line(session, obj_id, obj_name, lang_code)
            localized_objects.append(Object(obj_id, obj_name, new_object))
            localized_ind += 1
    if localized_ind < len(localized_objects):  # we need to delete objects in tail
        logging.info("Deleted objects ")
        for del_obj in localized_objects[localized_ind:]:
            logging.info(del_obj)
        del localized_objects[localized_ind:]

    with open(filepath, encoding="utf-8") as file:
        contents = file.readlines()
    localized_obj_lines = [i.line for i in localized_objects]
    contents[first_obj_line : last_obj_line + 1] = localized_obj_lines
    with open(filepath, "w", encoding="utf-8") as file:
        file.writelines(contents)
