as yet unclassified
initialize

	| font resourceFolder |
	resourceFolder := FileSystem workingDirectory / 'sQuick_new' / 'resources'.
	font := LogicalFont familyName: 'WenQuanYi Micro Hei' pointSize: 4.
	
	StandardFonts listFont: font .
	StandardFonts menuFont: font.
	StandardFonts codeFont: font .
	StandardFonts buttonFont: font .
	StandardFonts defaultFont: font .
	StandardFonts windowTitleFont: font.
		
	header := ImageMorph withForm: (Form fromFileNamed: resourceFolder / 'header.gif').
	header position: 0@0.
		
	searchFor := TextMorphForEditView new.
	searchFor position: 300@130.
	searchFor height: 200.
	searchFor width: 450.
	searchFor newContents: 'Type the search string ...'.
	searchFor borderWidth: 1.
	searchFor backgroundColor: Color white.
	
	srchBtn := SimpleButtonMorph newWithLabel: 'Search'.
	srchBtn color: Color paleTan .
	srchBtn borderColor: Color brown .
	srchBtn borderWidth: 3.
	srchBtn helpText: 'Click to search'.
	srchBtn roundedCorners: 4 .
	srchBtn position: 800@120.
	srchBtn extent: 100@50.
		
	
	helpBtn := SimpleButtonMorph newWithLabel: 'Help | Tutorial'.
	helpBtn color: Color paleTan .
	helpBtn borderColor: Color brown .
	helpBtn borderWidth: 3.
	helpBtn helpText: 'How to use sQuick'.
	helpBtn roundedCorners: 4 .
	helpBtn position: 300@600.
	helpBtn extent: 100@50.
	
	aboutBtn := SimpleButtonMorph newWithLabel: 'About sQuick'.
	aboutBtn color: Color paleTan .
	aboutBtn borderColor: Color brown .
	aboutBtn borderWidth: 3.
	aboutBtn helpText: 'About sQuick'.
	aboutBtn roundedCorners: 4 .
	aboutBtn position: 540@600.
	aboutBtn extent: 100@50.
	
	feedBtn := SimpleButtonMorph newWithLabel: 'Feedback' .
	feedBtn color: Color paleTan .
	feedBtn borderColor: Color brown .
	feedBtn borderWidth: 3.
	feedBtn helpText: 'Feedback'.
	feedBtn roundedCorners: 4 .
	feedBtn position: 780@600.
	feedBtn extent: 100@50.
	
	
	box := ImageMorph withForm: (Form fromFileNamed: resourceFolder / 'geoBG.gif').
	box extent: 200@200.
	box addMorph: header.
	box addMorph: searchFor .
	box addMorph: srchBtn.
	box addMorph: helpBtn .
	box addMorph: aboutBtn.
	box addMorph: feedBtn .
	box openInWindowLabeled: 'sQuick'.
	