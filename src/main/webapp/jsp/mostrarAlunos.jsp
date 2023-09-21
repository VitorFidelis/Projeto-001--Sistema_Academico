	<%@ page language="java" contentType="text/html; charset=UTF-8"
		pageEncoding="UTF-8"%>
	<%@page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.List"%>
<%@ page import="br.edu.exemplo.model.Aluno"%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js" integrity="sha384-cuYeSxntonz0PPNlHhBs68uyIAVpIIOZZ5JqeqvYYIcEL727kskC66kF92t6Xl2V" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="css/MostrarAlunos.css" media="screen" />
<meta charset="UTF-8">
<title>Lista Alunos</title>
</head>
<body>
	<!-- Start navbar -->
	<nav class="navbar navbar-expand-sm">
  		<div class="container-fluid">
    		<a class="navbar-brand" style="color: white;" href="index.html"> 
      		<img src="images/logo_principal.png" alt="Avatar Logo" style="width:55px; background-color: white; padding: 3px;" class="rounded-pill"> 
      		Sistemas Academico
    		</a>
    		<i class="bi bi-arrow-bar-left"><a href="index.html">Página Principal</a></i> 
  		</div>
  	</nav> 
    <!-- End navbar -->
    <h3>Lista de Alunos</h3>
    <div class="container">     
    <div class="table-responsive">    
		  <table class="table table-striped"> 
		    <thead class="table">
		      <tr>
		        <th>ID - Atualizar</th>
				<th>Nome</th>
				<th>Endereço</th>
				<th>E-mail</th>
				<th>Nascimento</th>
				<th>Periodo</th>
		      </tr>
		    </thead>
		    <tbody>
		    <%
			SimpleDateFormat data = new SimpleDateFormat("dd/MM/yyyy");
			List<Aluno> lista = new ArrayList<Aluno>();
			lista = (ArrayList) request.getAttribute("alunosList");
			for (Aluno a : lista) {
			%>
				<tr>
				<td><%=a.getRa()%></td>
				<td><%=a.getNome()%></td>
				<td><%=a.getEndereco()%></td>
				<td><%=a.getEmail()%></td>
				<td><%=data.format(a.getDataNascimento())%></td>
				<td><%=a.getPeriodo()%></td>
				</tr>
				
			<% } %>
				<tr>
		    </tbody>
		  </table>
	  </div>
	</div>
</body>
</html>

