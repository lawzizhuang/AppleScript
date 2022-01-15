tell application "Notes"
	activate
	tell default account
		tell (current date) to get (its year as integer) & "-" & (its month as integer) & "-" & day
		set dataText to the result as text
		set mailTitle to dataText & "-DailyNote"
		make new note at folder "DailyNote" with properties {name:mailTitle, body:the clipboard}
		show note 1
	end tell
end tell