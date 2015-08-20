as yet unclassified
searchButtonClicked
searchBar accept .
(myString isEmptyOrNil  ) 
ifTrue: [self errorPopUp ] 
ifFalse: [ 
	 myString := searchBar getText asString .
          self printSearchResults
               ] .
