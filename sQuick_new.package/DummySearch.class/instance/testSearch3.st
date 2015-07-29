tests
testSearch3
" -----   Searches for the word 'of' in the contents of documentY ----- "
	| searchFacade searchFor myDoc|	
	searchFacade := self searchFacadeClass new.	
	myDoc := self documentY.
	searchFacade index: myDoc .
	searchFor := searchFacade search: 'of' .
	self assert:(searchFor includes: myDoc  ).
	
	
