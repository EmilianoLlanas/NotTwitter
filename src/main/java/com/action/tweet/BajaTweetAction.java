package com.action.tweet;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.model.Tweet;
import com.opensymphony.xwork2.ActionSupport;
import com.service.TweetService;



public class BajaTweetAction extends ActionSupport implements SessionAware {
	private static final long serialVersionUID = 1L;
	private Tweet tweet;
	private HashMap<Integer, Tweet> tweets;
	private Map<String, Object> session;
	
	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
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




	public Map<String, Object> getSession() {
		return session;
	}


	
	public String execute() throws SQLException {
		String ret = ERROR;
		TweetService tweetService = new TweetService();
		tweetService.setTweet(tweet);

		tweetService.bajaTwitt();
		addActionMessage("baja exitosa");
		ret = SUCCESS;
		return ret;
	}
}
