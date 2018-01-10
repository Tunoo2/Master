print("Hello World! ----------------------------------------------------------------------------------------")


Frame = vgui.Create("DFrame")
function Frame:Paint( w, h )
	draw.RoundedBox( 0, 0, 0, w, h, Color( 70, 70, 70, 255 ) )
	draw.RoundedBox( 0, 0, 0, w, 25, Color( 100, 100, 100, 255 ) )


end
Frame:Center()
--Frame:SetPos( 5, 5 )
Frame:SetSize( 300, 150 )
Frame:SetTitle( "Name window" )
Frame:SetVisible( true )
Frame:SetDraggable( true )
Frame:ShowCloseButton( true )
Frame:MakePopup()