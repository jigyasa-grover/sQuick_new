as yet unclassified
testSearch3
	| searchFacade searchFor myDoc|	
	searchFacade := self searchFacadeClass new.	
	myDoc := self documentX .
	searchFacade index: myDoc .
	searchFor := searchFacade search: 'of' .
	self assert:(searchFor includes: myDoc  ).
	
	
