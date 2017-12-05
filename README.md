# GamePreset
Some classes for 3D Game development

## Class Button
1. Create a new button
	*	Use the `Button ~` class to create a new object.
2. Initialize
	*	Using `~ = new Button(posX1,posY1,posX2,posY2,mode);`
	*	Using `~ = new Button("text",posX1,posY1,posX2,posY2,mode);`
		*	`"text"`	:	text the appear in the button area.
		*	`pos`	:	`x1`,`y1`,`x2`,`y2` are the position of the top-left corner (`x1`,`y1`), and bottom-right corner (`x2`,`y2`) of the button area.
		*	`mode`	:	int mode 0 is normal button, and 1 is toggle button.
3. Paint the Button
	*	Use `~.paint()` to paint the button.
4. Button actions
	*	Use `~.clicked()` to know when the button is clicked, it return boolean value.
	*	Use `~.selected()` to know when the button is selected or the mouse is on  it, it return boolean value.