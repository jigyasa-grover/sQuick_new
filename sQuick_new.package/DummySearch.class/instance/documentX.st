as yet unclassified
documentX
	| resourceFolder |
	resourceFolder := FileSystem workingDirectory / 'sQuick_new' / 'resources'/'document'.
	
		(resourceFolder ) allFiles Document new
			openWithFileName: 'File 1';
			title: 'File 1' basenameWithoutExtension .
		
		Chapter allSubInstances size > 0 ifTrue: [
		1 to: (Chapter allSubInstances size) do: [ :index |
			|chapter |
			chapter := Chapter at: index.
			^Chapter new title: chapter title ;
			                 content: chapter content ;
			yourself . 
		].
	].