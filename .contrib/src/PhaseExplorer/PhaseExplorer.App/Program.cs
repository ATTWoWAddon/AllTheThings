using Avalonia;
using Avalonia.Controls;
using Avalonia.Controls.ApplicationLifetimes;
using Avalonia.Themes.Fluent;

namespace PhaseExplorer.App;

internal static class Program
{
    public static string? InitialRoot { get; private set; }
    /// <summary>Start the desktop explorer with the optional initial source directory.</summary>
    /// <param name="args">Desktop arguments; --root followed by a directory selects the initial project.</param>
    [STAThread]
    public static void Main(string[] args)
    {
        for (int i = 0; i + 1 < args.Length; i++) if (args[i] == "--root") InitialRoot = args[++i];
        BuildAvaloniaApp().StartWithClassicDesktopLifetime(args);
    }
    /// <summary>Configure the Avalonia application for the current platform.</summary>
    /// <returns>Platform-detected Avalonia application builder.</returns>
    public static AppBuilder BuildAvaloniaApp() => AppBuilder.Configure<App>().UsePlatformDetect();
}

public sealed class App : Application
{
    /// <summary>Install the Fluent theme for the application.</summary>
    public override void Initialize() => Styles.Add(new FluentTheme());
    /// <summary>Open the main window after the desktop lifetime is initialized.</summary>
    public override void OnFrameworkInitializationCompleted()
    {
        if (ApplicationLifetime is IClassicDesktopStyleApplicationLifetime desktop)
            desktop.MainWindow = new MainWindow(Program.InitialRoot);
        base.OnFrameworkInitializationCompleted();
    }
}
