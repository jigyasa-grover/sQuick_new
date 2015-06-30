as yet unclassified
openAndPrint
	IndexInterface delete . 
	self open. 
	SearchQuick searchQuick: self myString. 
	pos := 300.
	SearchQuick myResult do: [:r|
		x := TextMorph new.
		x position: 500@(pos).
		box addMorph: x.
		x newContents: r title asString .
		x on: #click send: #value to: [ self printContent: r title ].
		pos := pos+20.  
		].