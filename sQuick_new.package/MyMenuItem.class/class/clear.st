as yet unclassified
clear
	1 to: (self allInstances size) 
	do:[ :index|
			self allInstances at: index put: nil.
		].