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
	title newContents: 'Searching....'.
	title position: 100@100.
	title extent: 100@100.
	
	pos := 120.
	SearchQuick myResult do: [:r|
		x := TextMorph new.
		x position: 100@pos.
		x content: r first.
		pos := pos+20.  
		].
	
	backBtn := SimpleButtonMorph newWithLabel: 'Back'.
	backBtn color: Color paleTan .
	backBtn borderColor: Color brown .
	backBtn borderWidth: 3.
	backBtn helpText: 'BACK'.
	backBtn roundedCorners: 4 .
	backBtn position: 300@400.
	backBtn extent: 100@50.
	backBtn on: #click send: #value to: [ PopUp delete. IndexInterface open].
	
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
	
	box := ImageMorph withForm: (Form fromFileNamed: resourceFolder / 'rsz_geobg.gif').
	box extent: 200@200.
	box addMorph: header.
	box addMorph: title .
	box addMorph: dateStamp .
	box addMorph: timeStamp .
	box addMorph: backBtn .
	box addMorph: x.
	box openInWindowLabeled: 'sQuick'.
	