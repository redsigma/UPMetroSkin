"steam/cached/SettingsSubVoice.res"
{
	styles
	{
		CSettingsSubVoice
		{
			render_bg
			{
				0="image(x0,y0+8,x1,y1, graphics/metro/labels/settings/device)"
				1="image(x0,y0+135,x1,y1, graphics/metro/labels/settings/voicechat)"
			}
		}
	}
	layout
	{
		//First
		place { control="Label1" x=0 y=36 dir=down spacing=6 }
		place { control="DeviceName" start=Label1 y=8 dir=down spacing=6 width=320 }
		place { control="ChangeDeviceButton,ReinitAudio" width=156 margin-top=85 spacing=6 y=8 dir=right }

		place { control="MicMeter2" x=8 y=155 }

		//When Active
		place { control="WhenActiveLabel,TransmitMethodRadioButton1,TransmitMethodRadioButton2,PushToTalkKeyLabel,PushToTalkKeyEntry,MicrophoneLabel,MicrophoneVolume,SpeakerLabel,SpeakerVolume,TestMicrophone,MicMeter,MicBoost" y=161 dir=down spacing=6 }
		place { control="MicMeter2" start=MicMeter margin-left=-160 }

		//Hidden
		place { control=RepairAudio width=10 height=10 align=right }
		place { control=Divider1,Divider2 width=1 align=right }
	}
}