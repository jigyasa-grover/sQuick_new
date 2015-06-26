as yet unclassified
searchQuick: aString

	| searchFacade searchFor myDoc|
	searchFacade := self searchFacadeClass new.	
	myDoc := self indexFiles .
	myDoc do: [:d |
		searchFacade index: d.
		searchFor := searchFacade search:  aString .
		self assert:(searchFor includes: d  ).
		  ].