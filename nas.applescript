tell application "Google Chrome"		
    if (count windows) is 0 then		
        make new window		
        set URL of tab 1 of window 1 to "http://192.168.114.226"	
    else
        activate front window		
        make new tab at front window		
        set URL of tab (count tabs of front window) of front window to "http://192.168.114.226"	
    end if	
end tell