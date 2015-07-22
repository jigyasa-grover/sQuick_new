tests
testSearch4
	| searchFacade searchFor myDoc|	
	searchFacade := self searchFacadeClass new.	
	myDoc := self indexFiles .
	myDoc do: [:d |
		searchFacade index: d.
		searchFor := searchFacade search: 'File' .
		self assert:(searchFor includes: d  ).
		  ].
	self halt.