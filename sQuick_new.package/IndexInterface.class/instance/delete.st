submorphs-add/remove
delete
	box isNil ifFalse: [self boxWindow window close. self boxWindow window delete . self boxWindow close. box window close .self boxWindow delete. box delete.].
	box := nil.
	self boxWindow window close. 
	self boxWindow window delete .
	self boxWindow close. 
	self boxWindow delete.
	boxWindow := nil.