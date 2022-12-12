<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="ar.com.cac.modelos.Canchas"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	Canchas listado = (Canchas)request.getAttribute("listaCanchas");
	out.print("Welcome ");  
%>
</body>
</html>