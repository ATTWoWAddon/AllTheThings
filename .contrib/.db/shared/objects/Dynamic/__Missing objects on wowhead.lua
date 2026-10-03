local ObjectDB = ObjectDB; for objectID,objectData in pairs({
	--[[ -- TEMPLATE
	[00000] = {
		readable = "TEMPLATE",
		text = {
			-- TODO: en = "",
			-- TODO: es = "",
			-- TODO: mx = "",
			-- TODO: de = "",
			-- TODO: fr = "",
			-- TODO: it = "",
			-- TODO: pt = "",
			-- TODO: ru = "",
			-- TODO: ko = "",
			-- TODO: cn = "",
			-- TODO: tw = "",
		},
	},
	--]]
})
do
	objectData.ignorewowhead = true
	ObjectDB[objectID] = objectData
end
