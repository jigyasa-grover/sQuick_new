as yet unclassified
helpPopUp
	| builder dialog  helpMsg |
	builder := WidgetExamples exampleBuilder.
	dialog := (builder newPluggableDialogWindow: 'HELP').
	helpMsg := 'vwkjvbjrbjrbnwbvjwiuwiuvwnvj'.
	dialog contentMorph:
			(
				dialog newText: 'Help Section'
 			);
 	model: nil.
 	builder openModal: dialog.
	boxWindow window color: Color black .