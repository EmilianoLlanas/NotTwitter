package com.action.users;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;
import com.opensymphony.xwork2.ActionSupport;
import com.utils.Validations;

import com.model.Usuario;
import com.service.UsuarioService;

public class EditarUsuarioAction extends ActionSupport implements SessionAware{
	private static final long serialVersionUID = 1L;
	private Usuario user;
	private Usuario usuario;
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

	public String init() {
		return "success";
	}
	
	public Usuario getUsuario() {
		return usuario;
	}
	public void setUsuario(Usuario usuario) {
		this.usuario = usuario;
	}
	
	public String execute() throws SQLException {
		usuario = (Usuario) session.get("usuario");
		int userId = user.getId();
		String ret = ERROR;
		
		user.setId(userId);

		UsuarioService usuarioService = new UsuarioService();
		usuarioService.setUsuario(user);

		if (0 == userId) {
			// alta Cliente
			//usuarioService.altaUsuario();
		
			addActionMessage("Error");
			ret = SUCCESS;
		} else {
			// editar Cliente
			System.out.println(user.getName());
			usuarioService.editarUsuario();
			session.put("usuario", user);
			addActionMessage("Edición Exitosa");
			ret = SUCCESS;
			
		}

		return ret;
	}
	
}
