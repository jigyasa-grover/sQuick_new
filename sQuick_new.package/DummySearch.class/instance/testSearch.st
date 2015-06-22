as yet unclassified
testSearch
	| searchFacade searchFor  |	
	searchFacade := self searchFacadeClass new.	
	searchFacade index: self document1.	
	searchFor := searchFacade search: 'of' .
	self assert:(searchFor includes:(self document1 )).
	
	
