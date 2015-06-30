as yet unclassified
searchQuick: aString
	| searchFacade searchFor myDoc|
	searchFacade := self searchFacadeClass new.	
	myDoc := self indexFiles .
	myResult := myDoc select: [:d |
		searchFacade index: d.
		searchFor := searchFacade search:  aString .
	      searchFor includes: d.
		  ].
	self halt.