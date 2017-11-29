class Sprite{
	PImage img;
	ArrayList<PImage> sprite;
	JSONObject jsonSprite;
	float frames = -1;
	boolean animation = false;
	void loadSprite(int tam){
		for (int y = 0; y < this.img.height-tam; y+=tam)
			for (int x = 0; x < this.img.width-tam; x+=tam)
				this.sprite.add(this.img.get(x, y, tam, tam));
	}
	void paintFrame(int f, float posX, float posY, float tam){
		imageMode(CENTER);
		image(this.sprite.get(f), posX, posY, tam, tam);
	}
	void animate(String name, float x, float y, float tam){
		if(this.frames == -1)
			this.frames = jsonSprite.getJSONObject("start").getInt(name);
		if(this.frames >= jsonSprite.getJSONObject("start").getInt(name) 
		&& this.frames <= jsonSprite.getJSONObject("end").getInt(name))
			paintFrame(int(this.frames+=jsonSprite.getFloat("speed")), x, y, tam);
		else{
			this.frames = -1;
			this.animation = false;
		}
	}
	void animate(int min, int max, float speed, float posX, float posY, float tam){
		if(this.frames == -1)
			this.frames = min;
		if(this.frames >= min && this.frames <= max)
			paintFrame(int(this.frames+=speed), posX, posY, tam);
		else{
			this.frames = -1;
			this.animation = false;
		}
	}
	Sprite(String jsonPath){											/*path of JSONConfig.json*/
		jsonSprite = loadJSONObject(jsonPath);
		this.img = loadImage(jsonSprite.getString("path"));
		sprite = new ArrayList<PImage>();
		this.loadSprite(jsonSprite.getInt("tam"));
	}
	Sprite(String imagePath, int tam){									/*path of the sprite image, tam of each part of the sprite*/
		this.img = loadImage(imagePath);
		sprite = new ArrayList<PImage>();
		this.loadSprite(tam);
	}
}