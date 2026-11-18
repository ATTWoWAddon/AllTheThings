## @package issue_flavor_triage
# @brief Classify GitHub issues from explicit WoW flavor form choices.
#
# Runs mocked self-tests before supported issue events can update labels.
# Manual dispatch runs only the offline self-tests.

import json
import os
import re
import subprocess
from pathlib import Path

# Keep form choices explicit: environments and free-text mentions must not
# select labels. The two headings cover the existing issue-form variants.
FLAVORS = {
    "Retail": "flavor:retail",
    "Classic Progression (MoP)": "flavor:progression",
    "Classic Era": "flavor:era",
    "Classic Hardcore": "flavor:hardcore",
    "Classic Anniversary (TBC)": "flavor:anniversary",
    "Season of Discovery": "flavor:sod",
    "Forever": "flavor:forever",
    "Titan": "flavor:titan",
    "All Flavors / Cross-Flavor": "flavor:all",
}
HEADINGS = {"WoW Flavor", "Which WoW Flavors Does This Proposal Apply To?"}


## @brief Parse a single recognized flavor section outside fenced code.
#
# Accept only known choices; reject ambiguous or malformed sections.
#
# @param body Issue body text, or None.
# @return Sorted unique flavor labels; empty for no selection or invalid input.
def parse_flavors(body):
    sections, current, fence = [], None, None
    for line in (body or "").splitlines():
        delimiter = re.match(r"^\s{0,3}(`{3,}|~{3,})", line)
        if delimiter:
            marker = delimiter[1]
            if fence is None:
                fence = marker
            elif marker[0] == fence[0] and len(marker) >= len(fence):
                fence = None
            if current is not None:
                current.append(line)
            continue
        if fence is not None:
            if current is not None:
                current.append(line)
            continue
        if re.match(r"^#{1,6}\s", line):
            current = None
            if line.startswith("### ") and line[4:].strip() in HEADINGS:
                current = []
                sections.append(current)
        elif current is not None:
            current.append(line)
    if len(sections) != 1:
        return []
    values = [
        value.strip()
        for value in re.split(r",|\n", "\n".join(sections[0]).strip())
    ]
    if any(value not in FLAVORS and value != "Other / Unsure" for value in values):
        return []
    return sorted({FLAVORS[value] for value in values if value in FLAVORS})


## @brief Send an authenticated JSON request through the GitHub CLI.
#
# Pass payloads through stdin, never through shell-interpolated issue text.
#
# @param path GitHub API endpoint path.
# @param labels Labels to POST, or None for a GET request.
# @param paginate Whether to combine paginated response pages into one list.
# @return Parsed JSON response, or a flattened list when paginate is true.
def api(path, *, labels=None, paginate=False):
    command = ["gh", "api", path, "--method", "GET" if labels is None else "POST"]
    if paginate:
        command += ["--paginate", "--slurp"]
    if labels is not None:
        command += ["--input", "-"]
    result = subprocess.run(
        command,
        input=json.dumps({"labels": labels}) if labels is not None else None,
        text=True,
        capture_output=True,
        check=True,
    )
    data = json.loads(result.stdout)
    return [item for page in data for item in page] if paginate else data


## @brief Add initial flavor labels to an open, never-classified issue.
#
# Existing labels and label history preserve maintainer edits and removals.
# Missing repository labels prevent updates instead of creating new labels.
#
# @param repo Repository in owner/name form.
# @param number Issue number.
# @param request API-compatible callable used to fetch state and add labels.
def triage(repo, number, request=api):
    base = f"repos/{repo}"
    issue_path = f"{base}/issues/{number}"
    issue = request(issue_path)  # Current state, not an old queued event snapshot.
    if issue.get("state") != "open" or "pull_request" in issue:
        return
    if any(label["name"].startswith("flavor:") for label in issue["labels"]):
        return
    labels = parse_flavors(issue.get("body"))
    if not labels:
        return
    events = request(f"{issue_path}/events?per_page=100", paginate=True)
    if any(
        event.get("event") in {"labeled", "unlabeled"}
        and event.get("label", {}).get("name", "").startswith("flavor:")
        for event in events
    ):
        return  # Never undo previous classification or manual removal.
    available = request(f"{base}/labels?per_page=100", paginate=True)
    if not set(labels).issubset({label["name"] for label in available}):
        print("A configured flavor label is missing; no labels added.")
        return
    request(f"{issue_path}/labels", labels=labels)
    print("Added: " + ", ".join(labels))


## @brief Build an issue-form body with a flavor choice and PTR environment.
# @param value Flavor field text inserted into the fixture.
# @return Markdown issue body used by the offline tests.
def _test_body(value):
    return f"### WoW Flavor\n\n{value}\n\n### WoW Environment\n\nPTR"


## @brief Check one classification scenario using a mocked API.
# @param scenario Scenario name exercised by self_test.
def _test_scenario(scenario):
    mutations = []

    ## @brief Return fixture responses and record label writes for this scenario.
    # @param path API endpoint path used to select the mock response.
    # @param labels Labels to record, or None for a read request.
    # @param paginate Accepted for API compatibility; unused by the mock.
    # @return Mock issue data, label/event lists, or an empty list after a write.
    def fake(path, *, labels=None, paginate=False):
        if labels is not None:
            mutations.append(labels)
            return []
        if "/events?" in path:
            label_name = "flavor:retail" if scenario == "removed" else "type:bug"
            event = {
                "event": "unlabeled",
                "label": {"name": label_name},
            }
            return [event]
        if "/labels?" in path:
            return (
                []
                if scenario == "missing"
                else [{"name": value} for value in FLAVORS.values()]
            )
        issue = {
            "state": "closed" if scenario == "closed" else "open",
            "body": _test_body(
                "Forever" if scenario == "edited-body" else "Retail"
            ),
            "labels": [{"name": "flavor:titan"}] if scenario == "existing" else [],
        }
        if scenario == "pr":
            issue["pull_request"] = {}
        return issue

    triage("test/repo", 1, fake)
    expected = (
        [["flavor:forever" if scenario == "edited-body" else "flavor:retail"]]
        if scenario in {"normal", "edited-body", "unrelated"}
        else []
    )
    assert mutations == expected, scenario


## @brief Exercise parsing and label protection without network access.
#
# Failed assertions stop execution before any real issue mutation.
def self_test():
    print("Running offline self-tests; all API calls below are mocked.")

    for value, label in FLAVORS.items():
        assert parse_flavors(_test_body(value)) == [label]
    assert parse_flavors(_test_body("Retail, Forever, Retail")) == [
        "flavor:forever",
        "flavor:retail",
    ]
    assert parse_flavors(_test_body("Retail\nForever").replace("\n", "\r\n")) == [
        "flavor:forever",
        "flavor:retail",
    ]
    assert parse_flavors(_test_body("Retail, Other / Unsure")) == ["flavor:retail"]
    assert parse_flavors(_test_body("All Flavors / Cross-Flavor, Retail")) == [
        "flavor:all",
        "flavor:retail",
    ]
    assert parse_flavors(
        _test_body("Titan").replace(
            "WoW Flavor", "Which WoW Flavors Does This Proposal Apply To?"
        )
    ) == ["flavor:titan"]
    for text in [
        None,
        "",
        "Retail",
        _test_body("Other / Unsure"),
        _test_body("PTR"),
        _test_body("_No response_"),
        _test_body("Retail, unknown"),
        _test_body("Retail") + "\n" + _test_body("Forever"),
        "```\n" + _test_body("Retail") + "\n```",
        "~~~\n" + _test_body("Retail") + "\n~~~",
        _test_body("Retail\n```\nevil()\n```"),
        _test_body("$(echo Retail)"),
    ]:
        assert parse_flavors(text) == []
    for scenario in [
        "normal",
        "edited-body",
        "existing",
        "removed",
        "closed",
        "pr",
        "missing",
        "unrelated",
    ]:
        _test_scenario(scenario)
    print("Flavor parser and mocked API self-tests passed.")


# Always validate the rules first. Only supported issue events reach the
# live API; manual dispatch remains an offline diagnostic test run.
if __name__ == "__main__":
    self_test()
    if os.environ.get("GITHUB_EVENT_NAME") == "issues":
        event = json.loads(Path(os.environ["GITHUB_EVENT_PATH"]).read_text())
        if (
            event.get("action") in {"opened", "edited", "reopened"}
            and "pull_request" not in event["issue"]
        ):
            triage(os.environ["GITHUB_REPOSITORY"], int(event["issue"]["number"]))
