E2Lib.RegisterExtension("tcore", true)

--[[

hook.Add("PlayerSay","hideChat", function(ply, text, teamchat)
	--local entry = { text, CurTime(), ply, teamchat }
	--TextList[ply:EntIndex()] = entry
	--TextList.last = entry

	runByChat = 1
	chipHideChat = false
	local hideCurrent = false
	for e , _ in pairs(ChatAlert) do
		if IsValid(e) then
			chipHideChat = nil
			--e:Execute()
			--if chipHideChat ~= nil and ply == e.player then
			if chipHideChat then
				hideCurrent = chipHideChat
			end
		else
			ChatAlert[e] = nil
		end
	end
	runByChat = 0

	if hideCurrent then return "" end
end)


]]

-- e2 functions -----------------------------------

--e2function string plyHideChat(ply,adwa)

--	print("----------------------------------------------")

--end




















