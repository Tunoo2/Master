E2Lib.RegisterExtension("tcore", true)


-- chat ---

	local ChatAlert = {}
	local chipHideChatPly = {}

--



--[[************************************************************************************************]]--




hook.Add("PlayerSay","hideChat", function(ply)

	local hideCurrent = 0 

	for e , _ in pairs(ChatAlert) do
		if IsValid(e) then
			
			e:Execute() -- execute's the chip , does magic dont touch!
			
			if chipHideChatPly[ply] == true then
				hideCurrent = 1
				chipHideChatPly[ply] = nil
			end
		end
	
	end

	if hideCurrent == 1 then 
		hideCurrent = 0
		return ""  
	end

end)



-- e2 functions -----------------------------------


__e2setcost(3)

e2function void runOnChat(activate)
	if activate ~= 0 then
		ChatAlert[self.entity] = true
		--self.player:ChatPrint("GEIILLLL")
	else
		ChatAlert[self.entity] = nil
	end

end

-- hides a players chat------------------------------

__e2setcost(5)

e2function void plyHideChat(entity ply , number hide)
	if ply:IsPlayer()  then
		chipHideChatPly[ply] = true
	end
end




 














