as yet unclassified
printContent: f
	| resourceFolder y d|
	resourceFolder := FileSystem workingDirectory / 'sQuick_new' / 'resources'.
	
	
		d := (resourceFolder / 'document') Document new
			openWithFile: f;
			title: f basenameWithoutExtension.
			
	y := TextMorph new.
	y newContents: d content asString .
	y position: 500@500.
	box addMorph: y.