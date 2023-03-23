<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.util.ArrayList"
	import="drivers.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Lista Usuarios</title>
<link rel="stylesheet" href="styles.css">
</head>
<body>
	<div class="menu">
		<a href="Insertar.jsp">Insertar Usuario</a>
	</div>
	<%
	ArrayList<User> users = (ArrayList<User>) request.getAttribute("users");
	%>
	<table border="3"
		style="display: inline-block; margin: 5px; vertical-align: top;">
		<tr>
			<td>ID</td>
			<td>Name</td>
			<td>Acciones</td>
		</tr>
		<%
		int i = 0;
		for (; i < users.size(); i++) {
		%>
		<tr>
			<td style="padding: 5px;">
				<%
				out.print(users.get(i).getId());
				%>
			</td>
			<td style="padding: 5px;">
				<%
				out.print(users.get(i).getName());
				%>
			</td>
			<td><a
				href="EliminarUsuario?id=<%out.print(users.get(i).getId());%>">Eliminar</a>
				<a
				href="ModificarUsuario?id=<%out.print(users.get(i).getId());%>&name=<%out.print(users.get(i).getName());%>">Modificar</a>
				<a href="VerUsuarioModular?id=<%out.print(users.get(i).getId());%>">Ver</a></td>
		</tr>
		<%
		}
		%>
	</table>
</body>
</html>