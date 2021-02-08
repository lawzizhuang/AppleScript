set OwnDocx to "/Users/ouyang/Documents/SynologyDrive/Drive/Dropbox/??/OfficeTemplate/????.dotx"
if application "Microsoft Word" is running then
	tell application "Microsoft Word"
		open OwnDocx
	end tell
else
	tell application "Microsoft Word"
		activate
		open OwnDocx
	end tell
end if