as yet unclassified
searchQuick: aString
	| searchFacade searchFor myDoc sQ|
	sQ := SearchQuick  new.
	searchFacade := sQ searchFacadeClass new.
	"searchFacade := self searchFacadeClass new.	"
	myDoc := self indexFiles .
	myResult := myDoc select: [:d |
		searchFacade index: d.
		searchFor := searchFacade search:  aString .
	      searchFor includes: d.
		  ].