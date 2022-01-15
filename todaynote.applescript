tell (current date) to get (its year as integer) & "-" & (its month as integer) & "-" & day
set dataText to the result as text
set mailTitle to dataText & "-DailyNote"

-- tell application "Google Chrome"
-- 	set FrontUrl to URL of active tab of window 0
-- 	set FrontTitle to title of active tab of window 0
-- end tell


tell application "Notes"
	activate
	tell default account
		tell folder "DailyNote"
			set counts to count of every note
			if counts > 0 then
				set CreationDate to creation date of note 1
				set CDate to date string of CreationDate
				set Today to date string of (current date)
				set originalText to body of note 1

				set body of note 1 to {"<hr>" & originalText & "<br>" & (the clipboard)}

					-- set body of note 1 to {"<hr>" & originalText & "<br>" &(the clipboard) & "<br> <br>" & "<strong>Title:&nbsp;</strong> " & FrontTitle & "<br>" & "<strong>url:&nbsp;</strong>"& FrontUrl}
			else
					make new note with properties {name:mailTitle, body:(the clipboard)}
				end if
		end tell
	end tell
end tell
