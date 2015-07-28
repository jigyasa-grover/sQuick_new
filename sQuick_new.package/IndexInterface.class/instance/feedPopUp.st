as yet unclassified
feedPopUp
	| builder dialog  |
	builder := WidgetExamples exampleBuilder.
	dialog := (builder newPluggableDialogWindow: 'FEEDBACK').
	
	dialog contentMorph:
			(
				dialog newRow: {  
									dialog newText: 'Feedback Section'
								 }
				
 			);
 	model: nil.
 	builder openModal: dialog.