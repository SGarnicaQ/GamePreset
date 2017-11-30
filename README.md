# GamePreset
Some classes for 3D Game development

## Class Button
1. Create a new button
	*	Use the `Button ~` class to create a new object.
2. Initialize
	*	Using `~ = new Button("text",posX,posY,posX2,posY2);`
	*	Using `~ = new Button("text",posX,posY,posX2,posY2,backgroundColor,textColor);`
	*	Using `~ = new Button("text",posX,posY,posX2,posY2,backgroundColor,textColor,selectedBackgroundColor,selectedTextColor);`
		*	`"text"`	:	text the appear in the button area.
		*	`pos`	:	`x`,`y`,`x2`,`y2` are the position of the top-left corner (`x`,`y`), and bottom-right corner (`x2`,`y2`) of the button area.
		* 	`backgroundColor`	:	color of the button area.
		*	`textColor`	:	color of the text button.
		*	`selected color`	:	when the button is selected, the color change to this new color.
3. Paint the Button
	*	Use `~.paint()` to paint the button.
4. Button actions
	*	Use `~.clicked()` to know when the button is clicked, it return boolean value.
	*	Use `~.selected()` to know when the button is selected or the mouse is on  it, it return boolean value.