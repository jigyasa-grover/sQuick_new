running
run
	(instance == nil) ifTrue: [
		instance := BrowseFiles new.
		^ instance.
	]; ifFalse: [
		^ instance.
	]