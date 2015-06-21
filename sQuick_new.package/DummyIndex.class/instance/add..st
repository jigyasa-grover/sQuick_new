as yet unclassified
add: aDocument
	|tokens|
	"^indexer add: aDocument ."
	tokens := ' ' split: aDocument .
	^indexer add: tokens . 