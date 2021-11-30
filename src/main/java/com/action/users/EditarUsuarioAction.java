package com.action.users;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.model.Usuario;
import com.opensymphony.xwork2.ActionSupport;
import com.service.UsuarioService;
import com.utils.Validations;

public class EditarUsuarioAction extends ActionSupport implements SessionAware{
	private static final long serialVersionUID = 1L;
	private Usuario usuario;
	private HashMap<Integer, Usuario> usuarios;
	private Map<String, Object> session;

	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
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

	@Override
	public void validate() {
	  if(null != usuario) {
        if(null == usuario.getName() || "".equals(usuario.getName().trim())) {
            addFieldError("usuario.name", "Dato requerido");
        }
        if(null == usuario.getPassword() || "".equals(usuario.getPassword().trim())) {
            addFieldError("usuario.password", "Dato requerido");
        }
        
	  }
	}
	
	public String init() {
		return "success";
	}
	
	public String execute() throws SQLException {
		int newUserId = usuario.getId();
		String ret = ERROR;

		UsuarioService usuarioService = new UsuarioService();
		usuarioService.setUsuario(usuario);

		if (0 != newUserId) {
			usuarioService.editarUsuario();
			addActionMessage("Edición Exitosa");
			ret = SUCCESS;
			}

		return ret;
	}
}
