as yet unclassified
printSearchResults
	|dialog   |

	IndexInterface delete . 
	self open. 
	SearchQuick searchQuick: self myString.	
	"builder := WidgetExamples exampleBuilder."	
	dialog := (builder newPluggableDialogWindow: 'RESULTS').
	
	dialog contentMorph:
			(
					dialog newColumn:
 							(
								SearchQuick myResult collect: [ :r |
 												dialog newRow: {
 														(
 															(
																dialog newExpander: r title asString
 																forAll: {		"dialog newText:  r content asString ."	
																				(dialog newTextEditorFor: (ValueHolder new contents: r content asString )
																				 getText: #contents setText: #contents:)minHeight: 300.
																			}
 															)minWidth:600; minHeight: 10
 														)
 																cellInset: 0;
 																borderStyle: (BorderStyle inset baseColor: dialog paneColor; width: 1)
 																		} 
																		]
							)
 			);
 	model: nil.
 	builder openModal: dialog.