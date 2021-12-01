<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Editar usuario</title>
	<link href="styles/validation.css" rel="stylesheet">
</head>
<body>
<div class="container">
  <br>
  <div class="row">
    <div class="col">
		<s:form action="editarUsuario" method="POST" id="formulario">
		  <div class="row form-group">
			<s:hidden name="user.id"></s:hidden>
			<s:hidden name="user.user"></s:hidden>
			<s:hidden name="user.email"></s:hidden>
			
			<div class="col-12 control-group">
				<label for="user.name" class="form-label">Nombre:</label>
				<s:textfield name="user.name" id="user.name" cssClass="form-control" required="true"/>
				<s:fielderror cssClass="text-danger" fieldName="user.name"/>
			</div>
			
			<div class="col-12 control-group">
				<label for="user.password" class="form-label">Password:</label>
				<s:textfield name="user.password" id="user.password" cssClass="form-control" required="true"/>
				<s:fielderror cssClass="text-danger" fieldName="user.password"/>
			</div>
			
			
			<div class="btn-group mt-2 col-sm-12 col-md-6 col-lg-4" role="group">
				<s:submit value="Aceptar" cssClass="btn btn-outline-primary"/>
				<s:url var="adminCtes" action="consultarPerfil">
				</s:url>
				<s:a href="%{adminCtes}" cssClass="btn btn-outline-danger">Cancelar</s:a>
			</div>
			
		  </div>	
		</s:form>
	</div>
  </div>
</div>
<script src="scripts/editarUsuario.js"></script>
</body>
</html>