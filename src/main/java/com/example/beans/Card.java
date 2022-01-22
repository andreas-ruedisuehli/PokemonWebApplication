package com.example.beans;

public class Card {

	private int id;
	private int collectionId;
	private String rarity;
	private String set;
	private String name;
	private String image;

	public Card(int id, int collectionId, String rarity, String set, String name, String image) {
		super();
		this.id = id;
		this.collectionId = collectionId;
		this.rarity = rarity;
		this.set = set;
		this.name = name;
		this.image = image;
	}

	public Card() {
		super();
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getCollectionId() {
		return collectionId;
	}

	public void setCollectionId(int collectionId) {
		this.collectionId = collectionId;
	}

	public String getRarity() {
		return rarity;
	}

	public void setRarity(String rarity) {
		this.rarity = rarity;
	}

	public String getSet() {
		return set;
	}

	public void setSet(String set) {
		this.set = set;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	@Override
	public String toString() {
		return "Card [id=" + id + ", collectionId=" + collectionId + ", rarity=" + rarity + ", set=" + set + ", name="
				+ name + ", image=" + image + "]";
	}

}
