as yet unclassified
helpPopUp
	| builder dialog  |
	builder := WidgetExamples exampleBuilder.
	dialog := (builder newPluggableDialogWindow: 'HELP').
	
	dialog contentMorph:
			(
				dialog newText: 'Help Section'
 			);
 	model: nil.
 	builder openModal: dialog.