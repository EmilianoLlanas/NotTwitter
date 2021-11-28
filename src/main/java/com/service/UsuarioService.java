package com.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.model.Usuario;
import com.utils.Conexion;

public class UsuarioService {
	private Usuario usuario;

	public Usuario getUsuario() {
		return usuario;
	}

	public void setUsuario(Usuario usuario) {
		this.usuario = usuario;
	}
	
	public Usuario loginUsuario() throws SQLException {
		Conexion conexion = new Conexion();
		Connection conn = conexion.establishConnection().getCon();
		
		String sql = "SELECT name FROM tw.user WHERE";
		sql += " user = ? AND password = ?";
		PreparedStatement ps = conn.prepareStatement(sql);
		ps.setString(1, usuario.getUser());
		ps.setString(2, usuario.getPassword());
		ResultSet rs = ps.executeQuery();

		if (rs.next()) {
			usuario.setName(rs.getString(1));
		} else {
			usuario = null;
		}
		
		conexion.closeConnection();
		return usuario;
	}
}
