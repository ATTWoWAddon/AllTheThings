import csv
from pathlib import Path
from typing import NamedTuple

from class_info import get_classes_by_set


class Conduit(NamedTuple):
    conduit_id: int
    item_id: int
    spec_set_id: int = 0
    covenant_id: int = 0


WORK_DIR = Path(".contrib", "Parser", "DATAS", "00 - Item DB", "Conduits")

conduits: dict[int, Conduit] = {}
with open(Path(WORK_DIR, "soulbindconduititem.csv"), newline="") as csvfile:
    csvreader = csv.reader(csvfile, delimiter=",")
    next(csvreader)
    for _, item_id, conduit_id in csvreader:
        conduits[int(conduit_id)] = Conduit(int(conduit_id), int(item_id))

with open(Path(WORK_DIR, "soulbindconduit.csv"), newline="") as csvfile:
    csvreader = csv.reader(csvfile, delimiter=",")
    next(csvreader)
    for conduit_id, _, covenant_id, spec_set_id, _ in csvreader:
        conduit = conduits[int(conduit_id)]
        conduits[int(conduit_id)] = conduit._replace(
            spec_set_id=int(spec_set_id), covenant_id=int(covenant_id)
        )

with open(Path(WORK_DIR, "conduits_info.txt"), "w") as f:
    covenant_dict = {
        0: "",
        1: "SL_COV_KYR",
        2: "SL_COV_VEN",
        3: "SL_COV_NFA",
        4: "SL_COV_NEC",
    }
    for conduit in conduits.values():
        classes = get_classes_by_set(conduit.spec_set_id)
        classes_str = f"{{{classes[0]}"
        for class_id in classes[1:]:
            classes_str += f",{class_id}"
        classes_str += "}"
        covenantr_str = covenant_dict[conduit.covenant_id]
        f.write(
            f'{{{conduit.conduit_id},{conduit.item_id},{classes_str},"{covenantr_str}"}},\n'
        )
