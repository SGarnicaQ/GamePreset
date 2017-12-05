# GamePreset
Some classes for 3D Game development

## Class Sprite
1. Create a new sprite.
	*	Use the `Sprite ~` class to create a new object.
2. Initialize.
	*	Using `~ = new Sprite(imagePath,tam);`
		*	`imagePath`	:	is not necesary to call data/ folder
		*	`tam`	:	is the size of each part of the sprite, used for split the image in an array.
	* Using `~ = new Sprite(jsonPath);`
		*	`jsonPath`	: json Config of the sprite, used to call an animation with name.
3. Paint the sprite.
	*	Use `~.animate(min, max, speed, posX, posY, tam)` to paint the animation
	*	Use `~.animate("animationName", posX, posY, tam)` to paint the animation
	*	Use `~.paintFrame(int nFrame, posX, posY, tam)` to paint an especific frame of the animation.
		*	`min`	:	ArrayList start frame number.
		*	`max`	:	ArrayList end frame number.
		*	`speed`	:	Use a value betwee 0 - 1 where 0 is notAnimate,  1 sketch tick speed. 
		>	Values over 1 is just too fast, not recommended.
		*	`nFrame`:	ArrayList Value of the frame.
		*	`pos`	:	`x` and `y` are the center of the sprite position.
		*	`tam`	:	rescale the image.
		*	`"animationName"`:	Use the spriteConfig json to take the `min` `max` and `speed`.
	*	Extra
		*	You can use `if(~.animation)` to call just when you set `~.animation` true.
#### SpriteConfig.json
1. What is it used for?
	*	Used to set the configuration of an specific sprite.
2. How to use it?
	*	Inside an .json you have to put
		*	"path"	:	Reference of the spritePath.
		*	"tam"	:	Size of each part of the sprite.
		*	"speed"	:	General speed of the animation
		*	"name"	:	Name of the animation that set an array where the first number is the start, and the second the end of the animation.
