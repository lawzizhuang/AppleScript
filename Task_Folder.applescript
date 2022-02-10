

set input1 to text returned of (display dialog "输入服务主体" default answer "" buttons {"OK", "Cancel"} default button "OK" with title "请输入")

set input2 to text returned of (display dialog "输入任务名称" default answer "" buttons {"OK", "Cancel"} default button "OK" with title "请输入")


tell application "Finder"
	set p to path to desktop
	set dateStamp to do shell script "/bin/date +%Y%m%d"
	make new folder at p with properties {name:dateStamp &"-【"& input1 &"】"&input2}
end tell
