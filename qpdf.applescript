tell application "Terminal"
	--activate
	do script "cd ~/desktop/PDFmerge"
end tell

tell application "Google Chrome"		
    if (count windows) is 0 then		
        make new window		
        set URL of tab 1 of window 1 to "https://imouyang.com/qpdf-shi-yong-bi-ji/"	
    else
        activate front window		
        make new tab at front window		
        set URL of tab (count tabs of front window) of front window to "https://imouyang.com/qpdf-shi-yong-bi-ji/"	
    end if	
end tell