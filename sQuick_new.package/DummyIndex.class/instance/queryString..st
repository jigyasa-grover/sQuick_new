as yet unclassified
queryString: aStringQuery
	| aSearchResult |
	
	aSearchResult := SearchResult query: aStringQuery.
	
	aSearchResult result: (index associations  select: [ :item | 
								item value  second includesSubstring:  aStringQuery string
												]
				thenCollect: [ :item | item key ]
						).
	^ aSearchResult.
	