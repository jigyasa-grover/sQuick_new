as yet unclassified
searchButtonClicked
searchBar accept .
(myString ifNil ) 
ifTrue: [self errorPopUp ] 
ifFalse: [ 
	 myString := searchBar getText asString .
          self printSearchResults
               ] .
