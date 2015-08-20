initialize
initialize
	
	| font resourceFolder resourcePath d boxPanel aPoint c item browseScroll |
	
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
		
	searchHdr := TextMorph new.
	searchHdr newContents: 'BROWSE YOUR FILES: Click on the file title in the list and view its content !'.
	searchHdr position: (World extent x/4.336 )@(World extent y/5).
	searchHdr extent: (World extent x/3.25)@(World extent y/15).
	searchHdr font: font .
	
	ptm := PluggableTextMorph new.
	ptm alwaysShowVScrollBar: true.
	ptm position:(World extent x/4.336)@(World extent y/4).
	ptm extent:(World extent x/2.168)@(World extent y/2.75).
	txtViewer := ptm textMorph.
		
	browseScroll := ScrollPane new.
	browseScroll position: (World extent x/26.02)@(World extent y/4).
	browseScroll extent: (World extent x/6.33)@(World extent y/2.75).	
	
	browse := MenuMorph new.
	browse color: Color paleYellow.
	browse stayUp: true.
		
	browseHdr := TextMorph new.
	browseHdr newContents: 'FILES   AVAILABLE'.
	browseHdr backgroundColor: Color paleBlue .
	browseHdr extent:(World extent x/7.435)@(World extent y/15).
	browse addMorph: browseHdr  .	
	
	browseScroll scroller addMorph: browse .
	
	
	"----------------------------------------------------------------------------------------------------------"	
	"== FILE ACCESS =="
	
	"Chapter clear.
	MyMenuItem clear."
		
	(resourceFolder / 'document') allFiles sort do: [ :f |
		|doc|
		doc := Document new.
		doc	openWithFile: f.
		doc	title: f basenameWithoutExtension.
		( Chapter entries contains: [ :chapter | 
			chapter title = doc title ]
		) 
		ifTrue: [nil.] 
		ifFalse: [ 
			c := Chapter new . 
			Chapter add: c. 
			c title: doc title .
			c content: doc content.
			item:= MyMenuItem new chapter: c. 
			MyMenuItem add: item.
			].
		    ] .
		
		MyMenuItem menuEntries do: [ :menuItems |
			browse addMenuItem: menuItems  .
			 ].
	"----------------------------------------------------------------------------------------------------------"	
	
	timeStamp := TextMorph new.
	d := DateAndTime now asTime.
	timeStamp newContents: 'Time: ', d asString .
	timeStamp position:(World extent x/4.336)@(World extent y/1.5).
	timeStamp extent: (World extent x/8.673)@(World extent y/15).
	
	dateStamp := TextMorph new.
	d := DateAndTime now asDate printFormat: #(1 2 3 $/ 1 1).
	dateStamp newContents: 'Date: ', d asString .
	dateStamp position: (World extent x/4.336)@(World extent y/1.45).
	dateStamp extent: (World extent x/8.673)@(World extent y/15).
	
	backBtn := SimpleButtonMorph newWithLabel: 'Back'.
	backBtn color: Color paleTan .
	backBtn borderColor: Color brown .
	backBtn borderWidth: 3.
	backBtn helpText: 'BACK'.
	backBtn roundedCorners: 4 .
	backBtn position: (World extent x/1.626)@(World extent y/1.5).
	backBtn extent:(World extent x/13.01)@(World extent y/15).
	backBtn on: #click 
			send: #value 
			to: [self boxWindow window close. 
				BrowseFiles delete . 
				IndexInterface open].
	
	box := ImageMorph withForm: (Form fromFileNamed: resourceFolder / 'rsz_geobg.gif').
	aPoint := World extent.
	box extent: aPoint.
	
	box addMorph: header.
	box addMorph: searchHdr .
	box addMorph: timeStamp .
	box addMorph: dateStamp .
	box addMorph: backBtn .
	box addMorph: ptm.
	box addMorph: browseScroll .
	
    	boxPanel := Morph new
        				color: Color black;
        				changeTableLayout;
        				wrapCentering: #center;
        				addMorph: box;
        yourself.

   	 boxWindow := boxPanel openInWindow.
    	boxWindow setLabel: 'searchQuick - Browse Files'.
    	boxWindow fullscreen.
    	boxWindow extent: World extent.
    	boxWindow position: 0@0.  