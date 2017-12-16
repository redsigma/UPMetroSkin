"steam/cached/SettingsSubVoice.res"
{
	styles
	{
		CSettingsSubVoice
		{
			render_bg
			{
				0="image(x0+16,y0+8,x1,y1, graphics/metro/labels/settings/device)"
				1="image(x0+16,y0+135,x1,y1, graphics/metro/labels/settings/voicechat)"
			}
		}
	}
	layout
	{
		region { name=box margin-left=16 margin-right=16 }

		//First
		place { region=box control="Label1" x=0 y=36 dir=down spacing=6 }
		place { region=box control="DeviceName" start=Label1 y=8 dir=down spacing=6 width=320 }
		place { region=box control="ChangeDeviceButton,ReinitAudio" width=156 margin-top=85 spacing=6 y=8 dir=right }

		//place { region=box control="MicMeter2" x=8 y=155 }

		//When Active
		place { region=box control="WhenActiveLabel,TransmitMethodRadioButton1,TransmitMethodRadioButton2,PushToTalkKeyLabel,PushToTalkKeyEntry,MicrophoneLabel,MicrophoneVolume,SpeakerLabel,SpeakerVolume,MicMeter" y=161 dir=down spacing=6 }
		place { region=box start=MicMeter control="MicMeter2" margin-left=-160 }

		place { region=box start=MicMeter control=TestMicrophone x=6 }
		place { region=box start=MicMeter control=MicBoost y=6 dir=down }

		//Hidden
		place { control=RepairAudio width=10 height=10 align=right }
		place { control=Divider1,Divider2 width=1 align=right }
	}
}