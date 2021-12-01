package com.action.tweet;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.model.Tweet;
import com.model.Usuario;
import com.opensymphony.xwork2.ActionSupport;
import com.service.TweetService;


public class AltaTweetAction extends ActionSupport implements SessionAware {
	private static final long serialVersionUID = 1L;
	private Tweet tweet;
	private Usuario user;
	private HashMap<Integer, Tweet> tweets;
	private Map<String, Object> session;

	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}
	
	
	public Usuario getUser() {
		return user;
	}


	public void setUser(Usuario user) {
		this.user = user;
	}


	public Tweet getTweet() {
		return tweet;
	}

	public void setTweet(Tweet tweet) {
		this.tweet = tweet;
	}

	public HashMap<Integer, Tweet> getTweets() {
		return tweets;
	}

	public void setTweets(HashMap<Integer, Tweet> tweets) {
		this.tweets = tweets;
	}

	public String execute() throws SQLException {
	
		String ret = ERROR;
		
		
		TweetService tweetService = new TweetService();
		tweetService.setTweet(tweet);

			tweetService.altaTweetNuevo();
			addActionMessage("Alta exitosa");
			ret = SUCCESS;


		return ret;
	}
}
