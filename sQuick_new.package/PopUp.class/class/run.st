as yet unclassified
run
	(instance == nil) ifTrue: [
		instance := PopUp  new.
		^ instance.
	]; ifFalse: [
		^ instance.
	]