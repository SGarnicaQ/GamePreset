Entity enemy1;
Entity main;
void setup() {
	size(1000, 1000);
	enemy1 = new Entity("Enemy","Orc");
	main = new Entity("Ally","Ninja");

}

void draw() {
	
}
void mouseClicked(){
	main.dealDamage("Punch",enemy1);
}