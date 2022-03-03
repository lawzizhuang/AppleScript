 # -*- coding: utf-8 -*- 

set input1 to text returned of (display dialog "ÊúçÂä°‰∏ª‰Ωì" default answer "" buttons {"OK", "Cancel"} default button "OK" with title "ÊúçÂä°‰∏ª‰Ωì")

set input2 to text returned of (display dialog "‰ªªÂä°ÂêçÁß∞" default answer "" buttons {"OK", "Cancel"} default button "OK" with title "‰ªªÂä°ÂêçÁß∞")


tell application "Finder"
	set p to (the target of window 1)
	--set p to the selection
	--set p to path to desktop
	set dateStamp to do shell script "/bin/date +%Y%m%d"
	make new folder at p with properties {name:dateStamp &"-„Äê"& input1 &"„Äë"&input2}
end tell
