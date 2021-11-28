<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Datos Usuario</title>
	<link href="styles/validation.css" rel="stylesheet">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" 
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" 
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
	<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
	<script src="https://kit.fontawesome.com/a73f6b1872.js" crossorigin="anonymous"></script>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">

	<script
        src="https://code.jquery.com/jquery-3.6.0.min.js"
        integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
        crossorigin="anonymous"></script>
    
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.17.0/jquery.validate.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.17.0/additional-methods.min.js"></script>
</head>
<body style="background-color:#141d26; color:white;">

<div class="container">
  <div class="row mb-5">

  </div>
  <br>
  <div class="row ">
    <div class="col">
    <h1>Sign Up</h1>
		<s:form action="AltaCompleta" method="POST" id="formulario">
		  <div class="form-group">
			<s:hidden name="usuario.id"></s:hidden>
			
			<div class="col-sm-12 col-md-6 col-lg-3 mb-2 control-group">
				<label for="usuario.user" class="form-label">User:</label>
				<s:textfield name="usuario.user" id="usuario.user" cssClass="form-control" required="true"/>
				<s:fielderror cssClass="text-danger" fieldName="usuario.user"/>
			</div>
			
			<div class="col-sm-12 col-md-6 col-lg-3 mb-2 control-group">
				<label for="usuario.password" class="form-label">Password:</label>
				<s:textfield name="usuario.password" id="usuario.password" cssClass="form-control" required="true"/>
				<s:fielderror cssClass="text-danger" fieldName="usuario.password"/>
			</div>
			
			<div class="col-sm-12 col-md-6 col-lg-3 mb-2 control-group">
				<label for="usuario.name" class="form-label">Name:</label>
				<s:textfield name="usuario.name" id="usuario.name" cssClass="form-control" required="true"/>
				<s:fielderror cssClass="text-danger" fieldName="usuario.name"/>
			</div>
			
			<div class="col-sm-12 col-md-6 col-lg-3 mb-2 control-group">
				<label for="usuario.email" class="form-label">Email:</label>
				<s:textfield name="usuario.email" id="usuario.email" cssClass="form-control" required="true"/>
				<s:fielderror cssClass="text-danger" fieldName="usuario.email"/>
			</div>
			
			<div class="btn-group mt-2 col-sm-12 col-md-6 col-lg-4" role="group">
				<s:submit value="Enviar" cssClass="btn btn-outline-primary"/>
				<s:url var="cancel" action="CancelReg">
				</s:url>
				<s:a href="%{cancel}" cssClass="btn btn-outline-danger">Cancelar</s:a>
			</div>
			
		  </div>	
		</s:form>
	</div>
  </div>
</div>
</body>
</html>