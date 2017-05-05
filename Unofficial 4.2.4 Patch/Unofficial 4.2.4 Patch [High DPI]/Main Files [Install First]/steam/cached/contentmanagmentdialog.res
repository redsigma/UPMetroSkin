"steam/cached/contentmanagmentdialog.res"
{
	styles
	{
		ListPanelColumnHeader
		{
			padding-left=4
		}
		ListPanel
		{
			padding-left=8
		}
		Label
		{
			textcolor=white
			font-size=16 
			font-size=12 [$OSX||$LINUX]
		}
		"CContentManagmentDialog FrameTitle"
		{
			textcolor="White"
			padding-left=10
			font-family="semilight"
			font-weight=300
			font-size=28
			font-size=24 [$OSX||$LINUX]
			render_bg
			{
				0="fill( x0, y0, x1, y1, Header_Dark)"
				1="fill( x0, y1-1, x1, y1, FrameBorder)"
			}
			padding-bottom=33
			minimum-height=76
		}
	}

	layout
	{
		place { control="frame_captiongrip" width=max height=75 }

		place { control="Label1" x=16 y=44 width=max margin-right=8 }
		region { name="bottom" align=bottom height=44 margin=8 }
		place { control="InstallFoldersList" width=max height=max margin-top=76 margin-bottom=44 }
		place { control="AddFolderButton" region="bottom" height=28 align=left }
		place { control="CloseButton" region="bottom" spacing=6 width=84 height=28 align=right }
	}
}