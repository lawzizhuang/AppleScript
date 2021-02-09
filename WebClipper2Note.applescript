tell (current date) to get (its year as integer) & "-" & (its month as integer) & "-" & day
set dataText to the result as text
set mailTitle to dataText & "-WebClipper"

tell application "Google Chrome"
	set FrontUrl to URL of active tab of window 0
	set FrontTitle to title of active tab of window 0
end tell


tell application "Notes"
	activate
	tell default account
		set listNames to (get name of every folder)
		set myList to choose from list listNames with prompt "Choose Folder"
		set ListName to myList as text
		tell folder ListName
			set counts to count of every note
			set CreationDate to creation date of note 1
			set CDate to date string of CreationDate
			set Today to date string of (current date)
			if counts = 0 then
				make new note with properties {name:mailTitle, body:{(the clipboard) & "<br> <br>" & "<strong>Title:&nbsp;</strong> "& FrontTitle & "<br>" & "<strong>url:&nbsp;</strong>"& FrontUrl}}
			else if CDate = Today then
					set originalText to body of note 1
					set body of note 1 to {"<hr>" & originalText & "<br>" &(the clipboard) & "<br> <br>" & "<strong>Title:&nbsp;</strong> "& FrontTitle & "<br>" & "<strong>url:&nbsp;</strong>"& FrontUrl}
					
			else
					make new note with properties {name:mailTitle, body:{(the clipboard) & "<br> <br>" & "<strong>Title:&nbsp;</strong> "& FrontTitle & "<br>" & "<strong>url:&nbsp;</strong>"& FrontUrl}}
				end if
		end tell
	end tell
end tell