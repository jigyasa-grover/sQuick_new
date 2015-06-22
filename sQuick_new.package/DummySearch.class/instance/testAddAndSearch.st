as yet unclassified
testAddAndSearch
	| searchFacade result  |
	
	searchFacade := self searchFacadeClass new.
	
	searchFacade index: self document1.	
		
	"tokens := ' ' split: self document1 .
	searchFacade index: tokens ."
		
	"result := searchFacade search: self textInDocument1AndInDocument2."
      "result := searchFacade search: ' commonTerm document1 '."

	result := searchFacade queryString: 'of' .
	self assert:(result includes:(self document1 )). 
	
	
