package com.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

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
		
		String sql = "INSERT INTO tw.tweet (user_id,tweet,userN) VALUES (?,?,?)";
		
		PreparedStatement ps = conn.prepareStatement(sql);
		ps.setInt(1, tweet.getUser_id());
		ps.setString(2, tweet.getTweet());
		ps.setString(3, tweet.getUserN());
		ps.executeUpdate();
		conexion.closeConnection();
		return tweet;
	}
	 
	
	public List<Tweet> consultarTweets() throws SQLException{ 
	  Conexion conexion =new Conexion(); 
	  Connection conn = conexion.establishConnection().getCon();
	  
	  String sql ="SELECT userN,tweet FROM tweet;";
	  PreparedStatement ps = conn.prepareStatement(sql); 
	  ResultSet rs =ps.executeQuery();
	  
	  List<Tweet> tweets=new ArrayList<Tweet>(); 
	  
	  while(rs.next()) {
			Tweet tweet= new Tweet();
		
			tweet.setUserN(rs.getString(1));
			tweet.setTweet(rs.getString(2));
			
			tweets.add(tweet);
			
		}
	  
	  return tweets;
	  
	  }
	 
}
