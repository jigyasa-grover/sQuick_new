as yet unclassified
openAndPrint
	IndexInterface delete . 
	self open. 
	SearchQuick searchQuick: self myString. 
	pos := 120.
	SearchQuick myResult do: [:r|
		x := TextMorph new.
		x position: 100@pos.
		box addMorph: x.
		x newContents: r asString .
		pos := pos+20.  
		].