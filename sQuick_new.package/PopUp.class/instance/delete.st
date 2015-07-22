submorphs-add/remove
delete
	box isNil ifFalse: [box window close. box delete].
	box := nil.