events
mouseDown: ev
	BrowseFiles instance heading contents: ('TITLE:   ', chapter title ).
	BrowseFiles instance content contents: (chapter content ).
	
"	BrowseFiles instance contentViewHeader contents:(chapter title ).
	BrowseFiles instance contentView contents: ( chapter content ) wrappedTo: 650."