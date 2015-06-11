as yet unclassified
defaultSpec
	<spec: #deafult>
	
^SpecLayout composed 
		      newColumn: 
					[  :col |
						 col 
							newRow: [ :row | row add: #header ]
				                                    height: self inputTextHeight;
								
							newRow: [ :row |  row add: #searchLabel width: 100;
											add: #searchField ]
							height: self inputTextHeight;
							
							newRow: [  :row |  row add: #searchButton]
							height: self inputTextHeight;
										
							newRow: [ :row |  row add: #textLabel ]
							height: self inputTextHeight;
										
							newRow: [ :row | row add: #result1 ]
							height: self inputTextHeight;
										
							newRow: [ :row | row add: #result2 ]
							height: self inputTextHeight;
							
							newRow: [ :row | row add: #result3 ]
							height: self inputTextHeight;
							
							newRow: [ :row | row add: #result4 ]
							height: self inputTextHeight
				];
yourself .
	