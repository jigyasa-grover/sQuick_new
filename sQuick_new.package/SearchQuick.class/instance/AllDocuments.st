as yet unclassified
AllDocuments
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