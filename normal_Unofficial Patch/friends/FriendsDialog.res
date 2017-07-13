//fat

"Friends/FriendsDialog.res"
{
	controls
	{
		"FriendsDialog"
		{
			"ControlName"   "CFriendsDialog"
			"fieldName"   "FriendsDialog"
			"xpos"    "2123"
			"ypos"    "549"
			"wide"    "356"
			"tall"    "746"
			"AutoResize"    "1"
			"PinCorner"   "0"
			"enabled"   "1"
			"paintbackground"   "1"
			"settitlebarvisible"    "1"
			style="FriendsPanel"    
			closeonescape=1
		}
		"BuddyList"
		{
			"ControlName" "CFriendsListSubPanel"
			tabposition=1
		}
		"frame_title"
		{
			"ControlName"	"Label"
			"labelText"   "#SteamRootFriends"
			"xpos"    "0"
			"ypos"    "8"
			style="FriendsTitle"
			"textAlignment"   "west" 
		}
		"DownLabel"
		{
			"ControlName"   "Label"
			"fieldName"   "DownLabel"
			"xpos"    "10"
			"ypos"    "85"
			"wide"    "336"
			"tall"    "80"
			"AutoResize"    "1"
			"PinCorner"   "0"
			"visible"   "0"
			"enabled"   "1"
			"paintbackground"   "1"
			"labelText"   "#Friends_NoFriendsInList"
			"textAlignment"   "north-west"
			"wrap"    "1"
		}
		"MenuBar"
		{
			style="RootMenu"
			"ControlName"   "MenuBar"
			"fieldName"   "MenuBar"
			"xpos"    "29"
			"ypos"    "2"
			"wide"    "75"
			"tall"    "27"
			"AutoResize"    "0"
			"PinCorner"   "0"
			"enabled"   "1"
			"paintbackground"   "1"
			zpos="-1" 
		}
		"FriendPanelSelf"
		{
			"ControlName"		"CFriendPanel"
			"fieldName"		"FriendPanelSelf"
			"tall"		"42"
			"AutoResize"		"0"
			"PinCorner"		"0"
			"paintbackground"		"1"
		}
		"AddFriendsButton"
		{
			style="AddFriendsButton"
			"ControlName"   "Button"
			"fieldName"   "AddFriendsButton"
			"xpos"    "10"
			"ypos"    "707"
			"wide"    "150"
			"tall"    "24"
			"AutoResize"    "0"
			"PinCorner"   "2"
			"visible"   "1"
			"enabled"   "1"
			"tabPosition"   "3"
			"paintbackground"   "1"
			"labelText"   "#Friends_AddFriend"
			"textAlignment"   "west"
			"wrap"    "0"
			"Default"   "0"
			"selected"    "0"
		}
		"NoFriendsAddFriendButton"
		{
			"ControlName"   "Button"
			"fieldName"   "NoFriendsAddFriendButton"
			"xpos"    "10"
			"ypos"    "129"
			"wide"    "200"
			"tall"    "24"
			"AutoResize"    "0"
			"PinCorner"   "0"
			"visible"   "0"
			"enabled"   "1"
			"paintbackground"   "1"
			"labelText"   "#Friends_AddFriend"
			"textAlignment"   "west"
			"wrap"    "0"
			"Default"   "0"
			"selected"    "0"
		}
		"FriendsState"
		{
			"ControlName"   "EditablePanel"
			"fieldName"   "FriendsState"
			"xpos"    "6"
			"ypos"    "52"
			"wide"    "310"
			"tall"    "457"
			"AutoResize"    "0"
			"PinCorner"   "0"
			"visible"   "0"
			"enabled"   "1"
			"paintbackground"   "1"
		}
		friends_search { ControlName=TextEntry maxchars=16 hintText="#steam_library_search" style="FriendsSearch" unicode=1 tabposition=2 }
		friends_search_icon	{ ControlName=Label style="FriendsSearchIcon" zpos="4" }		
	}

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

		FriendsSearchIcon
		{
			bgcolor=TextEntry
			render_bg{}
			image="graphics/search_lg"
			padding-left=12
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
				0="fill(x0,y1,x1,y1+1,Black25)"
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
	}

 	layout
 	{
		//Header
		region { name=top align=top y=40 height=40 }
		place { control="addFriendsButton" height=39 align=right margin-right=1 end-right=frame_minimize }
		place { control="MenuBar" height=38 width=38 x=1 y=1 }

		//Search
		place { control="friends_search_icon" region=top height=38 width=38 x=1 }
		place { control="friends_search" region=top start=friends_search_icon height=38 width=max }

		//Content
		place { start="friends_search_icon" control="FriendPanelSelf" x=8 y=4 align=left dir=down }
		place { start="FriendPanelSelf" control="DownLabel" dir=down margin=8 width=max margin-right=8 }
		place { start="DownLabel" control="NoFriendsAddFriendButton" dir=down align=left margin=8 }
		place { control="NoFriendsAddFriendButton" start=DownLabel dir=down align=left y=8 width=84 height=28 }
		place { start=FriendPanelSelf control="FriendsDialogSheet" x=-8 align=left width=max height=max dir=down margin-bottom=1 }	
 	}
}