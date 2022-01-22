package com.example.beans;

public class UserCard {

	private int id;
	private int userId;
	private int collectionid;
	private int cardId;

	public UserCard() {
		super();
	}

	public UserCard(int id, int userId, int collectionid, int cardId) {
		super();
		this.id = id;
		this.userId = userId;
		this.collectionid = collectionid;
		this.cardId = cardId;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public int getCollectionid() {
		return collectionid;
	}

	public void setCollectionid(int collectionid) {
		this.collectionid = collectionid;
	}

	public int getCardId() {
		return cardId;
	}

	public void setCardId(int cardId) {
		this.cardId = cardId;
	}

	@Override
	public String toString() {
		return "UserCard [id=" + id + ", userId=" + userId + ", collectionid=" + collectionid + ", cardId=" + cardId
				+ "]";
	}

}
