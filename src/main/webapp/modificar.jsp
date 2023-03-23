<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="styles.css">
</head>
<body>
	<input type="text" name="idMod"
		value="<%out.print(request.getParameter("id"));%>"
		disabled="disabled">
	<form method="post" action="ModificarUsuario">
		<input type="hidden" name="idMod"
			value="<%out.print(request.getParameter("id"));%>"> <input
			type="text" name="newName"
			value="<%out.print(request.getParameter("name"));%>"> <input
			type="submit" value="Modificar">
	</form>
	<br>
	<br>
	<a href="VerUsuarios">Cancelar</a>
</body>
</html>