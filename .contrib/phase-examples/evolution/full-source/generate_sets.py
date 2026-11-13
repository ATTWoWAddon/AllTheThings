#!/usr/bin/env python3
"""Generate staged snapshots from separately saved native source alternatives."""
import argparse
import json
from pathlib import Path
import re

from source_support import PHASE_KEYS, read_p1, select_flavor
from lua_source import argument_owner, delimiters, phase_calls, tokens
from source_sets import EVOLUTION


def demon_fall_canyon(source, projected):
    """Annotate the exact current instance and its two later child owners."""
    owners = {
        ("SOD_PHASE_FOUR", "instanceroot", "2784"): "dfc.dungeon",
        ("SOD_PHASE_SEVEN", "i", "235787"): "dfc.ironwood-branch",
        ("SOD_PHASE_FIVE", "n", "232632"): "dfc.azgaloth",
    }
    edits, coverage = [], []
    calls = phase_calls(source)
    assert len(calls) == len(owners), "Demon Fall Canyon phase owners changed"
    for phase, start, begin, end, finish in calls:
        if source[max(0, start - len("instanceroot(2784, ")):start] == "instanceroot(2784, ":
            assert source[begin] == "{", "instance phase argument changed"
            kind, constructor, identity = "instance-record", "instanceroot", "2784"
        else:
            kind, constructor, identity = argument_owner(source[begin:end])
        owner = (phase, constructor, identity)
        assert owner in owners, f"Unexpected Demon Fall Canyon owner: {owner}"
        key = owners.pop(owner)
        if kind == "instance-record":
            after_opening_line = source.index("\n", begin) + 1
            edits.append((after_opening_line, after_opening_line, '\tprogressionKey = "' + key + '",\n'))
        else:
            edits.extend(((begin, begin, '{ progressionKey = "' + key + '", groups = { '),
                          (end, end, ' } }')))
        if projected:
            edits.extend(((start, begin, ""), (end, finish, "")))
        coverage.append({"line": source.count("\n", 0, start) + 1, "phase": phase,
                         "key": key, "kind": kind, "constructor": constructor,
                         "identity": identity})
    assert not owners
    for begin, end, value in sorted(edits, key=lambda edit: (edit[0], edit[1]), reverse=True):
        source = source[:begin] + value + source[end:]
    return source, coverage


def blackrock_depths(source, alternative, projected):
    """Map each native writer and the two structural dungeon owners."""
    calls = phase_calls(source)
    assert len(calls) == {"standard": 50, "sod": 136}[alternative]
    special = {
        ("SOD_PHASE_THREE", "i", "223539"): "brd.enthralled-sphere",
        ("SOD_PHASE_FOUR", "i", "227948"): "brd.angerforge-axe",
    } if alternative == "sod" else {}
    edits, coverage, children = [], [], []
    for phase, start, begin, end, finish in calls:
        kind, constructor, identity = argument_owner(source[begin:end])
        assert kind == "constructor", (phase, constructor, identity)
        owner = (phase, constructor, identity)
        key = special.pop(owner) if owner in special else PHASE_KEYS["blackrock-depths"][phase]
        children.append((key, start, begin, end, finish))
        if projected:
            edits.extend(((start, begin, ""), (end, finish, "")))
        coverage.append({"line": source.count("\n", 0, start) + 1, "phase": phase,
                         "key": key, "kind": kind, "constructor": constructor,
                         "identity": identity})
    assert not special, f"Missing BRD special owners: {special}"
    runs = []
    for child in children:
        between = source[runs[-1][-1][4]:child[1]] if runs else ""
        if (runs and runs[-1][-1][4] <= child[1] and runs[-1][-1][0] == child[0]
                and not re.search(r"--\s*#", between)
                and [token.text for token in tokens(between)] == [","]):
            runs[-1].append(child)
        else:
            runs.append([child])
    for run in runs:
        key = run[0][0]
        start, finish = ((run[0][1], run[-1][4]) if len(run) > 1 else (run[0][2], run[0][3]))
        edits.extend(((start, start, '{ progressionKey = "' + key + '", groups = { '),
                      (finish, finish, ' } }')))
    root = 'inst(228, {\t-- Blackrock Depths' if alternative == "standard" else 'instanceroot(228, {\t-- Blackrock Depths'
    for marker, key in ((root, "brd.dungeon"),
                        ('e(387, {\t-- Emperor Dagran Thaurissan', "brd.second-half")):
        assert source.count(marker) == 1, f"BRD structural owner changed: {marker}"
        where = source.index(marker) + len(marker)
        indentation = re.match(r"\s*", source[source.rfind("\n", 0, where) + 1:]).group(0)
        edits.append((where, where, '\n' + indentation + '\tprogressionKey = "' + key + '",'))
    for begin, end, value in sorted(edits, key=lambda edit: (edit[0], edit[1]), reverse=True):
        source = source[:begin] + value + source[end:]
    return source, coverage


def dire_maul(source, alternative, projected):
    calls = phase_calls(source)
    assert len(calls) == {"standard": 11, "sod": 55}[alternative]
    special = {("PHASE_FIVE_TIER_ZERO_POINT_FIVE_SETS", "n_conditional", "16097"): "dire-maul.isalien"}
    edits, coverage, children = [], [], []
    for phase, start, begin, end, finish in calls:
        if source[max(0, start - len("instanceroot(230, ")):start] == "instanceroot(230, ":
            assert source[begin] == "{"
            kind, constructor, identity = "instance-record", "instanceroot", "230"
        else:
            kind, constructor, identity = argument_owner(source[begin:end])
        owner = (phase, constructor, identity)
        key = special.pop(owner) if owner in special else PHASE_KEYS["dire-maul"][phase]
        if kind == "instance-record":
            assert phase == "PHASE_ONE_DIREMAUL"
            position = source.index("\n", begin) + 1
            edits.append((position, position, '\tprogressionKey = "' + key + '",\n'))
        elif kind == "list":
            assert owner == ("PHASE_ONE_DIREMAUL", "inst", "230")
            stream = tokens(source[begin:end])
            opening = next(token for token in stream[1:] if token.text == "{")
            position = begin + opening.end
            edits.append((position, position, ' progressionKey = "' + key + '",'))
        else:
            assert kind == "constructor", owner
            children.append((key, start, begin, end, finish))
        if projected:
            edits.extend(((start, begin, ""), (end, finish, "")))
        coverage.append({"line": source.count("\n", 0, start) + 1, "phase": phase,
                         "key": key, "kind": kind, "constructor": constructor, "identity": identity})
    assert not special, f"Missing Dire Maul owner: {special}"
    runs = []
    for child in children:
        between = source[runs[-1][-1][4]:child[1]] if runs else ""
        if (runs and runs[-1][-1][4] <= child[1] and runs[-1][-1][0] == child[0]
                and not re.search(r"--\s*#", between)
                and [token.text for token in tokens(between)] == [","]):
            runs[-1].append(child)
        else:
            runs.append([child])
    for run in runs:
        key = run[0][0]
        start, finish = ((run[0][1], run[-1][4]) if len(run) > 1 else (run[0][2], run[0][3]))
        edits.extend(((start, start, '{ progressionKey = "' + key + '", groups = { '),
                      (finish, finish, ' } }')))
    for begin, end, value in sorted(edits, key=lambda edit: (edit[0], edit[1]), reverse=True):
        source = source[:begin] + value + source[end:]
    return source, coverage


def gnomeregan(source, alternative, projected):
    calls = phase_calls(source)
    assert len(calls) == {"standard": 0, "sod": 5}[alternative]
    edits, coverage = [], []
    for phase, start, begin, end, finish in calls:
        kind, constructor, identity = argument_owner(source[begin:end])
        assert phase == "SOD_PHASE_TWO" and (constructor, identity) in {
            ("i", "216634"), ("i", "216661"), ("i", "215430"), ("d", "DIFFICULTY.SOD.PLAYER10")}
        assert kind == "constructor"
        key = "gnomeregan.raid10"
        edits.extend(((begin, begin, '{ progressionKey = "' + key + '", groups = { '),
                      (end, end, ' } }')))
        if projected:
            edits.extend(((start, begin, ""), (end, finish, "")))
        coverage.append({"line": source.count("\n", 0, start) + 1, "phase": phase,
                         "key": key, "kind": kind, "constructor": constructor, "identity": identity})
    if alternative == "standard":
        marker = 'inst(231, {\t-- Gnomeregan'
    else:
        marker = 'd(DIFFICULTY.DUNGEON.NORMAL, bubbleDownTimelineEventSelf(REMOVED_1_15_1, {'
    assert source.count(marker) == 1, "Gnomeregan dungeon owner changed"
    position = source.index(marker) + len(marker)
    indentation = re.match(r"\s*", source[source.rfind("\n", 0, position) + 1:]).group(0)
    edits.append((position, position, '\n' + indentation + '\tprogressionKey = "gnomeregan.dungeon",'))
    for begin, end, value in sorted(edits, key=lambda edit: (edit[0], edit[1]), reverse=True):
        source = source[:begin] + value + source[end:]
    return source, coverage


def temple_of_ahnqiraj(source, alternative, projected):
    calls = phase_calls(source)
    assert len(calls) == {"standard": 3, "sod": 4}[alternative]
    edits, coverage = [], []
    for phase, start, begin, end, finish in calls:
        if source[max(0, start - len("instanceroot(744, ")):start] == "instanceroot(744, ":
            assert source[begin] == "{"
            kind, constructor, identity = "instance-record", "instanceroot", "744"
        else:
            kind, constructor, identity = argument_owner(source[begin:end])
        key = PHASE_KEYS["temple-of-ahnqiraj"][phase]
        if kind == "instance-record":
            assert phase == "PHASE_FIVE"
            position = source.index("\n", begin) + 1
            edits.append((position, position, '\tprogressionKey = "' + key + '",\n'))
        elif kind == "list":
            assert (phase, constructor, identity) == ("PHASE_FIVE", "inst", "744")
            stream = tokens(source[begin:end])
            opening = next(token for token in stream[1:] if token.text == "{")
            position = begin + opening.end
            edits.append((position, position, ' progressionKey = "' + key + '",'))
        else:
            assert kind in ("constructor", "record")
            edits.extend(((begin, begin, '{ progressionKey = "' + key + '", groups = { '),
                          (end, end, ' } }')))
        if projected:
            edits.extend(((start, begin, ""), (end, finish, "")))
        coverage.append({"line": source.count("\n", 0, start) + 1, "phase": phase,
                         "key": key, "kind": kind, "constructor": constructor, "identity": identity})
    stream, ends = tokens(source), None
    ends = delimiters(stream)
    instance = next(i for i, token in enumerate(stream)
                    if token.text in ("inst", "instanceroot") and stream[i + 2].text == "744")
    group = next(i for i in range(instance, len(stream) - 2)
                 if stream[i].text == "groups" and stream[i + 1].text == "=" and stream[i + 2].text == "{")
    opening = group + 2
    children, cursor = [], opening + 1
    while cursor < ends[opening]:
        start = cursor
        while cursor < ends[opening] and stream[cursor].text != ",":
            cursor = ends[cursor] + 1 if cursor in ends else cursor + 1
        children.append(start)
        cursor += 1
    quest = [i for i in children if [t.text for t in stream[i:i+4]] == ["n", "(", "QUESTS", ","]]
    assert len(quest) == 1
    start = source.rfind("\n", 0, stream[quest[0]].start) + 1
    if alternative == "sod":
        rework = [i for i in children if [t.text for t in stream[i:i+4]] == ["applyclassicphase", "(", "SOD_PHASE_SIX", ","]]
        assert len(rework) == 1 and children.index(rework[0]) == len(children) - 1
        end = source.rfind("\n", 0, stream[rework[0]].start) + 1
    else:
        end = source.rfind("\n", 0, stream[ends[opening]].start) + 1
    indent = re.match(r"[\t ]*", source[start:]).group(0)
    edits.extend(((start, start, indent + '{ progressionKey = "aq40.original", groups = {\n'),
                  (end, end, indent + '} },\n')))
    for begin, end, value in sorted(edits, key=lambda edit: (edit[0], edit[1]), reverse=True):
        source = source[:begin] + value + source[end:]
    return source, coverage


def blackwing_lair(source, alternative, projected):
    calls = phase_calls(source)
    assert len(calls) == {"standard": 2, "sod": 4}[alternative]
    rework = [call for call in calls if call[0] == "SOD_PHASE_FIVE" and
              source[call[2]:call[3]].startswith("d(DIFFICULTY.SOD.PLAYER20,")]
    assert len(rework) == (1 if alternative == "sod" else 0)
    edits, coverage = [], []
    for phase, start, begin, end, finish in calls:
        if source[max(0, start - len("instanceroot(742, ")):start] == "instanceroot(742, ":
            assert source[begin] == "{"
            kind, constructor, identity = "instance-record", "instanceroot", "742"
        elif (alternative == "sod" and phase == "SOD_PHASE_FIVE" and
              source[max(0, start - len("n(QUESTS, ")):start] == "n(QUESTS, "):
            assert source[begin] == "{" and rework[0][2] < start < finish < rework[0][3]
            kind, constructor, identity = "inherited-list", "n", "QUESTS"
        else:
            kind, constructor, identity = argument_owner(source[begin:end])
        key = {"PHASE_THREE": "raid.bwl.common", "PHASE_FIVE": "raid.bwl.draconic-for-dummies",
               "SOD_PHASE_FIVE": "raid.bwl.sod20"}[phase]
        if kind == "instance-record":
            assert phase == "PHASE_THREE"
            position = source.index("\n", begin) + 1
            edits.append((position, position, '\tprogressionKey = "' + key + '",\n'))
        elif kind == "list":
            assert (phase, constructor, identity) == ("PHASE_THREE", "inst", "742")
            stream = tokens(source[begin:end])
            opening = next(token for token in stream[1:] if token.text == "{")
            position = begin + opening.end
            edits.append((position, position, ' progressionKey = "' + key + '",'))
        elif kind != "inherited-list":
            assert (phase, constructor, identity) in {
                ("PHASE_FIVE", "o", "180667"), ("SOD_PHASE_FIVE", "d", "DIFFICULTY.SOD.PLAYER20")}
            edits.extend(((begin, begin, '{ progressionKey = "' + key + '", groups = { '),
                          (end, end, ' } }')))
        if projected:
            edits.extend(((start, begin, ""), (end, finish, "")))
        coverage.append({"line": source.count("\n", 0, start) + 1, "phase": phase,
                         "key": key, "kind": kind, "constructor": constructor, "identity": identity})
    stream = tokens(source)
    ends = delimiters(stream)
    instance = next(i for i, token in enumerate(stream)
                    if token.text in ("inst", "instanceroot") and stream[i + 2].text == "742")
    group = next(i for i in range(instance, len(stream) - 2)
                 if stream[i].text == "groups" and stream[i + 1].text == "=" and stream[i + 2].text == "{")
    opening, cursor = group + 2, group + 3
    children = []
    while cursor < ends[opening]:
        start = cursor
        while cursor < ends[opening] and stream[cursor].text != ",":
            cursor = ends[cursor] + 1 if cursor in ends else cursor + 1
        children.append(start)
        cursor += 1
    quest = [i for i in children if [t.text for t in stream[i:i+4]] == ["n", "(", "QUESTS", ","]]
    assert len(quest) == 1
    start = source.rfind("\n", 0, stream[quest[0]].start) + 1
    if alternative == "sod":
        rework_child = [i for i in children if [t.text for t in stream[i:i+4]] == ["applyclassicphase", "(", "SOD_PHASE_FIVE", ","]]
        assert len(rework_child) == 1 and children.index(rework_child[0]) == len(children) - 1
        end = source.rfind("\n", 0, stream[rework_child[0]].start) + 1
    else:
        end = source.rfind("\n", 0, stream[ends[opening]].start) + 1
    indent = re.match(r"[\t ]*", source[start:]).group(0)
    edits.extend(((start, start, indent + '{ progressionKey = "raid.bwl.original", groups = {\n'),
                  (end, end, indent + '} },\n')))
    for begin, end, value in sorted(edits, key=lambda edit: (edit[0], edit[1]), reverse=True):
        source = source[:begin] + value + source[end:]
    return source, coverage


def outputs():
    case = "demon-fall-canyon"
    source = read_p1(EVOLUTION / case / "p1/sod.lua")
    annotated, coverage = demon_fall_canyon(source, False)
    projected, _ = demon_fall_canyon(source, True)
    result = {}
    for stage in ("p2.1", "p2.2", "p3"):
        result[case, stage, "sod.lua"] = (
            f"-- {stage.upper()} generated comparison: complete standalone SoD source.\n"
            "-- Generated by evolution/full-source/generate_sets.py.\n" + annotated.partition("\n")[2])
        manifest = {"$comment": "Generated proposed comparison control; select only this source alternative.",
                    "schema": 1, "defaultStage": "P1", "cohorts": [{
            "id": "comparison-fixture-" + case, "stage": stage.upper(), "sources": ["sod.lua"]}]}
        result[case, stage, "sod.migration.json"] = json.dumps(manifest, indent=2) + "\n"
    result[case, "p4", "sod.lua"] = (
        "-- P4 generated comparison: complete standalone SoD source.\n"
        "-- Generated by evolution/full-source/generate_sets.py.\n" + projected.partition("\n")[2])
    manifest = {"$comment": "Generated proposed comparison control; select one P4 source with selection.json.",
                "schema": 1, "defaultStage": "P1", "cohorts": [{
        "id": "comparison-fixture-" + case, "stage": "P4", "sources": ["sod.lua"]}]}
    result[case, "p4", "migration.json"] = json.dumps(manifest, indent=2) + "\n"
    selection = {"$comment": "Generated comparison selection; choose the complete source before Lua execution."}
    for context in ("retail", "progression:main", "anniversary:main", "era:main", "sod:main"):
        selection[context] = {case: "sod.lua" if context == "sod:main" else None}
    result[case, "p4", "selection.json"] = json.dumps(selection, indent=2) + "\n"
    result[case, "coverage.json"] = json.dumps({
        "$comment": "Generated standalone SoD source owner coverage.", "owners": coverage}, indent=2) + "\n"
    for case, transform in (("blackrock-depths", blackrock_depths), ("dire-maul", dire_maul),
                            ("gnomeregan", gnomeregan), ("temple-of-ahnqiraj", temple_of_ahnqiraj),
                            ("blackwing-lair", blackwing_lair)):
        result.update(dual_outputs(case, transform))
    return result


def dual_outputs(case, transform):
    result = {}
    alternatives = {}
    all_coverage = {}
    for alternative in ("standard", "sod"):
        source = read_p1(EVOLUTION / case / "p1" / (alternative + ".lua"))
        annotated, coverage = transform(source, alternative, False)
        projected, _ = transform(source, alternative, True)
        alternatives[alternative] = projected.partition("\n")[2]
        all_coverage[alternative] = coverage
        for stage in ("p2.1", "p2.2", "p3"):
            result[case, stage, alternative + ".lua"] = (
                f"-- {stage.upper()} generated comparison: complete {alternative} source.\n"
                "-- Generated by evolution/full-source/generate_sets.py.\n" + annotated.partition("\n")[2])
            manifest = {"$comment": "Generated proposed comparison control; select only this source alternative.",
                        "schema": 1, "defaultStage": "P1", "cohorts": [{
                "id": "comparison-fixture-" + case, "stage": stage.upper(), "sources": [alternative + ".lua"]}]}
            result[case, stage, alternative + ".migration.json"] = json.dumps(manifest, indent=2) + "\n"
    for flavor, alternative in (("retail", "standard"), ("classic", "standard"), ("sod", "sod")):
        result[case, "p4", flavor + ".lua"] = (
            f"-- P4 generated comparison: complete {flavor} source.\n"
            "-- Generated by evolution/full-source/generate_sets.py.\n" + select_flavor(alternatives[alternative], flavor))
    manifest = {"$comment": "Generated proposed comparison control; select one P4 source with selection.json.",
                "schema": 1, "defaultStage": "P1", "cohorts": [{
        "id": "comparison-fixture-" + case, "stage": "P4", "sources": ["retail.lua", "classic.lua", "sod.lua"]}]}
    result[case, "p4", "migration.json"] = json.dumps(manifest, indent=2) + "\n"
    selection = {"$comment": "Generated comparison selection; choose one complete source before Lua execution."}
    for context, flavor in (("retail", "retail"), ("progression:main", "classic"),
                            ("anniversary:main", "classic"), ("era:main", "classic"), ("sod:main", "sod")):
        selection[context] = {case: flavor + ".lua"}
    result[case, "p4", "selection.json"] = json.dumps(selection, indent=2) + "\n"
    result[case, "coverage.json"] = json.dumps({
        "$comment": "Generated writer owner coverage for each native source alternative.",
        "alternatives": all_coverage}, indent=2) + "\n"
    return result


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--check", action="store_true")
    args = parser.parse_args()
    for parts, content in outputs().items():
        path = EVOLUTION.joinpath(*parts)
        if args.check:
            assert path.read_text(encoding="utf-8") == content, f"Generated snapshot drift: {path}"
        else:
            path.parent.mkdir(parents=True, exist_ok=True)
            path.write_text(content, encoding="utf-8", newline="\n")


if __name__ == "__main__":
    main()
