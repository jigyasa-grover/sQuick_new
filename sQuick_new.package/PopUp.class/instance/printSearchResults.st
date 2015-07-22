as yet unclassified
printSearchResults

	IndexInterface delete . 
	self open. 
	SearchQuick searchQuick: self myString.	
	"builder := WidgetExamples exampleBuilder."	
	dialog := (builder newPluggableDialogWindow: 'RESULTS').
	
	searchResultsAccordion :=  dialog contentMorph:
			(
				dialog newColumn: { 
					dialog newColumn: 
 							(
								SearchQuick myResult collect: [ :r |
 												dialog newRow: {
 														(
 															(
																dialog newExpander: r title asString
 																forAll: {		"dialog newText:  r content asString ."	
																				(dialog newTextEditorFor: (ValueHolder new contents: r content asString )
																				 getText: #contents setText: #contents:)minHeight: 150.
																			}
 															)minWidth:750; minHeight: 10
 														)
 																cellInset: 0;
 																borderStyle: (BorderStyle inset baseColor: dialog paneColor; width: 1)
 																		} 
																		]
							).
							
					backBtn := dialog newButtonFor: nil action: nil label: 'Back' help: 'Back'.
					backBtn extent: 750@30.
							}
 			);
 	model: nil.
      builder newScrollPaneFor: searchResultsAccordion.
 	builder openModal: dialog.
	"dialog newScrollPaneFor: searchResultsAccordion ."