package com.example.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.example.beans.Card;

public class UserCardDAO {

	JdbcTemplate template;

	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}

	public int saveFavourite(int userId, int cardId) {
		int collectionId = getCollectionIdFromCardId(cardId);
		String sql = "insert into user_favourite(user_id,card_id,collection_id) values('" + userId + "','" + cardId
				+ "','" + collectionId + "')";
		return template.update(sql);
	}

	public int deleteFavourite(int userId, int cardId) {
		String sql = "delete from user_favourite where user_id=" + userId + " AND card_id = " + cardId;
		return template.update(sql);
	}

	public int getFavourite(int userId, int cardId) {
		String sql = "select count(*) from user_favourite where user_id = " + userId + " and card_id = " + cardId;
		return template.queryForObject(sql, Integer.class);
	}

	public int saveCollection(int userId, int cardId) {
		int collectionId = getCollectionIdFromCardId(cardId);
		String sql = "insert into user_collections(user_id,card_id,collection_id) values('" + userId + "','" + cardId
				+ "','" + collectionId + "')";
		return template.update(sql);
	}

	public int deleteCollection(int userId, int cardId) {
		String sql = "delete from user_collections where user_id=" + userId + " AND card_id = " + cardId;
		return template.update(sql);
	}

	public int getCollection(int userId, int cardId) {
		String sql = "select count(*) from user_collections where user_id = " + userId + " and card_id = " + cardId;
		return template.queryForObject(sql, Integer.class);
	}

	public int getCollectionIdFromCardId(int cardId) {
		String sql = "select collection_id from cards where id =?";
		return template.queryForObject(sql, new Object[] { cardId }, Integer.class);
	}
	
	public List<Card> getCollectionCards(int userId) {
		return template.query(
				"select cards.id,cards.collection_id,cards.rarity,cards.`set`,cards.`name`,cards.image from user_collections\r\n"
						+ "inner join cards on\r\n" + "user_collections.card_id = cards.id\r\n"
						+ "inner join `user` on\r\n" + "user_collections.user_id = `user`.id\r\n"
						+ "where `user`.id = ?\r\n" + "order by user_collections.collection_id, cards.`name`;",
				new Object[] { userId }, new RowMapper<Card>() {
					public Card mapRow(ResultSet rs, int row) throws SQLException {
						Card e = new Card();
						e.setId(rs.getInt(1));
						e.setCollectionId(rs.getInt(2));
						e.setRarity(rs.getString(3));
						e.setSet(rs.getString(4));
						e.setName(rs.getString(5));
						e.setImage(rs.getString(6));
						return e;
					}
				});
	}

	public List<Card> getFavouriteCards(int userId) {
		return template.query(
				"select cards.id,cards.collection_id,cards.rarity,cards.`set`,cards.`name`,cards.image from user_favourite\r\n"
						+ "inner join cards on\r\n" + "user_favourite.card_id = cards.id\r\n"
						+ "inner join `user` on\r\n" + "user_favourite.user_id = `user`.id\r\n"
						+ "where `user`.id = ?\r\n" + "order by user_favourite.collection_id, cards.`name`;",
				new Object[] { userId }, new RowMapper<Card>() {
					public Card mapRow(ResultSet rs, int row) throws SQLException {
						Card e = new Card();
						e.setId(rs.getInt(1));
						e.setCollectionId(rs.getInt(2));
						e.setRarity(rs.getString(3));
						e.setSet(rs.getString(4));
						e.setName(rs.getString(5));
						e.setImage(rs.getString(6));
						return e;
					}
				});
	}

}
