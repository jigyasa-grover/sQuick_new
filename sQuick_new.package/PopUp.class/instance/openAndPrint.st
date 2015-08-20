Print Search Results
openAndPrint
" ** NOT USED NOW ** "
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
		searchView addMorph: searchResult1. 
		
		pos := pos+50.  
		
		].
	
	    box addMorph: searchResults.