tell application "Keyboard Maestro Engine"
	set _name to getvariable "Reminder_name"
	set _body to getvariable "Reminder_body"
end tell

tell application "Reminders"
	set listNames to (get name of every list)
	activate
	set myList to choose from list listNames with prompt "????"
	set ListName to myList as text
	make new reminder with properties {name:_name, body:_body} at list ListName
end tell