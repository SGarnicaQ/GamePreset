boolean click;
void mouseClicked () {
	click = true;
}
class Button {
	String text;
	float x1, y1, x2, y2;
	color nback, ntxt, sback, stxt, back, txt;
	int tHeight, tWidth, mode;
	boolean action;

	void paint () {
		this.resize();
		this.actioned();
		if (action) {
			stroke(#FF44E2);
			strokeWeight(10);
		} else
			noStroke();
		rectMode(CORNERS);
		this.setTextSize();
		textAlign(CENTER,CENTER);
		this.coloring();
		fill(back);
		rect(this.x1,this.y1,this.x2,this.y2, 10);
		fill(txt);
		text(this.text, this.x1, this.y1, this.x2, this.y2);
	}
	void resize () {
		this.setPos(this.x1*width/tWidth,this.y1*height/tHeight,this.x2*width/tWidth,this.y2*height/tHeight);
	}
	void setTextSize () {
		textSize(this.y2-this.y1-50);									/*Needs to improve*/
	}
	void coloring () {
		this.back = this.hover()? this.sback : this.nback;
		this.txt = this.hover()? this.stxt : this.ntxt;
	}
	void actioned () {
		switch (this.mode) {
			case 0 :
			this.action = this.hover() && click;	
			break;
			case 1 :
			this.action = this.clicked()? !this.action : this.action;
			break;
			case 2 :
			this.action = this.hover() && mousePressed;
			break;	
		}
	}
	boolean hover () {
		return mouseX > this.x1 && mouseX < this.x2 && mouseY > this.y1 && mouseY < this.y2? true : false;
	}
	boolean clicked () {
		return click && this.hover()? true : false;
	}
	void setText (String text) {
		this.text = text;
	}
	void setPos (float x1, float y1, float x2, float y2) {
		this.x1 = x1;
		this.y1 = y1;
		this.x2 = x2;
		this.y2 = y2;
		this.tHeight = height;
		this.tWidth = width;
	}
	void setColor (color background, color text) {
		this.nback = background;
		this.ntxt = text;
	}
	void setHoverColor (color background, color text) {
		this.sback = background;
		this.stxt = text;
	}
	Button (String text, float x1, float y1, float x2, float y2, int mode) {
		this.setText(text);
		this.setPos(x1, y1, x2, y2);
		this.setColor(color(#00FFFF),color(#0000FF));
		this.setHoverColor(color(#0000FF),color(#00FFFF));
		this.mode = mode;
	}
	Button (float x1, float y1, float x2, float y2, int mode) {
		this.setText("");
		this.setPos(x1, y1, x2, y2);
		this.setColor(color(#00FFFF),color(#0000FF));
		this.setHoverColor(color(#0000FF),color(#00FFFF));
		this.mode = mode;
	}
}