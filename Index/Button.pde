class Button{
	String text;
	float x, y, x2, y2, tWidth, tHeight;
	color back, tx, sBack, sTx;
	void paint(){
		this.resize();
		if(this.selected())
			fill(this.sBack);
		else
			fill(this.back);
		rectMode(CORNERS);
		rect(this.x, this.y, this.x2, this.y2, 10);
		if(this.selected())
			fill(this.sTx);
		else
			fill(this.tx);

		textFont(font,y2-y);
		textAlign(CENTER,CENTER);
		text(this.text, this.x, this.y, this.x2, this.y2);
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
		init(this.text,(this.x-10)/this.tWidth,(this.y-10)/this.tHeight,(this.x2+10)/this.tWidth,(this.y2+10)/this.tHeight,this.back,this.tx,this.sBack,this.sTx);
	}
	void init(String text, float x, float y, float x2, float y2, color back, color tx, color sBack, color sTx){
		this.text = text;
		this.x = (width*x)+10;
		this.y = (height*y)+10;
		this.x2 = (width*x2)-10;
		this.y2 = (height*y2)-10;
		this.back = back;
		this.tx = tx;
		this.tWidth = width;
		this.tHeight = height;
		this.sBack = sBack;
		this.sTx = sTx;
	}
	Button(String text, float posX, float posY, float posX2, float posY2){
		init(text,posX,posY,posX2,posY2,color(#767676),color(#FF7F7F),color(#CFCFCF),color(#FF1515));
	}
	Button(String text, float posX, float posY, float posX2, float posY2, color back, color tx){
		init(text,posX,posY,posX2,posY2,back,tx,color(#CFCFCF),color(#FF1515));
	}
	Button(String text, float posX, float posY, float posX2, float posY2, color back, color tx, color sBack, color sTx){
		init(text,posX,posY,posX2,posY2,back,tx,sBack,sTx);
	}
}