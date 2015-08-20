as yet unclassified
errorPopUp
	| errorBuilder errorDialog  errorMsg |
	errorBuilder := WidgetExamples exampleBuilder.
	errorDialog := (errorBuilder newPluggableDialogWindow: 'Oops !').
	errorMsg := 'Oops!\Seems you have not entered a *search string*.\Try Again?' withCRs.
	errorDialog  contentMorph:
			(
				errorDialog newText: errorMsg asString 
 			);
 	model: nil.
 	errorBuilder openModal: errorDialog.