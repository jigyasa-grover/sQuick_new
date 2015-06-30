as yet unclassified
indexFiles
	| resourceFolder |
	resourceFolder := FileSystem workingDirectory / 'sQuick_new' / 'resources'/'document'.
	
		^(resourceFolder) allFiles collect: [ :f |
			Document new
			openWithFile: f;
			title: f basenameWithoutExtension;
			yourself 
			].