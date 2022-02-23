set the clipboard to (the clipboard as text)


tell application "Microsoft Word"
    activate
    paste object text object of selection
end tell