as yet unclassified
indexFiles
	"| resourceFolder |
	resourceFolder := FileSystem workingDirectory / 'sQuick_new' / 'resources'/'document'."
	
	|resourceFolderForDocuments resourcePath |
	
	MCGitHubRepository allSubInstancesDo: 
									[ :repo |
										 repo projectPath = 'jig08/sQuick_new'  ifTrue: [ resourcePath := repo directory ] 
									]. 
	resourceFolderForDocuments  := resourcePath / 'sQuick_new/resources/document'.
	
		^(resourceFolderForDocuments) allFiles collect: [ :f |
			Document new
			openWithFile: f;
			title: f basenameWithoutExtension;
			yourself 
			].