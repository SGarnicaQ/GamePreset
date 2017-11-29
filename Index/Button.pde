class Button{
	String text;
	float x, y, x2, y2, tWidth, tHeight;
	color back, tx;
	int r, g, b, a;
	void paint(){
		button.resize();
		if(!this.selected())
			fill(this.back);
		else
			fill(change(this.back));
		rectMode(CORNERS);
		rect(this.x, this.y, this.x2, this.y2, 10);
		if(!this.selected())
			fill(this.tx);
		else
			fill(change(this.tx));
		textFont(font,y2-y);
		textAlign(CENTER,CENTER);
		text(this.text, this.x, this.y, this.x2, this.y2);
	}
	color change(color col){
		return color(red(col)+this.r,green(col)+this.g,blue(col)+this.b,alpha(col)+this.a);
	}
	boolean selected(){
		if(mouseX>this.x && mouseY>this.y && mouseX<this.x2 && mouseY<this.y2)
			return true;
		else
			return false;
	}
	int oseg = 0;
	boolean clicked(){
		if(!selected())
			this.oseg = 0;
		if(selected() && mousePressed && this.oseg == 0){
			this.oseg = 1;
			return true;
		}
		else
			return false;
	}
	void resize(){
		init(text,(x-10)/tWidth,(y-10)/tHeight,(x2+10)/tWidth,(y2+10)/tHeight,back,tx,r,g,b,a);
	}
	void init(String text, float x, float y, float x2, float y2, color back, color tx, int r, int g, int b, int a){
		this.text = text;
		this.x = (width*x)+10;
		this.y = (height*y)+10;
		this.x2 = (width*x2)-10;
		this.y2 = (height*y2)-10;
		this.back = back;
		this.tx = tx;
		this.r = r;
		this.g = g;
		this.b = b;
		this.a = a;
		this.tWidth = width;
		this.tHeight = height;
	}
	Button(String text, float posX, float posY, float posX2, float posY2){
		init(text,posX,posY,posX2,y2,color(30),color(200),0,0,0,0);
	}
	Button(String text, float posX, float posY, float posX2, float posY2, color back, color tx){
		init(text,posX,posY,posX2,y2,back,tx,0,0,0,0);
	}
	Button(String text, float posX, float posY, float posX2, float posY2, color back, color tx, int r, int g, int b, int a){
		init(text,posX,posY,posX2,posY2,back,tx,r,g,b,a);
	}
}