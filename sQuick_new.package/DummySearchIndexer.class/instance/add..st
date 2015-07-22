adding
add: aDocument
	"|tokens|
	tokens := ' ' split:aDocument contents."
	index at: aDocument put: {aDocument title  . aDocument content }.