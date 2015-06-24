as yet unclassified
delete
	(instance isNil) ifFalse: [
		instance delete.
		instance := nil.
	]