popUps
helpPopUp
	| builder dialog  helpMsg |
	builder := WidgetExamples exampleBuilder.
	dialog := (builder newPluggableDialogWindow: 'HELP').
	helpMsg := '***searchQuick***\\The application comes pre-loaded with test file collection in *./sQuick_new/resources/document* folder. \Have fun adding more files as per your convenience to your current Pharo image.\\Features Offered:\*BROWSE* Files \ *SEARCH* within them' withCRs .
	dialog contentMorph:
			(
				dialog newText: helpMsg asString
 			);
 	model: nil.
 	builder openModal: dialog.
	boxWindow window color: Color black .