as yet unclassified
openWithFileName: fn
	title := fn.
	(FileLocator workingDirectory / 'sQuick_new'/'resources'/'document' / fn) readStreamDo: [ :in| content := in upToEnd].