tell application "Google Chrome"
  set theURL to URL of active tab of window 0
  set theTitle to Title of active tab of window 0
end tell

set the clipboard to  "[" & theTitle & "]" & "(" & theURL & ")"