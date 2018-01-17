
net.Receive("console_Command_add",function()

	local cmd = net.ReadString()


	local function callback(ply,cmd,args)
		net.Start("console_Command_clk")
			net.WriteTable(args)
		net.SendToServer() 

	end

	concommand.Add(cmd,callback)

end)




