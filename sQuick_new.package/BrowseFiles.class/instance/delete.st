submorphs-add/remove
delete
	MyMenuItem clear.
	Chapter clear.
	txtViewer isNil ifFalse: [ txtViewer delete].
	ptm isNil ifFalse: [ ptm delete].
	txtViewer := nil.
	ptm := nil.
	Smalltalk garbageCollect.
	
	box isNil ifFalse: [self boxWindow window close. self boxWindow window delete . self boxWindow close .self boxWindow delete. box delete.].
	box := nil.
	self boxWindow window close. 
	self boxWindow window delete .
	self boxWindow close. 
	self boxWindow delete.
	boxWindow := nil.