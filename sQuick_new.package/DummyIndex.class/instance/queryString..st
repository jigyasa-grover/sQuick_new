as yet unclassified
queryString: aStringQuery
	| aSearchResult |
	aSearchResult := SearchResult query: aStringQuery.
	aSearchResult result: (index select: [ :item | 
		item second includesSubstring:  aStringQuery string]).
	^ aSearchResult.
	