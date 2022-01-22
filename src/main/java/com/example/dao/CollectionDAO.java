package com.example.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.example.beans.Collection;

public class CollectionDAO {

	JdbcTemplate template;

	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}

	public Collection getCollectionById(int id) {
		String sql = "select * from Collection where id=?";
		return template.queryForObject(sql, new Object[] { id },
				new BeanPropertyRowMapper<Collection>(Collection.class));
	}

	public Collection getCollectionByName(String name) {
		String sql = "select * from Collection where name=?";
		return template.queryForObject(sql, new Object[] { name },
				new BeanPropertyRowMapper<Collection>(Collection.class));
	}

	public int getCollectionCount(int collectionId) {
		String sql = "select count(*) from cards where collection_id =?";
		return template.queryForObject(sql, new Object[] { collectionId }, Integer.class);
	}

	public int getCollectionIdFromCardId(int cardId) {
		String sql = "select collection_id from cards where id =?";
		return template.queryForObject(sql, new Object[] { cardId }, Integer.class);
	}

	public List<Collection> getCollections() {
		return template.query("select * from Collection", new RowMapper<Collection>() {
			public Collection mapRow(ResultSet rs, int row) throws SQLException {
				Collection e = new Collection();
				e.setId(rs.getInt(1));
				e.setName(rs.getString(2));
				e.setReleased(rs.getString(3));
				e.setImage(rs.getString(4));
				e.setCount(getCollectionCount(e.getId()));
				return e;
			}
		});
	}

}
