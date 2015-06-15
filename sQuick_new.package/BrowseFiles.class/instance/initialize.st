as yet unclassified
initialize

	| font resourceFolder d|
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
		
	searchHdr := TextMorph new.
	searchHdr newContents: 'Browse Your Files '.
	searchHdr position: 300@200.
	searchHdr extent: 175@50.
	searchHdr font: font .
	
	ptm := PluggableTextMorph new.
	ptm alwaysShowVScrollBar: true.
	ptm position: 300@250.
	ptm extent: 600@300.	
	txtViewer := ptm textMorph.
	
	browse := MenuMorph new.
	browse stayUp: true.
	browse position: 50@250.
	browse extent: 400@1000.	
	
	browseHdr := TextMorph new.
	browseHdr newContents: 'Browse'.
	browseHdr backgroundColor: Color paleBlue .
	browseHdr extent: 175@50.
	browse addMorph: browseHdr  .	
	
	
	"----------------------------------------------------------------------------------------------------------"
	
	"== FILE ACCESS =="
	
	Chapter clear.
	MyMenuItem clear.
		
	(resourceFolder / 'document') allFiles sort do: [ :f |
		Document new
			openWithFile: f;
			title: f basenameWithoutExtension ].
		
		Chapter allSubInstances size > 0 ifTrue: [
		1 to: (Chapter allSubInstances size) do: [ :index |
			|chapter item|
			chapter := Chapter at: index.
			item := MyMenuItem new chapter: chapter. 
			"item interface: self."
			browse  addMenuItem: item.
		].
	].
	

	"---------------------------------------------------------"
	
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
	box extent: (World extent ).
	box addMorph: header.
	box addMorph: searchHdr .
	box addMorph: timeStamp .
	box addMorph: dateStamp .
	box addMorph: ptm.
	box addMorph: browse .
	box openInWindow .
	