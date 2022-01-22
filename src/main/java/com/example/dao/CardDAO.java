package com.example.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.example.beans.Card;

public class CardDAO {

	JdbcTemplate template;

	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}

	public Card getCardById(int id) {
		String sql = "select * from Cards where id=?";
		return template.queryForObject(sql, new Object[] { id }, new BeanPropertyRowMapper<Card>(Card.class));
	}

	public List<Card> getCardsBySearch(String search) {
		return template.query("select * from Cards where name like '%" + search + "%'", new RowMapper<Card>() {
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

	public List<Card> getCardsByCollectionId(int collectionId) {
		return template.query("select * from Cards where collection_id = ?", new Object[] { collectionId },
				new RowMapper<Card>() {
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
