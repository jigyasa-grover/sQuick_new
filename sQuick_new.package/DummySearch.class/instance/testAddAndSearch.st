tests
testAddAndSearch
" -----   Searches for the word 'murder' in the contents of documentX ----- "
" -----   Should DENY the existence   -----"
	|searchFacade result|	
	searchFacade := self searchFacadeClass new.	
	"Check for document1 - Why doesnt it work?"
	"searchFacade index: self document1."
	
	searchFacade index: self documentX.
		
	"tokens := ' ' split: self document1 .
	searchFacade index: tokens ."		
	"result := searchFacade search: self textInDocument1AndInDocument2."
   "result := searchFacade search: ' commonTerm document1 '."

	result := searchFacade search: 'murder' .
	"self assert:(result includes:(self documentX ))."
	self deny:(result includes:(self documentX )).