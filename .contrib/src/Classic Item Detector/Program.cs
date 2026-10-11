using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Net;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Threading.Tasks;

namespace Classic_Item_Detector
{
    class Program
    {
        const string API_CALL = "/data/wow/item/{0}?locale=en_US&access_token={1}";
        static string API_KEY = null;
        static HttpClient client = new HttpClient();
        static void Main(string[] args)
        {
            ServicePointManager.SecurityProtocol = SecurityProtocolType.Tls11 | SecurityProtocolType.Tls12;

            Parse();
            Harvest().Wait();
        }

        static async Task<string> GetAsync(string path)
        {
            HttpResponseMessage response = await client.GetAsync(path);
            if (response.IsSuccessStatusCode)
            {
                return await response.Content.ReadAsStringAsync();
            }
            return null;
        }

        static List<object> CleanUpClasses(object container)
        {
            var classes = new List<object>();
            if (container is List<object> list)
            {
                foreach(var id in list)
                {
                    switch(id)
                    {
                        case 1: // Warrior
                        case 2: // Paladin
                        case 3: // Hunter
                        case 4: // Rogue
                        case 5: // Priest
                        //case 6: // Death Knight (not in Classic)
                        case 7: // Shaman
                        case 8: // Mage
                        case 9: // Warlock
                        case 11: // Druid
                            classes.Add(id);
                            break;
                    }
                }
                classes.Sort();
            }
            return classes;
        }

        static List<object> CleanUpRaces(object container)
        {
            var races = new List<object>();
            if (container is List<object> list)
            {
                foreach (var id in list)
                {
                    switch (id)
                    {
                        case 1: // Human
                        case 2: // Orc
                        case 3: // Dwarf
                        case 4: // Night Elf
                        case 5: // Undead
                        case 6: // Tauren
                        case 7: // Gnome
                        case 8: // Troll
                            races.Add(id);
                            break;
                    }
                }
                races.Sort();
            }
            return races;
        }

        static int ConvertInventoryType(object container)
        {
            if(container is Dictionary<string, object> data && data.TryGetValue("type", out object typeRef))
            {
                switch(typeRef)
                {
                    case "HEAD":
                        return 1;
                    case "NECK":
                        return 2;
                    case "SHOULDER":
                        return 3;
                    case "WRIST":
                        return 9;
                    case "HAND":
                    case "HANDS":
                        return 10;
                    case "CHEST":
                        return 5;
                    case "ROBE":
                        return 20;
                    case "BODY":
                        return 4;   // Shirts
                    case "WAIST":
                        return 6;
                    case "LEGS":
                        return 7;
                    case "FEET":
                        return 8;
                    case "FINGER":
                        return 11;
                    case "TRINKET":
                        return 12;
                    case "WEAPON":
                        return 13;
                    case "SHIELD":
                        return 14;
                    case "RANGED":
                        return 15;
                    case "BACK":
                    case "CLOAK":
                        return 16;
                    case "TWOHWEAPON":
                        return 17;
                    case "BAG":
                        return 18;
                    case "TABARD":
                        return 19;
                    case "WEAPONMAINHAND":
                        return 21;
                    case "WEAPONOFFHAND":
                        return 22;
                    case "HOLDABLE":
                        return 23;
                    case "AMMO":
                        return 24;
                    case "THROWN":
                        return 25;
                    case "RANGEDRIGHT": // WAND?
                        return 26;
                    case "RELIC":
                        return 28;

                    // Non-Equippable items
                    case "NON_EQUIP":
                        return 0;
                    default:
                        {
                            Console.Write("Unknown Inventory Type: ");
                            Console.WriteLine(typeRef);
                            return 0;
                        }
                }
            }
            return 0;
        }

        static int ConvertItemClass(object container)
        {
            if (container is Dictionary<string, object> data && data.TryGetValue("id", out object idRef))
            {
                return Convert.ToInt32(idRef);
            }
            return -1;
        }

        static int ConvertItemSubClass(object container)
        {
            if (container is Dictionary<string, object> data && data.TryGetValue("id", out object idRef))
            {
                return Convert.ToInt32(idRef);
            }
            return -1;
        }

        static int ConvertItemQuality(object container)
        {
            if (container is Dictionary<string, object> data && data.TryGetValue("type", out object typeRef))
            {
                switch (typeRef)
                {
                    case "POOR":
                        return 0;
                    case "COMMON":
                        return 1;
                    case "UNCOMMON":
                        return 2;
                    case "RARE":
                        return 3;
                    case "EPIC":
                        return 4;
                    case "LEGENDARY":
                        return 5;

                    default:
                        return 0;
                }
            }
            return 0;
        }

        static async Task Harvest()
        {
            // Create the output folder for raw data results.
            var rawDataDirectory = Directory.CreateDirectory("RAW/classicitems");
            client.BaseAddress = new Uri("https://us.api.blizzard.com");
            client.DefaultRequestHeaders.Accept.Clear();
            client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));
            int i = 36000;
            var MaxItemIDFileName = "MaxClassicItemID.txt";
            if (File.Exists(MaxItemIDFileName)) i = int.Parse(File.ReadAllText(MaxItemIDFileName));
            else File.WriteAllText(MaxItemIDFileName, i.ToString());
            var APIKeyFileName = "API.key";
            if (File.Exists(APIKeyFileName)) API_KEY = File.ReadAllText(APIKeyFileName);
            else
            {
                Console.WriteLine("You are missing an API.key API Key file! Please get one and try again.");
                Console.ReadLine();
                return;
            }
            while (i > 0)
            {
                Console.Write(i);
                Console.Write(": ");

                var filename = string.Format("{0}/{1}.raw", rawDataDirectory.FullName, i);
                if (File.Exists(filename))
                {
                    Console.WriteLine("Already have it!");
                    --i;
                    continue;
                }

                // File does NOT exist yet, let's create it!
                do
                {
                    try
                    {
                        HttpResponseMessage response = await client.GetAsync(string.Format(API_CALL, i, API_KEY));
                        if (response.IsSuccessStatusCode)
                        {
                            string data = await response.Content.ReadAsStringAsync();
                            if (string.IsNullOrEmpty(data)) Console.WriteLine("NULL");
                            else
                            {
                                Console.WriteLine(data);
                                File.WriteAllText(filename, data);
                            }
                            break;
                        }
                        else
                        {
                            Console.Write("STATUS CODE: ");
                            Console.WriteLine(response.StatusCode);
                            if ((int)response.StatusCode == 429)
                            {
                                await Task.Delay(1000);
                            }
                            else break;
                        }
                    }
                    catch (Exception e)
                    {
                        Console.WriteLine(e);
                        await Task.Delay(500);
                    }
                }
                while (true);
                --i;
            }

            Console.ReadLine();
        }

        static void Parse()
        {
            Console.WriteLine("Parsing all of the raw data...");
            var rawClassicData = new Dictionary<int, object>();
            if (File.Exists("RAW_classicItemDB.json"))
            {
                //rawData = JsonConvert.DeserializeObject<Dictionary<int, object>>(File.ReadAllText("RAW_classicItemDB.json"));
                if (MiniJSON.Json.Deserialize(File.ReadAllText("RAW_classicItemDB.json")) is Dictionary<string, object> rawDataFormat)
                {
                    foreach (var pair in rawDataFormat)
                    {
                        if (pair.Value is Dictionary<string, object> dict)
                        {
                            rawClassicData[Convert.ToInt32(pair.Key)] = dict;
                        }
                    }
                }
                else
                {
                    Console.WriteLine("WRONG!");
                    Console.ReadLine();
                }
            }

            var retailItemData = new Dictionary<int, object>();
            if (File.Exists("itemDB.json"))
            {
                if (MiniJSON.Json.Deserialize(File.ReadAllText("itemDB.json")) is Dictionary<string, object> rawDataFormat
                    && rawDataFormat.TryGetValue("items", out object listRef) && listRef is List<object> retailItems)
                {
                    foreach (var o in retailItems)
                    {
                        if (o is Dictionary<string, object> dict)
                        {
                            if (dict.TryGetValue("itemID", out object itemIDRef))
                            {
                                retailItemData[Convert.ToInt32(itemIDRef)] = dict;
                            }
                        }
                    }
                }
                else
                {
                    Console.WriteLine("WRONG!");
                    Console.ReadLine();
                }
            }
            var rawDataDirectory = Directory.CreateDirectory("RAW/classicitems");
            foreach (var fileInfo in rawDataDirectory.EnumerateFiles("*.raw"))
            {
                var contents = File.ReadAllText(fileInfo.FullName);
                if (MiniJSON.Json.Deserialize(contents) is Dictionary<string, object> dict)
                {
                    if (dict.TryGetValue("id", out object idRef))
                    {
                        rawClassicData[Convert.ToInt32(idRef)] = dict;
                    }
                }
            }
            Console.WriteLine("Done parsing the raw data.");
            File.WriteAllText("RAW_classicItemDB.json", MiniJSON.Json.Serialize(rawClassicData));
            Console.WriteLine("Done exporting the raw data.");

            // Convert the data into a more meaningful format structure.
            var keys = rawClassicData.Keys.ToList();
            keys.Sort();
            File.WriteAllText("classicItemIDs.json", MiniJSON.Json.Serialize(keys));
            Console.WriteLine("Done exporting the data.");
            var itemData = new Dictionary<int, Dictionary<string, object>>();
            foreach (var itemID in keys)
            {
                if (!itemData.TryGetValue(itemID, out Dictionary<string, object> data))
                {
                    data = itemData[itemID] = new Dictionary<string, object>
                    {
                        { "itemID", itemID },
                    };

                }
                if (rawClassicData.TryGetValue(itemID, out object rawD) && rawD is Dictionary<string, object> classicData)
                {
                    if (classicData.ContainsKey("name")) data["name"] = classicData["name"];
                    if (classicData.ContainsKey("is_equippable")) data["equippable"] = classicData["is_equippable"];
                    if (classicData.TryGetValue("level", out object r) && Convert.ToInt32(r) > 1) data["iLvl"] = r;
                    if (classicData.TryGetValue("required_level", out r) && Convert.ToInt32(r) > 1) data["Lvl"] = r;
                    if (classicData.TryGetValue("inventory_type", out r))
                    {
                        var inventoryType = ConvertInventoryType(r);
                        if (inventoryType > 0) data["inventoryType"] = inventoryType;
                    }
                    if (classicData.TryGetValue("quality", out r))
                    {
                        var itemQuality = ConvertItemQuality(r);
                        if (itemQuality > 0) data["quality"] = itemQuality;
                    }
                    if (classicData.TryGetValue("item_class", out r))
                    {
                        var itemClass = ConvertItemClass(r);
                        if (itemClass > -1) data["class"] = itemClass;
                    }
                    if (classicData.TryGetValue("item_subclass", out r))
                    {
                        var itemSubClass = ConvertItemSubClass(r);
                        if (itemSubClass > -1) data["subclass"] = itemSubClass;
                    }



                    if (classicData.TryGetValue("itemBind", out r) && Convert.ToInt32(r) != 0) data["bind"] = r;
                    if (classicData.ContainsKey("allowableClasses")) data["classes"] = classicData["allowableClasses"];
                    if (classicData.TryGetValue("allowableRaces", out object allowableRacesRef) && allowableRacesRef is List<object> races)
                    {
                        var cleanedUpRaces = new List<int>();
                        foreach (var raceRef in races)
                        {
                            var race = Convert.ToInt32(raceRef);
                            if (cleanedUpRaces.Contains(race)) continue;
                            cleanedUpRaces.Add(race);
                        }
                        if (cleanedUpRaces.Contains(34))
                        {
                            if (cleanedUpRaces.Contains(2) && !cleanedUpRaces.Contains(1))
                            {
                                // This was supposed to include Maghar Orcs instead... silly Blizzard!
                                cleanedUpRaces.Remove(34);
                                cleanedUpRaces.Add(36);
                            }
                        }
                        else if (cleanedUpRaces.Contains(36))
                        {
                            if (!cleanedUpRaces.Contains(2) && cleanedUpRaces.Contains(1))
                            {
                                // This was supposed to include Dark Iron Dwarves instead... silly Blizzard!
                                cleanedUpRaces.Remove(36);
                                cleanedUpRaces.Add(34);
                            }
                        }
                        data["races"] = cleanedUpRaces;
                    }
                    if (classicData.TryGetValue("requiredSkill", out r) && Convert.ToInt32(r) > 0) data["requiredSkill"] = r;
                    if (classicData.TryGetValue("itemSpells", out object itemSpellsRef) && itemSpellsRef is List<object> itemSpells && itemSpells.Count > 0)
                    {
                        var ignoreItem = false;

                        // Inventory Types
                        // Some inventory types make this very very easy to calculate.
                        if (data.TryGetValue("inventoryType", out object inventoryTypeRef))
                        {
                            switch (Convert.ToInt32(inventoryTypeRef))
                            {
                                case 00: // ???
                                    ignoreItem = false;
                                    break;
                                case 02: // Neck
                                case 04: // Shirt
                                case 11: // Ring
                                case 12: // Trinket
                                case 16: // Cloak
                                case 19: // Tabard
                                    ignoreItem = true;
                                    break;
                                default:
                                    // All of them?!
                                    ignoreItem = true;
                                    break;
                            }
                        }

                        if (classicData.TryGetValue("scaledDescription", out object description) && Convert.ToString(description) == "Right Click to summon and dismiss this companion.")
                        {
                            ignoreItem = true;
                        }

                        if (!ignoreItem)
                        {
                            var listOfSpells = new List<int>();
                            foreach (var spellRef in itemSpells)
                            {
                                if (spellRef is Dictionary<string, object> spellObj)
                                {
                                    if (spellObj.TryGetValue("spellId", out object spellIDRef))
                                    {
                                        var spellID = Convert.ToInt32(spellIDRef);
                                        switch (spellID)
                                        {
                                            case 483:       // "Learning"
                                            case 55884:     // "Learning"
                                            case 213820:    // "Learning"
                                            case 135930:    // "Learning"

                                            case 64981:     // Summon Random Vanquished Tentacle
                                            case 202510:    // Summon Nomi
                                            case 222965:    // Summon Beliath Dawnblade
                                            case 81040:     // Unknown
                                            case 82238:     // Unknown
                                                break;
                                            case 21160:   // Eye of Sulfuras
                                            case 43732:   // Remove Amani Curse
                                            case 73324:   // Portal: Dalaran
                                            case 178210:  // Legs of Iron
                                            case 178209:  // Chest of Iron
                                            case 178212:  // Helm of Iron
                                            case 178213:  // Shoulders of Iron
                                            case 178211:  // Gloves of Iron
                                            case 238151:  // Create Item
                                            case 238155:  // Create Item
                                            case 238158:  // Create Item
                                            case 238159:  // Create Item
                                            case 238254:  // Create Item
                                            case 230286:  // Lava Skin
                                            case 233325:  // Damp Pet Supplies
                                                break;
                                            default:
                                                if (spellObj.TryGetValue("trigger", out object triggerRef))
                                                {
                                                    var name = triggerRef.ToString();
                                                    if (!name.Contains("ON_LEARN"))
                                                    {
                                                        // NO
                                                        break;
                                                    }
                                                }
                                                // Add the spell to the list of spells.
                                                listOfSpells.Add(spellID);
                                                break;
                                        }
                                    }
                                }
                            }
                            var count = listOfSpells.Count;
                            if (count > 0)
                            {
                                data["spellID"] = listOfSpells[0];
                                if (count > 1)
                                {
                                    Console.Write("Item [");
                                    Console.Write(data["name"]);
                                    Console.Write("] has ");
                                    Console.Write(count);
                                    Console.WriteLine(" spells!");
                                }
                            }
                        }
                    }
                }
                if (retailItemData.TryGetValue(itemID, out rawD) && rawD is Dictionary<string, object> retailData)
                {
                    if (retailData.TryGetValue("bind", out object r) && Convert.ToInt32(r) != 0) data["bind"] = r;
                    if (retailData.TryGetValue("classes", out r))
                    {
                        var classes = CleanUpClasses(r);
                        if(classes.Any()) data["classes"] = classes;
                    }
                    if (retailData.TryGetValue("races", out r))
                    {
                        var races = CleanUpRaces(r);
                        if (races.Any()) data["races"] = races;
                    }
                    if (retailData.TryGetValue("requiredSkill", out r)) data["requiredSkill"] = r;
                    if (retailData.TryGetValue("spellID", out r)) data["spellID"] = r;
                }
            }
            File.WriteAllText("classicItemDB.json", MiniJSON.Json.Serialize(new Dictionary<string, object> { { "items", itemData.Values.ToList() }}));
        }
    }
}
