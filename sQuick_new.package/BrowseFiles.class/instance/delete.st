as yet unclassified
delete
	MyMenuItem clear.
	Chapter clear.
	txtViewer isNil ifFalse: [ txtViewer delete].
	ptm isNil ifFalse: [ ptm delete].
	txtViewer := nil.
	ptm := nil.
	Smalltalk garbageCollect.
	box isNil ifFalse: [ box delete].
	box := nil.