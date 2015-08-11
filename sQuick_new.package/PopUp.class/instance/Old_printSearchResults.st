as yet unclassified
Old_printSearchResults
	| x |
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
												
												"x := TextMorph new."
												x  := MyExpanderTitleMorph new.
												"x newContents: ((r title asString, String cr, r content asString, '......' ) truncateWithElipsisTo: 35)."
												x titleText: (    ('TITLE: ',r title asString, String cr, 'CONTENT: ', r content asString, '......'  ) truncateWithElipsisTo: 50).
												x width: World extent x.
												
 												dialog newRow: {
 														(
 															(
																
																dialog newExpander: (r title asString  ) 
 																forAll: {
																		(  dialog newTextEditorFor: (  ValueHolder new contents: r content asString   )
																		 getText: #contents setText: #contents:  )minHeight: 150.
																	    }
 															)minWidth:World extent x; minHeight: 10;color: Color paleMagenta; titleMorph: x; yourself 
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
					backBtn borderColor: Color orange .
					backBtn borderWidth: 2.
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