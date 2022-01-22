package com.example.beans;

public class Collection {

	private int id;
	private String name;
	private String released;
	private String image;
	private int count;

	public Collection() {
		super();
	}

	public Collection(int id, String name, String released, String image, int count) {
		super();
		this.id = id;
		this.name = name;
		this.released = released;
		this.image = image;
		this.count = count;
	}

	public Collection(int id, String name, String released, String image) {
		super();
		this.id = id;
		this.name = name;
		this.released = released;
		this.image = image;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getReleased() {
		return released;
	}

	public void setReleased(String released) {
		this.released = released;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	@Override
	public String toString() {
		return "Collection [id=" + id + ", name=" + name + ", released=" + released + ", image=" + image + ", count="
				+ count + "]";
	}

}
