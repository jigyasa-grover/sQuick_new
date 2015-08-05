as yet unclassified
printSearchResults

	IndexInterface delete . 
	self open. 
	SearchQuick searchQuick: self myString.	
	"builder := WidgetExamples exampleBuilder."	
	dialog := (builder newPluggableDialogWindow: 'SEARCH  RESULTS  FOR "', myString , '"').
	
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
 																forAll: {	
																		(  dialog newTextEditorFor: (  ValueHolder new contents: r content asString   )
																		 getText: #contents setText: #contents:  )minHeight: 150.
																	    }
 															)minWidth:World extent x; minHeight: 10;color: Color paleBuff 
 														)
 																cellInset: 0;
 																borderStyle: (BorderStyle inset baseColor: dialog paneColor; width: 1)
 																		} 
																		]
							) .
							
					backBtn := dialog newButtonFor: self action: #backButtonClicked label: 'BACK' help: 'Back'.
					backBtn width: World extent x.
					backBtn height: 30.
					backBtn color: Color orange.
							}
 			); minWidth: World extent x; minHeight: World extent y;
 	model: nil.
	searchResultsAccordion position: 0@0.
	searchResultsAccordion extent: World extent.
	searchResultsAccordion width: World extent x.
	searchResultsAccordion height: World extent y.
          builder newScrollPaneFor: searchResultsAccordion.
	dialog position: 0@0.
	dialog  extent: World extent.
	dialog openFullscreen .
	dialog color: Color black.
 	"builder openModal: dialog."
	"dialog newScrollPaneFor: searchResultsAccordion ."