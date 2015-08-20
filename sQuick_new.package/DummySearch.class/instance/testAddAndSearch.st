tests
testAddAndSearch
" -----   Searches for the word 'murder' in the contents of documentX ----- "
" -----   Should DENY the existence   -----"
	|searchFacade result|	
		
	searchFacade := self searchFacadeClass new.
		
	searchFacade index: self documentX.
		
	result := searchFacade search: 'murder' .
	
	self deny:(result includes:(self documentX )).