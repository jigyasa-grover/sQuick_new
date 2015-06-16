as yet unclassified
run
	(instance == nil) ifTrue: [
		instance := IndexInterface new.
		^ instance.
	]; ifFalse: [
		^ instance.
	]