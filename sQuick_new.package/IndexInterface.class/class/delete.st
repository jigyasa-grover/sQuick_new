submorphs-add/remove
delete
	(instance isNil) ifFalse: [
		instance delete.
		instance := nil.
	].