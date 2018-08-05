"steam/cached/SettingsSubInterface.res"
{
	styles
	{
		CSubPanelOptionsInterface
		{
			render_bg
			{
				0="image(x0+16,y0+7,x1,y1,graphics/metro/labels/settings/interface)"
			}
		}
	}
	layout
	{
		region { name=box margin-left=16 margin-right=16 }

		place { region=box control="LanguageCombo" width=310 }
		place { region=box control="FavoriteWindowCombo" width=310 }
		place { region=box control="SkinCombo" width=310 }
		place { region=box control="Label4,LanguageCombo,TranslationLabel" y=17 margin-top=16 height=24 dir=down }
		place { region=box start=TranslationLabel control="Label2,FavoriteWindowCombo" y=8 height=24 dir=down }
		place { region=box start=FavoriteWindowCombo control="Label3,SkinCombo" y=8 height=24 dir=down }
		place { region=box start=SkinCombo control="AutoLaunchCheck,DPIScalingCheck,BigPictureModeCheck,UrlBarCheck,GPUWebViewCheck,DWriteCheck,H264HWAccelCheck,NotifyAvailableGamesCheck" y=8 spacing=4 width=max dir=down }
		place { region=box start=NotifyAvailableGamesCheck control="SetJumpListOptionsButton" dir=down }
		//Hidden
		place { control="Label1,Divider1,Divider2,Divider3" dir=down margin-left=-999 }
	}
}