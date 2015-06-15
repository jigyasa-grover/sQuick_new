as yet unclassified
mouseDown: ev
	BrowseFiles instance heading contents: (chapter title ).
	BrowseFiles instance content contents: (chapter content ).
"	BrowseFiles instance contentViewHeader contents:(chapter title ).
	BrowseFiles instance contentView contents: ( chapter content ) wrappedTo: 650."