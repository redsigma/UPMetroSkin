"friends/ChatRoomDlg.res"
{
	styles
	{
		CChatSplitter
		{
			bgcolor=ClientBG
			render_bg
			{
			1="fill( x0, y0, x0+1, y1, FrameBorder )"
			}
		}

		label
		{
			textcolor=White45
			font-style=uppercase
			font-size=12
		}

		Button
		{
			bgcolor=TextEntry
			image="graphics/metro/icons/chat/send"
			padding-left=4
		}
		Button:hover
		{
			bgcolor=Focus
		}
		Button:active
		{
			bgcolor=Focus
		}
		Button:disabled
		{
			image="graphics/metro/icons/chat/send_d"
		}

		Chat_MenuButton_withChrome
		{
			bgcolor="none"
			render_bg{}
			image="graphics/tab_close_def"
			padding-left=-4
		}
		Chat_MenuButton_withChrome:hover
		{
			bgcolor="none"
			image="graphics/tab_close_hov"
		}
		Chat_MenuButton_withChrome:active
		{
			bgcolor="none"
			image="graphics/tab_close_hov"
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

		place { control="Splitter" region=topregion height=max width=2 align=right end-right=UserList }
		place { control="UserList" region=topregion start=Splitter height=max align=right spacing=4 }

		//Voice Chat Bar
		place { control="VoiceBar" region=topregion width=max height=54 end-right=VoiceChat }

		//Voice Chat Close Button
		place { control="VoiceChat" region=topregion start=VoiceBar align=right margin=4 width=16 height=16 end-right=Splitter }

		//Bar Position Info
		place { control="TradeInviteBar,GameInviteBar,ChatInfoBar,BIBar,BABar" region=topregion start=VoiceBar width=max height=54 dir=down end-right=Splitter }

		//Chat History
		place { control="ChatHistory" region=topregion start=BABar width=max height=max dir=down end-right=Splitter }

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
