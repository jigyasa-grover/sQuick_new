tests
testSearch2
	| searchFacade searchFor myDoc|	
	searchFacade := self searchFacadeClass new.	
	myDoc := self document1 .
	searchFacade index: myDoc .
	searchFor := searchFacade search: 'files' .
	self assert:(searchFor includes: myDoc  ).
	
	
