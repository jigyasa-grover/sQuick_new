as yet unclassified
initialize

	| font resourceFolder d |
	resourceFolder := FileSystem workingDirectory / 'sQuick_new' / 'resources'.
	font := LogicalFont familyName: 'WenQuanYi Micro Hei' pointSize: 10.
	
	StandardFonts listFont: font .
	StandardFonts menuFont: font.
	StandardFonts codeFont: font .
	StandardFonts buttonFont: font .
	StandardFonts defaultFont: font .
	StandardFonts windowTitleFont: font.
		
	header := ImageMorph withForm: (Form fromFileNamed: resourceFolder / 'rsz_header.gif').
	header position: 0@0.
		
	"searchFor := TextMorphForEditView new."
	searchFor := PluggableTextFieldMorph new.
	searchFor position: 300@130.
	searchFor height: 30.
	searchFor width: 450.
	"searchFor newContents: 'Type the search string ...'."
	searchFor borderWidth: 1.
	"searchFor backgroundColor: Color white."
	
	srchBtn := SimpleButtonMorph newWithLabel: 'Search'.
	srchBtn color: Color paleTan .
	srchBtn borderColor: Color brown .
	srchBtn borderWidth: 3.
	srchBtn helpText: 'Click to search'.
	srchBtn roundedCorners: 4 .
	srchBtn position: 800@120.
	srchBtn extent: 100@50.
	srchBtn on: #click send: #value to: [self pop].
	
	browseBtn := SimpleButtonMorph newWithLabel: 'Browse Files'.
	browseBtn color: Color paleTan .
	browseBtn borderColor: Color brown .
	browseBtn borderWidth: 3.
	browseBtn helpText: 'Click to search'.
	browseBtn roundedCorners: 4 .
	browseBtn position: 800@300.
	browseBtn extent: 100@50.
	browseBtn on: #click send: #value to: [BrowseFiles open].
		
			
	timeStamp := TextMorph new.
	d := DateAndTime now asTime.
	timeStamp newContents: d asString .
	timeStamp position: 100@480.
	timeStamp  extent: 150@50.
	dateStamp := TextMorph new.
	d := DateAndTime now asDate printFormat: #(1 2 3 $/ 1 1).
	dateStamp newContents: d asString .
	dateStamp position: 100@500.
	dateStamp extent: 150@50.	
	
	helpBtn := SimpleButtonMorph newWithLabel: 'Help | Tutorial'.
	helpBtn color: Color paleTan .
	helpBtn borderColor: Color brown .
	helpBtn borderWidth: 3.
	helpBtn helpText: 'How to use sQuick'.
	helpBtn roundedCorners: 4 .
	helpBtn position: 300@400.
	helpBtn extent: 100@50.
	
	aboutBtn := SimpleButtonMorph newWithLabel: 'About sQuick'.
	aboutBtn color: Color paleTan .
	aboutBtn borderColor: Color brown .
	aboutBtn borderWidth: 3.
	aboutBtn helpText: 'About sQuick'.
	aboutBtn roundedCorners: 4 .
	aboutBtn position: 540@400.
	aboutBtn extent: 100@50.
	
	feedBtn := SimpleButtonMorph newWithLabel: 'Feedback' .
	feedBtn color: Color paleTan .
	feedBtn borderColor: Color brown .
	feedBtn borderWidth: 3.
	feedBtn helpText: 'Feedback'.
	feedBtn roundedCorners: 4 .
	feedBtn position: 780@400.
	feedBtn extent: 100@50.
	
	
	box := ImageMorph withForm: (Form fromFileNamed: resourceFolder / 'rsz_bg.gif').
	box extent: 200@200.
	box addMorph: header.
	box addMorph: searchFor .
	box addMorph: srchBtn.
	box addMorph: browseBtn.
	box addMorph: dateStamp.
	box addMorph: timeStamp.
	box addMorph: helpBtn .
	box addMorph: aboutBtn.
	box addMorph: feedBtn .
	box openInWindowLabeled: 'sQuick'.
	