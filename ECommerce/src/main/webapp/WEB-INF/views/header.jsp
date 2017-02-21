<%@page language="java" contentType="text/html; charset=ISO-8859-1" isELIgnored="false" pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/security/tags" prefix="security" %>

<!DOCTYPE html>
<html lang="en">
  <head>
   
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
	<link href=" https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"   rel="stylesheet" />
	<link href=" https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"   rel="stylesheet" />
	<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" />
	
  </head>
  <body>
    <header>
    <div class="container">
    <div class="row">
      <div class="col-md-4" >
        <h3>BOOKS VILLA</h3>
      </div>
      <div class="col-md-6" style="float: left; padding-bottom: 1px">
        <div class="input-group" style="padding-top: 12px" >
          <input type="text" class="form-control" placeholder="search"  />
          <span class="input-group-addon">
            <a href="#"><i class="fa fa-search"></i></a>
          </span>
        </div>
      </div>
    </div>
  </div>
</header>
    <!-- Fixed navbar -->
    <nav class="navbar navbar-default" >
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">BOOKS VILLA</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav">
            <li class="active"><a href="#">Home</a></li>
            <li><a href="#about">About</a></li>
            <li><a href="#contact">Contact</a></li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Products <span class="caret"></span></a>
              <ul class="dropdown-menu">
                <li><a href="#">Action</a></li>
                <li><a href="#">Another action</a></li>
                <li><a href="#">Something else here</a></li>
                <li role="separator" class="divider"></li>
                <li class="dropdown-header">Nav header</li>
                <li><a href="#">Separated link</a></li>
                <li><a href="#">One more separated link</a></li>
              </ul>
            </li>
          </ul>
          <ul class="nav navbar-nav navbar-right">
          	<c:if test="${pageContext.request.userPrincipal.name == null }">
	            <li><a href='<c:url value='/login'></c:url>'>Sign In</a></li>
	            <li><a href='<c:url value='/register'></c:url>'>Register</a></li>
	            <li><a href="./"><i class="glyphicon glyphicon-shopping-cart" style="font-size:15px"></i><span class="sr-only">(current)</span></a></li>
            </c:if>
            <c:if test="${pageContext.request.userPrincipal.name != null }">
            	<li><a href='<c:url value='/home'></c:url>'>${pageContext.request.userPrincipal.name}</a></li>
            	<li><a href='<c:url value='/logout'></c:url>'>Logout</a></li>
            	<li><a href="./"><i class="glyphicon glyphicon-shopping-cart" style="font-size:15px"></i><span class="sr-only">(current)</span></a></li>
            </c:if>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>
  </body>
</html>
