running
run
	(instance == nil) ifTrue: [
		instance := IndexInterface new.
		^ instance.
	]; ifFalse: [
		^ instance.
	]