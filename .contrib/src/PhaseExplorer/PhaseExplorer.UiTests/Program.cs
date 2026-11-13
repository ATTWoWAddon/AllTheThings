using System.Collections;
using System.Diagnostics;
using System.Reflection;
using Avalonia;
using Avalonia.Controls;
using Avalonia.Headless;
using Avalonia.Interactivity;
using Avalonia.Themes.Fluent;
using Avalonia.Threading;
using Avalonia.VisualTree;
using PhaseExplorer.App;
using PhaseExplorer.Core;

string root = Path.GetFullPath(args.Length == 0 ? Directory.GetCurrentDirectory() : args[0]);
await using var session = HeadlessUnitTestSession.StartNew(typeof(HarnessApplication));
await session.Dispatch(async () =>
{
    if (!args.Skip(1).Contains("--large-only", StringComparer.Ordinal))
    {
        await VerifyProjectControls(root);
        await VerifyArbitrarySources();
    }
    await VerifyLargeJsonControls(root);
    return 0;
}, CancellationToken.None);

static async Task VerifyProjectControls(string root)
{
    using var controls = await Open(root);
    Check(Count(controls.Files.ItemsSource) > 6, "Discovery must inspect the selected project");
    Console.WriteLine($"UI loaded {Count(controls.Files.ItemsSource):N0} Lua/JSON files");
    await Search(controls, "19002", true);
    Console.WriteLine($"UI search returned {Count(controls.Results.ItemsSource)} rows");
    Check(controls.Status.Text?.Contains("maximum 500") == true, "Search must disclose its result limit");

    const string bwl = "evolution/blackwing-lair/p4/sod.lua";
    var index = await ProjectIndex.LoadAsync(root);
    string bwlFile = index.Files.Single(f => f.RelativePath.Replace('\\', '/').EndsWith(bwl, StringComparison.Ordinal)).RelativePath;
    var heads = index.GetDetail(bwlFile).Nodes.Where(n => n.Label.StartsWith("i(19002)")).ToList();
    var expectedOriginal = heads.Single(n => n.Bindings.Any(b => b.Key == "raid.bwl.original"));
    var expectedRework = heads.Single(n => n.Bindings.Any(b => b.Key == "raid.bwl.sod20"));
    await SelectHit(controls, bwl, expectedOriginal.Location.Line);
    await Until(() => Rows(controls.Relations).Any(x => x.Contains("raid.bwl.original")), "original route bindings", controls);
    Check(controls.Source.IsReadOnly, "Source viewer must stay read-only");
    Check(controls.Source.SelectionEnd > controls.Source.SelectionStart, "Search result must select source text");
    var original = (SourceNode)((TreeViewItem)controls.Tree.SelectedItem!).Tag!;
    Check(original.Label.StartsWith("i(19002)") && original.Location == expectedOriginal.Location, "Search must select the original acquisition occurrence");
    await ChooseSchedule(controls, ".contrib/phase-examples/schedule.json", "sod", "vanilla.5");
    await Until(() => Rows(controls.Relations).Any(x => x.Contains("sod: disabled")), "original disabled policy", controls);
    Check(!Rows(controls.Relations).Any(x => x.StartsWith("Inherited AND:") && x.Contains("raid.bwl.sod20")), "Original route must not inherit the rework");

    await SelectHit(controls, bwl, expectedRework.Location.Line);
    await Until(() => Rows(controls.Relations).Any(x => x.Contains("raid.bwl.sod20")), "rework route bindings", controls);
    var rework = (SourceNode)((TreeViewItem)controls.Tree.SelectedItem!).Tag!;
    Check(rework.Id != original.Id && rework.Label.StartsWith("i(19002)"), "Identical game IDs need distinct source occurrences");
    Check(!Rows(controls.Relations).Any(x => x.StartsWith("Inherited AND:") && x.Contains("raid.bwl.original")), "Rework route must not inherit the original");
    Check(!Rows(controls.Relations).Any(x => x.StartsWith("Policy candidate:")), "Timing details must not bury bindings under every alternate context");
    Check(controls.Results.SelectedItem?.ToString()?.StartsWith($"blackwing-lair/p4 · sod.lua:{expectedRework.Location.Line}") == true, "Search labels must show case and stage before the filename");
    Check(AncestorsExpanded(controls.Tree, rework), "Source navigation must reveal the selected tree occurrence");

    string? captureDirectory = Environment.GetEnvironmentVariable("PHASE_EXPLORER_UI_REPORTS");
    if (!string.IsNullOrWhiteSpace(captureDirectory))
    {
        Directory.CreateDirectory(captureDirectory);
        controls.Window.Width = 1280; controls.Window.Height = 720; controls.Window.UpdateLayout();
        using var frame = controls.Window.CaptureRenderedFrame() ?? throw new Exception("The headless renderer did not produce a frame");
        frame.Save(Path.Combine(captureDirectory, "bwl-rework-1280x720.png"), Avalonia.Media.Imaging.PngBitmapEncoderOptions.Default);
    }
    controls.Window.Width = 900;
    controls.Window.Height = 600;
    controls.Window.UpdateLayout();
    Check(controls.Context.Bounds.Width > 0 && controls.Milestone.Bounds.Width > 0, "Selectors must remain laid out at the minimum window size");
    const string productionDfc = ".contrib/.db/season of discovery/dungeons & raids/Demon Fall Canyon.lua";
    object dfcFile = controls.Files.ItemsSource!.Cast<object>().Single(item =>
        item.GetType().GetProperty("Path")!.GetValue(item)!.ToString()!.Replace('\\', '/') == productionDfc);
    string provenanceFile = Path.Combine(root, ".contrib", "phase-examples", "evolution", "full-source", "sources.json");
    using var provenanceDocument = System.Text.Json.JsonDocument.Parse(File.ReadAllText(provenanceFile));
    var sourceEntries = provenanceDocument.RootElement.GetProperty("sources").EnumerateArray().ToList();
    string provenancePointer = $"/sources/{sourceEntries.FindIndex(entry => entry.GetProperty("case").GetString() == "demon-fall-canyon" && entry.GetProperty("alternative").GetString() == "sod")}/file";
    controls.Files.SelectedItem = dfcFile;
    await Until(() => controls.Detail?.Nodes.Any(n => n.Location.File.Replace('\\', '/') == productionDfc && n.Label.StartsWith("instanceroot(2784)")) == true, "standalone production root file", controls);
    controls.Window.UpdateLayout();
    var instanceRoot = TreeItems(controls.Tree.Items).Single(item => item.Tag is SourceNode node && node.Label.StartsWith("instanceroot(2784)"));
    controls.Tree.SelectedItem = instanceRoot;
    await Until(() => controls.Selected.Text?.StartsWith("instanceroot(2784)") == true, "typed standalone instance selection", controls);
    await Until(() => RelationLocations(controls.Relations).Any(location => location.File.Replace('\\', '/').EndsWith("full-source/sources.json", StringComparison.Ordinal) && location.Pointer == provenancePointer), "production source provenance consumer", controls);
    Check(!Rows(controls.Relations).Any(row => row.StartsWith("Used by (Item occurrence):") || row.StartsWith("Used by (NPC occurrence):")), "Instance root does not claim other numeric ID domains");
    object provenance = controls.Relations.ItemsSource!.Cast<object>().Single(row => RelationLocation(row)?.Pointer == provenancePointer);
    controls.Relations.SelectedItem = provenance;
    await Until(() => controls.Tree.SelectedItem is TreeViewItem { Tag: SourceNode node } && node.Location.Pointer == provenancePointer, "exact provenance entry navigation", controls);
    Console.WriteLine($"PASS actual controls: current BWL route spans {expectedOriginal.Location.Line}/{expectedRework.Location.Line}, typed standalone roots and exact production provenance navigation");
}

static async Task VerifyArbitrarySources()
{
    string temporary = Path.Combine(Path.GetTempPath(), "phase-explorer-ui-" + Guid.NewGuid().ToString("N"));
    Directory.CreateDirectory(temporary);
    try
    {
        File.WriteAllText(Path.Combine(temporary, "custom.lua"), """
inst(1, { progressionKey = "parent", groups = {
    { progressionKey = "child", groups = { i(7001) } },
    -- #if CUSTOM_BRANCH
    { progressionKey = "guarded", groups = { i(7002) } },
    -- #else
    { progressionKey = "alternative", groups = { i(7003) } },
    -- #endif
    { progressionKey = "bad", groups = { i(7004) } },
} })
""");
        File.WriteAllText(Path.Combine(temporary, "timing.json"), """
{"calendars":{"sod":["one","two"]},"rules":{"custom":{"parent":"unknown","child":{"windows":[{"from":"one"}]},"guarded":{"windows":[{"from":"one"}]},"alternative":"disabled"}}}
""");
        File.WriteAllText(Path.Combine(temporary, "records.json"), "{\"items\":[{\"itemID\":25},{\"itemID\":25}],\"providers\":[{\"itemID\":25}],\"quests\":[{\"questID\":25}]}");
        File.WriteAllText(Path.Combine(temporary, "small.lua"), "q(17)\n");
        File.WriteAllText(Path.Combine(temporary, "other.lua"), "q(17)\ni(17)\n-- q(17) is only a comment here\nlocal text = \"q(17)\"\n");
        File.WriteAllText(Path.Combine(temporary, "malformed-profile.json"), "{\"milestones\":{},\"content\":{\"bad\":\"unknown\"}}");
        File.WriteAllText(Path.Combine(temporary, "selection.json"), "{\"sod:main\":{\"slot\":\"custom.lua\"}}");
        using var controls = await Open(temporary);
        await Search(controls, "7001");
        await SelectHit(controls, "custom.lua", 2);
        await ChooseSchedule(controls, "timing.json", "sod", "one");
        await Until(() => Rows(controls.Relations).Any(x => x.StartsWith("Combined AND: unknown")), "parent and child combined state", controls);
        Check(Rows(controls.Relations).Any(x => x.StartsWith("Inherited AND: parent")), "Parent scope must stay inherited");
        Check(Rows(controls.Relations).Any(x => x.Contains("child")), "Child scope must remain visible");
        await Until(() => RelationLocations(controls.Relations).Any(location => location.File == "selection.json" && location.Pointer == "/sod:main/slot"), "declared source consumers", controls);

        await Search(controls, "7002");
        await SelectHit(controls, "custom.lua", 4);
        await Until(() => Rows(controls.Relations).Any(x => x.StartsWith("Combined AND: unresolved")), "guarded source conditions", controls);
        Check(!Rows(controls.Relations).Any(x => x.StartsWith("Inherited AND:") && x.Contains("alternative")), "Mutually exclusive branches must not be combined");

        await Search(controls, "7004");
        await SelectHit(controls, "custom.lua", 8);
        await Until(() => controls.Context.ItemsSource?.Cast<object>().Contains("malformed-profile.json") == true, "malformed profile candidate", controls);
        controls.Context.SelectedItem = "malformed-profile.json";
        await Until(() => controls.Status.Text?.Contains("diagnostic", StringComparison.OrdinalIgnoreCase) == true, "malformed profile diagnostic", controls);

        await Search(controls, "custom.lua");
        await SelectHit(controls, "selection.json", 1);
        await Until(() => controls.Selected.Text?.Contains("slot: custom.lua") == true, "JSON scalar navigation", controls);
        Check(Rows(controls.Relations).Any(x => x.Contains("SelectsSource: custom.lua")), "Selection JSON must link to the selected source");
        Check(controls.Source.SelectionEnd > controls.Source.SelectionStart, "JSON search result must select its scalar value");
        await Search(controls, "q(17)");
        await SelectHit(controls, "small.lua", 1);
        await Until(() => Rows(controls.Relations).Any(x => x.StartsWith("Used by (Quest occurrence):") && x.Contains("other.lua:1:")), "short quest ID typed references", controls);
        Check(!Rows(controls.Relations).Any(x => x.StartsWith("Used by (Item occurrence):")), "A quest ID must not claim an item with the same numeric ID");
        Check(!Rows(controls.Relations).Any(x => x.StartsWith("Used by (") && (x.Contains("other.lua:3:") || x.Contains("other.lua:4:"))), "Comments and incidental strings must not become typed references");
        await Search(controls, "25");
        await SelectHit(controls, "records.json", 1);
        await Until(() => RelationLocations(controls.Relations).Any(location => location.Pointer == "/items/1/itemID"), "same-line JSON item references", controls);
        Check(!RelationLocations(controls.Relations).Any(location => location.Pointer == "/quests/0/questID"), "An item ID must not claim the same quest ID");
        var nextRecord = controls.Relations.ItemsSource!.Cast<object>().Single(row => RelationLocation(row)?.Pointer == "/items/1/itemID");
        controls.Relations.SelectedItem = nextRecord;
        await Until(() => controls.Tree.SelectedItem is TreeViewItem { Tag: SourceNode node } && node.Location.Pointer == "/items/1/itemID", "exact JSON reverse-reference navigation", controls);
        Check(controls.Source.SelectionEnd > controls.Source.SelectionStart, "JSON reverse reference must select source text");
        Console.WriteLine("PASS arbitrary-project controls: additive parent/child timing, guarded alternatives, malformed-context diagnostics, exact JSON value navigation namespace-specific short-ID references, source consumers and same-line JSON pointer navigation");
    }
    finally { Directory.Delete(temporary, true); }
}

static async Task VerifyLargeJsonControls(string root)
{
    using var controls = await Open(root);
    const string suffix = ".contrib/.db/standard/00 - Item DB/itemDB.json";
    int expectedNodes = await Task.Run(() => CountJsonNodes(Path.Combine(root, suffix.Replace('/', Path.DirectorySeparatorChar))));
    object file = controls.Files.ItemsSource!.Cast<object>().Single(item =>
        item.GetType().GetProperty("Path")!.GetValue(item)!.ToString()!.Replace('\\', '/').EndsWith(suffix, StringComparison.Ordinal));
    long before = Process.GetCurrentProcess().WorkingSet64;
    var watch = Stopwatch.StartNew();
    controls.Files.SelectedItem = file;
    await Until(() => controls.Detail?.Nodes.Count == expectedNodes && controls.Status.Text?.Contains(expectedNodes.ToString("N0") + " source occurrences") == true, "real large JSON file controls", controls);
    int materialized = TreeItems(controls.Tree.Items).Count();
    Check((controls.Source.Text?.Length ?? 0) <= 32_000, "Large source files must use a bounded excerpt");
    Check(controls.SourceLabel.Text?.StartsWith("Source excerpt") == true, "The source excerpt must identify its location");
    Check(materialized <= 501, "Opening the real JSON database must not create every TreeViewItem");
    using var process = Process.GetCurrentProcess();
    process.Refresh();
    string peak = process.PeakWorkingSet64 > 0 ? $"{process.PeakWorkingSet64 / 1048576:N0} MiB" : "unavailable on this host";
    Console.WriteLine($"PASS real JSON controls: {expectedNodes:N0} graph nodes; {materialized} materialized tree controls; {controls.Source.Text?.Length:N0} source characters; {watch.Elapsed.TotalSeconds:F2}s; working set {before / 1048576:N0}→{process.WorkingSet64 / 1048576:N0} MiB; peak {peak}");
}

static async Task<Controls> Open(string root)
{
    var controls = new Controls(new MainWindow(root) { Width = 1280, Height = 720 });
    controls.Window.Show();
    await Until(() => Count(controls.Files.ItemsSource) > 0, "folder discovery", controls);
    return controls;
}

static int CountJsonNodes(string file)
{
    // Count properties and array values independently of the source graph parser.
    byte[] bytes = System.Text.Encoding.UTF8.GetBytes(File.ReadAllText(file));
    var reader = new System.Text.Json.Utf8JsonReader(bytes);
    var stack = new Stack<System.Text.Json.JsonTokenType>();
    int nodes = 0;
    while (reader.Read())
    {
        var token = reader.TokenType;
        if (token is System.Text.Json.JsonTokenType.EndArray or System.Text.Json.JsonTokenType.EndObject) { stack.Pop(); continue; }
        if (token == System.Text.Json.JsonTokenType.PropertyName || (stack.TryPeek(out var parent) && parent == System.Text.Json.JsonTokenType.StartArray)) nodes++;
        if (token is System.Text.Json.JsonTokenType.StartArray or System.Text.Json.JsonTokenType.StartObject) stack.Push(token);
    }
    return nodes;
}

static async Task Search(Controls controls, string text, bool verifyInput = false)
{
    controls.Query.Focus();
    controls.Query.SelectAll();
    controls.Window.KeyTextInput(text);
    Check(controls.Query.Text == text, "TextBox input did not reach the query");
    var button = controls.Window.GetVisualDescendants().OfType<Button>().Single(x => Equals(x.Content, "Search"));
    button.RaiseEvent(new RoutedEventArgs(Button.ClickEvent));
    await Until(() => controls.Status.Text?.Contains("matches") == true && Count(controls.Results.ItemsSource) > 0, "search button", controls);
    if (verifyInput) Check(controls.Query.Text == text, "Search must retain the typed query");
}

static async Task SelectHit(Controls controls, string suffix, int line)
{
    object hit = controls.Results.ItemsSource!.Cast<object>().FirstOrDefault(x =>
    {
        var result = (SearchHit)x.GetType().GetProperty("Hit")!.GetValue(x)!;
        return result.Location.File.Replace('\\', '/').EndsWith(suffix, StringComparison.Ordinal) && result.Location.Line == line && result.Location.Length > 0;
    }) ?? throw new Exception($"Search did not include {suffix}:{line}");
    controls.Results.SelectedItem = hit;
    await Until(() => controls.Tree.SelectedItem is TreeViewItem item && item.Tag is SourceNode node &&
        node.Location.File.Replace('\\', '/').EndsWith(suffix, StringComparison.Ordinal) && node.Location.Line == line, "search result navigation", controls);
}

static async Task ChooseSchedule(Controls controls, string suffix, string flavor, string milestone)
{
    await Until(() => controls.Context.ItemsSource?.Cast<object>().Any(x => x.ToString()!.Replace('\\', '/').EndsWith(suffix, StringComparison.Ordinal)) == true, "context candidates", controls);
    controls.Context.SelectedItem = controls.Context.ItemsSource!.Cast<object>().Single(x => x.ToString()!.Replace('\\', '/').EndsWith(suffix, StringComparison.Ordinal));
    await Until(() => controls.Flavor.ItemsSource?.Cast<object>().Contains(flavor) == true, "context flavor choices", controls);
    controls.Flavor.SelectedItem = flavor;
    await Until(() => controls.Milestone.ItemsSource?.Cast<object>().Contains(milestone) == true, "context milestones", controls);
    controls.Milestone.SelectedItem = milestone;
}

static bool AncestorsExpanded(TreeView tree, SourceNode selected)
{
    var items = TreeItems(tree.Items).Where(i => i.Tag is SourceNode).ToList();
    string? parent = selected.ParentId;
    while (parent != null)
    {
        var item = items.Single(i => ((SourceNode)i.Tag!).Id == parent);
        if (!item.IsExpanded) return false;
        parent = ((SourceNode)item.Tag!).ParentId;
    }
    return true;
}

static IEnumerable<TreeViewItem> TreeItems(IEnumerable roots)
{
    foreach (var item in roots.OfType<TreeViewItem>())
    {
        yield return item;
        foreach (var child in TreeItems(item.Items)) yield return child;
    }
}

static SourceLocation? RelationLocation(object row) => row.GetType().GetProperty("Location")?.GetValue(row) as SourceLocation;
static IEnumerable<SourceLocation> RelationLocations(ListBox list) => list.ItemsSource?.Cast<object>().Select(RelationLocation).OfType<SourceLocation>() ?? [];
static int Count(IEnumerable? value) => value?.Cast<object>().Count() ?? 0;
static List<string> Rows(ListBox list) => list.ItemsSource?.Cast<object>().Select(x => x.ToString() ?? "").ToList() ?? [];
static void Check(bool condition, string message) { if (!condition) throw new Exception(message); }
static async Task Until(Func<bool> condition, string name, Controls controls)
{
    var watch = Stopwatch.StartNew();
    while (!condition())
    {
        if (watch.Elapsed > TimeSpan.FromSeconds(60))
        {
            string treeSelection = controls.Tree.SelectedItem is TreeViewItem { Tag: SourceNode node } ? node.Location.ToString() : controls.Tree.SelectedItem?.GetType().Name ?? "none";
            string flagged = string.Join(", ", TreeItems(controls.Tree.Items).Where(item => item.IsSelected).Select(item => (item.Tag as SourceNode)?.Location.ToString() ?? "placeholder"));
            throw new TimeoutException($"{name}: {controls.Status.Text}; tree selection={treeSelection}; selected flags={flagged}; summary={controls.Selected.Text}");
        }
        await Task.Delay(20);
        Dispatcher.UIThread.RunJobs();
    }
}

sealed class Controls(MainWindow window) : IDisposable
{
    public MainWindow Window { get; } = window;
    public ListBox Files { get; } = Field<ListBox>(window, "files");
    public ListBox Results { get; } = Field<ListBox>(window, "results");
    public TextBox Query { get; } = Field<TextBox>(window, "query");
    public TextBlock Status { get; } = Field<TextBlock>(window, "status");
    public TextBox Source { get; } = Field<TextBox>(window, "source");
    public TreeView Tree { get; } = Field<TreeView>(window, "tree");
    public ComboBox Context { get; } = Field<ComboBox>(window, "context");
    public ComboBox Flavor { get; } = Field<ComboBox>(window, "flavor");
    public ComboBox Milestone { get; } = Field<ComboBox>(window, "milestone");
    public ListBox Relations { get; } = Field<ListBox>(window, "relations");
    public TextBlock Selected { get; } = Field<TextBlock>(window, "selected");
    public TextBlock SourceLabel { get; } = Field<TextBlock>(window, "sourceLabel");
    public Detail? Detail => Field<Detail?>(Window, "currentDetail");
    public void Dispose() => Window.Close();
    private static T Field<T>(object value, string name) => (T)value.GetType().GetField(name, BindingFlags.Instance | BindingFlags.NonPublic)!.GetValue(value)!;
}

public sealed class HarnessApplication : Application
{
    public static AppBuilder BuildAvaloniaApp() => AppBuilder.Configure<HarnessApplication>().UseSkia().UseHeadless(new AvaloniaHeadlessPlatformOptions { UseHeadlessDrawing = false });
    public override void Initialize() => Styles.Add(new FluentTheme());
}
