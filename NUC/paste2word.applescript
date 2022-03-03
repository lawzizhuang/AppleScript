#!/usr/bin/osascript

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Paste2Word
# @raycast.mode compact

# Optional parameters:
# @raycast.icon 🤖

# Documentation:
# @raycast.author Ouyang

set the clipboard to (the clipboard as text)


tell application "Microsoft Word"
    activate
    paste object text object of selection
end tell

