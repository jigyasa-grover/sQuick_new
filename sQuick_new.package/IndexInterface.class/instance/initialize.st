initialization
initialize	
	| font resourceFolder resourcePath d popUp aPoint header browseOptn browseBtn searchFor srchBtn helpBtn aboutBtn feedBtn timeStamp dateStamp searchForHeader fs  |
	
	"resourceFolder := FileSystem workingDirectory / 'sQuick_new' / 'resources'."
	
	MCGitHubRepository allSubInstancesDo: 
									[ :repo |
										 repo projectPath = 'jig08/sQuick_new'  ifTrue: [ resourcePath := repo directory ] 
									]. 
	resourceFolder  := resourcePath / 'sQuick_new/resources'.
	
	font := StandardFonts defaultFont .
	StandardFonts listFont: font .
	StandardFonts menuFont: font.
	StandardFonts codeFont: font .
	StandardFonts buttonFont: font .
	StandardFonts defaultFont: font .
	StandardFonts windowTitleFont: font.
		
	header := ImageMorph withForm: (Form fromFileNamed: resourceFolder / 'rsz_header.gif').
	header position: 0@0.
		
	browseOptn := TextMorph new.
	browseOptn newContents: 'Scan through the topical text collection available ! Click BROWSE FILES. Also check out how to add new text in the HELP section'.
	browseOptn position: 200@310.
	browseOptn extent: 400@50.
	
	browseBtn := self myButtonWithLabel: 'Browse Files' color: Color paleTan borderColor: Color brown helpText: 'Click to browse files' position: 700@300.
	browseBtn on: #click send: #value to: [self boxWindow window close. IndexInterface delete. BrowseFiles open].
	
	"browseBtn := SimpleButtonMorph newWithLabel: 'Browse Files'.
	browseBtn color: Color paleTan .
	browseBtn borderColor: Color brown .
	browseBtn borderWidth: 3.
	browseBtn helpText: 'Click to search'.
	browseBtn roundedCorners: 4 .
	browseBtn position: 75@200.
	browseBtn extent: 100@50.
	browseBtn on: #click send: #value to: [IndexInterface delete. BrowseFiles open]."
	
	popUp := PopUp basicNew.
	
	searchForHeader := ImageMorph withForm: (Form fromFileNamed: resourceFolder / 'searchHeader.gif').
	searchForHeader position: 230@200.
	
	searchFor := PluggableTextFieldMorph  on: popUp text: #myString  accept: #myString: .
	searchFor acceptOnCR: true.
	searchFor position: 200@130.
	searchFor height: 30.
	searchFor width: 450.
	searchFor ghostText: 'Type the search string ...'.
	searchFor borderWidth: 1.
	
	srchBtn := self myButtonWithLabel: 'Search' color: Color paleTan borderColor: Color brown helpText: 'Click to search for the entered string' position: 700@120.
	srchBtn on: #click send: #value to: [searchFor accept . popUp printSearchResults ."popUp openAndPrint  ." ].
	
	"srchBtn := SimpleButtonMorph newWithLabel: 'Search'.
	srchBtn color: Color paleTan .
	srchBtn borderColor: Color brown .
	srchBtn borderWidth: 3.
	srchBtn helpText: 'Click to search'.
	srchBtn roundedCorners: 4 .
	srchBtn position: 800@120.
	srchBtn extent: 100@50.
	srchBtn on: #click send: #value to: [ searchFor accept. IndexInterface delete . popUp open. SearchQuick searchQuick: popUp myString. popUp printResult. ]."
	
	helpBtn := self myButtonWithLabel: 'Help | Tutorial' color: Color paleTan borderColor: Color brown helpText: 'Click here to seek help on using searchQuick' position: 200@400.
	helpBtn on: #click send: #value to: [ self helpPopUp. ].
	
	"helpBtn := SimpleButtonMorph newWithLabel: 'Help | Tutorial'.
	helpBtn color: Color paleTan .
	helpBtn borderColor: Color brown .
	helpBtn borderWidth: 3.
	helpBtn helpText: 'How to use sQuick'.
	helpBtn roundedCorners: 4 .
	helpBtn position: 300@400.
	helpBtn extent: 100@50.
	helpBtn on: #click send: #value to: [ self helpPopUp. ]."
	
	aboutBtn := self myButtonWithLabel: 'About sQuick' color: Color paleTan borderColor: Color brown helpText: 'Click to see details of searchQuick' position: 440@400.
	aboutBtn on: #click send: #value to: [ self aboutPopUp. ].
	
	"aboutBtn := SimpleButtonMorph newWithLabel: 'About sQuick'.
	aboutBtn color: Color paleTan .
	aboutBtn borderColor: Color brown .
	aboutBtn borderWidth: 3.
	aboutBtn helpText: 'About sQuick'.
	aboutBtn roundedCorners: 4 .
	aboutBtn position: 540@400.
	aboutBtn extent: 100@50.
	aboutBtn on: #click send: #value to: [ self aboutPopUp . ]."
	
	feedBtn := self myButtonWithLabel: 'Feedback' color: Color paleTan borderColor: Color brown helpText: 'Click for contact details of searchQuick' position: 700@400.
	feedBtn on: #click send: #value to: [ self feedPopUp. ].
	
	"feedBtn := SimpleButtonMorph newWithLabel: 'Feedback' .
	feedBtn color: Color paleTan .
	feedBtn borderColor: Color brown .
	feedBtn borderWidth: 3.
	feedBtn helpText: 'Feedback'.
	feedBtn roundedCorners: 4 .
	feedBtn position: 800@400.
	feedBtn extent: 100@50.
	feedBtn  on: #click send: #value to: [ self feedPopUp. ]."
				
	timeStamp := TextMorph new.
	d := DateAndTime now asTime.
	timeStamp newContents: 'Time: ', d asString .
	timeStamp position: 200@500.
	timeStamp  extent: 150@50.
	
	dateStamp := TextMorph new.
	d := DateAndTime now asDate printFormat: #(1 2 3 $/ 1 1).
	dateStamp newContents: 'Date: ', d asString .
	dateStamp position: 200@515.
	dateStamp extent: 150@50.
	
	codeLink := TextMorph new.
	codeLink newContents: 'Code Repository: github.com/jig08/sQuick_new'.
	codeLink position: 550@500.
	codeLink extent: 400@50.
	
	box := ImageMorph withForm: (Form fromFileNamed: resourceFolder / 'rsz_bg.gif').
	aPoint := World extent.
	box extent: aPoint .
	box addMorph: header.
	box addMorph: searchFor .
	box addMorph: searchForHeader .
	box addMorph: srchBtn.
	box addMorph: browseOptn .
	box addMorph: browseBtn.
	box addMorph: helpBtn .
	box addMorph: aboutBtn.
	box addMorph: feedBtn .
	box addMorph: dateStamp.
	box addMorph: timeStamp.
	box addMorph: codeLink .
	"box openInWindowLabeled: 'sQuick'."
	
		
	"boxWindow := SystemWindow new.
	boxWindow := box openInWindow .
	boxWindow setLabel: 'searchQuick'.
	box position: 150@0.
	boxWindow addMorph: box.
	boxWindow fullscreen.
	boxWindow color: Color black."
	
	fs := GradientFillStyle ramp: {0.0 -> Color red. 1.0 -> Color green}.
	fs origin: box bounds center.
	fs direction: (box bounds width // 2) @ 0.
	fs radial: true.
	box fillStyle: fs.
	boxWindow := box openInWindowLabeled: 'blah' inWorld: World.
	boxWindow fullscreen.
	boxWindow color: Color black.
	
	
	
	
	
	



