submorphs-add/remove
delete
	MyMenuItem clear.
	Chapter clear.
	txtViewer isNil ifFalse: [ txtViewer delete].
	ptm isNil ifFalse: [ ptm delete].
	txtViewer := nil.
	ptm := nil.
	Smalltalk garbageCollect.
	box isNil ifFalse: [ boxWindow close. box window close. box delete].
	box := nil.
	boxWindow delete. 
	boxWindow close. 
	boxWindow := nil.