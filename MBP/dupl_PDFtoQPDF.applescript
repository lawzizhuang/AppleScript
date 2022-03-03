set QPDF to alias "Macintosh HD:Users:ouyang:Desktop:PDFmerge:"

tell application "Finder"
	set sel to the selection as alias list
	repeat with theItem in sel		       
		if name extension of theItem is "pdf" then
            duplicate theItem to QPDF
        end if        
	end repeat
end tell
