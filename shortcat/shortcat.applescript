set the clipboard to "{query}"
tell application "System Events"
	keystroke space using {command down, shift down}
end tell

set len to count (the clipboard)
set theString to the clipboard

repeat with n from 1 to len
	tell application "System Events"
		keystroke (character n of theString)
		delay 0.003
	end tell
end repeat

tell application "System Events"
	keystroke return
end tell