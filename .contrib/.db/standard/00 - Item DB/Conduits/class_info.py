import csv
from pathlib import Path
from typing import NamedTuple

WORK_DIR = Path(".contrib", "Parser", "DATAS", "00 - Item DB", "Conduits")


class SpecXClass(NamedTuple):
    spec_id: int
    class_id: int


class SpecXSet(NamedTuple):
    spec_id: int
    set_id: int


class SetXClasses(NamedTuple):
    set_id: int
    classes: set[int]


def build_set_x_classes() -> dict[int, SetXClasses]:
    specs: dict[int, SpecXClass] = {}
    with open(Path(WORK_DIR, "chrspecialization.csv"), newline="") as csvfile:
        csvreader = csv.reader(csvfile, delimiter=",")
        next(csvreader)
        for row in csvreader:
            spec_id = int(row[3])
            class_id = int(row[4])
            specs[spec_id] = SpecXClass(spec_id, class_id)

    spec_sets: list[SpecXSet] = []
    with open(Path(WORK_DIR, "specsetmember.csv"), newline="") as csvfile:
        csvreader = csv.reader(csvfile, delimiter=",")
        next(csvreader)
        for _, spec_id_str, set_id_str in csvreader:
            spec_sets.append(SpecXSet(int(spec_id_str), int(set_id_str)))

    spec_set_x_classes: dict[int, SetXClasses] = {}
    for spec_set_info in spec_sets:
        class_id = specs[spec_set_info.spec_id].class_id
        set_id = spec_set_info.set_id
        if set_id in spec_set_x_classes:
            spec_set_x_classes[set_id].classes.add(class_id)
        else:
            spec_set_x_classes[set_id] = SetXClasses(set_id, {class_id})

    return spec_set_x_classes


def get_classes_by_set(set_id: int) -> list[int]:
    spec_set_x_classes = build_set_x_classes()
    return sorted(spec_set_x_classes[set_id].classes)
