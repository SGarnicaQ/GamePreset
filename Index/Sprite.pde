class Sprite{
	PImage img;
	ArrayList<PImage> sprite;
	JSONObject jsonSprite;
	float frames = -1, min, max;
	boolean animation = false;

	void loadSprite (int tam) {
		for (int y = 0; y < this.img.height-tam; y+=tam){
			for (int x = 0; x < this.img.width-tam; x+=tam)
				this.sprite.add(this.img.get(x, y, tam, tam));
		}
	}

	void paintFrame (int f, float posX, float posY, float tam) {
		imageMode(CENTER);
		image(this.sprite.get(f), posX, posY, tam, tam);
	}

	void animate (String name, float posX, float posY, float tam) {
		if (this.frames > this.max)
			this.animation = false;
		if (this.min != jsonSprite.getJSONArray(name).getInt(0) || this.max != jsonSprite.getJSONArray(name).getInt(1) || this.frames > this.max) {
			this.frames = this.min = jsonSprite.getJSONArray(name).getInt(0);
			this.max = jsonSprite.getJSONArray(name).getInt(1);
		}
		if (this.frames >= this.min && this.frames <= this.max || this.animation)
			paintFrame(int(this.frames+=jsonSprite.getFloat("speed")),posX,posY,tam);
	}
	void animate (int min, int max, float speed, float posX, float posY, float tam) {
		if (this.frames > this.max)
			this.animation = false;
		if (this.min != min || this.max != max || this.frames > this.max) {
			this.frames = this.min = min;
			this.max = max;
		}
		if (this.frames >= this.min && this.frames <= this.max || this.animation)
			paintFrame(int(this.frames+=speed),posX,posY,tam);

	}

	Sprite (String jsonPath) {											/*path of JSONConfig.json*/
		jsonSprite = loadJSONObject(jsonPath);
		this.img = loadImage(jsonSprite.getString("path"));
		sprite = new ArrayList<PImage>();
		this.loadSprite(jsonSprite.getInt("tam"));
	}
	Sprite (String imagePath, int tam) {								/*path of the sprite image, tam of each part of the sprite*/
		this.img = loadImage(imagePath);
		sprite = new ArrayList<PImage>();
		this.loadSprite(tam);
	}
}