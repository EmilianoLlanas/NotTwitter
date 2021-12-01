package com.action.tweet;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;


import com.model.Tweet;
import com.model.Usuario;
import com.opensymphony.xwork2.ActionSupport;
import com.service.TweetService;
import com.opensymphony.xwork2.ActionContext;

public class ConsultarTweetsAction extends ActionSupport implements SessionAware{
	private static final long serialVersionUID = 1L;
	private Usuario user;
	private List<Tweet> tweets;
	private Map<String, Object> session;
	
	public Usuario getUser() {
		return user;
	}

	public void setUser(Usuario user) {
		this.user = user;
	}

	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}
		
	public List<Tweet> getTweets() {
		return tweets;
	}

	public void setTweets(List<Tweet> tweets) {
		this.tweets = tweets;
	}

	public String execute() throws SQLException {
		TweetService tweetService= new TweetService();
		tweets= tweetService.consultarTweets();
		user=(Usuario)ActionContext.getContext().getSession().get("usuario");
		addActionMessage("Consulta Exitosa");
        return SUCCESS;				
	}

}
