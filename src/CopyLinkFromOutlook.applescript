tell application "Microsoft Outlook"
	set selectedMessages to selected objects
  if selectedMessages is {} then
    display notification "Please select a message in Outlook before running the script!"
  else
  	set messageId to id of item 1 of selectedMessages
	set messageSubject to the subject of item 1 of selectedMessages
	set uri to "outlook://" & messageId
	set the clipboard to "[email: '" & messageSubject & "'](" & uri & ")"
	-- display notification "URI " & uri & " copied to clipboard"
	display notification "[email: '" & messageSubject & "'](" & uri & ")" & " copied to clipboard"
  end if
end tell

