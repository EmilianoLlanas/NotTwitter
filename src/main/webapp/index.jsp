<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Index</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" 
integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" 
integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<script src="https://kit.fontawesome.com/a73f6b1872.js" crossorigin="anonymous"></script>
<link rel="stylesheet" href="styles/login.css">
</head>
<body>
	<s:if test="hasActionErrors()">
		<s:actionerror/>
	</s:if>
	<div class="login-form">
	    <s:form action="login" method="POST">
	        <div class="avatar"><i class="material-icons">&#xE7FF;</i></div> 
	        <h2 class="text-center">Sign in</h2>
	        <div class="form-group">
	           <div class="input-group mb-3"> 
	             <span class="input-group-text"><i class="fa fa-user"></i></span> 
		    	 <s:textfield name="user.user" cssClass="form-control" placeholder="Usuario"></s:textfield>
		       </div>
		       <div class="input-group mb-3"> 
		         <span class="input-group-text"><i class="fa fa-lock"></i></span>
		    	 <s:password name="user.password" cssClass="form-control" placeholder="Password"></s:password>
		       </div>
		       <div class="d-grid gap-2">
		    	 <s:submit value="Login" cssClass="btn btn-primary"></s:submit>
		    	 <s:url var="Register" action="AltaUsuarioAction">
				</s:url>
				<s:a href="%{Register}" cssClass="btn btn-primary">Register</s:a>
		       </div> 
		       
	    	</div>
	    </s:form>
	    
    </div>
    
</body>
</html>