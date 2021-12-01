<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Menu</title>
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
    
    <link href="styles/validation.css" rel="stylesheet">
	<script src="scripts/adminTweet.js"> </script>
</head>
<body style="background-color:#141d26;">
<div class="container-fluid">
  <div class="row">
    
    <div class="col-lg-2 col-md-3 col-sm-12 mb-2 control-group">
    <nav class="navbar navbar-expand-lg navbar-expand-md bg-dark navbar-dark " >
    <s:url var="menu" action="menu">
			</s:url>
  <s:a href="%{menu}" class="navbar-brand">&nbsp;Twitter</s:a>

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
			<s:url var="adminCtes" action="consultarPerfil">
			</s:url>
			<s:a href="%{adminCtes}" cssClass="nav-link">Mi Perfil</s:a>
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
					<h1 style="text-align: center;">Inicio</h1>
				</div>
				
				<div class="row">
				
					<div class="container">
						
							<img src="images/twPP.png" class="img-fluid"  style="width: 50px; height: 50px;">
							<s:property value="user.user" />
							@<s:property value="user.name" />
					</div>
				</div>
				<br>

				<s:form action="" method="POST" id="formulario">
				<s:hidden name="user.id" id="id"></s:hidden>
				<div class="row">

						<div class="form-group">

							<textarea name="tweet.tweet" id="tweet" class="form-control" rows="3"></textarea>
						</div>
					</div>

					<div class="row">
						<div class="btn-group mt-2 col-sm-12 col-md-6 col-lg-4"
							role="group">
							
							<s:submit value="Twittear" href="%{user.id}" cssClass="btn btn-outline-info" id="btnEnviar" />
						</div>
					</div>
				</s:form>
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

</body>
</html>