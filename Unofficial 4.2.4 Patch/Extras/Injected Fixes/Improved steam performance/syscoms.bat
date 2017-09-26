@echo off
echo syscoms -parentfile -scsscan /ref
echo -4 /argument -i %steamapps%
echo -scanfor @username @steampath
echo boot -syscoms -r /54
echo syscoms -t -r dll files
echo -t 1>42>3 /c "steam.exe""tier0_s".dll
echo c /c "steam.exe""tier0_s64".dll
echo -r /c "steam.exe""v8".dll
echo -t -4 /c "steam.exe""video".dll
echo -t -4 /c "steam.exe""interface7Q".dll
echo -t -4 /c "steam.exe""Hsd43.dll".dll
echo c /c "steam.exe""btier0_s".dll
echo c /c "steam.exe""btier0_s64".dll