E2Lib.RegisterExtension("tcore", true)

local function tableToE2Table(data)
	local e2table = {n={},ntypes={},s={},stypes={},size=0}
	local size = 0

	for k,v in pairs( data ) do
		size = size + 1
		local vtype = type(v)
		local indextype = string.sub(type(k),1,1)
		if vtype == "boolean" then
			e2table[indextype.."types"][k] = "n"
			e2table[indextype][k] = v and 1 or 0
		elseif vtype == "table" then
			e2table[indextype.."types"][k] = "t"
			e2table[indextype][k] = tableToE2Table(v)
		elseif type(k) == "number" then
			e2table[indextype.."types"][k] = "n"
			e2table[indextype][k] = v
		elseif type(k) == "string" then
			e2table[indextype.."types"][k] = "s"
			e2table[indextype][k] = v
		else
			ErrorNoHalt("Unknown type detected key:"..vtype.." value"..v)
		end
	end
	e2table.size = size
	return e2table
end

-- chat ---

	local ChatAlert = {}
	local chipHideChatPly = {}

--


--[[************************************************************************************************]]--




hook.Add("PlayerSay","hideChat", function(ply)

	local hideCurrent = 0 


		if IsValid(e) then
			
			e:Execute() -- execute's the chip , does magic dont touch!
			
			if chipHideChatPly[ply] == true then
				hideCurrent = 1
				chipHideChatPly[ply] = nil
			end
		end
	
	if hideCurrent == 1 then 
		hideCurrent = 0
		return ""  
	end

end)



----------------------------------- e2 functions -----------------------------------


--[[ 
__e2setcost(3)

e2function void runOnChat(activate)
	if activate ~= 0 then
		ChatAlert[self.entity] = true
		--self.player:ChatPrint("GEIILLLL")
	else
		ChatAlert[self.entity] = nil
	end

end
]]


-- hides a players chat------------------------------

__e2setcost(5)

e2function void entity:plyHideChat(number hide)
	if this:IsPlayer() then
		if (hide~=0) then
			chipHideChatPly[this] = true
		end
	end
end


-- gives the addons on the server as table with info's ------------------------------

e2function table addons()
	
	GA = engine.GetAddons()
	local RetT = {}

	for i , addon in pairs(GA) do
		RetT[addon.title] = {
			["downloaded"]=addon.downloaded,
			["mounted"]=addon.mounted,
			["workshop id"]=addon.wsid,
			["tags"] = addon.tags
		}
		print(type(addon.tags))
	end

	return tableToE2Table(RetT)

end

-- sortArray ------------------------------------------------------------

e2function array sortArray(array array,string func)

	local sk = func or "<"
	local ret  = array

	if sk == "<" then
		table.sort( ret , function(a,b) return a < b end )
	elseif sk == ">" then
		table.sort( ret , function(a,b) return a > b end )
	end

	return ret
end














