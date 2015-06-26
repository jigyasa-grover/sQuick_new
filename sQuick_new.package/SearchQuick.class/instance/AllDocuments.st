as yet unclassified
AllDocuments
	
	| resourceFolder |
	resourceFolder := FileSystem workingDirectory / 'sQuick_new' / 'resources'/'document'.
	
		(resourceFolder) allFiles do: [ :f |
			^Document new
			openWithFile: f;
			title: f basenameWithoutExtension;
			yourself 
			].