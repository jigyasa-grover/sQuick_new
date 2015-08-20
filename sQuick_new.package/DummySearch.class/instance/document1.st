dummy documents
document1
	|resourceFolderForDocuments resourcePath |
	
	MCGitHubRepository allSubInstancesDo: 
									[ :repo |
										 repo projectPath = 'jig08/sQuick_new'  ifTrue: [ resourcePath := repo directory ] 
									]. 
	resourceFolderForDocuments  := resourcePath / 'sQuick_new/resources/document'.
		
	Document new
			openWithFileName: 'File 1';
			title: 'File 1'.
		
		Chapter allSubInstances size > 0 ifTrue: [
		1 to: (Chapter allSubInstances size) do: [ :index |
			|chapter |
			chapter := Chapter at: index.
			^Chapter new title: chapter title ;
			                 content: chapter content ;
			yourself . 
		].
	].