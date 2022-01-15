set the_filepath to "~/desktop/ChromePDFout"
tell application "Google Chrome"
    activate
    save window 1 in the_filepath
end tell