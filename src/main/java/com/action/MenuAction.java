package com.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.model.Usuario;
import com.opensymphony.xwork2.ActionSupport;
import com.service.UsuarioService;

public class MenuAction  extends ActionSupport implements SessionAware{
	private static final long serialVersionUID = 1L;
	private Usuario user;
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
	
	
	public String execute() {
		user = (Usuario) session.get("usuario");
		System.out.println(user);
		return "success";
	}

	
}
