-- App locals
local _, app = ...;

-- Global locals
local ipairs, pairs, tinsert, tremove =
	  ipairs, pairs, tinsert, tremove;

-- Implementation
app:CreateWindow("Titles", {
	AllowCompleteSound = true,
	IsDynamicCategory = true,
	Commands = { "atttitles" },
	OnInit = function(self, handlers)
		self:SetData(app.CreateRawText(PAPERDOLL_SIDEBAR_TITLES, {
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
							titles[titleID] = self.BuildCategory(data, headers, matches, app.CreateTitle(titleID));
						end
					end
					local honorTitlesHeaderID = app.HeaderConstants.HONOR_TITLES;
					if honorTitlesHeaderID and not headers[honorTitlesHeaderID] then
						local searchResults = app.SearchForField("headerID", honorTitlesHeaderID);
						if searchResults and #searchResults > 0 then
							local header = app.CreateCustomHeader(honorTitlesHeaderID);
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
						else
							header.SortType = "text";
						end
					end
					data.SortType = "text";
				end
			end
		}));
	end,
});
