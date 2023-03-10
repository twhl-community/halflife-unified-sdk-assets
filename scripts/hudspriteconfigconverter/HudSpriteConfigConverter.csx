#r "nuget: System.CommandLine, 2.0.0-beta3.22114.1"

#nullable enable

using System.CommandLine;
using System.Runtime.CompilerServices;

var modDirectoryArgument = new Argument<DirectoryInfo>("mod-directory", description: "Location of the Unified SDK mod directory.\n"
+ "Must contain a tools directory containing HalfLife.UnifiedSdk.Hud2Json.dll");

var spritesDirectoryOption = new Option<DirectoryInfo>("--sprites-directory",
	description: "Directory containing hud sprite config files to convert")
{
	IsRequired = true
};

var rootCommand = new RootCommand("Half-Life Unified SDK hud sprite config converter")
{
	modDirectoryArgument,
	spritesDirectoryOption
};

rootCommand.SetHandler((DirectoryInfo modDirectory, DirectoryInfo spritesDirectory) =>
{
	if (!modDirectory.Exists)
	{
		// TODO: use the same error logging as tools
		Console.Error.WriteLine("Mod directory does not exist");
		return;
	}

	var converterTool = Path.Combine(modDirectory.FullName, "tools", "HalfLife.UnifiedSdk.Hud2Json.dll");

	if (!File.Exists(converterTool))
	{
		Console.Error.WriteLine("Converter tool not found");
		return;
	}

	Console.WriteLine("Converting files...");

	foreach (var fileName in Directory.EnumerateFiles(spritesDirectory.FullName, "*.txt"))
	{
		var process = Process.Start("dotnet", new[] { converterTool, fileName });
		process.WaitForExit();
	}

	Console.WriteLine("Done");
}, modDirectoryArgument, spritesDirectoryOption);

return rootCommand.Invoke(Args.ToArray());

public static string GetScriptFolder([CallerFilePath] string? path = null) => Path.GetDirectoryName(path)!;
