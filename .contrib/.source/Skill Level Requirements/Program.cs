// See https://aka.ms/new-console-template for more information
using ATT;
using System.Text;

// Make sure the Skill Level Requirements folder exists.
var SkillLevelRequirementsFolderName = "../Parser/DATAS/00 - Profession DB/Skill Level Requirements/";
#pragma warning disable CS8604 // Possible null reference argument.
Directory.CreateDirectory(Path.GetDirectoryName(SkillLevelRequirementsFolderName));
#pragma warning restore CS8604 // Possible null reference argument.

// Define the Common Header
string commonHeader = "-- WARNING: THIS DOCUMENT IS DYNAMICALLY GENERATED. DO NOT MANUALLY UPDATE!\nlocal recipeDB = RecipeDBConditional;";

// Classic Profession Data
StringBuilder sb = new StringBuilder().AppendLine(commonHeader);
foreach (string profession in new string[] { "Alchemy", "Blacksmithing", "Enchanting", "Engineering", "Herbalism", "Leatherworking", "Mining", "Skinning", "Tailoring" })
{
    var pageString = Helper.GetStringFromWoWHead($"professions/{profession.ToLower().Replace(" ", "")}", "classic/").Result;
    if (pageString == null) continue;
    Console.Write("classic/");
    Helper.Parse(pageString, sb, profession);
}
foreach (string profession in new string[] { "Cooking", "First Aid", "Fishing" })
{
    var pageString = Helper.GetStringFromWoWHead($"secondary-skills/{profession.ToLower().Replace(" ", "-")}", "classic/").Result;
    if (pageString == null) continue;
    Console.Write("classic/");
    Helper.Parse(pageString, sb, profession);
}
File.WriteAllText(Path.Combine(SkillLevelRequirementsFolderName, "01 - Classic.lua"), sb.ToString());

// TBC Profession Data
sb.Clear().AppendLine("-- #if AFTER 2.0.0").AppendLine(commonHeader);
foreach (string profession in new string[] { "Alchemy", "Blacksmithing", "Enchanting", "Engineering", "Herbalism", "Jewelcrafting", "Leatherworking", "Mining", "Skinning", "Tailoring" })
{
    var pageString = Helper.GetStringFromWoWHead($"professions/{profession.ToLower().Replace(" ", "")}", "tbc/").Result;
    if (pageString == null) continue;
    Console.Write("tbc/");
    Helper.Parse(pageString, sb, profession);
}
foreach (string profession in new string[] { "Cooking", "First Aid", "Fishing" })
{
    var pageString = Helper.GetStringFromWoWHead($"secondary-skills/{profession.ToLower().Replace(" ", "-")}", "tbc/").Result;
    if (pageString == null) continue;
    Console.Write("tbc/");
    Helper.Parse(pageString, sb, profession);
}
File.WriteAllText(Path.Combine(SkillLevelRequirementsFolderName, "02 - TBC.lua"), sb.Append("-- #endif").ToString());

// Wrath Profession Data
sb.Clear().AppendLine("-- #if AFTER 3.0.0").AppendLine(commonHeader);
foreach (string profession in new string[] { "Alchemy", "Blacksmithing", "Enchanting", "Engineering", "Herbalism", "Inscription", "Jewelcrafting", "Leatherworking", "Mining", "Skinning", "Tailoring" })
{
    var pageString = Helper.GetStringFromWoWHead($"professions/{profession.ToLower().Replace(" ", "")}", "wotlk/").Result;
    if (pageString == null) continue;
    Console.Write("wotlk/");
    Helper.Parse(pageString, sb, profession);
}
foreach (string profession in new string[] { "Cooking", "First Aid", "Fishing" })
{
    var pageString = Helper.GetStringFromWoWHead($"secondary-skills/{profession.ToLower().Replace(" ", "-")}", "wotlk/").Result;
    if (pageString == null) continue;
    Console.Write("wotlk/");
    Helper.Parse(pageString, sb, profession);
}
File.WriteAllText(Path.Combine(SkillLevelRequirementsFolderName, "03 - Wrath.lua"), sb.Append("-- #endif").ToString());

// Cataclysm Profession Data
sb.Clear().AppendLine("-- #if AFTER 4.0.0").AppendLine(commonHeader);
foreach (string profession in new string[] { "Alchemy", "Blacksmithing", "Enchanting", "Engineering", "Herbalism", "Inscription", "Jewelcrafting", "Leatherworking", "Mining", "Skinning", "Tailoring" })
{
    var pageString = Helper.GetStringFromWoWHead($"professions/{profession.ToLower().Replace(" ", "")}", "cata/").Result;
    if (pageString == null) continue;
    Console.Write("cata/");
    Helper.Parse(pageString, sb, profession);
}
foreach (string profession in new string[] { "Cooking", "First Aid", "Fishing" })
{
    var pageString = Helper.GetStringFromWoWHead($"secondary-skills/{profession.ToLower().Replace(" ", "-")}", "cata/").Result;
    if (pageString == null) continue;
    Console.Write("cata/");
    Helper.Parse(pageString, sb, profession);
}
File.WriteAllText(Path.Combine(SkillLevelRequirementsFolderName, "04 - Cataclysm.lua"), sb.Append("-- #endif").ToString());

// Mists of Pandaria Profession Data
sb.Clear().AppendLine("-- #if AFTER 5.0.0").AppendLine(commonHeader);
foreach (string profession in new string[] { "Alchemy", "Blacksmithing", "Enchanting", "Engineering", "Herbalism", "Inscription", "Jewelcrafting", "Leatherworking", "Mining", "Skinning", "Tailoring" })
{
    var pageString = Helper.GetStringFromWoWHead($"professions/{profession.ToLower().Replace(" ", "")}", "mop-classic/").Result;
    if (pageString == null) continue;
    Console.Write("cata/");
    Helper.Parse(pageString, sb, profession);
}
foreach (string profession in new string[] { "Cooking", "First Aid", "Fishing" })
{
    var pageString = Helper.GetStringFromWoWHead($"secondary-skills/{profession.ToLower().Replace(" ", "-")}", "mop-classic/").Result;
    if (pageString == null) continue;
    Console.Write("cata/");
    Helper.Parse(pageString, sb, profession);
}
File.WriteAllText(Path.Combine(SkillLevelRequirementsFolderName, "05 - Mists of Pandaria.lua"), sb.Append("-- #endif").ToString());



// Retail Profession Data
sb.Clear().AppendLine("-- #if AFTER 11.0.0").AppendLine(commonHeader);
foreach (string profession in new string[] { "Alchemy", "Blacksmithing", "Enchanting", "Engineering", "Herbalism", "Inscription", "Jewelcrafting", "Leatherworking", "Mining", "Skinning", "Tailoring" })
{
    var pageString = Helper.GetStringFromWoWHead($"professions/{profession.ToLower().Replace(" ", "")}").Result;
    if (pageString == null) continue;
    Console.Write("retail/");
    Helper.Parse(pageString, sb, profession);
}
foreach (string profession in new string[] { "Archaeology", "Cooking", "Fishing" })
{
    var pageString = Helper.GetStringFromWoWHead($"secondary-skills/{profession.ToLower().Replace(" ", "-")}").Result;
    if (pageString == null) continue;
    Console.Write("retail/");
    Helper.Parse(pageString, sb, profession);
}
File.WriteAllText(Path.Combine(SkillLevelRequirementsFolderName, "11 - The War Within.lua"), sb.Append("-- #endif").ToString());