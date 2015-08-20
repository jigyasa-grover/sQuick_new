popUps
feedPopUp
	| builder dialog  feedMsg |
	builder := WidgetExamples exampleBuilder.
	dialog := (builder newPluggableDialogWindow: 'FEEDBACK').
	feedMsg := 'Fork, Explore & Suggest ! \\Check out the repository @ github.com/jig08/sQuick_new.\\For further details post on Pharo forum or #pharo IRC.\\Freely contact via grover.jigyasa1@gmail.com.' withCRs.
	dialog contentMorph:
			(
				dialog newRow: {  
									dialog newText: feedMsg asString  .
							       }
				
 			);
 	model: nil.
 	builder openModal: dialog.
	boxWindow window color: Color black.