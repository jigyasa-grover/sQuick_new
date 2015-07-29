tests
testSearch1
	" -----   Searches for the word 'of' in the contents of documentX ----- "
	| searchFacade searchFor myDoc|	
	searchFacade := self searchFacadeClass new.	
	myDoc := self documentX .
	searchFacade index: myDoc .
	searchFor := searchFacade search: 'of' .
	self assert:(searchFor includes: myDoc  ).
	
	
