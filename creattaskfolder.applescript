#!/usr/bin/osascript

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title CreatTaskFolder
# @raycast.mode compact

# Optional parameters:
# @raycast.icon 🤖

# Documentation:
# @raycast.author Ouyang

 # -*- coding: utf-8 -*- 

set input1 to text returned of (display dialog "服务主体" default answer "" buttons {"OK", "Cancel"} default button "OK" with title "服务主体")

set input2 to text returned of (display dialog "任务名称" default answer "" buttons {"OK", "Cancel"} default button "OK" with title "任务名称")

if input1 is not "" and input2 is not "" then
    tell application "Finder"
        set p to (the target of window 1)
        --set p to the selection
        --set p to path to desktop
        set dateStamp to do shell script "/bin/date +%Y%m%d"
        make new folder at p with properties {name:dateStamp &"-【"& input1 &"】"&input2}
    end tell
end if



