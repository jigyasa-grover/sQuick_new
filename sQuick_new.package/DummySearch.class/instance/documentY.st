as yet unclassified
documentY
	
	| resourceFolder |
	resourceFolder := FileSystem workingDirectory / 'sQuick_new' / 'resources'/'document'.
	
		(resourceFolder) allFiles sort do: [ :f |
		Document new
			openWithFile: f;
			title: f basenameWithoutExtension ].
		
		Chapter allSubInstances size > 0 ifTrue: [
		1 to: (Chapter allSubInstances size) do: [ :index |
			|chapter |
			chapter := Chapter at: index.
			^Chapter new title: chapter title ;
			                 content: chapter content ;
			yourself . 
		].
	].