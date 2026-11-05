using System;
using System.Collections.Generic;
using System.Globalization;
using System.IO;
using System.Linq;
using System.Security.Cryptography;
using System.Text.RegularExpressions;

namespace ATT
{
    /// <summary>
    /// Validates the deliberately isolated Titan inputs before the Parser loads any raw data.
    /// A bootstrap build uses authored shared/standard sources; it never imports Wrath snapshots.
    /// </summary>
    internal static class TitanProfile
    {
        private static CustomConfiguration _manifest;
        private static bool _hasItemDB;

        internal static void Validate(CustomConfiguration config)
        {
            _manifest = null;
            _hasItemDB = false;
            var tags = Framework.PreProcessorTags;
            if (!tags.Contains("TITAN_REFORGED")) return;

            Require((string)config["DatabaseProfile"] == "Titan", "DatabaseProfile must be Titan.");
            Require((string)config["DataPhase"] == "WRATH", "DataPhase must retain the WRATH compatibility base.");
            Require((string)config["db-relative"] == "Titan/", "Titan output must use db/Titan/.");
            Require(!tags.Contains("WRATH_CLASSIC_ITEMDB"), "The ordinary Wrath ItemDB must not load in Titan.");
            Require(!tags.Contains("NAXX_10MAN_DROPS_25MAN_LOOT"), "The ordinary Wrath Naxxramas exception is not Titan-verified.");
            Require(((string[])config["json-directories"]).Length == 0, "Titan JSON imports are not configured.");
            Require(!string.IsNullOrWhiteSpace(config["DataRequirements"])
                && !string.IsNullOrWhiteSpace(config["ReferenceDataRequirements"]), "Titan data and reference guards are required.");

            var addonRoot = Path.GetFullPath(config["root-addon"] ?? "../..");
            var snapshotDirectory = Path.Combine(addonRoot, ".contrib/.db/standard/.config/.wago/Titan Reforged");
            var directories = (string[])config["wago-directories"];
            Require(directories.Length == 1 && SamePath(directories[0], snapshotDirectory),
                "Titan must select only its dedicated Wago directory.");
            Require(Directory.Exists(snapshotDirectory), "The dedicated Titan Wago directory is missing.");

            string manifestPath = config["TitanSnapshotManifest"];
            Require(!string.IsNullOrWhiteSpace(manifestPath) && File.Exists(manifestPath), "TitanSnapshotManifest is required.");
            _manifest = new CustomConfiguration(manifestPath);
            Require((int)_manifest["schema"] == 1 && (string)_manifest["profile"] == "Titan"
                && (string)_manifest["product"] == "wow_classic_titan" && (string)_manifest["region"] == "cn",
                "The snapshot manifest must identify schema 1, Titan, wow_classic_titan, and cn.");
            var build = string.Join(".", (int[])config["DataPatch"]);
            Require((string)_manifest["build"] == build, "Manifest build differs from DataPatch.");
            Require((int)_manifest["interface"] >= 38000 && (int)_manifest["interface"] < 39000,
                "The candidate Titan interface must be in the documented 3.80.x family.");
            Require((string)_manifest["verificationStatus"] == "provisional", "Initial Titan sources must remain explicitly provisional.");
            Require(_manifest["inputs"].IsArray, "Manifest inputs must be an array, including an empty bootstrap array.");
            var expectedWago = new HashSet<string>(StringComparer.OrdinalIgnoreCase);
            var expectedRaw = new HashSet<string>(StringComparer.OrdinalIgnoreCase);
            var seen = new HashSet<string>(StringComparer.OrdinalIgnoreCase);
            foreach (var input in _manifest["inputs"])
            {
                string relative = input["path"];
                Require(!string.IsNullOrWhiteSpace(relative) && !Path.IsPathRooted(relative), "Input paths must be repository-relative.");
                var path = Path.GetFullPath(Path.Combine(addonRoot, relative));
                Require(seen.Add(path), "Duplicate manifest input: " + relative);
                Require((string)input["build"] == build && (string)input["region"] == "cn", "Input build/region differs from the Titan profile: " + relative);
                Require(!string.IsNullOrWhiteSpace(input["locale"]), "Input locale is required: " + relative);
                Require((string)input["verificationStatus"] == "unverified", "Initial imported inputs must be marked unverified: " + relative);
                Require(Uri.TryCreate(input["url"], UriKind.Absolute, out Uri source) && source.Scheme == "https", "Input HTTPS provenance URL is required: " + relative);
                Require(DateTimeOffset.TryParse(input["acquiredUTC"], CultureInfo.InvariantCulture, DateTimeStyles.AssumeUniversal, out _), "Input acquisition time is required: " + relative);
                CheckHash(path, input["sha256"]);
                switch ((string)input["kind"])
                {
                    case "wago":
                        Require(SamePath(Path.GetDirectoryName(path), snapshotDirectory), "Wago input is outside the isolated Titan snapshot directory.");
                        string table = input["table"];
                        string locale = input["locale"];
                        var locales = new[] { "enUS", "deDE", "esES", "esMX", "frFR", "itIT", "koKR", "ptBR", "ruRU", "zhCN", "zhTW" };
                        Require(locales.Contains(locale) && Regex.IsMatch(table ?? "", "^[A-Za-z]+$"), "Wago table/locale metadata is invalid.");
                        string expectedName = table + (locale == "enUS" ? "" : "." + locale) + "." + build + ".csv";
                        Require(Path.GetFileName(path) == expectedName, "Wago filename must agree with its recorded table, locale, and exact build.");
                        var lines = File.ReadLines(path).Take(2).ToArray();
                        Require(lines.Length == 2 && lines[0].TrimStart('\uFEFF').Split(',').Any(h => h.Trim('"') == "ID")
                            && !string.IsNullOrWhiteSpace(lines[1]), "Wago input is not a nonempty DB2 CSV: " + relative);
                        expectedWago.Add(path);
                        break;
                    case "itemdb":
                        var rawDirectory = Path.Combine(addonRoot, ".contrib/.raw/ItemDB");
                        Require(SamePath(path, Path.Combine(rawDirectory, build + " Titan Reforged - ItemDB.lua")), "Titan ItemDB must use its distinct build-pinned raw filename.");
                        Require(File.ReadLines(path).Take(5).Any(l => Regex.IsMatch(l, "^DBFileName\\s*=\\s*\"03 - Titan Reforged\"\\s*;?\\s*$")), "Titan ItemDB requires its distinct generated filename.");
                        Require(File.ReadLines(path).Take(5).Any(l => Regex.IsMatch(l, "^DBContext\\s*=\\s*\"TITAN_REFORGED\"\\s*;?\\s*$")), "Titan raw ItemDB requires its own DBContext.");
                        var generated = Path.Combine(addonRoot, ".contrib/.db/standard/00 - Item DB/.dynamic/03 - Titan Reforged.lua");
                        CheckHash(generated, input["generatedSha256"]);
                        Require(File.ReadLines(generated).First().TrimStart('\uFEFF').Trim() == "-- #if TITAN_REFORGED", "Regenerate Titan ItemDB with the Consolidator.");
                        expectedRaw.Add(path);
                        _hasItemDB = true;
                        break;
                    default:
                        throw new FormatException("Titan input kind is unsupported: " + (string)input["kind"]);
                }
            }
            Require(expectedWago.SetEquals(Directory.GetFiles(snapshotDirectory, "*.csv", SearchOption.AllDirectories).Select(Path.GetFullPath)),
                "Titan Wago directory contains unlisted inputs; update the manifest before building.");
            var rawInputs = Directory.GetFiles(Path.Combine(addonRoot, ".contrib/.raw/ItemDB"), "*.lua")
                .Where(p => File.ReadLines(p).Take(5).Any(l => Regex.IsMatch(l, "^DBContext\\s*=\\s*\"TITAN_REFORGED\"\\s*;?\\s*$")))
                .Select(Path.GetFullPath);
            Require(expectedRaw.SetEquals(rawInputs), "Titan raw ItemDB contains unlisted inputs.");
            var titanDynamic = Path.Combine(addonRoot, ".contrib/.db/standard/00 - Item DB/.dynamic/03 - Titan Reforged.lua");
            Require(_hasItemDB || !File.Exists(titanDynamic), "A Titan ItemDB output exists without a recorded raw snapshot.");
            string status = _manifest["inputStatus"];
            Require(status == "bootstrap" || status == "candidate", "Input status must be bootstrap or candidate.");
            Require(status != "bootstrap" || seen.Count == 0, "Bootstrap must not silently contain imported snapshots.");
            Require(status != "candidate" || seen.Count > 0, "Candidate requires recorded snapshot inputs.");
            Framework.Log("Titan inputs: " + status + "; shared acquisitions remain provisional; observed server phase is unknown.");
        }

        internal static void AddMetadata(Dictionary<string, object> metadata)
        {
            if (_manifest == null) return;
            metadata["clientInterface"] = (int)_manifest["interface"];
            metadata["snapshotStatus"] = (string)_manifest["verificationStatus"];
            metadata["inputStatus"] = (string)_manifest["inputStatus"];
            metadata["rawDataStatus"] = _hasItemDB ? "unverified" : "missing";
            metadata["sharedSourceStatus"] = "unverified";
            metadata["serverPhase"] = "unknown";
        }

        private static bool SamePath(string a, string b) => string.Equals(Path.GetFullPath(a).TrimEnd(Path.DirectorySeparatorChar, Path.AltDirectorySeparatorChar),
            Path.GetFullPath(b).TrimEnd(Path.DirectorySeparatorChar, Path.AltDirectorySeparatorChar), StringComparison.OrdinalIgnoreCase);

        private static void CheckHash(string path, string expected)
        {
            Require(File.Exists(path) && !string.IsNullOrWhiteSpace(expected), "Snapshot file or SHA-256 is missing: " + path);
            using (var stream = File.OpenRead(path))
            using (var hash = SHA256.Create())
                Require(string.Equals(BitConverter.ToString(hash.ComputeHash(stream)).Replace("-", ""), expected, StringComparison.OrdinalIgnoreCase), "Snapshot SHA-256 mismatch: " + path);
        }

        private static void Require(bool condition, string message)
        {
            if (!condition) throw new FormatException("Titan profile: " + message);
        }
    }
}
