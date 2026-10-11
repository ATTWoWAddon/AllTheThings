using MiniJSON;
using System;
using System.Collections.Concurrent;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

namespace ATT
{
    enum ObjType
    {
        item = 1,
        quest = 2
    }

    class Program
    {
        const string API_CALL_ITEM = "/data/wow/item/{0}?namespace=static-us&locale=en_US";
        const string API_CALL_QUEST = "/data/wow/quest/{0}?namespace=static-us&locale=en_US";
        /// <summary>
        /// Examples of search
        /// https://us.api.blizzard.com/data/wow/search/item?namespace=static-us&locale=en_US&inventory_type.name.en_US=Off&_page=1&_pageSize=1000&orderby=id:asc
        /// </summary>
        const string API_CALL_SEARCH = "/data/wow/search/{0}?namespace=static-us&locale=en_US&_page={1}&_pageSize=1000";

        static string API_KEY = null;
        static HttpClient Client = InitClient();
        static ConcurrentQueue<string> DataResults { get; } = new ConcurrentQueue<string>();
        static ConcurrentQueue<Tuple<int, string>> APIRequests { get; } = new ConcurrentQueue<Tuple<int, string>>();
        static ConcurrentQueue<Tuple<int, Task<HttpResponseMessage>>> APIResults { get; } = new ConcurrentQueue<Tuple<int, Task<HttpResponseMessage>>>();
        static ConcurrentQueue<string> ParseDatas { get; } = new ConcurrentQueue<string>();
        /// <summary>
        /// A queue of the locks for each attempted
        /// </summary>
        static ConcurrentQueue<Action> ThrottleQueue { get; } = new ConcurrentQueue<Action>();
        static readonly object ThrottleLock = new object();
        static string DateStamp { get; set; } = DateTime.UtcNow.Year.ToString() + DateTime.UtcNow.Month.ToString("00") + DateTime.UtcNow.Day.ToString("00");
        /// <summary>
        /// Represents how long to wait between API calls on average over an hour (since it will take more than an hour to retrieve all item IDs)
        /// 3,600,000ms / hour / 36,000 API / hour ==> 100ms / API
        /// </summary>
        static int API_ThrottleHour { get; } = 125;
        /// <summary>
        /// Represents how long to wait between API calls minimum
        /// </summary>
        static int API_ThrottleSecond { get; } = 10;
        static int API_ExpectedThrottle { get; set; } = API_ThrottleSecond;
        /// <summary>
        /// Represents whether the total amount of data for either Items/Quests would not exceed the Hourly threshold and allow faster requests
        /// </summary>
        static bool UseFastThrottle { get; set; }
        static string RawDirectoryFormat { get; set; }
        static string RawAPICallFormat { get; set; }
        static int MinItemID { get; set; } = 1;
        static int MinQuestID { get; set; } = 1;
        static int MaxItemID { get; set; } = 185000;
        static int MaxQuestID { get; set; } = 60000;
        static bool WaitForAPI { get; set; }
        static bool WaitForRequests { get; set; }
        static bool WaitForData { get; set; }
        static bool WaitForParseQueue { get; set; }
        static bool WaitForParsingData { get; set; }
        /// <summary>
        /// Represents whether the throttling thread is currently spinning
        /// </summary>
        static bool ThrottleSpinning { get; set; }
        static string Error { get; set; }
        static Dictionary<ObjType, bool> ProcessObjects { get; } = new Dictionary<ObjType, bool>();
        /// <summary>
        /// Represents the pre-determined IDs which will be available from the API for the given object type
        /// </summary>
        static Dictionary<ObjType, int[]> AvailableObjectIDs { get; } = new Dictionary<ObjType, int[]>();
        /// <summary>
        /// Represents the currently-running Thread IDs while performing API Search queries
        /// </summary>
        static List<int> SearchThreadIDs { get; } = new List<int>();

        static void Main(string[] args)
        {
            // can tell harvester to only parse existing datas for a certain date
            string parseOnlyDate = args.FirstOrDefault(a => a.StartsWith("parse="))?.Substring(6);

            if (parseOnlyDate != null)
            {
                DateStamp = parseOnlyDate;
            }

            Console.WriteLine("Harvester Started using Date:" + DateStamp);

            AppDomain.CurrentDomain.UnhandledException += UnHandledExceptionCapture;

            ObjType[] parseTypes = (ObjType[])Enum.GetValues(typeof(ObjType));
            foreach (ObjType parseType in parseTypes)
            {
                ProcessObjects[parseType] = false;
            }

            // optionally do only specific API pull types
            if (args != null && args.Length > 0)
            {
                Console.Write("args:");
                foreach (string arg in args)
                {
                    Console.Write(arg + ",");
                    if (Enum.TryParse(arg, out ObjType parseType))
                    {
                        ProcessObjects[parseType] = true;
                    }
                }
                Console.WriteLine();
            }
            else
            {
                foreach (ObjType parseType in parseTypes)
                {
                    ProcessObjects[parseType] = true;
                }
            }

            // pre-determine which IDs will exist in the API for each type
            //DetermineAvailableIDs();

            // start thread for sending API requests
            Thread threadAPISender = new Thread(SendAPIRequests)
            {
                IsBackground = true,
                Name = "APISender.Thread",
            };
            threadAPISender.Start();

            // start thread for handling API responses
            Thread threadAPIReceiver = new Thread(CaptureAPIResults)
            {
                IsBackground = true,
                Name = "APIReceiver.Thread",
            };
            threadAPIReceiver.Start();

            // start thread for simply writing data
            Thread threadDataWriter = new Thread(SaveFiles)
            {
                IsBackground = true,
                Name = "DataWriter.Thread",
            };
            threadDataWriter.Start();

            // ensure that both API receiver and data writer threads were created before continuing, otherwise can get stuck
            while (!WaitForData || !WaitForAPI || !WaitForRequests) { Thread.Sleep(50); }

            if (ProcessObjects[ObjType.item] && parseOnlyDate == null)
            {
                InitItems();
                // begin item harvest from API
                Console.WriteLine($"Harvesting Items thru {MaxItemID} : {MinItemID}");
                HarvestItems();
            }

            // dont switch to quest harvest until items are done
            while (APIRequests.Count > 0 || APIResults.Count > 0 || DataResults.Count > 0) { Thread.Sleep(50); }

            if (ProcessObjects[ObjType.quest] && parseOnlyDate == null)
            {
                InitQuests();
                // begin quest harvest from API
                Console.WriteLine($"Harvesting Quests thru {MaxQuestID} : {MinQuestID}");
                HarvestQuests();
            }

            // wait for all queues to clear
            while (APIRequests.Count > 0 || APIResults.Count > 0 || DataResults.Count > 0) { Thread.Sleep(50); }

            // stop waiting to send API requests
            WaitForRequests = false;

            // make sure threads are done
            while (WaitForData || WaitForAPI || WaitForRequests) { Thread.Sleep(50); }

            if (!string.IsNullOrEmpty(Error))
            {
                Console.WriteLine(Error);
                //Console.ReadKey();
                return;
            }
            Parse();

            while (WaitForParseQueue || WaitForParsingData || ParseDatas.Count > 0) { Thread.Sleep(50); }

            Console.WriteLine("Harvester Complete!");
        }

        private static void UnHandledExceptionCapture(object sender, UnhandledExceptionEventArgs e)
        {
            Console.WriteLine($"Exception!");
            Console.WriteLine(MiniJSON.Json.Serialize(e.ExceptionObject));
        }

        private static void DetermineAvailableIDs()
        {
            foreach (ObjType objType in ProcessObjects.Keys)
            {
                if (ProcessObjects[objType])
                    StartSearchForObjectType(objType);
            }

            // wait for search threads to complete
            while (SearchThreadIDs.Any()) { Thread.Sleep(100); }
        }

        private static void StartSearchForObjectType(ObjType objType)
        {
            Thread thread = new Thread(SearchForObjectType)
            {
                IsBackground = true,
                Name = "Thread.APISearch." + objType.ToString(),
            };
            thread.Start(objType);
            SearchThreadIDs.Add(thread.ManagedThreadId);
        }

        private static void SearchForObjectType(object obj)
        {
            ObjType objType = (ObjType)obj;
            string objStr = objType.ToString();
            bool moreItems = true;
            int page = 1;

            var availableItems = new HashSet<int>();
            while (moreItems)
            {
                string url = string.Format(API_CALL_SEARCH, objStr, page.ToString());
                Console.WriteLine("Search URL: " + url);
                HttpResponseMessage response = QueueAPIRequest(url).Result;
                if (response.IsSuccessStatusCode)
                {
                    string respStr = response.Content.ReadAsStringAsync().Result;
                    var objData = MiniJSON.Json.Deserialize(respStr) as Dictionary<string, object>;
                    objData.TryGetValue("resultCountCapped", out moreItems);
                    page++;
                    if (objData.TryGetValue("results", out List<object> results))
                    {
                        foreach (object result in results)
                        {
                            if (result is Dictionary<string, object> item)
                            {
                                if (item.TryGetValue("data", out Dictionary<string, object> data))
                                {
                                    if (data.TryGetValue("id", out int id))
                                    {
                                        Console.WriteLine("Available ID:" + id.ToString());
                                        availableItems.Add(id);
                                    }
                                }
                            }
                        }
                    }
                }
            }

            AvailableObjectIDs.Add(objType, availableItems.ToArray());

            SearchThreadIDs.Remove(Thread.CurrentThread.ManagedThreadId);
        }

        private static void InitItems()
        {
            ServicePointManager.SecurityProtocol = SecurityProtocolType.Tls11 | SecurityProtocolType.Tls12;

            // Create the output folder for raw data results.
            var rawDataDirectory = Directory.CreateDirectory("RAW/items." + DateStamp);
            int existingRaw = rawDataDirectory.GetFiles("*.raw").Length;
            var ItemIDsFileName = "ItemIDs.txt";
            if (File.Exists(ItemIDsFileName))
            {
                int[] itemIDs = File.ReadAllText(ItemIDsFileName).Split(new[] { ',' }).Select(s => int.Parse(s)).ToArray();
                MinItemID = itemIDs[0];
                MaxItemID = itemIDs[1];
            }
            else File.WriteAllText(ItemIDsFileName, $"{MinItemID},{MaxItemID}");
            UseFastThrottle = MaxItemID - MinItemID < 36000;
            RawDirectoryFormat = rawDataDirectory.FullName + "/{0}.raw";
        }

        private static void InitQuests()
        {
            ServicePointManager.SecurityProtocol = SecurityProtocolType.Tls11 | SecurityProtocolType.Tls12;

            // Create the output folder for raw data results.
            var rawDataDirectory = Directory.CreateDirectory("RAW/quests." + DateStamp);
            int existingRaw = rawDataDirectory.GetFiles("*.raw").Length;
            var QuestIDsFileName = "QuestIDs.txt";
            if (File.Exists(QuestIDsFileName))
            {
                int[] questIDs = File.ReadAllText(QuestIDsFileName).Split(new[] { ',' }).Select(s => int.Parse(s)).ToArray();
                MinQuestID = questIDs[0];
                MaxQuestID = questIDs[1];
            }
            else File.WriteAllText(QuestIDsFileName, $"{MinItemID},{MaxItemID}");
            UseFastThrottle = MaxQuestID - MinQuestID < 36000;
            RawDirectoryFormat = rawDataDirectory.FullName + "/{0}.raw";
        }

        private static void CaptureAPIResults()
        {
            WaitForAPI = true;
            while (WaitForAPI || APIResults.Count > 0)
            {
                if (APIResults.TryDequeue(out Tuple<int, Task<HttpResponseMessage>> responseData))
                {
                    // get the actual response message from the task if it is completed
                    Task<HttpResponseMessage> responseTask = responseData.Item2;
                    if (!TaskStopped(responseTask))
                    {
                        //Console.WriteLine("[" + responseData.Item1.ToString() + "]: WAITING...");
                        APIResults.Enqueue(responseData);
                        continue;
                    }
                    try
                    {
                        HttpResponseMessage response = responseTask.GetAwaiter().GetResult();
                        if (response.IsSuccessStatusCode)
                        {
                            string data = response.Content.ReadAsStringAsync().Result;
                            int id = responseData.Item1;
                            if (string.IsNullOrEmpty(data)) Console.WriteLine("[" + id.ToString() + "]: NULL");
                            else
                            {
                                Console.WriteLine("[" + id.ToString() + "]: FOUND @" + API_ExpectedThrottle + ":" + APIResults.Count);
                                QueueAPIData(data);
                            }
                        }
                        // queried too fast!
                        else if ((int)response.StatusCode == 429)
                        {
                            Console.WriteLine("[" + responseData.Item1.ToString() + "]: TOO FAST! @" + API_ExpectedThrottle + ":" + APIResults.Count);
                            QueueAPIRequestForID(responseData.Item1, true);
                        }
                        // item doesn't exist -- save a raw file for it so re-parsing/testing is faster, ugh
                        else if ((int)response.StatusCode == 404)
                        {
                            Console.WriteLine("[" + responseData.Item1.ToString() + "]: NO EXISTS! @" + API_ExpectedThrottle + ":" + APIResults.Count);
                            //DataResults.Enqueue(new Tuple<int, string>(responseData.Item1, "{\"id\":" + responseData.Item1.ToString() + "}"));
                        }
                        // forbidden??
                        else if (response.StatusCode == HttpStatusCode.Forbidden)
                        {
                            Console.WriteLine("[" + responseData.Item1.ToString() + "]: FORBIDDEN @" + API_ExpectedThrottle + ":" + APIResults.Count);
                        }
                        // authorization ran out
                        else if (response.StatusCode == HttpStatusCode.Unauthorized)
                        {
                            // dont worry about auth errors i suppose...
                            Console.WriteLine("[" + responseData.Item1.ToString() + "]: UNAUTHORIZED @" + API_ExpectedThrottle + ":" + APIResults.Count);
                        }
                        else
                        {
                            Console.WriteLine("[" + responseData.Item1.ToString() + "]: Retry - " + response.StatusCode.ToString());
                            QueueAPIRequestForID(responseData.Item1, true);
                        }
                    }
                    catch (Exception ex)
                    {
                        Console.WriteLine("[" + responseData.Item1.ToString() + "]: Retry - " + GetExceptionMessage(ex));
                        QueueAPIRequestForID(responseData.Item1, true);
                    }
                }
                else
                {
                    // wait for more API captures to show up
                    Thread.Sleep(5);
                }
            }

            WaitForData = false;
        }

        /// <summary>
        /// A dynamically-throttled-sender thread for API requests
        /// </summary>
        private static void SendAPIRequests()
        {
            WaitForRequests = true;
            while (WaitForRequests || APIRequests.Count > 0)
            {
                // only send new requests if waiting for less than 25
                if (APIResults.Count < 25 && APIRequests.TryDequeue(out Tuple<int, string> request))
                {
                    // throttle each API Request
                    Thread.Sleep(API_ExpectedThrottle);

                    //Console.WriteLine($"API @{API_ExpectedThrottle}: {request.Item2}");
                    APIResults.Enqueue(new Tuple<int, Task<HttpResponseMessage>>(request.Item1, Client.GetAsync(request.Item2)));
                    // when sending a new request, slightly reduce the throttle
                    lock (ThrottleLock)
                    {
                        API_ExpectedThrottle = Math.Max(UseFastThrottle ? API_ThrottleSecond : API_ThrottleHour, API_ExpectedThrottle - 2);
                    }
                }
                else
                {
                    Thread.Sleep(5);
                }
            }

            WaitForAPI = false;
        }

        private static void QueueAPIRequestForID(int i, bool retry = false)
        {
            // maximum API limits is 100/sec so throttle to that at least
            // dont allow more than 50 simultaneous requests
            // 10ms minimum wait, but need to allow for repeated calls to slip in and can be called from 2 threads

            // if retrying, increment the expected throttle slightly
            if (retry)
            {
                lock (ThrottleLock)
                {
                    API_ExpectedThrottle = Math.Min(1000, API_ExpectedThrottle + 10);
                }
            }

            // if the API request queue is 'full' then continue to wait for a throttle and try again to queue
            while (!retry && APIRequests.Count > 25) { Thread.Sleep(API_ExpectedThrottle); }

            APIRequests.Enqueue(new Tuple<int, string>(i, string.Format(RawAPICallFormat, i)));
        }

        private static void QueueAPIData(string data)
        {
            IDictionary<string, object> json = (IDictionary<string, object>)MiniJSON.Json.Deserialize(data ?? "{}");
            // don't bother saving empty data
            if (json == null)
                return;

            // grab the raw type from the internal href link for parsing
            json["_rawtype"] = CheckRawType(json);

            // remove keys which we don't care about in raw data
            CleanJsonData(json);

            // don't bother saving empty data
            if (json.Count == 0)
                return;

            DataResults.Enqueue(MiniJSON.Json.Serialize(json));
        }

        private static bool CleanJsonObject(object data)
        {
            if (data is IDictionary<string, object> dict)
            {
                CleanJsonData(dict);
                return dict.Count == 0;
            }
            else if (data is IEnumerable<object> list)
            {
                foreach (object obj in list)
                {
                    CleanJsonObject(obj);
                }
            }
            return false;
        }

        private static void CleanJsonData(IDictionary<string, object> json)
        {
            json.Remove("_links");
            json.Remove("href");

            List<string> empty = new List<string>();
            foreach (KeyValuePair<string, object> kvp in json)
            {
                if (CleanJsonObject(kvp.Value))
                {
                    empty.Add(kvp.Key);
                }
            }

            foreach (string key in empty)
            {
                json.Remove(key);
            }
        }

        private static bool TaskStopped(Task<HttpResponseMessage> task)
        {
            return task.IsCompleted ||
                    task.IsFaulted ||
                    task.IsCanceled;
        }

        /// <summary>
        /// Threaded method which waits for and saves any queued API data
        /// </summary>
        private static void SaveFiles()
        {
            WaitForData = true;
            while (WaitForData || DataResults.Count > 0)
            {
                string[] dataToStore = new string[DataResults.Count];
                int i = 0;
                while (i < dataToStore.Length)
                {
                    // more data shows up while we dequeue, so that will process on next SaveFiles loop
                    DataResults.TryDequeue(out var s);
                    dataToStore[i++] = s;
                }
                string rawStorage = string.Join(Environment.NewLine, dataToStore);
                if (!string.IsNullOrEmpty(rawStorage))
                    File.AppendAllText(string.Format(RawDirectoryFormat, "DATA"), rawStorage + Environment.NewLine);

                // wait for more data to show up
                Thread.Sleep(10000);
            }
        }

        static void HarvestItems()
        {
            MaxItemID = ScanExistingData(MaxItemID);
            RawAPICallFormat = API_CALL_ITEM;
            int i = MaxItemID;
            while (i >= MinItemID)
            {
                if (!string.IsNullOrEmpty(Error))
                    i = 0;

                var filename = string.Format(RawDirectoryFormat, i);
                if (File.Exists(filename))
                {
                    Console.WriteLine("[" + i.ToString() + "]: Already have it!");
                    --i;
                    continue;
                }

                QueueAPIRequestForID(i);
                --i;
            }
        }

        static void HarvestQuests()
        {
            MaxQuestID = ScanExistingData(MaxQuestID);
            RawAPICallFormat = API_CALL_QUEST;
            int i = MaxQuestID;
            while (i >= MinQuestID)
            {
                if (!string.IsNullOrEmpty(Error))
                    i = 0;

                var filename = string.Format(RawDirectoryFormat, i);
                if (File.Exists(filename))
                {
                    Console.WriteLine("[" + i.ToString() + "]: Already have it!");
                    --i;
                    continue;
                }

                QueueAPIRequestForID(i);
                --i;
            }
        }

        private static int ScanExistingData(int expectedMax)
        {
            string rawDataPath = string.Format(RawDirectoryFormat, "DATA");
            if (!File.Exists(rawDataPath))
                return expectedMax;

            var contents = File.ReadAllText(string.Format(RawDirectoryFormat, "DATA"));
            string[] individualDatas = contents.Split(new string[] { Environment.NewLine }, StringSplitOptions.RemoveEmptyEntries);
            long minIdFound = expectedMax;
            foreach (string data in individualDatas)
            {
                if (MiniJSON.Json.Deserialize(data) is IDictionary<string, object> json)
                {
                    if (json.TryGetValue("id", out object idObj) && idObj is long id)
                    {
                        minIdFound = Math.Min(minIdFound, id);
                    }
                }
            }

            Console.WriteLine($"Already captured through: {minIdFound}. Adjusting new start ID");
            return (int)(minIdFound - 1);
        }

        private static HttpClient InitClient()
        {
            if (File.Exists("Client.key"))
            {
                var clientInfo = File.ReadAllText("Client.key").Split(new[] { ',' });
                var access_token = GetAccessToken(clientInfo[0].Trim(), clientInfo[1].Trim());
                if (!string.IsNullOrEmpty(access_token))
                {
                    File.WriteAllText("API.key", access_token);
                }
            }

            while (!File.Exists("API.key"))
            {
                Console.WriteLine("You are missing an 'API.key' API Key file! Please get one and try again.");
                Console.ReadLine();
            }
            API_KEY = File.ReadAllText("API.key");

            HttpClient client = new HttpClient
            {
                BaseAddress = new Uri("https://us.api.blizzard.com"),
                Timeout = new TimeSpan(0, 0, 10),
            };
            client.DefaultRequestHeaders.Accept.Clear();
            client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));
            client.DefaultRequestHeaders.AcceptCharset.Add(new StringWithQualityHeaderValue("utf-8"));
            client.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Bearer", API_KEY);

            return client;
        }

        private static Task<HttpResponseMessage> QueueAPIRequest(string url)
        {
            WaitForThrottle();
            return Client.GetAsync(url);
        }

        private static void WaitForThrottle()
        {
            lock (ThrottleLock)
            {
                Thread.Sleep(API_ExpectedThrottle);
            }

            //// ensure the throttler is spinning
            //if (!ThrottleSpinning)
            //{
            //    Thread throttler = new Thread(SpinThrottle)
            //    {
            //        IsBackground = true,
            //        Name = "Thread.Throttler",
            //    };
            //    throttler.Start();
            //    ThrottleSpinning = true;
            //}

            //ThrottleQueue.Enqueue(a =>
            //{

            //});
            //lock (waiting)
            //{
            //    while ()
            //}
        }

        //private static void SpinThrottle()
        //{
        //    while(true)
        //    {
        //        if (ThrottleQueue.TryDequeue(out Action exe))
        //        {
        //            exe();
        //        }
        //        Thread.Sleep(API_ExpectedThrottle);
        //    }
        //}

        static bool TryParseBinding(string binding, out int bindingID)
        {
            switch (binding)
            {
                // We don't care about these types:
                case "QUEST":
                case "UNBOUND":
                case "ON_EQUIP":
                case "ON_USE":
                case "TO_ACCOUNT":
                case "TO_BNETACCOUNT":
                case "HEALTH":
                    bindingID = 0;
                    return false;
                case "ON_ACQUIRE":  // BOP
                    bindingID = 1;
                    return true;
                default:
                    Console.Write("Unhandled Binding Type ");
                    Console.Write(binding);
                    Console.WriteLine();
                    Console.ReadLine();
                    bindingID = 0;
                    return false;
            }
        }

        static bool TryParseInventoryType(string inventoryType, out int inventoryTypeID)
        {
            // https://wow.gamepedia.com/Enum.InventoryType
            switch (inventoryType)
            {
                // Ignore these.
                case "AMMO":
                case "BAG":
                case "NON_EQUIP":
                case "QUIVER":
                case "RELIC":
                    inventoryTypeID = 0;
                    return false;

                // Valid types.
                case "HEAD":
                    inventoryTypeID = 1;
                    return true;
                case "NECK":
                    inventoryTypeID = 2;
                    return true;
                case "SHOULDER":
                    inventoryTypeID = 3;
                    return true;
                case "SHIRT":
                    inventoryTypeID = 4;
                    return true;
                case "BODY":
                case "CHEST":
                case "ROBE":
                    inventoryTypeID = 5;
                    return true;
                case "WAIST":
                    inventoryTypeID = 6;
                    return true;
                case "LEGS":
                    inventoryTypeID = 7;
                    return true;
                case "FEET":
                    inventoryTypeID = 8;
                    return true;
                case "WRIST":
                    inventoryTypeID = 9;
                    return true;
                case "HAND":
                case "HANDS":
                    inventoryTypeID = 10;
                    return true;
                case "FINGER":
                case "FINGER1":
                case "FINGER2":
                    inventoryTypeID = 11;
                    return true;
                case "TRINKET":
                case "TRINKET1":
                case "TRINKET2":
                    inventoryTypeID = 12;
                    return true;
                case "WEAPON":
                    inventoryTypeID = 13;
                    return true;
                case "SHIELD":
                    inventoryTypeID = 14;
                    return true;
                case "RANGED":
                    inventoryTypeID = 15;
                    return true;
                case "BACK":
                case "CLOAK":
                    inventoryTypeID = 16;
                    return true;
                case "TWOHAND":
                case "TWOWEAPON":
                case "TWOHWEAPON":
                    inventoryTypeID = 17;
                    return true;
                // 18 BAG, ignore
                case "TABARD":
                    inventoryTypeID = 19;
                    return true;
                // 20, ROBE = CHEST(5)
                case "MAINHAND":
                case "WEAPONMAINHAND":
                    inventoryTypeID = 21;
                    return true;
                case "OFFHAND":
                case "WEAPONOFFHAND":
                    inventoryTypeID = 22;
                    return true;
                case "HOLDABLE":
                    inventoryTypeID = 23;
                    return true;
                // 24 AMMO, ignore
                case "THROWN":
                    inventoryTypeID = 25;
                    return true;
                case "RANGEDRIGHT":
                    inventoryTypeID = 26;
                    return true;
                // 27 QUIVER, ignore
                // 28 RELIC, ignore
                case "PROFESSION_TOOL":
                    inventoryTypeID = 29;
                    return true;
                case "PROFESSION_GEAR":
                    inventoryTypeID = 30;
                    return true;
                default:
                    Console.Write("Unhandled Inventory Type ");
                    Console.Write(inventoryType);
                    Console.WriteLine();
                    //Console.ReadLine();
                    inventoryTypeID = 0;
                    return false;
            }
        }

        static bool TryParseQuality(string quality, out int qualityID)
        {
            switch (quality)
            {
                case "POOR":
                    qualityID = 0;
                    return true;
                case "COMMON":
                    qualityID = 1;
                    return true;
                case "UNCOMMON":
                    qualityID = 2;
                    return true;
                case "RARE":
                    qualityID = 3;
                    return true;
                case "EPIC":
                    qualityID = 4;
                    return true;
                case "LEGENDARY":
                    qualityID = 5;
                    return true;
                case "ARTIFACT":
                    qualityID = 6;
                    return true;
                case "HEIRLOOM":
                    qualityID = 7;
                    return true;
                case "WOWTOKEN":
                    qualityID = 8;
                    return true;
                default:
                    Console.Write("Unhandled Quality Type ");
                    Console.Write(quality);
                    Console.WriteLine();
                    Console.ReadLine();
                    qualityID = 0;
                    return false;
            }
        }

        static void Parse()
        {
            WaitForParseQueue = true;
            Console.WriteLine("Queueing all of the raw data for " + DateStamp);

            // create a separate thread that will handle parsing the individual items
            Thread threadDataParser = new Thread(ParseData)
            {
                IsBackground = true,
                Name = "DataParser.Thread",
            };
            threadDataParser.Start();
            ProcessObjType(ObjType.item);
            ProcessObjType(ObjType.quest);

            WaitForParseQueue = false;
            Console.WriteLine("Done Queueing the raw data.");
        }

        private static void ProcessObjType(ObjType objtype)
        {
            // items
            if (ProcessObjects[objtype])
            {
                var rawDataDirectory = Directory.CreateDirectory("RAW/" + objtype.ToString() + "s." + DateStamp);
                var allFiles = rawDataDirectory.EnumerateFiles("*.raw").AsParallel();
                allFiles.ForAll(EnqueueFileContents);
            }
        }

        private static void EnqueueFileContents(FileInfo fileInfo)
        {
            var contents = File.ReadAllText(fileInfo.FullName);
            string[] individualDatas = contents.Split(new string[] { Environment.NewLine }, StringSplitOptions.RemoveEmptyEntries);
            if (individualDatas.Length > 500)
            {
                individualDatas.AsParallel().ForAll(ParseDatas.Enqueue);
            }
            else
            {
                foreach (string data in individualDatas)
                {
                    ParseDatas.Enqueue(data);
                }
            }
        }

        private static Dictionary<string, object> ConvertRawData(Dictionary<string, object> subData)
        {
            var dict = new Dictionary<string, object>();
            // add the type for this data
            if (!subData.TryGetValue("_rawtype", out string objType))
            {
                objType = CheckRawType(subData);
            }
            if (subData.TryGetValue("name", out object o)) dict["name"] = o;
            if (subData.TryGetValue("id", out o)) dict[objType + "ID"] = o;

            // New Format 2020-03-26
            if (subData.TryGetValue("level", out int level) && level > 1) dict["iLvl"] = level;
            if (subData.TryGetValue("required_level", out level) && level > 1) dict["lvl"] = new List<object>() { level };
            if (subData.TryGetValue("is_equippable", out bool b) && b) dict["equippable"] = 1;
            subData.TryGetValue("is_repeatable", out bool isRepeatable);
            subData.TryGetValue("is_daily", out bool isDaily);

            // only set repeatable if it exists, API likes to give repeatable + daily which is silly
            if (isRepeatable)
                dict["repeatable"] = 1;
            else if (isDaily)
                dict["isDaily"] = 1;

            if (subData.TryGetValue("quality", out Dictionary<string, object> d))
            {
                if (d.TryGetValue("type", out o) && TryParseQuality(o.ToString(), out int qualityID))
                {
                    dict["quality"] = qualityID;
                }
            }
            if (subData.TryGetValue("item_class", out d))
            {
                if (d.TryGetValue("id", out int id)) dict["class"] = id;
            }
            if (subData.TryGetValue("item_subclass", out d))
            {
                if (d.TryGetValue("id", out int id)) dict["subclass"] = id;
            }
            if (subData.TryGetValue("inventory_type", out d))
            {
                if (d.TryGetValue("type", out o) && TryParseInventoryType(o.ToString(), out int inventoryTypeID))
                {
                    dict["inventoryType"] = inventoryTypeID;
                }
            }
            if (subData.TryGetValue("preview_item", out Dictionary<string, object> preview_item))
            {
                if (preview_item.TryGetValue("binding", out d))
                {
                    if (d.TryGetValue("type", out o) && TryParseBinding(o.ToString(), out int bindingID))
                    {
                        dict["bind"] = bindingID;
                    }
                }
                if (preview_item.TryGetValue("requirements", out Dictionary<string, object> requirements))
                {
                    Parse_requirements(dict, requirements);
                }
                if (preview_item.TryGetValue("spells", out List<object> spells))
                    Parse_spells(dict, spells);
                //if (preview_item.TryGetValue("recipe", out Dictionary<string, object> recipe))
                //    Parse_recipe(dict, recipe);
            }
            // quests have requirements raw
            else if (subData.TryGetValue("requirements", out Dictionary<string, object> requirements))
            {
                Parse_requirements(dict, requirements);
            }
            // check for area info (used for unsorted quests)
            if (subData.TryGetValue("area", out Dictionary<string, object> area))
            {
                Parse_area(dict, area);
            }
            // check for type info (used for unsorted quests)
            if (subData.TryGetValue("type", out Dictionary<string, object> type))
            {
                Parse_type(dict, type);
            }
            // check for category info (used for unsorted quests)
            if (subData.TryGetValue("category", out Dictionary<string, object> category))
            {
                Parse_category(dict, category);
            }
            // check for rewards info (used for quests)
            if (subData.TryGetValue("rewards", out Dictionary<string, object> rewards))
            {
                Parse_rewards(dict, rewards);
            }

            #region Old pre-BFA format
            /*
            if (subData.TryGetValue("requiredSkill", out r) && Convert.ToInt32(r) > 0) dict["requiredSkill"] = r;
            if (subData.TryGetValue("itemSpells", out object itemSpellsRef) && itemSpellsRef is List<object> itemSpells && itemSpells.Count > 0)
            {
                var ignoreItem = false;

                // Inventory Types
                // Some inventory types make this very very easy to calculate.
                if (dict.TryGetValue("inventoryType", out object inventoryTypeRef))
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

                if(subData.TryGetValue("scaledDescription", out object description) && Convert.ToString(description) == "Right Click to summon and dismiss this companion.")
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
                        dict["spellID"] = listOfSpells[0];
                        if (count > 1)
                        {
                            Console.Write("Item [");
                            Console.Write(dict["name"]);
                            Console.Write("] has ");
                            Console.Write(count);
                            Console.WriteLine(" spells!");
                        }
                    }
                }
            }
            */
            #endregion

            return dict;
        }

        private static void Parse_recipe(Dictionary<string, object> dict, Dictionary<string, object> recipe)
        {
            if (recipe.TryGetValue("spells", out List<object> spells))
                Parse_spells(dict, spells);
        }

        private static void Parse_spells(Dictionary<string, object> dict, List<object> spells)
        {
            var ignoreItem = false;

            // Inventory Types
            // Some inventory types make this very very easy to calculate.
            if (dict.TryGetValue("inventoryType", out object inventoryTypeRef))
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

            if (!ignoreItem)
            {
                var listOfSpells = new List<int>();
                foreach (var spellRef in spells)
                {
                    // The extra level of nesting is super assy, Blizzard.
                    if (spellRef is Dictionary<string, object> spellData && spellData.TryGetValue("spell", out Dictionary<string, object> spell))
                    {
                        if (spell.TryGetValue("id", out int spellID))
                        {
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
                                    if (spell.TryGetValue("trigger", out object triggerRef))
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
                    dict["spellID"] = listOfSpells[0];
                    if (count > 1)
                    {
                        Console.Write("Item [");
                        Console.Write(dict["name"]);
                        Console.Write("] has ");
                        Console.Write(count);
                        Console.WriteLine(" spells!");
                    }
                }
            }
        }

        /// <summary>
        /// Parses information from the 'rewards' object into the base dict
        /// </summary>
        /// <param name="dict"></param>
        /// <param name="category"></param>
        private static void Parse_rewards(Dictionary<string, object> dict, Dictionary<string, object> rewards)
        {
            if (rewards.TryGetValue("items", out Dictionary<string, object> itemInfo))
            {
                if (itemInfo.TryGetValue("choice_of", out List<object> choices))
                {
                    foreach (object choice in choices)
                    {
                        if (choice is Dictionary<string, object> choiceInfo)
                        {
                            if (choiceInfo.TryGetValue("item", out Dictionary<string, object> item))
                            {
                                if (item.TryGetValue("id", out int itemID))
                                {
                                    AddGroupItemID(dict, itemID);
                                }
                            }
                        }
                    }
                }
                else if (itemInfo.TryGetValue("items", out List<object> items))
                {
                    foreach (object choice in items)
                    {
                        if (choice is Dictionary<string, object> choiceInfo)
                        {
                            if (choiceInfo.TryGetValue("item", out Dictionary<string, object> item))
                            {
                                if (item.TryGetValue("id", out int itemID))
                                {
                                    AddGroupItemID(dict, itemID);
                                }
                            }
                        }
                    }
                }
            }
        }

        private static void AddGroupItemID(Dictionary<string, object> dict, int itemID)
        {
            if (!dict.TryGetValue("g", out List<object> items))
            {
                dict["g"] = items = new List<object>();

                items.Add(new Dictionary<string, object>() { { "itemID", itemID } });
            }
            else
            {
                foreach (object item in items)
                {
                    if (item is Dictionary<string, object> itemInfo && itemInfo.TryGetValue("itemID", out int existingID) && existingID == itemID)
                        return;
                }

                items.Add(new Dictionary<string, object>() { { "itemID", itemID } });
            }
        }

        /// <summary>
        /// Parses information from the 'type' object into the base dict
        /// </summary>
        /// <param name="dict"></param>
        /// <param name="category"></param>
        private static void Parse_type(Dictionary<string, object> dict, Dictionary<string, object> type)
        {
            if (type.TryGetValue("name", out string name))
            {
                dict["_type"] = name;
            }
        }

        /// <summary>
        /// Parses information from the 'category' object into the base dict
        /// </summary>
        /// <param name="dict"></param>
        /// <param name="category"></param>
        private static void Parse_category(Dictionary<string, object> dict, Dictionary<string, object> category)
        {
            if (category.TryGetValue("name", out string name))
            {
                dict["_category"] = name;
            }
        }

        /// <summary>
        /// Parses information from the 'area' object into the base dict
        /// </summary>
        /// <param name="dict"></param>
        /// <param name="area"></param>
        private static void Parse_area(Dictionary<string, object> dict, Dictionary<string, object> area)
        {
            if (area.TryGetValue("name", out string name))
            {
                dict["_area"] = name;
            }
        }

        /// <summary>
        /// Parses information from the 'requirements' object into the base dict
        /// </summary>
        /// <param name="dict"></param>
        /// <param name="requirements"></param>
        private static void Parse_requirements(Dictionary<string, object> dict, Dictionary<string, object> requirements)
        {
            if (requirements.TryGetValue("skill", out Dictionary<string, object> d) && d.TryGetValue("profession", out d))
            {
                if (d.TryGetValue("id", out int id)) dict["requiredSkill"] = id;
            }
            requirements.TryGetValue("min_character_level", out int minlvl);
            //requirements.TryGetValue("max_character_level", out int maxlvl);
            //if (minlvl > 0 && maxlvl > 0)
            //{
            //    dict["lvl"] = new List<object>() { minlvl, maxlvl };
            //}
            //else
            if (minlvl > 0)
            {
                dict["lvl"] = new List<object>() { minlvl };
            }
            if (requirements.TryGetValue("playable_classes", out d) && d.TryGetValue("links", out List<object> l))
            {
                var list = new List<int>();
                foreach (var entry in l)
                {
                    if (entry is Dictionary<string, object> c && c.TryGetValue("id", out int id) && !list.Contains(id)) list.Add(id);
                }
                list.Sort();
                dict["classes"] = list;
            }
            if (requirements.TryGetValue("classes", out object classes))
            {
                if (!(classes is IEnumerable<object> classesSet))
                {
                    Console.WriteLine($"Bad 'classes': {MiniJSON.Json.Serialize(classes)}");
                }
                else
                {
                    var list = new List<int>();
                    foreach (object entry in classesSet)
                    {
                        if (entry is Dictionary<string, object> c && c.TryGetValue("id", out int id) && !list.Contains(id)) list.Add(id);
                    }
                    list.Sort();
                    //Console.WriteLine($"'classes':{MiniJSON.Json.Serialize(list)}");
                    dict["classes"] = list;
                }
            }
            // 2020-08-19 Blizz seems to have relegated to simply showing ALLIANCE or HORDE for a faction tag instead of listing all races within a given faction
            if (requirements.TryGetValue("faction", out d))
            {
                // items path: factions/value/type/[NAME]
                if (d.TryGetValue("value", out Dictionary<string, object> values))
                {
                    if (values.TryGetValue("type", out string faction))
                    {
                        if (faction == "HORDE")
                        {
                            dict["r"] = 1;
                        }
                        else if (faction == "ALLIANCE")
                        {
                            dict["r"] = 2;
                        }
                        else
                        {
                            // new faction hypeeee
                        }
                    }
                }
                // quests path: factions/type/[NAME] // ah consistency
                else if (d.TryGetValue("type", out string faction))
                {
                    if (faction == "HORDE")
                    {
                        dict["r"] = 1;
                    }
                    else if (faction == "ALLIANCE")
                    {
                        dict["r"] = 2;
                    }
                    else
                    {
                        // new faction hypeeee
                    }
                }
            }
            // "playable_specializations" is also a possible requirement -- i.e. artifacts
            if (requirements.TryGetValue("playable_races", out d))
            {
                Parse_playable_races(dict, d);
            }
            else if (requirements.TryGetValue("races", out List<object> race_list))
            {
                Parse_races(dict, race_list);
            }
        }

        /// <summary>
        /// Parses a 'playable_races' dictionary into a list of races for the data
        /// </summary>
        /// <param name="dict"></param>
        /// <param name="races"></param>
        private static void Parse_playable_races(Dictionary<string, object> dict, Dictionary<string, object> races)
        {
            // items have a 'links' object containing the race requirements
            if (races.TryGetValue("links", out List<object> l))
            {
                Parse_races(dict, l);
            }
        }

        /// <summary>
        /// Parses a 'races' list of objects into a list of races for the data
        /// </summary>
        /// <param name="dict"></param>
        /// <param name="l"></param>
        private static void Parse_races(Dictionary<string, object> dict, List<object> l)
        {
            var list = new List<int>();
            foreach (var entry in l)
            {
                if (entry is Dictionary<string, object> c && c.TryGetValue("id", out int id) && !list.Contains(id)) list.Add(id);
            }

            // Check for Blizzard Mistakes (They love messing up Allied Race ID assignments...)
            //if (list.Contains(34))
            //{
            //    if (list.Contains(2) && !list.Contains(1))
            //    {
            //        // This was supposed to include Maghar Orcs instead... silly Blizzard!
            //        list.Remove(34);
            //        list.Add(36);
            //    }
            //}
            //else if (list.Contains(36))
            //{
            //    if (!list.Contains(2) && list.Contains(1))
            //    {
            //        // This was supposed to include Dark Iron Dwarves instead... silly Blizzard!
            //        list.Remove(36);
            //        list.Add(34);
            //    }
            //}

            //if (list.Contains(35))
            //{
            //    if (list.Contains(2) && !list.Contains(1))
            //    {
            //        // This was supposed to include Mechagnome instead... silly Blizzard!
            //        list.Remove(35);
            //        list.Add(37);
            //    }
            //}
            //else if (list.Contains(37))
            //{
            //    if (!list.Contains(2) && list.Contains(1))
            //    {
            //        // This was supposed to include Vulpera instead... silly Blizzard!
            //        list.Remove(37);
            //        list.Add(35);
            //    }
            //}

            //if (list.Contains(31))
            //{
            //    if (list.Contains(2) && !list.Contains(1))
            //    {
            //        // This was supposed to include Kul'Tiran instead... silly Blizzard!
            //        list.Remove(31);
            //        list.Add(32);
            //    }
            //}
            //else if (list.Contains(32))
            //{
            //    if (!list.Contains(2) && list.Contains(1))
            //    {
            //        // This was supposed to include Zandalari Trolls instead... silly Blizzard!
            //        list.Remove(32);
            //        list.Add(31);
            //    }
            //}

            list.Sort();
            dict["races"] = list;
        }

        /// <summary>
        /// Pulls the _links/self/href path of the nested dictionaries to verify the type of this raw data
        /// </summary>
        /// <param name="subData"></param>
        /// <returns></returns>
        private static string CheckRawType(IDictionary<string, object> subData)
        {
            if (subData is Dictionary<string, object> subDataDict && subDataDict.TryGetValue("_links", out Dictionary<string, object> links))
            {
                if (links.TryGetValue("self", out Dictionary<string, object> self))
                {
                    if (self.TryGetValue("href", out string href))
                    {
                        string[] urlChunks = href.Split('/');
                        // https://us.api.blizzard.com/data/wow/quest/2?namespace=static-8.3.7_35114-us
                        if (urlChunks.Length > 1)
                            return urlChunks[urlChunks.Length - 2];
                    }
                }
            }
            return "UNKNOWN";
        }

        private static void ParseData()
        {
            var dataItems = new SortedList<int, object>();
            var dataQuests = new SortedList<int, object>();
            WaitForParsingData = true;
            while (WaitForParseQueue || ParseDatas.Count > 0)
            {
                if (ParseDatas.TryDequeue(out string contents))
                {
                    if (MiniJSON.Json.Deserialize(contents) is Dictionary<string, object> rawData)
                    {
                        if (NonEmptyRawData(rawData))
                        {
                            Dictionary<string, object> parsed = ConvertRawData(rawData);
                            // only put things in the DB if they have more than just an ID
                            if (parsed != null && parsed.Count > 1)
                            {
                                if (parsed.TryGetValue("itemID", out object itemID) && int.TryParse(itemID.ToString(), out int itemVal))
                                {
                                    Console.WriteLine("Parsed Item : " + itemID.ToString() + "\t\tQueue: " + ParseDatas.Count.ToString());
                                    try
                                    {
                                        dataItems.Add(itemVal, parsed);
                                    }
                                    catch (Exception ex)
                                    {
                                        Console.WriteLine($"Failed adding parsed Item {itemVal}. {ex.Message}");
                                    }
                                }
                                else if (parsed.TryGetValue("questID", out object questID) && int.TryParse(questID.ToString(), out int questVal))
                                {
                                    Console.WriteLine("Parsed Quest: " + questID.ToString() + "\t\tQueue: " + ParseDatas.Count.ToString());
                                    try
                                    {
                                        dataQuests.Add(questVal, parsed);
                                    }
                                    catch (Exception ex)
                                    {
                                        Console.WriteLine($"Failed adding parsed Quest {questVal}. {ex.Message}");
                                    }
                                }
                            }
                        }
                    }
                }
            }

            if (ProcessObjects[ObjType.item])
                File.WriteAllText(".\\DBs\\" + "itemDB-" + DateStamp + ".json", MiniJSON.Json.Serialize(new Dictionary<string, object> { { "items", dataItems.Values.ToList() } }));
            if (ProcessObjects[ObjType.quest])
                File.WriteAllText(".\\DBs\\" + "questDB-" + DateStamp + ".json", MiniJSON.Json.Serialize(new Dictionary<string, object> { { "quests", dataQuests.Values.ToList() } }));

            Console.WriteLine("Done exporting the data.");
            WaitForParsingData = false;
        }

        /// <summary>
        /// Whether this raw data contains an id and additional properties, otherwise useless to save
        /// </summary>
        /// <param name="dict"></param>
        /// <returns></returns>
        private static bool NonEmptyRawData(Dictionary<string, object> dict)
        {
            return dict.TryGetValue("id", out _) && dict.Count > 1;
        }

        private static string GetExceptionMessage(Exception ex)
        {
            if (ex is AggregateException aggEx)
            {
                return string.Join(" / ", aggEx.InnerExceptions.Select(e => GetExceptionMessage(e)));
            }
            else if (ex.InnerException != null)
            {
                return GetExceptionMessage(ex.InnerException);
            }
            else
            {
                return ex.Message;
            }
        }

        public static string GetAccessToken(string clientId, string clientSecret)
        {
            using (var request = new HttpRequestMessage(HttpMethod.Post, "https://oauth.battle.net/token"))
            {
                // Set the Basic Auth header
                var authValue = Convert.ToBase64String(Encoding.UTF8.GetBytes($"{clientId}:{clientSecret}"));
                request.Headers.Authorization = new AuthenticationHeaderValue("Basic", authValue);

                // Set the form content
                request.Content = new StringContent("grant_type=client_credentials", Encoding.UTF8, "application/x-www-form-urlencoded");

                // Send the request
                using (var tempClient = new HttpClient())
                {
                    var response = tempClient.SendAsync(request).GetAwaiter().GetResult();
                    response.EnsureSuccessStatusCode();

                    // Return the response body (JSON string)
                    var tokenJson = response.Content.ReadAsStringAsync().GetAwaiter().GetResult();
                    var tokenData = (Dictionary<string, object>)Json.Deserialize(tokenJson);
                    if (tokenData.TryGetValue("access_token", out string access_token))
                    {
                        return access_token;
                    }
                }

                return null;
            }
        }

    }
}
