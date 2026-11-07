#!/usr/bin/env python3
"""Comparison tooling (P2.2-P4): expand reviewed compact authoring for the example Parser."""
import argparse
import json
import os
from pathlib import Path
import re
import sys
import tempfile

HERE = Path(__file__).resolve().parent
KEY = re.compile(r"^[a-z0-9][a-z0-9._-]*$")
COMMENT = "Generated Parser input (P2.2–P4). Edit schedule.json for releases; comparison.json holds only the replay and slot fixtures. Run prepare.py to regenerate."
MISSING = object()


def require(condition, message):
    if not condition:
        raise ValueError(message)


def name(value, where):
    require(isinstance(value, str) and KEY.fullmatch(value), f"Invalid {where}: {value!r}")
    return value


def fields(value, expected, where):
    require(isinstance(value, dict) and set(value) == set(expected), f"Invalid {where} fields")


def read_json(path, strip_comments=True):
    def object_pairs(pairs):
        result = {}
        for key, value in pairs:
            require(key not in result, f"Duplicate JSON key: {key}")
            result[key] = value
        if "$comment" in result:
            require(isinstance(result["$comment"], str), "$comment must be a string")
            if strip_comments:
                del result["$comment"]
        return result
    def invalid_constant(value):
        raise ValueError(f"Invalid JSON constant: {value}")
    return json.loads(path.read_text(encoding="utf-8"), object_pairs_hook=object_pairs, parse_constant=invalid_constant)


def calendars_for(source):
    require(isinstance(source, dict) and source, "Calendars must register the supported phased flavors")
    for flavor in source:
        name(flavor, "calendar flavor")
        require(flavor not in ("retail", "default"), f"Reserved calendar flavor: {flavor}")
    result, visiting = {}, set()
    def resolve(flavor):
        if flavor in result:
            return result[flavor]
        require(flavor in source and flavor not in visiting, f"Missing or cyclic calendar alias: {flavor}")
        visiting.add(flavor)
        value = source[flavor]
        if isinstance(value, dict):
            fields(value, ("sameAs",), "calendar alias")
            target = value["sameAs"]
            require(isinstance(target, str) and target in source, f"Unknown calendar alias: {target!r}")
            value = list(resolve(target))
        require(isinstance(value, list) and value, f"Empty or invalid calendar: {flavor}")
        for milestone in value:
            name(milestone, "milestone")
            require(milestone not in ("start", "disabled", "unknown"),
                    f"Reserved boundary/status is not a milestone: {milestone}")
        require(len(set(value)) == len(value), f"Duplicate milestone in {flavor}")
        visiting.remove(flavor)
        result[flavor] = value
        return value
    for flavor in source:
        resolve(flavor)
    return {flavor: result[flavor] for flavor in source}


def validate_rule(value, where, flavors, allow_flavors=True):
    if isinstance(value, str):
        name(value, where)
        return
    require(isinstance(value, dict) and value, f"Invalid rule: {where}")
    if "sameAs" in value:
        fields(value, ("sameAs",), f"{where} alias")
        name(value["sameAs"], "rule alias")
    elif "windows" in value:
        fields(value, ("windows",), f"{where} windows")
        require(isinstance(value["windows"], list) and value["windows"], f"Empty windows: {where}")
        for window in value["windows"]:
            require(isinstance(window, dict) and set(window) in ({"from"}, {"from", "until"}), f"Invalid window: {where}")
            name(window["from"], "window opening")
            if "until" in window:
                name(window["until"], "window ending")
    else:
        require(allow_flavors and set(value) <= set(flavors) | {"default"}, f"Invalid flavor rules: {where}")
        for child in value.values():
            validate_rule(child, where, flavors, False)


def for_flavor(value, flavor):
    if isinstance(value, dict) and not ({"sameAs", "windows"} & value.keys()):
        return value.get(flavor, value.get("default", MISSING))
    return value


def render_json(value, depth=0):
    """Keep simple expanded policy rows readable without hand-building JSON tokens."""
    scalar = lambda child: json.dumps(child, ensure_ascii=False)
    if isinstance(value, dict):
        if not value:
            return "{}"
        if "windows" in value and set(value) <= {"status", "windows"} and len(value["windows"]) <= 1:
            return scalar(value)
        if set(value) in ({"from"}, {"from", "until"}):
            return scalar(value)
        indent = "  " * depth
        rows = [indent + "  " + scalar(key) + ": " + render_json(child, depth + 1)
                for key, child in value.items()]
        return "{\n" + ",\n".join(rows) + "\n" + indent + "}"
    if isinstance(value, list):
        if all(not isinstance(child, (list, dict)) for child in value):
            return scalar(value)
        indent = "  " * depth
        rows = [indent + "  " + render_json(child, depth + 1) for child in value]
        return "[\n" + ",\n".join(rows) + "\n" + indent + "]"
    return scalar(value)


def policy(value, milestones, where):
    if isinstance(value, str):
        if value in ("disabled", "unknown"):
            return {"status": value, "windows": []}
        value = {"windows": [{"from": value}]}
    order = {key: index for index, key in enumerate(milestones)}
    last = -2
    for window in value["windows"]:
        opening, ending = window["from"], window.get("until")
        require(opening == "start" or opening in order, f"Unknown opening {opening}: {where}")
        require(ending is None or ending in order, f"Unknown ending {ending}: {where}")
        first = -1 if opening == "start" else order[opening]
        end = len(order) if ending is None else order[ending]
        require(first < end and first >= last, f"Unordered or overlapping windows: {where}")
        last = end
    return {"windows": value["windows"]}


def compile_inputs(schedule, comparison):
    fields(schedule, ("calendars", "rules"), "schedule")
    fields(comparison, ("replays", "slots"), "comparison")
    calendars = calendars_for(schedule["calendars"])
    require(isinstance(schedule["rules"], dict) and schedule["rules"], "Missing rules")
    rules, owners = {}, {}
    for instance, entries in schedule["rules"].items():
        name(instance, "instance")
        require(isinstance(entries, dict) and entries, f"Empty rules: {instance}")
        for key, value in entries.items():
            name(key, "rule key")
            require(key not in rules, f"Duplicate rule across instances: {key}")
            validate_rule(value, key, calendars)
            rules[key], owners[key] = value, instance
    require(isinstance(comparison["replays"], dict), "Invalid replays")
    contexts = {flavor + ":main": (flavor, list(milestones), {}) for flavor, milestones in calendars.items()}
    for context, replay in comparison["replays"].items():
        parts = context.split(":")
        require(len(parts) == 2 and parts[0] in calendars and parts[1] != "main", f"Invalid replay context: {context}")
        name(parts[1], "replay profile")
        fields(replay, ("after", "insert", "rules"), context)
        milestones = list(calendars[parts[0]])
        require(replay["after"] in milestones, f"Unknown replay insertion point: {context}")
        inserted = name(replay["insert"], "replay milestone")
        require(inserted not in ("start", "disabled", "unknown") and inserted not in milestones,
                f"Reserved or duplicate replay milestone: {context}")
        milestones.insert(milestones.index(replay["after"]) + 1, inserted)
        require(isinstance(replay["rules"], dict), f"Invalid replay rules: {context}")
        for key, value in replay["rules"].items():
            require(key in rules, f"Unknown replay rule: {key}")
            require(for_flavor(rules[key], parts[0]) is not MISSING,
                    f"Replay cannot activate a main-inapplicable rule: {context}:{key}")
            validate_rule(value, key, calendars, False)
        contexts[context] = (parts[0], milestones, replay["rules"])
    grouped = {instance: {} for instance in schedule["rules"]}
    outputs = {}
    for context, (flavor, milestones, overrides) in contexts.items():
        cache, visiting = {}, set()
        def resolve(key):
            if key in cache:
                return cache[key]
            require(key in rules and key not in visiting, f"Missing or cyclic rule alias: {context}:{key}")
            visiting.add(key)
            value = overrides.get(key, rules[key])
            value = for_flavor(value, flavor)
            if isinstance(value, dict) and "sameAs" in value:
                target = value["sameAs"]
                value = resolve(target)
                require(value is not MISSING, f"Missing alias target: {context}:{target}")
            elif value is not MISSING:
                value = policy(value, milestones, context + ":" + key)
            visiting.remove(key)
            cache[key] = value
            return value
        content = {}
        rows = {instance: {} for instance in grouped}
        for key in rules:
            value = resolve(key)
            if value is not MISSING:
                content[key] = value
                rows[owners[key]][key] = value
        for instance, row in rows.items():
            if row:
                grouped[instance][context] = row
        path = context.replace(":", "/") + ".json"
        outputs["profiles/" + path] = {"milestones": milestones, "content": content}
        outputs["catalogs/" + path] = {"milestones": milestones}
    for instance, rows in grouped.items():
        outputs["policies/" + instance + ".json"] = rows
    slots = comparison["slots"]
    require(isinstance(slots, dict) and slots, "Missing slots")
    for slot, flavors in slots.items():
        name(slot, "slot")
        require(isinstance(flavors, list) and flavors and all(isinstance(f, str) and f in (*calendars, "retail") for f in flavors) and len(set(flavors)) == len(flavors), f"Invalid slot flavors: {slot}")
    selections = {}
    for context, flavor in [("retail", "retail")] + [(ctx, data[0]) for ctx, data in contexts.items()]:
        selections[context] = {slot: "fragments/" + slot + ".lua" if flavor in flavors else None for slot, flavors in slots.items()}
    outputs["selection.json"] = selections
    return {path: (render_json({"$comment": COMMENT, **value}) + "\n").encode("utf-8")
            for path, value in outputs.items()}


def publish(output, files, check):
    # Parser reads every policy file. Remove obsolete files only when their
    # exact generated marker proves ownership; reject foreign extras untouched.
    existing = set(output.glob("policies/*.json")) | set(output.glob("profiles/*/*.json")) | set(output.glob("catalogs/*/*.json"))
    expected = {output / path for path in files}
    stale = sorted(existing - expected)
    for path in stale:
        document = read_json(path, strip_comments=False)
        require(isinstance(document, dict) and document.get("$comment") == COMMENT,
                f"Unowned JSON file in managed directory: {path}")
    changed = [(output / path, data) for path, data in sorted(files.items())
               if not (output / path).is_file() or (output / path).read_bytes().replace(b"\r\n", b"\n") != data]
    if check:
        for path, _ in changed:
            print("Drift:", path)
        for path in stale:
            print("Obsolete generated file:", path)
        return not changed and not stale
    staged, previous, published = [], {}, []
    try:
        for path, data in changed:
            path.parent.mkdir(parents=True, exist_ok=True)
            previous[path] = path.read_bytes() if path.exists() else None
            with tempfile.NamedTemporaryFile(dir=path.parent, prefix=".prepare-", delete=False) as temp:
                staged.append((path, Path(temp.name)))
                temp.write(data)
        for path, temporary in staged:
            os.replace(temporary, path)
            published.append(path)
        for path in stale:
            previous[path] = path.read_bytes()
            path.unlink()
            published.append(path)
    except Exception:
        for path in reversed(published):
            if previous[path] is None:
                path.unlink(missing_ok=True)
            else:
                path.write_bytes(previous[path])
        raise
    finally:
        for _, temporary in staged:
            temporary.unlink(missing_ok=True)
    print(f"Prepared {len(files)} managed JSON files; changed {len(changed)}, removed {len(stale)} obsolete generated files")
    return True


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--schedule", type=Path, default=HERE / "schedule.json")
    parser.add_argument("--comparison", type=Path, default=HERE / "comparison.json")
    parser.add_argument("--output", type=Path, default=HERE / "input")
    parser.add_argument("--check", action="store_true")
    args = parser.parse_args()
    try:
        return 0 if publish(args.output, compile_inputs(read_json(args.schedule), read_json(args.comparison)), args.check) else 1
    except (OSError, ValueError, TypeError) as error:
        print(f"prepare: {error}", file=sys.stderr)
        return 1


if __name__ == "__main__":
    raise SystemExit(main())
