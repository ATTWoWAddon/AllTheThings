using Avalonia;
using Avalonia.Controls;
using Avalonia.Controls.Primitives;
using Avalonia.Controls.Templates;
using Avalonia.Layout;
using Avalonia.Media;
using Avalonia.Platform.Storage;
using Avalonia.Threading;
using PhaseExplorer.Core;
using System.Collections.ObjectModel;

namespace PhaseExplorer.App;

public sealed class MainWindow : Window
{
    private ProjectIndex? index;
    private CancellationTokenSource? loadCancel;
    private CancellationTokenSource? searchCancel;
    private CancellationTokenSource? fileCancel;
    private CancellationTokenSource? nodeCancel;
    private Dictionary<string, List<SourceNode>> children = [];
    private Dictionary<string, SourceNode> nodesById = [];
    private readonly TextBlock status = new() { Text = "Open a folder to inspect Lua and JSON files.", TextWrapping = TextWrapping.Wrap };
    private readonly TextBox query = new() { PlaceholderText = "Search file, name, ID, key or phase" };
    private readonly ListBox files = new();
    private readonly ListBox results = new();
    private readonly TreeView tree = new();
    private readonly ListBox relations = new();
    private readonly TextBox source = new() { AcceptsReturn = true, IsReadOnly = true, FontFamily = FontFamily.Parse("monospace"), TextWrapping = TextWrapping.NoWrap };
    private readonly ComboBox context = new() { MinWidth = 180, MaxWidth = 300, PlaceholderText = "Choose schedule / profile" };
    private readonly ComboBox flavor = new() { MinWidth = 130 };
    private readonly ComboBox milestone = new() { MinWidth = 180 };
    private readonly TextBlock selected = new() { Text = "Select a source record", TextWrapping = TextWrapping.Wrap, FontWeight = FontWeight.Bold };
    private string? currentFile;
    private SourceNode? currentNode;
    private Detail? currentDetail;
    private string currentText = "";
    private int[] lineStarts = [0];
    private int sourceStart;
    private int navigationVersion;
    private readonly TextBlock sourceLabel = new() { Text = "Source", FontWeight = FontWeight.Bold, Margin = new Thickness(4), TextWrapping = TextWrapping.Wrap };
    private readonly ObservableCollection<RelationItem> relationRows = [];
    private readonly Dictionary<string, TreeViewItem> treeItems = [];
    private CancellationTokenSource? referenceCancel;
    private string? referenceNodeId;
    private bool updatingSelectors;
    private TabControl? leftTabs;

    /// <summary>Display an indexed path in the file list.</summary>
    /// <param name="Path">Full indexed relative path retained for navigation.</param>
    private record FileItem(string Path) { /** @brief Display a shortened file path. @return The last three components of the indexed path. */ public override string ToString() => ShortPath(Path); }
    /// <summary>Identify the next page of a lazily populated tree branch.</summary>
    /// <param name="Parent">Parent occurrence identity; empty for the root list.</param>
    /// <param name="Offset">Zero-based next child index for the 250-row page.</param>
    private record MoreChildren(string Parent, int Offset);
    /// <summary>Show the last three components of a file path.</summary>
    /// <param name="path">Indexed relative path whose display label or source is requested.</param>
    /// <returns>The last three path components joined with forward slashes.</returns>
    private static string ShortPath(string path)
    {
        string[] parts = path.Split(Path.DirectorySeparatorChar, Path.AltDirectorySeparatorChar);
        return string.Join('/', parts.TakeLast(3));
    }
    /// <summary>Disambiguate schedule names using the shortest unique directory suffix.</summary>
    /// <param name="path">Indexed relative path whose display label or source is requested.</param>
    /// <returns>A filename plus a distinguishing directory suffix, or the original path.</returns>
    private string ContextLabel(string path)
    {
        var candidates = context.ItemsSource?.Cast<string>().ToList() ?? [];
        string[] parts = path.Split(Path.DirectorySeparatorChar, Path.AltDirectorySeparatorChar);
        for (int count = 2; count <= parts.Length; count++)
        {
            string suffix = string.Join(Path.DirectorySeparatorChar, parts.TakeLast(count));
            if (candidates.Count(c => c == suffix || c.EndsWith(Path.DirectorySeparatorChar + suffix, StringComparison.Ordinal)) == 1)
                return $"{parts[^1]} · {string.Join('/', parts.TakeLast(count).SkipLast(1))}";
        }
        return path;
    }
    /// <summary>Display a source search hit with a shortened path and snippet.</summary>
    /// <param name="Hit">Exact search hit, including source location and display snippet.</param>
    private record HitItem(SearchHit Hit)
    {
        /// <summary>Format the source path, line and bounded snippet of a search hit.</summary>
        /// <returns>The label shown for this file, search hit or relation row.</returns>
        public override string ToString()
        {
            string[] parts = Hit.Location.File.Split(Path.DirectorySeparatorChar, Path.AltDirectorySeparatorChar);
            string route = string.Join('/', parts.TakeLast(3).SkipLast(1));
            string snippet = Hit.Text.Length > 140 ? Hit.Text[..140] + "…" : Hit.Text;
            return $"{route} · {parts[^1]}:{Hit.Location.Line}\n{snippet}";
        }
    }
    /// <summary>Display a relation and its optional navigation target.</summary>
    /// <param name="Label">Text displayed in the relationship list.</param>
    /// <param name="Location">Optional target; null rows are informational.</param>
    private record RelationItem(string Label, SourceLocation? Location = null) { /** @brief Display the relation label. @return The informational or navigable relationship label. */ public override string ToString() => Label; }

    /// <summary>Construct the explorer controls and connect navigation, selection and cancellation handlers.</summary>
    /// <param name="root">Initial source directory; null leaves the window waiting for a folder.</param>
    public MainWindow(string? root)
    {
        Title = "ATT Phase Explorer"; Width = 1450; Height = 900; MinWidth = 900; MinHeight = 600;
        var open = new Button { Content = "Open folder" }; open.Click += OpenFolder;
        var refresh = new Button { Content = "Refresh" }; refresh.Click += async (_, _) => { if (index != null) await LoadRoot(index.Root); };
        var search = new Button { Content = "Search" }; search.Click += async (_, _) => await Search();
        query.KeyDown += async (_, e) => { if (e.Key == Avalonia.Input.Key.Enter) await Search(); };
        var top = new Grid { RowDefinitions = new RowDefinitions("Auto,Auto"), Margin = new Thickness(8) };
        var searchRow = new Grid { ColumnDefinitions = new ColumnDefinitions("Auto,Auto,*,Auto"), ColumnSpacing = 8 };
        searchRow.Children.Add(open);
        searchRow.Children.Add(refresh); Grid.SetColumn(refresh, 1);
        searchRow.Children.Add(query); Grid.SetColumn(query, 2);
        searchRow.Children.Add(search); Grid.SetColumn(search, 3);
        top.Children.Add(searchRow);
        var selectors = new Grid { ColumnDefinitions = new ColumnDefinitions("Auto,*,Auto,*,Auto,*"), ColumnSpacing = 8, Margin = new Thickness(0, 8, 0, 0) };
        Control[] selectorControls = [new TextBlock { Text = "Context", VerticalAlignment = VerticalAlignment.Center }, context,
            new TextBlock { Text = "Flavor", VerticalAlignment = VerticalAlignment.Center }, flavor,
            new TextBlock { Text = "Milestone", VerticalAlignment = VerticalAlignment.Center }, milestone];
        for (int i = 0; i < selectorControls.Length; i++) { selectors.Children.Add(selectorControls[i]); Grid.SetColumn(selectorControls[i], i); }
        top.Children.Add(selectors); Grid.SetRow(selectors, 1);
        context.HorizontalAlignment = HorizontalAlignment.Stretch; context.MaxWidth = double.PositiveInfinity;
        context.ItemTemplate = new FuncDataTemplate<string>((path, _) => Label(ContextLabel(path ?? ""), path));
        files.ItemTemplate = new FuncDataTemplate<FileItem>((item, _) => Label(item?.ToString() ?? "", item?.Path));
        results.ItemTemplate = new FuncDataTemplate<HitItem>((item, _) => Label(item?.ToString() ?? "", item?.Hit.Location.ToString()));
        var left = new TabControl { ItemsSource = new[] { new TabItem { Header = "Files", Content = files }, new TabItem { Header = "Search results", Content = results } } }; leftTabs = left;
        var sourcePanel = new Grid { RowDefinitions = new RowDefinitions("Auto,*,Auto,*") };
        sourcePanel.Children.Add(selected); Grid.SetRow(selected, 0);
        relations.ItemsSource = relationRows; sourcePanel.Children.Add(relations); Grid.SetRow(relations, 1);
        sourcePanel.Children.Add(sourceLabel); Grid.SetRow(sourceLabel, 2);
        sourcePanel.Children.Add(source); Grid.SetRow(source, 3);
        var main = new Grid { ColumnDefinitions = new ColumnDefinitions("2*,5,3*,5,4*") };
        main.Children.Add(left); Grid.SetColumn(left, 0); main.Children.Add(tree); Grid.SetColumn(tree, 2); main.Children.Add(sourcePanel); Grid.SetColumn(sourcePanel, 4);
        foreach (int column in new[] { 1, 3 }) { var splitter = new GridSplitter { ResizeDirection = GridResizeDirection.Columns, HorizontalAlignment = HorizontalAlignment.Stretch }; main.Children.Add(splitter); Grid.SetColumn(splitter, column); }
        var outer = new DockPanel(); DockPanel.SetDock(top, Dock.Top); outer.Children.Add(top);
        DockPanel.SetDock(status, Dock.Bottom); status.Margin = new Thickness(8); outer.Children.Add(status); outer.Children.Add(main); Content = outer;
        files.SelectionChanged += async (_, _) => { if (files.SelectedItem is FileItem f) await OpenFile(f.Path); };
        results.SelectionChanged += async (_, _) => { if (results.SelectedItem is HitItem h && await OpenFile(h.Hit.Location.File)) Navigate(h.Hit.Location); };
        tree.SelectionChanged += (_, _) =>
        {
            if (tree.SelectedItem is not TreeViewItem item) return;
            if (item.Tag is SourceNode node) { SelectSource(node.Location); ShowNode(node); }
            else if (item.Tag is MoreChildren more) PopulateChildren(more.Parent, more.Offset);
        };
        relations.SelectionChanged += async (_, _) => { if (relations.SelectedItem is RelationItem row && row.Location != null && await OpenFile(row.Location.File)) Navigate(row.Location); };
        context.SelectionChanged += (_, _) => { if (!updatingSelectors) ShowNode(currentNode); };
        flavor.SelectionChanged += (_, _) => { if (!updatingSelectors) ShowNode(currentNode); };
        milestone.SelectionChanged += (_, _) => { if (!updatingSelectors) ShowNode(currentNode); };
        Closed += (_, _) =>
        {
            loadCancel?.Cancel(); searchCancel?.Cancel(); fileCancel?.Cancel(); nodeCancel?.Cancel(); referenceCancel?.Cancel();
        };
        if (root != null) Opened += async (_, _) => await LoadRoot(root);
    }

    /// <summary>Prompt for a local folder and load it when selected.</summary>
    /// <param name="sender">Folder-picker button event sender.</param>
    /// <param name="e">Folder-picker click event.</param>
    private async void OpenFolder(object? sender, Avalonia.Interactivity.RoutedEventArgs e)
    {
        var picked = await StorageProvider.OpenFolderPickerAsync(new FolderPickerOpenOptions { Title = "Open source folder", AllowMultiple = false });
        if (picked.Count > 0 && picked[0].TryGetLocalPath() is string path) await LoadRoot(path);
    }
    /// <summary>Cancel prior work and asynchronously replace the current index and views.</summary>
    /// <param name="root">Directory to scan and install as the new read-only project index.</param>
    /// <returns>A task completing after the replacement index and views are installed or a diagnostic is shown.</returns>
    private async Task LoadRoot(string root)
    {
        loadCancel?.Cancel(); searchCancel?.Cancel(); referenceCancel?.Cancel(); fileCancel?.Cancel(); nodeCancel?.Cancel(); loadCancel = new(); var token = loadCancel.Token;
        status.Text = "Scanning " + root;
        try
        {
            var progress = new Progress<int>(n => status.Text = $"Scanning {root}: {n:N0} files");
            var loaded = await ProjectIndex.LoadAsync(root, progress, token);
            if (token.IsCancellationRequested) return;
            referenceCancel?.Cancel(); referenceNodeId = null;
            index = loaded; files.ItemsSource = loaded.Files.Select(x => new FileItem(x.RelativePath)).ToList();
            results.ItemsSource = null; tree.Items.Clear(); relationRows.Clear(); source.Text = ""; currentFile = null; currentNode = null; currentDetail = null;
            context.ItemsSource = null; flavor.ItemsSource = null; milestone.ItemsSource = null;
            foreach (var diagnostic in loaded.Diagnostics) relationRows.Add(new("Scan diagnostic: " + diagnostic));
            status.Text = $"{loaded.Root} — {loaded.Files.Count:N0} Lua/JSON files; {loaded.Diagnostics.Count} scan errors. Excludes .git, .worktrees, build caches and symbolic links.";
        }
        catch (OperationCanceledException) { }
        catch (Exception ex) { status.Text = "Scan failed: " + ex.Message; }
    }
    /// <summary>Search the current index and display bounded results and read diagnostics.</summary>
    /// <returns>A task completing after bounded search results or a failure diagnostic are displayed.</returns>
    private async Task Search()
    {
        if (index == null || string.IsNullOrWhiteSpace(query.Text)) return;
        searchCancel?.Cancel(); searchCancel = new(); var token = searchCancel.Token;
        status.Text = "Searching…";
        try
        {
            var hits = await index.SearchAsync(query.Text, cancellation: token);
            if (token.IsCancellationRequested) return; results.ItemsSource = hits.Select(x => new HitItem(x)).ToList();
            if (leftTabs != null) leftTabs.SelectedIndex = 1;
            status.Text = $"{index.Root} — {hits.Count} matches shown (maximum 500); {index.OperationDiagnostics.Count} read diagnostics.";
            foreach (var diagnostic in index.OperationDiagnostics) relationRows.Add(new("Read diagnostic: " + diagnostic));
        }
        catch (OperationCanceledException) { }
        catch (Exception ex) { status.Text = "Search failed: " + ex.Message; }
    }
    /// <summary>Create a wrapped, truncated list label with its full tooltip.</summary>
    /// <param name="text">Display label shown in a list row.</param>
    /// <param name="tooltip">Full text available on hover, or null for no tooltip.</param>
    /// <returns>A three-line wrapped label with an optional full tooltip.</returns>
    private static TextBlock Label(string text, string? tooltip)
    {
        var label = new TextBlock { Text = text, TextTrimming = TextTrimming.CharacterEllipsis, TextWrapping = TextWrapping.Wrap, MaxLines = 3 };
        ToolTip.SetTip(label, tooltip);
        return label;
    }

    /// <summary>Load source detail off the UI thread and discard results superseded by a newer selection.</summary>
    /// <param name="path">Indexed relative path whose display label or source is requested.</param>
    /// <returns>True if the requested file is current; false for missing index, cancellation, supersession or failure.</returns>
    private async Task<bool> OpenFile(string path)
    {
        if (index == null) return false;
        if (currentFile == path && currentDetail != null) return true;
        fileCancel?.Cancel(); nodeCancel?.Cancel(); referenceCancel?.Cancel();
        fileCancel = new(); var cancellation = fileCancel.Token;
        var selectedIndex = index;
        status.Text = "Reading " + path + "…";
        currentDetail = null; currentNode = null; currentFile = null; currentText = ""; source.Text = "";
        tree.Items.Clear(); treeItems.Clear(); children.Clear(); nodesById.Clear(); relationRows.Clear();
        try
        {
            var loaded = await Task.Run(() =>
            {
                var detail = selectedIndex.GetDetail(path, cancellation);
                string text = selectedIndex.ReadFile(path);
                List<int> starts = [0];
                for (int i = 0; i < text.Length; i++) if (text[i] == '\n') starts.Add(i + 1);
                Dictionary<string, SourceNode> byId = [];
                Dictionary<string, List<SourceNode>> byParent = [];
                foreach (var node in detail.Nodes)
                {
                    cancellation.ThrowIfCancellationRequested();
                    byId[node.Id] = node;
                    string parent = node.ParentId ?? "";
                    if (!byParent.TryGetValue(parent, out var list)) byParent[parent] = list = [];
                    list.Add(node);
                }
                return (Detail: detail, Text: text, Lines: starts.ToArray(), ById: byId, Children: byParent);
            }, cancellation);
            if (cancellation.IsCancellationRequested || index != selectedIndex) return false;
            currentFile = path; currentDetail = loaded.Detail; currentNode = null; currentText = loaded.Text; lineStarts = loaded.Lines;
            SelectSource(new(path, 1, 1, 0, 0));
            selected.Text = "Select a source record"; relationRows.Clear(); tree.Items.Clear(); treeItems.Clear(); children.Clear(); nodesById.Clear();
            nodesById = loaded.ById; children = loaded.Children;
            PopulateChildren("");
            foreach (var diagnostic in currentDetail.Diagnostics) tree.Items.Add(new TreeViewItem { Header = "Parse diagnostic: " + diagnostic });
            status.Text = $"{index.Root} — {path}; {currentDetail.Nodes.Count:N0} source occurrences. Expand or search to navigate; large branches load 250 rows at a time.";
            ShowNode(new(path + ":file", "file: " + path, new(path, 1, 1, 0, 0), currentText.Length, "", [], null));
            return true;
        }
        catch (OperationCanceledException) { return false; }
        catch (Exception ex) { status.Text = "Cannot open " + path + ": " + ex.Message; return false; }
    }

    /// <summary>Create or reuse a source occurrence row and defer loading its children until expanded.</summary>
    /// <param name="node">Exact source occurrence whose tree row is created or reused.</param>
    /// <returns>The cached or newly created tree row for this exact occurrence.</returns>
    private TreeViewItem Materialize(SourceNode node)
    {
        if (treeItems.TryGetValue(node.Id, out var existing)) return existing;
        var item = new TreeViewItem { Header = $"{node.Label}  [{node.Location.Line}]", Tag = node };
        ToolTip.SetTip(item, node.Location.ToString());
        treeItems[node.Id] = item;
        if (children.ContainsKey(node.Id))
        {
            item.Items.Add(new TreeViewItem { Header = "Expand to load children" });
            item.PropertyChanged += (_, e) =>
            {
                if (e.Property == TreeViewItem.IsExpandedProperty && item.IsExpanded && item.Items.Count == 1 && item.Items[0] is TreeViewItem { Tag: null })
                { item.Items.Clear(); PopulateChildren(node.Id); }
            };
        }
        return item;
    }

    /// <summary>Append one page of up to 250 child occurrences and a continuation row when needed.</summary>
    /// <param name="parent">Parent occurrence identity; an empty string selects root rows.</param>
    /// <param name="offset">Zero-based child-list index where the next 250-row page begins.</param>
    private void PopulateChildren(string parent, int offset = 0)
    {
        if (!children.TryGetValue(parent, out var list)) return;
        var items = parent.Length == 0 ? tree.Items : treeItems[parent].Items;
        var more = items.OfType<TreeViewItem>().FirstOrDefault(i => i.Tag is MoreChildren);
        if (more != null) items.Remove(more);
        foreach (var node in list.Skip(offset).Take(250))
        {
            var item = Materialize(node);
            if (!items.Contains(item)) items.Add(item);
        }
        if (offset + 250 < list.Count) items.Add(new TreeViewItem { Header = $"Load next 250 ({list.Count - offset - 250:N0} remaining)…", Tag = new MoreChildren(parent, offset + 250) });
    }

    /// <summary>Materialize and expand the ancestor chain for a source occurrence.</summary>
    /// <param name="node">Exact occurrence whose parent chain must be visible.</param>
    /// <returns>The requested row, attached beneath its expanded ancestor chain.</returns>
    private TreeViewItem Reveal(SourceNode node)
    {
        var item = Materialize(node);
        var items = tree.Items;
        if (node.ParentId != null && nodesById.TryGetValue(node.ParentId, out var parent))
        {
            var parentItem = Reveal(parent);
            parentItem.IsExpanded = true;
            items = parentItem.Items;
        }
        if (!items.Contains(item)) items.Add(item);
        return item;
    }

    /// <summary>Display and select a source location, using an excerpt for large files.</summary>
    /// <param name="location">Location in the currently loaded file to reveal and select.</param>
    /// <returns>The absolute character position selected in the complete source text.</returns>
    private int SelectSource(SourceLocation location)
    {
        int line = Math.Clamp(location.Line - 1, 0, lineStarts.Length - 1);
        int position = Math.Min(currentText.Length, lineStarts[line] + Math.Max(0, location.Column - 1));
        if (currentText.Length > 256 * 1024)
        {
            sourceStart = Math.Max(0, position - 8000);
            int end = Math.Min(currentText.Length, sourceStart + 32000);
            source.Text = currentText[sourceStart..end];
            sourceLabel.Text = $"Source excerpt — {location.File}:{location.Line}:{location.Column} (characters {sourceStart + 1:N0}–{end:N0} of {currentText.Length:N0})";
        }
        else
        {
            sourceStart = 0;
            if (source.Text != currentText) source.Text = currentText;
            sourceLabel.Text = $"Source — {location.File}:{location.Line}:{location.Column}";
        }
        int local = position - sourceStart;
        source.Focus(); source.CaretIndex = local; source.SelectionStart = local;
        source.SelectionEnd = Math.Min(source.Text?.Length ?? 0, local + Math.Max(1, location.Length));
        return position;
    }

    /// <summary>Reveal the containing occurrence and select its source after lazy tree layout completes.</summary>
    /// <param name="location">Location in the currently loaded file to reveal and select.</param>
    private void Navigate(SourceLocation location)
    {
        int position = SelectSource(location);
        if (currentDetail == null) return;
        var node = currentDetail.Nodes.Where(n => n.Location.Offset <= position && n.EndOffset >= position).MaxBy(n => n.Location.Offset);
        if (node == null) return;
        var target = Reveal(node);
        var detail = currentDetail;
        int version = ++navigationVersion;
        // Containers created by expanding lazy ancestors must finish layout before
        // selection; attaching a TreeViewItem can otherwise reset its selection.
        UpdateLayout();
        Dispatcher.UIThread.Post(() =>
        {
            if (version != navigationVersion || currentDetail != detail || currentFile != location.File) return;
            UpdateLayout();
            tree.SelectedItem = target;
            target.IsSelected = true;
            target.BringIntoView();
            ShowNode(node);
            SelectSource(location);
        }, DispatcherPriority.Loaded);
    }

    /// <summary>Inspect a selected occurrence and report asynchronous inspection errors.</summary>
    /// <param name="node">Selected source occurrence; null leaves the current display unchanged.</param>
    private async void ShowNode(SourceNode? node)
    {
        try { await ShowNodeCore(node); }
        catch (OperationCanceledException) { }
        catch (Exception error)
        {
            status.Text = "Cannot inspect source: " + error.Message;
            relationRows.Add(new("Inspection diagnostic: " + error.Message));
        }
    }

    /// <summary>Show phase bindings, context candidates and relationships for the current occurrence; combine inherited bindings as AND.</summary>
    /// <remarks>Timing remains unresolved for guarded or legacy bindings. Separate source occurrences keep separate routes; the display does not decide character eligibility or merge routes by game ID.</remarks>
    /// <param name="node">Selected source occurrence; null leaves the current display unchanged.</param>
    /// <returns>A task completing after selected-context timing and relationship rows are refreshed.</returns>
    private async Task ShowNodeCore(SourceNode? node)
    {
        if (index == null || node == null || currentDetail == null) return;
        currentNode = node;
        nodeCancel?.Cancel(); nodeCancel = new(); var cancellation = nodeCancel.Token;
        referenceCancel?.Cancel();
        var selectedIndex = index;
        var bindings = node.Bindings.ToList();
        if (node.Location.Pointer is string pointer)
        {
            string[] parts = pointer.Split('/');
            if ((parts.Length == 3 && parts[1] == "content") || (parts.Length == 4 && parts[1] is "rules" or "fullSourceRules"))
            {
                string key = parts[^1].Replace("~1", "/").Replace("~0", "~");
                bindings.Add(new(key, node.Location, "", true));
            }
        }
        List<PolicyCandidate> candidates;
        IReadOnlyList<Relation> outgoing, selections;
        IReadOnlyList<SourceContext> sourceContexts;
        try
        {
            var data = await Task.Run(() =>
            {
                var policies = bindings.Where(b => !b.Key.StartsWith("legacy:", StringComparison.Ordinal)).SelectMany(b => selectedIndex.PoliciesFor(b.Key, node.Location.File)).ToList();
                return (Policies: policies, Outgoing: Relations.Outgoing(selectedIndex, node), Selections: Relations.Selections(selectedIndex, node.Location.File), Contexts: Relations.Contexts(selectedIndex, node.Location.File));
            }, cancellation);
            if (cancellation.IsCancellationRequested || currentNode?.Id != node.Id || index != selectedIndex) return;
            candidates = data.Policies; outgoing = data.Outgoing; selections = data.Selections; sourceContexts = data.Contexts;
        }
        catch (OperationCanceledException) { return; }
        catch (Exception error) { status.Text = "Cannot inspect source: " + error.Message; return; }
        var contexts = candidates.Select(c => c.File).Distinct().ToList();
        updatingSelectors = true;
        try
        {
            string? previousContext = context.SelectedItem?.ToString();
            context.ItemsSource = contexts;
            context.SelectedItem = previousContext != null && contexts.Contains(previousContext) ? previousContext : contexts.Contains(node.Location.File) ? node.Location.File : contexts.Count == 1 ? contexts[0] : null;
            string? selectedContext = context.SelectedItem?.ToString();
            var selectedCandidate = candidates.FirstOrDefault(c => c.File == selectedContext);
            if (selectedCandidate != null)
            {
                string json = index.ScheduleText(selectedCandidate);
                using var doc = System.Text.Json.JsonDocument.Parse(json);
                var names = doc.RootElement.GetProperty("calendars").EnumerateObject().Select(x => x.Name).ToList();
                if (selectedCandidate.Format == "schedule") names.Add("retail");
                string? oldFlavor = flavor.SelectedItem?.ToString(); flavor.ItemsSource = names;
                flavor.SelectedItem = oldFlavor != null && names.Contains(oldFlavor) ? oldFlavor : names.Count == 1 ? names[0] : null;
                string currentFlavor = flavor.SelectedItem?.ToString() ?? "";
                string? oldMilestone = milestone.SelectedItem?.ToString();
                var steps = currentFlavor.Length == 0 || currentFlavor == "retail" ? new List<string>() : Schedule.Milestones(json, currentFlavor).ToList();
                milestone.ItemsSource = steps; milestone.SelectedItem = oldMilestone != null && steps.Contains(oldMilestone) ? oldMilestone : null;
            }
            else { flavor.ItemsSource = null; milestone.ItemsSource = null; }
        }
        catch (Exception ex) when (ex is System.Text.Json.JsonException or InvalidOperationException or KeyNotFoundException or IOException or FormatException or ArgumentException)
        { status.Text = "Cannot read selected context: " + ex.Message; }
        finally { updatingSelectors = false; }
        selected.Text = $"{node.Label}\n{node.Location}" + (node.Condition.Length > 0 ? $"\n{node.Condition}" : "");
        relationRows.Clear();
        foreach (var edge in outgoing) relationRows.Add(new($"{edge.Kind}: {edge.Label}", edge.Location));
        var byId = nodesById; var ancestors = new List<SourceNode>(); string? p = node.ParentId;
        while (p != null && byId.TryGetValue(p, out var parent)) { ancestors.Add(parent); p = parent.ParentId; }
        
        List<string> states = []; bool ambiguous = bindings.Any(b => b.Condition.Length > 0);
        string? chosenContext = context.SelectedItem?.ToString();
        string? chosenFlavor = flavor.SelectedItem?.ToString();
        var chosenCandidate = candidates.FirstOrDefault(c => c.File == chosenContext);
        if (contexts.Count > 1 && chosenContext == null) relationRows.Add(new("Choose a context to resolve timing; candidates are listed separately."));
        else if (chosenCandidate != null && chosenFlavor == null) relationRows.Add(new("Choose a flavor to resolve timing."));
        foreach (var binding in bindings.DistinctBy(x => (x.Key, x.Condition)))
        {
            relationRows.Add(new((binding.Condition.Length > 0 ? "Guarded binding: " : binding.Authored ? "Authored: " : "Inherited AND: ") + binding.Key + (binding.Condition.Length > 0 ? " [" + binding.Condition + "]" : ""), binding.Location));
            if (binding.Key.StartsWith("legacy:", StringComparison.Ordinal)) { ambiguous = true; continue; }
            var policies = candidates.Where(p => p.Key == binding.Key).ToList();
            if (policies.Count == 0) relationRows.Add(new("  No matching policy found"));
            if (chosenContext == null && policies.Count > 0) relationRows.Add(new($"  {policies.Select(p => p.File).Distinct().Count()} context candidates; choose Context above."));
            if (chosenCandidate == null || chosenFlavor == null) { ambiguous = true; continue; }
            var selectedPolicy = policies.FirstOrDefault(p => p.File == chosenContext);
            var result = Schedule.Resolve(index.ScheduleText(chosenCandidate), binding.Key, chosenFlavor, milestone.SelectedItem?.ToString());
            relationRows.Add(new($"  {result.Flavor}: {result.State} {result.Description}" + (result.AliasPath.Count > 0 ? " → " + string.Join(" → ", result.AliasPath) : "") + (result.Diagnostic != null ? " (" + result.Diagnostic + ")" : ""), selectedPolicy?.Location ?? chosenCandidate.Location));
            states.Add(result.State);
            foreach (var alias in result.AliasPath)
                foreach (var target in index.PoliciesFor(alias, node.Location.File).Where(p => p.File == chosenContext))
                    relationRows.Add(new("  Timing alias → " + alias, target.Location));
        }
        if (states.Count > 0)
        {
            string[] priority = ["error", "missing", "disabled", "unknown", "future", "removed", "scheduled", "active", "ordinary"];
            string state = priority.FirstOrDefault(states.Contains) ?? "unresolved";
            relationRows.Insert(0, new(ambiguous ? "Combined AND: unresolved (guarded or legacy rules)" : "Combined AND: " + state + " (subject to source guards)"));
        }
        foreach (var context in sourceContexts) relationRows.Add(new($"Stage: {context.Stage} ({context.Authority})", context.Location));
        foreach (var selection in selections) relationRows.Add(new(selection.Label, selection.Location));
        foreach (var parent in ancestors.AsEnumerable().Reverse()) relationRows.Add(new("Parent: " + parent.Label, parent.Location));
        foreach (var child in currentDetail.Nodes.Where(n => n.ParentId == node.Id).Take(100)) relationRows.Add(new("Child: " + child.Label, child.Location));
        if (bindings.Count == 0) relationRows.Add(new("No directly identified progression key on this source occurrence."));
        foreach (var diagnostic in index.OperationDiagnostics) relationRows.Add(new("Read diagnostic: " + diagnostic));
        referenceNodeId = node.Id; _ = FindReferences(node, bindings);
    }
    /// <summary>Find source consumers and typed references without applying results to a superseded selection.</summary>
    /// <param name="node">Non-null selected occurrence whose source file and ID or key determine reverse references.</param>
    /// <param name="bindings">Authored and inherited keys used when selecting a reference-search symbol.</param>
    /// <returns>A task completing after relevant consumers and typed references are appended, unless superseded.</returns>
    private async Task FindReferences(SourceNode node, IReadOnlyList<Binding> bindings)
    {
        referenceCancel?.Cancel(); referenceCancel = new(); var cancellation = referenceCancel.Token;
        var identity = RecordKinds.Identity(node.Label);
        string? domain = identity?.Domain;
        string? term = identity?.Symbol ?? bindings.FirstOrDefault(b => b.Authored)?.Key;
        if (term?.StartsWith("legacy:", StringComparison.Ordinal) == true) term = term[7..];
        if (term == null)
        {
            var match = System.Text.RegularExpressions.Regex.Match(node.Label, @"^[A-Za-z_][A-Za-z_0-9]*\(([^,)]+)");
            if (match.Success)
            {
                string argument = match.Groups[1].Value.Trim();
                // Unknown helper calls do not supply a record namespace for numeric IDs.
                if (!long.TryParse(argument, out _)) term = argument;
            }
            else
            {
                var record = System.Text.RegularExpressions.Regex.Match(node.Label, @"[A-Za-z_][A-Za-z_0-9]*ID=(\d+)");
                if (record.Success) term = record.Groups[1].Value;
                else
                {
                    var definition = System.Text.RegularExpressions.Regex.Match(node.Label, @"^definition ([A-Za-z_][A-Za-z_0-9]*)");
                    if (definition.Success) term = definition.Groups[1].Value;
                }
            }
        }
        if (index == null) return;
        if (!string.IsNullOrWhiteSpace(term)) relationRows.Add(new("Used by: searching for " + term + "…"));
        try
        {
            var consumers = await index.FindSourceReferencesAsync(node.Location.File, cancellation);
            if (cancellation.IsCancellationRequested || currentNode?.Id != node.Id) return;
            foreach (var consumer in consumers) relationRows.Add(new($"Source consumer: {consumer.Location}", consumer.Location));
            if (string.IsNullOrWhiteSpace(term)) return;
            foreach (string legacy in bindings.Where(b => b.Key.StartsWith("legacy:", StringComparison.Ordinal)).Select(b => b.Key[7..]).Distinct())
            {
                var definitions = await index.FindDefinitionsAsync(legacy, cancellation);
                if (cancellation.IsCancellationRequested || currentNode?.Id != node.Id) return;
                foreach (var definition in definitions) relationRows.Add(new($"Definition: {definition.Location}  {definition.Text}", definition.Location));
            }
            var hits = await index.FindTypedReferencesAsync(term, cancellation, domain);
            if (cancellation.IsCancellationRequested || currentNode?.Id != node.Id) return;
            var pending = relationRows.FirstOrDefault(row => row.Label == "Used by: searching for " + term + "…");
            if (pending != null) relationRows.Remove(pending);
            relationRows.Add(new($"Used by: {hits.Count} typed references (maximum 250 shown)"));
            foreach (var hit in hits.Take(250))
                relationRows.Add(new($"Used by ({hit.Kind}): {hit.Location}  {hit.Label}", hit.Location));
        }
        catch (OperationCanceledException) { }
        catch (IOException ex) { relationRows.Add(new("Reference search failed: " + ex.Message)); }
    }
}
