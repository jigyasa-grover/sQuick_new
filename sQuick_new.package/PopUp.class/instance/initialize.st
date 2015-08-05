initialization
initialize

	"backBtn on: #click send: #value to: [ PopUp delete. IndexInterface open]."
	
	builder := WidgetExamples exampleBuilder.
	builder position: 0@0.
	builder extent: World extent.
	builder color: Color black.
	
	"box := ImageMorph withForm: (Form fromFileNamed: resourceFolder / 'rsz_geobg.gif').
	box extent: 200@200.
	box addMorph: header.
	box addMorph: title .
	box addMorph: dateStamp .
	box addMorph: timeStamp .
	box addMorph: backBtn .
	box addMorph: builder.
	box openInWindowLabeled: 'sQuick'."
	