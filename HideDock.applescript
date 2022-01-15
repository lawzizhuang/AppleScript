
display dialog "????? Dock? ????? Dock??" buttons {"??","??"}with icon 2 with title "Dock ??" default button 2 
set HideSet to button returned of result
if HideSet is "??" then
    do shell script "defaults write com.apple.finder CreateDesktop -bool FALSE;killall Finder"
    else
     do shell script "defaults delete com.apple.finder CreateDesktop;killall Finder"
end if