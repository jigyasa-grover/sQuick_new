as yet unclassified
initializeWidgets

	header := self newLabel.
	header label: 'OFFLINE TEXT SEARCH'.
	
            searchLabel := self newLabel.
	searchLabel label: 'Enter search word'.
	
	searchField := self newTextInput.
	
	searchButton := self newButton.
	searchButton label: 'SEARCH'.
	
	textLabel := self newLabel.
	textLabel label: ''.	
	
	result1 := self newLabel.
	result1 label: ''.
	result2 := self newLabel.
	result2 label: ''.
	result3 := self newLabel.
	result3 label: ''.
	result4 := self newLabel.
	result4 label: ''.
		
	self focusOrder add: searchField;
				add: searchButton. 