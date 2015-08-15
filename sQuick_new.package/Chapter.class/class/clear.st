accessing
clear
Chapter entries do: [ :index |
	self remove: index.
	 ]

	"1 to: (self allSubInstances size) do:[ :index|
		(self at: index) isNil ifFalse: [ 
			self at: index release.
			self allSubInstances at: index put: nil.
		].
		self allSubInstances at: index put: nil.
	]"