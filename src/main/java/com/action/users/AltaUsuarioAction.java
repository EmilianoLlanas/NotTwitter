package com.action.users;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.model.Usuario;
import com.opensymphony.xwork2.ActionSupport;
import com.service.UsuarioService;

public class AltaUsuarioAction extends ActionSupport implements SessionAware {
	private Usuario usuario;
	private Map<String, Object> session;
	
	@Override
	public void setSession(Map<String, Object> session) {
		// TODO Auto-generated method stub
		
	}
	public Usuario getUsuario() {
		return usuario;
	}

	public void setUsuario(Usuario usuario) {
		this.usuario = usuario;
	}

	public HashMap<Integer, Usuario> getUsuarios() {
		return usuarios;
	}

	public void setUsuarios(HashMap<Integer, Usuario> usuarios) {
		this.usuarios = usuarios;
	}

	private HashMap<Integer, Usuario> usuarios;

	
	public String init() {
		return "success";
	}
	
	public String execute() throws SQLException {
		int newClientId = usuario.getId();
		String ret = ERROR;

		UsuarioService usuarioService = new UsuarioService();
		usuarioService.setUsuario(usuario);

		if (0 == newClientId) {
			// alta Cliente
			usuarioService.altaUsuario();
		
			addActionMessage("Alta Exitosa");
			ret = SUCCESS;
		} else {
			// editar Cliente
			ret = SUCCESS;
		}

		return ret;
	}
	
	
}
