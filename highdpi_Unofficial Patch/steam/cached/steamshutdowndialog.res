"steam/cached/steamshutdowndialog.res"
{
	styles
	{
		Label
		{
			textcolor=white
			font-family=basefont
			font-size=16
		}
	}
	layout
	{
		place { control=InfoLabel,Throbber align=top-center width=max y=48 margin=24 margin-top=0 margin-bottom=0 }
		region { name="right" align=right height=max width=192 margin=8 margin-top=0 }
		place { control="ForceQuitButton,HideDialogButton" region=right align=bottom width=84 height=28 spacing=8 margin=0 }
	}
}