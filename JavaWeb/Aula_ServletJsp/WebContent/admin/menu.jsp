<!DOCTYPE html>
<%@page import="br.com.fiap.entity.Usuario"%>
<html>
<head>
<title>Menu de Opções</title>
</head>
<body>

	<%
		Usuario usuario = (Usuario) session.getAttribute("session_usuario");
		
		if(usuario == null) {
			response.sendRedirect("../login.jsp");
		} else {
			out.print("Seja bem vindo, " + usuario.getNome());
		}
	
	%>

	<h1>Menu de Opções</h1>
	<ul>
		<li><a href="cadUsuario.jsp">Cadastro de Usuario</a></li>
		<li><a href="cadLivro.jsp">Cadastro de Livros</a></li>
		<li><a href="listaLivros.jsp">Lista de Livros</a></li>
	</ul>
</body>
</html>