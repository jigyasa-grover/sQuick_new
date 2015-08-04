submorphs-add/remove
delete
	MyMenuItem clear.
	Chapter clear.
	txtViewer isNil ifFalse: [ txtViewer delete].
	ptm isNil ifFalse: [ ptm delete].
	txtViewer := nil.
	ptm := nil.
	Smalltalk garbageCollect.
	box isNil ifFalse: [ boxWindow window close. boxWindow window delete. boxWindow close. boxWindow delete. box window close. box delete].
	box := nil.
	boxWindow delete. 
	boxWindow window close. 
	boxWindow close. 
	boxWindow window delete .
	boxWindow := nil.