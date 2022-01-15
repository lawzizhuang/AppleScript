--choose from list {"Not Started","Processing","Delay","Someday","Completed"} default items {"Not Started"} with title "??????"
--set tagname to result as text

tell application "Finder"
	set sel to the selection as alias list
	repeat with theItem in sel
		--display dialog "tag --add " & tagname & " " & "\"" & (POSIX path of theItem) & "\""
		do shell script "/usr/local/bin/tag --set zero " & (POSIX path of theItem)
		do shell script "/usr/local/bin/tag --remove zero " & (POSIX path of theItem)
	end repeat
end tell
