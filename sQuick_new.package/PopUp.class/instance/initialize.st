as yet unclassified
initialize

	| font resourceFolder d  |
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
	
	title := TextMorph new.
	title newContents: 'SEARCH RESULTS for "', myString asString, '"' .
	title position: 120@100.
	title extent: 200@100.
	
	searchResults := PluggableTextMorph new.
	searchResults position: 300@200.
	searchResults alwaysShowVScrollBar: true.
	searchResults extent: 200@300.
	searchResults color: Color paleBlue .
	
	fileContents := PluggableTextMorph new.
	fileContents position: 600@200.
	fileContents alwaysShowVScrollBar: true.
	fileContents extent: 500@300.
	
	backBtn := SimpleButtonMorph newWithLabel: 'Back'.
	backBtn color: Color paleTan .
	backBtn borderColor: Color brown .
	backBtn borderWidth: 3.
	backBtn helpText: 'BACK'.
	backBtn roundedCorners: 4 .
	backBtn position: 300@550.
	backBtn extent: 100@50.
	backBtn on: #click send: #value to: [ PopUp delete. IndexInterface open].
	
	timeStamp := TextMorph new.
	d := DateAndTime now asTime.
	timeStamp newContents: d asString .
	timeStamp position: 100@530.
	timeStamp  extent: 150@50.
	dateStamp := TextMorph new.
	d := DateAndTime now asDate printFormat: #(1 2 3 $/ 1 1).
	dateStamp newContents: d asString .
	dateStamp position: 100@550.
	dateStamp extent: 150@50.
	
	builder := WidgetExamples exampleBuilder.
	"builder := Morph new."
	builder position: 500@300.
	
	box := ImageMorph withForm: (Form fromFileNamed: resourceFolder / 'rsz_geobg.gif').
	box extent: 200@200.
	box addMorph: header.
	box addMorph: title .
	box addMorph: dateStamp .
	box addMorph: timeStamp .
	box addMorph: backBtn .
	box addMorph: builder.
	box openInWindowLabeled: 'sQuick'.
	