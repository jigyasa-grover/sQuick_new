as yet unclassified
openAndPrint
	IndexInterface delete . 
	self open. 
	SearchQuick searchQuick: self myString.
	pos := 10.
		
	searchView := searchResults textMorph.
	
	SearchQuick myResult do: [:r |
		searchResult1 := SimpleButtonMorph newWithLabel: r title asString .
		searchResult1 position: 0@(pos).
		searchResult1 extent: 180@50.
		searchResult1 on: #click send: #value to: [ self printContent: r content ].				
		"box addMorph: searchResults."
		"searchView addMorph: searchResult1."
		searchView addMorph: searchResult1.  
		
		"searchResult2 := SimpleButtonMorph newWithLabel: r content asString .
		searchResult2 position: 10@(pos+20).
		searchResult2 extent: 150@20.
		searchResult2 on: #click send: #value to: [ self printContent: r content ].
		box addMorph: searchResult2."
		
		pos := pos+50.  
		
		].
	
	    box addMorph: searchResults.