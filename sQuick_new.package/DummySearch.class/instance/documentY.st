as yet unclassified
documentY
	
	"| resourceFolder |
	resourceFolder := FileSystem workingDirectory / 'sQuick_new' / 'resources'/'document'."
	
	|resourceFolderForDocuments resourcePath |
	
	MCGitHubRepository allSubInstancesDo: 
									[ :repo |
										 repo projectPath = 'jig08/sQuick_new'  ifTrue: [ resourcePath := repo directory ] 
									]. 
	resourceFolderForDocuments  := resourcePath / 'sQuick_new/resources/document'.
	
		(resourceFolderForDocuments) allFiles do: [ :f |
			^Document new
			openWithFile: f;
			title: f basenameWithoutExtension;
			yourself 
			].
		
		"Chapter allSubInstances size > 0 ifTrue: [
		1 to: (Chapter allSubInstances size) do: [ :index |
			|chapter |
			chapter := Chapter at: index.
			^chapter
		].
	]."