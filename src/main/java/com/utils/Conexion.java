package com.utils;

import java.sql.*;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class Conexion {
	private String estatus = null;
	private Connection con = null;
	private String connectionUrl = "jdbc:mysql://localhost/test?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
	private String username = "test";
	private String password = "Octubre.19";
	
	public String getEstatus() {
		return estatus;
	}
	public void setEstatus(String estatus) {
		this.estatus = estatus;
	}
	public Connection getCon() {
		return con;
	}
	public void setCon(Connection con) {
		this.con = con;
	}
	public String getConnectionUrl() {
		return connectionUrl;
	}
	public void setConnectionUrl(String connectionUrl) {
		this.connectionUrl = connectionUrl;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	public Conexion establishConnection() {
	  try {
	    InitialContext initContext = new InitialContext();
	    Context envContext = (Context) initContext.lookup("java:/comp/env");
	    DataSource ds = (DataSource) envContext.lookup("jdbc/ConexionMySQL");
	    con = ds.getConnection();
	  } catch (SQLException | NamingException e) {
	    e.printStackTrace();
	  }
	  return this;
	}
	
//	public Conexion establishConnection() {
//	  if (con == null) {
//	    try {
//	      Class.forName("com.mysql.cj.jdbc.Driver");
//	      con = DriverManager.getConnection(connectionUrl, username, password);
//
//	    } catch (ClassNotFoundException e) {
//	      e.printStackTrace();
//	    } catch (SQLException e) {
//	      e.printStackTrace();
//	      estatus = e.getMessage();
//	    }
//	  }
//	  return this;
//	}
	
	public void closeConnection() {
		if (con != null) {
			try {
				con.close();
				con = null;
			} catch (Exception e) {
				e.printStackTrace();
				estatus = e.getMessage();
			}
		}
	}
	
	public void setAutoCommit(boolean type){
		try {
			con.setAutoCommit(type);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public void commit()
	{
	  try {
	    con.commit();
	  } catch (SQLException e) {
	    e.printStackTrace();
	  }
	}
}
