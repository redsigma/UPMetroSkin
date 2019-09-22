"friends/ChatRoomDlgFriend.res"
{
	styles
	{
		label
		{
			textcolor=White45
			font-style=uppercase
			font-size=12
		}

		controlbutton
		{
			bgcolor="none"
			render_bg{}
			image="graphics/tab_close_def"
			padding-left=-4
		}
		controlbutton:hover
		{
			bgcolor="none"
			image="graphics/tab_close_hov"
		}
		controlbutton:active
		{
			bgcolor="none"
			image="graphics/tab_close_hov"
		}

		Button
		{
			bgcolor=TextEntry
			render_bg{}
			image="graphics/metro/icons/chat/send"
			padding-left=4
		}
		Button:hover
		{
			bgcolor="TextEntry"
			render_bg
			{
				0="fill(x0,y0,x1,y1,white05)"
			}
		}
		Button:active
		{
			bgcolor=Focus
			render_bg{}
		}
		Button:disabled
		{
			bgcolor=TextEntry
			render_bg{}
			image="graphics/metro/icons/chat/send_d"
		}

		"RichText url"
		{
			font-family=semibold
			font-style=uppercase
		}

		ScrollBar
		{
			inset-bottom=20
		}
	}

	layout
	{
		//Title Panel
		place { control="TitlePanel" x=0 y=0 height=56 width=max margin-right=16 end-right=ChatActionsButton }

		//Menu Button
		place { control="ChatActionsButton" height=54 width=54 align=right }

		//ChatHistory Region
		region { name=topregion y=55 height=max width=max align=right margin-bottom=61 margin-right=1 }

		//Voice Chat Bar
		place { control="VoiceBar" region=topregion width=max height=54 end-right=VoiceChat }

		//Voice Chat Close Button
		place { control="VoiceChat" region=topregion start=VoiceBar align=right margin=4 width=16 height=16 }

		//Bar Position Info
		place { control="TradeInviteBar,GameInviteBar,ChatInfoBar,BIBar,BABar" region=topregion start=VoiceBar width=max height=54 dir=down }

		//Chat History
		place { control="ChatHistory" region=topregion start=BABar width=max height=max dir=down margin-bottom=-20 }

		//Bottom Region
		region { name=bottomregion align=bottom height=59 width=max }

		//Text Box
		place { control="TextEntry" region=bottomregion height=40 width=max align=bottom end-right=EmoticonButton }

		//Emoticon Menu
		place { control="EmoticonButton,SendButton" region=bottomregion start=TextEntry height=40 width=40 align=right dir=right margin-right=1 }

		//Last Message Received
		place { control="StatusLabel" region=bottomregion height=19 width=max align=top margin-left=8 }
	}
}
