as yet unclassified
openAndPrint
	IndexInterface delete . 
	self open. 
	SearchQuick searchQuick: self myString.
	pos := 200.
		
	"searchView := searchResults morph."
	
	SearchQuick myResult do: [:r |
		searchResult1 := SimpleButtonMorph newWithLabel: r title asString .
		searchResult1 position: 300@(pos).
		searchResult1 extent: 150@20.
		searchResult1 on: #click send: #value to: [ self printContent: r content ].				
		box addMorph: searchResults.
		searchResults addMorph: searchResult1.
		
		"searchResult2 := SimpleButtonMorph newWithLabel: r content asString .
		searchResult2 position: 300@(pos+20).
		searchResult2 extent: 150@20.
		searchResult2 on: #click send: #value to: [ self printContent: r content ].
		box addMorph: searchResult2."
		
		pos := pos+50.  
		].