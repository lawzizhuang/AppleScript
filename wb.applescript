set PostURL to the clipboard

if appIsRunning("Safari") then
	tell application "Safari"
		tell front window
			open location PostURL
		end tell
		activate
	end tell
else
	tell application "Safari"
		-- Safari not running, so start it
		do shell script "open -a \"Safari\""
		tell front window
			open location PostURL
		end tell
		activate
	end tell
end if

on appIsRunning(appName)
	tell application "System Events" to (name of processes) contains appName
end appIsRunning

# ??