as yet unclassified
testSearch4
	| searchFacade searchFor myDoc|	
	searchFacade := self searchFacadeClass new.	
	myDoc := self indexFiles .
	searchFacade index: myDoc .
	searchFor := searchFacade search: 'of' .
	self assert:(searchFor includes: myDoc  ).
	self halt.