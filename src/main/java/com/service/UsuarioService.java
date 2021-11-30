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

		String sql = "SELECT id,name,email FROM tw.user WHERE";
		sql += " user = ? AND password = ?";
		PreparedStatement ps = conn.prepareStatement(sql);
		ps.setString(1, usuario.getUser());
		ps.setString(2, usuario.getPassword());
		ResultSet rs = ps.executeQuery();

		if (rs.next()) {
			usuario.setName(rs.getString("name"));
			usuario.setEmail(rs.getString("email"));
			usuario.setId(rs.getInt("id"));
		} else {
			usuario = null;
		}



		conexion.closeConnection();
		return usuario;
	}

	public Usuario altaUsuario() throws SQLException {
		Conexion conexion = new Conexion();
		Connection conn = conexion.establishConnection().getCon();

		String sql = "INSERT INTO user (user, password, name, email) VALUES (?,?,?,?)";
		PreparedStatement ps = conn.prepareStatement(sql);
		ps.setString(1, usuario.getUser());
		ps.setString(2, usuario.getPassword());
		ps.setString(3, usuario.getName());
		ps.setString(4, usuario.getEmail());

		ps.executeUpdate();




		conexion.closeConnection();
		return usuario;
	}

	public Usuario altaUsuario() throws SQLException {
		Conexion conexion = new Conexion();
		Connection conn = conexion.establishConnection().getCon();

		String sql = "INSERT INTO user (user, password, name, email) VALUES (?,?,?,?)";
		PreparedStatement ps = conn.prepareStatement(sql);
		ps.setString(1, usuario.getUser());
		ps.setString(2, usuario.getPassword());
		ps.setString(3, usuario.getName());
		ps.setString(4, usuario.getEmail());

		ps.executeUpdate();

		conexion.closeConnection();
		return usuario;
	}

	public Usuario editarUsuario() {
		return usuario;

	}

}
