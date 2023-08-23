-- App locals
local appName, app = ...;

-- Global locals
local ipairs, pairs, tinsert, tremove =
	  ipairs, pairs, tinsert, table.remove;

-- Implementation
app:GetWindow("Titles", {
	parent = UIParent,
	Silent = true,
	AllowCompleteSound = true,
	OnInit = function(self, handlers)
		SLASH_ATTTITLES1 = "/atttitles";
		SlashCmdList["ATTTITLES"] = function(cmd)
			self:Toggle();
		end
		self.data = {
			text = PAPERDOLL_SIDEBAR_TITLES,
			icon = app.asset("Category_Titles"),
			description = "This list shows you all of the titles that you can collect.",
			visible = true,
			expanded = true,
			back = 1,
			g = {},
			OnUpdate = function(data)
				local g = data.g;
				if #g < 1 then
					local headers, titles = {}, {};
					for i,matches in pairs(app.SearchForFieldContainer("titleID")) do
						local titleID = tonumber(i);
						if not titles[titleID] then
							local titleIDs = matches[1].titleIDs;
							if titleIDs then
								for index,j in ipairs(titleIDs) do
									if not titles[j] then
										local titleObject = app.CreateTitle(j, { ["playerGender"] = index == 1 and 2 or 3 });
										titles[j] = self.BuildCategory(data, headers, matches, titleObject);
										titleObject.OnUpdate = titleObject.OnUpdateForSpecificGender;
									end
								end
							else
								titles[titleID] = self.BuildCategory(data, headers, matches, app.CreateTitle(titleID));
							end
						end
					end
					local honorTitlesHeaderID = app.HeaderConstants.HONOR_TITLES;
					if honorTitlesHeaderID and not headers[honorTitlesHeaderID] then
						local searchResults = app.SearchForField("headerID", honorTitlesHeaderID);
						if searchResults and #searchResults > 0 then
							header = app.CreateNPC(honorTitlesHeaderID);
							headers[honorTitlesHeaderID] = header;
							tinsert(g, header);
							header.parent = self;
							header.u = searchResults[1].u;
							header.g = searchResults[1].g;
							header.ignoreSort = true;
						end
					end
					for i=#g,1,-1 do
						local header = g[i];
						if header.g and #header.g < 1 and header.headerID and header.key == "headerID" then
							headers[header.headerID] = nil;
							tremove(g, i);
						end
					end
					app.Sort(g, app.SortDefaults.Name, true);
				end
			end
		};
	end,
	OnLoad = function(self, settings)
		if settings.Progress then
			self.data.progress = settings.Progress;
			self.data.total = settings.Total;
		end
	end,
	OnSave = function(self, settings)
		settings.Progress = self.data.progress;
		settings.Total = self.data.total;
	end,
});