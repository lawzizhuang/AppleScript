

set input1 to text returned of (display dialog "Customer" default answer "" buttons {"OK", "Cancel"} default button "OK" with title "Customer")

set input2 to text returned of (display dialog "Task" default answer "" buttons {"OK", "Cancel"} default button "OK" with title "Task")

set tagname to resulted of (choose from list {"Start", "End"} default items {"Start"} with title "?Select Tags")
--set tagname to result as text

set dateStamp to do shell script "/bin/date +%Y%m%d-%H:%M"

set the clipboard  "tagname & ' | ' & input1 & ' | ' & input2 & ' | ' dateStamp" 

EOF
