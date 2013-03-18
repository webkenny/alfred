tell application "System Events" to tell (process 1 where frontmost is true)
    set {c1, c2} to value of attribute "AXSelectedTextRange" of text area 1 of scroll area 1 of window 1
end tell
tell application (path to frontmost application as text) to tell document 1
    tell characters c1 thru c2
        set font to "Andale Mono"
        set size to 14
    end tell
end tell