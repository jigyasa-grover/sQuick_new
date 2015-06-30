as yet unclassified
openAndPrint
	IndexInterface delete . 
	self open. 
	SearchQuick searchQuick: self myString. 
	pos := 300.
	SearchQuick myResult do: [:r|
		x := SimpleButtonMorph newWithLabel: r title asString .
		x position: 500@(pos).
		box addMorph: x.
		x on: #click send: #value to: [ self printContent: r content ].
		pos := pos+20.  
		].