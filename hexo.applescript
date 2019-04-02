
set SourceFolder to "/Users/ouyang/Dropbox/gblog/source"


if application "Visual Studio Code" is running then 
	tell application "Visual Studio Code"
		open SourceFolder
	end tell
else 
    tell application "Visual Studio Code"
		activate
		open SourceFolder
	end tell
end if