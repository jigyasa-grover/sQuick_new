as yet unclassified
openWithFile:  file
	file readStreamDo: [ :in| content := in upToEnd].
	self class instances add: self.