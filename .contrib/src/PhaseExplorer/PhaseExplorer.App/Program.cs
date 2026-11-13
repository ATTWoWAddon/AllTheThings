using Avalonia;
using Avalonia.Controls;
using Avalonia.Controls.ApplicationLifetimes;
using Avalonia.Themes.Fluent;

namespace PhaseExplorer.App;

internal static class Program
{
    public static string? InitialRoot { get; private set; }
    [STAThread]
    public static void Main(string[] args)
    {
        for (int i = 0; i + 1 < args.Length; i++) if (args[i] == "--root") InitialRoot = args[++i];
        BuildAvaloniaApp().StartWithClassicDesktopLifetime(args);
    }
    public static AppBuilder BuildAvaloniaApp() => AppBuilder.Configure<App>().UsePlatformDetect();
}

public sealed class App : Application
{
    public override void Initialize() => Styles.Add(new FluentTheme());
    public override void OnFrameworkInitializationCompleted()
    {
        if (ApplicationLifetime is IClassicDesktopStyleApplicationLifetime desktop)
            desktop.MainWindow = new MainWindow(Program.InitialRoot);
        base.OnFrameworkInitializationCompleted();
    }
}
