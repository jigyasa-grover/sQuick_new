as yet unclassified
aboutPopUp
	| builder dialog  aboutMsg |
	builder := WidgetExamples exampleBuilder.
	dialog := (builder newPluggableDialogWindow: 'ABOUT').
	aboutMsg := '*searchQuick*\Version 1.0.0\Platform: Pharo 4.0\Developed by: Jigyasa Grover under the guidance of Martin Bahr and Sean DeNigris.\Developed in: June-August 2015 as a part of Google Summer Of Code 2015 under the organization FOSSASIA.\\The application is intended to enable a user to browse and search within a set of texts or some other topical book collection offline.\The application comes pre-loaded with test file collection in *./sQuick_new/resources/document* folder. \Have fun adding more files as per your convenience to your current Pharo image.\' withCRs.
	dialog contentMorph:
			(
				dialog newText: aboutMsg asString 
 			);
 	model: nil.
 	builder openModal: dialog.
	boxWindow window color: Color black .