tell application "Finder"
    set sel to the selection as alias list
    repeat with theItem in sel
        set dir to (the target of window 1) as alias
        --set filename to name of theItem
        --set newname to filename & "-old"
        --set fileExt to name extension of theItem
        duplicate theItem to dir
    end repeat
end tell
