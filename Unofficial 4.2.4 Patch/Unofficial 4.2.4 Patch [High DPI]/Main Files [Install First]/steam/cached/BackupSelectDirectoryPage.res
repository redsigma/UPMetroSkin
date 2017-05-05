"steam/cached/BackupSelectDirectoryPage.res"
{
	layout
	{
		place { control="Label2" x=24 y=24 width=max margin-right=24 }
		place { start=Label2 control="Label1" y=6 width=max margin-right=24 dir=down }
		place { start=Label1 control="DirectoryLabel" y=6 width=242 dir=down }
		place { start=DirectoryLabel control="Button1" x=6 width=84 }
		place { start=DirectoryLabel control="Label3,Label4" y=6 dir=down }
		place { start=Label3 control="SpaceRequiredLabel" x=16 }
		place { start=Label4 control="SpaceAvailableLabel" x=16 }
	}
}