running
run
	(instance == nil) ifTrue: [
		instance := PopUp  new.
		^ instance.
	]; ifFalse: [
		^ instance.
	]