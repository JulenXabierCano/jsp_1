<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.util.ArrayList"
	import="drivers.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Filtrado</title>
<link rel="stylesheet" href="styles.css">
</head>
<body>
	<%
	User usr = (User) request.getAttribute("user");
	%>
	<table border="3"
		style="display: inline-block; margin: 5px; vertical-align: top;">
		<tr>
			<td>ID</td>
			<td>Name</td>
		</tr>
		<tr>
			<td style="padding: 5px;">
				<%
				out.print(usr.getId());
				%>
			</td>
			<td style="padding: 5px;">
				<%
				out.print(usr.getName());
				%>
			</td>
		</tr>
	</table>
	<a href="EliminarUsuario?id=<%out.print(usr.getId());%>">Eliminar</a>
	<a
		href="ModificarUsuario?id=<%out.print(usr.getId());%>&name=<%out.print(usr.getName());%>">Modificar</a>
	<a href="VerUsuarios">Volver</a>
</body>
</html>