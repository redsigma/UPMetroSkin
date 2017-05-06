"Steam/Cached/LaunchParametersDialog.res"
{
	styles
	{
		Label
		{
			textcolor=White
			font-size=16 
			font-size=12 [$OSX||$LINUX]
		}
		"CGameLaunchParametersDialog FrameTitle"
		{
			textcolor="White"
			padding-left=8
			padding-right=80
			font-family="semilight"
			font-weight=300
			font-size=28
			font-size=24 [$OSX||$LINUX]
			render_bg
			{
				0="fill( x0, y0, x1, y1, Header_Dark)"
				1="fill( x0, y1-1, x1, y1, FrameBorder)"
			}
			padding-bottom=28
			minimum-height=76
		}
	}
	layout
	{
		place { control="frame_captiongrip" width=max height=75 }
		place { control=label1 x=16 y=42 width=max margin-right=8 }
		//Bottom
		region { name=bottom align=bottom height=44 margin=8 }
		place { control="Button2,Button1" region=bottom align=right spacing=6 height=28 width=84 }
	}
}