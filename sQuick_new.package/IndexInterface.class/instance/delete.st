submorphs-add/remove
delete
	box isNil ifFalse: [boxWindow window close. boxWindow window delete . boxWindow close. box window close . boxWindow delete. box delete.].
	box := nil.
	boxWindow window close. 
	boxWindow window delete .	
	boxWindow close. 
	boxWindow delete.
	boxWindow := nil.