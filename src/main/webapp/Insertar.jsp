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
	<form method="post" action="InsertarUsuario">
		<input type="text" name="name"
			placeholder="Introduzca nombre del nuevo Usuario"
			style="width: 300px;"> <input type="submit" value="Insertar">
	</form>
	<br>
	<br>
	<a href="VerUsuarios">Cancelar</a>
</body>
</html>