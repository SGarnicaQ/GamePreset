# GamePreset
Some classes for 3D Game development

## Class Entity
1. Create a new Entity.
	*	Use the `Entity ~` class to create a new object.
2. Initialize.
	*	Using `~ = new Entity("type","name");`
		*	`"type"`	:	Decide if is Enemy or Ally
		*	`"name"`	:	What kind of enity is, in Ally you can select (Ninja, Mage), and in Enemy (Orc, Mage).
3. What can Entity do?
	*	`~.dealDamage("Hability",target)`	:	Entity deal to target the value of the "Hability" damage.
	> target is an Entity Object.
	*	`~.takeDamage(value)`	:	Entity take some value of damage.
	
> EntityConfig.json don't have real values, needs to be checked.