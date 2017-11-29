class Entity{
	JSONObject stats;
	JSONObject habs;
	String type, name;
	void takeDamage(float value){
		print(type+"-"+name+" Life is: "+this.stats.getFloat("LifeBase"));
		this.stats.setFloat("LifeBase",this.stats.getFloat("LifeBase")-mitigate(value));
		println(" but take "+value+" points of damage. With "+name+" mitigation the real damage taken is "+mitigate(value)+". Now "+name+" life is: "+this.stats.getFloat("LifeBase")+".");
	}
	void dealDamage(String nameAttack, Entity target){
		println(type+"-"+name+" deal "+this.habs.getJSONObject("Attack").getFloat(nameAttack)+" of base damage. With "+name+" strenght the real damage is "+strenght(this.habs.getJSONObject("Attack").getFloat(nameAttack))+".");
		target.takeDamage(strenght(this.habs.getJSONObject("Attack").getFloat(nameAttack)));
	}
	float mitigate(float value){
		return value - value*this.stats.getFloat("DefenseBase")/100;
	}
	float strenght(float value){
		return value*this.stats.getFloat("AttackBase")/100;
	}
	Entity(String type, String name){
		JSONObject config = loadJSONObject("Entity/EntityConfig.json");
		this.type = type;
		this.name = name;
		this.stats = config.getJSONObject(type).getJSONObject(name).getJSONObject("Stats");
		this.habs = config.getJSONObject(type).getJSONObject(name).getJSONObject("Habilities");
	}
}