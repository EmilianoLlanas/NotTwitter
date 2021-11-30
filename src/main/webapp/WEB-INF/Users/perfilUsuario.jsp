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
    <div class="col-3">
    <nav class="navbar bg-dark navbar-dark " >
  <a class="navbar-brand" href="#">&nbsp;Home</a>

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
			<s:a href="%{menu}" cssClass="nav-link" style="padding: 10px;">Home</s:a>
	    </li>
	     <li class="nav-item">
	        <s:url var="salir" action="logout">
	        </s:url>
	        <s:a href="%{salir}" cssClass="nav-link" style="padding: 10px;">Salir</s:a>
	    </li>
	</ul>
  </div>
</nav> 	
    </div>
    
    <div class="col-6" align="center" style="color: white">
    <h1 style="text-align: center;">Mi perfil</h1>
    <img src="images/imagenperfil.png" class="img-fluid" alt="Responsive image" style="margin-top: 10px; height: 100px;">
    <h6  style="margin-top: 30px;">Nombre de usuario</h6>
    <h6  style="margin-top: 20px;">Usuario / Username</h6>
    <h6  style="margin-top: 20px;">Email</h6>
    <h6  style="margin-top: 20px;">Password</h6>
    </div>
    
    <div class="col-3" style="color: white">
     <h4 style="text-align: center;">Publicidad</h4>
     <img src="images/imagen4.png" class="img-fluid" alt="Responsive image">
     <img src="images/imagen3.png" class="img-fluid" alt="Responsive image">
     <img src="images/imagen2.png" class="img-fluid" alt="Responsive image">
     <img src="images/imagen1.png" class="img-fluid" alt="Responsive image">
     <!-- holi -->
    </div>
   
  </div>
  </div>

</body>
</html>