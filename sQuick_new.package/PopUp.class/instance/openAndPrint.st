as yet unclassified
openAndPrint
	|popUp  |
	popUp := PopUp basicNew .
	IndexInterface delete . 
	popUp  open. 
	SearchQuick searchQuick: popUp  myString. 
	pos := 120.
	SearchQuick myResult do: [:r|
		x := TextMorph new.
		x position: 100@pos.
		box addMorph: x.
		x newContents: r asString .
		pos := pos+20.  
		].