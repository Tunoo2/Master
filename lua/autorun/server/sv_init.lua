--[[

	local list = file.Find("entities/gmod_wire_expression2/core/custom/vgui_elements/client/*.lua", "LUA")
	for _, filename in pairs(list) do
		AddCSLuaFile("entities/gmod_wire_expression2/core/custom/vgui_elements/client/"..filename)
	end

]]

--[[ Console Command ---------------------------------------------]]

util.AddNetworkString("console_Command_add")
util.AddNetworkString("console_Command_remove")
util.AddNetworkString("console_Command_clk")