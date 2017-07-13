"steam/cached/SettingsSubFriends.res"
{
	styles
	{
		Label
		{
			textcolor="White75"
			selectedtextcolor="White75"
			font-family="semilight"
			font-weight=300
			font-style=regular
		}
		URLLabel
		{
			textcolor="White"
			selectedtextcolor="White"
			font-family="semilight"
			font-weight=300
			font-style=regular
		}
	}
	layout
	{
		//Avatar
		region { name=crop y=31 width=46 height=46 }
		place { control="URLLabel1" margin-right=8 }
		place { control="ImageAvatar" x=7 y=37 width=32 height=32 }
		place { region=crop control="ImageAvatarOverlay" width=32 height=32 margin-top=-1 }

		//Name Entry
		place { control="NameEntry" height=34 width=260 x=34 y=36 margin-left=14 }

		//Checks
		place { control="AutoSignIntoFriendsCheck,ShowTimeInChatLogCheck,AlwaysNewChatCheck" y=65 height=24 margin-top=16 dir=down spacing=0 }

		//Notifications | 1st column
		place { control="Divider1" y=163 width=max }
		place { start=Divider1 control="Label4,JoinGameNotifyCheck,JoinGamePlaySoundCheck,Label6,ReceiveMessageNotifyCheck,ReceiveMessagePlaySoundCheck" dir=down margin-top=8 end-right=Label5 }

		place { start=ReceiveMessagePlaySoundCheck control=Divider2 y=10 dir=down width=max }
		place { start=Divider2 control=Label7,FlashModeAlways,FlashModeMinimized,FlashModeNever dir=down margin-top=8 }

		//Notifications | 2nd column
		place { control=Label5 x=271 y=173 margin-left=8 }
		place { start=Label5 control="FriendOnlineNotifyCheck,FriendOnlinePlaySoundCheck,LabelGroupEvents,EventsAndAnnouncementsNotifyCheck,EventsAndAnnouncementsPlaySoundCheck" dir=down }

		//Hidden
		place { control="Label1,Label2,Label3,URLLabel2" width=1 height=1 align=right }
	}
}