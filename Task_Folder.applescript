

set input1 to text returned of (display dialog "�����������" default answer "" buttons {"OK", "Cancel"} default button "OK" with title "������")

set input2 to text returned of (display dialog "������������" default answer "" buttons {"OK", "Cancel"} default button "OK" with title "������")


tell application "Finder"
	set p to path to desktop
	set dateStamp to do shell script "/bin/date +%Y%m%d"
	make new folder at p with properties {name:dateStamp &"-��"& input1 &"��"&input2}
end tell
