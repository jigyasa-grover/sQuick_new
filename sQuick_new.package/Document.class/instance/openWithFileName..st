opening files/documents
openWithFileName: fn
		|resourceFolder resourcePath|
	
	MCGitHubRepository allSubInstancesDo: 
									[ :repo |
										 repo projectPath = 'jig08/sQuick_new'  ifTrue: [ resourcePath := repo directory ] 
									]. 
	resourceFolder := resourcePath / 'sQuick_new/resources'.
	
	title := fn.
	
	(FileLocator resourcePath / 'sQuick_new/resources/document'/ fn) readStreamDo: [ :in| content := in upToEnd].