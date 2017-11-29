class Entity{
	JSONObject stats;
	JSONObject habs;
	String type, name;
	void takeDamage(float value){
		this.stats.setFloat("LifeBase",this.stats.getFloat("LifeBase")-value);
		println(type+": "+name+" take "+value+" points of damage. Now life is: "+this.stats.getFloat("LifeBase"));
	}
	void dealDamage(String nameAttack, Entity target){
		println(type+": "+name+" deal damage to: ");
		target.takeDamage(this.habs.getJSONObject("Attack").getFloat(nameAttack));
	}
	Entity(String type, String name){
		JSONObject config = loadJSONObject("Entity/EntityConfig.json");
		this.type = type;
		this.name = name;
		this.stats = config.getJSONObject(type).getJSONObject(name).getJSONObject("Stats");
		this.habs = config.getJSONObject(type).getJSONObject(name).getJSONObject("Habilities");
	}
}