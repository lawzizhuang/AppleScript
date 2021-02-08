set sourceFolder to alias "Macintosh HD:Users:ouyang:Documents:HBSH:Other:templates:sue"
set destinationFolder to alias "Macintosh HD:Users:ouyang:Documents:SynologyDrive:Drive:Jianguo:SH:01争议解决:"


tell application "Finder"
	make new folder at destinationFolder with properties {name:"NewFolder"}
end tell

set NewFolder to alias "Macintosh HD:Users:ouyang:Documents:SynologyDrive:Drive:Jianguo:SH:01争议解决:NewFolder:"

tell application "Finder"
	duplicate every folder of sourceFolder to NewFolder
end tell