boolean click;
void mouseClicked () {
	click = true;
}
class Button {
	String text;
	float x1, y1, x2, y2;
	color nback, ntxt, sback, stxt, back, txt;
	int tHeight, tWidth;

	void paint () {
		this.resize();
		noStroke();
		rectMode(CORNERS);
		this.setTextSize();
		textAlign(CENTER,CENTER);
		this.coloring();
		fill(back);
		rect(this.x1,this.y1,this.x2,this.y2);
		fill(txt);
		text(this.text, this.x1, this.y1, this.x2, this.y2);
		click = false;													/*Needs to improve*/
	}
	void resize () {
		this.setPos(this.x1*width/tWidth,this.y1*height/tHeight,this.x2*width/tWidth,this.y2*height/tHeight);
	}
	void setTextSize () {
		textSize(this.y2-this.y1-50);									/*Needs to improve*/
	}
	void coloring () {
		this.back = this.selected()? this.sback : this.nback;
		this.txt = this.selected()? this.stxt : this.ntxt;
	}
	boolean selected () {
		return mouseX > this.x1 && mouseX < this.x2 && mouseY > this.y1 && mouseY < this.y2? true : false;
	}
	boolean clicked () {
		return click && this.selected()? true : false;
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
	void setSelectedColor (color background, color text) {
		this.sback = background;
		this.stxt = text;
	}
	Button (String text, float x1, float y1, float x2, float y2) {
		this.setText(text);
		this.setPos(x1, y1, x2, y2);
		this.setColor(color(#00FFFF),color(#0000FF));
		this.setSelectedColor(color(#0000FF),color(#00FFFF));
	}
	Button (float x1, float y1, float x2, float y2) {
		this.setText("");
		this.setPos(x1, y1, x2, y2);
		this.setColor(color(#00FFFF),color(#0000FF));
		this.setSelectedColor(color(#0000FF),color(#00FFFF));
	}
}