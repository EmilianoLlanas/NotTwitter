package com.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.model.Usuario;

public class MenuAction implements SessionAware{

	Map<String, Object> session;

	@Override
	public void setSession(Map<String, Object> session) {
		// TODO Auto-generated method stub
		this.session=session;
	}

	public String execute() {
		String ret = "error";
		Usuario userLogin = (Usuario) session.get("user");
		if(userLogin == null)
			return ret;
		return "success";
	}
}
