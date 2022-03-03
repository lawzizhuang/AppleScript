#!/usr/bin/osascript

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title OpenWordPath
# @raycast.mode compact

# Optional parameters:
# @raycast.icon �ü§ñ

# Documentation:
# @raycast.author Ouyang



tell application "System Events"
    tell application "Microsoft Word"
        set thefile to path of document 1 of window 1
        tell application "Finder"
            open thefile
            set frontmost to true
        end tell
    end tell
end tell