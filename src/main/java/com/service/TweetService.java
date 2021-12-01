package com.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.model.Tweet;
import com.utils.Conexion;

public class TweetService {
	private Tweet tweet;

	public Tweet getTweet() {
		return tweet;
	}

	public void setTweet(Tweet tweet) {
		this.tweet = tweet;
	}
	
	public Tweet altaTweetNuevo() throws SQLException {
		Conexion conexion = new Conexion();
		Connection conn = conexion.establishConnection().getCon();
		
		String sql = "INSERT INTO tw.tweet (user_id,tweet) VALUES (?,?)";
		
		PreparedStatement ps = conn.prepareStatement(sql);
		ps.setInt(1, tweet.getUser_id());
		ps.setString(2, tweet.getTweet());
		ps.executeUpdate();
		conexion.closeConnection();
		return tweet;
	}
}
