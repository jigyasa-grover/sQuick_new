as yet unclassified
aboutPopUp
	| builder dialog  |
	builder := WidgetExamples exampleBuilder.
	dialog := (builder newPluggableDialogWindow: 'ABOUT').
	
	dialog contentMorph:
			(
				dialog newText: 'About Section'
 			);
 	model: nil.
 	builder openModal: dialog.
	boxWindow window color: Color black .