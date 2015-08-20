Widgets
myButtonWithLabel: aString color: colorOfButton borderColor: colorOfBorder helpText: text position: aPoint
|x|
	x := SimpleButtonMorph newWithLabel:  aString.
	x color: colorOfButton .
	x borderColor: colorOfBorder .
	x borderWidth: 3.
	x helpText: text asString.
	x roundedCorners: 4 .
	x position: aPoint .
	x extent: (World extent x/10.84)@(World extent y/12.4).
	^x