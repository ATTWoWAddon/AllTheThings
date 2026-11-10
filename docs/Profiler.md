# ATT Performance Profiler

ATT's existing `app.__perf` tracker in `src/PerformanceTracking.lua` can record short captures to investigate refresh costs and stutter. Capture levels and current-session data extend the original scope/key metrics and their existing function wrappers. The same tracker produces its original cumulative CSV export and the new bounded report, including jobs, a timeline, sampled diagnostics, and next-login scheduling. The file remains optional and disabled in the normal TOC configuration.

This feature remains a Draft while validation in WoW is pending. This guide describes the current implementation and local test coverage; it does not claim measured FPS improvements or a measured overhead percentage.

## Enable the developer tracker

1. Open ATT's `AllTheThings.toc` in your developer installation.
2. Find the existing line `#src\PerformanceTracking.lua` and remove its leading `#`, leaving `src\PerformanceTracking.lua`.
3. Reload the UI to load the tracker and install its function wrappers.
4. Use the capture commands below. To return to the normal configuration, restore the leading `#` and reload again.

The commented configuration does not load the capture metadata, register `/att profile` or its help, or install the next-login wrapper. There is no settings toggle that loads the tracker at runtime. With the tracker disabled, a saved next-login request is left untouched.

With the file loaded, `app.__perf` installs its existing wrappers. Additional `if app.__perf` blocks declare capture levels and module labels through those original capture APIs during initialization. Runners select their monitored resume function when created. Frequently executed ATT function bodies contain no added profiling checks; hook decisions are made during module initialization or Runner creation. Installed wrappers stay in place until the file is disabled and the UI is reloaded. `stop` and `reset` control current-session results; they do not remove the wrappers or stop cumulative developer statistics.

## Capture and copy a report

1. Enable the developer tracker, log in, and wait for ATT's initial loading and collection refresh to settle.
2. Run `/att profile start 30` immediately before the action that causes the problem. `/att profile start` uses the same 30-second default.
3. Reproduce the action, such as changing ATT's collection mode or refreshing collections. Keep other actions consistent between captures.
4. After the work finishes, run `/att profile stop`, or wait for the automatic stop message.
5. Run `/att profile report`. The **ATT Performance Profile** popup opens with its report text selected. Use the platform's copy shortcut, such as Ctrl+C, and paste it into a text file or issue comment.
6. Save the report and test context before starting another capture. A new capture replaces the previous one.

The report uses tab-separated columns, so copied rows can also be pasted into a spreadsheet. ATT opens the text locally and does not upload it. Results exist only in memory for the current UI session; there is no saved report history or automatic file export.

## Commands

These commands are registered only when `src/PerformanceTracking.lua` is loaded.

| Command | Behavior |
| --- | --- |
| `/att profile` or `/att profile help` | Prints command usage. |
| `/att profile start [seconds] [level] [key=value ...]` | Clears the previous capture and starts recording. Defaults to 30 seconds and Level 1. Accepts 1–300 seconds, including fractions, and levels 1–6 or their names. |
| `/att profile nextlogin [seconds] [level] [key=value ...]` | Saves a one-shot request with its level and options for the next login or UI reload; leaves the current capture and report intact. |
| `/att profile nextlogin cancel` | Removes the pending login request without changing the current capture. |
| `/att profile stop` | Stops recording and keeps the captured results available. Reports that no capture is running if already stopped. |
| `/att profile report` | Opens a copyable report. During a capture, it shows a snapshot and recording continues. Run it again to see later results. |
| `/att profile reset` | Stops recording and clears the bounded capture's results. |

Invalid durations, levels, filters, or options are rejected without replacing the active capture or pending login request. Duration and level precede named options; duplicate or unknown options are rejected. A timer stops a valid capture automatically. A long synchronous operation can delay that callback and make elapsed time exceed the requested duration.

Starting another capture, resetting, reloading, or logging out discards the bounded results. Save the report first. A manual capture cannot measure startup work that finished before the command became available.

## Original cumulative statistics

The existing `app.__perf`, `app.PrintPerf()`, and `app.ClearPerf()` workflow is retained. For developers, the CSV export is available with:

```text
/run AllTheThings.PrintPerf()
/run AllTheThings.ClearPerf()
```

`PrintPerf()` opens the original CSV columns: scope, function key, call count, and accumulated elapsed **seconds**. Each original metric retains its cumulative `count` and `time`; capture metadata and current-session results are stored alongside them on that same metric. CSV covers successful wrapped returns since installation or the last clear, rather than the `/att profile` window. A yielding function's cumulative elapsed time can include suspended waits. Numeric queue entries retain their original `tostring(function)` keys in CSV; capture metadata supplies stable labels for the report. `Report()` combines copied rows sharing a label without changing those original keys or cumulative statistics.

`ClearPerf()` clears the original counts and times. It does not clear or stop a bounded capture, cancel a login request, or uninstall wrappers. Similarly, `/att profile reset` does not clear the original statistics. Legacy statistic keys are not subject to the capture's metric, job, or timeline budgets.

Original installed wrappers continue taking clock readings and updating cumulative statistics before a capture starts and after it stops. The original implementation retains references to tracked objects and packs return values with an implicit table length, so exact return arity with nil values is not guaranteed. Its counts and elapsed times update after a successful return; an error interrupts that update. These existing behaviors are preserved. Capture levels, filters, and budgets do not limit or disable the original tracker.

Level 6 sampling controls additional session observations and caller-stack retention. Every original wrapper still records cumulative calls and elapsed time, including diagnostic calls omitted from the session sample. Sampling does not disable the original wrapper or its clock readings.

## Declare capture coverage

Use the existing `app.__perf.CaptureFunction(func, key, scope, options)` and `app.__perf.CaptureTable(table, scope, options)` APIs. Their original arguments still work; the optional trailing options declare a capture `module`, `minLevel`, stable `id`, or `queued` observation. `app.__perf.AutoCaptureTable` continues its existing automatic table workflow. Capture details come only from explicitly declared level metadata; automatic table tracking alone continues to populate CSV.

Install a local hook while loading the module and retain the returned function:

```lua
if app.__perf then
    Calculate = app.__perf.CaptureFunction(Calculate, "calculate", "collection", {
        module = "collection", minLevel = 2,
    });
end
```

Reconfiguring a function already owned by the tracker updates its existing metric's capture declaration and returns the same wrapper. Its original cumulative scope/key remains intact. The declaration's ID controls its report label. Cumulative statistics and capture results therefore belong to the same original wrapper and metric.

Declared level/module metadata lives on the original metric; `metric.capture` holds accepted current-session data and its `sessionID` generation. Starting or resetting a session invalidates earlier results without clearing cumulative statistics. Jobs, timeline entries, and retained stacks are ordinary data associated with the current session of this same tracker. `app.__perf.GetConfig()` returns a copy of the public session policy.

The original direct target call remains unprotected. Its arguments, yielding behavior, error propagation, and implicit return-length behavior are retained. An error bypasses the wrapper's completion update. Resume monitoring can observe a failed coroutine; a standalone failed call can leave an incomplete observation until capture stops.

## Capture levels

Levels select cumulative capabilities within explicitly declared coverage. Overview scopes remain global; include/exclude filters select additional detail modules. The validated policy is copied and stays fixed for the session. Start a new capture to change it.

| Level | Name | Added information | Additional capture cost |
| --- | --- | --- | --- |
| 1 | `overview` | Runner/coroutine resume slices and selected coarse collection, Transmog, costs, cache, search, tooltip, and window functions. | Coarse clock reads and aggregate updates. |
| 2 | `components` | Declared local functions, event dispatch, and Runner queue entries. | Additional completion aggregates and invocation state. |
| 3 | `workload` | Actual invocation counters ending in `.calls`, plus selected finer function boundaries such as cost-reference processing, cache converters, and window rows. | Entry counter updates and additional selected function timing. |
| 4 | `jobs` | Bounded observations of declared invocations, observed queueing, and coroutine resumes, with origin, execution time, and lifecycle state. | Current-session job data and coroutine context. |
| 5 | `timeline` | A bounded ring of job lifecycle events and completed timings exceeding the slow threshold. | Lifecycle timestamps and retained event storage. |
| 6 | `diagnostics` | Periodically sampled local Transmog and costs API aliases, with optional bounded caller stacks. | Sampling gates, accepted API timings, and optional stack capture. |

The `workload` name is retained as a level alias. Its counters describe actual wrapped function entries, not semantic loop totals such as source IDs visited, cache hits/misses, collected appearances, or successful cost assignments. Selecting a level does not add those semantic counts or turn on tracing of every function in a module.

Use `stop` or `reset` to stop recording. Start levels are 1–6; `GetLevel()` retains the last selected depth after stop and returns 0 before a session or after reset. Levels 4–6 require an explicit `include`, including `include=all`. An exclusion removes module details while retaining Level 1 scopes.

Examples:

```text
/att profile start 30 2
/att profile start 30 workload include=costs,search
/att profile start 10 jobs include=events,costs jobs=128
/att profile start 10 timeline include=events,costs slow=10 records=256
/att profile start 10 diagnostics include=transmog sample=10
/att profile nextlogin 30 5 include=runner,events
```

### Capture options

| Option | Default and accepted values | Effect |
| --- | --- | --- |
| `include` | `all` at Levels 1–3; required at Levels 4–6. | Comma-separated detail modules, or `all`. |
| `exclude` | None; comma-separated modules or `all`. | Omits selected module details; Overview remains global. |
| `sample` | 10; integer 1–10000. | Level 6 accepts the first call and every Nth subsequent call per declared original metric. |
| `slow` | 10; finite nonnegative milliseconds. | Retains completed timings at or above this threshold in the timeline. Job lifecycle events are independent of this threshold. |
| `metrics` | 128; integer 0–1024. | Maximum retained original detail metric objects; Overview has its separate 64-metric allowance. |
| `jobs` | 128; integer 0–1024. | Maximum retained job records across the capture. |
| `records` | 256; integer 0–4096. | Timeline ring capacity; oldest entries are overwritten when full. |
| `stacks` | `false`; `true` or `false`. | Retains caller context for accepted Level 6 samples when `debugstack` is available. |
| `stackbytes` | 8192; integer 0–65536. | Retained stack-text byte limit, also bounded by 128 stack records. |

Accepted built-in module names are `app`, `classes`, `datahandling`, `symlink`, `runner`, `events`, `startup`, `collection`, `transmog`, `costs`, `search`, `tooltip`, `windows`, `cache`, `inventory`, and `upgrade`. `app`, `classes`, `datahandling`, `symlink`, and `startup` currently have no dedicated bounded production hooks; other names can have only Runner coverage. Selecting a name enables its existing details only. The original app/table wrappers are not automatically included in the bounded report. Zero budgets disable retention for that data kind and leave the capture running.

Sampling limits additional diagnostic session data and stack retention while original cumulative timing continues. Sampled report rows describe accepted, completed observations only; their totals, sample counts, units, and p95 are not extrapolated to the full workload. Periodic sampling can miss rare calls or align with a repeated workload pattern.

Caller stacks are collected at the selected call site's beginning. They identify caller context rather than the called function's later internal execution. They are not arbitrary Lua CPU sampling. Stack collection is excluded from the selected diagnostic call's session duration. Its cost remains in original cumulative elapsed time and in enclosing function/resume timings.

### Choose depth and scope

Start with Level 1 or 2 to locate expensive covered work. Level 3 can show whether matching wrapped functions were entered more often. Use short Level 4–6 captures for the modules implicated by the coarse results. For example, a large `runner.costs.slice` total can be followed by `costs.assign.*` timings, observed queue origins, and sampled `costs.api.itemcount` calls.

Depth adds observations at selected call sites; the number six itself does not determine runtime cost. Narrow filters reduce detail timing, jobs, and timeline work while leaving coarse scopes and ordinary legacy wrapper work active. Lower sampling frequency reduces accepted diagnostic observations. A higher slow threshold reduces saved `slow` rows, but accepted calls still need timing before the threshold can be checked. Budgets bound stored data and do not guarantee a fixed CPU cost.

Compare runs with the same enabled tracker, level, filters, sampling, capacities, and workload. Assess observer cost separately by comparing the normal TOC configuration, the loaded tracker with capture stopped, and an active capture. No overhead percentage or FPS improvement has been measured in the intended clients.

## Capture the next login

1. With the tracker enabled, run `/att profile nextlogin 60` before logging out or reloading. Omit the duration to use 30 seconds.
2. Keep the optional tracker enabled and log back in, or run `/reload`. Its installed login wrapper consumes the request before calling ATT's original `PLAYER_LOGIN` body.
3. Wait for automatic stopping, or use `/att profile stop` after the work you want to measure finishes.
4. Run `/att profile report` and copy the results before logging out, reloading, or starting another capture.

The request is stored in ATT's existing account-wide SavedVariables. The next character login loading the enabled tracker consumes it; it is not tied to an ATT settings profile or the scheduling character. A valid new request replaces the saved duration, level, and options. Each request runs once and must be scheduled again for another capture. Legacy duration-only requests start at Level 1.

Use `/att profile nextlogin cancel` to remove a request. Manual `start`, `stop`, and `reset` leave it in place. If the optional tracker is disabled before the next login, no installed login wrapper consumes the request; it remains pending for a later enabled login. Only the request configuration is saved, not timings or reports.

The login wrapper starts before saved-variable initialization and settings initialization inside the original handler. It observes whichever nested scopes are covered and selected; it does not create dedicated `startup.savedvariables` or `startup.settings` rows. Earlier addon-file execution and database-file loading are outside the capture. Progressive loading and refresh work after the duration limit are also outside it. Login and reload behavior still require validation in WoW.

## Read the report

The header identifies the capture session, state, elapsed time, duration limit, stop reason, level, detail filters, capacities, and diagnostic sampling. Timing rows are sorted by accumulated time; counters are sorted by ID.

| Column | Meaning |
| --- | --- |
| Timing ID | Stable wrapped-function or resume scope. |
| Calls | Accepted completed invocations for function rows; measured resumes for Runner/coroutine rows. |
| Total ms | Sum of accepted completed durations. |
| Avg ms | Total divided by Calls. |
| Max ms | Longest accepted duration. |
| p95 bucket ms | Upper-bound histogram bucket containing the 95th-percentile duration, not an exact percentile. |
| Units | Explicitly supplied work units. Current function declarations do not supply semantic work units, so their rows show `-`. |

Histogram upper bounds are 0.25, 0.5, 1, 2, 4, 8, 16, 33, 66, 100, 250, 500, and 1000 ms, followed by an overflow bucket. `<=16.00` means the p95 duration falls in a bucket ending at 16 ms; `>1000` means it falls in the overflow bucket. Small captures can have too few samples for a useful p95 comparison.

High Total can reflect frequent work even when durations are short. High Max or p95 can identify individual long calls. Compare invocation counts and exact actions as well as time: captures with different workloads can have different totals without a change in per-call cost.

### Current scope coverage

The following table lists the report's explicit production capture declarations. The original developer table tracking remains available separately through the CSV export. Missing bounded rows can mean the path did not execute, the client lacks that functionality, filters excluded it, sampling skipped it, or a coverage/storage limit was reached.

| Group | Level 1 scopes | Additional covered scopes | Interpretation |
| --- | --- | --- | --- |
| Runner and pooled coroutines | `runner.<category>.slice`, `coroutine.slice` | Level 2 `Runner_<category>.FunctionQueue.queued`; Level 3 matching `.calls`. | One slice measures a resume. New numeric queue assignments share a stable `.queued` ID instead of per-function addresses. Other Runner methods are not automatically bounded scopes. |
| Event dispatch | No dedicated event-request counters. Events can execute inside `runner.events.slice`. | Level 2 `events.dispatch`; Level 3 `events.dispatch.calls`. | Invocations count entries into `HandleEvent`, including requests that its original logic coalesces. Individual event handlers and general app methods are not automatically bounded scopes. |
| Collection | `collection.apply` | Level 2 `collection.change`; Level 3 matching `.calls`. | Apply batches and individual collection-change function entries; no IDs-visited/change-success totals. |
| Transmog | `transmog.sources.scan`, `transmog.unique.collect` | Level 2 `transmog.unique.expand`; Level 3 matching `.calls`; Level 6 `transmog.api.known`, `transmog.api.sourceinfo`. | Ownership scans, Unique rebuilds, expansion calls, and selected local API aliases. API coverage includes all calls through those hooked aliases in this file. |
| Costs | `costs.queue.refresh`, `costs.update.group` | Level 2 `costs.collectible`, `costs.assign.item/currency/spell`, `costs.update.item/currency/spell`; Level 3 `costs.assign.totals`, `costs.refs.item/currency/spell` and matching `.calls`; Level 6 `costs.api.itemcount`, `costs.api.currencyinfo`. | Queue preparation and later assignment/reference functions are separate observed boundaries. Counts are calls rather than assigned-group totals. |
| Field caches | `cache.search.single`, `cache.search.many`, `cache.build.fields` | Level 3 `CacheFields.<field>` and matching `.calls`. | Cache lookup/build and field-converter calls; no semantic hit/miss counters. |
| Search | `search.link`, `search.build` | Level 2 `search.clone`, `search.cached`; Level 3 `search.recursive_filter` and matching `.calls`. | Link searches, hierarchy construction, cloning, cached response construction, and recursive-filter entries. |
| Tooltip | `tooltip.attach` | Level 2 `tooltip.information`; Level 3 matching `.calls`. | ATT attachment and information construction; no tooltip-cache hit/miss counters. |
| Windows | `window.update`, `window.refresh`, `window.redraw` | Level 3 `window.row.set` and matching `.calls`. | Default window operations and row setter entries; the setter count is not a count of distinct visible rows. |

`<category>` is a stable built-in Runner name. Dynamic window Runners share `windows`; unrecognized Runner names share `other`. Built-in categories include `default`, `events`, `update`, `collection`, `costs`, `cost_collector`, `upgrade`, `inventory`, `reagent_collector`, `search`, `vignette`, `contributor`, `waypoint`, `dynamic`, and `quests`. Original Runner lookup names and queue behavior are retained.

Report IDs come from an explicit declaration or its supplied scope/key label. The original cumulative metric keeps its original scope/key even when its wrapper is given a new capture label. Declared table captures cover current function fields, and generic converter registration declares subsequently registered converters. Runner queue capture declares new numeric function assignments through the existing automatic assignment path. Replacing an existing key or using raw operations can bypass assignment observation. Unhooked locals and automatic app/table coverage without level metadata remain outside the session report.

Function timing **Calls** counts completed invocations accepted in the session. A yielding function produces one completed timing when it returns, rather than one timing per resume. Runner and pooled-coroutine rows measure individual resumes. Level 3 `.calls` increments at function entry, so it can exceed completed timings when work is still running, fails, or finishes outside the session. Only declared, selected, retained entries contribute to these counters.

Runner, function, API, and job measurements are inclusive and can overlap. A Runner slice may contain a Unique rebuild, which can contain expansion and API calls. Do not add these totals to estimate all ATT time. Monitored resumes maintain a coroutine execution clock so completed function durations can subtract time suspended between those resumes. Arbitrary yields outside monitored resume paths do not receive the same complete execution-clock coverage. Original CSV timing retains its accumulated wall-clock behavior.

Semantic IDs such as `event.trigger.*`, `event.accepted.*`, `event.coalesced.*`, `cache.hits`, and `collection.batch.ids` are not produced. Actual dispatcher coalescing still occurs, but `events.dispatch.calls` alone cannot distinguish accepted and coalesced requests.

### Jobs (Level 4 and above)

Job records describe declared function invocations and monitored coroutine work, including enqueue when the original automatic queue hook observes an assignment. Records appear in observation order. Nested records can overlap and consume separate slots.

| Column | Meaning |
| --- | --- |
| Job ID | Capture-local record number; it has no meaning in another capture. |
| Scope | Declared report label of the observed function or resume. |
| State | Last observed state: queued, running, yielded, completed, failed, or incomplete. |
| Origin | `queued` for an observed enqueue, `call` for a direct invocation, or `unknown` for queue/resume work lacking an observed enqueue. |
| Queue wait ms | Observed enqueue to first execution; `-` if either boundary is absent. |
| Execution ms | Observed execution-clock duration when monitored; elapsed wall time otherwise. Unstarted work shows zero. |
| Wall ms | First observed execution to completion or the reporting boundary, including waits; unstarted work uses its observation creation time. |
| Parent | Parent job observed when this record was created, or `-` without parent context. |

Work queued before capture, or a coroutine first observed after capture starts, can have unknown enqueue timing and origin. Current execution context cannot reconstruct a missed enqueue. There is no separate partial flag, queue-depth column, or per-job resume count. Timing rows provide resume counts where the monitored resume functions are declared.

At capture stop, unfinished jobs become incomplete. Later execution does not revise the stopped report. Function timing appears only after a successful return; reporting or stopping cannot synthesize its final duration. Level 3 entry counters and retained job state can still show unfinished work. Reset invalidates prior generations so late returns cannot update a new report.

A directly thrown error retains its original propagation and can leave the job incomplete until stop. Without an observed exit, that job's duration can include subsequent elapsed wall time and is not a reliable full execution measurement. A monitored resume returning a coroutine error can mark its observed job and retained child jobs failed.

Runner queue resets or discarded callbacks are not automatically observed as cancellations. A discarded queued job can remain queued until capture stop marks it incomplete. An incomplete record does not prove the underlying ATT work was canceled, and observing a job never controls its real execution.

Origin and Parent describe observed scheduling context rather than a complete causal graph. Jobs, Runner timings, and nested function times overlap and must not be summed. The `jobs` budget applies across the whole session, including completed records; completion does not free a slot. Existing records keep updating after the limit is reached. Rejected allocation attempts are counted; repeated attempts can represent the same uncovered work. Capacity exhaustion affects observation only.

### Timeline (Level 5 and above)

| Column | Meaning |
| --- | --- |
| At ms | Record time relative to capture start. |
| Event | Observed lifecycle state (`queued`, `running`, `started`, `resume`, `yielded`, `completed`, `failed`, or `incomplete`), or `slow` for a completed timing at or above the threshold. |
| ID | Stable observed job or timing scope. |
| Duration ms | Completed measured duration when supplied; `-` for events without one. |

Lifecycle records are independent of `slow`. Raising that threshold reduces slow-timing records but does not remove queue/resume/yield/completion events. All timeline records follow module filters, including slow records from Level 1 scopes; those scopes' timing aggregates still remain global. Level 6 timings also follow sampling. Timeline IDs label the original declared function or resume; the job table carries retained parent and origin fields.

The ring displays retained entries oldest-to-newest. When full, each new entry overwrites the oldest and increments the overwrite count. It is a recent window rather than a complete history: an enqueue can be overwritten while its completion remains. A separately retained job may still hold the queue information. `records=0` saves no timeline rows while other enabled observations continue.

### Illustrative report excerpt

These values are invented to explain the columns, not an in-game benchmark. Spacing is expanded; the actual report uses tabs.

```text
Timing ID                      Calls  Total ms  Avg ms  Max ms  p95 bucket ms  Units
runner.events.slice            3      27.000    9.000   18.300  <=33.00        -
transmog.unique.collect        1      18.000    18.000  18.000  <=33.00        -
transmog.sources.scan          1      6.000     6.000   6.000   <=8.00         -

Counter ID                              Count
transmog.unique.collect.calls           1
transmog.sources.scan.calls             1
```

The Unique rebuild has one completed 18 ms invocation. The Runner can contain the same execution, so summing rows would count work twice. The invocation counters count function entries; these rows provide no number of scanned or collected appearances.

## Optional Blizzard metrics

When `C_AddOnProfiler` and the required enum entries are available and provide usable values, ATT samples them at capture start and stop. If the API exposes `IsEnabled`, ATT checks its result. ATT does not enable Blizzard profiling or change client profiler settings.

The report may include:

- **Recent average at start/stop:** Blizzard's rolling whole-addon `RecentAverageTime`. It is not the average of the ATT capture window, and subtracting the two values does not produce its CPU time.
- **Ticks over 5/10 ms during capture:** Differences between cumulative `CountTimeOver5Ms` and `CountTimeOver10Ms` at the boundaries, only when both snapshots exist and the counter has not decreased.

These whole-addon measurements can include work outside the wrapped scopes. They are not FPS readings and must not be added to ATT timing totals. A running report has no final stop snapshot or threshold deltas yet. An absent or partial Blizzard section does not invalidate ATT's capture; client API availability and profiler state can vary. Counter resets during capture can make boundary differences unavailable or unsuitable for comparison.

## Bounds and observer cost

The normal commented TOC configuration installs no profiling wrappers or capture metadata. The loaded developer tracker continues legacy tracking while bounded capture is stopped. An active capture adds selected timing, counter, job, timeline, and stack work on top of that cost. Filters and capacities control observations and retained data, not all installed wrapper execution.

| Bound | Scope |
| --- | --- |
| 64 original Overview metric objects | Per capture, separate from the detail allowance. |
| Configured detail metric budget, at most 1024 original metric objects | Per capture; each retained original metric shares one slot for its timing and `.calls` fields. Existing metrics keep accumulating after new ones are omitted. |
| Configured job budget, at most 1024 records | Across a capture, including completed records. |
| Configured timeline budget, at most 4096 entries | Ring retention; old entries are overwritten. |
| Configured stack bytes, at most 65536 bytes and 128 records | Accepted diagnostic caller stacks per capture. |

Original metric objects retain declaration metadata and cumulative statistics. Current-session timing data holds aggregates and a fixed histogram rather than every sample. Report budgets limit accepted session observations; reaching a limit does not stop the wrapped ATT function or its cumulative statistics. Reports indicate dropped, omitted, or overwritten observations and partial coverage.

Capacity counts retained original metric objects, not distinct displayed labels. Different queued functions can have separate original CSV keys while sharing one fixed report label. Each can consume a session metric slot; `Report()` combines their counts, times, maxima, and histogram buckets only when copying output. This preserves the original metrics and produces readable rows, but high callback variety can exhaust a budget even when the report displays few labels.

These bounds apply to current-session data in the tracker. Original cumulative CSV buckets, installed wrappers, and ATT's own queues are separate. The limits do not guarantee a fixed CPU or memory cost for the entire developer tracker or for a high-frequency workload.

The report is not an exhaustive function trace and does not collect FPS, addon memory, garbage-collection statistics, or exclusive native API CPU time. Stalls outside covered paths can be absent. Observe FPS separately if it is part of the symptom.

## Compare two captures

For Completionist-versus-Unique investigation:

1. Use the same character, zone, enabled addons, graphics settings, frame cap, ATT filters, and loaded developer tracker. Wait for initial loading to settle.
2. Set Completionist and let that change finish. Start a capture, perform a repeatable collection refresh, stop, and save report A.
3. Set Unique and let that change finish. Start a capture with the same policy, repeat the action, and save report B.
4. Repeat the pair where practical. Keep cache warm-up and the number of refresh actions consistent; record whether stutter reproduces.
5. Compare matching invocation counters and timing Calls before interpreting totals. Then compare Avg, Max, and p95 within matching coverage.

If switching modes itself causes the problem, capture before switching and document both modes. Repeat the same transition in comparison runs. Measure normal-tracker-disabled, tracker-loaded/stopped, and active-capture behavior separately when assessing observer cost.

Include the WoW variant and build, ATT revision and data version, character class/race/faction, relevant settings, duration, level/options, exact actions, and observed symptom with reports. That context is not collected automatically. Preserve A before starting B.

## Local checks and runtime limits

Standalone fixtures load the actual optional tracker and exercise policy, login requests, commands, module declarations, Runner jobs, and event dispatch with mocked client APIs. Module checks verify default execution without profiling clock reads, reused original wrappers/metrics, current-session generations, declared report coverage, late converters, and diagnostic sampling.

All eight suites passed under Lua 5.1.5 and Lua 5.5.1: `tests/Profiler.lua`, `tests/ProfilerLevels.lua`, `tests/ProfilerCommands.lua`, `tests/ProfilerLogin.lua`, `tests/ProfilerModules.lua`, `tests/ProfilerJobs.lua`, `tests/ProfilerEvents.lua`, and `tests/PerformanceTracking.lua`. All 21 changed Lua files passed the Lua 5.1 syntax check, and whitespace checks passed. The original `PrintPerf`, `ClearPerf`, `IgnorePerf`, and `GetPerfForScope` bodies match the base source. LuaLS annotations document contracts; parser checks alone do not establish semantic validation.

Direct tracked targets keep their original unprotected call path, including yielding and error propagation. The tracker does not add a protected-call boundary around them. No protected-call yield skips are needed for the added tracker behavior. The stock Lua fixtures use a test-only `xpcall` argument-forwarding shim for ATT's existing Runner behavior and an `unpack` compatibility alias for Lua 5.5.

These checks establish behavior under the fixtures. They do not validate WoW's API availability, popup UI, actual login/reload loading, frame scheduling, or measurement overhead in a client.

## In-game validation pending

Before the Draft is ready, validate the following in the intended clients:

- Confirm normal ATT operation with the TOC entry commented, no profile command/help, and no Lua errors.
- Enable the optional entry, reload, capture a collection refresh, stop, and copy a readable report.
- Schedule a next-login capture, test logout/login and `/reload`, and confirm it begins before the original startup body, runs once, and can be canceled.
- Disable the optional tracker with a pending request; confirm normal login leaves it pending, then re-enable and consume it.
- Check automatic stopping, reset, invalid arguments, repeated captures, and the separate original CSV export/clear behavior.
- Exercise all six levels, filters, sampling, budgets, overwrite, and stack limits; check unknown origins, incomplete states, and sampled labels.
- Test work queued before capture, yielding jobs, nested coroutines, discarded queues, and start/stop/reset inside observed work.
- Compare Completionist and Unique with matching policies and confirm covered scopes appear when executed.
- Check Blizzard context where available and confirm capture still works without it.
- Record FPS and stutter with the tracker disabled, loaded/stopped, and actively capturing to assess observer cost.

## AI Assistance

AI assistance was used with **gpt-6-sol** for the initial capture implementation and tests, and **gpt-6.1-sol** for follow-up implementation, reviews, LuaLS/function documentation, login scheduling, levels, extensions of the original optional tracker, tests, and this guide. The pull request identifies the verification actually performed. Full WoW validation is pending, and illustrative values are not client measurements.
