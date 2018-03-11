--[[
local DermaPanel = vgui.Create( "DFrame" )
DermaPanel:SetPos( 100, 100 )
DermaPanel:SetSize( 300, 200 )
DermaPanel:SetTitle( "My new Derma frame" )
DermaPanel:SetDraggable( true )
DermaPanel:SetSizable(true)
DermaPanel:SetKeyBoardInputEnabled(false)
DermaPanel:MakePopup()
DermaPanel:SetKeyBoardInputEnabled(false)

]]

--[[
local frame = vgui.Create( "DFrame" )
frame:SetSize( 400, 200 )
frame:Center()
frame:MakePopup()

local TextEntry = vgui.Create( "DTextEntry", frame ) -- create the form as a child of frame
TextEntry:SetPos( 25, 50 )
TextEntry:SetSize( 75, 85 )
TextEntry:SetText( "Placeholder Text" )
TextEntry.OnEnter = function( self )
	chat.AddText( self:GetValue() )	-- print the form's text as server text
end






]]


gui.EnableScreenClicker( false )



