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
		
	searchHdr := TextMorph new.
	searchHdr newContents: 'Browse Your Files '.
	searchHdr position: 300@200.
	searchHdr extent: 175@50.
	searchHdr font: font .
	
	ptm := PluggableTextMorph new.
	ptm alwaysShowVScrollBar: true.
	ptm position: 300@250.
	ptm extent: 800@300.	
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
	
	box := ImageMorph withForm: (Form fromFileNamed: resourceFolder / 'geoBG.gif').
	box extent: (World extent ).
	box addMorph: header.
	box addMorph: searchHdr .
	box addMorph: ptm.
	box addMorph: browse .
	box openInWindow .
	