as yet unclassified
errorPopUp
	| builder dialog  errorMsg |
	builder := WidgetExamples exampleBuilder.
	dialog := (builder newPluggableDialogWindow: 'Oops !').
	errorMsg := 'Oops!\Seems you have not entered a *search string*.\Try Again?' withCRs.
	dialog contentMorph:
			(
				dialog newText: errorMsg asString 
 			);
 	model: nil.
 	builder openModal: dialog.
	boxWindow window color: Color black .