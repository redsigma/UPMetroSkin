"Steam/cached/AccountPage.res"
{
	styles
	{
		Divider
		{
			bgcolor=white12
		}
	}

	layout
	{
		//Avatar
		place { control="SecurityIcon" dir=right y=12 spacing=6 }

		///Information
		place { control="LogOutLabel,AccountInfo" x=68 y=7 width=max spacing=6 margin-right=8 }
		place { control="ContactEmailLabel,EmailInfo" x=68 y=24 width=max spacing=6 margin-right=8 }
		place { control="SecurityStatusLabel,SecurityStatusState" x=68 y=41 width=max spacing=6 margin-right=8 }
		place { control="Label2,VacInfoLink" x=68 y=58 width=max spacing=6 margin-right=8 }

		place { control="NoPersonalInfoCheck" y=86 width=max spacing=8 dir=down margin-right=16 }

		//Security Information
		place { start=NoPersonalInfoCheck control="ChangeUserButton,ManageSecurityButton,ChangePasswordButton,ChangeContactEmailButton,ValidateContactEmailButton,MachineLockAccountButton" margin-top=16 width=337 height=28 dir=down spacing=6 }

		//Beta Participation
		place { control="Divider1" y=340 height=1 margin-right=16 }
		place { start=Divider1 control="BetaParticipationLabel" y=27 dir=down margin-right=16 }
		place { start=BetaParticipationLabel control="Divider2" y=32 height=1 dir=down margin-right=16 }
		place { start=BetaParticipationLabel control="ChangeBetaButton" x=6 y=-3 width=84 height=28 spacing=6 margin-right=8 }
		place { start=ChangeBetaButton control="CurrentBetaLabel" x=6 y=3 height=24 width=max margin-right=16 }

		//Hidden
		place { control="ReportBugLink,Label1,AccountLink" width=1 height=1 align=right }
	}
}