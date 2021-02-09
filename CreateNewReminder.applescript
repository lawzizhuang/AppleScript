# Title: Create new Reminder v2
# By woteva65@icloud.com
# Inspired by code written by Michael Kummer

try
	#Clipboard
	set _input to the clipboard -- grab clipboard
	
	# Reminder Name
	display dialog "What would you like to be reminded about? 	
 	(leave blank to use clipboard)" default answer ""
	set reminder_name to text returned of result --get input
	
	if reminder_name is equal to "" then
		set reminder_title to _input -- use clipboard contents
	else
		set reminder_title to reminder_name -- use input
	end if
	
	# Reminders List	
	tell application "Reminders"
		set lName to name of every list
		set dName to name of default list
	end tell
	tell me to activate
	set lName to choose from list lName with prompt "Select List" default items {dName} without empty selection allowed
	if lName is false then
		return 1
	else
		set lName to lName as string
	end if
	
	set RemindersList to lName as text
	
	if RemindersList is "false" then return
	
	# Set Reminders Note
	set question to display dialog "Include Clipboard as a Note?" buttons {"Yes", "No"} default button 2
	set answer to button returned of question
	
	#Follow up Time
	(choose from list {"2 hours", "Tonight", "Tomorrow", "2 Days", "End of Week", "1 Week", "2 Weeks", "1 Month", "3 Months"} default items "End of Week" OK button name "Create" with prompt "Set follow-up time" with title "Create Reminder")
	
	set reminderDate to result as text
	
	# Exit if user clicks Cancel
	if reminderDate is "false" then return
	
	if reminderDate = "2 Hours" then
		set remindMeDate to (current date) + 2 * hours
		--set time of remindMeDate to 120 * minutes
		
	else if reminderDate = "Tonight" then
		# add 0 day and set time to 17h into the day = 5pm
		set remindMeDate to (current date) + 0 * days
		set time of remindMeDate to 60 * 60 * 17
		
	else if reminderDate = "Tomorrow" then
		# add 1 day and set time to 9h into the day = 9am
		set remindMeDate to (current date) + 1 * days
		set time of remindMeDate to 60 * 60 * 9
		
	else if reminderDate = "2 Days" then
		
		set remindMeDate to (current date) + 2 * days
		set time of remindMeDate to 60 * 60 * 9
		
	else if reminderDate = "End of Week" then
		# end of week means Sunday in terms of reminders
		# get the current day of the week
		set curWeekDay to weekday of (current date) as string
		if curWeekDay = "Monday" then
			set remindMeDate to (current date) + 6 * days
		else if curWeekDay = "Tuesday" then
			set remindMeDate to (current date) + 5 * days
		else if curWeekDay = "Wednesday" then
			set remindMeDate to (current date) + 4 * days
		else if curWeekDay = "Thursday" then
			set remindMeDate to (current date) + 3 * days
		else if curWeekDay = "Friday" then
			set remindMeDate to (current date) + 2 * days
		else if curWeekDay = "Saturday" then
			set remindMeDate to (current date) + 1 * days
			# if it's Sunday I'll set the reminder for Sunday next week
		else if curWeekDay = "Sunday" then
			set remindMeDate to (current date) + 7 * days
		end if
		
		set time of remindMeDate to 60 * 60 * 9
		
	else if reminderDate = "1 Week" then
		
		set remindMeDate to (current date) + 7 * days
		set time of remindMeDate to 60 * 60 * 9
		
	else if reminderDate = "2 Weeks" then
		
		set remindMeDate to (current date) + 14 * days
		set time of remindMeDate to 60 * 60 * 9
		
	else if reminderDate = "1 Month" then
		
		set remindMeDate to (current date) + 30 * days
		set time of remindMeDate to 60 * 60 * 9
		
	else if reminderDate = "3 Months" then
		
		set remindMeDate to (current date) + 90 * days
		set time of remindMeDate to 60 * 60 * 9
		
	end if
	
	# Save Reminder
	if answer is equal to "Yes" then
		tell application "Reminders"
			tell list RemindersList
				set reminder_id to make new reminder with properties {remind me date:remindMeDate, name:reminder_title, body:_input} --create reminder
			end tell
		end tell
	end if
	
	if answer is equal to "No" then
		tell application "Reminders"
			tell list RemindersList
				set reminder_id to make new reminder with properties {remind me date:remindMeDate, name:reminder_title} --create reminder	
			end tell
		end tell
	end if
	
	#Error Message	
on error
	display dialog "Oops, something went wrong." --throw an error if something goes wrong
end try