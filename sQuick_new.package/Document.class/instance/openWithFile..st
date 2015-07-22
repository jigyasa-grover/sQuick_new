opening files/documents
openWithFile:  file
	file readStreamDo: [ :in| content := in upToEnd].
	self class instances add: self.