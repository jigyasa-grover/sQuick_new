as yet unclassified
myButtonWithLabel: aString color: colorOfButton borderColor: colorOfBorder helpText: text position: aPoint
|x|
	x := SimpleButtonMorph newWithLabel:  aString.
	x color: colorOfButton .
	x borderColor: colorOfBorder .
	x borderWidth: 3.
	x helpText: text asString.
	x roundedCorners: 4 .
	x position: aPoint .
	x extent: 100@50.
	^x