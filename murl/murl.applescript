on alfred_script(q)
tell application "Mail"
	set selectedMessages to selection
	set theMessage to item 1 of selectedMessages
	set messageid to message id of theMessage
	-- Make URL (must use URL-encoded values for "<" and ">")
	set urlText to "message://" & "%3c" & messageid & "%3e"
	set the clipboard to (urlText)
end tell
end alfred_script