Print Search Results
printSearchResults
	| x scrollPane expanders exX    |
	IndexInterface delete . 
	self open. 
	SearchQuick searchQuick: self myString.	
	"builder := WidgetExamples exampleBuilder."	
	dialog := (builder newPluggableDialogWindow: 'SEARCH  RESULTS  FOR "', myString , '"').
	
	exX := (World extent x)-40.
	
	"searchBar := dialog newColumn:
	(
	         dialog newRow:  { 
	                                                 dialog newPluggableTextFieldMorph on: self text: #myString accept: #myString.
	                                                 searchFor := PluggableTextFieldMorph  on: self text: #myString  accept: #myString: .
	                                                  searchFor acceptOnCR: true.
	                                                   searchFor height: (World extent y/24.8).
	                                                   searchFor width: World extent x/2.9.
	                                                   searchFor ghostText: self myString .
	                                                   searchFor borderWidth: 1.
	                                              }
	)."
	
	expanders := dialog newColumn: 
 							(
								SearchQuick myResult collect: [ :r |
												
												"x := TextMorph new."
												x  := MyExpanderTitleMorph new.
												"x newContents: ((r title asString, String cr, r content asString, '......' ) truncateWithElipsisTo: 35)."
												x titleText: (('TITLE: ', r title asString, String cr, 'CONTENT:  ', r content asString, '......' ) truncateWithElipsisTo: 45).
												x width: World extent x.
												
 												dialog newRow: {
 														(
 															(
																dialog newExpander: (r title asString  ) 
 																forAll: {
																		(  dialog newTextEditorFor: (  ValueHolder new contents: r content asString   )
																		 getText: #contents setText: #contents:  )minHeight: (World extent y)/5.
																	    }
 															)minWidth:World extent x; minHeight: 10;color: Color paleMagenta; titleMorph: x; yourself 
 														)
 																cellInset: 0;
 																borderStyle: (BorderStyle inset baseColor: dialog paneColor; width: 1)
 																		} 
															]
							).
	
	expanders bounds: (Rectangle origin: 15@10 extent: exX@(World extent y)  ).
	scrollPane := dialog newScrollPaneFor: expanders.
	scrollPane
		scrollTarget: expanders;
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		minHeight: (World extent y)/4;
		minWidth: (World extent x)/(2.5).
	searchResultsAccordion :=  dialog contentMorph:
			(
				dialog newColumn: {
					scrollPane.
							
					backBtn := dialog newButtonFor: self action: #backButtonClicked label: 'BACK' help: 'Back'.
					backBtn width: World extent x.
					backBtn height: (World extent y)/25.
					backBtn color: Color orange.
					backBtn borderColor: Color orange .
					backBtn borderWidth: 2.
							}
 			); minWidth: exX; minHeight: World extent y;
 	model: nil.
	
	searchResultsAccordion position: 0@0.
	searchResultsAccordion extent: World extent.
	searchResultsAccordion width: World extent x.
	searchResultsAccordion height: World extent y.
	dialog position: 0@0.
	dialog  extent: World extent.
	"dialog openInWorld ." dialog openFullscreen.
	dialog color: Color black.
 	"builder openModal: dialog."
	"dialog newScrollPaneFor: searchResultsAccordion ."