# ATT Performance Profiler

ATT's performance profiler records short captures of explicitly instrumented work to help investigate refresh costs and stutter. It is disabled by default. Start it only for the action you want to measure, then copy the report for comparison or an issue report.

This feature is submitted as a Draft while in-game validation is pending. The measurements and commands below describe the implementation; availability of Blizzard's optional profiler metrics depends on the client and its current profiler state.

## Capture and copy a report

1. Log in and wait for ATT's initial loading and collection refresh to settle.
2. Run `/att profile start 30` immediately before the action that causes the problem. `/att profile start` uses the same 30-second default.
3. Reproduce the action, such as changing ATT's collection mode or refreshing collections. Keep the other actions during the capture consistent between tests.
4. After the work finishes, run `/att profile stop`, or wait for the automatic stop message.
5. Run `/att profile report`. The **ATT Performance Profile** popup opens with its report text selected. Use the platform's copy shortcut, such as Ctrl+C, and paste it into a text file or issue comment.
6. Save the report and the test context before starting another capture. A new capture replaces the previous one.

The report uses tab-separated columns, so copied timing and counter rows can also be pasted into a spreadsheet. Report text is copied locally; ATT does not upload it.

## Commands

| Command | Behavior |
| --- | --- |
| `/att profile` or `/att profile help` | Prints command usage. |
| `/att profile start [seconds]` | Clears the previous capture and starts recording. The default is 30 seconds; accepted durations are 1 through 300 seconds, including fractional values. |
| `/att profile nextlogin [seconds]` | Saves a one-shot request to start at the next login or UI reload. Uses the same default and duration limits as `start`; leaves the current capture and report intact. |
| `/att profile nextlogin cancel` | Removes the pending login request without changing the current capture. |
| `/att profile stop` | Stops recording and keeps the captured results available. Reports that no capture is running if already stopped. |
| `/att profile report` | Opens a copyable report. During a capture, it shows a snapshot and recording continues. Run it again to see later results. |
| `/att profile reset` | Stops recording and clears all captured results. |

An invalid duration is rejected without replacing an active capture. A timer stops a valid capture automatically. Because WoW runs the callback when Lua execution permits it, a long synchronous operation can make the actual elapsed time exceed the requested duration.

Results exist only in memory for the current UI session. Starting another capture, resetting, reloading the UI, or logging out discards them. There is no SavedVariables history or automatic file export. A manual capture started with `/att profile start` cannot measure startup work that finished before the command became available.

## Capture the next login

1. Run `/att profile nextlogin 60` before logging out, or before reloading the UI. Omit the duration to use 30 seconds.
2. Log back in with ATT enabled, or run `/reload`. ATT starts the capture at the beginning of its `PLAYER_LOGIN` handler, before settings initialization and the initial collection refresh.
3. Wait for the automatic stop message, or use `/att profile stop` after the work you want to measure finishes.
4. Run `/att profile report` and copy the results before logging out, reloading, or starting another capture.

The request is stored in ATT's existing account-wide SavedVariables. The next character login that loads ATT consumes it; it is not tied to an ATT settings profile or to the character that scheduled it. Each request runs once, and must be scheduled again for another login capture. A new valid request replaces the pending duration. Invalid durations leave both the pending request and the current capture unchanged.

Use `/att profile nextlogin cancel` to cancel a request. Manual `start`, `stop`, and `reset` commands affect the current capture only; they leave the pending login request in place. Only the requested duration is saved. Timing samples and reports are still discarded on logout or UI reload.

Login captures measure the same instrumented scopes as manual captures. They begin at `PLAYER_LOGIN`, so earlier addon-file execution and database-file loading are outside the capture. Slow synchronous startup work can delay the automatic stop callback and extend elapsed time; use a longer duration if progressive loading or collection refresh continues after the capture stops. Login and UI-reload behavior still require validation in the intended clients.

## Read the report

The header identifies the capture session, whether it is running or stopped, elapsed time, the requested duration limit, and the stop reason. Timing rows are sorted by accumulated time, highest first. Counter rows are sorted by their IDs.

| Column | Meaning |
| --- | --- |
| Timing ID | The instrumented scope being measured. |
| Calls | Number of recorded timing samples for that scope. It is not necessarily the number of tasks, events, or game frames. |
| Total ms | Sum of that scope's measured durations during the capture. |
| Avg ms | Total divided by Calls. |
| Max ms | Longest recorded sample. |
| p95 bucket ms | Histogram bucket containing the 95th-percentile sample, shown as an upper bound rather than an exact percentile. |
| Units | Sum of the work counts supplied by the scope. A dash means that scope supplies no work count. |

The histogram has upper bounds of 0.25, 0.5, 1, 2, 4, 8, 16, 33, 66, 100, 250, 500, and 1000 ms, followed by an overflow bucket. For example, `<=16.00` means the sample at the 95th-percentile position falls in a bucket ending at 16 ms. `>1000` means it falls in the overflow bucket. Small captures may have too few samples for p95 to describe typical behavior well.

High Total can indicate frequent work even when individual samples are short. High Max or p95 can indicate long individual execution slices. Compare Calls and event counts as well as timings: two captures with different workloads can have different totals without a change in the cost of a single operation.

### Instrumented timing scopes

| Timing ID | What it measures | Units |
| --- | --- | --- |
| `runner.<name>.slice` | One resume of a named ATT Runner's coroutine, from resume to return or yield. A slice can execute several queued functions and Runner callbacks. Time spent waiting between frames while the coroutine is yielded is excluded. | `-` |
| `transmog.sources.scan` | The synchronous refresh that scans appearance source IDs and updates directly collected sources. | Sum of the source-ID scan bound, `app.MaxSourceID`, for each recorded scan. |
| `transmog.unique.collect` | The complete synchronous Unique appearance calculation, including its source scan and special handling for broken appearance-source lists. | Sum of the source-ID scan bound, `app.MaxSourceID`, for each recorded calculation. |

Transmog Units describe the range of source IDs scanned, not the number of appearances known or unlocked. Missing Transmog rows can mean that the measured action did not run those paths, Transmog tracking was disabled, or the client does not expose the Transmog functionality used by ATT.

Runner and Transmog scopes can overlap: a Runner slice can contain a recorded Transmog calculation. Their times must not be added together to estimate total ATT time. These measurements include work and API calls inside each scope; they are elapsed execution timings, not an exhaustive accounting of every ATT function.

### Event counters

| Counter ID | What it counts |
| --- | --- |
| `event.trigger.OnRecalculate` | Calls to ATT's dispatcher requesting `OnRecalculate`. |
| `event.trigger.OnRefreshCollections` | Calls to ATT's dispatcher requesting `OnRefreshCollections`. |
| `event.trigger.OnSourcesCollected` | Calls to ATT's dispatcher requesting `OnSourcesCollected`. |

These counters measure dispatch requests, including requests ATT may defer or coalesce. They do not count every WoW event, completed refreshes, or individual event-handler calls. They help identify repeated requests and compare the amount of work triggered between captures.

### Illustrative report excerpt

The values below are invented to demonstrate the columns. They are not an in-game benchmark or a claimed performance result. Spacing is expanded here for readability; the actual report uses tabs.

```text
ATT performance profile (session 1; stopped)
Elapsed: 12.00 s / 30.00 s limit; stopped: manual

Timing ID                      Calls  Total ms  Avg ms  Max ms  p95 bucket ms  Units
runner.events.slice            3      27.000    9.000   18.300  <=33.00        -
transmog.unique.collect        1      18.000    18.000  18.000  <=33.00        100000
transmog.sources.scan          1      6.000     6.000   6.000   <=8.00         100000

Counter ID                              Count
event.trigger.OnRecalculate              1
event.trigger.OnSourcesCollected         1
```

Here, the Unique calculation's single sample took 18 ms. The Runner also measured the execution containing that work, so summing all three timing totals would count some execution twice. Units of 100000 describe the scan bound, not 100000 collected appearances.

## Optional Blizzard metrics

When `C_AddOnProfiler` and the required enum entries are available and provide usable values, ATT samples them at capture start and stop. If the API provides `IsEnabled`, ATT also checks that it is enabled. ATT does not enable Blizzard profiling or change client profiler settings.

The report may include:

- **Recent average at start/stop:** Blizzard's rolling whole-addon `RecentAverageTime` sampled at those boundaries. These values are not the average of ATT's capture window, and subtracting them does not produce the capture's CPU time.
- **Ticks over 5/10 ms during capture:** Differences between Blizzard's cumulative `CountTimeOver5Ms` and `CountTimeOver10Ms` values at start and stop. A delta is shown only when both snapshots exist and the counter has not decreased.

These metrics describe the whole addon and may include work outside ATT's explicitly timed scopes. They are not FPS readings and must not be added to ATT's timing totals. A running report has no stop snapshot or final threshold deltas yet; stop the capture before copying a final report.

An absent or partial Blizzard section does not invalidate ATT's own capture. API availability, enabled state, and returned metrics can differ between client versions and game variants. If Blizzard's counters are reset during a capture, their boundary differences may be unavailable or unsuitable for comparison.

## Limits and measurement overhead

Recording is disabled by default. While disabled, instrumentation checks the enabled flag without taking timing samples, calling Blizzard's profiler API, or allocating sample data. An enabled capture adds clock reads and aggregation work, so use consistent profiling settings when comparing runs.

A capture stores at most 64 distinct metric IDs across timing scopes and counters. Metric IDs are limited to 96 bytes. After the cap is reached, samples for additional IDs are dropped and the report displays the dropped-sample count; existing IDs continue accumulating. Each timing scope keeps aggregates and a fixed histogram rather than retaining every sample.

The report provides selected timings and counters. It does not provide call stacks, a per-sample trace, FPS, memory usage, or garbage-collection statistics. Short stalls outside the instrumented paths may be absent from ATT's rows. Observe FPS separately if it is part of the reported symptom.

## Compare two captures

For a Completionist-versus-Unique investigation:

1. Use the same character, zone, enabled addons, graphics settings, frame cap, and ATT filters, including Main Only and Transmog tracking. Wait for initial loading to settle.
2. Configure Completionist mode and let that mode change finish. Start a capture, perform a repeatable collection refresh action, and stop after it completes. Save the report as A.
3. Configure Unique mode and let that mode change finish. Start a new capture with the same duration, repeat the same refresh action, and save the report as B.
4. Repeat the pair where practical. Keep cache warm-up and the number of refresh actions consistent, and note whether the reported stutter reproduces.
5. Compare event counts and timing Calls to check workload differences. Then compare Avg, Max, and p95 for matching scopes. Compare Total only with the differing amounts of work in mind.

If switching modes is itself the problem, start the capture before that switch and document the starting and destination modes instead of using the settled-mode procedure above. Reproduce the same transition for repeated runs.

Include the game variant and build, ATT revision and data version, character class/race/faction, relevant ATT settings, capture duration, exact actions, and observed symptom alongside copied reports. The report does not collect that context automatically. Preserve A before starting B because each new capture clears the previous results.

## In-game validation pending

Before this Draft is considered ready, validate the following in the intended WoW clients:

- Load ATT with profiling disabled and confirm normal operation and no Lua errors.
- Start a capture, trigger a collection refresh, stop, and copy a readable report from the popup.
- Schedule a next-login capture, test normal logout/login and `/reload`, and confirm it starts before initial collection work, runs once, and can be canceled.
- Confirm automatic stopping, reset, invalid-duration handling, and repeated captures.
- Capture Completionist and Unique behavior and verify that the expected timing scopes and event counters appear when their paths execute.
- Check the optional Blizzard section where the API is available and enabled, and confirm ATT captures still work when that section is absent.
- Observe stutter and FPS with the profiler both disabled and enabled to assess capture overhead and report the client and settings used.

## AI assistance

This feature and its usage documentation were developed with assistance from OpenAI Codex. The pull request lists the automated checks performed. In-game verification is pending; the illustrative values in this guide do not substitute for client measurements.
