package com.action.users;

import java.util.List;
import java.util.Map;

import com.model.Usuario;

public class ConsultarPerfilAction {
	private static final long serialVersionUID = 1L;
	private Usuario usuario;
	private Map<String, Object> session;
	
	public String init() {
		return "success";
	}
	public String execute() {
		return "success";
	}
}
