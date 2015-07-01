as yet unclassified
printContent: f
	viewer := fileContents textMorph.
	viewer contents: f asString .
	box addMorph: fileContents  .