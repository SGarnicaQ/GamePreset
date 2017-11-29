# GamePreset
Some classes for 3D Game development

## Class Sprite
1. Create a new sprite.
	*	Use the `Sprite ~` class to create a new object.
2. Initialize.
	*	Using `~ = new Sprite(imagePath,tam);`
		*	`imagePath`	:	is not necesary to call data/ folder
		*	`tam`	:	is the tam of each part of the sprite, used for split the image in an array.
3. Paint the sprite.
	*	Use `~.animate(min, max, speed, posX, posY, tam)` to paint the animation
		*	`min`	:	ArrayList start frame number.
		*	`max`	:	ArrayList end frame number.
		*	`speed`	:	Use a value betwee 0 - 1 where 0 is notAnimate,  1 sketch tick speed. 
		>	Values over 1 is just too fast, not recommended.
	*	Use `~.paintFrame(int nFrame, posX, posY, tam)` to paint an especific frame of the animation.
		*	`nFrame`:	ArrayList Value of the frame.
		*	`pos`	:	`x` and `y` are the center of the sprite position.
		*	`tam`	:	rescale the image.
	*	Extra
		*	You can use `if(~.animation)` to call just when you set `~.animation` true.