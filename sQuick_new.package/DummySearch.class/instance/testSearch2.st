tests
testSearch2
" -----   Searches for the word 'files' in the contents of documentX ----- "
	| searchFacade searchFor myDoc|	
	searchFacade := self searchFacadeClass new.	
	myDoc := self documentX .
	searchFacade index: myDoc .
	searchFor := searchFacade search: 'files' .
	self assert:(searchFor includes: myDoc  ).
	
	
