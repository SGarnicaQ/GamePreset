Button buttonN, buttonT, buttonP;
void setup() {
	size(1200, 700);
	buttonN = new Button("BUTTON",width/10,height/7,width*9/10,height*2/7,0);
	buttonT = new Button("TOGGLE",width/10,height*3/7,width*9/10,height*4/7,1);
	buttonP = new Button("PRESS",width/10,height*5/7,width*9/10,height*6/7,2);

	surface.setResizable(true);

}

void draw() {
	background(0);

	buttonN.paint();
	buttonT.paint();
	buttonP.paint();

	click = false;
	
}