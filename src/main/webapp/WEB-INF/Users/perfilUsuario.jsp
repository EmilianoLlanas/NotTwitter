<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Mi perfil</title>
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
<body style="background-color:#141d26;">
<div class="container-fluid">
  <div class="row">
    
    <div class="col-lg-2 col-md-3 col-sm-12 mb-2 control-group">
    <nav class="navbar navbar-expand-lg navbar-expand-md bg-dark navbar-dark " >
  <a class="navbar-brand">&nbsp;Twitter</a>

  <button class="navbar-toggler" 
          type="button" 
          data-bs-toggle="collapse" 
          data-bs-target="#collapsibleNavbar" 
          aria-controls="navbarSupportedContent" 
          aria-expanded="false" 
          aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  
  <div class="collapse navbar-collapse" id="collapsibleNavbar">
	<ul class="navbar-nav">
	<li class="nav-item">
	    
			<s:url var="menu" action="menu">
			</s:url>
			<s:a href="%{menu}" cssClass="nav-link">Home</s:a>
	    </li>
	     <li class="nav-item">
	        <s:url var="salir" action="logout">
	        </s:url>
	        <s:a href="%{salir}" cssClass="nav-link">Salir</s:a>
	    </li>
	</ul>
  </div>
  
</nav> 	
    </div>


	<div class="col-lg-8 col-md-6 col-sm-12 mb-2 control-group" style="color: white">
				
				<div class="row">
					<div align="center" style="color: white">
					    <h1 style="text-align: center;">Mi perfil</h1>
					    <img src="images/twPP.png" class="img-fluid" alt="Responsive image" style="margin-top: 10px; height: 100px;">
					    <h6  style="margin-top: 30px;">Nombre</h6>
					    @<s:property value="user.name" />
					    <h6  style="margin-top: 20px;">Usuario / Username</h6>
					    <s:property value="user.user" />
					    <h6  style="margin-top: 20px;">Email</h6>
					    <s:property value="user.email" />
					    <h6  style="margin-top: 20px;">Password</h6>
					    <s:property value="user.password" />
					    <br>
					    <button type="button" class="btn btn-outline-info" data-bs-toggle="modal" 
					    data-bs-target="#editarUsuarioModal" style="margin-top: 10px">Editar</button>
				    </div>
				</div>
				
			</div>
	
	<div class="col-lg-2 col-md-3  col-sm-12 mb-2 control-group" style="color: white">
     <p style="text-align: center;">Publicidad</p>
     <img src="images/imagen4.png" class="img-fluid" alt="Responsive image">
     <img src="images/imagen3.png" class="img-fluid" alt="Responsive image">
     <img src="images/imagen2.png" class="img-fluid" alt="Responsive image">
     <img src="images/imagen1.png" class="img-fluid" alt="Responsive image">
     <!-- holi -->
    </div>
   
  </div>
  </div>
  
  <div class="modal fade" id="editarUsuarioModal" tabindex="-1"
aria-labelledby="modalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header bg-info text-white">
				<h5 class="modal-title" id="modalLabel">Editar</h5>
				<button type="button" class="btn-close" data-bs-dismiss="modal" aria-
				label="Close"></button>
			</div>
			<div class="modal-body">  <%@include file="./editarUsuario.jsp"%></div>
		</div>
	</div>
</div>

</body>
</html>

    
    <!--  -->