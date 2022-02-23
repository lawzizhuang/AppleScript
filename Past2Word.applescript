tell application "Microsoft Word"
    activate
    set theData to (the clipboard as text)
    set the clipboard to theData
    paste object text object of selection
end tell