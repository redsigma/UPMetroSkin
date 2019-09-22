"Friends/FriendsDialog.res"
{
	styles
	{
		AddFriendsButton
		{
			bgcolor="none"
			render_bg {}
			image="graphics/metro/icons/navbar/friends_add"
			padding-left=2
			padding-right=6
		}
		AddFriendsButton:hover
		{
			bgcolor=white05
		}
		AddFriendsButton:active
		{
			bgcolor=white10
		}

		PageTab
		{
			inset-left=2
			font-family=semibold
			textcolor="White45"
			font-style="Uppercase"
			font-weight=400
			bgcolor="none"
			render_bg
			{
				0="fill(x0,y1-1,x1,y1,Header_Dark)"
			}
		}
		PageTab:hover
		{
			textcolor=White75
		}
		PageTab:selected
		{
			textcolor=White
		}

		FriendsSearch
		{
			bgcolor="none"
			render_bg
			{
				1="fill(x0,y1-1,x1,y1,White20)"
			}
		}
		FriendsSearch:empty
		{
			image="graphics/search_lg"
			render_bg{}
		}
		
		//Hidden
		FriendsSearchIcon
		{
			bgcolor="none"
			textcolor="none"
		}
	}

 	layout
 	{
		//Header
		place { control="addFriendsButton" height=39 align=right margin-right=1 end-right=frame_minimize }
		place { control="friends_search" x=41 y=7 width=max end-right=addFriendsButton margin-right=32 }
		place { control="MenuBar" height=38 width=38 x=1 y=1 }

		//Content
		place { control="FriendPanelSelf" x=8 y=44 align=left }
		place { start="FriendPanelSelf" control="DownLabel" dir=down align=left margin=8 width=max margin-right=8 }
		place { start="DownLabel" control="NoFriendsAddFriendButton" dir=down align=left margin=8 }
		place { control="NoFriendsAddFriendButton" start=DownLabel dir=down align=left y=8 width=84 height=28 }
		place { start=FriendPanelSelf control="FriendsDialogSheet" x=-8 align=left width=max height=max dir=down margin-bottom=1 }

		//Hidden
		place { control="friends_search_icon" margin-left=-999 }
	}
}
