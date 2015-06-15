as yet unclassified
run
	(instance == nil) ifTrue: [
		instance := BrowseFiles new.
		^ instance.
	]; ifFalse: [
		^ instance.
	]