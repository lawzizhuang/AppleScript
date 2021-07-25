choose from list {"Not Started", "Processing", "Delay", "Someday", "Completed"} default items {"Not Started"} with title "?Select Tags"
set tagname to result as text

tell application "Finder"
	set sel to the selection as alias list
	repeat with theItem in sel
		--display dialog "/usr/local/bin/tag --add " & tagname & " " & (POSIX path of theItem) 
		do shell script "/usr/local/bin/tag --add " & tagname & " " & (POSIX path of theItem)
	end repeat
end tell
